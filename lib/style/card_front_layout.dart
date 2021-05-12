import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CardFrontLayout {
  String bankName;
  String? cardNumber;
  String? cardExpiry;
  String? cardHolderName;
  Widget? cardTypeIcon;
  double? cardWidth;
  double? cardHeight;
  Color? textColor;

  String? textExpDate;
  String? textName;
  String? textExpiry;

  CardFrontLayout(
      {this.bankName = '',
      this.cardNumber = '',
      this.cardExpiry = '',
      this.cardHolderName = '',
      this.textExpDate = 'Exp. Date',
      this.textExpiry = 'MM/YY',
      this.textName = 'Card Holder',
      this.cardTypeIcon,
      this.cardWidth = 0,
      this.cardHeight = 0,
      this.textColor});

  Widget layout1() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 30,
                child: Center(
                  child: Text(
                    bankName,
                    style: TextStyle(
                        color: textColor,
                        fontSize: 17,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'images/contactless_icon.png',
                    fit: BoxFit.fitHeight,
                    width: 30.0,
                    height: 30.0,
                    color: textColor,
                    package: 'awesome_card',
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                height: cardHeight! * 0.5,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            AutoSizeText(
                              cardNumber == null || cardNumber!.isEmpty
                                  ? 'XXXX XXXX XXXX XXXX'
                                  : cardNumber!,
                              maxFontSize: 22,
                              maxLines: 1,
                              style: TextStyle(
                                  package: 'awesome_card',
                                  color: textColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'MavenPro',
                                  fontSize: 22),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  textExpDate!,
                                  style: TextStyle(
                                      package: 'awesome_card',
                                      color: textColor,
                                      fontFamily: 'MavenPro',
                                      fontSize: 15),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  cardExpiry == null || cardExpiry!.isEmpty
                                      ? textExpiry!
                                      : cardExpiry!,
                                  style: TextStyle(
                                      package: 'awesome_card',
                                      color: textColor,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'MavenPro',
                                      fontSize: 16),
                                ),
                              ],
                            ),
                            AutoSizeText(
                              cardHolderName == null || cardHolderName!.isEmpty
                                  ? textName!
                                  : cardHolderName!,
                              maxFontSize: 17,
                              maxLines: 1,
                              style: TextStyle(
                                  package: 'awesome_card',
                                  color: textColor,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'MavenPro',
                                  fontSize: 17),
                            ),
                          ],
                        ),
                      ),
                      cardTypeIcon!
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}