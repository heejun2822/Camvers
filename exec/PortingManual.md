# π  Porting Manual

> Camversλ μλμ κ°μ νκ²½μμ μλΉμ€μ€μ΄λ©°, λ€μκ³Ό κ°μ λ°©λ²μΌλ‘ μ€νν  μ μμ΅λλ€.

#### βοΈ μμ€ν νκ²½

- CPU : `Intel(R) Xeon(R) CPU E5-2686 v4 @ 2.30GHz`
- OS : `Ubuntu 20.04 LTS (GNU/Linux 5.4.0-1018-aws x86_64)`
- Total Memory : `16396056 kB`

#### π₯ μμ€ν κ΅¬μ±

- `Jenkins 3.7 - blueocean` : CI/CD tool
- `AWS EC2` : Deployment Server
- `AWS S3` : File Server
- `Docker` : Frontend//Nginx/GatewayService/UserService/StudyService/ManaginsService μ»¨νμ΄λ μ€ν
- `Docker-compose` : νλμ λ€νΈμν¬ μμμ Docker Imageλ₯Ό μμ±νλ μ€μ  νμΌ
- `Nginx` : Docker Container μμ λμμ§λ©°, Reverse Proxy Serverλ‘μ μμ²­ urlμ λ°λΌ Frontend/Backend/GatewayService Serverλ‘ redirecting ν©λλ€.

#### π» κ°λ° νκ²½

- Java `1.8`

- MySQL `8.0`

- IntelliJ IDEA ULTIMATE `2021.3`

- Node.js `14.8.3 LTS`

- Visual Studio Code`1.48.2`

#### πΉ Install & Usage

##### π΅ Docker & Docker-compose μ€μΉ

```bash
# νμ ν¨ν€μ§ μ€μΉ
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
# GPG Key μΈμ¦
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# docker repository λ±λ‘
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# λμ»€ μ€μΉ
sudo apt-get update && sudo apt-get install docker-ce docker-ce-cli containerd.io
# μμ€ν λΆνμ λμ»€ μμ
sudo systemctl enable docker && service docker start
# λμ»€ νμΈ
sudo service docker status

# λμ»€-μ»΄ν¬μ¦ μ€μΉ
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# κΆν μ€μΌν©λλ€.
$ sudo chmod +x /usr/local/bin/docker-compose
```

##### π΅ Jenkins μ°λ

```bash
# μ  ν¨μ€ μ΄λ―Έμ§ λ€μ΄λ‘λ
sudo docker pull jenkins/jenkins
# μ  ν¨μ€ κ΅¬λ
## νΈμ€νΈ 9090 ν¬νΈλ‘ μ  ν¨μ€ 8080ν¬νΈ μ μ
## νΈμ€νΈμ /home/jenkinsμ μ  ν¨μ€ μ»¨νμ΄λ /var/jenkins_homeμ λ³Όλ₯¨ λ§μ΄νΈ
## docker.sock νμΌ λ³Όλ₯¨ > μ  ν¨μ€ image idλ‘ κ΅¬λ
sudo docker run -d -p 9090:8080 -v /home/jenkins:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
-v $(which docker):/usr/bin/docker \
-v /usr/local/bin/docker-compose:/usr/local/bin/docker-compose \
-u root $(image id)
# νμ¬ μ  ν¨μ€ μ»¨νμ΄λ jenkinsλ‘ μ΄λ¦ λ³κ²½
sudo docker rename $(current container name) jenkins
# μ  ν¨μ€ μ΄λλ―Ό λΉλ°λ²νΈ λ°κΈ
sudo docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

##### π΅ SSL Key λ°κΈ

> μ΄λ―Έ λ°κΈλ°μμ μ΄ μλ€λ©΄ ν΄λΉ μμμ λ¬΄μν΄λ λ¬΄κ΄ν©λλ€.

```
$ sudo apt-get install letsencrypt
$ sudo letsencrypt certonly --standalone -d <wwwμ μΈν λλ©μΈ μ΄λ¦>
```

##### π  Docker Image μμ±

```bash
$ docker-compose build
```

##### π  Docker-compose μ€ν

> Docker-compose μ€μ  νμΌμ΄ μλ Dockerfileλ€μ μ€νμμΌ Docker imageλ₯Ό μμ±ν©λλ€.

- `../nginx/Dockerfile`
- `../frontend/Dockerfile`
- `../backend/Dockerfile`
- `../bigdata/Dockerfile`
- `../msa/GatewayService/Dockerfile`
- `../msa/UserService/Dockerfile`
- `../msa/StudyService/Dockerfile`
- `../msa/ManagingService/Dockerfile`

##### π  Docker Container μμ± λ° μ€ν

```bash
$ docker-compose -d up
```

##### **π’** μΈλΆ μλΉμ€ μ λ³΄

```bash
ν¬ν€ ν΄λΌμ°λ (PUN)

- App ID: 31467a5e-ddc7-4a30-b6c7-6726f518f79f
- CCU: 20

```
