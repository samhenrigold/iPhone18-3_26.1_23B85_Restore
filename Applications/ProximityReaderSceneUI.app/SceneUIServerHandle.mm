@interface SceneUIServerHandle
- (_TtC22ProximityReaderSceneUI19SceneUIServerHandle)init;
- (void)activateRemoteUI:(id)i internalEndpoint:(id)endpoint reply:(id)reply;
- (void)deactivateRemoteUI:(id)i;
- (void)invalidateRemoteUI:(id)i;
@end

@implementation SceneUIServerHandle

- (void)activateRemoteUI:(id)i internalEndpoint:(id)endpoint reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  endpointCopy = endpoint;
  selfCopy = self;
  sub_100007AA0(v8, endpointCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)invalidateRemoteUI:(id)i
{
  v4 = _Block_copy(i);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_100005B58(sub_1000079D0, v5);
}

- (void)deactivateRemoteUI:(id)i
{
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  __chkstk_darwin(v4 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  v8 = sub_100008C08();
  sub_1000023F4(v8, v6);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {

    sub_100002FAC(v6, &qword_100021930, &unk_100013460);
  }

  else
  {
    v11 = sub_100008DA0();
    v12 = sub_100008DA8();
    sub_100008DB4(v11 & 1, selfCopy, 0xD000000000000016, 0x8000000100014F20, v12, v13);

    (*(v10 + 8))(v6, v9);
  }
}

- (_TtC22ProximityReaderSceneUI19SceneUIServerHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end