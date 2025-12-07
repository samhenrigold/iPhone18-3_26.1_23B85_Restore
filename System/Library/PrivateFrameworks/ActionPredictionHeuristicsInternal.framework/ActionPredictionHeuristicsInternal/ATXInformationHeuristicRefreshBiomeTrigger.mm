@interface ATXInformationHeuristicRefreshBiomeTrigger
- (ATXInformationHeuristicRefreshBiomeTrigger)initWithCoder:(id)coder;
- (ATXInformationHeuristicRefreshBiomeTrigger)initWithStreamType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (id)_publisher;
- (id)description;
- (void)_start;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInformationHeuristicRefreshBiomeTrigger

- (ATXInformationHeuristicRefreshBiomeTrigger)initWithStreamType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshBiomeTrigger;
  result = [(ATXInformationHeuristicRefreshTrigger *)&v5 init];
  if (result)
  {
    result->_streamType = type;
  }

  return result;
}

- (void)_start
{
  if (!self->_sink)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.proactive.ActionPredictionHeuristicsInternal.BiomeTrigger.%ld", self->_streamType];
    uTF8String = [v3 UTF8String];
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create(uTF8String, v5);
    queue = self->_queue;
    self->_queue = v6;

    v8 = [objc_alloc(MEMORY[0x277CF1918]) initWithIdentifier:v3 targetQueue:self->_queue];
    scheduler = self->_scheduler;
    self->_scheduler = v8;

    objc_initWeak(&location, self);
    _publisher = [(ATXInformationHeuristicRefreshBiomeTrigger *)self _publisher];
    v11 = [_publisher subscribeOn:self->_scheduler];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke;
    v16[3] = &unk_278C3CFB8;
    objc_copyWeak(&v17, &location);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_191;
    v14[3] = &unk_278C3CFE0;
    objc_copyWeak(&v15, &location);
    v12 = [v11 sinkWithCompletion:v16 receiveInput:v14];
    sink = self->_sink;
    self->_sink = v12;

    objc_destroyWeak(&v15);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    v7 = __atxlog_handle_gi(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_cold_2(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    goto LABEL_7;
  }

  v5 = [v3 error];

  if (v5)
  {
    v7 = __atxlog_handle_gi(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_cold_1(WeakRetained, v3);
    }

LABEL_7:
  }
}

void __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_191(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = __atxlog_handle_gi(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v2[3];
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_23E3EA000, v3, OS_LOG_TYPE_DEFAULT, "ATXInformationHeuristicRefreshBiomeTrigger: new event in stream: %ld. Triggering heuristics refresh.", &v7, 0xCu);
    }

    v5 = [v2 delegate];
    v6 = [v2 registeredHeuristics];
    [v5 informationHeuristicRefreshTrigger:v2 didTriggerRefreshForHeuristics:v6];
  }
}

- (id)_publisher
{
  streamType = self->_streamType;
  if (streamType == 2)
  {
    v4 = BiomeLibrary();
    intelligencePlatform = [v4 IntelligencePlatform];
    views = [intelligencePlatform Views];
    updated = [views Updated];
    v9 = [updated DSLPublisherWithUseCase:@"FutureLifeEvent"];
    atx_DSLPublisher = [v9 filterWithKeyPath:@"eventBody.viewName" value:@"futureLifeEventMap"];
  }

  else
  {
    if (streamType == 1)
    {
      v4 = BiomeLibrary();
      intelligencePlatform = [v4 UserFocus];
      inferredMode = [intelligencePlatform InferredMode];
    }

    else
    {
      if (streamType)
      {
        goto LABEL_9;
      }

      v4 = BiomeLibrary();
      intelligencePlatform = [v4 UserFocus];
      inferredMode = [intelligencePlatform ComputedMode];
    }

    views = inferredMode;
    atx_DSLPublisher = [inferredMode atx_DSLPublisher];
  }

LABEL_9:

  return atx_DSLPublisher;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXInformationHeuristicRefreshBiomeTrigger *)self isEqualToATXInformationHeuristicRefreshBiomeTrigger:v5];
  }

  return v6;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"ATXInformationHeuristicRefreshBiomeTrigger for %ld", self->_streamType];

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATXInformationHeuristicRefreshBiomeTrigger;
  coderCopy = coder;
  [(ATXInformationHeuristicRefreshTrigger *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_streamType forKey:{@"streamType", v5.receiver, v5.super_class}];
}

- (ATXInformationHeuristicRefreshBiomeTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = ATXInformationHeuristicRefreshBiomeTrigger;
  v5 = [(ATXInformationHeuristicRefreshTrigger *)&v10 initWithCoder:coderCopy];
  if (!v5 || ([coderCopy error], v6 = objc_claimAutoreleasedReturnValue(), v6, v6) || (v5->_streamType = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"streamType"), objc_msgSend(coderCopy, "error"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

void __52__ATXInformationHeuristicRefreshBiomeTrigger__start__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  v3 = [a2 error];
  *v10 = 134218242;
  *&v10[4] = v2;
  *&v10[12] = 2112;
  *&v10[14] = v3;
  OUTLINED_FUNCTION_1_2(&dword_23E3EA000, v4, v5, "ATXInformationHeuristicRefreshBiomeTrigger: error subscribing to stream: %ld: %@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

@end