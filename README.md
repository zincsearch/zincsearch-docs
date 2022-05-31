# ZincSearch documentation

Documentation is built using [material for mkdocs](https://squidfunk.github.io/mkdocs-material/).

Best way to start with updating documentation is to open this repo using [vs code dev containers](https://code.visualstudio.com/docs/remote/containers)

You will need to fix/delete/comment mounts section in .devcontainer/devcontainer.json before you open the repo in dev container.

Once you have opened the source code in dev container, then please run following to start:

> mkdocs serve

Expose the port 8000

![Port](doc-images/port.jpg)

Now you will be able to open the docs on [http://localhost:8000](http://localhost:8000)


To generate docs without vscode run below command

> docker run --rm -it -v ${PWD}:/site squidfunk/mkdocs-material build 

