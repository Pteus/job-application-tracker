# Job Application Tracker

A Ruby on Rails application for tracking job applications, built with Docker for easy deployment and evaluation.
Note: For simplicity, this uses SQLite inside Docker. In real projects, you’d use Postgres/MySQL with Docker Compose.

## 🚀 Quick Start

### Prerequisites

- Docker
- Docker Compose
- Git

### Running the Application

1. **Clone the repository:**

```bash
git clone https://github.com/pteus/job-application-tracker.git
cd job-application-tracker
```

2. **Start the application:**

```bash
docker-compose up -d
```

3. **Visit the application:**
   Open your browser and go to [http://localhost:8080](http://localhost:8080)

4. **Stop the application:**

```bash
docker-compose down
```

## 📋 Features

- **Job Application Management**: Create, edit, and delete job applications
- **Application Details**: Track company name, job title, URL, status, application date, and source
- **Notes System**: Add detailed notes for each application
- **Status Tracking**: Monitor application progress (active, pending, rejected, etc.)
- **Responsive Design**: Built with Tailwind CSS for mobile and desktop
- **Form Validation**: Client and server-side validation for data integrity
- **URL Validation**: Automatic URL formatting and validation

## 🛠 Tech Stack

- **Backend**: Ruby on Rails 8
- **Database**: SQLite (development)
- **Frontend**: ERB templates with Tailwind CSS
- **Authentication**: Built-in Rails authentication with secure passwords
- **Deployment**: Docker & Docker Compose
- **Styling**: Tailwind CSS for responsive design

### Dashboard View

Clean, organized list of all job applications with truncated text for easy scanning.

### Detailed View

Full application details with notes and complete information display.

### Responsive Design

Works seamlessly on desktop, tablet, and mobile devices.

## 🔧 Development

### Local Development Setup

If you want to run without Docker:

```bash
# Install dependencies
bundle install

# Setup database
bin/rails db:create db:migrate

# Start the server
bin/rails server
```

### Running Tests

```bash
# Local development
rails test
```

## 🐳 Docker Details

The application is containerized using Docker for consistent deployment across environments:

- **Image**: Slim Ruby image
- **Database**: SQLite with persistent volume mounting
- **Port**: Exposed on port 8080
- **Volumes**: Database and configuration files mounted for persistence
- **Note**: For simplicity, this uses SQLite inside Docker. In real projects, you'd use Postgres/MySQL with Docker
  Compose.

## 📝 Production Notes

- **Database**: This demo uses SQLite for simplicity. Production applications would use PostgreSQL or MySQL with
  separate database containers in Docker Compose.
- **Environment Variables**: In production, sensitive data like master keys would be managed through secure environment
  variable systems.

## This project demonstrates:

- **Full-stack Rails development** with MVC architecture
- **Database design** and Active Record relationships
- **Form handling** with validation and error management
- **Responsive UI development** using Tailwind CSS
- **Docker containerization** for deployment
- **Git workflow** and version control
- **RESTful routing** and Rails conventions
- **Security best practices** with parameter validation

The application showcases practical Rails development skills applicable to real-world projects.
