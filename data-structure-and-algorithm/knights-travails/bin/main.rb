# frozen_string_literal: true

require_relative '../lib/knight'
require_relative '../lib/board'

knight = Knight.new

p knight.knight_moves([0, 0], [7, 7])