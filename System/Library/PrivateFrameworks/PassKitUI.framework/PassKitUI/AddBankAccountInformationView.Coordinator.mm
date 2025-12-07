@interface AddBankAccountInformationView.Coordinator
- (_TtCV9PassKitUI29AddBankAccountInformationView11Coordinator)init;
- (void)addBankAccountInformationViewController:(id)controller didAddFundingSource:(id)source;
- (void)addBankAccountInformationViewControllerDidFinish:(id)finish;
@end

@implementation AddBankAccountInformationView.Coordinator

- (void)addBankAccountInformationViewController:(id)controller didAddFundingSource:(id)source
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded);
  *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded) = source;
  sourceCopy = source;
}

- (void)addBankAccountInformationViewControllerDidFinish:(id)finish
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_completionAction);
  v4 = *&self->completionAction[OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_completionAction];
  v6 = *(&self->super.isa + OBJC_IVAR____TtCV9PassKitUI29AddBankAccountInformationView11Coordinator_fundingSourceAdded);
  v7 = v6;
  selfCopy = self;
  sub_1BE048964();
  v5(v6);
  v4, v8, v9, v10, v11, v12, v13, v14;
}

- (_TtCV9PassKitUI29AddBankAccountInformationView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end