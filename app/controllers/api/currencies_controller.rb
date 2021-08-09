class Api::CurrenciesController < ApplicationController
  def index
    currencies = Currency.all
    render json: currencies, status: :ok
  end

  def show
    currency = Currency.where('char_code = ? or num_code = ?', params[:id], params[:id])
    render json: currency, status: :ok
  end
end