@interface HMDAnalyticsEventTriggerData
- (HMDAnalyticsEventTriggerData)initWithEventTrigger:(id)trigger isAdding:(BOOL)adding;
@end

@implementation HMDAnalyticsEventTriggerData

- (HMDAnalyticsEventTriggerData)initWithEventTrigger:(id)trigger isAdding:(BOOL)adding
{
  v32 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v30.receiver = self;
  v30.super_class = HMDAnalyticsEventTriggerData;
  v7 = [(HMDAnalyticsEventTriggerData *)&v30 init];
  if (v7)
  {
    v7->_executeOnce = [triggerCopy executeOnce];
    v8 = MEMORY[0x277CBEB18];
    events = [triggerCopy events];
    v10 = [v8 arrayWithCapacity:{objc_msgSend(events, "count")}];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    events2 = [triggerCopy events];
    v12 = [events2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        v15 = 0;
        do
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(events2);
          }

          analyticsTriggerEventData = [*(*(&v26 + 1) + 8 * v15) analyticsTriggerEventData];
          [v10 addObject:analyticsTriggerEventData];

          ++v15;
        }

        while (v13 != v15);
        v13 = [events2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v17 = objc_msgSend_copy(v10);
    events = v7->_events;
    v7->_events = v17;

    v7->_containsRecurrences = [triggerCopy containsRecurrences];
    evaluationCondition = [triggerCopy evaluationCondition];

    if (evaluationCondition)
    {
      predicateUtilities = [triggerCopy predicateUtilities];
      evaluationCondition2 = [triggerCopy evaluationCondition];
      v22 = [predicateUtilities generateAnalyticsData:evaluationCondition2];
      predicate = v7->_predicate;
      v7->_predicate = v22;
    }

    if (!adding)
    {
      v7->_activationType = [triggerCopy activationType];
      v7->_activationState = [triggerCopy activationState];
    }

    v24 = v7;
  }

  return v7;
}

@end