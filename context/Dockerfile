FROM gentoo/stage3-amd64-hardened-nomultilib as main
COPY --from=gentoo/portage /usr/portage /usr/portage
RUN eselect news purge
COPY etc/portage /etc/portage
RUN emerge -uDN @world
