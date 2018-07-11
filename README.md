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

## How to Collaborate

I need lots of help with this. The rules are:

1. Be kind.
1. Keep to the interface described above.
1. Make the image small.

The rules are in priority order, so a bigger image is preferred to a small image that has a different use, and I reserve the right to decline your contribution if I think you are being unkind.
