module JobApplicationsHelper
  def render_job_application(job_application, detailed_view: false)
    render partial: "job_applications/job_application",
           locals: { job_application: job_application, detailed_view: detailed_view }
  end
end
