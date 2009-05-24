require 'text/reform'
require 'htmlentities'

# Support functions for Premailer
module HtmlToPlainText

  # Returns the text in UTF-8 format with all HTML tags removed
  #
  # TODO:
  #  - add support for DL, OL
  def convert_to_text(html, line_length, from_charset = 'UTF-8', shorten = false)
    r = Text::Reform.new(:trim => true, 
                         :squeeze => false, 
                         :break => Text::Reform.break_wrap)
		
    txt = html
		
		bitly = shorten ? Bitly4R.keyed("mikedamage", "R_abb45e99634386334b7ed6c8d081e80e") : nil
		
    he = HTMLEntities.new                                 # decode HTML entities

    txt = he.decode(txt)

    txt.gsub!(/<h([0-9]+)[^>]*>(.*)<\/h[0-9]+>/i) do |s|  # handle headings
      hlevel = $1.to_i
      htext = $2.gsub(/<\/?[^>]*>/i, '')                  # remove tags inside headings
      hlength = (htext.length > line_length ? 
                  line_length : 
                  htext.length)

      case hlevel
        when 1                                            # H1
          ('*' * hlength) + "\n" + htext + "\n" + ('*' * hlength) + "\n"
        when 2                                            # H2
          ('-' * hlength) + "\n" + htext + "\n" + ('-' * hlength) + "\n"
        else                                              # H3-H6 are styled the same
          htext + "\n" + ('-' * htext.length) + "\n"
      end
    end

    txt.gsub!(/<a.*href=\"([^\"]*)\"[^>]*>(.*)<\/a>/i) do |s|   # links
			if bitly
				$2 + ' [' + bitly.shorten($1) + ']'
			else
				$2 + ' [' + $1 + ']'
			end
    end

    txt.gsub!(/(<li[\s]+[^>]*>|<li>)/i, '  * ')           # unordered LIsts
    txt.gsub!(/<\/p>/i, "\n\n")                           # paragraphs
    
    txt.gsub!(/<\/?[^>]*>/, '')                           # strip remaining tags
    txt.gsub!(/\A[\s]+|[\s]+\Z|^[ \t]+/m, '')             # strip extra spaces
    txt.gsub!(/[\n]{3,}/m, "\n\n")                        # tighten line breaks

    txt = r.format(('[' * line_length), txt)   # wrap text
    txt.gsub!(/^[\*][\s]/m, '  * ')                        # add spaces back to lists
    txt
  end
end
