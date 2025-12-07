@interface XPCCallerInformation
+ (id)callerInformationWithProcessIdentifier:(int)identifier credentialIdentityStoreIdentifier:(id)storeIdentifier associatedExtensionEnabled:(BOOL)enabled;
- (XPCCallerInformation)initWithProcessIdentifier:(int)identifier credentialIdentityStoreIdentifier:(id)storeIdentifier associatedExtensionEnabled:(BOOL)enabled;
@end

@implementation XPCCallerInformation

+ (id)callerInformationWithProcessIdentifier:(int)identifier credentialIdentityStoreIdentifier:(id)storeIdentifier associatedExtensionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = *&identifier;
  storeIdentifierCopy = storeIdentifier;
  v9 = [[self alloc] initWithProcessIdentifier:v6 credentialIdentityStoreIdentifier:storeIdentifierCopy associatedExtensionEnabled:enabledCopy];

  return v9;
}

- (XPCCallerInformation)initWithProcessIdentifier:(int)identifier credentialIdentityStoreIdentifier:(id)storeIdentifier associatedExtensionEnabled:(BOOL)enabled
{
  storeIdentifierCopy = storeIdentifier;
  v14.receiver = self;
  v14.super_class = XPCCallerInformation;
  v10 = [(XPCCallerInformation *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_processIdentifier = identifier;
    objc_storeStrong(&v10->_credentialIdentityStoreIdentifier, storeIdentifier);
    v11->_associatedExtensionEnabled = enabled;
    v12 = v11;
  }

  return v11;
}

@end