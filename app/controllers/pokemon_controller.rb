class PokemonController < ApplicationController
  def capture
		@this_pokemon = Pokemon.find(params[:id])
		@this_pokemon.trainer_id = current_trainer.id
		@this_pokemon.save
		redirect_to :root
	end

	def create
		@new_pokemon = Pokemon.new(pokemon_params)
		@new_pokemon.health = 100
		@new_pokemon.level = 1
		@new_pokemon.trainer_id = current_trainer.id
		if @new_pokemon.save
			redirect_to :controller => 'trainers', :action => 'show', id: current_trainer.id
		end
	end
  
end
