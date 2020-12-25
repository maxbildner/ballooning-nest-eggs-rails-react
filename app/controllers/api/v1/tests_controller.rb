class Api::V1::TestsController < ApplicationController
  def index
    render json: { users: ['harry', 'max', 'mosey'] }
  end
end
