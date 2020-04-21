# no-pipenv

![Docker Pull Count](https://img.shields.io/docker/pulls/abersh/no-pipenv)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/abersh/no-pipenv)

build image without pipenv from a pipenv project

```dockerfile
FROM abersh/no-pipenv as requirements

FROM python:3.7

# ... yourself commands

COPY --from=requirements /src/requirements.txt .

RUN pip install -r requirements.txt

# ... yourself commands
```
