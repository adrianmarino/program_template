#!/usr/bin/env ruby
require './libs'
logger = LoggerFactory.instance.logger

# Code there...
logger.info "PROPERTY=#{AppConfig::PROPERTY}"
