@interface HKMHValenceSummaryQuery
+ (void)configureClientInterface:(id)interface;
- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange;
- (HKMHValenceSummaryQuery)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar predicate:(id)predicate resultsHandler:(id)handler;
- (void)client_deliverValenceSummary:(id)summary queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKMHValenceSummaryQuery

- (HKMHValenceSummaryQuery)initWithDayIndexRange:(id)range gregorianCalendar:(id)calendar predicate:(id)predicate resultsHandler:(id)handler
{
  var1 = range.var1;
  var0 = range.var0;
  calendarCopy = calendar;
  handlerCopy = handler;
  v14 = MEMORY[0x277CCDA38];
  predicateCopy = predicate;
  stateOfMindType = [v14 stateOfMindType];
  v21.receiver = self;
  v21.super_class = HKMHValenceSummaryQuery;
  v17 = [(HKQuery *)&v21 _initWithObjectType:stateOfMindType predicate:predicateCopy];

  if (v17)
  {
    v17->_dayIndexRange.start = var0;
    v17->_dayIndexRange.duration = var1;
    objc_storeStrong(&v17->_gregorianCalendar, calendar);
    v18 = [handlerCopy copy];
    resultsHandler = v17->_resultsHandler;
    v17->_resultsHandler = v18;
  }

  return v17;
}

- (void)client_deliverValenceSummary:(id)summary queryUUID:(id)d
{
  summaryCopy = summary;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HKMHValenceSummaryQuery_client_deliverValenceSummary_queryUUID___block_invoke;
  block[3] = &unk_2798A98E0;
  block[4] = self;
  v12 = dCopy;
  v13 = summaryCopy;
  v9 = summaryCopy;
  v10 = dCopy;
  dispatch_async(queue, block);
}

void __66__HKMHValenceSummaryQuery_client_deliverValenceSummary_queryUUID___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    *buf = 138543362;
    v13 = objc_opt_class();
    v4 = v13;
    _os_log_impl(&dword_25895E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Received ValenceSummary", buf, 0xCu);
  }

  v5 = MEMORY[0x259C8F310](*(*(a1 + 32) + 152));
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__HKMHValenceSummaryQuery_client_deliverValenceSummary_queryUUID___block_invoke_292;
    v9[3] = &unk_2798A98B8;
    v9[4] = v7;
    v11 = v5;
    v10 = *(a1 + 48);
    [v7 queue_dispatchToClientForUUID:v8 shouldDeactivate:1 block:v9];
  }
}

uint64_t __66__HKMHValenceSummaryQuery_client_deliverValenceSummary_queryUUID___block_invoke_292(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_25895E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Delivering valence summary", &v6, 0xCu);
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32));
}

- (void)queue_populateConfiguration:(id)configuration
{
  v5.receiver = self;
  v5.super_class = HKMHValenceSummaryQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v5 queue_populateConfiguration:configurationCopy];
  [configurationCopy setDayIndexRange:{self->_dayIndexRange.start, self->_dayIndexRange.duration, v5.receiver, v5.super_class}];
  [configurationCopy setGregorianCalendar:self->_gregorianCalendar];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKMHValenceSummaryQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverValenceSummary_queryUUID_ argumentIndex:0 ofReply:0];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x259C8F310](self->_resultsHandler);
  clientQueue = [(HKQuery *)self clientQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HKMHValenceSummaryQuery_queue_deliverError___block_invoke;
  block[3] = &unk_2798A98B8;
  v10 = errorCopy;
  v11 = v5;
  block[4] = self;
  v7 = errorCopy;
  v8 = v5;
  dispatch_async(clientQueue, block);
}

uint64_t __46__HKMHValenceSummaryQuery_queue_deliverError___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v2 = *MEMORY[0x277CCC2F0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_25895E000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Throwing error", &v6, 0xCu);
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32));
}

- (void)queue_validate
{
  v3.receiver = self;
  v3.super_class = HKMHValenceSummaryQuery;
  [(HKQuery *)&v3 queue_validate];
  if (!self->_resultsHandler)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCE1C8] format:{@"%@ resultsHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKMHValenceSummaryQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultsHandler = self->_resultsHandler;
  self->_resultsHandler = 0;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)dayIndexRange
{
  p_dayIndexRange = &self->_dayIndexRange;
  start = self->_dayIndexRange.start;
  duration = p_dayIndexRange->duration;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end