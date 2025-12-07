@interface MRDNearbyInvitation
+ (void)createWithNearbyGroup:(_TtC12mediaremoted14MRDNearbyGroup *)group displayName:(NSString *)name routeType:(unsigned __int8)type completion:(id)completion;
- (NSData)invitationData;
- (NSString)description;
- (_TtC12mediaremoted19MRDNearbyInvitation)init;
- (void)markAsUsed;
@end

@implementation MRDNearbyInvitation

- (NSData)invitationData
{
  selfCopy = self;
  v3 = dispatch thunk of NearbyInvitation.invitationData.getter();
  v5 = v4;

  v6.super.isa = Data._bridgeToObjectiveC()().super.isa;
  sub_1001C4034(v3, v5);

  return v6.super.isa;
}

+ (void)createWithNearbyGroup:(_TtC12mediaremoted14MRDNearbyGroup *)group displayName:(NSString *)name routeType:(unsigned __int8)type completion:(id)completion
{
  v11 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(completion);
  v15 = swift_allocObject();
  *(v15 + 16) = group;
  *(v15 + 24) = name;
  *(v15 + 32) = type;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10044F2A8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10044F2B8;
  v18[5] = v17;
  groupCopy = group;
  nameCopy = name;
  sub_1001D34BC(0, 0, v13, &unk_10044F2C8, v18);
}

- (NSString)description
{
  swift_getObjectType();
  selfCopy = self;
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 0x3D6469203ALL;
  v5._object = 0xE500000000000000;
  String.append(_:)(v5);
  v8._countAndFlagsBits = (*((swift_isaMask & selfCopy->super.isa) + 0x60))(v6, v7);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

- (void)markAsUsed
{
  v3 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_1001CB290(0, 0, v5, &unk_10044F298, v7);
}

- (_TtC12mediaremoted19MRDNearbyInvitation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end