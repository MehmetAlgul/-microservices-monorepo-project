up:
	docker-compose -f OrderService/docker-compose.yml up --build -d && \
	docker-compose -f ProductService/docker-compose.yml up --build -d && \
	docker-compose -f SearchService/docker-compose.yml up --build -d && \
	docker-compose -f UserService/docker-compose.yml up --build -d && \
	docker-compose -f CartService/docker-compose.yml up --build -d && \
	docker-compose -f LoggingService/docker-compose.yml up --build -d
	