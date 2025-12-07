@interface GSASTeardown
- (NSData)data;
- (NSData)sessionId;
- (_TtC21transparencyStaticKey12GSASTeardown)init;
- (int64_t)reason;
- (void)setReason:(int64_t)reason;
- (void)setSessionId:(id)id;
@end

@implementation GSASTeardown

- (NSData)sessionId
{
  v3 = type metadata accessor for SASTeardown(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v6();

  v8 = *v5;
  v9 = v5[1];
  sub_10005F0F8(*v5, v9);
  sub_10006CDDC(v5, type metadata accessor for SASTeardown);
  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v8, v9);

  return v10.super.isa;
}

- (void)setSessionId:(id)id
{
  idCopy = id;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & selfCopy->super.isa) + 0x68);
  sub_10005F0F8(v6, v8);
  v10 = v9(v14);
  v12 = *v11;
  v13 = v11[1];
  *v11 = v6;
  v11[1] = v8;
  sub_10005F14C(v12, v13);
  v10(v14, 0);

  sub_10005F14C(v6, v8);
}

- (int64_t)reason
{
  v3 = type metadata accessor for SASTeardown(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v6();
  v8 = *(v5 + 2);
  LOBYTE(v6) = v5[24];
  sub_10006CDDC(v5, type metadata accessor for SASTeardown);
  sub_100057054(v8, v6);

  return 0;
}

- (void)setReason:(int64_t)reason
{
  selfCopy = self;
  sub_100057040();
  if ((v5 & 0x100) != 0)
  {
    v6 = 0;
  }

  else
  {
    v6 = v4;
  }

  v7 = v5 | ((v5 & 0x100) >> 8);
  v8 = (*((swift_isaMask & selfCopy->super.isa) + 0x68))(v10);
  *(v9 + 16) = v6;
  *(v9 + 24) = v7 & 1;
  v8(v10, 0);
}

- (_TtC21transparencyStaticKey12GSASTeardown)init
{
  v3 = type metadata accessor for SASTeardown(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100057BCC(v5);
  sub_10006CEA4(v5, self + OBJC_IVAR____TtC21transparencyStaticKey12GSASTeardown_teardown, type metadata accessor for SASTeardown);
  v6 = type metadata accessor for GSASTeardown(0);
  v8.receiver = self;
  v8.super_class = v6;
  return [(GSASTeardown *)&v8 init];
}

- (NSData)data
{
  v3 = type metadata accessor for SASTeardown(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v6();
  sub_10006CE3C(&qword_1000AE3E8, type metadata accessor for SASTeardown, &unk_10008CAD8);
  v8 = Message.serializedData(partial:)();
  v10 = v9;

  sub_10006CDDC(v5, type metadata accessor for SASTeardown);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v8, v10);

  return v11.super.isa;
}

@end