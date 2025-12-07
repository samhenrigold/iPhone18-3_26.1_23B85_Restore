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
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = SharePlayTogetherSession.isEqual(_:)(v8);

  sub_12E1C(v8, &qword_E11F60, &unk_B1BC70);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v6 = &v11 - v5;
  v7 = sub_AB9990();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_AB9940();
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v9 = sub_AB9930();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = connect;
  v10[5] = selfCopy;
  sub_5E89D8(0, 0, v6, &unk_B25838, v10);

  swift_unknownObjectRelease();
}

- (void)groupSession:(id)session didInvalidateWithError:(id)error
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340, &qword_B18550);
  __chkstk_darwin();
  v7 = &v15 - v6;
  v8 = sub_AB9990();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_AB9940();
  errorCopy = error;
  selfCopy = self;
  v11 = errorCopy;
  v12 = selfCopy;
  v13 = sub_AB9930();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v11;
  v14[5] = v12;
  sub_5E89D8(0, 0, v7, &unk_B25830, v14);
}

@end