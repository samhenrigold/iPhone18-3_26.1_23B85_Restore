@interface WebPresentmentCABLEClient
- (_TtC8coreidvd25WebPresentmentCABLEClient)init;
- (void)encodeDigitalCredentialJSONCommandForAuthenticatorWithAuthenticatorSupportedExtensions:(id)extensions completionHandler:(id)handler;
@end

@implementation WebPresentmentCABLEClient

- (void)encodeDigitalCredentialJSONCommandForAuthenticatorWithAuthenticatorSupportedExtensions:(id)extensions completionHandler:(id)handler
{
  v6 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(handler);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = v10;
  v13[6] = sub_10043E99C;
  v13[7] = v11;

  sub_1003E653C(0, 0, v8, &unk_1006E2D10, v13);
}

- (_TtC8coreidvd25WebPresentmentCABLEClient)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end