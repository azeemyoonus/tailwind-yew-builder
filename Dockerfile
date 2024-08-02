# Use an official Node.js runtime as a parent image
FROM node:22.5.1-slim

# Set the working directory in the container
WORKDIR /work

# Install necessary tools and packages


# Install tailwindcss and other npm packages globally
RUN npm install --global tailwindcss@1.9.6 tailwindcss-cli@latest postcss@8.4.14 autoprefixer@10.4.19 clean-css-cli@5.5.0 npm-run@latest pg-promise@11.4.3 pdfkit@0.11.0 sanitize-html@2.12.1 socket.io@4.6.2

# Copy necessary files into the container
COPY package.json .
COPY postcss.config.js .
COPY prod.sh .

# Install tailwindcss-cli globally (if needed)

# Where the input tailwind.css file can be found
VOLUME /work/input

# Where the final CSS will be output
VOLUME /work/output

# Where postcss will search for src to remove unused tailwind bits
# Point this to the root of your base app
VOLUME /work/source_code
