# ----------------------------------------------------------------------------
# Ruby Require
# ----------------------------------------------------------------------------
require 'rubygems'
require 'bundler/setup'
require "require_all"
require "singleton"

# ----------------------------------------------------------------------------
# Bundle require
# ----------------------------------------------------------------------------
ENV['ENV'] ||= 'development'
puts "Environment: #{ENV['ENV']}" if [:development, :test ].any? {|a_group| ENV['ENV'] == a_group.to_s }
Bundler.require(:default, ENV['ENV'])

# ----------------------------------------------------------------------------
# Project require
# ----------------------------------------------------------------------------
require_all "#{ROOT_DIR}/lib"
require_all "#{ROOT_DIR}/config"

# ----------------------------------------------------------------------------
# Project initialize
# ----------------------------------------------------------------------------
LOGGER = LoggerFactory.instance.logger
FileHelper.create_path AppConfig::TMP_DIR
