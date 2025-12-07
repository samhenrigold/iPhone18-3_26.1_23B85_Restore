@interface LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization
+ (id)specializedMetadataProviderForURLWithContext:(id)context;
- (void)completeWithOriginatorDisplayName:(id)name;
- (void)start;
@end

@implementation LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)context
{
  contextCopy = context;
  postRedirectURL = [contextCopy postRedirectURL];
  v5 = [LPPresentationSpecializations isApplePhotosSharedLibraryInvitationURL:postRedirectURL];

  if (v5)
  {
    v6 = [(LPMetadataProviderSpecialization *)[LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization alloc] initWithContext:contextCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)start
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1AE886000, a2, OS_LOG_TYPE_ERROR, "LinkPresentation: Failed to generate metadata - Could not open system photo library: %@", &v2, 0xCu);
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    v32 = 0;
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v8 = getPHShareParticipantClass_softClass;
    v36 = getPHShareParticipantClass_softClass;
    if (!getPHShareParticipantClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v38 = 3221225472;
      v39 = __getPHShareParticipantClass_block_invoke;
      v40 = &unk_1E7A35518;
      v41 = &v33;
      __getPHShareParticipantClass_block_invoke(buf);
      v8 = v34[3];
    }

    v9 = v8;
    _Block_object_dispose(&v33, 8);
    v10 = [v8 fetchParticipantsInShare:v5 options:*(a1 + 48)];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_5;
    v26[3] = &unk_1E7A36380;
    v26[4] = &v27;
    v11 = [v10 enumerateObjectsUsingBlock:v26];
    v12 = v28[5];
    if (!v12)
    {
      v18 = sharedLibraryLog(v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = [v5 localIdentifier];
        __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_2(v19, buf, v18);
      }

      [*(a1 + 40) completeWithOriginatorDisplayName:0];
      goto LABEL_21;
    }

    v13 = v12;
    v14 = [v13 nameComponents];
    if (v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E696ADF8]);
      [v15 setStyle:1];
      v16 = [v15 stringFromPersonNameComponents:v14];
    }

    else
    {
      v15 = [v13 emailAddress];
      if (![v15 length])
      {
        v25 = [v13 phoneNumber];
        if ([v25 length])
        {
          v20 = v25;
        }

        else
        {
          v20 = 0;
        }

        goto LABEL_16;
      }

      v16 = v15;
      v15 = v16;
    }

    v20 = v16;
LABEL_16:

    if (!v20)
    {
      v22 = sharedLibraryLog(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = [v28[5] localIdentifier];
        v24 = [v5 localIdentifier];
        __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_1(v23, v24, buf, v22);
      }
    }

    [*(a1 + 40) completeWithOriginatorDisplayName:v20];

LABEL_21:
    _Block_object_dispose(&v27, 8);

    goto LABEL_22;
  }

  v17 = sharedLibraryLog(v6);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_3(a1, v7, v17);
  }

  [*(a1 + 40) completeWithOriginatorDisplayName:0];
LABEL_22:
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_5(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 role] == 1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)completeWithOriginatorDisplayName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(LPApplePhotosSharedLibraryInvitationMetadata);
  if (nameCopy)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = LPLocalizedString(@"%@ wants you to join a Shared Library in Photos");
    nameCopy = [v6 localizedStringWithFormat:v7, nameCopy];
    [(LPApplePhotosSharedLibraryInvitationMetadata *)v5 setMessage:nameCopy];

    [(LPApplePhotosSharedLibraryInvitationMetadata *)v5 setOriginatorDisplayName:nameCopy];
  }

  v9 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:v5];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_completeWithOriginatorDisplayName___block_invoke;
  block[3] = &unk_1E7A35478;
  block[4] = self;
  v12 = v9;
  v10 = v9;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_completeWithOriginatorDisplayName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 metadataProviderSpecialization:*(a1 + 32) didCompleteWithMetadata:*(a1 + 40)];
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_1(void *a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LinkPresentation: Failed to generate metadata - No name for owner: %{public}@, library scope: %{public}@", buf, 0x16u);
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LinkPresentation: Failed to generate metadata - No owner for library scope: %{public}@", buf, 0xCu);
}

void __75__LPApplePhotosSharedLibraryInvitationMetadataProviderSpecialization_start__block_invoke_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LinkPresentation: Failed to generate metadata - No library scope for URL: %@, error: %@", &v4, 0x16u);
}

@end