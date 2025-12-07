@interface LocalFindableConnectionMaterialTrampoline
- (_TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline)init;
- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)identifier completion:(id)completion;
- (void)startLocalFindableConnectionMaterialMonitoringWithCompletion:(id)completion;
- (void)stopLocalFindableConnectionMaterialMonitoringWithCompletion:(id)completion;
@end

@implementation LocalFindableConnectionMaterialTrampoline

- (void)startLocalFindableConnectionMaterialMonitoringWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_100A74070(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)stopLocalFindableConnectionMaterialMonitoringWithCompletion:(id)completion
{
  v5 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_10001E370;
  v11[6] = v9;
  selfCopy = self;
  sub_10025EDD4(0, 0, v7, &unk_1013D5108, v11);
}

- (void)peripheralConnectionMaterialForAccessoryIdentifier:(id)identifier completion:(id)completion
{
  v6 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v24 - v14;
  v16 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  (*(v10 + 16))(v13, v15, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = self;
  (*(v10 + 32))(&v21[v19], v13, v9);
  v22 = &v21[v20];
  *v22 = sub_1001BC108;
  v22[1] = v17;
  selfCopy = self;

  sub_100A838D4(0, 0, v8, &unk_1013D50F0, v21);

  (*(v10 + 8))(v15, v9);
}

- (_TtC12searchpartyd41LocalFindableConnectionMaterialTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end