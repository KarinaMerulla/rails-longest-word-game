class GamesController < ApplicationController
  def new
    # o que eu desenhar aqui vai aparecer em new.html, mas eu preciso puxar com o middleman la
    # logica da array de letters
    # tem um jeito de nao pegar letras repetidas, mas eu quero letras repetidas:
    o = [('a'..'z')].map(&:to_a).flatten
    @letters = (0...10).map { o[rand(o.length)] }.join.upcase
  end

  def score
    # The form will be submitted (with POST) to the score action. - ok
    # The word can't be built out of the original grid
    # The word is valid according to the grid, but is not a valid English word
    # The word is valid according to the grid and is an English word
  end
end

# observacoes sobre o score method:
# com o raise o param que eu tenho que pegar eh :word
# :word eh o input do usuario que eu preciso guardar
