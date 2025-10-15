import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/lab2_publisherPage.dart';
import 'package:flutter_application_1/styles/app_styles.dart';

class PublisherProfile extends StatelessWidget {
  const PublisherProfile({
    super.key,
    required this.publisher,
    required this.logoUrl,
    // required this.publisherItem
  });

  final String publisher;
  final String logoUrl;

  // final Recommendation publisherItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(
                  logoUrl,
                  height: 108,
                  width: 108,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 108,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              '6.8k',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(26, 26, 26, 1),
                              ),
                            ),
                            Text('News'),
                          ],
                        ),
                        SizedBox(width: 40),
                        Column(
                          children: [
                            Text(
                              '2.5k',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(26, 26, 26, 1),
                              ),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        SizedBox(width: 40),
                        Column(
                          children: [
                            Text(
                              '100',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(26, 26, 26, 1),
                              ),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                    // SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff121314),
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 104.5,
                          vertical: 11,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Follow",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 32),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, // elimină padding-ul implicit
                        minimumSize: Size(0, 0), // elimină dimensiunea minimă
                        tapTargetSize: MaterialTapTargetSize
                            .shrinkWrap, // micșorează zona de tap
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PublisherPage(
                              publisherName: publisher,
                              logoUrl: logoUrl,
                            ), // pagina către care navighezi
                          ),
                        );
                      },
                      child: Text(
                        publisher,
                        style: TextStyle(
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: AppStyles.regularTextColor,
                        ),
                      ),
                    ),

                    if (true)
                      Padding(
                        padding: EdgeInsets.only(
                          left: 7.67,
                          top: 6.5,
                          bottom: 4.83,
                        ),
                        child: Icon(
                          Icons.verified,
                          size: 16.67,
                          color: Color(0xff2ABAFF),
                        ),
                      ),
                  ],
                ),
                Text('Empowering your business journey with expert insights and influential perspectives.',
                style: TextStyle(
                  fontSize: 16,
                  height: 26 / 16,
                ),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
