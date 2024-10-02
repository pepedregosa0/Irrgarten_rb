# frozen_string_literal: true
# encoding: utf-8
module Irrgarten
  class GameState
    # Con la siguiente linea damos permiso de lectura en las variables
    attr_reader :labyrinth, :players, :monsters, :current_player, :winner, :log

    def initialize(labyrinth, players, monsters, current_player, winner, log)
      @labyrinth = labyrinth
      @players = players
      @monsters = monsters
      @current_player = current_player
      @winner = winner
      @log = log
    end
  end
end