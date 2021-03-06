class TrainersController < ApplicationController
  before_filter :authenticate_trainer!

  def index
    @trainers = Trainer.all
  end

  def show
    @trainer = Trainer.find(params[:id])
    @party = Pokemon.where(trainer_id: @trainer.id)
    @battle_ready = @trainer.id != current_trainer.id
  end

end
