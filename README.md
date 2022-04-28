## Flutter Gallery의 ui 따라해보기
> 참고 링크 : https://gallery.flutter.dev/#/

### 01.Appbar

### 02.Button
> * TextButton : 텍스트 버튼
> * ElevatedButton : 돌출 버튼
> * OutlineButton : 윤곽 버튼
> * FloatingActionButton : 플로팅 작업 버튼
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
> * GestureDetector를 사용하면 사용자가 공백을 누를때 키보드가 사라진다.
```
  return GestureDetector(
    onTap: () {
      FocusScope.of(context).unfocus();
    },
    child ...
  )
```