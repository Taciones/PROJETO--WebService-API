require 'httparty'
require 'report_builder'

#CONFIG = ENV["ENV_TYPE"]

CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["ENV_TYPE"]}.yaml"))



class Apiuri
    include HTTParty
    base_uri "#{CONFIG["url"]}"
end
