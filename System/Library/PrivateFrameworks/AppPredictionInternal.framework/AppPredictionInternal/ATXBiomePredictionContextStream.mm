@interface ATXBiomePredictionContextStream
- (ATXBiomePredictionContextStream)initWithStoreConfig:(id)config;
- (BOOL)_shouldMatchContext:(id)context queryEvent:(id)event tolerance:(double)tolerance;
- (id)publisherFromStartTime:(double)time;
- (void)enumerateNearestContextForEvents:(id)events tolerance:(double)tolerance block:(id)block;
- (void)sendEvent:(id)event;
@end

@implementation ATXBiomePredictionContextStream

- (ATXBiomePredictionContextStream)initWithStoreConfig:(id)config
{
  configCopy = config;
  v11.receiver = self;
  v11.super_class = ATXBiomePredictionContextStream;
  v5 = [(ATXBiomePredictionContextStream *)&v11 init];
  if (v5)
  {
    if (configCopy)
    {
      atx_storeConfig = configCopy;
    }

    else
    {
      atx_storeConfig = [MEMORY[0x277CF17F8] atx_storeConfig];
    }

    v7 = atx_storeConfig;
    v8 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"predictionContext" storeConfig:atx_storeConfig eventDataClass:objc_opt_class()];
    inner = v5->_inner;
    v5->_inner = v8;
  }

  return v5;
}

- (id)publisherFromStartTime:(double)time
{
  v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:time];
  v5 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v4 endDate:0 maxEvents:0 lastN:0 reversed:0];
  v6 = [(ATXBiomePredictionContextStream *)self _publisherWithOptions:v5];

  return v6;
}

- (void)sendEvent:(id)event
{
  eventCopy = event;
  source = [(ATXBiomePredictionContextStream *)self source];
  [source sendEvent:eventCopy];
}

- (BOOL)_shouldMatchContext:(id)context queryEvent:(id)event tolerance:(double)tolerance
{
  eventCopy = event;
  timeContext = [context timeContext];
  date = [timeContext date];

  eventTime = [eventCopy eventTime];

  [eventTime timeIntervalSinceDate:date];
  v12 = v11 <= tolerance && v11 >= 0.0;

  return v12;
}

- (void)enumerateNearestContextForEvents:(id)events tolerance:(double)tolerance block:(id)block
{
  eventsCopy = events;
  blockCopy = block;
  v10 = [eventsCopy count];
  if (v10)
  {
    v11 = __atxlog_handle_default(v10);
    v12 = os_signpost_id_generate(v11);

    v14 = __atxlog_handle_default(v13);
    v15 = v14;
    v16 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ATXBiomePredictionContextStream.enumerateNearestContextForEvents", " enableTelemetry=YES ", buf, 2u);
    }

    spid = v12;

    firstObject = [eventsCopy firstObject];
    eventTime = [firstObject eventTime];
    v19 = [eventTime dateByAddingTimeInterval:-tolerance];

    lastObject = [eventsCopy lastObject];
    eventTime2 = [lastObject eventTime];
    v22 = [eventTime2 dateByAddingTimeInterval:tolerance];

    v23 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v19 endDate:v22 maxEvents:0 lastN:0 reversed:0];
    v24 = [(ATXBiomePredictionContextStream *)self _publisherWithOptions:v23];
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x2020000000;
    v49[3] = 0;
    *buf = 0;
    v44 = buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__72;
    v47 = __Block_byref_object_dispose__72;
    v48 = 0;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke;
    v36[3] = &unk_27859F2A8;
    v40 = v49;
    v41 = buf;
    v37 = eventsCopy;
    selfCopy = self;
    toleranceCopy = tolerance;
    v39 = blockCopy;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke_27;
    v29[3] = &unk_27859F2D0;
    v33 = v49;
    v34 = buf;
    v30 = v37;
    selfCopy2 = self;
    toleranceCopy2 = tolerance;
    v32 = v39;
    v25 = __atxlog_handle_default([v24 sinkWithCompletion:v36 receiveInput:v29]);
    v26 = v25;
    if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&dword_2263AA000, v26, OS_SIGNPOST_INTERVAL_END, spid, "ATXBiomePredictionContextStream.enumerateNearestContextForEvents", " enableTelemetry=YES ", v28, 2u);
    }

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v49, 8);
  }
}

void __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 error];

  if (v4)
  {
    v6 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke_cold_1(v3, v6);
    }
  }

  while (1)
  {
    v13 = *(*(*(a1 + 56) + 8) + 24);
    if (v13 >= [*(a1 + 32) count])
    {
      break;
    }

    v7 = *(*(*(a1 + 64) + 8) + 40);
    if (!v7)
    {
      break;
    }

    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
    v10 = [v8 _shouldMatchContext:v7 queryEvent:v9 tolerance:*(a1 + 72)];

    if (v10)
    {
      v11 = *(a1 + 48);
      v12 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      (*(v11 + 16))(v11, v12, *(*(*(a1 + 64) + 8) + 40));
    }

    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

void __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke_27(uint64_t a1, void *a2)
{
  v3 = [a2 eventBody];
  while (1)
  {
    v4 = *(*(*(a1 + 56) + 8) + 24);
    if (v4 >= [*(a1 + 32) count])
    {
      break;
    }

    v5 = [v3 timeContext];
    v6 = [v5 date];
    v7 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
    v8 = [v7 eventTime];
    v9 = [v6 compare:v8];

    if (v9 != 1)
    {
      break;
    }

    v10 = *(*(*(a1 + 64) + 8) + 40);
    if (v10)
    {
      v11 = *(a1 + 40);
      v12 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
      v13 = [v11 _shouldMatchContext:v10 queryEvent:v12 tolerance:*(a1 + 72)];

      if (v13)
      {
        v14 = *(a1 + 48);
        v15 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 56) + 8) + 24)];
        (*(v14 + 16))(v14, v15, *(*(*(a1 + 64) + 8) + 40));
      }
    }

    ++*(*(*(a1 + 56) + 8) + 24);
  }

  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v3;
}

void __84__ATXBiomePredictionContextStream_enumerateNearestContextForEvents_tolerance_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "ATXBiomePredictionContextStream: error querying Prediction Context stream: %@", &v4, 0xCu);
}

@end