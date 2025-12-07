@interface StocksKitCurrencyCache
+ (BOOL)isEnabled;
+ (_TtC9Calculate22StocksKitCurrencyCache)shared;
- (NSDictionary)currencyData;
- (_TtC9Calculate22StocksKitCurrencyCache)init;
- (void)refreshWithCompletionHandler:(id)handler;
- (void)refreshWithTimeout:(double)timeout completionHandler:(id)handler;
@end

@implementation StocksKitCurrencyCache

+ (_TtC9Calculate22StocksKitCurrencyCache)shared
{
  if (qword_1EDC2F390 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDC2F398;

  return v3;
}

+ (BOOL)isEnabled
{
  if (MEMORY[0x1E69D4828])
  {
    v2 = MEMORY[0x1E69D4830] == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2 && MEMORY[0x1E69D4840] != 0 && MEMORY[0x1E69D4820] != 0 && MEMORY[0x1E69D4838] != 0;
}

- (void)refreshWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1C1F527A4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1C1F57068;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C1F57070;
  v12[5] = v11;
  selfCopy = self;
  sub_1C1EC1A4C(0, 0, v7, &unk_1C1F57078, v12);
}

- (void)refreshWithTimeout:(double)timeout completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21288, &qword_1C1F56D58);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = timeout;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_1C1F527A4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C1F57048;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C1F57050;
  v14[5] = v13;
  selfCopy = self;
  sub_1C1EC1A4C(0, 0, v9, &unk_1C1F57058, v14);
}

- (NSDictionary)currencyData
{
  sub_1C1EC25F0(MEMORY[0x1E69E7CC0]);
  sub_1C1EC353C();
  v2 = sub_1C1F52344();

  return v2;
}

- (_TtC9Calculate22StocksKitCurrencyCache)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for StocksKitCurrencyCache();
  return [(StocksKitCurrencyCache *)&v3 init];
}

@end