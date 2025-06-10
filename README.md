# HTTP Client and Server in C

This project provides simple implementations of an HTTP client and various HTTP servers in C.

## English

### Programs

* **httpclient.c:** A simple HTTP client.
  * *USAGE: ./httpclient \<hostname> \<port> \<request path>*
* **httpserver.c:** A simple blocking HTTP server (TCP only).
  * *USAGE: ./httpserver \<port>*
* **httpserver_fork.c:** A simple non-blocking HTTP server using fork (TCP only).
  * *USAGE: ./httpserver_fork \<port>*
* **multi_service_server.c:** A non-blocking server that uses TCP to serve HTTP requests and UDP to serve ping requests.
  * *USAGE: ./multi_service_server \<tcp port> \<udp port>*
  * The format of the UDP ping request is a 32-bit random integer followed by up to 64 bytes of information.
  * The ping response will send back the 32-bit random integer in the request + 1, followed by the same 64 bytes of information.

### Build Instructions

To build the programs, use the provided `Makefile`.

1. **Build all programs:**

   ```bash
   make
   ```

2. **Clean build files:**

   ```bash
   make clean
   ```

### Running the Programs

After building, you can run the programs as described in the "Programs" section. For example:

* To run the HTTP client:

  ```bash
  ./httpclient www.example.com 80 /
  ```

* To run the simple HTTP server on port 8080:

  ```bash
  ./httpserver 8080
  ```

* To run the non-blocking forking HTTP server on port 8081:

  ```bash
  ./httpserver_fork 8081
  ```

* To run the multi-service server with TCP on port 8080 and UDP on port 8081:

  ```bash
  ./multi_service_server 8080 8081
  ```

---

## 한국어

### 프로그램

* **httpclient.c:** 간단한 HTTP 클라이언트입니다.
  * *사용법: ./httpclient \<호스트 이름> \<포트> \<요청 경로>*
* **httpserver.c:** 간단한 블로킹 HTTP 서버입니다 (TCP 전용).
  * *사용법: ./httpserver \<포트>*
* **httpserver_fork.c:** fork를 사용하는 간단한 논블로킹 HTTP 서버입니다 (TCP 전용).
  * *사용법: ./httpserver_fork \<포트>*
* **multi_service_server.c:** TCP를 사용하여 HTTP 요청을 처리하고 UDP를 사용하여 핑 요청을 처리하는 논블로킹 서버입니다.
  * *사용법: ./multi_service_server \<TCP 포트> \<UDP 포트>*
  * UDP 핑 요청 형식은 32비트 랜덤 정수 다음에 최대 64바이트의 정보가 옵니다.
  * 핑 응답은 요청의 32비트 랜덤 정수 + 1을 반환하고, 그 뒤에 동일한 64바이트의 정보가 옵니다.

### 빌드 방법

프로그램을 빌드하려면 제공된 `Makefile`을 사용하십시오.

1. **모든 프로그램 빌드:**

   ```bash
   make
   ```

2. **빌드 파일 정리:**

   ```bash
   make clean
   ```

### 프로그램 실행 방법

빌드 후 "프로그램" 섹션에 설명된 대로 프로그램을 실행할 수 있습니다. 예를 들어:

* HTTP 클라이언트를 실행하려면:

  ```bash
  ./httpclient www.example.com 80 /
  ```

* 포트 8080에서 간단한 HTTP 서버를 실행하려면:

  ```bash
  ./httpserver 8080
  ```

* 포트 8081에서 논블로킹 포크 HTTP 서버를 실행하려면:

  ```bash
  ./httpserver_fork 8081
  ```

* TCP 포트 8080과 UDP 포트 8081에서 다중 서비스 서버를 실행하려면:

  ```bash
  ./multi_service_server 8080 8081
  ```
