@interface SFDomainAssociationUtilities
+ (BOOL)domainIsProhibitedForSavingCredentials:(id)credentials;
+ (BOOL)highLevelDomainHasSuiteOfAssociatedApps:(id)apps;
+ (id)domainByStrippingSubdomainWildcardPrefixIfNecessary:(id)necessary;
@end

@implementation SFDomainAssociationUtilities

+ (id)domainByStrippingSubdomainWildcardPrefixIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  if ([necessaryCopy hasPrefix:@"*."])
  {
    v4 = [necessaryCopy substringFromIndex:2];
  }

  else
  {
    v4 = necessaryCopy;
  }

  v5 = v4;

  return v5;
}

+ (BOOL)domainIsProhibitedForSavingCredentials:(id)credentials
{
  v19 = *MEMORY[0x277D85DE8];
  credentialsCopy = credentials;
  if (domainIsProhibitedForSavingCredentials__onceToken != -1)
  {
    +[SFDomainAssociationUtilities domainIsProhibitedForSavingCredentials:];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = domainIsProhibitedForSavingCredentials__blocklist;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_5:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      v10 = 1;
      if ([credentialsCopy safari_hasCaseInsensitiveSuffix:{v9, v14}])
      {
        break;
      }

      v11 = [v9 substringFromIndex:1];
      v12 = [credentialsCopy safari_isCaseInsensitiveEqualToString:v11];

      if (v12)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v10 = 0;
        if (v6)
        {
          goto LABEL_5;
        }

        break;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __71__SFDomainAssociationUtilities_domainIsProhibitedForSavingCredentials___block_invoke()
{
  v0 = domainIsProhibitedForSavingCredentials__blocklist;
  domainIsProhibitedForSavingCredentials__blocklist = &unk_287602148;
}

+ (BOOL)highLevelDomainHasSuiteOfAssociatedApps:(id)apps
{
  v14 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  if (highLevelDomainHasSuiteOfAssociatedApps__onceToken != -1)
  {
    +[SFDomainAssociationUtilities highLevelDomainHasSuiteOfAssociatedApps:];
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = highLevelDomainHasSuiteOfAssociatedApps__highLevelDomainsWithSuiteOfAssociatedApps;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([appsCopy safari_isCaseInsensitiveEqualToString:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_13;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

void __72__SFDomainAssociationUtilities_highLevelDomainHasSuiteOfAssociatedApps___block_invoke()
{
  v0 = highLevelDomainHasSuiteOfAssociatedApps__highLevelDomainsWithSuiteOfAssociatedApps;
  highLevelDomainHasSuiteOfAssociatedApps__highLevelDomainsWithSuiteOfAssociatedApps = &unk_287602160;
}

@end