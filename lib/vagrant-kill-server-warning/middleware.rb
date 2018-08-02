require 'vagrant'
require Vagrant.source_root.join('plugins/commands/login/middleware/add_authentication')

module Vagrant
	module KillServerWarning
		class Middleware
		  def initialize(app, env)
		    @app = app
		  end

		  def call(env)
			 VagrantPlugins::LoginCommand::AddAuthentication.custom_host_notified!
			 @app.call(env)
		  end
		end
	end
end