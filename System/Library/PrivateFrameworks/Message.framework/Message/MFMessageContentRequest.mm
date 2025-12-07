@interface MFMessageContentRequest
+ (id)databaseWriteScheduler;
+ (id)metadataWithDictionary:(id)dictionary;
+ (id)onScheduler:(id)scheduler requestID:(unint64_t)d requestContentForObjectID:(id)iD messagePersistence:(id)persistence legacyMessage:(id)message messageTransformer:(id)transformer mailDropAttachmentGenerator:(id)generator listUnsubscribeHandler:(id)self0 clientIdentifier:(id)self1 options:(id)self2 delegate:(id)self3 completionHandler:(id)self4;
+ (id)originalContentMessageScheduler;
- (id)_attachmentContentItemsForMailDropNodes:(id)nodes withContext:(id)context;
- (id)_attachmentForMailDropMetaData:(id)data context:(id)context;
- (id)_contentItemForAttachment:(id)attachment manager:(id)manager managed:(BOOL)managed;
- (id)_contentRepresentationForEvent:(id)event contentURL:(id)l relatedItems:(id)items messageAndHTMLDataPair:(id)pair existingRepresentation:(id)representation invocable:(id)invocable;
- (id)_contentRepresentationForLoadingEvent:(id)event existingRepresentation:(id)representation;
- (id)_dataHolderWithCancelationToken:(id)token;
- (id)_generateRepresentationForLoadingContext:(id)context existingRepresentation:(id)representation completion:(id)completion;
- (id)_maildropMetadataFromContext:(id)context;
- (id)_messageContentFromLoadingContext:(id)context completion:(id)completion;
- (id)_messageForLegacyMessage:(id)message;
- (id)_processContentLoadingContextEvent:(id)event;
- (id)_requestContentForAttachment:(id)attachment manager:(id)manager options:(id)options managed:(BOOL)managed completion:(id)completion;
- (id)beginRequestWithCompletionHandler:(id)handler;
- (id)delegateWithErrorHandler:(id)handler;
- (id)requestHTMLRepresentationWithCompletionHandler:(id)handler;
- (id)requestRawRepresentationWithCompletionHandler:(id)handler;
- (void)_includeCachedMetadataJSONIfNeededForRepresentation:(id)representation message:(id)message;
- (void)_includeHeadersIfNeededForRepresentation:(id)representation message:(id)message options:(id)options;
- (void)_includeSuggestionItemsIfNeededForRepresentation:(id)representation message:(id)message;
- (void)_messageInReplyToMessage:(id)message libraryStore:(id)store completion:(id)completion;
- (void)_originalContentMessagesInReplyToLegacyMessage:(id)message withMessageAndHTMLDataPair:(id)pair maximumNumberOfMessages:(unint64_t)messages completion:(id)completion;
@end

@implementation MFMessageContentRequest

+ (id)databaseWriteScheduler
{
  if (databaseWriteScheduler_onceToken != -1)
  {
    +[MFMessageContentRequest databaseWriteScheduler];
  }

  v3 = databaseWriteScheduler_sInstance;

  return v3;
}

void __49__MFMessageContentRequest_databaseWriteScheduler__block_invoke()
{
  v0 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.message.MFMessageContentRequest.databaseWriteScheduler"];
  v1 = databaseWriteScheduler_sInstance;
  databaseWriteScheduler_sInstance = v0;
}

+ (id)originalContentMessageScheduler
{
  if (originalContentMessageScheduler_onceToken != -1)
  {
    +[MFMessageContentRequest originalContentMessageScheduler];
  }

  v3 = originalContentMessageScheduler_sInstance;

  return v3;
}

void __58__MFMessageContentRequest_originalContentMessageScheduler__block_invoke()
{
  v0 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.message.MFMessageContentRequest.originalContentMessageScheduler" qualityOfService:25];
  v1 = originalContentMessageScheduler_sInstance;
  originalContentMessageScheduler_sInstance = v0;
}

+ (id)onScheduler:(id)scheduler requestID:(unint64_t)d requestContentForObjectID:(id)iD messagePersistence:(id)persistence legacyMessage:(id)message messageTransformer:(id)transformer mailDropAttachmentGenerator:(id)generator listUnsubscribeHandler:(id)self0 clientIdentifier:(id)self1 options:(id)self2 delegate:(id)self3 completionHandler:(id)self4
{
  schedulerCopy = scheduler;
  obj = iD;
  iDCopy = iD;
  persistenceCopy = persistence;
  messageCopy = message;
  transformerCopy = transformer;
  generatorCopy = generator;
  handlerCopy = handler;
  identifierCopy = identifier;
  optionsCopy = options;
  delegateCopy = delegate;
  completionHandlerCopy = completionHandler;
  v19 = [self alloc];
  if (v19)
  {
    v38.receiver = v19;
    v38.super_class = MFMessageContentRequest;
    v20 = objc_msgSendSuper2(&v38, sel_init);
    if (v20)
    {
      v21 = [[_MFMessageContentRequestScheduler alloc] initWithScheduler:schedulerCopy requestID:d messagePersistence:persistenceCopy];
      v22 = *(v20 + 1);
      *(v20 + 1) = v21;

      objc_storeStrong(v20 + 2, obj);
      objc_storeStrong(v20 + 3, persistence);
      objc_storeStrong(v20 + 4, message);
      objc_storeStrong(v20 + 5, transformer);
      objc_storeStrong(v20 + 6, identifier);
      objc_storeStrong(v20 + 8, generator);
      objc_storeStrong(v20 + 9, handler);
      objc_storeStrong(v20 + 7, options);
      objc_storeStrong(v20 + 10, delegate);
    }
  }

  else
  {
    v20 = 0;
  }

  v23 = [v20 beginRequestWithCompletionHandler:{completionHandlerCopy, obj}];

  return v23;
}

- (id)requestRawRepresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  if (self)
  {
    scheduler = self->_scheduler;
  }

  else
  {
    scheduler = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__MFMessageContentRequest_requestRawRepresentationWithCompletionHandler___block_invoke;
  v17[3] = &unk_1E7AA6800;
  v17[4] = self;
  v7 = v5;
  v18 = v7;
  v8 = handlerCopy;
  v19 = v8;
  v9 = scheduler;
  v10 = [(EFScheduler *)v9 performCancelableBlock:v17];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__MFMessageContentRequest_requestRawRepresentationWithCompletionHandler___block_invoke_55;
  v15[3] = &unk_1E7AA25C0;
  v16 = v10;
  v11 = v10;
  [v7 setCancellationHandler:v15];
  v12 = v16;
  v13 = v7;

  return v7;
}

void __73__MFMessageContentRequest_requestRawRepresentationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([v3 isCanceled] & 1) == 0)
  {
    v4 = [*(a1 + 32) _dataHolderWithCancelationToken:v3];
    if (([v3 isCanceled] & 1) == 0)
    {
      [*(a1 + 40) setCompletedUnitCount:{objc_msgSend(*(a1 + 40), "totalUnitCount")}];
      if (v4)
      {
        v5 = *(a1 + 32);
        if (v5)
        {
          v5 = v5[4];
        }

        v6 = v5;
        v7 = objc_alloc(MEMORY[0x1E699AC60]);
        v8 = [v4 data];
        v9 = *(a1 + 32);
        if (v9)
        {
          v9 = v9[6];
        }

        v10 = v9;
        v11 = [v6 subject];
        v12 = [v11 subjectString];
        v13 = [v7 initWithData:v8 clientIdentifier:v10 preferredFilename:v12 extension:@"eml" relatedItems:MEMORY[0x1E695E0F0] securityInformation:0];

        v14 = +[MFActivityMonitor currentMonitor];
        [v13 setTransportType:{objc_msgSend(v14, "transportType")}];

        v15 = [v6 globalMessageURL];
        [v13 setPublicMessageURL:v15];

        v16 = [v6 headersIfAvailable];
        v17 = [v16 copyAddressListForReplyTo];
        [v13 setReplyToList:v17];

        v18 = *(a1 + 32);
        if (v18)
        {
          v19 = v18[7];
        }

        else
        {
          v19 = 0;
        }

        [v18 _includeHeadersIfNeededForRepresentation:v13 message:v6 options:v19];
        v20 = EMLogCategoryMessageLoading();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = [v13 ef_publicDescription];
          v28 = 138543618;
          v29 = v21;
          v30 = 2112;
          v31 = v6;
          _os_log_impl(&dword_1B0389000, v20, OS_LOG_TYPE_DEFAULT, "returning raw representation %{public}@ for message %@", &v28, 0x16u);
        }

        (*(*(a1 + 48) + 16))();
      }

      else
      {
        v22 = +[MFActivityMonitor currentMonitor];
        v23 = [MEMORY[0x1E695DF90] dictionary];
        v24 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "transportType")}];
        [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x1E699A6F0]];

        v25 = [v22 error];
        if (v25)
        {
          [v23 setObject:v25 forKeyedSubscript:*MEMORY[0x1E696AA08]];
        }

        v26 = *(a1 + 48);
        v27 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:v23];
        (*(v26 + 16))(v26, 0, v27);
      }
    }
  }
}

- (id)_generateRepresentationForLoadingContext:(id)context existingRepresentation:(id)representation completion:(id)completion
{
  v52 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  representationCopy = representation;
  completionCopy = completion;
  v9 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    message = [contextCopy message];
    ef_publicDescription = [message ef_publicDescription];
    *buf = 138543362;
    v51 = ef_publicDescription;
    _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "generate HTML representation for message: %{public}@", buf, 0xCu);
  }

  v33 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  v12 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __102__MFMessageContentRequest__generateRepresentationForLoadingContext_existingRepresentation_completion___block_invoke;
  v47[3] = &unk_1E7AA26E0;
  v13 = v33;
  v48 = v13;
  v14 = contextCopy;
  v49 = v14;
  [v12 setCancellationHandler:v47];
  contentObservable = [v14 contentObservable];
  v16 = contentObservable;
  if (representationCopy)
  {
    v17 = [contentObservable skip:1];

    v16 = v17;
  }

  promise = [MEMORY[0x1E699B868] promise];
  firstResultObserverAdapter = [promise firstResultObserverAdapter];
  v20 = [v16 subscribe:firstResultObserverAdapter];
  [v13 addCancelable:v20];

  future = [promise future];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __102__MFMessageContentRequest__generateRepresentationForLoadingContext_existingRepresentation_completion___block_invoke_2;
  v43[3] = &unk_1E7AA6828;
  v22 = v14;
  v44 = v22;
  selfCopy = self;
  v23 = representationCopy;
  v46 = v23;
  v24 = [future then:v43];

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __102__MFMessageContentRequest__generateRepresentationForLoadingContext_existingRepresentation_completion___block_invoke_66;
  v39[3] = &unk_1E7AA6850;
  v25 = v22;
  v40 = v25;
  v26 = v12;
  v41 = v26;
  v27 = completionCopy;
  v42 = v27;
  [v24 addSuccessBlock:v39];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __102__MFMessageContentRequest__generateRepresentationForLoadingContext_existingRepresentation_completion___block_invoke_68;
  v36[3] = &unk_1E7AA6878;
  v28 = v25;
  v37 = v28;
  v29 = v27;
  v38 = v29;
  [v24 addFailureBlock:v36];
  v30 = v38;
  v31 = v26;

  return v26;
}

uint64_t __102__MFMessageContentRequest__generateRepresentationForLoadingContext_existingRepresentation_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);

  return [v2 cancel];
}

id __102__MFMessageContentRequest__generateRepresentationForLoadingContext_existingRepresentation_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(*MEMORY[0x1E699B750] + 16))())
  {
    v4 = MEMORY[0x1E699B7C8];
    v5 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E699A6F0];
    v6 = MEMORY[0x1E696AD98];
    v7 = +[MFActivityMonitor currentMonitor];
    v8 = [v6 numberWithInteger:{objc_msgSend(v7, "transportType")}];
    v19[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v10 = [v5 em_internalErrorWithReason:@"Loading context completed without vending a result" userInfo:v9];
    v11 = [v4 futureWithError:v10];
  }

  else
  {
    v12 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [*(a1 + 32) message];
      v14 = [v13 ef_publicDescription];
      v16 = 138543362;
      v17 = v14;
      _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_INFO, "Loading context completed for message %{public}@", &v16, 0xCu);
    }

    v11 = [*(a1 + 40) _contentRepresentationForLoadingEvent:v3 existingRepresentation:*(a1 + 48)];
  }

  return v11;
}

void __102__MFMessageContentRequest__generateRepresentationForLoadingContext_existingRepresentation_completion___block_invoke_66(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [*(a1 + 32) message];
    v6 = [v5 ef_publicDescription];
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_INFO, "Successfully generated HTML representation for message %{public}@", &v7, 0xCu);
  }

  [*(a1 + 40) setCompletedUnitCount:1];
  (*(*(a1 + 48) + 16))();
}

void __102__MFMessageContentRequest__generateRepresentationForLoadingContext_existingRepresentation_completion___block_invoke_68(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v15 = *MEMORY[0x1E696AA08];
    v16[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:v5];

  v7 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = [*(a1 + 32) message];
    v9 = [v8 ef_publicDescription];
    v10 = [v6 ef_publicDescription];
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    _os_log_error_impl(&dword_1B0389000, v7, OS_LOG_TYPE_ERROR, "Error generating HTML representation for message %{public}@: %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)_messageContentFromLoadingContext:(id)context completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  completionCopy = completion;
  v7 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    message = [contextCopy message];
    ef_publicDescription = [message ef_publicDescription];
    *buf = 138543362;
    v37 = ef_publicDescription;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "generate original content for message: %{public}@", buf, 0xCu);
  }

  v10 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  v11 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __72__MFMessageContentRequest__messageContentFromLoadingContext_completion___block_invoke;
  v33[3] = &unk_1E7AA26E0;
  v12 = v10;
  v34 = v12;
  v13 = contextCopy;
  v35 = v13;
  [v11 setCancellationHandler:v33];
  contentObservable = [v13 contentObservable];
  promise = [MEMORY[0x1E699B868] promise];
  firstResultObserverAdapter = [promise firstResultObserverAdapter];
  v17 = [contentObservable subscribe:firstResultObserverAdapter];
  [v12 addCancelable:v17];

  future = [promise future];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __72__MFMessageContentRequest__messageContentFromLoadingContext_completion___block_invoke_2;
  v32[3] = &unk_1E7AA68A0;
  v32[4] = self;
  v19 = [future then:v32];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __72__MFMessageContentRequest__messageContentFromLoadingContext_completion___block_invoke_3;
  v29[3] = &unk_1E7AA68C8;
  v20 = v11;
  v30 = v20;
  v21 = completionCopy;
  v31 = v21;
  [v19 addSuccessBlock:v29];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __72__MFMessageContentRequest__messageContentFromLoadingContext_completion___block_invoke_4;
  v27[3] = &unk_1E7AA68F0;
  v22 = v21;
  v28 = v22;
  [v19 addFailureBlock:v27];
  v23 = v28;
  v24 = v20;

  return v20;
}

uint64_t __72__MFMessageContentRequest__messageContentFromLoadingContext_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) cancel];
  v2 = *(a1 + 40);

  return [v2 cancel];
}

id __72__MFMessageContentRequest__messageContentFromLoadingContext_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ((*(*MEMORY[0x1E699B750] + 16))())
  {
    v4 = MEMORY[0x1E699B7C8];
    v5 = MEMORY[0x1E696ABC0];
    v13 = *MEMORY[0x1E699A6F0];
    v6 = MEMORY[0x1E696AD98];
    v7 = +[MFActivityMonitor currentMonitor];
    v8 = [v6 numberWithInteger:{objc_msgSend(v7, "transportType")}];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v10 = [v5 em_internalErrorWithReason:@"Loading context completed without vending a result" userInfo:v9];
    v11 = [v4 futureWithError:v10];
  }

  else
  {
    v11 = [*(a1 + 32) _processContentLoadingContextEvent:v3];
  }

  return v11;
}

void __72__MFMessageContentRequest__messageContentFromLoadingContext_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setCompletedUnitCount:1];
  (*(*(a1 + 40) + 16))();
}

void __72__MFMessageContentRequest__messageContentFromLoadingContext_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v7 = *MEMORY[0x1E696AA08];
    v8[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:v5];

  (*(*(a1 + 32) + 16))();
}

- (id)requestHTMLRepresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = _os_activity_create(&dword_1B0389000, "client request to generate HTML representation for message loading context", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v19.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &v19);
  v6 = [MFMessageLoadingContext alloc];
  if (self)
  {
    legacyMessage = self->_legacyMessage;
  }

  else
  {
    legacyMessage = 0;
  }

  v8 = legacyMessage;
  v9 = +[MFAttachmentManager defaultManager];
  v10 = [(MFMessageLoadingContext *)v6 initWithMessage:v8 attachmentManager:v9];

  v11 = [(MFMessageContentRequest *)self _generateRepresentationForLoadingContext:v10 existingRepresentation:0 completion:handlerCopy];
  if (self)
  {
    options = self->_options;
  }

  else
  {
    options = 0;
  }

  networkUsage = [(EMContentRequestOptions *)options networkUsage];
  if (networkUsage == 1)
  {
    v15 = 0;
    v14 = 1;
    if (!self)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  if (networkUsage == 2)
  {
    v14 = 1;
    v15 = 2;
    if (self)
    {
      goto LABEL_13;
    }
  }

  else
  {
    if (networkUsage)
    {
      v14 = 0;
      v15 = 0xAAAAAAAAAAAAAAAALL;
      if (!self)
      {
        goto LABEL_18;
      }

LABEL_13:
      scheduler = self->_scheduler;
      goto LABEL_14;
    }

    v18 = EMLogCategoryMessageLoading();
    [MFMessageContentRequest requestHTMLRepresentationWithCompletionHandler:v18];
    v14 = 0;
    v15 = 0;
    if (self)
    {
      goto LABEL_13;
    }
  }

LABEL_18:
  scheduler = 0;
LABEL_14:
  [(MFMessageLoadingContext *)v10 load:v15 scheduler:scheduler shouldDownload:v14];

  os_activity_scope_leave(&v19);

  return v11;
}

- (id)_processContentLoadingContextEvent:(id)event
{
  v186 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  v177 = 0;
  v178 = &v177;
  v179 = 0x2020000000;
  v180 = 0;
  v171 = 0;
  v172 = &v171;
  v173 = 0x3032000000;
  v174 = __Block_byref_object_copy__16;
  v175 = __Block_byref_object_dispose__16;
  v3 = objc_alloc_init(MEMORY[0x1E69AD798]);
  v169 = -17425;
  v170 = -65;
  v4 = [MEMORY[0x1E695DEF0] dataWithBytes:&v169 length:3];
  [v3 appendData:v4];

  v5 = [MEMORY[0x1E699B7C8] futureWithResult:v3];

  v176 = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke;
  aBlock[3] = &unk_1E7AA6990;
  v167 = &v171;
  v168 = &v177;
  v134 = eventCopy;
  v166 = v134;
  v122 = _Block_copy(aBlock);
  v133 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v140 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  context = [v134 context];
  attachmentManager = [context attachmentManager];
  v161[0] = MEMORY[0x1E69E9820];
  v161[1] = 3221225472;
  v161[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_81;
  v161[3] = &unk_1E7AA69B8;
  v126 = dictionary;
  v162 = v126;
  v127 = v124;
  v163 = v127;
  v130 = v122;
  v164 = v130;
  v131 = _Block_copy(v161);
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = [v134 content];
  v6 = [obj countByEnumeratingWithState:&v157 objects:v185 count:16];
  if (v6)
  {
    v138 = *v158;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v158 != v138)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v157 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [attachmentManager attachmentForTextAttachment:v8 error:0];
          if (v10)
          {
            message = [v134 message];
            v12 = -[MFMessageContentRequest _contentItemForAttachment:manager:managed:](self, "_contentItemForAttachment:manager:managed:", v10, attachmentManager, [message sourceIsManaged]);

            [v133 addObject:v12];
            v13 = [v10 url];
            [v140 addObject:v13];

            v14 = EMLogCategoryMessageLoading();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              ef_publicDescription = [v10 ef_publicDescription];
              legacyMessage = self;
              if (self)
              {
                legacyMessage = self->_legacyMessage;
              }

              v17 = legacyMessage;
              ef_publicDescription2 = [v17 ef_publicDescription];
              *buf = 138543618;
              *v183 = ef_publicDescription;
              *&v183[8] = 2114;
              v184 = ef_publicDescription2;
              _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_INFO, "Appending text attachment %{public}@ for message %{public}@", buf, 0x16u);
            }

            v131[2](v131, v12, v10);
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = v8;
            htmlData = [v10 htmlData];
            if (htmlData)
            {
              preferredCharacterSet = [v10 preferredCharacterSet];
              v21 = MFEncodingForCharset();
              v156 = -1;
              v22 = MFCreateStringWithData();
              if (!v22 && v21 != -1)
              {
                v22 = MFCreateStringWithData();
              }

              if (v22)
              {
                v23 = EMLogCategoryMessageLoading();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
                {
                  *buf = 67109376;
                  *v183 = v21;
                  *&v183[4] = 1024;
                  *&v183[6] = v156;
                  _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_INFO, "decoded HTML data with preferred encoding %x, used encoding %x", buf, 0xEu);
                }

                v24 = [MEMORY[0x1E699B7C8] futureWithResult:v22];
                (*(v130 + 2))(v130, v24);
              }

              else
              {
                v24 = EMLogCategoryMessageLoading();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  v34 = [htmlData length];
                  *buf = 134218240;
                  *v183 = v34;
                  *&v183[8] = 1024;
                  LODWORD(v184) = v21;
                  _os_log_error_impl(&dword_1B0389000, v24, OS_LOG_TYPE_ERROR, "failed to decode HTML data with length %lu and preferred encoding %x", buf, 0x12u);
                }
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v25 = EMLogCategoryMessageLoading();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
              {
                selfCopy = self;
                if (self)
                {
                  selfCopy = self->_legacyMessage;
                }

                v27 = selfCopy;
                ef_publicDescription3 = [v27 ef_publicDescription];
                *buf = 138543362;
                *v183 = ef_publicDescription3;
                _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_INFO, "Appending string item to content for message %{public}@", buf, 0xCu);
              }

              v10 = [MEMORY[0x1E699B7C8] futureWithResult:v8];
              (*(v130 + 2))(v130, v10);
            }

            else
            {
              v10 = EMLogCategoryMessageLoading();
              if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
              {
                v29 = objc_opt_class();
                v30 = NSStringFromClass(v29);
                selfCopy2 = self;
                if (self)
                {
                  selfCopy2 = self->_legacyMessage;
                }

                v32 = selfCopy2;
                ef_publicDescription4 = [v32 ef_publicDescription];
                *buf = 138543618;
                *v183 = v30;
                *&v183[8] = 2114;
                v184 = ef_publicDescription4;
                _os_log_error_impl(&dword_1B0389000, v10, OS_LOG_TYPE_ERROR, "Unknown item kind %{public}@ for message %{public}@", buf, 0x16u);
              }
            }
          }
        }

        objc_autoreleasePoolPop(v9);
      }

      v6 = [obj countByEnumeratingWithState:&v157 objects:v185 count:16];
    }

    while (v6);
  }

  [v134 loadedBody];
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v129 = v153 = 0u;
  attachments = [v129 attachments];
  v35 = [attachments countByEnumeratingWithState:&v152 objects:v181 count:16];
  if (v35)
  {
    obja = 0;
    v139 = *v153;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v153 != v139)
        {
          objc_enumerationMutation(attachments);
        }

        v37 = *(*(&v152 + 1) + 8 * j);
        v38 = [attachmentManager attachmentForTextAttachment:v37 error:0];
        v39 = v38;
        if (v38)
        {
          v40 = [v38 url];
          if ([v140 containsObject:v40])
          {
            v41 = v39;
          }

          else
          {
            [v140 addObject:v40];
            mimePart = [v37 mimePart];
            contentID = [mimePart contentID];
            if (contentID)
            {
              message2 = [context message];
              v45 = [MFMailDropAttachmentPreviewDataProvider fullResolutionStorageLocationForAttachmentWithMimePart:mimePart withMessage:message2];

              if (v45 && ([MEMORY[0x1E696AC08] defaultManager], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "fileExistsAtPath:", v45), v46, v47))
              {
                partURL = [mimePart partURL];
                v49 = [MFMailDropAttachmentPreviewDataProvider fullResolutionAttachmentURLForAttachmentURL:partURL];

                v41 = [attachmentManager attachmentForURL:v49 withMimeBody:v129 error:0];
                [v41 setContentID:contentID];
              }

              else
              {
                v41 = v39;
              }
            }

            else
            {
              v41 = v39;
            }

            message3 = [v134 message];
            v51 = -[MFMessageContentRequest _contentItemForAttachment:manager:managed:](self, "_contentItemForAttachment:manager:managed:", v41, attachmentManager, [message3 sourceIsManaged]);

            [v133 addObject:v51];
            if (obja || ([v172[5] resultIfAvailable], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "data"), v56 = objc_claimAutoreleasedReturnValue(), v55, v56) && (objc_msgSend(MEMORY[0x1E696AEC0], "mf_stringWithData:encoding:", v56, 4), obja = objc_claimAutoreleasedReturnValue(), v56, obja))
            {
              absoluteString = [v40 absoluteString];
              if ([obja rangeOfString:absoluteString] == 0x7FFFFFFFFFFFFFFFLL)
              {
                contentID2 = [v51 contentID];
                v54 = [obja rangeOfString:contentID2] == 0x7FFFFFFFFFFFFFFFLL;

                if (v54)
                {
                  v131[2](v131, v51, v41);
                }
              }

              else
              {
              }
            }

            else
            {
              obja = 0;
            }
          }
        }
      }

      v35 = [attachments countByEnumeratingWithState:&v152 objects:v181 count:16];
    }

    while (v35);
  }

  else
  {
    obja = 0;
  }

  if ([v127 count])
  {
    v150[0] = MEMORY[0x1E69E9820];
    v150[1] = 3221225472;
    v150[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_88;
    v150[3] = &unk_1E7AA5228;
    v57 = v126;
    v151 = v57;
    v58 = [(MFMessageContentRequest *)self delegateWithErrorHandler:v150];
    if (v58)
    {
      objectID = self;
      if (self)
      {
        objectID = self->_objectID;
      }

      v60 = objectID;
      v148[0] = MEMORY[0x1E69E9820];
      v148[1] = 3221225472;
      v148[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_2_94;
      v148[3] = &unk_1E7AA6A08;
      v61 = v57;
      v149 = v61;
      [v58 contentObjectID:v60 generateHTMLSnippetsForRelatedContentItems:v127 completionHandler:v148];

      allValues = [v61 allValues];
      v63 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"delegate failed to return a snippet for attachment"];
      [allValues makeObjectsPerformSelector:sel_finishWithError_ withObject:v63];

      allValues2 = v149;
    }

    else
    {
      allValues2 = [v57 allValues];
      v65 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to generate snippets for attachments: nil delegate"];
      [allValues2 makeObjectsPerformSelector:sel_finishWithError_ withObject:v65];
    }
  }

  if (v178[3])
  {
    goto LABEL_75;
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v78 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v134, "transportType")}];
  [dictionary2 setObject:v78 forKeyedSubscript:*MEMORY[0x1E699A6F0]];

  error = [v134 error];
  [dictionary2 setObject:error forKeyedSubscript:*MEMORY[0x1E696AA08]];

  error2 = [v134 error];

  if (error2)
  {
    v81 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      selfCopy3 = self;
      if (self)
      {
        selfCopy3 = self->_legacyMessage;
      }

      v106 = selfCopy3;
      ef_publicDescription5 = [v106 ef_publicDescription];
      error3 = [v134 error];
      ef_publicDescription6 = [error3 ef_publicDescription];
      *buf = 138543618;
      *v183 = ef_publicDescription5;
      *&v183[8] = 2114;
      v184 = ef_publicDescription6;
      _os_log_error_impl(&dword_1B0389000, v81, OS_LOG_TYPE_ERROR, "Error loading content for message %{public}@: %{public}@", buf, 0x16u);
    }

    v82 = MEMORY[0x1E699B7C8];
    data = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2049 userInfo:dictionary2];
    v83 = [v82 futureWithError:data];
LABEL_104:
    v77 = v83;
    goto LABEL_105;
  }

  if (![v134 hasLoadedBestAlternativePart] || (objc_msgSend(v134, "hasLoadedCompleteBody") & 1) == 0)
  {
    v90 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
    {
      selfCopy4 = self;
      if (self)
      {
        selfCopy4 = self->_legacyMessage;
      }

      v92 = selfCopy4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        selfCopy5 = self;
        if (self)
        {
          selfCopy5 = self->_legacyMessage;
        }

        v94 = selfCopy5;
        objectID = [v94 objectID];
      }

      else
      {
        selfCopy6 = self;
        if (self)
        {
          selfCopy6 = self->_legacyMessage;
        }

        v94 = selfCopy6;
        objectID = [v94 messageIDHeaderHash];
      }

      v97 = objectID;
      *buf = 138543362;
      *v183 = objectID;
      _os_log_impl(&dword_1B0389000, v90, OS_LOG_TYPE_DEFAULT, "Could not create a body subset from partials for message: %{public}@", buf, 0xCu);
    }

    v98 = MEMORY[0x1E699B7C8];
    data = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:dictionary2];
    v83 = [v98 futureWithError:data];
    goto LABEL_104;
  }

  v84 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
  {
    selfCopy7 = self;
    if (self)
    {
      selfCopy7 = self->_legacyMessage;
    }

    v86 = selfCopy7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      selfCopy8 = self;
      if (self)
      {
        selfCopy8 = self->_legacyMessage;
      }

      v88 = selfCopy8;
      objectID2 = [v88 objectID];
    }

    else
    {
      selfCopy9 = self;
      if (self)
      {
        selfCopy9 = self->_legacyMessage;
      }

      v88 = selfCopy9;
      objectID2 = [v88 messageIDHeaderHash];
    }

    v111 = objectID2;
    *buf = 138543362;
    *v183 = objectID2;
    _os_log_impl(&dword_1B0389000, v84, OS_LOG_TYPE_DEFAULT, "Did not find any content for message: %{public}@, using placeholder html", buf, 0xCu);
  }

  promise = [MEMORY[0x1E699B868] promise];
  v146[0] = MEMORY[0x1E69E9820];
  v146[1] = 3221225472;
  v146[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_110;
  v146[3] = &unk_1E7AA5228;
  v113 = promise;
  v147 = v113;
  v114 = [(MFMessageContentRequest *)self delegateWithErrorHandler:v146];
  if (v114)
  {
    selfCopy10 = self;
    if (self)
    {
      selfCopy10 = self->_objectID;
    }

    v116 = selfCopy10;
    v144[0] = MEMORY[0x1E69E9820];
    v144[1] = 3221225472;
    v144[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_2_114;
    v144[3] = &unk_1E7AA6A30;
    v145 = v113;
    [v114 contentObjectID:v116 placeholderHTMLForEmptyContentWithCompletionHandler:v144];

    v117 = v145;
  }

  else
  {
    v117 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to generate no content string: nil delegate"];
    [v113 finishWithError:v117];
  }

  future = [v113 future];
  (*(v130 + 2))(v130, future);

LABEL_75:
  dictionary2 = [v172[5] result:0];
  [dictionary2 done];
  data = [dictionary2 data];
  v68 = MEMORY[0x1E699AC60];
  clientIdentifier = self->_clientIdentifier;
  ef_UUID = [MEMORY[0x1E696AEC0] ef_UUID];
  v142 = 0;
  v143 = 0;
  v71 = [v68 temporaryURLWithData:data clientIdentifier:clientIdentifier preferredFilename:ef_UUID pathExtension:@"html" cleanupInvocable:&v143 error:&v142];
  v72 = v143;
  v73 = v142;

  if (v71)
  {
    v100 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
    {
      v101 = [data length];
      *buf = 138412546;
      *v183 = v71;
      *&v183[8] = 2048;
      v184 = v101;
      _os_log_impl(&dword_1B0389000, v100, OS_LOG_TYPE_INFO, "generated initial HTML content at URL %@: %lu bytes", buf, 0x16u);
    }

    v102 = objc_opt_new();
    [(_MFLoadingContextEventResult *)v102 setContentURL:v71];
    [(_MFLoadingContextEventResult *)v102 setCleanupInvocable:v72];
    [(_MFLoadingContextEventResult *)v102 setRelatedContentItems:v133];
    message4 = [v134 message];
    globalMessageURL = [message4 globalMessageURL];
    [(_MFLoadingContextEventResult *)v102 setPublicMessageURL:globalMessageURL];

    if (_os_feature_enabled_impl() && (EMIsGreymatterSupported() & 1) != 0 || _os_feature_enabled_impl() && EMIsGreymatterSupported())
    {
      v119 = MEMORY[0x1E699B848];
      message5 = [v134 message];
      v121 = [v119 pairWithFirst:message5 second:data];
      [(_MFLoadingContextEventResult *)v102 setMessageAndHTMLDataPair:v121];
    }

    v77 = [MEMORY[0x1E699B7C8] futureWithResult:v102];
  }

  else
  {
    v74 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      message6 = [v134 message];
      ef_publicDescription7 = [message6 ef_publicDescription];
      [(MFMessageContentRequest *)ef_publicDescription7 _processContentLoadingContextEvent:buf, v74, message6];
    }

    v77 = [MEMORY[0x1E699B7C8] futureWithError:v73];
  }

LABEL_105:
  _Block_object_dispose(&v171, 8);

  _Block_object_dispose(&v177, 8);

  return v77;
}

void __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_2;
  v10[3] = &unk_1E7AA6968;
  v5 = *(a1 + 48);
  v11 = v3;
  v13 = v5;
  v12 = *(a1 + 32);
  v6 = v3;
  v7 = [v4 then:v10];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

id __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_3;
  v14[3] = &unk_1E7AA6918;
  v5 = v3;
  v6 = *(a1 + 48);
  v15 = v5;
  v16 = v6;
  v7 = [v4 then:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_4;
  v11[3] = &unk_1E7AA6940;
  v12 = *(a1 + 40);
  v8 = v5;
  v13 = v8;
  v9 = [v7 recover:v11];

  return v9;
}

id __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 dataUsingEncoding:4];
  [v4 appendData:v5];

  *(*(*(a1 + 40) + 8) + 24) = 1;
  v6 = [MEMORY[0x1E699B7C8] futureWithResult:*(a1 + 32)];

  return v6;
}

id __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_4(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) message];
    v8 = [v7 ef_publicDescription];
    v9 = [v3 ef_publicDescription];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_error_impl(&dword_1B0389000, v4, OS_LOG_TYPE_ERROR, "error when generating body string component for message %{public}@: %{public}@", &v10, 0x16u);
  }

  v5 = [MEMORY[0x1E699B7C8] futureWithResult:*(a1 + 40)];

  return v5;
}

void __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 contentID];
  v8 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 url];
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_DEFAULT, "Add attachment with contentID: %@ url: %@", &v15, 0x16u);
  }

  v10 = [*(a1 + 32) objectForKeyedSubscript:v7];
  v11 = v10 == 0;

  if (!v11)
  {
    v12 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_81_cold_1(v7, v12);
    }

    goto LABEL_8;
  }

  v12 = [MEMORY[0x1E699B868] promise];
  [*(a1 + 40) addObject:v5];
  [*(a1 + 32) setObject:v12 forKeyedSubscript:v7];
  if (v12)
  {
    v13 = *(a1 + 48);
    v14 = [v12 future];
    (*(v13 + 16))(v13, v14);

LABEL_8:
  }
}

void __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_88(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696AA08];
  v9[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 em_internalErrorWithReason:@"connection failure during delegate snippet request" userInfo:v5];

  v7 = [*(a1 + 32) allValues];
  [v7 makeObjectsPerformSelector:sel_finishWithError_ withObject:v6];
}

void __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_2_94(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_3_101;
    v12[3] = &unk_1E7AA69E0;
    v13 = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v12];
    v8 = v13;
  }

  else
  {
    if (!v6)
    {
      v7 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:{@"nil snippets from delegate, but missing error"}];
    }

    v9 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696AA08];
    v15[0] = v7;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v8 = [v9 em_internalErrorWithReason:@"failed to generate any attachment snippets" userInfo:v10];

    v11 = [*(a1 + 32) allValues];
    [v11 makeObjectsPerformSelector:sel_finishWithError_ withObject:v8];
  }
}

void __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_3_101(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [v5 finishWithResult:v6];
}

void __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_110(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E696ABC0];
  v7 = *MEMORY[0x1E696AA08];
  v8[0] = v3;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = [v4 em_internalErrorWithReason:@"Failed to generate no content string: delegate connection error" userInfo:v5];

  [*(a1 + 32) finishWithError:v6];
}

void __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_2_114(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = v5;
  v7 = *(a1 + 32);
  if (v9)
  {
    [*(a1 + 32) finishWithResult:?];
  }

  else
  {
    v8 = v5;
    if (!v5)
    {
      v8 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:{@"Failed to generate no content string: non-nil delegate, nil placeholderHTML and nil error"}];
    }

    [v7 finishWithError:v8];
    if (!v6)
    {
    }
  }
}

- (id)_contentRepresentationForLoadingEvent:(id)event existingRepresentation:(id)representation
{
  eventCopy = event;
  representationCopy = representation;
  v8 = [(MFMessageContentRequest *)self _processContentLoadingContextEvent:eventCopy];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke;
  v18[3] = &unk_1E7AA6AD0;
  v18[4] = self;
  v9 = eventCopy;
  v19 = v9;
  v10 = [v8 then:v18];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136;
  v15[3] = &unk_1E7AA6AF8;
  v15[4] = self;
  v11 = v9;
  v16 = v11;
  v12 = representationCopy;
  v17 = v12;
  v13 = [v10 then:v15];

  return v13;
}

id __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E699B868] promise];
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[3];
  }

  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[2];
  }

  v8 = v7;
  v9 = [v6 mailDropAttachmentPresentForMessage:v8];

  if (v9 && ([v9 BOOLValue] & 1) == 0)
  {
    [v4 finishWithResult:v3];
    v22 = [v4 future];
  }

  else
  {
    v10 = *(a1 + 32);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2;
    v34[3] = &unk_1E7AA6A58;
    v11 = v4;
    v35 = v11;
    v12 = v3;
    v36 = v12;
    v13 = [v10 delegateWithErrorHandler:v34];
    v14 = *(a1 + 32);
    if (v14)
    {
      v14 = v14[8];
    }

    v15 = v14;
    if (v12)
    {
      v16 = v12[1];
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_130;
    v27 = &unk_1E7AA6AA8;
    v18 = v9;
    v19 = *(a1 + 32);
    v28 = v18;
    v29 = v19;
    v30 = v12;
    v31 = *(a1 + 40);
    v20 = v13;
    v32 = v20;
    v21 = v11;
    v33 = v21;
    [v15 generateMailDropMetadataForContentURL:v17 completionHandler:&v24];

    v22 = [v21 future];
  }

  return v22;
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [v3 ef_publicDescription];
    objc_claimAutoreleasedReturnValue();
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2_cold_1();
  }

  [*(a1 + 32) finishWithResult:*(a1 + 40)];
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_130(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 count];
  if (!*(a1 + 32) && (!v6 || ([v6 ef_isTimeoutError] & 1) == 0))
  {
    v8 = [objc_opt_class() databaseWriteScheduler];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2_131;
    v26[3] = &unk_1E7AA25E8;
    v26[4] = *(a1 + 40);
    v27 = v7 != 0;
    [v8 performBlock:v26];
  }

  if (v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = v10;
    v12 = *(a1 + 48);
    if (v12)
    {
      v13 = *(v12 + 16);
    }

    else
    {
      v13 = 0;
    }

    [v10 addObjectsFromArray:v13];
    v14 = *(a1 + 40);
    v15 = [*(a1 + 56) context];
    v16 = [v14 _attachmentContentItemsForMailDropNodes:v5 withContext:v15];

    [v11 addObjectsFromArray:v16];
    [(_MFLoadingContextEventResult *)*(a1 + 48) setRelatedContentItems:v11];
    v17 = *(a1 + 64);
    v18 = *(a1 + 40);
    if (v18)
    {
      v18 = v18[2];
    }

    v19 = v18;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_3;
    v22[3] = &unk_1E7AA6A80;
    v23 = *(a1 + 72);
    v20 = *(a1 + 48);
    v21 = *(a1 + 40);
    v24 = v20;
    v25 = v21;
    [v17 contentObjectID:v19 generateHTMLSnippetsForMailDropContentItems:v16 completionHandler:v22];
  }

  else
  {
    if (!v5)
    {
      v9 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [v6 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_130_cold_1();
      }
    }

    [*(a1 + 72) finishWithResult:*(a1 + 48)];
  }
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    if (v6)
    {
      v10 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [v7 ef_publicDescription];
        objc_claimAutoreleasedReturnValue();
        __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_3_cold_1();
      }
    }

    goto LABEL_8;
  }

  if (![v5 count])
  {
LABEL_8:
    [*(a1 + 32) finishWithResult:*(a1 + 40)];
    goto LABEL_9;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_132;
  v12[3] = &unk_1E7AA4E20;
  v11 = *(a1 + 40);
  v8 = v11.i64[0];
  v13 = vextq_s8(v11, v11, 8uLL);
  v14 = v5;
  v15 = *(a1 + 32);
  v9 = [MEMORY[0x1E699B978] mainThreadScheduler];
  [v9 performBlock:v12];

LABEL_9:
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2_133(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [v3 ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2_133_cold_1();
    }
  }

  [*(a1 + 32) finishWithResult:*(a1 + 40)];
}

id __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1[4];
  v6 = a1[5];
  if (v3)
  {
    v7 = v3[1];
    v8 = v4[2];
    v9 = v4[5];
    v10 = v4[3];
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v9 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
  }

  v11 = [v5 _contentRepresentationForEvent:v6 contentURL:v7 relatedItems:v8 messageAndHTMLDataPair:v9 existingRepresentation:a1[6] invocable:v10];

  if (v4)
  {
    v12 = v4[4];
  }

  else
  {
    v12 = 0;
  }

  [v11 setPublicMessageURL:v12];
  v13 = a1[4];
  if (v13)
  {
    v14 = *(v13 + 32);
  }

  else
  {
    v14 = 0;
  }

  v15 = [v14 headersIfAvailable];
  v16 = [v15 copyAddressListForReplyTo];
  [v11 setReplyToList:v16];

  v17 = [MEMORY[0x1E699B7C8] futureWithResult:v11];

  return v17;
}

- (id)_contentRepresentationForEvent:(id)event contentURL:(id)l relatedItems:(id)items messageAndHTMLDataPair:(id)pair existingRepresentation:(id)representation invocable:(id)invocable
{
  v59 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  lCopy = l;
  itemsCopy = items;
  pairCopy = pair;
  representationCopy = representation;
  invocableCopy = invocable;
  v16 = [MFMessageLoadingContextToEMSecurityInformationTransformer securityInformationFromMFMessageLoadingContextEvent:eventCopy];
  v17 = [objc_alloc(MEMORY[0x1E699AC60]) initWithContentURL:lCopy relatedItems:itemsCopy securityInformation:v16];
  [v17 setTransportType:{objc_msgSend(eventCopy, "transportType")}];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke;
  v54[3] = &unk_1E7AA25C0;
  v18 = invocableCopy;
  v55 = v18;
  [v17 addInvalidationHandler:v54];
  if (self)
  {
    legacyMessage = self->_legacyMessage;
  }

  else
  {
    legacyMessage = 0;
  }

  [(MFMessageContentRequest *)self _includeSuggestionItemsIfNeededForRepresentation:v17 message:legacyMessage];
  if (self)
  {
    v20 = self->_legacyMessage;
  }

  else
  {
    v20 = 0;
  }

  [(MFMessageContentRequest *)self _includeCachedMetadataJSONIfNeededForRepresentation:v17 message:v20];
  if (self)
  {
    v21 = self->_legacyMessage;
    options = self->_options;
  }

  else
  {
    v21 = 0;
    options = 0;
  }

  [(MFMessageContentRequest *)self _includeHeadersIfNeededForRepresentation:v17 message:v21 options:options];

  if ([eventCopy hasLoadedBestAlternativePart])
  {
    v23 = 0;
  }

  else
  {
    v23 = 2;
  }

  if (![eventCopy hasLoadedBestAlternativePart] || (objc_msgSend(eventCopy, "hasLoadedCompleteBody") & 1) == 0)
  {
    context = [eventCopy context];
    if (!representationCopy)
    {
      representationCopy = v17;
    }

    [v17 setHasMoreContent:1];
    if ([eventCopy hasLoadedCompleteBody])
    {
      remainingBytes = 0;
    }

    else
    {
      remainingBytes = [eventCopy remainingBytes];
    }

    [v17 setRemainingByteCount:remainingBytes];
    objc_initWeak(location, representationCopy);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_2;
    v51[3] = &unk_1E7AA6B48;
    objc_copyWeak(v53, location);
    v51[4] = self;
    v26 = context;
    v52 = v26;
    v53[1] = v23;
    [v17 setRequestMoreContentBlock:v51];

    objc_destroyWeak(v53);
    objc_destroyWeak(location);
  }

  unsubscribeCommand = [v17 unsubscribeCommand];

  if (unsubscribeCommand)
  {
    objc_initWeak(location, v17);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_4;
    v49[3] = &unk_1E7AA6B70;
    objc_copyWeak(&v50, location);
    v49[4] = self;
    [v17 setListUnsubscribeBlock:v49];
    objc_destroyWeak(&v50);
    objc_destroyWeak(location);
  }

  if (self)
  {
    v28 = self->_options;
  }

  else
  {
    v28 = 0;
  }

  maximumNumberOfOriginalContentMessagesToRequest = [(EMContentRequestOptions *)v28 maximumNumberOfOriginalContentMessagesToRequest];
  if (_os_feature_enabled_impl() && (EMIsGreymatterSupported() & 1) != 0)
  {
    if (!maximumNumberOfOriginalContentMessagesToRequest)
    {
      goto LABEL_36;
    }
  }

  else
  {
    if (!_os_feature_enabled_impl())
    {
      goto LABEL_36;
    }

    v30 = EMIsGreymatterSupported();
    v31 = maximumNumberOfOriginalContentMessagesToRequest ? v30 : 0;
    if ((v31 & 1) == 0)
    {
      goto LABEL_36;
    }
  }

  v32 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *location = 138543618;
    *&location[4] = self;
    v57 = 2050;
    v58 = maximumNumberOfOriginalContentMessagesToRequest;
    _os_log_impl(&dword_1B0389000, v32, OS_LOG_TYPE_DEFAULT, "[SmartReply] %{public}@ Pre-fetching a maximum of %{public}lu original-content messages", location, 0x16u);
  }

  promise = [MEMORY[0x1E699B868] promise];
  if (self)
  {
    v34 = self->_legacyMessage;
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_141;
  v47[3] = &unk_1E7AA6B98;
  v47[4] = self;
  v36 = promise;
  v48 = v36;
  [(MFMessageContentRequest *)self _originalContentMessagesInReplyToLegacyMessage:v35 withMessageAndHTMLDataPair:pairCopy maximumNumberOfMessages:maximumNumberOfOriginalContentMessagesToRequest completion:v47];

  future = [v36 future];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_142;
  v44[3] = &unk_1E7AA6BE8;
  v45 = future;
  selfCopy = self;
  v38 = future;
  [v17 setRequestOriginalContentMessagesInReplyToContentItemBlock:v44];

LABEL_36:

  return v17;
}

id __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = _os_activity_create(&dword_1B0389000, "client request to load more HTML for message loading context", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_3;
  v17 = &unk_1E7AA6B20;
  v8 = WeakRetained;
  v18 = v8;
  v9 = v3;
  v19 = v9;
  v10 = [v6 _generateRepresentationForLoadingContext:v7 existingRepresentation:v8 completion:&v14];
  v11 = *(a1 + 32);
  if (v11)
  {
    v12 = *(v11 + 8);
  }

  else
  {
    v12 = 0;
  }

  [*(a1 + 40) load:*(a1 + 56) scheduler:v12 shouldDownload:{1, v14, v15, v16, v17}];

  os_activity_scope_leave(&state);

  return v10;
}

void __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && *(a1 + 32))
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [*(a1 + 32) contentURL];
    v9 = [v5 contentURL];
    v15 = v6;
    v10 = [v7 replaceItemAtURL:v8 withItemAtURL:v9 backupItemName:0 options:1 resultingItemURL:0 error:&v15];
    v11 = v15;

    if (v10)
    {
      [*(a1 + 32) mergeUpdatedRepresentation:v5];
      v12 = [v5 requestMoreContentBlock];
      [*(a1 + 32) setRequestMoreContentBlock:v12];
      v6 = v11;
    }

    else
    {
      v13 = MEMORY[0x1E696ABC0];
      v16 = *MEMORY[0x1E696AA08];
      v17[0] = v11;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v6 = [v13 errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:v14];

      v12 = v5;
      v5 = 0;
    }
  }

  (*(*(a1 + 40) + 16))();
}

id __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained unsubscribeCommand];
  if (v8)
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_5;
    v17 = &unk_1E7AA6878;
    v18 = v6;
    v19 = v5;
    v9 = _Block_copy(&v14);
    v10 = *(a1 + 32);
    if (v10)
    {
      v10 = v10[9];
    }

    v11 = v10;
    v12 = v11;
    if (a2 == 1)
    {
      [v11 unsubscribeWithCommand:v8 completion:{v9, v14, v15, v16, v17, v18}];
    }

    else
    {
      [v11 ignoreWithCommand:v8 completion:{v9, v14, v15, v16, v17, v18}];
    }
  }

  else
  {
    [v6 setCompletedUnitCount:1];
    (*(v5 + 2))(v5, 0);
  }

  return v6;
}

void __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setCompletedUnitCount:1];
  (*(*(a1 + 40) + 16))();
}

void __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_141(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543874;
    v10 = v8;
    v11 = 2050;
    v12 = [v5 count];
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_DEFAULT, "[SmartReply] %{public}@ Finished pre-fetching %{public}lu original-content messages: %{public}@", &v9, 0x20u);
  }

  [*(a1 + 40) finishWithResult:v5 error:v6];
}

void __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_142(uint64_t a1, void *a2)
{
  v3 = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_2_143;
  v10[3] = &unk_1E7AA6BC0;
  v4 = *(a1 + 32);
  v10[4] = *(a1 + 40);
  v5 = v3;
  v11 = v5;
  [v4 addSuccessBlock:v10];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_145;
  v8[3] = &unk_1E7AA6878;
  v6 = *(a1 + 32);
  v8[4] = *(a1 + 40);
  v7 = v5;
  v9 = v7;
  [v6 addFailureBlock:v8];
}

void __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_2_143(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543874;
    v7 = v5;
    v8 = 2050;
    v9 = [v3 count];
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "[SmartReply] %{public}@ Returning %{public}lu original-content messages: %{public}@", &v6, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __138__MFMessageContentRequest__contentRepresentationForEvent_contentURL_relatedItems_messageAndHTMLDataPair_existingRepresentation_invocable___block_invoke_145(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = [v3 ef_publicDescription];
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "[SmartReply] %{public}@ Failed to return original-content messages with error: %@{public}", &v7, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_includeHeadersIfNeededForRepresentation:(id)representation message:(id)message options:(id)options
{
  v26 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  messageCopy = message;
  optionsCopy = options;
  requestedHeaderKeys = [optionsCopy requestedHeaderKeys];
  headersIfAvailable = [messageCopy headersIfAvailable];
  if ([optionsCopy requestAllHeaders])
  {
    allHeaderKeys = [headersIfAvailable allHeaderKeys];

    requestedHeaderKeys = allHeaderKeys;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = requestedHeaderKeys;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        v18 = [headersIfAvailable headersForKey:v17];
        [v12 setObject:v18 forKeyedSubscript:v17];
      }

      v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v19 = [objc_alloc(MEMORY[0x1E699AD80]) initWithHeaders:v12];
  [representationCopy setRequestedHeaders:v19];
}

- (id)_messageForLegacyMessage:(id)message
{
  messageCopy = message;
  if (self)
  {
    v5 = self->_clientIdentifier;
    v6 = self->_messageTransformer;
    v7 = self->_scheduler;
    objectID = self->_objectID;
  }

  else
  {
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v7 = 0;
    v5 = 0;
    v6 = 0;
    objectID = 0;
  }

  v16 = objectID;
  mailboxScope = [(EMMessageObjectID *)v16 mailboxScope];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__MFMessageContentRequest__messageForLegacyMessage___block_invoke;
  v17[3] = &unk_1E7AA6C10;
  v10 = messageCopy;
  v18 = v10;
  v11 = v7;
  v19 = v11;
  selfCopy = self;
  v12 = v6;
  v21 = v12;
  v13 = v5;
  v22 = v13;
  v14 = [(EDMessageTransformer *)v12 transformBaseMessage:v10 mailboxScope:mailboxScope loaderBlock:v17];

  return v14;
}

id __52__MFMessageContentRequest__messageForLegacyMessage___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [v7 requestedRepresentation];
    v12 = [*(a1 + 32) ef_publicDescription];
    __52__MFMessageContentRequest__messageForLegacyMessage___block_invoke_cold_1(v11, v12, buf, v10);
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    v13 = v13[3];
  }

  v14 = *(a1 + 40);
  v15 = v13;
  v16 = *(a1 + 32);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  if (v17)
  {
    v17 = v17[8];
  }

  v19 = v17;
  v20 = v19;
  v21 = *(a1 + 48);
  if (v21)
  {
    v21 = *(v21 + 72);
  }

  v22 = [MFMessageContentRequest onScheduler:v14 requestID:0 requestContentForObjectID:0 messagePersistence:v15 legacyMessage:v16 messageTransformer:v18 mailDropAttachmentGenerator:v19 listUnsubscribeHandler:v21 clientIdentifier:*(a1 + 64) options:v7 delegate:v8 completionHandler:v9];

  return v22;
}

- (id)_requestContentForAttachment:(id)attachment manager:(id)manager options:(id)options managed:(BOOL)managed completion:(id)completion
{
  v54 = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  managerCopy = manager;
  optionsCopy = options;
  completionCopy = completion;
  v15 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [attachmentCopy url];
    *buf = 138412290;
    v53 = v16;
    _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Start to request content for attachment: %@", buf, 0xCu);
  }

  promise = [MEMORY[0x1E699B868] promise];
  future = [promise future];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke;
  v50[3] = &unk_1E7AA6C38;
  v19 = completionCopy;
  v51 = v19;
  [future addSuccessBlock:v50];

  future2 = [promise future];
  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_2;
  v48[3] = &unk_1E7AA68F0;
  v21 = v19;
  v49 = v21;
  [future2 addFailureBlock:v48];

  networkUsage = [optionsCopy networkUsage];
  if (networkUsage || ([attachmentCopy isDataAvailableLocally] & 1) != 0)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_154;
    aBlock[3] = &unk_1E7AA6CB0;
    v23 = attachmentCopy;
    v42 = v23;
    v24 = promise;
    v43 = v24;
    v44 = managerCopy;
    selfCopy = self;
    v46 = optionsCopy;
    managedCopy = managed;
    v25 = _Block_copy(aBlock);
    if (networkUsage == 1 && ([v23 isDataAvailableLocally]& 1) == 0)
    {
      v27 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:1];
      if (self)
      {
        scheduler = self->_scheduler;
      }

      else
      {
        scheduler = 0;
      }

      v29 = scheduler;
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_2_166;
      v36[3] = &unk_1E7AA6CD8;
      v37 = v23;
      v40 = v25;
      v30 = v27;
      v38 = v30;
      v39 = v24;
      [(EFScheduler *)v29 performBlock:v36];

      v31 = v39;
      v26 = v30;
    }

    else
    {
      v26 = v25[2](v25);
    }

    v32 = v42;
  }

  else
  {
    v34 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:0];
    [promise finishWithError:v34];

    v32 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [attachmentCopy url];
      objc_claimAutoreleasedReturnValue();
      [MFMessageContentRequest _requestContentForAttachment:manager:options:managed:completion:];
    }

    v26 = 0;
  }

  return v26;
}

id __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_154(uint64_t a1)
{
  v2 = [*(a1 + 32) fileName];
  v3 = [*(a1 + 32) part];
  v4 = [*(a1 + 32) url];
  objc_initWeak(&location, *(a1 + 32));
  [*(a1 + 32) setWantsCompletionBlockOffMainThread:1];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_2_155;
  v16 = &unk_1E7AA6C88;
  v17 = *(a1 + 40);
  v5 = v4;
  v18 = v5;
  objc_copyWeak(&v24, &location);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v9 = v2;
  v22 = v9;
  v10 = v3;
  v23 = v10;
  v25 = *(a1 + 72);
  [*(a1 + 32) setFetchCompletionBlock:&v13];
  v11 = [*(a1 + 32) fetchData];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  return v11;
}

void __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_2_155(uint64_t a1, void *a2, void *a3, void *a4)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = *(a1 + 32);
    v12 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696AA08];
    v36[0] = v9;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v14 = [v12 errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:v13];
    [v11 finishWithError:v14];

    WeakRetained = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      *buf = 138412802;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      *&buf[22] = 2112;
      v32 = v10;
      _os_log_error_impl(&dword_1B0389000, WeakRetained, OS_LOG_TYPE_ERROR, "Failed to request content for attachment url: %@, original file URL: %@ due to error: %@", buf, 0x20u);
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 88));
    if (WeakRetained)
    {
      v17 = [*(a1 + 48) prepareAttachmentForDisplay:WeakRetained fileURL:v7];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v32 = __Block_byref_object_copy__16;
      v33 = __Block_byref_object_dispose__16;
      v34 = v8;
      objc_initWeak(&location, WeakRetained);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_156;
      v19[3] = &unk_1E7AA6C60;
      v18 = *(a1 + 64);
      v19[4] = *(a1 + 56);
      v20 = v18;
      v21 = v7;
      v22 = *(a1 + 72);
      v23 = *(a1 + 40);
      v24 = *(a1 + 32);
      v27 = buf;
      objc_copyWeak(&v28, &location);
      v25 = *(a1 + 80);
      v29 = *(a1 + 96);
      v26 = *(a1 + 48);
      [v17 always:v19];

      objc_destroyWeak(&v28);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);
    }
  }
}

void __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_2_166(uint64_t a1)
{
  if ([*(a1 + 32) shouldAutoDownload])
  {
    v4 = (*(*(a1 + 56) + 16))();
    [*(a1 + 40) addChild:? withPendingUnitCount:?];
  }

  else
  {
    v2 = *(a1 + 48);
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:0];
    [v2 finishWithError:?];

    v3 = *(a1 + 40);

    [v3 setCompletedUnitCount:1];
  }
}

- (id)_contentItemForAttachment:(id)attachment manager:(id)manager managed:(BOOL)managed
{
  v42[2] = *MEMORY[0x1E69E9840];
  attachmentCopy = attachment;
  managerCopy = manager;
  v10 = objc_alloc_init(MEMORY[0x1E699AF48]);
  contentID = [attachmentCopy contentID];
  [v10 setContentID:contentID];

  fileUTType = [attachmentCopy fileUTType];
  [v10 setUniformTypeIdentifier:fileUTType];

  fileName = [attachmentCopy fileName];
  [v10 setDisplayName:fileName];

  [v10 setIsAvailableLocally:{objc_msgSend(attachmentCopy, "isDataAvailableLocally")}];
  [v10 setDataTransferByteCount:{objc_msgSend(attachmentCopy, "encodedFileSize")}];
  [v10 setStorageByteCount:{objc_msgSend(attachmentCopy, "decodedFileSize")}];
  mailDropMetadata = [attachmentCopy mailDropMetadata];
  [v10 setMailDropMetadata:mailDropMetadata];

  part = [attachmentCopy part];
  partNumber = [part partNumber];
  [attachmentCopy setMimePartNumber:partNumber];

  if (self)
  {
    legacyMessage = self->_legacyMessage;
  }

  else
  {
    legacyMessage = 0;
  }

  loadMeetingExternalID = [(MFMailMessage *)legacyMessage loadMeetingExternalID];
  uniformTypeIdentifier = [v10 uniformTypeIdentifier];

  v20 = 0;
  if (uniformTypeIdentifier && loadMeetingExternalID)
  {
    v21 = MEMORY[0x1E6982C40];
    uniformTypeIdentifier2 = [v10 uniformTypeIdentifier];
    v23 = [v21 typeWithIdentifier:uniformTypeIdentifier2];
    v24 = [v23 conformsToType:*MEMORY[0x1E6982D30]];

    if (v24)
    {
      if (self)
      {
        v25 = self->_legacyMessage;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;
      account = [(MFMailMessage *)v26 account];
      meetingStorePersistentID = [account meetingStorePersistentID];
      [v10 setExchangeEventUID:{MFMailGetEventUIDForUniqueIdentifierAndPersistentStoreID(loadMeetingExternalID, meetingStorePersistentID)}];

      v20 = 1;
      [v10 setIsAvailableLocally:1];
    }

    else
    {
      v20 = 0;
    }
  }

  if ([attachmentCopy isRFC822])
  {
    v29 = *MEMORY[0x1E699A6F8];
    v42[0] = *MEMORY[0x1E699A710];
    v42[1] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    [v10 setAvailableRepresentations:v30];
  }

  else
  {
    v41 = *MEMORY[0x1E699A710];
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    [v10 setAvailableRepresentations:v30];
  }

  if (v20)
  {
    v31 = [v10 exchangeEventUID] != 0;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __69__MFMessageContentRequest__contentItemForAttachment_manager_managed___block_invoke;
    v37[3] = &unk_1E7AA6D00;
    v40 = v31;
    v38 = attachmentCopy;
    selfCopy = self;
    [v10 setLoaderBlock:v37];
  }

  else
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __69__MFMessageContentRequest__contentItemForAttachment_manager_managed___block_invoke_2;
    v33[3] = &unk_1E7AA6D28;
    v33[4] = self;
    v34 = attachmentCopy;
    v35 = managerCopy;
    managedCopy = managed;
    [v10 setLoaderBlock:v33];
  }

  return v10;
}

uint64_t __69__MFMessageContentRequest__contentItemForAttachment_manager_managed___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = [*(a1 + 32) fileName];
  if (*(a1 + 48) == 1)
  {
    v7 = objc_alloc(MEMORY[0x1E699AC60]);
    v8 = [MEMORY[0x1E695DEF0] data];
    v9 = *(a1 + 40);
    if (v9)
    {
      v9 = v9[6];
    }

    v10 = v9;
    v11 = [v6 stringByDeletingPathExtension];
    v12 = [v6 pathExtension];
    v13 = [v7 initWithData:v8 clientIdentifier:v10 preferredFilename:v11 extension:v12 relatedItems:MEMORY[0x1E695E0F0] securityInformation:0];

    [v13 setTransportType:1];
    v5[2](v5, v13, 0);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:0];
    (v5)[2](v5, 0, v13);
  }

  return 0;
}

id __69__MFMessageContentRequest__contentItemForAttachment_manager_managed___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = _os_activity_create(&dword_1B0389000, "client request for attachment content", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v11.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &v11);
  v9 = [*(a1 + 32) _requestContentForAttachment:*(a1 + 40) manager:*(a1 + 48) options:v6 managed:*(a1 + 56) completion:v7];
  os_activity_scope_leave(&v11);

  return v9;
}

- (void)_originalContentMessagesInReplyToLegacyMessage:(id)message withMessageAndHTMLDataPair:(id)pair maximumNumberOfMessages:(unint64_t)messages completion:(id)completion
{
  v30[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  pairCopy = pair;
  completionCopy = completion;
  if (!messages)
  {
    v17 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Should not retrieve original-content messages"];
    completionCopy[2](completionCopy, 0, v17);
    goto LABEL_7;
  }

  if (self)
  {
    legacyMessage = self->_legacyMessage;
  }

  else
  {
    legacyMessage = 0;
  }

  subject = [(MFMailMessage *)legacyMessage subject];
  hasForwardPrefix = [subject hasForwardPrefix];

  if (hasForwardPrefix)
  {
    v17 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Should not retrieve original-content messages for forwarded message"];
    completionCopy[2](completionCopy, 0, v17);
LABEL_7:

    goto LABEL_15;
  }

  v18 = __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke(v16, pairCopy);
  v19 = v18;
  if (v18)
  {
    if (messages == 1)
    {
      v30[0] = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
      (completionCopy)[2](completionCopy, v20, 0);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        originalContentMessageScheduler = [objc_opt_class() originalContentMessageScheduler];
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke_2;
        v23[3] = &unk_1E7AA6DE0;
        v24 = messageCopy;
        selfCopy = self;
        messagesCopy = messages;
        v27 = &__block_literal_global_178;
        v28 = completionCopy;
        v26 = v19;
        [originalContentMessageScheduler performBlock:v23];
      }
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to retrieve latest original-content message"];
    completionCopy[2](completionCopy, 0, v21);
  }

LABEL_15:
}

id __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 first];
  v4 = [v2 second];
  v5 = [v3 senders];
  v6 = [v5 firstObject];

  v7 = [v3 dateReceived];
  v8 = v7;
  v9 = 0;
  if (v3 && v4 && v6 && v7)
  {
    v20 = v4;
    v21 = v2;
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:4];
    v18 = [MEMORY[0x1E699B2F8] snippetFromHTMLBody:v19 options:0 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v3 searchableMessageID];
    }

    else
    {
      v10 = 0;
    }

    v11 = objc_alloc(MEMORY[0x1E699AE10]);
    v12 = [v3 subject];
    v13 = [v12 subjectString];
    v14 = [v3 to];
    v15 = [v3 cc];
    v16 = [v3 flags];
    v9 = [v11 initWithSearchableMessageID:v10 bodyText:v18 subject:v13 sender:v6 toList:v14 ccList:v15 flags:v16 date:v8];

    v4 = v20;
    v2 = v21;
  }

  return v9;
}

void __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke_2(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = (a1 + 32);
  v31 = [*(a1 + 32) messageStore];
  v58 = 0;
  v59 = &v58;
  v60 = 0x3032000000;
  v61 = __Block_byref_object_copy__16;
  v62 = __Block_byref_object_dispose__16;
  v63 = *v2;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__16;
  v56 = __Block_byref_object_dispose__16;
  v57 = objc_opt_new();
  while (v59[5])
  {
    if ([v53[5] count] >= (*(a1 + 72) - 1))
    {
      break;
    }

    v3 = dispatch_semaphore_create(0);
    v4 = *(a1 + 40);
    v5 = v59[5];
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke_3;
    v48[3] = &unk_1E7AA6D70;
    v50 = &v58;
    v51 = &v52;
    v6 = v3;
    v49 = v6;
    [v4 _messageInReplyToMessage:v5 libraryStore:v31 completion:v48];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }

  v34 = objc_opt_new();
  v33 = objc_opt_new();
  v7 = dispatch_group_create();
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v53[5];
  v8 = [obj countByEnumeratingWithState:&v44 objects:v67 count:16];
  if (v8)
  {
    v9 = *v45;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v45 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v44 + 1) + 8 * i);
        v12 = [MFMessageLoadingContext alloc];
        v13 = +[MFAttachmentManager defaultManager];
        v14 = [(MFMessageLoadingContext *)v12 initWithMessage:v11 attachmentManager:v13];

        v15 = *(a1 + 40);
        if (v15)
        {
          v15 = v15[1];
        }

        v16 = v15;
        [(MFMessageLoadingContext *)v14 load:0 scheduler:v16 shouldDownload:0];

        dispatch_group_enter(v7);
        v17 = *(a1 + 40);
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke_4;
        v39[3] = &unk_1E7AA6D98;
        v43 = *(a1 + 56);
        v40 = v34;
        v41 = v11;
        v42 = v7;
        v18 = [v17 _messageContentFromLoadingContext:v14 completion:v39];
        [v33 setObject:v18 forKeyedSubscript:v11];
      }

      v8 = [obj countByEnumeratingWithState:&v44 objects:v67 count:16];
    }

    while (v8);
  }

  v19 = dispatch_time(0, 1000000000);
  if (dispatch_group_wait(v7, v19))
  {
    v20 = EMLogCategoryMessageLoading();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [*(a1 + 32) ef_publicDescription];
      objc_claimAutoreleasedReturnValue();
      __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke_2_cold_1();
    }

    v21 = *(a1 + 64);
    v66 = *(a1 + 48);
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v66 count:1];
    (*(v21 + 16))(v21, v22, 0);
  }

  else
  {
    v22 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = v53[5];
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v65 count:16];
    if (v24)
    {
      v25 = *v36;
LABEL_19:
      v26 = 0;
      while (1)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = [v34 objectForKeyedSubscript:{*(*(&v35 + 1) + 8 * v26), v31}];
        if (!v27)
        {
          break;
        }

        [v22 addObject:v27];

        if (v24 == ++v26)
        {
          v24 = [v23 countByEnumeratingWithState:&v35 objects:v65 count:16];
          if (v24)
          {
            goto LABEL_19;
          }

          break;
        }
      }
    }

    v64 = *(a1 + 48);
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
    v29 = [v28 arrayByAddingObjectsFromArray:v22];

    v30 = [v29 ef_filter:&__block_literal_global_189];
    (*(*(a1 + 64) + 16))();
  }

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v58, 8);
}

void __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  [*(*(*(a1 + 48) + 8) + 40) ef_addOptionalObject:v4];
  dispatch_semaphore_signal(*(a1 + 32));
}

void __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke_4(uint64_t a1)
{
  v2 = (*(*(a1 + 56) + 16))();
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke_186(uint64_t a1, void *a2)
{
  v2 = [a2 flags];
  v3 = [v2 draft];

  return v3 ^ 1u;
}

- (void)_messageInReplyToMessage:(id)message libraryStore:(id)store completion:(id)completion
{
  completionCopy = completion;
  headersIfAvailable = [message headersIfAvailable];
  v8 = headersIfAvailable;
  if (!headersIfAvailable)
  {
    v9 = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"No headers available"];
    completionCopy[2](completionCopy, 0, v9);
    goto LABEL_10;
  }

  v9 = [headersIfAvailable firstHeaderForKey:*MEMORY[0x1E699B108]];
  references = [v8 references];
  v11 = references;
  if (v9)
  {
    lastObject = v9;
LABEL_6:
    if (self)
    {
      messagePersistence = self->_messagePersistence;
    }

    else
    {
      messagePersistence = 0;
    }

    v14 = [(EDMessagePersistence *)messagePersistence persistedMessagesForForMessageIDHeader:lastObject requireProtectedData:1];
    v15 = [v14 ef_firstObjectPassingTest:&__block_literal_global_198];

    (completionCopy)[2](completionCopy, v15, 0);
    goto LABEL_9;
  }

  lastObject = [references lastObject];
  if (lastObject)
  {
    goto LABEL_6;
  }

  lastObject = [MEMORY[0x1E696ABC0] em_internalErrorWithReason:@"Failed to retrieve in-reply-to identifier"];
  completionCopy[2](completionCopy, 0, lastObject);
LABEL_9:

LABEL_10:
}

uint64_t __76__MFMessageContentRequest__messageInReplyToMessage_libraryStore_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)_attachmentContentItemsForMailDropNodes:(id)nodes withContext:(id)context
{
  v52 = *MEMORY[0x1E69E9840];
  nodesCopy = nodes;
  contextCopy = context;
  v6 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v51 = nodesCopy;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_INFO, "MailDrop: Received MailDrop Nodes %@", buf, 0xCu);
  }

  if ([nodesCopy count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v8 = [(MFMessageContentRequest *)self _maildropMetadataFromContext:contextCopy];
    v9 = [v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v9)
    {
      v10 = *v44;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v43 + 1) + 8 * i);
          uUID = [v12 UUID];
          [dictionary setObject:v12 forKeyedSubscript:uUID];
        }

        v9 = [v8 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v9);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v14 = nodesCopy;
    v15 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v15)
    {
      v16 = *v40;
      v17 = *MEMORY[0x1E699A7C0];
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v39 + 1) + 8 * j);
          v20 = [v19 objectForKeyedSubscript:{v17, nodesCopy}];
          v21 = v20 == 0;

          if (!v21)
          {
            v22 = [objc_opt_class() metadataWithDictionary:v19];
            uUID2 = [v22 UUID];
            [dictionary setObject:v22 forKeyedSubscript:uUID2];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v15);
    }

    array = [MEMORY[0x1E695DF70] array];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    allValues = [dictionary allValues];
    v26 = [allValues countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v26)
    {
      v27 = *v36;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v36 != v27)
          {
            objc_enumerationMutation(allValues);
          }

          nodesCopy = [(MFMessageContentRequest *)self _attachmentForMailDropMetaData:*(*(&v35 + 1) + 8 * k) context:contextCopy, nodesCopy];
          if (nodesCopy)
          {
            attachmentManager = [contextCopy attachmentManager];
            v31 = [(MFMessageContentRequest *)self _contentItemForAttachment:nodesCopy manager:attachmentManager managed:0];

            [array addObject:v31];
          }
        }

        v26 = [allValues countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v26);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_maildropMetadataFromContext:(id)context
{
  contextCopy = context;
  message = [contextCopy message];
  headersIfAvailable = [message headersIfAvailable];

  array = [MEMORY[0x1E695DF70] array];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __56__MFMessageContentRequest__maildropMetadataFromContext___block_invoke;
  v12[3] = &unk_1E7AA6E28;
  v7 = headersIfAvailable;
  v13 = v7;
  v8 = array;
  v14 = v8;
  v9 = _Block_copy(v12);
  v9[2](v9, *MEMORY[0x1E699B100]);
  v9[2](v9, *MEMORY[0x1E699B148]);
  v10 = v8;

  return v8;
}

void __56__MFMessageContentRequest__maildropMetadataFromContext___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [*(a1 + 32) headersForKey:{v3, 0}];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [MEMORY[0x1E699AD08] parseHeaderValue:*(*(&v9 + 1) + 8 * v7) forField:v3];
        if (v8)
        {
          [*(a1 + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_attachmentForMailDropMetaData:(id)data context:(id)context
{
  dataCopy = data;
  contextCopy = context;
  directUrl = [dataCopy directUrl];
  resourceSpecifier = [directUrl resourceSpecifier];
  if (self)
  {
    legacyMessage = self->_legacyMessage;
  }

  else
  {
    legacyMessage = 0;
  }

  messageID = [(MFMailMessage *)legacyMessage messageID];
  v12 = MEMORY[0x1E695DFF8];
  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@://%@%@", @"x-attach-maildrop", messageID, resourceSpecifier];
  v14 = [v12 URLWithString:v13];

  attachmentManager = [contextCopy attachmentManager];
  v16 = [attachmentManager attachmentForURL:v14 error:0];

  [v16 setMailDropMetadata:dataCopy];
  fileName = [dataCopy fileName];
  ef_sanitizedFileName = [fileName ef_sanitizedFileName];
  [v16 setFileName:ef_sanitizedFileName];

  mimeType = [dataCopy mimeType];
  [v16 setMimeType:mimeType];

  [v16 setDecodedFileSize:{objc_msgSend(dataCopy, "fileSize")}];
  [v16 setEncodedFileSize:{objc_msgSend(dataCopy, "fileSize")}];
  uUID = [dataCopy UUID];
  [v16 setContentID:uUID];

  return v16;
}

+ (id)metadataWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  mailDropMetadata = [MEMORY[0x1E699AD00] mailDropMetadata];
  v5 = MEMORY[0x1E695DFF8];
  v6 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E699A7C0]];
  v7 = [v5 URLWithString:v6];

  if (v7)
  {
    [MEMORY[0x1E699AD08] parseURL:v7 intoMetadata:mailDropMetadata];
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E699A7A0]];
  if ([v8 isEqualToString:*MEMORY[0x1E699A788]])
  {
    v9 = [mailDropMetadata flags] | 1;
  }

  else
  {
    if (![v8 isEqualToString:*MEMORY[0x1E699A798]])
    {
      goto LABEL_8;
    }

    v9 = [mailDropMetadata flags] | 4;
  }

  [mailDropMetadata setFlags:v9];
LABEL_8:
  v10 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E699A7B0]];
  v11 = v10;
  if (v10)
  {
    ef_sanitizedFileName = [v10 ef_sanitizedFileName];
    [mailDropMetadata setFileName:ef_sanitizedFileName];
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E699A7B8]];
  v14 = v13;
  if (v13)
  {
    [mailDropMetadata setFileSize:{objc_msgSend(v13, "integerValue")}];
  }

  v15 = [dictionaryCopy objectForKeyedSubscript:*MEMORY[0x1E699A7A8]];
  v16 = v15;
  if (v15)
  {
    [v15 doubleValue];
    v17 = [MEMORY[0x1E699AD08] parseExpiration:?];
    [mailDropMetadata setExpiration:v17];
  }

  return mailDropMetadata;
}

- (id)delegateWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  if (self)
  {
    delegate = self->_delegate;
  }

  else
  {
    delegate = 0;
  }

  v6 = delegate;
  if (objc_opt_respondsToSelector())
  {
    v7 = [(EMContentItemRequestDelegate *)v6 synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

    v6 = v7;
  }

  return v6;
}

- (id)beginRequestWithCompletionHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self)
  {
    options = self->_options;
  }

  else
  {
    options = 0;
  }

  v6 = options;
  requestedRepresentation = [(EMContentRequestOptions *)v6 requestedRepresentation];

  if ([requestedRepresentation isEqualToString:*MEMORY[0x1E699A710]])
  {
    v8 = [(MFMessageContentRequest *)self requestRawRepresentationWithCompletionHandler:handlerCopy];
LABEL_8:
    v9 = v8;
    goto LABEL_9;
  }

  if (([requestedRepresentation isEqualToString:*MEMORY[0x1E699A700]] & 1) != 0 || objc_msgSend(requestedRepresentation, "isEqualToString:", *MEMORY[0x1E699A708]))
  {
    v8 = [(MFMessageContentRequest *)self requestHTMLRepresentationWithCompletionHandler:handlerCopy];
    goto LABEL_8;
  }

  v11 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (self)
    {
      legacyMessage = self->_legacyMessage;
    }

    else
    {
      legacyMessage = 0;
    }

    v14 = 138543618;
    v15 = requestedRepresentation;
    v16 = 2114;
    v17 = legacyMessage;
    _os_log_error_impl(&dword_1B0389000, v11, OS_LOG_TYPE_ERROR, "content not available for unknown representation type %{public}@ content for message %{public}@", &v14, 0x16u);
  }

  v12 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v12);

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_dataHolderWithCancelationToken:(id)token
{
  v25 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  if (self)
  {
    options = self->_options;
  }

  else
  {
    options = 0;
  }

  networkUsage = [(EMContentRequestOptions *)options networkUsage];
  if (self)
  {
    legacyMessage = self->_legacyMessage;
  }

  else
  {
    legacyMessage = 0;
  }

  v8 = legacyMessage;
  v9 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    ef_publicDescription = [(MFMailMessage *)v8 ef_publicDescription];
    *buf = 138543362;
    v22 = ef_publicDescription;
    _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_INFO, "reading raw content for message %{public}@", buf, 0xCu);
  }

  v11 = +[MFActivityMonitor currentMonitor];
  [tokenCopy addCancelable:v11];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    messageStore = [(MFMailMessage *)v8 messageStore];
    v20 = 0;
    v13 = [messageStore fullBodyDataForMessage:v8 andHeaderDataIfReadilyAvailable:&v20 isComplete:0 downloadIfNecessary:networkUsage != 0 usePartDatas:0 didDownload:0];
    v14 = v20;
    if (!v14)
    {
      v14 = [messageStore headerDataForMessage:v8 downloadIfNecessary:networkUsage != 0];
    }

    v15 = 0;
    if (v14 && v13)
    {
      v15 = [MEMORY[0x1E69AD6B8] dataHolderWithData:v14];
      [v15 addData:v13];
      v16 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v15 length];
        ef_publicDescription2 = [(MFMailMessage *)v8 ef_publicDescription];
        *buf = 134218242;
        v22 = v17;
        v23 = 2114;
        v24 = ef_publicDescription2;
        _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Fetched body data of length %lu for message %{public}@ with network", buf, 0x16u);
      }
    }
  }

  else
  {
    v15 = [(MFMailMessage *)v8 messageDataHolderIsComplete:0 downloadIfNecessary:networkUsage != 0];
  }

  return v15;
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2_131(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[3];
  }

  v3 = v2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
  }

  else
  {
    v5 = 0;
  }

  v6 = v3;
  [v3 setIsMailDropAttachmentPresent:*(a1 + 40) forMessage:v5];
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_132(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[8];
  }

  v3 = v2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v4 = v4[1];
  }

  v5 = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2_133;
  v7[3] = &unk_1E7AA6A58;
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 40);
  [v3 insertMailDropAttachmentViewForContentURL:v5 HTMLByContentID:v6 completionHandler:v7];
}

- (void)_includeSuggestionItemsIfNeededForRepresentation:(id)representation message:(id)message
{
  representationCopy = representation;
  messageCopy = message;
  if (self)
  {
    options = self->_options;
  }

  else
  {
    options = 0;
  }

  includeSuggestionItems = [(EMContentRequestOptions *)options includeSuggestionItems];
  if (includeSuggestionItems == 2 || includeSuggestionItems == 1 && ([messageCopy mailbox], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isOutgoingMailboxUid"), v9, (v10 & 1) == 0))
  {
    v11 = [MFSearchableIndexItem_iOS suggestionsSearchableItemWithMessage:messageCopy];
    [representationCopy setSearchableItem:v11];

    v12 = objc_alloc_init(MEMORY[0x1E699ACF0]);
    if (objc_opt_respondsToSelector())
    {
      authenticationState = [messageCopy authenticationState];
      v14 = 1;
      if ((authenticationState & 8) != 0)
      {
        v14 = 2;
      }

      v15 = v14 & (authenticationState << 61 >> 63);
    }

    else
    {
      v15 = 0;
    }

    v16 = [v12 commandForMessage:messageCopy dkimVerified:v15];
    [representationCopy setUnsubscribeCommand:v16];
  }
}

- (void)_includeCachedMetadataJSONIfNeededForRepresentation:(id)representation message:(id)message
{
  representationCopy = representation;
  messageCopy = message;
  if (self)
  {
    options = self->_options;
  }

  else
  {
    options = 0;
  }

  if (([(EMContentRequestOptions *)options includeCachedMetadataJSON]& 1) != 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (!self ? (messagePersistence = 0) : (messagePersistence = self->_messagePersistence), v9 = messagePersistence, -[EDMessagePersistence completeCachedMetadataJSONForGlobalMessageID:](v9, "completeCachedMetadataJSONForGlobalMessageID:", [messageCopy globalMessageID]), v10 = objc_claimAutoreleasedReturnValue(), v9, v10))
    {
      v11 = 0;
      data = v10;
    }

    else
    {
      data = [MEMORY[0x1E695DEF0] data];
      v10 = 0;
      v11 = 1;
    }

    [representationCopy setCachedMetadataJSON:data];
    if (v11)
    {
    }
  }
}

void __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_156(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = v2;
  v4 = [*(a1 + 40) requestedRepresentation];
  v5 = [*MEMORY[0x1E699A6F8] isEqualToString:v4];

  if ((*(a1 + 48) == 0) | v5 & 1)
  {
    goto LABEL_14;
  }

  if ([*(a1 + 40) urlBehavior] != 2 || (objc_msgSend(*(a1 + 48), "ef_lastPathComponent"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "sanitizedString"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "localizedCompare:", *(a1 + 56)), v7, v6, v8) || (v51 = objc_alloc(MEMORY[0x1E699AC60]), (v14 = objc_msgSend(v51, "initWithContentURL:relatedItems:securityInformation:", *(a1 + 48), MEMORY[0x1E695E0F0], 0)) == 0))
  {
    if ([*(a1 + 40) urlBehavior] == 2)
    {
      v9 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B0389000, v9, OS_LOG_TYPE_ERROR, "failed to obtain original attachment URL, attempting to create temporary copy for requester", buf, 2u);
      }
    }

    v10 = objc_alloc(MEMORY[0x1E699AC60]);
    v11 = *(a1 + 48);
    v12 = [*(a1 + 56) stringByDeletingPathExtension];
    v13 = [*(a1 + 56) pathExtension];
    v14 = [v10 initWithCloneOfOriginalFileURL:v11 clientIdentifier:v3 preferredFilename:v12 extension:v13];

    if (!v14)
    {
LABEL_14:
      OUTLINED_FUNCTION_5_0();
      if (*(v18 + 40))
      {
LABEL_15:
        v19 = EMLogCategoryMessageLoading();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = *(a1 + 64);
          *buf = 138543362;
          v64 = v20;
          _os_log_impl(&dword_1B0389000, v19, OS_LOG_TYPE_INFO, "Processing fetched attachment using NSData for '%{public}@'", buf, 0xCu);
        }

        v21 = *(a1 + 96);
        if (*(*(v21 + 8) + 40))
        {
          v22 = [MFAttachmentPlaceholder isPlaceholderSerializedRepresentation:?];
          v21 = *(a1 + 96);
          if (v22)
          {
            v23 = [MFAttachmentPlaceholder placeholderFromSerializedRepresentation:*(*(v21 + 8) + 40)];
            if (v23)
            {
              [MFAttachmentPlaceholder dataForPlaceholder:v23];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_5_0();
              v25 = *(v24 + 40);
              *(v24 + 40) = v26;
            }

            v21 = *(a1 + 96);
          }
        }

        if (*(*(v21 + 8) + 40))
        {
          if (v5)
          {
            WeakRetained = objc_loadWeakRetained((a1 + 104));
            v28 = [MFRFC822AttachmentDataProvider alloc];
            OUTLINED_FUNCTION_5_0();
            v31 = [v30 initWithMessageData:*(v29 + 40) parentPart:*(a1 + 80) managed:*(a1 + 112)];
            v32 = *(a1 + 88);
            v33 = [MEMORY[0x1E695DFF8] URLWithString:@"x-attach-RFC822"];
            [v32 addProvider:v31 forBaseURL:v33];

            v34 = [v31 messageForAttachment:WeakRetained];
            v35 = [*(a1 + 32) _messageForLegacyMessage:v34];
            v36 = objc_alloc(MEMORY[0x1E699AC60]);
            OUTLINED_FUNCTION_5_0();
            v38 = *(v37 + 40);
            v39 = [*(a1 + 56) stringByDeletingPathExtension];
            v40 = [*(a1 + 56) pathExtension];
            v14 = [v36 initWithContentMessage:v35 data:v38 clientIdentifier:v3 preferredFilename:v39 extension:v40];

            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __91__MFMessageContentRequest__requestContentForAttachment_manager_options_managed_completion___block_invoke_163;
            v57[3] = &unk_1E7AA26E0;
            v58 = *(a1 + 88);
            v41 = v31;
            v59 = v41;
            [v14 addInvalidationHandler:v57];
          }

          else
          {
            v47 = objc_alloc(MEMORY[0x1E699AC60]);
            OUTLINED_FUNCTION_5_0();
            v49 = *(v48 + 40);
            WeakRetained = [*(a1 + 56) stringByDeletingPathExtension];
            v41 = [*(a1 + 56) pathExtension];
            v14 = [v47 initWithData:v49 clientIdentifier:v3 preferredFilename:WeakRetained extension:v41 relatedItems:MEMORY[0x1E695E0F0] securityInformation:0];
          }

          if (v14)
          {
            [*(a1 + 72) finishWithResult:v14];
            goto LABEL_42;
          }
        }

        v50 = *(a1 + 72);
        v44 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:0];
        [v50 finishWithError:v44];
LABEL_41:

        v14 = 0;
        goto LABEL_42;
      }

      v42 = *(a1 + 48);
      if (v42)
      {
        v60 = 0;
        v43 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v42 options:1 error:&v60];
        v44 = v60;
        v45 = *(*(a1 + 96) + 8);
        v46 = *(v45 + 40);
        *(v45 + 40) = v43;

        if (*(*(*(a1 + 96) + 8) + 40))
        {

          goto LABEL_15;
        }

        if (v44)
        {
          v61 = *MEMORY[0x1E696AA08];
          v62 = v44;
          v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        }

        else
        {
          v52 = 0;
        }
      }

      else
      {
        v52 = 0;
        v44 = 0;
      }

      v53 = *(a1 + 72);
      v54 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2048 userInfo:v52];
      [v53 finishWithError:v54];

      v55 = EMLogCategoryMessageLoading();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = *(a1 + 48);
        *buf = 138412290;
        v64 = v56;
        _os_log_error_impl(&dword_1B0389000, v55, OS_LOG_TYPE_ERROR, "Failed to request content for attachments since attachment data is not available and we could not convert the original file url: %@ into data", buf, 0xCu);
      }

      goto LABEL_41;
    }
  }

  v15 = EMLogCategoryMessageLoading();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = *(a1 + 48);
    v17 = *(a1 + 64);
    *buf = 138412546;
    v64 = v16;
    v65 = 2114;
    v66 = v17;
    _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_INFO, "Returning copy of original file url %@ for '%{public}@'", buf, 0x16u);
  }

  [*(a1 + 72) finishWithResult:v14];
LABEL_42:
}

- (void)requestHTMLRepresentationWithCompletionHandler:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B0389000, a1, OS_LOG_TYPE_INFO, "Network usage is not allowed. Setting shouldDownload to NO", v2, 2u);
  }
}

- (void)_processContentLoadingContextEvent:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  OUTLINED_FUNCTION_2(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v6, v7, "Error creating temporary URL for message %{public}@", v8);
}

void __62__MFMessageContentRequest__processContentLoadingContextEvent___block_invoke_81_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Duplicate content IDs for content items: %@. Ignoring", &v2, 0xCu);
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "EMContentItemRequestDelegate failed generating MailDrop attachments: %{public}@", v5);
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_130_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "MailDrop node parsing finished with error %{public}@", v5);
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "failed to generate snippets for mail drop attachments: %{public}@", v5);
}

void __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_2_133_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "MailDrop node insertion to original HTML content failed with error %{public}@", v5);
}

void __52__MFMessageContentRequest__messageForLegacyMessage___block_invoke_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_impl(&dword_1B0389000, log, OS_LOG_TYPE_INFO, "requesting %{public}@ content for message %{public}@", buf, 0x16u);
}

- (void)_requestContentForAttachment:manager:options:managed:completion:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "Failed to request content for attachment with URL: %@, since network usage is not allowed and attachment data is unavailable locally", v5);
}

void __136__MFMessageContentRequest__originalContentMessagesInReplyToLegacyMessage_withMessageAndHTMLDataPair_maximumNumberOfMessages_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "timed-out generating original content for message: %{public}@", v5);
}

@end