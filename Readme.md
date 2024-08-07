##  NaverMapSDKForSPM

### 개발 목적

네이버 지도 iOS SDK는 CocoaPods를 통한 다운로드만을 지원합니다. NMapsMap을 Tuist와 같은 SPM을 사용하는 프로젝트 관리 도구에서 원활하게 사용하기 위해 개발되었습니다.

### 구현 방법

CocoaPods는 pod install을 통해 의존성 모듈을 다운로드하며 XCFramework(바이너리 파일) 형태로 Pod 프로젝트에 저장합니다.

패키지의 타겟은 해당 XCFramework를 의존하고, 해당 타겟을 제품으로 배포합니다. SPM은 모듈의 의존성을 전이(Translative)하기 때문에, 해당 레포지토리의 패키지 타겟을 의존하면 XCFramework 형태의 모듈에 접근할 수 있습니다.

### 왜 레포지토리를 따로 생성하였는가?

Pod 모듈의 버전 관리를 용이하게 하기 위해서입니다. Tuist에 SPM 형태로 해당 패키지를 추가함으로써, 특정 버전의 XCFramework를 Tuist 프로젝트에 손수 추가하지 않고 tuist install을 통해 손쉽게 버전을 관리할 수 있습니다.