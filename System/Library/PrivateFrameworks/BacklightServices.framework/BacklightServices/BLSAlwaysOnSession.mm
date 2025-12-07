@interface BLSAlwaysOnSession
- (BLSAlwaysOnSession)initWithEnvironment:(id)environment;
- (BLSBacklightSceneEnvironment)environment;
- (NSString)description;
- (id)specifierForPresentationDate:(id)date;
- (void)desiredFidelityForDateInterval:(id)interval timelines:(id)timelines withCompletion:(id)completion;
- (void)performFrameSpecifiersRequest:(id)request timelines:(id)timelines;
@end

@implementation BLSAlwaysOnSession

- (BLSAlwaysOnSession)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v10.receiver = self;
  v10.super_class = BLSAlwaysOnSession;
  v5 = [(BLSAlwaysOnSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    v7 = objc_alloc_init(BLSFrameSpecifierModel);
    model = v6->_model;
    v6->_model = v7;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_model withName:@"model"];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = MEMORY[0x277CCACA8];
  identifier = [WeakRetained identifier];
  v8 = [v6 stringWithFormat:@"<%p:%@>", WeakRetained, identifier];
  [v3 appendString:v8 withName:@"environment"];

  build = [v3 build];

  return build;
}

- (id)specifierForPresentationDate:(id)date
{
  dateCopy = date;
  model = [(BLSAlwaysOnSession *)self model];
  v6 = [model specifierAtPresentationDate:dateCopy];

  return v6;
}

- (void)desiredFidelityForDateInterval:(id)interval timelines:(id)timelines withCompletion:(id)completion
{
  intervalCopy = interval;
  timelinesCopy = timelines;
  completionCopy = completion;
  environment = [(BLSAlwaysOnSession *)self environment];
  v12 = environment;
  if (timelinesCopy)
  {
    v13 = [BLSAlwaysOnTimeline requestedFidelityForTimelines:timelinesCopy inDateInterval:intervalCopy];
    v14 = bls_scenes_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BLSAlwaysOnSession desiredFidelityForDateInterval:v13 timelines:? withCompletion:?];
    }
  }

  else
  {
    v14 = bls_environment_log(environment);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [BLSAlwaysOnSession desiredFidelityForDateInterval:v12 timelines:? withCompletion:?];
    }

    v13 = 1;
  }

  completionCopy[2](completionCopy, v13);
}

- (void)performFrameSpecifiersRequest:(id)request timelines:(id)timelines
{
  v45[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  timelinesCopy = timelines;
  environment = [(BLSAlwaysOnSession *)self environment];
  dateInterval = [requestCopy dateInterval];
  previousPresentationDate = [requestCopy previousPresentationDate];
  v11 = [(BLSAlwaysOnSession *)self specifierForPresentationDate:previousPresentationDate];
  v38 = v11;
  if (timelinesCopy)
  {
    v12 = v11;
    v37 = previousPresentationDate;
    shouldReset = [requestCopy shouldReset];
    if (shouldReset)
    {
      v14 = objc_alloc_init(BLSFrameSpecifierModel);
      [(BLSAlwaysOnSession *)self setModel:v14];
    }

    v15 = [BLSAlwaysOnTimeline constructFrameSpecifiersForTimelines:timelinesCopy dateInterval:dateInterval shouldConstructStartSpecifier:shouldReset framesPerSecond:v12 previousSpecifier:30.0];
    model = [(BLSAlwaysOnSession *)self model];
    [model addSpecifiers:v15];

    v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-10.0];
    startDate = [dateInterval startDate];
    v19 = [startDate isBeforeDate:v17];

    if (v19)
    {
      model2 = bls_environment_log(v20);
      if (os_log_type_enabled(model2, OS_LOG_TYPE_ERROR))
      {
        [BLSAlwaysOnSession performFrameSpecifiersRequest:dateInterval timelines:?];
      }
    }

    else
    {
      model2 = [(BLSAlwaysOnSession *)self model];
      [model2 purgeAllButOneSpecifiersBeforeDate:v17];
    }

    v24 = [v15 bs_map:&__block_literal_global_7];
    duration = [v24 count];
    if (duration < 0xB)
    {
      v28 = OS_LOG_TYPE_INFO;
    }

    else
    {
      v26 = duration;
      duration = [dateInterval duration];
      if (v26 / v27 <= 4.0)
      {
        v28 = OS_LOG_TYPE_INFO;
      }

      else
      {
        v28 = OS_LOG_TYPE_FAULT;
      }
    }

    v29 = bls_scenes_log(duration);
    if (os_log_type_enabled(v29, v28))
    {
      model3 = [(BLSAlwaysOnSession *)self model];
      v30 = dateInterval;
      specifierCount = [model3 specifierCount];
      [v24 bls_boundedDescriptionWithMax:8 transformer:&__block_literal_global_16];
      v32 = v36 = timelinesCopy;
      [v15 bls_boundedDescriptionWithMax:1];
      v33 = v35 = environment;
      *buf = 134218498;
      v40 = specifierCount;
      dateInterval = v30;
      v41 = 2114;
      v42 = v32;
      v43 = 2114;
      v44 = v33;
      _os_log_impl(&dword_21FE25000, v29, v28, "performFrameSpecifiersRequest model.specifierCount:%lu dateSpecifers:%{public}@ for frameSpecifiers:%{public}@", buf, 0x20u);

      environment = v35;
      timelinesCopy = v36;
    }

    previousPresentationDate = v37;
  }

  else
  {
    v22 = bls_environment_log(v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [BLSAlwaysOnSession performFrameSpecifiersRequest:environment timelines:?];
    }

    v23 = [BLSAlwaysOnDateSpecifier alloc];
    v15 = [MEMORY[0x277CBEAA8] now];
    v17 = [(BLSAlwaysOnDateSpecifier *)v23 initWithDate:v15 fidelity:0];
    v45[0] = v17;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
  }

  [requestCopy completeWithDateSpecifiers:v24];
}

BLSAlwaysOnDateSpecifier *__62__BLSAlwaysOnSession_performFrameSpecifiersRequest_timelines___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [BLSAlwaysOnDateSpecifier alloc];
  v4 = [v2 presentationInterval];
  v5 = [v4 startDate];
  v6 = [v2 requestedFidelity];

  v7 = [(BLSAlwaysOnDateSpecifier *)v3 initWithDate:v5 fidelity:v6];

  return v7;
}

id __62__BLSAlwaysOnSession_performFrameSpecifiersRequest_timelines___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v3 date];
  v5 = [v4 bls_shortLoggingString];
  v6 = [v3 fidelity];

  v7 = NSStringAbbreviatedFromBLSUpdateFidelity(v6);
  v8 = [v2 stringWithFormat:@"%@ – %@", v5, v7];

  return v8;
}

- (BLSBacklightSceneEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (void)desiredFidelityForDateInterval:(uint64_t)a1 timelines:withCompletion:.cold.1(uint64_t a1)
{
  v1 = NSStringFromBLSUpdateFidelity(a1);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_debug_impl(v2, v3, OS_LOG_TYPE_DEBUG, v4, v5, 0x16u);
}

- (void)desiredFidelityForDateInterval:(void *)a1 timelines:withCompletion:.cold.2(void *a1)
{
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

- (void)performFrameSpecifiersRequest:(void *)a1 timelines:.cold.1(void *a1)
{
  v1 = [a1 bls_shortLoggingString];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

- (void)performFrameSpecifiersRequest:(void *)a1 timelines:.cold.2(void *a1)
{
  v1 = [a1 delegate];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_4();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

@end