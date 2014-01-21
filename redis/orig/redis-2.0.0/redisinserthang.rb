#!/usr/bin/env ruby

require 'rubygems'
require 'redis'

redis = Redis.new
if redis.nil?
  $stderr.puts "Could not connect to redis server"
  exit 1
end

i=0
  redis.set("key"+i.to_s, "value"+i.to_s)

sleep 2000
