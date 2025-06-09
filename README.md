# Heroku deployment using n8n


[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/)

## 🚀 Overview

This repository provides a streamlined way to deploy [n8n](https://n8n.io/) - a powerful workflow automation tool - to Heroku. It's designed to be simple, scalable, and production-ready with minimal configuration.

## ✨ Features

- **One-Click Deployment**: Deploy to Heroku with a single click
- **Queue Mode Support**: Built-in support for Heroku worker and Redis for scalability
- **Production Ready**: Includes all necessary configurations for a production environment
- **SSL Support**: Automatic SSL configuration for secure connections
- **Database Integration**: Pre-configured PostgreSQL database support
- **Redis Integration**: Built-in Redis support for queue management
- **Customizable**: Easy to configure through environment variables

## 🛠️ Prerequisites

- A [Heroku](https://heroku.com) account
- [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli) (for manual deployment)
- Git (for manual deployment)

## 🚀 Quick Start

### Option 1: One-Click Deploy (Recommended)

1. Click the "Deploy to Heroku" button above
2. Configure your app settings
3. Click "Deploy app"

### Option 2: Manual Deployment

1. Clone this repository:
   ```bash
   git clone https://github.com/snehaapratap/Heroku-deployment-using-n8n.git
   cd Heroku-deployment-using-n8n
   ```

2. Create a new Heroku app:
   ```bash
   heroku create your-app-name
   ```

3. Set the stack to container:
   ```bash
   heroku stack:set container
   ```

4. Add required addons:
   ```bash
   heroku addons:create heroku-redis:hobby-dev
   ```

5. Deploy to Heroku:
   ```bash
   git push heroku main
   ```

## ⚙️ Configuration

### Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `GENERIC_TIMEZONE` | Your timezone | Europe/Berlin |
| `N8N_ENCRYPTION_KEY` | Encryption key for n8n | change-me-to-something-else |
| `WEBHOOK_URL` | Your app's webhook URL | https://your-app.herokuapp.com |
| `EXECUTIONS_MODE` | Execution mode (regular/queue) | queue |

### Recommended Settings

1. Change the `N8N_ENCRYPTION_KEY` to a secure random string
2. Set your correct timezone in `GENERIC_TIMEZONE`
3. Update `WEBHOOK_URL` to match your Heroku app URL

## 🔧 Scaling

The deployment includes:
- Web dyno for handling HTTP requests
- Worker dyno for processing workflows
- Redis for queue management
- PostgreSQL for data storage

## 📚 Resources

- [n8n Documentation](https://docs.n8n.io/)
- [Heroku Documentation](https://devcenter.heroku.com/)

⭐ Star this repository if you find it useful!
