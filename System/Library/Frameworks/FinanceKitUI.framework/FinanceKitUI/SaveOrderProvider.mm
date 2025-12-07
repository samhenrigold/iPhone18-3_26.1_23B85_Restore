@interface SaveOrderProvider
+ (void)saveOrderWithData:(NSData *)data completionHandler:(id)handler;
- (_TtC12FinanceKitUI17SaveOrderProvider)init;
@end

@implementation SaveOrderProvider

+ (void)saveOrderWithData:(NSData *)data completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = data;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23875ED80();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_238773598;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2387735A0;
  v14[5] = v13;
  dataCopy = data;
  sub_2386E65D8(0, 0, v9, &unk_238764DA0, v14);
}

- (_TtC12FinanceKitUI17SaveOrderProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SaveOrderProvider *)&v3 init];
}

@end