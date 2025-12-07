@interface SFCollaborationUtilities
+ (BOOL)canDeleteShareForCollaborationItem:(id)item;
+ (BOOL)hasiWorkSendCopyRepresentationForItemProvider:(id)provider;
+ (BOOL)isCKShareItemProvider:(id)provider;
+ (BOOL)isCollaborationItemPrivateShare:(id)share;
+ (BOOL)isHeroCollaborationActivityType:(id)type;
+ (BOOL)isInPlaceFileOrURLItemProvider:(id)provider;
+ (BOOL)isOplockError:(id)error updatedShare:(id *)share;
+ (BOOL)isPostCKShareItemProvider:(id)provider;
+ (BOOL)isPreCKShareItemProvider:(id)provider;
+ (BOOL)isSWYActivityItemProvider:(id)provider;
+ (BOOL)isServiceManateeCKShareItemProvider:(id)provider;
+ (BOOL)isSharedFileURL:(id)l isLocalStorageFileURL:(BOOL *)rL isiCloudDriveFileURL:(BOOL *)uRL isInSharedFolder:(BOOL *)folder;
+ (BOOL)isThirdPartyFileProviderBackedURL:(id)l;
+ (BOOL)shareSupportsRequestAccess:(id)access options:(id)options;
+ (NSString)_copyRepresentationTypeIdentifier;
+ (NSString)defaultCKOptionsSummary;
+ (id)_dataForFilepath:(id)filepath;
+ (id)baseCollaborationDictionaryFromCollaborationItem:(id)item;
+ (id)ckShareDictionaryFromCKShare:(id)share setupInfo:(id)info;
+ (id)createItemProviderForFileURL:(id)l;
+ (id)createLinkMetadataWithCKShare:(id)share containerSetupInfo:(id)info;
+ (id)createLinkMetadataWithCKShareItemProvider:(id)provider;
+ (id)descriptionForShareOptions:(id)options;
+ (id)fileCollaborationItemFromActivityItems:(id)items;
+ (id)fileShareDictionaryFromFileURLItems:(id)items;
+ (id)optionsFromCKShare:(id)share previousCKOptions:(id)options newCKOptions:(id *)kOptions;
+ (id)underlyingCKErrorForError:(id)error;
+ (id)urlFromActivityItem:(id)item allowsLoading:(BOOL)loading;
+ (id)urlRequestsForCollaborationItems:(id)items;
+ (void)_addParticipantsAllowedForShare:(id)share completionHandler:(id)handler;
+ (void)_addParticipantsAllowedForURL:(id)l share:(id)share collaborationService:(id)service completionHandler:(id)handler;
+ (void)_copyRepresentationTypeIdentifier;
+ (void)_fetchCollaborationAppInfoIfNeededForActivityType:(id)type deviceScreenScale:(double)scale appInfoCompletion:(id)completion;
+ (void)_findOriginatingSharedItemInParentItems:(id)items forSubitem:(id)subitem completionHandler:(id)handler;
+ (void)_loadCKShareWithMetadataForItemProvider:(id)provider completionHandler:(id)handler;
+ (void)_loadShareOptionsForCKShareItemProvider:(id)provider completionHandler:(id)handler;
+ (void)_loadShareOptionsForSWYItemProvider:(id)provider completionHandler:(id)handler;
+ (void)_processRemainingActivityItems:(id)items toFinalActivityItems:(id)activityItems onQueue:(id)queue completion:(id)completion;
+ (void)addParticipantsAllowedForCollaborationItem:(id)item collaborationService:(id)service completionHandler:(id)handler;
+ (void)addParticipantsAllowedForURL:(id)l share:(id)share completionHandler:(id)handler;
+ (void)canShowShareOptionsForCollaborationItem:(id)item service:(id)service completionHandler:(id)handler;
+ (void)createCollaborationRequestWithCollaborationItem:(id)item activityType:(id)type deviceScreenScale:(double)scale completionHandler:(id)handler;
+ (void)createMailContentForRequest:(id)request completionHandler:(id)handler;
+ (void)createSharingURLForCollaborationRequest:(id)request completionHandler:(id)handler;
+ (void)deleteSharingURL:(id)l containerSetupInfo:(id)info completionHandler:(id)handler;
+ (void)findOriginatingSharedItemForSubitemURL:(id)l completionHandler:(id)handler;
+ (void)getCKSharingOptionsFromOptions:(id)options accessType:(id *)type permissionType:(id *)permissionType allowOthersToInvite:(id *)invite;
+ (void)getFailureTitle:(id *)title message:(id *)message error:(id)error;
+ (void)isShareOwnerOrAdminForCollaborationItem:(id)item service:(id)service completionHandler:(id)handler;
+ (void)isShareOwnerOrAdminForFileURL:(id)l completionHandler:(id)handler;
+ (void)isShareOwnerOrAdminForShare:(id)share completionHandler:(id)handler;
+ (void)loadCKContainerForItemProvider:(id)provider completionHandler:(id)handler;
+ (void)loadCKShareItemProvider:(id)provider onlyPostShare:(BOOL)share completionHandler:(id)handler;
+ (void)loadMetadataForFileURL:(id)l completionHandler:(id)handler;
+ (void)loadMetadataForItemProvider:(id)provider completionHandler:(id)handler;
+ (void)loadPendingCollaborationForItemProvider:(id)provider completionHandler:(id)handler;
+ (void)loadSendCopyRepresentationIfNeededForActivityItems:(id)items completion:(id)completion;
+ (void)loadSendCopyRepresentationIfNeededForItemProvider:(id)provider completion:(id)completion;
+ (void)loadShareOptionsForItemProvider:(id)provider completionHandler:(id)handler;
+ (void)loadiWorkCopyRepresentationURLForItemProvider:(id)provider completionHandler:(id)handler;
+ (void)requestSharedURLForCollaborationItem:(id)item collaborationService:(id)service completionHandler:(id)handler;
+ (void)requestSharedURLForCollaborationRequest:(id)request completionHandler:(id)handler;
+ (void)shareStatusForURL:(id)l completionHandler:(id)handler;
@end

@implementation SFCollaborationUtilities

+ (id)baseCollaborationDictionaryFromCollaborationItem:(id)item
{
  v3 = MEMORY[0x1E695DF90];
  itemCopy = item;
  v5 = objc_alloc_init(v3);
  metadata = [itemCopy metadata];
  [v5 setObject:metadata forKeyedSubscript:@"CollaborationMetadata"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(itemCopy, "type")}];
  [v5 setObject:v7 forKeyedSubscript:@"CollaborationType"];

  shareOptions = [itemCopy shareOptions];
  [v5 setObject:shareOptions forKeyedSubscript:@"CollaborationShareOptions"];

  shareOptions2 = [itemCopy shareOptions];

  optionsGroups = [shareOptions2 optionsGroups];
  [v5 setObject:optionsGroups forKeyedSubscript:@"CollaborationOptions"];

  [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"CollaborationMode"];

  return v5;
}

+ (BOOL)isCKShareItemProvider:(id)provider
{
  providerCopy = provider;
  v4 = get_CKCloudKitPreShareType();
  if ([providerCopy hasItemConformingToTypeIdentifier:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = get_CKCloudKitPostShareType();
    v5 = [providerCopy hasItemConformingToTypeIdentifier:v6];
  }

  return v5;
}

+ (BOOL)isPreCKShareItemProvider:(id)provider
{
  providerCopy = provider;
  v4 = get_CKCloudKitPreShareType();
  v5 = [providerCopy hasItemConformingToTypeIdentifier:v4];

  return v5;
}

+ (BOOL)isPostCKShareItemProvider:(id)provider
{
  providerCopy = provider;
  v4 = get_CKCloudKitPostShareType();
  v5 = [providerCopy hasItemConformingToTypeIdentifier:v4];

  return v5;
}

+ (void)getCKSharingOptionsFromOptions:(id)options accessType:(id *)type permissionType:(id *)permissionType allowOthersToInvite:(id *)invite
{
  optionsCopy = options;
  if ([optionsCopy count])
  {
    v10 = soft_CKSharingAccessTypeFromOptionsGroups(optionsCopy);
    v11 = optionsCopy;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v12 = getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_ptr;
    v22 = getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_ptr;
    if (!getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_ptr)
    {
      v13 = CloudKitLibrary_0();
      v20[3] = dlsym(v13, "CKSharingPermissionTypeFromOptionsGroups");
      getCKSharingPermissionTypeFromOptionsGroupsSymbolLoc_ptr = v20[3];
      v12 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v12)
    {
      +[SFCollaborationUtilities getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:];
    }

    v14 = v12(v11);

    v15 = v11;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v16 = getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_ptr;
    v22 = getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_ptr;
    if (!getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_ptr)
    {
      v17 = CloudKitLibrary_0();
      v20[3] = dlsym(v17, "CKSharingAllowOthersToInviteFromOptionsGroups");
      getCKSharingAllowOthersToInviteFromOptionsGroupsSymbolLoc_ptr = v20[3];
      v16 = v20[3];
    }

    _Block_object_dispose(&v19, 8);
    if (!v16)
    {
      +[SFCollaborationUtilities getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:];
    }

    v18 = v16(v15);
  }

  else
  {
    v15 = share_sheet_log(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:];
    }

    v18 = 0;
    v14 = 0;
    v10 = 0;
  }

  *type = [MEMORY[0x1E696AD98] numberWithInteger:v10];
  *permissionType = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  *invite = [MEMORY[0x1E696AD98] numberWithBool:v18];
}

+ (id)ckShareDictionaryFromCKShare:(id)share setupInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  infoCopy = info;
  v7 = gelato_sharing_log(infoCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v18 = shareCopy;
    _os_log_impl(&dword_1A9662000, v7, OS_LOG_TYPE_INFO, "Creating dictionary from ckShare: %@", buf, 0xCu);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:shareCopy requiringSecureCoding:1 error:&v16];
  v10 = v16;
  v11 = v10;
  if (v9)
  {
    [dictionary setValue:v9 forKey:@"share"];
  }

  else if (v10)
  {
    [dictionary setObject:v10 forKey:@"shareError"];
  }

  v15 = v11;
  v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:infoCopy requiringSecureCoding:1 error:&v15];
  v13 = v15;

  if (v12)
  {
    [dictionary setValue:v12 forKey:@"setupInfo"];
  }

  else if (v13)
  {
    [dictionary setObject:v13 forKey:@"setupInfoError"];
  }

  return dictionary;
}

+ (NSString)defaultCKOptionsSummary
{
  standardOptions = [getCKAllowedSharingOptionsClass() standardOptions];
  shareOptions = [standardOptions shareOptions];
  summary = [shareOptions summary];

  return summary;
}

+ (void)deleteSharingURL:(id)l containerSetupInfo:(id)info completionHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  lCopy = l;
  infoCopy = info;
  handlerCopy = handler;
  v10 = share_sheet_log(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = lCopy;
    v13 = 2112;
    v14 = infoCopy;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "remove sharingURL:%@ with containerSetupInfo:%@", &v11, 0x16u);
  }

  [getCloudSharingClass() removeFromShareURL:lCopy containerSetupInfo:infoCopy completionHandler:handlerCopy];
}

+ (void)_loadShareOptionsForCKShareItemProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v7 = [providerCopy canLoadObjectOfClass:getCKAllowedSharingOptionsClass()];
  if (v7)
  {
    v8 = gelato_sharing_log(v7);
    v9 = os_signpost_id_make_with_pointer(v8, providerCopy);

    v11 = gelato_sharing_log(v10);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CollaborationLoadShareOptionsForCKShareItemProvider", "", buf, 2u);
    }

    CKAllowedSharingOptionsClass = getCKAllowedSharingOptionsClass();
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __86__SFCollaborationUtilities__loadShareOptionsForCKShareItemProvider_completionHandler___block_invoke;
    v16[3] = &unk_1E788E340;
    v18 = v9;
    v17 = handlerCopy;
    v14 = [providerCopy loadObjectOfClass:CKAllowedSharingOptionsClass completionHandler:v16];
  }

  else
  {
    v15 = share_sheet_log(v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities _loadShareOptionsForCKShareItemProvider:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __86__SFCollaborationUtilities__loadShareOptionsForCKShareItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    v9 = share_sheet_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __86__SFCollaborationUtilities__loadShareOptionsForCKShareItemProvider_completionHandler___block_invoke_cold_1();
    }
  }

  v10 = gelato_sharing_log(v7);
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v15 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CollaborationLoadShareOptionsForCKShareItemProvider", "", v15, 2u);
  }

  v13 = *(a1 + 32);
  v14 = [v8 shareOptions];
  (*(v13 + 16))(v13, v14, v8);
}

+ (void)loadCKShareItemProvider:(id)provider onlyPostShare:(BOOL)share completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v9 = gelato_sharing_log(handlerCopy);
  v10 = os_signpost_id_make_with_pointer(v9, providerCopy);

  v12 = gelato_sharing_log(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CollaborationLoadCKShareItemProvider", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E368;
  v34 = v10;
  v14 = handlerCopy;
  v33 = v14;
  v15 = _Block_copy(aBlock);
  v16 = get_CKCloudKitPostShareType();
  v17 = [providerCopy hasItemConformingToTypeIdentifier:v16];

  if (v17)
  {
    CKPostSharingContextClass = getCKPostSharingContextClass();
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165;
    v28[3] = &unk_1E788E3B8;
    shareCopy = share;
    v19 = &v29;
    v20 = providerCopy;
    v29 = v20;
    v30 = v15;
    v21 = [v20 loadObjectOfClass:CKPostSharingContextClass completionHandler:v28];

LABEL_8:
    goto LABEL_9;
  }

  v22 = get_CKCloudKitPreShareType();
  v23 = [providerCopy hasItemConformingToTypeIdentifier:v22];

  if (v23)
  {
    CKPreSharingContextClass = getCKPreSharingContextClass();
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_167;
    v26[3] = &unk_1E788E390;
    v19 = &v27;
    v27 = v15;
    v25 = [providerCopy loadObjectOfClass:CKPreSharingContextClass completionHandler:v26];
    goto LABEL_8;
  }

LABEL_9:
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Cksharingconte.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v5 = v3;
    v6 = [v5 share];
    v7 = [v5 containerSetupInfo];
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = gelato_sharing_log(isKindOfClass);
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CollaborationLoadCKShareItemProvider", "", v11, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  v8 = share_sheet_log(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165_cold_1();
  }

  if ((*(a1 + 48) & 1) != 0 || (v9 = *(a1 + 32), get_CKCloudKitPreShareType(), v10 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = [v9 hasItemConformingToTypeIdentifier:v10], v10, !v9))
  {
LABEL_7:
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    CKPreSharingContextClass = getCKPreSharingContextClass();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166;
    v14[3] = &unk_1E788E390;
    v15 = *(a1 + 40);
    v13 = [v11 loadObjectOfClass:CKPreSharingContextClass completionHandler:v14];
  }
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = share_sheet_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_167(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = share_sheet_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)_loadCKShareWithMetadataForItemProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v7 = gelato_sharing_log(handlerCopy);
  v8 = os_signpost_id_make_with_pointer(v7, providerCopy);

  v10 = gelato_sharing_log(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationLoadCKShareWithMetadataForItemProvider", "", buf, 2u);
  }

  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __86__SFCollaborationUtilities__loadCKShareWithMetadataForItemProvider_completionHandler___block_invoke;
  v23 = &unk_1E788E340;
  v24 = handlerCopy;
  v25 = v8;
  v12 = handlerCopy;
  v13 = _Block_copy(&v20);
  v14 = get_CKCloudKitPostShareType();
  v15 = [providerCopy hasItemConformingToTypeIdentifier:{v14, v20, v21, v22, v23}];

  if (v15)
  {
    CKPostSharingContextClass = getCKPostSharingContextClass();
LABEL_8:
    v19 = [providerCopy loadObjectOfClass:CKPostSharingContextClass completionHandler:v13];
    goto LABEL_9;
  }

  v17 = get_CKCloudKitPreShareType();
  v18 = [providerCopy hasItemConformingToTypeIdentifier:v17];

  if (v18)
  {
    CKPostSharingContextClass = getCKPreSharingContextClass();
    goto LABEL_8;
  }

LABEL_9:
}

void __86__SFCollaborationUtilities__loadCKShareWithMetadataForItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = share_sheet_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165_cold_1();
    }
  }

  NSClassFromString(&cfstr_Cksharingconte.isa);
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v10 = v5;
    v11 = [v10 share];
    v12 = [v10 containerSetupInfo];
    v13 = [v10 allowedOptions];

    v14 = [v13 shareOptions];
  }

  else
  {
    v14 = 0;
    v12 = 0;
    v11 = 0;
  }

  v15 = gelato_sharing_log(isKindOfClass);
  v16 = v15;
  v17 = *(a1 + 40);
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *v18 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v16, OS_SIGNPOST_INTERVAL_END, v17, "CollaborationLoadCKShareWithMetadataForItemProvider", "", v18, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)loadCKContainerForItemProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v7 = get_CKCloudKitContainerSetupInfoTypeSymbolLoc_ptr;
  v29 = get_CKCloudKitContainerSetupInfoTypeSymbolLoc_ptr;
  if (!get_CKCloudKitContainerSetupInfoTypeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __get_CKCloudKitContainerSetupInfoTypeSymbolLoc_block_invoke;
    v24 = &unk_1E788A938;
    v25 = &v26;
    v8 = CloudKitLibrary_0();
    v27[3] = dlsym(v8, "_CKCloudKitContainerSetupInfoType");
    get_CKCloudKitContainerSetupInfoTypeSymbolLoc_ptr = *(v25[1] + 24);
    v7 = v27[3];
  }

  _Block_object_dispose(&v26, 8);
  if (!v7)
  {
    +[SFCollaborationUtilities loadCKContainerForItemProvider:completionHandler:];
  }

  v9 = [providerCopy hasItemConformingToTypeIdentifier:*v7];
  if (v9)
  {
    v10 = gelato_sharing_log(v9);
    v11 = os_signpost_id_make_with_pointer(v10, providerCopy);

    v13 = gelato_sharing_log(v12);
    v14 = v13;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CollaborationLoadCKContainerForItemProvider", "", buf, 2u);
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v15 = getCKContainerSetupInfoClass_softClass_0;
    v29 = getCKContainerSetupInfoClass_softClass_0;
    if (!getCKContainerSetupInfoClass_softClass_0)
    {
      *buf = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __getCKContainerSetupInfoClass_block_invoke_0;
      v24 = &unk_1E788A938;
      v25 = &v26;
      __getCKContainerSetupInfoClass_block_invoke_0(buf);
      v15 = v27[3];
    }

    v16 = v15;
    _Block_object_dispose(&v26, 8);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __77__SFCollaborationUtilities_loadCKContainerForItemProvider_completionHandler___block_invoke;
    v18[3] = &unk_1E788E340;
    v20 = v11;
    v19 = handlerCopy;
    v17 = [providerCopy loadObjectOfClass:v15 completionHandler:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __77__SFCollaborationUtilities_loadCKContainerForItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationLoadCKContainerForItemProvider", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (BOOL)isServiceManateeCKShareItemProvider:(id)provider
{
  providerCopy = provider;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v4 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SFCollaborationUtilities_isServiceManateeCKShareItemProvider___block_invoke;
  v9[3] = &unk_1E788E3E0;
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [SFCollaborationUtilities loadCKContainerForItemProvider:providerCopy completionHandler:v9];
  v6 = dispatch_time(0, 200000000);
  dispatch_semaphore_wait(v5, v6);
  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

intptr_t __64__SFCollaborationUtilities_isServiceManateeCKShareItemProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 containerOptions];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isServiceManatee];

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

+ (BOOL)isCollaborationItemPrivateShare:(id)share
{
  options = [share options];
  if ([options count])
  {
    v4 = soft_CKSharingAccessTypeFromOptionsGroups(options) == 1;
  }

  else
  {
    v5 = share_sheet_log(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isCollaborationItemPrivateShare:];
    }

    v4 = 0;
  }

  return v4;
}

+ (id)createLinkMetadataWithCKShareItemProvider:(id)provider
{
  providerCopy = provider;
  if ([self isPostCKShareItemProvider:providerCopy])
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__7;
    v28 = __Block_byref_object_dispose__7;
    v29 = 0;
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__7;
    v22 = __Block_byref_object_dispose__7;
    v23 = 0;
    v5 = dispatch_semaphore_create(0);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __70__SFCollaborationUtilities_createLinkMetadataWithCKShareItemProvider___block_invoke;
    v14[3] = &unk_1E788E408;
    v16 = &v24;
    v17 = &v18;
    v6 = v5;
    v15 = v6;
    [self loadCKShareItemProvider:providerCopy onlyPostShare:1 completionHandler:v14];
    v7 = dispatch_time(0, 5000000000);
    v8 = dispatch_semaphore_wait(v6, v7);
    v9 = v25[5];
    if (v9)
    {
      v10 = [SFCollaborationUtilities createLinkMetadataWithCKShare:v9 containerSetupInfo:v19[5]];
    }

    else
    {
      v11 = share_sheet_log(v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "timed out to load post CKShare to provide metadata.", v13, 2u);
      }

      v10 = 0;
    }

    _Block_object_dispose(&v18, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __70__SFCollaborationUtilities_createLinkMetadataWithCKShareItemProvider___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)createLinkMetadataWithCKShare:(id)share containerSetupInfo:(id)info
{
  v50 = *MEMORY[0x1E69E9840];
  shareCopy = share;
  infoCopy = info;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v7 = getLPiCloudSharingMetadataClass_softClass;
  v46 = getLPiCloudSharingMetadataClass_softClass;
  if (!getLPiCloudSharingMetadataClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getLPiCloudSharingMetadataClass_block_invoke;
    v48 = &unk_1E788A938;
    v49 = &v43;
    __getLPiCloudSharingMetadataClass_block_invoke(buf);
    v7 = v44[3];
  }

  v8 = v7;
  _Block_object_dispose(&v43, 8);
  v9 = objc_alloc_init(v7);
  v10 = getCKShareTitleKey(v9);
  v11 = [shareCopy objectForKeyedSubscript:{v10, v43}];
  [v9 setTitle:v11];

  containerOptions = [infoCopy containerOptions];
  applicationBundleIdentifierOverrideForContainerAccess = [containerOptions applicationBundleIdentifierOverrideForContainerAccess];

  if ([applicationBundleIdentifierOverrideForContainerAccess length])
  {
    v14 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:applicationBundleIdentifierOverrideForContainerAccess allowPlaceholder:1 error:0];
    v15 = [v14 URL];

    if (v15)
    {
      v17 = MEMORY[0x1E696AAE8];
      v18 = [v14 URL];
      v19 = [v17 bundleWithURL:v18];

      if (v19)
      {
        infoDictionary = [v19 infoDictionary];
        v22 = [infoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
        v23 = share_sheet_log([v9 setApplication:v22]);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v22;
          *&buf[12] = 2112;
          *&buf[14] = applicationBundleIdentifierOverrideForContainerAccess;
          _os_log_impl(&dword_1A9662000, v23, OS_LOG_TYPE_DEFAULT, "Setting application to:%@ for bundleIdentifier: %@", buf, 0x16u);
        }

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      v24 = share_sheet_log(v16);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        +[SFCollaborationUtilities createLinkMetadataWithCKShare:containerSetupInfo:];
      }
    }

    v19 = share_sheet_log(v20);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities createLinkMetadataWithCKShare:v14 containerSetupInfo:?];
    }

    goto LABEL_16;
  }

  v14 = share_sheet_log(0);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[SFCollaborationUtilities createLinkMetadataWithCKShare:containerSetupInfo:];
  }

LABEL_17:

  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v25 = getCKShareThumbnailImageDataKeySymbolLoc_ptr;
  v46 = getCKShareThumbnailImageDataKeySymbolLoc_ptr;
  if (!getCKShareThumbnailImageDataKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getCKShareThumbnailImageDataKeySymbolLoc_block_invoke;
    v48 = &unk_1E788A938;
    v49 = &v43;
    v26 = CloudKitLibrary_0();
    v27 = dlsym(v26, "CKShareThumbnailImageDataKey");
    *(v49[1] + 24) = v27;
    getCKShareThumbnailImageDataKeySymbolLoc_ptr = *(v49[1] + 24);
    v25 = v44[3];
  }

  _Block_object_dispose(&v43, 8);
  if (!v25)
  {
    +[SFCollaborationUtilities createLinkMetadataWithCKShare:containerSetupInfo:];
  }

  v28 = [shareCopy objectForKeyedSubscript:{*v25, v43}];
  if (v28)
  {
    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v29 = getLPImageClass_softClass;
    v46 = getLPImageClass_softClass;
    if (!getLPImageClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getLPImageClass_block_invoke;
      v48 = &unk_1E788A938;
      v49 = &v43;
      __getLPImageClass_block_invoke(buf);
      v29 = v44[3];
    }

    v30 = v29;
    _Block_object_dispose(&v43, 8);
    v31 = [v29 alloc];
    v32 = [v31 initWithData:v28 MIMEType:{@"image/png", v43}];
    [v9 setIcon:v32];
LABEL_24:

    goto LABEL_25;
  }

  v41 = share_sheet_log(0);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = applicationBundleIdentifierOverrideForContainerAccess;
    _os_log_impl(&dword_1A9662000, v41, OS_LOG_TYPE_DEFAULT, "Falling back to using App Icon for bundleIdentifier:%@", buf, 0xCu);
  }

  if (![applicationBundleIdentifierOverrideForContainerAccess length])
  {
    v32 = share_sheet_log(0);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities createLinkMetadataWithCKShare:containerSetupInfo:];
    }

    goto LABEL_24;
  }

  v42 = [applicationBundleIdentifierOverrideForContainerAccess containsString:@"com.apple."];
  if (v42)
  {
    v32 = share_sheet_log(v42);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = applicationBundleIdentifierOverrideForContainerAccess;
      _os_log_impl(&dword_1A9662000, v32, OS_LOG_TYPE_DEFAULT, "Not defaulting an icon for %@. Please file a radar!", buf, 0xCu);
    }

    goto LABEL_24;
  }

LABEL_25:
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v33 = getLPSharedObjectMetadataClass_softClass;
  v46 = getLPSharedObjectMetadataClass_softClass;
  if (!getLPSharedObjectMetadataClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getLPSharedObjectMetadataClass_block_invoke;
    v48 = &unk_1E788A938;
    v49 = &v43;
    __getLPSharedObjectMetadataClass_block_invoke(buf);
    v33 = v44[3];
  }

  v34 = v33;
  _Block_object_dispose(&v43, 8);
  v35 = objc_alloc_init(v33);
  [v35 setSpecialization:{v9, v43}];
  v43 = 0;
  v44 = &v43;
  v45 = 0x2050000000;
  v36 = getLPLinkMetadataClass_softClass;
  v46 = getLPLinkMetadataClass_softClass;
  if (!getLPLinkMetadataClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getLPLinkMetadataClass_block_invoke;
    v48 = &unk_1E788A938;
    v49 = &v43;
    __getLPLinkMetadataClass_block_invoke(buf);
    v36 = v44[3];
  }

  v37 = v36;
  _Block_object_dispose(&v43, 8);
  v38 = objc_alloc_init(v36);
  v39 = [shareCopy URL];
  [v38 setOriginalURL:v39];

  [v38 setSpecialization:v35];

  return v38;
}

+ (id)optionsFromCKShare:(id)share previousCKOptions:(id)options newCKOptions:(id *)kOptions
{
  optionsCopy = options;
  shareCopy = share;
  v9 = [getCKAllowedSharingOptionsClass() resolvedOptionsFromOptions:optionsCopy forExistingShare:shareCopy];

  if (kOptions)
  {
    v10 = v9;
    *kOptions = v9;
  }

  shareOptions = [v9 shareOptions];

  return shareOptions;
}

+ (BOOL)shareSupportsRequestAccess:(id)access options:(id)options
{
  accessCopy = access;
  optionsCopy = options;
  if ([accessCopy allowsAccessRequests])
  {
    v7 = 1;
  }

  else if ([optionsCopy count])
  {
    v8 = optionsCopy;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v9 = getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_ptr;
    v15 = getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_ptr;
    if (!getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_ptr)
    {
      v10 = CloudKitLibrary_0();
      v13[3] = dlsym(v10, "CKSharingAllowAccessRequestsFromOptionsGroups");
      getCKSharingAllowAccessRequestsFromOptionsGroupsSymbolLoc_ptr = v13[3];
      v9 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v9)
    {
      +[SFCollaborationUtilities shareSupportsRequestAccess:options:];
    }

    v7 = v9(v8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)fileShareDictionaryFromFileURLItems:(id)items
{
  v20 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = gelato_sharing_log(itemsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v19 = itemsCopy;
    _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_INFO, "Creating dictionary from fileURLs: %@", buf, 0xCu);
  }

  if ([itemsCopy count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([itemsCopy count])
    {
      [dictionary setObject:itemsCopy forKeyedSubscript:@"fileURLs"];
      array = [MEMORY[0x1E695DF70] array];
      [dictionary setObject:array forKeyedSubscript:@"files"];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = itemsCopy;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          v11 = 0;
          do
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            __64__SFCollaborationUtilities_fileShareDictionaryFromFileURLItems___block_invoke(v8, *(*(&v13 + 1) + 8 * v11++), array);
          }

          while (v9 != v11);
          v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
          v9 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    dictionary = 0;
  }

  return dictionary;
}

void __64__SFCollaborationUtilities_fileShareDictionaryFromFileURLItems___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v11 = 0;
  v6 = [v4 bookmarkDataWithOptions:0 includingResourceValuesForKeys:0 relativeToURL:0 error:&v11];
  v7 = v11;
  v8 = v7;
  if (v6)
  {
    [v5 addObject:v6];
  }

  else
  {
    v9 = gelato_sharing_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [v4 absoluteString];
      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1A9662000, v9, OS_LOG_TYPE_INFO, "Failed to create bookmark data for URL: %@ %@", buf, 0x16u);
    }
  }
}

+ (BOOL)isThirdPartyFileProviderBackedURL:(id)l
{
  lCopy = l;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v4 = getFPProviderDomainClass_softClass;
  v19 = getFPProviderDomainClass_softClass;
  if (!getFPProviderDomainClass_softClass)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getFPProviderDomainClass_block_invoke;
    v15[3] = &unk_1E788A938;
    v15[4] = &v16;
    __getFPProviderDomainClass_block_invoke(v15);
    v4 = v17[3];
  }

  v5 = v4;
  _Block_object_dispose(&v16, 8);
  v14 = 0;
  v6 = [v4 providerDomainForURL:lCopy error:&v14];
  v7 = v14;
  v8 = v7;
  if (!v6)
  {
    v12 = share_sheet_log(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isThirdPartyFileProviderBackedURL:];
    }

    goto LABEL_9;
  }

  providerID = [v6 providerID];
  v10 = [providerID isEqualToString:@"com.apple.FileProvider.LocalStorage"];

  if (v10)
  {
LABEL_9:
    LOBYTE(v11) = 0;
    goto LABEL_10;
  }

  v11 = [v6 isiCloudDriveProvider] ^ 1;
LABEL_10:

  return v11;
}

+ (BOOL)isSharedFileURL:(id)l isLocalStorageFileURL:(BOOL *)rL isiCloudDriveFileURL:(BOOL *)uRL isInSharedFolder:(BOOL *)folder
{
  lCopy = l;
  defaultManager = [getFPItemManagerClass() defaultManager];
  v20 = 0;
  v11 = [defaultManager itemForURL:lCopy error:&v20];
  v12 = v20;

  if (!v11)
  {
    v14 = share_sheet_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isSharedFileURL:isLocalStorageFileURL:isiCloudDriveFileURL:isInSharedFolder:];
    }
  }

  if (rL)
  {
    *rL = v11 != 0;
  }

  isShared = [v11 isShared];
  if (uRL)
  {
    itemID = [v11 itemID];
    providerID = [itemID providerID];
    *uRL = [providerID fp_isiCloudDriveIdentifier];
  }

  if (folder)
  {
    if (isShared)
    {
      v18 = [v11 isTopLevelSharedItem] ^ 1;
    }

    else
    {
      v18 = 0;
    }

    *folder = v18;
  }

  return isShared;
}

+ (id)fileCollaborationItemFromActivityItems:(id)items
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  itemsCopy = items;
  v4 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          if (![v9 type])
          {
            goto LABEL_12;
          }
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = 0;
LABEL_12:

  return v9;
}

+ (id)urlFromActivityItem:(id)item allowsLoading:(BOOL)loading
{
  v15 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  if (!itemCopy)
  {
LABEL_15:
    v7 = 0;
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shareItemURL = itemCopy;
LABEL_4:
    v7 = shareItemURL;
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0 || loading)
      {
        shareItemURL = [itemCopy shareItemURL];
        goto LABEL_4;
      }

      v11 = share_sheet_log(isKindOfClass);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = itemCopy;
        _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Activity item %@ is an item provider, skipping load for URL since we only want placeholder values", &v13, 0xCu);
      }
    }

    goto LABEL_15;
  }

  v8 = [MEMORY[0x1E695DFF8] URLWithString:itemCopy];
  v9 = v8;
  if (v8 && SFIsStringURLSafelyConvertible(v8))
  {
    v7 = v9;
  }

  else
  {
    v7 = 0;
  }

LABEL_18:

  return v7;
}

+ (id)createItemProviderForFileURL:(id)l
{
  lCopy = l;
  v4 = gelato_sharing_log(lCopy);
  v5 = os_signpost_id_make_with_pointer(v4, lCopy);

  v7 = gelato_sharing_log(v6);
  v8 = v7;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v5, "CollaborationCreateItemProviderForFileURL", "", buf, 2u);
  }

  pathExtension = [lCopy pathExtension];
  if (!pathExtension || (PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x1E6982C48], pathExtension, 0)) == 0)
  {
    PreferredIdentifierForTag = [*MEMORY[0x1E6982D60] identifier];
  }

  v11 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__SFCollaborationUtilities_createItemProviderForFileURL___block_invoke;
  v14[3] = &unk_1E788E430;
  v15 = lCopy;
  v16 = v5;
  v12 = lCopy;
  [v11 registerFileRepresentationForTypeIdentifier:PreferredIdentifierForTag fileOptions:1 visibility:0 loadHandler:v14];

  return v11;
}

uint64_t __57__SFCollaborationUtilities_createItemProviderForFileURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationCreateItemProviderForFileURL", "", v8, 2u);
  }

  (*(v3 + 2))(v3, *(a1 + 32), 0, 0);
  return 0;
}

+ (void)requestSharedURLForCollaborationItem:(id)item collaborationService:(id)service completionHandler:(id)handler
{
  itemCopy = item;
  serviceCopy = service;
  handlerCopy = handler;
  v11 = gelato_sharing_log(handlerCopy);
  v12 = os_signpost_id_make_with_pointer(v11, itemCopy);

  v14 = gelato_sharing_log(v13);
  v15 = v14;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v12, "CollaborationRequestSharedURLForCollaborationItem", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E458;
  v52 = v12;
  v16 = handlerCopy;
  v51 = v16;
  v17 = _Block_copy(aBlock);
  if (![itemCopy type])
  {
    itemProvider = itemCopy;
    fileURL = [itemProvider fileURL];
    isiCloudDrive = [itemProvider isiCloudDrive];
    if (isiCloudDrive)
    {
      if (serviceCopy)
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_203;
        v47[3] = &unk_1E788E4A8;
        v48 = serviceCopy;
        v49 = v17;
        [self createCollaborationRequestWithCollaborationItem:itemProvider activityType:@"com.apple.UIKit.activity.CollaborationCopyLink" deviceScreenScale:v47 completionHandler:0.0];
      }

      else
      {
        v38 = share_sheet_log(isiCloudDrive);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          +[SFCollaborationUtilities requestSharedURLForCollaborationItem:collaborationService:completionHandler:];
        }

        (*(v17 + 2))(v17, 0, 0);
      }
    }

    else
    {
      v58 = 0;
      v59 = &v58;
      v60 = 0x2050000000;
      v26 = get_SWStartCollaborationActionClass_softClass;
      v61 = get_SWStartCollaborationActionClass_softClass;
      if (!get_SWStartCollaborationActionClass_softClass)
      {
        *buf = MEMORY[0x1E69E9820];
        v54 = 3221225472;
        v55 = __get_SWStartCollaborationActionClass_block_invoke;
        v56 = &unk_1E788A938;
        v57 = &v58;
        __get_SWStartCollaborationActionClass_block_invoke(buf);
        v26 = v59[3];
      }

      v27 = v26;
      _Block_object_dispose(&v58, 8);
      metadata = [itemProvider metadata];
      v29 = [v26 actionWithMetadata:metadata];

      if (SharedWithYouCoreLibrary())
      {
        v30 = SharedWithYouCoreLibrary();
        if (dlsym(v30, "SWPerformActionForDocumentURL"))
        {
          v45[0] = MEMORY[0x1E69E9820];
          v45[1] = 3221225472;
          v45[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_207;
          v45[3] = &unk_1E788E4D0;
          v46 = v17;
          v39 = fileURL;
          v31 = v29;
          v32 = v45;
          v58 = 0;
          v59 = &v58;
          v60 = 0x2020000000;
          v33 = getSWPerformActionForDocumentURLSymbolLoc_ptr;
          v61 = getSWPerformActionForDocumentURLSymbolLoc_ptr;
          if (!getSWPerformActionForDocumentURLSymbolLoc_ptr)
          {
            *buf = MEMORY[0x1E69E9820];
            v54 = 3221225472;
            v55 = __getSWPerformActionForDocumentURLSymbolLoc_block_invoke;
            v56 = &unk_1E788A938;
            v57 = &v58;
            v34 = SharedWithYouCoreLibrary();
            v35 = dlsym(v34, "SWPerformActionForDocumentURL");
            *(v57[1] + 24) = v35;
            getSWPerformActionForDocumentURLSymbolLoc_ptr = *(v57[1] + 24);
            v33 = v59[3];
          }

          _Block_object_dispose(&v58, 8);
          if (!v33)
          {
            +[SFCollaborationUtilities requestSharedURLForCollaborationItem:collaborationService:completionHandler:];
          }

          v33(v39, v31, v32);
        }
      }
    }

    goto LABEL_36;
  }

  if ([itemCopy type] == 1)
  {
    itemProvider = [itemCopy itemProvider];
    v19 = [SFCollaborationUtilities isPostCKShareItemProvider:itemProvider];
    if (v19)
    {
      if (serviceCopy && [itemCopy optionsChanged])
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_2_209;
        v42[3] = &unk_1E788E4A8;
        v43 = serviceCopy;
        v44 = v17;
        [self createCollaborationRequestWithCollaborationItem:itemCopy activityType:@"com.apple.UIKit.activity.CollaborationCopyLink" deviceScreenScale:v42 completionHandler:0.0];

        v20 = v43;
      }

      else
      {
        v40[0] = MEMORY[0x1E69E9820];
        v40[1] = 3221225472;
        v40[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_4;
        v40[3] = &unk_1E788E4F8;
        v41 = v17;
        [SFCollaborationUtilities loadCKShareItemProvider:itemProvider onlyPostShare:1 completionHandler:v40];
        v20 = v41;
      }
    }

    else
    {
      v36 = share_sheet_log(v19);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        +[SFCollaborationUtilities requestSharedURLForCollaborationItem:collaborationService:completionHandler:];
      }

      (*(v17 + 2))(v17, 0, 0);
    }

LABEL_36:

    goto LABEL_37;
  }

  type = [itemCopy type];
  if (type == 2)
  {
    cloudSharingResult = [itemCopy cloudSharingResult];
    sharingURL = [cloudSharingResult sharingURL];

    (*(v17 + 2))(v17, sharingURL, 0);
  }

  else
  {
    v37 = share_sheet_log(type);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities requestSharedURLForCollaborationItem:itemCopy collaborationService:? completionHandler:?];
    }

    (*(v17 + 2))(v17, 0, 0);
  }

LABEL_37:
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = gelato_sharing_log(v6);
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollaborationRequestSharedURLForCollaborationItem", "", v10, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_203(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_2;
  v4[3] = &unk_1E788E480;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 requestSharedURLForCollaborationRequest:a2 completionHandler:v4];
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 sharingURL];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_207(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v8 url];
  (*(v5 + 16))(v5, v7, v6);
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_2_209(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_3;
  v4[3] = &unk_1E788E480;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 requestSharedURLForCollaborationRequest:a2 completionHandler:v4];
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 sharingURL];
  v4 = [v3 error];

  (*(v2 + 16))(v2, v5, v4);
}

void __104__SFCollaborationUtilities_requestSharedURLForCollaborationItem_collaborationService_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 URL];
  (*(v2 + 16))(v2, v3, 0);
}

+ (void)findOriginatingSharedItemForSubitemURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  defaultManager = [getFPItemManagerClass() defaultManager];
  v21 = 0;
  v9 = [defaultManager itemForURL:lCopy error:&v21];
  v10 = v21;

  if (v9)
  {
    objc_initWeak(&location, self);
    defaultManager2 = [getFPItemManagerClass() defaultManager];
    itemID = [v9 itemID];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __85__SFCollaborationUtilities_findOriginatingSharedItemForSubitemURL_completionHandler___block_invoke;
    v15[3] = &unk_1E788E520;
    v16 = lCopy;
    v18 = handlerCopy;
    objc_copyWeak(&v19, &location);
    v17 = v9;
    [defaultManager2 fetchParentsForItemID:itemID recursively:1 completionHandler:v15];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = share_sheet_log(v11);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isSharedFileURL:isLocalStorageFileURL:isiCloudDriveFileURL:isInSharedFolder:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }
}

void __85__SFCollaborationUtilities_findOriginatingSharedItemForSubitemURL_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _findOriginatingSharedItemInParentItems:v5 forSubitem:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    v9 = share_sheet_log(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __85__SFCollaborationUtilities_findOriginatingSharedItemForSubitemURL_completionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (void)_findOriginatingSharedItemInParentItems:(id)items forSubitem:(id)subitem completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  subitemCopy = subitem;
  handlerCopy = handler;
  v10 = subitemCopy;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = [itemsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v22;
    v15 = v10;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ([v17 isShared])
        {
          v18 = v17;
          v19 = v15;
          v15 = v18;
        }

        else
        {
          fileURL = [v15 fileURL];
          v19 = v13;
          v13 = fileURL;
        }
      }

      v12 = [itemsCopy countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  else
  {
    v13 = 0;
    v15 = v10;
  }

  handlerCopy[2](handlerCopy, v13, 0);
}

+ (BOOL)hasiWorkSendCopyRepresentationForItemProvider:(id)provider
{
  providerCopy = provider;
  v4 = +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
  if (v4)
  {
    v5 = [providerCopy hasItemConformingToTypeIdentifier:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)loadiWorkCopyRepresentationURLForItemProvider:(id)provider completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  handlerCopy = handler;
  v7 = [SFCollaborationUtilities hasiWorkSendCopyRepresentationForItemProvider:providerCopy];
  if (v7)
  {
    v8 = gelato_sharing_log(v7);
    v9 = os_signpost_id_make_with_pointer(v8, providerCopy);

    v11 = gelato_sharing_log(v10);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SendCopyRepresentationLoadForItemProvider", "", buf, 2u);
    }

    v14 = share_sheet_log(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = providerCopy;
      _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "Loading send copy representation for item provider %@", buf, 0xCu);
    }

    v15 = +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke;
    v17[3] = &unk_1E788E570;
    v19 = v9;
    v18 = handlerCopy;
    v16 = [providerCopy loadInPlaceFileRepresentationForTypeIdentifier:v15 completionHandler:v17];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if ((a3 & 1) == 0)
    {
      v10 = share_sheet_log(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v7;
        _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Send copy representation was not loaded in place. Current URL: %@", buf, 0xCu);
      }
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211;
    v19[3] = &unk_1E788E548;
    v11 = v7;
    v13 = *(a1 + 32);
    v12 = *(a1 + 40);
    v20 = v11;
    v22 = v12;
    v21 = v13;
    [v11 coordinateReadingWithSaveToTempDir:1 options:8 completionHandler:v19];
  }

  else
  {
    v14 = share_sheet_log(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_cold_1();
    }

    v16 = gelato_sharing_log(v15);
    v17 = v16;
    v18 = *(a1 + 40);
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v17, OS_SIGNPOST_INTERVAL_END, v18, "SendCopyRepresentationLoadForItemProvider", "", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = v5;
  if (!v5)
  {
    v9 = share_sheet_log(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211_cold_1();
    }

    v8 = a1[4];
  }

  v10 = v8;
  v11 = share_sheet_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v10;
    _os_log_impl(&dword_1A9662000, v11, OS_LOG_TYPE_DEFAULT, "Loaded send copy representation at URL %@", &v16, 0xCu);
  }

  v13 = gelato_sharing_log(v12);
  v14 = v13;
  v15 = a1[6];
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v14, OS_SIGNPOST_INTERVAL_END, v15, "SendCopyRepresentationLoadForItemProvider", "", &v16, 2u);
  }

  (*(a1[5] + 16))();
}

+ (BOOL)isInPlaceFileOrURLItemProvider:(id)provider
{
  providerCopy = provider;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = providerCopy;
    v5 = [SFCollaborationUtilities isCKShareItemProvider:v4];
    v6 = [SFCollaborationUtilities isSWYActivityItemProvider:v4];
    v10 = 0;
    v7 = [v4 preferredContentTypeForSavingWithCanOpenInPlace:&v10];
    v8 = (v7 && (v10 & 1) != 0 || [v4 canLoadObjectOfClass:objc_opt_class()]) && !v5 && !v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NSString)_copyRepresentationTypeIdentifier
{
  v2 = _copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier;
  if (_copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier)
  {
    return [v2 copy];
  }

  if (SharedWithYouCoreLibrary())
  {
    v3 = SharedWithYouCoreLibrary();
    if (dlsym(v3, "SWCopyRepresentationTypeIdentifier"))
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v4 = getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr;
      v13 = getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr;
      if (!getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr)
      {
        v5 = SharedWithYouCoreLibrary();
        v11[3] = dlsym(v5, "SWCopyRepresentationTypeIdentifier");
        getSWCopyRepresentationTypeIdentifierSymbolLoc_ptr = v11[3];
        v4 = v11[3];
      }

      _Block_object_dispose(&v10, 8);
      if (!v4)
      {
        +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
      }

LABEL_13:
      objc_storeStrong(&_copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier, *v4);
      goto LABEL_14;
    }
  }

  if (SharedWithYouCoreLibrary())
  {
    v6 = SharedWithYouCoreLibrary();
    if (dlsym(v6, "UTCopyRepresentationTypeIdentifier"))
    {
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v4 = getUTCopyRepresentationTypeIdentifierSymbolLoc_ptr;
      v13 = getUTCopyRepresentationTypeIdentifierSymbolLoc_ptr;
      if (!getUTCopyRepresentationTypeIdentifierSymbolLoc_ptr)
      {
        v7 = SharedWithYouCoreLibrary();
        v11[3] = dlsym(v7, "UTCopyRepresentationTypeIdentifier");
        getUTCopyRepresentationTypeIdentifierSymbolLoc_ptr = v11[3];
        v4 = v11[3];
      }

      _Block_object_dispose(&v10, 8);
      if (!v4)
      {
        +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
      }

      goto LABEL_13;
    }
  }

LABEL_14:
  v2 = _copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier;
  if (!_copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier)
  {
    v8 = share_sheet_log(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities _copyRepresentationTypeIdentifier];
    }

    v2 = _copyRepresentationTypeIdentifier_copyRepresentationTypeIdentifier;
  }

  return [v2 copy];
}

+ (BOOL)isSWYActivityItemProvider:(id)provider
{
  providerCopy = provider;
  v4 = get_SWPendingCollaborationTypeIdentifier();
  v5 = [providerCopy hasItemConformingToTypeIdentifier:v4];

  return v5;
}

+ (void)_loadShareOptionsForSWYItemProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v7 = getUTCollaborationOptionsTypeIdentifier();
  v8 = [providerCopy hasItemConformingToTypeIdentifier:v7];

  if (v8)
  {
    v10 = gelato_sharing_log(v9);
    v11 = os_signpost_id_make_with_pointer(v10, providerCopy);

    v13 = gelato_sharing_log(v12);
    v14 = v13;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CollaborationLoadShareOptionsForSWYItemProvider", "", buf, 2u);
    }

    v15 = getUTCollaborationOptionsTypeIdentifier();
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke;
    v29[3] = &unk_1E788E598;
    v31 = v11;
    v30 = handlerCopy;
    [providerCopy loadItemForTypeIdentifier:v15 options:0 completionHandler:v29];

    v16 = v30;
LABEL_11:

    goto LABEL_15;
  }

  v17 = get_SWPendingCollaborationTypeIdentifier();
  v18 = [providerCopy hasItemConformingToTypeIdentifier:v17];

  if (v18)
  {
    v20 = gelato_sharing_log(v19);
    v21 = os_signpost_id_make_with_pointer(v20, providerCopy);

    v23 = gelato_sharing_log(v22);
    v24 = v23;
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v21, "CollaborationLoadShareOptionsForSWYItemProvider", "", buf, 2u);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_216;
    v26[3] = &unk_1E788E5C0;
    v28 = v21;
    v27 = handlerCopy;
    [SFCollaborationUtilities loadPendingCollaborationForItemProvider:providerCopy completionHandler:v26];
    v16 = v27;
    goto LABEL_11;
  }

  v25 = share_sheet_log(v19);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    +[SFCollaborationUtilities _loadShareOptionsForSWYItemProvider:completionHandler:];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
LABEL_15:
}

void __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (!v7)
  {
    v9 = share_sheet_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_cold_1();
    }
  }

  v10 = gelato_sharing_log(v7);
  v11 = v10;
  v12 = *(a1 + 40);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v11, OS_SIGNPOST_INTERVAL_END, v12, "CollaborationLoadShareOptionsForSWYItemProvider", "", v13, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_216(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 collaborationMetadata];
  v5 = [v4 defaultShareOptions];

  if (!v5)
  {
    v7 = share_sheet_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_216_cold_1(v3);
    }
  }

  v8 = gelato_sharing_log(v6);
  v9 = v8;
  v10 = *(a1 + 40);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v9, OS_SIGNPOST_INTERVAL_END, v10, "CollaborationLoadShareOptionsForSWYItemProvider", "", v11, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)loadSendCopyRepresentationIfNeededForItemProvider:(id)provider completion:(id)completion
{
  v46 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  completionCopy = completion;
  if (![SFCollaborationUtilities hasiWorkSendCopyRepresentationForItemProvider:providerCopy])
  {
    if ([SFCollaborationUtilities isCKShareItemProvider:providerCopy]|| [SFCollaborationUtilities isSWYActivityItemProvider:providerCopy])
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
      v8 = [registeredTypeIdentifiers countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v38;
        v11 = *MEMORY[0x1E6982F40];
        v12 = *MEMORY[0x1E6982E48];
LABEL_7:
        v13 = 0;
        while (1)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(registeredTypeIdentifiers);
          }

          v14 = [MEMORY[0x1E6982C40] typeWithIdentifier:*(*(&v37 + 1) + 8 * v13)];
          if ([v14 conformsToType:v11] & 1) != 0 || (objc_msgSend(v14, "conformsToType:", v12))
          {
            break;
          }

          if (v9 == ++v13)
          {
            v9 = [registeredTypeIdentifiers countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v9)
            {
              goto LABEL_7;
            }

            goto LABEL_14;
          }
        }

        if (!v14)
        {
          goto LABEL_19;
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_219;
        aBlock[3] = &unk_1E788E610;
        v16 = completionCopy;
        v36 = v16;
        v17 = _Block_copy(aBlock);
        if ([v14 conformsToType:v11])
        {
          if ([providerCopy canLoadObjectOfClass:objc_opt_class()])
          {
            v18 = objc_opt_class();
            v33[0] = MEMORY[0x1E69E9820];
            v33[1] = 3221225472;
            v33[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_222;
            v33[3] = &unk_1E788E638;
            v19 = &v34;
            v34 = v17;
            v20 = v33;
          }

          else
          {
            if (![providerCopy canLoadObjectOfClass:objc_opt_class()])
            {
              identifier = [v14 identifier];
              v29[0] = MEMORY[0x1E69E9820];
              v29[1] = 3221225472;
              v29[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_3;
              v29[3] = &unk_1E788E688;
              v19 = &v30;
              v30 = v17;
              [providerCopy loadItemForTypeIdentifier:identifier options:0 completionHandler:v29];

              goto LABEL_28;
            }

            v18 = objc_opt_class();
            v31[0] = MEMORY[0x1E69E9820];
            v31[1] = 3221225472;
            v31[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_2;
            v31[3] = &unk_1E788E660;
            v19 = &v32;
            v32 = v17;
            v20 = v31;
          }

          v24 = [providerCopy loadObjectOfClass:v18 completionHandler:v20];
        }

        else
        {
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_4;
          v26[3] = &unk_1E788E6D8;
          v19 = &v27;
          v27 = v17;
          v28 = v16;
          v23 = [providerCopy loadFileRepresentationForContentType:v14 openInPlace:0 completionHandler:v26];
        }

LABEL_28:

        goto LABEL_29;
      }

LABEL_14:

LABEL_19:
      v21 = share_sheet_log(v15);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        registeredTypeIdentifiers2 = [providerCopy registeredTypeIdentifiers];
        *buf = 138412290;
        v44 = registeredTypeIdentifiers2;
        _os_log_impl(&dword_1A9662000, v21, OS_LOG_TYPE_DEFAULT, "Could not find send copy type in item provider with type identifiers: %@", buf, 0xCu);
      }
    }

    (*(completionCopy + 2))(completionCopy, 0);
    goto LABEL_29;
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke;
  v41[3] = &unk_1E788E5E8;
  v42 = completionCopy;
  [SFCollaborationUtilities loadiWorkCopyRepresentationURLForItemProvider:providerCopy completionHandler:v41];

LABEL_29:
}

void __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_219(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = share_sheet_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_219_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_4(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_5;
    v7[3] = &unk_1E788E6B0;
    v8 = v5;
    v9 = *(a1 + 40);
    [v8 coordinateReadingWithSaveToTempDir:a3 ^ 1u completionHandler:v7];
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v8 = share_sheet_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)loadSendCopyRepresentationIfNeededForActivityItems:(id)items completion:(id)completion
{
  completionCopy = completion;
  itemsCopy = items;
  v7 = [itemsCopy mutableCopy];
  v8 = MEMORY[0x1E695DF70];
  v9 = [itemsCopy count];

  v10 = [v8 arrayWithCapacity:v9];
  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v12 = dispatch_queue_create("com.apple.sharing.collaborationUtilities.loadItems", v11);

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __90__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForActivityItems_completion___block_invoke;
  v17[3] = &unk_1E788B750;
  v18 = v7;
  v19 = v10;
  v20 = v12;
  v21 = completionCopy;
  v13 = completionCopy;
  v14 = v12;
  v15 = v10;
  v16 = v7;
  dispatch_async(v14, v17);
}

+ (void)_processRemainingActivityItems:(id)items toFinalActivityItems:(id)activityItems onQueue:(id)queue completion:(id)completion
{
  itemsCopy = items;
  activityItemsCopy = activityItems;
  queueCopy = queue;
  completionCopy = completion;
  firstObject = [itemsCopy firstObject];
  if (firstObject)
  {
    v14 = firstObject;
    while (1)
    {
      [itemsCopy removeObjectAtIndex:0];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      [activityItemsCopy addObject:v14];
      firstObject2 = [itemsCopy firstObject];

      v14 = firstObject2;
      if (!firstObject2)
      {
        goto LABEL_5;
      }
    }

    v17 = v14;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke;
    v22[3] = &unk_1E788E728;
    v23 = queueCopy;
    v24 = activityItemsCopy;
    v25 = v17;
    v26 = itemsCopy;
    v27 = completionCopy;
    v18 = completionCopy;
    v16 = activityItemsCopy;
    [SFCollaborationUtilities loadSendCopyRepresentationIfNeededForItemProvider:v17 completion:v22];
  }

  else
  {
LABEL_5:
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke_228;
    block[3] = &unk_1E788B318;
    v20 = activityItemsCopy;
    v21 = completionCopy;
    v16 = completionCopy;
    v17 = activityItemsCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v18 = v21;
  }
}

void __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke_2;
  v12[3] = &unk_1E788E700;
  v13 = v3;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[4];
  *&v9 = v7;
  *(&v9 + 1) = v8;
  *&v10 = v5;
  *(&v10 + 1) = v6;
  v14 = v10;
  v15 = v9;
  v16 = a1[8];
  v11 = v3;
  dispatch_async(v4, v12);
}

uint64_t __99__SFCollaborationUtilities__processRemainingActivityItems_toFinalActivityItems_onQueue_completion___block_invoke_2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    [v2 addObject:?];
  }

  else
  {
    v4 = share_sheet_log([v2 addObject:a1[6]]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = a1[6];
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_1A9662000, v4, OS_LOG_TYPE_INFO, "Item provider %@ does not contain a separate send copy representation. Passing in the provider unchanged", &v7, 0xCu);
    }
  }

  return [SFCollaborationUtilities _processRemainingActivityItems:a1[7] toFinalActivityItems:a1[5] onQueue:a1[8] completion:a1[9]];
}

+ (void)loadShareOptionsForItemProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  if ([SFCollaborationUtilities isSWYActivityItemProvider:providerCopy])
  {
    [SFCollaborationUtilities _loadShareOptionsForSWYItemProvider:providerCopy completionHandler:handlerCopy];
  }

  else
  {
    v7 = [SFCollaborationUtilities isCKShareItemProvider:providerCopy];
    if (v7)
    {
      [SFCollaborationUtilities _loadShareOptionsForCKShareItemProvider:providerCopy completionHandler:handlerCopy];
    }

    else
    {
      v8 = share_sheet_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[SFCollaborationUtilities loadShareOptionsForItemProvider:completionHandler:];
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }
  }
}

+ (BOOL)isHeroCollaborationActivityType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"com.apple.UIKit.activity.Message"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [typeCopy isEqualToString:@"com.apple.InCallService.ShareExtension"];
  }

  return v4;
}

+ (void)loadMetadataForItemProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v7 = [SFCollaborationUtilities isCKShareItemProvider:providerCopy];
  if (v7)
  {
    v8 = gelato_sharing_log(v7);
    v9 = os_signpost_id_make_with_pointer(v8, providerCopy);

    v11 = gelato_sharing_log(v10);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CollaborationLoadMetadataForItemProvider", "", buf, 2u);
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke;
    v14[3] = &unk_1E788E750;
    v16 = &v19;
    v17 = v9;
    v15 = handlerCopy;
    [SFCollaborationUtilities _loadCKShareWithMetadataForItemProvider:providerCopy completionHandler:v14];
  }

  else
  {
    v13 = share_sheet_log(v7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities loadMetadataForItemProvider:completionHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, v20[5]);
  }

  _Block_object_dispose(&v19, 8);
}

void __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 URL];
  v11 = [v10 absoluteString];

  v12 = [v7 URL];
  v13 = [v12 fragment];

  if (v13 && ([MEMORY[0x1E696AEC0] stringWithFormat:@"#%@", v13], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "stringByReplacingOccurrencesOfString:withString:", v15, &stru_1F1D30528), v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
  {
    v17 = getCKShareTitleKey(v14);
    v18 = [v7 objectForKeyedSubscript:v17];

    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v19 = getCKShareTypeKeySymbolLoc_ptr;
    v46 = getCKShareTypeKeySymbolLoc_ptr;
    if (!getCKShareTypeKeySymbolLoc_ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __getCKShareTypeKeySymbolLoc_block_invoke;
      v41 = &unk_1E788A938;
      v42 = &v43;
      v20 = CloudKitLibrary_0();
      v44[3] = dlsym(v20, "CKShareTypeKey");
      getCKShareTypeKeySymbolLoc_ptr = *(v42[1] + 24);
      v19 = v44[3];
    }

    _Block_object_dispose(&v43, 8);
    if (!v19)
    {
      __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_2();
    }

    v36 = v18;
    v37 = v8;
    v21 = [v7 objectForKeyedSubscript:*v19];
    if (v21)
    {
      v22 = [MEMORY[0x1E6982C40] typeWithIdentifier:v21];
    }

    else
    {
      v22 = 0;
    }

    v23 = [v9 optionsGroups];
    v24 = [v23 count];

    if (!v24)
    {
      v26 = share_sheet_log(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_1();
      }
    }

    v43 = 0;
    v44 = &v43;
    v45 = 0x2050000000;
    v27 = get_SWCollaborationMetadataClass_softClass;
    v46 = get_SWCollaborationMetadataClass_softClass;
    if (!get_SWCollaborationMetadataClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v39 = 3221225472;
      v40 = __get_SWCollaborationMetadataClass_block_invoke;
      v41 = &unk_1E788A938;
      v42 = &v43;
      __get_SWCollaborationMetadataClass_block_invoke(buf);
      v27 = v44[3];
    }

    v28 = v27;
    _Block_object_dispose(&v43, 8);
    v29 = [[v27 alloc] initWithCollaborationIdentifier:v16 title:v36 defaultShareOptions:v9 creationDate:0 contentType:v22 initiatorHandle:0 initiatorNameComponents:0];
    v30 = *(a1[5] + 8);
    v31 = *(v30 + 40);
    *(v30 + 40) = v29;

    v8 = v37;
  }

  else
  {
    v16 = share_sheet_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_3(v7);
    }
  }

  v33 = gelato_sharing_log(v32);
  v34 = v33;
  v35 = a1[6];
  if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v34, OS_SIGNPOST_INTERVAL_END, v35, "CollaborationLoadMetadataForItemProvider", "", buf, 2u);
  }

  (*(a1[4] + 16))();
}

+ (void)loadPendingCollaborationForItemProvider:(id)provider completionHandler:(id)handler
{
  providerCopy = provider;
  handlerCopy = handler;
  v7 = [SFCollaborationUtilities isSWYActivityItemProvider:providerCopy];
  if (v7)
  {
    v8 = gelato_sharing_log(v7);
    v9 = os_signpost_id_make_with_pointer(v8, providerCopy);

    v11 = gelato_sharing_log(v10);
    v12 = v11;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A9662000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v9, "CollaborationLoadPendingForItemProvider", "", buf, 2u);
    }

    v13 = get_SWPendingCollaborationTypeIdentifier();
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __86__SFCollaborationUtilities_loadPendingCollaborationForItemProvider_completionHandler___block_invoke;
    v14[3] = &unk_1E788E778;
    v16 = v9;
    v15 = handlerCopy;
    [providerCopy loadItemForTypeIdentifier:v13 options:0 completionHandler:v14];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __86__SFCollaborationUtilities_loadPendingCollaborationForItemProvider_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = gelato_sharing_log(v6);
  v8 = v7;
  v9 = *(a1 + 40);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollaborationLoadPendingForItemProvider", "", &v13, 2u);
  }

  v11 = share_sheet_log(v10);
  v12 = v11;
  if (v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "Loaded pending collaboration: %@", &v13, 0xCu);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    __86__SFCollaborationUtilities_loadPendingCollaborationForItemProvider_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)loadMetadataForFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  if (!lCopy)
  {
    [SFCollaborationUtilities loadMetadataForFileURL:a2 completionHandler:self];
  }

  v9 = [[SFCollaborationFileMetadataLoader alloc] initWithFileURL:lCopy];
  v10 = gelato_sharing_log(v9);
  v11 = os_signpost_id_make_with_pointer(v10, lCopy);

  v13 = gelato_sharing_log(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v11, "CollaborationLoadMetadataForFileURL", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__SFCollaborationUtilities_loadMetadataForFileURL_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E7A0;
  v20 = handlerCopy;
  v21 = v11;
  v19 = v9;
  v15 = handlerCopy;
  v16 = v9;
  v17 = _Block_copy(aBlock);
  [MEMORY[0x1E696ABF8] addFilePresenter:v16];
  [(SFCollaborationFileMetadataLoader *)v16 loadMetadataWithCompletionHandler:v17];
}

void __69__SFCollaborationUtilities_loadMetadataForFileURL_completionHandler___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = gelato_sharing_log(v6);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *v10 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v8, OS_SIGNPOST_INTERVAL_END, v9, "CollaborationLoadMetadataForFileURL", "", v10, 2u);
  }

  [MEMORY[0x1E696ABF8] removeFilePresenter:a1[4]];
  (*(a1[5] + 16))();
}

+ (void)addParticipantsAllowedForCollaborationItem:(id)item collaborationService:(id)service completionHandler:(id)handler
{
  itemCopy = item;
  serviceCopy = service;
  handlerCopy = handler;
  if ([itemCopy type] != 1)
  {
    type = [itemCopy type];
    if (!type)
    {
      fileURL = [itemCopy fileURL];
      [self _addParticipantsAllowedForURL:fileURL share:0 collaborationService:serviceCopy completionHandler:handlerCopy];

      goto LABEL_10;
    }

    v15 = share_sheet_log(type);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_1A9662000, v15, OS_LOG_TYPE_DEFAULT, "SWY add participants allowed check is not supported", location, 2u);
    }

    goto LABEL_8;
  }

  itemProvider = [itemCopy itemProvider];
  v12 = [SFCollaborationUtilities isPostCKShareItemProvider:itemProvider];

  if (!v12)
  {
LABEL_8:
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_10;
  }

  objc_initWeak(location, self);
  itemProvider2 = [itemCopy itemProvider];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __110__SFCollaborationUtilities_addParticipantsAllowedForCollaborationItem_collaborationService_completionHandler___block_invoke;
  v17[3] = &unk_1E788E7C8;
  v19 = handlerCopy;
  objc_copyWeak(&v20, location);
  v18 = serviceCopy;
  [SFCollaborationUtilities loadCKShareItemProvider:itemProvider2 onlyPostShare:1 completionHandler:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(location);
LABEL_10:
}

void __110__SFCollaborationUtilities_addParticipantsAllowedForCollaborationItem_collaborationService_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _addParticipantsAllowedForURL:0 share:v4 collaborationService:*(a1 + 32) completionHandler:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)addParticipantsAllowedForURL:(id)l share:(id)share completionHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  shareCopy = share;
  handlerCopy = handler;
  if (lCopy | shareCopy)
  {
    if (lCopy)
    {
      objc_initWeak(&location, self);
      CloudSharingClass = getCloudSharingClass();
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __81__SFCollaborationUtilities_addParticipantsAllowedForURL_share_completionHandler___block_invoke;
      v17[3] = &unk_1E788E7F0;
      v18 = handlerCopy;
      objc_copyWeak(&v19, &location);
      [CloudSharingClass existingShareForFileOrFolderURL:lCopy completionHandler:v17];
      objc_destroyWeak(&v19);

      objc_destroyWeak(&location);
    }

    else
    {
      [self _addParticipantsAllowedForShare:shareCopy completionHandler:handlerCopy];
    }
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22[0] = @"Called _addParticipantsAllowedForURL:share:completionHandler: with nil URL and nil CKShare";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.sharesheet.addParticipantsAllowed" code:0 userInfo:v13];

    v16 = share_sheet_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities addParticipantsAllowedForURL:v14 share:? completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 1, v14);
  }
}

void __81__SFCollaborationUtilities_addParticipantsAllowedForURL_share_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _addParticipantsAllowedForShare:v7 completionHandler:*(a1 + 32)];

    goto LABEL_10;
  }

  if (!v8)
  {
    goto LABEL_6;
  }

  v11 = [v8 domain];
  v12 = getCKErrorDomain(v11);
  if (([v11 isEqualToString:v12] & 1) == 0)
  {

    goto LABEL_8;
  }

  v13 = [v9 code];

  if (v13 != 12)
  {
LABEL_8:
    v14 = *(*(a1 + 32) + 16);
    goto LABEL_9;
  }

LABEL_6:
  v14 = *(*(a1 + 32) + 16);
LABEL_9:
  v14();
LABEL_10:
}

+ (void)_addParticipantsAllowedForURL:(id)l share:(id)share collaborationService:(id)service completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  shareCopy = share;
  serviceCopy = service;
  handlerCopy = handler;
  if (!(lCopy | shareCopy))
  {
    v13 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v24[0] = @"Called _addParticipantsAllowedForURL:share:collaborationService:completionHandler: with nil URL and nil CKShare";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.sharesheet.addParticipantsAllowed" code:0 userInfo:v14];

    v17 = share_sheet_log(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities _addParticipantsAllowedForURL:v15 share:? collaborationService:? completionHandler:?];
    }

    goto LABEL_8;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v18 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v22 = @"requestAddParticipantsAllowedForURL:share:completionHandler: has not yet been implemented";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [v18 errorWithDomain:@"com.apple.sharesheet.addParticipantsAllowed" code:0 userInfo:v19];

    v17 = share_sheet_log(v20);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities _addParticipantsAllowedForURL:v15 share:? collaborationService:? completionHandler:?];
    }

LABEL_8:

    handlerCopy[2](handlerCopy, 1, v15);
    goto LABEL_9;
  }

  [serviceCopy requestAddParticipantsAllowedForURL:lCopy share:shareCopy completionHandler:handlerCopy];
LABEL_9:
}

+ (void)_addParticipantsAllowedForShare:(id)share completionHandler:(id)handler
{
  v16[1] = *MEMORY[0x1E69E9840];
  shareCopy = share;
  handlerCopy = handler;
  if (shareCopy)
  {
    CloudSharingClass = getCloudSharingClass();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__SFCollaborationUtilities__addParticipantsAllowedForShare_completionHandler___block_invoke;
    v13[3] = &unk_1E788E818;
    v14 = handlerCopy;
    [CloudSharingClass sharingStatusForShare:shareCopy completionHandler:v13];
    v8 = v14;
  }

  else
  {
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"Called _addParticipantsAllowedForShare:completionHandler: with nil CKShare";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v8 = [v9 errorWithDomain:@"com.apple.sharesheet.addParticipantsAllowed" code:0 userInfo:v10];

    v12 = share_sheet_log(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SFCollaborationUtilities _addParticipantsAllowedForURL:v8 share:? collaborationService:? completionHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 1, v8);
  }
}

void __78__SFCollaborationUtilities__addParticipantsAllowedForShare_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  (*(*(a1 + 32) + 16))();
}

+ (id)_dataForFilepath:(id)filepath
{
  filepathCopy = filepath;
  if ([filepathCopy length])
  {
    v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:filepathCopy];
    if ([v4 isFileURL])
    {
      v5 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)canShowShareOptionsForCollaborationItem:(id)item service:(id)service completionHandler:(id)handler
{
  itemCopy = item;
  serviceCopy = service;
  handlerCopy = handler;
  itemProvider = [itemCopy itemProvider];
  v11 = [SFCollaborationUtilities isPostCKShareItemProvider:itemProvider];

  if ([itemCopy type])
  {
    if (v11)
    {
      itemProvider2 = [itemCopy itemProvider];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_3;
      v15[3] = &unk_1E788E4F8;
      v16 = handlerCopy;
      [SFCollaborationUtilities loadCKShareItemProvider:itemProvider2 onlyPostShare:1 completionHandler:v15];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 1);
    }
  }

  else
  {
    v13 = itemCopy;
    if ([v13 isShared])
    {
      fileURL = [v13 fileURL];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke;
      v17[3] = &unk_1E788E868;
      v18 = handlerCopy;
      [serviceCopy isShareOwnerOrAdminForFileURL:fileURL completionHandler:v17];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 1);
    }
  }
}

void __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_2;
  v3[3] = &unk_1E788E840;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

void __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_4;
  v3[3] = &unk_1E788E868;
  v4 = *(a1 + 32);
  [SFCollaborationUtilities isShareOwnerOrAdminForShare:a2 completionHandler:v3];
}

void __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_4(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__SFCollaborationUtilities_canShowShareOptionsForCollaborationItem_service_completionHandler___block_invoke_5;
  v3[3] = &unk_1E788E840;
  v4 = *(a1 + 32);
  v5 = a2;
  dispatch_async(MEMORY[0x1E69E96A0], v3);
}

+ (void)isShareOwnerOrAdminForCollaborationItem:(id)item service:(id)service completionHandler:(id)handler
{
  itemCopy = item;
  serviceCopy = service;
  handlerCopy = handler;
  if ([itemCopy type])
  {
    itemProvider = [itemCopy itemProvider];
    v11 = [SFCollaborationUtilities isPostCKShareItemProvider:itemProvider];

    if (v11)
    {
      itemProvider2 = [itemCopy itemProvider];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_3;
      v15[3] = &unk_1E788E4F8;
      v16 = handlerCopy;
      [SFCollaborationUtilities loadCKShareItemProvider:itemProvider2 onlyPostShare:1 completionHandler:v15];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 1, 0);
    }
  }

  else
  {
    v13 = itemCopy;
    if ([v13 isShared] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      fileURL = [v13 fileURL];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke;
      v17[3] = &unk_1E788E868;
      v18 = handlerCopy;
      [serviceCopy isShareOwnerOrAdminForFileURL:fileURL completionHandler:v17];
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 1, 0);
    }
  }
}

void __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_2;
  v5[3] = &unk_1E788E890;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_4;
  v3[3] = &unk_1E788E868;
  v4 = *(a1 + 32);
  [SFCollaborationUtilities isShareOwnerOrAdminForShare:a2 completionHandler:v3];
}

void __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_4(uint64_t a1, char a2, char a3)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__SFCollaborationUtilities_isShareOwnerOrAdminForCollaborationItem_service_completionHandler___block_invoke_5;
  v5[3] = &unk_1E788E890;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = a3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

+ (void)isShareOwnerOrAdminForFileURL:(id)l completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v7 = handlerCopy;
  if (lCopy)
  {
    CloudSharingClass = getCloudSharingClass();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __76__SFCollaborationUtilities_isShareOwnerOrAdminForFileURL_completionHandler___block_invoke;
    v10[3] = &unk_1E788E8B8;
    v11 = lCopy;
    v12 = v7;
    [CloudSharingClass existingShareForFileOrFolderURL:v11 completionHandler:v10];
  }

  else
  {
    v9 = share_sheet_log(handlerCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities isShareOwnerOrAdminForFileURL:completionHandler:];
    }

    v7[2](v7, 0, 0);
  }
}

void __76__SFCollaborationUtilities_isShareOwnerOrAdminForFileURL_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = share_sheet_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __76__SFCollaborationUtilities_isShareOwnerOrAdminForFileURL_completionHandler___block_invoke_cold_1();
    }
  }

  [SFCollaborationUtilities isShareOwnerOrAdminForShare:v6 completionHandler:*(a1 + 40)];
}

+ (void)isShareOwnerOrAdminForShare:(id)share completionHandler:(id)handler
{
  shareCopy = share;
  handlerCopy = handler;
  v6 = shareCopy;
  if (!shareCopy)
  {
    handlerCopy[2](handlerCopy, 1, 0);
    v6 = 0;
  }

  currentUserParticipant = [v6 currentUserParticipant];
  role = [currentUserParticipant role];

  v9 = [shareCopy publicPermission] == 2 || objc_msgSend(shareCopy, "publicPermission") == 3;
  currentUserParticipant2 = [shareCopy currentUserParticipant];
  v11 = [currentUserParticipant2 role] == 2 || v9;

  (handlerCopy)[2](handlerCopy, role == 1, v11);
}

+ (void)_fetchCollaborationAppInfoIfNeededForActivityType:(id)type deviceScreenScale:(double)scale appInfoCompletion:(id)completion
{
  completionCopy = completion;
  if ([type isEqualToString:@"com.apple.UIKit.activity.Mail"])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __114__SFCollaborationUtilities__fetchCollaborationAppInfoIfNeededForActivityType_deviceScreenScale_appInfoCompletion___block_invoke;
    v13[3] = &unk_1E788E8E0;
    v8 = &v14;
    v14 = completionCopy;
    v9 = completionCopy;
    SFCurrentAppIconData(v13, scale);
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __114__SFCollaborationUtilities__fetchCollaborationAppInfoIfNeededForActivityType_deviceScreenScale_appInfoCompletion___block_invoke_2;
    v11[3] = &unk_1E788B1C0;
    v8 = &v12;
    v12 = completionCopy;
    v10 = completionCopy;
    sf_dispatch_on_main_queue(v11);
  }
}

void __114__SFCollaborationUtilities__fetchCollaborationAppInfoIfNeededForActivityType_deviceScreenScale_appInfoCompletion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = SFCurrentAppName();
  (*(v2 + 16))(v2, v4, v3);
}

+ (void)createCollaborationRequestWithCollaborationItem:(id)item activityType:(id)type deviceScreenScale:(double)scale completionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  typeCopy = type;
  handlerCopy = handler;
  v13 = share_sheet_log(handlerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [itemCopy identifier];
    *buf = 138412290;
    v25 = identifier;
    _os_log_impl(&dword_1A9662000, v13, OS_LOG_TYPE_DEFAULT, "Create Collaboration request for collaboration item %@", buf, 0xCu);
  }

  if ([itemCopy type] == 2)
  {
    v15 = [SFCollaborationCloudSharingRequest alloc];
    identifier2 = [itemCopy identifier];
    options = [itemCopy options];
    LOBYTE(v19) = [itemCopy optionsChanged];
    v18 = [(SFCollaborationCloudSharingRequest *)v15 initWithCollaborationItemIdentifier:identifier2 options:options fileOrFolderURL:0 share:0 setupInfo:0 phoneNumbers:MEMORY[0x1E695E0F0] emailAddresses:typeCopy activityType:0 appName:0 appIconData:v19 optionsChanged:?];

    handlerCopy[2](handlerCopy, v18);
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke;
    v20[3] = &unk_1E788E930;
    v21 = itemCopy;
    v22 = typeCopy;
    v23 = handlerCopy;
    [self _fetchCollaborationAppInfoIfNeededForActivityType:v22 deviceScreenScale:v20 appInfoCompletion:scale];

    v18 = v21;
  }
}

void __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [a1[4] type];
  switch(v7)
  {
    case 2:
      v16 = share_sheet_log(2);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke_cold_1();
      }

      (*(a1[6] + 2))();
      break;
    case 1:
      v15 = [a1[4] itemProvider];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke_2;
      v18[3] = &unk_1E788E908;
      v19 = a1[4];
      v20 = a1[5];
      v21 = v5;
      v22 = v6;
      v23 = a1[6];
      [SFCollaborationUtilities loadCKShareItemProvider:v15 completionHandler:v18];

      break;
    case 0:
      v8 = a1[4];
      v9 = [SFCollaborationCloudSharingRequest alloc];
      v10 = [v8 identifier];
      v11 = [a1[4] options];
      v12 = [v8 fileURL];
      v13 = a1[5];
      LOBYTE(v17) = [a1[4] optionsChanged];
      v14 = [(SFCollaborationCloudSharingRequest *)v9 initWithCollaborationItemIdentifier:v10 options:v11 fileOrFolderURL:v12 share:0 setupInfo:0 phoneNumbers:MEMORY[0x1E695E0F0] emailAddresses:v13 activityType:v5 appName:v6 appIconData:v17 optionsChanged:?];

      (*(a1[6] + 2))();
      break;
  }
}

void __125__SFCollaborationUtilities_createCollaborationRequestWithCollaborationItem_activityType_deviceScreenScale_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v17 = a2;
  v7 = [v5 updatedShare];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v17;
  }

  v9 = v8;

  v10 = [SFCollaborationCloudSharingRequest alloc];
  v11 = [*(a1 + 32) identifier];
  v12 = [*(a1 + 32) options];
  v16 = *(a1 + 40);
  v13 = *(a1 + 56);
  LOBYTE(v15) = [*(a1 + 32) optionsChanged];
  v14 = [SFCollaborationCloudSharingRequest initWithCollaborationItemIdentifier:v10 options:"initWithCollaborationItemIdentifier:options:fileOrFolderURL:share:setupInfo:phoneNumbers:emailAddresses:activityType:appName:appIconData:optionsChanged:" fileOrFolderURL:v11 share:v12 setupInfo:0 phoneNumbers:v9 emailAddresses:v6 activityType:MEMORY[0x1E695E0F0] appName:v16 appIconData:v13 optionsChanged:v15];

  (*(*(a1 + 64) + 16))();
}

+ (void)createSharingURLForCollaborationRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v7 = gelato_sharing_log(handlerCopy);
  v8 = os_signpost_id_make_with_pointer(v7, requestCopy);

  v10 = gelato_sharing_log(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationCreateSharingURL", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E958;
  v85 = v8;
  v12 = handlerCopy;
  v84 = v12;
  v13 = _Block_copy(aBlock);
  fileOrFolderURL = [requestCopy fileOrFolderURL];

  if (fileOrFolderURL)
  {
    CloudSharingClass = getCloudSharingClass();
    fileOrFolderURL2 = [requestCopy fileOrFolderURL];
    v80[0] = MEMORY[0x1E69E9820];
    v80[1] = 3221225472;
    v80[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_272;
    v80[3] = &unk_1E788E9A8;
    v81 = requestCopy;
    v82 = v13;
    [CloudSharingClass sharingStatusForFileOrFolderURL:fileOrFolderURL2 completionHandler:v80];

    v17 = v81;
    goto LABEL_6;
  }

  share = [requestCopy share];

  if (!share)
  {
    v23 = share_sheet_log(v19);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[SFCollaborationUtilities createSharingURLForCollaborationRequest:completionHandler:];
    }

    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharesheet.sharingURLCreation" code:0 userInfo:0];
    v24 = [SFCollaborationCloudSharingResult alloc];
    collaborationItemIdentifier = [requestCopy collaborationItemIdentifier];
    v26 = [(SFCollaborationCloudSharingResult *)v24 initWithCollaborationItemIdentifier:collaborationItemIdentifier sharingURL:0 share:0 error:v17 mailResult:0];

    (*(v13 + 2))(v13, v26);
    goto LABEL_6;
  }

  options = [requestCopy options];
  if ([options count])
  {
    options2 = [requestCopy options];
    v22 = soft_CKSharingAccessTypeFromOptionsGroups(options2) != 1;
  }

  else
  {
    v22 = 1;
  }

  share2 = [requestCopy share];
  v28 = [share2 URL];
  if (v28)
  {
    v29 = v28;
    share3 = [requestCopy share];
    participants = [share3 participants];
    if ([participants count] >= 2)
    {
      emailAddresses = [requestCopy emailAddresses];
      if (![emailAddresses count])
      {
        phoneNumbers = [requestCopy phoneNumbers];
        if (![phoneNumbers count])
        {
          optionsChanged = [requestCopy optionsChanged];

          if ((optionsChanged & 1) == 0)
          {
            v55 = share_sheet_log(v54);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A9662000, v55, OS_LOG_TYPE_DEFAULT, "Share exists and we are not intending to add participants, using existing share URL", buf, 2u);
            }

            v56 = [SFCollaborationCloudSharingResult alloc];
            collaborationItemIdentifier2 = [requestCopy collaborationItemIdentifier];
            share4 = [requestCopy share];
            v59 = [share4 URL];
            share5 = [requestCopy share];
            v17 = [(SFCollaborationCloudSharingResult *)v56 initWithCollaborationItemIdentifier:collaborationItemIdentifier2 sharingURL:v59 share:share5 existingShare:1 error:0 mailResult:0];

            (*(v13 + 2))(v13, v17);
            goto LABEL_6;
          }

          goto LABEL_22;
        }
      }
    }
  }

LABEL_22:
  share6 = [requestCopy share];
  v35 = [share6 URL];
  if (!v35)
  {
LABEL_29:

    goto LABEL_30;
  }

  v36 = v35;
  share7 = [requestCopy share];
  participants2 = [share7 participants];
  if ([participants2 count] < 2)
  {
LABEL_28:

    goto LABEL_29;
  }

  emailAddresses2 = [requestCopy emailAddresses];
  if ([emailAddresses2 count])
  {
LABEL_27:

    goto LABEL_28;
  }

  phoneNumbers2 = [requestCopy phoneNumbers];
  if ([phoneNumbers2 count])
  {

    goto LABEL_27;
  }

  v61 = [requestCopy optionsChanged] & v22;

  if (v61 != 1)
  {
LABEL_30:
    share8 = [requestCopy share];
    participants3 = [share8 participants];
    v43 = [participants3 count];

    if (v43 > 1)
    {
      v48 = getCloudSharingClass();
      share9 = [requestCopy share];
      setupInfo = [requestCopy setupInfo];
      emailAddresses3 = [requestCopy emailAddresses];
      phoneNumbers3 = [requestCopy phoneNumbers];
      options3 = [requestCopy options];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_2;
      v71[3] = &unk_1E788E8B8;
      v72 = requestCopy;
      v73 = v13;
      [v48 addParticipantsToShare:share9 containerSetupInfo:setupInfo emailAddresses:emailAddresses3 phoneNumbers:phoneNumbers3 optionsGroups:options3 completionHandler:v71];

      v17 = v72;
    }

    else
    {
      v45 = share_sheet_log(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A9662000, v45, OS_LOG_TYPE_DEFAULT, "Getting status for share", buf, 2u);
      }

      v46 = getCloudSharingClass();
      share10 = [requestCopy share];
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 3221225472;
      v74[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_282;
      v74[3] = &unk_1E788E9A8;
      v75 = requestCopy;
      v76 = v13;
      [v46 sharingStatusForShare:share10 completionHandler:v74];

      v17 = v75;
    }

    goto LABEL_6;
  }

  v63 = share_sheet_log(v62);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v63, OS_LOG_TYPE_DEFAULT, "Share is existing public share but options changed, updating options", buf, 2u);
  }

  v64 = getCloudSharingClass();
  share11 = [requestCopy share];
  setupInfo2 = [requestCopy setupInfo];
  emailAddresses4 = [requestCopy emailAddresses];
  phoneNumbers4 = [requestCopy phoneNumbers];
  options4 = [requestCopy options];
  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_281;
  v77[3] = &unk_1E788E8B8;
  v78 = requestCopy;
  v79 = v13;
  [v64 completeShare:share11 containerSetupInfo:setupInfo2 emailAddresses:emailAddresses4 phoneNumbers:phoneNumbers4 optionsGroups:options4 completionHandler:v77];

  v17 = v78;
LABEL_6:
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationCreateSharingURL", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_272(uint64_t a1, uint64_t a2)
{
  if (a2 == 6)
  {
    v3 = share_sheet_log(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v3, OS_LOG_TYPE_DEFAULT, "Sharing an unshared folder with shared subitems. First we need to override the share", buf, 2u);
    }

    CloudSharingClass = getCloudSharingClass();
    v5 = [*(a1 + 32) fileOrFolderURL];
    v6 = [*(a1 + 32) emailAddresses];
    v7 = [*(a1 + 32) phoneNumbers];
    v8 = [*(a1 + 32) options];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_273;
    v15[3] = &unk_1E788E8B8;
    v9 = &v16;
    v16 = *(a1 + 32);
    v10 = &v17;
    v17 = *(a1 + 40);
    [CloudSharingClass shareFolderRemovingSubshares:v5 emailAddresses:v6 phoneNumbers:v7 optionsGroups:v8 completionHandler:v15];
  }

  else
  {
    v11 = getCloudSharingClass();
    v5 = [*(a1 + 32) fileOrFolderURL];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_275;
    v12[3] = &unk_1E788E8B8;
    v9 = &v13;
    v13 = *(a1 + 32);
    v10 = &v14;
    v14 = *(a1 + 40);
    [v11 existingShareForFileOrFolderURL:v5 completionHandler:v12];
  }
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_273(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = share_sheet_log(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v11)
    {
      v12 = [v7 debugDescription];
      v16 = 138412290;
      v17 = v12;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Failed to override folder subitems' shares with error: %@", &v16, 0xCu);
    }
  }

  else if (v11)
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Created an empty share for the folder which overrode the shared subitems", &v16, 2u);
  }

  v13 = [SFCollaborationCloudSharingResult alloc];
  v14 = [*(a1 + 32) collaborationItemIdentifier];
  v15 = [(SFCollaborationCloudSharingResult *)v13 initWithCollaborationItemIdentifier:v14 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_275(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) options];
  if ([v9 count])
  {
    v10 = [*(a1 + 32) options];
    v11 = soft_CKSharingAccessTypeFromOptionsGroups(v10) != 1;
  }

  else
  {
    v11 = 1;
  }

  if (!v8 || a4)
  {
    v20 = share_sheet_log(v12);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v20, OS_LOG_TYPE_DEFAULT, "File is unshared, sharing as owner", buf, 2u);
    }

    CloudSharingClass = getCloudSharingClass();
    v22 = [*(a1 + 32) fileOrFolderURL];
    v23 = [*(a1 + 32) emailAddresses];
    v24 = [*(a1 + 32) phoneNumbers];
    v25 = [*(a1 + 32) options];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_276;
    v45[3] = &unk_1E788E8B8;
    v46 = *(a1 + 32);
    v47 = *(a1 + 40);
    [CloudSharingClass shareFileOrFolderURL:v22 emailAddresses:v23 phoneNumbers:v24 optionsGroups:v25 completionHandler:v45];

    v19 = v46;
    goto LABEL_21;
  }

  if (!v7)
  {
LABEL_15:
    v17 = share_sheet_log(v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A9662000, v17, OS_LOG_TYPE_DEFAULT, "File is shared, getting share status", buf, 2u);
    }

    v18 = getCloudSharingClass();
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_278;
    v37[3] = &unk_1E788E980;
    v38 = v8;
    v39 = *(a1 + 32);
    v41 = *(a1 + 40);
    v40 = v7;
    [v18 sharingStatusForShare:v38 completionHandler:v37];

    v19 = v38;
    goto LABEL_21;
  }

  v13 = [*(a1 + 32) emailAddresses];
  if (![v13 count])
  {
    v14 = [*(a1 + 32) phoneNumbers];
    if (![v14 count])
    {
      v26 = [*(a1 + 32) optionsChanged];

      if ((v26 & 1) == 0)
      {
        v28 = share_sheet_log(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v28, OS_LOG_TYPE_DEFAULT, "File is shared and we are not intending to add participants, using existing share URL", buf, 2u);
        }

        v29 = [SFCollaborationCloudSharingResult alloc];
        v30 = [*(a1 + 32) collaborationItemIdentifier];
        v19 = [(SFCollaborationCloudSharingResult *)v29 initWithCollaborationItemIdentifier:v30 sharingURL:v7 share:v8 existingShare:1 error:0 mailResult:0];

        (*(*(a1 + 40) + 16))();
        goto LABEL_21;
      }

      goto LABEL_11;
    }
  }

LABEL_11:
  v15 = [*(a1 + 32) emailAddresses];
  if ([v15 count])
  {
LABEL_14:

    goto LABEL_15;
  }

  v16 = [*(a1 + 32) phoneNumbers];
  if ([v16 count])
  {

    goto LABEL_14;
  }

  v31 = [*(a1 + 32) optionsChanged] & v11;

  if (v31 != 1)
  {
    goto LABEL_15;
  }

  v32 = share_sheet_log(v12);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v32, OS_LOG_TYPE_DEFAULT, "File is shared publicly but options changed, updating options", buf, 2u);
  }

  v33 = getCloudSharingClass();
  v34 = [*(a1 + 32) emailAddresses];
  v35 = [*(a1 + 32) phoneNumbers];
  v36 = [*(a1 + 32) options];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_277;
  v42[3] = &unk_1E788E8B8;
  v43 = *(a1 + 32);
  v44 = *(a1 + 40);
  [v33 completeShare:v8 containerSetupInfo:0 emailAddresses:v34 phoneNumbers:v35 optionsGroups:v36 completionHandler:v42];

  v19 = v43;
LABEL_21:
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_276(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_277(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_278(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = share_sheet_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v29 = a2;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Shared file status is %ld", buf, 0xCu);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      CloudSharingClass = getCloudSharingClass();
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) emailAddresses];
      v11 = [*(a1 + 40) phoneNumbers];
      v12 = [*(a1 + 40) options];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_279;
      v25[3] = &unk_1E788E8B8;
      v26 = *(a1 + 40);
      v27 = *(a1 + 56);
      [CloudSharingClass addParticipantsToShare:v9 containerSetupInfo:0 emailAddresses:v10 phoneNumbers:v11 optionsGroups:v12 completionHandler:v25];

      v13 = v26;
    }

    else
    {
      v20 = [SFCollaborationCloudSharingResult alloc];
      v21 = [*(a1 + 40) collaborationItemIdentifier];
      v13 = [(SFCollaborationCloudSharingResult *)v20 initWithCollaborationItemIdentifier:v21 sharingURL:*(a1 + 48) share:*(a1 + 32) existingShare:1 error:0 mailResult:0];

      (*(*(a1 + 56) + 16))();
    }
  }

  else
  {
    v14 = share_sheet_log(v7);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_278_cold_1();
    }

    v15 = getCloudSharingClass();
    v16 = *(a1 + 32);
    v17 = [*(a1 + 40) emailAddresses];
    v18 = [*(a1 + 40) phoneNumbers];
    v19 = [*(a1 + 40) options];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_280;
    v22[3] = &unk_1E788E8B8;
    v23 = *(a1 + 40);
    v24 = *(a1 + 56);
    [v15 addParticipantsToShare:v16 containerSetupInfo:0 emailAddresses:v17 phoneNumbers:v18 optionsGroups:v19 completionHandler:v22];

    v13 = v23;
  }
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_279(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 existingShare:1 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_280(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 existingShare:1 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_281(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_282(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = share_sheet_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = a2;
    _os_log_impl(&dword_1A9662000, v6, OS_LOG_TYPE_DEFAULT, "Share status is %ld", buf, 0xCu);
  }

  if (a2)
  {
    if (a2 == 1)
    {
      CloudSharingClass = getCloudSharingClass();
      v9 = [*(a1 + 32) share];
      v10 = [*(a1 + 32) setupInfo];
      v11 = [*(a1 + 32) emailAddresses];
      v12 = [*(a1 + 32) phoneNumbers];
      v13 = [*(a1 + 32) options];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_283;
      v30[3] = &unk_1E788E8B8;
      v31 = *(a1 + 32);
      v32 = *(a1 + 40);
      [CloudSharingClass completeShare:v9 containerSetupInfo:v10 emailAddresses:v11 phoneNumbers:v12 optionsGroups:v13 completionHandler:v30];

      v14 = v31;
    }

    else
    {
      v22 = [SFCollaborationCloudSharingResult alloc];
      v23 = [*(a1 + 32) collaborationItemIdentifier];
      v24 = [*(a1 + 32) share];
      v25 = [v24 URL];
      v26 = [*(a1 + 32) share];
      v14 = [(SFCollaborationCloudSharingResult *)v22 initWithCollaborationItemIdentifier:v23 sharingURL:v25 share:v26 error:0 mailResult:0];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v15 = share_sheet_log(v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_282_cold_1(v5);
    }

    v16 = getCloudSharingClass();
    v17 = [*(a1 + 32) share];
    v18 = [*(a1 + 32) setupInfo];
    v19 = [*(a1 + 32) emailAddresses];
    v20 = [*(a1 + 32) phoneNumbers];
    v21 = [*(a1 + 32) options];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_284;
    v27[3] = &unk_1E788E8B8;
    v28 = *(a1 + 32);
    v29 = *(a1 + 40);
    [v16 completeShare:v17 containerSetupInfo:v18 emailAddresses:v19 phoneNumbers:v20 optionsGroups:v21 completionHandler:v27];

    v14 = v28;
  }
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_283(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_284(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 existingShare:1 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

+ (void)requestSharedURLForCollaborationRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v7 = gelato_sharing_log(handlerCopy);
  v8 = os_signpost_id_make_with_pointer(v7, requestCopy);

  v10 = gelato_sharing_log(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationRequestSharedURL", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E958;
  v45 = v8;
  v12 = handlerCopy;
  v44 = v12;
  v13 = _Block_copy(aBlock);
  fileOrFolderURL = [requestCopy fileOrFolderURL];

  if (fileOrFolderURL)
  {
    CloudSharingClass = getCloudSharingClass();
    fileOrFolderURL2 = [requestCopy fileOrFolderURL];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_288;
    v40[3] = &unk_1E788E8B8;
    v41 = requestCopy;
    v42 = v13;
    [CloudSharingClass existingShareForFileOrFolderURL:fileOrFolderURL2 completionHandler:v40];

    v17 = v41;
  }

  else
  {
    share = [requestCopy share];

    if (share)
    {
      optionsChanged = [requestCopy optionsChanged];
      if (optionsChanged)
      {
        v21 = share_sheet_log(optionsChanged);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A9662000, v21, OS_LOG_TYPE_DEFAULT, "Updating options for share", buf, 2u);
        }

        v22 = getCloudSharingClass();
        share2 = [requestCopy share];
        setupInfo = [requestCopy setupInfo];
        emailAddresses = [requestCopy emailAddresses];
        phoneNumbers = [requestCopy phoneNumbers];
        options = [requestCopy options];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_290;
        v37[3] = &unk_1E788E8B8;
        v38 = requestCopy;
        v39 = v13;
        [v22 completeShare:share2 containerSetupInfo:setupInfo emailAddresses:emailAddresses phoneNumbers:phoneNumbers optionsGroups:options completionHandler:v37];

        v17 = v38;
      }

      else
      {
        v32 = [SFCollaborationCloudSharingResult alloc];
        collaborationItemIdentifier = [requestCopy collaborationItemIdentifier];
        share3 = [requestCopy share];
        v35 = [share3 URL];
        share4 = [requestCopy share];
        v17 = [(SFCollaborationCloudSharingResult *)v32 initWithCollaborationItemIdentifier:collaborationItemIdentifier sharingURL:v35 share:share4 error:0 mailResult:0];

        (*(v13 + 2))(v13, v17);
      }
    }

    else
    {
      v28 = share_sheet_log(v19);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        +[SFCollaborationUtilities createSharingURLForCollaborationRequest:completionHandler:];
      }

      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharesheet.sharedURLRequest" code:0 userInfo:0];
      v29 = [SFCollaborationCloudSharingResult alloc];
      collaborationItemIdentifier2 = [requestCopy collaborationItemIdentifier];
      v31 = [(SFCollaborationCloudSharingResult *)v29 initWithCollaborationItemIdentifier:collaborationItemIdentifier2 sharingURL:0 share:0 error:v17 mailResult:0];

      (*(v13 + 2))(v13, v31);
    }
  }
}

void __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationRequestSharedURL", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_288(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v7 || v9)
  {
    v17 = [SFCollaborationCloudSharingResult alloc];
    v18 = [*(a1 + 32) collaborationItemIdentifier];
    v19 = v17;
    v20 = v18;
    v21 = 0;
    v22 = 0;
    v23 = v10;
LABEL_9:
    v25 = [(SFCollaborationCloudSharingResult *)v19 initWithCollaborationItemIdentifier:v20 sharingURL:v21 share:v22 error:v23 mailResult:0];

    (*(*(a1 + 40) + 16))();
    goto LABEL_10;
  }

  v11 = [*(a1 + 32) optionsChanged];
  if (!v11)
  {
    v24 = [SFCollaborationCloudSharingResult alloc];
    v18 = [*(a1 + 32) collaborationItemIdentifier];
    v19 = v24;
    v20 = v18;
    v21 = v7;
    v22 = v8;
    v23 = 0;
    goto LABEL_9;
  }

  v12 = share_sheet_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A9662000, v12, OS_LOG_TYPE_DEFAULT, "Updating options for file URL", buf, 2u);
  }

  CloudSharingClass = getCloudSharingClass();
  v14 = [*(a1 + 32) emailAddresses];
  v15 = [*(a1 + 32) phoneNumbers];
  v16 = [*(a1 + 32) options];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_289;
  v26[3] = &unk_1E788E8B8;
  v27 = *(a1 + 32);
  v28 = *(a1 + 40);
  [CloudSharingClass completeShare:v8 containerSetupInfo:0 emailAddresses:v14 phoneNumbers:v15 optionsGroups:v16 completionHandler:v26];

LABEL_10:
}

void __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_289(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

void __86__SFCollaborationUtilities_requestSharedURLForCollaborationRequest_completionHandler___block_invoke_290(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [SFCollaborationCloudSharingResult alloc];
  v11 = [*(a1 + 32) collaborationItemIdentifier];
  v12 = [(SFCollaborationCloudSharingResult *)v10 initWithCollaborationItemIdentifier:v11 sharingURL:v9 share:v8 error:v7 mailResult:0];

  (*(*(a1 + 40) + 16))();
}

+ (void)createMailContentForRequest:(id)request completionHandler:(id)handler
{
  v48 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  v7 = gelato_sharing_log(handlerCopy);
  v8 = os_signpost_id_make_with_pointer(v7, requestCopy);

  v10 = gelato_sharing_log(v9);
  v11 = v10;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CollaborationCreateMailContent", "", buf, 2u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__SFCollaborationUtilities_createMailContentForRequest_completionHandler___block_invoke;
  aBlock[3] = &unk_1E788E9D0;
  v32 = handlerCopy;
  v33 = v8;
  v12 = handlerCopy;
  v13 = _Block_copy(aBlock);
  v14 = share_sheet_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    sharingURL = [requestCopy sharingURL];
    fileOrFolderURL = [requestCopy fileOrFolderURL];
    appName = [requestCopy appName];
    share = [requestCopy share];
    *buf = 138413826;
    v35 = sharingURL;
    v36 = 2112;
    v37 = fileOrFolderURL;
    v38 = 2112;
    v39 = appName;
    v40 = 2112;
    v41 = 0;
    v42 = 2112;
    v43 = 0;
    v44 = 2112;
    v45 = 0;
    v46 = 2112;
    v47 = share;
    _os_log_impl(&dword_1A9662000, v14, OS_LOG_TYPE_DEFAULT, "Calling messageContentForMail SPI with sharingURL:%@, fileURL:%@, appName:%@, canEdit:%@, allowOthersToInvite:%@, containerID:%@, share:%@", buf, 0x48u);
  }

  CloudSharingClass = getCloudSharingClass();
  sharingURL2 = [requestCopy sharingURL];
  share2 = [requestCopy share];
  fileOrFolderURL2 = [requestCopy fileOrFolderURL];
  appName2 = [requestCopy appName];
  appIconData = [requestCopy appIconData];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __74__SFCollaborationUtilities_createMailContentForRequest_completionHandler___block_invoke_295;
  v26[3] = &unk_1E788E9F8;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = v13;
  v25 = v13;
  [CloudSharingClass messageContentForMail:sharingURL2 share:share2 fileURL:fileOrFolderURL2 appName:appName2 appIconData:appIconData completionHandler:v26];
}

void __74__SFCollaborationUtilities_createMailContentForRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = gelato_sharing_log(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1A9662000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CollaborationCreateMailContent", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __74__SFCollaborationUtilities_createMailContentForRequest_completionHandler___block_invoke_295(void *a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = share_sheet_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "Call to messageContentForMail SPI returned subject:%@, body:%@, error:%@", &v12, 0x20u);
  }

  v11 = [[SFCollaborationCloudSharingMailResult alloc] initWithSubject:v7 body:v8 containerID:a1[4] canEdit:a1[5] allowOthersToInvite:a1[6] error:v9];
  (*(a1[7] + 16))();
}

+ (BOOL)canDeleteShareForCollaborationItem:(id)item
{
  itemCopy = item;
  if ([itemCopy type] == 1)
  {
    itemProvider = [itemCopy itemProvider];
    LOBYTE(v5) = [SFCollaborationUtilities isPreCKShareItemProvider:itemProvider];
  }

  else if ([itemCopy type])
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [itemCopy isShared] ^ 1;
  }

  return v5;
}

+ (id)descriptionForShareOptions:(id)options
{
  v3 = MEMORY[0x1E696AEC0];
  optionsCopy = options;
  v5 = [optionsCopy description];
  summary = [optionsCopy summary];
  optionsGroups = [optionsCopy optionsGroups];

  v8 = [v3 stringWithFormat:@"<%@ summary: %@, options: %@>", v5, summary, optionsGroups];

  return v8;
}

+ (void)getFailureTitle:(id *)title message:(id *)message error:(id)error
{
  errorCopy = error;
  v26 = SFLocalizedStringForKey(@"ERROR_TITLE_COULD_NOT_ADD_PARTICIPANTS");
  v8 = SFLocalizedStringForKey(@"ERROR_MESSAGE_COULD_NOT_ADD_PARTICIPANTS");
  v9 = [SFCollaborationUtilities underlyingCKErrorForError:errorCopy];

  domain = [v9 domain];
  v11 = getCKErrorDomain(domain);
  v12 = [domain isEqualToString:v11];

  if (!v12)
  {
    domain2 = [v9 domain];
    v21 = [domain2 isEqualToString:*MEMORY[0x1E696A250]];

    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = MEMORY[0x1E696AEC0];
    processName = SFLocalizedStringForKey(@"ERROR_MESSAGE_COULD_NOT_ADD_PARTICIPANTS_WITH_ERROR_INFO");
    localizedDescription = [v9 localizedDescription];
    v19 = [v22 stringWithFormat:processName, localizedDescription];

    v8 = localizedDescription;
    goto LABEL_17;
  }

  processInfo = [MEMORY[0x1E696AE30] processInfo];
  processName = [processInfo processName];

  code = [v9 code];
  if (code > 28)
  {
    switch(code)
    {
      case 29:
        v16 = SFLocalizedStringForKey(@"ERROR_TITLE_TOO_MANY_PARTICIPANTS");

        v24 = @"ERROR_MESSAGE_TOO_MANY_PARTICIPANTS";
        break;
      case 30:
        v16 = SFLocalizedStringForKey(@"ERROR_TITLE_FILE_ALREADY_SHARED");

        v24 = @"ERROR_MESSAGE_FILE_ALREADY_SHARED";
        break;
      case 32:
        v16 = SFLocalizedStringForKey(@"ERROR_TITLE_MAID");

        v24 = @"ERROR_MESSAGE_MAID";
        break;
      default:
        goto LABEL_18;
    }

    v19 = SFLocalizedStringForKey(v24);
    goto LABEL_16;
  }

  if ((code - 3) < 2)
  {
    v16 = SFLocalizedStringForKey(@"ERROR_TITLE_NETWORK_UNAVAILABLE_OR_FAILURE");

    v17 = MEMORY[0x1E696AEC0];
    v18 = SFLocalizedStringForKey(@"ERROR_MESSAGE_NETWORK_UNAVAILABLE_OR_FAILURE");
    v19 = [v17 localizedStringWithFormat:v18, processName];

    v8 = v18;
LABEL_16:
    v26 = v16;
    goto LABEL_17;
  }

  if (code == 14)
  {
    v19 = SFLocalizedStringForKey(@"ERROR_MESSAGE_COULD_NOT_ADD_PARTICIPANTS_WITH_TRY_AGAIN");
LABEL_17:

    v8 = v19;
  }

LABEL_18:

LABEL_19:
  if (title)
  {
    *title = v26;
  }

  if (message)
  {
    v25 = v8;
    *message = v8;
  }
}

+ (BOOL)isOplockError:(id)error updatedShare:(id *)share
{
  errorCopy = error;
  if (errorCopy)
  {
    v6 = [SFCollaborationUtilities underlyingCKErrorForError:errorCopy];
    domain = [v6 domain];
    v8 = getCKErrorDomain(domain);
    if ([domain isEqualToString:v8])
    {
      code = [v6 code];

      if (code == 14)
      {
        userInfo = [v6 userInfo];
        v18 = 0;
        v19 = &v18;
        v20 = 0x2020000000;
        v11 = getCKRecordChangedErrorServerRecordKeySymbolLoc_ptr;
        v21 = getCKRecordChangedErrorServerRecordKeySymbolLoc_ptr;
        if (!getCKRecordChangedErrorServerRecordKeySymbolLoc_ptr)
        {
          v12 = CloudKitLibrary_0();
          v19[3] = dlsym(v12, "CKRecordChangedErrorServerRecordKey");
          getCKRecordChangedErrorServerRecordKeySymbolLoc_ptr = v19[3];
          v11 = v19[3];
        }

        _Block_object_dispose(&v18, 8);
        if (!v11)
        {
          +[SFCollaborationUtilities isOplockError:updatedShare:];
        }

        v13 = *v11;
        v14 = [userInfo objectForKeyedSubscript:v13];

        if (share)
        {
          v15 = v14;
          *share = v14;
        }

        v16 = 1;
        goto LABEL_13;
      }
    }

    else
    {
    }

    v16 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  return v16;
}

+ (id)underlyingCKErrorForError:(id)error
{
  v36 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = getCKErrorDomain(domain);
  if ([domain isEqualToString:v5] || (objc_msgSend(errorCopy, "userInfo"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    v12 = errorCopy;
  }

  else
  {
    v7 = v6;
    userInfo = [errorCopy userInfo];
    v9 = *MEMORY[0x1E696AA08];
    v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v12 = errorCopy;
    if (isKindOfClass)
    {
      userInfo2 = [errorCopy userInfo];
      v14 = [userInfo2 objectForKeyedSubscript:v9];

      userInfo3 = [errorCopy userInfo];
      v16 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x1E696A750]];

      domain2 = [v14 domain];
      v18 = getCKErrorDomain(domain2);
      v19 = [domain2 isEqualToString:v18];

      if (v19)
      {
        v12 = v14;
      }

      else
      {
        v12 = errorCopy;
        if (v16)
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v21 = v16;
          v22 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
          v12 = errorCopy;
          if (v22)
          {
            v23 = v22;
            v30 = v16;
            v24 = *v32;
            while (2)
            {
              for (i = 0; i != v23; ++i)
              {
                if (*v32 != v24)
                {
                  objc_enumerationMutation(v21);
                }

                v26 = *(*(&v31 + 1) + 8 * i);
                domain3 = [v26 domain];
                v28 = getCKErrorDomain(domain3);
                v29 = [domain3 isEqualToString:v28];

                if (v29)
                {
                  v12 = v26;

                  goto LABEL_21;
                }
              }

              v23 = [v21 countByEnumeratingWithState:&v31 objects:v35 count:16];
              if (v23)
              {
                continue;
              }

              break;
            }

            v12 = errorCopy;
LABEL_21:
            v16 = v30;
          }
        }
      }
    }
  }

  return v12;
}

+ (void)shareStatusForURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  CloudSharingClass = getCloudSharingClass();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__SFCollaborationUtilities_shareStatusForURL_completionHandler___block_invoke;
  v9[3] = &unk_1E788E818;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [CloudSharingClass sharingStatusForFileOrFolderURL:lCopy completionHandler:v9];
}

+ (id)urlRequestsForCollaborationItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    array = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (![v9 type])
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          fileURL = [v9 fileURL];
          v11 = [MEMORY[0x1E696AD68] requestWithURL:fileURL];
          [v11 _setNonAppInitiated:1];
          [array addObject:v11];
        }
      }

      v5 = [itemsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    array = 0;
  }

  return array;
}

+ (void)getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_CKSharingAllowOthersToInviteFromOptionsGroups(NSArray<_SWCollaborationOptionsGroup *> *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:81 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CKShareParticipantPermission soft_CKSharingPermissionTypeFromOptionsGroups(NSArray<_SWCollaborationOptionsGroup *> *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:80 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)getCKSharingOptionsFromOptions:accessType:permissionType:allowOthersToInvite:.cold.3()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_loadShareOptionsForCKShareItemProvider:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __86__SFCollaborationUtilities__loadShareOptionsForCKShareItemProvider_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_165_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __84__SFCollaborationUtilities_loadCKShareItemProvider_onlyPostShare_completionHandler___block_invoke_166_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)loadCKContainerForItemProvider:completionHandler:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *get_CKCloudKitContainerSetupInfoType(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:70 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)isCollaborationItemPrivateShare:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createLinkMetadataWithCKShare:containerSetupInfo:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)createLinkMetadataWithCKShare:(void *)a1 containerSetupInfo:.cold.2(void *a1)
{
  v1 = [a1 URL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)createLinkMetadataWithCKShare:containerSetupInfo:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)createLinkMetadataWithCKShare:containerSetupInfo:.cold.4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)createLinkMetadataWithCKShare:containerSetupInfo:.cold.5()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKShareThumbnailImageDataKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:99 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)shareSupportsRequestAccess:options:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_CKSharingAllowAccessRequestsFromOptionsGroups(NSArray<_SWCollaborationOptionsGroup *> *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:82 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)requestSharedURLForCollaborationItem:(void *)a1 collaborationService:completionHandler:.cold.1(void *a1)
{
  [a1 type];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)requestSharedURLForCollaborationItem:collaborationService:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)requestSharedURLForCollaborationItem:collaborationService:completionHandler:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void soft_SWPerformActionForDocumentURL(NSURL *__strong, SWAction *__strong, void (^__strong)(_SWActionResponse * _Nullable __strong, NSError * _Nullable __strong))"}];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:146 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)requestSharedURLForCollaborationItem:collaborationService:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __85__SFCollaborationUtilities_findOriginatingSharedItemForSubitemURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, v0, v1, "error fetching parent items for URL:%@ : %@");
}

void __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __92__SFCollaborationUtilities_loadiWorkCopyRepresentationURLForItemProvider_completionHandler___block_invoke_211_cold_1()
{
  OUTLINED_FUNCTION_8_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, v0, v1, "Failed to coordinate read for copy representation URL for file at URL %@ with error: %@");
}

+ (void)_copyRepresentationTypeIdentifier
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_loadShareOptionsForSWYItemProvider:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __82__SFCollaborationUtilities__loadShareOptionsForSWYItemProvider_completionHandler___block_invoke_216_cold_1(void *a1)
{
  v1 = [a1 collaborationMetadata];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __89__SFCollaborationUtilities_loadSendCopyRepresentationIfNeededForItemProvider_completion___block_invoke_219_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)loadShareOptionsForItemProvider:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)loadMetadataForItemProvider:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKShareTypeKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:100 description:{@"%s", dlerror()}];

  __break(1u);
}

void __74__SFCollaborationUtilities_loadMetadataForItemProvider_completionHandler___block_invoke_cold_3(void *a1)
{
  v1 = [a1 URL];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __86__SFCollaborationUtilities_loadPendingCollaborationForItemProvider_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)loadMetadataForFileURL:(uint64_t)a1 completionHandler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SFCollaborationUtilities.m" lineNumber:1259 description:@"fileURL is nil."];
}

+ (void)addParticipantsAllowedForURL:(void *)a1 share:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)_addParticipantsAllowedForURL:(void *)a1 share:collaborationService:completionHandler:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)isShareOwnerOrAdminForFileURL:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __76__SFCollaborationUtilities_isShareOwnerOrAdminForFileURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2_9();
  OUTLINED_FUNCTION_3_9(&dword_1A9662000, v0, v1, "error to get existing share for fileURL:%@ %@");
}

+ (void)createSharingURLForCollaborationRequest:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_278_cold_1()
{
  OUTLINED_FUNCTION_3_6();
  v2 = [*(v1 + 40) fileOrFolderURL];
  v8 = [v0 localizedDescription];
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __86__SFCollaborationUtilities_createSharingURLForCollaborationRequest_completionHandler___block_invoke_282_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

+ (void)isOplockError:updatedShare:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCKRecordChangedErrorServerRecordKey(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFCollaborationUtilities.m" lineNumber:72 description:{@"%s", dlerror()}];

  __break(1u);
}

@end