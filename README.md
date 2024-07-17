## Hotel Reservation
<div align=center>

![hotel-removebg-preview](https://github.com/user-attachments/assets/1b783559-ade7-48e1-a42d-28ef5b4bc6ec)

</div>

## 프로젝트 정보
- flutter로 다양한 개발을 하기 위한 첫 Project
- 호텔을 예약할 수 있는 어플 입니다. (거의 UI만 구현)
- 개발기간 2024/07 (2주)

## 프로젝트 소개
- TextFormField, 다양한 Button, AppBar, Drawer, ListTile, Card, GridView, ListView<br>
ListView.Builder, GridView.Builder, Dismissble, ExpansionPanelList, CheckboxListTile<br>
Hero, DateFormat, DateTime, **Rive**, Parallax 등 여러 위젯을 사용해서 UI 구현

## 화면 구성
<details>
<summary>접기/펼치기</summary><br>
  
|Sign in|Sign up|
|:--:|:--:|
![Signin](https://github.com/user-attachments/assets/2339e71f-6d43-4dc6-9d5a-dbf14b64def1)|![Signup](https://github.com/user-attachments/assets/8d2ad192-9f76-4c99-b59e-80ea233e0688)
|Home(ListView)|Home(GridView)|
![Home<Listview>](https://github.com/user-attachments/assets/b1476899-a6a8-415d-b0a7-42f505e0f264)|![Home<GridView>](https://github.com/user-attachments/assets/c5d20bf6-7048-465e-b730-b46a5df0817b)
|Drawer|Detail|
|![Drawer](https://github.com/user-attachments/assets/897bcbf7-5bc6-4fcd-85f1-363b5dbd5a5d)|![Detail](https://github.com/user-attachments/assets/c78da2d7-69e0-4953-bc6f-3b4c3da78b1f)|
|Search|Search(Dialog)|
|![Search](https://github.com/user-attachments/assets/e6cbe81e-9643-443b-af0a-f6c4c254d938)|![Search(Dialog)](https://github.com/user-attachments/assets/8b9531fe-d991-4e74-bb71-7fd0f9a5eb4c)|
|Favorite|My Page|
|![Favorite](https://github.com/user-attachments/assets/b74632ed-2c77-471b-9f38-e87f6ec7247b)|![MyPage](https://github.com/user-attachments/assets/01b65c54-7a70-4333-a41e-58bf9e690469)|


</details>

## 프로젝트 기능 정리
- GetX 패키지의 Route 관리로 페이지 이동
- Hero Animation 사용
- Getx Controller 로 사진 더블탭 or 하트 아이콘 클릭 했을 때 Get Storage 사용해서<br>
로컬 저장소에 좋아요 목록으로 저장
- Favorite hotel 페이지에서 Dismissble 로 좌우로 밀어서 삭제 가능 (로컬 저장소에서도 삭제)
- Search 페이지도 마찬가지로 Getx Controller로 ExpansionPanelList > CheckboxListTile로<br>
체크한 Filter, DateFormet 데이터 모두 Search(Dialog)에 저장
- Rive 패키지로 동적인 Animation 구현 Toggle Button 으로 상태 변경
- Parallax Scrolling 효과를 위해 위젯을 Custom 한 후 Favorite Hotels List 출력

## 기술 스택
### Environment
![Visual Studio Code](https://img.shields.io/badge/Visual%20Studio%20Code-007ACC?style=for-the-badge&logo=Visual%20Studio%20Code&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=Git&logoColor=white)
![Github](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=GitHub&logoColor=white)

### Development
![Flutter](https://img.shields.io/badge/flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)

### Communication
![Notion](https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=Notion&logoColor=white)

## 프로젝트 리뷰
처음 이렇게 진행해보는거라 생소하고 다소 헷갈리는 부분들이 많았지만, 거기서 오는 배움들이 너무 컸다 !
위젯들을 계속 사용하면서 점점 익숙해지는게 느껴졌고 더 예쁘게 코드를 짤 수 있도록 다음 프로젝트에는 또 다양한 스킬들을 사용해보고 싶다 ! <br>
**아쉬웠던 점은**
코드를 깔끔하게 (View 와 Controller, 다양한 Widget) 나누어서 서로 너무 의존하지 않도록 개발해야 겠다고 생각했다 <br>
UI에서 자연스럽지 못한 부분이나 이해가 완벽하지 않았던 부분들을 앞으로 더 면밀히 다루도록 노력해야겠다 <br>
<br>
🦊
