#!/usr/bin/env ruby

require 'rubygems'
require 'redis'

if not ARGV[0]
  $stderr.puts "Provide an integer indicating the number of keys to insert"
end

redis = Redis.new
if redis.nil?
  $stderr.puts "Could not connect to redis server"
  exit 1
end

SIZE = ARGV[0].to_i

SIZE.times do |i|
  redis.set("key"+i.to_s, "value"+i.to_s)
end

