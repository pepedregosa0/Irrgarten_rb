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
      @name = "Player ##{number}"
      @number = number
      @intelligence = intelligence
      @strength = strength
      @health = @@INITIAL_HEALTH
      @row = nil
      @col = nil
      @consecutive_hits = 0
      @weapons = []
      @shields = []
    end

    def resurrect
      @weapons = []
      @shields = []
      @health = @@INITIAL_HEALTH
      @consecutive_hits = 0
    end

    def set_pos(row, col)
      @row = row
      @col = col
    end

    def dead
      @health <= 0
    end

    def move(direction, valid_moves)
      #p3
    end

    def attack
      @strength + sum_weapons
    end

    def defend(received_attack)
      manage_hit(received_attack)
    end

    def receive_reward
      #p3
    end

    def to_s
      "P[N:#{number}, I:#{@intelligence}, S:#{@strength}, H:#{@health}, P:(#{row},#{col}), C:#{@consecutive_hits}, #{@weapons}, #{@shields}]"
    end

    private
    def receive_weapon(w)
      #p3
    end

    def receive_shield(s)
      #p3
    end

    def new_weapon
      #preguntar que significa Los parámetros necesarios para construir el arma se le solicitarán al dado.
      puts "Enter weapon power"
      power = gets.chomp.to_f
      puts "Enter weapon uses"
      uses = gets.chomp.to_i
      Weapon.new(power, uses)
    end

    def new_shield
      puts "Enter shield protection"
      protection = gets.chomp.to_f
      puts "Enter shield uses"
      uses = gets.chomp.to_i
      Shield.new(protection, uses)
    end

    def sum_weapons
      sum = 0.0
      for weapon in @weapons
        sum += weapon.attack
      end
      sum
    end

    def sum_shields
      sum = 0.0
      for shield in @shields
        sum += shield.protect
      end
      sum
    end

    def defensive_energy
      @intelligence + sum_shields
    end

    def manage_hit(received_attack)
      #p3
    end

    def reset_hits
      @consecutive_hits = 0
    end

    def got_wounded
      @health -= 1
    end

    def inc_consecutive_hits
      @consecutive_hits += 1
    end
  end
end