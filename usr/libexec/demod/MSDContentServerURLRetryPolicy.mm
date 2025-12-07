@interface MSDContentServerURLRetryPolicy
- (MSDContentServerURLRetryPolicy)initWithContext:(id)context;
- (id)buildLocalURLListFromContext:(id)context;
- (id)getCredential;
- (id)getURLSchemaList:(id)list;
- (id)nextTry;
@end

@implementation MSDContentServerURLRetryPolicy

- (MSDContentServerURLRetryPolicy)initWithContext:(id)context
{
  contextCopy = context;
  v20.receiver = self;
  v20.super_class = MSDContentServerURLRetryPolicy;
  v5 = [(MSDContentServerURLRetryPolicy *)&v20 init];
  if (v5)
  {
    v6 = [contextCopy fdc];
    [(MSDContentServerURLRetryPolicy *)v5 setFdc:v6];

    v7 = [contextCopy fdc];
    originServer = [contextCopy originServer];
    v9 = [v7 localCredentialForOriginServer:originServer];
    [(MSDContentServerURLRetryPolicy *)v5 setLocalCredential:v9];

    v10 = [contextCopy fdc];
    originServer2 = [contextCopy originServer];
    v12 = [v10 remoteCredentialForOriginServer:originServer2];
    [(MSDContentServerURLRetryPolicy *)v5 setRemoteCredential:v12];

    localCredential = [(MSDContentServerURLRetryPolicy *)v5 localCredential];
    [(MSDContentServerURLRetryPolicy *)v5 setCachingHubAvailable:localCredential != 0];

    [(MSDContentServerURLRetryPolicy *)v5 setServerType:@"remoteCDN"];
    if ([contextCopy tryCachingHub] && -[MSDContentServerURLRetryPolicy cachingHubAvailable](v5, "cachingHubAvailable"))
    {
      v14 = [(MSDContentServerURLRetryPolicy *)v5 buildLocalURLListFromContext:contextCopy];
      [(MSDContentServerURLRetryPolicy *)v5 setLocalURLList:v14];

      [(MSDContentServerURLRetryPolicy *)v5 setServerType:@"localCachingHub"];
    }

    remoteCredential = [(MSDContentServerURLRetryPolicy *)v5 remoteCredential];

    if (remoteCredential)
    {
      remoteCredential2 = [(MSDContentServerURLRetryPolicy *)v5 remoteCredential];
      v17 = [(MSDContentServerURLRetryPolicy *)v5 getURLSchemaList:remoteCredential2];
      [(MSDContentServerURLRetryPolicy *)v5 setRemoteURLList:v17];
    }

    [(MSDContentServerURLRetryPolicy *)v5 setCurrentTry:0];
    -[MSDContentServerURLRetryPolicy setLocalHubReachable:](v5, "setLocalHubReachable:", [contextCopy tryCachingHub]);
    v18 = v5;
  }

  return v5;
}

- (id)nextTry
{
  serverType = [(MSDContentServerURLRetryPolicy *)self serverType];
  v4 = [serverType isEqualToString:@"localCachingHub"];

  if (v4)
  {
    currentTry = [(MSDContentServerURLRetryPolicy *)self currentTry];
    localURLList = [(MSDContentServerURLRetryPolicy *)self localURLList];
    v7 = [localURLList count];

    if (currentTry < v7)
    {
      localURLList2 = [(MSDContentServerURLRetryPolicy *)self localURLList];
      v10 = [localURLList2 objectAtIndex:{-[MSDContentServerURLRetryPolicy currentTry](self, "currentTry")}];

      goto LABEL_8;
    }

    v11 = sub_100063A54(v8);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000D8C20(self, v11);
    }

    [(MSDContentServerURLRetryPolicy *)self setLocalHubReachable:0];
    [(MSDContentServerURLRetryPolicy *)self setServerType:@"remoteCDN"];
    [(MSDContentServerURLRetryPolicy *)self setCurrentTry:0];
  }

  v10 = 0;
LABEL_8:
  serverType2 = [(MSDContentServerURLRetryPolicy *)self serverType];
  v13 = [serverType2 isEqualToString:@"remoteCDN"];

  if (v13)
  {
    currentTry2 = [(MSDContentServerURLRetryPolicy *)self currentTry];
    if (currentTry2 || (-[MSDContentServerURLRetryPolicy remoteURLList](self, "remoteURLList"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 count], v16, !v17))
    {
      remoteURLList = sub_100063A54(currentTry2);
      if (os_log_type_enabled(remoteURLList, OS_LOG_TYPE_ERROR))
      {
        sub_1000D8C98(self, remoteURLList);
      }
    }

    else
    {
      remoteURLList = [(MSDContentServerURLRetryPolicy *)self remoteURLList];
      v18 = [remoteURLList objectAtIndex:0];

      v10 = v18;
    }
  }

  if (v10)
  {
    v19 = objc_alloc_init(MSDServerRetryInfo);
    [(MSDServerRetryInfo *)v19 setUrlSchema:v10];
    serverType3 = [(MSDContentServerURLRetryPolicy *)self serverType];
    [(MSDServerRetryInfo *)v19 setServerType:serverType3];

    [(MSDServerRetryInfo *)v19 setLocalHubReachable:[(MSDContentServerURLRetryPolicy *)self localHubReachable]];
    getCredential = [(MSDContentServerURLRetryPolicy *)self getCredential];
    [(MSDServerRetryInfo *)v19 setCredential:getCredential];
  }

  else
  {
    v19 = 0;
  }

  [(MSDContentServerURLRetryPolicy *)self setCurrentTry:[(MSDContentServerURLRetryPolicy *)self currentTry]+ 1];

  return v19;
}

- (id)getCredential
{
  serverType = [(MSDContentServerURLRetryPolicy *)self serverType];
  if ([serverType isEqualToString:@"localCachingHub"])
  {
    [(MSDContentServerURLRetryPolicy *)self localCredential];
  }

  else
  {
    [(MSDContentServerURLRetryPolicy *)self remoteCredential];
  }
  v4 = ;

  return v4;
}

- (id)buildLocalURLListFromContext:(id)context
{
  contextCopy = context;
  localCredential = [(MSDContentServerURLRetryPolicy *)self localCredential];
  v6 = [(MSDContentServerURLRetryPolicy *)self getURLSchemaList:localCredential];

  cachedLocalURL = [contextCopy cachedLocalURL];
  v8 = [v6 containsObject:cachedLocalURL];

  if (v8)
  {
    cachedLocalURL2 = [contextCopy cachedLocalURL];
    [v6 removeObject:cachedLocalURL2];

    cachedLocalURL3 = [contextCopy cachedLocalURL];
    [v6 insertObject:cachedLocalURL3 atIndex:0];
  }

  return v6;
}

- (id)getURLSchemaList:(id)list
{
  listCopy = list;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [listCopy objectForKey:@"URLSchema"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 addObjectsFromArray:v6];
LABEL_6:
      v8 = v5;
      goto LABEL_11;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v5 addObject:v6];
      goto LABEL_6;
    }

    v9 = sub_100063A54(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543874;
      selfCopy = self;
      v14 = 2114;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = listCopy;
      v11 = v15;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@: Unrecognized URL Scheme type :%{public}@ from download credential %{public}@", &v12, 0x20u);
    }
  }

  else
  {
    sub_1000D8D10(self, listCopy);
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end