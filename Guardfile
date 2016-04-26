# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
# vim: ft=ruby
#
Bundler.require(:default)
guard :shell do
  watch(/(.*)\.adoc$/) do |m|
 
    # Asciidoctor.convert_file(m[0], :in_place => true)
    `asciidoctor -n -r asciidoctor-diagram #{m[0]} `
    `asciidoctor -n -r asciidoctor-diagram -a theme=volnitsky book/book.adoc  `
  end
end

guard 'livereload' do 
  watch(%r{.*\.(css|js|html)$})
end

