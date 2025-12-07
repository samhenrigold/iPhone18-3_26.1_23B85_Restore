@interface CSSXPCListenerDelegate
+ (void)assertObjectConformsToExportedProtocols:(id)protocols;
- (BOOL)connection:(id)connection hasBooleanEntitlement:(id)entitlement;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CSSXPCListenerDelegate)initWithExportedObject:(id)object;
- (id)denialMessageForConnection:(id)connection;
- (id)exportedInterfaceForConnection:(id)connection;
- (id)exportedProtocolForRoles:(id)roles;
- (id)rolesForConnection:(id)connection;
- (void)configureInterface:(id)interface forRoles:(id)roles;
@end

@implementation CSSXPCListenerDelegate

- (CSSXPCListenerDelegate)initWithExportedObject:(id)object
{
  objectCopy = object;
  [objc_opt_class() assertObjectConformsToExportedProtocols:objectCopy];
  v9.receiver = self;
  v9.super_class = CSSXPCListenerDelegate;
  v6 = [(CSSXPCListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_exportedObject, object);
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [(CSSXPCListenerDelegate *)self exportedInterfaceForConnection:connectionCopy];
  if (v6)
  {
    exportedObject = [(CSSXPCListenerDelegate *)self exportedObject];
    [connectionCopy setExportedObject:exportedObject];

    [connectionCopy setExportedInterface:v6];
    [connectionCopy resume];
  }

  else
  {
    if (qword_100012210 != -1)
    {
      sub_100005F44();
    }

    v8 = qword_100012208;
    if (os_log_type_enabled(qword_100012208, OS_LOG_TYPE_ERROR))
    {
      sub_100005F58(v8, self, connectionCopy);
    }
  }

  return v6 != 0;
}

+ (void)assertObjectConformsToExportedProtocols:(id)protocols
{
  protocolsCopy = protocols;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = CSSAllRoles(protocolsCopy, v6);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        protocol = [v12 protocol];
        v14 = [protocolsCopy conformsToProtocol:protocol];

        if ((v14 & 1) == 0)
        {
          sub_100006010(v12, a2, self, protocolsCopy);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (id)denialMessageForConnection:(id)connection
{
  connectionCopy = connection;
  v5 = CSSAllRoles(connectionCopy, v4);
  v6 = [v5 crk_mapUsingBlock:&stru_10000C638];
  allObjects = [v6 allObjects];

  v8 = [allObjects sortedArrayUsingSelector:"compare:"];
  v9 = [v8 componentsJoinedByString:@" or "];
  processIdentifier = [connectionCopy processIdentifier];

  v11 = [NSString stringWithFormat:@"Denying connection from (%d) as it lacks a valid entitlement (%@).", processIdentifier, v9];

  return v11;
}

- (id)exportedInterfaceForConnection:(id)connection
{
  v4 = [(CSSXPCListenerDelegate *)self rolesForConnection:connection];
  if ([v4 count])
  {
    v5 = [(CSSXPCListenerDelegate *)self exportedProtocolForRoles:v4];
    v6 = [NSXPCInterface interfaceWithProtocol:v5];
    [(CSSXPCListenerDelegate *)self configureInterface:v6 forRoles:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)rolesForConnection:(id)connection
{
  connectionCopy = connection;
  v6 = CSSAllRoles(connectionCopy, v5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100003F0C;
  v10[3] = &unk_10000C660;
  v10[4] = self;
  v11 = connectionCopy;
  v7 = connectionCopy;
  v8 = [v6 crk_filterUsingBlock:v10];

  return v8;
}

- (id)exportedProtocolForRoles:(id)roles
{
  v3 = [roles crk_mapUsingBlock:&stru_10000C6A0];
  v4 = [CRKProtocolUnioner protocolByUnioningProtocols:v3];

  return v4;
}

- (void)configureInterface:(id)interface forRoles:(id)roles
{
  interfaceCopy = interface;
  rolesCopy = roles;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [rolesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(rolesCopy);
        }

        [*(*(&v11 + 1) + 8 * v10) configureInterfaceForRole:interfaceCopy];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [rolesCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)connection:(id)connection hasBooleanEntitlement:(id)entitlement
{
  v4 = [connection valueForEntitlement:entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  bOOLValue = [v6 BOOLValue];

  return bOOLValue;
}

@end