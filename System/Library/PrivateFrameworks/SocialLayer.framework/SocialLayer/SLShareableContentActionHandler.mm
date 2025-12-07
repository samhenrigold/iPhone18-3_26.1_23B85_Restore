@interface SLShareableContentActionHandler
+ (SLShareableContentActionHandler)sharedActionHandler;
- (id)activityItemsConfigurationForSceneWithIdentifier:(id)identifier;
- (id)lpMetadataForActivityItemsConfiguration:(id)configuration;
- (id)respondToBSActions:(id)actions;
- (id)sceneWithIdentifier:(id)identifier;
- (id)titleForActivityItemsConfiguration:(id)configuration;
- (void)fulfillAsynchronousMetadataAction:(id)action linkMetadata:(id)metadata;
- (void)fulfillAsynchronousMetadataAction:(id)action response:(id)response;
- (void)fulfillContentAction:(id)action itemProvider:(id)provider;
- (void)fulfillMetadataAction:(id)action error:(id)error;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata containerSetupInfo:(id)info;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata highlightURL:(id)l initiatorRequest:(id)request;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata inPlaceFileURL:(id)l;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata pendingCollaboration:(id)collaboration;
- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata sharingContext:(id)context;
- (void)fulfillMetadataAction:(id)action response:(id)response;
- (void)performAction:(id)action;
- (void)performActions:(id)actions;
- (void)performFetchAsynchronousLPMetadataAction:(id)action;
- (void)performFetchShareableContentAction:(id)action;
- (void)performFetchShareableContentMetadataAction:(id)action;
- (void)performSendShareableContentAction:(id)action;
@end

@implementation SLShareableContentActionHandler

+ (SLShareableContentActionHandler)sharedActionHandler
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SLShareableContentActionHandler_sharedActionHandler__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedActionHandler_onceToken != -1)
  {
    dispatch_once(&sharedActionHandler_onceToken, block);
  }

  v2 = sharedActionHandler_sExtractor;

  return v2;
}

uint64_t __54__SLShareableContentActionHandler_sharedActionHandler__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedActionHandler_sExtractor;
  sharedActionHandler_sExtractor = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (id)sceneWithIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  connectedScenes = [mEMORY[0x277D75128] connectedScenes];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = connectedScenes;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v20 + 1) + 8 * v10);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _FBSScene = [v11 _FBSScene];
        identifier = [_FBSScene identifier];
        v14 = [identifier isEqualToString:identifierCopy];

        if (v14)
        {
          break;
        }
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v16 = v11;

    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = v16;
  }

  else
  {
LABEL_10:

LABEL_13:
    v18 = SLShareableContentLogHandle(v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SLShareableContentActionHandler sceneWithIdentifier:];
    }

    v17 = 0;
  }

  return v17;
}

- (id)activityItemsConfigurationForSceneWithIdentifier:(id)identifier
{
  v4 = [(SLShareableContentActionHandler *)self sceneWithIdentifier:identifier];
  v5 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForScene:v4];

  return v5;
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata
{
  v47 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  providersCopy = providers;
  metadataCopy = metadata;
  firstObject = [providersCopy firstObject];
  v12 = [firstObject registeredTypeIdentifiersWithFileOptions:1];
  if ([firstObject canLoadObjectOfClass:getCKPostSharingContextClass()])
  {
    CKPostSharingContextClass = getCKPostSharingContextClass();
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke;
    v41[3] = &unk_278927658;
    v41[4] = self;
    v42 = actionCopy;
    v43 = providersCopy;
    v44 = metadataCopy;
    v14 = [firstObject loadObjectOfClass:CKPostSharingContextClass completionHandler:v41];

    v15 = v42;
LABEL_13:

    goto LABEL_14;
  }

  if ([firstObject canLoadObjectOfClass:getCKContainerSetupInfoClass()])
  {
    CKContainerSetupInfoClass = getCKContainerSetupInfoClass();
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_13;
    v37[3] = &unk_278927658;
    v37[4] = self;
    v38 = actionCopy;
    v39 = providersCopy;
    v40 = metadataCopy;
    v17 = [firstObject loadObjectOfClass:CKContainerSetupInfoClass completionHandler:v37];

    v15 = v38;
    goto LABEL_13;
  }

  if ([firstObject canLoadObjectOfClass:objc_opt_class()])
  {
    v18 = objc_opt_class();
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_16;
    v33[3] = &unk_278927658;
    v33[4] = self;
    v34 = actionCopy;
    v35 = providersCopy;
    v36 = metadataCopy;
    v19 = [firstObject loadObjectOfClass:v18 completionHandler:v33];

    v15 = v34;
    goto LABEL_13;
  }

  firstObject2 = [v12 firstObject];
  if ([firstObject2 isEqualToString:*MEMORY[0x277CDC720]])
  {
    v21 = [firstObject hasItemConformingToTypeIdentifier:@"public.file-url"];

    if (v21)
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_21;
      v29[3] = &unk_278927680;
      v29[4] = self;
      v30 = actionCopy;
      v31 = providersCopy;
      v32 = metadataCopy;
      [firstObject loadItemForTypeIdentifier:@"public.file-url" options:0 completionHandler:v29];

      v15 = v30;
      goto LABEL_13;
    }
  }

  else
  {
  }

  if ([v12 count])
  {
    firstObject3 = [v12 firstObject];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_24;
    v25[3] = &unk_2789276D0;
    v25[4] = self;
    v26 = actionCopy;
    v27 = providersCopy;
    v28 = metadataCopy;
    v23 = [firstObject loadInPlaceFileRepresentationForTypeIdentifier:firstObject3 completionHandler:v25];

    v15 = v26;
    goto LABEL_13;
  }

  v24 = SLShareableContentLogHandle(0);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = firstObject;
    _os_log_impl(&dword_231772000, v24, OS_LOG_TYPE_DEFAULT, "Fulfilling action without initiator request for item provider without any registered collaborations: %@", buf, 0xCu);
  }

  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:0 initiatorRequest:0];
LABEL_14:
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2;
  block[3] = &unk_278927630;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2(uint64_t a1)
{
  getCKPostSharingContextClass();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);

    return [v3 fulfillMetadataAction:v4 itemProviders:v5 linkMetadata:v6 sharingContext:v7];
  }

  else
  {
    v9 = SLShareableContentLogHandle(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_cold_1(a1, v9);
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_14;
  block[3] = &unk_278927630;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_14(uint64_t a1)
{
  getCKContainerSetupInfoClass();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);

    return [v3 fulfillMetadataAction:v4 itemProviders:v5 linkMetadata:v6 containerSetupInfo:v7];
  }

  else
  {
    v9 = SLShareableContentLogHandle(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_14_cold_1(a1, v9);
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_17;
  block[3] = &unk_278927630;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_17(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v8 = *(a1 + 32);

    return [v4 fulfillMetadataAction:v5 itemProviders:v6 linkMetadata:v7 pendingCollaboration:v8];
  }

  else
  {
    v10 = SLShareableContentLogHandle(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_17_cold_1(a1, v10);
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_21(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_22;
  block[3] = &unk_278927630;
  v15 = v5;
  v16 = v6;
  v13 = *(a1 + 32);
  v7 = *(&v13 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v17 = v13;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_22(uint64_t a1)
{
  v2 = [*(a1 + 32) isFileURL];
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);

    return [v3 fulfillMetadataAction:v4 itemProviders:v5 linkMetadata:v6 inPlaceFileURL:v7];
  }

  else
  {
    v9 = SLShareableContentLogHandle(v2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_22_cold_1();
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_24(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_25;
  block[3] = &unk_2789276A8;
  v21 = a3;
  v17 = v7;
  v18 = v8;
  v15 = *(a1 + 32);
  v9 = *(&v15 + 1);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  v19 = v15;
  v20 = v12;
  v13 = v8;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_25(uint64_t a1)
{
  v2 = [*(a1 + 32) isFileURL];
  if (v2 && (*(a1 + 80) & 1) != 0)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 72);
    v7 = *(a1 + 32);

    return [v3 fulfillMetadataAction:v4 itemProviders:v5 linkMetadata:v6 inPlaceFileURL:v7];
  }

  else
  {
    v9 = SLShareableContentLogHandle(v2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_25_cold_1();
    }

    return [*(a1 + 48) fulfillMetadataAction:*(a1 + 56) error:*(a1 + 40)];
  }
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata sharingContext:(id)context
{
  contextCopy = context;
  metadataCopy = metadata;
  providersCopy = providers;
  actionCopy = action;
  v14 = [SLShareableContentInitiatorRequest alloc];
  containerSetupInfo = [contextCopy containerSetupInfo];
  v18 = [(SLShareableContentInitiatorRequest *)v14 initWithContainerSetupInfo:containerSetupInfo];

  share = [contextCopy share];

  v17 = [share URL];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:v17 initiatorRequest:v18];
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata containerSetupInfo:(id)info
{
  infoCopy = info;
  metadataCopy = metadata;
  providersCopy = providers;
  actionCopy = action;
  v14 = [[SLShareableContentInitiatorRequest alloc] initWithContainerSetupInfo:infoCopy];

  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:0 initiatorRequest:v14];
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata pendingCollaboration:(id)collaboration
{
  providersCopy = providers;
  metadataCopy = metadata;
  collaborationCopy = collaboration;
  actionCopy = action;
  collaborationMetadata = [collaborationCopy collaborationMetadata];
  if (collaborationMetadata)
  {
    v15 = [[SLShareableContentInitiatorRequest alloc] initWithCollaborationMetadata:collaborationMetadata];
    fileURL = [collaborationCopy fileURL];
    [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:fileURL initiatorRequest:v15];
  }

  else
  {
    v17 = SLShareableContentLogHandle(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SLShareableContentActionHandler fulfillMetadataAction:v17 itemProviders:? linkMetadata:? pendingCollaboration:?];
    }

    v15 = +[(SLShareableContentActionResponse *)SLFetchShareableContentMetadataActionResponse];
    [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy response:v15];
  }
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata inPlaceFileURL:(id)l
{
  lCopy = l;
  metadataCopy = metadata;
  providersCopy = providers;
  actionCopy = action;
  v14 = [[SLShareableContentInitiatorRequest alloc] initWithFileURL:lCopy];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:providersCopy linkMetadata:metadataCopy highlightURL:lCopy initiatorRequest:v14];
}

- (void)fulfillMetadataAction:(id)action itemProviders:(id)providers linkMetadata:(id)metadata highlightURL:(id)l initiatorRequest:(id)request
{
  v46 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  providersCopy = providers;
  metadataCopy = metadata;
  lCopy = l;
  requestCopy = request;
  sceneIdentifier = [actionCopy sceneIdentifier];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v15 = bundleIdentifier;
  v16 = &stru_28468DAB8;
  if (bundleIdentifier)
  {
    v16 = bundleIdentifier;
  }

  v36 = v16;

  array = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v18 = providersCopy;
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        v24 = [SLShareableContentRepresentationCollection alloc];
        sl_representations = [v23 sl_representations];
        suggestedName = [v23 suggestedName];
        v27 = [(SLShareableContentRepresentationCollection *)v24 initWithRepresentations:sl_representations suggestedFileName:suggestedName];

        [array addObject:v27];
      }

      v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v20);
  }

  v28 = [[SLShareableContentMetadata alloc] initWithSceneIdentifier:sceneIdentifier bundleIdentifier:v36 representations:array metadata:metadataCopy highlightURL:lCopy];
  v29 = SLShareableContentLogHandle(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v42 = v28;
    v43 = 2112;
    v44 = requestCopy;
    _os_log_impl(&dword_231772000, v29, OS_LOG_TYPE_DEFAULT, "Fulfilling action with metadata: %@ initiatorRequest: %@", buf, 0x16u);
  }

  v30 = [SLFetchShareableContentMetadataActionResponse responseWithMetadata:v28 initiatorRequest:requestCopy];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy response:v30];
}

- (void)fulfillMetadataAction:(id)action response:(id)response
{
  responseCopy = response;
  actionCopy = action;
  v6 = +[SLShareableContentObserver sharedObserver];
  [v6 setNeedsRefresh];

  [actionCopy fulfillWithResponse:responseCopy];
}

- (void)fulfillMetadataAction:(id)action error:(id)error
{
  errorCopy = error;
  actionCopy = action;
  v6 = +[SLShareableContentObserver sharedObserver];
  [v6 setNeedsRefresh];

  [actionCopy failWithError:errorCopy];
}

- (void)fulfillAsynchronousMetadataAction:(id)action linkMetadata:(id)metadata
{
  v12 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  actionCopy = action;
  v8 = SLShareableContentLogHandle(actionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = metadataCopy;
    _os_log_impl(&dword_231772000, v8, OS_LOG_TYPE_DEFAULT, "Fulfilling action with metadata: %@", &v10, 0xCu);
  }

  v9 = [SLFetchAsynchronousLPMetadataActionResponse responseWithMetadata:metadataCopy];
  [(SLShareableContentActionHandler *)self fulfillAsynchronousMetadataAction:actionCopy response:v9];
}

- (void)fulfillAsynchronousMetadataAction:(id)action response:(id)response
{
  responseCopy = response;
  actionCopy = action;
  v6 = +[SLShareableContentObserver sharedObserver];
  [v6 setNeedsRefresh];

  [actionCopy fulfillWithResponse:responseCopy];
}

- (void)performFetchShareableContentMetadataAction:(id)action
{
  v21 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = SLShareableContentLogHandle(actionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier = [actionCopy sceneIdentifier];
    v19 = 138412290;
    v20 = sceneIdentifier;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching on screen content for scene identifier: %@", &v19, 0xCu);
  }

  sceneIdentifier2 = [actionCopy sceneIdentifier];
  v8 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:sceneIdentifier2];

  if (v8)
  {
    itemProvidersForActivityItemsConfiguration = [v8 itemProvidersForActivityItemsConfiguration];
    v11 = itemProvidersForActivityItemsConfiguration;
    if (!itemProvidersForActivityItemsConfiguration || (itemProvidersForActivityItemsConfiguration = [itemProvidersForActivityItemsConfiguration count]) == 0)
    {
      v14 = SLShareableContentLogHandle(itemProvidersForActivityItemsConfiguration);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        sceneIdentifier3 = [actionCopy sceneIdentifier];
        v19 = 138412290;
        v20 = sceneIdentifier3;
        _os_log_impl(&dword_231772000, v14, OS_LOG_TYPE_DEFAULT, "Could not find content attached to the given scene with identifier: %@", &v19, 0xCu);
      }

      v13 = +[(SLShareableContentActionResponse *)SLFetchShareableContentMetadataActionResponse];
      [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy response:v13];
      goto LABEL_19;
    }

    if (objc_opt_respondsToSelector())
    {
      v12 = [v8 activityItemsConfigurationMetadataForKey:*MEMORY[0x277D76600]];
      if (v12)
      {
        objc_opt_class();
        v13 = v12;
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = objc_alloc_init(MEMORY[0x277CD46C8]);

    v18 = [(SLShareableContentActionHandler *)self titleForActivityItemsConfiguration:v8];
    [v13 setTitle:v18];

LABEL_18:
    [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy itemProviders:v11 linkMetadata:v13];
LABEL_19:

    goto LABEL_20;
  }

  v16 = SLShareableContentLogHandle(v9);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier4 = [actionCopy sceneIdentifier];
    v19 = 138412290;
    v20 = sceneIdentifier4;
    _os_log_impl(&dword_231772000, v16, OS_LOG_TYPE_DEFAULT, "Could not find an activity items configuration for the requested scene: %@", &v19, 0xCu);
  }

  v11 = +[(SLShareableContentActionResponse *)SLFetchShareableContentMetadataActionResponse];
  [(SLShareableContentActionHandler *)self fulfillMetadataAction:actionCopy response:v11];
LABEL_20:
}

- (void)performFetchAsynchronousLPMetadataAction:(id)action
{
  v25 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = SLShareableContentLogHandle(actionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier = [actionCopy sceneIdentifier];
    *buf = 138412290;
    v24 = sceneIdentifier;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching asynchronous metdata for on screen content for scene identifier: %@", buf, 0xCu);
  }

  sceneIdentifier2 = [actionCopy sceneIdentifier];
  v8 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:sceneIdentifier2];

  if (v8)
  {
    v10 = [(SLShareableContentActionHandler *)self lpMetadataForActivityItemsConfiguration:v8];
    v11 = SLShareableContentLogHandle(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_231772000, v11, OS_LOG_TYPE_DEFAULT, "Fetched synchronous previewMetadata %@", buf, 0xCu);
    }

    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CD46C8]);

      v13 = [(SLShareableContentActionHandler *)self titleForActivityItemsConfiguration:v8];
      [v12 setTitle:v13];

      if (objc_opt_respondsToSelector())
      {
        v14 = [v8 activityItemsConfigurationPreviewForItemAtIndex:0 intent:*MEMORY[0x277D76618] suggestedSize:{64.0, 64.0}];
        [v12 setIconProvider:v14];

        v15 = [v8 activityItemsConfigurationPreviewForItemAtIndex:0 intent:*MEMORY[0x277D76610] suggestedSize:{512.0, 512.0}];
        [v12 setImageProvider:v15];
      }
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __76__SLShareableContentActionHandler_performFetchAsynchronousLPMetadataAction___block_invoke;
    v19[3] = &unk_2789275B0;
    v20 = v12;
    selfCopy = self;
    v22 = actionCopy;
    v16 = v12;
    [v16 _loadAsynchronousFieldsWithUpdateHandler:v19];
  }

  else
  {
    v17 = SLShareableContentLogHandle(v9);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      sceneIdentifier3 = [actionCopy sceneIdentifier];
      *buf = 138412290;
      v24 = sceneIdentifier3;
      _os_log_impl(&dword_231772000, v17, OS_LOG_TYPE_DEFAULT, "Could not find an activity items configuration for the requested scene: %@", buf, 0xCu);
    }

    v16 = +[(SLShareableContentActionResponse *)SLFetchAsynchronousLPMetadataActionResponse];
    [(SLShareableContentActionHandler *)self fulfillAsynchronousMetadataAction:actionCopy response:v16];
  }
}

void *__76__SLShareableContentActionHandler_performFetchAsynchronousLPMetadataAction___block_invoke(void *result, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = result;
    v3 = SLShareableContentLogHandle(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2 + 4);
      v5 = [v4 image];
      v6 = 138412546;
      v7 = v4;
      v8 = 2112;
      v9 = v5;
      _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "Completed loading asynchronous fields for previewMetadata %@ %@", &v6, 0x16u);
    }

    return [*(v2 + 5) fulfillAsynchronousMetadataAction:*(v2 + 6) linkMetadata:*(v2 + 4)];
  }

  return result;
}

- (void)fulfillContentAction:(id)action itemProvider:(id)provider
{
  actionCopy = action;
  providerCopy = provider;
  requestedTypeIdentifier = [actionCopy requestedTypeIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __69__SLShareableContentActionHandler_fulfillContentAction_itemProvider___block_invoke;
  v9[3] = &unk_2789276F8;
  v10 = actionCopy;
  v8 = actionCopy;
  [providerCopy sl_loadRepresentationForTypeIdentifier:requestedTypeIdentifier completionHandler:v9];
}

void __69__SLShareableContentActionHandler_fulfillContentAction_itemProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [SLFetchShareableContentActionResponse responseWithResult:a2];
  [v2 fulfillWithResponse:v3];
}

- (void)performFetchShareableContentAction:(id)action
{
  v30 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = SLShareableContentLogHandle(actionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier = [actionCopy sceneIdentifier];
    requestedTypeIdentifier = [actionCopy requestedTypeIdentifier];
    *buf = 138412546;
    v27 = sceneIdentifier;
    v28 = 2112;
    v29 = requestedTypeIdentifier;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Fetching on screen content representation for scene identifier: %@ requested type identifier: %@", buf, 0x16u);
  }

  requestedTypeIdentifier2 = [actionCopy requestedTypeIdentifier];

  if (requestedTypeIdentifier2)
  {
    sceneIdentifier2 = [actionCopy sceneIdentifier];
    v11 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:sceneIdentifier2];

    if (!v11)
    {
      v20 = SLShareableContentLogHandle(v12);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CCA5B8];
      v24 = *MEMORY[0x277CCA068];
      v25 = @"Could not find an activity items configuration for the requested scene.";
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v14 = [v21 errorWithDomain:v22 code:2 userInfo:v23];

      [actionCopy failWithError:v14];
      goto LABEL_21;
    }

    itemProvidersForActivityItemsConfiguration = [v11 itemProvidersForActivityItemsConfiguration];
    v14 = itemProvidersForActivityItemsConfiguration;
    if (itemProvidersForActivityItemsConfiguration && (itemProvidersForActivityItemsConfiguration = [itemProvidersForActivityItemsConfiguration count]) != 0)
    {
      requestedItemProviderIndex = [actionCopy requestedItemProviderIndex];
      v16 = [v14 count];
      if (requestedItemProviderIndex < v16)
      {
        v17 = [v14 objectAtIndexedSubscript:requestedItemProviderIndex];
        [(SLShareableContentActionHandler *)self fulfillContentAction:actionCopy itemProvider:v17];
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v19 = SLShareableContentLogHandle(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
      }
    }

    else
    {
      v19 = SLShareableContentLogHandle(itemProvidersForActivityItemsConfiguration);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
      }
    }

    v17 = +[(SLShareableContentActionResponse *)SLFetchShareableContentActionResponse];
    [actionCopy fulfillWithResponse:v17];
    goto LABEL_20;
  }

  v18 = SLShareableContentLogHandle(v9);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
  }

  v11 = +[(SLShareableContentActionResponse *)SLFetchShareableContentActionResponse];
  [actionCopy fulfillWithResponse:v11];
LABEL_22:
}

- (void)performSendShareableContentAction:(id)action
{
  v28 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v5 = SLShareableContentLogHandle(actionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    sceneIdentifier = [actionCopy sceneIdentifier];
    v26 = 138412290;
    v27 = sceneIdentifier;
    _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "Presenting message compose sheet to send on screen content for scene identifier: %@", &v26, 0xCu);
  }

  sceneIdentifier2 = [actionCopy sceneIdentifier];
  v8 = [(SLShareableContentActionHandler *)self sceneWithIdentifier:sceneIdentifier2];

  if (v8)
  {
    sceneIdentifier3 = [actionCopy sceneIdentifier];
    v10 = [(SLShareableContentActionHandler *)self activityItemsConfigurationForSceneWithIdentifier:sceneIdentifier3];

    if (v10)
    {
      itemProvidersForActivityItemsConfiguration = [v10 itemProvidersForActivityItemsConfiguration];
      firstObject = [itemProvidersForActivityItemsConfiguration firstObject];

      if (firstObject)
      {
        v15 = [objc_alloc(MEMORY[0x277CDC6C0]) initWithCollaborationIdentifier:&stru_28468DAB8 title:&stru_28468DAB8 defaultShareOptions:0];
        v16 = +[SLSoftLinks newComposeViewControllerInstance];
        array = [MEMORY[0x277CBEA60] array];
        [v16 insertCollaborationItemProvider:firstObject collaborationOptions:array collaborationMetadata:v15 isCollaboration:1];

        [v16 setSl_messageComposeResultHandler:&__block_literal_global_18];
        keyWindow = [v8 keyWindow];
        v19 = [MEMORY[0x277D75D28] _viewControllerForFullScreenPresentationFromView:keyWindow];
        v20 = v19;
        if (v19)
        {
          [v19 presentViewController:v16 animated:1 completion:0];
        }

        else
        {
          v23 = SLShareableContentLogHandle(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v26 = 138412290;
            v27 = v8;
            _os_log_impl(&dword_231772000, v23, OS_LOG_TYPE_DEFAULT, "Could not find a suitable presenting view controller for scene: %@. Content will be presented from a fallback view controller", &v26, 0xCu);
          }

          v24 = objc_alloc_init(MEMORY[0x277D75F48]);
          [v24 _presentViewController:v16 sendingView:keyWindow animated:1];
        }

        v25 = +[SLShareableContentActionResponse response];
        [actionCopy fulfillWithResponse:v25];
      }

      else
      {
        v22 = SLShareableContentLogHandle(v14);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
        }

        v15 = +[SLShareableContentActionResponse response];
        [actionCopy fulfillWithResponse:v15];
      }
    }

    else
    {
      v21 = SLShareableContentLogHandle(v11);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SLShareableContentActionHandler performFetchShareableContentAction:actionCopy];
      }

      firstObject = +[SLShareableContentActionResponse response];
      [actionCopy fulfillWithResponse:firstObject];
    }
  }

  else
  {
    v10 = +[SLShareableContentActionResponse response];
    [actionCopy fulfillWithResponse:v10];
  }
}

void __69__SLShareableContentActionHandler_performSendShareableContentAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 presentingViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SLShareableContentActionHandler *)self performFetchShareableContentMetadataAction:actionCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SLShareableContentActionHandler *)self performFetchShareableContentAction:actionCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(SLShareableContentActionHandler *)self performSendShareableContentAction:actionCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SLShareableContentActionHandler *)self performFetchAsynchronousLPMetadataAction:actionCopy];
        }
      }
    }
  }
}

- (void)performActions:(id)actions
{
  v14 = *MEMORY[0x277D85DE8];
  actionsCopy = actions;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(actionsCopy);
        }

        [(SLShareableContentActionHandler *)self performAction:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [actionsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)respondToBSActions:(id)actions
{
  v4 = MEMORY[0x277CBEB58];
  actionsCopy = actions;
  v6 = [v4 setWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(actionsCopy, "count")}];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __54__SLShareableContentActionHandler_respondToBSActions___block_invoke;
  v16 = &unk_278927740;
  v17 = v6;
  v18 = v7;
  v8 = v7;
  v9 = v6;
  [actionsCopy enumerateObjectsUsingBlock:&v13];
  [(SLShareableContentActionHandler *)self performActions:v9, v13, v14, v15, v16];
  v10 = [actionsCopy mutableCopy];

  [v10 minusSet:v8];
  v11 = [v10 copy];

  return v11;
}

void __54__SLShareableContentActionHandler_respondToBSActions___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [SLShareableContentAction actionWithBSAction:?];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    [*(a1 + 40) addObject:v4];
  }
}

- (id)titleForActivityItemsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_opt_respondsToSelector())
  {
    v4 = [configurationCopy activityItemsConfigurationMetadataForKey:*MEMORY[0x277D76608]];
  }

  else
  {
    v4 = 0;
  }

  itemProvidersForActivityItemsConfiguration = [configurationCopy itemProvidersForActivityItemsConfiguration];
  v6 = [itemProvidersForActivityItemsConfiguration count];

  if (!v4)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || !v6)
    {
      goto LABEL_13;
    }

    v8 = 0;
    v9 = *MEMORY[0x277D76608];
    while (1)
    {
      v10 = [configurationCopy activityItemsConfigurationMetadataForItemAtIndex:v8 key:v9];
      if (v10)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v4 = 0;
        goto LABEL_13;
      }
    }

    v4 = v10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    string = [v4 string];

    v4 = string;
  }

LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v4;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)lpMetadataForActivityItemsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (objc_opt_respondsToSelector())
  {
    v4 = [configurationCopy activityItemsConfigurationMetadataForKey:*MEMORY[0x277D76600]];
  }

  else
  {
    v4 = 0;
  }

  itemProvidersForActivityItemsConfiguration = [configurationCopy itemProvidersForActivityItemsConfiguration];
  v6 = [itemProvidersForActivityItemsConfiguration count];

  if (!v4 && (objc_opt_respondsToSelector() & 1) != 0 && v6)
  {
    v10 = 0;
    v11 = *MEMORY[0x277D76600];
    while (1)
    {
      v12 = [configurationCopy activityItemsConfigurationMetadataForItemAtIndex:v10 key:v11];
      if (v12)
      {
        break;
      }

      if (v6 == ++v10)
      {
        v4 = 0;
        goto LABEL_5;
      }
    }

    v4 = v12;
  }

LABEL_5:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)sceneWithIdentifier:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_231772000, v1, OS_LOG_TYPE_ERROR, "Could not find the requested scene with identifier: %@ in connected scenes: %@", v2, 0x16u);
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_231772000, a2, OS_LOG_TYPE_FAULT, "Unexpectedly failed to load CKPostSharingContext from item provider: %@", &v3, 0xCu);
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_14_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_fault_impl(&dword_231772000, a2, OS_LOG_TYPE_FAULT, "Unexpectedly failed to load CKContainerSetupInfo from item provider: %@", &v3, 0xCu);
}

void __84__SLShareableContentActionHandler_fulfillMetadataAction_itemProviders_linkMetadata___block_invoke_2_17_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_3();
  v7 = 2112;
  v8 = v5;
  _os_log_fault_impl(&dword_231772000, a2, OS_LOG_TYPE_FAULT, "Unexpectedly failed to load a %@ from item provider: %@", v6, 0x16u);
}

- (void)performFetchShareableContentAction:(void *)a1 .cold.1(void *a1)
{
  v6 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)performFetchShareableContentAction:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)performFetchShareableContentAction:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)performFetchShareableContentAction:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 sceneIdentifier];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end