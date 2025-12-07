@interface MACloudSyncManager
- (BOOL)cloudSyncEnabledForAssetType:(unint64_t)type;
- (_TtC6server18MACloudSyncManager)init;
- (_TtC6server18MACloudSyncManager)initWithStorage:(id)storage delegate:(id)delegate;
- (void)checkCloudRecordZoneExistWithCompletionHandler:(id)handler;
- (void)deleteAllInCloudWithCompletionHandler:(id)handler;
- (void)deleteAssetInCloudWithRecordName:(NSString *)name assetType:(unint64_t)type profileType:(unint64_t)profileType completionHandler:(id)handler;
- (void)deleteKVSDataInCloudWithRecordHandles:(NSArray *)handles assetType:(unint64_t)type storeName:(NSString *)name storeGroup:(NSString *)group profileType:(unint64_t)profileType completionHandler:(id)handler;
- (void)fetchSigninUserWithCompletionHandler:(id)handler;
- (void)getUserOptionsWithCompletionHandler:(id)handler;
- (void)localAssetCleanupWithRecordName:(NSString *)name completionHandler:(id)handler;
- (void)localKVSCleanupWithRecordName:(NSString *)name completionHandler:(id)handler;
- (void)queryCloudAssetWithRecordName:(NSString *)name completionHandler:(id)handler;
- (void)queryCloudAssetsSizeWithCompletionHandler:(id)handler;
- (void)queryCloudKVDataSizeWithCompletionHandler:(id)handler;
- (void)queryCloudKVDataWithRecordName:(NSString *)name completionHandler:(id)handler;
- (void)resetCloudSyncStateWithCompletionHandler:(id)handler;
- (void)saveAssetToCloud:(MASDAsset *)cloud options:(unint64_t)options completionHandler:(id)handler;
- (void)saveKVSDataToCloudWithRecordHandle:(NSString *)handle assetType:(unint64_t)type storeName:(NSString *)name storeGroup:(NSString *)group profileType:(unint64_t)profileType data:(NSDictionary *)data options:(unint64_t)options completionHandler:(id)self0;
- (void)saveUserOptions:(int64_t)options completionHandler:(id)handler;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation MACloudSyncManager

- (_TtC6server18MACloudSyncManager)initWithStorage:(id)storage delegate:(id)delegate
{
  storageCopy = storage;
  swift_unknownObjectRetain();
  v6 = sub_1000BF9E4(storageCopy, delegate);

  swift_unknownObjectRelease();
  return v6;
}

- (void)startWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000E7878;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7880;
  v12[5] = v11;
  selfCopy = self;
  sub_100064F78(0, 0, v7, &unk_1000E7888, v12);
}

- (void)checkCloudRecordZoneExistWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000E7858;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7860;
  v12[5] = v11;
  selfCopy = self;
  sub_100064F78(0, 0, v7, &unk_1000E7868, v12);
}

- (void)saveUserOptions:(int64_t)options completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
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
  v13[4] = &unk_1000E7838;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E7840;
  v14[5] = v13;
  selfCopy = self;
  sub_100064F78(0, 0, v9, &unk_1000E7848, v14);
}

- (void)getUserOptionsWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000E7818;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7820;
  v12[5] = v11;
  selfCopy = self;
  sub_100064F78(0, 0, v7, &unk_1000E7828, v12);
}

- (_TtC6server18MACloudSyncManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)resetCloudSyncStateWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000E77F8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7800;
  v12[5] = v11;
  selfCopy = self;
  sub_100064F78(0, 0, v7, &unk_1000E7808, v12);
}

- (void)queryCloudAssetsSizeWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000E77D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E77E0;
  v12[5] = v11;
  selfCopy = self;
  sub_100064F78(0, 0, v7, &unk_1000E77E8, v12);
}

- (void)queryCloudKVDataSizeWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000E77B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E77C0;
  v12[5] = v11;
  selfCopy = self;
  sub_100064F78(0, 0, v7, &unk_1000E77C8, v12);
}

- (void)queryCloudAssetWithRecordName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = name;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E7798;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E77A0;
  v14[5] = v13;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v9, &unk_1000E77A8, v14);
}

- (void)queryCloudKVDataWithRecordName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = name;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E7778;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E7780;
  v14[5] = v13;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v9, &unk_1000E7788, v14);
}

- (void)fetchSigninUserWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000E7758;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7760;
  v12[5] = v11;
  selfCopy = self;
  sub_100064F78(0, 0, v7, &unk_1000E7768, v12);
}

- (BOOL)cloudSyncEnabledForAssetType:(unint64_t)type
{
  sub_1000C5D18(type);
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

- (void)saveAssetToCloud:(MASDAsset *)cloud options:(unint64_t)options completionHandler:(id)handler
{
  v9 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = cloud;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000E7738;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000E7740;
  v16[5] = v15;
  cloudCopy = cloud;
  selfCopy = self;
  sub_100064F78(0, 0, v11, &unk_1000E7748, v16);
}

- (void)localAssetCleanupWithRecordName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = name;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E7718;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E7720;
  v14[5] = v13;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v9, &unk_1000E7728, v14);
}

- (void)localKVSCleanupWithRecordName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = name;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000E76F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000E7700;
  v14[5] = v13;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v9, &unk_1000E7708, v14);
}

- (void)deleteAssetInCloudWithRecordName:(NSString *)name assetType:(unint64_t)type profileType:(unint64_t)profileType completionHandler:(id)handler
{
  v11 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = name;
  v15[3] = type;
  v15[4] = profileType;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000E76D8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1000E76E0;
  v18[5] = v17;
  nameCopy = name;
  selfCopy = self;
  sub_100064F78(0, 0, v13, &unk_1000E76E8, v18);
}

- (void)saveKVSDataToCloudWithRecordHandle:(NSString *)handle assetType:(unint64_t)type storeName:(NSString *)name storeGroup:(NSString *)group profileType:(unint64_t)profileType data:(NSDictionary *)data options:(unint64_t)options completionHandler:(id)self0
{
  profileTypeCopy = profileType;
  handleCopy = handle;
  v16 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v16 - 8);
  v18 = &profileTypeCopy - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  v20[2] = handle;
  v20[3] = type;
  v20[4] = name;
  v20[5] = group;
  v20[6] = profileTypeCopy;
  v20[7] = data;
  v20[8] = options;
  v20[9] = v19;
  v20[10] = self;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1000E76B8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1000E76C0;
  v23[5] = v22;
  v24 = handleCopy;
  nameCopy = name;
  groupCopy = group;
  dataCopy = data;
  selfCopy = self;
  sub_100064F78(0, 0, v18, &unk_1000E76C8, v23);
}

- (void)deleteKVSDataInCloudWithRecordHandles:(NSArray *)handles assetType:(unint64_t)type storeName:(NSString *)name storeGroup:(NSString *)group profileType:(unint64_t)profileType completionHandler:(id)handler
{
  v15 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v15 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  v19[2] = handles;
  v19[3] = type;
  v19[4] = name;
  v19[5] = group;
  v19[6] = profileType;
  v19[7] = v18;
  v19[8] = self;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1000E7698;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1000E76A0;
  v22[5] = v21;
  handlesCopy = handles;
  nameCopy = name;
  groupCopy = group;
  selfCopy = self;
  sub_100064F78(0, 0, v17, &unk_1000E76A8, v22);
}

- (void)deleteAllInCloudWithCompletionHandler:(id)handler
{
  v5 = sub_10005F5CC(&qword_100128408, &qword_1000E7640);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000E7650;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000E7660;
  v12[5] = v11;
  selfCopy = self;
  sub_100064F78(0, 0, v7, &unk_1000E7670, v12);
}

@end