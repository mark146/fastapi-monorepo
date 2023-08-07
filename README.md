# FastAPI Monorepo Project

이 프로젝트는 FastAPI, Poetry, Monorepo를 사용한 공부용 프로젝트입니다.


## Project Structure
```agsl
/fastapi-monorepo
  /common
    __init__.py
    utils.py
  /service1
    main.py
  /service2
    main.py
  Dockerfile
  docker-compose.yml
```

## Services
- 각 서비스는 FastAPI 애플리케이션을 포함하고 있습니다. 
- 서비스는 공통 라이브러리 common에서 함수를 임포트하여 사용합니다.

### Service1
service1은 포트 9280에서 실행되며, 루트 URL에 GET 요청을 보내면 service1에서의 응답을 확인할 수 있습니다.

### Service2
service2는 포트 9281에서 실행되며, 루트 URL에 GET 요청을 보내면 service2에서의 응답을 확인할 수 있습니다.


## Common Library
common 라이브러리는 공통 코드를 포함하고 있습니다.


## Docker
- 프로젝트는 Docker를 사용하여 컨테이너화되었습니다. 
- Dockerfile은 모든 코드를 Docker 이미지에 복사하고, PYTHONPATH를 설정하여 common 모듈이 올바르게 임포트되도록 합니다.


## Getting Started
- 이 프로젝트를 실행하기 위해 Docker와 Docker Compose가 필요합니다. 
- Docker Compose를 사용하면 service1과 service2가 각각 포트 9280과 9281에서 실행됩니다.
- 프로젝트를 실행하려면 다음 명령을 실행하세요
```agsl
docker-compose up
```
