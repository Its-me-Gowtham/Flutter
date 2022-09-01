// ignore_for_file: import_of_legacy_library_into_null_safe,library_private_types_in_public_api, non_constant_identifier_names, unnecessary_const, avoid_types_as_parameter_names

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:untitled8/userdata.dart';
import 'package:flutter/services.dart';
import "package:carousel_pro/carousel_pro.dart";

void main() {
  runApp(const MyApp());
  List<String> userdata = [
    '{order_id: FW00345',
    'section_incharge_id: Rajesh kumar M',
    'site_engineer: Vinoth Kumar',
    'sub_contractor:Ramesh',
    'structure: Porur Station',
    'segment: Floor 1',
    'subsegment: Zone 1',
    'element: Column 15',
    'location: SITE01',
    's.no: 1',
    'material_code: 1FSHM0001000000',
    'material_description: DISTINCT MATERIAL:-FLOOR PROP CT(SN); SIZE:- 1500mm',
    'issue_qty: 5',
    'return_initated_for: 4}'
  ];
  String jsonuserdata = jsonEncode(userdata);
  if (kDebugMode) {
    print(jsonuserdata);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'F Track',
      home: HomePage(),
    );
  }
}

// ignore: camel_case_types
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

// ignore: camel_case_types
class _loginState extends State<login> {
  @override
  Widget build(BuildContext) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('F Track'),
          actions: [
            // IconButton(
            //   icon: Icon(Icons.search),
            //   onPressed: () {},
            // ),
            IconButton(
              icon: const Icon(Icons.power_settings_new),
              onPressed: () {},
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 142, 223, 246),
        body: SingleChildScrollView(
            child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: SizedBox(
                  height: 600,
                  width: 700,
                  child: Carousel(
                    images: const [
                      AssetImage(
                          "assets/0001044-construction-crane-Logo-Maker-03.png"),
                      AssetImage("assets/image2.jpg"),
                      AssetImage("assets/image02.png"),
                    ],
                  )),
            ),
            Column(
              children: [
                Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: []),
                      border: Border(left: BorderSide(width: 2)),
                    ),
                    child: const Text("LOGIN",
                        style: TextStyle(
                          fontSize: 40,
                          // fontWeight: FontWeight.bold,
                        ))),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(width: 300),
                    child: const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                          labelText: 'User Id',
                          labelStyle: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.w600,
                          )),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: ConstrainedBox(
                        constraints: const BoxConstraints.tightFor(width: 300),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide()),
                              prefixIcon: Icon(
                                Icons.lock_open,
                              ),
                              labelText: 'PASSWORD',
                              labelStyle: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              )),
                        ))),
                Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {},
                        child: const Text('Forget password?'))),
                Center(
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const MyApp()));
                        },
                        style: OutlinedButton.styleFrom(
                          primary: Colors.blueGrey,
                        ),
                        child: const Text('Login ',
                            style: TextStyle(fontSize: 20)))),
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text("Don't have an account?"),
                        TextButton(
                            onPressed: () {},
                            child: const Text('Create Account',
                                style: TextStyle(
                                  color: Colors.black,
                                ))),
                      ],
                    ))
              ],
            )
          ],
        )));
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _OrderID = TextEditingController();
  final TextEditingController _SiteEngineer = TextEditingController();
  final TextEditingController _SubContractor = TextEditingController();
  final TextEditingController _sectionIncharge = TextEditingController();
  final TextEditingController _structure = TextEditingController();
  final TextEditingController _segment = TextEditingController();
  final TextEditingController _subsegment = TextEditingController();
  final TextEditingController _Element = TextEditingController();
  final TextEditingController _Location = TextEditingController();
  final TextEditingController _sno = TextEditingController();
  final TextEditingController _Materialcode = TextEditingController();
  final TextEditingController _Materialdescription = TextEditingController();
  final TextEditingController _IssueQty = TextEditingController();
  final TextEditingController _ReturnInitiatedFor = TextEditingController();
  List _items = [];

  // Fetch content from the json file
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/sample.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["items"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),*/
        title: const Text('F Track'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.power_settings_new),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            TextButton(
              onPressed: readJson,
              child: const Text(
                'RETURN',
                style: const TextStyle(color: Colors.blueAccent),
              ),
            ),

            // Display the data loaded from sample.json
            _items.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Card(
                          margin: const EdgeInsets.all(10),
                          child: Flexible(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.only(top: 20, left: 20),
                                  child: SizedBox(
                                    height: 200,
                                    width: 200,
                                    child: UserAccountsDrawerHeader(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
                                      accountName: Text(
                                        'Raj Kumar',
                                        textScaleFactor: 2.5,
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      accountEmail: Text(
                                        'Section Engineer',
                                        textAlign: TextAlign.justify,
                                        textScaleFactor: 1.5,
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                      currentAccountPicture: CircleAvatar(
                                        backgroundImage:
                                            AssetImage('assets/index.png'),
                                        backgroundColor:
                                            Color.fromARGB(255, 165, 11, 81),
                                        radius: 50,
                                      ),
                                    ),
                                  ),
                                ),
                                const Text(""),
                                Flexible(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("ORDER ID"),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: TextField(
                                              controller: _OrderID,
                                              decoration: InputDecoration(
                                                  labelText: _items[index]
                                                      ["order_id"],
                                                  labelStyle:
                                                      MaterialStateTextStyle
                                                          .resolveWith(
                                                              (Set<MaterialState>
                                                                  states) {
                                                    final Color color =
                                                        states.contains(
                                                                MaterialState
                                                                    .error)
                                                            ? Theme.of(context)
                                                                .errorColor
                                                            : Colors.blueAccent;
                                                    return TextStyle(
                                                        color: color,
                                                        letterSpacing: 1.3);
                                                  }),
                                                  contentPadding:
                                                      const EdgeInsets.all(20),
                                                  border:
                                                      const OutlineInputBorder()),
                                              style: const TextStyle(
                                                  color: Colors.blue),
                                            ),
                                          ),
                                          const Spacer(
                                            flex: 1,
                                          ),
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("SECTION INCHARGE"),
                                          ),
                                          Expanded(
                                            flex: 3,
                                            child: TextField(
                                              controller: _sectionIncharge,
                                              decoration: InputDecoration(
                                                  labelText: _items[index]
                                                      ["section_incharge_id"],
                                                  labelStyle:
                                                      MaterialStateTextStyle
                                                          .resolveWith((Set<
                                                                  MaterialState>
                                                              states) {
                                                    final Color color =
                                                        states.contains(
                                                                MaterialState
                                                                    .error)
                                                            ? Theme.of(context)
                                                                .errorColor
                                                            : Colors.blueAccent;
                                                    return TextStyle(
                                                        color: color,
                                                        letterSpacing: 1.3);
                                                  }),
                                                  border:
                                                      const OutlineInputBorder()),
                                              style: const TextStyle(
                                                  color: Colors.blue),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          const Text(""),
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("SITE ENGINEER"),
                                          ),
                                          const Text(""),
                                          TextField(
                                            controller: _SiteEngineer,
                                            decoration: InputDecoration(
                                                labelText: _items[index]
                                                    ["site_engineer"],
                                                labelStyle:
                                                    MaterialStateTextStyle
                                                        .resolveWith(
                                                            (Set<MaterialState>
                                                                states) {
                                                  final Color color =
                                                      states.contains(
                                                              MaterialState
                                                                  .error)
                                                          ? Theme.of(context)
                                                              .errorColor
                                                          : Colors.blueAccent;
                                                  return TextStyle(
                                                      color: color,
                                                      letterSpacing: 1.3);
                                                }),
                                                border:
                                                    const OutlineInputBorder()),
                                            style: const TextStyle(
                                                color: Colors.blue),
                                          ),
                                          const Text(""),
                                          const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text("SUB-CONTRACTOR"),
                                          ),
                                          const Text(""),
                                          TextField(
                                            controller: _SubContractor,
                                            decoration: InputDecoration(
                                                labelText: _items[index]
                                                    ["sub_contractor"],
                                                labelStyle:
                                                    MaterialStateTextStyle
                                                        .resolveWith(
                                                            (Set<MaterialState>
                                                                states) {
                                                  final Color color =
                                                      states.contains(
                                                              MaterialState
                                                                  .error)
                                                          ? Theme.of(context)
                                                              .errorColor
                                                          : Colors.blueAccent;
                                                  return TextStyle(
                                                      color: color,
                                                      letterSpacing: 1.3);
                                                }),
                                                border:
                                                    const OutlineInputBorder()),
                                            style: const TextStyle(
                                                color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                      const Text(""),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        children: [
                                          DataTable(columns: const [
                                            DataColumn(
                                              label: Text(
                                                'structure',
                                                style: TextStyle(
                                                    fontStyle: FontStyle.italic,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            DataColumn(
                                                label: Text(
                                              'Segment',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                            DataColumn(
                                                label: Text(
                                              'Sub-Segment',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                            DataColumn(
                                                label: Text(
                                              'Element',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                            DataColumn(
                                                label: Text(
                                              'Location',
                                              style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                            DataColumn(
                                                label: Text(
                                              '',
                                            )),
                                            DataColumn(
                                                label: Text(
                                              '',
                                            )),
                                          ], rows: [
                                            DataRow(cells: [
                                              DataCell(
                                                //Text(user.firstName),
                                                TextField(
                                                  controller: _structure,
                                                  onChanged: (Text) {},
                                                  decoration: InputDecoration(
                                                      labelText: _items[index]
                                                          ["structure"],
                                                      labelStyle:
                                                          MaterialStateTextStyle
                                                              .resolveWith((Set<
                                                                      MaterialState>
                                                                  states) {
                                                        final Color
                                                            color =
                                                            states.contains(
                                                                    MaterialState
                                                                        .error)
                                                                ? Theme.of(
                                                                        context)
                                                                    .errorColor
                                                                : Colors
                                                                    .blueAccent;
                                                        return TextStyle(
                                                            color: color,
                                                            letterSpacing: 1.3);
                                                      }),
                                                      border:
                                                          const OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              // DataCell(Text(
                                              //   'Poor Station',
                                              // )),
                                              DataCell(
                                                TextField(
                                                  controller: _segment,
                                                  onChanged: (text) {},
                                                  decoration: InputDecoration(
                                                      labelText: _items[index]
                                                          ["segment"],
                                                      labelStyle:
                                                          MaterialStateTextStyle
                                                              .resolveWith((Set<
                                                                      MaterialState>
                                                                  states) {
                                                        final Color
                                                            color =
                                                            states.contains(
                                                                    MaterialState
                                                                        .error)
                                                                ? Theme.of(
                                                                        context)
                                                                    .errorColor
                                                                : Colors
                                                                    .blueAccent;
                                                        return TextStyle(
                                                            color: color,
                                                            letterSpacing: 1.3);
                                                      }),
                                                      border:
                                                          const OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              DataCell(
                                                TextField(
                                                  controller: _subsegment,
                                                  onChanged: (text) {},
                                                  decoration: InputDecoration(
                                                      labelText: _items[index]
                                                          ["subsegment"],
                                                      labelStyle:
                                                          MaterialStateTextStyle
                                                              .resolveWith((Set<
                                                                      MaterialState>
                                                                  states) {
                                                        final Color
                                                            color =
                                                            states.contains(
                                                                    MaterialState
                                                                        .error)
                                                                ? Theme.of(
                                                                        context)
                                                                    .errorColor
                                                                : Colors
                                                                    .blueAccent;
                                                        return TextStyle(
                                                            color: color,
                                                            letterSpacing: 1.3);
                                                      }),
                                                      border:
                                                          const OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              DataCell(
                                                //Text(user.firstName),
                                                TextField(
                                                  controller: _Element,
                                                  onChanged: (text) {},
                                                  decoration: InputDecoration(
                                                      labelText: _items[index]
                                                          ["element"],
                                                      labelStyle:
                                                          MaterialStateTextStyle
                                                              .resolveWith((Set<
                                                                      MaterialState>
                                                                  states) {
                                                        final Color
                                                            color =
                                                            states.contains(
                                                                    MaterialState
                                                                        .error)
                                                                ? Theme.of(
                                                                        context)
                                                                    .errorColor
                                                                : Colors
                                                                    .blueAccent;
                                                        return TextStyle(
                                                            color: color,
                                                            letterSpacing: 1.3);
                                                      }),
                                                      border:
                                                          const OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              DataCell(
                                                //Text(user.firstName),
                                                TextField(
                                                  controller: _Location,
                                                  onChanged: (text) {},
                                                  decoration: InputDecoration(
                                                      labelText: _items[index]
                                                          ["location"],
                                                      labelStyle:
                                                          MaterialStateTextStyle
                                                              .resolveWith((Set<
                                                                      MaterialState>
                                                                  states) {
                                                        final Color
                                                            color =
                                                            states.contains(
                                                                    MaterialState
                                                                        .error)
                                                                ? Theme.of(
                                                                        context)
                                                                    .errorColor
                                                                : Colors
                                                                    .blueAccent;
                                                        return TextStyle(
                                                            color: color,
                                                            letterSpacing: 1.3);
                                                      }),
                                                      border:
                                                          const OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              DataCell(const Icon(Icons.edit),
                                                  onTap: () {}),
                                              DataCell(const Icon(Icons.delete),
                                                  onTap: () {}),
                                            ]),
                                            DataRow(cells: [
                                              DataCell(
                                                //Text(user.firstName),
                                                TextField(
                                                  onChanged: (text) {},
                                                  decoration: const InputDecoration(
                                                      border:
                                                          OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              DataCell(
                                                //Text(user.firstName),
                                                TextField(
                                                  onChanged: (text) {},
                                                  decoration: const InputDecoration(
                                                      border:
                                                          OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              DataCell(
                                                //Text(user.firstName),
                                                TextField(
                                                  onChanged: (text) {},
                                                  decoration: const InputDecoration(
                                                      border:
                                                          OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              DataCell(
                                                TextField(
                                                  onChanged: (text) {},
                                                  decoration: const InputDecoration(
                                                      border:
                                                          OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              DataCell(
                                                //Text(user.firstName),
                                                TextField(
                                                  onChanged: (text) {},
                                                  decoration: const InputDecoration(
                                                      border:
                                                          OutlineInputBorder()),
                                                  style: const TextStyle(
                                                      color: Colors.blue),
                                                ),
                                              ),
                                              DataCell(const Icon(Icons.edit),
                                                  onTap: () {}),
                                              DataCell(const Icon(Icons.delete),
                                                  onTap: () {}),
                                            ]),
                                          ]),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            "Enter Return Details",
                                            textAlign: TextAlign.left,
                                            textScaleFactor: 1.5,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          DataTable(
                                              dividerThickness: 5,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                    top: Divider
                                                        .createBorderSide(
                                                            context,
                                                            width: 2),
                                                    bottom: Divider
                                                        .createBorderSide(
                                                            context,
                                                            width: 2),
                                                    right: Divider
                                                        .createBorderSide(
                                                            context,
                                                            width: 10.0),
                                                    left: Divider
                                                        .createBorderSide(
                                                            context,
                                                            width: 10.0)),
                                              ),
                                              showBottomBorder: true,
                                              headingRowColor:
                                                  MaterialStateColor
                                                      .resolveWith((states) =>
                                                          Colors.blue),
                                              columns: const [
                                                DataColumn(
                                                    label: Text(
                                                  'S.no',
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'Material Code',
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'Material Description',
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'Isuue Qty',
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                DataColumn(
                                                    label: Text(
                                                  'Return initiaded For',
                                                  style: TextStyle(
                                                      fontStyle:
                                                          FontStyle.italic,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ],
                                              rows: [
                                                DataRow(cells: [
                                                  DataCell(
                                                    TextField(
                                                      controller: _sno,
                                                      onChanged: (text) {},
                                                      decoration:
                                                          InputDecoration(
                                                              labelText:
                                                                  _items[index]
                                                                      ["s.no"],
                                                              labelStyle: MaterialStateTextStyle
                                                                  .resolveWith(
                                                                      (Set<MaterialState>
                                                                          states) {
                                                                final Color color = states.contains(
                                                                        MaterialState
                                                                            .error)
                                                                    ? Theme.of(
                                                                            context)
                                                                        .errorColor
                                                                    : Colors
                                                                        .blueAccent;
                                                                return TextStyle(
                                                                    color:
                                                                        color,
                                                                    letterSpacing:
                                                                        1.3);
                                                              }),
                                                              border:
                                                                  const OutlineInputBorder()),
                                                    ),
                                                  ),
                                                  DataCell(
                                                    TextField(
                                                      controller: _Materialcode,
                                                      onChanged: (text) {},
                                                      decoration:
                                                          InputDecoration(
                                                              labelText: _items[
                                                                      index][
                                                                  "material_code"],
                                                              labelStyle: MaterialStateTextStyle
                                                                  .resolveWith(
                                                                      (Set<MaterialState>
                                                                          states) {
                                                                final Color color = states.contains(
                                                                        MaterialState
                                                                            .error)
                                                                    ? Theme.of(
                                                                            context)
                                                                        .errorColor
                                                                    : Colors
                                                                        .blueAccent;
                                                                return TextStyle(
                                                                    color:
                                                                        color,
                                                                    letterSpacing:
                                                                        1.3);
                                                              }),
                                                              border:
                                                                  const OutlineInputBorder()),
                                                    ),
                                                  ),
                                                  DataCell(
                                                    TextField(
                                                      controller:
                                                          _Materialdescription,
                                                      onChanged: (text) {},
                                                      decoration:
                                                          InputDecoration(
                                                              labelText: _items[
                                                                      index][
                                                                  "material_description"],
                                                              labelStyle: MaterialStateTextStyle
                                                                  .resolveWith(
                                                                      (Set<MaterialState>
                                                                          states) {
                                                                final Color color = states.contains(
                                                                        MaterialState
                                                                            .error)
                                                                    ? Theme.of(
                                                                            context)
                                                                        .errorColor
                                                                    : Colors
                                                                        .blueAccent;
                                                                return TextStyle(
                                                                    color:
                                                                        color,
                                                                    letterSpacing:
                                                                        1.3);
                                                              }),
                                                              border:
                                                                  const OutlineInputBorder()),
                                                    ),
                                                  ),
                                                  DataCell(
                                                    TextField(
                                                      controller: _IssueQty,
                                                      onChanged: (text) {},
                                                      decoration:
                                                          InputDecoration(
                                                              labelText: _items[
                                                                      index]
                                                                  ["issue_qty"],
                                                              labelStyle: MaterialStateTextStyle
                                                                  .resolveWith(
                                                                      (Set<MaterialState>
                                                                          states) {
                                                                final Color color = states.contains(
                                                                        MaterialState
                                                                            .error)
                                                                    ? Theme.of(
                                                                            context)
                                                                        .errorColor
                                                                    : Colors
                                                                        .blueAccent;
                                                                return TextStyle(
                                                                    color:
                                                                        color,
                                                                    letterSpacing:
                                                                        1.3);
                                                              }),
                                                              border:
                                                                  const OutlineInputBorder()),
                                                    ),
                                                  ),
                                                  DataCell(
                                                    TextField(
                                                      controller:
                                                          _ReturnInitiatedFor,
                                                      onChanged: (text) {},
                                                      decoration:
                                                          InputDecoration(
                                                              labelText: _items[
                                                                      index][
                                                                  "return_initated_for"],
                                                              labelStyle: MaterialStateTextStyle
                                                                  .resolveWith(
                                                                      (Set<MaterialState>
                                                                          states) {
                                                                final Color color = states.contains(
                                                                        MaterialState
                                                                            .error)
                                                                    ? Theme.of(
                                                                            context)
                                                                        .errorColor
                                                                    : Colors
                                                                        .blueAccent;
                                                                return TextStyle(
                                                                    color:
                                                                        color,
                                                                    letterSpacing:
                                                                        1.3);
                                                              }),
                                                              border:
                                                                  const OutlineInputBorder()),
                                                      style: const TextStyle(
                                                          color: Colors.blue),
                                                    ),
                                                  ),
                                                ]),
                                              ]),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                            style: TextButton.styleFrom(
                                              primary: Colors.white,
                                              backgroundColor: Colors.blue,
                                              // splashFactory: Colors.redAccent,
                                              // color: Colors.blue,
                                              // textColor: Colors.white,
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              // splashColor: Colors.redAccent,
                                            ),
                                            child: const Text('Initiate Return',
                                                textAlign: TextAlign.end),
                                            onPressed: () {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        userdata(
                                                          OrderId: _items[index]
                                                              ["order_id"],
                                                          SiteEngineer: _items[
                                                                  index][
                                                              "section_incharge_id"],
                                                          SubContractor: _items[
                                                                  index]
                                                              ["site_engineer"],
                                                          sectionIncharge: _items[
                                                                  index][
                                                              "sub_contractor"],
                                                          structure:
                                                              _items[index]
                                                                  ["structure"],
                                                          segment: _items[index]
                                                              ["segment"],
                                                          subsegment: _items[
                                                                  index]
                                                              ["subsegment"],
                                                          Element: _items[index]
                                                              ["element"],
                                                          Location:
                                                              _items[index]
                                                                  ["location"],
                                                          sno: _items[index]
                                                              ["s.no"],
                                                          Materialcode: _items[
                                                                  index]
                                                              ["material_code"],
                                                          Materialdescription:
                                                              _items[index][
                                                                  "material_description"],
                                                          IssueQty:
                                                              _items[index]
                                                                  ["issue_qty"],
                                                          ReturnInitiatedFor:
                                                              _items[index][
                                                                  "return_initated_for"],
                                                        )),
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                : Container()
          ],
        ),
      ),
      drawer: Drawer(
        elevation: 16.00,
        child: Column(
          children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text('Raj Kumar'),
                accountEmail: Text('Section Engineer'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/index.png'),
                  // backgroundColor: Color.fromARGB(255, 165, 11, 81),
                )),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              onTap: () {},
              title: const Text('orders'),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_basket),
              onTap: () {},
              title: const Text('Return'),
            ),
            ListTile(
              leading: const Icon(Icons.add_shopping_cart),
              onTap: () {},
              title: const Text('Create orders'),
            ),
            ListTile(
              leading: const Icon(Icons.shopping_bag),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => userdata(
                      OrderId: _OrderID.text,
                      SiteEngineer: _SiteEngineer.text,
                      SubContractor: _SubContractor.text,
                      sectionIncharge: _sectionIncharge.text,
                      structure: _structure.text,
                      segment: _segment.text,
                      subsegment: _subsegment.text,
                      Element: _Element.text,
                      Location: _Location.text,
                      sno: _sno.text,
                      Materialcode: _Materialcode.text,
                      Materialdescription: _Materialdescription.text,
                      IssueQty: _IssueQty.text,
                      ReturnInitiatedFor: _ReturnInitiatedFor.text),
                ));
              },
              title: const Text('Return Order'),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const login()));
              },
              title: const Text('LogOut'),
            ),
          ],
        ),
      ),
    );
  }
}
