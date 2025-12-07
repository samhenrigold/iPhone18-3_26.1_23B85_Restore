@interface FinanceKitPredictedTransactionsViewControllerProvider
+ (id)makeViewControllerForPass:(id)pass navigationController:(id)controller;
- (_TtC9PassKitUI53FinanceKitPredictedTransactionsViewControllerProvider)init;
@end

@implementation FinanceKitPredictedTransactionsViewControllerProvider

+ (id)makeViewControllerForPass:(id)pass navigationController:(id)controller
{
  v6 = type metadata accessor for FinanceKitPredictedTransactionsView(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NavigationController();
  v9 = swift_allocObject();
  v9[2] = controller;
  passCopy = pass;
  controllerCopy = controller;
  v12 = passCopy;
  v13 = controllerCopy;
  sub_1BD982048(v12, v9, v8);
  v14 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD46A98, &unk_1BE0D7B90));
  v15 = sub_1BE04F894();

  return v15;
}

- (_TtC9PassKitUI53FinanceKitPredictedTransactionsViewControllerProvider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FinanceKitPredictedTransactionsViewControllerProvider();
  return [(FinanceKitPredictedTransactionsViewControllerProvider *)&v3 init];
}

@end