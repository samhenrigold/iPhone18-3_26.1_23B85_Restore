@interface KTFetchCloudStorageOperation
+ (id)lastCKFetchWithDeps:(id)deps;
- (BOOL)shouldRetry;
- (_TtC13transparencyd28KTFetchCloudStorageOperation)init;
- (void)groupStart;
@end

@implementation KTFetchCloudStorageOperation

- (BOOL)shouldRetry
{
  v2 = *((swift_isaMask & self->super.super.super.super.super.super.isa) + 0xD8);
  selfCopy = self;
  LOBYTE(v2) = v2();

  return v2 & 1;
}

+ (id)lastCKFetchWithDeps:(id)deps
{
  v4 = sub_100095820(&qword_100383FB0, &unk_1002D6690);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  depsCopy = deps;
  smDataStore = [depsCopy smDataStore];
  v9 = String._bridgeToObjectiveC()();
  v10 = [smDataStore getSettingsDate:v9];

  swift_unknownObjectRelease();
  if (v10)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v6, v11);
    v14 = isa;
  }

  return v14;
}

- (void)groupStart
{
  selfCopy = self;
  KTFetchCloudStorageOperation.groupStart()();
}

- (_TtC13transparencyd28KTFetchCloudStorageOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end