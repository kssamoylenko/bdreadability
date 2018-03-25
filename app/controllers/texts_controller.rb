class TextsController < ApplicationController
  def index
    render json: Text.all.as_json
  end
end
