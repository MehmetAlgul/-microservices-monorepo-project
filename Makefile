up:
	docker-compose -f services/OrderService/docker-compose.yml up --build -d && \
	docker-compose -f services/ProductService/product-service/docker-compose.yml up --build -d && \
	docker-compose -f services/SearchService/search-service/docker-compose.yml up --build -d && \
	docker-compose -f services/UserService/docker-compose.yml up --build -d && \
	docker-compose -f services/CartService/docker-compose.yml up --build -d && \
	docker-compose -f services/LoggingService/docker-compose.yml up --build -d
	