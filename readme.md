# StatusBoard IaC (NHN Cloud)

Terraform으로 프론트엔드/백엔드 분리 구조이며, 백엔드는 Private 서브넷, 프론트엔드는 Public 접근 가능하게 구성

<br/>

## 1️⃣ 인프라 구성 디렉토리 구조
- **compute** : VM, Floating IP 관련
- **network** : VPC, Subnet, Security Group, Routing Table
- **storage** : Block Storage (볼륨, 스냅샷 등)

<br/>

## 2️⃣ 실행 플로우

```mermaid
flowchart TD
    A[terraform init] --> B[terraform plan]
    B --> C[terraform apply]
    C --> D[IGW 생성 후 라우팅테이블 연결]
    D --> E[terraform apply 다시 실행]
```

## 3️⃣ 실행 순서
```bash
1. 초기화
terraform init

2. 계획 확인
terraform plan

3. 인프라 생성
terraform apply

4. 인프라 제거
terraform destroy
```
