@interface TestProvider
- (void)relayRegisterServiceProvider:(id)provider;
- (void)relaySessionOpen:(id)open reconnect:(id)reconnect serviceIdentifier:(id)identifier destination:(id)destination transport:(int64_t)transport completion:(id)completion;
@end

@implementation TestProvider

- (void)relayRegisterServiceProvider:(id)provider
{
  v4 = _Block_copy(provider);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1000556CC(sub_100011C50, v5);
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
  v25 = swift_allocObject();
  *(v25 + 16) = v20;
  v26 = selfCopy;
  sub_100055838(v19, v12, v22, v24, v17, transportCopy, sub_10001131C, v25);

  v27 = *(v14 + 8);
  v27(v17, v13);
  sub_10004B2B0(v12);
  v27(v19, v13);
}

@end