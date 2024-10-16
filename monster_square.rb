# frozen_string_literal: true
# encoding: utf-8

require_relative 'monster'

module Irrgarten
  class MonsterSquare
    def initialize(row, col, monster)
      @row = row
      @col = col
      @monster = monster
    end
  end
end