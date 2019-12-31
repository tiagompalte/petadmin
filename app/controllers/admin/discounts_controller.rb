module Admin
  class DiscountsController < Fae::BaseController
    before_action :adjust_enum, only: [:create, :update]

    def adjust_enum
      params[:discount][:kind] = params[:discount][:kind].to_i
    end
  end
end
