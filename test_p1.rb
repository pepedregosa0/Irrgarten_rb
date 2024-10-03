# frozen_string_literal: true
# encoding: utf-8

require_relative 'game_character'
require_relative 'orientation'
require_relative 'directions'
require_relative 'weapon'
require_relative 'shield'
require_relative 'dice'
require_relative 'game_state'

module Irrgarten
  class TestP1
    def main
      weapon1 = Weapon.new(2.5, 5)
      puts "Weapon1: " + weapon1.to_s

      #otra forma de loop for
      for i in 1..3
        puts "Weapon1 attack: #{weapon1.attack}"
        puts "Weapon1: " + weapon1.to_s
      end

      shield1 = Shield.new(2.0, 2)
      puts "Shield1: " + shield1.to_s

      3.times do
        puts "Shield1 protection: #{shield1.protect}"
        puts "Shield1: " + shield1.to_s
      end

      puts GameCharacter::PLAYER
      puts Orientation::VERTICAL
      puts Directions::LEFT

      5.times do
        puts "Random position (max 10): #{Dice.random_pos(10)}"
        puts "Who starts (3 players): #{Dice.who_starts(3)}"
        puts "Random weapon power: #{Dice.weapon_power}"
        puts "Random shield power: #{Dice.shield_power}"
      end

      resurrect_attempts = 100
      resurrected = 0
      resurrect_attempts.times do
        resurrected += 1 if Dice.resurrect_player
      end
      puts "Resurrected #{resurrected} of #{resurrect_attempts} attempts"

      5.times do
        puts "Weapons reward: #{Dice.weapons_reward}"
        puts "Shields reward: #{Dice.shields_reward}"
        puts "Health reward: #{Dice.health_reward}"
      end

      weapon2 = Weapon.new(4, 1)
      shield2 = Shield.new(2, 3)

      5.times do
        puts "Weapon 2 discard: #{weapon2.discard}"
        puts "Shield 2 discard: #{shield2.discard}"
      end
    end
  end
end

# tambien se puede poner Irrgarten::TestP1.new.main
o_main = Irrgarten::TestP1.new
o_main.main