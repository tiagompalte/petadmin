module Admin
  class SchedulingsController < Fae::BaseController
    before_action :adjust_enum, only: [:create, :update]

    def adjust_enum
      params[:scheduling][:status] = params[:scheduling][:status].to_i
    end
  end
end
