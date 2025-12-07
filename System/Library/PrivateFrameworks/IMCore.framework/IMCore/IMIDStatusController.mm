@interface IMIDStatusController
+ (id)sharedInstance;
- (IMIDStatusController)init;
- (int64_t)__statusForID:(id)d onService:(id)service isCanonicalized:(BOOL)canonicalized;
- (int64_t)_idStatusForID:(id)d onAccount:(id)account;
- (int64_t)statusForID:(id)d onService:(id)service;
- (void)_processIDStatusResponseForURI:(id)i resultStatus:(int64_t)status forService:(id)service;
- (void)_requestStatusForID:(id)d onService:(id)service onAccount:(id)account;
@end

@implementation IMIDStatusController

+ (id)sharedInstance
{
  if (qword_1ED767948 != -1)
  {
    sub_1A84E21D8();
  }

  v3 = qword_1ED7678E8;

  return v3;
}

- (IMIDStatusController)init
{
  v9.receiver = self;
  v9.super_class = IMIDStatusController;
  v2 = [(IMIDStatusController *)&v9 init];
  v3 = v2;
  if (v2)
  {
    if (!v2->_servicesRegistered)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      servicesRegistered = v3->_servicesRegistered;
      v3->_servicesRegistered = v4;
    }

    v6 = objc_alloc_init(MEMORY[0x1E696AE68]);
    servicesLock = v3->_servicesLock;
    v3->_servicesLock = v6;
  }

  return v3;
}

- (void)_processIDStatusResponseForURI:(id)i resultStatus:(int64_t)status forService:(id)service
{
  iCopy = i;
  serviceCopy = service;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83664C8;
  block[3] = &unk_1E7812C40;
  v12 = serviceCopy;
  v13 = iCopy;
  statusCopy = status;
  v9 = iCopy;
  v10 = serviceCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (int64_t)__statusForID:(id)d onService:(id)service isCanonicalized:(BOOL)canonicalized
{
  canonicalizedCopy = canonicalized;
  v28 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  if ([dCopy length] >= 2 && objc_msgSend(dCopy, "characterAtIndex:", 1) == 58)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
    if (dCopy && serviceCopy)
    {
      if (canonicalizedCopy)
      {
        _bestGuessURIFromCanicalizedID = [dCopy _bestGuessURIFromCanicalizedID];
      }

      else
      {
        if ([dCopy _appearsToBePhoneNumber] && (objc_msgSend(dCopy, "hasPrefix:", @"+") & 1) == 0)
        {
          v12 = IMCleanupPhoneNumber();

          dCopy = v12;
        }

        _bestGuessURIFromCanicalizedID = [dCopy _bestGuessURI];
      }

      v13 = _bestGuessURIFromCanicalizedID;
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          *&buf[4] = dCopy;
          *&buf[12] = 2112;
          *&buf[14] = serviceCopy;
          *&buf[22] = 2112;
          v27 = v13;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_DEBUG, "ID %@  onService: %@   (URI: %@)", buf, 0x20u);
        }
      }

      v15 = sub_1A8366D24(serviceCopy);
      [(NSRecursiveLock *)self->_servicesLock lock];
      if (([(NSMutableSet *)self->_servicesRegistered containsObject:v15]& 1) == 0)
      {
        [(NSMutableSet *)self->_servicesRegistered addObject:v15];
        mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
        [mEMORY[0x1E69A4878] addDelegate:self forService:v15 listenerID:@"IMIDStatusControllerListenerID" queue:MEMORY[0x1E69E96A0]];
      }

      [(NSRecursiveLock *)self->_servicesLock unlock];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v27 = 0;
      if (qword_1EB2EA410 != -1)
      {
        sub_1A84E21EC();
      }

      pthread_mutex_lock(&stru_1EB2E5670);
      mEMORY[0x1E69A4878]2 = [MEMORY[0x1E69A4878] sharedInstance];
      v18 = [mEMORY[0x1E69A4878]2 _hasCacheForService:v15];

      v19 = MEMORY[0x1E69A80B0];
      if (v18)
      {
        v20 = [MEMORY[0x1E69A80B0] _currentCachedIDStatusForDestination:v13 service:v15 listenerID:@"IMIDStatusControllerListenerID"];
        *(*&buf[8] + 24) = v20;
      }

      else
      {
        v21 = dispatch_get_global_queue(0, 0);
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = sub_1A8366DA8;
        v25[3] = &unk_1E7813708;
        v25[4] = buf;
        [v19 currentIDStatusForDestination:v13 service:v15 listenerID:@"IMIDStatusControllerListenerID" queue:v21 completionBlock:v25];

        v22 = qword_1EB2EA408;
        v23 = dispatch_time(0, 5000000);
        dispatch_semaphore_wait(v22, v23);
      }

      pthread_mutex_unlock(&stru_1EB2E5670);
      v10 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
    }
  }

  return v10;
}

- (int64_t)_idStatusForID:(id)d onAccount:(id)account
{
  v17 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v6 = IMCleanupPhoneNumber();
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = 138412546;
      v14 = v6;
      v15 = 2112;
      v16 = accountCopy;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "ID %@  onAccount: %@", &v13, 0x16u);
    }
  }

  v8 = 0;
  if (accountCopy && v6)
  {
    service = [accountCopy service];
    v8 = [(IMIDStatusController *)self _idStatusForID:v6 onService:service];

    v10 = [accountCopy existingIMHandleWithID:v6];
    [v10 _setIDStatus:v8];
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = 138412546;
        v14 = v6;
        v15 = 2048;
        v16 = v8;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Status for %@ is %ld", &v13, 0x16u);
      }
    }
  }

  return v8;
}

- (void)_requestStatusForID:(id)d onService:(id)service onAccount:(id)account
{
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  accountCopy = account;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v27 = dCopy;
      v28 = 2112;
      v29 = serviceCopy;
      v30 = 2112;
      v31 = accountCopy;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_DEBUG, "ID %@  onService: %@  onAccount: %@", buf, 0x20u);
    }
  }

  if (dCopy)
  {
    if (serviceCopy | accountCopy)
    {
      if (!accountCopy)
      {
        v12 = +[IMAccountController sharedInstance];
        accountCopy = [v12 _bestOperationalAccountForSendingForService:serviceCopy];
      }

      if (!serviceCopy)
      {
        serviceCopy = [accountCopy service];
      }

      if ([accountCopy _isUsableForSending] && objc_msgSend(serviceCopy, "supportsIDStatusLookup"))
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v27 = dCopy;
            v28 = 2112;
            v29 = serviceCopy;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Sending request to daemon for ID %@ onService %@", buf, 0x16u);
          }
        }

        if ([dCopy _appearsToBePhoneNumber])
        {
          v14 = MEMORY[0x1AC56B710](dCopy, 0, 1);
        }

        else
        {
          v14 = MEMORY[0x1AC56B6F0](dCopy);
        }

        v16 = v14;
        v17 = sub_1A8366D24(serviceCopy);
        [(NSRecursiveLock *)self->_servicesLock lock];
        if (([(NSMutableSet *)self->_servicesRegistered containsObject:v17]& 1) == 0)
        {
          [(NSMutableSet *)self->_servicesRegistered addObject:v17];
          mEMORY[0x1E69A4878] = [MEMORY[0x1E69A4878] sharedInstance];
          [mEMORY[0x1E69A4878] addDelegate:self forService:v17 listenerID:@"IMIDStatusControllerListenerID" queue:MEMORY[0x1E69E96A0]];
        }

        [(NSRecursiveLock *)self->_servicesLock unlock];
        v19 = MEMORY[0x1E69A80B0];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = sub_1A836738C;
        v22[3] = &unk_1E7813730;
        v23 = v16;
        selfCopy = self;
        v25 = v17;
        v20 = v17;
        v21 = v16;
        [v19 refreshIDStatusForDestination:v21 service:v20 listenerID:@"IMIDStatusControllerListenerID" queue:MEMORY[0x1E69E96A0] completionBlock:v22];
      }

      else if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v27 = dCopy;
          v28 = 2112;
          v29 = serviceCopy;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Cannot issue ID status for ID: %@   on service: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      accountCopy = 0;
      serviceCopy = 0;
    }
  }
}

- (int64_t)statusForID:(id)d onService:(id)service
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  serviceCopy = service;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412546;
      v12 = dCopy;
      v13 = 2112;
      v14 = serviceCopy;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_DEBUG, "ID %@  onService: %@", &v11, 0x16u);
    }
  }

  v9 = [(IMIDStatusController *)self _idStatusForID:dCopy onService:serviceCopy];

  return v9;
}

@end