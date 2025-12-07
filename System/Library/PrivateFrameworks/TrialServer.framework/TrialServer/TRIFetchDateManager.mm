@interface TRIFetchDateManager
+ (id)kvstoreKeyForType:(unsigned __int8)type container:(int)container teamId:(id)id;
+ (id)managerWithKeyValueStore:(id)store;
- (TRIFetchDateManager)initWithKeyValueStore:(id)store;
- (id)lastFetchDateWithType:(unsigned __int8)type container:(int)container teamId:(id)id;
- (void)setLastFetchDate:(id)date type:(unsigned __int8)type container:(int)container teamId:(id)id;
@end

@implementation TRIFetchDateManager

- (TRIFetchDateManager)initWithKeyValueStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = TRIFetchDateManager;
  v6 = [(TRIFetchDateManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyValueStore, store);
  }

  return v7;
}

+ (id)kvstoreKeyForType:(unsigned __int8)type container:(int)container teamId:(id)id
{
  v5 = *&container;
  typeCopy = type;
  idCopy = id;
  v10 = idCopy;
  if (v5 != 2 || idCopy)
  {
    if (typeCopy)
    {
      goto LABEL_4;
    }

LABEL_7:
    v11 = MEMORY[0x277D73830];
LABEL_8:
    v13 = *v11;
    if (v13)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchDateManager.m" lineNumber:39 description:@"teamId required for 3P date lookup"];

  if (!typeCopy)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (typeCopy == 1)
  {
    v11 = MEMORY[0x277D73838];
    goto LABEL_8;
  }

LABEL_9:
  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIFetchDateManager.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"baseKey"}];

  v13 = 0;
LABEL_10:
  if (v5 == 1)
  {
    v15 = v13;
  }

  else
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%d.%@", v13, v5, v10];
  }

  v16 = v15;

  return v16;
}

+ (id)managerWithKeyValueStore:(id)store
{
  storeCopy = store;
  v4 = [[TRIFetchDateManager alloc] initWithKeyValueStore:storeCopy];

  return v4;
}

- (id)lastFetchDateWithType:(unsigned __int8)type container:(int)container teamId:(id)id
{
  v5 = *&container;
  typeCopy = type;
  v9 = MEMORY[0x277CBEAA8];
  idCopy = id;
  v11 = [[v9 alloc] initWithTimeIntervalSince1970:1581321600.0];
  keyValueStore = self->_keyValueStore;
  v13 = [TRIFetchDateManager kvstoreKeyForType:typeCopy container:v5 teamId:idCopy];

  v14 = [(TRIKVStore *)keyValueStore blobForKey:v13 usingTransaction:0];

  if (v14)
  {
    v28 = 0;
    v15 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v28];
    v16 = v28;
    if (v15)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = +[TRISystemConfiguration sharedInstance];
  populationType = [v17 populationType];

  if (populationType == 3)
  {
    v15 = v11;
  }

  else
  {
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Oct 10 2025"];
    if (!v19)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchDateManager.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"compilationDateString"}];
    }

    v20 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v20 setDateFormat:@"MMM d yyyy"];
    v21 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
    [v20 setLocale:v21];

    v22 = [v20 dateFromString:v19];
    v23 = v22;
    if (!v22)
    {
      v24 = TRILogCategory_Server();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "unable to parse compilation date, lastDateFetch is nil", buf, 2u);
      }

      v23 = v11;
    }

    v15 = v23;
  }

LABEL_14:

  return v15;
}

- (void)setLastFetchDate:(id)date type:(unsigned __int8)type container:(int)container teamId:(id)id
{
  v6 = *&container;
  typeCopy = type;
  idCopy = id;
  v17 = 0;
  v12 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:date requiringSecureCoding:1 error:&v17];
  v13 = v17;
  if (!v12)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFetchDateManager.m" lineNumber:107 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  keyValueStore = self->_keyValueStore;
  v15 = [TRIFetchDateManager kvstoreKeyForType:typeCopy container:v6 teamId:idCopy];
  [(TRIKVStore *)keyValueStore setBlob:v12 forKey:v15 usingTransaction:0];
}

@end