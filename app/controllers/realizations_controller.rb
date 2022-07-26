# frozen_string_literal: true

class RealizationsController < ApplicationController
  def destroy
    @realization = Realization.find(params[:id])
    @item = @realization.item
    @realization.destroy

    redirect_to item_path(@item), notice: "Realization deleted"
  end
end
