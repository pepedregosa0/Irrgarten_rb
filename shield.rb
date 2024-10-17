# frozen_string_literal: true
# encoding: utf-8

require_relative 'dice'
module Irrgarten
  class Shield
    def initialize(protection = 0.0, uses = 0)
      @protection = protection
      @uses = uses
    end

    def protect
      if @uses > 0
        @uses -= 1
        @protection
      else
        0
      end
    end

    def to_s
      "S[#{@protection}, #{@uses}]"
    end

    def discard
      Dice.discard_element(@uses)
    end

  end
end