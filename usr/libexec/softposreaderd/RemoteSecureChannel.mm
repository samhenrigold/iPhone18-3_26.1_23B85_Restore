@interface RemoteSecureChannel
- (_TtC14softposreaderd19RemoteSecureChannel)init;
- (void)securingRequest:(id)request force:(BOOL)force reply:(id)reply;
@end

@implementation RemoteSecureChannel

- (void)securingRequest:(id)request force:(BOOL)force reply:(id)reply
{
  forceCopy = force;
  v8 = type metadata accessor for URLRequest();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(reply);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  selfCopy = self;
  sub_100192AE0(v11, forceCopy, sub_100193210, v13);

  (*(v9 + 8))(v11, v8);
}

- (_TtC14softposreaderd19RemoteSecureChannel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end