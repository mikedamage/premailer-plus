require File.dirname(__FILE__) + '/test_helper'
require 'lib/html_to_plain_text'

class PlainTextTests < Test::Unit::TestCase
  include HtmlToPlainText

  def test_unordered_lists
    html = %q{
<link rel="test" />
<ul>
  <li class="123" id="456">Test 1</li>
  <li>Test 2
    <ul>
      <li>Test 2a</li>
    </ul>
  </li>
  <li>Test 3</li>
</ul>
}
    text = %q{  * Test 1
  * Test 2
    * Test 2a
  * Test 3}

    assert_equal text, convert_to_text(html, 80)
  end



end
