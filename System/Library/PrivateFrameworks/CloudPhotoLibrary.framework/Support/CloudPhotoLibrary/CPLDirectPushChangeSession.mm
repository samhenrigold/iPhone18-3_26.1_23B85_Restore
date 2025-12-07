@interface CPLDirectPushChangeSession
+ (id)selfCrashResetReason;
- (void)beginDirectSessionWithKnownLibraryVersion:(id)version context:(id)context completionHandler:(id)handler;
- (void)commitChangeBatch:(id)batch withCompletionHandler:(id)handler;
- (void)finalizeWithCompletionHandler:(id)handler;
@end

@implementation CPLDirectPushChangeSession

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
      v13 = sub_10013D210(tearedDown);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = NSStringFromSelector(a2);
        *buf = 138412290;
        v41 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", buf, 0xCu);
      }
    }

    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_10013D254;
    v38[3] = &unk_100271E98;
    v39 = handlerCopy;
    v15 = handlerCopy;
    [(CPLDirectChangeSession *)self dispatchCallback:v38];
    v16 = v39;
  }

  else
  {
    abstractObject = [(CPLDirectPushChangeSession *)self abstractObject];
    libraryManager = [abstractObject libraryManager];
    platformObject = [libraryManager platformObject];
    engineLibrary = [platformObject engineLibrary];
    objc_storeWeak((&self->_lastSeenLibraryVersion + 1), engineLibrary);

    WeakRetained = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    [WeakRetained clientIsPushingChanges];

    v22 = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    store = [v22 store];
    objc_storeWeak((&self->_engineLibrary + 1), store);

    v24 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    pushRepository = [v24 pushRepository];
    objc_storeWeak((&self->_store + 1), pushRepository);

    v26 = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
    scheduler = [v26 scheduler];
    objc_storeWeak((&self->_pushRepository + 1), scheduler);

    v28 = objc_alloc_init(NSMutableSet);
    v29 = *(&self->_scheduler + 1);
    *(&self->_scheduler + 1) = v28;

    v30 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10013D2B8;
    v35[3] = &unk_1002797C0;
    v35[4] = self;
    v36 = versionCopy;
    v37 = contextCopy;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_10013D478;
    v33[3] = &unk_10027A198;
    v33[4] = self;
    v34 = handlerCopy;
    v31 = handlerCopy;
    v32 = [v30 performWriteTransactionWithBlock:v35 completionHandler:v33];

    v16 = v36;
  }
}

- (void)finalizeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
  [WeakRetained clientIsPushingChanges];

  [(CPLDirectChangeSession *)self discardTentativeResetReason];
  tearedDown = [(CPLDirectChangeSession *)self tearedDown];
  if (tearedDown)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v8 = sub_10013D210(tearedDown);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = NSStringFromSelector(a2);
        *buf = 138412290;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", buf, 0xCu);
      }
    }

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10013D784;
    v18[3] = &unk_100271E98;
    v19 = handlerCopy;
    v10 = handlerCopy;
    [(CPLDirectChangeSession *)self dispatchCallback:v18];
    v11 = v19;
  }

  else
  {
    v12 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10013D7E8;
    v17[3] = &unk_100273588;
    v17[4] = self;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013D930;
    v15[3] = &unk_10027A198;
    v15[4] = self;
    v16 = handlerCopy;
    v13 = handlerCopy;
    v14 = [v12 performWriteTransactionWithBlock:v17 completionHandler:v15];

    v11 = v16;
  }
}

- (void)commitChangeBatch:(id)batch withCompletionHandler:(id)handler
{
  batchCopy = batch;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained((&self->_lastSeenLibraryVersion + 1));
  [WeakRetained clientIsPushingChanges];

  [(CPLDirectChangeSession *)self discardTentativeResetReason];
  tearedDown = [(CPLDirectChangeSession *)self tearedDown];
  if (tearedDown)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v11 = sub_10013D210(tearedDown);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@ was called while the session was already teared down", &buf, 0xCu);
      }
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10013DDC0;
    v29[3] = &unk_100271E98;
    v30 = handlerCopy;
    [(CPLDirectChangeSession *)self dispatchCallback:v29];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v32 = 0x3032000000;
    v33 = sub_100004570;
    v34 = sub_10000539C;
    v35 = 0;
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = sub_100004570;
    v27[4] = sub_10000539C;
    v28 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 0;
    v13 = objc_loadWeakRetained((&self->_engineLibrary + 1));
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10013DE30;
    v20[3] = &unk_10027AF38;
    v20[4] = self;
    v21 = batchCopy;
    v22 = v27;
    p_buf = &buf;
    v24 = a2;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10013E4C8;
    v15[3] = &unk_10027AFB0;
    v17 = &buf;
    v18 = v25;
    v15[4] = self;
    v16 = handlerCopy;
    v19 = v27;
    v14 = [v13 performWriteTransactionWithBlock:v20 completionHandler:v15];

    _Block_object_dispose(v25, 8);
    _Block_object_dispose(v27, 8);

    _Block_object_dispose(&buf, 8);
  }
}

+ (id)selfCrashResetReason
{
  if (qword_1002D2850 != -1)
  {
    sub_1001B61AC();
  }

  v3 = qword_1002D2858;

  return v3;
}

@end