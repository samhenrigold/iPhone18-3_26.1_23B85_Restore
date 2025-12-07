@interface ACHActivitySummaryIteratorServer
- (ACHActivitySummaryIteratorServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (void)remote_activitySummariesForStartDateComponents:(id)components endDateComponents:(id)dateComponents includePrivateProperties:(BOOL)properties completion:(id)completion;
@end

@implementation ACHActivitySummaryIteratorServer

- (ACHActivitySummaryIteratorServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v19.receiver = self;
  v19.super_class = ACHActivitySummaryIteratorServer;
  v11 = [(HDStandardTaskServer *)&v19 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277D10588]);
    profile = [clientCopy profile];
    v14 = [v12 initWithProfile:profile];
    builder = v11->_builder;
    v11->_builder = v14;

    hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    calendar = v11->_calendar;
    v11->_calendar = hk_gregorianCalendar;
  }

  return v11;
}

- (void)remote_activitySummariesForStartDateComponents:(id)components endDateComponents:(id)dateComponents includePrivateProperties:(BOOL)properties completion:(id)completion
{
  propertiesCopy = properties;
  componentsCopy = components;
  dateComponentsCopy = dateComponents;
  completionCopy = completion;
  v13 = HDActivityCacheEntityPredicateForCachesInDateComponentsRange();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__15;
  v22 = __Block_byref_object_dispose__15;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(HDActivitySummaryBuilder *)self->_builder setShouldIncludePrivateProperties:propertiesCopy];
  builder = self->_builder;
  v16[4] = &v18;
  v17 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __137__ACHActivitySummaryIteratorServer_remote_activitySummariesForStartDateComponents_endDateComponents_includePrivateProperties_completion___block_invoke;
  v16[3] = &unk_278491B70;
  [(HDActivitySummaryBuilder *)builder enumerateActivitySummariesWithPredicate:v13 error:&v17 handler:v16];
  v15 = v17;
  completionCopy[2](completionCopy, v19[5], v15);

  _Block_object_dispose(&v18, 8);
}

- (id)exportedInterface
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2835643F8];
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v5 = [v3 initWithArray:v4];
  [v2 setClasses:v5 forSelector:sel_remote_activitySummariesForStartDateComponents_endDateComponents_includePrivateProperties_completion_ argumentIndex:0 ofReply:1];

  return v2;
}

@end