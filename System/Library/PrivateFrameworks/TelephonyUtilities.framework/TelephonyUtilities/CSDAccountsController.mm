@interface CSDAccountsController
- (BOOL)faceTimeIDMatchesAppleID;
- (BOOL)isValidOutgoingCallerID:(id)d;
- (CSDAccountsController)init;
- (CSDAccountsControllerDelegate)delegate;
- (NSString)debugDescription;
- (NSString)outgoingCallerID;
- (int64_t)_faceTimeAudioAvailability;
- (int64_t)_faceTimeVideoAvailability;
- (void)_updateOutgoingCallerID;
- (void)callerIDChanged:(id)changed;
- (void)dealloc;
- (void)devicesChanged:(id)changed;
- (void)service:(id)service activeAccountsChanged:(id)changed;
- (void)serviceAvailabilityChanged:(id)changed;
- (void)updateOutgoingCallerIDAndSendDelegateCallbacksIfNecessary;
@end

@implementation CSDAccountsController

- (CSDAccountsController)init
{
  v13.receiver = self;
  v13.super_class = CSDAccountsController;
  v2 = [(CSDAccountsController *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = sub_100004778(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      *buf = 138412290;
      v15 = v5;
      v6 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Initializing %@", buf, 0xCu);
    }

    v7 = dispatch_queue_create([@"com.apple.telephonyutilities.callservicesd.accountscontroller" UTF8String], 0);
    queue = v3->_queue;
    v3->_queue = v7;

    v9 = v3->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000CEE50;
    block[3] = &unk_100619D38;
    v12 = v3;
    dispatch_async(v9, block);
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v3 removeListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:0];

  v4 = +[FTCServiceAvailabilityCenter sharedInstance];
  [v4 removeListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:2];

  TURemoveIDSAvailabilityListener();
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = CSDAccountsController;
  [(CSDAccountsController *)&v6 dealloc];
}

- (NSString)debugDescription
{
  v3 = [NSMutableString stringWithFormat:@"%@\n", self];
  faceTimeIDMatchesAppleID = [(CSDAccountsController *)self faceTimeIDMatchesAppleID];
  v5 = @"NO";
  if (faceTimeIDMatchesAppleID)
  {
    v5 = @"YES";
  }

  [v3 appendFormat:@"    faceTimeIDMatchesAppleID: %@\n", v5];
  [v3 appendFormat:@"    faceTimeAudioAvailability: %ld\n", -[CSDAccountsController _faceTimeAudioAvailability](self, "_faceTimeAudioAvailability")];
  [v3 appendFormat:@"    faceTimeVideoAvailability: %ld\n", -[CSDAccountsController _faceTimeVideoAvailability](self, "_faceTimeVideoAvailability")];
  outgoingCallerID = [(CSDAccountsController *)self outgoingCallerID];
  [v3 appendFormat:@"    outgoingCallerID: %@\n", outgoingCallerID];

  return v3;
}

- (void)service:(id)service activeAccountsChanged:(id)changed
{
  serviceCopy = service;
  changedCopy = changed;
  queue = [(CSDAccountsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = serviceCopy;
    v14 = 2112;
    v15 = changedCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Active accounts changed for service %@: %@", &v12, 0x16u);
  }

  delegate = [(CSDAccountsController *)self delegate];
  [delegate accountsChanged];

  [(CSDAccountsController *)self updateOutgoingCallerIDAndSendDelegateCallbacksIfNecessary];
}

- (void)callerIDChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDAccountsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF464;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)serviceAvailabilityChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDAccountsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF5C8;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (void)devicesChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDAccountsController *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF73C;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (BOOL)faceTimeIDMatchesAppleID
{
  v2 = +[CSDFaceTimeVideoIDSService sharedInstance];
  service = [v2 service];
  iCloudAccount = [service iCloudAccount];

  v5 = +[CSDRelayIDSService sharedInstance];
  service2 = [v5 service];
  iCloudAccount2 = [service2 iCloudAccount];

  isActive = [iCloudAccount isActive];
  if (isActive && (isActive = [iCloudAccount2 isActive], isActive))
  {
    profileID = [iCloudAccount profileID];
    if (profileID)
    {
      profileID2 = [iCloudAccount2 profileID];
      if (profileID2)
      {
        profileID3 = [iCloudAccount profileID];
        profileID4 = [iCloudAccount2 profileID];
        v13 = [profileID3 isEqualToIgnoringCase:profileID4];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_100004778(isActive);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    isActive2 = [iCloudAccount isActive];
    profileID5 = [iCloudAccount profileID];
    isActive3 = [iCloudAccount2 isActive];
    profileID6 = [iCloudAccount2 profileID];
    v20 = 138413570;
    v21 = iCloudAccount;
    v22 = 1024;
    v23 = isActive2;
    v24 = 2112;
    v25 = profileID5;
    v26 = 2112;
    v27 = iCloudAccount2;
    v28 = 1024;
    v29 = isActive3;
    v30 = 2112;
    v31 = profileID6;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "FaceTime iCloud account is %@ (isActive=%d, profileID=%@) and relay iCloud account is %@ (isActive=%d, profileID=%@)", &v20, 0x36u);
  }

  return v13;
}

- (NSString)outgoingCallerID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100028644;
  v11 = sub_1000328AC;
  v12 = 0;
  queue = [(CSDAccountsController *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CFB7C;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (int64_t)_faceTimeAudioAvailability
{
  v2 = +[FTCServiceAvailabilityCenter sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:2];

  return v3;
}

- (int64_t)_faceTimeVideoAvailability
{
  v2 = +[FTCServiceAvailabilityCenter sharedInstance];
  v3 = [v2 availabilityForListenerID:@"com.apple.telephonyutilities.callservicesd.accountscontroller" forService:0];

  return v3;
}

- (void)updateOutgoingCallerIDAndSendDelegateCallbacksIfNecessary
{
  queue = [(CSDAccountsController *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFCB0;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_updateOutgoingCallerID
{
  queue = [(CSDAccountsController *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = +[CSDFaceTimeVideoIDSService sharedInstance];
  callerID = [v4 callerID];

  v6 = [(CSDAccountsController *)self isValidOutgoingCallerID:callerID];
  if (v6)
  {
    v7 = [callerID copy];
    outgoingCallerID = self->_outgoingCallerID;
    self->_outgoingCallerID = v7;

    goto LABEL_26;
  }

  v10 = sub_100004778(v6);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = callerID;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FaceTime caller ID %@ is not a valid outgoing relay caller ID", buf, 0xCu);
  }

  v11 = +[CSDRelayIDSService sharedInstance];
  availableOutgoingRelayCallerIDs = [v11 availableOutgoingRelayCallerIDs];

  v14 = sub_100004778(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = availableOutgoingRelayCallerIDs;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Attempting to find a valid outgoing caller ID in set of available outgoing caller IDs %@", buf, 0xCu);
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000D0224;
  v34[3] = &unk_10061AE48;
  v34[4] = self;
  v15 = [(NSString *)availableOutgoingRelayCallerIDs objectsPassingTest:v34];
  v16 = [v15 count];
  if (v16 == 1)
  {
    anyObject = [v15 anyObject];
    v18 = sub_100004778(anyObject);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = anyObject;
      v37 = 2112;
      v38 = availableOutgoingRelayCallerIDs;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Selected outgoing caller ID %@ from list of available outgoing caller IDs %@", buf, 0x16u);
    }

    if (anyObject)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v19 = sub_100004778(v16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = availableOutgoingRelayCallerIDs;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Could not automatically select an outgoing caller ID; multiple telephone numbers are listed in the set of available outgoing caller IDs %@", buf, 0xCu);
    }
  }

  v20 = +[CSDFaceTimeVideoIDSService sharedInstance];
  account = [v20 account];
  vettedAliases = [account vettedAliases];

  v24 = sub_100004778(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = vettedAliases;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Attempting to find a valid outgoing caller ID in list of vetted account aliases %@", buf, 0xCu);
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000D0230;
  v33[3] = &unk_10061AE70;
  v33[4] = self;
  v25 = [(NSString *)vettedAliases indexesOfObjectsPassingTest:v33];
  v26 = [v25 count];
  v27 = sub_100004778(v26);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
  if (v26 == 1)
  {
    if (v28)
    {
      *buf = 138412546;
      v36 = 0;
      v37 = 2112;
      v38 = availableOutgoingRelayCallerIDs;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Selected outgoing caller ID %@ from list of vetted account aliases %@", buf, 0x16u);
    }

    anyObject = -[NSString objectAtIndexedSubscript:](vettedAliases, "objectAtIndexedSubscript:", [v25 firstIndex]);
  }

  else
  {
    if (v28)
    {
      *buf = 138412290;
      v36 = vettedAliases;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Could not automatically select an outgoing caller ID; multiple telephone numbers are listed in the set of vetted account aliases IDs %@", buf, 0xCu);
    }

    anyObject = 0;
  }

LABEL_25:
  v29 = [(NSString *)anyObject copy];
  v30 = self->_outgoingCallerID;
  self->_outgoingCallerID = v29;

LABEL_26:
  v31 = sub_100004778(v9);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = self->_outgoingCallerID;
    *buf = 138412290;
    v36 = v32;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Outgoing Caller ID is %@", buf, 0xCu);
  }
}

- (BOOL)isValidOutgoingCallerID:(id)d
{
  dCopy = d;
  if (qword_1006ACC28 != -1)
  {
    sub_100473EF8();
  }

  if ([dCopy length])
  {
    v4 = off_1006ACC20(dCopy);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CSDAccountsControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end