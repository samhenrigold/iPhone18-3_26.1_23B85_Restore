@interface WiFiUsageLQMKernelSamplePerACTxStats
+ (id)sampleWithTimestamp:(id)timestamp;
- (WiFiUsageLQMKernelSamplePerACTxStats)initWithTimestamp:(id)timestamp;
- (id)description;
- (void)populateTXStats:(int)stats With:(unsigned int)with ForQueue:(int)queue;
@end

@implementation WiFiUsageLQMKernelSamplePerACTxStats

+ (id)sampleWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = [objc_alloc(objc_opt_class()) initWithTimestamp:timestampCopy];

  return v4;
}

- (WiFiUsageLQMKernelSamplePerACTxStats)initWithTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v8.receiver = self;
  v8.super_class = WiFiUsageLQMKernelSamplePerACTxStats;
  v5 = [(WiFiUsageLQMKernelSamplePerACTxStats *)&v8 init];
  timestamp = v5->_timestamp;
  v5->_timestamp = timestampCopy;

  return v5;
}

- (void)populateTXStats:(int)stats With:(unsigned int)with ForQueue:(int)queue
{
  v6 = *&stats;
  if (queue <= 1)
  {
    if (!queue)
    {
      v8 = @"BE";
      goto LABEL_12;
    }

    if (queue == 1)
    {
      v8 = @"BK";
      goto LABEL_12;
    }
  }

  else
  {
    switch(queue)
    {
      case 2:
        v8 = @"VI";
        goto LABEL_12;
      case 3:
        v8 = @"VO";
        goto LABEL_12;
      case 4:
        v8 = @"Mcast";
LABEL_12:
        v9 = 1;
        goto LABEL_13;
    }
  }

  NSLog(&cfstr_SUnknownQueueT.isa, a2, "[WiFiUsageLQMKernelSamplePerACTxStats populateTXStats:With:ForQueue:]", queue);
  v9 = 0;
  v8 = 0;
LABEL_13:
  if (v6 >= 0xB)
  {
    NSLog(&cfstr_SUnknownStatTa.isa, a2, "[WiFiUsageLQMKernelSamplePerACTxStats populateTXStats:With:ForQueue:]", v6);
  }

  else if (v9)
  {
    v10 = off_2789C7AA0[v6];
    v12 = [MEMORY[0x277CCABB0] numberWithLong:with];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"tx%@%@Perc", v8, v10];
    [(WiFiUsageLQMKernelSamplePerACTxStats *)self setValue:v12 forKey:v11];
  }
}

- (id)description
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allLQMProperties = [objc_opt_class() allLQMProperties];
  v5 = [allLQMProperties countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allLQMProperties);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(WiFiUsageLQMSample *)self numberForKeyPath:v9];

        if (v10)
        {
          v11 = [(WiFiUsageLQMSample *)self numberForKeyPath:v9];
          [v3 appendFormat:@"%@:%@, ", v9, v11, v14];
        }
      }

      v6 = [allLQMProperties countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [MEMORY[0x277CCACA8] stringWithString:v3];

  return v12;
}

@end