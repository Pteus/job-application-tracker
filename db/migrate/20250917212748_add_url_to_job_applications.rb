class AddUrlToJobApplications < ActiveRecord::Migration[8.0]
  def change
    add_column :job_applications, :url, :string
  end
end
