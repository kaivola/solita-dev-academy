# solita-dev-academy

**My submission for the Solita Dev Academy 2024**

See the assignment at https://github.com/solita/dev-academy-spring-2024-exercise

## Running instructions

### Requirements
- Docker
- Node
- Git
- npm
- Unix-like OS (or WSL2 or Git Bash)

Also make sure that you have the provided database running. If not, follow the steps in the [assignment repo](https://github.com/solita/dev-academy-spring-2024-exercise) to get it set up and running.

### Using the provided script
Clone, build and run both the backend and the frontend by running:

```
run.sh
```

If the script didn't fail you can now access the app at http://localhost:3000
### Manually

Optionally you can also set up the app manually:

**Backend**

Clone the repo
```
 git clone git@github.com:kaivola/solita-dev-academy-backend.git
```
Change into the cloned dir and build and run the Docker image
```
docker compose up --build --force-recreate -d
```
Backend should now be listening at port 8080

**Frontend**

Clone the repo
```
 git clone git@github.com:kaivola/solita-dev-academy-frontend.git
```
Change into the cloned dir and after that install dependencies
```
npm i
```
After all the dependencies have installed you can finally build the frontend
```
npm run build
```
After build finishes successfully you can start serving the frontend
```
npm run start
```
The app should now be accessible at http://localhost:3000

## Tech stack
### Frontend
Frontend repo at https://github.com/kaivola/solita-dev-academy-frontend
- React
- Next.js 13
- TypeScript
- Tailwind CSS
- Leaflet

### Backend
Backend repo at https://github.com/kaivola/solita-dev-academy-backend
- Java
- Spring Boot

## Features implemented
### Station list
✅ List all stations
✅ Link to single station views

### Single station view
✅ Station name
✅ Station address
✅ Total number of journeys starting from the station
✅ Total number of journeys ending at the station
✅ Average distance of journeys starting from the station
✅ Avarage duration of journeys starting from the station

