class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        @coupon = Coupon.new
    end

    def create
        c_param = params.require(:coupon).permit(:coupon_code, :store)
        @coupon = Coupon.create(c_param)
        redirect_to @coupon
    end
end
