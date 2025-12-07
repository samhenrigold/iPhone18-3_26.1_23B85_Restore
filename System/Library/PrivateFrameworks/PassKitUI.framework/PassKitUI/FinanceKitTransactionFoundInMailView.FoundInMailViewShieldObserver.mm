@interface FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver
- (_TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver)init;
- (void)appProtectionCoordinatorDidFailAccess:(id)access;
- (void)appProtectionCoordinatorDidGainAccess:(id)access;
- (void)applicationWillEnterForeground;
- (void)applicationWillResignActive;
- (void)dealloc;
@end

@implementation FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver

- (void)dealloc
{
  KeyPath = swift_getKeyPath();
  selfCopy = self;
  sub_1BD9B5728(&qword_1EBD5AAD0, type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver, &unk_1BE10A5D4);
  selfCopy2 = self;
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(&selfCopy2->super.isa + OBJC_IVAR____TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver__shieldCoordinator);
  v13 = selfCopy2;
  v14 = v12;
  sub_1BE04BE44();

  v15.receiver = v13;
  v15.super_class = type metadata accessor for FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver(0);
  [(FinanceKitTransactionFoundInMailView.FoundInMailViewShieldObserver *)&v15 dealloc];
}

- (void)appProtectionCoordinatorDidGainAccess:(id)access
{
  accessCopy = access;
  selfCopy = self;
  sub_1BD9B637C();
}

- (void)appProtectionCoordinatorDidFailAccess:(id)access
{
  accessCopy = access;
  selfCopy = self;
  sub_1BD9B6564();
}

- (void)applicationWillResignActive
{
  selfCopy = self;
  sub_1BD9B4AF8();
}

- (void)applicationWillEnterForeground
{
  selfCopy = self;
  sub_1BD9B4D48();
}

- (_TtCV9PassKitUI36FinanceKitTransactionFoundInMailView29FoundInMailViewShieldObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end