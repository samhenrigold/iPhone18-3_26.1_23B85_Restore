@interface ATXToolKitActionStreamWrapper
+ (BOOL)intentApprovedForSpotlightWithBundleID:(id)d intentClassName:(id)name;
+ (id)canonicalIdentifierForEncodedToolInvocationWithEncodedInvocation:(id)invocation;
+ (id)lastDateForToolKitActionEvent;
+ (id)toolIDForSiriKitIntentWithBundleID:(id)d intentClassName:(id)name;
+ (id)toolKitEventsWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit bundleIDFilter:(id)filter;
+ (void)enumerateToolKitEventsWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit bundleIDFilter:(id)filter reversed:(BOOL)reversed enumerator:(id)enumerator;
+ (void)fetchTitlesFromToolInvocations:(NSArray *)invocations completionHandler:(id)handler;
- (ATXToolKitActionStreamWrapper)init;
@end

@implementation ATXToolKitActionStreamWrapper

+ (void)fetchTitlesFromToolInvocations:(NSArray *)invocations completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FFF0, &qword_260DF8CD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = invocations;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_260DF5B34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_260DF8CE0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_260DF8CF0;
  v14[5] = v13;
  invocationsCopy = invocations;
  sub_260DED444(0, 0, v9, &unk_260DF8D00, v14);
}

+ (void)enumerateToolKitEventsWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit bundleIDFilter:(id)filter reversed:(BOOL)reversed enumerator:(id)enumerator
{
  reversedCopy = reversed;
  v12 = sub_260DF5444();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  v19 = _Block_copy(enumerator);
  sub_260DF5424();
  sub_260DF5424();
  if (filter)
  {
    v20 = sub_260DF59C4();
    filter = v21;
  }

  else
  {
    v20 = 0;
  }

  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  _s25ProactivePredictionClient26ToolKitActionStreamWrapperC09enumeratedE6Events9startDate03endL05limit14bundleIDFilter8reversed10enumeratory10Foundation0L0V_AMSuSSSgSbyAA0defG5EventCctFZ_0(v18, v16, limit, v20, filter, reversedCopy, sub_260DF42AC, v22);

  v23 = *(v13 + 8);
  v23(v16, v12);
  v23(v18, v12);
}

+ (id)toolKitEventsWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit bundleIDFilter:(id)filter
{
  v8 = sub_260DF5444();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  sub_260DF5424();
  sub_260DF5424();
  if (filter)
  {
    v15 = sub_260DF59C4();
    filter = v16;
  }

  else
  {
    v15 = 0;
  }

  _s25ProactivePredictionClient26ToolKitActionStreamWrapperC04toolE6Events9startDate03endL05limit14bundleIDFilterSayAA0defG5EventCG10Foundation0L0V_ANSuSSSgtFZ_0(v14, v12, limit, v15, filter);

  v17 = *(v9 + 8);
  v17(v12, v8);
  v17(v14, v8);
  type metadata accessor for ToolKitActionStreamEvent(0);
  v18 = sub_260DF5A94();

  return v18;
}

+ (id)lastDateForToolKitActionEvent
{
  v2 = sub_260DF5444();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ToolKitActionStreamWrapper.lastDateForToolKitActionEvent()(v5);
  v6 = sub_260DF5414();
  (*(v3 + 8))(v5, v2);

  return v6;
}

+ (id)toolIDForSiriKitIntentWithBundleID:(id)d intentClassName:(id)name
{
  v4 = sub_260DF59C4();
  v6 = v5;
  v7 = sub_260DF59C4();
  _s25ProactivePredictionClient26ToolKitActionStreamWrapperC013toolIDForSiriE6Intent8bundleID15intentClassNameS2S_SStFZ_0(v4, v6, v7, v8);

  v9 = sub_260DF59B4();

  return v9;
}

+ (BOOL)intentApprovedForSpotlightWithBundleID:(id)d intentClassName:(id)name
{
  v4 = sub_260DF59C4();
  v6 = v5;
  v7 = sub_260DF59C4();
  LOBYTE(v4) = _s25ProactivePredictionClient26ToolKitActionStreamWrapperC26intentApprovedForSpotlight8bundleID0I9ClassNameSbSS_SStFZ_0(v4, v6, v7, v8);

  return v4 & 1;
}

+ (id)canonicalIdentifierForEncodedToolInvocationWithEncodedInvocation:(id)invocation
{
  invocationCopy = invocation;
  _s25ProactivePredictionClient26ToolKitActionStreamWrapperC029canonicalIdentifierForEncodedD10Invocation07encodedM0SSSo6NSDataC_tFZ_0(invocationCopy);

  v4 = sub_260DF59B4();

  return v4;
}

- (ATXToolKitActionStreamWrapper)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(ATXToolKitActionStreamWrapper *)&v3 init];
}

@end