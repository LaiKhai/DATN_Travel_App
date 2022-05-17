import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart_button extends StatefulWidget {
  const Cart_button({Key? key}) : super(key: key);

  @override
  State<Cart_button> createState() => _Cart_buttonState();
}

class _Cart_buttonState extends State<Cart_button> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 3,
              color: Color(0x411D2429),
              offset: Offset(0, 1),
            )
          ],
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 1, 1, 1),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1574914629385-46448b767aec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGF0dGV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 4, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: GoogleFonts.quicksand(
                          color: Color(0xFF090F13),
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.local_airport_sharp,
                            color: Colors.black,
                            size: 24,
                          ),
                          Text(
                            '20/11/2000',
                            style: GoogleFonts.quicksand(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          const Icon(
                            Icons.home,
                            color: Colors.black,
                            size: 24,
                          ),
                          Text(
                            '22/11/2002',
                            style: GoogleFonts.quicksand(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                        child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Color(0xFFE04E21),
                            borderRadius: BorderRadius.circular(35),
                            shape: BoxShape.rectangle,
                          ),
                          alignment:
                              AlignmentDirectional(0.050000000000000044, 0),
                          child: Text(
                            'Hội nhóm',
                            style: GoogleFonts.quicksand(
                                fontSize: 13,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://picsum.photos/seed/437/600'),
                            radius: 15,
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 10, left: 10),
                            child: Text(
                              'Tên công ty',
                              style: GoogleFonts.quicksand(
                                  fontSize: 13, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
