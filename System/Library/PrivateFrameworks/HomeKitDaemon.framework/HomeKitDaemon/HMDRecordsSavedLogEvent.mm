@interface HMDRecordsSavedLogEvent
+ (id)legacyRecordsSaved:(id)saved;
+ (id)recordsSaved:(id)saved;
- (HMDRecordsSavedLogEvent)initWithSavedRecords:(id)records isLegacy:(BOOL)legacy;
@end

@implementation HMDRecordsSavedLogEvent

- (HMDRecordsSavedLogEvent)initWithSavedRecords:(id)records isLegacy:(BOOL)legacy
{
  legacyCopy = legacy;
  v20 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [recordsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v9 += [*(*(&v15 + 1) + 8 * i) size];
      }

      v8 = [recordsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  v14.receiver = self;
  v14.super_class = HMDRecordsSavedLogEvent;
  v12 = [(HMDRecordOperationLogEvent *)&v14 initWithSize:v9 isLegacy:legacyCopy];

  return v12;
}

+ (id)legacyRecordsSaved:(id)saved
{
  savedCopy = saved;
  v4 = [[HMDRecordsSavedLogEvent alloc] initWithSavedRecords:savedCopy isLegacy:1];

  return v4;
}

+ (id)recordsSaved:(id)saved
{
  savedCopy = saved;
  v4 = [[HMDRecordsSavedLogEvent alloc] initWithSavedRecords:savedCopy isLegacy:0];

  return v4;
}

@end