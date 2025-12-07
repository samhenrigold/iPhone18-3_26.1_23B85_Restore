@interface _OSInactivityPredictorBackupHourEntry
+ (id)descriptionWithHistoryEntries:(id)entries;
@end

@implementation _OSInactivityPredictorBackupHourEntry

+ (id)descriptionWithHistoryEntries:(id)entries
{
  v20 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  allKeys = [entriesCopy allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"Backup: {\n"];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [entriesCopy objectForKeyedSubscript:v12];
        [string appendFormat:@"  Hour %@: %@\n", v12, v13, v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [string appendFormat:@"}"];

  return string;
}

@end