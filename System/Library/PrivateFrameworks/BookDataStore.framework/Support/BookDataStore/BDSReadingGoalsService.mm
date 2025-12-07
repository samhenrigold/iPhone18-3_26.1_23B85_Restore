@interface BDSReadingGoalsService
- (void)changeBooksFinishedGoalTo:(int64_t)to completionHandler:(id)handler;
- (void)changeDailyGoalTo:(double)to completionHandler:(id)handler;
- (void)clearDataWithCompletionHandler:(id)handler;
- (void)clearLocalCachedDataWithCompletionHandler:(id)handler;
- (void)stateInfoWithCompletionHandler:(id)handler;
@end

@implementation BDSReadingGoalsService

- (void)changeBooksFinishedGoalTo:(int64_t)to completionHandler:(id)handler
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = to;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1001C6348();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F1908;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F1910;
  v14[5] = v13;
  selfCopy = self;
  sub_100118770(0, 0, v9, &unk_1001F1918, v14);
}

- (void)changeDailyGoalTo:(double)to completionHandler:(id)handler
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = to;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_1001C6348();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001F18E8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001F18F0;
  v14[5] = v13;
  selfCopy = self;
  sub_100118770(0, 0, v9, &unk_1001F18F8, v14);
}

- (void)clearDataWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1001F18C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F18D0;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F18D8, v12);
}

- (void)clearLocalCachedDataWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1001F18A8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F18B0;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F18B8, v12);
}

- (void)stateInfoWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1001F1898;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F0DB0;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F33E0, v12);
}

@end