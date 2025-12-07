@interface HKHeartRateSummaryQuery
- (HKHeartRateSummaryQuery)initWithUpdateHandler:(id)handler;
- (void)client_deliverSummary:(id)summary queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKHeartRateSummaryQuery

- (HKHeartRateSummaryQuery)initWithUpdateHandler:(id)handler
{
  handlerCopy = handler;
  v9.receiver = self;
  v9.super_class = HKHeartRateSummaryQuery;
  v5 = [(HKQuery *)&v9 _initWithObjectType:0 predicate:0];
  if (v5)
  {
    v6 = [handlerCopy copy];
    updateHandler = v5->_updateHandler;
    v5->_updateHandler = v6;
  }

  return v5;
}

- (void)client_deliverSummary:(id)summary queryUUID:(id)d
{
  summaryCopy = summary;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__HKHeartRateSummaryQuery_client_deliverSummary_queryUUID___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = dCopy;
  v13 = summaryCopy;
  v9 = summaryCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __59__HKHeartRateSummaryQuery_client_deliverSummary_queryUUID___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 152));
  v3 = v2;
  if (v2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __59__HKHeartRateSummaryQuery_client_deliverSummary_queryUUID___block_invoke_2;
    v6[3] = &unk_1E7378458;
    v6[4] = v4;
    v8 = v2;
    v7 = *(a1 + 48);
    [v4 queue_dispatchToClientForUUID:v5 shouldDeactivate:0 block:v6];
  }
}

uint64_t __59__HKHeartRateSummaryQuery_client_deliverSummary_queryUUID___block_invoke_2(uint64_t a1, uint64_t a2)
{
  _HKInitializeLogging(a1, a2);
  v3 = HKLogHeartRate;
  if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_DEBUG))
  {
    __59__HKHeartRateSummaryQuery_client_deliverSummary_queryUUID___block_invoke_2_cold_1(a1, v3);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_updateHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__HKHeartRateSummaryQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKHeartRateSummaryQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_updateHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ updateHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
  MEMORY[0x1EEE66BB8](self, updateHandler);
}

void __59__HKHeartRateSummaryQuery_client_deliverSummary_queryUUID___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 48);
  v6 = v4;
  v7 = _Block_copy(v5);
  v8 = 138412546;
  v9 = v4;
  v10 = 2112;
  v11 = v7;
  _os_log_debug_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEBUG, "%@ calling update handler: %@", &v8, 0x16u);
}

@end