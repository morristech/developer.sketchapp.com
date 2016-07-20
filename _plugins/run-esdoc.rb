Jekyll::Hooks.register :site, :pre_render do |site|
  system("./_external/build-api-docs.sh")
end
