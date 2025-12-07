@interface CPLDirectPullChangeSession
+ (id)selfCrashResetReason;
- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler;
- (void)beginDirectSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler;
- (void)finalizeWithCompletionHandler:(id)handler;
- (void)getChangeBatchWithCompletionHandler:(id)handler;
@end

@implementation CPLDirectPullChangeSession

- (void)beginDirectSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler
{
  versionCopy = version;
  contextCopy = context;
  handlerCopy = handler;
  tearedDown = [(CPLDirectChangeSession *)self tearedDown];
  if (tearedDown)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = sub_100139904(tearedDown);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        *buf = 138412290;
        v42 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", buf, 0xCu);
      }
    }

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100139948;
    v39[3] = &unk_100271E98;
    v40 = handlerCopy;
    v15 = handlerCopy;
    [(CPLDirectChangeSession *)self dispatchCallback:v39];
    v16 = v40;
  }

  else
  {
    abstractObject = [(CPLDirectPullChangeSession *)self abstractObject];
    libraryManager = [abstractObject libraryManager];
    platformObject = [libraryManager platformObject];
    engineLibrary = [platformObject engineLibrary];
    objc_storeWeak((&self->_lastSeenLibraryVersion + 1), engineLibrary);

    WeakRetained = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    store = [WeakRetained store];
    objc_storeWeak((&self->_engineLibrary + 1), store);

    v23 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    scopes = [v23 scopes];
    objc_storeWeak((&self->_store + 1), scopes);

    v25 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    pullQueue = [v25 pullQueue];
    objc_storeWeak((&self->_scopes + 1), pullQueue);

    v27 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    idMapping = [v27 idMapping];
    objc_storeWeak((&self->_pullQueue + 1), idMapping);

    v29 = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    scheduler = [v29 scheduler];
    objc_storeWeak((&self->_idMapping + 1), scheduler);

    v31 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1001399AC;
    v36[3] = &unk_1002797C0;
    v36[4] = self;
    v37 = versionCopy;
    v38 = contextCopy;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100139BB0;
    v34[3] = &unk_10027A198;
    v34[4] = self;
    v35 = handlerCopy;
    v32 = handlerCopy;
    v33 = [v31 performWriteTransactionWithBlock:v36 completionHandler:v34];

    v16 = v37;
  }
}

- (void)getChangeBatchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CPLDirectChangeSession *)self discardTentativeResetReason];
  tearedDown = [(CPLDirectChangeSession *)self tearedDown];
  if (tearedDown)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100139904(tearedDown);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(a2);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", &buf, 0xCu);
      }
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100139FB0;
    v19[3] = &unk_100271E98;
    v20 = handlerCopy;
    [(CPLDirectChangeSession *)self dispatchCallback:v19];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x3032000000;
    v23 = sub_100004560;
    v24 = sub_100005394;
    v25 = 0;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v18 = 0;
    WeakRetained = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013A018;
    v16[3] = &unk_10027AD00;
    v16[4] = self;
    v16[5] = &buf;
    v16[6] = v17;
    v16[7] = a2;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10013A89C;
    v11[3] = &unk_10027AD50;
    v11[4] = self;
    v12 = handlerCopy;
    v13 = v17;
    p_buf = &buf;
    v15 = a2;
    v10 = [WeakRetained performWriteTransactionWithBlock:v16 completionHandler:v11];

    _Block_object_dispose(v17, 8);
    _Block_object_dispose(&buf, 8);
  }
}

- (void)acknowledgeChangeBatch:(id)batch withCompletionHandler:(id)handler
{
  batchCopy = batch;
  handlerCopy = handler;
  tearedDown = [(CPLDirectChangeSession *)self tearedDown];
  if (tearedDown)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v10 = sub_100139904(tearedDown);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = NSStringFromSelector(a2);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", &buf, 0xCu);
      }
    }

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10013ADBC;
    v21[3] = &unk_100271E98;
    v22 = handlerCopy;
    [(CPLDirectChangeSession *)self dispatchCallback:v21];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v24 = 0x3032000000;
    v25 = sub_100004560;
    v26 = sub_100005394;
    v27 = 0;
    WeakRetained = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10013AE24;
    v17[3] = &unk_10027ADE8;
    v17[4] = self;
    p_buf = &buf;
    v20 = a2;
    v18 = batchCopy;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10013B464;
    v14[3] = &unk_10027AE10;
    v16 = &buf;
    v14[4] = self;
    v15 = handlerCopy;
    v13 = [WeakRetained performWriteTransactionWithBlock:v17 completionHandler:v14];

    _Block_object_dispose(&buf, 8);
  }
}

- (void)finalizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(CPLDirectChangeSession *)self discardTentativeResetReason];
  tearedDown = [(CPLDirectChangeSession *)self tearedDown];
  if (tearedDown)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v7 = sub_100139904(tearedDown);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = NSStringFromSelector(a2);
        *buf = 138412290;
        v20 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", buf, 0xCu);
      }
    }

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10013B904;
    v17[3] = &unk_100271E98;
    v18 = handlerCopy;
    v9 = handlerCopy;
    [(CPLDirectChangeSession *)self dispatchCallback:v17];
    v10 = v18;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10013B968;
    v16[3] = &unk_100273588;
    v16[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10013BAD4;
    v14[3] = &unk_10027A198;
    v14[4] = self;
    v15 = handlerCopy;
    v12 = handlerCopy;
    v13 = [WeakRetained performWriteTransactionWithBlock:v16 completionHandler:v14];

    v10 = v15;
  }
}

+ (id)selfCrashResetReason
{
  if (qword_1002D2820 != -1)
  {
    sub_1001B58B0();
  }

  v3 = qword_1002D2828;

  return v3;
}

@end