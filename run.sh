BLUE='\033[38;5;45m'
RED='\033[0;31m'
BOLD='\033[1m'
NC='\033[0m'

function print_error() {
  echo -e "${BOLD}${RED}Error: $1${NC}"
  exit 1
}
function print_info() {
  echo -e "${BOLD}${BLUE}-----------------$1-----------------${NC}"
}
if [ ! -d "./solita-dev-academy-backend" ]; then
    print_info "Cloning backend repository"
    if ! git clone git@github.com:kaivola/solita-dev-academy-backend.git; then
      print_error "Cloning backend repository failed"
    fi
fi
(
  cd solita-dev-academy-backend || print_error "Backend dir doesn't exist"
  print_info "Starting docker image build"
  docker compose up --build --force-recreate -d
)
if [ $? -ne 0 ]; then
    print_error "Building and running backend docker image failed"
fi
if [ ! -d "./solita-dev-academy-frontend" ]; then
  print_info "Cloning frontend repository"
  if ! git clone git@github.com:kaivola/solita-dev-academy-frontend.git; then
    print_error "Cloning frontend repository failed"
  fi
fi
(
  cd solita-dev-academy-frontend || print_error "Frontend dir doesn't exist"
  print_info "Installing dependencies"
  NODE_ENV=production
  npm ci
  print_info "Started building the frontend"
  if ! npm run build; then
    print_error "Building the frontend failed"
  fi
  print_info "Build succeeded: starting server"
  npm run start
)
