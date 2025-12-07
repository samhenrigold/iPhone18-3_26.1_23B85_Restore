@interface AKSignInWithAppleDaemonService
- (AKSignInWithAppleDaemonService)init;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)cancelAppIconRequestForClientID:(NSString *)d completion:(id)completion;
- (void)configureExportedInterface:(id)interface;
- (void)deleteAllItemsFromDepartedGroupWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)fetchAccountsWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)fetchAppIconForClientID:(NSString *)d iconSize:(CGSize)size completion:(id)completion;
- (void)fetchEULAForClientID:(NSString *)d completion:(id)completion;
- (void)fetchSharedGroupsWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)fetchSignInWithApplePrivateEmailCountWithCompletion:(id)completion;
- (void)leaveGroupWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)participantRemovedWithContext:(AKSignInWithAppleRequestContext *)context participantID:(NSString *)d completion:(id)completion;
- (void)performHealthCheckWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)performTokenRotationWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)revokeAcccountWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
- (void)shareAccountWithContext:(AKSignInWithAppleRequestContext *)context withGroup:(AKSignInWithAppleAccountShareInfo *)group completion:(id)completion;
- (void)unshareAccountWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion;
@end

@implementation AKSignInWithAppleDaemonService

- (void)configureExportedInterface:(id)interface
{
  interfaceCopy = interface;
  selfCopy = self;
  _s3akd28SignInWithAppleDaemonServiceC26configureExportedInterfaceyySo14NSXPCInterfaceCF_0(interfaceCopy);
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for SignInWithAppleDaemonService();
  connectionCopy = connection;
  v5 = v11.receiver;
  v6 = [(AKSignInWithAppleDaemonService *)&v11 shouldAcceptNewConnection:connectionCopy];
  if (v6)
  {
    v7 = objc_allocWithZone(AKClient);
    v8 = [v7 initWithConnection:{connectionCopy, v11.receiver, v11.super_class}];

    v9 = *&v5[OBJC_IVAR___AKSignInWithAppleDaemonService_client];
    *&v5[OBJC_IVAR___AKSignInWithAppleDaemonService_client] = v8;

    v5 = v9;
  }

  else
  {
  }

  return v6;
}

- (AKSignInWithAppleDaemonService)init
{
  *&self->AAFService_opaque[OBJC_IVAR___AKSignInWithAppleDaemonService_client] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for SignInWithAppleDaemonService();
  return [(AKSignInWithAppleDaemonService *)&v3 init];
}

- (void)fetchAccountsWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029FA38;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029FA40;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029FA48, v14);
}

- (void)fetchEULAForClientID:(NSString *)d completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029FA18;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029FA20;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029FA28, v14);
}

- (void)revokeAcccountWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F9F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029FA00;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029FA08, v14);
}

- (void)fetchAppIconForClientID:(NSString *)d iconSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v10 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 2) = d;
  v14[3] = width;
  v14[4] = height;
  *(v14 + 5) = v13;
  *(v14 + 6) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029F9D8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029F9E0;
  v17[5] = v16;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v12, &unk_10029F9E8, v17);
}

- (void)cancelAppIconRequestForClientID:(NSString *)d completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F9B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F9C0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029F9C8, v14);
}

- (void)shareAccountWithContext:(AKSignInWithAppleRequestContext *)context withGroup:(AKSignInWithAppleAccountShareInfo *)group completion:(id)completion
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = context;
  v13[3] = group;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F998;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029F9A0;
  v16[5] = v15;
  contextCopy = context;
  groupCopy = group;
  selfCopy = self;
  sub_100244978(0, 0, v11, &unk_10029F9A8, v16);
}

- (void)unshareAccountWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F978;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F980;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029F988, v14);
}

- (void)leaveGroupWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F958;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F960;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029F968, v14);
}

- (void)deleteAllItemsFromDepartedGroupWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F938;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F940;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029F948, v14);
}

- (void)participantRemovedWithContext:(AKSignInWithAppleRequestContext *)context participantID:(NSString *)d completion:(id)completion
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = context;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F918;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029F920;
  v16[5] = v15;
  contextCopy = context;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v11, &unk_10029F928, v16);
}

- (void)fetchSharedGroupsWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F8F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F900;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029F908, v14);
}

- (void)performTokenRotationWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F8D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F8E0;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029F8E8, v14);
}

- (void)performHealthCheckWithContext:(AKSignInWithAppleRequestContext *)context completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029F8C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DE20;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029DE28, v14);
}

- (void)fetchSignInWithApplePrivateEmailCountWithCompletion:(id)completion
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
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
  v11[4] = &unk_10029F880;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029C6A0;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029CEE0, v12);
}

@end