@interface EMMailboxCategoryCloudStorage
- (BOOL)setIfNeededLastSeenDate:(id)date lastSeenDisplayDate:(id)displayDate forCategoryType:(id)type inMailboxWithExternalURL:(id)l originator:(unint64_t)originator;
- (EMMailboxCategoryCloudStorage)init;
- (EMUbiquitouslyPersistedDictionary)ubiquitousDictionary;
- (id)_dateForCategoryType:(void *)type inMailboxWithExternalURL:(void *)l dateKey:;
- (id)_dateFromValueDictionary:(void *)dictionary forKey:;
- (id)_keyForMailboxURL:(void *)l categoryType:;
- (id)_loggingStringForMailboxURL:(void *)l categoryType:;
- (id)lastSeenDateForCategoryType:(id)type inMailboxWithExternalURL:(id)l;
- (id)lastSeenDisplayDateForCategoryType:(id)type inMailboxWithExternalURL:(id)l;
- (void)_notifyObserversAboutChangedLastSeenDate:(void *)date lastSeenDisplayDate:(void *)displayDate forCategoryType:(void *)type inMailboxWithExternalURL:(uint64_t)l originator:;
- (void)addCloudStorageObserver:(id)observer;
- (void)clearAll;
- (void)removeCloudStorageObserver:(id)observer;
@end

@implementation EMMailboxCategoryCloudStorage

- (EMMailboxCategoryCloudStorage)init
{
  v17.receiver = self;
  v17.super_class = EMMailboxCategoryCloudStorage;
  v2 = [(EMMailboxCategoryCloudStorage *)&v17 init];
  if (v2)
  {
    v3 = MEMORY[0x1E699B7C8];
    v4 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:25];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __37__EMMailboxCategoryCloudStorage_init__block_invoke;
    v15[3] = &unk_1E826D6D0;
    v5 = v2;
    v16 = v5;
    v6 = [v3 onScheduler:v4 futureWithBlock:v15];
    ubiquitousDictionaryFuture = v5->_ubiquitousDictionaryFuture;
    v5->_ubiquitousDictionaryFuture = v6;

    v8 = objc_alloc_init(MEMORY[0x1E699B7E0]);
    syncKeyByMailboxURLCache = v5->_syncKeyByMailboxURLCache;
    v5->_syncKeyByMailboxURLCache = v8;

    v10 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"EMMailboxCategoryCloudStorage"];
    observerScheduler = v5->_observerScheduler;
    v5->_observerScheduler = v10;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;
  }

  return v2;
}

EMUbiquitouslyPersistedDictionary *__37__EMMailboxCategoryCloudStorage_init__block_invoke(uint64_t a1)
{
  v1 = [[EMUbiquitouslyPersistedDictionary alloc] initWithIdentifier:@"com.apple.mail.mailboxCategories" encrypted:1 delegate:*(a1 + 32)];

  return v1;
}

- (EMUbiquitouslyPersistedDictionary)ubiquitousDictionary
{
  ubiquitousDictionaryFuture = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionaryFuture];
  result = [ubiquitousDictionaryFuture result];

  return result;
}

void ___ef_log_EMMailboxCategoryCloudStorage_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMMailboxCategoryCloudStorage");
  v1 = _ef_log_EMMailboxCategoryCloudStorage_log;
  _ef_log_EMMailboxCategoryCloudStorage_log = v0;
}

- (id)lastSeenDateForCategoryType:(id)type inMailboxWithExternalURL:(id)l
{
  v4 = [(EMMailboxCategoryCloudStorage *)self _dateForCategoryType:type inMailboxWithExternalURL:l dateKey:@"ls"];

  return v4;
}

- (id)_dateForCategoryType:(void *)type inMailboxWithExternalURL:(void *)l dateKey:
{
  v7 = a2;
  typeCopy = type;
  lCopy = l;
  if (self)
  {
    v10 = [(EMMailboxCategoryCloudStorage *)self _keyForMailboxURL:typeCopy categoryType:v7];
    ubiquitousDictionary = [self ubiquitousDictionary];
    v12 = [ubiquitousDictionary objectForKeyedSubscript:v10];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self = [(EMMailboxCategoryCloudStorage *)self _dateFromValueDictionary:v12 forKey:lCopy];
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (id)lastSeenDisplayDateForCategoryType:(id)type inMailboxWithExternalURL:(id)l
{
  v4 = [(EMMailboxCategoryCloudStorage *)self _dateForCategoryType:type inMailboxWithExternalURL:l dateKey:@"lsd"];

  return v4;
}

- (id)_keyForMailboxURL:(void *)l categoryType:
{
  v5 = a2;
  lCopy = l;
  v7 = lCopy;
  if (self)
  {
    if (lCopy)
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      absoluteString = [v5 absoluteString];
      v10 = EMStringFromCategoryType([v7 unsignedIntegerValue]);
      absoluteString2 = [v8 initWithFormat:@"%@ (%@)", absoluteString, v10];
    }

    else
    {
      absoluteString2 = [v5 absoluteString];
    }

    syncKeyByMailboxURLCache = [self syncKeyByMailboxURLCache];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __64__EMMailboxCategoryCloudStorage__keyForMailboxURL_categoryType___block_invoke;
    v16[3] = &unk_1E826D720;
    v17 = absoluteString2;
    v18 = v7;
    v13 = absoluteString2;
    v14 = [syncKeyByMailboxURLCache objectForKey:v13 generator:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_dateFromValueDictionary:(void *)dictionary forKey:
{
  v5 = a2;
  dictionaryCopy = dictionary;
  if (self)
  {
    v7 = [v5 objectForKeyedSubscript:dictionaryCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E695DF00];
      [v7 doubleValue];
      v9 = [v8 dateWithTimeIntervalSince1970:?];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setIfNeededLastSeenDate:(id)date lastSeenDisplayDate:(id)displayDate forCategoryType:(id)type inMailboxWithExternalURL:(id)l originator:(unint64_t)originator
{
  v42 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  displayDateCopy = displayDate;
  typeCopy = type;
  lCopy = l;
  v34 = [(EMMailboxCategoryCloudStorage *)self _keyForMailboxURL:lCopy categoryType:typeCopy];
  ubiquitousDictionary = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionary];
  v15 = [ubiquitousDictionary objectForKeyedSubscript:v34];

  if (v15 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v20 = _ef_log_EMMailboxCategoryCloudStorage(isKindOfClass);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = [(EMMailboxCategoryCloudStorage *)self _loggingStringForMailboxURL:lCopy categoryType:typeCopy];
      [EMMailboxCategoryCloudStorage setIfNeededLastSeenDate:v22 lastSeenDisplayDate:v23 forCategoryType:buf inMailboxWithExternalURL:v20 originator:?];
    }

    v24 = 0;
  }

  else
  {
    v17 = [v15 mutableCopy];
    v18 = v17;
    originatorCopy = originator;
    if (v17)
    {
      dictionary = v17;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v25 = dictionary;

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __129__EMMailboxCategoryCloudStorage_setIfNeededLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke;
    aBlock[3] = &unk_1E826D6F8;
    aBlock[4] = self;
    v20 = v25;
    v38 = v20;
    v26 = lCopy;
    v39 = v26;
    v27 = typeCopy;
    v40 = v27;
    v28 = _Block_copy(aBlock);
    v29 = v28[2](v28, dateCopy, @"ls", @"lastSeenDate");
    v24 = v28[2](v28, displayDateCopy, @"lsd", @"lastSeenDisplayDate") | v29;
    if (v24)
    {
      absoluteString = [v26 absoluteString];
      [v20 setObject:absoluteString forKeyedSubscript:@"mailbox"];

      [v20 setObject:v27 forKeyedSubscript:@"category"];
      ubiquitousDictionary2 = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionary];
      [ubiquitousDictionary2 setObject:v20 forKeyedSubscript:v34];

      [(EMMailboxCategoryCloudStorage *)self _notifyObserversAboutChangedLastSeenDate:dateCopy lastSeenDisplayDate:displayDateCopy forCategoryType:v27 inMailboxWithExternalURL:v26 originator:originatorCopy];
    }
  }

  return v24 & 1;
}

- (id)_loggingStringForMailboxURL:(void *)l categoryType:
{
  v5 = a2;
  lCopy = l;
  if (self)
  {
    currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
    isInternal = [currentDevice isInternal];

    self = objc_alloc_init(MEMORY[0x1E696AD60]);
    scheme = [v5 scheme];
    [self appendFormat:@"%@://", scheme];

    user = [v5 user];
    host = [v5 host];
    if ([user length] && objc_msgSend(host, "length"))
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@@%@", user, host];
      if (isInternal)
      {
        v13 = [MEMORY[0x1E699B858] ec_partiallyRedactedStringForAddress:v12];
        v14 = v13;
        if (v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:v12];
        }

        v17 = v15;
      }

      else
      {
        v17 = [MEMORY[0x1E699B858] fullyRedactedStringForString:v12];
        v14 = host;
      }

      v16 = v17;
    }

    else
    {
      if (isInternal)
      {
        [MEMORY[0x1E699B858] partiallyRedactedStringForString:host];
      }

      else
      {
        [MEMORY[0x1E699B858] fullyRedactedStringForString:host];
      }

      v16 = v12 = host;
    }

    [self appendFormat:@"[%@]", v16];
    path = [v5 path];
    if (([path ef_caseInsensitiveIsEqualToString:@"/INBOX"] & 1) == 0)
    {
      v19 = objc_alloc(MEMORY[0x1E696AEC0]);
      v20 = [MEMORY[0x1E699B858] fullyRedactedStringForString:path];
      v21 = [v19 initWithFormat:@"/%@", v20];

      path = v21;
    }

    [self appendString:path];
    v22 = MEMORY[0x1E699B858];
    absoluteString = [v5 absoluteString];
    v24 = [v22 partiallyRedactedStringForString:absoluteString maximumUnredactedLength:0];

    [self appendString:v24];
    if (lCopy)
    {
      v25 = EMStringFromCategoryType([lCopy unsignedIntegerValue]);
      [self appendFormat:@" (%@)", v25];
    }
  }

  return self;
}

uint64_t __129__EMMailboxCategoryCloudStorage_setIfNeededLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [(EMMailboxCategoryCloudStorage *)*(a1 + 32) _dateFromValueDictionary:v8 forKey:?];
    v11 = [v10 ec_integerDate];

    if (v11 && ([v7 ec_integerDate], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "ef_isLaterThanDate:", v11), v13, !v14))
    {
      v18 = _ef_log_EMMailboxCategoryCloudStorage(v12);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(EMMailboxCategoryCloudStorage *)*(a1 + 32) _loggingStringForMailboxURL:*(a1 + 56) categoryType:?];
        v22 = 138544130;
        v23 = v9;
        v24 = 2114;
        v25 = v7;
        v26 = 2114;
        v27 = v11;
        v28 = 2114;
        v29 = v20;
        _os_log_impl(&dword_1C6655000, v18, OS_LOG_TYPE_DEFAULT, "Not setting %{public}@ - %{public}@ earlier than %{public}@ for: %{public}@", &v22, 0x2Au);
      }

      v19 = 0;
    }

    else
    {
      v15 = _ef_log_EMMailboxCategoryCloudStorage(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(EMMailboxCategoryCloudStorage *)*(a1 + 32) _loggingStringForMailboxURL:*(a1 + 56) categoryType:?];
        v22 = 138543874;
        v23 = v9;
        v24 = 2114;
        v25 = v7;
        v26 = 2114;
        v27 = v16;
        _os_log_impl(&dword_1C6655000, v15, OS_LOG_TYPE_DEFAULT, "Setting %{public}@ to %{public}@ for: %{public}@", &v22, 0x20u);
      }

      v17 = MEMORY[0x1E696AD98];
      [v7 timeIntervalSince1970];
      v18 = [v17 numberWithDouble:?];
      [*(a1 + 40) setObject:v18 forKeyedSubscript:v8];
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)_notifyObserversAboutChangedLastSeenDate:(void *)date lastSeenDisplayDate:(void *)displayDate forCategoryType:(void *)type inMailboxWithExternalURL:(uint64_t)l originator:
{
  v11 = a2;
  dateCopy = date;
  displayDateCopy = displayDate;
  typeCopy = type;
  if (self)
  {
    observerScheduler = [self observerScheduler];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __146__EMMailboxCategoryCloudStorage__notifyObserversAboutChangedLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke;
    v16[3] = &unk_1E826D4C0;
    v16[4] = self;
    v17 = v11;
    v18 = dateCopy;
    v19 = displayDateCopy;
    v20 = typeCopy;
    lCopy = l;
    [observerScheduler performBlock:v16];
  }
}

id __64__EMMailboxCategoryCloudStorage__keyForMailboxURL_categoryType___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E699B990]) initWithString:*(a1 + 32)];
  v3 = [v2 hexStringValue];
  v4 = [v3 rangeOfString:@"0x" options:8];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v3 substringFromIndex:v4 + v5];
  }

  if ([v6 length])
  {
    v7 = objc_alloc_init(MEMORY[0x1E696AF20]);
    v8 = v7;
    if (*(a1 + 40))
    {
      v9 = @"mailbox-category-h";
    }

    else
    {
      v9 = @"mailbox-h";
    }

    [v7 setScheme:v9];
    [v8 setHost:v6];
    v10 = [v8 string];
  }

  else
  {
    v11 = _ef_log_EMMailboxCategoryCloudStorage(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __64__EMMailboxCategoryCloudStorage__keyForMailboxURL_categoryType___block_invoke_cold_1(v11);
    }

    v10 = 0;
  }

  return v10;
}

- (void)clearAll
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = _ef_log_EMMailboxCategoryCloudStorage(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    ubiquitousDictionary = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionary];
    v6 = 134217984;
    v7 = [ubiquitousDictionary count];
    _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_DEFAULT, "Clearing all data with oldCount:%lu", &v6, 0xCu);
  }

  ubiquitousDictionary2 = [(EMMailboxCategoryCloudStorage *)self ubiquitousDictionary];
  [ubiquitousDictionary2 removeAllObjects];

  [(EMMailboxCategoryCloudStorage *)self _notifyObserversAboutChangedLastSeenDate:0 lastSeenDisplayDate:0 forCategoryType:0 inMailboxWithExternalURL:0 originator:?];
}

- (void)addCloudStorageObserver:(id)observer
{
  observerCopy = observer;
  observerScheduler = [(EMMailboxCategoryCloudStorage *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__EMMailboxCategoryCloudStorage_addCloudStorageObserver___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = observerCopy;
  v8 = v6;
  [observerScheduler performBlock:v7];
}

void __57__EMMailboxCategoryCloudStorage_addCloudStorageObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeCloudStorageObserver:(id)observer
{
  observerCopy = observer;
  observerScheduler = [(EMMailboxCategoryCloudStorage *)self observerScheduler];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__EMMailboxCategoryCloudStorage_removeCloudStorageObserver___block_invoke;
  v7[3] = &unk_1E826C148;
  v7[4] = self;
  v6 = observerCopy;
  v8 = v6;
  [observerScheduler performBlock:v7];
}

void __60__EMMailboxCategoryCloudStorage_removeCloudStorageObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

void __146__EMMailboxCategoryCloudStorage__notifyObserversAboutChangedLastSeenDate_lastSeenDisplayDate_forCategoryType_inMailboxWithExternalURL_originator___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v6 + 1) + 8 * v5++) categoryCloudStorage:*(a1 + 32) didChangeLastSeenDate:*(a1 + 40) lastSeenDisplayDate:*(a1 + 48) forCategoryType:*(a1 + 56) inMailboxWithExternalURL:*(a1 + 64) originator:*(a1 + 72)];
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)setIfNeededLastSeenDate:(uint8_t *)buf lastSeenDisplayDate:(os_log_t)log forCategoryType:inMailboxWithExternalURL:originator:.cold.1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_1C6655000, log, OS_LOG_TYPE_FAULT, "Invalid value type %{public}@ for: %{public}@", buf, 0x16u);
}

@end