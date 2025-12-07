@interface ATDispatchConnector
- (_TtC15ScreenTimeAgent19ATDispatchConnector)init;
- (void)tellAskToAboutAskForTimeResponseWithAnswer:(int64_t)answer timeApproved:(NSNumber *)approved requestIdentifier:(NSString *)identifier responderDSID:(NSNumber *)d completionHandler:(id)handler;
@end

@implementation ATDispatchConnector

- (void)tellAskToAboutAskForTimeResponseWithAnswer:(int64_t)answer timeApproved:(NSNumber *)approved requestIdentifier:(NSString *)identifier responderDSID:(NSNumber *)d completionHandler:(id)handler
{
  v13 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = answer;
  v17[3] = approved;
  v17[4] = identifier;
  v17[5] = d;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100141920;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_100140550;
  v20[5] = v19;
  approvedCopy = approved;
  identifierCopy = identifier;
  dCopy = d;
  selfCopy = self;
  sub_10010D4C0(0, 0, v15, &unk_100140230, v20);
}

- (_TtC15ScreenTimeAgent19ATDispatchConnector)init
{
  v3 = OBJC_IVAR____TtC15ScreenTimeAgent19ATDispatchConnector____lazy_storage___logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v6.receiver = self;
  v6.super_class = type metadata accessor for ATDispatchConnector(0);
  return [(ATDispatchConnector *)&v6 init];
}

@end