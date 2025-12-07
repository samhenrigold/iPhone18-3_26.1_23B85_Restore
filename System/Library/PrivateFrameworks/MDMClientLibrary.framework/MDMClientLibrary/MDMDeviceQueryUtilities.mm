@interface MDMDeviceQueryUtilities
+ (id)allowedDeviceQueriesForAccessRights:(unint64_t)rights isDataSeparated:(BOOL)separated;
+ (id)allowedDeviceQueriesOnUserChannelForAccessRights:(unint64_t)rights;
+ (id)allowedDeviceQueriesWithUserEnrollment;
@end

@implementation MDMDeviceQueryUtilities

+ (id)allowedDeviceQueriesForAccessRights:(unint64_t)rights isDataSeparated:(BOOL)separated
{
  separatedCopy = separated;
  rightsCopy = rights;
  v6 = MEMORY[0x277CBEB58];
  v7 = _alwaysAllowedQueries(self);
  v8 = [v6 setWithSet:v7];

  if ((rightsCopy & 0x10) != 0)
  {
    v10 = _deviceInformationQueries();
    [v8 unionSet:v10];

    if ((rightsCopy & 0x1000) == 0)
    {
LABEL_3:
      if ((rightsCopy & 0x20) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((rightsCopy & 0x1000) == 0)
  {
    goto LABEL_3;
  }

  v11 = _appInstallationQueries(v9);
  [v8 unionSet:v11];

  if ((rightsCopy & 0x20) == 0)
  {
LABEL_4:
    if (!separatedCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

LABEL_8:
  v12 = _networkInformationQueries(v9);
  [v8 unionSet:v12];

  if (!separatedCopy)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (_unavailableAppInstallationQueriesWithDataSeparation_onceToken != -1)
  {
    +[MDMDeviceQueryUtilities allowedDeviceQueriesForAccessRights:isDataSeparated:];
  }

  [v8 minusSet:_unavailableAppInstallationQueriesWithDataSeparation_set];
LABEL_12:
  v13 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v13 userMode] == 1)
  {
    isSharediPad = [MEMORY[0x277D03538] isSharediPad];
  }

  else
  {
    isSharediPad = 0;
  }

  v15 = +[MDMCloudConfiguration sharedConfiguration];
  isSupervised = [v15 isSupervised];

  if (isSupervised && (isSharediPad & 1) == 0)
  {
    [v8 addObject:@"AccessibilitySettings"];
  }

  v17 = [v8 copy];

  return v17;
}

+ (id)allowedDeviceQueriesOnUserChannelForAccessRights:(unint64_t)rights
{
  rightsCopy = rights;
  v4 = MEMORY[0x277CBEB58];
  if (_alwaysAllowedUserQueries_onceToken != -1)
  {
    +[MDMDeviceQueryUtilities allowedDeviceQueriesOnUserChannelForAccessRights:];
  }

  v5 = [v4 setWithSet:_alwaysAllowedUserQueries_set];
  v6 = v5;
  if ((rightsCopy & 0x1000) != 0)
  {
    v7 = _appInstallationQueries(v5);
    [v6 unionSet:v7];
  }

  v8 = +[MDMCloudConfiguration sharedConfiguration];
  if ([v8 userMode] == 1)
  {
    isSharediPad = [MEMORY[0x277D03538] isSharediPad];
  }

  else
  {
    isSharediPad = 0;
  }

  v10 = +[MDMCloudConfiguration sharedConfiguration];
  isSupervised = [v10 isSupervised];

  if (isSupervised && isSharediPad)
  {
    [v6 addObject:@"AccessibilitySettings"];
  }

  v12 = [v6 copy];

  return v12;
}

+ (id)allowedDeviceQueriesWithUserEnrollment
{
  if (allowedDeviceQueriesWithUserEnrollment_onceToken != -1)
  {
    +[MDMDeviceQueryUtilities allowedDeviceQueriesWithUserEnrollment];
  }

  v3 = allowedDeviceQueriesWithUserEnrollment_allowedQueries;

  return v3;
}

void __65__MDMDeviceQueryUtilities_allowedDeviceQueriesWithUserEnrollment__block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CBEB58];
  v2 = _alwaysAllowedQueries(a1);
  v10 = [v1 setWithSet:v2];

  v3 = _deviceInformationQueries();
  [v10 unionSet:v3];

  v5 = _appInstallationQueries(v4);
  [v10 unionSet:v5];

  v7 = _networkInformationQueries(v6);
  [v10 unionSet:v7];

  if (_validDeviceQueriesWithUserEnrollment_onceToken != -1)
  {
    __65__MDMDeviceQueryUtilities_allowedDeviceQueriesWithUserEnrollment__block_invoke_cold_1();
  }

  [v10 intersectSet:_validDeviceQueriesWithUserEnrollment_validMCKeys];
  v8 = [v10 copy];
  v9 = allowedDeviceQueriesWithUserEnrollment_allowedQueries;
  allowedDeviceQueriesWithUserEnrollment_allowedQueries = v8;
}

@end