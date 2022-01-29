import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<PrefecturesPopulation> prefecturesPopulationList = [
    PrefecturesPopulation("北海道", 520),
    PrefecturesPopulation("青森県", 120),
    PrefecturesPopulation("岩手県", 120),
    PrefecturesPopulation("宮城県", 120),
    PrefecturesPopulation("秋田県", 9),
    PrefecturesPopulation("山形県", 100),
    PrefecturesPopulation("福島県", 180),
    PrefecturesPopulation("茨城県", 280),
    PrefecturesPopulation("栃木県", 190),
    PrefecturesPopulation("群馬県", 190),
    PrefecturesPopulation("埼玉県", 730),
    PrefecturesPopulation("東京都", 1400),
    PrefecturesPopulation("神奈川県", 920),
    PrefecturesPopulation("新潟県", 220),
    PrefecturesPopulation("富山県", 100),
    PrefecturesPopulation("石川県", 110),
    PrefecturesPopulation("福井県", 76),
    PrefecturesPopulation("山梨県", 80),
    PrefecturesPopulation("長野県", 200),
    PrefecturesPopulation("岐阜県", 190),
    PrefecturesPopulation("静岡県", 360),
    PrefecturesPopulation("愛知県", 750),
    PrefecturesPopulation("三重県", 170),
    PrefecturesPopulation("滋賀県", 140),
    PrefecturesPopulation("京都府", 250),
    PrefecturesPopulation("大阪府", 880),
    PrefecturesPopulation("兵庫県", 540),
    PrefecturesPopulation("奈良県", 130),
    PrefecturesPopulation("三重県", 170),
    PrefecturesPopulation("和歌山県", 92),
    PrefecturesPopulation("鳥取県", 55),
    PrefecturesPopulation("島根県", 67),
    PrefecturesPopulation("岡山県", 180),
    PrefecturesPopulation("広島県", 270),
    PrefecturesPopulation("山口県", 130),
    PrefecturesPopulation("徳島県", 71),
    PrefecturesPopulation("香川県", 95),
    PrefecturesPopulation("愛媛県", 130),
    PrefecturesPopulation("高知県", 69),
    PrefecturesPopulation("福岡県", 510),
    PrefecturesPopulation("佐賀県", 81),
    PrefecturesPopulation("長崎県", 130),
    PrefecturesPopulation("熊本県", 170),
    PrefecturesPopulation("大分県", 110),
    PrefecturesPopulation("宮崎県", 100),
    PrefecturesPopulation("鹿児島県", 150),
    PrefecturesPopulation("沖縄県", 140),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView.builder(
          itemCount: prefecturesPopulationList.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (builder) => AlertDialog(
                      content: Text(prefecturesPopulationList[index].name +
                          "の人口は約" +
                          prefecturesPopulationList[index]
                              .population
                              .toString() +
                          "万人です。"),
                    ),
                  );
                },
                title: Text(prefecturesPopulationList[index].name),
              ),
            );
          },
        ));
  }
}

class PrefecturesPopulation {
  String name = "";
  int population = 0;

  PrefecturesPopulation(this.name, this.population);
}
