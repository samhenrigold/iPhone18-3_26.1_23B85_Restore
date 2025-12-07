@interface WalkSuggestionProvider
- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler;
- (_TtC23FitnessCoachingServices22WalkSuggestionProvider)init;
- (id)currentCalendar;
- (id)currentDate;
@end

@implementation WalkSuggestionProvider

- (_TtC23FitnessCoachingServices22WalkSuggestionProvider)init
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
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider), *&self->dateProvider[OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider + 16]);
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
  __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider), *&self->dateProvider[OBJC_IVAR____TtC23FitnessCoachingServices22WalkSuggestionProvider_dateProvider + 16]);
  selfCopy = self;
  sub_227804920();

  v8 = sub_2278C68B0();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (BOOL)enumerateActivitySummariesFromDateComponents:(id)components toDateComponents:(id)dateComponents error:(id *)error handler:(id)handler
{
  v6 = sub_2278C65D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_2278C65B0();
  sub_2278C65B0();
  v13 = *(v7 + 8);
  v13(v10, v6);
  v13(v12, v6);
  return 1;
}

@end