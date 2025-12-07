@interface BDSPriceTracker
- (BDSPriceTracker)init;
- (BDSPriceTracker)initWithPersistenceURL:(id)l;
- (void)bdsctl_addTrackedItem:(BDSDistributedPriceTrackingConfigItemID *)item completion:(id)completion;
- (void)bdsctl_getStateWithCompletion:(id)completion;
- (void)bdsctl_updateReferencePrices:(NSDictionary *)prices completion:(id)completion;
- (void)bdsdctl_updateTrackedPricesIgnoringScheduleForAllItemsWithCompletionHandler:(id)handler;
- (void)setConfiguration:(BDSDistributedPriceTrackingConfig *)configuration completion:(id)completion;
- (void)updateTrackedPricesIgnoringScheduleForNewItemsWithCompletionHandler:(id)handler;
@end

@implementation BDSPriceTracker

- (BDSPriceTracker)initWithPersistenceURL:(id)l
{
  v3 = sub_100084528(&qword_100271368, &qword_1001F3AD0);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1001C4B28();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v21 - v12;
  __chkstk_darwin(v11);
  v15 = &v21 - v14;
  sub_1001C4AD8();
  v16 = *(v7 + 16);
  v16(v13, v15, v6);
  v16(v10, v13, v6);
  sub_10015E5DC(v10, 0, v5);
  v17 = *(v7 + 8);
  v17(v13, v6);
  v18 = _s11PersistenceVMa(0);
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  type metadata accessor for PriceTracker(0);
  swift_allocObject();
  v19 = sub_100103714(v5);
  v17(v15, v6);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v19;
}

- (void)updateTrackedPricesIgnoringScheduleForNewItemsWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1001C6348();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001F3AB8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F3AC0;
  v12[5] = v11;

  sub_100118770(0, 0, v7, &unk_1001F3AC8, v12);
}

- (BDSPriceTracker)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)setConfiguration:(BDSDistributedPriceTrackingConfig *)configuration completion:(id)completion
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = configuration;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1001C6348();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F3A48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F3A50;
  v14[5] = v13;
  configurationCopy = configuration;

  sub_100118770(0, 0, v9, &unk_1001F3A58, v14);
}

- (void)bdsctl_getStateWithCompletion:(id)completion
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1001C6348();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001F39F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F3A00;
  v12[5] = v11;

  sub_100118770(0, 0, v7, &unk_1001F3A08, v12);
}

- (void)bdsctl_addTrackedItem:(BDSDistributedPriceTrackingConfigItemID *)item completion:(id)completion
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = item;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1001C6348();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F39D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F39D8;
  v14[5] = v13;
  itemCopy = item;

  sub_100118770(0, 0, v9, &unk_1001F39E0, v14);
}

- (void)bdsctl_updateReferencePrices:(NSDictionary *)prices completion:(id)completion
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = prices;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1001C6348();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F39A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F39A8;
  v14[5] = v13;
  pricesCopy = prices;

  sub_100118770(0, 0, v9, &unk_1001F39B0, v14);
}

- (void)bdsdctl_updateTrackedPricesIgnoringScheduleForAllItemsWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1001C6348();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001F3990;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F0DB0;
  v12[5] = v11;

  sub_100118770(0, 0, v7, &unk_1001F33E0, v12);
}

@end