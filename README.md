#CSS to Head

This script automatically places the content of your CSS files into the head of your HTML files for use with such CSS inliners such as [MailChimp's](http://templates.mailchimp.com/resources/inline-css/). Note that this script will follow @import links.

##Dependencies

* Ruby 2.0.*
* Nokogiri

##Getting Started

* If you don't have Nokogiri already installed, type `gem install nokogiri`
* Edit the `html_path` variable inside the `css-header.rb` file to point to your HTML file

##License

CSS to Head is released under the MIT License. See license.txt for more details.