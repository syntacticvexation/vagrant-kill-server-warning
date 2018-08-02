module Vagrant

    module KillServerWarning

        class Plugin < Vagrant.plugin('2')
          name "KillServerWarning"

          description <<-DESC
          Use this to disable the "Vagrant has detected a custom Vagrant server in use for downloading box files" warning
          DESC

         action_hook(:kill_server_warning) do |hook|
             hook.before(Vagrant::Action::Builtin::BoxAdd, Vagrant::KillServerWarning::Middleware)
         end
        end
    end
end
