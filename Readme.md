# Node.js Application with Docker Compose and Jenkins

This is a sample Node.js application that demonstrates how to use Docker Compose to deploy a Node.js application with PM2, and how to integrate the deployment process with Jenkins.
Prerequisites

    Docker
    Docker Compose
    Jenkins

## Getting Started

To get started with this application, follow these steps:

    Clone the repository: git clone https://github.com/vishalkprabhu/node-boilerplate
    Change directory into the project: cd node-boilerplate
    Install dependencies: npm install
    Build the Docker image: docker-compose build
    Start the Docker containers: docker-compose up -d
    Visit http://localhost:3000 in your browser to see the application running.

## Jenkins Integration

This application is set up to integrate with Jenkins to automate the build, test, and deploy process. The Jenkinsfile in the root of the repository defines the build, test, and deploy stages.

To integrate this application with Jenkins, follow these steps:

    Set up Jenkins and install the necessary plugins.
    Create a new pipeline job in Jenkins.
    Set the pipeline script to Pipeline script from SCM and choose Git as the SCM.
    Set the repository URL to https://github.com/<your-username>/<your-repo>.git.
    Set the script path to Jenkinsfile.
    Add your SSH credentials for the server you want to deploy the application to.
    Save and run the pipeline.

## Contributing

Contributions are welcome! If you have any suggestions or find any bugs, please open an issue or submit a pull request.