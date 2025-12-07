@interface BankConnectMerchantLookupRequestSource
- (BOOL)isSettlement;
- (_TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource)init;
- (id)identifier;
- (id)mapsMerchantLookupRequest;
@end

@implementation BankConnectMerchantLookupRequestSource

- (id)mapsMerchantLookupRequest
{
  selfCopy = self;
  v3 = sub_2384991D4();

  return v3;
}

- (BOOL)isSettlement
{
  v3 = sub_238758AD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = sub_238758F50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_23875A300();
  sub_238758F30();

  (*(v11 + 8))(v13, v10);
  (*(v4 + 32))(v6, v9, v3);
  v15 = (*(v4 + 88))(v6, v3);
  if (v15 == *MEMORY[0x277CC71F8] || v15 == *MEMORY[0x277CC7200] || v15 == *MEMORY[0x277CC7210])
  {
    return 0;
  }

  if (v15 != *MEMORY[0x277CC7208])
  {
    if (v15 != *MEMORY[0x277CC7218])
    {
      (*(v4 + 8))(v6, v3);
    }

    return 0;
  }

  return 1;
}

- (id)identifier
{
  v3 = sub_23875BCB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238758F50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_23875A300();
  sub_238758F10();
  (*(v8 + 8))(v10, v7);
  sub_23875BC50();

  (*(v4 + 8))(v6, v3);
  v12 = sub_23875EA50();

  return v12;
}

- (_TtC12FinanceKitUI38BankConnectMerchantLookupRequestSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end