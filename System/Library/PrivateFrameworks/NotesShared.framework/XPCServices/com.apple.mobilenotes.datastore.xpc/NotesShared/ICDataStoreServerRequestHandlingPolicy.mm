@interface ICDataStoreServerRequestHandlingPolicy
- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context;
@end

@implementation ICDataStoreServerRequestHandlingPolicy

- (BOOL)shouldAcceptConnectionsFromClientWithContext:(id)context
{
  contextCopy = context;
  entitlements = [contextCopy entitlements];
  v5 = [entitlements objectForKeyedSubscript:@"com.apple.security.application-groups"];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (ICGroupContainerIdentifier(), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v5 isEqualToString:v6], v6, (v7) || (objc_opt_class(), (objc_opt_isKindOfClass()) && (ICGroupContainerIdentifier(), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v5, "containsObject:", v8), v8, (v9))
  {
    v10 = 1;
  }

  else
  {
    v11 = +[ICPaths persistentStoreURL];
    path = [v11 path];
    [path fileSystemRepresentation];

    if (contextCopy)
    {
      objc_msgSend_auditToken(contextCopy);
    }

    v10 = sandbox_check_by_audit_token() == 0;
  }

  return v10;
}

@end