@interface OSLogStore
+ (OSLogStore)storeWithScope:(OSLogStoreScope)scope error:(NSError *)error;
+ (OSLogStore)storeWithURL:(NSURL *)url error:(NSError *)error;
- (OSLogEnumerator)entriesEnumeratorWithOptions:(OSLogEnumeratorOptions)options position:(OSLogPosition *)position predicate:(NSPredicate *)predicate error:(NSError *)error;
- (OSLogPosition)positionWithDate:(NSDate *)date;
- (OSLogPosition)positionWithTimeIntervalSinceEnd:(NSTimeInterval)seconds;
- (OSLogPosition)positionWithTimeIntervalSinceLatestBoot:(NSTimeInterval)seconds;
- (OSLogStore)init;
- (id)_constrainedEntriesEnumeratorWithOptions:(unint64_t)options position:(id)position predicate:(id)predicate error:(id *)error;
- (id)initForFactory;
@end

@implementation OSLogStore

- (OSLogPosition)positionWithTimeIntervalSinceLatestBoot:(NSTimeInterval)seconds
{
  v3 = [[OSLogPosition alloc] initWithTimeIntervalSinceLatestBoot:seconds];

  return v3;
}

- (OSLogPosition)positionWithTimeIntervalSinceEnd:(NSTimeInterval)seconds
{
  v3 = [[OSLogPosition alloc] initWithEventSource:self->_source timeIntervalSinceEnd:seconds];

  return v3;
}

- (OSLogPosition)positionWithDate:(NSDate *)date
{
  v3 = date;
  v4 = [[OSLogPosition alloc] initWithDate:v3];

  return v4;
}

- (OSLogEnumerator)entriesEnumeratorWithOptions:(OSLogEnumeratorOptions)options position:(OSLogPosition *)position predicate:(NSPredicate *)predicate error:(NSError *)error
{
  v10 = position;
  v11 = predicate;
  if (self->_constraint)
  {
    v12 = [(OSLogStore *)self _constrainedEntriesEnumeratorWithOptions:options position:v10 predicate:v11 error:error];
  }

  else
  {
    v13 = [objc_alloc(MEMORY[0x277D24440]) initWithSource:self->_source];
    v14 = v13;
    if (v11)
    {
      [v13 setFilterPredicate:v11];
    }

    v12 = [[OSLogSystemEnumerator alloc] initWithEventStream:v14 options:options position:v10];
  }

  return v12;
}

- (id)_constrainedEntriesEnumeratorWithOptions:(unint64_t)options position:(id)position predicate:(id)predicate error:(id *)error
{
  predicateCopy = predicate;
  positionCopy = position;
  v10 = [[OSLogCurrentProcessEnumerator alloc] initWithOptions:options predicate:predicateCopy position:positionCopy];

  return v10;
}

- (id)initForFactory
{
  v3.receiver = self;
  v3.super_class = OSLogStore;
  return [(OSLogStore *)&v3 init];
}

- (OSLogStore)init
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_23A002000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Invalid direct use of [OSLogStore init] (use factory instead)", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = OSLogStore;
  return [(OSLogStore *)&v4 init];
}

+ (OSLogStore)storeWithURL:(NSURL *)url error:(NSError *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = url;
  initForFactory = [[OSLogStore alloc] initForFactory];
  if (initForFactory)
  {
    v7 = [MEMORY[0x277D24438] storeWithArchiveURL:v5];
    if (v7)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __33__OSLogStore_storeWithURL_error___block_invoke;
      v12[3] = &unk_278B462D0;
      v14 = error;
      v8 = initForFactory;
      v13 = v8;
      [v7 prepareWithCompletionHandler:v12];
      if (v8[1])
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }

      v10 = v13;
    }

    else
    {
      if (!error)
      {
        v7 = 0;
        v9 = 0;
        goto LABEL_12;
      }

      v15 = *MEMORY[0x277CCA450];
      v16 = @"Cannot open logarchive";
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D24460] code:-1 userInfo:v10];
      *error = v9 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  if (error)
  {
    v17 = *MEMORY[0x277CCA450];
    v18[0] = @"Unable to alloc/init";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D24460] code:-1 userInfo:v7];
    *error = v9 = 0;
    goto LABEL_12;
  }

  v9 = 0;
LABEL_13:

  return v9;
}

void __33__OSLogStore_storeWithURL_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    if (*(a1 + 40))
    {
      v8 = v6;
      **(a1 + 40) = v7;
    }
  }

  else
  {
    objc_storeStrong((*(a1 + 32) + 8), a2);
  }
}

+ (OSLogStore)storeWithScope:(OSLogStoreScope)scope error:(NSError *)error
{
  if (scope == OSLogStoreCurrentProcessIdentifier)
  {
    initForFactory = [[OSLogStore alloc] initForFactory];
    if (initForFactory)
    {
      initForFactory[4] = 1;
    }
  }

  else
  {
    initForFactory = 0;
  }

  return initForFactory;
}

@end