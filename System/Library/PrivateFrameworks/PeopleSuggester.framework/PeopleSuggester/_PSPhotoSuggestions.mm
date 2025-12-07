@interface _PSPhotoSuggestions
+ (id)allOutstandingRequestsLock;
+ (id)mdPersonIDsOfPeopleInSharedPhotoAttachments:(id)attachments forBundleID:(id)d shouldProcessPicturesLive:(BOOL)live shouldUseVIPModel:(BOOL)model;
+ (id)peopleInSharedPhotoAttachments:(id)attachments forBundleID:(id)d shouldProcessPicturesLive:(BOOL)live shouldUseVIPModel:(BOOL)model withTraceID:(id)iD withSpanID:(id)spanID shouldUseMDID:(BOOL)dID withCompletion:(id)self0;
+ (id)sharedMADService;
+ (id)suggestionTemplateForPhotoContactIdWithMessages:(id)messages cdInteraction:(id)interaction reason:(id)reason reasonType:(id)type;
+ (void)cancelRequestWithToken:(id)token;
@end

@implementation _PSPhotoSuggestions

+ (id)sharedMADService
{
  if (sharedMADService__pasOnceToken1 != -1)
  {
    +[_PSPhotoSuggestions sharedMADService];
  }

  v3 = sharedMADService__pasExprOnceResult_0;

  return v3;
}

+ (id)allOutstandingRequestsLock
{
  if (allOutstandingRequestsLock__pasOnceToken2 != -1)
  {
    +[_PSPhotoSuggestions allOutstandingRequestsLock];
  }

  v3 = allOutstandingRequestsLock__pasExprOnceResult;

  return v3;
}

+ (id)mdPersonIDsOfPeopleInSharedPhotoAttachments:(id)attachments forBundleID:(id)d shouldProcessPicturesLive:(BOOL)live shouldUseVIPModel:(BOOL)model
{
  modelCopy = model;
  liveCopy = live;
  attachmentsCopy = attachments;
  dCopy = d;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__20;
  v24 = __Block_byref_object_dispose__20;
  v25 = 0;
  v11 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __123___PSPhotoSuggestions_mdPersonIDsOfPeopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel___block_invoke;
  v17[3] = &unk_1E7C26DE8;
  v19 = &v20;
  v12 = v11;
  v18 = v12;
  LOBYTE(v16) = 1;
  v13 = [_PSPhotoSuggestions peopleInSharedPhotoAttachments:attachmentsCopy forBundleID:dCopy shouldProcessPicturesLive:liveCopy shouldUseVIPModel:modelCopy withTraceID:0 withSpanID:0 shouldUseMDID:v16 withCompletion:v17];
  dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  v14 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v14;
}

+ (id)peopleInSharedPhotoAttachments:(id)attachments forBundleID:(id)d shouldProcessPicturesLive:(BOOL)live shouldUseVIPModel:(BOOL)model withTraceID:(id)iD withSpanID:(id)spanID shouldUseMDID:(BOOL)dID withCompletion:(id)self0
{
  modelCopy = model;
  liveCopy = live;
  v87 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  spanIDCopy = spanID;
  completionCopy = completion;
  v46 = [_PSPhotoUtils attachmentsEligibleForPhotoProcessingFromAttachments:attachments];
  if ([v46 count])
  {
    v13 = +[_PSPhotoSuggestions allOutstandingRequestsLock];
    [v13 tryWithLockAcquired:&__block_literal_global_239];

    v14 = objc_alloc(MEMORY[0x1E69C5D60]);
    v15 = objc_opt_new();
    v53 = [v14 initWithGuardedData:v15];

    v78 = 0;
    v44 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v78];
    v42 = v78;
    v16 = v44;
    if (!v44)
    {
      v17 = +[_PSLogging heuristicsChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [_PSPhotoSuggestions peopleInSharedPhotoAttachments:v42 forBundleID:v17 shouldProcessPicturesLive:? shouldUseVIPModel:? withTraceID:? withSpanID:? shouldUseMDID:? withCompletion:?];
      }

      v16 = 0;
    }

    developerType = [v16 developerType];
    v19 = +[_PSLogging heuristicsChannel];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138478083;
      *&buf[4] = v46;
      *&buf[12] = 1024;
      *&buf[14] = developerType == 1;
      _os_log_impl(&dword_1B5ED1000, v19, OS_LOG_TYPE_DEFAULT, "IDsOfPeopleInSharedPhotoAssets with attachments %{private}@, isFirstParty: %d", buf, 0x12u);
    }

    v54 = objc_opt_new();
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x2020000000;
    v77[3] = [v46 count];
    v52 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E6997A20] code:*MEMORY[0x1E6997A48] userInfo:&unk_1F2D8C910];
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    obj = v46;
    v20 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
    if (v20)
    {
      v48 = *v74;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v74 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v73 + 1) + 8 * i);
          v79 = 0;
          v80 = &v79;
          v81 = 0x2050000000;
          v23 = getMADPersonIdentificationRequestClass_softClass_0;
          v82 = getMADPersonIdentificationRequestClass_softClass_0;
          if (!getMADPersonIdentificationRequestClass_softClass_0)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getMADPersonIdentificationRequestClass_block_invoke_0;
            v85 = &unk_1E7C23BF0;
            v86 = &v79;
            MediaAnalysisServicesLibraryCore_0();
            Class = objc_getClass("MADPersonIdentificationRequest");
            *(v86[1] + 24) = Class;
            getMADPersonIdentificationRequestClass_softClass_0 = *(v86[1] + 24);
            v23 = v80[3];
          }

          v25 = v23;
          _Block_object_dispose(&v79, 8);
          v26 = objc_alloc_init(v23);
          [v26 setMaximumFaceCount:4];
          [v26 setAllowOnDemand:liveCopy];
          [v26 setAllowUnverifiedIdentity:1];
          [v26 setUseLowResolutionPicture:1];
          [v26 setIncludePets:1];
          [v26 setUseVIPModel:modelCopy];
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          LODWORD(v85) = 0;
          v27 = [AeroMLTracerSession alloc];
          v28 = +[_PSConstants peopleSuggesterShareSheetProjectName];
          if (iDCopy)
          {
            v29 = [(AeroMLTracerSession *)v27 initWithTraceId:iDCopy projectName:v28];
          }

          else
          {
            v29 = [(AeroMLTracerSession *)v27 initWithProjectName:v28];
          }

          v30 = v29;

          v31 = [v30 createSubSpanWithName:@"fetchingMADResultsSpan" parentSpanId:spanIDCopy];
          [v31 start];
          v65[0] = MEMORY[0x1E69E9820];
          v65[1] = 3221225472;
          v65[2] = __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_254;
          v65[3] = &unk_1E7C26EA8;
          v32 = v26;
          v66 = v32;
          v33 = v31;
          v67 = v33;
          dIDCopy = dID;
          v68 = v53;
          v34 = v52;
          v69 = v34;
          v71 = v77;
          v70 = completionCopy;
          v35 = MEMORY[0x1B8C8C060](v65);
          v36 = +[_PSPhotoSuggestions allOutstandingRequestsLock];
          v58[0] = MEMORY[0x1E69E9820];
          v58[1] = 3221225472;
          v58[2] = __162___PSPhotoSuggestions_peopleInSharedPhotoAttachments_forBundleID_shouldProcessPicturesLive_shouldUseVIPModel_withTraceID_withSpanID_shouldUseMDID_withCompletion___block_invoke_298;
          v58[3] = &unk_1E7C26F20;
          v37 = v35;
          v62 = v37;
          v63 = buf;
          v58[4] = v22;
          selfCopy = self;
          v38 = v32;
          v59 = v38;
          v60 = v34;
          v61 = v54;
          [v36 runWithLockAcquired:v58];

          _Block_object_dispose(buf, 8);
        }

        v20 = [obj countByEnumeratingWithState:&v73 objects:v83 count:16];
      }

      while (v20);
    }

    _Block_object_dispose(v77, 8);
    v39 = completionCopy;
  }

  else
  {
    v40 = [MEMORY[0x1E695DFD8] set];
    v39 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v40);

    v54 = MEMORY[0x1E695E0F0];
  }

  return v54;
}

+ (void)cancelRequestWithToken:(id)token
{
  v44 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  objc_opt_class();
  v27 = tokenCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = tokenCopy;
    v26 = v5;
    if ([v5 count])
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v6 = v5;
      v7 = [v6 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v7)
      {
        v8 = *v35;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v35 != v8)
            {
              objc_enumerationMutation(v6);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v24 = +[_PSLogging heuristicsChannel];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
              {
                [(_PSPhotoSuggestions *)v6 cancelRequestWithToken:v24];
              }

              goto LABEL_30;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      v25 = [v6 count];
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = v6;
      v10 = 0;
      v11 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v11)
      {
        v12 = *v31;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v31 != v12)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v30 + 1) + 8 * j);
            integerValue = [v14 integerValue];
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x3032000000;
            v39 = __Block_byref_object_copy__303;
            v40 = __Block_byref_object_dispose__304;
            v41 = 0;
            allOutstandingRequestsLock = [self allOutstandingRequestsLock];
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __46___PSPhotoSuggestions_cancelRequestWithToken___block_invoke;
            v29[3] = &unk_1E7C26F48;
            v29[4] = v14;
            v29[5] = buf;
            [allOutstandingRequestsLock runWithLockAcquired:v29];

            v17 = *(*&buf[8] + 40);
            if (v17)
            {
              (*(v17 + 16))();
              sharedMADService = [self sharedMADService];
              [sharedMADService cancelRequestID:integerValue];

              ++v10;
            }

            _Block_object_dispose(buf, 8);
          }

          v11 = [obj countByEnumeratingWithState:&v30 objects:v42 count:16];
        }

        while (v11);
      }

      v6 = +[_PSLogging heuristicsChannel];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      *buf = 134218240;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v25;
      v19 = "_PSPhotoSuggestions request cancelled (%tu of %tu attachments were still in-flight)";
      v20 = v6;
      v21 = 22;
    }

    else
    {
      v6 = +[_PSLogging heuristicsChannel];
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
LABEL_30:

        v23 = v26;
        goto LABEL_31;
      }

      *buf = 0;
      v19 = "_PSPhotoSuggestions request cancelled (no-op because request was for 0 items)";
      v20 = v6;
      v21 = 2;
    }

    _os_log_impl(&dword_1B5ED1000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
    goto LABEL_30;
  }

  v22 = +[_PSLogging heuristicsChannel];
  v23 = v22;
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    [(_PSPhotoSuggestions *)v27 cancelRequestWithToken:v22];
    v23 = v22;
  }

LABEL_31:
}

+ (id)suggestionTemplateForPhotoContactIdWithMessages:(id)messages cdInteraction:(id)interaction reason:(id)reason reasonType:(id)type
{
  v50 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  interactionCopy = interaction;
  reasonCopy = reason;
  typeCopy = type;
  sender = [interactionCopy sender];
  personId = [sender personId];
  v13 = [personId isEqualToString:messagesCopy];

  if (v13)
  {
    sender2 = [interactionCopy sender];
    identifier = [sender2 identifier];

    sender3 = [interactionCopy sender];
    recipients = sender3;
LABEL_13:
    type = [sender3 type];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    recipients = [interactionCopy recipients];
    v18 = [recipients countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(recipients);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          personId2 = [v22 personId];
          v24 = [personId2 isEqualToString:messagesCopy];

          if (v24)
          {
            identifier = [v22 identifier];
            sender3 = v22;
            goto LABEL_13;
          }
        }

        v19 = [recipients countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    identifier = 0;
    type = 0;
  }

  if (!identifier)
  {
    v32 = 0;
    goto LABEL_27;
  }

  v36 = interactionCopy;
  v26 = [_PSSuggestionTemplate alloc];
  v37 = +[_PSConstants mobileMessagesBundleId];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  v48 = messagesCopy;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  v29 = type != 2;
  if (type == 2)
  {
    v47 = identifier;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
LABEL_21:
    v30 = 0;
    goto LABEL_22;
  }

  if (type != 1)
  {
    v29 = 0;
    v31 = 0;
    goto LABEL_21;
  }

  v46 = identifier;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
  v31 = 0;
LABEL_22:
  v44 = messagesCopy;
  v45 = identifier;
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v32 = [(_PSSuggestionTemplate *)v26 initWithBundleID:v37 interactionRecipients:uUIDString image:0 groupName:0 recipientContactIDs:v28 recipientEmailAddresses:v31 recipientPhoneNumbers:v30 recipientDisplayNames:0 contactIdToHandleMapping:v33 reason:reasonCopy reasonType:typeCopy];

  if (v29)
  {
  }

  if (type == 2)
  {
  }

  interactionCopy = v36;
LABEL_27:

  return v32;
}

+ (void)peopleInSharedPhotoAttachments:(uint64_t)a1 forBundleID:(NSObject *)a2 shouldProcessPicturesLive:shouldUseVIPModel:withTraceID:withSpanID:shouldUseMDID:withCompletion:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "appRecord lookup failed with error: %@", &v2, 0xCu);
}

+ (void)cancelRequestWithToken:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_FAULT, "unexpected cancel token (not array): %{public}@", &v2, 0xCu);
}

+ (void)cancelRequestWithToken:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_FAULT, "unexpected cancel token (some items are not NSNumber): %{public}@", &v2, 0xCu);
}

@end