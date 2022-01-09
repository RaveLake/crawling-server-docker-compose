# 어디에 쓰나요?
Dockerizing 해놓은 [craling-server](https://github.com/RaveLake/crawling-server) 를 바로 사용할 수 있도록 한 번 더 래핑한 레포지토리.
`docker-compose.yml`에 볼륨 마운트와 포트 등의 설정이 들어 있다.
`start.sh`에는 `docker-compose.yml`을 실행시키고 공지를 크롤링하는 명령어가 담겨 있다.

# 사용법

## 사전작업
```
chmod -x start.sh
```

### 수동 실행
```
./start.sh
```

### crontab 등록
주기적으로 공지를 크롤링 하도록 세팅
```
cat <(crontab -l) <(echo "00 09-18 * * 1-5 /data/app/crawling-server-docker-compose/start.sh") | crontab -
service cron restart
service cron status
```

# 주의
본 `docker-compose.yml`에 적혀 있는 도커 이미지는 허가 받은 사용자만 접근 가능합니다.
