@interface FindMyLocateWrapper
- (_TtC13findmydeviced19FindMyLocateWrapper)init;
- (void)processLocationCommandPayload:(NSData *)payload completionHandler:(id)handler;
- (void)processLocationPayload:(NSData *)payload completionHandler:(id)handler;
- (void)publishLocation:(SPSecureLocation *)location completionHandler:(id)handler;
@end

@implementation FindMyLocateWrapper

- (void)processLocationPayload:(NSData *)payload completionHandler:(id)handler
{
  sub_1001F6D6C(&qword_100313A50, &qword_1002588F8);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = payload;
  v10[3] = v9;
  v10[4] = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100258970;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100258978;
  v13[5] = v12;
  payloadCopy = payload;
  selfCopy = self;
  sub_1001F72B8(0, 0, v8, &unk_100258980, v13);
}

- (void)processLocationCommandPayload:(NSData *)payload completionHandler:(id)handler
{
  sub_1001F6D6C(&qword_100313A50, &qword_1002588F8);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = payload;
  v10[3] = v9;
  v10[4] = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100258950;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100258958;
  v13[5] = v12;
  payloadCopy = payload;
  selfCopy = self;
  sub_1001F72B8(0, 0, v8, &unk_100258960, v13);
}

- (void)publishLocation:(SPSecureLocation *)location completionHandler:(id)handler
{
  sub_1001F6D6C(&qword_100313A50, &qword_1002588F8);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = location;
  v10[3] = v9;
  v10[4] = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100258908;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100258918;
  v13[5] = v12;
  locationCopy = location;
  selfCopy = self;
  sub_1001F72B8(0, 0, v8, &unk_100258928, v13);
}

- (_TtC13findmydeviced19FindMyLocateWrapper)init
{
  v3 = type metadata accessor for ClientOrigin();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC13findmydeviced19FindMyLocateWrapper_session;
  type metadata accessor for Session();
  (*(v4 + 104))(v6, enum case for ClientOrigin.other(_:), v3);
  v8 = static Session.sharedSession(origin:)();
  (*(v4 + 8))(v6, v3);
  *(&self->super.isa + v7) = v8;
  Wrapper = type metadata accessor for FindMyLocateWrapper();
  v11.receiver = self;
  v11.super_class = Wrapper;
  return [(FindMyLocateWrapper *)&v11 init];
}

@end