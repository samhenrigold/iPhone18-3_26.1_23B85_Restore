@interface HMDEventCounterGroupBridge
- (HMDEventCounterGroupBridge)initWithContext:(id)context serializedEventCounters:(id)counters uptimeProvider:(id)provider;
- (NSDictionary)eventCounters;
- (double)durationForCounter:(id)counter;
- (double)durationForCounter:(id)counter forDate:(id)date;
- (id)dateQueryBlock;
- (id)eventCountersForDate:(id)date;
- (int64_t)fetchEventCounterForEventName:(id)name;
- (int64_t)fetchEventCounterForEventName:(id)name forDate:(id)date;
- (int64_t)fetchMaxValueForStatisticsName:(id)name;
- (int64_t)summedEventCounters;
- (int64_t)summedEventCountersForDate:(id)date;
- (void)addValue:(int64_t)value toStatisticsName:(id)name;
- (void)incrementEventCounterForEventName:(id)name withValue:(int64_t)value;
- (void)iterateCountersUsingBlock:(id)block;
- (void)pauseDurationCounter:(id)counter;
- (void)resumeDurationCounter:(id)counter;
@end

@implementation HMDEventCounterGroupBridge

- (void)incrementEventCounterForEventName:(id)name withValue:(int64_t)value
{
  sub_22A4DD5EC();
  selfCopy = self;
  sub_22A4DBE0C();

  context = [(HMDEventCounterGroup *)selfCopy context];
  if (context)
  {
    [(HMDEventCounterContext *)context counterChanged];
    swift_unknownObjectRelease();
  }
}

- (id)dateQueryBlock
{
  v2 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock + 8);
  v5[4] = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2297C51B8;
  v5[3] = &block_descriptor_38;
  v3 = _Block_copy(v5);

  return v3;
}

- (void)resumeDurationCounter:(id)counter
{
  sub_22A4DD5EC();
  selfCopy = self;
  sub_22A4DBDFC();
}

- (void)pauseDurationCounter:(id)counter
{
  sub_22A4DD5EC();
  selfCopy = self;
  sub_22A4DBDEC();

  context = [(HMDEventCounterGroup *)selfCopy context];
  if (context)
  {
    [(HMDEventCounterContext *)context counterChanged];
    swift_unknownObjectRelease();
  }
}

- (void)addValue:(int64_t)value toStatisticsName:(id)name
{
  sub_22A4DD5EC();
  selfCopy = self;
  sub_22A4DBEBC();

  context = [(HMDEventCounterGroup *)selfCopy context];
  if (context)
  {
    [(HMDEventCounterContext *)context counterChanged];
    swift_unknownObjectRelease();
  }
}

- (int64_t)fetchEventCounterForEventName:(id)name
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  nameCopy = name;
  selfCopy = self;
  v9();
  v12 = sub_22A4DB6AC();
  (*(v6 + 8))(v8, v5);
  v13 = [(HMDEventCounterGroupBridge *)selfCopy fetchEventCounterForEventName:nameCopy forDate:v12];

  return v13;
}

- (int64_t)fetchEventCounterForEventName:(id)name forDate:(id)date
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DD5EC();
  sub_22A4DB70C();
  selfCopy = self;
  v10 = sub_22A4DBEAC();
  LOBYTE(self) = v11;

  (*(v6 + 8))(v8, v5);

  if (self)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

- (double)durationForCounter:(id)counter
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  counterCopy = counter;
  selfCopy = self;
  v9();
  v12 = sub_22A4DB6AC();
  (*(v6 + 8))(v8, v5);
  [(HMDEventCounterGroupBridge *)selfCopy durationForCounter:counterCopy forDate:v12];
  v14 = v13;

  return v14;
}

- (double)durationForCounter:(id)counter forDate:(id)date
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DD5EC();
  sub_22A4DB70C();
  selfCopy = self;
  v10 = COERCE_DOUBLE(sub_22A4DBEFC());
  LOBYTE(self) = v11;

  (*(v6 + 8))(v8, v5);

  result = v10;
  if (self)
  {
    return 0.0;
  }

  return result;
}

- (int64_t)fetchMaxValueForStatisticsName:(id)name
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881420, qword_22A583C08);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  sub_22A4DD5EC();
  v11 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  selfCopy = self;
  v11();
  sub_22A4DBE3C();

  (*(v5 + 8))(v7, v4);
  v13 = sub_22A4DC09C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v10, 1, v13) == 1)
  {

    sub_2297C6CF8(v10);
    return 0;
  }

  else
  {
    v16 = sub_22A4DC06C();

    (*(v14 + 8))(v10, v13);
    return v16;
  }
}

- (NSDictionary)eventCounters
{
  v3 = sub_22A4DB74C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  selfCopy = self;
  v7();
  v9 = sub_22A4DB6AC();
  (*(v4 + 8))(v6, v3);
  v10 = [(HMDEventCounterGroupBridge *)selfCopy eventCountersForDate:v9];

  sub_229678A8C();
  sub_22A4DD49C();

  v11 = sub_22A4DD47C();

  return v11;
}

- (id)eventCountersForDate:(id)date
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  selfCopy = self;
  v9 = sub_22A4DBEDC();
  sub_2296F8234(v9);
  v11 = v10;

  v12 = sub_22A4DBF1C();
  sub_2296F8418(v12);
  v14 = v13;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v11;
  sub_2297C6898(v14, sub_2297C6528, 0, isUniquelyReferenced_nonNull_native, &v19);

  (*(v5 + 8))(v7, v4);
  sub_229678A8C();
  v16 = sub_22A4DD47C();

  return v16;
}

- (int64_t)summedEventCounters
{
  v3 = sub_22A4DB74C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(self + OBJC_IVAR___HMDEventCounterGroupBridge_dateQueryBlock);
  selfCopy = self;
  v7();
  v9 = sub_22A4DB6AC();
  (*(v4 + 8))(v6, v3);
  v10 = [(HMDEventCounterGroupBridge *)selfCopy summedEventCountersForDate:v9];

  return v10;
}

- (int64_t)summedEventCountersForDate:(id)date
{
  v4 = sub_22A4DB74C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  selfCopy = self;
  sub_2297C6258(v7);
  v10 = v9;

  (*(v5 + 8))(v7, v4);
  return v10;
}

- (void)iterateCountersUsingBlock:(id)block
{
  v4 = _Block_copy(block);
  _Block_copy(v4);
  selfCopy = self;
  sub_2297C6B34(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (HMDEventCounterGroupBridge)initWithContext:(id)context serializedEventCounters:(id)counters uptimeProvider:(id)provider
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end