json.extract! job_application, :id, :company_name, :job_title, :status, :applied_on, :found_on, :user_id, :created_at, :updated_at
json.url job_application_url(job_application, format: :json)
