import 'package:flutter/material.dart';

class PointFile extends StatelessWidget {
  const PointFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.grey[900],
      //   title: Text('Third Screen'),
      // ),
      body: Several(),
      // Buttons(),
      // SizedBox(height: 267.4),
    );
  }
}

class BetweenClass {
  final String name;
  final String surname;
  final Color color_name;
  final Color color_surname;
  final IconData icon;
  final Color container_color;

  BetweenClass({
    required this.name,
    required this.surname,
    required this.color_name,
    required this.color_surname,
    required this.icon,
    required this.container_color,
  });
}

class Several extends StatelessWidget {
  final List<BetweenClass> names = [
    BetweenClass(
      name: 'Андрей',
      surname: 'Петров',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
    BetweenClass(
      name: 'Павел',
      surname: 'Сидоров',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
    BetweenClass(
      name: 'Дарья',
      surname: 'Прохорова',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
    BetweenClass(
      name: 'Александр',
      surname: 'Дегтяров',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
    BetweenClass(
      name: 'Михаил',
      surname: 'Августин',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
    BetweenClass(
      name: 'Петр',
      surname: 'Воинов',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
    BetweenClass(
      name: 'Антон',
      surname: 'Сидоров',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
    BetweenClass(
      name: 'Михаил',
      surname: 'Нагибин',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
    BetweenClass(
      name: 'Виктория',
      surname: 'Уварова',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
    BetweenClass(
      name: 'Петр',
      surname: 'Тлачов',
      color_name: Colors.black,
      color_surname: Colors.black,
      icon: Icons.person,
      container_color: Colors.grey[300]!,
    ),
  ];
  Several({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> answer = names
        .map((BetweenClass widget) => Main(
              name: widget.name,
              surname: widget.surname,
              color_name: widget.color_name,
              color_surname: widget.color_surname,
              icon: widget.icon,
              container_color: widget.container_color,
            ))
        .toList();
    return Center(
        child: ListView(
      children: answer,
      physics: BouncingScrollPhysics(),
    ));
  }
}

class Main extends StatelessWidget {
  final String name;
  final String surname;
  final Color color_name;
  final Color color_surname;
  final IconData icon;
  final Color container_color;
  Main({
    required this.name,
    required this.surname,
    required this.color_name,
    required this.color_surname,
    required this.icon,
    required this.container_color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        height: 70,
        margin: EdgeInsets.only(right: 9, top: 7, bottom: 7),
        decoration: BoxDecoration(
          color: container_color,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Container(
          child: CustomMultiChildLayout(
            delegate: Position(),
            children: [
              LayoutId(
                  id: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$name',
                      style: TextStyle(color: color_name, fontSize: 15),
                    ),
                  )),
              LayoutId(
                  id: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$surname',
                        style: TextStyle(color: color_surname)),
                  )),
              LayoutId(
                  id: 3,
                  child: Icon(
                    icon,
                    size: 25,
                  )),
            ],
          ),
        ));
  }
}

class Position extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    final minFirstChildWidth =
        layoutChild(1, BoxConstraints.loose(size)); //give name

    final minSecondChildWidth =
        layoutChild(2, BoxConstraints.loose(size)); //give surname

    final minThirdChildWidth =
        layoutChild(3, BoxConstraints.loose(size)); //give icon

    //////////<Children Position>/////////////////

    positionChild(
      1,
      Offset(size.width / 2 - minFirstChildWidth.width / 2, size.height - 50),
    );
    positionChild(
        2,
        Offset(
            size.width / 2 - minSecondChildWidth.width / 2, size.height - 35));
    positionChild(
        3,
        Offset(size.width / 2 - minThirdChildWidth.height / 2,
            size.height / 2 - minThirdChildWidth.height / 2 - 20));
    // TODO: implement performLayout
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}

class Buttons extends StatefulWidget {
  Buttons({Key? key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  _secondwidget() {
    Navigator.of(context).pushNamed('/second');
  }

  String name = 'Перейти на другой экран';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            onPressed: _secondwidget,
            child: Text('$name'),
          ),
          SizedBox(
            height: 70,
          ),
        ],
      ),
    );
  }
}

class IButton extends StatefulWidget {
  const IButton({Key? key}) : super(key: key);

  @override
  _IButtonState createState() => _IButtonState();
}

class _IButtonState extends State<IButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 500,
      child: CustomMultiChildLayout(delegate: IButtonDelegate(), children: [
        LayoutId(
            id: 1,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.person_add_alt_1_rounded),
            )),
        LayoutId(
            id: 2,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.mail),
            )),
        LayoutId(
            id: 3,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.add_location),
            )),
        LayoutId(
            id: 4,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.search),
            )),
        LayoutId(
            id: 5,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.settings),
            )),
        LayoutId(
            id: 6,
            child: IconButton(
              onPressed: () {},
              iconSize: 35,
              icon: Icon(Icons.send),
            )),
      ]),
    );
  }
}

class IButtonDelegate extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    layoutChild(1, BoxConstraints.loose(size));
    layoutChild(2, BoxConstraints.loose(size));
    layoutChild(3, BoxConstraints.loose(size)); // TODO: implement performLayout
    layoutChild(4, BoxConstraints.loose(size));
    layoutChild(5, BoxConstraints.loose(size));
    layoutChild(6, BoxConstraints.loose(size));
    positionChild(1, Offset(0, 0));
    positionChild(2, Offset(68.5, 0));
    positionChild(3, Offset(137, 0));
    positionChild(4, Offset(205.5, 0));
    positionChild(5, Offset(274, 0));
    positionChild(6, Offset(342.5, 0));
  }

  @override
  bool shouldRelayout(covariant MultiChildLayoutDelegate oldDelegate) {
    return true;
  }
}
