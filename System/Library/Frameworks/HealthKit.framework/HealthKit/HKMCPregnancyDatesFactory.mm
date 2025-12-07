@interface HKMCPregnancyDatesFactory
+ (BOOL)isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:(id)date;
+ (BOOL)isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:(id)date pregnancyEndDate:(id)endDate;
+ (id)calculatePhysiologicalWashoutFromPregnancySample:(id)sample;
+ (id)calculatePregnancyStartForEstimatedDueDate:(id)date;
+ (id)gestationalAgeInComponentsOnDate:(id)date pregnancyStartDate:(id)startDate startTimeZoneName:(id)name;
- (HKMCPregnancyDatesFactory)init;
- (HKMCPregnancyDatesFactory)initWithPregnancySample:(id)sample state:(int64_t)state;
@end

@implementation HKMCPregnancyDatesFactory

- (HKMCPregnancyDatesFactory)initWithPregnancySample:(id)sample state:(int64_t)state
{
  *(&self->super.isa + OBJC_IVAR___HKMCPregnancyDatesFactory_pregnancySample) = sample;
  *(&self->super.isa + OBJC_IVAR___HKMCPregnancyDatesFactory_state) = state;
  v6.receiver = self;
  v6.super_class = HKMCPregnancyDatesFactory;
  sampleCopy = sample;
  return [(HKMCPregnancyDatesFactory *)&v6 init];
}

+ (id)calculatePregnancyStartForEstimatedDueDate:(id)date
{
  v3 = sub_191CC6148();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  sub_191CC60F8();
  sub_191CC6098();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v11 = sub_191CC60A8();
  v10(v9, v3);

  return v11;
}

+ (id)gestationalAgeInComponentsOnDate:(id)date pregnancyStartDate:(id)startDate startTimeZoneName:(id)name
{
  v5 = sub_191CC6148();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - v10;
  sub_191C1C2CC(0, &qword_1EADCADC0, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24 - v13;
  sub_191CC60F8();
  sub_191CC60F8();
  v15 = sub_191CC67B8();
  static HKMCPregnancyDatesFactory.gestationalAgeInComponents(on:pregnancyStart:startTimeZoneName:)(v11, v9, v15, v16, v14);

  v17 = *(v6 + 8);
  v17(v9, v5);
  v17(v11, v5);
  v18 = sub_191CC5DC8();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v14, 1, v18);
  v21 = 0;
  if (v20 != 1)
  {
    v22 = sub_191CC5D48();
    (*(v19 + 8))(v14, v18);
    v21 = v22;
  }

  return v21;
}

+ (BOOL)isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:(id)date
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_191CC60F8();
  v11 = sub_191CC60A8();
  sub_191CC6138();
  v12 = sub_191CC60A8();
  v13 = *(v5 + 8);
  v13(v8, v4);
  LOBYTE(self) = [self isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:v11 pregnancyEndDate:v12];

  v13(v10, v4);
  return self;
}

+ (BOOL)isPregnancyDurationPhysiologicallyPossibleForPregnancyStartDate:(id)date pregnancyEndDate:(id)endDate
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_191CC60F8();
  sub_191CC60F8();
  v11 = _sSo25HKMCPregnancyDatesFactoryC9HealthKitE42isPregnancyDurationPhysiologicallyPossible03forG5Start12pregnancyEndSb10Foundation4DateV_AItFZ_0(v10, v8);
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  return v11;
}

+ (id)calculatePhysiologicalWashoutFromPregnancySample:(id)sample
{
  sub_191C1C2CC(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  sampleCopy = sample;
  static HKMCPregnancyDatesFactory.calculatePhysiologicalWashout(fromPregnancySample:)(sampleCopy, v6);

  v8 = sub_191CC6148();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_191CC60A8();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (HKMCPregnancyDatesFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end