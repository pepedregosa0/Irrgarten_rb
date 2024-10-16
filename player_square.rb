# frozen_string_literal: true
# encoding: utf-8

require_relative 'player'

module Irrgarten
  class PlayerSquare
    def initialize(row, col, player)
      @row = row
      @col = col
      @player = player
    end
  end
end