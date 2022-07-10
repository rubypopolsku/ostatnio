class Realization < ApplicationRecord
  belongs_to :item, counter_cache: true
end
