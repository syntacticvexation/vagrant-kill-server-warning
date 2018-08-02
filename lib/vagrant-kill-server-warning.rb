begin
  require 'vagrant'
rescue LoadError
  require 'bundler'
  Bundler.require(:default, :development)
end

require 'vagrant-kill-server-warning/plugin'
require 'vagrant-kill-server-warning/middleware'
