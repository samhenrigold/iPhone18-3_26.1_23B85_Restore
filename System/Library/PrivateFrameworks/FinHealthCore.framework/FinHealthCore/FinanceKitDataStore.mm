@interface FinanceKitDataStore
- (_TtC13FinHealthCore19FinanceKitDataStore)init;
- (void)fetchLastFourDigitsWithAccountDict:(id)dict;
- (void)streamTransactionsSince:(_TtC13FinHealthCore19FinanceKitDataStore *)self savedAccounts:(SEL)accounts transactionHandler:(NSString *)handler accountHandler:(NSArray *)accountHandler completionHandler:(id)completionHandler;
@end

@implementation FinanceKitDataStore

- (void)streamTransactionsSince:(_TtC13FinHealthCore19FinanceKitDataStore *)self savedAccounts:(SEL)accounts transactionHandler:(NSString *)handler accountHandler:(NSArray *)accountHandler completionHandler:(id)completionHandler
{
  v7 = v6;
  v8 = v5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = _Block_copy(completionHandler);
  v17 = _Block_copy(v8);
  v18 = _Block_copy(v7);
  v19 = swift_allocObject();
  v19[2] = handler;
  v19[3] = accountHandler;
  v19[4] = v16;
  v19[5] = v17;
  v19[6] = v18;
  v19[7] = self;
  v20 = sub_226E63B80();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_226E689B8;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_226E689C8;
  v22[5] = v21;
  handlerCopy = handler;
  accountHandlerCopy = accountHandler;
  selfCopy = self;
  sub_226E32AC4(0, 0, v15, &unk_226E689D8, v22);
}

- (void)fetchLastFourDigitsWithAccountDict:(id)dict
{
  sub_226E202A4(0, &qword_280CE9F88, off_2785CA748);
  v4 = sub_226E63960();
  selfCopy = self;
  sub_226E33AFC(v4);
}

- (_TtC13FinHealthCore19FinanceKitDataStore)init
{
  v3 = OBJC_IVAR____TtC13FinHealthCore19FinanceKitDataStore_transactionBiomeStreamDonator;
  type metadata accessor for TransactionBiomeStreamDonator();
  sub_226E48FC8(v6);
  *(&self->super.isa + v3) = sub_226E48FE0(v6);
  v5.receiver = self;
  v5.super_class = type metadata accessor for FinanceKitDataStore();
  return [(FinanceKitDataStore *)&v5 init];
}

@end