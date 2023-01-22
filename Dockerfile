FROM node:13.12.0-alpine
WORKDIR /home/ec2-user/Sharan_Capstone
ENV PATH /home/ec2-user/Sharan_Capstone/node_modules/.bin:$PATH
COPY package.json .
COPY package-lock.json .
RUN npm install --silent
RUN npm install react-scripts@3.4.1
COPY . .
EXPOSE 3000
CMD ["npm","start"]
