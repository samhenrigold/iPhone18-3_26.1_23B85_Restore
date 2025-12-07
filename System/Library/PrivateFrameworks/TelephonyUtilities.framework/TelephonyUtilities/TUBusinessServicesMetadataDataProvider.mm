@interface TUBusinessServicesMetadataDataProvider
+ (TUBusinessServicesMetadataDataProvider)sharedInstance;
- (BOOL)isValidBusinessItem:(id)item;
- (TUBusinessServicesMetadataDataProvider)init;
- (TUBusinessServicesMetadataDataProvider)initWithBusinessService:(id)service;
- (void)fetchBusinessServiceInformationForHandleValue:(id)value completion:(id)completion;
@end

@implementation TUBusinessServicesMetadataDataProvider

+ (TUBusinessServicesMetadataDataProvider)sharedInstance
{
  v3 = objc_opt_new();
  v4 = TUBusinessConnectCallingEnabled(v3);

  if (v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__TUBusinessServicesMetadataDataProvider_sharedInstance__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedInstance_onceToken_2 != -1)
    {
      dispatch_once(&sharedInstance_onceToken_2, block);
    }

    v5 = sharedInstance_sBusinessServicesDataProvider;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __56__TUBusinessServicesMetadataDataProvider_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sBusinessServicesDataProvider = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (TUBusinessServicesMetadataDataProvider)init
{
  v3 = objc_opt_new();
  if (!TUBusinessConnectCallingEnabled(v3))
  {
    BCSBusinessQueryServiceClass = 0;
    goto LABEL_5;
  }

  BCSBusinessQueryServiceClass = getBCSBusinessQueryServiceClass();

  if (BCSBusinessQueryServiceClass)
  {
    v3 = objc_alloc_init(getBCSBusinessQueryServiceClass());
    self = [(TUBusinessServicesMetadataDataProvider *)self initWithBusinessService:v3];
    BCSBusinessQueryServiceClass = self;
LABEL_5:
  }

  return BCSBusinessQueryServiceClass;
}

- (TUBusinessServicesMetadataDataProvider)initWithBusinessService:(id)service
{
  serviceCopy = service;
  v12.receiver = self;
  v12.super_class = TUBusinessServicesMetadataDataProvider;
  v6 = [(TUBusinessServicesMetadataDataProvider *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_businessQueryService, service);
    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v9 = dispatch_queue_create("com.apple.BusinessServicesDataProvider", v8);
    queue = v7->_queue;
    v7->_queue = v9;
  }

  return v7;
}

- (void)fetchBusinessServiceInformationForHandleValue:(id)value completion:(id)completion
{
  valueCopy = value;
  completionCopy = completion;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = __Block_byref_object_copy__11;
  v15[4] = __Block_byref_object_dispose__11;
  v16 = 0;
  queue = [(TUBusinessServicesMetadataDataProvider *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __99__TUBusinessServicesMetadataDataProvider_fetchBusinessServiceInformationForHandleValue_completion___block_invoke;
  v11[3] = &unk_1E7426968;
  v11[4] = self;
  v12 = valueCopy;
  v13 = completionCopy;
  v14 = v15;
  v9 = completionCopy;
  v10 = valueCopy;
  dispatch_async(queue, v11);

  _Block_object_dispose(v15, 8);
}

void __99__TUBusinessServicesMetadataDataProvider_fetchBusinessServiceInformationForHandleValue_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) businessQueryService];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v5 = TUDefaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v18 = v6;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Querying business service for destinationID: %@", buf, 0xCu);
    }

    v7 = [*(a1 + 32) businessQueryService];
    v8 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __99__TUBusinessServicesMetadataDataProvider_fetchBusinessServiceInformationForHandleValue_completion___block_invoke_4;
    v13[3] = &unk_1E7426940;
    v9 = v8;
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v12 = *(a1 + 48);
    v11 = v12;
    v16 = v12;
    [v7 isBusinessCallerRegisteredForPhoneNumber:v9 completion:v13];
  }
}

void __99__TUBusinessServicesMetadataDataProvider_fetchBusinessServiceInformationForHandleValue_completion___block_invoke_4(uint64_t a1, int a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = TUDefaultLog(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Got result indicating that destinationID: %@ is registered with business. Querying for more information about business", buf, 0xCu);
    }

    v7 = [*(a1 + 40) businessQueryService];
    v8 = *(a1 + 32);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __99__TUBusinessServicesMetadataDataProvider_fetchBusinessServiceInformationForHandleValue_completion___block_invoke_5;
    v14[3] = &unk_1E7426918;
    v9 = v8;
    v10 = *(a1 + 40);
    v15 = v9;
    v16 = v10;
    v13 = *(a1 + 48);
    v11 = v13;
    v17 = v13;
    [v7 fetchBusinessCallerMetadataWithPhoneNumber:v9 completion:v14];
  }

  else
  {
    if (v5)
    {
      v12 = *(a1 + 32);
      *buf = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Got result indicating that destinationID: %@ is not registered with business", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __99__TUBusinessServicesMetadataDataProvider_fetchBusinessServiceInformationForHandleValue_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = TUDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v17 = 138412546;
    v18 = v3;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Got businessItem: %@ for destinationID: %@", &v17, 0x16u);
  }

  if (v3 && (v6 = [*(a1 + 40) isValidBusinessItem:v3], v6))
  {
    v7 = [TUBusinessCallerItem alloc];
    v8 = [v3 name];
    v9 = [v3 department];
    v10 = [v3 logoURL];
    v11 = [(TUBusinessCallerItem *)v7 initWithName:v8 department:v9 logoURL:v10];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(*(a1 + 48) + 16);
  }

  else
  {
    v15 = TUDefaultLog(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v3 logoURL];
      v17 = 138412290;
      v18 = v16;
      _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Got nil or invalid businessItem with improper logoURL %@", &v17, 0xCu);
    }

    v14 = *(*(a1 + 48) + 16);
  }

  v14();
}

- (BOOL)isValidBusinessItem:(id)item
{
  itemCopy = item;
  logoURL = [itemCopy logoURL];
  if (logoURL)
  {
    logoURL2 = [itemCopy logoURL];
    isFileURL = [logoURL2 isFileURL];
  }

  else
  {
    isFileURL = 1;
  }

  return isFileURL;
}

@end