import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({super.key, required this.formKey, this.autovalidateMode});

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
    final GlobalKey<FormState> formKey;
   final AutovalidateMode? autovalidateMode;
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cardHolderName = '', cvvCode = '';

  bool showBackView = false;




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          isHolderNameVisible: true,
          cvvCode: cvvCode,
          showBackView: showBackView,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (creditCardModel) {
              cardHolderName = creditCardModel.cardHolderName;
              cardNumber = creditCardModel.cardNumber;
              cvvCode = creditCardModel.cvvCode;
              expiryDate = creditCardModel.expiryDate;
              showBackView = creditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey: widget.formKey)
      ],
    );
  }
}
