@interface SWShareableContentExtractor
+ (OS_dispatch_queue)contentExtractorQueue;
+ (id)_buildStartCollaborationURLForContentSceneIdentifier:(id)identifier shareOptions:(id)options recipients:(id)recipients faceTimeConversationUUID:(id)d;
- (SLDServiceProxy)serviceProxy;
- (SWShareableContentExtractor)init;
- (id)remoteService;
- (void)_addContentExtractionRequest:(id)request;
- (void)_processPendingContentExtractionRequests;
- (void)initiateBackgroundCollaborationForContent:(id)content faceTimeConversation:(id)conversation;
- (void)initiateBackgroundCollaborationForContent:(id)content shareOptions:(id)options recipients:(id)recipients faceTimeConversationUUID:(id)d;
- (void)loadRepresentationForContent:(id)content typeIdentifier:(id)identifier itemProviderIndex:(int64_t)index completionHandler:(id)handler;
- (void)presentMessageComposeSheetForContent:(id)content completion:(id)completion;
- (void)retrieveAsynchronousLPMetadataForBundleIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveAsynchronousLPMetadataForBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion;
- (void)retrieveAsynchronousLPMetadataForSceneIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveAsynchronousLPMetadataMatchingBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion;
- (void)retrieveAsynchronousLPMetadataWithCompletion:(id)completion;
- (void)retrieveShareableContentForBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion;
- (void)retrieveShareableContentForSceneIdentifier:(id)identifier completion:(id)completion;
- (void)retrieveShareableContentMatchingBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion;
- (void)serviceProxyDidConnect:(id)connect;
- (void)serviceProxyDidDisconnect:(id)disconnect;
@end

@implementation SWShareableContentExtractor

- (SWShareableContentExtractor)init
{
  v8.receiver = self;
  v8.super_class = SWShareableContentExtractor;
  v2 = [(SWShareableContentExtractor *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    pendingContentExtractionRequests = v2->_pendingContentExtractionRequests;
    v2->_pendingContentExtractionRequests = array;

    v5 = SWShareableContentLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_DEFAULT, "Initialized SWShareableContentExtractor", v7, 2u);
    }
  }

  return v2;
}

+ (OS_dispatch_queue)contentExtractorQueue
{
  if (contentExtractorQueue_onceToken != -1)
  {
    +[SWShareableContentExtractor contentExtractorQueue];
  }

  v3 = contentExtractorQueue_contentExtractorQueue;

  return v3;
}

void __52__SWShareableContentExtractor_contentExtractorQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SharedWithYou.SWShareableContentExtractor", v2);
  v1 = contentExtractorQueue_contentExtractorQueue;
  contentExtractorQueue_contentExtractorQueue = v0;
}

- (void)retrieveShareableContentForBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion
{
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __102__SWShareableContentExtractor_retrieveShareableContentForBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v10[3] = &unk_1E7FDDCC8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(SWShareableContentExtractor *)self retrieveShareableContentMatchingBundleIdentifier:identifier sceneIdentifier:sceneIdentifier completion:v10];
}

void __102__SWShareableContentExtractor_retrieveShareableContentForBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)retrieveShareableContentForSceneIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__SWShareableContentExtractor_retrieveShareableContentForSceneIdentifier_completion___block_invoke;
  v8[3] = &unk_1E7FDDCC8;
  v9 = completionCopy;
  v7 = completionCopy;
  [(SWShareableContentExtractor *)self retrieveShareableContentMatchingBundleIdentifier:0 sceneIdentifier:identifier completion:v8];
}

void __85__SWShareableContentExtractor_retrieveShareableContentForSceneIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)retrieveAsynchronousLPMetadataForBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion
{
  v16 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  completionCopy = completion;
  v11 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = identifierCopy;
    v14 = 2112;
    v15 = sceneIdentifierCopy;
    _os_log_impl(&dword_1BBC06000, v11, OS_LOG_TYPE_DEFAULT, "SWY Retrieving LPmetadata for bundle identifier and scene identifier %@, %@.", &v12, 0x16u);
  }

  [(SWShareableContentExtractor *)self retrieveAsynchronousLPMetadataMatchingBundleIdentifier:identifierCopy sceneIdentifier:sceneIdentifierCopy completion:completionCopy];
}

- (void)retrieveAsynchronousLPMetadataForSceneIdentifier:(id)identifier completion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1BBC06000, v8, OS_LOG_TYPE_DEFAULT, "SWY Retrieving LPmetadata for scene identifier %@.", &v9, 0xCu);
  }

  [(SWShareableContentExtractor *)self retrieveAsynchronousLPMetadataMatchingBundleIdentifier:0 sceneIdentifier:identifierCopy completion:completionCopy];
}

- (void)retrieveAsynchronousLPMetadataForBundleIdentifier:(id)identifier completion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = identifierCopy;
    _os_log_impl(&dword_1BBC06000, v8, OS_LOG_TYPE_DEFAULT, "SWY Retrieving LPmetadata for bundle identifier %@.", &v9, 0xCu);
  }

  [(SWShareableContentExtractor *)self retrieveAsynchronousLPMetadataMatchingBundleIdentifier:identifierCopy sceneIdentifier:0 completion:completionCopy];
}

- (void)retrieveAsynchronousLPMetadataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_DEFAULT, "SWY Retrieving metadata for the on screen content.", v6, 2u);
  }

  [(SWShareableContentExtractor *)self retrieveAsynchronousLPMetadataMatchingBundleIdentifier:0 sceneIdentifier:0 completion:completionCopy];
}

- (void)retrieveShareableContentMatchingBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  completionCopy = completion;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __107__SWShareableContentExtractor_retrieveShareableContentMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v18 = &unk_1E7FDDC60;
  selfCopy = self;
  v20 = identifierCopy;
  v21 = sceneIdentifierCopy;
  v22 = completionCopy;
  v11 = completionCopy;
  v12 = sceneIdentifierCopy;
  v13 = identifierCopy;
  v14 = _Block_copy(&v15);
  [(SWShareableContentExtractor *)self _addContentExtractionRequest:v14, v15, v16, v17, v18, selfCopy];
}

void __107__SWShareableContentExtractor_retrieveShareableContentMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BBC06000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving metadata for the on screen content.", buf, 2u);
  }

  v3 = [*(a1 + 32) remoteService];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __107__SWShareableContentExtractor_retrieveShareableContentMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_67;
  v6[3] = &unk_1E7FDDCF0;
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  [v3 retrieveShareableContentMetadataMatchingBundleIdentifier:v4 sceneIdentifier:v5 completion:v6];
}

void __107__SWShareableContentExtractor_retrieveShareableContentMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_67(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v2;
  v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v18 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v7 = [SWShareableContent alloc];
        v8 = [v6 sceneIdentifier];
        v9 = [v6 bundleIdentifier];
        v10 = [v6 metadata];
        v11 = [v6 representations];
        v12 = [v6 highlightURL];
        v13 = [v6 initiatorHandle];
        v14 = [v6 initiatorNameComponents];
        v15 = [(SWShareableContent *)v7 initWithSourceSceneIdentifier:v8 sourceBundleIdentifier:v9 metadata:v10 representations:v11 highlightURL:v12 initiatorHandle:v13 initiatorNameComponents:v14];

        [(SWShareableContent *)v15 setRepresentationProvider:*(a1 + 32)];
        [v20 addObject:v15];

        ++v5;
      }

      while (v4 != v5);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }

  v16 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v20;
    _os_log_impl(&dword_1BBC06000, v16, OS_LOG_TYPE_DEFAULT, "Retrieved shareable content metadata: %@", buf, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)retrieveAsynchronousLPMetadataMatchingBundleIdentifier:(id)identifier sceneIdentifier:(id)sceneIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  sceneIdentifierCopy = sceneIdentifier;
  completionCopy = completion;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __113__SWShareableContentExtractor_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke;
  v18 = &unk_1E7FDDC60;
  selfCopy = self;
  v20 = identifierCopy;
  v21 = sceneIdentifierCopy;
  v22 = completionCopy;
  v11 = completionCopy;
  v12 = sceneIdentifierCopy;
  v13 = identifierCopy;
  v14 = _Block_copy(&v15);
  [(SWShareableContentExtractor *)self _addContentExtractionRequest:v14, v15, v16, v17, v18, selfCopy];
}

void __113__SWShareableContentExtractor_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke(uint64_t a1)
{
  v2 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BBC06000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving asynchronous metadata for the on screen content.", buf, 2u);
  }

  v3 = [*(a1 + 32) remoteService];
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __113__SWShareableContentExtractor_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_69;
  v6[3] = &unk_1E7FDDD18;
  v7 = *(a1 + 56);
  [v3 retrieveAsynchronousLPMetadataMatchingBundleIdentifier:v4 sceneIdentifier:v5 completion:v6];
}

void __113__SWShareableContentExtractor_retrieveAsynchronousLPMetadataMatchingBundleIdentifier_sceneIdentifier_completion___block_invoke_69(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_DEFAULT, "Retrieved asynchronous LP metadata: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)presentMessageComposeSheetForContent:(id)content completion:(id)completion
{
  contentCopy = content;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __79__SWShareableContentExtractor_presentMessageComposeSheetForContent_completion___block_invoke;
  aBlock[3] = &unk_1E7FDDD40;
  v12 = contentCopy;
  selfCopy = self;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = contentCopy;
  v10 = _Block_copy(aBlock);
  [(SWShareableContentExtractor *)self _addContentExtractionRequest:v10];
}

void __79__SWShareableContentExtractor_presentMessageComposeSheetForContent_completion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) sourceSceneIdentifier];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1BBC06000, v2, OS_LOG_TYPE_DEFAULT, "Presenting message compose sheet to share on screen content from source identifier: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) remoteService];
  v5 = [*(a1 + 32) sourceSceneIdentifier];
  [v4 presentMessageComposeSheetForSceneIdentifier:v5 completion:*(a1 + 48)];
}

- (void)initiateBackgroundCollaborationForContent:(id)content faceTimeConversation:(id)conversation
{
  v23 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  conversationCopy = conversation;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  remoteMembers = [conversationCopy remoteMembers];
  v9 = [remoteMembers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(remoteMembers);
        }

        handle = [*(*(&v18 + 1) + 8 * i) handle];
        normalizedValue = [handle normalizedValue];
        if (normalizedValue)
        {
          [array addObject:normalizedValue];
        }

        else
        {
          value = [handle value];
          [array addObject:value];
        }
      }

      v10 = [remoteMembers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  uUID = [conversationCopy UUID];
  [(SWShareableContentExtractor *)self initiateBackgroundCollaborationForContent:contentCopy shareOptions:0 recipients:array faceTimeConversationUUID:uUID];
}

- (void)initiateBackgroundCollaborationForContent:(id)content shareOptions:(id)options recipients:(id)recipients faceTimeConversationUUID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  optionsCopy = options;
  recipientsCopy = recipients;
  dCopy = d;
  if ([recipientsCopy count])
  {
    v13 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:optionsCopy requiringSecureCoding:0 error:0];
    v14 = [v13 base64EncodedStringWithOptions:0];
    sourceSceneIdentifier = [contentCopy sourceSceneIdentifier];
    v16 = [SWShareableContentExtractor _buildStartCollaborationURLForContentSceneIdentifier:sourceSceneIdentifier shareOptions:v14 recipients:recipientsCopy faceTimeConversationUUID:dCopy];

    if (v16)
    {
      v17 = *MEMORY[0x1E699F8E8];
      v31[0] = *MEMORY[0x1E699F960];
      v31[1] = v17;
      v32[0] = v16;
      v32[1] = MEMORY[0x1E695E118];
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
      serviceWithDefaultShellEndpoint = [MEMORY[0x1E699FB78] serviceWithDefaultShellEndpoint];
      v20 = [MEMORY[0x1E699FB70] optionsWithDictionary:v18];
      v28 = v13;
      v21 = recipientsCopy;
      v22 = contentCopy;
      v23 = v14;
      v24 = dCopy;
      v25 = optionsCopy;
      v26 = *MEMORY[0x1E697B760];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __122__SWShareableContentExtractor_initiateBackgroundCollaborationForContent_shareOptions_recipients_faceTimeConversationUUID___block_invoke;
      v29[3] = &unk_1E7FDDD68;
      v30 = v16;
      v27 = v26;
      optionsCopy = v25;
      dCopy = v24;
      v14 = v23;
      contentCopy = v22;
      recipientsCopy = v21;
      v13 = v28;
      [serviceWithDefaultShellEndpoint openApplication:v27 withOptions:v20 completion:v29];
    }

    else
    {
      v18 = SWShareableContentLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = contentCopy;
        _os_log_impl(&dword_1BBC06000, v18, OS_LOG_TYPE_DEFAULT, "Start collaboration URL could not be constructed when trying to start collaboration for shareable content: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = SWShareableContentLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = contentCopy;
      _os_log_impl(&dword_1BBC06000, v13, OS_LOG_TYPE_DEFAULT, "No recipients were specified when trying to start collaboration for shareable content: %@", buf, 0xCu);
    }
  }
}

void __122__SWShareableContentExtractor_initiateBackgroundCollaborationForContent_shareOptions_recipients_faceTimeConversationUUID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = SWShareableContentLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (!a2 || v5)
  {
    if (v7)
    {
      v12 = *(a1 + 32);
      v13 = 138412546;
      v14 = v12;
      v15 = 2112;
      v16 = v5;
      v9 = "Failed to background launch mobile SMS for startCollaborationURL %@ with error %@";
      v10 = v6;
      v11 = 22;
      goto LABEL_7;
    }
  }

  else if (v7)
  {
    v8 = *(a1 + 32);
    v13 = 138412290;
    v14 = v8;
    v9 = "Successfully background launched application MobileSMS for startCollaborationURL %@";
    v10 = v6;
    v11 = 12;
LABEL_7:
    _os_log_impl(&dword_1BBC06000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
  }
}

+ (id)_buildStartCollaborationURLForContentSceneIdentifier:(id)identifier shareOptions:(id)options recipients:(id)recipients faceTimeConversationUUID:(id)d
{
  v32[6] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v9 = MEMORY[0x1E696AF20];
  recipientsCopy = recipients;
  optionsCopy = options;
  identifierCopy = identifier;
  v31 = [v9 componentsWithString:@"messages://open"];
  v29 = MEMORY[0x1E695DF70];
  v13 = [MEMORY[0x1E696AF60] queryItemWithName:@"service" value:@"iMessage"];
  v32[0] = v13;
  v14 = [MEMORY[0x1E696AF60] queryItemWithName:@"compose" value:@"false"];
  v32[1] = v14;
  v15 = [MEMORY[0x1E696AF60] queryItemWithName:@"collaboration-initiate-send" value:@"true"];
  v32[2] = v15;
  v16 = MEMORY[0x1E696AF60];
  if ([recipientsCopy count] == 1)
  {
    v17 = @"recipient";
  }

  else
  {
    v17 = @"recipients";
  }

  v18 = [recipientsCopy componentsJoinedByString:{@", "}];

  v19 = [v16 queryItemWithName:v17 value:v18];
  v32[3] = v19;
  v20 = [MEMORY[0x1E696AF60] queryItemWithName:@"collaboration-scene-identifier" value:identifierCopy];

  v32[4] = v20;
  v21 = [MEMORY[0x1E696AF60] queryItemWithName:@"collaboration-share-options" value:optionsCopy];

  v32[5] = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:6];
  v23 = [v29 arrayWithArray:v22];

  if (dCopy)
  {
    v24 = MEMORY[0x1E696AF60];
    uUIDString = [dCopy UUIDString];
    v26 = [v24 queryItemWithName:@"facetime-conversation" value:uUIDString];
    [v23 addObject:v26];
  }

  [v31 setQueryItems:v23];
  v27 = [v31 URL];

  return v27;
}

- (void)_addContentExtractionRequest:(id)request
{
  requestCopy = request;
  contentExtractorQueue = [objc_opt_class() contentExtractorQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__SWShareableContentExtractor__addContentExtractionRequest___block_invoke;
  v7[3] = &unk_1E7FDDC10;
  v7[4] = self;
  v8 = requestCopy;
  v6 = requestCopy;
  dispatch_async(contentExtractorQueue, v7);
}

void __60__SWShareableContentExtractor__addContentExtractionRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceProxy];
  v3 = [v2 connectionActive];

  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);

    v4();
  }

  else
  {
    v5 = SWShareableContentLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1BBC06000, v5, OS_LOG_TYPE_DEFAULT, "Not currently connected to shareable content service. We'll wait for the connection before servicing this request.", v9, 2u);
    }

    v6 = [*(a1 + 32) pendingContentExtractionRequests];
    v7 = _Block_copy(*(a1 + 40));
    [v6 addObject:v7];

    v8 = [*(a1 + 32) serviceProxy];
    [v8 connect];
  }
}

- (void)_processPendingContentExtractionRequests
{
  contentExtractorQueue = [objc_opt_class() contentExtractorQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__SWShareableContentExtractor__processPendingContentExtractionRequests__block_invoke;
  block[3] = &unk_1E7FDDC38;
  block[4] = self;
  dispatch_async(contentExtractorQueue, block);
}

void __71__SWShareableContentExtractor__processPendingContentExtractionRequests__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) pendingContentExtractionRequests];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(*(&v8 + 1) + 8 * v6++) + 16))();
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) pendingContentExtractionRequests];
  [v7 removeAllObjects];
}

- (void)loadRepresentationForContent:(id)content typeIdentifier:(id)identifier itemProviderIndex:(int64_t)index completionHandler:(id)handler
{
  contentCopy = content;
  identifierCopy = identifier;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __111__SWShareableContentExtractor_loadRepresentationForContent_typeIdentifier_itemProviderIndex_completionHandler___block_invoke;
  aBlock[3] = &unk_1E7FDDD90;
  v18 = identifierCopy;
  v19 = contentCopy;
  v21 = handlerCopy;
  indexCopy = index;
  selfCopy = self;
  v13 = handlerCopy;
  v14 = contentCopy;
  v15 = identifierCopy;
  v16 = _Block_copy(aBlock);
  [(SWShareableContentExtractor *)self _addContentExtractionRequest:v16];
}

void __111__SWShareableContentExtractor_loadRepresentationForContent_typeIdentifier_itemProviderIndex_completionHandler___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) sourceSceneIdentifier];
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1BBC06000, v2, OS_LOG_TYPE_DEFAULT, "Retrieving representation with type identifier: %@ from on screen content with source identifier: %@", &v8, 0x16u);
  }

  v5 = [*(a1 + 48) remoteService];
  v6 = [*(a1 + 40) sourceBundleIdentifier];
  v7 = [*(a1 + 40) sourceSceneIdentifier];
  [v5 loadRepresentationFromBundleIdentifier:v6 sceneIdentifier:v7 requestedTypeIdentifier:*(a1 + 32) requestedItemProviderIndex:*(a1 + 64) completionHandler:*(a1 + 56)];
}

- (SLDServiceProxy)serviceProxy
{
  serviceProxy = self->_serviceProxy;
  if (!serviceProxy)
  {
    v4 = MEMORY[0x1E69D3800];
    v5 = objc_opt_class();
    contentExtractorQueue = [objc_opt_class() contentExtractorQueue];
    v7 = [v4 proxyForServiceClass:v5 targetSerialQueue:contentExtractorQueue delegate:self];
    v8 = self->_serviceProxy;
    self->_serviceProxy = v7;

    serviceProxy = self->_serviceProxy;
  }

  return serviceProxy;
}

- (id)remoteService
{
  serviceProxy = [(SWShareableContentExtractor *)self serviceProxy];
  remoteService = [serviceProxy remoteService];

  return remoteService;
}

- (void)serviceProxyDidConnect:(id)connect
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    pendingContentExtractionRequests = [(SWShareableContentExtractor *)self pendingContentExtractionRequests];
    v6 = 138412546;
    selfCopy = self;
    v8 = 2048;
    v9 = [pendingContentExtractionRequests count];
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_INFO, "Service proxy connected for shareable content extractor: %@. Servicing pending extraction requests: %tu", &v6, 0x16u);
  }

  [(SWShareableContentExtractor *)self _processPendingContentExtractionRequests];
}

- (void)serviceProxyDidDisconnect:(id)disconnect
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = SWShareableContentLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1BBC06000, v4, OS_LOG_TYPE_INFO, "Service proxy disconnected for shareable content extractor: %@", &v5, 0xCu);
  }
}

@end