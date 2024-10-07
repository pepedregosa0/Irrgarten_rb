# frozen_string_literal: true
# encoding: utf-8

require_relative '../weapon'


module Irrgarten
  class Practica1A3
    def main
      weapon = Weapon.new(5.3, 3) #original
      weapon1 = weapon #apunta a la misma direccion de memoria que weapon
      weapon2 = weapon.copia #mismo estado que weapon pero en otra direccion

      puts "Arma: #{weapon.to_s}"
      puts "Puntero a Arma: #{weapon1.to_s}"
      puts "Arma copiada: #{weapon2.to_s}"

      #cambio la variable original
      weapon.attack
      puts "Despues de un ataque"
      puts "Arma: #{weapon.to_s}"
      puts "Puntero a Arma: #{weapon1.to_s}"
      puts "Arma copiada: #{weapon2.to_s}"

      weapon3 = Weapon.crea_random_weapon

      puts "Arma random: #{weapon3}"

    end
  end
end

Irrgarten::Practica1A3.new.main

# SESION1
# funcion añadida a la clase weapon
#def copia
#  Weapon.new(@power, @uses)
#end

# SESION2
# funcion añadida a la clase weapon
# def self.crea_random_weapon
#   Weapon.new(Dice.random_strength, Dice.uses_left)
# end

# SESION2
#