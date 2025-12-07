@interface CNAutocompleteSourceInclusionPolicy
+ (CNAutocompleteSourceInclusionPolicy)policyWithCurrentProcessEntitlements;
+ (CNAutocompleteSourceInclusionPolicy)policyWithFetchRequest:(id)request;
+ (CNAutocompleteSourceInclusionPolicy)policyWithPolicies:(id)policies;
+ (CNAutocompleteSourceInclusionPolicy)policyWithUserDefaults:(id)defaults;
+ (CNAutocompleteSourceInclusionPolicy)policyWithValue:(BOOL)value;
+ (id)defaultPolicyWithFetchRequest:(id)request;
+ (id)policyForNoContactsAccess;
@end

@implementation CNAutocompleteSourceInclusionPolicy

+ (CNAutocompleteSourceInclusionPolicy)policyWithCurrentProcessEntitlements
{
  v2 = objc_alloc_init(_CNAutocompleteEntitlementSourceInclusionPolicy);

  return v2;
}

+ (id)defaultPolicyWithFetchRequest:(id)request
{
  v14[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
  isAccessGranted = [mEMORY[0x277CFBDB8] isAccessGranted];

  if (isAccessGranted)
  {
    v7 = [self policyWithFetchRequest:requestCopy];
    standardPreferences = [MEMORY[0x277CFBEE8] standardPreferences];
    v9 = [self policyWithUserDefaults:standardPreferences];

    policyWithCurrentProcessEntitlements = [self policyWithCurrentProcessEntitlements];
    v14[0] = v7;
    v14[1] = v9;
    v14[2] = policyWithCurrentProcessEntitlements;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];
    policyForNoContactsAccess = [self policyWithPolicies:v11];
  }

  else
  {
    policyForNoContactsAccess = [self policyForNoContactsAccess];
  }

  return policyForNoContactsAccess;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithFetchRequest:(id)request
{
  requestCopy = request;
  mEMORY[0x277CFBDB8] = [MEMORY[0x277CFBDB8] sharedInstance];
  isAccessGranted = [mEMORY[0x277CFBDB8] isAccessGranted];

  if ((isAccessGranted & 1) == 0)
  {
    policyForNoContactsAccess = [self policyForNoContactsAccess];
    goto LABEL_13;
  }

  policyForNoContactsAccess = objc_alloc_init(_CNAutocompleteMutableSourceInclusionPolicy);
  if ([requestCopy isZeroKeywordSearch])
  {
    searchType = [requestCopy searchType];
    if (searchType == 4)
    {
      v9 = CNALoggingContextDebug(-[_CNAutocompleteMutableSourceInclusionPolicy setIncludeRecents:](policyForNoContactsAccess, "setIncludeRecents:", [requestCopy includeRecents]));
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 0;
        v10 = "Will only search Duet, Recents (because search type photos) and Supplemental because search string has a 0 length";
        v11 = &v14;
LABEL_10:
        _os_log_impl(&dword_2155FE000, v9, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
      }
    }

    else
    {
      v9 = CNALoggingContextDebug(searchType);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        v10 = "Will only search Duet and Supplemental because search string has a 0 length";
        v11 = &v13;
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeContacts:](policyForNoContactsAccess, "setIncludeContacts:", [requestCopy includeContacts]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeRecents:](policyForNoContactsAccess, "setIncludeRecents:", [requestCopy includeRecents]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeStewie:](policyForNoContactsAccess, "setIncludeStewie:", [requestCopy includeStewie]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeSuggestions:](policyForNoContactsAccess, "setIncludeSuggestions:", [requestCopy includeSuggestions]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeLocalExtensions:](policyForNoContactsAccess, "setIncludeLocalExtensions:", [requestCopy includeLocalExtensions]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeDirectoryServers:](policyForNoContactsAccess, "setIncludeDirectoryServers:", [requestCopy includeDirectoryServers]);
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludeCalendarServers:](policyForNoContactsAccess, "setIncludeCalendarServers:", [requestCopy includeCalendarServers]);
LABEL_12:
  -[_CNAutocompleteMutableSourceInclusionPolicy setIncludePredictions:](policyForNoContactsAccess, "setIncludePredictions:", [requestCopy includePredictions]);
  [(_CNAutocompleteMutableSourceInclusionPolicy *)policyForNoContactsAccess setIncludeSupplementalResults:1];
LABEL_13:

  return policyForNoContactsAccess;
}

+ (id)policyForNoContactsAccess
{
  v2 = objc_alloc_init(_CNAutocompleteNoSourceInclusionPolicy);

  return v2;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = [[_CNAutocompleteUserDefaultsSourceInclusionPolicy alloc] initWithUserDefaults:defaultsCopy];

  return v4;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithPolicies:(id)policies
{
  policiesCopy = policies;
  v4 = [[_CNAutocompleteAggregateSourceInclusionPolicy alloc] initWithPolicies:policiesCopy];

  return v4;
}

+ (CNAutocompleteSourceInclusionPolicy)policyWithValue:(BOOL)value
{
  valueCopy = value;
  v4 = objc_alloc_init(_CNAutocompleteMutableSourceInclusionPolicy);
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v4 setIncludeContacts:valueCopy];
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v4 setIncludeRecents:valueCopy];
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v4 setIncludeStewie:valueCopy];
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v4 setIncludeSuggestions:valueCopy];
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v4 setIncludeLocalExtensions:valueCopy];
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v4 setIncludeDirectoryServers:valueCopy];
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v4 setIncludeCalendarServers:valueCopy];
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v4 setIncludeSupplementalResults:valueCopy];
  [(_CNAutocompleteMutableSourceInclusionPolicy *)v4 setIncludePredictions:valueCopy];

  return v4;
}

@end