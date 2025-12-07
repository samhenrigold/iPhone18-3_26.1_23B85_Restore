@interface ODCurareEvaluationAndReportingModuleInternal
- (BOOL)generatePETReportAndReturnError:(id *)error;
- (ODCurareEvaluationAndReportingModuleInternal)init;
- (ODCurareEvaluationAndReportingModuleInternal)initWithBundleIdentifier:(id)identifier dataProviderInstance:(id)instance evaluationInstance:(id)evaluationInstance personalizationInstance:(id)personalizationInstance pruningPolicy:(id)policy error:(id *)error;
- (id)evaluateDefaultModelWithDefaultModelPath:(id)path modelConfiguration:(id)configuration error:(id *)error;
- (id)getEvaluationResults;
- (id)getSelectedModelAndReturnError:(id *)error;
- (id)trainAndEvaluateAdaptedModelsWithAdaptableModelPath:(id)path modelConfiguration:(id)configuration error:(id *)error;
- (id)trainAndEvaluateModelsWithCandidateModels:(id)models personalizationPolicy:(id)policy modelSelectionPolicy:(id)selectionPolicy error:(id *)error;
@end

@implementation ODCurareEvaluationAndReportingModuleInternal

- (ODCurareEvaluationAndReportingModuleInternal)initWithBundleIdentifier:(id)identifier dataProviderInstance:(id)instance evaluationInstance:(id)evaluationInstance personalizationInstance:(id)personalizationInstance pruningPolicy:(id)policy error:(id *)error
{
  v12 = sub_25C82E0AC();
  v14 = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  policyCopy = policy;
  return ODCurareEvaluationAndReportingModule.init(bundleIdentifier:dataProviderInstance:evaluationInstance:personalizationInstance:pruningPolicy:)(v12, v14, instance, evaluationInstance, personalizationInstance, policy);
}

- (id)getSelectedModelAndReturnError:(id *)error
{
  selfCopy = self;
  sub_25C7EA7A0();
  v5 = v4;

  return v5;
}

- (id)trainAndEvaluateModelsWithCandidateModels:(id)models personalizationPolicy:(id)policy modelSelectionPolicy:(id)selectionPolicy error:(id *)error
{
  sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
  v9 = sub_25C82E1DC();
  policyCopy = policy;
  selectionPolicyCopy = selectionPolicy;
  selfCopy = self;
  sub_25C7EC4B4(v9, policyCopy, selectionPolicyCopy);
  v14 = v13;

  return v14;
}

- (id)evaluateDefaultModelWithDefaultModelPath:(id)path modelConfiguration:(id)configuration error:(id *)error
{
  v7 = sub_25C82DEAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C82DE7C();
  configurationCopy = configuration;
  selfCopy = self;
  v13 = sub_25C7ECD40(v10, configuration);
  (*(v8 + 8))(v10, v7);

  return v13;
}

- (id)trainAndEvaluateAdaptedModelsWithAdaptableModelPath:(id)path modelConfiguration:(id)configuration error:(id *)error
{
  v7 = sub_25C82DEAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C82DE7C();
  configurationCopy = configuration;
  selfCopy = self;
  sub_25C7ED28C(selfCopy, configuration);
  v14 = v13;
  (*(v8 + 8))(v10, v7);

  return v14;
}

- (BOOL)generatePETReportAndReturnError:(id *)error
{
  selfCopy = self;
  sub_25C7EF3D0();

  return 1;
}

- (id)getEvaluationResults
{
  selfCopy = self;
  sub_25C7EF5EC();

  v3 = sub_25C82E01C();

  return v3;
}

- (ODCurareEvaluationAndReportingModuleInternal)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end