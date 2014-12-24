# ----------------------------------------------------------------------------
# Require
# ----------------------------------------------------------------------------
require 'rubygems'
require 'bundler/setup'
require "require_all"

require "singleton"

require_all "#{ROOT_DIR}/lib"
require_all "#{ROOT_DIR}/config"

TMP_DIR = "#{ROOT_DIR}/tmp"
LOGGER_PATH = "#{ROOT_DIR}/log"
LOGGER_FILE_NAME = "#{LOGGER_PATH}/main.log"

FileHelper.create_path TMP_DIR
