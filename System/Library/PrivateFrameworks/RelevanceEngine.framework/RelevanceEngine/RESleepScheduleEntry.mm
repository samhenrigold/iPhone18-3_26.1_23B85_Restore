@interface RESleepScheduleEntry
+ (id)sleepEntryForDatesWithCurrent:(id)current next:(id)next schedule:(id)schedule;
- (_TtC15RelevanceEngine20RESleepScheduleEntry)init;
- (_TtC15RelevanceEngine20RESleepScheduleEntry)initWithWakeupTime:(id)time bedtime:(id)bedtime;
@end

@implementation RESleepScheduleEntry

- (_TtC15RelevanceEngine20RESleepScheduleEntry)initWithWakeupTime:(id)time bedtime:(id)bedtime
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  if (time)
  {
    sub_2286A087C();
    v13 = sub_2286A089C();
    (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  }

  else
  {
    v14 = sub_2286A089C();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  }

  if (bedtime)
  {
    sub_2286A087C();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_2286A089C();
  v17 = *(*(v16 - 8) + 56);
  v17(v10, v15, 1, v16);
  v18 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime;
  v17(self + OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_wakeupTime, 1, 1, v16);
  v19 = OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime;
  v17(self + OBJC_IVAR____TtC15RelevanceEngine20RESleepScheduleEntry_bedtime, 1, 1, v16);
  swift_beginAccess();
  sub_228696C98(v12, self + v18);
  swift_endAccess();
  swift_beginAccess();
  sub_228696C98(v10, self + v19);
  swift_endAccess();
  v20 = type metadata accessor for RESleepScheduleEntry(0);
  v24.receiver = self;
  v24.super_class = v20;
  v21 = [(RESleepScheduleEntry *)&v24 init];
  sub_228696D08(v10);
  sub_228696D08(v12);
  return v21;
}

+ (id)sleepEntryForDatesWithCurrent:(id)current next:(id)next schedule:(id)schedule
{
  v6 = sub_2286A089C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_2286A087C();
  sub_2286A087C();
  scheduleCopy = schedule;
  v14 = _s15RelevanceEngine20RESleepScheduleEntryC05sleepE8ForDates7current4next8scheduleAC10Foundation4DateV_AJSo09HKSPSleepD0CtFZ_0(v12, v10, scheduleCopy);

  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);

  return v14;
}

- (_TtC15RelevanceEngine20RESleepScheduleEntry)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end