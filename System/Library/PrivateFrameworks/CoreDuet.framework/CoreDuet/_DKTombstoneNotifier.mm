@interface _DKTombstoneNotifier
+ (void)sendDistributedNotificationsForTombstoneRequirementIdentifiers:(id)identifiers queue:(id)queue;
@end

@implementation _DKTombstoneNotifier

+ (void)sendDistributedNotificationsForTombstoneRequirementIdentifiers:(id)identifiers queue:(id)queue
{
  v21 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  queueCopy = queue;
  v7 = +[_DKThrottledActivity standardInstance];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = identifiersCopy;
  v8 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v16 + 1) + 8 * v11);
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __93___DKTombstoneNotifier_sendDistributedNotificationsForTombstoneRequirementIdentifiers_queue___block_invoke;
        v15[3] = &unk_1E7367440;
        v15[4] = v12;
        v13 = MEMORY[0x193B00C50](v15);
        [v7 performWithMinimumIntervalInSecondsOf:v12 name:queueCopy queue:v13 activityBlock:2.0];

        ++v11;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }
}

@end