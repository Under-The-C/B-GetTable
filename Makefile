NAME = UnderTheC

all : $(NAME)

$(NAME) :
	docker compose up --build -d

test :
	docker compose -f ./build-test/docker-compose.yml up -d

start :
	docker start mysql
	docker start spring
	docker start react

stop :
	docker stop react
	docker stop spring
	docker stop mysql

restart: stop start

clean :
	docker compose down --remove-orphans --rmi all --volumes
	cd backend-spring && ./gradlew clean

tclean :
	docker compose -f ./build-test/docker-compose.yml down --remove-orphans --rmi all --volumes
	cd backend-spring && ./gradlew clean
	rm -rf build-test/data

fclean : clean
	docker network prune --force
	docker volume prune --force
	docker system prune --all --force --volumes
	rm -rf db-mysql/data

re : fclean all