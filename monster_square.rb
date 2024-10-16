# frozen_string_literal: true
# encoding: utf-8

require_relative 'monster'

module Irrgarten
  class MonsterSquare
    def initialize(monster)
      @row = nil
      @col = nil
      @monster = monster
    end
  end
end