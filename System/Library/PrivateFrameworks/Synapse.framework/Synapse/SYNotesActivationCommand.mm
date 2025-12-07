@interface SYNotesActivationCommand
+ (Class)_iOSImpl;
+ (void)activateWithDomainIdentifier:(id)identifier noteIdentifier:(id)noteIdentifier completion:(id)completion;
+ (void)activateWithMetaActivity:(id)activity completion:(id)completion;
+ (void)setRemotePresentationEnabled:(BOOL)enabled;
- (SYNotesActivationCommand)init;
- (void)_loadDataFromFileURLs:(id)ls withCompletion:(id)completion;
- (void)activateWithCompletion:(id)completion;
@end

@implementation SYNotesActivationCommand

+ (void)setRemotePresentationEnabled:(BOOL)enabled
{
  v7 = *MEMORY[0x277D85DE8];
  if (SYIsPhone())
  {
    SYRemotePresentationEnabled = enabled;
    v5 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109120;
      v6[1] = SYRemotePresentationEnabled;
      _os_log_impl(&dword_225901000, v5, OS_LOG_TYPE_INFO, "System Paper remote presentation enabled: %d", v6, 8u);
    }
  }

  else
  {
    v5 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(SYNotesActivationCommand *)a2 setRemotePresentationEnabled:v5];
    }
  }
}

+ (void)activateWithMetaActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  activityCopy = activity;
  [objc_msgSend(self "_iOSImpl")];
}

+ (void)activateWithDomainIdentifier:(id)identifier noteIdentifier:(id)noteIdentifier completion:(id)completion
{
  completionCopy = completion;
  noteIdentifierCopy = noteIdentifier;
  identifierCopy = identifier;
  [objc_msgSend(self "_iOSImpl")];
}

+ (Class)_iOSImpl
{
  if (SYIsPhone() && (SYRemotePresentationEnabled & 1) == 0)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults BOOLForKey:@"SYEnableSystemPaperRemoteAlert"];
  }

  v3 = objc_opt_class();

  return v3;
}

- (SYNotesActivationCommand)init
{
  v6.receiver = self;
  v6.super_class = SYNotesActivationCommand;
  v2 = [(SYNotesActivationCommand *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.synapse.dataLoadingQueue", 0);
    dataLoadingQueue = v2->__dataLoadingQueue;
    v2->__dataLoadingQueue = v3;
  }

  return v2;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x277CC1EF0]) initWithActivityType:@"com.apple.notes.activity.insert-data"];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __51__SYNotesActivationCommand_activateWithCompletion___block_invoke;
  v34[3] = &unk_27856C3F0;
  v7 = v5;
  v35 = v7;
  v8 = dictionary;
  v36 = v8;
  selfCopy = self;
  v9 = completionCopy;
  v38 = v9;
  v10 = MEMORY[0x22AA6A360](v34);
  activationRequest = [(SYNotesActivationCommand *)self activationRequest];
  urls = [activationRequest urls];
  v13 = [urls count];

  if (v13)
  {
    activationRequest2 = [(SYNotesActivationCommand *)self activationRequest];
    urls2 = [activationRequest2 urls];
    [v8 setObject:urls2 forKeyedSubscript:@"SYContentItemURLs"];
  }

  activationRequest3 = [(SYNotesActivationCommand *)self activationRequest];
  imagesData = [activationRequest3 imagesData];
  v18 = [imagesData count];

  if (v18)
  {
    activationRequest4 = [(SYNotesActivationCommand *)self activationRequest];
    imagesData2 = [activationRequest4 imagesData];
    [v8 setObject:imagesData2 forKeyedSubscript:@"SYContentItemImageData"];
  }

  activationRequest5 = [(SYNotesActivationCommand *)self activationRequest];
  imageFileURLs = [activationRequest5 imageFileURLs];
  v23 = [imageFileURLs count];

  if (v23)
  {
    activationRequest6 = [(SYNotesActivationCommand *)self activationRequest];
    imageFileURLs2 = [activationRequest6 imageFileURLs];
    v28 = MEMORY[0x277D85DD0];
    v29 = 3221225472;
    v30 = __51__SYNotesActivationCommand_activateWithCompletion___block_invoke_14;
    v31 = &unk_27856B830;
    v32 = v8;
    v33 = v10;
    [(SYNotesActivationCommand *)self _loadDataFromFileURLs:imageFileURLs2 withCompletion:&v28];
  }

  v26 = [(SYNotesActivationCommand *)self activationRequest:v28];
  shouldAutoInsertLinkToCurrentActivity = [v26 shouldAutoInsertLinkToCurrentActivity];

  if (shouldAutoInsertLinkToCurrentActivity)
  {
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"SYAutoInsertLinkToCurrentUserActivity"];
  }

  if (!v23)
  {
    v10[2](v10);
  }
}

uint64_t __51__SYNotesActivationCommand_activateWithCompletion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = os_log_create("com.apple.synapse", "NotesActivation");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = [v3 activityType];
    v5 = *(a1 + 40);
    v7 = 134218498;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_225901000, v2, OS_LOG_TYPE_INFO, "Performing Notes activation with meta activity: %p:%@, userInfo: %@", &v7, 0x20u);
  }

  [*(a1 + 32) setUserInfo:*(a1 + 40)];
  return [objc_opt_class() activateWithMetaActivity:*(a1 + 32) completion:*(a1 + 56)];
}

void __51__SYNotesActivationCommand_activateWithCompletion___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SYNotesActivationCommand_activateWithCompletion___block_invoke_2;
  block[3] = &unk_27856B510;
  v6 = v3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __51__SYNotesActivationCommand_activateWithCompletion___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v3 = [*(a1 + 40) objectForKeyedSubscript:@"SYContentItemImageData"];
    if (v3)
    {
      [v2 addObjectsFromArray:v3];
    }

    [v2 addObjectsFromArray:*(a1 + 32)];
    v4 = [v2 copy];
    [*(a1 + 40) setObject:v4 forKeyedSubscript:@"SYContentItemImageData"];
  }

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

- (void)_loadDataFromFileURLs:(id)ls withCompletion:(id)completion
{
  lsCopy = ls;
  completionCopy = completion;
  if (!completionCopy)
  {
    [SYNotesActivationCommand _loadDataFromFileURLs:a2 withCompletion:self];
  }

  dataLoadingQueue = self->__dataLoadingQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__SYNotesActivationCommand__loadDataFromFileURLs_withCompletion___block_invoke;
  v12[3] = &unk_27856B978;
  v13 = lsCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = lsCopy;
  dispatch_async(dataLoadingQueue, v12);
}

void __65__SYNotesActivationCommand__loadDataFromFileURLs_withCompletion___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v14 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = os_log_create("com.apple.synapse", "NotesActivation");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v9 = [v7 path];
          *buf = 138412290;
          v21 = v9;
          _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_INFO, "Loading image data from file URL: %@", buf, 0xCu);
        }

        v10 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v7];
        if (v10)
        {
          [v2 addObject:v10];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  v11 = *(v14 + 40);
  v12 = v2;
  v13 = [v2 copy];
  (*(v11 + 16))(v11, v13);
}

+ (void)setRemotePresentationEnabled:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
}

- (void)_loadDataFromFileURLs:(uint64_t)a1 withCompletion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SYNotesActivationCommand.m" lineNumber:161 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

@end