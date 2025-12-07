@interface RPIdentitySyncSessionTelemetry
- (_TtC8rapportd30RPIdentitySyncSessionTelemetry)init;
- (void)logIdentityUpdateWithHandle:(NSString *)handle deviceIRKData:(NSData *)data type:(int)type source:(int)source completionHandler:(id)handler;
- (void)logStartWithBtAddressData:(NSData *)data handles:(NSSet *)handles completionHandler:(id)handler;
- (void)setWithIdentitySyncCache:(_TtC8rapportd19RPIdentitySyncCache *)cache completionHandler:(id)handler;
@end

@implementation RPIdentitySyncSessionTelemetry

- (void)logStartWithBtAddressData:(NSData *)data handles:(NSSet *)handles completionHandler:(id)handler
{
  v9 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = data;
  v13[3] = handles;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10014BE88;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10014BE90;
  v16[5] = v15;
  dataCopy = data;
  handlesCopy = handles;

  sub_1000EED08(0, 0, v11, &unk_10014BE98, v16);
}

- (void)logIdentityUpdateWithHandle:(NSString *)handle deviceIRKData:(NSData *)data type:(int)type source:(int)source completionHandler:(id)handler
{
  v13 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = handle;
  *(v17 + 24) = data;
  *(v17 + 32) = type;
  *(v17 + 36) = source;
  *(v17 + 40) = v16;
  *(v17 + 48) = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10014BE68;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10014BE70;
  v20[5] = v19;
  handleCopy = handle;
  dataCopy = data;

  sub_1000EED08(0, 0, v15, &unk_10014BE78, v20);
}

- (void)setWithIdentitySyncCache:(_TtC8rapportd19RPIdentitySyncCache *)cache completionHandler:(id)handler
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = cache;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10014BE30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10014BE40;
  v14[5] = v13;

  sub_1000EED08(0, 0, v9, &unk_10014BE50, v14);
}

- (_TtC8rapportd30RPIdentitySyncSessionTelemetry)init
{
  ObjectType = swift_getObjectType();
  v4 = swift_defaultActor_initialize();
  *self->sessions = &_swiftEmptyDictionarySingleton;
  *self->sessionDuration = 0x4024000000000000;
  type metadata accessor for RPIdentitySyncPathMonitor(v4, v5);
  swift_allocObject();
  *self->pathMonitor = sub_100102EF4();
  swift_weakInit();
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(RPIdentitySyncSessionTelemetry *)&v7 init];
}

@end