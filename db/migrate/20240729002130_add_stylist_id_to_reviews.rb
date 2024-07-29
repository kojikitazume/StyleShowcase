class AddStylistIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_reference :reviews, :stylist, null: false, foreign_key: true
  end
end
