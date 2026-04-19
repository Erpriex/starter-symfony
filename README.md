# StarterSymfony

A simple, clean, and cross-platform Symfony starter using Docker.

---

## 🚀 Requirements

* Docker
* Docker Compose v2
* GNU Make

---

## 🏁 Getting Started

### 1. Start the environment

```bash
make up
```

---

### 2. Initialize the Symfony project

Run this only once if the project is not created yet:

```bash
make init
```

---

### 3. Install dependencies

```bash
make install
```

---

### 4. Access the application

Open your browser:

```
http://localhost:8000
```

---

## 🗄️ Database

Create a `.env.local` file:

```env
DATABASE_URL="postgresql://app:app@database:5432/app?serverVersion=17&charset=utf8"
```

Run migrations:

```bash
make migrate
```

---

## 🛠️ Common Commands

### Docker

```bash
make up        # Start containers
make down      # Stop containers
make build     # Build containers
make logs      # View logs
```

### Symfony / PHP

```bash
make sh                    # Open a shell in the PHP container
make install               # Install dependencies
make migrate               # Run migrations
make cc                    # Clear cache
make test                  # Run tests
```

### Symfony Maker

```bash
make controller BlogController
make entity Post
make migration
make fixtures
```

### Composer

```bash
make composer require symfony/orm-pack
make composer require --dev symfony/maker-bundle
```

### Custom commands

```bash
make exec php bin/console debug:router
```

---

## 🧱 Project Structure

```
.
├── compose.yaml
├── docker/
│   ├── php/
│   └── nginx/
├── Makefile
└── .env.local
```

---

Enjoy 🚀
