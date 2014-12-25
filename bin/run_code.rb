#!/usr/bin/env ruby
require './libs'

ENV['ENV']='development'

# Code there...
LOGGER.info "PROPERTY=#{AppConfig::PROPERTY}"
