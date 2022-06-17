require 'rails_helper'

RSpec.describe "Items", type: :request do
  describe "GET /items" do
    it "returns expected status" do
      get items_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /items/:id/mark_as_done" do
    before do
      @item = Item.create(name: "learn rails #{rand(10)}")
    end

    it "redirects to root page" do
      get mark_as_done_item_path(@item)
      expect(response).to redirect_to(items_path)
    end

    it "updates done_at" do
      get mark_as_done_item_path(@item)
      expect(@item.reload.done_at).not_to eq(nil)
    end
  end

  describe "POST /items" do
    context "with valid params" do
      it "creates a new item" do
        params = {
          item: {
            name: "Rails app"
          }
        }

        expect do
          post items_path, params: params
        end.to change(Item, :count).by (1)
      end

      it "redirects to item page" do
        params = {
          item: {
            name: "Rails app"
          }
        }

        post items_path, params: params
        expect(response).to redirect_to item_path(Item.last)
      end
    end

    context "with invalid params" do
      it "doesn't create a new item" do
        params = {
          item: {
            name: ""
          }
        }

        expect do
          post items_path, params: params
        end.not_to change(Item, :count)
      end
    end
  end
end
