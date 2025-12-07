@interface BankConnectImageProvider
- (_TtC12FinanceKitUI24BankConnectImageProvider)init;
- (void)logoFor:(NSString *)for size:(CGSize)size scale:(double)scale completionHandler:(id)handler;
@end

@implementation BankConnectImageProvider

- (_TtC12FinanceKitUI24BankConnectImageProvider)init
{
  ObjectType = swift_getObjectType();
  sub_238758CC0();
  *(&self->super.isa + OBJC_IVAR____TtC12FinanceKitUI24BankConnectImageProvider_bankConnectService) = sub_238758CB0();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(BankConnectImageProvider *)&v5 init];
}

- (void)logoFor:(NSString *)for size:(CGSize)size scale:(double)scale completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 16) = for;
  *(v16 + 24) = width;
  *(v16 + 32) = height;
  *(v16 + 40) = scale;
  *(v16 + 48) = v15;
  *(v16 + 56) = self;
  v17 = sub_23875ED80();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_238781130;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_2387735A0;
  v19[5] = v18;
  forCopy = for;
  selfCopy = self;
  sub_2386E65D8(0, 0, v14, &unk_238764DA0, v19);
}

@end