@interface WFNANTableViewContext
- (WFNANTableViewContext)init;
- (id)getDataSessionAtIndex:(int64_t)index forPublisher:(id)publisher;
- (id)getDataSessionAtIndex:(int64_t)index forSubscriber:(id)subscriber;
- (id)getDataSessionsForPublisher:(id)publisher;
- (id)getDataSessionsForSubscriber:(id)subscriber;
- (id)getDiscoveryResultAtIndex:(int64_t)index forSubscriber:(id)subscriber;
- (id)getDiscoveryResultsForSubscriber:(id)subscriber;
- (id)getPublisherAtIndex:(int64_t)index;
- (id)getSubscriberAtIndex:(int64_t)index;
- (int64_t)getDataSessionsCountForPublisher:(id)publisher;
- (int64_t)getDataSessionsCountForSubscriber:(id)subscriber;
- (int64_t)getDiscoveryResultsCountForSubscriber:(id)subscriber;
- (void)addDataSession:(id)session forPublisher:(id)publisher;
- (void)addDataSession:(id)session forSubscriber:(id)subscriber;
- (void)addDiscoveryResult:(id)result forSubscriber:(id)subscriber;
- (void)addPublisher:(id)publisher;
- (void)addSubscriber:(id)subscriber;
- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info;
- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason;
- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error;
- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason;
- (void)publisherStarted:(id)started;
- (void)removeDataSession:(id)session forPublisher:(id)publisher;
- (void)removeDataSession:(id)session forSubscriber:(id)subscriber;
- (void)removeDiscoveryResultWithPublishID:(unsigned __int8)d andPublisherAddress:(id)address forSubscriber:(id)subscriber;
- (void)removePublisher:(id)publisher;
- (void)removePublisherAtIndex:(int64_t)index;
- (void)removeSubscriber:(id)subscriber;
- (void)removeSubscriberAtIndex:(int64_t)index;
- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error;
- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscriber:(id)subscriber receivedDiscoveyResult:(id)result;
- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason;
- (void)subscriberStarted:(id)started;
@end

@implementation WFNANTableViewContext

- (WFNANTableViewContext)init
{
  v14.receiver = self;
  v14.super_class = WFNANTableViewContext;
  v2 = [(WFNANTableViewContext *)&v14 init];
  array = [MEMORY[0x277CBEB18] array];
  publishers = v2->_publishers;
  v2->_publishers = array;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dataSessionsForPublish = v2->_dataSessionsForPublish;
  v2->_dataSessionsForPublish = dictionary;

  array2 = [MEMORY[0x277CBEB18] array];
  subscribers = v2->_subscribers;
  v2->_subscribers = array2;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  discoveryResults = v2->_discoveryResults;
  v2->_discoveryResults = dictionary2;

  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  dataSessionsForSubscribe = v2->_dataSessionsForSubscribe;
  v2->_dataSessionsForSubscribe = dictionary3;

  return v2;
}

- (void)addPublisher:(id)publisher
{
  v16 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  [publisherCopy start];
  [(NSMutableArray *)self->_publishers addObject:publisherCopy];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      v10 = [(NSMutableArray *)self->_publishers count];
      *buf = 134217984;
      v15 = v10;
      _os_log_impl(&dword_273ECD000, v9, v7, "Added new publisher, new count is %lu", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__WFNANTableViewContext_addPublisher___block_invoke;
  block[3] = &unk_279EBCFE0;
  v13 = publisherCopy;
  v11 = publisherCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __38__WFNANTableViewContext_addPublisher___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v5[1] = @"WFNANTableViewContextChangedPublisherKey";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANPublishersChangedNotification" object:0 userInfo:v3];
}

- (void)addSubscriber:(id)subscriber
{
  v16 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  [subscriberCopy start];
  [(NSMutableArray *)self->_subscribers addObject:subscriberCopy];
  v5 = WFLogForCategory(0);
  v6 = OSLogForWFLogLevel(3uLL);
  v7 = v6;
  if (WFCurrentLogLevel(v6, v8) >= 3 && v5)
  {
    v9 = v5;
    if (os_log_type_enabled(v9, v7))
    {
      v10 = [(NSMutableArray *)self->_subscribers count];
      *buf = 134217984;
      v15 = v10;
      _os_log_impl(&dword_273ECD000, v9, v7, "Added new subcriber, new count is %lu", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WFNANTableViewContext_addSubscriber___block_invoke;
  block[3] = &unk_279EBCFE0;
  v13 = subscriberCopy;
  v11 = subscriberCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __39__WFNANTableViewContext_addSubscriber___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v5[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANSubscribersChangedNotification" object:0 userInfo:v3];
}

- (void)addDiscoveryResult:(id)result forSubscriber:(id)subscriber
{
  v29 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  subscriberCopy = subscriber;
  discoveryResults = self->_discoveryResults;
  configuration = [subscriberCopy configuration];
  array = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:resultCopy];
  v11 = self->_discoveryResults;
  configuration2 = [subscriberCopy configuration];
  [(NSMutableDictionary *)v11 setObject:array forKey:configuration2];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  v15 = v14;
  if (WFCurrentLogLevel(v14, v16) >= 3 && v13)
  {
    v17 = v13;
    if (os_log_type_enabled(v17, v15))
    {
      configuration3 = [subscriberCopy configuration];
      serviceName = [configuration3 serviceName];
      *buf = 138412546;
      v26 = serviceName;
      v27 = 2048;
      v28 = [array count];
      _os_log_impl(&dword_273ECD000, v17, v15, "Added new discovery result for subscriber %@, new count is %lu", buf, 0x16u);
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__WFNANTableViewContext_addDiscoveryResult_forSubscriber___block_invoke;
  v22[3] = &unk_279EBD290;
  v23 = subscriberCopy;
  v24 = resultCopy;
  v20 = resultCopy;
  v21 = subscriberCopy;
  dispatch_async(MEMORY[0x277D85CD0], v22);
}

void __58__WFNANTableViewContext_addDiscoveryResult_forSubscriber___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = v2;
  v8[1] = v3;
  v7[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v7[2] = @"WFNANTableViewContextChangedDiscoveryResultKey";
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDiscoveryResultsChangedNotification" object:0 userInfo:v5];
}

- (void)addDataSession:(id)session forPublisher:(id)publisher
{
  v29 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  publisherCopy = publisher;
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisherCopy configuration];
  array = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:sessionCopy];
  v11 = self->_dataSessionsForPublish;
  configuration2 = [publisherCopy configuration];
  [(NSMutableDictionary *)v11 setObject:array forKey:configuration2];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  v15 = v14;
  if (WFCurrentLogLevel(v14, v16) >= 3 && v13)
  {
    v17 = v13;
    if (os_log_type_enabled(v17, v15))
    {
      configuration3 = [publisherCopy configuration];
      serviceName = [configuration3 serviceName];
      *buf = 138412546;
      v26 = serviceName;
      v27 = 2048;
      v28 = [array count];
      _os_log_impl(&dword_273ECD000, v17, v15, "Added new data session for publisher %@, new count is %lu", buf, 0x16u);
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__WFNANTableViewContext_addDataSession_forPublisher___block_invoke;
  v22[3] = &unk_279EBD290;
  v23 = publisherCopy;
  v24 = sessionCopy;
  v20 = sessionCopy;
  v21 = publisherCopy;
  dispatch_async(MEMORY[0x277D85CD0], v22);
}

void __53__WFNANTableViewContext_addDataSession_forPublisher___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = v2;
  v8[1] = v3;
  v7[1] = @"WFNANTableViewContextChangedPublisherKey";
  v7[2] = @"WFNANTableViewContextChangedDataSessionKey";
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDataSessionsForPublishChangedNotification" object:0 userInfo:v5];
}

- (void)addDataSession:(id)session forSubscriber:(id)subscriber
{
  v29 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  subscriberCopy = subscriber;
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriberCopy configuration];
  array = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  [array addObject:sessionCopy];
  v11 = self->_dataSessionsForSubscribe;
  configuration2 = [subscriberCopy configuration];
  [(NSMutableDictionary *)v11 setObject:array forKey:configuration2];

  v13 = WFLogForCategory(0);
  v14 = OSLogForWFLogLevel(3uLL);
  v15 = v14;
  if (WFCurrentLogLevel(v14, v16) >= 3 && v13)
  {
    v17 = v13;
    if (os_log_type_enabled(v17, v15))
    {
      configuration3 = [subscriberCopy configuration];
      serviceName = [configuration3 serviceName];
      *buf = 138412546;
      v26 = serviceName;
      v27 = 2048;
      v28 = [array count];
      _os_log_impl(&dword_273ECD000, v17, v15, "Added new data session for subscriber %@, new count is %lu", buf, 0x16u);
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__WFNANTableViewContext_addDataSession_forSubscriber___block_invoke;
  v22[3] = &unk_279EBD290;
  v23 = subscriberCopy;
  v24 = sessionCopy;
  v20 = sessionCopy;
  v21 = subscriberCopy;
  dispatch_async(MEMORY[0x277D85CD0], v22);
}

void __54__WFNANTableViewContext_addDataSession_forSubscriber___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = v2;
  v8[1] = v3;
  v7[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v7[2] = @"WFNANTableViewContextChangedDataSessionKey";
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDataSessionsForSubscribeChangedNotification" object:0 userInfo:v5];
}

- (void)removePublisherAtIndex:(int64_t)index
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(WFNANTableViewContext *)self getPublisherAtIndex:?];
  [v5 stop];
  [(NSMutableArray *)self->_publishers removeObjectAtIndex:index];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6)
  {
    v10 = v6;
    if (os_log_type_enabled(v10, v8))
    {
      v11 = [(NSMutableArray *)self->_publishers count];
      *buf = 134218240;
      indexCopy = index;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_273ECD000, v10, v8, "Removed publisher at index %ld, new count is %lu", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__WFNANTableViewContext_removePublisherAtIndex___block_invoke;
  block[3] = &unk_279EBCFE0;
  v14 = v5;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __48__WFNANTableViewContext_removePublisherAtIndex___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v5[1] = @"WFNANTableViewContextChangedPublisherKey";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANPublishersChangedNotification" object:0 userInfo:v3];
}

- (void)removePublisher:(id)publisher
{
  v22 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  if ([(NSMutableArray *)self->_publishers count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_publishers objectAtIndex:v5];
      if ([v6 isEqual:publisherCopy])
      {
        break;
      }

      if (++v5 >= [(NSMutableArray *)self->_publishers count])
      {
        goto LABEL_5;
      }
    }

    [publisherCopy stop];
    [(NSMutableArray *)self->_publishers removeObjectAtIndex:v5];
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 3 && v10)
    {
      v14 = v10;
      if (os_log_type_enabled(v14, v12))
      {
        v15 = [(NSMutableArray *)self->_publishers count];
        *buf = 134218240;
        v19 = v5;
        v20 = 2048;
        v21 = v15;
        _os_log_impl(&dword_273ECD000, v14, v12, "Removed publisher at index %ld, new count is %lu", buf, 0x16u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __41__WFNANTableViewContext_removePublisher___block_invoke;
    block[3] = &unk_279EBCFE0;
    v17 = publisherCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
LABEL_5:
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
    {
      *buf = 138412290;
      v19 = publisherCopy;
      _os_log_impl(&dword_273ECD000, v6, v8, "Publisher %@ does not exist", buf, 0xCu);
    }
  }
}

void __41__WFNANTableViewContext_removePublisher___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v5[1] = @"WFNANTableViewContextChangedPublisherKey";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANPublishersChangedNotification" object:0 userInfo:v3];
}

- (void)removeSubscriberAtIndex:(int64_t)index
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [(WFNANTableViewContext *)self getSubscriberAtIndex:?];
  [v5 stop];
  [(NSMutableArray *)self->_subscribers removeObjectAtIndex:index];
  v6 = WFLogForCategory(0);
  v7 = OSLogForWFLogLevel(3uLL);
  v8 = v7;
  if (WFCurrentLogLevel(v7, v9) >= 3 && v6)
  {
    v10 = v6;
    if (os_log_type_enabled(v10, v8))
    {
      v11 = [(NSMutableArray *)self->_subscribers count];
      *buf = 134218240;
      indexCopy = index;
      v17 = 2048;
      v18 = v11;
      _os_log_impl(&dword_273ECD000, v10, v8, "Removed subscriber at index %ld, new count is %lu", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFNANTableViewContext_removeSubscriberAtIndex___block_invoke;
  block[3] = &unk_279EBCFE0;
  v14 = v5;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __49__WFNANTableViewContext_removeSubscriberAtIndex___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v5[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANSubscribersChangedNotification" object:0 userInfo:v3];
}

- (void)removeSubscriber:(id)subscriber
{
  v22 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  if ([(NSMutableArray *)self->_subscribers count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_subscribers objectAtIndex:v5];
      if ([v6 isEqual:subscriberCopy])
      {
        break;
      }

      if (++v5 >= [(NSMutableArray *)self->_subscribers count])
      {
        goto LABEL_5;
      }
    }

    [subscriberCopy stop];
    [(NSMutableArray *)self->_subscribers removeObjectAtIndex:v5];
    v10 = WFLogForCategory(0);
    v11 = OSLogForWFLogLevel(3uLL);
    v12 = v11;
    if (WFCurrentLogLevel(v11, v13) >= 3 && v10)
    {
      v14 = v10;
      if (os_log_type_enabled(v14, v12))
      {
        v15 = [(NSMutableArray *)self->_subscribers count];
        *buf = 134218240;
        v19 = v5;
        v20 = 2048;
        v21 = v15;
        _os_log_impl(&dword_273ECD000, v14, v12, "Removed subscriber at index %ld, new count is %lu", buf, 0x16u);
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__WFNANTableViewContext_removeSubscriber___block_invoke;
    block[3] = &unk_279EBCFE0;
    v17 = subscriberCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
LABEL_5:
    v6 = WFLogForCategory(0);
    v7 = OSLogForWFLogLevel(1uLL);
    v8 = v7;
    if (WFCurrentLogLevel(v7, v9) && v6 && os_log_type_enabled(v6, v8))
    {
      *buf = 138412290;
      v19 = subscriberCopy;
      _os_log_impl(&dword_273ECD000, v6, v8, "Subscriber %@ does not exist", buf, 0xCu);
    }
  }
}

void __42__WFNANTableViewContext_removeSubscriber___block_invoke(uint64_t a1)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v5[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v6[0] = v2;
  v6[1] = *(a1 + 32);
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"WFNANSubscribersChangedNotification" object:0 userInfo:v3];
}

- (void)removeDiscoveryResultWithPublishID:(unsigned __int8)d andPublisherAddress:(id)address forSubscriber:(id)subscriber
{
  dCopy = d;
  v39 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  subscriberCopy = subscriber;
  discoveryResults = self->_discoveryResults;
  configuration = [subscriberCopy configuration];
  v12 = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  if ([v12 count])
  {
    v13 = 0;
    while (1)
    {
      v14 = [v12 objectAtIndex:v13];
      if ([v14 publishID] == dCopy)
      {
        publisherAddress = [v14 publisherAddress];
        v16 = [publisherAddress isEqual:addressCopy];

        if (v16)
        {
          break;
        }
      }

      if (++v13 >= [v12 count])
      {
        goto LABEL_6;
      }
    }

    [v12 removeObjectAtIndex:v13];
    v25 = self->_discoveryResults;
    configuration2 = [subscriberCopy configuration];
    [(NSMutableDictionary *)v25 setObject:v12 forKey:configuration2];

    v27 = WFLogForCategory(0);
    v28 = OSLogForWFLogLevel(3uLL);
    v29 = v28;
    if (WFCurrentLogLevel(v28, v30) >= 3 && v27)
    {
      v31 = v27;
      if (os_log_type_enabled(v31, v29))
      {
        configuration3 = [subscriberCopy configuration];
        serviceName = [configuration3 serviceName];
        *buf = 138412546;
        *v38 = serviceName;
        *&v38[8] = 2048;
        *&v38[10] = [v12 count];
        _os_log_impl(&dword_273ECD000, v31, v29, "Removed discovery result for subcriber %@, new count is %lu", buf, 0x16u);
      }
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __94__WFNANTableViewContext_removeDiscoveryResultWithPublishID_andPublisherAddress_forSubscriber___block_invoke;
    v34[3] = &unk_279EBD290;
    v35 = subscriberCopy;
    v36 = v14;
    v17 = v14;
    dispatch_async(MEMORY[0x277D85CD0], v34);

    v21 = v35;
    goto LABEL_17;
  }

LABEL_6:
  v17 = WFLogForCategory(0);
  v18 = OSLogForWFLogLevel(1uLL);
  v19 = v18;
  if (WFCurrentLogLevel(v18, v20) && v17)
  {
    v21 = v17;
    if (os_log_type_enabled(v21, v19))
    {
      v22 = [addressCopy description];
      configuration4 = [subscriberCopy configuration];
      serviceName2 = [configuration4 serviceName];
      *buf = 67109634;
      *v38 = dCopy;
      *&v38[4] = 2112;
      *&v38[6] = v22;
      *&v38[14] = 2112;
      *&v38[16] = serviceName2;
      _os_log_impl(&dword_273ECD000, v21, v19, "Discovery result with publish ID %hhu and address %@ does not exist for subscriber %@", buf, 0x1Cu);
    }

    v17 = v21;
LABEL_17:
  }
}

void __94__WFNANTableViewContext_removeDiscoveryResultWithPublishID_andPublisherAddress_forSubscriber___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = v2;
  v8[1] = v3;
  v7[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v7[2] = @"WFNANTableViewContextChangedDiscoveryResultKey";
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDiscoveryResultsChangedNotification" object:0 userInfo:v5];
}

- (void)removeDataSession:(id)session forPublisher:(id)publisher
{
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  publisherCopy = publisher;
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisherCopy configuration];
  v10 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  if ([v10 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v10 objectAtIndex:v11];
      if ([v12 isEqual:sessionCopy])
      {
        break;
      }

      if (++v11 >= [v10 count])
      {
        goto LABEL_5;
      }
    }

    [v10 removeObjectAtIndex:v11];
    v19 = self->_dataSessionsForPublish;
    configuration2 = [publisherCopy configuration];
    [(NSMutableDictionary *)v19 setObject:v10 forKey:configuration2];

    v21 = WFLogForCategory(0);
    v22 = OSLogForWFLogLevel(3uLL);
    v23 = v22;
    if (WFCurrentLogLevel(v22, v24) >= 3 && v21)
    {
      v25 = v21;
      if (os_log_type_enabled(v25, v23))
      {
        configuration3 = [publisherCopy configuration];
        serviceName = [configuration3 serviceName];
        *buf = 138412546;
        v32 = serviceName;
        v33 = 2048;
        v34 = [v10 count];
        _os_log_impl(&dword_273ECD000, v25, v23, "Removed data session for publisher %@, new count is %lu", buf, 0x16u);
      }
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __56__WFNANTableViewContext_removeDataSession_forPublisher___block_invoke;
    v28[3] = &unk_279EBD290;
    v29 = publisherCopy;
    v30 = sessionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v28);

    v16 = v29;
    goto LABEL_16;
  }

LABEL_5:
  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(1uLL);
  v14 = v13;
  if (WFCurrentLogLevel(v13, v15) && v12)
  {
    v16 = v12;
    if (os_log_type_enabled(v16, v14))
    {
      configuration4 = [publisherCopy configuration];
      serviceName2 = [configuration4 serviceName];
      *buf = 138412546;
      v32 = sessionCopy;
      v33 = 2112;
      v34 = serviceName2;
      _os_log_impl(&dword_273ECD000, v16, v14, "Data session %@ does not exist for publisher %@", buf, 0x16u);
    }

    v12 = v16;
LABEL_16:
  }
}

void __56__WFNANTableViewContext_removeDataSession_forPublisher___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = v2;
  v8[1] = v3;
  v7[1] = @"WFNANTableViewContextChangedPublisherKey";
  v7[2] = @"WFNANTableViewContextChangedDataSessionKey";
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDataSessionsForPublishChangedNotification" object:0 userInfo:v5];
}

- (void)removeDataSession:(id)session forSubscriber:(id)subscriber
{
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  subscriberCopy = subscriber;
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriberCopy configuration];
  v10 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  if ([v10 count])
  {
    v11 = 0;
    while (1)
    {
      v12 = [v10 objectAtIndex:v11];
      if ([v12 isEqual:sessionCopy])
      {
        break;
      }

      if (++v11 >= [v10 count])
      {
        goto LABEL_5;
      }
    }

    [v10 removeObjectAtIndex:v11];
    v19 = self->_dataSessionsForSubscribe;
    configuration2 = [subscriberCopy configuration];
    [(NSMutableDictionary *)v19 setObject:v10 forKey:configuration2];

    v21 = WFLogForCategory(0);
    v22 = OSLogForWFLogLevel(3uLL);
    v23 = v22;
    if (WFCurrentLogLevel(v22, v24) >= 3 && v21)
    {
      v25 = v21;
      if (os_log_type_enabled(v25, v23))
      {
        configuration3 = [subscriberCopy configuration];
        serviceName = [configuration3 serviceName];
        *buf = 138412546;
        v32 = serviceName;
        v33 = 2048;
        v34 = [v10 count];
        _os_log_impl(&dword_273ECD000, v25, v23, "Removed data session for subscriber %@, new count is %lu", buf, 0x16u);
      }
    }

    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __57__WFNANTableViewContext_removeDataSession_forSubscriber___block_invoke;
    v28[3] = &unk_279EBD290;
    v29 = subscriberCopy;
    v30 = sessionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v28);

    v16 = v29;
    goto LABEL_16;
  }

LABEL_5:
  v12 = WFLogForCategory(0);
  v13 = OSLogForWFLogLevel(1uLL);
  v14 = v13;
  if (WFCurrentLogLevel(v13, v15) && v12)
  {
    v16 = v12;
    if (os_log_type_enabled(v16, v14))
    {
      configuration4 = [subscriberCopy configuration];
      serviceName2 = [configuration4 serviceName];
      *buf = 138412546;
      v32 = sessionCopy;
      v33 = 2112;
      v34 = serviceName2;
      _os_log_impl(&dword_273ECD000, v16, v14, "Data session %@ does not exist for subscriber %@", buf, 0x16u);
    }

    v12 = v16;
LABEL_16:
  }
}

void __57__WFNANTableViewContext_removeDataSession_forSubscriber___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"WFNANTableViewContextChangedOperationTypeKey";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = v2;
  v8[1] = v3;
  v7[1] = @"WFNANTableViewContextChangedSubscriberKey";
  v7[2] = @"WFNANTableViewContextChangedDataSessionKey";
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"WFNANDataSessionsForSubscribeChangedNotification" object:0 userInfo:v5];
}

- (id)getPublisherAtIndex:(int64_t)index
{
  if ([(NSMutableArray *)self->_publishers count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_publishers objectAtIndex:index];
  }

  return v5;
}

- (id)getSubscriberAtIndex:(int64_t)index
{
  if ([(NSMutableArray *)self->_subscribers count]<= index)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_subscribers objectAtIndex:index];
  }

  return v5;
}

- (id)getDiscoveryResultAtIndex:(int64_t)index forSubscriber:(id)subscriber
{
  discoveryResults = self->_discoveryResults;
  configuration = [subscriber configuration];
  v7 = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  return v8;
}

- (id)getDataSessionAtIndex:(int64_t)index forPublisher:(id)publisher
{
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisher configuration];
  v7 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  return v8;
}

- (id)getDataSessionAtIndex:(int64_t)index forSubscriber:(id)subscriber
{
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriber configuration];
  v7 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  if ([v7 count] <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = [v7 objectAtIndex:index];
  }

  return v8;
}

- (id)getDiscoveryResultsForSubscriber:(id)subscriber
{
  discoveryResults = self->_discoveryResults;
  configuration = [subscriber configuration];
  v5 = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  return v5;
}

- (id)getDataSessionsForPublisher:(id)publisher
{
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisher configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  return v5;
}

- (id)getDataSessionsForSubscriber:(id)subscriber
{
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriber configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  return v5;
}

- (int64_t)getDiscoveryResultsCountForSubscriber:(id)subscriber
{
  discoveryResults = self->_discoveryResults;
  configuration = [subscriber configuration];
  v5 = [(NSMutableDictionary *)discoveryResults objectForKey:configuration];

  v6 = [v5 count];
  return v6;
}

- (int64_t)getDataSessionsCountForPublisher:(id)publisher
{
  dataSessionsForPublish = self->_dataSessionsForPublish;
  configuration = [publisher configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForPublish objectForKey:configuration];

  v6 = [v5 count];
  return v6;
}

- (int64_t)getDataSessionsCountForSubscriber:(id)subscriber
{
  dataSessionsForSubscribe = self->_dataSessionsForSubscribe;
  configuration = [subscriber configuration];
  v5 = [(NSMutableDictionary *)dataSessionsForSubscribe objectForKey:configuration];

  v6 = [v5 count];
  return v6;
}

- (void)publisherStarted:(id)started
{
  v13 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      configuration = [startedCopy configuration];
      serviceName = [configuration serviceName];
      v11 = 138412290;
      v12 = serviceName;
      _os_log_impl(&dword_273ECD000, v8, v6, "NAN publish %@ started", &v11, 0xCu);
    }
  }
}

- (void)publisher:(id)publisher failedToStartWithError:(int64_t)error
{
  v18 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      configuration = [publisherCopy configuration];
      serviceName = [configuration serviceName];
      v14 = 138412546;
      v15 = serviceName;
      v16 = 2048;
      errorCopy = error;
      _os_log_impl(&dword_273ECD000, v11, v9, "NAN publish %@ failed to start with error %ld", &v14, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removePublisher:publisherCopy];
}

- (void)publisher:(id)publisher terminatedWithReason:(int64_t)reason
{
  v18 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      configuration = [publisherCopy configuration];
      serviceName = [configuration serviceName];
      v14 = 138412546;
      v15 = serviceName;
      v16 = 2048;
      reasonCopy = reason;
      _os_log_impl(&dword_273ECD000, v11, v9, "NAN publish %@ terminated with reason %ld", &v14, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removePublisher:publisherCopy];
}

- (void)publisher:(id)publisher dataConfirmedForHandle:(id)handle localInterfaceIndex:(unsigned int)index serviceSpecificInfo:(id)info
{
  v18 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  publisherCopy = publisher;
  v10 = WFLogForCategory(0);
  v11 = OSLogForWFLogLevel(3uLL);
  v12 = v11;
  if (WFCurrentLogLevel(v11, v13) >= 3 && v10)
  {
    v14 = v10;
    if (os_log_type_enabled(v14, v12))
    {
      initiatorDataAddress = [handleCopy initiatorDataAddress];
      v16 = 138412290;
      v17 = initiatorDataAddress;
      _os_log_impl(&dword_273ECD000, v14, v12, "Data confirmed for session with peer %@", &v16, 0xCu);
    }
  }

  [(WFNANTableViewContext *)self addDataSession:handleCopy forPublisher:publisherCopy];
}

- (void)publisher:(id)publisher dataTerminatedForHandle:(id)handle reason:(int64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  publisherCopy = publisher;
  v9 = WFLogForCategory(0);
  v10 = OSLogForWFLogLevel(3uLL);
  v11 = v10;
  if (WFCurrentLogLevel(v10, v12) >= 3 && v9)
  {
    v13 = v9;
    if (os_log_type_enabled(v13, v11))
    {
      initiatorDataAddress = [handleCopy initiatorDataAddress];
      v15 = 138412290;
      v16 = initiatorDataAddress;
      _os_log_impl(&dword_273ECD000, v13, v11, "Data terminated for session with peer %@", &v15, 0xCu);
    }
  }

  [(WFNANTableViewContext *)self removeDataSession:handleCopy forPublisher:publisherCopy];
}

- (void)subscriberStarted:(id)started
{
  v13 = *MEMORY[0x277D85DE8];
  startedCopy = started;
  v4 = WFLogForCategory(0);
  v5 = OSLogForWFLogLevel(3uLL);
  v6 = v5;
  if (WFCurrentLogLevel(v5, v7) >= 3 && v4)
  {
    v8 = v4;
    if (os_log_type_enabled(v8, v6))
    {
      configuration = [startedCopy configuration];
      serviceName = [configuration serviceName];
      v11 = 138412290;
      v12 = serviceName;
      _os_log_impl(&dword_273ECD000, v8, v6, "NAN subscribe %@ started", &v11, 0xCu);
    }
  }
}

- (void)subscriber:(id)subscriber failedToStartWithError:(int64_t)error
{
  v18 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      configuration = [subscriberCopy configuration];
      serviceName = [configuration serviceName];
      v14 = 138412546;
      v15 = serviceName;
      v16 = 2048;
      errorCopy = error;
      _os_log_impl(&dword_273ECD000, v11, v9, "NAN subscribe %@ failed to start with error %ld", &v14, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removeSubscriber:subscriberCopy];
}

- (void)subscriber:(id)subscriber terminatedWithReason:(int64_t)reason
{
  v18 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7)
  {
    v11 = v7;
    if (os_log_type_enabled(v11, v9))
    {
      configuration = [subscriberCopy configuration];
      serviceName = [configuration serviceName];
      v14 = 138412546;
      v15 = serviceName;
      v16 = 2048;
      reasonCopy = reason;
      _os_log_impl(&dword_273ECD000, v11, v9, "NAN subscribe %@ terminated with reason %ld", &v14, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self removeSubscriber:subscriberCopy];
}

- (void)subscriber:(id)subscriber receivedDiscoveyResult:(id)result
{
  v21 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  resultCopy = result;
  v8 = WFLogForCategory(0);
  v9 = OSLogForWFLogLevel(3uLL);
  v10 = v9;
  if (WFCurrentLogLevel(v9, v11) >= 3 && v8)
  {
    v12 = v8;
    if (os_log_type_enabled(v12, v10))
    {
      configuration = [subscriberCopy configuration];
      serviceName = [configuration serviceName];
      serviceSpecificInfo = [resultCopy serviceSpecificInfo];
      v16 = [serviceSpecificInfo description];
      v17 = 138412546;
      v18 = serviceName;
      v19 = 2112;
      v20 = v16;
      _os_log_impl(&dword_273ECD000, v12, v10, "NAN subscribe %@ received discovery result %@", &v17, 0x16u);
    }
  }

  [(WFNANTableViewContext *)self addDiscoveryResult:resultCopy forSubscriber:subscriberCopy];
}

- (void)subscriber:(id)subscriber lostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  dCopy = d;
  v24 = *MEMORY[0x277D85DE8];
  subscriberCopy = subscriber;
  addressCopy = address;
  v10 = WFLogForCategory(0);
  v11 = OSLogForWFLogLevel(3uLL);
  v12 = v11;
  if (WFCurrentLogLevel(v11, v13) >= 3 && v10)
  {
    v14 = v10;
    if (os_log_type_enabled(v14, v12))
    {
      configuration = [subscriberCopy configuration];
      serviceName = [configuration serviceName];
      v17 = [addressCopy description];
      v18 = 138412802;
      v19 = serviceName;
      v20 = 1024;
      v21 = dCopy;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_273ECD000, v14, v12, "NAN subscribe %@ lost discovery result with publish ID %hhu and address %@", &v18, 0x1Cu);
    }
  }

  [(WFNANTableViewContext *)self removeDiscoveryResultWithPublishID:dCopy andPublisherAddress:addressCopy forSubscriber:subscriberCopy];
}

@end