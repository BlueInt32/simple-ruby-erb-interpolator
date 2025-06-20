require 'erb'

input = ARGV
if ARGV.length < 2 then
  p 'Please provide a template file path and a data file in your args. e.g. "template.erb data.erb"'
  return
end
template_file_path = ARGV[0]
require_relative ARGV[1]
p $data

# beverages = {
#   :orange_juice => { :size => "medium" },
#   :coffee => { :size => "small" }
# }

template_file = File.open(template_file_path)
template_file_content = template_file.read
erb_template = ERB.new(template_file_content, trim_mode: '-') # trim_mode '-' is necessary to allow -%> ending tags, auto-removing the EOLs from output
# p template_file_content
puts erb_template.result(binding)
