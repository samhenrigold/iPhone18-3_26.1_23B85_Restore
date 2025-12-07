@interface BDSCloudSyncDiagnosticService
- (BDSCloudSyncDiagnosticService)init;
- (BDSCloudSyncDiagnosticService)initWithCloudKitController:(id)controller entityServiceProviders:(id)providers;
- (id)clearSyncMetadata;
- (id)stateForLog;
- (void)detachWithCompletionHandler:(id)handler;
- (void)diagnosticInfoWithCompletionHandler:(id)handler;
- (void)fetchRemoteChangesWithCompletionHandler:(id)handler;
- (void)findLocalIdDupesWithCompletionHandler:(id)handler;
@end

@implementation BDSCloudSyncDiagnosticService

- (BDSCloudSyncDiagnosticService)initWithCloudKitController:(id)controller entityServiceProviders:(id)providers
{
  ObjectType = swift_getObjectType();
  sub_100084528(&qword_100271858, &qword_1001F44E8);
  v7 = sub_1001C6298();
  controllerCopy = controller;
  sub_1001C5138();
  *(&self->super.isa + OBJC_IVAR___BDSCloudSyncDiagnosticService_cloudKitController) = controllerCopy;
  *(&self->super.isa + OBJC_IVAR___BDSCloudSyncDiagnosticService_entityServiceProviders) = v7;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(BDSCloudSyncDiagnosticService *)&v10 init];
}

- (void)detachWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1001F44D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F44D8;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F44E0, v12);
}

- (void)diagnosticInfoWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1001F44B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F44B8;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F44C0, v12);
}

- (void)findLocalIdDupesWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1001F4490;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F4498;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F44A0, v12);
}

- (id)stateForLog
{
  selfCopy = self;
  v3 = sub_100115DF0(1);
  sub_100084528(&qword_1002717A0, &qword_1001F43E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001F0670;
  strcpy((inited + 32), "diagnosticInfo");
  *(inited + 47) = -18;
  stateForLog = [v3 stateForLog];
  v6 = sub_1001C5F08();

  *(inited + 72) = sub_100084528(&qword_1002717A8, &qword_1001F43E8);
  *(inited + 48) = v6;
  sub_100119458(inited);
  swift_setDeallocating();
  sub_10008875C(inited + 32, &qword_1002717B0, &qword_1001F43F0);

  v7.super.isa = sub_1001C5EF8().super.isa;

  return v7.super.isa;
}

- (id)clearSyncMetadata
{
  _s14bookdatastored26CloudSyncDiagnosticServiceC05clearC8MetadataSo7NSErrorCSgyF_0();

  return v2;
}

- (void)fetchRemoteChangesWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1001F4448;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1001F0DB0;
  v12[5] = v11;
  selfCopy = self;
  sub_100118770(0, 0, v7, &unk_1001F33E0, v12);
}

- (BDSCloudSyncDiagnosticService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end