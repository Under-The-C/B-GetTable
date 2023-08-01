NAME = UnderTheC

all : $(NAME)

$(NAME) :
	docker compose up --build -d

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

fclean : clean
	docker network prune --force
	docker volume prune --force
	docker system prune --all --force --volumes

re : fclean all
