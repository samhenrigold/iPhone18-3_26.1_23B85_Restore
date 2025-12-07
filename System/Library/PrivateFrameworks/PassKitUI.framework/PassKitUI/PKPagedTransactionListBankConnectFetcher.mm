@interface PKPagedTransactionListBankConnectFetcher
- (_TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher)init;
- (void)accountExternalIDsWithCompletionHandler:(id)handler;
- (void)countTransactionsWithCompletionHandler:(id)handler;
- (void)fetchTransactionsWithLimit:(int64_t)limit before:(_TtC9PassKitUI26PKTransactionsPageBoundary *)before completionHandler:(id)handler;
@end

@implementation PKPagedTransactionListBankConnectFetcher

- (void)accountExternalIDsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1BE0528D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1BE0DF840;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BE0DF848;
  v12[5] = v11;
  selfCopy = self;
  v14 = sub_1BD992D04(0, 0, v7, &unk_1BE0DF850, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

- (void)countTransactionsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1BE0528D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1BE0DF820;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BE0DF828;
  v12[5] = v11;
  selfCopy = self;
  v14 = sub_1BD992D04(0, 0, v7, &unk_1BE0DF830, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

- (void)fetchTransactionsWithLimit:(int64_t)limit before:(_TtC9PassKitUI26PKTransactionsPageBoundary *)before completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = limit;
  v13[3] = before;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1BE0528D4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1BE0DF810;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BE107FA0;
  v16[5] = v15;
  beforeCopy = before;
  selfCopy = self;
  v19 = sub_1BD992D04(0, 0, v11, &unk_1BE0C7F30, v16);
  v19, v20, v21, v22, v23, v24, v25, v26;
}

- (_TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accounts;
  v5 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + v4) = sub_1BD1AD564(MEMORY[0x1E69E7CC0]);
  v6 = OBJC_IVAR____TtC9PassKitUI40PKPagedTransactionListBankConnectFetcher_accountIDToInstitution;
  *(&self->super.isa + v6) = sub_1BD1AD784(v5);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(PKPagedTransactionListBankConnectFetcher *)&v8 init];
}

@end