class LearningsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    learning = Learning.create!(learning_params)
    render json: learning.as_json
  end

  private
  def learning_params
    params.require(:learning)
      .permit(results_attributes: %i[text_id  level m1 m2 m3 m4 m5 m6])
  end
end
