@interface StocksKitCurrencyCacheImpl
- (BOOL)initializeSynchronously;
- (BOOL)needsRefresh;
- (BOOL)refreshSynchronously;
- (BOOL)refreshSynchronouslyWithTimeout:(double)timeout;
- (NSDictionary)currencyData;
- (void)refreshWithCompletionHandler:(id)handler;
- (void)refreshWithTimeout:(double)timeout completionHandler:(id)handler;
@end

@implementation StocksKitCurrencyCacheImpl

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
  v11[4] = &unk_1C1F57028;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C1F57030;
  v12[5] = v11;
  selfCopy = self;
  sub_1C1EC1A4C(0, 0, v7, &unk_1C1F57038, v12);
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
  v13[4] = &unk_1C1F56FE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C1F56FF0;
  v14[5] = v13;
  selfCopy = self;
  sub_1C1EC1A4C(0, 0, v9, &unk_1C1F57000, v14);
}

- (BOOL)refreshSynchronouslyWithTimeout:(double)timeout
{
  selfCopy = self;
  v5 = StocksKitCurrencyCacheImpl.refreshSynchronously(timeout:)(timeout);

  return v5;
}

- (BOOL)initializeSynchronously
{
  selfCopy = self;
  v3 = StocksKitCurrencyCacheImpl.initializeSynchronously()();

  return v3;
}

- (BOOL)refreshSynchronously
{
  selfCopy = self;
  v3 = StocksKitCurrencyCacheImpl.refreshSynchronously(timeout:)(0.0);

  return v3;
}

- (BOOL)needsRefresh
{
  selfCopy = self;
  v3 = StocksKitCurrencyCacheImpl.needsRefresh.getter();

  return v3 & 1;
}

- (NSDictionary)currencyData
{
  selfCopy = self;
  v3 = StocksKitCurrencyCacheImpl.currencyData.getter();

  if (v3)
  {
    sub_1C1EC353C();
    v4 = sub_1C1F52344();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end