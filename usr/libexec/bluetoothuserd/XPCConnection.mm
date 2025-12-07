@interface XPCConnection
- (_TtC14bluetoothuserd13XPCConnection)init;
- (void)appleAudioAccessoryLimitedLoggingWithCompletion:(id)completion;
- (void)deleteControllerInfoForDevice:(CBDevice *)device completion:(id)completion;
- (void)diagnosticShow:(NSDictionary *)show completion:(id)completion;
- (void)getCloudPairedDevicesWithCompletionHandler:(id)handler;
- (void)getControllerInfoForDevice:(CBDevice *)device completion:(id)completion;
- (void)getCurrentUserGivenNameWithCompletion:(id)completion;
- (void)getDistributedLoggingStatusWithCompletion:(id)completion;
- (void)readPrefKeys:(NSArray *)keys source:(unsigned int)source completion:(id)completion;
- (void)recordEventWithDeviceIdentifier:(id)identifier initiator:(BOOL)initiator starting:(BOOL)starting useCase:(unsigned int)case;
- (void)recordEventWithStarting:(BOOL)starting useCase:(unsigned int)case;
- (void)setAppleAudioAccessoryLimitedLogging:(BOOL)logging completion:(id)completion;
- (void)setDistributedLoggingStatus:(unsigned int)status completion:(id)completion;
- (void)storeControllerInfo:(CBControllerInfo *)info completion:(id)completion;
- (void)userNotificationEvent:(CBUserNotificationRequest *)event completion:(id)completion;
- (void)writePrefKey:(NSString *)key value:(id)value source:(unsigned int)source completion:(id)completion;
@end

@implementation XPCConnection

- (void)recordEventWithStarting:(BOOL)starting useCase:(unsigned int)case
{
  v4 = *&case;
  startingCopy = starting;
  v6 = *((swift_isaMask & **(&self->super.isa + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70);
  selfCopy = self;
  v7 = v6();
  if (v7)
  {
    v8 = (*(*v7 + 520))();
    if (v8)
    {
      (*(*v8 + 224))(startingCopy, v4);
    }
  }
}

- (_TtC14bluetoothuserd13XPCConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)diagnosticShow:(NSDictionary *)show completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = show;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074F88;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074F90;
  v14[5] = v13;
  showCopy = show;
  selfCopy = self;
  sub_10005ECCC(0, 0, v9, &unk_100074F98, v14);
}

- (void)getCloudPairedDevicesWithCompletionHandler:(id)handler
{
  v5 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
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
  v11[4] = &unk_100074F68;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100074F70;
  v12[5] = v11;
  selfCopy = self;
  sub_10005ECCC(0, 0, v7, &unk_100074F78, v12);
}

- (void)deleteControllerInfoForDevice:(CBDevice *)device completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = device;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074F48;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074F50;
  v14[5] = v13;
  deviceCopy = device;
  selfCopy = self;
  sub_10005ECCC(0, 0, v9, &unk_100074F58, v14);
}

- (void)storeControllerInfo:(CBControllerInfo *)info completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = info;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074F28;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074F30;
  v14[5] = v13;
  infoCopy = info;
  selfCopy = self;
  sub_10005ECCC(0, 0, v9, &unk_100074F38, v14);
}

- (void)getControllerInfoForDevice:(CBDevice *)device completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = device;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074F08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074F10;
  v14[5] = v13;
  deviceCopy = device;
  selfCopy = self;
  sub_10005ECCC(0, 0, v9, &unk_100074F18, v14);
}

- (void)getDistributedLoggingStatusWithCompletion:(id)completion
{
  v5 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
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
  v11[4] = &unk_100074EE8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100074EF0;
  v12[5] = v11;
  selfCopy = self;
  sub_10005ECCC(0, 0, v7, &unk_100074EF8, v12);
}

- (void)setDistributedLoggingStatus:(unsigned int)status completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = status;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074EC8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074ED0;
  v14[5] = v13;
  selfCopy = self;
  sub_10005ECCC(0, 0, v9, &unk_100074ED8, v14);
}

- (void)appleAudioAccessoryLimitedLoggingWithCompletion:(id)completion
{
  v5 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
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
  v11[4] = &unk_100074EA8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100074EB0;
  v12[5] = v11;
  selfCopy = self;
  sub_10005ECCC(0, 0, v7, &unk_100074EB8, v12);
}

- (void)setAppleAudioAccessoryLimitedLogging:(BOOL)logging completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = logging;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074E88;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074E90;
  v14[5] = v13;
  selfCopy = self;
  sub_10005ECCC(0, 0, v9, &unk_100074E98, v14);
}

- (void)getCurrentUserGivenNameWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_10005FE50(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)recordEventWithDeviceIdentifier:(id)identifier initiator:(BOOL)initiator starting:(BOOL)starting useCase:(unsigned int)case
{
  v6 = *&case;
  startingCopy = starting;
  initiatorCopy = initiator;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = *((swift_isaMask & **(&self->super.isa + OBJC_IVAR____TtC14bluetoothuserd13XPCConnection_listener)) + 0x70);
  selfCopy = self;
  v15 = v13();
  if (v15)
  {
    v16 = (*(*v15 + 520))();
    if (v16)
    {
      (*(*v16 + 216))(v10, v12, initiatorCopy, startingCopy, v6);
    }
  }
}

- (void)readPrefKeys:(NSArray *)keys source:(unsigned int)source completion:(id)completion
{
  v9 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = keys;
  *(v13 + 24) = source;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100074E68;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100074E70;
  v16[5] = v15;
  keysCopy = keys;
  selfCopy = self;
  sub_10005ECCC(0, 0, v11, &unk_100074E78, v16);
}

- (void)writePrefKey:(NSString *)key value:(id)value source:(unsigned int)source completion:(id)completion
{
  v11 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = key;
  *(v15 + 24) = value;
  *(v15 + 32) = source;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100074E48;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100074E50;
  v18[5] = v17;
  keyCopy = key;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10005ECCC(0, 0, v13, &unk_100074E58, v18);
}

- (void)userNotificationEvent:(CBUserNotificationRequest *)event completion:(id)completion
{
  v7 = sub_10000A45C(&unk_100094380, &qword_100074DF0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = event;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100074E00;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100074E10;
  v14[5] = v13;
  eventCopy = event;
  selfCopy = self;
  sub_10005ECCC(0, 0, v9, &unk_100074E20, v14);
}

@end