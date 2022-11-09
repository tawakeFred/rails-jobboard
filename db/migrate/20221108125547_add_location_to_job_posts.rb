class AddLocationToJobPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :job_posts, :location_country, :string
    add_column :job_posts, :location_city, :string
  end
end
