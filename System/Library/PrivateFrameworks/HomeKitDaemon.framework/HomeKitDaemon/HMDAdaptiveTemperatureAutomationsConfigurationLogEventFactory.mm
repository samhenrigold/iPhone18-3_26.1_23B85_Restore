@interface HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory
- (HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory)init;
- (HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory)initWithDataSource:(id)source;
- (HMDHouseholdMetricsDataSource)dataSource;
- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date;
@end

@implementation HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory

- (HMDHouseholdMetricsDataSource)dataSource
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory)initWithDataSource:(id)source
{
  *(&self->super.super.isa + OBJC_IVAR___HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory_dataSource) = source;
  v4.receiver = self;
  v4.super_class = HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory;
  swift_unknownObjectRetain();
  return [(HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory *)&v4 init];
}

- (id)logEventsPopulatedForHomeWithUUID:(id)d associatedWithDate:(id)date
{
  v5 = sub_22A4DB74C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DB7DC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22A4DB79C();
  sub_22A4DB70C();
  selfCopy = self;
  v14 = sub_2295F5FE4(v12);

  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  if (v14)
  {
    sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
    v15 = sub_22A4DD81C();
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end