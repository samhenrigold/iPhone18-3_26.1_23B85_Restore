@interface FKSpendingSummaryDataProvider
- (FKSpendingSummaryDataProvider)init;
- (FKSpendingSummaryDataProvider)initWithAccountIdentifier:(id)identifier;
- (NSUUID)accountID;
- (void)startAndCacheCurrentlySelectedSpendingSummaryWithCompletion:(id)completion;
@end

@implementation FKSpendingSummaryDataProvider

- (FKSpendingSummaryDataProvider)initWithAccountIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1BE04AFC4();
  v14 = *(v5 + 16);
  v14(v10, v13, v4);
  v15 = objc_allocWithZone(ObjectType);
  v14(v7, v10, v4);
  type metadata accessor for FinanceKitSpendingSummaryDataProvider(0);
  swift_allocObject();
  sub_1BD9FD7C4(v7);
  *&v15[OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider] = v16;
  v20.receiver = v15;
  v20.super_class = ObjectType;
  v17 = [(FKSpendingSummaryDataProvider *)&v20 init];
  v18 = *(v5 + 8);
  v18(v13, v4);
  v18(v10, v4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v17;
}

- (NSUUID)accountID
{
  v3 = sub_1BE04AFE4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(&self->super.isa + OBJC_IVAR___FKSpendingSummaryDataProvider_dataProvider) + OBJC_IVAR____TtC9PassKitUI37FinanceKitSpendingSummaryDataProvider_accountID, v3, v5);
  v8 = sub_1BE04AF94();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (void)startAndCacheCurrentlySelectedSpendingSummaryWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1BE0528D4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1BE0CEFF0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BE107FA0;
  v12[5] = v11;
  selfCopy = self;
  v14 = sub_1BD992D04(0, 0, v7, &unk_1BE0C7F30, v12);
  v14, v15, v16, v17, v18, v19, v20, v21;
}

- (FKSpendingSummaryDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end