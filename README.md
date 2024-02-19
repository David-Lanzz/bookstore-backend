# Project Name

Brief description of Bookstore Backend.

## Table of Contents

- [Project Overview](#project-overview)
- [Features](#features)
- [Requirements](#requirements)
- [Setup](#setup)
- [Usage](#usage)
- [API Endpoints](#api-endpoints)
- [Contributing](#contributing)
- [License](#license)

## Project Overview

The Ruby on Rails backend API is designed to power a dynamic bookstore application currently in development. This application is specifically geared towards Nigerian students, aiding them in discovering course-related materials aligned with their respective schools, departments, and academic levels. By acting as a centralized hub for course materials and allowing student contributions, the platform aims to tackle challenges related to material accessibility, ultimately enriching the educational journey of users.

## Features

- Creation of Users, Schools, Departments, Levels, Categories, and Books
- User authentication and authorization on every request
- Correct and memoized database relationships

## Requirements

- Ruby version
- Rails version
- Any other dependencies or prerequisites necessary to run the project.
- Postman

## Setup

1. Clone the repository.
2. Navigate into the project directory.
3. Install dependencies: `bundle install`
4. Set up the database: `rails db:create && rails db:migrate`
5. (Optional) Seed the database: `rails db:seed`
6. Start the server: `rails server`

## Usage

When server is up and running, create a user e.g: http://localhost:3000/signup
(provide email and password)
OR
When server is up and running, signin as a user e.g: http://localhost:3000/login
(provide email and password)

## API Endpoints

List and briefly describe the available API endpoints along with their functionalities. Include details such as request methods, expected parameters, and sample responses.

| Endpoint                  | Method | Description                |
|---------------------------|--------|----------------------------|
| `/api/endpoint`           | GET    | Description of endpoint    |
| `/api/endpoint/:id`       | GET    | Description of endpoint    |
| `/api/endpoint`           | POST   | Description of endpoint    |
| `/api/endpoint/:id`       | PUT    | Description of endpoint    |
| `/api/endpoint/:id`       | DELETE | Description of endpoint    |

## Contributing

If you'd like to contribute to this project, please follow these guidelines:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/fooBar`).
3. Make your changes.
4. Commit your changes (`git commit -am 'Add some fooBar'`).
5. Push to the branch (`git push origin feature/fooBar`).
6. Create a new Pull Request.

## License

Indicate the license under which your project is distributed. For example:

This project is licensed under the [MIT License](LICENSE).
