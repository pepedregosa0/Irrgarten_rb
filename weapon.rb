# frozen_string_literal: true
# encoding: utf-8

require_relative 'dice'
module Irrgarten
  class Weapon
    def initialize(power = 0.0, uses = 0)
      @power = power
      @uses = uses
    end

    def attack
      if @uses > 0
        @uses -= 1
        @power
      else
        0
      end
    end

    def to_s
      "W[#{@power}, #{@uses}]"
    end

    def discard
      Dice.discard_element(@uses)
    end
  end
end