@interface AppleAccountDaemonManager
- (void)cacheLoginResponse:(AALoginAccountResponse *)response forAccount:(ACAccount *)account completion:(id)completion;
- (void)configureExportedInterface:(id)interface;
- (void)fetchCachedLoginResponseForAccount:(ACAccount *)account completion:(id)completion;
- (void)handleAppleAccountDeleteForAccount:(id)account completion:(id)completion;
- (void)removeChildOrTeenConnectFollowUpWithCompletion:(id)completion;
- (void)removeProtoAccountWithCompletion:(id)completion;
- (void)startAppleIDAvailabilityHealthCheckWithCompletion:(id)completion;
- (void)urlConfigurationWithCompletion:(id)completion;
@end

@implementation AppleAccountDaemonManager

- (void)configureExportedInterface:(id)interface
{
  interfaceCopy = interface;
  selfCopy = self;
  sub_100152054(interfaceCopy);
}

- (void)handleAppleAccountDeleteForAccount:(id)account completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  accountCopy = account;
  selfCopy = self;
  sub_1001521EC(accountCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)cacheLoginResponse:(AALoginAccountResponse *)response forAccount:(ACAccount *)account completion:(id)completion
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = response;
  v13[3] = account;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100343780;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100343788;
  v16[5] = v15;
  responseCopy = response;
  accountCopy = account;
  selfCopy = self;
  sub_10016483C(0, 0, v11, &unk_100343790, v16);
}

- (void)fetchCachedLoginResponseForAccount:(ACAccount *)account completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = account;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100343758;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100343760;
  v14[5] = v13;
  accountCopy = account;
  selfCopy = self;
  sub_10016483C(0, 0, v9, &unk_100343768, v14);
}

- (void)urlConfigurationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100150B04(sub_100152FB0, v5);
}

- (void)removeProtoAccountWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_100152560(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)removeChildOrTeenConnectFollowUpWithCompletion:(id)completion
{
  v5 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
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
  v11[5] = sub_100008DD4;
  v11[6] = v9;
  selfCopy = self;
  sub_1000BCD5C(0, 0, v7, &unk_100343748, v11);
}

- (void)startAppleIDAvailabilityHealthCheckWithCompletion:(id)completion
{
  v5 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100343730;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10033E760;
  v12[5] = v11;
  selfCopy = self;
  sub_10016483C(0, 0, v7, &unk_10033F2F0, v12);
}

@end