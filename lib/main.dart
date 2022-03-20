import 'package:flutter/material.dart';
import 'package:mikailelslkd/bottom_bar.dart';
import 'package:mikailelslkd/cookie_page.dart';
import 'package:mikailelslkd/message.dart';
import 'package:mikailelslkd/news.dart';
import 'package:mikailelslkd/news/widgets.dart';
import 'package:mikailelslkd/news/wiget_first.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {},
        ),
        title: Text('Делай Добро',
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 20.0,
                color: Color(0xFF545D68))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 20.0),
        children: <Widget>[
          SizedBox(height: 15.0),
          TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Color(0xFFC88D67),
              isScrollable: true,
              labelPadding: EdgeInsets.only(right: 45.0),
              unselectedLabelColor: Color(0xFFCDCDCD),
              tabs: [
                Tab(
                  child: Text('Новости',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Организации',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                ),
                Tab(
                  child: Text('Сообщения',
                      style: TextStyle(
                        fontFamily: 'Varela',
                        fontSize: 21.0,
                      )),
                )
              ]),
          Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(controller: _tabController, children: [
                News(),
                CookiePage(),
                PointFile(),
              ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFFF17532),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}

/////////////////////////////////////////////////////////

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: BackgroundSignIn(),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    _getHeader(),
                    Verify(),
                    _getSignIn(),
                    SizedBox(
                      height: 70,
                    )
                    // _getBottomRow(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

_getHeader() {
  return Expanded(
    flex: 2,
    child: Container(
        width: 100,
        height: 100,
        alignment: Alignment.bottomLeft,
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Делай Добро',
                style: TextStyle(fontStyle: FontStyle.italic, fontSize: 26),
              )
            ],
          ),
        )),
  );
}

class Verify extends StatefulWidget {
  Verify({Key? key}) : super(key: key);

  @override
  _VerifyState createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextField(
            keyboardAppearance: Brightness.dark,
            keyboardType: TextInputType.emailAddress,
            controller: name,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.mail),

              // fillColor: ,,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              labelText: 'Логин',
              labelStyle: TextStyle(color: Colors.grey),
              focusColor: Colors.red,
              fillColor: Colors.red,

              // fillColor: ,
            ),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            toolbarOptions: ToolbarOptions(
              copy: false,
              paste: false,
              cut: false,
            ),
            obscuringCharacter: '*',
            obscureText: true,
            keyboardAppearance: Brightness.dark,
            controller: surname,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              labelText: 'Пароль',
              labelStyle: TextStyle(color: Colors.grey),
            ),
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}

_getSignIn() {
  return Expanded(
    flex: 1,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          'Вход',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        ),
        Button()
      ],
    ),
  );
}

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  long_press() {
    Navigator.push<void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => MyHomePage(),
      ),
    );
  }

  second_widget() {
    final name = Verify();
    return Navigator.push<void>(
      context,
      MaterialPageRoute<void>(
        builder: (BuildContext context) => MyHomePage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      child: ElevatedButton(
        onPressed: second_widget,
        onLongPress: long_press,
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(1000),
                    side: BorderSide(color: Colors.purple)))),
        child: Icon(
          Icons.arrow_forward_ios_rounded,
          size: 30,
        ),
      ),
    );
  }
}

// _getBottomRow() {
//   return Expanded(
//     flex: 1,
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         Text(
//           'Регистрация',
//           style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.w500,
//               decoration: TextDecoration.underline),
//         ),
//         Text(
//           'Забыли пароль',
//           style: TextStyle(
//               fontSize: 15,
//               fontWeight: FontWeight.w500,
//               decoration: TextDecoration.underline),
//         )
//       ],
//     ),
//   );
// }

class BackgroundSignIn extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var sw = size.width;
    var sh = size.height;
    var paint = Paint();

    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, sw, sh));
    paint.color = Colors.orange;
    canvas.drawPath(mainBackground, paint);

    // RED
    Path blueWave = Path();
    blueWave.lineTo(sw, 0);
    blueWave.lineTo(sw, sh * 0.5);
    blueWave.quadraticBezierTo(sw * 0.5, sh * 0.45, sw * 0.2, 0);
    blueWave.close();
    paint.color = Colors.purple[500]!;
    canvas.drawPath(blueWave, paint);

    // BLUE
    Path greyWave = Path();
    greyWave.lineTo(sw, 0);
    greyWave.lineTo(sw, sh * 0.2);
    greyWave.cubicTo(
        sw * 2, sh * 0.1, sw * 0.7, sh * 0.15, sw * 0.6, sh * 0.38);
    greyWave.cubicTo(sw * 0.6, sh * 0.52, sw * 0.05, sh * 0.45, 0, sh * 0.4);
    greyWave.close();
    paint.color = Colors.white;
    canvas.drawPath(greyWave, paint);

    // WHITE
    Path yellowWave = Path();
    yellowWave.lineTo(sw * 0.7, 0);
    yellowWave.cubicTo(
        sw * 0.6, sh * 0.05, sw * 0.27, sh * 0.01, sw * 0.18, sh * 0.12);
    yellowWave.quadraticBezierTo(sw * 0.12, sh * 0.2, 0, sh * 0.2);
    yellowWave.close();
    paint.color = Colors.purple;
    canvas.drawPath(yellowWave, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
