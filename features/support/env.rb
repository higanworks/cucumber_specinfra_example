require 'specinfra'
require 'net/ssh'

module InfraHelper
  include SpecInfra::Helper::DetectOS
  include SpecInfra::Helper::Ssh

  def return_backend(host, user = 'root', ssh_opts = {})
    SpecInfra.configuration.ssh = Net::SSH.start(host, user, ssh_opts)
    Backend.backend_for('ssh')
  end

  def default_backend(host, user = 'root', ssh_opts = {})
    SpecInfra.configuration.ssh = Net::SSH.start(host, user, ssh_opts)
  end
end

World(InfraHelper)
