@interface PFMaximumFrequencySchedule
- (BOOL)shouldExecuteOn:(id)on previousExecution:(id)execution;
- (PFMaximumFrequencySchedule)init;
- (PFMaximumFrequencySchedule)initWithFrequency:(int64_t)frequency;
- (PFMaximumFrequencySchedule)initWithInterval:(double)interval;
@end

@implementation PFMaximumFrequencySchedule

- (PFMaximumFrequencySchedule)initWithFrequency:(int64_t)frequency
{
  ScheduleFrequency.interval.getter(frequency);

  return [(PFMaximumFrequencySchedule *)self initWithInterval:?];
}

- (PFMaximumFrequencySchedule)initWithInterval:(double)interval
{
  *(&self->super.isa + OBJC_IVAR___PFMaximumFrequencySchedule_interval) = interval;
  v4.receiver = self;
  v4.super_class = type metadata accessor for MaximumFrequencySchedule();
  return [(PFMaximumFrequencySchedule *)&v4 init];
}

- (BOOL)shouldExecuteOn:(id)on previousExecution:(id)execution
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176DFC();
  if (execution)
  {
    sub_1D9176DFC();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(v10 + 56))(v8, v13, 1, v9);
  selfCopy = self;
  v15 = sub_1D9153088(v12, v8);

  sub_1D8CF5EF8(v8);
  (*(v10 + 8))(v12, v9);
  return v15;
}

- (PFMaximumFrequencySchedule)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end