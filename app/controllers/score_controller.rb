class ScoreController < ApplicationController
  def index
    @score = Score.all.order(created_at: :desc)
  end

  def new
  end

  def create
    score = Score.new(
      rule: params["rule"],
      stage: params["stage"],
      weapon: params["weapon"],
      power: params["power"],
      buttle: params["buttle"]
    )

    if score.save
      redirect_to("/score/index")
    end
  end

  def edit
    @score = Score.find_by(id: params[:id])
  end

  def update
    score = Score.find_by(id: params[:id])
    score.rule = params["rule"]
    score.stage = params["stage"]
    score.weapon = params["weapon"]
    score.power = params["power"]
    score.buttle = params["buttle"]

    if score.save
      redirect_to("/score/index")
    end
  end

  def delete
    score = Score.find_by(id: params[:id])
    score.destroy
  end
end
