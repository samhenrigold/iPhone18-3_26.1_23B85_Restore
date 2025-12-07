@interface DeviceManager
+ (_TtC15audioaccessoryd13DeviceManager)singleton;
- (BOOL)isDeviceRecordsIncomingWithAddress:(id)address;
- (id)cloudAccountInfo;
- (id)createSoundProfileRecordStagingURL;
- (id)fetchAADeviceRecordSyncWithAddress:(id)address;
- (id)fetchAAProxCardsInfoSyncWithAddress:(id)address;
- (id)fetchDeviceSyncWithAddress:(id)address;
- (id)fetchHMDeviceCloudRecordSyncWithAddress:(id)address;
- (id)fetchMagicSettingsRecordSyncWithAddress:(id)address;
- (id)printDebug;
- (void)addAccountMagicKeysWithCloudRecord:(id)record;
- (void)addLegacyMagicPairingRecordsWithCloudRecord:(id)record userInitiated:(BOOL)initiated completion:(id)completion;
- (void)addSoundProfileRecordWithURL:(id)l completion:(id)completion;
- (void)deactivate;
- (void)dealloc;
- (void)deleteAccountMagicKeys;
- (void)deleteLegacyMagicPairingRecordsWithUserInitiated:(BOOL)initiated completion:(id)completion;
- (void)fetchCached;
- (void)fetchHMDeviceCloudRecordWithAddress:(id)address completion:(id)completion;
- (void)removeHMDeviceCloudRecordWithBluetoothAddress:(id)address completion:(id)completion;
- (void)updateAADeviceRecordWithRecord:(id)record completion:(id)completion;
- (void)updateAAProxCardsInfoWithProxCardsInfo:(id)info completion:(id)completion;
- (void)updateHMDeviceCloudRecordInfoWithRecordInfo:(id)info completion:(id)completion;
@end

@implementation DeviceManager

- (id)fetchAADeviceRecordSyncWithAddress:(id)address
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1000F0EA0(v4, v6);

  return v8;
}

- (void)updateAADeviceRecordWithRecord:(id)record completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  recordCopy = record;
  selfCopy = self;
  sub_1000F2654(recordCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

+ (_TtC15audioaccessoryd13DeviceManager)singleton
{
  if (qword_1002F79F0 != -1)
  {
    swift_once();
  }

  v3 = qword_100300B98;

  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = static os_log_type_t.default.getter();
  if (qword_1002F7AE0 != -1)
  {
    v4 = v3;
    swift_once();
    v3 = v4;
  }

  os_log(_:dso:log:_:_:)(v3, &_mh_execute_header, qword_100300E30, "DeviceManager deinit", 20, 2, _swiftEmptyArrayStorage);
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for DeviceManager();
  [(DeviceManager *)&v5 dealloc];
}

- (void)deactivate
{
  selfCopy = self;
  sub_1001049D0();
}

- (void)fetchCached
{
  selfCopy = self;
  sub_100104B94();
}

- (id)fetchDeviceSyncWithAddress:(id)address
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_100106A90(v4, v6);

  return v8;
}

- (void)addAccountMagicKeysWithCloudRecord:(id)record
{
  recordCopy = record;
  selfCopy = self;
  sub_10010724C(recordCopy);
}

- (void)deleteAccountMagicKeys
{
  selfCopy = self;
  sub_100107630();
}

- (void)addLegacyMagicPairingRecordsWithCloudRecord:(id)record userInitiated:(BOOL)initiated completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  recordCopy = record;
  selfCopy = self;
  sub_10010BE74(recordCopy, initiated, sub_1000F2C44, v9);
}

- (void)deleteLegacyMagicPairingRecordsWithUserInitiated:(BOOL)initiated completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  sub_10010C2EC(initiated, sub_1000F2C44, v7);
}

- (id)fetchMagicSettingsRecordSyncWithAddress:(id)address
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  selfCopy = self;
  v6 = v4;
  sub_1000EE870(&qword_1002F8530, &qword_100227B78);
  OS_dispatch_queue.sync<A>(execute:)();

  return v8;
}

- (BOOL)isDeviceRecordsIncomingWithAddress:(id)address
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15audioaccessoryd13DeviceManager_managerQueue);
  selfCopy = self;
  v6 = v4;
  OS_dispatch_queue.sync<A>(execute:)();

  return v8;
}

- (id)createSoundProfileRecordStagingURL
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_100110050(v6);

  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (void)addSoundProfileRecordWithURL:(id)l completion:(id)completion
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  sub_10011046C(v9, sub_1000F2C44, v11);

  (*(v7 + 8))(v9, v6);
}

- (id)cloudAccountInfo
{
  selfCopy = self;
  v3 = sub_100111EA0();

  return v3;
}

- (id)printDebug
{
  selfCopy = self;
  v3 = sub_100103934();
  sub_1001121F4(v3);

  v4._countAndFlagsBits = 2570;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (id)fetchAAProxCardsInfoSyncWithAddress:(id)address
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_10016E1B8(v4, v6);

  return v8;
}

- (void)updateAAProxCardsInfoWithProxCardsInfo:(id)info completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  infoCopy = info;
  selfCopy = self;
  sub_10016F830(infoCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)fetchHMDeviceCloudRecordWithAddress:(id)address completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_100170B10(v6, v8, sub_1000F2BA0, v9, &unk_1002C04C8, sub_100172028, &unk_1002C04E0);
}

- (id)fetchHMDeviceCloudRecordSyncWithAddress:(id)address
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_1001707BC(v4, v6);

  return v8;
}

- (void)removeHMDeviceCloudRecordWithBluetoothAddress:(id)address completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_100170B10(v6, v8, sub_1000F2C44, v9, &unk_1002C03D8, sub_100172004, &unk_1002C03F0);
}

- (void)updateHMDeviceCloudRecordInfoWithRecordInfo:(id)info completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  infoCopy = info;
  selfCopy = self;
  sub_100171070(infoCopy, sub_1000F29F0, v7);
}

@end