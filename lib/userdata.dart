// ignore_for_file: must_be_immutable, non_constant_identifier_names, unnecessary_brace_in_string_interps, unused_import, camel_case_types, avoid_print

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled8/login.dart';

void main() {
  runApp(const login());
  List<String> userdata = [
    'order_id: FW00345',
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
    'return_initated_for: 4'
  ];
  String jsonuserdata = jsonEncode(userdata);
  if (kDebugMode) {
    print(jsonuserdata);
  } // ["tagA","tagB","tagC"]
}

class userdata extends StatelessWidget {
  String OrderId,
      SiteEngineer,
      SubContractor,
      sectionIncharge,
      structure,
      segment,
      subsegment,
      Element,
      sno,
      Materialcode,
      Materialdescription,
      IssueQty,
      ReturnInitiatedFor,
      Location;

  userdata({
    Key? key,
    required this.OrderId,
    required this.SiteEngineer,
    required this.SubContractor,
    required this.sectionIncharge,
    required this.structure,
    required this.segment,
    required this.subsegment,
    required this.Element,
    required this.Location,
    required this.sno,
    required this.Materialcode,
    required this.Materialdescription,
    required this.IssueQty,
    required this.ReturnInitiatedFor,
  }) : super(key: key);
  // factory Userdata.fromJson(Map<String, dynamic> json) =>
  //     _$UserdataFromJson(json);
  // Map<String, dynamic> toJson() => _$UserdataToJson(this);
// JsonEncoder
//   final String jsonString = jsonEncode(userdata);

  // userdata.fromJson(Map<String, dynamic> json, {super.key}) {
  //   OrderId = json['OrderId'];
  //   SiteEngineer = json['SiteEngineer'];
  //   SubContractor = json['SubContractor'];
  //   sectionIncharge = json['sectionIncharge'];
  //   structure= json['structure'];
  //   segment = json['segment'];
  //   subsegment = json['subsegment'];
  //   Element = json['Element'];
  //   Location = json['Location'];
  //   sno = json['sno'];
  //   Materialcode= json['Materialcode'];
  //   Materialdescription = json['Materialdescription'];
  //   IssueQty = json['IssueQty'];
  //   ReturnInitiatedFor = json['ReturnInitiatedFor'];
  // }

  // main() {
  //   Userdata = userdata(
  //       OrderId: OrderId,
  //       SiteEngineer: SiteEngineer,
  //       SubContractor: SubContractor,
  //       sectionIncharge: sectionIncharge,
  //       structure: structure,
  //       segment: segment,
  //       subsegment: subsegment,
  //       Element: Element,
  //       Location: Location,
  //       sno: sno,
  //       Materialcode: Materialcode,
  //       Materialdescription: Materialdescription,
  //       IssueQty: IssueQty,
  //       ReturnInitiatedFor: ReturnInitiatedFor);
  //   String jsonUserdata = jsonEncode(userdata);
  //   print(jsonUserdata);
  // }
  // void main() {
  //   final userdata = [
  //     {
  //       [OrderId]: OrderId,
  //       SiteEngineer: SiteEngineer,
  //       SubContractor: SubContractor,
  //       sectionIncharge: sectionIncharge,
  //       structure: structure,
  //       segment: segment,
  //       subsegment: subsegment,
  //       Element: Element,
  //       Location: Location,
  //       sno: sno,
  //       Materialcode: Materialcode,
  //       Materialdescription: Materialdescription,
  //       IssueQty: IssueQty,
  //       ReturnInitiatedFor: ReturnInitiatedFor
  //     }
  //   ];
  //
  //   print(json.encode(userdata));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'OrderId:${OrderId}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'SiteEngineer:${SiteEngineer}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'SubContractor:${SubContractor}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'sectionIncharge:${sectionIncharge}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'structure:${structure}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'segment:${segment}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'subsegment:${subsegment}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'Element:${Element}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'Location:${Location}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'sno:${sno}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'MaterialCode:${Materialcode}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'Material Description:${Materialdescription}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'Issue Qty:${IssueQty}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
                Text(
                  'Return Initiated For:${ReturnInitiatedFor}',
                  style: const TextStyle(
                      color: Colors.blueAccent, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
