@interface FBADataClientStub
- (_TtC18Feedback_Assistant17FBADataClientStub)init;
- (void)dataForURL:(id)l successWithResponse:(id)response error:(id)error;
- (void)dataForURLRequest:(id)request success:(id)success error:(id)error;
- (void)dataForURLRequest:(id)request successWithResponse:(id)response error:(id)error;
- (void)didLogInWithLoginUserInfo:(id)info completion:(id)completion;
- (void)didLogOutWithCompletion:(id)completion;
- (void)jsonForURL:(id)l success:(id)success error:(id)error;
- (void)jsonForURLRequest:(id)request success:(id)success error:(id)error;
@end

@implementation FBADataClientStub

- (void)didLogOutWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  v3[2]();

  _Block_release(v3);
}

- (void)didLogInWithLoginUserInfo:(id)info completion:(id)completion
{
  v4 = _Block_copy(completion);
  v4[2]();

  _Block_release(v4);
}

- (void)dataForURLRequest:(id)request success:(id)success error:(id)error
{
  v8 = type metadata accessor for URLRequest();
  __chkstk_darwin(v8 - 8);
  _Block_copy(success);
  _Block_copy(error);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  static os_log_type_t.info.getter();
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C29F0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100047484();
  *(v10 + 32) = 0xD000000000000018;
  *(v10 + 40) = 0x80000001000CE270;
  os_log(_:dso:log:type:_:)("%s", v11);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

- (void)dataForURLRequest:(id)request successWithResponse:(id)response error:(id)error
{
  v8 = type metadata accessor for URLRequest();
  __chkstk_darwin(v8 - 8);
  _Block_copy(response);
  _Block_copy(error);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  static os_log_type_t.info.getter();
  sub_100041AA0(&unk_100109860, qword_1000C2DA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1000C29F0;
  *(v10 + 56) = &type metadata for String;
  *(v10 + 64) = sub_100047484();
  *(v10 + 32) = 0xD000000000000024;
  *(v10 + 40) = 0x80000001000CE210;
  os_log(_:dso:log:type:_:)("%s", v11);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

- (void)jsonForURLRequest:(id)request success:(id)success error:(id)error
{
  v8 = sub_100041AA0(&qword_100109790, &unk_1000C29E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for URLRequest();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(success);
  v16 = _Block_copy(error);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  selfCopy = self;
  URLRequest.url.getter();
  v20 = type metadata accessor for URL();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v10, 1, v20) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100082ADC(v10, sub_1000855A8, v17, sub_1000855A0, v18);

    (*(v12 + 8))(v14, v11);
    (*(v21 + 8))(v10, v20);
  }
}

- (void)dataForURL:(id)l successWithResponse:(id)response error:(id)error
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v6 + 8))(v8, v5);
}

- (void)jsonForURL:(id)l success:(id)success error:(id)error
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(success);
  v13 = _Block_copy(error);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  selfCopy = self;
  sub_100082ADC(v11, sub_1000853F4, v14, sub_1000855A0, v15);

  (*(v9 + 8))(v11, v8);
}

- (_TtC18Feedback_Assistant17FBADataClientStub)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end