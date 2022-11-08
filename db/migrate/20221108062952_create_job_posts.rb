class CreateJobPosts < ActiveRecord::Migration[7.0]
  def change
    create_table :job_posts do |t|
      t.string :title
      t.text :description
      t.integer :category
      t.text :job_url
      t.integer :salary_min
      t.integer :salary_max
      t.string :company

      t.timestamps
    end
  end
end
