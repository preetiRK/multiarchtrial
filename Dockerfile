FROM ubuntu:latest

RUN dpkgArch="$(dpkg --print-architecture)"; \
    case "${dpkgArch##*-}" in \
		amd64) mkdir amd64 ;; \
		armhf) mkdir armhf ;; \
		arm64) mkdir arm64 ;; \
		i386)  mkdir i386 ;; \
		ppc64el) mkdir ppc64el ;; \
		s390x) mkdir s390x ;; \
		*)  ;; \
	esac; \
