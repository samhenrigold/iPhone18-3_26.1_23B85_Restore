@interface BDSReadingHistoryServiceManager
- (BDSReadingHistoryServiceManager)init;
- (BDSReadingHistoryServiceManager)initWithReadingGoalsService:(id)service transactionProvider:(id)provider viewStateChangeHandler:(id)handler;
- (id)serviceStatusInfo;
- (void)backupWithName:(NSString *)name completionHandler:(id)handler;
- (void)bookWidgetReadingHistoryStateInfoWithCompletionHandler:(id)handler;
- (void)clearDataWithCompletionHandler:(id)handler;
- (void)clearDate:(id)date completionHandler:(id)handler;
- (void)clearDefaultsCachedDataWithCompletionHandler:(id)handler;
- (void)clearTodayWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completionHandler:(id)handler;
- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler;
- (void)listBackupWithCompletionHandler:(id)handler;
- (void)mergeMovedReadingHistoryDataWithCompletionHandler:(id)handler;
- (void)readingHistoryStateInfoWithRangeStart:(id)start rangeEnd:(id)end currentTime:(id)time completionHandler:(id)handler;
- (void)restoreWithName:(NSString *)name completionHandler:(id)handler;
- (void)setEnableCloudSync:(BOOL)sync;
- (void)transactionDidBeginWithName:(const char *)name;
- (void)transactionWillEndWithName:(const char *)name;
@end

@implementation BDSReadingHistoryServiceManager

- (BDSReadingHistoryServiceManager)initWithReadingGoalsService:(id)service transactionProvider:(id)provider viewStateChangeHandler:(id)handler
{
  serviceCopy = service;
  providerCopy = provider;
  swift_unknownObjectRetain();
  return ReadingHistoryServiceManager.init(readingGoalsService:transactionProvider:viewStateChangeHandler:)(serviceCopy, providerCopy, handler);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_10008F7D8();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(BDSReadingHistoryServiceManager *)&v5 dealloc];
}

- (void)clearDataWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v9 = v7;
    swift_once();
    v7 = v9;
  }

  v8 = sub_1001C5118(v7, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager clearData", 38, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v8);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.clearData(completionHandler:)(sub_10009B2FC, v5);
}

- (void)clearDefaultsCachedDataWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v9 = v7;
    swift_once();
    v7 = v9;
  }

  v8 = sub_1001C5118(v7, &_mh_execute_header, qword_1002711E8, "ReadingGoalsServiceManager clearDefaultsCachedData", 50, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v8);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.clearDefaultsCachedData(completionHandler:)(sub_10009B2FC, v5);
}

- (void)clearDate:(id)date completionHandler:(id)handler
{
  v6 = sub_1001C4CA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(handler);
  sub_1001C4C78();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  v13 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v16 = v13;
    swift_once();
    v13 = v16;
  }

  v14 = sub_1001C5118(v13, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager clearDate", 38, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v14);
  v17[-2] = selfCopy;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  v15 = v17[1];
  ReadingHistoryService.clearDate(_:completionHandler:)(v9, sub_10009B2FC, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)clearTodayWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v9 = v7;
    swift_once();
    v7 = v9;
  }

  v8 = sub_1001C5118(v7, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager clearToday", 39, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v8);
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  ReadingHistoryService.clearToday(completionHandler:)(sub_10009B2FC, v5);
}

- (void)handleSyncFileChangeWithSyncVersionInfo:(id)info updateInfo:(id)updateInfo completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  infoCopy = info;
  updateInfoCopy = updateInfo;
  selfCopy = self;
  ReadingHistoryServiceManager.handleSyncFileChange(syncVersionInfo:updateInfo:completionHandler:)(info, updateInfo, sub_10009B2FC, v9);
}

- (void)incrementWithDate:(id)date by:(int64_t)by completionHandler:(id)handler
{
  v8 = sub_1001C4CA8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(handler);
  sub_1001C4C78();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  selfCopy = self;
  v15 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v18 = v15;
    swift_once();
    v15 = v18;
  }

  v16 = sub_1001C5118(v15, &_mh_execute_header, qword_1002711E8, "ReadingHistoryServiceManager increment", 38, 2, _swiftEmptyArrayStorage);
  __chkstk_darwin(v16);
  v19[-2] = selfCopy;
  type metadata accessor for ReadingHistoryService();
  sub_1001C6688();
  v17 = v19[1];
  ReadingHistoryService.increment(date:by:completionHandler:)(v11, by, sub_10009AC28, v13);

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
  ReadingHistoryServiceManager.readingHistoryStateInfo(rangeStart:rangeEnd:currentTime:completionHandler:)(v17, v15, v12, sub_10009AC20, v19);

  v21 = *(v9 + 8);
  v21(v12, v8);
  v21(v15, v8);
  v21(v17, v8);
}

- (id)serviceStatusInfo
{
  selfCopy = self;
  isa = ReadingHistoryServiceManager.serviceStatusInfo()().super.isa;

  return isa;
}

- (void)setEnableCloudSync:(BOOL)sync
{
  selfCopy = self;
  ReadingHistoryServiceManager.setEnableCloudSync(_:)(sync);
}

- (BDSReadingHistoryServiceManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)transactionDidBeginWithName:(const char *)name
{
  v5 = *(&self->super.isa + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = name;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10009B268;
  *(v7 + 24) = v6;
  v10[4] = sub_10009B264;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_100242B78;
  v8 = _Block_copy(v10);
  selfCopy = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

- (void)transactionWillEndWithName:(const char *)name
{
  v5 = *(&self->super.isa + OBJC_IVAR___BDSReadingHistoryServiceManager_outstandingTransactionCountAccessQueue);
  v6 = swift_allocObject();
  v6[2] = self;
  v6[3] = name;
  v6[4] = 0x403E000000000000;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10009B300;
  *(v7 + 24) = v6;
  v10[4] = sub_10009B264;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_100242B00;
  v8 = _Block_copy(v10);
  selfCopy = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
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
  v11[4] = &unk_1001F0E28;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F0E30;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F3460, v12);
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
  v11[4] = &unk_1001F0E08;
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
  v13[4] = &unk_1001F0DE8;
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
  v11[4] = &unk_1001F0DC8;
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
  v13[4] = &unk_1001F0DA8;
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