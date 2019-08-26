# frozen_string_literal: true

require 'happy_bday/version'
# The module is documented in the root-level file where it's first referenced,
#   so it's not documented here.
module HappyBday
  class Error < StandardError; end
  def self.happy_bday
    puts 'happy birthday'
  end
end
