CURRENT_DIR = ${CURDIR}
BIN = node_modules/.bin
SRC_DIR = $(CURRENT_DIR)/src
PRODUCTION_DIR = $(CURRENT_DIR)/client/dist

default: build
install:
	cd $(CURRENT_DIR); npm i;
build:
	NODE_ENV=production $(BIN)/parcel build $(SRC_DIR)/javascript/index.js -d $(PRODUCTION_DIR);
