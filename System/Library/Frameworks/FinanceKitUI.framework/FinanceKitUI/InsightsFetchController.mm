@interface InsightsFetchController
+ (id)makeFetchController;
- (_TtC12FinanceKitUI23InsightsFetchController)init;
- (void)fetchRowViewModelsForTransactionWithIdentifier:(NSString *)identifier primaryAccountIdentifier:(NSString *)accountIdentifier completionHandler:(id)handler;
- (void)pruneRowViewModelsForTransactionWithIdentifier:(NSString *)identifier primaryAccountIdentifier:(NSString *)accountIdentifier completionHandler:(id)handler;
@end

@implementation InsightsFetchController

- (_TtC12FinanceKitUI23InsightsFetchController)init
{
  result = sub_23875F520();
  __break(1u);
  return result;
}

+ (id)makeFetchController
{
  sub_2387579D0();
  v2 = sub_2387579A0();
  Controller = type metadata accessor for InsightsFetchController();
  v4 = objc_allocWithZone(Controller);
  *&v4[OBJC_IVAR____TtC12FinanceKitUI23InsightsFetchController_store] = v2;
  v7.receiver = v4;
  v7.super_class = Controller;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

- (void)fetchRowViewModelsForTransactionWithIdentifier:(NSString *)identifier primaryAccountIdentifier:(NSString *)accountIdentifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = accountIdentifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23875ED80();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23877B7F0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23877B7F8;
  v16[5] = v15;
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  selfCopy = self;
  sub_2386E65D8(0, 0, v11, &unk_23877B800, v16);
}

- (void)pruneRowViewModelsForTransactionWithIdentifier:(NSString *)identifier primaryAccountIdentifier:(NSString *)accountIdentifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = accountIdentifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_23875ED80();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23877B7E0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2387735A0;
  v16[5] = v15;
  identifierCopy = identifier;
  accountIdentifierCopy = accountIdentifier;
  selfCopy = self;
  sub_2386E65D8(0, 0, v11, &unk_238764DA0, v16);
}

@end