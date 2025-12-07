@interface RPPairingSession
+ (NSDictionary)pairingEndpoints;
+ (id)agentClientListenerGetPairingData:(id)data;
+ (id)endpointGetPINFor:(id)for;
+ (void)addPairingSession:(id)session forUUID:(id)d;
+ (void)setPairingEndpoints:(id)endpoints;
- (_TtC8rapportd16RPPairingSession)init;
- (_TtC8rapportd16RPPairingSession)initWithApplicationService:(id)service queue:(id)queue availablePINsChangedHandler:(id)handler bonjourResolveHandler:(id)resolveHandler endpointsChangedHandler:(id)changedHandler;
- (void)activateForBrowsingWithMode:(unint64_t)mode completionHandler:(id)handler;
- (void)activateForServerWithPin:(NSString *)pin advertiseSensitiveInfo:(BOOL)info completionHandler:(id)handler;
- (void)pairWithPin:(NSString *)pin completionHandler:(id)handler;
- (void)pairingResolveBonjourFor:(RPNWEndpoint *)for withPIN:(NSString *)n clientPublicKey:(NSData *)key completionHandler:(id)handler;
- (void)sendPAKEClientIdentityFor:(NSString *)for completionHandler:(id)handler;
- (void)stopBrowsingWithCompletionHandler:(id)handler;
- (void)stopServerWithCompletionHandler:(id)handler;
@end

@implementation RPPairingSession

+ (NSDictionary)pairingEndpoints
{
  if (qword_1001D88E0 != -1)
  {
    swift_once();
  }

  swift_getObjCClassMetadata();
  swift_beginAccess();
  type metadata accessor for UUID();
  sub_1000F16F0(&qword_1001D55A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

+ (void)setPairingEndpoints:(id)endpoints
{
  swift_getObjCClassMetadata();
  type metadata accessor for UUID();
  sub_1000F16F0(&qword_1001D55A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_1001D88E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1001DA6D0 = v3;
}

- (_TtC8rapportd16RPPairingSession)initWithApplicationService:(id)service queue:(id)queue availablePINsChangedHandler:(id)handler bonjourResolveHandler:(id)resolveHandler endpointsChangedHandler:(id)changedHandler
{
  v10 = _Block_copy(handler);
  v11 = _Block_copy(resolveHandler);
  v12 = _Block_copy(changedHandler);
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  if (v10)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v10;
    v10 = sub_1000F1654;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!v11)
  {
    goto LABEL_6;
  }

LABEL_3:
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v11 = sub_1000F164C;
  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_4:
  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  v12 = sub_1000F1644;
LABEL_8:
  queueCopy = queue;
  v20 = sub_1000EFC40(v13, v15, queueCopy, v12, v18);
  sub_1000134D4(v11, v17);
  sub_1000134D4(v10, v16);

  return v20;
}

- (void)activateForServerWithPin:(NSString *)pin advertiseSensitiveInfo:(BOOL)info completionHandler:(id)handler
{
  v9 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = pin;
  *(v13 + 24) = info;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10014B468;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10014B470;
  v16[5] = v15;
  pinCopy = pin;

  sub_1000EED08(0, 0, v11, &unk_10014B478, v16);
}

- (void)stopServerWithCompletionHandler:(id)handler
{
  v5 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
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
  v11[4] = &unk_10014B448;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10014B450;
  v12[5] = v11;

  sub_1000EED08(0, 0, v7, &unk_10014B458, v12);
}

- (void)activateForBrowsingWithMode:(unint64_t)mode completionHandler:(id)handler
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = mode;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10014B428;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10014B430;
  v14[5] = v13;

  sub_1000EED08(0, 0, v9, &unk_10014B438, v14);
}

- (void)pairingResolveBonjourFor:(RPNWEndpoint *)for withPIN:(NSString *)n clientPublicKey:(NSData *)key completionHandler:(id)handler
{
  v11 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = for;
  v15[3] = n;
  v15[4] = key;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10014B400;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10014B408;
  v18[5] = v17;
  forCopy = for;
  nCopy = n;
  keyCopy = key;

  sub_1000EED08(0, 0, v13, &unk_10014B410, v18);
}

- (void)pairWithPin:(NSString *)pin completionHandler:(id)handler
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = pin;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10014B3E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10014B3E8;
  v14[5] = v13;
  pinCopy = pin;

  sub_1000EED08(0, 0, v9, &unk_10014B3F0, v14);
}

- (void)sendPAKEClientIdentityFor:(NSString *)for completionHandler:(id)handler
{
  v7 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10014B3C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10014B3C8;
  v14[5] = v13;
  forCopy = for;

  sub_1000EED08(0, 0, v9, &unk_10014B3D0, v14);
}

- (void)stopBrowsingWithCompletionHandler:(id)handler
{
  v5 = sub_1000C4810(&qword_1001D4F68, &qword_100149690);
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
  v11[4] = &unk_10014B378;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10014B388;
  v12[5] = v11;

  sub_1000EED08(0, 0, v7, &unk_10014B398, v12);
}

+ (void)addPairingSession:(id)session forUUID:(id)d
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = qword_1001D88E0;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = qword_1001DA6D0;
  qword_1001DA6D0 = 0x8000000000000000;
  sub_1000EF508(session, v8, isUniquelyReferenced_nonNull_native);
  qword_1001DA6D0 = v11;
  swift_endAccess();

  (*(v6 + 8))(v8, v5);
}

+ (id)agentClientListenerGetPairingData:(id)data
{
  swift_unknownObjectRetain();
  v4 = sub_1000EE4D0(data);
  v6 = v5;
  swift_unknownObjectRelease();
  if (v6 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000C5928(v4, v6);
    v7 = isa;
  }

  return v7;
}

+ (id)endpointGetPINFor:(id)for
{
  swift_unknownObjectRetain();
  sub_1000F0C60(for);
  v5 = v4;
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_TtC8rapportd16RPPairingSession)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end