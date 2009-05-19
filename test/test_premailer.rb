require File.dirname(__FILE__) + '/test_helper'


class PremailerTests < Test::Unit::TestCase

  def setup
    #@premailer = Premailer.new
  end

  def test_escaping_strings
    str = %q{url("/images/test.png");}
    assert "url(\'/images/test.png\');", Premailer.escape_string(str)

    str = %q{url("/images/\"test.png");}
    assert "url(\'/images/\'test.png\');", Premailer.escape_string(str)

    str = %q{url('/images/\"test.png');}
    assert "url(\'/images/\'test.png\');", Premailer.escape_string(str)
  end


end
