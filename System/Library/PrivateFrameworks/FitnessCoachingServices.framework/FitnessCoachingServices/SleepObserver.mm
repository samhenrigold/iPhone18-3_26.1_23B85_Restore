@interface SleepObserver
- (_TtC23FitnessCoachingServices13SleepObserver)init;
- (id)currentCalendar;
- (id)currentDate;
- (void)sleepDataProviderLastGoodMorningDismissedDateDidChange;
@end

@implementation SleepObserver

- (void)sleepDataProviderLastGoodMorningDismissedDateDidChange
{
  selfCopy = self;
  sub_227800F70();
}

- (_TtC23FitnessCoachingServices13SleepObserver)init
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
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider), *&self->dateProvider[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider + 16]);
  v7 = off_283AE99E0;
  type metadata accessor for DateProvider(0);
  selfCopy = self;
  v7(v6);

  v9 = sub_2278C67D0();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (id)currentCalendar
{
  v3 = sub_2278C6920();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider), *&self->dateProvider[OBJC_IVAR____TtC23FitnessCoachingServices13SleepObserver_dateProvider + 16]);
  selfCopy = self;
  sub_227804920();

  v8 = sub_2278C68B0();
  (*(v4 + 8))(v6, v3);

  return v8;
}

@end