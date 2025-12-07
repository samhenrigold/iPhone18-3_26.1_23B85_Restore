@interface AlishaExternal
+ (_TtC10seserviced14AlishaExternal)shared;
- (BOOL)isPassiveEntryAvailableFor:(id)for;
- (BOOL)isPeerConnectedWithClientUUID:(id)d;
- (_TtC10seserviced14AlishaExternal)init;
- (id)cancelRKERequestWithFunctionIdentifier:(unsigned __int16)identifier keyIdentifier:(id)keyIdentifier;
- (id)continueExecutingRKERequestWithFunctionIdentifier:(unsigned __int16)identifier actionIdentifier:(unsigned __int8)actionIdentifier arbitraryData:(id)data keyIdentifier:(id)keyIdentifier;
- (id)getAllEndpoints;
- (id)getEnduringRKERequestsInProgress;
- (id)getReportsWithIsInternalClient:(BOOL)client;
- (id)sendPassthroughWithMessage:(id)message clientUUID:(id)d;
- (void)sendRKERequestWithFunctionIdentifier:(unsigned __int16)identifier actionIdentifier:(unsigned __int8)actionIdentifier keyIdentifier:(id)keyIdentifier requestType:(unint64_t)type actionType:(unint64_t)actionType arbitraryData:(id)data enduringRequestHandler:(id)aBlock authorization:(id)self0 completion:(id)self1;
- (void)subscribeToVehicleFunctionStatusEventsWithRange:(_NSRange)range peerUUID:(id)d;
- (void)triggerHeadUnitPairingWith:(id)with keyIdentifier:(id)identifier;
@end

@implementation AlishaExternal

+ (_TtC10seserviced14AlishaExternal)shared
{
  if (qword_100501C88 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B6F0;

  return v3;
}

- (id)getAllEndpoints
{
  if (qword_1005019E8 != -1)
  {
    swift_once();
  }

  sub_1000CAA04();
  sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr);
  sub_10023EFC4();
  v2.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (BOOL)isPassiveEntryAvailableFor:(id)for
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  forCopy = for;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v12 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v12;
  v13 = _dispatchPreconditionTest(_:)();
  v14 = (*(v5 + 8))(v7, v4);
  if (v13)
  {
    __chkstk_darwin(v14);
    *&v16[-16] = v9;
    *&v16[-8] = v11;
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10006A178(v9, v11);
    LOBYTE(v14) = v16[15];
  }

  else
  {
    __break(1u);
  }

  return v14;
}

- (BOOL)isPeerConnectedWithClientUUID:(id)d
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v11;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = (*(v4 + 8))(v6, v3);
  if (v12)
  {
    __chkstk_darwin(v13);
    *&v16[-16] = v10;
    OS_dispatch_queue.sync<A>(execute:)();
    v14 = v16[15];
    (*(v8 + 8))(v10, v7);
    LOBYTE(v13) = v14;
  }

  else
  {
    __break(1u);
  }

  return v13;
}

- (id)cancelRKERequestWithFunctionIdentifier:(unsigned __int16)identifier keyIdentifier:(id)keyIdentifier
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  keyIdentifierCopy = keyIdentifier;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v14;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v15)
  {
    __chkstk_darwin(result);
    LOWORD(v18[-4]) = identifier;
    v18[-3] = v11;
    v18[-2] = v13;
    sub_100068FC4(&qword_100509E98, &qword_100414A88);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10006A178(v11, v13);
    v17 = v18[1];

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)continueExecutingRKERequestWithFunctionIdentifier:(unsigned __int16)identifier actionIdentifier:(unsigned __int8)actionIdentifier arbitraryData:(id)data keyIdentifier:(id)keyIdentifier
{
  actionIdentifierCopy = actionIdentifier;
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  keyIdentifierCopy = keyIdentifier;
  if (data)
  {
    dataCopy = data;
    data = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0xF000000000000000;
  }

  v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = qword_10051B7F0;
  *v12 = qword_10051B7F0;
  (*(v10 + 104))(v12, enum case for DispatchPredicate.notOnQueue(_:), v9);
  v20;
  v21 = _dispatchPreconditionTest(_:)();
  result = (*(v10 + 8))(v12, v9);
  if (v21)
  {
    __chkstk_darwin(result);
    *&v24[-48] = identifier;
    v24[-46] = actionIdentifierCopy;
    *&v24[-40] = v17;
    *&v24[-32] = v19;
    *&v24[-24] = data;
    *&v24[-16] = v16;
    sub_100068FC4(&qword_100509E98, &qword_100414A88);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10006A178(v17, v19);
    sub_10006A2D0(data, v16);
    v23 = v26;

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)getReportsWithIsInternalClient:(BOOL)client
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v8;
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v7, v4);
  if (v9)
  {
    __chkstk_darwin(result);
    *(&v12 - 16) = client;
    sub_100068FC4(&qword_100509EA0, qword_100414A90);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10009393C(0, &qword_100509EA8, SESVehicleReport_ptr);
    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    return v11.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)sendPassthroughWithMessage:(id)message clientUUID:(id)d
{
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  messageCopy = message;
  dCopy = d;
  v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.notOnQueue(_:), v6);
  v19;
  v20 = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v9, v6);
  if (v20)
  {
    __chkstk_darwin(result);
    v23[-4] = v13;
    v23[-3] = v16;
    v23[-2] = v18;
    sub_100068FC4(&qword_100509E98, &qword_100414A88);
    OS_dispatch_queue.sync<A>(execute:)();
    sub_10006A178(v16, v18);
    v22 = v23[1];
    (*(v11 + 8))(v13, v10);

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)getEnduringRKERequestsInProgress
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6 = qword_10051B7F0;
  *v5 = qword_10051B7F0;
  (*(v3 + 104))(v5, enum case for DispatchPredicate.notOnQueue(_:), v2);
  v6;
  v7 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    sub_100068FC4(&qword_100509E90, &qword_100414A80);
    OS_dispatch_queue.sync<A>(execute:)();
    type metadata accessor for AlishaExternal.RequestInProgress();
    v9.super.isa = Array._bridgeToObjectiveC()().super.isa;

    return v9.super.isa;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)sendRKERequestWithFunctionIdentifier:(unsigned __int16)identifier actionIdentifier:(unsigned __int8)actionIdentifier keyIdentifier:(id)keyIdentifier requestType:(unint64_t)type actionType:(unint64_t)actionType arbitraryData:(id)data enduringRequestHandler:(id)aBlock authorization:(id)self0 completion:(id)self1
{
  v14 = _Block_copy(aBlock);
  v15 = _Block_copy(completion);
  keyIdentifierCopy = keyIdentifier;
  selfCopy = self;
  dataCopy = data;
  authorizationCopy = authorization;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (dataCopy)
  {
    v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_6:
    v25 = 0;
    if (authorizationCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v22 = 0;
  v24 = 0xF000000000000000;
  if (!v14)
  {
    goto LABEL_6;
  }

LABEL_3:
  v25 = swift_allocObject();
  *(v25 + 16) = v14;
  v14 = sub_1002E782C;
  if (authorizationCopy)
  {
LABEL_4:
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    goto LABEL_8;
  }

LABEL_7:
  v26 = 0;
  v28 = 0xF000000000000000;
LABEL_8:
  v29 = swift_allocObject();
  *(v29 + 16) = v15;
  sub_1002E5D90(identifier, actionIdentifier, v19, v21, type, actionType, v22, v24, v14, v25, v26, v28, sub_10021AC84, v29);

  sub_10006A2D0(v26, v28);
  sub_1000B2A4C(v14, v25);
  sub_10006A2D0(v22, v24);
  sub_10006A178(v19, v21);
}

- (void)subscribeToVehicleFunctionStatusEventsWithRange:(_NSRange)range peerUUID:(id)d
{
  length = range.length;
  location = range.location;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1002E66E4(location, length, v9);
  (*(v7 + 8))(v9, v6);
}

- (void)triggerHeadUnitPairingWith:(id)with keyIdentifier:(id)identifier
{
  withCopy = with;
  if (with)
  {
    identifierCopy = identifier;
    selfCopy = self;
    v8 = withCopy;
    withCopy = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    identifierCopy2 = identifier;
    selfCopy2 = self;
    v10 = 0xF000000000000000;
  }

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  sub_1002E6DD0(withCopy, v10, v13, v15);
  sub_10006A178(v13, v15);
  sub_10006A2D0(withCopy, v10);
}

- (_TtC10seserviced14AlishaExternal)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(AlishaExternal *)&v3 init];
}

@end