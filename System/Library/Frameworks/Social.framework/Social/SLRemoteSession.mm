@interface SLRemoteSession
- (BOOL)clientHasEntitlement:(id)entitlement;
- (SLRemoteSession)initWithConnection:(id)connection database:(id)database;
@end

@implementation SLRemoteSession

- (SLRemoteSession)initWithConnection:(id)connection database:(id)database
{
  connectionCopy = connection;
  databaseCopy = database;
  _SLLog(v4, 7, @"SLRemoteSession initializer called with connection %@ and database", v9, v10, v11, v12, v13, connectionCopy);
  v17.receiver = self;
  v17.super_class = SLRemoteSession;
  v14 = [(SLRemoteSession *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(SLRemoteSession *)v14 setConnection:connectionCopy];
    [(SLRemoteSession *)v15 setDatabase:databaseCopy];
  }

  return v15;
}

- (BOOL)clientHasEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  connection = [(SLRemoteSession *)self connection];
  v6 = [connection sl_clientHasEntitlement:entitlementCopy];

  return v6;
}

@end