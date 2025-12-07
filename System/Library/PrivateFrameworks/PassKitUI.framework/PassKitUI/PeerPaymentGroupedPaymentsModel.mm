@interface PeerPaymentGroupedPaymentsModel
- (_TtC9PassKitUI31PeerPaymentGroupedPaymentsModel)init;
- (void)transactionsChanged:(id)changed;
@end

@implementation PeerPaymentGroupedPaymentsModel

- (void)transactionsChanged:(id)changed
{
  if (changed)
  {
    sub_1BD0E5E8C(0, &qword_1EBD4AB10, 0x1E69B8EA8);
    v4 = sub_1BE052744();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1BD8F972C();

  v4, v6, v7, v8, v9, v10, v11, v12;
}

- (_TtC9PassKitUI31PeerPaymentGroupedPaymentsModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end