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
    sub_1004BD284();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SharePlayTogetherSession.isEqual(_:)(v8);

  sub_100007214(v8, &qword_100605110, &unk_1004CD280);
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
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_1004BC4B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1004BC474();
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v9 = sub_1004BC464();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = connect;
  v10[5] = selfCopy;
  sub_1000FD6BC(0, 0, v6, &unk_1004D6F68, v10);

  swift_unknownObjectRelease();
}

- (void)groupSession:(id)session didInvalidateWithError:(id)error
{
  sub_100003ABC(&qword_1006014F0, &qword_1004C9B00);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = sub_1004BC4B4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1004BC474();
  errorCopy = error;
  selfCopy = self;
  v11 = errorCopy;
  v12 = selfCopy;
  v13 = sub_1004BC464();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;
  v14[5] = v12;
  sub_1000FD6BC(0, 0, v7, &unk_1004D6F60, v14);
}

@end