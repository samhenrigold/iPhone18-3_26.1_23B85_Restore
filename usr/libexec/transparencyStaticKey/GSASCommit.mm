@interface GSASCommit
- (NSData)aCommitRandom;
- (NSData)data;
- (NSData)publicInfo;
- (NSData)sessionId;
- (_TtC21transparencyStaticKey10GSASCommit)init;
- (void)setACommitRandom:(id)random;
- (void)setPublicInfo:(id)info;
- (void)setSessionId:(id)id;
@end

@implementation GSASCommit

- (NSData)sessionId
{
  v3 = type metadata accessor for SASCommit(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v6();

  v8 = *v5;
  v9 = v5[1];
  sub_10005F0F8(*v5, v9);
  sub_10006CDDC(v5, type metadata accessor for SASCommit);
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

- (NSData)publicInfo
{
  v3 = type metadata accessor for SASCommit(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v6();

  v8 = *(v5 + 2);
  v9 = *(v5 + 3);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v5, type metadata accessor for SASCommit);
  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v8, v9);

  return v10.super.isa;
}

- (void)setPublicInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & selfCopy->super.isa) + 0x68);
  sub_10005F0F8(v6, v8);
  v10 = v9(v14);
  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  sub_10005F14C(v12, v13);
  v10(v14, 0);

  sub_10005F14C(v6, v8);
}

- (NSData)aCommitRandom
{
  v3 = type metadata accessor for SASCommit(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v6();

  v8 = *(v5 + 4);
  v9 = *(v5 + 5);
  sub_10005F0F8(v8, v9);
  sub_10006CDDC(v5, type metadata accessor for SASCommit);
  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v8, v9);

  return v10.super.isa;
}

- (void)setACommitRandom:(id)random
{
  randomCopy = random;
  selfCopy = self;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = *((swift_isaMask & selfCopy->super.isa) + 0x68);
  sub_10005F0F8(v6, v8);
  v10 = v9(v14);
  v12 = *(v11 + 32);
  v13 = *(v11 + 40);
  *(v11 + 32) = v6;
  *(v11 + 40) = v8;
  sub_10005F14C(v12, v13);
  v10(v14, 0);

  sub_10005F14C(v6, v8);
}

- (_TtC21transparencyStaticKey10GSASCommit)init
{
  v3 = type metadata accessor for SASCommit(0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000579A0(v5);
  sub_10006CEA4(v5, self + OBJC_IVAR____TtC21transparencyStaticKey10GSASCommit_commit, type metadata accessor for SASCommit);
  v6 = type metadata accessor for GSASCommit(0);
  v8.receiver = self;
  v8.super_class = v6;
  return [(GSASCommit *)&v8 init];
}

- (NSData)data
{
  v3 = type metadata accessor for SASCommit(0);
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v6();
  sub_10006CE3C(&qword_1000AE3B8, type metadata accessor for SASCommit, &unk_10008C808);
  v8 = Message.serializedData(partial:)();
  v10 = v9;

  sub_10006CDDC(v5, type metadata accessor for SASCommit);
  v11.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10005F14C(v8, v10);

  return v11.super.isa;
}

@end