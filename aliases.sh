#!/bin/bash

srvbuild() {
    pushd build/web/
    python -m SimpleHTTPServer
    popd
}

dartserve() {
    run_chrome &\
    pub serve 
}

run_chrome() {
    /home/alex/Downloads/dartium-lucid64-full-stable-1.16.0.0/chrome \
        --user-data-dir=/home/alex/.WebStorm2016.1/config/chrome-user-data \
        --no-sandbox --flag-switches-begin --flag-switches-end \
        http://localhost:8080/
}
