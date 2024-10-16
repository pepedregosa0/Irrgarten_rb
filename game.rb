# frozen_string_literal: true
# encoding: utf-8

#TERMINAR P2

require_relative 'dice'
require_relative 'player'
require_relative 'directions'
require_relative 'game_character'
require_relative 'game_state'
require_relative 'labyrinth'
require_relative 'monster'

module Irrgarten
  class Game
    @@MAX_ROUNDS = 10

    def initialize(nplayers)
      @current_player_index = nil
      @log = nil
      @current_player = nil
      @players = []
      @labyrinth = nil
      @monsters = []
    end

    def finished

    end

    def next_step(prefered_direction)

    end

    def get_game_state

    end

    private
    def configure_labyrinth

    end

    def next_player

    end

    def actual_direction(preferred_direction)

    end

    def combat(monster)

    end

    def manage_reward(winner)

    end

    def manage_resurrection

    end

    def log_player_won

    end

    def log_monster_won

    end

    def log_resurrected

    end

    def log_player_skip_turn

    end

    def log_player_no_orders

    end

    def log_no_monster

    end

    def log_rounds(rounds, max)

    end
  end
end