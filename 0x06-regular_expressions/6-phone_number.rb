#!/usr/bin/env ruby
# Matches 10 digit phone number
puts ARGV[0].scan(/^[0-9]{10}$/).join
