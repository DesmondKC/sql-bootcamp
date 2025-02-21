# SQL Bootcamp Migration Base Project

This project serves as a base from which apprentices can build up their SQL databases overtime in accordance with the SQL bootcamp.

The project is designed in a way that an apprentice can submit their SQL scripts in the form of a database migration. This allows for it to be reviewed by coaches in a similar manner to the Merge Requests in the rest of the bootcamp.

## Apprentice Explanation

As an apprentice you do not need a deep understanding of the technologies being utilized as part of this project. They are merely forming a base from which you can add you SQL scripts to. In saying that we will not discourage you from reading up on docker or database migrations, in general just be a mindful that this particular learning will come later.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Docker Desktop installed
- Microsoft SQL Server Management Studio installed
- Read this entire document

## Getting Started

1. Start the services
```bash
docker compose up -d
```

## Database Migrations

The project uses Flyway for database migrations. Migration files are located in the `sql` directory.

To run migrations manually:
```bash
docker compose run --rm flyway migrate
```

## Project Structure

```
sql-bootcamp/
├── docker-compose.yml  # Docker services configuration
├── .env                # Variable file for Docker Compose
├── sql/                # Database migration files
│   ├── V1__InitialDatabaseCreation.sql # Files that you might add as part of the bootcamp
│   └── V2__CreateTableExample.sql      # Files that you might add as part of the bootcamp
└── README.md           # This file
```

## Connecting to SQL Server

This project will spin up a server instance, you can connect to it with the following details:

![Login Details Screenshot](/img/login-screenshot.png)

### Details in Screenshot

- Server Name: localhost,1433
- Login: sa
- Password: Tot@llyStr0ng!PassworD

## Development

### Adding New Migrations

1. Create a new SQL file in the `sql` directory
2. Follow the naming convention: `V{number}__{description}.sql`
3. Write your SQL statements
4. Run the migrations
