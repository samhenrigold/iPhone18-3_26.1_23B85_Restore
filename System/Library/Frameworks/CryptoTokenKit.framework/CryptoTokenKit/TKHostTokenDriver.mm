@interface TKHostTokenDriver
- (BOOL)configureWithError:(id *)error;
- (BOOL)valid;
- (NSString)classID;
- (TKHostTokenDriver)initWithExtension:(id)extension cache:(id)cache;
- (TKHostTokenDriverCache)cache;
- (TKTokenDriverHostContext)context;
- (id)_contextWithError:(id *)error;
- (id)acquireTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage tokenID:(id *)iD error:(id *)error;
- (id)contextWithError:(id *)error;
- (id)description;
- (void)acquireTokenWithTokenID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)keepAlive:(BOOL)alive;
- (void)releaseTokenWithTokenID:(id)d;
@end

@implementation TKHostTokenDriver

- (TKHostTokenDriver)initWithExtension:(id)extension cache:(id)cache
{
  extensionCopy = extension;
  cacheCopy = cache;
  v12.receiver = self;
  v12.super_class = TKHostTokenDriver;
  v9 = [(TKHostTokenDriver *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_extension, extension);
    objc_storeWeak(&v10->_cache, cacheCopy);
  }

  return v10;
}

- (id)description
{
  extension = [(TKHostTokenDriver *)self extension];
  identifier = [extension identifier];
  requestIdentifier = [(TKHostTokenDriver *)self requestIdentifier];
  v6 = [NSString stringWithFormat:@"<TKHostTokenDriver:%p %@(%@)>", self, identifier, requestIdentifier];

  return v6;
}

- (NSString)classID
{
  extension = [(TKHostTokenDriver *)self extension];
  attributes = [extension attributes];
  v5 = TKTokenClassDriverClassIDKey;
  v6 = [attributes objectForKeyedSubscript:TKTokenClassDriverClassIDKey];

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v8 = sub_100018CF8(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100020DA8(v5, self);
    }
  }

  return v6;
}

- (void)keepAlive:(BOOL)alive
{
  alive = self->_alive;
  if (alive)
  {
    if (alive)
    {
      sub_100020E5C(a2, self);
    }

    extension = [(TKHostTokenDriver *)self extension];
    identifier = [extension identifier];
    v6 = [NSString stringWithFormat:@"extension holder for '%@'", identifier];
    [v6 UTF8String];
    v7 = os_transaction_create();
    v8 = self->_alive;
    self->_alive = v7;

    alive = extension;
  }

  else
  {
    self->_alive = 0;
  }
}

- (void)invalidate
{
  v3 = sub_100018CF8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_100020ED0();
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_invalidated = 1;
  [(TKHostTokenDriver *)selfCopy keepAlive:0];
  objc_sync_exit(selfCopy);
}

- (BOOL)valid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  invalidated = selfCopy->_invalidated;
  objc_sync_exit(selfCopy);

  return !invalidated;
}

- (id)contextWithError:(id *)error
{
  v4 = [(TKHostTokenDriver *)self _contextWithError:error];
  if (!v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_cache);
    classID = [(TKHostTokenDriver *)self classID];
    [WeakRetained removeDriverWithClassID:classID];
  }

  return v4;
}

- (id)_contextWithError:(id *)error
{
  selfCopy = self;
  v4 = objc_sync_enter(selfCopy);
  if (selfCopy->_invalidated)
  {
    v5 = sub_100018CF8(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100021008();
    }

    if (!error)
    {
LABEL_25:
      v7 = 0;
      goto LABEL_31;
    }

    v6 = [NSError errorWithDomain:NSCocoaErrorDomain code:4097 userInfo:0];
    v7 = 0;
    goto LABEL_30;
  }

  requestIdentifier = [(TKHostTokenDriver *)selfCopy requestIdentifier];

  v60 = requestIdentifier;
  if (!requestIdentifier)
  {
    classID = [(TKHostTokenDriver *)selfCopy classID];
    objc_initWeak(&location, selfCopy);
    v67[0] = _NSConcreteStackBlock;
    v67[1] = 3221225472;
    v67[2] = sub_100019BD8;
    v67[3] = &unk_1000390E0;
    v21 = classID;
    v68 = v21;
    objc_copyWeak(&v69, &location);
    extension = [(TKHostTokenDriver *)selfCopy extension];
    [extension setRequestInterruptionBlock:v67];

    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100019C6C;
    v64[3] = &unk_100039108;
    v59 = v21;
    v65 = v59;
    objc_copyWeak(&v66, &location);
    extension2 = [(TKHostTokenDriver *)selfCopy extension];
    [extension2 setRequestCancellationBlock:v64];

    v25 = sub_100018CF8(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sub_100020F38();
    }

    v26 = objc_alloc_init(NSExtensionItem);
    v76[0] = @"idleTimeout";
    WeakRetained = objc_loadWeakRetained(&selfCopy->_cache);
    [WeakRetained idleTimeout];
    v28 = [NSNumber numberWithDouble:?];
    v76[1] = @"avoidInitialKeepAlive";
    v77[0] = v28;
    v29 = objc_loadWeakRetained(&selfCopy->_cache);
    v30 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v29 avoidInitialKeepAlive]);
    v77[1] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
    [v26 setUserInfo:v31];

    for (i = 0; ; ++i)
    {
      extension3 = [(TKHostTokenDriver *)selfCopy extension];
      v75 = v26;
      v34 = [NSArray arrayWithObjects:&v75 count:1];
      v63 = 0;
      v35 = [extension3 beginExtensionRequestWithOptions:0 inputItems:v34 error:&v63];
      v36 = v63;
      [(TKHostTokenDriver *)selfCopy setRequestIdentifier:v35];

      requestIdentifier2 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
      LODWORD(v35) = requestIdentifier2 == 0;

      if (!v35)
      {
        break;
      }

      if (i == 8 || (v38 = [v36 code], v38 != 4099) || (objc_msgSend(v36, "domain"), v39 = objc_claimAutoreleasedReturnValue(), v40 = objc_msgSend(v39, "isEqualToString:", NSCocoaErrorDomain), v39, !v40))
      {
        v44 = sub_100018CF8(v38);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          extension4 = [(TKHostTokenDriver *)selfCopy extension];
          identifier = [extension4 identifier];
          *buf = 138543618;
          v72 = identifier;
          v73 = 2114;
          v74 = v36;
          _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Token driver extension %{public}@ failed to start: %{public}@", buf, 0x16u);
        }

        if (error)
        {
          v45 = v36;
          *error = v36;
        }

        objc_destroyWeak(&v66);
        objc_destroyWeak(&v69);

        objc_destroyWeak(&location);
        goto LABEL_25;
      }

      v41 = sub_100018CF8(v38);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        extension5 = [(TKHostTokenDriver *)selfCopy extension];
        identifier2 = [extension5 identifier];
        *buf = 138543618;
        v72 = identifier2;
        v73 = 1024;
        LODWORD(v74) = i;
        _os_log_debug_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "beginExtensionRequest for %{public}@ failed %d time, retrying", buf, 0x12u);
      }
    }

    v49 = sub_100018CF8(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
    {
      sub_100020FA0();
    }

    requestIdentifier3 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      v57 = +[NSAssertionHandler currentHandler];
      requestIdentifier4 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
      [v57 handleFailureInMethod:a2 object:selfCopy file:@"TKHostTokenDriver.m" lineNumber:228 description:{@"requestIdentifier of unexpected type: %@", requestIdentifier4}];
    }

    [(TKHostTokenDriver *)selfCopy keepAlive:1];

    objc_destroyWeak(&v66);
    objc_destroyWeak(&v69);

    objc_destroyWeak(&location);
  }

  extension6 = [(TKHostTokenDriver *)selfCopy extension];
  requestIdentifier5 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
  v7 = [extension6 _extensionContextForUUID:requestIdentifier5];

  if (v7)
  {
    cache = [(TKHostTokenDriver *)selfCopy cache];
    registry = [cache registry];
    [v7 setRegistry:registry];

    cache2 = [(TKHostTokenDriver *)selfCopy cache];
    smartCardTokenRegistrationRegistry = [cache2 smartCardTokenRegistrationRegistry];
    [v7 setSmartCardRegistrationRegistry:smartCardTokenRegistrationRegistry];

    if (!v60)
    {
      tokenDriverProtocol = [v7 tokenDriverProtocol];
      registry2 = [v7 registry];
      listener = [registry2 listener];
      endpoint = [listener endpoint];
      [tokenDriverProtocol setConfigurationEndpoint:endpoint reply:&stru_100039128];
    }
  }

  else
  {
    v46 = sub_100018CF8(v11);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      extension7 = [(TKHostTokenDriver *)selfCopy extension];
      identifier3 = [extension7 identifier];
      requestIdentifier6 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
      *buf = 138543618;
      v72 = identifier3;
      v73 = 2114;
      v74 = requestIdentifier6;
      _os_log_error_impl(&_mh_execute_header, v46, OS_LOG_TYPE_ERROR, "%{public}@ failed to resolve requestIdentifier %{public}@ to context", buf, 0x16u);
    }

    if (error)
    {
      v6 = [NSError errorWithDomain:TKErrorDomain code:-7 userInfo:0];
LABEL_30:
      *error = v6;
    }
  }

LABEL_31:
  objc_sync_exit(selfCopy);

  return v7;
}

- (TKTokenDriverHostContext)context
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requestIdentifier = [(TKHostTokenDriver *)selfCopy requestIdentifier];

  if (requestIdentifier)
  {
    extension = [(TKHostTokenDriver *)selfCopy extension];
    requestIdentifier2 = [(TKHostTokenDriver *)selfCopy requestIdentifier];
    v6 = [extension _extensionContextForUUID:requestIdentifier2];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)acquireTokenWithTokenID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  classID = [dCopy classID];
  classID2 = [(TKHostTokenDriver *)self classID];
  v11 = [classID isEqualToString:classID2];

  if ((v11 & 1) == 0)
  {
    sub_100021148(a2, self, dCopy);
  }

  v13 = sub_100018CF8(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    sub_1000211CC();
  }

  v36 = 0;
  v14 = [(TKHostTokenDriver *)self contextWithError:&v36];
  v15 = v36;
  if (v14)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = sub_10001A134;
    v34 = sub_10001A144;
    v35 = 0;
    tokenDriverProtocol = [v14 tokenDriverProtocol];
    instanceID = [dCopy instanceID];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_10001A14C;
    v27[3] = &unk_100039150;
    v29 = &v30;
    v18 = v14;
    v28 = v18;
    [tokenDriverProtocol acquireTokenWithInstanceID:instanceID reply:v27];

    if (completionCopy)
    {
      v20 = v31[5];
      v21 = sub_100018CF8(v19);
      v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG);
      if (v20)
      {
        if (v22)
        {
          sub_100021234();
        }

        completionCopy[2](completionCopy, v31[5], 0);
      }

      else
      {
        if (v22)
        {
          extension = [(TKHostTokenDriver *)self extension];
          identifier = [extension identifier];
          error = [v18 error];
          *buf = 138543618;
          v38 = identifier;
          v39 = 2114;
          v40 = error;
          _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "failed to acquire token from extension %{public}@, error:%{public}@", buf, 0x16u);
        }

        error2 = [v18 error];
        (completionCopy)[2](completionCopy, 0, error2);
      }
    }

    _Block_object_dispose(&v30, 8);
  }

  else if (completionCopy)
  {
    (completionCopy)[2](completionCopy, 0, v15);
  }
}

- (id)acquireTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage tokenID:(id *)iD error:(id *)error
{
  usageCopy = usage;
  slotCopy = slot;
  dCopy = d;
  v14 = sub_100018CF8(dCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    sub_10002129C(self, v14);
  }

  v15 = [(TKHostTokenDriver *)self contextWithError:error];
  v16 = v15;
  if (v15)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = sub_10001A134;
    v50 = sub_10001A144;
    v51 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x3032000000;
    v43 = sub_10001A134;
    v44 = sub_10001A144;
    v45 = 0;
    tokenDriverProtocol = [v15 tokenDriverProtocol];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10001A55C;
    v36[3] = &unk_100039178;
    v38 = &v46;
    v39 = &v40;
    v18 = v16;
    v37 = v18;
    [tokenDriverProtocol acquireTokenWithSlot:slotCopy AID:dCopy proprietaryCardUsage:usageCopy reply:v36];

    if (v47[5])
    {
      v20 = [TKTokenID alloc];
      classID = [(TKHostTokenDriver *)self classID];
      *iD = [v20 initWithClassID:classID instanceID:v41[5]];

      v23 = sub_100018CF8(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        sub_100021344(iD, v23, v24, v25, v26, v27, v28, v29);
      }

      v30 = v47[5];
    }

    else
    {
      v31 = sub_100018CF8(v19);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        extension = [(TKHostTokenDriver *)self extension];
        identifier = [extension identifier];
        error = [v18 error];
        *buf = 138543618;
        v53 = identifier;
        v54 = 2114;
        v55 = error;
        _os_log_debug_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEBUG, "failed to acquire token from extension %{public}@, error:%{public}@", buf, 0x16u);
      }

      if (error)
      {
        [v18 error];
        *error = v30 = 0;
      }

      else
      {
        v30 = 0;
      }
    }

    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (BOOL)configureWithError:(id *)error
{
  v5 = sub_100018CF8(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1000213B4(self, v5);
  }

  v6 = [(TKHostTokenDriver *)self contextWithError:error];
  v7 = v6;
  if (v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    tokenDriverProtocol = [v6 tokenDriverProtocol];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10001A780;
    v15 = &unk_1000391A0;
    v17 = &v18;
    v9 = v7;
    v16 = v9;
    [tokenDriverProtocol configureWithReply:&v12];

    v10 = *(v19 + 24);
    if (error && (v19[3] & 1) == 0)
    {
      *error = [v9 error];
      v10 = *(v19 + 24);
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (void)releaseTokenWithTokenID:(id)d
{
  dCopy = d;
  v5 = sub_100018CF8(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_10002145C();
  }

  context = [(TKHostTokenDriver *)self context];
  v7 = context;
  if (context)
  {
    tokenDriverProtocol = [context tokenDriverProtocol];
    instanceID = [dCopy instanceID];
    [tokenDriverProtocol releaseTokenWithInstanceID:instanceID reply:&stru_1000391C0];
  }

  v10 = sub_100018CF8(context);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1000214C4();
  }
}

- (void)dealloc
{
  v3 = sub_100018CF8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10002152C();
  }

  requestIdentifier = [(TKHostTokenDriver *)self requestIdentifier];

  if (requestIdentifier)
  {
    extension = [(TKHostTokenDriver *)self extension];
    requestIdentifier2 = [(TKHostTokenDriver *)self requestIdentifier];
    [extension cancelExtensionRequestWithIdentifier:requestIdentifier2];
  }

  v7.receiver = self;
  v7.super_class = TKHostTokenDriver;
  [(TKHostTokenDriver *)&v7 dealloc];
}

- (TKHostTokenDriverCache)cache
{
  WeakRetained = objc_loadWeakRetained(&self->_cache);

  return WeakRetained;
}

@end