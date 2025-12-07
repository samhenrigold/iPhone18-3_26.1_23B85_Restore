@interface JaliscoUpdateOperation
+ (OS_os_log)logCategory;
+ (OS_os_log)oversizeLogCategory;
- (BOOL)preflightImport;
- (JaliscoUpdateOperation)initWithConfiguration:(id)configuration reason:(int64_t)reason clientIdentity:(id)identity;
- (JaliscoUpdateOperation)initWithReason:(int64_t)reason;
- (id)newImporter;
- (id)queryFilterPercentEscaped;
- (int64_t)localDatabaseRevision;
- (unsigned)_serverDatabaseRevision:(unsigned int)revision;
- (void)cancel;
- (void)handleSuccess:(int64_t)success;
- (void)main;
- (void)performUpdate;
@end

@implementation JaliscoUpdateOperation

- (void)main
{
  v3 = [MSVXPCTransaction alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = [v3 initWithName:v5];

  [v10 beginTransaction];
  musicLibrary = [(CloudLibraryOperation *)self musicLibrary];
  clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
  [musicLibrary setClientIdentity:clientIdentity];

  [(JaliscoUpdateOperation *)self performUpdate];
  musicLibrary2 = [(CloudLibraryOperation *)self musicLibrary];
  v9 = MSVTCCIdentityForCurrentProcess();
  [musicLibrary2 setClientIdentity:v9];

  [v10 endTransaction];
}

- (void)performUpdate
{
  [(JaliscoUpdateOperation *)self beginPerformUpdate];
  if (![(JaliscoUpdateOperation *)self preflightImport])
  {
    logCategory = [objc_opt_class() logCategory];
    if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy8 = self;
      _os_log_impl(&_mh_execute_header, logCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ - No library for import.", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (![(JaliscoUpdateOperation *)self localDatabaseRevision]&& sub_100004B8C())
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy8 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping initial import on non standalone wOS platform", buf, 0xCu);
    }

    return;
  }

  v5 = [(JaliscoUpdateOperation *)self _serverDatabaseRevision:1];
  if ([(JaliscoUpdateOperation *)self isCancelled])
  {

    [(CloudLibraryOperation *)self setStatus:4];
    return;
  }

  error = [(CloudLibraryOperation *)self error];

  if (!error)
  {
    if (v5)
    {
      localDatabaseRevision = [(JaliscoUpdateOperation *)self localDatabaseRevision];
      logCategory2 = [objc_opt_class() logCategory];
      if (os_log_type_enabled(logCategory2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy8 = self;
        v44 = 1024;
        LODWORD(v45) = localDatabaseRevision;
        _os_log_impl(&_mh_execute_header, logCategory2, OS_LOG_TYPE_DEFAULT, "%{public}@ - On-disk database revision: %u", buf, 0x12u);
      }

      newImporter = [(JaliscoUpdateOperation *)self newImporter];
      importer = self->_importer;
      self->_importer = newImporter;

      needsUpdateForTokens = [(JaliscoImporter *)self->_importer needsUpdateForTokens];
      if ((localDatabaseRevision != v5) | needsUpdateForTokens & 1)
      {
        if (needsUpdateForTokens)
        {
          [(JaliscoImporter *)self->_importer clearNeedsUpdateForTokens];
        }

        v14 = +[NSProcessInfo processInfo];
        [v14 systemUptime];
        v16 = v15;

        logCategory3 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(logCategory3, OS_LOG_TYPE_DEFAULT))
        {
          v18 = objc_opt_class();
          v19 = self->_importer;
          *buf = 138543874;
          selfCopy8 = self;
          v44 = 2114;
          v45 = v18;
          v46 = 2048;
          v47 = v19;
          v20 = v18;
          _os_log_impl(&_mh_execute_header, logCategory3, OS_LOG_TYPE_DEFAULT, "%{public}@ - Importer: <%{public}@ %p>", buf, 0x20u);
        }

        v38 = 0;
        v39 = &v38;
        v40 = 0x2020000000;
        v41 = 0;
        v21 = dispatch_semaphore_create(0);
        [ICDPowerEventLogger logEvent:self->_powerEventBeginName payload:self->_powerEventPayload];
        v22 = self->_importer;
        clientIdentity = [(CloudLibraryOperation *)self clientIdentity];
        v35[0] = _NSConcreteStackBlock;
        v35[1] = 3221225472;
        v35[2] = sub_100100D4C;
        v35[3] = &unk_1001DEE20;
        v37 = &v38;
        v35[4] = self;
        v24 = v21;
        v36 = v24;
        [(JaliscoImporter *)v22 importTracksUpToRevision:v5 clientIdentity:clientIdentity withCompletionHandler:v35];

        dispatch_semaphore_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
        [ICDPowerEventLogger logEvent:self->_powerEventEndName payload:self->_powerEventPayload];
        v25 = +[NSProcessInfo processInfo];
        [v25 systemUptime];
        v27 = v26;

        logCategory4 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(logCategory4, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          v30 = self->_importer;
          *buf = 138544130;
          selfCopy8 = self;
          v44 = 2114;
          v45 = v29;
          v46 = 2048;
          v47 = v30;
          v48 = 2048;
          v49 = v27 - v16;
          v31 = v29;
          _os_log_impl(&_mh_execute_header, logCategory4, OS_LOG_TYPE_DEFAULT, "%{public}@ - <%{public}@ %p> required: %gs to process", buf, 0x2Au);
        }

        if (([(JaliscoUpdateOperation *)self isCancelled]& 1) != 0)
        {
          v32 = 4;
        }

        else if (*(v39 + 24) == 1)
        {
          [(JaliscoUpdateOperation *)self handleSuccess:v5];
          v32 = 1;
        }

        else
        {
          v32 = 2;
        }

        [(CloudLibraryOperation *)self setStatus:v32];

        _Block_object_dispose(&v38, 8);
      }

      else
      {
        logCategory5 = [objc_opt_class() logCategory];
        if (os_log_type_enabled(logCategory5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy8 = self;
          _os_log_impl(&_mh_execute_header, logCategory5, OS_LOG_TYPE_DEFAULT, "%{public}@ - On-disk database revision is the same as the server revision, skipping update...", buf, 0xCu);
        }

        [(CloudLibraryOperation *)self setStatus:1];
      }

      v34 = self->_importer;
      self->_importer = 0;

      goto LABEL_10;
    }

    logCategory = [objc_opt_class() logCategory];
    if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy8 = self;
      _os_log_impl(&_mh_execute_header, logCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ - No database revision to update to.", buf, 0xCu);
    }

LABEL_9:

    [(CloudLibraryOperation *)self setStatus:1];
LABEL_10:
    [(JaliscoUpdateOperation *)self endPerformUpdate];
    return;
  }

  logCategory6 = [objc_opt_class() logCategory];
  if (os_log_type_enabled(logCategory6, OS_LOG_TYPE_ERROR))
  {
    error2 = [(CloudLibraryOperation *)self error];
    *buf = 138543618;
    selfCopy8 = self;
    v44 = 2114;
    v45 = error2;
    _os_log_impl(&_mh_execute_header, logCategory6, OS_LOG_TYPE_ERROR, "%{public}@ - Received error when doing an update request: %{public}@", buf, 0x16u);
  }

  [(CloudLibraryOperation *)self setStatus:2];
}

- (unsigned)_serverDatabaseRevision:(unsigned int)revision
{
  v3 = *&revision;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [ICUpdateRequest requestWithDatabaseRevision:v3];
  [v6 setReason:self->_reason];
  queryFilterPercentEscaped = [(JaliscoUpdateOperation *)self queryFilterPercentEscaped];
  logCategory = [objc_opt_class() logCategory];
  if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy2 = self;
    v25 = 2114;
    v26 = queryFilterPercentEscaped;
    _os_log_impl(&_mh_execute_header, logCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ - Query Filter: %{public}@", buf, 0x16u);
  }

  if ([queryFilterPercentEscaped length])
  {
    [v6 setValue:queryFilterPercentEscaped forArgument:@"query"];
  }

  if ([(JaliscoUpdateOperation *)self includeHiddenItems])
  {
    [v6 setValue:@"1" forArgument:@"includeHiddenItems"];
  }

  v9 = dispatch_semaphore_create(0);
  connection = [(CloudLibraryOperation *)self connection];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100101090;
  v16[3] = &unk_1001DE368;
  v18 = &v19;
  v16[4] = self;
  v11 = v9;
  v17 = v11;
  [connection sendRequest:v6 withResponseHandler:v16];

  dispatch_semaphore_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
  objc_autoreleasePoolPop(v5);
  logCategory2 = [objc_opt_class() logCategory];
  if (os_log_type_enabled(logCategory2, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(v20 + 6);
    *buf = 138543618;
    selfCopy2 = self;
    v25 = 1024;
    LODWORD(v26) = v13;
    _os_log_impl(&_mh_execute_header, logCategory2, OS_LOG_TYPE_DEFAULT, "%{public}@ - Server database revision: %u", buf, 0x12u);
  }

  v14 = *(v20 + 6);
  _Block_object_dispose(&v19, 8);
  return v14;
}

- (void)handleSuccess:(int64_t)success
{
  v5 = +[NSAssertionHandler currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:133 description:@"Must Subclass"];
}

- (id)newImporter
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:128 description:@"Must Subclass"];

  return 0;
}

- (BOOL)preflightImport
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:123 description:@"Must Subclass"];

  return 0;
}

- (int64_t)localDatabaseRevision
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:114 description:@"Must Subclass"];

  return 0;
}

- (id)queryFilterPercentEscaped
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:109 description:@"Must Subclass"];

  return 0;
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = JaliscoUpdateOperation;
  [(JaliscoUpdateOperation *)&v5 cancel];
  logCategory = [objc_opt_class() logCategory];
  if (os_log_type_enabled(logCategory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, logCategory, OS_LOG_TYPE_DEFAULT, "%{public}@ - Cancelling update...", buf, 0xCu);
  }

  v4 = [[NSError alloc] initWithDomain:@"JaliscoImporterErrorDomain" code:-2 userInfo:0];
  [(CloudLibraryOperation *)self setError:v4];

  [(CloudLibraryOperation *)self setStatus:4];
  [(JaliscoImporter *)self->_importer cancel];
}

- (JaliscoUpdateOperation)initWithConfiguration:(id)configuration reason:(int64_t)reason clientIdentity:(id)identity
{
  v21.receiver = self;
  v21.super_class = JaliscoUpdateOperation;
  v6 = [(CloudLibraryOperation *)&v21 initWithConfiguration:configuration clientIdentity:identity];
  v7 = v6;
  if (v6)
  {
    localDatabaseRevision = [(JaliscoUpdateOperation *)v6 localDatabaseRevision];
    [(JaliscoUpdateOperation *)v7 setInitialImport:localDatabaseRevision == 0];
    [(JaliscoUpdateOperation *)v7 setReason:reason];
    powerEventBeginName = v7->_powerEventBeginName;
    v7->_powerEventBeginName = @"UpdateOperationBegin";

    powerEventEndName = v7->_powerEventEndName;
    v7->_powerEventEndName = @"UpdateOperationEnd";

    if (localDatabaseRevision)
    {
      v22[0] = @"reason";
      v11 = [NSNumber numberWithInteger:reason];
      v22[1] = @"class";
      v23[0] = v11;
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v23[1] = v13;
      v14 = v23;
      v15 = v22;
      v16 = 2;
    }

    else
    {
      v24[0] = @"reason";
      v11 = [NSNumber numberWithInteger:reason];
      v25[0] = v11;
      v24[1] = @"class";
      v17 = objc_opt_class();
      v13 = NSStringFromClass(v17);
      v24[2] = @"initial";
      v25[1] = v13;
      v25[2] = &off_1001ED8B8;
      v14 = v25;
      v15 = v24;
      v16 = 3;
    }

    v18 = [NSDictionary dictionaryWithObjects:v14 forKeys:v15 count:v16];
    powerEventPayload = v7->_powerEventPayload;
    v7->_powerEventPayload = v18;
  }

  return v7;
}

- (JaliscoUpdateOperation)initWithReason:(int64_t)reason
{
  v5 = objc_opt_new();
  v6 = MSVTCCIdentityForCurrentProcess();
  v7 = [(JaliscoUpdateOperation *)self initWithConfiguration:v5 clientIdentity:v6 reason:reason];

  return v7;
}

+ (OS_os_log)oversizeLogCategory
{
  v4 = [JaliscoUpdateOperation instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:36 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"JaliscoUpdateOperation"}];
  }

  return &_os_log_default;
}

+ (OS_os_log)logCategory
{
  v4 = [JaliscoUpdateOperation instanceMethodForSelector:a2];
  if (v4 == [objc_opt_class() instanceMethodForSelector:a2])
  {
    v6 = +[NSAssertionHandler currentHandler];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    [v6 handleFailureInMethod:a2 object:self file:@"JaliscoUpdateOperation.m" lineNumber:31 description:{@"Subclass %@ must implement -%@ defined in %@.", v8, v9, @"JaliscoUpdateOperation"}];
  }

  return &_os_log_default;
}

@end