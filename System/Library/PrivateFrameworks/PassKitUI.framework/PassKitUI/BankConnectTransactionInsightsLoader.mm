@interface BankConnectTransactionInsightsLoader
+ (void)requestPersonalizedInsightsUpdate;
- (_TtC9PassKitUI36BankConnectTransactionInsightsLoader)init;
@end

@implementation BankConnectTransactionInsightsLoader

+ (void)requestPersonalizedInsightsUpdate
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v6 = sub_1BE0528D4();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = ObjCClassMetadata;
  v8 = sub_1BD122C00(0, 0, v4, &unk_1BE0E83C0, v7);
  v8, v9, v10, v11, v12, v13, v14, v15;
}

- (_TtC9PassKitUI36BankConnectTransactionInsightsLoader)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(BankConnectTransactionInsightsLoader *)&v3 init];
}

@end