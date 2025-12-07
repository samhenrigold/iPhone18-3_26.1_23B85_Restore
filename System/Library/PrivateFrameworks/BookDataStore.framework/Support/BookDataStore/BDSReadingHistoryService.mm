@interface BDSReadingHistoryService
- (BDSReadingHistoryService)init;
- (BDSReadingHistoryService)initWithReadingGoalsService:(id)service transactionProvider:(id)provider viewStateChangeHandler:(id)handler;
- (id)serviceStatusInfo;
- (void)backupWithName:(NSString *)name completionHandler:(id)handler;
- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)handler;
- (void)clearDate:(id)date completionHandler:(id)handler;
- (void)handlePlaceholderStreakDayGoalNeedsUpdate:(id)update;
- (void)handleSignificantDateChange:(id)change;
- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completionHandler:(id)handler;
- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler;
- (void)listBackupWithCompletionHandler:(id)handler;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler;
- (void)readingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time completionHandler:(id)handler;
- (void)restoreWithName:(NSString *)name completionHandler:(id)handler;
- (void)setEnableCloudSync:(BOOL)sync;
@end

@implementation BDSReadingHistoryService

- (BDSReadingHistoryService)initWithReadingGoalsService:(id)service transactionProvider:(id)provider viewStateChangeHandler:(id)handler
{
  serviceCopy = service;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return ReadingHistoryService.init(readingGoalsService:transactionProvider:viewStateChangeHandler:)(serviceCopy, provider, handler);
}

- (void)clearDate:(id)date completionHandler:(id)handler
{
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(handler);
  sub_1001C4C78();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  ReadingHistoryService.clearDate(_:completionHandler:)(v9, sub_1000F51A4, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completionHandler:(id)handler
{
  v9 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v9 - 8);
  v11 = (&v20 - v10);
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  if (!info)
  {
    v17 = type metadata accessor for CRDTModelSyncVersion(0);
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    updateInfoCopy = updateInfo;
    selfCopy = self;
    if (updateInfo)
    {
      goto LABEL_3;
    }

LABEL_5:
    update = 0;
    goto LABEL_6;
  }

  updateInfoCopy2 = updateInfo;
  selfCopy2 = self;
  static CRDTModelSyncVersion.fromInfo(_:)(info, v11);
  if (!updateInfo)
  {
    goto LABEL_5;
  }

LABEL_3:
  update = [updateInfo update];
LABEL_6:
  ReadingHistoryService.handleSyncFileChange(syncVersion:update:completionHandler:)(v11, update, sub_1000F51A4, v13);

  sub_10008875C(v11, &unk_10026F350, &qword_1001F31E0);
}

- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler
{
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(handler);
  sub_1001C4C78();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  selfCopy = self;
  ReadingHistoryService.increment(date:by:completionHandler:)(v11, by, sub_1000F324C, v13);

  (*(v9 + 8))(v11, v8);
}

- (void)readingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time completionHandler:(id)handler
{
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v22 - v14;
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  v18 = _Block_copy(handler);
  sub_1001C4C78();
  sub_1001C4C78();
  sub_1001C4C78();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  selfCopy = self;
  ReadingHistoryService.readingHistoryStateInfo(rangeStart:rangeEnd:currentTime:completionHandler:)(v17, v15, v12, sub_1000F3230, v19);

  v21 = *(v9 + 8);
  v21(v12, v8);
  v21(v15, v8);
  v21(v17, v8);
}

- (void)setEnableCloudSync:(BOOL)sync
{
  selfCopy = self;
  ReadingHistoryService.setEnableCloudSync(_:)(sync);
}

- (id)serviceStatusInfo
{
  v2 = [objc_allocWithZone(BDSReadingHistoryServiceStatusInfo) initWithIsLoaded:1];
  v3 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v4 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001F0670;
  *(v5 + 56) = sub_100088714(0, &qword_10026F370, off_10023DD40);
  *(v5 + 64) = sub_1000F17CC(&qword_10026F378, &qword_10026F370, off_10023DD40);
  *(v5 + 32) = v2;
  v6 = v2;
  sub_1001C5118(v3, &_mh_execute_header, v4, "ReadingHistoryService serviceStatusInfo: %@", 43, 2, v5);

  return v6;
}

- (void)handlePlaceholderStreakDayGoalNeedsUpdate:(id)update
{
  v4 = sub_1001C4868();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4848();
  selfCopy = self;
  sub_1000E5244();

  (*(v5 + 8))(v7, v4);
}

- (void)handleSignificantDateChange:(id)change
{
  v4 = sub_1001C4868();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4848();
  selfCopy = self;
  sub_1000E56A4();

  (*(v5 + 8))(v7, v4);
}

- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1001C6348();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001F3450;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F0E30;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F3460, v12);
}

- (BDSReadingHistoryService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1001C6348();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001F3430;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F0E10;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F3440, v12);
}

- (void)backupWithName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = name;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1001C6348();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F3410;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F0DF0;
  v14[5] = v13;
  nameCopy = name;
  selfCopy = self;
  sub_100118770(0, 0, v9, &unk_1001F3420, v14);
}

- (void)listBackupWithCompletionHandler:(id)handler
{
  v5 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1001C6348();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1001F33F0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F0DD0;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F3400, v12);
}

- (void)restoreWithName:(NSString *)name completionHandler:(id)handler
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = name;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1001C6348();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F33D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F0DB0;
  v14[5] = v13;
  nameCopy = name;
  selfCopy = self;
  sub_100118770(0, 0, v9, &unk_1001F33E0, v14);
}

@end