@interface BankConnectAccountConsentManagementViewControllerProvider
+ (id)makeViewControllerWithAccountIdentifier:(id)identifier institutionIdentifier:(id)institutionIdentifier;
- (_TtC12FinanceKitUI57BankConnectAccountConsentManagementViewControllerProvider)init;
@end

@implementation BankConnectAccountConsentManagementViewControllerProvider

+ (id)makeViewControllerWithAccountIdentifier:(id)identifier institutionIdentifier:(id)institutionIdentifier
{
  v4 = type metadata accessor for ConsentManagementView(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23875A9F0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875EA80();
  sub_23875EA80();
  sub_23875A9D0();
  v11 = objc_allocWithZone(type metadata accessor for BankConnectAccountConsentManagementViewController(0));
  (*(v8 + 16))(v6, v10, v7);
  v12 = sub_23875D080();
  (*(v8 + 8))(v10, v7);

  return v12;
}

- (_TtC12FinanceKitUI57BankConnectAccountConsentManagementViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BankConnectAccountConsentManagementViewControllerProvider();
  v3 = [(BankConnectAccountConsentManagementViewControllerProvider *)&v5 init];

  return v3;
}

@end