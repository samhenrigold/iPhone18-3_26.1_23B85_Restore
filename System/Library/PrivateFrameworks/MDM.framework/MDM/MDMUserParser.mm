@interface MDMUserParser
- (id)_allCommands;
- (id)_allSettingsItems;
- (id)_declarativeManagement:(id)management;
- (id)_originator;
- (id)_removeProfile:(id)profile;
- (void)_performQuery:(id)query withResultDictionary:(id)dictionary;
- (void)_sendAnalyticsMDMCommandEventWithRequest:(id)request response:(id)response;
- (void)_userConfigured:(id)configured assertion:(id)assertion completionBlock:(id)block;
@end

@implementation MDMUserParser

- (id)_allCommands
{
  if (_allCommands_once != -1)
  {
    [MDMUserParser _allCommands];
  }

  v3 = _allCommands_set;

  return v3;
}

void __29__MDMUserParser__allCommands__block_invoke()
{
  v4[9] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v4[0] = @"ProfileList";
  v4[1] = @"InstallProfile";
  v4[2] = @"RemoveProfile";
  v4[3] = @"Restrictions";
  v4[4] = @"InviteToProgram";
  v4[5] = @"DeviceInformation";
  v4[6] = @"DeclarativeManagement";
  v4[7] = @"Settings";
  v4[8] = @"UserConfigured";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = _allCommands_set;
  _allCommands_set = v2;
}

- (id)_allSettingsItems
{
  if (_allSettingsItems_onceToken != -1)
  {
    [MDMUserParser _allSettingsItems];
  }

  isChaperoned = [(MDMParser *)self isChaperoned];
  v4 = &_allSettingsItems_supervisedSet;
  if (!isChaperoned)
  {
    v4 = &_allSettingsItems_nonSupervisedSet;
  }

  v5 = *v4;

  return v5;
}

void __34__MDMUserParser__allSettingsItems__block_invoke()
{
  v9[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB58];
  v9[0] = @"AccessibilitySettings";
  v9[1] = @"DefaultApplications";
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = _allSettingsItems_supervisedSet;
  _allSettingsItems_supervisedSet = v2;

  v4 = MEMORY[0x277CBEB58];
  v8 = @"DefaultApplications";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v8 count:1];
  v6 = [v4 setWithArray:v5];
  v7 = _allSettingsItems_nonSupervisedSet;
  _allSettingsItems_nonSupervisedSet = v6;
}

- (id)_removeProfile:(id)profile
{
  v4 = [profile objectForKey:@"Identifier"];
  if (v4)
  {
    [(MDMParser *)self _removeProfileWithIdentifier:v4 forInstalledProfilesWithFilterFlags:9];
  }

  else
  {
    [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"CommandFormatError"];
  }
  v5 = ;

  return v5;
}

- (id)_declarativeManagement:(id)management
{
  v18 = *MEMORY[0x277D85DE8];
  managementCopy = management;
  v5 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v5, OS_LOG_TYPE_DEFAULT, "Processing DeclarativeManagement command", buf, 2u);
  }

  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
  managingProfileIdentifier = [(MDMParser *)self managingProfileIdentifier];
  v15 = 0;
  v8 = [MDMDeclarativeManagementCommand processMultiUserDeviceUserChannelRequestTypeWithProfileIdentifier:managingProfileIdentifier request:managementCopy error:&v15];

  v9 = v15;
  if (!v8)
  {
    v10 = *(DMCLogObjects() + 8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      dMCVerboseDescription = [v9 DMCVerboseDescription];
      *buf = 138543362;
      v17 = dMCVerboseDescription;
      _os_log_impl(&dword_2561F5000, v11, OS_LOG_TYPE_ERROR, "Failed to process DeclarativeManagement command with error: %{public}@", buf, 0xCu);
    }

    v13 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v9];

    v6 = v13;
  }

  return v6;
}

- (void)_performQuery:(id)query withResultDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = *MEMORY[0x277D24B08];
  if ([query isEqualToString:*MEMORY[0x277D24B08]])
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    mEMORY[0x277D246A0] = [MEMORY[0x277D246A0] sharedClient];
    pushToken = [mEMORY[0x277D246A0] pushToken];
    v9 = [v6 initWithData:pushToken encoding:1];

    if (v9)
    {
      [dictionaryCopy setObject:v9 forKeyedSubscript:v5];
    }
  }
}

- (void)_sendAnalyticsMDMCommandEventWithRequest:(id)request response:(id)response
{
  if (request && response)
  {
    v6 = MEMORY[0x277D24640];
    responseCopy = response;
    requestCopy = request;
    sharedConfiguration = [v6 sharedConfiguration];
    v9 = [(MDMParser *)self _analyticsCommandNameFromRequest:requestCopy];
    v10 = [(MDMParser *)self _analyticsErrorFromResponse:responseCopy];

    LOBYTE(self) = [(MDMParser *)self _analyticsRequiresNetworkTetheringFromRequest:requestCopy];
    MDMAnalyticsSendCommandEvent(v9, v10, self, [sharedConfiguration isTeslaEnrolled], objc_msgSend(sharedConfiguration, "isSupervised"), 0, 1, 1);
  }
}

- (id)_originator
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  managingOrganizationInformation = [mEMORY[0x277D262A0] managingOrganizationInformation];
  v4 = [managingOrganizationInformation objectForKeyedSubscript:*MEMORY[0x277D030F0]];

  return v4;
}

- (void)_userConfigured:(id)configured assertion:(id)assertion completionBlock:(id)block
{
  blockCopy = block;
  if ([MEMORY[0x277D03538] markCurrentUserAsConfigured])
  {
    v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithStatus:@"Acknowledged"];
    if (!blockCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = *(DMCLogObjects() + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_2561F5000, v7, OS_LOG_TYPE_ERROR, "Could not update await user configured", buf, 2u);
  }

  v8 = MEMORY[0x277CCA9B8];
  v9 = *MEMORY[0x277D03480];
  v10 = DMCErrorArray();
  v11 = [v8 DMCErrorWithDomain:v9 code:12114 descriptionArray:v10 errorType:{*MEMORY[0x277D032F8], 0}];
  v6 = [(MDMAbstractTunnelParser *)MDMParser responseWithError:v11];

  if (blockCopy)
  {
LABEL_7:
    blockCopy[2](blockCopy, v6);
  }

LABEL_8:
}

@end