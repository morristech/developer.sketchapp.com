Jekyll::Hooks.register :site, :pre_render do |site|
  system("./_external/build-api-docs.sh")
  system("./_external/build_plugin-examples.sh")
  system("echo 'blah' > /tmp/test-blah.txt")
end
