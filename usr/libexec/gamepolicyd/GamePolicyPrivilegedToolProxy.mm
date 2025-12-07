@interface GamePolicyPrivilegedToolProxy
- (id)requestLaunchGamesApp;
- (void)ping;
- (void)requestCCUIGameModeStatusInfoWithReply:(id)reply;
- (void)requestCCUIGameModeStatusWithReply:(id)reply;
- (void)requestGameModeWithCompletionHandler:(id)handler;
- (void)requestGetIgnoreDeviceRestrictionsWithReply:(id)reply;
- (void)requestLaunchGameOverlayWithConditional:(BOOL)conditional fallbackToApp:(BOOL)app withReply:(id)reply;
- (void)requestSEMAllowlistWithReply:(id)reply;
- (void)requestSEMClearAllowlistWithReply:(id)reply;
- (void)requestSetGameModeWithGameModeEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)requestSetIgnoreDeviceRestrictions:(BOOL)restrictions withReply:(id)reply;
@end

@implementation GamePolicyPrivilegedToolProxy

- (void)requestLaunchGameOverlayWithConditional:(BOOL)conditional fallbackToApp:(BOOL)app withReply:(id)reply
{
  v7 = _Block_copy(reply);
  _Block_copy(v7);

  sub_100020FC4(conditional, app, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)ping
{

  sub_10001ED1C();
}

- (void)requestSetIgnoreDeviceRestrictions:(BOOL)restrictions withReply:(id)reply
{
  v4 = _Block_copy(reply);
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.setter();

  v4[2](v4, 1);

  _Block_release(v4);
}

- (void)requestGetIgnoreDeviceRestrictionsWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  v4 = dispatch thunk of GlobalPreferences.ignoreDeviceRestrictions.getter();

  v3[2](v3, v4 & 1);

  _Block_release(v3);
}

- (void)requestSEMAllowlistWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  dispatch thunk of GlobalPreferences.semAllowList.getter();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3[2](v3, isa);

  _Block_release(v3);
}

- (void)requestSEMClearAllowlistWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  type metadata accessor for GlobalPreferences();
  static GlobalPreferences.defaultSEMAllowList.getter();
  dispatch thunk of static GlobalPreferences.shared.getter();

  dispatch thunk of GlobalPreferences.semAllowList.setter();

  isa = Array._bridgeToObjectiveC()().super.isa;

  v3[2](v3, isa);

  _Block_release(v3);
}

- (void)requestCCUIGameModeStatusInfoWithReply:(id)reply
{
  v3 = _Block_copy(reply);

  v4 = sub_10001F414(0, 1);
  v3[2](v3, v4);

  _Block_release(v3);
}

- (void)requestCCUIGameModeStatusWithReply:(id)reply
{
  v3 = _Block_copy(reply);

  v4 = sub_10001F414(0, 1);
  v5 = dispatch thunk of GameModeCCUIStatusInfo.revlock.getter();

  v3[2](v3, v5);

  _Block_release(v3);
}

- (void)requestGameModeWithCompletionHandler:(id)handler
{
  v5 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10003EC58;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10003EC60;
  v12[5] = v11;

  sub_100020540(0, 0, v7, &unk_10003EC68, v12);
}

- (void)requestSetGameModeWithGameModeEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v7 = sub_100003870(&qword_100054460, &qword_10003E7B8);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = enabled;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10003EC08;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10003EC18;
  v14[5] = v13;

  sub_100020540(0, 0, v9, &unk_10003EC28, v14);
}

- (id)requestLaunchGamesApp
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.tool.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "requestLaunchGamesApp", v6, 2u);
  }

  (*(v1 + 8))(v3, v0);
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  return [objc_opt_self() launchApp];
}

@end