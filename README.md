# UWSGI: A Gentoo-based Docker Image

A fairly standardized Docker Image, based on Hardened Gentoo, intended to run fairly standard Python 3.6 uwsgi applications.

## How to use it

Build an image for your app with a Dockerfile that looks like

```
FROM kojiromike/uwsgi
COPY Pipfile.* .
RUN ["pipenv", "install", "--system", "--deploy"]
```

By running

```
docker build --tag my_app
```

Then run it like

```
docker run my_app
```
