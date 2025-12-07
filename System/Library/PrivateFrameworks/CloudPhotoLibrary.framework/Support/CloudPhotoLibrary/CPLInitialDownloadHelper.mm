@interface CPLInitialDownloadHelper
- (CPLInitialDownloadHelper)initWithWrappers:(id)wrappers queue:(id)queue;
- (CPLInitialDownloadHelperDelegate)delegate;
- (void)_requestLibraryWithIdentifier:(id)identifier withActivatedMainScope:(BOOL)scope completionHandler:(id)handler;
- (void)initialDownloadHelper:(id)helper checkActiveAccountWithCompletionHandler:(id)handler;
- (void)requestInitialDownloadOfMainScopeForLibraryWithIdentifier:(id)identifier activity:(id)activity progressHandler:(id)handler completionHandler:(id)completionHandler;
- (void)requestLibraryWithIdentifier:(id)identifier withActivatedMainScope:(BOOL)scope completionHandler:(id)handler;
@end

@implementation CPLInitialDownloadHelper

- (CPLInitialDownloadHelper)initWithWrappers:(id)wrappers queue:(id)queue
{
  wrappersCopy = wrappers;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = CPLInitialDownloadHelper;
  v9 = [(CPLInitialDownloadHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_wrappers, wrappers);
    objc_storeStrong(&v10->_queue, queue);
  }

  return v10;
}

- (void)requestLibraryWithIdentifier:(id)identifier withActivatedMainScope:(BOOL)scope completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v11 = [NSProgress progressWithTotalUnitCount:1];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_10001051C;
  v35[3] = &unk_1002724D0;
  v12 = handlerCopy;
  v37 = v12;
  v13 = v11;
  v36 = v13;
  v14 = objc_retainBlock(v35);
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1001889E8;
  v34[3] = &unk_1002724F0;
  v34[4] = a2;
  [v13 setCancellationHandler:v34];
  if ([(CPLEngineWrapperArray *)self->_wrappers count])
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000107C0;
    v25[3] = &unk_1002725E0;
    v25[4] = self;
    v15 = &v26;
    v16 = identifierCopy;
    scopeCopy = scope;
    v17 = &v27;
    v26 = v16;
    v27 = v14;
    v18 = v14;
    [v13 performAsCurrentWithPendingUnitCount:1 usingBlock:v25];
  }

  else
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v19 = sub_10000FD9C(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Checking account info before requesting %@", buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = WeakRetained;
    if (WeakRetained)
    {
      selfCopy = WeakRetained;
    }

    else
    {
      selfCopy = self;
    }

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001056C;
    v29[3] = &unk_100272630;
    v29[4] = self;
    v15 = &v30;
    v23 = identifierCopy;
    scopeCopy2 = scope;
    v17 = &v32;
    v30 = v23;
    v32 = v14;
    v31 = v13;
    v24 = v14;
    [(CPLInitialDownloadHelper *)selfCopy initialDownloadHelper:self checkActiveAccountWithCompletionHandler:v29];
  }
}

- (void)requestInitialDownloadOfMainScopeForLibraryWithIdentifier:(id)identifier activity:(id)activity progressHandler:(id)handler completionHandler:(id)completionHandler
{
  identifierCopy = identifier;
  activityCopy = activity;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  dispatch_assert_queue_V2(self->_queue);
  currentLibraryIdentifier = self->_currentLibraryIdentifier;
  if (currentLibraryIdentifier)
  {
    v17 = [(NSString *)currentLibraryIdentifier isEqualToString:identifierCopy];
    if (v17)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v18 = sub_10000FD9C(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = identifierCopy;
          v19 = "Requested to perform initial download for %{public}@ but we are already doing it";
          v20 = v18;
          v21 = 12;
LABEL_14:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
          goto LABEL_15;
        }

        goto LABEL_15;
      }
    }

    else if ((_CPLSilentLogging & 1) == 0)
    {
      v18 = sub_10000FD9C(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v30 = self->_currentLibraryIdentifier;
        *buf = 138543618;
        *&buf[4] = identifierCopy;
        *&buf[12] = 2114;
        *&buf[14] = v30;
        v19 = "Requested to perform initial download for %{public}@ but we are already doing %{public}@";
        v20 = v18;
        v21 = 22;
        goto LABEL_14;
      }

LABEL_15:
    }

    queue = self->_queue;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100010C34;
    v45[3] = &unk_100271E98;
    v46 = completionHandlerCopy;
    v32 = v45;
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_100002744;
    v48 = &unk_100271E98;
    v49 = v32;
    v33 = queue;
    v28 = completionHandlerCopy;
    v34 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, buf);
    dispatch_async(v33, v34);

    v24 = v46;
    goto LABEL_17;
  }

  objc_storeStrong(&self->_currentLibraryIdentifier, identifier);
  v22 = [NSProgress progressWithTotalUnitCount:11];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100188AA0;
  v44[3] = &unk_1002724F0;
  v44[4] = a2;
  [v22 setCancellationHandler:v44];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100010CA4;
  v41[3] = &unk_100272658;
  v41[4] = self;
  v23 = v22;
  v42 = v23;
  v43 = completionHandlerCopy;
  v24 = completionHandlerCopy;
  v25 = objc_retainBlock(v41);
  v26 = v25;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v27 = sub_10000FD9C(v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = identifierCopy;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Requesting initial download of main scope for %{public}@", buf, 0xCu);
    }
  }

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100010D30;
  v35[3] = &unk_100272798;
  v35[4] = self;
  v39 = v26;
  v36 = identifierCopy;
  v37 = v23;
  v40 = handlerCopy;
  v38 = activityCopy;
  v28 = v23;
  v29 = v26;
  [v28 performAsCurrentWithPendingUnitCount:1 usingBlock:v35];

LABEL_17:
}

- (void)initialDownloadHelper:(id)helper checkActiveAccountWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000118BC;
  v11[3] = &unk_100271E98;
  v12 = handlerCopy;
  v7 = v11;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002744;
  block[3] = &unk_100271E98;
  v14 = v7;
  v8 = queue;
  v9 = handlerCopy;
  v10 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(v8, v10);
}

- (CPLInitialDownloadHelperDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_requestLibraryWithIdentifier:(id)identifier withActivatedMainScope:(BOOL)scope completionHandler:(id)handler
{
  scopeCopy = scope;
  identifierCopy = identifier;
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [NSProgress progressWithTotalUnitCount:2];
  v12 = v11;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v13 = sub_10000FD9C(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = "";
      if (scopeCopy)
      {
        v14 = " with activated main scope";
      }

      *buf = 138543618;
      v31 = identifierCopy;
      v32 = 2080;
      v33 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Requesting %{public}@%s", buf, 0x16u);
    }
  }

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000FDE0;
  v27[3] = &unk_1002724D0;
  v29 = handlerCopy;
  v15 = v12;
  v28 = v15;
  v16 = handlerCopy;
  v17 = objc_retainBlock(v27);
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100188810;
  v26[3] = &unk_1002724F0;
  v26[4] = a2;
  [v15 setCancellationHandler:v26];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000FE30;
  v21[3] = &unk_1002725B8;
  v21[4] = self;
  v22 = identifierCopy;
  v25 = scopeCopy;
  v23 = v15;
  v24 = v17;
  v18 = v15;
  v19 = v17;
  v20 = identifierCopy;
  [v18 performAsCurrentWithPendingUnitCount:1 usingBlock:v21];
}

@end