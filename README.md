# python-app# Docker Compose Python Flask Project

This project demonstrates the use of Docker Compose to set up a Python Flask application. Follow the steps below to clone the repository, set up the environment, and run the application.

## Prerequisites

Before starting, ensure you have the following installed on your system:

1. **Docker**
   - Install Docker from [Docker's official website](https://docs.docker.com/get-docker/).

2. **Docker Compose**
   - Docker Compose is typically included with Docker Desktop. For Linux, refer to the [installation guide](https://docs.docker.com/compose/install/).

3. **Ubuntu**
   - Ensure you are running this on an Ubuntu environment.

## Getting Started

1. **Clone the Repository**

   ```bash
    git clone <repository-url>
    cd <repository-name>

   ```
2. **Give Permission to the Shell Script**

    The project includes a shell script that needs execution permissions. Run the following command to grant the necessary permissions:

```bash
chmod +x <script-name>.sh
```

3. **Run the Shell Script**

    Execute the shell script to set up and run the application:

   ```bash
      ./<script-name>.sh
   ```
## Usage

   Once the setup script has been executed successfully:

1. Access the Flask application in your web browser at:

```localhost:port```


Replace `<port>` with the port specified in the `docker-compose.yml` file (typically `5000`).

