@interface CNMCProfileConnection
- (BOOL)communicationServiceRulesExistForBundleID:(id)d forCommunicationServiceType:(id)type;
- (id)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier;
- (id)observableForManagedConfigChanged;
@end

@implementation CNMCProfileConnection

- (id)defaultAppBundleIDForCommunicationServiceType:(id)type forAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  typeCopy = type;
  v8 = [getMCProfileConnectionClass(typeCopy v7)];
  v9 = [v8 defaultAppBundleIDForCommunicationServiceType:typeCopy forAccountWithIdentifier:identifierCopy];

  return v9;
}

- (BOOL)communicationServiceRulesExistForBundleID:(id)d forCommunicationServiceType:(id)type
{
  typeCopy = type;
  dCopy = d;
  v8 = [getMCProfileConnectionClass(dCopy v7)];
  v9 = [v8 communicationServiceRulesExistForBundleID:dCopy forCommunicationServiceType:typeCopy];

  return v9;
}

- (id)observableForManagedConfigChanged
{
  v2 = MEMORY[0x1E6996798];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v3 = getMCProfileListChangedNotificationSymbolLoc_ptr;
  v12 = getMCProfileListChangedNotificationSymbolLoc_ptr;
  if (!getMCProfileListChangedNotificationSymbolLoc_ptr)
  {
    v4 = ManagedConfigurationLibrary();
    v10[3] = dlsym(v4, "MCProfileListChangedNotification");
    getMCProfileListChangedNotificationSymbolLoc_ptr = v10[3];
    v3 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v3)
  {
    +[CNUIIDSRequest IDSServiceForService:];
    v8 = v7;
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  v5 = [v2 observableOnDarwinNotificationCenterWithName:*v3];

  return v5;
}

@end