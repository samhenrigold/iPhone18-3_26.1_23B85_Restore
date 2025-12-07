@interface NPKOpenURLRouter
+ (void)openDeepLinkForURL:(id)l isSensitive:(BOOL)sensitive;
+ (void)openDeepLinkForURL:(id)l isSensitive:(BOOL)sensitive completion:(id)completion;
+ (void)openURLInSafariForURL:(id)l fromPresentingController:(id)controller;
- (BOOL)_handleServiceModeRequestedForPassWithUniqueID:(id)d;
- (BOOL)_handleShareForMailboxAddress:(id)address referralSource:(id)source;
- (BOOL)_handleShareableCredentialsAcceptanceWithShareableCredentials:(id)credentials thumbnailImageData:(id)data;
- (BOOL)_handleSubcredentialInvitationAcceptanceForLocalInvitationIdentifier:(id)identifier remoteInvitationIdentifier:(id)invitationIdentifier contactName:(id)name thumbnailImageData:(id)data;
- (BOOL)_handleUniversalLinkURLAsShoeboxURLForPathComponents:(id)components shouldParsePathComponents:(BOOL)pathComponents urlComponents:(id)urlComponents;
- (BOOL)_isValidRelayServerURL:(id)l outPathComponents:(id *)components;
- (BOOL)_presentEntitlementDetailsForPassUniqueID:(id)d;
- (BOOL)_presentExpiredPassList;
- (BOOL)_presentListActionsMenu;
- (BOOL)_presentPassBalanceDetailsForPassWithUniqueID:(id)d;
- (BOOL)_presentPassDetailsForPassWithUniqueID:(id)d;
- (BOOL)_presentPassList;
- (BOOL)_presentPassListPreventAppUninstall;
- (BOOL)_presentProvisioningFlow;
- (BOOL)_presentSavingsDetailsWithPassUniqueID:(id)d;
- (BOOL)_presentShareDetailsForPassUniqueID:(id)d shareIdentifier:(id)identifier;
- (BOOL)_presentTransactionDetailsForPassWithUniqueID:(id)d transactionIdentifier:(id)identifier;
- (BOOL)_presentTransactionDetailsForPassWithUniqueID:(id)d transactionServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier;
- (BOOL)_processBalanceSummaryHostWithPathComponents:(id)components queryItems:(id)items;
- (BOOL)_processCardHostWithPathComponents:(id)components queryItems:(id)items;
- (BOOL)_processDailyCashHostWithPathComponents:(id)components queryItems:(id)items;
- (BOOL)_processPassUpdateHostWithPathComponents:(id)components;
- (BOOL)_processPassesHostWithPathComponents:(id)components urlComponents:(id)urlComponents;
- (BOOL)_processProvisioningContinuityHostWithPathComponents:(id)components;
- (BOOL)_processSavingsHostWithPathComponents:(id)components;
- (BOOL)_processShareHostWithPathComponents:(id)components urlComponents:(id)urlComponents;
- (BOOL)_processShareableCredentialsHostWithQueryItems:(id)items;
- (BOOL)_processShoeboxSchemeForHost:(id)host pathComponents:(id)components urlComponents:(id)urlComponents;
- (BOOL)_processShoeboxSchemeForURL:(id)l;
- (BOOL)_processSubcredentialInvitationHostWithQueryItems:(id)items;
- (BOOL)_processTransactionHostWithQueryItems:(id)items;
- (BOOL)handleOpenURL:(id)l;
- (BOOL)handleUniversalLinkWithURL:(id)l;
- (BOOL)handleUniversalLinkWithUserActivity:(id)activity;
- (NPKOpenURLRouter)initWithDelegate:(id)delegate;
- (NPKOpenURLRouterDelegate)delegate;
@end

@implementation NPKOpenURLRouter

- (NPKOpenURLRouter)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = NPKOpenURLRouter;
  v5 = [(NPKOpenURLRouter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (BOOL)handleOpenURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = pk_General_log(lCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = lCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Handling URL: %@", &v19, 0xCu);
    }
  }

  if ([(NPKOpenURLRouter *)self handleUniversalLinkWithURL:lCopy])
  {
    goto LABEL_10;
  }

  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"shoebox"])
  {
  }

  else
  {
    scheme2 = [lCopy scheme];
    v11 = [scheme2 isEqualToString:@"wallet"];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  v12 = [(NPKOpenURLRouter *)self _processShoeboxSchemeForURL:lCopy];
  if (v12)
  {
LABEL_10:
    v13 = 1;
    goto LABEL_11;
  }

LABEL_12:
  v15 = pk_General_log(v12);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);

  v13 = 0;
  if (v16)
  {
    v18 = pk_General_log(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = lCopy;
      _os_log_impl(&dword_25B300000, v18, OS_LOG_TYPE_DEFAULT, "Notice: Didn't understand URL: %@", &v19, 0xCu);
    }

    v13 = 0;
  }

LABEL_11:

  return v13;
}

- (BOOL)handleUniversalLinkWithUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  v6 = [activityType isEqual:*MEMORY[0x277CCA850]];

  if (v6)
  {
    webpageURL = [activityCopy webpageURL];
    v8 = [(NPKOpenURLRouter *)self handleUniversalLinkWithURL:webpageURL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)openURLInSafariForURL:(id)l fromPresentingController:(id)controller
{
  v13 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = [self canOpenURLInSafariForURL:lCopy];
  if ((v6 & 1) == 0)
  {
    v7 = pk_General_log(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v10 = pk_General_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = 138412290;
        v12 = lCopy;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: Unable to re-direct url: %@ to Safari.", &v11, 0xCu);
      }
    }
  }
}

+ (void)openDeepLinkForURL:(id)l isSensitive:(BOOL)sensitive
{
  sensitiveCopy = sensitive;
  lCopy = l;
  [objc_opt_class() openDeepLinkForURL:lCopy isSensitive:sensitiveCopy completion:0];
}

+ (void)openDeepLinkForURL:(id)l isSensitive:(BOOL)sensitive completion:(id)completion
{
  sensitiveCopy = sensitive;
  lCopy = l;
  completionCopy = completion;
  v9 = completionCopy;
  if (lCopy)
  {
    v10 = objc_alloc_init(MEMORY[0x277CC1F00]);
    [v10 setSensitive:sensitiveCopy];
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __62__NPKOpenURLRouter_openDeepLinkForURL_isSensitive_completion___block_invoke;
    v12[3] = &unk_279946850;
    v13 = lCopy;
    v14 = v9;
    [defaultWorkspace openURL:v13 configuration:v10 completionHandler:v12];

LABEL_5:
    goto LABEL_6;
  }

  if (completionCopy)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.NPKErrorDomain" code:-1007 userInfo:0];
    (v9)[2](v9, v10);
    goto LABEL_5;
  }

LABEL_6:
}

void __62__NPKOpenURLRouter_openDeepLinkForURL_isSensitive_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = pk_General_log(v6);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);

    if (v9)
    {
      v11 = pk_General_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 32);
        v14 = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_25B300000, v11, OS_LOG_TYPE_DEFAULT, "Notice: Failed to open deep link for url: %@ with error: %@", &v14, 0x16u);
      }
    }
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    (*(v13 + 16))(v13, v7);
  }
}

- (BOOL)handleUniversalLinkWithURL:(id)l
{
  v25 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = pk_General_log(lCopy);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = lCopy;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Attempting to handle URL: %@ as universal link", buf, 0xCu);
    }
  }

  v9 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:1];
  scheme = [v9 scheme];
  if ([&unk_286CE7558 containsObject:scheme])
  {
    v11 = [v9 URL];
    pathComponents = [v11 pathComponents];

    v22 = pathComponents;
    v13 = [(NPKOpenURLRouter *)self _isValidRelayServerURL:lCopy outPathComponents:&v22];
    v14 = v22;

    if (!v13)
    {
      host = [v9 host];
      v16 = *MEMORY[0x277D38AF0];
      v17 = host;
      v18 = v17;
      if (v17 == v16)
      {
      }

      else
      {
        if (!v17 || !v16)
        {

LABEL_16:
          v20 = 0;
          goto LABEL_17;
        }

        v19 = [v17 isEqualToString:v16];

        if (!v19)
        {
          goto LABEL_16;
        }
      }
    }

    v20 = [(NPKOpenURLRouter *)self _handleUniversalLinkURLAsShoeboxURLForPathComponents:v14 shouldParsePathComponents:!v13 urlComponents:v9];
LABEL_17:

    goto LABEL_18;
  }

  v20 = 0;
LABEL_18:

  return v20;
}

- (BOOL)_processShoeboxSchemeForURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  pathComponents = [lCopy pathComponents];
  v7 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:lCopy resolvingAgainstBaseURL:0];

  LOBYTE(self) = [(NPKOpenURLRouter *)self _processShoeboxSchemeForHost:host pathComponents:pathComponents urlComponents:v7];
  return self;
}

- (BOOL)_processShoeboxSchemeForHost:(id)host pathComponents:(id)components urlComponents:(id)urlComponents
{
  hostCopy = host;
  componentsCopy = components;
  urlComponentsCopy = urlComponents;
  queryItems = [urlComponentsCopy queryItems];
  if ([hostCopy isEqualToString:*MEMORY[0x277D38AC8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processCardHostWithPathComponents:componentsCopy queryItems:queryItems];
  }

  else if ([hostCopy isEqualToString:*MEMORY[0x277D389A8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processShareableCredentialsHostWithQueryItems:queryItems];
  }

  else if ([hostCopy isEqualToString:*MEMORY[0x277D38588]])
  {
    v12 = [(NPKOpenURLRouter *)self _processSubcredentialInvitationHostWithQueryItems:queryItems];
  }

  else if ([hostCopy isEqualToString:*MEMORY[0x277D38AD8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processTransactionHostWithQueryItems:queryItems];
  }

  else if ([hostCopy isEqualToString:*MEMORY[0x277D38A30]])
  {
    v12 = [(NPKOpenURLRouter *)self _processShareHostWithPathComponents:componentsCopy urlComponents:urlComponentsCopy];
  }

  else if ([hostCopy isEqualToString:@"passes"])
  {
    v12 = [(NPKOpenURLRouter *)self _processPassesHostWithPathComponents:componentsCopy urlComponents:urlComponentsCopy];
  }

  else if ([hostCopy isEqualToString:@"listActions"])
  {
    v12 = [(NPKOpenURLRouter *)self _processListActionsMenuHostWithPathComponents:componentsCopy];
  }

  else if ([hostCopy isEqualToString:*MEMORY[0x277D38A38]])
  {
    v12 = [(NPKOpenURLRouter *)self _processExpiredPassListHostWithPathComponents:componentsCopy];
  }

  else if ([hostCopy isEqualToString:@"addCard"] || objc_msgSend(hostCopy, "isEqualToString:", *MEMORY[0x277D38A28]))
  {
    v12 = [(NPKOpenURLRouter *)self _processAddCardHostWithPathComponents:componentsCopy];
  }

  else if ([hostCopy isEqualToString:*MEMORY[0x277D38AB8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processDailyCashHostWithPathComponents:componentsCopy queryItems:queryItems];
  }

  else if ([hostCopy isEqualToString:*MEMORY[0x277D38AB0]])
  {
    v12 = [(NPKOpenURLRouter *)self _processBalanceSummaryHostWithPathComponents:componentsCopy queryItems:queryItems];
  }

  else if ([hostCopy isEqualToString:*MEMORY[0x277D38A20]])
  {
    v12 = [(NPKOpenURLRouter *)self _processSavingsHostWithPathComponents:componentsCopy];
  }

  else if ([hostCopy isEqualToString:*MEMORY[0x277D38AA8]])
  {
    v12 = [(NPKOpenURLRouter *)self _processPassUpdateHostWithPathComponents:componentsCopy];
  }

  else
  {
    if (![hostCopy isEqualToString:*MEMORY[0x277D38A18]])
    {
      v13 = 0;
      goto LABEL_21;
    }

    v12 = [(NPKOpenURLRouter *)self _processProvisioningContinuityHostWithPathComponents:componentsCopy];
  }

  v13 = v12;
LABEL_21:

  return v13;
}

- (BOOL)_processCardHostWithPathComponents:(id)components queryItems:(id)items
{
  v49 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  itemsCopy = items;
  v8 = [componentsCopy count];
  if (v8 == 3)
  {
    lastObject = [componentsCopy objectAtIndexedSubscript:1];
    v15 = [componentsCopy objectAtIndexedSubscript:2];
    v16 = pk_General_log(v15);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = pk_General_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v46 = v15;
        v47 = 2112;
        v48 = lastObject;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Handling action %@ for pass ID %@", buf, 0x16u);
      }
    }

    if ([v15 isEqualToString:@"persistent_emulation"])
    {
      v20 = [(NPKOpenURLRouter *)self _handleServiceModeRequestedForPassWithUniqueID:lastObject];
    }

    else
    {
      if ([v15 isEqualToString:*MEMORY[0x277D38AD0]])
      {
        v35 = v15;
        selfCopy = self;
        v37 = lastObject;
        v38 = itemsCopy;
        v39 = componentsCopy;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v21 = itemsCopy;
        v22 = [v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = 0;
          v25 = *v41;
          v26 = *MEMORY[0x277D38A90];
          do
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v41 != v25)
              {
                objc_enumerationMutation(v21);
              }

              v28 = *(*(&v40 + 1) + 8 * i);
              name = [v28 name];
              v30 = [name isEqualToString:v26];

              if (v30)
              {
                value = [v28 value];
                v32 = [value componentsSeparatedByString:{@", "}];

                v24 = v32;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v40 objects:v44 count:16];
          }

          while (v23);
        }

        else
        {
          v24 = 0;
        }

        if ([v24 count] > 1)
        {
          firstObject = 0;
        }

        else
        {
          firstObject = [v24 firstObject];
        }

        itemsCopy = v38;
        componentsCopy = v39;
        lastObject = v37;
        v15 = v35;
        v14 = [(NPKOpenURLRouter *)selfCopy _presentShareDetailsForPassUniqueID:v37 shareIdentifier:firstObject];

        goto LABEL_36;
      }

      if ([v15 isEqualToString:*MEMORY[0x277D38AC0]])
      {
        v20 = [(NPKOpenURLRouter *)self _presentEntitlementDetailsForPassUniqueID:lastObject];
      }

      else
      {
        if (!PKPaymentPassActionTypeFromString())
        {

          v14 = 0;
          goto LABEL_37;
        }

        v20 = [(NPKOpenURLRouter *)self _presentPassDetailsForPassWithUniqueID:lastObject];
      }
    }

    v14 = v20;
LABEL_36:

LABEL_37:
    goto LABEL_38;
  }

  if (v8 == 2)
  {
    lastObject = [componentsCopy lastObject];
    v10 = pk_General_log(lastObject);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

    if (v11)
    {
      v13 = pk_General_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = lastObject;
        _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Notice: Handling regular pass with pass ID %@", buf, 0xCu);
      }
    }

    v14 = [(NPKOpenURLRouter *)self _presentPassDetailsForPassWithUniqueID:lastObject];
    goto LABEL_37;
  }

  v14 = 0;
LABEL_38:

  return v14;
}

- (BOOL)_processShareableCredentialsHostWithQueryItems:(id)items
{
  v54 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v5 = [itemsCopy countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    selfCopy = self;
    v7 = 0;
    v40 = 0;
    v8 = *v50;
    v9 = *MEMORY[0x277D389A0];
    v10 = *MEMORY[0x277CCA308];
    v43 = *MEMORY[0x277D389B0];
    v37 = itemsCopy;
    v38 = *MEMORY[0x277D389A0];
    v39 = *v50;
    do
    {
      v11 = 0;
      v41 = v6;
      do
      {
        if (*v50 != v8)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        name = [v12 name];
        if ([v9 isEqualToString:name])
        {
          value = [v12 value];
          pk_decodeHexadecimal = [value pk_decodeHexadecimal];

          if (pk_decodeHexadecimal)
          {
            v42 = v7;
            v16 = objc_alloc(MEMORY[0x277CCAAC8]);
            v48 = 0;
            v17 = [v16 initForReadingFromData:pk_decodeHexadecimal error:&v48];
            v18 = v48;
            if (v17)
            {
              v19 = v18 == 0;
            }

            else
            {
              v19 = 0;
            }

            if (v19)
            {
              v21 = MEMORY[0x277CBEB98];
              v22 = objc_opt_class();
              v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
              v47 = 0;
              v24 = [v17 decodeTopLevelObjectOfClasses:v23 forKey:v10 error:&v47];
              v20 = v47;

              if (v24)
              {
                v40 = v24;
                itemsCopy = v37;
              }

              else
              {
                v25 = MEMORY[0x277CBEB98];
                v26 = objc_opt_class();
                v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
                v46 = v20;
                v28 = [v17 decodeTopLevelObjectOfClasses:v27 forKey:v10 error:&v46];
                v29 = v46;

                if (v28)
                {
                  v40 = [v28 pk_arrayBySafelyApplyingBlock:&__block_literal_global_13];
                }

                else
                {
                  v40 = 0;
                }

                itemsCopy = v37;

                v20 = v29;
              }
            }

            else
            {
              v20 = v18;
            }

            [v17 finishDecoding];

            v7 = v42;
            v9 = v38;
            v8 = v39;
          }

          v6 = v41;
        }

        if ([v43 isEqualToString:name])
        {
          value2 = [v12 value];
          pk_decodeHexadecimal2 = [value2 pk_decodeHexadecimal];

          v7 = pk_decodeHexadecimal2;
        }

        ++v11;
      }

      while (v6 != v11);
      v6 = [itemsCopy countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v6);
    v32 = v40;
    if (v40)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __67__NPKOpenURLRouter__processShareableCredentialsHostWithQueryItems___block_invoke_2;
      v44[3] = &unk_279947330;
      v7 = v7;
      v45 = v7;
      v33 = [v40 pk_arrayByApplyingBlock:v44];
    }

    else
    {
      v33 = 0;
    }

    self = selfCopy;
  }

  else
  {
    v32 = 0;
    v7 = 0;
    v33 = 0;
  }

  v34 = [(NPKOpenURLRouter *)self _handleShareableCredentialsAcceptanceWithShareableCredentials:v33 thumbnailImageData:v7];

  return v34;
}

id __67__NPKOpenURLRouter__processShareableCredentialsHostWithQueryItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D38128];
  v4 = a2;
  v5 = [[v3 alloc] initWithEncryptedProvisioningTarget:v4 provisioningSharingIdentifier:0 passThumbnailImageData:*(a1 + 32)];

  return v5;
}

- (BOOL)_processSubcredentialInvitationHostWithQueryItems:(id)items
{
  selfCopy = self;
  v36 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = items;
  v3 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v3)
  {
    v4 = v3;
    value2 = 0;
    value3 = 0;
    pk_decodeHexadecimal = 0;
    value = 0;
    v7 = *v32;
    v8 = *MEMORY[0x277D38570];
    v9 = *MEMORY[0x277D38580];
    v27 = *MEMORY[0x277D38578];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        name = [v11 name];
        v13 = [v8 isEqualToString:name];

        if (v13)
        {
          v14 = value == 0;
        }

        else
        {
          v14 = 0;
        }

        if (v14)
        {
          value = [v11 value];
        }

        else
        {
          name2 = [v11 name];
          v16 = [v9 isEqualToString:name2];

          if (v16)
          {
            v17 = value2 == 0;
          }

          else
          {
            v17 = 0;
          }

          if (v17)
          {
            value2 = [v11 value];
          }

          else
          {
            name3 = [v11 name];
            v19 = [@"contact_name" isEqualToString:name3];

            if (v19)
            {
              v20 = value3 == 0;
            }

            else
            {
              v20 = 0;
            }

            if (v20)
            {
              value3 = [v11 value];
            }

            else
            {
              name4 = [v11 name];
              v22 = [v27 isEqualToString:name4];

              if (v22 && !pk_decodeHexadecimal)
              {
                value4 = [v11 value];
                pk_decodeHexadecimal = [value4 pk_decodeHexadecimal];
              }
            }
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v4);
  }

  else
  {
    value2 = 0;
    value3 = 0;
    pk_decodeHexadecimal = 0;
    value = 0;
  }

  selfCopy = [(NPKOpenURLRouter *)selfCopy _handleSubcredentialInvitationAcceptanceForLocalInvitationIdentifier:value remoteInvitationIdentifier:value2 contactName:value3 thumbnailImageData:pk_decodeHexadecimal, selfCopy];

  return selfCopy;
}

- (BOOL)_processTransactionHostWithQueryItems:(id)items
{
  v50 = *MEMORY[0x277D85DE8];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__9;
  v47 = __Block_byref_object_dispose__9;
  v48 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = items;
  v4 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  selfCopy = self;
  value = 0;
  value2 = 0;
  value3 = 0;
  if (v4)
  {
    v8 = *v40;
    v9 = *MEMORY[0x277D38A80];
    v34 = *MEMORY[0x277D38A98];
    v33 = *MEMORY[0x277D38A88];
    v32 = *MEMORY[0x277D38AA0];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        if (v44[5] || ([*(*(&v39 + 1) + 8 * i) name], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v9, "isEqualToString:", v12), v12, !v13))
        {
          if (value3 || ([v11 name], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v34, "isEqualToString:", v16), v16, !v17))
          {
            if (value2 || ([v11 name], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v33, "isEqualToString:", v18), v18, !v19))
            {
              if (!value)
              {
                name = [v11 name];
                v21 = [v32 isEqualToString:name];

                if (v21)
                {
                  value = [v11 value];
                }

                else
                {
                  value = 0;
                }
              }
            }

            else
            {
              value2 = [v11 value];
            }
          }

          else
          {
            value3 = [v11 value];
          }
        }

        else
        {
          value4 = [v11 value];
          v15 = v44[5];
          v44[5] = value4;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v4);
  }

  v22 = dispatch_group_create();
  if (!v44[5])
  {
    if ([value3 length])
    {
      dispatch_group_enter(v22);
      v23 = objc_alloc_init(MEMORY[0x277D380F0]);
      v24 = v38;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke;
      v38[3] = &unk_279947358;
      v38[5] = &v43;
      v38[4] = v22;
      [v23 passUniqueIdentifierForTransactionWithIdentifier:value3 completion:v38];
    }

    else
    {
      if (![value2 length])
      {
        v29 = 0;
        goto LABEL_34;
      }

      dispatch_group_enter(v22);
      v23 = objc_alloc_init(MEMORY[0x277D380F0]);
      if ([value length])
      {
        v24 = v37;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke_2;
        v37[3] = &unk_279947358;
        v37[5] = &v43;
        v37[4] = v22;
        [v23 passUniqueIdentifierForTransactionWithServiceIdentifier:value2 transactionSourceIdentifier:value completion:v37];
      }

      else
      {
        v24 = v36;
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke_3;
        v36[3] = &unk_279947358;
        v36[5] = &v43;
        v36[4] = v22;
        [v23 ambiguousPassUniqueIdentifierForTransactionWithServiceIdentifier:value2 completion:v36];
      }
    }
  }

  v25 = dispatch_time(0, 300000000000);
  dispatch_group_wait(v22, v25);
  if ([value3 length])
  {
    v26 = [(NPKOpenURLRouter *)selfCopy _presentTransactionDetailsForPassWithUniqueID:v44[5] transactionIdentifier:value3];
  }

  else
  {
    v27 = [value2 length];
    v28 = v44[5];
    if (v27)
    {
      v26 = [(NPKOpenURLRouter *)selfCopy _presentTransactionDetailsForPassWithUniqueID:v28 transactionServiceIdentifier:value2 transactionSourceIdentifier:value];
    }

    else
    {
      v26 = [(NPKOpenURLRouter *)selfCopy _presentPassDetailsForPassWithUniqueID:v28];
    }
  }

  v29 = v26;
LABEL_34:

  _Block_object_dispose(&v43, 8);
  return v29;
}

void __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __58__NPKOpenURLRouter__processTransactionHostWithQueryItems___block_invoke_3(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)_processShareHostWithPathComponents:(id)components urlComponents:(id)urlComponents
{
  componentsCopy = components;
  urlComponentsCopy = urlComponents;
  v8 = [componentsCopy count];
  if (v8 == 2)
  {
    v9 = [componentsCopy objectAtIndexedSubscript:1];
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = v8;
    if (v8 < 3)
    {
      v9 = 0;
LABEL_17:
      v22 = 0;
      goto LABEL_18;
    }

    v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v12 = 1;
    do
    {
      v13 = [componentsCopy objectAtIndexedSubscript:v12];
      v14 = v13;
      if (v13 == @"https:" || v13 && (v15 = [(__CFString *)v13 isEqualToString:@"https:"], v14, v15))
      {
        [v11 appendFormat:@"%@//", v14];
      }

      else
      {
        [v11 appendFormat:@"%@/", v14];
      }

      ++v12;
    }

    while (v10 != v12);
    fragment = [urlComponentsCopy fragment];
    [v11 appendFormat:@"#%@", fragment];

    v9 = [v11 copy];
    if (!v9)
    {
      goto LABEL_17;
    }
  }

  queryItems = [urlComponentsCopy queryItems];
  v18 = [queryItems pk_firstObjectPassingTest:&__block_literal_global_114];

  value = [v18 value];
  v20 = value;
  v21 = *MEMORY[0x277D38510];
  if (value)
  {
    v21 = value;
  }

  v22 = v21;

LABEL_18:
  v23 = [(NPKOpenURLRouter *)self _handleShareForMailboxAddress:v9 referralSource:v22];

  return v23;
}

uint64_t __70__NPKOpenURLRouter__processShareHostWithPathComponents_urlComponents___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = *MEMORY[0x277D38A48];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v4 && v5)
    {
      v7 = [v4 isEqualToString:v5];
    }
  }

  return v7;
}

- (BOOL)_processPassesHostWithPathComponents:(id)components urlComponents:(id)urlComponents
{
  v17 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  if ([componentsCopy count] == 2)
  {
    lastObject = [componentsCopy lastObject];
    v7 = [lastObject isEqualToString:@"preventAppUninstall"];
    if (v7)
    {
      _presentPassListPreventAppUninstall = [(NPKOpenURLRouter *)self _presentPassListPreventAppUninstall];
    }

    else
    {
      v10 = pk_General_log(v7);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (v11)
      {
        v13 = pk_General_log(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412290;
          v16 = lastObject;
          _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_ERROR, "Error: Cannot handle unsupported pass list action: %@. Presenting pass list.", &v15, 0xCu);
        }
      }

      _presentPassListPreventAppUninstall = [(NPKOpenURLRouter *)self _presentPassList];
    }

    _presentPassList = _presentPassListPreventAppUninstall;
  }

  else
  {
    _presentPassList = [(NPKOpenURLRouter *)self _presentPassList];
  }

  return _presentPassList;
}

- (BOOL)_processDailyCashHostWithPathComponents:(id)components queryItems:(id)items
{
  componentsCopy = components;
  itemsCopy = items;
  if ([componentsCopy count] < 2)
  {
    v9 = [itemsCopy npkFindFirstObjectMatchingCondition:&__block_literal_global_116];
    v10 = v9;
    if (v9)
    {
      value = [v9 value];
    }

    else
    {
      value = 0;
    }
  }

  else
  {
    value = [componentsCopy objectAtIndexedSubscript:1];
  }

  v11 = [(NPKOpenURLRouter *)self _presentPassBalanceDetailsForPassWithUniqueID:value];

  return v11;
}

uint64_t __71__NPKOpenURLRouter__processDailyCashHostWithPathComponents_queryItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:*MEMORY[0x277D38A80]];

  return v3;
}

- (BOOL)_processBalanceSummaryHostWithPathComponents:(id)components queryItems:(id)items
{
  v5 = [items npkFindFirstObjectMatchingCondition:&__block_literal_global_118];
  v6 = v5;
  if (v5)
  {
    value = [v5 value];
  }

  else
  {
    value = 0;
  }

  v8 = [(NPKOpenURLRouter *)self _presentPassBalanceDetailsForPassWithUniqueID:value];

  return v8;
}

uint64_t __76__NPKOpenURLRouter__processBalanceSummaryHostWithPathComponents_queryItems___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:*MEMORY[0x277D38A80]];

  return v3;
}

- (BOOL)_processSavingsHostWithPathComponents:(id)components
{
  componentsCopy = components;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  mEMORY[0x277D37CD0] = [MEMORY[0x277D37CD0] sharedInstance];
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __58__NPKOpenURLRouter__processSavingsHostWithPathComponents___block_invoke;
  v13 = &unk_2799473A0;
  v15 = &v16;
  v7 = v6;
  v14 = v7;
  [mEMORY[0x277D37CD0] defaultAccountForFeature:2 completion:&v10];
  v8 = dispatch_time(0, 300000000000);
  dispatch_group_wait(v7, v8);
  LOBYTE(self) = [(NPKOpenURLRouter *)self _presentSavingsDetailsWithPassUniqueID:v17[5], v10, v11, v12, v13];

  _Block_object_dispose(&v16, 8);
  return self;
}

void __58__NPKOpenURLRouter__processSavingsHostWithPathComponents___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = pk_Payment_log(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    v7 = pk_Payment_log(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v3;
      _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Notice: (account-pass-provisioning) fetched account %@", &v17, 0xCu);
    }
  }

  if (v3)
  {
    v8 = [v3 associatedPassUniqueID];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v12 = pk_General_log(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

    if (v13)
    {
      v15 = pk_General_log(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*(*(a1 + 40) + 8) + 40);
        v17 = 138412290;
        v18 = v16;
        _os_log_impl(&dword_25B300000, v15, OS_LOG_TYPE_DEFAULT, "Notice: Found account with card unique id %@ ", &v17, 0xCu);
      }
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

- (BOOL)_processPassUpdateHostWithPathComponents:(id)components
{
  v24 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v5 = [componentsCopy count];
  if (v5 == 2)
  {
    lastObject = [componentsCopy lastObject];
    mEMORY[0x277D37FC0] = [MEMORY[0x277D37FC0] sharedInstance];
    v8 = [mEMORY[0x277D37FC0] diffForPassUpdateUserNotificationWithIdentifier:lastObject];
    passUniqueID = [v8 passUniqueID];
    v10 = [passUniqueID length];
    if (v10)
    {
      v11 = pk_General_log(v10);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

      if (v12)
      {
        v14 = pk_General_log(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v22 = 138412290;
          v23 = passUniqueID;
          _os_log_impl(&dword_25B300000, v14, OS_LOG_TYPE_DEFAULT, "Notice: Successfully retrieved passUniqueID from notificationID: %@", &v22, 0xCu);
        }
      }

      _presentPassList = [(NPKOpenURLRouter *)self _presentPassDetailsForPassWithUniqueID:passUniqueID];
    }

    else
    {
      _presentPassList = [(NPKOpenURLRouter *)self _presentPassList];
    }

    _presentPassList2 = _presentPassList;
  }

  else
  {
    v16 = pk_General_log(v5);
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);

    if (v17)
    {
      v19 = pk_General_log(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_25B300000, v19, OS_LOG_TYPE_DEFAULT, "Notice: Unsupported pass update notification. Presenting pass list instead.", &v22, 2u);
      }
    }

    _presentPassList2 = [(NPKOpenURLRouter *)self _presentPassList];
  }

  return _presentPassList2;
}

- (BOOL)_processProvisioningContinuityHostWithPathComponents:(id)components
{
  v19 = *MEMORY[0x277D85DE8];
  componentsCopy = components;
  v4 = [componentsCopy count];
  v5 = v4;
  if (v4 == 2)
  {
    lastObject = [componentsCopy lastObject];
    v7 = objc_alloc_init(MEMORY[0x277D380F0]);
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __73__NPKOpenURLRouter__processProvisioningContinuityHostWithPathComponents___block_invoke;
    v15[3] = &unk_279944F98;
    v16 = v8;
    v9 = v8;
    [v7 userNotificationActionPerformed:2 notificationIdentifier:lastObject completion:v15];
    v10 = dispatch_time(0, 300000000000);
    dispatch_group_wait(v9, v10);
  }

  else
  {
    v11 = pk_General_log(v4);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

    if (!v12)
    {
      goto LABEL_7;
    }

    lastObject = pk_General_log(v13);
    if (os_log_type_enabled(lastObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = componentsCopy;
      _os_log_impl(&dword_25B300000, lastObject, OS_LOG_TYPE_DEFAULT, "Notice: Unable to handle provisioningContinuity url with path components: %@", buf, 0xCu);
    }
  }

LABEL_7:
  return v5 == 2;
}

- (BOOL)_presentPassDetailsForPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = [dCopy length];
  if (v5)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestPassDetailsPresentationForPassWithUniqueID:dCopy];
  }

  return v5 != 0;
}

- (BOOL)_handleServiceModeRequestedForPassWithUniqueID:(id)d
{
  dCopy = d;
  v5 = [dCopy length];
  if (v5)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestServiceModeForPassWithUniqueID:dCopy];
  }

  return v5 != 0;
}

- (BOOL)_presentShareDetailsForPassUniqueID:(id)d shareIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = [dCopy length];
  if (v8)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestShareDetailsPresentationForPassWithUniqueID:dCopy shareIdentifier:identifierCopy];
  }

  return v8 != 0;
}

- (BOOL)_presentEntitlementDetailsForPassUniqueID:(id)d
{
  dCopy = d;
  v5 = [dCopy length];
  if (v5)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestEntitlementDetailsPresentationForPassWithUniqueID:dCopy];
  }

  return v5 != 0;
}

- (BOOL)_handleShareableCredentialsAcceptanceWithShareableCredentials:(id)credentials thumbnailImageData:(id)data
{
  if (credentials)
  {
    dataCopy = data;
    credentialsCopy = credentials;
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestShareableCredentialAcceptanceFlowPresentationWithShareableCredentials:credentialsCopy thumbnailImageData:dataCopy];
  }

  return credentials != 0;
}

- (BOOL)_handleSubcredentialInvitationAcceptanceForLocalInvitationIdentifier:(id)identifier remoteInvitationIdentifier:(id)invitationIdentifier contactName:(id)name thumbnailImageData:(id)data
{
  identifierCopy = identifier;
  invitationIdentifierCopy = invitationIdentifier;
  nameCopy = name;
  dataCopy = data;
  v14 = [identifierCopy length];
  if (v14)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestSubcredentialInvitationAcceptanceFlowPresentationWithLocalInvitationIdentifier:identifierCopy remoteInvitationIdentifier:invitationIdentifierCopy contactName:nameCopy thumbnailImageData:dataCopy];
  }

  return v14 != 0;
}

- (BOOL)_handleShareForMailboxAddress:(id)address referralSource:(id)source
{
  addressCopy = address;
  sourceCopy = source;
  v8 = [addressCopy length];
  if (v8)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestSharedInvitationAcceptanceFlowPresentationWithMailboxAddress:addressCopy referralSource:sourceCopy];
  }

  return v8 != 0;
}

- (BOOL)_presentTransactionDetailsForPassWithUniqueID:(id)d transactionServiceIdentifier:(id)identifier transactionSourceIdentifier:(id)sourceIdentifier
{
  dCopy = d;
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  v11 = [dCopy length];
  if (v11)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestTransactionDetailsForPassWithUniqueID:dCopy transactionServiceIdentifier:identifierCopy transactionSourceIdentifier:sourceIdentifierCopy];
  }

  return v11 != 0;
}

- (BOOL)_presentTransactionDetailsForPassWithUniqueID:(id)d transactionIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  v8 = [dCopy length];
  if (v8)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestTransactionDetailsForPassWithUniqueID:dCopy transactionIdentifier:identifierCopy];
  }

  return v8 != 0;
}

- (BOOL)_presentPassList
{
  delegate = [(NPKOpenURLRouter *)self delegate];
  [delegate requestPassListForURLRouter:self];

  return 1;
}

- (BOOL)_presentListActionsMenu
{
  delegate = [(NPKOpenURLRouter *)self delegate];
  [delegate requestListActionsMenuForURLRouter:self];

  return 1;
}

- (BOOL)_presentExpiredPassList
{
  delegate = [(NPKOpenURLRouter *)self delegate];
  [delegate requestExpiredPassListForURLRouter:self];

  return 1;
}

- (BOOL)_presentPassListPreventAppUninstall
{
  delegate = [(NPKOpenURLRouter *)self delegate];
  [delegate requestPassListPreventAppUninstallForURLRouter:self];

  return 1;
}

- (BOOL)_presentProvisioningFlow
{
  delegate = [(NPKOpenURLRouter *)self delegate];
  [delegate requestProvisioningFlowForURLRouter:self];

  return 1;
}

- (BOOL)_presentPassBalanceDetailsForPassWithUniqueID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [dCopy length];
  if (v5)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestPassBalanceDetailsPresentationForPassWithUniqueID:dCopy];
  }

  else
  {
    v7 = pk_General_log(0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v10 = pk_General_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = dCopy;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: Could not find pass with uniqueID: %@", &v12, 0xCu);
      }
    }
  }

  return v5 != 0;
}

- (BOOL)_presentSavingsDetailsWithPassUniqueID:(id)d
{
  v14 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [dCopy length];
  if (v5)
  {
    delegate = [(NPKOpenURLRouter *)self delegate];
    [delegate urlRouter:self requestSavingsDetailsPresentationWithPassUniqueID:dCopy];
  }

  else
  {
    v7 = pk_General_log(0);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

    if (v8)
    {
      v10 = pk_General_log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = dCopy;
        _os_log_impl(&dword_25B300000, v10, OS_LOG_TYPE_ERROR, "Error: Could not find card with uniqueID: %@", &v12, 0xCu);
      }
    }
  }

  return v5 != 0;
}

- (BOOL)_isValidRelayServerURL:(id)l outPathComponents:(id *)components
{
  v23[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v6 = objc_alloc_init(MEMORY[0x277D380F0]);
  sharedPaymentWebServiceContext = [v6 sharedPaymentWebServiceContext];
  configuration = [sharedPaymentWebServiceContext configuration];
  v9 = PKCurrentRegion();
  v10 = [configuration allowedRelayServerHostsForRegion:v9];

  host = [lCopy host];
  if ([v10 containsObject:host])
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [v12 initWithFormat:@"/v%@/%@/", *MEMORY[0x277D389C0], *MEMORY[0x277D389B8]];
    v14 = *MEMORY[0x277D38AF0];
    v15 = host;
    v16 = v15;
    if (v15 == v14)
    {
    }

    else
    {
      if (!v15 || !v14)
      {

        goto LABEL_12;
      }

      v17 = [v15 isEqualToString:v14];

      if (!v17)
      {
        goto LABEL_12;
      }
    }

    path = [lCopy path];
    v20 = [path hasPrefix:v13];

    if (!v20)
    {
      v18 = 0;
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v23[0] = *MEMORY[0x277D38A30];
    absoluteString = [lCopy absoluteString];
    v23[1] = absoluteString;
    *components = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];

    v18 = 1;
    goto LABEL_13;
  }

  v18 = 0;
LABEL_14:

  return v18;
}

- (BOOL)_handleUniversalLinkURLAsShoeboxURLForPathComponents:(id)components shouldParsePathComponents:(BOOL)pathComponents urlComponents:(id)urlComponents
{
  pathComponentsCopy = pathComponents;
  componentsCopy = components;
  urlComponentsCopy = urlComponents;
  v10 = [componentsCopy count];
  v11 = v10;
  if (!pathComponentsCopy)
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (v10 < 1)
  {
    goto LABEL_14;
  }

  v12 = 0;
  while (1)
  {
    v13 = [componentsCopy objectAtIndexedSubscript:v12];
    if (![v13 isEqualToString:@"/"])
    {
      break;
    }

LABEL_7:
    if (v11 == ++v12)
    {
      goto LABEL_14;
    }
  }

  v14 = [v13 isEqualToString:@"apple-card"];

  if (v14)
  {
    goto LABEL_7;
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    v19 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v15 = [componentsCopy objectAtIndexedSubscript:v12];
  v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v16 addObject:@"/"];
  v17 = v12 + 1;
  if (v17 < v11)
  {
    do
    {
      v18 = [componentsCopy objectAtIndexedSubscript:v17];
      [v16 addObject:v18];

      ++v17;
    }

    while (v11 != v17);
  }

  v19 = [(NPKOpenURLRouter *)self _processShoeboxSchemeForHost:v15 pathComponents:v16 urlComponents:urlComponentsCopy];

LABEL_15:
  return v19;
}

- (NPKOpenURLRouterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end