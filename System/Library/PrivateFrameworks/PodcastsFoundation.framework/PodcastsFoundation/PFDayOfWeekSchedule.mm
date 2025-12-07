@interface PFDayOfWeekSchedule
+ (PFDayOfWeekSchedule)firstDayOfWeek;
- (BOOL)shouldExecuteOn:(id)on previousExecution:(id)execution;
- (PFDayOfWeekSchedule)init;
- (PFDayOfWeekSchedule)initWithDayOfWeek:(int64_t)week calendar:(id)calendar;
@end

@implementation PFDayOfWeekSchedule

+ (PFDayOfWeekSchedule)firstDayOfWeek
{
  v2 = sub_1D9176FDC();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  sub_1D9176FAC();
  v9 = sub_1D9176F2C();
  v10 = *(v3 + 16);
  v10(v5, v8, v2);
  v11 = type metadata accessor for DayOfWeekSchedule(0);
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek] = v9;
  v10(&v12[OBJC_IVAR___PFDayOfWeekSchedule_calendar], v5, v2);
  v16.receiver = v12;
  v16.super_class = v11;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);

  return v13;
}

- (PFDayOfWeekSchedule)initWithDayOfWeek:(int64_t)week calendar:(id)calendar
{
  v6 = sub_1D9176FDC();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176F8C();
  *(&self->super.isa + OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek) = week;
  (*(v7 + 16))(self + OBJC_IVAR___PFDayOfWeekSchedule_calendar, v9, v6);
  v10 = type metadata accessor for DayOfWeekSchedule(0);
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(PFDayOfWeekSchedule *)&v13 init];
  (*(v7 + 8))(v9, v6);
  return v11;
}

- (BOOL)shouldExecuteOn:(id)on previousExecution:(id)execution
{
  v6 = sub_1D9176FBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  v13 = sub_1D9176E3C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176DFC();
  if (execution)
  {
    sub_1D9176DFC();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  (*(v14 + 56))(v12, v17, 1, v13);
  (*(v7 + 104))(v9, *MEMORY[0x1E6969AB0], v6);
  selfCopy = self;
  v19 = sub_1D9176FCC();
  (*(v7 + 8))(v9, v6);
  sub_1D8CF5EF8(v12);
  (*(v14 + 8))(v16, v13);
  v20 = *(&selfCopy->super.isa + OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek);

  return v19 == v20;
}

- (PFDayOfWeekSchedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end