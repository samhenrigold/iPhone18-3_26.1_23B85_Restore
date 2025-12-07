@interface NeighborhoodActivityConduitServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer)init;
- (void)dealloc;
- (void)ensureConduitInitialized:(id)initialized;
- (void)inviteTVDevice:(id)device toConversation:(id)conversation completion:(id)completion;
- (void)isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion:(id)completion;
- (void)registerSplitSessionApprovalEnabled:(BOOL)enabled;
- (void)setSuggestedTVDeviceName:(id)name completion:(id)completion;
- (void)startConversationWith:(id)with on:(id)on completion:(id)completion;
- (void)suggestionWithCompletion:(id)completion;
@end

@implementation NeighborhoodActivityConduitServer

- (void)registerSplitSessionApprovalEnabled:(BOOL)enabled
{
  selfCopy = self;
  sub_100003EA4(enabled);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBE0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v5, 0, qword_10011E890, 0);

  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(NeighborhoodActivityConduitServer *)&v6 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  connectionCopy = connection;
  selfCopy = self;
  sub_1000E2728();

  return v9;
}

- (void)isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  selfCopy = self;

  sub_1000E1FF8();

  (*(v4 + 2))(v4, v6, 0);
  _Block_release(v4);
}

- (void)suggestionWithCompletion:(id)completion
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = sub_10001CAA4;
  v11[6] = v9;
  selfCopy = self;
  sub_100022960(0, 0, v7, &unk_1000F0E38, v11);
}

- (void)setSuggestedTVDeviceName:(id)name completion:(id)completion
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(completion);
  v10 = sub_1000E2338();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = sub_1000E2538();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v10;
  v15[6] = v12;
  v15[7] = sub_10001C230;
  v15[8] = v13;
  selfCopy = self;
  sub_100022960(0, 0, v8, &unk_1000F0E28, v15);
}

- (void)inviteTVDevice:(id)device toConversation:(id)conversation completion:(id)completion
{
  selfCopy = self;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v7 - 8);
  v9 = &v28 - v8;
  v28 = &v28 - v8;
  v10 = sub_1000E0D68();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = _Block_copy(completion);
  sub_1000E0D38();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  v19 = sub_1000E2538();
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = selfCopy;
  *(v22 + 4) = selfCopy;
  *(v22 + 5) = device;
  (*(v11 + 32))(&v22[v20], v14, v10);
  v24 = &v22[v21];
  *v24 = sub_10001CAA0;
  v24[1] = v18;
  deviceCopy = device;
  v26 = v23;
  v27 = deviceCopy;

  sub_100022960(0, 0, v28, &unk_1000F0E18, v22);

  (*(v11 + 8))(v16, v10);
}

- (void)ensureConduitInitialized:(id)initialized
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(initialized);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1000E2538();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000F0D78;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000F0D88;
  v12[5] = v11;
  selfCopy = self;
  sub_10001BA9C(0, 0, v7, &unk_1000F0D98, v12);
}

- (void)startConversationWith:(id)with on:(id)on completion:(id)completion
{
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
  v12 = sub_1000E25E8();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  v14 = sub_1000E2538();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = sub_10001B1C4;
  v15[5] = v13;
  v15[6] = self;
  v15[7] = v12;
  v15[8] = on;
  onCopy = on;
  selfCopy = self;
  sub_100022960(0, 0, v10, &unk_1000F0D40, v15);
}

- (_TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end