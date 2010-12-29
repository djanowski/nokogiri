# encoding: UTF-8

require "helper"

class TestEncoding < Nokogiri::TestCase
  def test_inner_html_encoding
    doc = Nokogiri::HTML("<body>")

    assert_equal "UTF-8", doc.encoding

    doc.at("./html/body").inner_html = "Aló"

    assert_equal "Aló", doc.at("./html/body").inner_html
  end
end
