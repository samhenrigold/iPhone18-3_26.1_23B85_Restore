@interface ContactsService
- (void)authenticateRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler;
- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler;
- (void)presentRemotePINControllerWithCompletionHandler:(id)handler;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler;
@end

@implementation ContactsService

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
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
  v11[4] = &unk_1001405C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001405D0;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_1001405D8, v12);
}

- (void)authenticateRestrictionsPasscode:(NSString *)passcode completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = passcode;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001405A0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001405A8;
  v14[5] = v13;
  passcodeCopy = passcode;

  sub_10010D4C0(0, 0, v9, &unk_1001405B0, v14);
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
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
  v11[4] = &unk_100140580;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100140588;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100140590, v12);
}

- (void)presentRemotePINControllerWithCompletionHandler:(id)handler
{
  v5 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
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
  v11[4] = &unk_100140548;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100140550;
  v12[5] = v11;

  sub_10010D4C0(0, 0, v7, &unk_100140230, v12);
}

@end