# Use Node.Ja base image
From node:18

# Set working directory
WORKDIR	/usr/src/app/ventura_ahleeryan-joe_coding_assignment12/ventura_ahleeryan-joe_site

# copy package files and install dependencies
COPY package*.json ./
RUN npm intall

# copy rest of app files
COPY . .

# set port 
ENV PORT=8083

# expose port
EXPOSE 8083

# start the react development server
CMD ["npm", "start"]
