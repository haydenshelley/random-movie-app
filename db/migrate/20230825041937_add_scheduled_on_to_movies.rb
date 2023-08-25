class AddScheduledOnToMovies < ActiveRecord::Migration[7.0]
  def change
    add_column :movies, :scheduled_on, :integer
  end
end