@interface ATXCarPlayWidgetMetricsLogger
- (ATXCarPlayWidgetMetricsLogger)init;
- (void)collectWithActivity:(ATXBackgroundSystemTask *)activity completion:(id)completion;
@end

@implementation ATXCarPlayWidgetMetricsLogger

- (void)collectWithActivity:(ATXBackgroundSystemTask *)activity completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = activity;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_226836628();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_226873628;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_226873638;
  v14[5] = v13;
  activityCopy = activity;
  selfCopy = self;
  sub_22679FE8C(0, 0, v9, &unk_226873648, v14);
}

- (ATXCarPlayWidgetMetricsLogger)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CarPlayWidgetMetricsLogger();
  return [(ATXCarPlayWidgetMetricsLogger *)&v3 init];
}

@end