@interface AAFlowPresenter
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)_callCompletionBlockWithError:(id)error;
- (void)dealloc;
- (void)flowFinishedWithError:(id)error completion:(id)completion;
- (void)launchProcessWithUserInfo:(id)info;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation AAFlowPresenter

- (void)launchProcessWithUserInfo:(id)info
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696B0D8];
  infoCopy = info;
  anonymousListener = [v4 anonymousListener];
  remoteListener = self->_remoteListener;
  self->_remoteListener = anonymousListener;

  [(NSXPCListener *)self->_remoteListener setDelegate:self];
  [(NSXPCListener *)self->_remoteListener resume];
  v8 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:@"com.apple.AAUIViewService" viewControllerClassName:@"AAUIRemoteViewController"];
  v9 = objc_opt_new();
  endpoint = [(NSXPCListener *)self->_remoteListener endpoint];
  _endpoint = [endpoint _endpoint];
  [v9 setXpcEndpoint:_endpoint];

  [v9 setUserInfo:infoCopy];
  v12 = objc_opt_new();
  v13 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v8 configurationContext:v9];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v13;

  v15 = _AALogSystem([(SBSRemoteAlertHandle *)self->_remoteAlertHandle registerObserver:self]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    remoteAlertHandle = [(AAFlowPresenter *)self remoteAlertHandle];
    v17 = 138412290;
    v18 = remoteAlertHandle;
    _os_log_impl(&dword_1B6F6A000, v15, OS_LOG_TYPE_DEFAULT, "Activating handle: %@", &v17, 0xCu);
  }

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v12];
}

- (void)flowFinishedWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  [(AAFlowPresenter *)self _callCompletionBlockWithError:errorCopy];
  if (completionCopy)
  {
    completionCopy[2](completionCopy, errorCopy);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[AAFlowPresenterHostInterface XPCInterface];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v7 = *MEMORY[0x1E69E9840];
  activateCopy = activate;
  v4 = _AALogSystem(activateCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = activateCopy;
    _os_log_impl(&dword_1B6F6A000, v4, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) activated.", &v5, 0xCu);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v9 = *MEMORY[0x1E69E9840];
  deactivateCopy = deactivate;
  v5 = _AALogSystem(deactivateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = deactivateCopy;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) deactivated.", &v7, 0xCu);
  }

  v6 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
  [(AAFlowPresenter *)self _callCompletionBlockWithError:v6];
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  v19 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x1E69D4468]])
  {
    if ([errorCopy code] == 4)
    {

LABEL_9:
      v13 = _AALogSystem(v9);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = handleCopy;
        _os_log_impl(&dword_1B6F6A000, v13, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) deactivated by request.", &v15, 0xCu);
      }

      v11 = [MEMORY[0x1E696ABC0] aa_errorWithCode:-1];
      goto LABEL_12;
    }

    code = [errorCopy code];

    if (code == 5)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = _AALogSystem(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = handleCopy;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_1B6F6A000, v10, OS_LOG_TYPE_DEFAULT, "Alert handle (%@) interrupted with error: %@", &v15, 0x16u);
  }

  v11 = [MEMORY[0x1E696ABC0] aa_errorWithCode:0 underlyingError:errorCopy];
LABEL_12:
  v14 = v11;
  [(AAFlowPresenter *)self _callCompletionBlockWithError:v11];
}

- (void)_callCompletionBlockWithError:(id)error
{
  errorCopy = error;
  presentationCompletion = [(AAFlowPresenter *)self presentationCompletion];

  if (presentationCompletion)
  {
    presentationCompletion2 = [(AAFlowPresenter *)self presentationCompletion];
    (presentationCompletion2)[2](presentationCompletion2, errorCopy);
  }

  [(AAFlowPresenter *)self setPresentationCompletion:0];
}

- (void)dealloc
{
  v3 = _AALogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(AAInheritanceController *)self dealloc];
  }

  v4.receiver = self;
  v4.super_class = AAFlowPresenter;
  [(AAFlowPresenter *)&v4 dealloc];
}

@end