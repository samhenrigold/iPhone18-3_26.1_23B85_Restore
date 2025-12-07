@interface MSDPairedWatchProxy
+ (id)sharedInstance;
- (BOOL)_sendIDSRequestMessageOfType:(unsigned __int16)type withPayload:(id)payload;
- (BOOL)canLockSnapshot;
- (BOOL)canRevertSnapshot;
- (BOOL)canUnenrollWithObliteration:(BOOL)obliteration;
- (BOOL)canUnlockSnapshot;
- (BOOL)canUpdateContent;
- (BOOL)lockSnapshot;
- (BOOL)revertSnapshot;
- (BOOL)signalContentUpdateCompletion:(BOOL)completion andError:(id)error;
- (BOOL)unenrollWithObliteration:(BOOL)obliteration callUnregister:(BOOL)unregister;
- (BOOL)unlockSnapshot;
- (BOOL)updateContentWithDeadline:(int)deadline;
- (MSDPairedWatchProxy)init;
- (void)_updateSyncStatusFromSyncSession:(id)session;
- (void)bootstrap;
- (void)syncSessionObserver:(id)observer didReceiveUpdate:(id)update;
@end

@implementation MSDPairedWatchProxy

+ (id)sharedInstance
{
  if (qword_1001A5660 != -1)
  {
    sub_1000CCB60();
  }

  v3 = qword_1001A5658;

  return v3;
}

- (MSDPairedWatchProxy)init
{
  v5.receiver = self;
  v5.super_class = MSDPairedWatchProxy;
  v2 = [(MSDPairedDeviceProxy *)&v5 init];
  if (v2)
  {
    v3 = [(MSDIDSHandler *)[MSDCompanionIDSHandler alloc] initWithDelegate:v2];
    [(MSDPairedWatchProxy *)v2 setIdsHandler:v3];
  }

  return v2;
}

- (void)bootstrap
{
  v7.receiver = self;
  v7.super_class = MSDPairedWatchProxy;
  [(MSDPairedDeviceProxy *)&v7 bootstrap];
  idsHandler = [(MSDPairedWatchProxy *)self idsHandler];
  [idsHandler start];

  [(MSDPairedWatchProxy *)self setSyncState:0];
  v4 = objc_alloc_init(PSYSyncSessionObserver);
  [(MSDPairedWatchProxy *)self setSyncSessionObserver:v4];

  syncSessionObserver = [(MSDPairedWatchProxy *)self syncSessionObserver];
  [syncSessionObserver setDelegate:self];

  syncSessionObserver2 = [(MSDPairedWatchProxy *)self syncSessionObserver];
  [syncSessionObserver2 startObservingSyncSessionsWithCompletion:&stru_10016A6F0];
}

- (BOOL)canUpdateContent
{
  v5 = @"ForDryRun";
  v6 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:0 withPayload:v3];

  return self;
}

- (BOOL)canLockSnapshot
{
  v5[0] = @"SnapshotAction";
  v5[1] = @"ForDryRun";
  v6[0] = &off_10017AF78;
  v6[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)canUnlockSnapshot
{
  v5[0] = @"SnapshotAction";
  v5[1] = @"ForDryRun";
  v6[0] = &off_10017AF90;
  v6[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)canRevertSnapshot
{
  v5[0] = @"SnapshotAction";
  v5[1] = @"ForDryRun";
  v6[0] = &off_10017AFA8;
  v6[1] = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)canUnenrollWithObliteration:(BOOL)obliteration
{
  v7[0] = @"ForDryRun";
  v7[1] = @"WithObliteration";
  v8[0] = &__kCFBooleanTrue;
  v4 = [NSNumber numberWithBool:obliteration];
  v8[1] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:3 withPayload:v5];
  return self;
}

- (BOOL)updateContentWithDeadline:(int)deadline
{
  v7 = @"CompleteBy";
  v4 = [NSNumber numberWithInt:*&deadline];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:0 withPayload:v5];
  return self;
}

- (BOOL)lockSnapshot
{
  v5 = @"SnapshotAction";
  v6 = &off_10017AF78;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)unlockSnapshot
{
  v5 = @"SnapshotAction";
  v6 = &off_10017AF90;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)revertSnapshot
{
  v5 = @"SnapshotAction";
  v6 = &off_10017AFA8;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  LOBYTE(self) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:1 withPayload:v3];

  return self;
}

- (BOOL)unenrollWithObliteration:(BOOL)obliteration callUnregister:(BOOL)unregister
{
  unregisterCopy = unregister;
  v10[0] = @"WithObliteration";
  v6 = [NSNumber numberWithBool:obliteration];
  v11[0] = v6;
  v10[1] = @"CallUnregister";
  v7 = [NSNumber numberWithBool:unregisterCopy];
  v11[1] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];

  LOBYTE(v7) = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:3 withPayload:v8];
  return v7;
}

- (BOOL)signalContentUpdateCompletion:(BOOL)completion andError:(id)error
{
  completionCopy = completion;
  errorCopy = error;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = [NSNumber numberWithBool:completionCopy];
  [v7 setObject:v8 forKey:@"ContentUpdateCompleted"];

  if (errorCopy)
  {
    v9 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [errorCopy code]);
    [v7 setObject:v9 forKey:@"ErrorCode"];

    localizedDescription = [errorCopy localizedDescription];
    [v7 setObject:localizedDescription forKey:@"ErrorMessage"];
  }

  v11 = [(MSDPairedWatchProxy *)self _sendIDSRequestMessageOfType:0 withPayload:v7];

  return v11;
}

- (void)syncSessionObserver:(id)observer didReceiveUpdate:(id)update
{
  updatedSession = [update updatedSession];
  [(MSDPairedWatchProxy *)self _updateSyncStatusFromSyncSession:updatedSession];
}

- (void)_updateSyncStatusFromSyncSession:(id)session
{
  sessionCopy = session;
  if ([sessionCopy syncSessionType] != 1)
  {
    syncSessionState = [sessionCopy syncSessionState];
    syncSessionType = [sessionCopy syncSessionType];
    v7 = NSStringfromPSYSyncSessionType();
    if (syncSessionState == 2)
    {
      if ([(MSDPairedWatchProxy *)self syncState]== 2)
      {
        goto LABEL_18;
      }

      v10 = sub_100063A54([(MSDPairedWatchProxy *)self setSyncState:2]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Paired device sync just completed! Type: %{public}@", &v13, 0xCu);
      }

      v11 = +[MSDTargetDevice sharedInstance];
      [v11 setWaitingForCommand:1];

      if (syncSessionType)
      {
        goto LABEL_18;
      }

      v12 = +[MSDProgressUpdater sharedInstance];
      [v12 updateStage:100];

      v8 = +[MSDUIHelper sharedInstance];
      [v8 startFullScreenUIWith:@"IN_PROGRESS" allowCancel:1];
    }

    else if (syncSessionState == 1)
    {
      if ([(MSDPairedWatchProxy *)self syncState]== 1)
      {
LABEL_18:

        goto LABEL_19;
      }

      v9 = sub_100063A54([(MSDPairedWatchProxy *)self setSyncState:1]);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Paired device sync has started! Type: %{public}@", &v13, 0xCu);
      }

      v8 = +[MSDProgressUpdater sharedInstance];
      [v8 updateStage:32];
    }

    else
    {
      if (syncSessionState || ![(MSDPairedWatchProxy *)self syncState])
      {
        goto LABEL_18;
      }

      v8 = sub_100063A54([(MSDPairedWatchProxy *)self setSyncState:0]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138543362;
        v14 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Paired device sync is inactive! Type: %{public}@", &v13, 0xCu);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
}

- (BOOL)_sendIDSRequestMessageOfType:(unsigned __int16)type withPayload:(id)payload
{
  typeCopy = type;
  payloadCopy = payload;
  v7 = dispatch_semaphore_create(0);
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  idsHandler = [(MSDPairedWatchProxy *)self idsHandler];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002FCBC;
  v16[3] = &unk_10016A718;
  v18 = &v19;
  v9 = v7;
  v17 = v9;
  LOBYTE(typeCopy) = [idsHandler sendRequestMessageOfType:typeCopy withPayload:payloadCopy andResponseHandler:v16];

  if ((typeCopy & 1) == 0)
  {
    v14 = sub_100063A54(v10);
    sub_1000CCC0C(v14, &v23);
LABEL_7:

    v12 = 0;
    goto LABEL_4;
  }

  v11 = dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if ((v20[3] & 1) == 0)
  {
    v15 = sub_100063A54(v11);
    sub_1000CCC64(v15, &v23);
    goto LABEL_7;
  }

  v12 = 1;
LABEL_4:

  _Block_object_dispose(&v19, 8);
  return v12;
}

@end