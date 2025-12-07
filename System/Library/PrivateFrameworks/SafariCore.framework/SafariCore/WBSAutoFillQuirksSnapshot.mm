@interface WBSAutoFillQuirksSnapshot
- (WBSAutoFillQuirksSnapshot)initWithSnapshotData:(id)data error:(id *)error;
- (id)_appIDsToDomainsAssociationsFromAutoFillQuirks:(id)quirks error:(id *)error;
- (id)_changePasswordURLStringsByDomainFromAutoFillQuirks:(id)quirks error:(id *)error;
- (id)_domainsIneligibleForPasswordAuditingFromAutoFillQuirks:(id)quirks error:(id *)error;
- (id)_domainsSetFromAutoFillQuirks:(id)quirks forKey:(id)key error:(id *)error;
- (id)_domainsToConsiderIdenticalFromAutoFillQuirls:(id)quirls error:(id *)error;
- (id)_domainsWithAssociatedCredentialsFromAutoFillQuirks:(id)quirks error:(id *)error;
- (id)_passwordRequirementsByDomainFromAutoFillQuirks:(id)quirks error:(id *)error;
@end

@implementation WBSAutoFillQuirksSnapshot

- (WBSAutoFillQuirksSnapshot)initWithSnapshotData:(id)data error:(id *)error
{
  dataCopy = data;
  v41.receiver = self;
  v41.super_class = WBSAutoFillQuirksSnapshot;
  v7 = [(WBSAutoFillQuirksSnapshot *)&v41 init];
  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [MEMORY[0x1E695DF20] safari_dictionaryWithPropertyListData:dataCopy];
  autoFillQuirks = v7->_autoFillQuirks;
  v7->_autoFillQuirks = v8;

  v10 = v7->_autoFillQuirks;
  if (!v10)
  {
    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
      *error = v39 = 0;
      goto LABEL_7;
    }

LABEL_6:
    v39 = 0;
    goto LABEL_7;
  }

  v11 = [(WBSAutoFillQuirksSnapshot *)v7 _passwordRequirementsByDomainFromAutoFillQuirks:v10 error:error];
  passwordRequirementsByDomain = v7->_passwordRequirementsByDomain;
  v7->_passwordRequirementsByDomain = v11;

  v13 = [(WBSAutoFillQuirksSnapshot *)v7 _domainsWithAssociatedCredentialsFromAutoFillQuirks:v7->_autoFillQuirks error:error];
  domainsWithAssociatedCredentials = v7->_domainsWithAssociatedCredentials;
  v7->_domainsWithAssociatedCredentials = v13;

  v15 = [(WBSAutoFillQuirksSnapshot *)v7 _domainsIneligibleForPasswordAuditingFromAutoFillQuirks:v7->_autoFillQuirks error:error];
  domainsIneligibleForPasswordAuditing = v7->_domainsIneligibleForPasswordAuditing;
  v7->_domainsIneligibleForPasswordAuditing = v15;

  v17 = [(WBSAutoFillQuirksSnapshot *)v7 _domainsToConsiderIdenticalFromAutoFillQuirls:v7->_autoFillQuirks error:error];
  domainsToConsiderIdentical = v7->_domainsToConsiderIdentical;
  v7->_domainsToConsiderIdentical = v17;

  v19 = [(WBSAutoFillQuirksSnapshot *)v7 _changePasswordURLStringsByDomainFromAutoFillQuirks:v7->_autoFillQuirks error:error];
  changePasswordURLsByDomain = v7->_changePasswordURLsByDomain;
  v7->_changePasswordURLsByDomain = v19;

  v21 = [(WBSAutoFillQuirksSnapshot *)v7 _appIDsToDomainsAssociationsFromAutoFillQuirks:v7->_autoFillQuirks error:error];
  appIDsToDomainsAssociations = v7->_appIDsToDomainsAssociations;
  v7->_appIDsToDomainsAssociations = v21;

  v23 = [(WBSAutoFillQuirksSnapshot *)v7 _domainsSetFromAutoFillQuirks:v7->_autoFillQuirks forKey:@"DomainsIneligibleForAutomaticLogin" error:error];
  domainsIneligibleForAutomaticLogin = v7->_domainsIneligibleForAutomaticLogin;
  v7->_domainsIneligibleForAutomaticLogin = v23;

  v25 = [(WBSAutoFillQuirksSnapshot *)v7 _domainsSetFromAutoFillQuirks:v7->_autoFillQuirks forKey:@"DomainsIneligibleForStreamlinedLogin" error:error];
  domainsIneligibleForStreamlinedLogin = v7->_domainsIneligibleForStreamlinedLogin;
  v7->_domainsIneligibleForStreamlinedLogin = v25;

  v27 = [(WBSAutoFillQuirksSnapshot *)v7 _domainsSetFromAutoFillQuirks:v7->_autoFillQuirks forKey:@"DomainsIneligibleForPasskeys" error:error];
  domainsIneligibleForPasskeys = v7->_domainsIneligibleForPasskeys;
  v7->_domainsIneligibleForPasskeys = v27;

  v29 = [(WBSAutoFillQuirksSnapshot *)v7 _domainsSetFromAutoFillQuirks:v7->_autoFillQuirks forKey:@"DomainsForPasskeyFallbackUI" error:error];
  domainsForPasskeyFallbackUI = v7->_domainsForPasskeyFallbackUI;
  v7->_domainsForPasskeyFallbackUI = v29;

  v31 = [(WBSAutoFillQuirksSnapshot *)v7 _domainsSetFromAutoFillQuirks:v7->_autoFillQuirks forKey:@"DomainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices" error:error];
  domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices = v7->_domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices;
  v7->_domainsThatWhenEmbeddedAsThirdPartyAskForPasswordsForOtherServices = v31;

  v33 = [(WBSAutoFillQuirksSnapshot *)v7 _domainsSetFromAutoFillQuirks:v7->_autoFillQuirks forKey:@"DomainsKnownToDoSameDocumentNavigationInTextEditingCallback" error:error];
  domainsKnownToDoSameDocumentNavigationInTextEditingCallback = v7->_domainsKnownToDoSameDocumentNavigationInTextEditingCallback;
  v7->_domainsKnownToDoSameDocumentNavigationInTextEditingCallback = v33;

  v35 = [(NSDictionary *)v7->_autoFillQuirks safari_arrayForKey:@"KnownWebBrowsers"];
  knownWebBrowsers = v7->_knownWebBrowsers;
  v7->_knownWebBrowsers = v35;

  v37 = [(NSDictionary *)v7->_autoFillQuirks safari_arrayForKey:@"KnownExtensionStorefronts"];
  knownExtensionStorefronts = v7->_knownExtensionStorefronts;
  v7->_knownExtensionStorefronts = v37;

  v39 = v7;
LABEL_7:

  return v39;
}

- (id)_passwordRequirementsByDomainFromAutoFillQuirks:(id)quirks error:(id *)error
{
  quirksCopy = quirks;
  v6 = [quirksCopy safari_dictionaryForKey:@"PasswordGenerationRequirements"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__WBSAutoFillQuirksSnapshot__passwordRequirementsByDomainFromAutoFillQuirks_error___block_invoke;
  v11[3] = &unk_1E7CF1840;
  v11[4] = &v12;
  v7 = [v6 safari_mapAndFilterKeysAndObjectsUsingBlock:v11];
  v8 = v7;
  if (v13[3])
  {
    v9 = v7;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

id __83__WBSAutoFillQuirksSnapshot__passwordRequirementsByDomainFromAutoFillQuirks_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return v10;
}

- (id)_domainsWithAssociatedCredentialsFromAutoFillQuirks:(id)quirks error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [quirks safari_arrayForKey:@"DomainsWithAssociatedCredentials"];
  v26 = 0u;
  v27 = 0u;
  v6 = v5 != 0;
  v28 = 0u;
  v29 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    errorCopy = error;
    v10 = *v27;
    v20 = *v27;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_20;
        }

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v23;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v23 != v16)
              {
                objc_enumerationMutation(v13);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {

                goto LABEL_20;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v10 = v20;
        if (!v6)
        {
LABEL_20:

          error = errorCopy;
          goto LABEL_21;
        }

        v6 = 1;
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }

    goto LABEL_24;
  }

  if (v5)
  {
LABEL_24:
    v18 = v7;
    goto LABEL_26;
  }

LABEL_21:
  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_26:

  return v18;
}

- (id)_domainsIneligibleForPasswordAuditingFromAutoFillQuirks:(id)quirks error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  [quirks safari_arrayForKey:@"SharedDomains"];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            *error = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:{0, v12}];
          }

          v10 = 0;
          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v5;
LABEL_13:

  return v10;
}

- (id)_domainsToConsiderIdenticalFromAutoFillQuirls:(id)quirls error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  [quirls safari_arrayForKey:@"DomainsToConsiderIdentical"];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = v27 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v18 = *v25;
    errorCopy = error;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (errorCopy)
          {
            *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
          }

LABEL_21:

          v16 = 0;
          goto LABEL_22;
        }

        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v21;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v21 != v14)
              {
                objc_enumerationMutation(v11);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy)
                {
                  *errorCopy = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
                }

                goto LABEL_21;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v8 = v18;
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = v5;
LABEL_22:

  return v16;
}

- (id)_domainsSetFromAutoFillQuirks:(id)quirks forKey:(id)key error:(id *)error
{
  v6 = [quirks safari_arrayForKey:key];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = objc_opt_class();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__WBSAutoFillQuirksSnapshot__domainsSetFromAutoFillQuirks_forKey_error___block_invoke;
  v10[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v10[4] = v7;
  if ([v6 safari_allObjectsPassTest:v10])
  {
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    goto LABEL_7;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    *error = v8 = 0;
  }

  else
  {
LABEL_6:
    v8 = 0;
  }

LABEL_7:

  return v8;
}

- (id)_changePasswordURLStringsByDomainFromAutoFillQuirks:(id)quirks error:(id *)error
{
  quirksCopy = quirks;
  v6 = [quirksCopy safari_dictionaryForKey:@"ChangePasswordURLs"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__WBSAutoFillQuirksSnapshot__changePasswordURLStringsByDomainFromAutoFillQuirks_error___block_invoke;
  v11[3] = &unk_1E7CF1840;
  v11[4] = &v12;
  v7 = [v6 safari_mapAndFilterKeysAndObjectsUsingBlock:v11];
  v8 = v7;
  if (v13[3])
  {
    v9 = v7;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

id __87__WBSAutoFillQuirksSnapshot__changePasswordURLStringsByDomainFromAutoFillQuirks_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return v10;
}

- (id)_appIDsToDomainsAssociationsFromAutoFillQuirks:(id)quirks error:(id *)error
{
  quirksCopy = quirks;
  v6 = [quirksCopy safari_dictionaryForKey:@"AppIDsToDomainsAssociations"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __82__WBSAutoFillQuirksSnapshot__appIDsToDomainsAssociationsFromAutoFillQuirks_error___block_invoke;
  v11[3] = &unk_1E7CF1840;
  v11[4] = &v12;
  v7 = [v6 safari_mapAndFilterKeysAndObjectsUsingBlock:v11];
  v8 = v7;
  if (v13[3])
  {
    v9 = v7;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:0];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v9;
}

id __82__WBSAutoFillQuirksSnapshot__appIDsToDomainsAssociationsFromAutoFillQuirks_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            *(*(*(a1 + 32) + 8) + 24) = 0;
            *a4 = 1;

            v14 = 0;
            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v14 = v9;
LABEL_14:
  }

  else
  {
    v14 = 0;
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return v14;
}

@end