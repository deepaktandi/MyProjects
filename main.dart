
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:invi/intropage.dart';
import 'package:invi/splashScreen.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({Key? key}) :super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: SplashScreen(),

    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}



class _MyHomePageState extends State<MyHomePage> {

  String? selectedValue;

  String? selectedDept;

  final  _deptController = TextEditingController();

  final  _remarkController = TextEditingController();

  final _quantityController = TextEditingController();

  List<Map<String,dynamic>> _items= [];

  String formattedDate = '${DateTime.now().toLocal().day.toString().padLeft(2, '0')}-${DateTime.now().toLocal().month.toString().padLeft(2, '0')}-${DateTime.now().toLocal().year}';

  int _snoCounter = 1 ;

  void _addItem(){

    if ( selectedValue==null ||_quantityController.text.isEmpty){
      return;
    }

    setState(() {
      _items.add({
        'SNo.': _snoCounter++,
        'Item': selectedValue,
        'Quantity': int.parse(_quantityController.text),
        'Remark' : _remarkController.text,
      });
    });
_remarkController.clear();
    _quantityController.clear();

  }//add item button function

  // final List<String> dropdownDept=['x','y'];
  final List<String> dropdownItems=["Pencil Battery","Remote Cell","Log book  200 page","Dak book 200 page","Receipt book ","Pocket Special Notebook","U Clip Small Plastic coated ","U Clip Big 35 mm steel (office) ",'White Envelops 9" x 4" with printed','White Envelops 10 1/2" x 5" with printed','PVC Envelops 9" x 4" with printed','PVC Envelops 11" x 5" with printed','PVC Envelops 12" x 10" with printed','PVC Envelops 14" x 10" with printed','PVC Envelops 16" x 12" with printed','Inside Cloth Coated Envelop 16" x 12"','Inside Cloth Coated Envelop 12" x 10"','Inside Cloth Coated Envelop 14" x 10"',"Gum Bottle 300 ml  (RED)","Fevi  Stick  (22 grm)","Correction Pen  11 ML","Folder File  DAK PAD","Box file","Cobra File Deluxe (with printed)","Index File  ","Tag File  (with printed) 30kg board ","File Pad  with corner  full cloth ","Strip File  (Stick file)","Conference Pad","Conference Folder, (L folder )","Stamp Pad Ink Small  25 ml ","Copier Paper A4 (Power/JK Red)","Copier Paper Full Scape (Power/JK Red)","Copier Paper A3 (Power/JK Red)","Scissor,stainless steel (Size 9.75”)","Highlighter (Yellow/Pink)","Bold Marker  PIK","CD Marker  LUXOR","Calculator Table Model 12 Digit","Dust Bin","Paper Weight","Sealing Wax","Room Freshener","Ruler (Steel)","Pin Cushion","Cutter Small","Cutter Big","Single Punch","Poker (Special)","Stapler Machine Small  No. 10 ","Stapler Machine Big  No. 24/6","Punching Machine Small DP 52","Punching Machine Medium DP 280","Stapler Pin small  (No. 10)","Register 100 page (size 13”x8”)","Register 200 page (size 13”x8”)","Register 300 page (size 13”x8”)","Cello Tape Dispenser Big size ","Butter Paper  250 sheet","Typing Carbon paper","Note Sheet Paper (Blue Colour)","Sketch Pen Set (blue, black,red)","Disposable Dot Pen (Red/Black/blue)","Pencil Erazer Natural","Pencil Erazer Non-dust","Pencil  250gram","Alpin 400 gms. T type","Pencil Sharpener","Montex Hi power pen","Attendance Register 96 page","Sticker Sheet A4","Spiral Sheet","Tag (Lace) 24”","Tag Medium 8” white cotton","Colour Flag",'Cello / Brown Tape 1" x65 mt.','Cello / Brown Tape 2" x65 mt.','Cello / Brown Tape 3" x65 mt.',"Receipt register  200 pages","Despatch register 200 page ","Cell Pointe gel pen ","Binder Clip Medium ","Binder Clip Big","Uni ball pen","Stapler pin small 24/6",'PVC Envelops 9" x 4" with printed',"J K Bond Excel 90GSM","Unomax Ultron 2X","Renold Racer Gel Pen","Cloth Binding Register 500 page","Big Size Calculator","Table Pen Stand with pin Box","Cash Book","Serving Plastic Tray","Stapler Heavy Duty","Stock Register 400 Page","Montex Hi power pen Rifle","Drawing pin","Multi Colour offset printing (letter pad)  per pad 100 pages 100 GSM","Pack Folder","Letter head","Duster","White Board Markar ( Blue + Black + Red )","Letter Recived Registar","L. Foldatr","50 Miter Cloth","Whitner","White Board Markar ( Blue + Black + Red ) Refil" ];

  var quantity = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body:    SingleChildScrollView(
        child: Column(
          children: [
                                  Text('Requisition Form',style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                
                
                
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Department :  ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                
                                        // Center(
                                        //   child: SingleChildScrollView(
                                        //
                                        //
                                        //     child: Container(
                                        //       width: 220,
                                        //       height: 40,
                                        //       child: SingleChildScrollView(
                                        //
                                        //
                                        //
                                        //         child: DropdownButton<String>(
                                        //
                                        //           value: selectedDept,
                                        //           // Current selected value
                                        //           hint: Text('Select your department'),
                                        //           isExpanded: true,
                                        //           items: dropdownDept.map((String dept) {
                                        //             return DropdownMenuItem<String>(
                                        //               value: dept,
                                        //               child: Text(dept),
                                        //             );
                                        //           }).toList(),
                                        //           onChanged: (String? newValue) {
                                        //             setState(() {
                                        //               selectedDept = newValue; // Update the selected value
                                        //             });
                                        //           },
                                        //         ),
                                        //
                                        //       ),
                                        //     ),//drop down menu for selecting item
                                        //
                                        //   ),
                                        // ),
                
                
                
                
                
                
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            width: 225,
                                            child: TextField(
                                              controller: _deptController,
                
                
                
                                              decoration:InputDecoration(
                
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(20.0),
                                                    borderSide: BorderSide(
                                                        color: Colors.deepOrange,
                                                        width: 2.8
                                                    )
                                                ),
                                                label: Text('Department'),
                                                border: OutlineInputBorder(
                
                                                    borderRadius: BorderRadius.circular(20.0)
                
                                                ),
                
                                              ),
                
                                            ) ,
                
                                          ),
                                        ),
                
                                        //quantity text field
                
                
                
                                      ],
                                    ),//first row of selecting item and their quantity
                
                                  ),
                
                
                                  Divider(),
                
                                  Container(
                
                                    width: 400,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Column(
                                        children: [
                
                
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text('Add Items ', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,),),
                                              ],),
                                          ),
                
                
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Center(
                                                  child: SingleChildScrollView(
                
                
                
                                                    child: Container(
                                                      width: 180,
                                                      height: 60,
                
                                                      child: SingleChildScrollView(
                
                
                
                
                                                        child: DropdownButton<String>(
                
                                                          value: selectedValue,
                                                          // Current selected value
                                                          hint: Text('Select an item'),
                                                          isExpanded: true,// Placeholder
                                                          items: dropdownItems.map((String item) {
                                                            return DropdownMenuItem<String>(
                                                              value: item,
                                                              child: Text(item),
                                                            );
                                                          }).toList(),
                                                          onChanged: (String? newValue) {
                                                            setState(() {
                                                              selectedValue = newValue; // Update the selected value
                                                            });
                                                          },
                                                        ),
                
                                                      ),
                                                    ),//drop down menu for selecting item
                
                                                  ),
                                                ),
                
                
                                                SizedBox(width: 40,),
                
                
                                                Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: SizedBox(
                                                    width: 150,
                                                    child: TextField(
                                                      controller: _quantityController,
                                                      keyboardType: TextInputType.number,
                
                
                                                      decoration:InputDecoration(
                
                                                        focusedBorder: OutlineInputBorder(
                                                            borderRadius: BorderRadius.circular(20.0),
                                                            borderSide: BorderSide(
                                                                color: Colors.deepOrange,
                                                                width: 2.8
                                                            )
                                                        ),
                                                        label: Text('quantity'),
                                                        border: OutlineInputBorder(
                
                                                            borderRadius: BorderRadius.circular(20.0)
                
                                                        ),
                
                                                      ),
                
                                                    ) ,
                
                                                  ),
                                                ),//quantity text field
                
                
                
                                              ],
                                            ),//first row of selecting item and their quantity
                
                                          ),
                
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                
                
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                  width: 205,
                                                  child: TextField(
                                                    controller: _remarkController,
                
                
                
                                                    decoration:InputDecoration(
                
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius: BorderRadius.circular(20.0),
                                                          borderSide: BorderSide(
                                                              color: Colors.deepOrange,
                                                              width: 2.8
                                                          )
                                                      ),
                                                      label: Text('Remark '),
                                                      border: OutlineInputBorder(
                
                                                          borderRadius: BorderRadius.circular(20.0)
                
                                                      ),
                
                                                    ),
                
                                                  ) ,
                
                                                ),
                                              ),
                
                
                                              SizedBox(width: 25,),
                                              Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Center(
                                                  child: Column(
                                                    children: [
                                                      ElevatedButton(
                                                          style: ElevatedButton.styleFrom(
                                                            backgroundColor: Colors.green,
                                                            foregroundColor: Colors.white,
                                                          ),
                
                                                          onPressed: _addItem, child: Text('Add item',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),)),
                                                    ],
                                                  ),
                                                ),
                                              ),//add item button
                
                
                                            ],
                                          ),
                
                                        ],
                
                                      ),
                                    ),
                                  ),
                
                                  //add item button
                
                
                                  SizedBox(height: 50,),
                                  Divider(),
                
                
                                  Container(
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text('Selected Item List', style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800),),
                                          ),
                
                
                                          SizedBox(height: 20,),
                
                                          SingleChildScrollView(
                
                                            scrollDirection:Axis.horizontal,
                
                                            child: DataTable(columns: [DataColumn(label: Text('S.No')),
                                              DataColumn(label: Text('Item Name')),
                                              DataColumn(label: Text('Quantity')),
                                              DataColumn(label: Text('Remark')),
                
                
                                            ], rows: _items.map((item){
                                              return DataRow(cells: [
                                                DataCell(Text(item['SNo.'].toString())),
                                                DataCell(Text(item['Item'])),
                                                DataCell(Text(item['Quantity'].toString())),
                                                DataCell(Text(item['Remark'].toString())),
                                              ]);
                                            }).toList(),
                                            ),
                
                                          ),//table of seleted item
                
                
                
                                          Padding(
                                            padding: const EdgeInsets.all(35.0),
                                            child: Row(
                
                                              mainAxisAlignment: MainAxisAlignment.center,
                
                
                                              children: [
                
                                                Center(
                                                  child: Container(
                
                                                    child: ElevatedButton(
                                                        style: ElevatedButton.styleFrom(
                                                          backgroundColor: Colors.green,
                                                          foregroundColor: Colors.white,
                
                                                        ),
                
                                                        onPressed: () async{
                                                          final pdf = await generatePdf();
                                                          await Printing.layoutPdf(onLayout: ( format) async => pdf);
                                                        }, child: Text('Generate form',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),)),//generate form button
                
                
                                                  ),
                                                ),
                
                                              ],
                                            ),
                                          )
                
                                        ],
                                      ),
                                    ),
                                  ),
                
                                  //generate form button
                
                                ],
                
                              ),
      ),


      //body of homepage


    );
  }
  Future<Uint8List> generatePdf() async {
    final pdf = pw.Document();

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Column(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              pw.Text('CHHATTTISGARH SWAMI VIVEKANAND TECHNICAL UNIVERSITY, BHILAI', style: pw.TextStyle(fontSize: 12.9, fontWeight: pw.FontWeight.bold)),

              pw.SizedBox(height: 40),


              pw.Text('Requisition Form', style: pw.TextStyle(fontSize: 15)),
              pw.Text('(University Teaching Department)', style: pw.TextStyle(fontSize: 12)),

              pw.SizedBox(height: 40),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                    children: [

                      pw.Text('Department :', style: pw.TextStyle(fontSize: 15)),
                      pw.Text('${_deptController.text}', style: pw.TextStyle(fontSize: 15)),
                      pw.SizedBox(width: 150),
                      pw.Text('Date: ${formattedDate}', style: pw.TextStyle(fontSize: 15)),

                    ],
              ),
              pw.SizedBox(height: 10),
              pw.Text('Items List', style: pw.TextStyle(fontSize: 18)),
              pw.SizedBox(height: 10),
              pw.Table(
                border: pw.TableBorder.all(),
                children: [
                  pw.TableRow(
                    children: [
                      pw.Padding(padding: const pw.EdgeInsets.all(8.0), child: pw.Text('S_No.',style: pw.TextStyle(fontSize:16) )),
                      pw.Padding(padding: const pw.EdgeInsets.all(8.0), child: pw.Text('Items',style: pw.TextStyle(fontSize:16 ) )),
                      pw.Padding(padding: const pw.EdgeInsets.all(8.0), child: pw.Text('Quantity',style: pw.TextStyle(fontSize:16 ) )),
                      pw.Padding(padding: const pw.EdgeInsets.all(8.0), child: pw.Text('Remark',style: pw.TextStyle(fontSize:16 ))),
                    ],
                  ),
                  for (var item in _items)
                    pw.TableRow(
                      children: [
                        pw.Padding(padding: const pw.EdgeInsets.all(8.0), child: pw.Text(item['SNo.'].toString())),
                        pw.Padding(padding: const pw.EdgeInsets.all(8.0), child: pw.Text(item['Item'].toString())),
                        pw.Padding(padding: const pw.EdgeInsets.all(8.0), child: pw.Text(item['Quantity'].toString())),
                        pw.Padding(padding: const pw.EdgeInsets.all(8.0), child: pw.Text(item['Remark'].toString())),

                      ],
                    ),
                ],
              ),
              pw.SizedBox(height: 50),




              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('Signature of ', style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(width: 25),
                  pw.Text('Director', style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(width: 20),

                  pw.Text('Name and Signature of', style: pw.TextStyle(fontSize: 15)),

                ],
              ),
              pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Text('Head of Department', style: pw.TextStyle(fontSize: 15)),

                  pw.Text('UTD,CSVTU,Bhilai', style: pw.TextStyle(fontSize: 15)),
                  pw.SizedBox(width: 85),

                  pw.Text('Recipient', style: pw.TextStyle(fontSize: 15)),

                ],
              ),
            ],
          );
        },
      ),
    );

    return pdf.save();
  }
}
