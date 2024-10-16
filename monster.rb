# frozen_string_literal: true
# encoding: utf-8

require_relative 'dice'

module Irrgarten
  class Monster
    @@INITIAL_HEALTH = 5

    def initialize(name, intelligence, strength)
      @name = name
      @intelligence = intelligence
      @strength = strength
      @health = @@INITIAL_HEALTH
      @row = nil
      @col = nil
    end

    def dead
      @health <= 0
    end

    def attack
      Dice.intensity(@strength)
    end

    def defend(received_attack)
      #p3
    end

    def set_pos(row, col)
      @row = row
      @col = col
    end

    def to_s
      "M[N:#{@name}, I:#{@intelligence}, S:#{@strength}, H:#{@health}, P:(#{@row},#{@col})]"
    end

    private
    def got_wounded
      @health -= 1
    end
  end
end