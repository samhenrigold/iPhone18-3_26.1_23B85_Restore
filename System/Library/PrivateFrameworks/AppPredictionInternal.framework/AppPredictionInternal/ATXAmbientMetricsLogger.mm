@interface ATXAmbientMetricsLogger
- (ATXAmbientMetricsLogger)init;
- (void)collectWithActivity:(id)activity;
@end

@implementation ATXAmbientMetricsLogger

- (void)collectWithActivity:(id)activity
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  activityCopy = activity;
  selfCopy = self;
  if ([activityCopy setContinue])
  {
    v10 = sub_226836628();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = activityCopy;
    v11[5] = selfCopy;
    v11[6] = ObjectType;
    sub_2267AEA94(0, 0, v8, &unk_226873AC8, v11);
  }

  else
  {

    v12 = selfCopy;
  }
}

- (ATXAmbientMetricsLogger)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AmbientMetricsLogger();
  return [(ATXAmbientMetricsLogger *)&v3 init];
}

@end