## Flutter Gallery의 ui 따라해보기
> 참고 링크 : https://gallery.flutter.dev/#/

### 01.Appbar

### 02.Button
* TextButton : 텍스트 버튼
* ElevatedButton : 돌출 버튼
* OutlineButton : 윤곽 버튼
* FloatingActionButton : 플로팅 작업 버튼
```
// Overflowed By ???Pixels 오류시 "resizeToAvoidBottomlnset : false"추가하고 body를 SingleChildScrollView로 감싼다.
  home: Scaffold(
    resizeToAvoidBottomlnset : false,
    appBar: AppBar(
      title: Text('Appbar')
      ),
    body: SingleChildScrollView(
      child : AppbarPage
    )),
```

### 03.Text Field
* GestureDetector를 사용하면 사용자가 공백을 누를때 키보드가 사라진다.
```
  return GestureDetector(
    onTap: () {
      FocusScope.of(context).unfocus();
    },
    child ...
  )
```

### login 화면 작업시 자주 쓰는 위젯
* Stack : 컨테이너와 같은 위젯을 서로 겹쳐서 배치 가능.
* Positioned : Stack 내부에서 위치 설정 가능.

* MediaQuery : 화면의 크기를 얻을 수 있는 클래스(기종에 따라 화면 크기가 다르기 때문.)
> MediaQuery.of(context).size             앱 화면의 크기
> MediaQuery.of(context).size.height      앱 화면의 높이
> MediaQuery.of(context).size.width       앱 화면의 넓이
> MediaQuery.of(context).devicePixeRatio  화면 배율
> MediaQuery.of(context).padding.top      상단 상태 표시줄 높이

* EdgeInsets : padding, margin처럼 여백 지정.
> EdgeInsets.all          전체 여백을 동일하게 지정.
> EdgeInsets.only         특정영역에만 여백 지정.
> EdgeInsets.fromLTRB     순서대로 왼쪽, 위, 오른쪽, 아래 순으로 지정.
> EdgeInsets.symmetric()  symmetric은 대칭적이라는 뜻으로 horizontal은 수평, vertical 수직