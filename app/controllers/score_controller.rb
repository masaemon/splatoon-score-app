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
end
