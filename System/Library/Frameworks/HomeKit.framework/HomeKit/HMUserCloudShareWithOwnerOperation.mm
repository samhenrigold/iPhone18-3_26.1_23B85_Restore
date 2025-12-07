@interface HMUserCloudShareWithOwnerOperation
+ (id)logCategory;
- (HMUserCloudShareWithOwnerOperation)initWithShare:(id)share container:(id)container ownerUser:(id)user allowWriteAccess:(BOOL)access currentUser:(id)currentUser analyticsEventSender:(id)sender;
- (id)logIdentifier;
- (void)fetchParticipantForLookupInfo:(id)info completion:(id)completion;
- (void)main;
- (void)removeOwnerAsParticipant:(id)participant completion:(id)completion;
- (void)saveShareAndObtainSavedOwner:(id)owner completion:(id)completion;
- (void)sendShareToOwner:(id)owner from:(id)from savedOwnerAsParticipant:(id)participant share:(id)share completion:(id)completion;
@end

@implementation HMUserCloudShareWithOwnerOperation

- (id)logIdentifier
{
  currentUser = [(HMUserCloudShareWithOwnerOperation *)self currentUser];
  uuid = [currentUser uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)main
{
  v33 = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = HMUserCloudShareWithOwnerOperation;
  [(HMUserCloudShareWithOwnerOperation *)&v28 main];
  completion = [(HMUserCloudShareWithOwnerOperation *)self completion];
  v4 = completion == 0;

  if (v4)
  {
    v18 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Completion must be provided" userInfo:0];
    objc_exception_throw(v18);
  }

  completion2 = [(HMUserCloudShareWithOwnerOperation *)self completion];
  [(HMUserCloudShareWithOwnerOperation *)self setCompletion:0];
  logger = self->_logger;
  if (os_signpost_enabled(logger))
  {
    v7 = logger;
    operationID = [(HMUserCloudShareWithOwnerOperation *)self operationID];
    currentUser = [(HMUserCloudShareWithOwnerOperation *)self currentUser];
    uuid = [currentUser uuid];
    ownerUser = [(HMUserCloudShareWithOwnerOperation *)self ownerUser];
    uuid2 = [ownerUser uuid];
    *buf = 138412802;
    *&buf[4] = operationID;
    *&buf[12] = 2112;
    *&buf[14] = uuid;
    *&buf[22] = 2112;
    v30 = uuid2;
    _os_signpost_emit_with_name_impl(&dword_19BB39000, v7, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "MultiUser.Share.Operation", "OperationID=%{signpost.description:attribute}@ User=%{signpost.description:attribute}@ Owner=%{signpost.description:attribute}@ ", buf, 0x20u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__40884;
  v31 = __Block_byref_object_dispose__40885;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke;
  aBlock[3] = &unk_1E754BAF0;
  objc_copyWeak(v26, &location);
  v25 = buf;
  v26[1] = 0xEEEEB0B5B2B2EEEELL;
  v13 = completion2;
  v24 = v13;
  v14 = _Block_copy(aBlock);
  v15 = self->_logger;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "Fetching lookup info for owner user.", v22, 2u);
  }

  [*(*&buf[8] + 40) setObject:&unk_1F0EFD148 forKeyedSubscript:@"stage"];
  ownerUser2 = [(HMUserCloudShareWithOwnerOperation *)self ownerUser];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_77;
  v19[3] = &unk_1E754BB68;
  v17 = v14;
  v19[4] = self;
  v20 = v17;
  v21 = buf;
  [ownerUser2 fetchShareLookupInfo:v19];

  objc_destroyWeak(v26);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:&unk_1F0EFD148 forKeyedSubscript:@"result"];
    if (v6)
    {
      [*(*(*(a1 + 40) + 8) + 40) setObject:&unk_1F0EFD160 forKeyedSubscript:@"result"];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "code")}];
      v9 = [v8 stringValue];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:@"errorCode"];

      v10 = [v6 domain];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = @"<No Domain>";
      }

      [*(*(*(a1 + 40) + 8) + 40) setObject:v12 forKeyedSubscript:@"errorDomain"];
    }

    v13 = [WeakRetained share];
    v14 = [v13 containerID];
    v15 = [v14 containerIdentifier];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v15 forKeyedSubscript:@"client"];

    v16 = [WeakRetained analyticsEventSender];
    (v16)[2](v16, @"com.apple.HomeKit.MultiUserShareOperationResult", *(*(*(a1 + 40) + 8) + 40));

    v17 = WeakRetained[31];
    v18 = v17;
    v19 = *(a1 + 56);
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      v20 = 138412290;
      v21 = v6;
      _os_signpost_emit_with_name_impl(&dword_19BB39000, v18, OS_SIGNPOST_INTERVAL_END, v19, "MultiUser.Share.Operation", "Error=%{signpost.description:attribute}@ ", &v20, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_77(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Fetch CKParticipant for Owner User.", buf, 2u);
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD160 forKeyedSubscript:@"stage"];
    v8 = *(a1 + 32);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_78;
    v11[3] = &unk_1E754BB40;
    v11[4] = v8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = v9;
    v13 = v10;
    [v8 fetchParticipantForLookupInfo:v5 completion:v11];
  }
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_78(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) allowWriteAccess])
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Setting permission to read/write.", buf, 2u);
    }

    [v5 setPermission:3];
  }

  if (v6)
  {
    v8 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v51 = v6;
      _os_log_error_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "Got error while fetching participant: %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v9 = [*(a1 + 32) share];
    v10 = [v9 participants];

    v11 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (!v11)
    {
      goto LABEL_17;
    }

    v12 = v11;
    v13 = *v46;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        if ([v15 isEqual:v5])
        {
          v16 = *(*(a1 + 32) + 248);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v51 = v15;
            _os_log_debug_impl(&dword_19BB39000, v16, OS_LOG_TYPE_DEBUG, "Found owner in share. %@", buf, 0xCu);
          }

          v17 = v15;

          if (!v17)
          {
            goto LABEL_25;
          }

          if ([v17 invitationTokenStatus] == 3)
          {
            v18 = *(*(a1 + 32) + 248);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "Owner needs a new token resending invite.", buf, 2u);
            }

            [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD178 forKeyedSubscript:@"stage"];
            [v17 setWantsNewInvitationToken:1];
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_81;
            v42[3] = &unk_1E754BB40;
            v19 = *(a1 + 32);
            v20 = *(a1 + 40);
            v42[4] = *(a1 + 32);
            v43 = v20;
            v44 = *(a1 + 48);
            [v19 saveShareAndObtainSavedOwner:v5 completion:v42];
            v21 = v43;
          }

          else
          {
            if ([v17 acceptanceStatus] == 2)
            {
              [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD1A8 forKeyedSubscript:@"stage"];
              v27 = *(*(a1 + 32) + 248);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "Owner has already accepted the share.", buf, 2u);
              }

              v28 = [HMHomeCloudShareResponse alloc];
              v29 = [*(a1 + 32) ownerUser];
              v30 = [(HMHomeCloudShareResponse *)v28 initWithOwnerUser:v29 pariticipant:v17 clientInfo:0];

              (*(*(a1 + 40) + 16))();
              goto LABEL_36;
            }

            v31 = *(*(a1 + 32) + 248);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_INFO, "Owner exists in the share participants remove and re-invite.", buf, 2u);
            }

            [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD1C0 forKeyedSubscript:@"stage"];
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_89;
            v38[3] = &unk_1E754BB18;
            v32 = *(a1 + 32);
            v33 = *(a1 + 40);
            v38[4] = *(a1 + 32);
            v34 = *(a1 + 48);
            v40 = v33;
            v41 = v34;
            v39 = v5;
            [v32 removeOwnerAsParticipant:v17 completion:v38];

            v21 = v40;
          }

          goto LABEL_36;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

LABEL_17:

LABEL_25:
    v22 = *(a1 + 32);
    v23 = v22[31];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "Owner not present on the share inviting.", buf, 2u);
      v22 = *(a1 + 32);
    }

    v24 = [v22 share];
    [v24 addParticipant:v5];

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD1D8 forKeyedSubscript:@"stage"];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_95;
    v35[3] = &unk_1E754BB40;
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v35[4] = *(a1 + 32);
    v36 = v26;
    v37 = *(a1 + 48);
    [v25 saveShareAndObtainSavedOwner:v5 completion:v35];
    v17 = v36;
LABEL_36:
  }
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_81(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Sending share after saving for token.", v12, 2u);
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD190 forKeyedSubscript:@"stage"];
    v8 = *(a1 + 32);
    v9 = [v8 ownerUser];
    v10 = [*(a1 + 32) currentUser];
    v11 = [*(a1 + 32) share];
    [v8 sendShareToOwner:v9 from:v10 savedOwnerAsParticipant:v5 share:v11 completion:*(a1 + 40)];
  }
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_89(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "Adding owner again after removing.", buf, 2u);
    }

    [*(*(*(a1 + 56) + 8) + 40) setObject:&unk_1F0EFD1D8 forKeyedSubscript:@"stage"];
    v5 = [*(a1 + 32) share];
    [v5 addParticipant:*(a1 + 40)];

    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_92;
    v9[3] = &unk_1E754BB40;
    v8 = *(a1 + 48);
    v9[4] = *(a1 + 32);
    v10 = v8;
    v11 = *(a1 + 56);
    [v6 saveShareAndObtainSavedOwner:v7 completion:v9];
  }
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Sending share to owner.", v12, 2u);
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD208 forKeyedSubscript:@"stage"];
    v8 = *(a1 + 32);
    v9 = [v8 ownerUser];
    v10 = [*(a1 + 32) currentUser];
    v11 = [*(a1 + 32) share];
    [v8 sendShareToOwner:v9 from:v10 savedOwnerAsParticipant:v5 share:v11 completion:*(a1 + 40)];
  }
}

void __42__HMUserCloudShareWithOwnerOperation_main__block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "Sending share after adding owner again.", v12, 2u);
    }

    [*(*(*(a1 + 48) + 8) + 40) setObject:&unk_1F0EFD1F0 forKeyedSubscript:@"stage"];
    v8 = *(a1 + 32);
    v9 = [v8 ownerUser];
    v10 = [*(a1 + 32) currentUser];
    v11 = [*(a1 + 32) share];
    [v8 sendShareToOwner:v9 from:v10 savedOwnerAsParticipant:v5 share:v11 completion:*(a1 + 40)];
  }
}

- (void)sendShareToOwner:(id)owner from:(id)from savedOwnerAsParticipant:(id)participant share:(id)share completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  fromCopy = from;
  participantCopy = participant;
  completionCopy = completion;
  shareCopy = share;
  v17 = [shareCopy URL];
  invitationToken = [participantCopy invitationToken];
  containerID = [shareCopy containerID];

  containerIdentifier = [containerID containerIdentifier];

  v36 = 0;
  v21 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:invitationToken requiringSecureCoding:1 error:&v36];
  v22 = v36;
  if (!v21)
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v38 = v22;
      _os_log_error_impl(&dword_19BB39000, logger, OS_LOG_TYPE_ERROR, "Unable to encode share token. %@", buf, 0xCu);
      if (v22)
      {
        goto LABEL_6;
      }
    }

    else if (v22)
    {
LABEL_6:
      completionCopy[2](completionCopy, 0, v22);
      goto LABEL_7;
    }

    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Got back nil encoded token" reason:@"Expected encoded token" suggestion:&stru_1F0E92498];
    goto LABEL_6;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __101__HMUserCloudShareWithOwnerOperation_sendShareToOwner_from_savedOwnerAsParticipant_share_completion___block_invoke;
  v31[3] = &unk_1E754BAC8;
  v31[4] = self;
  v32 = ownerCopy;
  v23 = fromCopy;
  v30 = v22;
  v24 = invitationToken;
  v25 = fromCopy;
  v26 = ownerCopy;
  v27 = v23;
  v33 = v23;
  v34 = participantCopy;
  v35 = completionCopy;
  v28 = v27;
  ownerCopy = v26;
  fromCopy = v25;
  invitationToken = v24;
  v22 = v30;
  [v32 sendClientShareURL:v17 shareToken:v21 containerID:containerIdentifier fromUser:v28 completion:v31];

LABEL_7:
}

void __101__HMUserCloudShareWithOwnerOperation_sendShareToOwner_from_savedOwnerAsParticipant_share_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 40);
      v17 = *(a1 + 48);
      *buf = 138412802;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v6;
      _os_log_error_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "Unable to complete share to owner %@ from %@. Error %@", buf, 0x20u);
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    if (v5)
    {
      v18 = 0;
      v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v18];
      v9 = v18;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }

    v10 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      *buf = 138412802;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "Completed share to owner %@ from %@ nonce %@.", buf, 0x20u);
    }

    if (v9)
    {
      (*(*(a1 + 64) + 16))();
    }

    else
    {
      v13 = [HMHomeCloudShareResponse alloc];
      v14 = [*(a1 + 32) ownerUser];
      v15 = [(HMHomeCloudShareResponse *)v13 initWithOwnerUser:v14 pariticipant:*(a1 + 56) clientInfo:v8];

      (*(*(a1 + 64) + 16))();
    }
  }
}

- (void)removeOwnerAsParticipant:(id)participant completion:(id)completion
{
  v23[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  participantCopy = participant;
  share = [(HMUserCloudShareWithOwnerOperation *)self share];
  [share removeParticipant:participantCopy];

  v9 = objc_alloc(MEMORY[0x1E695B9B8]);
  share2 = [(HMUserCloudShareWithOwnerOperation *)self share];
  v23[0] = share2;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v12 = [v9 initWithRecordsToSave:v11 recordIDsToDelete:0];

  configuration = [v12 configuration];
  [configuration setQualityOfService:17];

  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __74__HMUserCloudShareWithOwnerOperation_removeOwnerAsParticipant_completion___block_invoke;
  v20 = &unk_1E754BAA0;
  selfCopy = self;
  v22 = completionCopy;
  v14 = completionCopy;
  [v12 setModifyRecordsCompletionBlock:&v17];
  v15 = [(HMUserCloudShareWithOwnerOperation *)self container:v17];
  privateCloudDatabase = [v15 privateCloudDatabase];
  [privateCloudDatabase addOperation:v12];
}

void __74__HMUserCloudShareWithOwnerOperation_removeOwnerAsParticipant_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "Got error while saving share to remove owner.", &v18, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    v14 = *(a1 + 32);
    v15 = v14[31];
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "Successfully removed owner from share", &v18, 2u);
        v14 = *(a1 + 32);
      }

      [v14 setShare:v13];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v7;
        _os_log_error_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "Unable to find share in saved records: %@", &v18, 0xCu);
      }

      v16 = *(a1 + 40);
      v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Unexpected result after saving share" reason:@"Couldn't get CKShare" suggestion:0];
      (*(v16 + 16))(v16, v17);
    }
  }
}

- (void)saveShareAndObtainSavedOwner:(id)owner completion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  completionCopy = completion;
  v8 = objc_alloc(MEMORY[0x1E695B9B8]);
  share = [(HMUserCloudShareWithOwnerOperation *)self share];
  v20[0] = share;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v11 = [v8 initWithRecordsToSave:v10 recordIDsToDelete:0];

  configuration = [v11 configuration];
  [configuration setQualityOfService:17];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __78__HMUserCloudShareWithOwnerOperation_saveShareAndObtainSavedOwner_completion___block_invoke;
  v17[3] = &unk_1E754BA78;
  v18 = ownerCopy;
  v19 = completionCopy;
  v17[4] = self;
  v13 = ownerCopy;
  v14 = completionCopy;
  [v11 setModifyRecordsCompletionBlock:v17];
  container = [(HMUserCloudShareWithOwnerOperation *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  [privateCloudDatabase addOperation:v11];
}

void __78__HMUserCloudShareWithOwnerOperation_saveShareAndObtainSavedOwner_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v9)
  {
    if ([v7 count] != 1)
    {
      v20 = *(*(a1 + 32) + 248);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v7;
        _os_log_error_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "Unexpected number of saved records: %@", buf, 0xCu);
      }

      v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Unexpected result after saving share" reason:@"Unexpected number of records" suggestion:0];
      v22 = 0;
      if (!v21)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v11 = [v7 firstObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v14 = [v13 participants];
      v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v33;
LABEL_12:
        v18 = 0;
        while (1)
        {
          if (*v33 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v32 + 1) + 8 * v18);
          if ([v19 isEqual:*(a1 + 40)])
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
            if (v16)
            {
              goto LABEL_12;
            }

            goto LABEL_18;
          }
        }

        v22 = v19;

        if (!v22)
        {
          goto LABEL_25;
        }

        [*(a1 + 32) setShare:v13];
        v21 = 0;
LABEL_32:

        if (!v21)
        {
LABEL_34:
          (*(*(a1 + 48) + 16))();

          goto LABEL_35;
        }

LABEL_33:

        v22 = 0;
        goto LABEL_34;
      }

LABEL_18:

LABEL_25:
      v23 = *(*(a1 + 32) + 248);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v29 = *(a1 + 40);
        v30 = v23;
        v31 = [v13 participants];
        *buf = 138412546;
        v37 = v29;
        v38 = 2112;
        v39 = v31;
        _os_log_error_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "Couldn't find participant %@ in share: %@", buf, 0x16u);
      }

      v24 = MEMORY[0x1E696ABC0];
      v25 = @"Unable to find participant in saved share";
      v26 = @"Couldn't find owner as participant";
      v27 = 2;
    }

    else
    {
      v28 = *(*(a1 + 32) + 248);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v7;
        _os_log_error_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "Unable to find share in saved records: %@", buf, 0xCu);
      }

      v24 = MEMORY[0x1E696ABC0];
      v25 = @"Unexpected result after saving share";
      v26 = @"Couldn't get CKShare";
      v27 = 3;
    }

    v21 = [v24 hmErrorWithCode:v27 description:v25 reason:v26 suggestion:0];
    v22 = 0;
    goto LABEL_32;
  }

  v10 = *(*(a1 + 32) + 248);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v37 = v9;
    _os_log_error_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "Got error while saving share to add owner. %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_35:
}

- (void)fetchParticipantForLookupInfo:(id)info completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  completionCopy = completion;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = infoCopy;
    _os_log_impl(&dword_19BB39000, logger, OS_LOG_TYPE_DEFAULT, "Fetching Share Participant for %@", buf, 0xCu);
  }

  v9 = objc_alloc(MEMORY[0x1E695B950]);
  v23 = infoCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v11 = [v9 initWithUserIdentityLookupInfos:v10];

  configuration = [v11 configuration];
  [configuration setQualityOfService:17];

  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:1];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__HMUserCloudShareWithOwnerOperation_fetchParticipantForLookupInfo_completion___block_invoke;
  v21[3] = &unk_1E754BA50;
  v14 = v13;
  v22 = v14;
  [v11 setShareParticipantFetchedBlock:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__HMUserCloudShareWithOwnerOperation_fetchParticipantForLookupInfo_completion___block_invoke_2;
  v18[3] = &unk_1E754D898;
  v19 = v14;
  v20 = completionCopy;
  v18[4] = self;
  v15 = v14;
  v16 = completionCopy;
  [v11 setFetchShareParticipantsCompletionBlock:v18];
  container = [(HMUserCloudShareWithOwnerOperation *)self container];
  [container addOperation:v11];
}

void __79__HMUserCloudShareWithOwnerOperation_fetchParticipantForLookupInfo_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "Got error while fetching participant participant: %@", &v10, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else if ([*(a1 + 40) count])
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 40) firstObject];
    (*(v5 + 16))(v5, v6, 0);
  }

  else
  {
    v7 = *(*(a1 + 32) + 248);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10) = 0;
      _os_log_error_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "Could not find a single participant.", &v10, 2u);
    }

    v8 = *(a1 + 48);
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Unable to determine participant" reason:@"Couldn't get participant for CKShare" suggestion:0];
    (*(v8 + 16))(v8, 0, v9);
  }
}

- (HMUserCloudShareWithOwnerOperation)initWithShare:(id)share container:(id)container ownerUser:(id)user allowWriteAccess:(BOOL)access currentUser:(id)currentUser analyticsEventSender:(id)sender
{
  shareCopy = share;
  containerCopy = container;
  userCopy = user;
  currentUserCopy = currentUser;
  senderCopy = sender;
  v28.receiver = self;
  v28.super_class = HMUserCloudShareWithOwnerOperation;
  v18 = [(HMUserCloudShareWithOwnerOperation *)&v28 init];
  if (v18)
  {
    v19 = HMFGetOSLogHandle();
    logger = v18->_logger;
    v18->_logger = v19;

    uUID = [MEMORY[0x1E696AFB0] UUID];
    operationID = v18->_operationID;
    v18->_operationID = uUID;

    objc_storeStrong(&v18->_share, share);
    objc_storeStrong(&v18->_container, container);
    objc_storeStrong(&v18->_ownerUser, user);
    objc_storeStrong(&v18->_currentUser, currentUser);
    v18->_allowWriteAccess = access;
    v23 = _Block_copy(senderCopy);
    analyticsEventSender = v18->_analyticsEventSender;
    v18->_analyticsEventSender = v23;
  }

  return v18;
}

void __101__HMUserCloudShareWithOwnerOperation_initWithShare_container_ownerUser_allowWriteAccess_currentUser___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __101__HMUserCloudShareWithOwnerOperation_initWithShare_container_ownerUser_allowWriteAccess_currentUser___block_invoke_2;
  v12[3] = &unk_1E754BA28;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  v8 = v12;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v9 = getAnalyticsSendEventLazySymbolLoc_ptr_40994;
  v18 = getAnalyticsSendEventLazySymbolLoc_ptr_40994;
  if (!getAnalyticsSendEventLazySymbolLoc_ptr_40994)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getAnalyticsSendEventLazySymbolLoc_block_invoke_40995;
    v14[3] = &unk_1E754CB30;
    v14[4] = &v15;
    __getAnalyticsSendEventLazySymbolLoc_block_invoke_40995(v14);
    v9 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v9)
  {
    v10 = dlerror();
    v11 = abort_report_np("%s", v10);
    _Block_object_dispose(&v15, 8);
    _Unwind_Resume(v11);
  }

  v9(v7, v8);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t32 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t32, &__block_literal_global_101_41005);
  }

  v3 = logCategory__hmf_once_v33;

  return v3;
}

uint64_t __49__HMUserCloudShareWithOwnerOperation_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v33;
  logCategory__hmf_once_v33 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end