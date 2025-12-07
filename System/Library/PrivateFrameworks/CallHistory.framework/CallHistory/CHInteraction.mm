@interface CHInteraction
- (CHInteraction)init;
- (void)deleteInteractionWithCall:(id)call;
- (void)deleteInteractionWithCalls:(id)calls;
- (void)donateCallHistoryInteractionWithCall:(id)call;
@end

@implementation CHInteraction

- (CHInteraction)init
{
  v6.receiver = self;
  v6.super_class = CHInteraction;
  v2 = [(CHInteraction *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6964E78]);
    searchableIndex = v2->_searchableIndex;
    v2->_searchableIndex = v3;
  }

  return v2;
}

- (void)donateCallHistoryInteractionWithCall:(id)call
{
  v93[4] = *MEMORY[0x1E69E9840];
  callCopy = call;
  context = objc_autoreleasePoolPush();
  v3 = +[CHLogServer sharedInstance];
  v4 = [v3 logHandleForDomain:"intent"];

  v5 = v4;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    uniqueId = [callCopy uniqueId];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uniqueId;
    _os_log_impl(&dword_1C3E90000, v5, OS_LOG_TYPE_DEFAULT, "Adding interaction for call %{public}@", &buf, 0xCu);
  }

  serviceProvider = [callCopy serviceProvider];
  v64 = CHServiceProviderToINPreferredCallProvider(serviceProvider);

  if (v64)
  {
    v63 = objc_alloc_init(MEMORY[0x1E695CE28]);
    v61 = objc_alloc_init(CHFeatureFlags);
    if ([(CHFeatureFlags *)v61 junkFilteringEnabled])
    {
      [v63 setIncludeAcceptedIntroductions:1];
    }

    v8 = [CHContactProvider alloc];
    v9 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v63];
    v60 = [(CHContactProvider *)v8 initWithDataSource:v9];

    v10 = *MEMORY[0x1E695C330];
    v93[0] = *MEMORY[0x1E695C258];
    v93[1] = v10;
    v93[2] = *MEMORY[0x1E695C208];
    descriptorForUsedKeys = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
    v93[3] = descriptorForUsedKeys;
    v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:4];

    v92 = callCopy;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v92 count:1];
    v81 = 0;
    v66 = [(CHContactProvider *)v60 contactsByHandleForCalls:v12 keyDescriptors:v59 error:&v81];
    v58 = v81;

    if (v66)
    {
      v65 = objc_alloc_init(MEMORY[0x1E695DF70]);
      remoteParticipantHandles = [callCopy remoteParticipantHandles];
      v79 = 0u;
      v80 = 0u;
      v78 = 0u;
      v77 = 0u;
      v14 = [remoteParticipantHandles countByEnumeratingWithState:&v77 objects:v91 count:16];
      if (v14)
      {
        v15 = *v78;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v78 != v15)
            {
              objc_enumerationMutation(remoteParticipantHandles);
            }

            v17 = *(*(&v77 + 1) + 8 * i);
            if (([v17 type] - 4) >= 0xFFFFFFFFFFFFFFFELL)
            {
              v18 = [v66 objectForKeyedSubscript:v17];
              firstObject = [v18 firstObject];

              isoCountryCode = [callCopy isoCountryCode];
              v21 = CHHandleToINPersonHandle(v17, firstObject, isoCountryCode);

              if (firstObject)
              {
                v22 = [MEMORY[0x1E696ADF0] componentsForContact:firstObject];
              }

              else
              {
                v22 = 0;
              }

              v23 = objc_alloc(MEMORY[0x1E696E940]);
              identifier = [firstObject identifier];
              LOBYTE(v57) = 0;
              v25 = [v23 initWithPersonHandle:v21 nameComponents:v22 displayName:0 image:0 contactIdentifier:identifier customIdentifier:0 isMe:v57];

              [v65 addObject:v25];
            }
          }

          v14 = [remoteParticipantHandles countByEnumeratingWithState:&v77 objects:v91 count:16];
        }

        while (v14);
      }
    }

    else
    {
      if (!v58)
      {
        v65 = 0;
        goto LABEL_27;
      }

      v29 = +[CHLogServer sharedInstance];
      remoteParticipantHandles = [v29 logHandleForDomain:"intent"];

      if (os_log_type_enabled(remoteParticipantHandles, OS_LOG_TYPE_ERROR))
      {
        [(CHInteraction *)v58 donateCallHistoryInteractionWithCall:remoteParticipantHandles];
      }

      v65 = 0;
    }

LABEL_27:
    v30 = CHTTYTypeToINTTYType([callCopy ttyType]);
    v31 = CHRecentCallMediaTypeToINCallCapability([callCopy mediaType]);
    v32 = objc_alloc_init(MEMORY[0x1E696EA68]);
    timeToEstablish = [callCopy timeToEstablish];
    [timeToEstablish doubleValue];
    [v32 setTimeToEstablish:?];

    [callCopy duration];
    [v32 setCallDuration:?];
    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(callCopy, "callStatus")}];
    [v32 setRecentCallStatus:v34];

    disconnectedCause = [callCopy disconnectedCause];
    [v32 setDisconnectedReason:disconnectedCause];

    v36 = [objc_alloc(MEMORY[0x1E696EA60]) initWithAudioRoute:0 destinationType:1 preferredCallProvider:v64 contacts:v65 recordTypeForRedialing:0 ttyType:v30 callCapability:v31];
    [v36 _setLaunchId:@"com.apple.InCallService"];
    [v36 _setExtensionBundleId:@"com.apple.TelephonyUtilities.PhoneIntentHandler"];
    notificationThreadIdentifier = [callCopy notificationThreadIdentifier];
    [v36 setNotificationThreadIdentifier:notificationThreadIdentifier];

    [v36 setDonationMetadata:v32];
    v38 = [objc_alloc(MEMORY[0x1E696E8B8]) initWithIntent:v36 response:0];
    interactionDateInterval = [callCopy interactionDateInterval];
    [v38 setDateInterval:interactionDateInterval];

    [v38 setDirection:{CHCallStatusToINInteractionDirection(objc_msgSend(callCopy, "callStatus"))}];
    uniqueId2 = [callCopy uniqueId];
    [v38 setIdentifier:uniqueId2];

    [v38 setIntentHandlingStatus:3];
    if ([callCopy callStatus] == 8)
    {
      location = 0;
      p_location = &location;
      v84 = 0x2050000000;
      v41 = get_DKSystemEventStreamsClass_softClass;
      v85 = get_DKSystemEventStreamsClass_softClass;
      if (!get_DKSystemEventStreamsClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v87 = __get_DKSystemEventStreamsClass_block_invoke;
        v88 = &unk_1E81DC190;
        v89 = &location;
        __get_DKSystemEventStreamsClass_block_invoke(&buf);
        v41 = p_location[3];
      }

      v42 = v41;
      _Block_object_dispose(&location, 8);
      appIntentsStream = [v41 appIntentsStream];
      name = [appIntentsStream name];

      location = 0;
      p_location = &location;
      v84 = 0x2020000000;
      v45 = get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr;
      v85 = get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr;
      if (!get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v87 = __get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_block_invoke;
        v88 = &unk_1E81DC190;
        v89 = &location;
        v46 = CoreDuetLibrary();
        v47 = dlsym(v46, "_DKKnowledgeStorageDidInsertEventsNotification");
        *(v89[1] + 3) = v47;
        get_DKKnowledgeStorageDidInsertEventsNotificationSymbolLoc_ptr = *(v89[1] + 3);
        v45 = p_location[3];
      }

      _Block_object_dispose(&location, 8);
      if (!v45)
      {
        [CHInteraction donateCallHistoryInteractionWithCall:];
        __break(1u);
      }

      v48 = *v45;
      v49 = v48;
      if (name && v48)
      {
        defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
        objc_initWeak(&location, defaultCenter);

        *&buf = 0;
        *(&buf + 1) = &buf;
        v87 = 0x3032000000;
        v88 = __Block_byref_object_copy__0;
        v89 = __Block_byref_object_dispose__0;
        v90 = 0;
        defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke;
        v71[3] = &unk_1E81DC118;
        v72 = callCopy;
        objc_copyWeak(&v76, &location);
        p_buf = &buf;
        v73 = v49;
        v74 = name;
        v52 = [defaultCenter2 addObserverForName:v73 object:v74 queue:0 usingBlock:v71];
        v53 = *(*(&buf + 1) + 40);
        *(*(&buf + 1) + 40) = v52;

        _Block_object_dispose(&buf, 8);
        objc_destroyWeak(&v76);

        objc_destroyWeak(&location);
      }
    }

    uniqueId3 = [callCopy uniqueId];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke_15;
    v68[3] = &unk_1E81DC140;
    v69 = v38;
    v70 = uniqueId3;
    v55 = uniqueId3;
    v56 = v38;
    [v56 donateInteractionWithCompletion:v68];

    v28 = v63;
    goto LABEL_38;
  }

  v26 = +[CHLogServer sharedInstance];
  v27 = [v26 logHandleForDomain:"intent"];

  v28 = v27;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [CHInteraction donateCallHistoryInteractionWithCall:v27];
    v28 = v27;
  }

LABEL_38:

  objc_autoreleasePoolPop(context);
}

void __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"intent"];

  v6 = v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v3 name];
    v8 = [*(a1 + 32) uniqueId];
    v11 = 138543618;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Handling %{public}@ for call with identifier %{public}@", &v11, 0x16u);
  }

  v9 = [*(a1 + 32) interaction];

  if (v9)
  {
    notify_post("com.apple.callhistory.notification.call-interactions-changed");
  }

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained removeObserver:*(*(*(a1 + 56) + 8) + 40) name:*(a1 + 40) object:*(a1 + 48)];
}

void __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke_15(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = +[CHLogServer sharedInstance];
  v6 = [v5 logHandleForDomain:"intent"];

  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke_15_cold_1(a1, v3, v6);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138412546;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&dword_1C3E90000, v6, OS_LOG_TYPE_DEFAULT, "Successfully donated interaction %@ for call with identifier %{public}@", &v9, 0x16u);
  }

  [MEMORY[0x1E696E9B8] _resetCache];
  objc_autoreleasePoolPop(v4);
}

- (void)deleteInteractionWithCall:(id)call
{
  v8 = *MEMORY[0x1E69E9840];
  if (call)
  {
    callCopy = call;
    v4 = MEMORY[0x1E695DEC8];
    callCopy2 = call;
    v6 = [v4 arrayWithObjects:&callCopy count:1];

    [(CHInteraction *)self deleteInteractionWithCalls:v6, callCopy, v8];
  }
}

- (void)deleteInteractionWithCalls:(id)calls
{
  v21 = *MEMORY[0x1E69E9840];
  callsCopy = calls;
  v5 = @"com.apple.InCallService";
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__CHInteraction_deleteInteractionWithCalls___block_invoke;
  aBlock[3] = &unk_1E81DC168;
  v6 = callsCopy;
  v16 = v6;
  v7 = _Block_copy(aBlock);
  if ([v6 count])
  {
    v8 = +[CHLogServer sharedInstance];
    v9 = [v8 logHandleForDomain:"intent"];

    v10 = v9;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 count];
      *buf = 134218242;
      v18 = v11;
      v19 = 2112;
      v20 = v5;
      _os_log_impl(&dword_1C3E90000, v10, OS_LOG_TYPE_DEFAULT, "Removing %lu donated interactions for bundle identifier %@", buf, 0x16u);
    }

    searchableIndex = [(CHInteraction *)self searchableIndex];
    [searchableIndex deleteInteractionsWithIdentifiers:v6 bundleID:v5 protectionClass:0 completionHandler:v7];
  }

  else
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v13 = +[CHLogServer sharedInstance];
    v14 = [v13 logHandleForDomain:"intent"];

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v5;
      _os_log_impl(&dword_1C3E90000, v14, OS_LOG_TYPE_DEFAULT, "Removing all donated interactions for bundle identifier %@", buf, 0xCu);
    }

    searchableIndex = [(CHInteraction *)self searchableIndex];
    [searchableIndex deleteAllInteractionsWithBundleID:v5 protectionClass:0 completionHandler:v7];
  }

LABEL_7:
}

void __44__CHInteraction_deleteInteractionWithCalls___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[CHLogServer sharedInstance];
  v5 = [v4 logHandleForDomain:"intent"];

  v6 = v5;
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __44__CHInteraction_deleteInteractionWithCalls___block_invoke_cold_1(a1, v3, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) count];
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&dword_1C3E90000, v7, OS_LOG_TYPE_DEFAULT, "Deleting interaction for %lu calls succeeded", &v9, 0xCu);
  }

  [MEMORY[0x1E696E9B8] _resetCache];
}

- (void)donateCallHistoryInteractionWithCall:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1C3E90000, a2, OS_LOG_TYPE_ERROR, "Could not fetch contacts: %{public}@", &v2, 0xCu);
}

- (void)donateCallHistoryInteractionWithCall:.cold.2()
{
  v0 = dlerror();
  v1 = abort_report_np("%s", v0);
  [CHInteraction donateCallHistoryInteractionWithCall:v1];
}

void __54__CHInteraction_donateCallHistoryInteractionWithCall___block_invoke_15_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "Could not donate interaction for call with identifier %{public}@: %{public}@", &v4, 0x16u);
}

void __44__CHInteraction_deleteInteractionWithCalls___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) count];
  v6 = 134218242;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1C3E90000, a3, OS_LOG_TYPE_ERROR, "Deleting interaction for %lu calls failed: %@", &v6, 0x16u);
}

@end