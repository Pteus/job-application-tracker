class CreateJobApplications < ActiveRecord::Migration[8.0]
  def change
    create_table :job_applications do |t|
      t.string :company_name
      t.string :job_title
      t.string :status
      t.date :applied_on
      t.string :found_on
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
