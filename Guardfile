# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rspec', :version => 2, :cli => "--color --format progress" do
  watch(%r{^spec/.+_spec\.rb})
  watch(%r{^src/(.+)\.rb}) { |m| "spec/#{m[1]}_spec.rb" }
end

