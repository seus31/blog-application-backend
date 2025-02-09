# frozen_string_literal: true

# Api/v1/BaseController
module Api
  module V1
    class BaseController < ApplicationController
      include ExceptionHandler
    end
  end
end