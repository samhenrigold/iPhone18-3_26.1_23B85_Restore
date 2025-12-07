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
    sub_100573D58();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SharePlayTogetherSession.isEqual(_:)(v8);

  sub_10001036C(v8, &qword_1006EA040, &unk_10058A5D0);
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
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_100572F48();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_100572F08();
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v9 = sub_100572EF8();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = connect;
  v10[5] = selfCopy;
  sub_1001B3FAC(0, 0, v6, &unk_1005942B8, v10);

  swift_unknownObjectRelease();
}

- (void)groupSession:(id)session didInvalidateWithError:(id)error
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = sub_100572F48();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_100572F08();
  errorCopy = error;
  selfCopy = self;
  v11 = errorCopy;
  v12 = selfCopy;
  v13 = sub_100572EF8();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;
  v14[5] = v12;
  sub_1001B3FAC(0, 0, v7, &unk_1005942B0, v14);
}

@end