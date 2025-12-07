@interface IMDMessagesSyncCoordinatorInternal
+ (id)initiateSyncFor:(id)for delegate:(id)delegate forceRunNow:(BOOL)now error:(id *)error;
+ (id)readServerCountsFromDefaults;
+ (void)clearSyncStoreWhenSafeWithCompletionHandler:(id)handler;
+ (void)fetchSyncStoreCountsWithCompletion:(id)completion;
+ (void)registerWithNotifier:(id)notifier;
+ (void)registerWithStore:(id)store asType:(int64_t)type;
- (IMDMessagesSyncCoordinatorInternal)init;
@end

@implementation IMDMessagesSyncCoordinatorInternal

+ (void)clearSyncStoreWhenSafeWithCompletionHandler:(id)handler
{
  v5 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22BA1030C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22BA18588;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22BA18590;
  v12[5] = v11;
  sub_22BA04B0C(0, 0, v7, &unk_22BA18598, v12);
}

+ (void)registerWithStore:(id)store asType:(int64_t)type
{
  v6 = qword_281416508;
  swift_unknownObjectRetain();
  if (v6 != -1)
  {
    swift_once();
  }

  [swift_unknownObjectRetain() registerRecordStoreWithType:type store:store];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

+ (void)registerWithNotifier:(id)notifier
{
  v3 = qword_281416500;
  swift_unknownObjectRetain();
  if (v3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  MEMORY[0x231899830](v4);
  if (*((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_28141AE00 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22BA1022C();
  }

  sub_22BA1026C();
  swift_endAccess();
  swift_unknownObjectRelease();
}

+ (id)initiateSyncFor:(id)for delegate:(id)delegate forceRunNow:(BOOL)now error:(id *)error
{
  v8 = sub_22BA0FFFC();
  v10 = v9;
  swift_getObjCClassMetadata();
  swift_unknownObjectRetain();
  static SyncCoordinator.initiateSync(for:delegate:forceRunNow:)(v8, v10, delegate, now);

  swift_unknownObjectRelease();
  v11 = sub_22BA0FF5C();

  return v11;
}

+ (id)readServerCountsFromDefaults
{
  _s17MessagesCloudSync0C11CoordinatorC28readServerCountsFromDefaultsSDySSSDySSs5Int64VGGyFZ_0();
  sub_22B9349C8(&unk_27D8D57C0, &qword_22BA18578);
  v2 = sub_22BA0FF5C();

  return v2;
}

+ (void)fetchSyncStoreCountsWithCompletion:(id)completion
{
  v4 = sub_22B9349C8(&unk_27D8D5780, &qword_22BA13DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v10 = sub_22BA1030C();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = ObjCClassMetadata;
  v11[5] = sub_22B9BF424;
  v11[6] = v8;
  sub_22B9B5500(0, 0, v6, &unk_22BA18570, v11);
}

- (IMDMessagesSyncCoordinatorInternal)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SyncCoordinator();
  return [(IMDMessagesSyncCoordinatorInternal *)&v3 init];
}

@end