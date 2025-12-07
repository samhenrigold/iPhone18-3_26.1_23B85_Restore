@interface MBRestorePerformer
- (BOOL)disposeAndReturnError:(id *)error;
- (BOOL)placeAsset:(id)asset isHardlink:(BOOL)hardlink metadata:(id)metadata error:(id *)error;
- (BOOL)placeWithSymlink:(id)symlink symlinkTarget:(id)target isHardlink:(BOOL)hardlink error:(id *)error;
- (BOOL)placeWithZeroByteFile:(id)file isHardlink:(BOOL)hardlink error:(id *)error;
- (NSString)description;
- (_TtC7backupd18MBRestorePerformer)init;
- (_TtC7backupd18MBRestorePerformer)initWithIdentifier:(id)identifier destinationPath:(id)path policy:(id)policy depot:(id)depot decrypter:(id)decrypter progressModel:(id)model logger:(id)logger error:(id *)self0;
- (void)recordPlacingDurationWithStart:(id)start end:(id)end;
@end

@implementation MBRestorePerformer

- (_TtC7backupd18MBRestorePerformer)initWithIdentifier:(id)identifier destinationPath:(id)path policy:(id)policy depot:(id)depot decrypter:(id)decrypter progressModel:(id)model logger:(id)logger error:(id *)self0
{
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  policyCopy = policy;
  depotCopy = depot;
  swift_unknownObjectRetain();
  modelCopy = model;
  loggerCopy = logger;
  return sub_100033230(v14, v16, v17, v19, policyCopy, depotCopy, decrypter, model, logger);
}

- (BOOL)disposeAndReturnError:(id *)error
{
  selfCopy = self;
  sub_10003247C();

  return 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_100033A64();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)recordPlacingDurationWithStart:(id)start end:(id)end
{
  v5 = sub_1000042B4(&qword_10041E820, &unk_1002B9740);
  v6 = v5 - 8;
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &selfCopy - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &selfCopy - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &selfCopy - v14;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = *(&self->super.isa + OBJC_IVAR____TtC7backupd18MBRestorePerformer_restorablePlacementSummary);
  v17 = *(v6 + 56);
  v18 = *(v10 + 16);
  v18(v8, v15, v9);
  v18(&v8[v17], v13, v9);
  v19 = OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations;
  v20 = *(v16 + OBJC_IVAR____TtC7backupd28MBRestorablePlacementSummary_durations);
  selfCopy = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + v19) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_10000F2D8(0, v20[2] + 1, 1, v20);
    *(v16 + v19) = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_10000F2D8((v22 > 1), v23 + 1, 1, v20);
  }

  v20[2] = v23 + 1;
  sub_100023344(v8, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23);
  *(v16 + v19) = v20;
  v24 = *(v10 + 8);
  v24(v13, v9);
  v24(v15, v9);
}

- (BOOL)placeWithSymlink:(id)symlink symlinkTarget:(id)target isHardlink:(BOOL)hardlink error:(id *)error
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100032A38(symlink, v9, v11, hardlink);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)placeWithZeroByteFile:(id)file isHardlink:(BOOL)hardlink error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000327E4(file, hardlink);

  swift_unknownObjectRelease();
  return 1;
}

- (BOOL)placeAsset:(id)asset isHardlink:(BOOL)hardlink metadata:(id)metadata error:(id *)error
{
  swift_unknownObjectRetain();
  metadataCopy = metadata;
  selfCopy = self;
  sub_100032C9C(asset, hardlink, metadataCopy);

  swift_unknownObjectRelease();
  return 1;
}

- (_TtC7backupd18MBRestorePerformer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end