@interface SharePlayTogetherSession
- (BOOL)isEqual:(id)equal;
- (_TtC9MusicCore24SharePlayTogetherSession)init;
- (void)groupSession:(id)session didInvalidateWithError:(id)error;
- (void)groupSessionDidConnect:(id)connect;
@end

@implementation SharePlayTogetherSession

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SharePlayTogetherSession.isEqual(_:)(v8);

  sub_1000095E8(v8, &qword_1011ABB20, &unk_100EF1530);
  return v6 & 1;
}

- (_TtC9MusicCore24SharePlayTogetherSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)groupSessionDidConnect:(id)connect
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = connect;
  v10[5] = selfCopy;
  sub_100969440(0, 0, v6, &unk_100EFB0F8, v10);

  swift_unknownObjectRelease();
}

- (void)groupSession:(id)session didInvalidateWithError:(id)error
{
  sub_10010FC20(&qword_1011A7F00, &qword_100EEDE10);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  errorCopy = error;
  selfCopy = self;
  v11 = errorCopy;
  v12 = selfCopy;
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;
  v14[5] = v12;
  sub_100969440(0, 0, v7, &unk_100EFB0F0, v14);
}

@end