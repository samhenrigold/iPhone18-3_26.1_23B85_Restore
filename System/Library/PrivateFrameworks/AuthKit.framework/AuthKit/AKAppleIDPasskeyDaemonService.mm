@interface AKAppleIDPasskeyDaemonService
- (AKAppleIDPasskeyDaemonService)init;
- (BOOL)shouldAcceptNewConnection:(id)connection;
- (void)appleIDPasskeyStatusWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion;
- (void)configureExportedInterface:(id)interface;
- (void)setupAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion;
- (void)unenrollAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion;
- (void)verifyAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion;
@end

@implementation AKAppleIDPasskeyDaemonService

- (void)configureExportedInterface:(id)interface
{
  interfaceCopy = interface;
  selfCopy = self;
  _s3akd27AppleIDPasskeyDaemonServiceC26configureExportedInterfaceyySo14NSXPCInterfaceCF_0(interfaceCopy);
}

- (BOOL)shouldAcceptNewConnection:(id)connection
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  connectionCopy = connection;
  v5 = v11.receiver;
  v6 = [(AKAppleIDPasskeyDaemonService *)&v11 shouldAcceptNewConnection:connectionCopy];
  if (v6)
  {
    v7 = objc_allocWithZone(AKClient);
    v8 = [v7 initWithConnection:{connectionCopy, v11.receiver, v11.super_class}];

    v9 = *&v5[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client];
    *&v5[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client] = v8;

    v5 = v9;
  }

  else
  {
  }

  return v6;
}

- (AKAppleIDPasskeyDaemonService)init
{
  *&self->AAFService_opaque[OBJC_IVAR___AKAppleIDPasskeyDaemonService_client] = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for AppleIDPasskeyDaemonService();
  return [(AKAppleIDPasskeyDaemonService *)&v3 init];
}

- (void)setupAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion
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
  v13[4] = &unk_10029DE18;
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

- (void)verifyAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion
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
  v13[4] = &unk_10029DDF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DE00;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029DE08, v14);
}

- (void)unenrollAppleIDPasskeyWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion
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
  v13[4] = &unk_10029DDD8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DDE0;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029DDE8, v14);
}

- (void)appleIDPasskeyStatusWithContext:(AKAppleIDPasskeySetupContext *)context completion:(id)completion
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
  v13[4] = &unk_10029DDB0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029C6A0;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029CEE0, v14);
}

@end