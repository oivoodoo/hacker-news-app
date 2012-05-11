# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec', :version => 2, :all_after_pass => false, :cli => "--format documentation" do
  watch(%r{^lib/(.+)\.rb$})  { |m| "spec/models/#{m[1]}_spec.rb" }
  watch(%r{^spec/.+_spec\.rb$})
  watch('spec/spec_helper.rb')  { "spec" }
end

