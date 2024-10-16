# frozen_string_literal: true
# encoding: utf-8

require_relative 'player'

module Irrgarten
  class PlayerSquare
    def initialize(player)
      @row = nil
      @col = nil
      @player = player
    end
  end
end