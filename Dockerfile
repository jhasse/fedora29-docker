FROM fedora:29
RUN dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm && \
    dnf install -y git gcc-gfortran gcc-c++ ragel autogen openssl-static make waf-python3 graphviz \
    boost-python3-devel python3-devel rpm-build chrpath qt5-qttools-devel cmake glew-devel \
    SDL2-devel blas-static libXt-devel qt5-qtwebkit-devel qt5-qttools-devel valgrind lapack-devel \
    texlive-multirow texlive-units texlive-moreverb texlive-framed texlive-mdframed \
    texlive-latex-bin-bin SuperLU-devel texlive-hyphen-base texlive-amscls texlive-symbol \
    texlive-cm texlive-updmap-map texlive-makeindex-bin texlive-bibtex-bin openblas-devel sshpass \
    wxGTK3-devel xorg-x11-server-Xvfb xfwm4 python3-psutil ffmpeg xdotool ImageMagick doxygen && \
    dnf clean all && \
    dbus-uuidgen > /var/lib/dbus/machine-id
ENV LANG en_US.utf-8
