@interface ILClassificationController
+ (BOOL)shouldActivate;
+ (ILClassificationController)sharedInstance;
+ (id)electedExtensionFromExtensions:(id)extensions;
- (BOOL)isClassificationAvailable;
- (ILClassificationController)init;
- (NSArray)extensions;
- (NSExtension)electedExtension;
- (void)activateWithCompletion:(id)completion;
- (void)addDelegate:(id)delegate;
- (void)beginMatchingExtensionsWithFirstCompletion:(id)completion;
- (void)dealloc;
- (void)removeDelegate:(id)delegate;
- (void)setElectedExtension:(id)extension;
- (void)updateExtensions:(id)extensions electedExtensions:(id)electedExtensions;
@end

@implementation ILClassificationController

+ (ILClassificationController)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__ILClassificationController_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_0 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_0, block);
  }

  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __44__ILClassificationController_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ILClassificationController)init
{
  v9.receiver = self;
  v9.super_class = ILClassificationController;
  v2 = [(ILClassificationController *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create([@"ILClassificationControllerServiceName" UTF8String], v3);
    queue = v2->_queue;
    v2->_queue = v4;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    delegates = v2->_delegates;
    v2->_delegates = weakObjectsHashTable;
  }

  return v2;
}

+ (BOOL)shouldActivate
{
  if (shouldActivate_onceToken != -1)
  {
    +[ILClassificationController shouldActivate];
  }

  return shouldActivate_shouldActivate;
}

void __44__ILClassificationController_shouldActivate__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = MGCopyAnswer();
  v1 = CFAutorelease(v0);
  v2 = CFEqual(v1, @"iPhone");
  shouldActivate_shouldActivate = v2 != 0;
  v3 = ILDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412802;
    v5 = v1;
    v6 = 2112;
    v7 = @"iPhone";
    v8 = 1024;
    v9 = shouldActivate_shouldActivate;
    _os_log_impl(&dword_238A41000, v3, OS_LOG_TYPE_DEFAULT, "determined device class to be %@ (requires %@), should activate: %d", &v4, 0x1Cu);
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = ILDefaultLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238A41000, v5, OS_LOG_TYPE_DEFAULT, "requested activate classification controller...", buf, 2u);
  }

  queue = [(ILClassificationController *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__ILClassificationController_activateWithCompletion___block_invoke;
  v8[3] = &unk_278A5E578;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

void __53__ILClassificationController_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [objc_opt_class() shouldActivate];
  v4 = v3;
  v5 = ILDefaultLog(v3);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_238A41000, v5, OS_LOG_TYPE_DEFAULT, "classification controller already activated", buf, 2u);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = dispatch_get_global_queue(21, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__ILClassificationController_activateWithCompletion___block_invoke_8;
      block[3] = &unk_278A5E608;
      v9 = v7;
      block[4] = *(a1 + 32);
      v16 = v9;
      dispatch_async(v8, block);

      v10 = v16;
LABEL_14:
    }
  }

  else if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_238A41000, v5, OS_LOG_TYPE_DEFAULT, "activating classification controller", buf, 2u);
    }

    [*(a1 + 32) beginMatchingExtensionsWithFirstCompletion:*(a1 + 40)];
  }

  else
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_238A41000, v5, OS_LOG_TYPE_DEFAULT, "shouldn't activate classification controller", buf, 2u);
    }

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = dispatch_get_global_queue(21, 0);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __53__ILClassificationController_activateWithCompletion___block_invoke_9;
      v13[3] = &unk_278A5E420;
      v14 = v11;
      dispatch_async(v12, v13);

      v10 = v14;
      goto LABEL_14;
    }
  }
}

- (void)beginMatchingExtensionsWithFirstCompletion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = ILDefaultLog(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = _Block_copy(completionCopy);
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_238A41000, v5, OS_LOG_TYPE_DEFAULT, "begin matching extensions with first match completion: %@", buf, 0xCu);
  }

  [(ILClassificationController *)self setFirstMatchCompletionBlock:completionCopy];
  objc_initWeak(buf, self);
  v13 = *MEMORY[0x277CCA0F8];
  v14 = @"com.apple.identitylookup.classification-ui";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  v8 = MEMORY[0x277CCA9C8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke;
  v11[3] = &unk_278A5E658;
  objc_copyWeak(&v12, buf);
  v9 = [v8 beginMatchingExtensionsWithAttributes:v7 completion:v11];
  matchingExtensionToken = self->_matchingExtensionToken;
  self->_matchingExtensionToken = v9;

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

void __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = ILDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_238A41000, v7, OS_LOG_TYPE_DEFAULT, "update matched extensions: %@", &buf, 0xCu);
  }

  if (v6)
  {
    v9 = ILDefaultLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke_cold_1(v6, v9);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = WeakRetained;
    if (WeakRetained)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy_;
      v24 = __Block_byref_object_dispose_;
      v25 = 0;
      v11 = [WeakRetained queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke_12;
      block[3] = &unk_278A5E630;
      p_buf = &buf;
      block[4] = v9;
      v12 = v5;
      v19 = v12;
      dispatch_sync(v11, block);

      v13 = [v9 firstMatchCompletionBlock];

      if (v13)
      {
        v15 = ILDefaultLog(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&dword_238A41000, v15, OS_LOG_TYPE_DEFAULT, "Invoking first matching completion", v17, 2u);
        }

        v16 = [v9 firstMatchCompletionBlock];
        (v16)[2](v16, *(*(&buf + 1) + 40), v12);

        [v9 setFirstMatchCompletionBlock:0];
      }

      _Block_object_dispose(&buf, 8);
    }
  }
}

uint64_t __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke_12(void *a1)
{
  v2 = [objc_opt_class() electedExtensionFromExtensions:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[4];
  v6 = a1[5];
  v7 = *(*(a1[6] + 8) + 40);

  return [v5 updateExtensions:v6 electedExtensions:v7];
}

- (void)updateExtensions:(id)extensions electedExtensions:(id)electedExtensions
{
  v34 = *MEMORY[0x277D85DE8];
  extensionsCopy = extensions;
  electedExtensionsCopy = electedExtensions;
  queue = [(ILClassificationController *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = ILDefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v29 = extensionsCopy;
    v30 = 2112;
    v31 = electedExtensionsCopy;
    v32 = 2112;
    v33 = @"com.apple.identitylookup.classification-ui";
    _os_log_impl(&dword_238A41000, v11, OS_LOG_TYPE_DEFAULT, "updating extensions: %@ elected extension: %@ for point name: %@", buf, 0x20u);
  }

  v20 = electedExtensionsCopy;
  v21 = extensionsCopy;

  objc_storeStrong(&self->_electedExtension, electedExtensions);
  objc_storeStrong(&self->_extensions, extensions);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  delegates = [(ILClassificationController *)self delegates];
  allObjects = [delegates allObjects];

  v14 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(allObjects);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        v19 = dispatch_get_global_queue(17, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __65__ILClassificationController_updateExtensions_electedExtensions___block_invoke;
        block[3] = &unk_278A5E680;
        block[4] = v18;
        block[5] = self;
        dispatch_async(v19, block);

        ++v17;
      }

      while (v15 != v17);
      v15 = [allObjects countByEnumeratingWithState:&v23 objects:v27 count:{16, v20, v21}];
    }

    while (v15);
  }
}

void __65__ILClassificationController_updateExtensions_electedExtensions___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v3 isClassificationAvailable];
  v6 = [*(a1 + 40) electedExtension];
  v5 = [*(a1 + 40) extensions];
  [v2 classificationController:v3 didUpdateAvailability:v4 electedExtension:v6 extensions:v5];
}

- (BOOL)isClassificationAvailable
{
  electedExtension = [(ILClassificationController *)self electedExtension];
  v3 = electedExtension != 0;

  return v3;
}

- (NSExtension)electedExtension
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = [(ILClassificationController *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__ILClassificationController_electedExtension__block_invoke;
  v6[3] = &unk_278A5E6A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)extensions
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = [(ILClassificationController *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__ILClassificationController_extensions__block_invoke;
  v6[3] = &unk_278A5E6A8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setElectedExtension:(id)extension
{
  extensionCopy = extension;
  queue = [(ILClassificationController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__ILClassificationController_setElectedExtension___block_invoke;
  v7[3] = &unk_278A5E680;
  v7[4] = self;
  v8 = extensionCopy;
  v6 = extensionCopy;
  dispatch_async(queue, v7);
}

void __50__ILClassificationController_setElectedExtension___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = v2;
  v4 = (a1 + 40);
  if (v2 != *(a1 + 40))
  {
    v5 = ILDefaultLog(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v7 = *(*(a1 + 32) + 16);
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_238A41000, v5, OS_LOG_TYPE_DEFAULT, "set elected: %@ in extensions: %@", buf, 0x16u);
    }

    if (v3)
    {
      v18 = 0;
      v8 = [v3 attemptOptOut:&v18];
      v9 = v18;
      v10 = v9;
      if ((v8 & 1) == 0)
      {
        v11 = ILDefaultLog(v9);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          __50__ILClassificationController_setElectedExtension___block_invoke_cold_1(v3, v10, v11);
        }
      }
    }

    else
    {
      v10 = 0;
    }

    objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
    v12 = *(a1 + 40);
    if (v12)
    {
      v17 = v10;
      v13 = [v12 attemptOptIn:&v17];
      v14 = v17;

      if ((v13 & 1) == 0)
      {
        v16 = ILDefaultLog(v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          __50__ILClassificationController_setElectedExtension___block_invoke_cold_2(v4, v14, v16);
        }
      }
    }

    else
    {
      v14 = v10;
    }
  }
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(ILClassificationController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__ILClassificationController_addDelegate___block_invoke;
  v7[3] = &unk_278A5E680;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

void __42__ILClassificationController_addDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  queue = [(ILClassificationController *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__ILClassificationController_removeDelegate___block_invoke;
  v7[3] = &unk_278A5E680;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

void __45__ILClassificationController_removeDelegate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegates];
  [v2 removeObject:*(a1 + 40)];
}

+ (id)electedExtensionFromExtensions:(id)extensions
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  extensionsCopy = extensions;
  v4 = [extensionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(extensionsCopy);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if ([v7 optedIn])
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [extensionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)dealloc
{
  v3 = MEMORY[0x277CCA9C8];
  matchingExtensionToken = [(ILClassificationController *)self matchingExtensionToken];
  [v3 endMatchingExtensions:matchingExtensionToken];

  v5.receiver = self;
  v5.super_class = ILClassificationController;
  [(ILClassificationController *)&v5 dealloc];
}

void __73__ILClassificationController_beginMatchingExtensionsWithFirstCompletion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = @"com.apple.identitylookup.classification-ui";
  _os_log_error_impl(&dword_238A41000, a2, OS_LOG_TYPE_ERROR, "Error (%@) finding extensions for point name: %@", &v2, 0x16u);
}

void __50__ILClassificationController_setElectedExtension___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_238A41000, a2, a3, "Error opting out extension %@: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

void __50__ILClassificationController_setElectedExtension___block_invoke_cold_2(void *a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138412546;
  *&v3[4] = *a1;
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_0_0(&dword_238A41000, a2, a3, "Error opting in extension %@: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end