@interface SDAirDropEndpointService
- (_TtC16DaemoniOSLibrary24SDAirDropEndpointService)init;
- (id)addClient:(id)client;
- (id)endpointsChangedHandler;
- (void)nearFieldDidTap;
- (void)removeClientWithToken:(id)token;
- (void)screenStateChangedWithNotification:(id)notification;
- (void)setEndpointsChangedHandler:(id)handler;
@end

@implementation SDAirDropEndpointService

- (void)screenStateChangedWithNotification:(id)notification
{
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  selfCopy = self;
  sub_1002B3098(0, 0, v6, &unk_100805120, v12);

  (*(v8 + 8))(v10, v7);
}

- (id)endpointsChangedHandler
{
  if (*(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
    v5[5] = v2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10047FD54;
    v5[3] = &unk_1008E3150;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setEndpointsChangedHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_1004984F0;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
  v8 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler);
  v9 = *(self + OBJC_IVAR____TtC16DaemoniOSLibrary24SDAirDropEndpointService_endpointsChangedHandler + 8);
  *v7 = v6;
  v7[1] = v4;
  selfCopy = self;
  sub_100015D04(v8, v9);
}

- (id)addClient:(id)client
{
  clientCopy = client;
  selfCopy = self;
  v6 = sub_10047FEF8(clientCopy);

  return v6;
}

- (void)removeClientWithToken:(id)token
{
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = qword_1009735E0;
  tokenCopy = token;
  selfCopy = self;
  v12 = tokenCopy;
  v13 = selfCopy;
  if (v9 != -1)
  {
    swift_once();
  }

  v14 = static AirDropActor.shared;
  v15 = sub_100005430(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = v15;
  v16[4] = v12;
  v16[5] = v13;

  sub_1002B3098(0, 0, v7, &unk_100805158, v16);
}

- (void)nearFieldDidTap
{
  selfCopy = self;
  sub_100495278();
}

- (_TtC16DaemoniOSLibrary24SDAirDropEndpointService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end