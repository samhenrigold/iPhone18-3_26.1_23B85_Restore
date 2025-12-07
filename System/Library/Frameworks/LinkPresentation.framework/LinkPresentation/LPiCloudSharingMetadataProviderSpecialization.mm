@interface LPiCloudSharingMetadataProviderSpecialization
+ (id)normalizeKind:(id)kind forApplication:(id)application;
+ (id)specializedMetadataProviderForURLWithContext:(id)context;
- (BOOL)canRetrieveThumbnailForApplication:(id)application;
- (BOOL)canUseCloudKit;
- (LPiCloudSharingMetadataProviderSpecialization)initWithContext:(id)context applicationFromURL:(id)l kindFromURL:(id)rL titleFromURL:(id)uRL;
- (id)applicationFromBundleIdentifiers:(id)identifiers containerIdentifier:(id)identifier;
- (id)iconFromShare:(id)share;
- (void)completeRetrievingThumbnailForShareMetadata:(id)metadata application:(id)application kind:(id)kind title:(id)title icon:(id)icon;
- (void)completeUsingApplication:(id)application kind:(id)kind title:(id)title thumbnail:(id)thumbnail icon:(id)icon;
- (void)completeWithShareMetadata:(id)metadata bundleIDs:(id)ds;
- (void)fail;
- (void)start;
@end

@implementation LPiCloudSharingMetadataProviderSpecialization

+ (id)specializedMetadataProviderForURLWithContext:(id)context
{
  contextCopy = context;
  postRedirectURL = [contextCopy postRedirectURL];
  v5 = [LPPresentationSpecializations isiCloudSharingURL:postRedirectURL];

  if (v5)
  {
    postRedirectURL2 = [contextCopy postRedirectURL];
    v7 = [LPiCloudSharingMetadata extractApplicationFromURL:postRedirectURL2];

    if ([v7 _lp_isEqualIgnoringCase:@"photos"])
    {
      v8 = 0;
    }

    else
    {
      postRedirectURL3 = [contextCopy postRedirectURL];
      v10 = [LPiCloudSharingMetadata extractKindFromURL:postRedirectURL3];

      postRedirectURL4 = [contextCopy postRedirectURL];
      v12 = [LPiCloudSharingMetadata extractTitleFromURL:postRedirectURL4];

      v8 = [[LPiCloudSharingMetadataProviderSpecialization alloc] initWithContext:contextCopy applicationFromURL:v7 kindFromURL:v10 titleFromURL:v12];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canUseCloudKit
{
  v3 = +[LPiCloudSharingMetadata _applicationNameMap];
  v4 = [v3 objectForKeyedSubscript:self->_applicationFromURL];

  v5 = [objc_opt_class() normalizeKind:self->_kindFromURL forApplication:v4];
  if ([v5 isEqualToString:@"Template"] & 1) != 0 || objc_msgSend(v4, "isEqualToString:", @"Freeform") && (objc_msgSend(v5, "isEqualToString:", @"Copy"))
  {
    v6 = 0;
  }

  else
  {
    v7 = LPValueForEntitlement(*MEMORY[0x1E695BB10]);
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && ([v7 containsObject:*MEMORY[0x1E695BB08]] & 1) != 0;
  }

  return v6;
}

- (LPiCloudSharingMetadataProviderSpecialization)initWithContext:(id)context applicationFromURL:(id)l kindFromURL:(id)rL titleFromURL:(id)uRL
{
  contextCopy = context;
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  v20.receiver = self;
  v20.super_class = LPiCloudSharingMetadataProviderSpecialization;
  v14 = [(LPMetadataProviderSpecialization *)&v20 initWithContext:contextCopy];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_applicationFromURL, l);
    objc_storeStrong(&v15->_kindFromURL, rL);
    objc_storeStrong(&v15->_titleFromURL, uRL);
    if ([(LPiCloudSharingMetadataProviderSpecialization *)v15 canUseCloudKit])
    {
      v16 = [MEMORY[0x1E695B888] containerWithIdentifier:@"com.apple.cloudkit"];
      baseContainer = v15->_baseContainer;
      v15->_baseContainer = v16;
    }

    v18 = v15;
  }

  return v15;
}

- (id)applicationFromBundleIdentifiers:(id)identifiers containerIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  identifierCopy = identifier;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = identifiersCopy;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = *v28;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [LPApplicationIdentification unlocalizedNameForBundleIdentifier:*(*(&v27 + 1) + 8 * i)];
        if (v11)
        {
          v21 = v11;
          v12 = v7;
          goto LABEL_21;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v13)
  {
    v14 = *v24;
    while (2)
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v23 + 1) + 8 * j);
        v17 = objc_alloc(MEMORY[0x1E69635F8]);
        v18 = [v17 initWithBundleIdentifier:v16 allowPlaceholder:1 error:{0, v23}];
        localizedName = [v18 localizedName];
        if (localizedName)
        {
          v21 = localizedName;

          goto LABEL_21;
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v12 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:identifierCopy allowPlaceholder:1 error:0];
  localizedName2 = [v12 localizedName];
  v21 = localizedName2;
  if (localizedName2)
  {
    v21 = localizedName2;
  }

LABEL_21:

  return v21;
}

+ (id)normalizeKind:(id)kind forApplication:(id)application
{
  kindCopy = kind;
  applicationCopy = application;
  if (![applicationCopy isEqualToString:@"Reminders"])
  {
    goto LABEL_14;
  }

  if (!kindCopy)
  {
    v7 = @"Shared List";
    goto LABEL_11;
  }

  if ([kindCopy _lp_isEqualIgnoringCase:@"template"])
  {
    v7 = @"Template";
  }

  else
  {
LABEL_14:
    if ([applicationCopy isEqualToString:@"Freeform"])
    {
      if ([kindCopy _lp_isEqualIgnoringCase:@"copy"])
      {
        v7 = @"Copy";
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_11:

  return v7;
}

- (id)iconFromShare:(id)share
{
  shareCopy = share;
  v4 = *MEMORY[0x1E695B820];
  v5 = [shareCopy objectForKeyedSubscript:*MEMORY[0x1E695B820]];
  if (v5)
  {
    v6 = [LPImage alloc];
    v7 = [shareCopy objectForKeyedSubscript:v4];
    v8 = [(LPImage *)v6 initWithData:v7 MIMEType:@"image/png"];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)start
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3;
  block[3] = &unk_1E7A36318;
  block[4] = *(a1 + 32);
  v10 = v6;
  v11 = v5;
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if ((*(*(a1 + 32) + 64) & 1) == 0)
  {
    if (*(a1 + 40))
    {
      v3 = LPLogChannelFetching(a1, a2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_1();
      }

LABEL_13:
      [*(a1 + 32) fail];
      return;
    }

    v4 = *(a1 + 48);
    if (!v4 || ([v4 containerIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
    {
      v14 = LPLogChannelFetching(v4, a2);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_3();
      }

      goto LABEL_13;
    }

    v6 = LPLogChannelFetching(v4, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [*(a1 + 48) containerIdentifier];
      __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_2(v7, buf, v6);
    }

    v8 = MEMORY[0x1E695B888];
    v9 = [*(a1 + 48) containerIdentifier];
    v10 = [v8 containerWithIdentifier:v9];
    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    *(v11 + 56) = v10;

    v13 = objc_alloc_init(MEMORY[0x1E695B970]);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_43;
    v18 = &unk_1E7A373B0;
    v19 = *(a1 + 32);
    v20 = *(a1 + 48);
    [v13 setFetchWhitelistedBundleIDsCompletionBlock:&v15];
    [*(*(a1 + 32) + 56) addOperation:{v13, v15, v16, v17, v18, v19}];
  }
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44;
  v10[3] = &unk_1E7A35C10;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v10);
}

void *__54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44(void *result, uint64_t a2)
{
  if ((*(result[4] + 64) & 1) == 0)
  {
    v2 = result;
    v3 = result[5];
    v4 = LPLogChannelFetching(result, a2);
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44_cold_1();
      }

      return [v2[4] fail];
    }

    else
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44_cold_2(v2, v5);
      }

      return [v2[4] completeWithShareMetadata:v2[7] bundleIDs:v2[6]];
    }
  }

  return result;
}

- (void)completeWithShareMetadata:(id)metadata bundleIDs:(id)ds
{
  metadataCopy = metadata;
  dsCopy = ds;
  v9 = LPLogChannelFetching(dsCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [LPiCloudSharingMetadataProviderSpecialization completeWithShareMetadata:bundleIDs:];
  }

  v10 = +[LPiCloudSharingMetadata _applicationNameMap];
  v11 = [v10 objectForKeyedSubscript:self->_applicationFromURL];

  v12 = [objc_opt_class() normalizeKind:self->_kindFromURL forApplication:v11];
  share = [metadataCopy share];
  v14 = [share objectForKeyedSubscript:*MEMORY[0x1E695B828]];

  share2 = [metadataCopy share];
  v16 = [(LPiCloudSharingMetadataProviderSpecialization *)self iconFromShare:share2];

  if (v11)
  {
    if ([(LPiCloudSharingMetadataProviderSpecialization *)self canRetrieveThumbnailForApplication:v11])
    {
      [(LPiCloudSharingMetadataProviderSpecialization *)self completeRetrievingThumbnailForShareMetadata:metadataCopy application:v11 kind:v12 title:v14 icon:v16];
    }

    else
    {
      [(LPiCloudSharingMetadataProviderSpecialization *)self completeUsingApplication:v11 kind:v12 title:v14 thumbnail:0 icon:v16];
    }
  }

  else
  {
    containerIdentifier = [metadataCopy containerIdentifier];
    v18 = [(LPiCloudSharingMetadataProviderSpecialization *)self applicationFromBundleIdentifiers:dsCopy containerIdentifier:containerIdentifier];

    if (self->_titleFromURL)
    {
      titleFromURL = self->_titleFromURL;
    }

    else
    {
      titleFromURL = v14;
    }

    [(LPiCloudSharingMetadataProviderSpecialization *)self completeUsingApplication:v18 kind:v12 title:titleFromURL thumbnail:0 icon:v16];
  }
}

- (void)completeUsingApplication:(id)application kind:(id)kind title:(id)title thumbnail:(id)thumbnail icon:(id)icon
{
  applicationCopy = application;
  kindCopy = kind;
  titleCopy = title;
  thumbnailCopy = thumbnail;
  iconCopy = icon;
  v18 = LPLogChannelFetching(iconCopy, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [LPiCloudSharingMetadataProviderSpecialization completeUsingApplication:applicationCopy kind:titleCopy title:v18 thumbnail:? icon:?];
  }

  v19 = objc_alloc_init(LPiCloudSharingMetadata);
  [(LPiCloudSharingMetadata *)v19 setApplication:applicationCopy];
  [(LPiCloudSharingMetadata *)v19 setKind:kindCopy];
  [(LPiCloudSharingMetadata *)v19 setTitle:titleCopy];
  [(LPiCloudSharingMetadata *)v19 setThumbnail:thumbnailCopy];
  [(LPiCloudSharingMetadata *)v19 setIcon:iconCopy];
  v20 = [(LPMetadataProviderSpecialization *)self createMetadataWithSpecialization:v19];
  delegate = [(LPMetadataProviderSpecialization *)self delegate];
  [delegate metadataProviderSpecialization:self didCompleteWithMetadata:v20];
}

- (void)fail
{
  [(LPiCloudSharingMetadataProviderSpecialization *)self cancel];
  delegate = [(LPMetadataProviderSpecialization *)self delegate];
  [delegate metadataProviderSpecializationDidFail:self];
}

- (BOOL)canRetrieveThumbnailForApplication:(id)application
{
  applicationCopy = application;
  if ([applicationCopy isEqualToString:@"Notes"] & 1) != 0 || (objc_msgSend(applicationCopy, "isEqualToString:", @"Reminders"))
  {
    bOOLValue = 0;
LABEL_14:

    return bOOLValue;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = getBREntitlementSharingPrivateInterfaceSymbolLoc_ptr;
  v19 = getBREntitlementSharingPrivateInterfaceSymbolLoc_ptr;
  if (!getBREntitlementSharingPrivateInterfaceSymbolLoc_ptr)
  {
    v6 = CloudDocsLibrary();
    v17[3] = dlsym(v6, "BREntitlementSharingPrivateInterface");
    getBREntitlementSharingPrivateInterfaceSymbolLoc_ptr = v17[3];
    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (v5)
  {
    v7 = LPValueForEntitlement(*v5);
    if (([v7 BOOLValue] & 1) == 0)
    {
      bOOLValue = 0;
      goto LABEL_13;
    }

    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v8 = getBRContainerProxyEntitlementSymbolLoc_ptr;
    v19 = getBRContainerProxyEntitlementSymbolLoc_ptr;
    if (!getBRContainerProxyEntitlementSymbolLoc_ptr)
    {
      v9 = CloudDocsLibrary();
      v17[3] = dlsym(v9, "BRContainerProxyEntitlement");
      getBRContainerProxyEntitlementSymbolLoc_ptr = v17[3];
      v8 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (v8)
    {
      v10 = LPValueForEntitlement(*v8);
      bOOLValue = [v10 BOOLValue];

LABEL_13:
      goto LABEL_14;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBREntitlementSharingPrivateInterface(void)"];
    [currentHandler handleFailureInFunction:v13 file:@"LPiCloudSharingMetadataProviderSpecialization.m" lineNumber:25 description:{@"%s", dlerror()}];

    __break(1u);
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getBRContainerProxyEntitlement(void)"];
  [currentHandler2 handleFailureInFunction:v15 file:@"LPiCloudSharingMetadataProviderSpecialization.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
  return result;
}

- (void)completeRetrievingThumbnailForShareMetadata:(id)metadata application:(id)application kind:(id)kind title:(id)title icon:(id)icon
{
  metadataCopy = metadata;
  applicationCopy = application;
  kindCopy = kind;
  titleCopy = title;
  iconCopy = icon;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke;
  aBlock[3] = &unk_1E7A37478;
  aBlock[4] = self;
  v17 = applicationCopy;
  v40 = v17;
  v18 = kindCopy;
  v41 = v18;
  v19 = titleCopy;
  v42 = v19;
  v20 = iconCopy;
  v43 = v20;
  v29 = _Block_copy(aBlock);
  v21 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_57;
  v30[3] = &unk_1E7A374A0;
  v28 = metadataCopy;
  v31 = v28;
  selfCopy = self;
  v22 = v17;
  v33 = v22;
  v23 = v18;
  v34 = v23;
  v24 = v19;
  v35 = v24;
  v25 = v20;
  v36 = v25;
  v26 = v29;
  v37 = v21;
  v38 = v26;
  v27 = v21;
  [v27 addOperationWithBlock:v30];
}

void __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = v6;
  if (!v5 || v6)
  {
    v15 = LPLogChannelFetching(v6, v7);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_cold_1();
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_50;
    block[3] = &unk_1E7A37400;
    v21 = *(a1 + 32);
    v16 = *(&v21 + 1);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    *&v19 = v17;
    *(&v19 + 1) = v18;
    v28 = v21;
    v29 = v19;
    v30 = *(a1 + 64);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    [v5 startAccessingSecurityScopedResource];
    v9 = [objc_alloc(MEMORY[0x1E697A0E0]) initWithFileAtURL:v5 size:4 scale:300.0 representationTypes:{600.0, 3.0}];
    v10 = [MEMORY[0x1E697A0E8] sharedGenerator];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2;
    v22[3] = &unk_1E7A37450;
    v23 = v5;
    v20 = *(a1 + 32);
    v11 = *(&v20 + 1);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *&v14 = v12;
    *(&v14 + 1) = v13;
    v24 = v20;
    v25 = v14;
    v26 = *(a1 + 64);
    [v10 generateBestRepresentationForRequest:v9 completionHandler:v22];
  }
}

void __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) stopAccessingSecurityScopedResource];
  if (v6)
  {
    v9 = LPLogChannelFetching(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_cold_1();
    }
  }

  else if ([v5 CGImage])
  {
    v10 = -[LPImage _initWithCGImage:]([LPImage alloc], "_initWithCGImage:", [v5 CGImage]);
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_53;
  block[3] = &unk_1E7A37428;
  v16 = *(a1 + 40);
  v11 = *(&v16 + 1);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  *&v14 = v12;
  *(&v14 + 1) = v13;
  v18 = v16;
  v19 = v14;
  v20 = v10;
  v21 = *(a1 + 72);
  v15 = v10;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_57(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = [*(a1 + 32) containerIdentifier];
  v4 = [v2 URLForUbiquityContainerIdentifier:v3];

  if (v4)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v7 = getBRShareCopyDocumentURLForRecordIDClass_softClass;
    v26 = getBRShareCopyDocumentURLForRecordIDClass_softClass;
    if (!getBRShareCopyDocumentURLForRecordIDClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __getBRShareCopyDocumentURLForRecordIDClass_block_invoke;
      v30 = &unk_1E7A35518;
      v31 = &v23;
      __getBRShareCopyDocumentURLForRecordIDClass_block_invoke(buf);
      v7 = v24[3];
    }

    v8 = v7;
    _Block_object_dispose(&v23, 8);
    v9 = [v7 alloc];
    v10 = [*(a1 + 32) hierarchicalRootRecordID];
    v11 = [v9 initWithRecordID:v10 fileURL:v4 withServerLookup:1];

    [v11 setCopyDocumentURLCompletionBlock:*(a1 + 88)];
    [*(a1 + 80) addOperation:v11];
  }

  else
  {
    v12 = LPLogChannelFetching(v5, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) containerIdentifier];
      __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_57_cold_1(v13, buf, v12);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_59;
    block[3] = &unk_1E7A37400;
    v18 = *(a1 + 40);
    v14 = *(&v18 + 1);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    v20 = v18;
    v21 = v17;
    v22 = *(a1 + 72);
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEBUG, "LPiCloudSharingMetadata: starting fetch bundleIDs (container=%@)", buf, 0xCu);
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_3_cold_3()
{
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__LPiCloudSharingMetadataProviderSpecialization_start__block_invoke_2_44_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_1AE886000, a2, OS_LOG_TYPE_DEBUG, "LPiCloudSharingMetadata: finished fetching bundleIDs (%@)", &v3, 0xCu);
}

- (void)completeUsingApplication:(os_log_t)log kind:title:thumbnail:icon:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEBUG, "LPiCloudSharingMetadata: completed using application name (%@) and title (%@)", &v3, 0x16u);
}

void __121__LPiCloudSharingMetadataProviderSpecialization_completeRetrievingThumbnailForShareMetadata_application_kind_title_icon___block_invoke_2_57_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AE886000, log, OS_LOG_TYPE_ERROR, "LPiCloudSharingMetadata: failed to retrieve a containerURL (container=%@)", buf, 0xCu);
}

@end