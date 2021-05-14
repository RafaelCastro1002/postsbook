import 'package:flutter/material.dart';
import 'package:postsbook/src/components/row_information.dart';
import 'package:postsbook/src/models/user_model.dart';
import 'package:postsbook/src/views/widgets/card_widget.dart';

class DetailedUserInformationView extends StatelessWidget {
  final UserModel user;

  const DetailedUserInformationView({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View user detailed'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                CardWidget(
                  titleCard: 'personal information',
                  body: Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        width: 300,
                        child: Column(
                          children: [
                            RowInformation(
                              title: 'name',
                              data: user.name,
                            ),
                            RowInformation(
                              title: 'username',
                              data: user.username,
                            ),
                            RowInformation(
                              title: 'email',
                              data: user.email,
                            ),
                            RowInformation(
                              title: 'phone',
                              data: user.phone,
                            ),
                            RowInformation(
                              title: 'website',
                              data: user.website,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                CardWidget(
                  titleCard: 'address',
                  body: Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        width: 300,
                        child: Column(
                          children: [
                            RowInformation(
                              title: 'street',
                              data: user.address.street,
                            ),
                            RowInformation(
                              title: 'suite',
                              data: user.address.suite,
                            ),
                            RowInformation(
                              title: 'city',
                              data: user.address.city,
                            ),
                            RowInformation(
                              title: 'zipcode',
                              data: user.address.zipcode,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                CardWidget(
                  titleCard: 'geo',
                  body: Container(
                    padding: EdgeInsets.only(left: 25, right: 25),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        width: 300,
                        child: Column(
                          children: [
                            RowInformation(
                              title: 'lat',
                              data: user.address.geo.lat,
                            ),
                            RowInformation(
                              title: 'lng',
                              data: user.address.geo.lng,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: CardWidget(
                    titleCard: 'company',
                    body: Container(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          width: 300,
                          child: Column(
                            children: [
                              RowInformation(
                                title: 'name',
                                data: user.company.name,
                              ),
                              RowInformation(
                                title: 'catch phrase',
                                data: user.company.catchPhrase,
                              ),
                              RowInformation(
                                title: 'bs',
                                data: user.company.bs,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
