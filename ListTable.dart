
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTable extends StatelessWidget{

  final List<String> items = ["Pencil Battery","Remote Cell","Log book  200 page","Dak book 200 page","Receipt book ","Pocket Special Notebook","U Clip Small Plastic coated ","U Clip Big 35 mm steel (office) ",'White Envelops 9" x 4" with printed','White Envelops 10 1/2" x 5" with printed','PVC Envelops 9" x 4" with printed','PVC Envelops 11" x 5" with printed','PVC Envelops 12" x 10" with printed','PVC Envelops 14" x 10" with printed','PVC Envelops 16" x 12" with printed','Inside Cloth Coated Envelop 16" x 12"','Inside Cloth Coated Envelop 12" x 10"','Inside Cloth Coated Envelop 14" x 10"',"Gum Bottle 300 ml  (RED)","Fevi  Stick  (22 grm)","Correction Pen  11 ML","Folder File  DAK PAD","Box file","Cobra File Deluxe (with printed)","Index File  ","Tag File  (with printed) 30kg board ","File Pad  with corner  full cloth ","Strip File  (Stick file)","Conference Pad","Conference Folder, (L folder )","Stamp Pad Ink Small  25 ml ","Copier Paper A4 (Power/JK Red)","Copier Paper Full Scape (Power/JK Red)","Copier Paper A3 (Power/JK Red)","Scissor,stainless steel (Size 9.75”)","Highlighter (Yellow/Pink)","Bold Marker  PIK","CD Marker  LUXOR","Calculator Table Model 12 Digit","Dust Bin","Paper Weight","Sealing Wax","Room Freshener","Ruler (Steel)","Pin Cushion","Cutter Small","Cutter Big","Single Punch","Poker (Special)","Stapler Machine Small  No. 10 ","Stapler Machine Big  No. 24/6","Punching Machine Small DP 52","Punching Machine Medium DP 280","Stapler Pin small  (No. 10)","Register 100 page (size 13”x8”)","Register 200 page (size 13”x8”)","Register 300 page (size 13”x8”)","Cello Tape Dispenser Big size ","Butter Paper  250 sheet","Typing Carbon paper","Note Sheet Paper (Blue Colour)","Sketch Pen Set (blue, black,red)","Disposable Dot Pen (Red/Black/blue)","Pencil Erazer Natural","Pencil Erazer Non-dust","Pencil  250gram","Alpin 400 gms. T type","Pencil Sharpener","Montex Hi power pen","Attendance Register 96 page","Sticker Sheet A4","Spiral Sheet","Tag (Lace) 24”","Tag Medium 8” white cotton","Colour Flag",'Cello / Brown Tape 1" x65 mt.','Cello / Brown Tape 2" x65 mt.','Cello / Brown Tape 3" x65 mt.',"Receipt register  200 pages","Despatch register 200 page ","Cell Pointe gel pen ","Binder Clip Medium ","Binder Clip Big","Uni ball pen","Stapler pin small 24/6",'PVC Envelops 9" x 4" with printed',"J K Bond Excel 90GSM","Unomax Ultron 2X","Renold Racer Gel Pen","Cloth Binding Register 500 page","Big Size Calculator","Table Pen Stand with pin Box","Cash Book","Serving Plastic Tray","Stapler Heavy Duty","Stock Register 400 Page","Montex Hi power pen Rifle","Drawing pin","Multi Colour offset printing (letter pad)  per pad 100 pages 100 GSM","Pack Folder","Letter head","Duster","White Board Markar ( Blue + Black + Red )","Letter Recived Registar","L. Foldatr","50 Miter Cloth","Whitner","White Board Markar ( Blue + Black + Red ) Refil" ];

  final List<String> quantities = ['108','89','26','31','6','108','15 pkt ','13 pkt ','376','415','209','214','179','189','187','195','210','210','44','126','74','318','163','1210','95','10','790','242','443','36 pkt','42','108 Rim','9 Rim','-','36','98','97','119','21','56','72','16 pkt','43','56','14','49','33','27','28','55','29','21','29','106 Box','95','65','44','33','6','9 pkt','7 Rim','28','157','13 Box','7 Box','14 Box','9 pkt ','7 Box','28 pkt ','63','205','120','109 pic','10 pkt','92 pkt','58','63','53','20','17','128','264','214','112','81','130','20','60','97','18','18','53','13','71','18','58','99','109','151','135','250','2','64','2','2 pkt','1','10 pic','12'];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('List of items'),
        backgroundColor: Colors.green,

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('List of Items',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 40,),
        
            Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Table(
                      columnWidths: {
                        0: FixedColumnWidth(50.0), // Fixed width for the first column
                        1: FlexColumnWidth(), // Flexible width for the second column
                        2: FixedColumnWidth(100.0), // Fixed width for the third column
                      },
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('S No.',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Item Name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Quantity',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
                            ),
                          ],
                        ),
        
                        ...List<TableRow>.generate(
                          items.length,(index)=>TableRow(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text((index+1).toString()),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(items[index]),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(quantities[index]),
                            ),
        
                          ],
                        )
                        )
                      ],
                    ),
                ),
        

        
          ],
        ),
      ),

    );
  }
}