@interface TypicalDayProvider
- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler;
- (_TtC23FitnessCoachingServices18TypicalDayProvider)init;
- (id)currentCalendar;
- (id)currentDate;
- (id)firstOnWristDateToday;
@end

@implementation TypicalDayProvider

- (_TtC23FitnessCoachingServices18TypicalDayProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)currentDate
{
  v3 = sub_2278C6820();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource), *&self->dataSource[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource + 16]);
  __swift_project_boxed_opaque_existential_1((*v7 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider), *(*v7 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider + 24));
  v8 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  selfCopy = self;
  v8(v6);

  v10 = sub_2278C67D0();
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (id)currentCalendar
{
  v3 = sub_2278C6920();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource), *&self->dataSource[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource + 16]);
  __swift_project_boxed_opaque_existential_1((*v7 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider), *(*v7 + OBJC_IVAR____TtC23FitnessCoachingServices20TypicalDayDataSource_dateProvider + 24));
  selfCopy = self;
  sub_227804920();

  v9 = sub_2278C68B0();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (id)firstOnWristDateToday
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7D60A8, qword_2278C9730);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource), *&self->dataSource[OBJC_IVAR____TtC23FitnessCoachingServices18TypicalDayProvider_dataSource + 16]);
  selfCopy = self;
  sub_22785D15C(v5);

  v7 = sub_2278C6820();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_2278C67D0();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler
{
  v8 = sub_2278C65D0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v19[-v13];
  v15 = _Block_copy(handler);
  sub_2278C65B0();
  sub_2278C65B0();
  _Block_copy(v15);
  selfCopy = self;
  sub_2278A8348(v14, v12, selfCopy, v15);
  _Block_release(v15);
  _Block_release(v15);

  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v14, v8);
  return 1;
}

@end