@interface GamePolicyAppProxy
- (uint64_t)ping;
- (void)enableTransientStateUpdates;
- (void)requestProcessInfoWithReply:(id)reply;
@end

@implementation GamePolicyAppProxy

- (void)requestProcessInfoWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v3[2](v3, 0);

  _Block_release(v3);
}

- (void)enableTransientStateUpdates
{

  sub_1000241E4();
}

- (uint64_t)ping
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.appCoordinator.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "GamePolicyAppProxy: ping!", v6, 2u);
  }

  return (*(v1 + 8))(v3, v0);
}

@end