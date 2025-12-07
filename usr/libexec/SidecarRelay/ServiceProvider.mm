@interface ServiceProvider
- (void)relayServiceProviderReady:(id)ready;
- (void)relaySessionOpen:(id)open reconnect:(id)reconnect serviceIdentifier:(id)identifier destination:(id)destination transport:(int64_t)transport completion:(id)completion;
@end

@implementation ServiceProvider

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
  sub_100050B08(v19, v12, v22, v24, v17, transportCopy, v25, v20);
  _Block_release(v20);

  v26 = *(v14 + 8);
  v26(v17, v13);
  sub_100011668(v12, &qword_1000991D8, &qword_100075780);
  v26(v19, v13);
}

- (void)relayServiceProviderReady:(id)ready
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000512B0(v7, v9);

  (*(v5 + 8))(v7, v4);
}

@end