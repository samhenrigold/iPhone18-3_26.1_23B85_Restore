@interface SCArchivingService
- (void)getBoolAtKey:(int64_t)key completion:(id)completion;
- (void)getIntAtKey:(int64_t)key completion:(id)completion;
- (void)getObjectOfClass:(Class)class atKey:(id)key completion:(id)completion;
- (void)getValueAtKey:(int64_t)key completion:(id)completion;
- (void)setObject:(id)object atKey:(id)key completion:(id)completion;
- (void)setValue:(id)value atKey:(int64_t)key completion:(id)completion;
@end

@implementation SCArchivingService

- (void)setObject:(id)object atKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  objectCopy = object;
  v10 = +[SCSharingReminderArchiver sharedInstance];
  [v10 setObject:objectCopy atKey:keyCopy withCompletion:completionCopy];
}

- (void)getObjectOfClass:(Class)class atKey:(id)key completion:(id)completion
{
  completionCopy = completion;
  keyCopy = key;
  v9 = +[SCSharingReminderArchiver sharedInstance];
  [v9 getObjectOfClass:class atKey:keyCopy completion:completionCopy];
}

- (void)setValue:(id)value atKey:(int64_t)key completion:(id)completion
{
  completionCopy = completion;
  valueCopy = value;
  v10 = storeKeyToString(key);
  [(SCArchivingService *)self setObject:valueCopy atKey:v10 completion:completionCopy];
}

- (void)getValueAtKey:(int64_t)key completion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  v7 = storeKeyToString(key);
  v8 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__SCArchivingService_getValueAtKey_completion___block_invoke;
  v11[3] = &unk_279B398F0;
  objc_copyWeak(v14, &location);
  v9 = v7;
  v12 = v9;
  v14[1] = key;
  v10 = completionCopy;
  v13 = v10;
  [(SCArchivingService *)self getObjectOfClass:v8 atKey:v9 completion:v11];

  objc_destroyWeak(v14);
  objc_destroyWeak(&location);
}

void __47__SCArchivingService_getValueAtKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 || v6)
    {
      v9 = SCLogger(WeakRetained);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = *(a1 + 32);
        *buf = 138412290;
        v19 = v10;
        _os_log_impl(&dword_262556000, v9, OS_LOG_TYPE_INFO, "Couldn't find value for %@, using and setting default instead", buf, 0xCu);
      }

      v11 = [SCSharingReminderKVStoreValue defaultForKey:*(a1 + 56)];
      v12 = *(a1 + 56);
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __47__SCArchivingService_getValueAtKey_completion___block_invoke_2;
      v14[3] = &unk_279B398C8;
      v17 = *(a1 + 40);
      v15 = v11;
      v16 = v6;
      v13 = v11;
      [v8 setValue:v13 atKey:v12 completion:v14];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __47__SCArchivingService_getValueAtKey_completion___block_invoke_2(void *a1, char a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    v7 = SCLogger(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __47__SCArchivingService_getValueAtKey_completion___block_invoke_2_cold_1(v7);
    }

    v8 = a1[6];
    v9 = a1[4];
    v10 = [v6 code];
    v13[0] = a1[5];
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v12 = [SCDaemonError errorWithCode:v10 underlyingErrors:v11];
    (*(v8 + 16))(v8, v9, v12);
  }

  else
  {
    (*(a1[6] + 16))();
  }
}

- (void)getIntAtKey:(int64_t)key completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SCArchivingService_getIntAtKey_completion___block_invoke;
  v8[3] = &unk_279B39918;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SCArchivingService *)self getValueAtKey:key completion:v8];
}

void __45__SCArchivingService_getIntAtKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 integerValue], v5);
}

- (void)getBoolAtKey:(int64_t)key completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__SCArchivingService_getBoolAtKey_completion___block_invoke;
  v8[3] = &unk_279B39918;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SCArchivingService *)self getValueAtKey:key completion:v8];
}

void __46__SCArchivingService_getBoolAtKey_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  (*(v4 + 16))(v4, [a2 BOOLValue], v5);
}

@end