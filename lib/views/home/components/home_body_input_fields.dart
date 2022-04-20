part of '../../../helpers/lulz_imports.dart';

class HomeBodyInputFields extends StatelessWidget {
  const HomeBodyInputFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Image.asset(
            LulzImages.girlHoldingCardPreset,
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LulzTextFormField(
                hintText: 'Credit card number',
                prefixIcon: const Icon(Icons.credit_card),
                inputFormatters: [
                  /// I can add credit card foramtting like AAAA-AAAA-AAAA-AAAA 💤💤💤
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(12)
                ],
              ),
              const LulzTextFormField(
                hintText: 'Expiration date',
                prefixIcon: Icon(Icons.calendar_month),
              ),
              LulzTextFormField(
                hintText: 'CVV',
                prefixIcon: const Icon(Icons.lock),
                inputFormatters: [LengthLimitingTextInputFormatter(3)],
              )
            ],
          ),
        )
      ],
    );
  }
}
