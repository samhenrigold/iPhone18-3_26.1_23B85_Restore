@interface BankConnectAuthorizationViewControllerProvider
+ (id)makeAuthorizationViewControllerFor:(id)for completion:(id)completion;
+ (id)makeConsentViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution completion:(id)completion;
+ (id)makeMismatchedAccountViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution previousConsentUUID:(id)d completion:(id)completion;
+ (id)makeReconsentViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution previousConsentUUID:(id)d completion:(id)completion;
- (_TtC12FinanceKitUI46BankConnectAuthorizationViewControllerProvider)init;
@end

@implementation BankConnectAuthorizationViewControllerProvider

+ (id)makeConsentViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution completion:(id)completion
{
  v8 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  passCopy = pass;
  institutionCopy = institution;
  sub_23875EFB0();
  v18 = v8[6];
  v19 = sub_23875A9A0();
  (*(*(v19 - 8) + 56))(&v13[v18], 1, 1, v19);
  v20 = v8[7];
  v21 = *MEMORY[0x277CC8260];
  v22 = sub_23875AB40();
  (*(*(v22 - 8) + 104))(&v13[v20], v21, v22);
  *&v13[v8[5]] = passCopy;
  v13[v8[8]] = 0;
  sub_2384AD678(v13, v10, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v23 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v24 = passCopy;
  v25 = sub_2384AC768(v10, sub_2384AD740, v15);

  sub_2384AD6E0(v13, type metadata accessor for BankConnectAuthorizationFlowConfig);

  return v25;
}

+ (id)makeReconsentViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution previousConsentUUID:(id)d completion:(id)completion
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  passCopy = pass;
  institutionCopy = institution;
  dCopy = d;
  v15 = sub_2384ACCD0(pass, institutionCopy, dCopy, sub_2384AD740, v11);

  return v15;
}

+ (id)makeMismatchedAccountViewControllerWithPaymentPass:(id)pass fkInstitution:(id)institution previousConsentUUID:(id)d completion:(id)completion
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  passCopy = pass;
  institutionCopy = institution;
  dCopy = d;
  v15 = sub_2384ACEAC(passCopy, institutionCopy, dCopy, sub_2384AD740, v11);

  return v15;
}

+ (id)makeAuthorizationViewControllerFor:(id)for completion:(id)completion
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  forCopy = for;
  v9 = sub_2384AD088(forCopy, sub_2384AD5EC, v7);

  return v9;
}

- (_TtC12FinanceKitUI46BankConnectAuthorizationViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for BankConnectAuthorizationViewControllerProvider();
  v3 = [(BankConnectAuthorizationViewControllerProvider *)&v5 init];

  return v3;
}

@end