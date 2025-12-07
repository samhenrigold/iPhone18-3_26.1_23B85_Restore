@interface ULBiomeEventLocationSemantic
- (NSUUID)loiIdentifier;
- (_TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic)init;
- (_TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic)initWithTimestamp:(id)timestamp starting:(BOOL)starting locationType:(int)type loiIdentifier:(id)identifier;
@end

@implementation ULBiomeEventLocationSemantic

- (NSUUID)loiIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_2591F56BC(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier, &v12 - v4);
  v6 = sub_2592121D0();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_259212170();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (_TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic)initWithTimestamp:(id)timestamp starting:(BOOL)starting locationType:(int)type loiIdentifier:(id)identifier
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99BB20, &qword_259226220);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_259212160();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212140();
  if (identifier)
  {
    sub_259212190();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_2592121D0();
  (*(*(v18 - 8) + 56))(v12, v17, 1, v18);
  (*(v14 + 16))(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_timestamp, v16, v13);
  *(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_starting) = starting;
  *(self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_locationType) = type;
  sub_2591F56BC(v12, self + OBJC_IVAR____TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic_loiIdentifier);
  v19 = type metadata accessor for ULBiomeEventLocationSemantic(0);
  v22.receiver = self;
  v22.super_class = v19;
  v20 = [(ULBiomeEvent *)&v22 init];
  sub_2591F572C(v12);
  (*(v14 + 8))(v16, v13);
  return v20;
}

- (_TtC19MicroLocationDaemon28ULBiomeEventLocationSemantic)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end