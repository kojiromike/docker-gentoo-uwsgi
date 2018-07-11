all:
	docker build -t kojiromike/docker-gentoo-uwsgi context

clean:
	docker rmi kojiromike/docker-gentoo-uwsgi
