@interface XPCServerProxy
- (void)clearEnergyKitDataWithPrivateHomeIdentifiers:(id)identifiers sharedHomeIdentifiers:(id)homeIdentifiers deletePrivateCloudZones:(BOOL)zones reply:(id)reply;
- (void)collectDiagnosticsWithIncludeSensitiveData:(BOOL)data reply:(id)reply;
- (void)createEventsWithEventsData:(id)data scope:(int64_t)scope reply:(id)reply;
- (void)createFakeEventsWithDate:(id)date homeIdentifier:(id)identifier count:(int64_t)count reply:(id)reply;
- (void)ensureDigestsWithHomeIdentifier:(id)identifier reply:(id)reply;
- (void)exitWithExitStatus:(int64_t)status reply:(id)reply;
- (void)hmvutilClearLocalDatabaseWithHomes:(id)homes reply:(id)reply;
- (void)hmvutilCreateEncryptionKeyWithHomeIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier skipZoneCreation:(BOOL)creation reply:(id)reply;
- (void)hmvutilCreateEventsWithEventsData:(id)data scope:(int64_t)scope uploadOnly:(BOOL)only saveOnly:(BOOL)saveOnly skipZoneCreation:(BOOL)creation reply:(id)reply;
- (void)hmvutilCreateFakeEventsWithDate:(id)date homeIdentifier:(id)identifier count:(int64_t)count scope:(int64_t)scope uploadOnly:(BOOL)only saveOnly:(BOOL)saveOnly skipZoneCreation:(BOOL)creation reply:(id)self0;
- (void)hmvutilDeleteEncryptionKeyWithHomeIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier reply:(id)reply;
- (void)hmvutilDumpLocalDatabaseWithReply:(id)reply;
- (void)hmvutilEnsureDigestsWithHomeIdentifier:(id)identifier customCreationDate:(id)date reply:(id)reply;
- (void)hmvutilResetConfigurationWithReply:(id)reply;
- (void)hmvutilUploadEventsWithBatchCount:(id)count reply:(id)reply;
- (void)resetConfigurationWithReply:(id)reply;
@end

@implementation XPCServerProxy

- (void)createEventsWithEventsData:(id)data scope:(int64_t)scope reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);

  sub_10005A750(v8, scope, self, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)createFakeEventsWithDate:(id)date homeIdentifier:(id)identifier count:(int64_t)count reply:(id)reply
{
  countCopy = count;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(reply);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;

  sub_10004FF54(v14, v10, countCopy, sub_10005F7EC, v16);

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

- (void)clearEnergyKitDataWithPrivateHomeIdentifiers:(id)identifiers sharedHomeIdentifiers:(id)homeIdentifiers deletePrivateCloudZones:(BOOL)zones reply:(id)reply
{
  zonesCopy = zones;
  v7 = _Block_copy(reply);
  type metadata accessor for UUID();
  sub_10005E474(&unk_1000AC310, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v7;

  sub_10005082C(v8, v9, zonesCopy, sub_10005EC90, v10);
}

- (void)ensureDigestsWithHomeIdentifier:(id)identifier reply:(id)reply
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  sub_100051F64(v8, sub_10005F7EC, v10);

  (*(v6 + 8))(v8, v5);
}

- (void)resetConfigurationWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_10005724C(sub_10005F7EC, v4, "resetConfiguration", &unk_1000A3AA0, 1, sub_10005F7E8);
}

- (void)hmvutilClearLocalDatabaseWithHomes:(id)homes reply:(id)reply
{
  v5 = _Block_copy(reply);
  if (homes)
  {
    type metadata accessor for UUID();
    homes = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_100053810(homes, sub_10005F7EC, v6);
}

- (void)hmvutilCreateEventsWithEventsData:(id)data scope:(int64_t)scope uploadOnly:(BOOL)only saveOnly:(BOOL)saveOnly skipZoneCreation:(BOOL)creation reply:(id)reply
{
  creationCopy = creation;
  saveOnlyCopy = saveOnly;
  onlyCopy = only;
  v13 = _Block_copy(reply);
  v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v13);

  sub_10005AEF8(v14, scope, onlyCopy, saveOnlyCopy, creationCopy, self, v13);
  _Block_release(v13);
  _Block_release(v13);
}

- (void)hmvutilCreateFakeEventsWithDate:(id)date homeIdentifier:(id)identifier count:(int64_t)count scope:(int64_t)scope uploadOnly:(BOOL)only saveOnly:(BOOL)saveOnly skipZoneCreation:(BOOL)creation reply:(id)self0
{
  onlyCopy = only;
  saveOnlyCopy = saveOnly;
  countCopy = count;
  scopeCopy = scope;
  creationCopy = creation;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for Date();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v20[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = _Block_copy(reply);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v19);

  sub_10005B83C(v18, v14, countCopy, scopeCopy, onlyCopy, saveOnlyCopy, creationCopy, self, v19);
  _Block_release(v19);
  _Block_release(v19);

  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
}

- (void)hmvutilDumpLocalDatabaseWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_1000552D0(sub_10005DEE0, v4);
}

- (void)hmvutilUploadEventsWithBatchCount:(id)count reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  countCopy = count;

  sub_100055AA8(count, sub_10005F7EC, v6);
}

- (void)exitWithExitStatus:(int64_t)status reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_1000561FC(status, sub_10005F7EC, v6);
}

- (void)hmvutilResetConfigurationWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  sub_10005724C(sub_10005F7EC, v4, "hmvutilResetConfiguration", &unk_1000A3348, 2, sub_10005F7E8);
}

- (void)hmvutilCreateEncryptionKeyWithHomeIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier skipZoneCreation:(BOOL)creation reply:(id)reply
{
  creationCopy = creation;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  v15 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;

  sub_100057534(v14, v12, creationCopy, sub_10005F7EC, v16);

  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v14, v8);
}

- (void)hmvutilDeleteEncryptionKeyWithHomeIdentifier:(id)identifier keyIdentifier:(id)keyIdentifier reply:(id)reply
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  v13 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;

  sub_1000584D4(v12, v10, sub_10005F7EC, v14);

  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
}

- (void)hmvutilEnsureDigestsWithHomeIdentifier:(id)identifier customCreationDate:(id)date reply:(id)reply
{
  v7 = sub_10000CED0(&qword_1000AB0C8, &qword_100085F18);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(reply);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (date)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for Date();
  (*(*(v16 - 8) + 56))(v9, v15, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;

  sub_100058D80(v13, v9, sub_10005CFA4, v17);

  sub_10000D620(v9, &qword_1000AB0C8, &qword_100085F18);
  (*(v11 + 8))(v13, v10);
}

- (void)collectDiagnosticsWithIncludeSensitiveData:(BOOL)data reply:(id)reply
{
  dataCopy = data;
  v6 = _Block_copy(reply);
  _Block_copy(v6);

  sub_10005C1F0(dataCopy, self, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end