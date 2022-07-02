require 'rails_helper'

RSpec.describe "Realizations", type: :request do
  describe "DELETE /items/:item_id/realizations/:id" do
    it "removes a realization" do
      item = Item.create(name: "test")
      realization = item.realizations.create
      
      expect do
        delete item_realization_path(item, realization)
      end.to change(Realization, :count).by (-1)
    end
  end
end
