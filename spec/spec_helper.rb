require 'simplecov'
require 'codeclimate-test-reporter'
SimpleCov.start
CodeClimate::TestReporter.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'divergence_meter'
