@interface NPKGreenTeaDataUsageResolver
+ (id)sharedInstance;
+ (void)resolveGreenTeaDataUsageIfNecessary;
- (NPKGreenTeaDataUsageResolver)init;
- (void)resolveGreenTeaDataUsageIfNecessary;
@end

@implementation NPKGreenTeaDataUsageResolver

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[NPKGreenTeaDataUsageResolver sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

void __46__NPKGreenTeaDataUsageResolver_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPKGreenTeaDataUsageResolver);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;
}

+ (void)resolveGreenTeaDataUsageIfNecessary
{
  v2 = +[NPKGreenTeaDataUsageResolver sharedInstance];
  [v2 resolveGreenTeaDataUsageIfNecessary];
}

- (NPKGreenTeaDataUsageResolver)init
{
  v6.receiver = self;
  v6.super_class = NPKGreenTeaDataUsageResolver;
  v2 = [(NPKGreenTeaDataUsageResolver *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.NanoPassbookDataUsageREsolver", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v3;
  }

  return v2;
}

- (void)resolveGreenTeaDataUsageIfNecessary
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke;
  block[3] = &unk_279944F98;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke(uint64_t a1)
{
  if (MGGetBoolAnswer())
  {
    v2 = MGGetBoolAnswer();
    if (v2)
    {
      v3 = pk_Payment_log(v2);
      v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

      if (v4)
      {
        v6 = pk_Payment_log(v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: Device may need data usage resolution", buf, 2u);
        }
      }

      v7 = *(a1 + 32);
      if (*(v7 + 8) == 1)
      {
        v8 = pk_Payment_log(v5);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

        if (v9)
        {
          v11 = pk_Payment_log(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Currently resolving data usage", buf, 2u);
          }
        }
      }

      else
      {
        *(v7 + 8) = 1;
        v12 = *(a1 + 32);
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke_6;
        v13[3] = &unk_279944F98;
        v13[4] = v12;
        [v12 _resolveGreenTeaDataUsageIfNecessaryWithCompletion:v13];
      }
    }
  }
}

void __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__NPKGreenTeaDataUsageResolver_resolveGreenTeaDataUsageIfNecessary__block_invoke_2;
  block[3] = &unk_279944F98;
  block[4] = v1;
  dispatch_async(v2, block);
}

@end