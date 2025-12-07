@interface SLDShareableContentService
+ (id)sharedService;
+ (void)setupInterface:(id)interface;
- (BOOL)_connShouldAllowBackgroundCollaboration:(id)collaboration;
- (BOOL)allowsConnection:(id)connection;
- (BOOL)populateInitiatorMetadata:(id)metadata name:(id)name email:(id)email;
- (SLDShareableContentService)init;
- (id)_applicationIdentifierForConnection:(id)connection;
- (id)visibleApplicationForSceneIdentifier:(id)identifier;
- (id)visibleApplications;
- (void)dealloc;
- (void)fetchAsynchronousLPMetadataFromBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion;
- (void)fetchShareableContentFromBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier requestedTypeIdentifier:(id)typeIdentifier requestedItemProviderIndex:(int64_t)index responseHandler:(id)handler;
- (void)fetchShareableContentMetadataFromBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion;
- (void)launchApplicationWithBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier forActions:(id)actions completionHandler:(id)handler;
- (void)loadRepresentationFromBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier requestedTypeIdentifier:(id)typeIdentifier requestedItemProviderIndex:(int64_t)index completionHandler:(id)handler;
- (void)performAction:(id)action onApplicationWithBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier;
- (void)populateInitiatorMetadata:(id)metadata request:(id)request completionHandler:(id)handler;
- (void)presentMessageComposeSheetForSceneIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveAsynchronousLPMetadataMatchingBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion;
- (void)retrieveShareableContentMetadataMatchingBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion;
- (void)shareCollaborationData:(id)data faceTimeConversationUUID:(id)d completionHandler:(id)handler;
@end

@implementation SLDShareableContentService

+ (void)setupInterface:(id)interface
{
  v3 = MEMORY[0x277CBEB98];
  interfaceCopy = interface;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  [interfaceCopy setClasses:v6 forSelector:sel_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion_ argumentIndex:0 ofReply:1];
}

+ (id)sharedService
{
  if (sharedService_onceToken_3 != -1)
  {
    +[SLDShareableContentService sharedService];
  }

  v3 = sharedService_sService_3;

  return v3;
}

uint64_t __43__SLDShareableContentService_sharedService__block_invoke()
{
  v0 = objc_alloc_init(SLDShareableContentService);
  v1 = sharedService_sService_3;
  sharedService_sService_3 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SLDShareableContentService)init
{
  v16.receiver = self;
  v16.super_class = SLDShareableContentService;
  v2 = [(SLDShareableContentService *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.SharedWithYou.SLDShareableContentService", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    configurationForDefaultMainDisplayMonitor = [MEMORY[0x277D0AD20] configurationForDefaultMainDisplayMonitor];
    objc_initWeak(&location, v2);
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __34__SLDShareableContentService_init__block_invoke;
    v13 = &unk_278926DD8;
    objc_copyWeak(&v14, &location);
    [configurationForDefaultMainDisplayMonitor setTransitionHandler:&v10];
    v7 = [MEMORY[0x277D0AD08] monitorWithConfiguration:{configurationForDefaultMainDisplayMonitor, v10, v11, v12, v13}];
    layoutMonitor = v2->_layoutMonitor;
    v2->_layoutMonitor = v7;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __34__SLDShareableContentService_init__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  objc_copyWeak(&to, (a1 + 32));
  v10 = objc_loadWeakRetained(&to);
  v11 = [v10 queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SLDShareableContentService_init__block_invoke_2;
  block[3] = &unk_278926DB0;
  v14 = v8;
  v12 = v8;
  objc_copyWeak(&v15, &to);
  dispatch_async(v11, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&to);
}

void __34__SLDShareableContentService_init__block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if ([WeakRetained isLayoutMonitorReady])
    {
    }

    else
    {
      v2 = objc_loadWeakRetained((a1 + 40));
      v3 = [v2 retrieveShareableContentBlock];

      if (v3)
      {
        v5 = SLShareableContentLogHandle(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Layout monitor is now ready.", buf, 2u);
        }

        v6 = objc_loadWeakRetained((a1 + 40));
        [v6 setIsLayoutMonitorReady:1];

        v7 = objc_loadWeakRetained((a1 + 40));
        v8 = [v7 retrieveShareableContentBlock];
        v8[2]();

        v9 = objc_loadWeakRetained((a1 + 40));
        [v9 setRetrieveShareableContentBlock:0];
      }
    }
  }
}

- (void)dealloc
{
  [(FBSDisplayLayoutMonitor *)self->_layoutMonitor invalidate];
  v3.receiver = self;
  v3.super_class = SLDShareableContentService;
  [(SLDShareableContentService *)&v3 dealloc];
}

- (BOOL)allowsConnection:(id)connection
{
  connectionCopy = connection;
  IsEntitledForShareableContent = SLDConnectionIsEntitledForShareableContent(connectionCopy);
  v5 = IsEntitledForShareableContent;
  if ((IsEntitledForShareableContent & 1) == 0)
  {
    v6 = SLShareableContentLogHandle(IsEntitledForShareableContent);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SLDShareableContentService allowsConnection:];
    }
  }

  return v5;
}

- (id)visibleApplications
{
  v35 = *MEMORY[0x277D85DE8];
  layoutMonitor = [(SLDShareableContentService *)self layoutMonitor];
  currentLayout = [layoutMonitor currentLayout];
  elements = [currentLayout elements];

  v27 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(elements, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = elements;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        currentConnection = [MEMORY[0x277CCAE80] currentConnection];
        bundleIdentifier = [v11 bundleIdentifier];
        v14 = [(SLDShareableContentService *)self _applicationIdentifierForConnection:currentConnection];
        v15 = [bundleIdentifier isEqualToString:v14];

        if (v15)
        {
          v17 = SLShareableContentLogHandle(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            bundleIdentifier2 = [v11 bundleIdentifier];
            *buf = 138412290;
            v33 = bundleIdentifier2;
            v19 = v17;
            v20 = OS_LOG_TYPE_INFO;
            v21 = "[VisibleApplications] Skipping element for %@ because it's from the process requesting shareable content";
LABEL_16:
            _os_log_impl(&dword_231772000, v19, v20, v21, buf, 0xCu);
          }
        }

        else
        {
          bundleIdentifier3 = [v11 bundleIdentifier];
          v23 = [bundleIdentifier3 isEqualToString:@"com.apple.purplebuddy"];

          if (v23)
          {
            v17 = SLShareableContentLogHandle(v24);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              bundleIdentifier2 = [v11 bundleIdentifier];
              *buf = 138412290;
              v33 = bundleIdentifier2;
              v19 = v17;
              v20 = OS_LOG_TYPE_DEFAULT;
              v21 = "[VisibleApplications] Skipping element for %@ as Purple Buddy is not a valid source of shareable content";
              goto LABEL_16;
            }
          }

          else
          {
            isUIApplicationElement = [v11 isUIApplicationElement];
            if (isUIApplicationElement)
            {
              [v27 addObject:v11];
              goto LABEL_18;
            }

            v17 = SLShareableContentLogHandle(isUIApplicationElement);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              bundleIdentifier2 = [v11 bundleIdentifier];
              *buf = 138412290;
              v33 = bundleIdentifier2;
              v19 = v17;
              v20 = OS_LOG_TYPE_INFO;
              v21 = "[VisibleApplications] Skipping element for %@ because it's not a UI application element";
              goto LABEL_16;
            }
          }
        }

LABEL_18:
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v8);
  }

  return v27;
}

- (id)visibleApplicationForSceneIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  visibleApplications = [(SLDShareableContentService *)self visibleApplications];
  v6 = [visibleApplications countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(visibleApplications);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        identifier = [v11 identifier];
        v13 = [identifier isEqual:identifierCopy];

        if (v13)
        {
          v14 = v11;

          v8 = v14;
        }
      }

      v7 = [visibleApplications countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)launchApplicationWithBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier forActions:(id)actions completionHandler:(id)handler
{
  identifierCopy = identifier;
  actionsCopy = actions;
  handlerCopy = handler;
  v11 = handlerCopy;
  if (identifierCopy)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D0ABF0]];
    [dictionary setObject:actionsCopy forKeyedSubscript:*MEMORY[0x277D0ABD0]];
    v13 = [MEMORY[0x277D0AD60] optionsWithDictionary:dictionary];
    serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __113__SLDShareableContentService_launchApplicationWithBundleIdentifier_sceneIdentifier_forActions_completionHandler___block_invoke;
    v16[3] = &unk_278926380;
    v17 = identifierCopy;
    v18 = v11;
    [serviceWithDefaultShellEndpoint openApplication:v17 withOptions:v13 completion:v16];
  }

  else
  {
    v15 = SLShareableContentLogHandle(handlerCopy);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SLDShareableContentService launchApplicationWithBundleIdentifier:sceneIdentifier:forActions:completionHandler:];
    }

    if (v11)
    {
      v11[2](v11, 0);
    }
  }
}

void __113__SLDShareableContentService_launchApplicationWithBundleIdentifier_sceneIdentifier_forActions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = SLShareableContentLogHandle(v6);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __113__SLDShareableContentService_launchApplicationWithBundleIdentifier_sceneIdentifier_forActions_completionHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v11 = 138412290;
    v12 = v9;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "Application launch succeeded for bundle identifier: %@", &v11, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v6);
  }
}

- (void)performAction:(id)action onApplicationWithBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier
{
  v12[1] = *MEMORY[0x277D85DE8];
  sceneIdentifierCopy = sceneIdentifier;
  identifierCopy = identifier;
  action = [action action];
  v12[0] = action;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  [(SLDShareableContentService *)self launchApplicationWithBundleIdentifier:identifierCopy sceneIdentifier:sceneIdentifierCopy forActions:v11 completionHandler:0];
}

- (void)populateInitiatorMetadata:(id)metadata request:(id)request completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  requestCopy = request;
  handlerCopy = handler;
  collaborationMetadata = [requestCopy collaborationMetadata];
  v12 = collaborationMetadata;
  if (collaborationMetadata)
  {
    v13 = SLShareableContentLogHandle(collaborationMetadata);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v12;
      _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_DEFAULT, "Populating initiator name and handle from custom collaboration metadata: %@", buf, 0xCu);
    }

    initiatorHandle = [v12 initiatorHandle];
    [metadataCopy setInitiatorHandle:initiatorHandle];

    initiatorNameComponents = [v12 initiatorNameComponents];
    [metadataCopy setInitiatorNameComponents:initiatorNameComponents];

    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_13;
  }

  fileURL = [requestCopy fileURL];
  if (fileURL)
  {

LABEL_8:
    v19 = SLShareableContentLogHandle(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      fileURL2 = [requestCopy fileURL];
      containerSetupInfo = [requestCopy containerSetupInfo];
      *buf = 138412546;
      *&buf[4] = fileURL2;
      *&buf[12] = 2112;
      *&buf[14] = containerSetupInfo;
      _os_log_impl(&dword_231772000, v19, OS_LOG_TYPE_DEFAULT, "Populating initiator name and handle from initiator metadata (fileURL: %@, containerSetupInfo: %@", buf, 0x16u);
    }

    v30 = 0;
    v31 = &v30;
    v32 = 0x2050000000;
    v22 = getCSCloudSharingClass_softClass_0;
    v33 = getCSCloudSharingClass_softClass_0;
    if (!getCSCloudSharingClass_softClass_0)
    {
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = __getCSCloudSharingClass_block_invoke_0;
      v35 = &unk_278925B78;
      v36 = &v30;
      __getCSCloudSharingClass_block_invoke_0(buf);
      v22 = v31[3];
    }

    v23 = v22;
    _Block_object_dispose(&v30, 8);
    fileURL3 = [requestCopy fileURL];
    containerSetupInfo2 = [requestCopy containerSetupInfo];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __82__SLDShareableContentService_populateInitiatorMetadata_request_completionHandler___block_invoke;
    v27[3] = &unk_278926E28;
    v27[4] = self;
    v29 = handlerCopy;
    v28 = metadataCopy;
    [v22 userNameAndEmail:fileURL3 containerSetupInfo:containerSetupInfo2 completionHandler:v27];

    goto LABEL_13;
  }

  containerSetupInfo3 = [requestCopy containerSetupInfo];

  if (containerSetupInfo3)
  {
    goto LABEL_8;
  }

  v26 = SLShareableContentLogHandle(v17);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v26, OS_LOG_TYPE_DEFAULT, "Not populating initiator name and handle for shareable content with no collaborative representations", buf, 2u);
  }

  handlerCopy[2](handlerCopy, 1, 0);
LABEL_13:
}

void __82__SLDShareableContentService_populateInitiatorMetadata_request_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) queue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__SLDShareableContentService_populateInitiatorMetadata_request_completionHandler___block_invoke_2;
  v17[3] = &unk_278926E00;
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v22 = v11;
  v17[4] = v12;
  v18 = v13;
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v14 = v9;
  v15 = v8;
  v16 = v7;
  dispatch_async(v10, v17);
}

uint64_t __82__SLDShareableContentService_populateInitiatorMetadata_request_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = [*(a1 + 32) populateInitiatorMetadata:*(a1 + 40) name:*(a1 + 48) email:*(a1 + 56)];
  v4 = *(a1 + 64);
  v5 = *(v2 + 16);

  return v5(v2, v3, v4);
}

- (BOOL)populateInitiatorMetadata:(id)metadata name:(id)name email:(id)email
{
  metadataCopy = metadata;
  nameCopy = name;
  v9 = (nameCopy | email) != 0;
  if (nameCopy | email)
  {
    [metadataCopy setInitiatorHandle:email];
    if (nameCopy)
    {
      v10 = objc_alloc_init(MEMORY[0x277CCAC08]);
      v11 = [v10 personNameComponentsFromString:nameCopy];
      [metadataCopy setInitiatorNameComponents:v11];
    }
  }

  return v9;
}

- (void)fetchShareableContentMetadataFromBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  completionCopy = completion;
  v11 = [SLFetchShareableContentMetadataAction alloc];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v16[3] = &unk_278926E78;
  selfCopy = self;
  v19 = completionCopy;
  v17 = identifierCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = [(SLShareableContentAction *)v11 initWithSceneIdentifier:sceneIdentifierCopy responseHandler:v16];
  v15 = SLShareableContentLogHandle(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = sceneIdentifierCopy;
    _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_DEFAULT, "Fetching shareable content metadata for scene: %{public}@", buf, 0xCu);
  }

  [(SLDShareableContentService *)self performAction:v14 onApplicationWithBundleIdentifier:v13 sceneIdentifier:sceneIdentifierCopy];
}

void __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [v6 metadata];
  v8 = [v6 initiatorRequest];

  if (!v7)
  {
    v14 = SLShareableContentLogHandle(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_2();
    }

    v15 = *(*(a1 + 48) + 16);
    goto LABEL_10;
  }

  v10 = [v7 bundleIdentifier];
  v11 = [v10 isEqualToString:*(a1 + 32)];

  if ((v11 & 1) == 0)
  {
    v16 = SLShareableContentLogHandle(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_1();
    }

    v15 = *(*(a1 + 48) + 16);
LABEL_10:
    v15();
    goto LABEL_11;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_81;
  v17[3] = &unk_278926E50;
  v13 = *(a1 + 40);
  v18 = *(a1 + 32);
  v20 = *(a1 + 48);
  v19 = v7;
  [v13 populateInitiatorMetadata:v19 request:v8 completionHandler:v17];

LABEL_11:
}

void __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_81(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = SLShareableContentLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_81_cold_1();
    }
  }

  (*(*(a1 + 48) + 16))();
}

- (void)fetchAsynchronousLPMetadataFromBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion
{
  v24 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  completionCopy = completion;
  v11 = [SLFetchAsynchronousLPMetadataAction alloc];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __105__SLDShareableContentService_fetchAsynchronousLPMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v19 = &unk_278926EA0;
  v20 = identifierCopy;
  v21 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = [(SLShareableContentAction *)v11 initWithSceneIdentifier:sceneIdentifierCopy responseHandler:&v16];
  v15 = SLShareableContentLogHandle(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = sceneIdentifierCopy;
    _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous content metadata for scene: %{public}@", buf, 0xCu);
  }

  [(SLDShareableContentService *)self performAction:v14 onApplicationWithBundleIdentifier:v13 sceneIdentifier:sceneIdentifierCopy, v16, v17, v18, v19];
}

void __105__SLDShareableContentService_fetchAsynchronousLPMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = *(a1 + 40);
    v8 = [a2 metadata];
    (*(v7 + 16))(v7, v8, v6);
  }

  else
  {
    v9 = SLShareableContentLogHandle(v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __105__SLDShareableContentService_fetchAsynchronousLPMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)fetchShareableContentFromBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier requestedTypeIdentifier:(id)typeIdentifier requestedItemProviderIndex:(int64_t)index responseHandler:(id)handler
{
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  typeIdentifierCopy = typeIdentifier;
  handlerCopy = handler;
  if ([identifierCopy length])
  {
    v16 = identifierCopy;
    bundleIdentifier = v16;
    if (v16)
    {
LABEL_3:
      v18 = [[SLFetchShareableContentAction alloc] initWithSceneIdentifier:sceneIdentifierCopy requestedTypeIdentifier:typeIdentifierCopy requestedItemProviderIndex:index responseHandler:handlerCopy];
      [(SLDShareableContentService *)self performAction:v18 onApplicationWithBundleIdentifier:bundleIdentifier sceneIdentifier:sceneIdentifierCopy];

      goto LABEL_8;
    }
  }

  else
  {
    v19 = [(SLDShareableContentService *)self visibleApplicationForSceneIdentifier:sceneIdentifierCopy];
    bundleIdentifier = [v19 bundleIdentifier];

    if (bundleIdentifier)
    {
      goto LABEL_3;
    }
  }

  v20 = SLShareableContentLogHandle(v16);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [SLDShareableContentService fetchShareableContentFromBundleIdentifier:sceneIdentifierCopy sceneIdentifier:self requestedTypeIdentifier:? requestedItemProviderIndex:? responseHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_8:
}

- (void)retrieveShareableContentMetadataMatchingBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  completionCopy = completion;
  queue = [(SLDShareableContentService *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v15[3] = &unk_278926F68;
  v16 = identifierCopy;
  v17 = sceneIdentifierCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = sceneIdentifierCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([a1[4] length] && (v2 = objc_msgSend(a1[5], "length")) != 0)
  {
    v3 = SLShareableContentLogHandle(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = a1[5];
      *buf = 138412546;
      v21 = v4;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "Fetching shareable content from bundle identifier: %@ scene identifier: %@", buf, 0x16u);
    }

    v7 = a1[5];
    v6 = a1[6];
    v8 = a1[4];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_87;
    v18[3] = &unk_278926EC8;
    v19 = a1[7];
    [v6 fetchShareableContentMetadataFromBundleIdentifier:v8 sceneIdentifier:v7 completion:v18];
  }

  else
  {
    objc_initWeak(buf, a1[6]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2;
    aBlock[3] = &unk_278926F40;
    objc_copyWeak(&v17, buf);
    v14 = a1[4];
    v15 = a1[5];
    v16 = a1[7];
    v9 = _Block_copy(aBlock);
    v10 = [a1[6] isLayoutMonitorReady];
    if (v10)
    {
      v9[2](v9);
    }

    else
    {
      v11 = SLShareableContentLogHandle(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "Layout monitor is not ready, waiting to fetch shareable content.", v12, 2u);
      }

      [a1[6] setRetrieveShareableContentBlock:v9];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v8[0] = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  (*(*(a1 + 32) + 16))();
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, a1 + 7);
  v3 = SLShareableContentLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "Fetching shareable content matching bundle identifier: %@ scene identifier: %@", buf, 0x16u);
  }

  v6 = objc_loadWeakRetained(&to);
  v7 = [v6 visibleApplications];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_89;
  v10[3] = &unk_278926EF0;
  v11 = a1[4];
  v12 = a1[5];
  objc_copyWeak(&v13, &to);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_98;
  v8[3] = &unk_278926F18;
  v9 = a1[6];
  [v7 sl_mapAsynchronously:v10 completionHandler:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&to);
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_89(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 bundleIdentifier];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v8 isEqualToString:v7] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v5 identifier];
    LODWORD(v10) = [v10 isEqualToString:v11] ^ 1;
  }

  v12 = [v7 length];
  if (v12 == 0) | v9 & 1 || (v10)
  {
    v15 = SLShareableContentLogHandle(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = @"YES";
      if (v9)
      {
        v17 = @"NO";
      }

      else
      {
        v17 = @"YES";
      }

      *buf = 138412802;
      v21 = v5;
      v22 = 2112;
      v23 = v17;
      if (v10)
      {
        v16 = @"NO";
      }

      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_INFO, "Skipping fetching shareable content for layout element: %@ layoutElementMatchesBundleIdentifier: %@ layoutElementMatchesSceneIdentifier: %@", buf, 0x20u);
    }

    v6[2](v6, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v14 = [v5 identifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2_90;
    v18[3] = &unk_278926EC8;
    v19 = v6;
    [WeakRetained fetchShareableContentMetadataFromBundleIdentifier:v7 sceneIdentifier:v14 completion:v18];
  }
}

void __114__SLDShareableContentService_retrieveShareableContentMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_98(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SLShareableContentLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "Fetched shareable content metadata for on screen applications: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)retrieveAsynchronousLPMetadataMatchingBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  completionCopy = completion;
  queue = [(SLDShareableContentService *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v15[3] = &unk_278926F68;
  v16 = identifierCopy;
  v17 = sceneIdentifierCopy;
  selfCopy = self;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = sceneIdentifierCopy;
  v14 = identifierCopy;
  dispatch_async(queue, v15);
}

void __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke(id *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([a1[4] length] && (v2 = objc_msgSend(a1[5], "length")) != 0)
  {
    v3 = SLShareableContentLogHandle(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = a1[5];
      *buf = 138412546;
      v21 = v4;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous content from bundle identifier: %@ scene identifier: %@", buf, 0x16u);
    }

    v7 = a1[5];
    v6 = a1[6];
    v8 = a1[4];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_100;
    v18[3] = &unk_278926F90;
    v19 = a1[7];
    [v6 fetchAsynchronousLPMetadataFromBundleIdentifier:v8 sceneIdentifier:v7 completion:v18];
  }

  else
  {
    objc_initWeak(buf, a1[6]);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2;
    aBlock[3] = &unk_278926F40;
    objc_copyWeak(&v17, buf);
    v14 = a1[4];
    v15 = a1[5];
    v16 = a1[7];
    v9 = _Block_copy(aBlock);
    v10 = [a1[6] isLayoutMonitorReady];
    if (v10)
    {
      v9[2](v9);
    }

    else
    {
      v11 = SLShareableContentLogHandle(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "Layout monitor is not ready, waiting to fetch shareable content.", v12, 2u);
      }

      [a1[6] setRetrieveShareableContentBlock:v9];
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2(id *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  objc_copyWeak(&to, a1 + 7);
  v3 = SLShareableContentLogHandle(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v5 = a1[5];
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous content matching bundle identifier: %@ scene identifier: %@", buf, 0x16u);
  }

  v6 = objc_loadWeakRetained(&to);
  v7 = [v6 visibleApplications];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_102;
  v10[3] = &unk_278926FB8;
  v11 = a1[4];
  v12 = a1[5];
  objc_copyWeak(&v13, &to);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_105;
  v8[3] = &unk_278926F18;
  v9 = a1[6];
  [v7 sl_mapAsynchronously:v10 completionHandler:v8];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&to);
}

void __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_102(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v5 bundleIdentifier];
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = [v8 isEqualToString:v7] ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v5 identifier];
    LODWORD(v10) = [v10 isEqualToString:v11] ^ 1;
  }

  v12 = [v7 length];
  if (v12 == 0) | v9 & 1 || (v10)
  {
    v15 = SLShareableContentLogHandle(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = @"YES";
      if (v9)
      {
        v17 = @"NO";
      }

      else
      {
        v17 = @"YES";
      }

      *buf = 138412802;
      v21 = v5;
      v22 = 2112;
      v23 = v17;
      if (v10)
      {
        v16 = @"NO";
      }

      v24 = 2112;
      v25 = v16;
      _os_log_impl(&dword_231772000, v15, OS_LOG_TYPE_DEFAULT, "Skipping fetching asynchronous content for layout element: %@ layoutElementMatchesBundleIdentifier: %@ layoutElementMatchesSceneIdentifier: %@", buf, 0x20u);
    }

    v6[2](v6, 0);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v14 = [v5 identifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_2_103;
    v18[3] = &unk_278926F90;
    v19 = v6;
    [WeakRetained fetchAsynchronousLPMetadataFromBundleIdentifier:v7 sceneIdentifier:v14 completion:v18];
  }
}

void __112__SLDShareableContentService_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_105(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SLShareableContentLogHandle(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "Fetched asynchronous content metadata for on screen applications: %@", &v7, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = [v3 firstObject];
  (*(v5 + 16))(v5, v6, 0);
}

- (void)loadRepresentationFromBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier requestedTypeIdentifier:(id)typeIdentifier requestedItemProviderIndex:(int64_t)index completionHandler:(id)handler
{
  sceneIdentifierCopy = sceneIdentifier;
  handlerCopy = handler;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __154__SLDShareableContentService_loadRepresentationFromBundleIdentifier_sceneIdentifier_requestedTypeIdentifier_requestedItemProviderIndex_completionHandler___block_invoke;
  v16[3] = &unk_278926FE0;
  v17 = sceneIdentifierCopy;
  v18 = handlerCopy;
  v14 = handlerCopy;
  v15 = sceneIdentifierCopy;
  [(SLDShareableContentService *)self fetchShareableContentFromBundleIdentifier:identifier sceneIdentifier:v15 requestedTypeIdentifier:typeIdentifier requestedItemProviderIndex:index responseHandler:v16];
}

void __154__SLDShareableContentService_loadRepresentationFromBundleIdentifier_sceneIdentifier_requestedTypeIdentifier_requestedItemProviderIndex_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 result];
  if (!v6)
  {
    v7 = SLShareableContentLogHandle(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __154__SLDShareableContentService_loadRepresentationFromBundleIdentifier_sceneIdentifier_requestedTypeIdentifier_requestedItemProviderIndex_completionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)presentMessageComposeSheetForSceneIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = [(SLDShareableContentService *)self visibleApplicationForSceneIdentifier:identifierCopy];
  if (v8)
  {
    v9 = [SLSendShareableContentAction alloc];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __86__SLDShareableContentService_presentMessageComposeSheetForSceneIdentifier_completion___block_invoke;
    v16 = &unk_278927008;
    v17 = identifierCopy;
    v18 = completionCopy;
    v10 = [(SLShareableContentAction *)v9 initWithSceneIdentifier:v17 responseHandler:&v13];
    bundleIdentifier = [v8 bundleIdentifier];
    [(SLDShareableContentService *)self performAction:v10 onApplicationWithBundleIdentifier:bundleIdentifier sceneIdentifier:0];
  }

  else
  {
    v12 = SLShareableContentLogHandle(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SLDShareableContentService presentMessageComposeSheetForSceneIdentifier:? completion:?];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __86__SLDShareableContentService_presentMessageComposeSheetForSceneIdentifier_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = SLShareableContentLogHandle(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __86__SLDShareableContentService_presentMessageComposeSheetForSceneIdentifier_completion___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)shareCollaborationData:(id)data faceTimeConversationUUID:(id)d completionHandler:(id)handler
{
  v39 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dCopy = d;
  handlerCopy = handler;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  v12 = [(SLDShareableContentService *)self _connShouldAllowBackgroundCollaboration:currentConnection];

  v14 = SLDaemonLogHandle(v13);
  dictionary = v14;
  if (v12)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SLDShareableContentService shareCollaborationData:faceTimeConversationUUID:completionHandler:];
    }
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_231772000, dictionary, OS_LOG_TYPE_INFO, "Initiating process has background collaboration entitlement, proceeding to initiate collaboration", buf, 2u);
    }

    v31 = handlerCopy;

    v16 = [objc_alloc(MEMORY[0x277CCAE58]) initWithActivityType:@"com.apple.Messages.BackgroundCollaboration"];
    [(SLDShareableContentService *)self setActivity:v16];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:dataCopy forKeyedSubscript:@"shud"];
    [dictionary setObject:dCopy forKeyedSubscript:@"FaceTimeUUID"];
    v17 = [dictionary copy];
    activity = [(SLDShareableContentService *)self activity];
    [activity setUserInfo:v17];

    v20 = SLDaemonLogHandle(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v38 = dictionary;
      _os_log_impl(&dword_231772000, v20, OS_LOG_TYPE_INFO, "Initiating collaboration via messages using userInfoDictionary %@", buf, 0xCu);
    }

    v34 = 0;
    v21 = [MEMORY[0x277CC1E90] bundleRecordWithApplicationIdentifier:@"com.apple.MobileSMS" error:&v34];
    v22 = v34;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v24 = v21;
      v25 = objc_opt_new();
      v35 = *MEMORY[0x277D0ABF0];
      v36 = MEMORY[0x277CBEC38];
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      [v25 setFrontBoardOptions:v26];
      [(SLDShareableContentService *)self activity];
      v27 = v30 = v22;
      [v27 becomeCurrent];

      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      activity2 = [(SLDShareableContentService *)self activity];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __96__SLDShareableContentService_shareCollaborationData_faceTimeConversationUUID_completionHandler___block_invoke;
      v32[3] = &unk_278927030;
      v32[4] = self;
      v33 = v31;
      [defaultWorkspace openUserActivity:activity2 usingApplicationRecord:v24 configuration:v25 completionHandler:v32];

      handlerCopy = v31;
      v22 = v30;
    }

    else
    {
      v25 = SLDaemonLogHandle(isKindOfClass);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_231772000, v25, OS_LOG_TYPE_DEFAULT, "Did not find LSApplicationRecord for messages, cannot launch user activity to initiate background collaboration", buf, 2u);
      }
    }
  }
}

void __96__SLDShareableContentService_shareCollaborationData_faceTimeConversationUUID_completionHandler___block_invoke(uint64_t a1, int a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = SLDaemonLogHandle(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_231772000, v6, OS_LOG_TYPE_DEFAULT, "Opened user activity for collaboration success: %@ error: %@", buf, 0x16u);
  }

  v8 = dispatch_time(0, 2000000000);
  v9 = [*(a1 + 32) queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __96__SLDShareableContentService_shareCollaborationData_faceTimeConversationUUID_completionHandler___block_invoke_124;
  v12[3] = &unk_2789260C8;
  v10 = *(a1 + 40);
  v13 = v5;
  v14 = v10;
  v11 = v5;
  dispatch_after(v8, v9, v12);
}

- (BOOL)_connShouldAllowBackgroundCollaboration:(id)collaboration
{
  v3 = [MEMORY[0x277CF0CD0] processHandleForNSXPCConnection:collaboration];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [0 hasEntitlement:@"com.apple.private.sociallayer.background-collaboration"];
  }

  return v4;
}

- (id)_applicationIdentifierForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = connectionCopy;
  v6 = MEMORY[0x277CC1E90];
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v14 = 0;
  v7 = [v6 bundleRecordForAuditToken:v15 error:&v14];
  v8 = v14;
  applicationIdentifier = [v7 applicationIdentifier];

  if (!applicationIdentifier)
  {
    v11 = SLShareableContentLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SLDShareableContentService *)self _applicationIdentifierForConnection:v8];
    }
  }

  applicationIdentifier2 = [v7 applicationIdentifier];

  return applicationIdentifier2;
}

void __113__SLDShareableContentService_launchApplicationWithBundleIdentifier_sceneIdentifier_forActions_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "Application launch failed for %{public}@: %{public}@");
}

void __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "Failed to get shareable content for scene in %{public}@: %{public}@");
}

void __107__SLDShareableContentService_fetchShareableContentMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_81_cold_1()
{
  OUTLINED_FUNCTION_2_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "Failed to populate metadata for scene in %{public}@: %{public}@");
}

void __105__SLDShareableContentService_fetchAsynchronousLPMetadataFromBundleIdentifier_sceneIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "Failed to fetch asynchronous shareable content for scene in %{public}@: %{public}@");
}

- (void)fetchShareableContentFromBundleIdentifier:(uint64_t)a1 sceneIdentifier:(void *)a2 requestedTypeIdentifier:requestedItemProviderIndex:responseHandler:.cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 visibleApplications];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __154__SLDShareableContentService_loadRepresentationFromBundleIdentifier_sceneIdentifier_requestedTypeIdentifier_requestedItemProviderIndex_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_0(&dword_231772000, v0, v1, "Failed to load representation for content in scene %{public}@: %{public}@");
}

- (void)presentMessageComposeSheetForSceneIdentifier:(void *)a1 completion:.cold.1(void *a1)
{
  v6 = [a1 visibleApplications];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void __86__SLDShareableContentService_presentMessageComposeSheetForSceneIdentifier_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_5(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_applicationIdentifierForConnection:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v8 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

@end