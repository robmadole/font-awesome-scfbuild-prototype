FROM ubuntu:latest

WORKDIR /build

RUN apt-get update && apt-get install -y python-pip

RUN pip install --trusted-host=pypi.org --trusted-host=files.pythonhosted.org fonttools
RUN pip install --trusted-host=pypi.org --trusted-host=files.pythonhosted.org pyyaml

RUN apt-get install -y fontforge python-fontforge

ENTRYPOINT ["bin/scfbuild"]

CMD ["-c", "scfbuild.yml"]
