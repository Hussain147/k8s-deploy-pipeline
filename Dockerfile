# Start with a base image containing a web server
FROM httpd:latest

# Clone the repository
RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /usr/local/apache2/htdocs/* && \
    git clone https://github.com/Hussain147/k8s-deploy-pipeline.git /usr/local/apache2/htdocs/

# Expose the port the web server will be running on
EXPOSE 80

# Start the web server
CMD ["httpd-foreground"]
