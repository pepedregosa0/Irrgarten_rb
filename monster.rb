# frozen_string_literal: true
# encoding: utf-8

require_relative 'labyrinth'

module Irrgarten
  class Monster
    @@INITIAL_HEALTH = 5
    @row
    @col

    def initialize(name, intelligence, strength)
      @name = name
      @intelligence = intelligence
      @strength = strength
      @health = @@INITIAL_HEALTH
    end


    def dead

    end

    def attack

    end

    def defend(received_attack)

    end

    def set_pos(row, col)

    end

    def to_s

    end

    private
    def got_wounded

    end
  end
end