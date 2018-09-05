FROM kojiromike/docker-gentoo-build-base
RUN emerge uwsgi
WORKDIR /srv
COPY example.py .
ENTRYPOINT ["uwsgi_python36"]
CMD ["--http", ":8080", "--wsgi-file", "example.py"]
