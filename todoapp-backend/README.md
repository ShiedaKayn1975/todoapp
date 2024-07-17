
# Todoapp

This is a todo application that uses Ruby on Rails, Docker and PostgreSQL.

## Prerequisites

- Docker
- Docker Compose

## Getting Started
### Clone the Repository

```
git clone git@github.com:ShiedaKayn1975/todoapp.git
cd todoapp/todoapp-backend
```

### Docker Setup
```
docker-compose up -d --build
```

### Database Setup
Access to container CLI first
```
docker exec -it todoapp-app /bin/sh
```

Create database for development environment
```
bundle exec rails db:create
```

Initialize seed data
```
bundle exec rails db:seed
```

Create database for test environment
```
bundle exec rails db:create RAILS_ENV=test
```

## Running Tests
To run the test suite, you have to access to CLI:
```
docker exec -it todoapp-app /bin/sh
bundle exec rspec
```