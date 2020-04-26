#!/bin/bash

docker run \
    --gpus all \
    --rm \
    -it \
    -p 8888:8888 \
    -p 8787:8787 \
    -p 8786:8786 \
    -v $PWD:/home \
    --name rapids \
    --workdir / \
    rapidsai/rapidsai:cuda10.2-runtime-ubuntu18.04 \
    bash -c "cd / && jupyter-lab --allow-root --no-browser --ip 0.0.0.0 --port 8888 --NotebookApp.token=''"
