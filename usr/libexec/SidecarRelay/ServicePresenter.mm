@interface ServicePresenter
- (void)relayPresenterServiceExtensionReady:(id)ready;
- (void)relayPresenterStartServiceExtension:(id)extension completion:(id)completion;
- (void)relayRegisterServicePresenter:(id)presenter;
- (void)relayServicePresenterReady:(int64_t)ready completion:(id)completion;
- (void)relaySessionOpen:(id)open reconnect:(id)reconnect serviceIdentifier:(id)identifier destination:(id)destination transport:(int64_t)transport completion:(id)completion;
@end

@implementation ServicePresenter

- (void)relayRegisterServicePresenter:(id)presenter
{
  v4 = _Block_copy(presenter);
  _Block_copy(v4);
  selfCopy = self;
  sub_10004A470(selfCopy, v4);
  _Block_release(v4);
}

- (void)relaySessionOpen:(id)open reconnect:(id)reconnect serviceIdentifier:(id)identifier destination:(id)destination transport:(int64_t)transport completion:(id)completion
{
  selfCopy = self;
  transportCopy = transport;
  v10 = sub_10000FC6C(&qword_1000991D8, &qword_100075780);
  __chkstk_darwin(v10 - 8);
  v12 = &selfCopy - v11;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &selfCopy - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &selfCopy - v18;
  v20 = _Block_copy(completion);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  if (reconnect)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  sub_10001137C(v12, v21, 1, v13);
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v20);
  v25 = selfCopy;
  sub_10004A758(v19, v12, v22, v24, v17, transportCopy, v25, v20);
  _Block_release(v20);

  v26 = *(v14 + 8);
  v26(v17, v13);
  sub_10004B2B0(v12);
  v26(v19, v13);
}

- (void)relayPresenterStartServiceExtension:(id)extension completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_10004ABBC(v6, v8, sub_10001131C, v9);
}

- (void)relayPresenterServiceExtensionReady:(id)ready
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10004AE9C(v7, v9);

  (*(v5 + 8))(v7, v4);
}

- (void)relayServicePresenterReady:(int64_t)ready completion:(id)completion
{
  v6 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v6;
  selfCopy = self;
  sub_10004F1DC(ready);
}

@end