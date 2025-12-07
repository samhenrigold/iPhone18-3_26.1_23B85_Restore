@interface HMMTRAttributeReportDistributor
- (HMMTRAttributeReportDistributor)init;
- (id)registerHandlerForAttributePath:(id)path queue:(id)queue handler:(id)handler;
- (void)allAttributesReady;
- (void)deregisterHandlerForAttributePath:(id)path registry:(id)registry;
- (void)distributeAttributeReport:(id)report;
@end

@implementation HMMTRAttributeReportDistributor

- (void)allAttributesReady
{
  v29 = *MEMORY[0x277D85DE8];
  [(HMMTRAttributeReportDistributor *)self setAllAttributesReported:1];
  receivers = [(HMMTRAttributeReportDistributor *)self receivers];
  v4 = [receivers copy];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v4;
  v16 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v15 = *v24;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [obj objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * i), v15}];
        v7 = [v6 copy];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v19 + 1) + 8 * j);
              queue = [v13 queue];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __53__HMMTRAttributeReportDistributor_allAttributesReady__block_invoke;
              block[3] = &unk_2786F0CA8;
              block[4] = v13;
              dispatch_async(queue, block);
            }

            v10 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }
      }

      v16 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v16);
  }
}

void __53__HMMTRAttributeReportDistributor_allAttributesReady__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) receiver];
  v1[2](v1, 0);
}

- (void)distributeAttributeReport:(id)report
{
  v27 = *MEMORY[0x277D85DE8];
  reportCopy = report;
  v5 = [reportCopy objectForKeyedSubscript:*MEMORY[0x277CD50B8]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    receivers = [(HMMTRAttributeReportDistributor *)self receivers];
    v9 = [receivers objectForKeyedSubscript:v7];
    v10 = [v9 copy];

    if (v10)
    {
      v18 = v10;
      v19 = v7;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v11 = v10;
      v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            queue = [v16 queue];
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __61__HMMTRAttributeReportDistributor_distributeAttributeReport___block_invoke;
            block[3] = &unk_2786EF328;
            block[4] = v16;
            v21 = reportCopy;
            dispatch_async(queue, block);
          }

          v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v13);
      }

      v10 = v18;
      v7 = v19;
    }
  }
}

void __61__HMMTRAttributeReportDistributor_distributeAttributeReport___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) receiver];
  v2[2](v2, *(a1 + 40));
}

- (void)deregisterHandlerForAttributePath:(id)path registry:(id)registry
{
  registryCopy = registry;
  pathCopy = path;
  receivers = [(HMMTRAttributeReportDistributor *)self receivers];
  v8 = [receivers objectForKeyedSubscript:pathCopy];

  if (v8)
  {
    [v8 removeObject:registryCopy];
  }
}

- (id)registerHandlerForAttributePath:(id)path queue:(id)queue handler:(id)handler
{
  pathCopy = path;
  handlerCopy = handler;
  queueCopy = queue;
  receivers = [(HMMTRAttributeReportDistributor *)self receivers];
  v12 = [receivers objectForKeyedSubscript:pathCopy];

  if (!v12)
  {
    array = [MEMORY[0x277CBEB18] array];
    receivers2 = [(HMMTRAttributeReportDistributor *)self receivers];
    [receivers2 setObject:array forKeyedSubscript:pathCopy];
  }

  v15 = [[HMMTRAttributeReportDistributorRegistry alloc] initWithQueue:queueCopy receiver:handlerCopy];

  receivers3 = [(HMMTRAttributeReportDistributor *)self receivers];
  v17 = [receivers3 objectForKeyedSubscript:pathCopy];
  [v17 addObject:v15];

  if ([(HMMTRAttributeReportDistributor *)self allAttributesReported])
  {
    [(HMMTRAttributeReportDistributor *)self allAttributesReady];
  }

  return v15;
}

- (HMMTRAttributeReportDistributor)init
{
  v6.receiver = self;
  v6.super_class = HMMTRAttributeReportDistributor;
  v2 = [(HMMTRAttributeReportDistributor *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    receivers = v2->_receivers;
    v2->_receivers = dictionary;
  }

  return v2;
}

@end