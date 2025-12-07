@interface MAHandleEndNavigation
- (void)performWithCompletion:(id)completion serviceHelper:(id)helper;
@end

@implementation MAHandleEndNavigation

- (void)performWithCompletion:(id)completion serviceHelper:(id)helper
{
  completionCopy = completion;
  v5 = [SACommandFailed alloc];
  v6 = [v5 initWithErrorCode:SALocalSearchNavigationNotRunningErrorCode];
  v7 = +[MKMapService sharedService];
  [v7 captureUserAction:3002 onTarget:802 placeActionDetails:0 mapItem:0 resultIndex:0xFFFFFFFFLL];

  v9 = _maps_backgroundStateLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "MAPS SIRI: Received end navigation command", buf, 2u);
  }

  v10 = +[MapsSiriIPCInterface sharedInterface];
  [v10 initializeBrokerConnectionIfNeeded];
  if (![v10 canReceiveMessages] || objc_msgSend(v10, "isMapsBackgroundTaskSuspended"))
  {
    dictionary = [v6 dictionary];
    completionCopy[2](completionCopy, dictionary);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_11FD8;
  v13[3] = &unk_34B30;
  v14 = completionCopy;
  v12 = completionCopy;
  [v10 endNavigationWithCompletion:v13];
}

@end