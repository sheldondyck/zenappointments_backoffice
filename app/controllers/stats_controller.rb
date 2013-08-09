class StatsController < ApplicationController
  before_action :authenticate_user

  def index
    @accounts_cnt = Account.count
    @users_cnt = User.count
    @clients_cnt = Client.count
    @appointments_cnt = Appointment.count
  end
end
