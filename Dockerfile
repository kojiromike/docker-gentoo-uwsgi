FROM gentoo/stage3-amd64-hardened-nomultilib as main
COPY --from=gentoo/portage /usr/portage /usr/portage
ENV PYTHON_TARGETS="python3_6"
RUN emerge -uDN @world
RUN eselect news purge
