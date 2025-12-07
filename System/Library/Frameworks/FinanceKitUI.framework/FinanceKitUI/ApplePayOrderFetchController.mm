@interface ApplePayOrderFetchController
+ (id)makeFetchController;
- (_TtC12FinanceKitUI28ApplePayOrderFetchController)init;
- (void)fetchAllRowViewModelsForTransactionWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
@end

@implementation ApplePayOrderFetchController

- (_TtC12FinanceKitUI28ApplePayOrderFetchController)init
{
  result = sub_23875F520();
  __break(1u);
  return result;
}

+ (id)makeFetchController
{
  sub_238758890();
  sub_238758880();
  v2 = sub_238758870();

  Controller = type metadata accessor for ApplePayOrderFetchController();
  v4 = objc_allocWithZone(Controller);
  *&v4[OBJC_IVAR____TtC12FinanceKitUI28ApplePayOrderFetchController_store] = v2;
  v7.receiver = v4;
  v7.super_class = Controller;
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

- (void)fetchAllRowViewModelsForTransactionWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23875ED80();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_238764D90;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2387735A0;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_2386E65D8(0, 0, v9, &unk_238764DA0, v14);
}

@end