# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Realizations", type: :request do
  describe "DELETE /items/:item_id/realizations/:id" do
    it "removes a realization" do
      user = User.create(email: "test@gmail.com", password: "123456")
      item = Item.create!(name: "test", user: user)
      realization = item.realizations.create

      sign_in user

      expect do
        delete item_realization_path(item, realization)
      end.to change(Realization, :count).by(-1)
    end
  end
end
