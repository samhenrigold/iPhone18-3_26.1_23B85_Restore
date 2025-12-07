@interface CADMCProfileConnectionManagedConfigurationHandler
- (BOOL)isOpenInRestrictionInEffect;
- (BOOL)mayShowLocalAccountsForBundleID:(id)d sourceAccountManagement:(int)management;
- (BOOL)mayShowLocalAccountsForTargetBundleID:(id)d targetAccountManagement:(int)management;
- (CADMCProfileConnectionManagedConfigurationHandler)initWithMCProfileConnection:(id)connection;
- (id)filteredOpenInAccounts:(id)accounts originatingAppBundleID:(id)d sourceAccountManagement:(int)management;
- (id)filteredOpenInOriginatingAccounts:(id)accounts targetAppBundleID:(id)d targetAccountManagement:(int)management;
@end

@implementation CADMCProfileConnectionManagedConfigurationHandler

- (BOOL)isOpenInRestrictionInEffect
{
  connection = [(CADMCProfileConnectionManagedConfigurationHandler *)self connection];
  isOpenInRestrictionInEffect = [connection isOpenInRestrictionInEffect];

  return isOpenInRestrictionInEffect;
}

- (CADMCProfileConnectionManagedConfigurationHandler)initWithMCProfileConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CADMCProfileConnectionManagedConfigurationHandler;
  v6 = [(CADMCProfileConnectionManagedConfigurationHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (BOOL)mayShowLocalAccountsForBundleID:(id)d sourceAccountManagement:(int)management
{
  v4 = *&management;
  dCopy = d;
  connection = [(CADMCProfileConnectionManagedConfigurationHandler *)self connection];
  LOBYTE(v4) = [connection mayShowLocalAccountsForBundleID:dCopy sourceAccountManagement:v4];

  return v4;
}

- (BOOL)mayShowLocalAccountsForTargetBundleID:(id)d targetAccountManagement:(int)management
{
  v4 = *&management;
  dCopy = d;
  connection = [(CADMCProfileConnectionManagedConfigurationHandler *)self connection];
  LOBYTE(v4) = [connection mayShowLocalAccountsForTargetBundleID:dCopy targetAccountManagement:v4];

  return v4;
}

- (id)filteredOpenInAccounts:(id)accounts originatingAppBundleID:(id)d sourceAccountManagement:(int)management
{
  v5 = *&management;
  dCopy = d;
  accountsCopy = accounts;
  connection = [(CADMCProfileConnectionManagedConfigurationHandler *)self connection];
  v11 = [connection filteredOpenInAccounts:accountsCopy originatingAppBundleID:dCopy sourceAccountManagement:v5];

  return v11;
}

- (id)filteredOpenInOriginatingAccounts:(id)accounts targetAppBundleID:(id)d targetAccountManagement:(int)management
{
  v5 = *&management;
  dCopy = d;
  accountsCopy = accounts;
  connection = [(CADMCProfileConnectionManagedConfigurationHandler *)self connection];
  v11 = [connection filteredOpenInOriginatingAccounts:accountsCopy targetAppBundleID:dCopy targetAccountManagement:v5];

  return v11;
}

@end