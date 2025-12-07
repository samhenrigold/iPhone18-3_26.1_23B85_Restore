@interface TodayFeedServiceEntryPoint
- (void)adoptFeedConfigData:(id)data;
- (void)fetchCachedTodayFeedWithCompletionHandler:(id)handler;
- (void)fetchFeedItemPoolWithOptions:(NDFeedItemPoolFetchOptions *)options completionHandler:(id)handler;
- (void)flushWithCompletionHandler:(id)handler;
- (void)registerForManagedFeedItemPoolWithOptions:(NDManagedFeedItemPoolOptions *)options completionHandler:(id)handler;
@end

@implementation TodayFeedServiceEntryPoint

- (void)adoptFeedConfigData:(id)data
{
  dataCopy = data;

  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = *self->todayFeedManager;
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v8 adoptFeedConfigData:isa];
  sub_1000153DC(v5, v7);
}

- (void)fetchCachedTodayFeedWithCompletionHandler:(id)handler
{
  v5 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10005ABA0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10005ABA8;
  v12[5] = v11;

  sub_10004039C(0, 0, v7, &unk_10005ABB0, v12);
}

- (void)flushWithCompletionHandler:(id)handler
{
  v5 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10005AB80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10005AB88;
  v12[5] = v11;

  sub_10004039C(0, 0, v7, &unk_10005AB90, v12);
}

- (void)registerForManagedFeedItemPoolWithOptions:(NDManagedFeedItemPoolOptions *)options completionHandler:(id)handler
{
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = options;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10005AB60;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10005AB68;
  v14[5] = v13;
  optionsCopy = options;

  sub_10004039C(0, 0, v9, &unk_10005AB70, v14);
}

- (void)fetchFeedItemPoolWithOptions:(NDFeedItemPoolFetchOptions *)options completionHandler:(id)handler
{
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = options;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10005AB50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10005A958;
  v14[5] = v13;
  optionsCopy = options;

  sub_10004039C(0, 0, v9, &unk_10005A960, v14);
}

@end