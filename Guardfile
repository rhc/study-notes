# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
# vim: ft=ruby
#
Bundler.require(:default)

guard :shell do
  watch(%r{book/inputs/.*\.adoc$}) do
    `asciidoctor -n -r asciidoctor-diagram book/inputs/book.adoc -D book/outputs `
  end
end

guard 'livereload', host: '127.0.0.1' do 
  watch(%r{book/outputs/book.html})
end



