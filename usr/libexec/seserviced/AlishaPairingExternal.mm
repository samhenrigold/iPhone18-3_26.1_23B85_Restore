@interface AlishaPairingExternal
+ (_TtC10seserviced21AlishaPairingExternal)shared;
- (id)readAPDU;
- (id)sendAPDU:(id)u;
- (void)endSession;
- (void)onPassAddedFor:(id)for;
- (void)pairingEndedWithError:(id)error;
- (void)requestOwnerPairingWithSession:(id)session delegate:(id)delegate;
- (void)startHceEmulation;
- (void)stopHceEmulation;
- (void)stopOwnerPairing;
- (void)stopTransactionEmulation;
@end

@implementation AlishaPairingExternal

+ (_TtC10seserviced21AlishaPairingExternal)shared
{
  if (qword_1005018E0 != -1)
  {
    swift_once();
  }

  v3 = qword_10051B160;

  return v3;
}

- (void)requestOwnerPairingWithSession:(id)session delegate:(id)delegate
{
  sessionCopy = session;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000651E0(sessionCopy, delegate);

  swift_unknownObjectRelease();
}

- (void)stopOwnerPairing
{
  selfCopy = self;
  sub_1000673E8(&unk_1004C54C8, sub_10006A41C, &unk_1004C54E0);
}

- (void)startHceEmulation
{
  selfCopy = self;
  sub_1000673E8(&unk_1004C5478, sub_10006A414, &unk_1004C5490);
}

- (void)stopHceEmulation
{
  selfCopy = self;
  sub_1000673E8(&unk_1004C5428, sub_10006A40C, &unk_1004C5440);
}

- (void)stopTransactionEmulation
{
  selfCopy = self;
  sub_1000673E8(&unk_1004C5388, sub_10006A3B8, &unk_1004C53A0);
}

- (void)pairingEndedWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1000666B4(error);
}

- (id)sendAPDU:(id)u
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  uCopy = u;
  selfCopy = self;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v14 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v5);
  v14;
  v15 = _dispatchPreconditionTest(_:)();
  result = (*(v6 + 8))(v8, v5);
  if (v15)
  {
    __chkstk_darwin(result);
    v18[-4] = selfCopy;
    v18[-3] = v11;
    v18[-2] = v13;
    sub_100068FC4(&unk_100504740, &qword_100409110);
    OS_dispatch_queue.sync<A>(execute:)();

    sub_10006A178(v11, v13);
    if (v18[1])
    {
      v17 = _convertErrorToNSError(_:)();
    }

    else
    {
      v17 = 0;
    }

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)readAPDU
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_100501D90;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v9;
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v6, v3);
  if (v10)
  {
    __chkstk_darwin(result);
    v13[-2] = selfCopy;
    sub_100068FC4(&unk_100504740, &qword_100409110);
    OS_dispatch_queue.sync<A>(execute:)();

    if (v13[1])
    {
      v12 = _convertErrorToNSError(_:)();
    }

    else
    {
      v12 = 0;
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)endSession
{
  selfCopy = self;
  sub_1000673E8(&unk_1004C52E8, sub_10006A32C, &unk_1004C5300);
}

- (void)onPassAddedFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  sub_100069E80(v5, v7);
  sub_10006A178(v5, v7);
}

@end