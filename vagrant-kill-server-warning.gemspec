require File.expand_path('../lib/vagrant-kill-server-warning/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "vagrant-kill-server-warning"
  spec.version       = Vagrant::KillServerWarning::VERSION
  spec.authors       = ["Syntactic Vexation"]
  spec.email         = ["syntacticvexation@gmail.com"]
  spec.summary         = "Disable Vagrant server warning"
  spec.description     = "Use this to disable the \"Vagrant has detected a custom Vagrant server in use for downloading box files\" warning"
  spec.files           = `git ls-files`.split($\)
  spec.executables     = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.require_paths   = ['lib']
  spec.homepage        = 'https://github.com/syntacticvexation/vagrant-kill-server-warning'
  spec.license         = 'GPL-3.0'
end
