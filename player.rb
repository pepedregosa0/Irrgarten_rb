# frozen_string_literal: true
# encoding: utf-8

require_relative 'weapon'
require_relative 'shield'
require_relative 'directions'
require_relative 'dice'

module Irrgarten
  class Player
    attr_reader :row, :col, :number

    @@MAX_WEAPONS = 2
    @@MAX_SHIELDS = 3
    @@INITIAL_HEALTH = 10
    @@HITS_TO_LOSE = 3

    def initialize(number, intelligence, strength)
      @number = number
      @intelligence = intelligence
      @strength = strength
      @health = @@INITIAL_HEALTH
      @consecutive_hits = 0
      @name = nil
      @row = nil
      @col = nil
      @weapons = []
      @shields = []
    end

    def resurrect

    end

    def set_pos(row, col)
      @row = row
      @col = col
    end

    def dead

    end

    def move(direction, valid_moves)

    end

    def attack

    end

    def defend(received_attack)

    end

    def receive_reward

    end

    def to_s

    end

    private
    def receive_weapon(w)

    end

    def receive_shield(s)

    end

    def new_weapon

    end

    def new_shield

    end

    def sum_weapons

    end

    def sum_shields

    end

    def defensive_energy

    end

    def manage_hit(received_attack)

    end

    def reset_hits

    end

    def got_wounded

    end

    def inc_consecutive_hits

    end
  end
end