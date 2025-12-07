@interface FKBankConnectTermsAndConditionsViewControllerProvider
+ (id)makeViewControllerWithTermsAndConditionsID:(id)d;
+ (id)makeViewControllerWithTermsAndConditionsID:(id)d completion:(id)completion;
- (FKBankConnectTermsAndConditionsViewControllerProvider)init;
@end

@implementation FKBankConnectTermsAndConditionsViewControllerProvider

+ (id)makeViewControllerWithTermsAndConditionsID:(id)d
{
  v3 = type metadata accessor for BankConnectTermsAndConditionsWebView(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_23875EA80();
  v11 = v10;
  objc_allocWithZone(type metadata accessor for BankConnectTermsAndConditionsViewController(0));
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = v11;
  v12[4] = 0;
  v12[5] = 0;
  *v8 = sub_2386A86E4;
  *(v8 + 1) = v12;
  v8[16] = 0;
  v13 = *(v3 + 20);
  *&v8[v13] = swift_getKeyPath(byte_23877EA88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF12DF0, &unk_23877C100);
  swift_storeEnumTagMultiPayload();
  sub_2386A8504(v8, v5);

  v14 = sub_23875D080();
  sub_2386A8568(v8);

  return v14;
}

+ (id)makeViewControllerWithTermsAndConditionsID:(id)d completion:(id)completion
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(completion);
  v6 = sub_23875EA80();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = sub_2386A8394(v6, v8, sub_2386A8384, v9);

  return v10;
}

- (FKBankConnectTermsAndConditionsViewControllerProvider)init
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = FKBankConnectTermsAndConditionsViewControllerProvider;
  v3 = [(FKBankConnectTermsAndConditionsViewControllerProvider *)&v5 init];

  return v3;
}

@end