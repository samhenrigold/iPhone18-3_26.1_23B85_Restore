@interface ISDialogOperation
+ (id)operationWithDialog:(id)dialog;
+ (id)operationWithError:(id)error;
- (ISDialogOperation)init;
- (NSArray)textFieldValues;
- (void)_handleResponseForNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags;
- (void)_run;
- (void)_showUserNotification:(id)notification;
- (void)_waitForUserNotificationResponse:(__CFUserNotification *)response;
- (void)cancel;
- (void)dealloc;
- (void)handleButtonSelected:(int64_t)selected withResponseDictionary:(id)dictionary;
- (void)run;
@end

@implementation ISDialogOperation

- (ISDialogOperation)init
{
  __ISRecordSPIClassUsage(self, "/Library/Caches/com.apple.xbs/Sources/iTunesStore/src/ISDialogOperation.m", 43, a2);
  v4.receiver = self;
  v4.super_class = ISDialogOperation;
  result = [(ISOperation *)&v4 init];
  if (result)
  {
    result->_performDefaultActions = 1;
  }

  return result;
}

- (void)dealloc
{
  [(ISDialogOperation *)self setDialog:0];
  [(ISDialogOperation *)self setSelectedButton:0];
  userNotification = [(ISDialogOperation *)self userNotification];
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
  }

  [(ISDialogOperation *)self setUserNotification:0];

  v4.receiver = self;
  v4.super_class = ISDialogOperation;
  [(ISDialogOperation *)&v4 dealloc];
}

+ (id)operationWithDialog:(id)dialog
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setDialog:dialog];

  return v4;
}

+ (id)operationWithError:(id)error
{
  v4 = [[ISDialog alloc] initWithError:error];
  v5 = [self operationWithDialog:v4];

  return v5;
}

- (void)handleButtonSelected:(int64_t)selected withResponseDictionary:(id)dictionary
{
  delegate = [(ISOperation *)self delegate];
  buttons = [[(ISDialogOperation *)self dialog] buttons];
  if ([(NSArray *)buttons count]<= selected)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSArray *)buttons objectAtIndex:selected];
  }

  if (objc_opt_respondsToSelector())
  {
    [(ISOperationDelegate *)delegate operation:self selectedButton:v9];
  }

  else if ([(ISDialogOperation *)self performDefaultActions])
  {
    [v9 performDefaultActionForDialog:{-[ISDialogOperation dialog](self, "dialog")}];
  }

  [(ISDialogOperation *)self setSelectedButton:v9];
  [(ISOperation *)self lock];
  v10 = [dictionary objectForKey:*MEMORY[0x277CBF238]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v10, 0}];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
    }

    else
    {
      v11 = 0;
    }
  }

  self->_textFieldValues = v11;
  [(ISOperation *)self unlock];

  [(ISOperation *)self setSuccess:1];
}

- (NSArray)textFieldValues
{
  [(ISOperation *)self lock];
  v3 = self->_textFieldValues;
  [(ISOperation *)self unlock];
  return v3;
}

- (void)cancel
{
  userNotification = [(ISDialogOperation *)self userNotification];
  if (userNotification)
  {
    CFUserNotificationCancel(userNotification);
  }

  v4.receiver = self;
  v4.super_class = ISDialogOperation;
  [(ISOperation *)&v4 cancel];
}

- (void)run
{
  v28 = *MEMORY[0x277D85DE8];
  copySerializationLocks = [(ISOperation *)self copySerializationLocks];
  v4 = copySerializationLocks;
  if (copySerializationLocks)
  {
    [copySerializationLocks makeObjectsPerformSelector:sel_lock];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38])
    {
      mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog = [mEMORY[0x277D69B38] shouldLog];
    if ([mEMORY[0x277D69B38] shouldLogToDisk])
    {
      LODWORD(v7) = shouldLog | 2;
    }

    else
    {
      LODWORD(v7) = shouldLog;
    }

    oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v24 = 138412546;
      v25 = objc_opt_class();
      v26 = 2112;
      serializationLockIdentifiers = [(ISOperation *)self serializationLockIdentifiers];
      v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &dword_275BC3000, oSLogObject, 1, "%@: Took serialization locks: %@", &v24, 22);
      if (v9)
      {
        v10 = v9;
        v11 = [MEMORY[0x277CCACA8] stringWithCString:v9 encoding:4];
        free(v10);
        v22 = v11;
        SSFileLog();
      }
    }

    [(ISOperation *)self sendDidTakeSerializationLocks];
  }

  [(ISDialogOperation *)self _run];
  if (v4)
  {
    mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]2)
    {
      mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
    }

    LODWORD(v13) = [mEMORY[0x277D69B38]2 shouldLog];
    shouldLogToDisk = [mEMORY[0x277D69B38]2 shouldLogToDisk];
    oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
    v16 = oSLogObject2;
    if (shouldLogToDisk)
    {
      LODWORD(v13) = v13 | 2;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v17 = objc_opt_class();
      serializationLockIdentifiers2 = [(ISOperation *)self serializationLockIdentifiers];
      v24 = 138412546;
      v25 = v17;
      v26 = 2112;
      serializationLockIdentifiers = serializationLockIdentifiers2;
      LODWORD(v23) = 22;
      v19 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &dword_275BC3000, v16, 1, "%@: Releasing serialization locks: %@", &v24, v23);
      if (v19)
      {
        v20 = v19;
        v21 = [MEMORY[0x277CCACA8] stringWithCString:v19 encoding:4];
        free(v20);
        v22 = v21;
        SSFileLog();
      }
    }

    [v4 makeObjectsPerformSelector:{sel_unlock, v22}];
  }
}

- (void)_handleResponseForNotification:(__CFUserNotification *)notification responseFlags:(unint64_t)flags
{
  v7 = [(NSArray *)[[(ISDialogOperation *)self dialog] buttons] count];
  if (v7 == 3)
  {
    v8 = [ISDialog buttonTitleKeyForCFUserNotificationButtonTag:flags & 3];
    if (v8)
    {
      v9 = [-[ISDialog orderedButtonTitleKeysForCFUserNotification](-[ISDialogOperation dialog](self "dialog")];
      goto LABEL_14;
    }
  }

  else if (flags != 3)
  {
    v10 = v7;
    if (flags == 2)
    {
      if ([MEMORY[0x277D69A80] deviceIsAppleTV] || !-[ISDialog noDefaultButton](self->_dialog, "noDefaultButton"))
      {
        v9 = v10 - 2;
      }

      else
      {
        v9 = v10 - 1;
      }
    }

    else if (flags)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7 - 1;
    }

    goto LABEL_14;
  }

  v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
  ResponseDictionary = CFUserNotificationGetResponseDictionary(notification);

  [(ISDialogOperation *)self handleButtonSelected:v9 withResponseDictionary:ResponseDictionary];
}

- (void)_run
{
  v52 = *MEMORY[0x277D85DE8];
  dialog = [(ISDialogOperation *)self dialog];
  if (dialog && (v4 = dialog, [(ISDialog *)dialog isDisplayable]))
  {
    v5 = NSClassFromString(&cfstr_Dialogmanager.isa);
    copyUserNotification = [(ISDialog *)v4 copyUserNotification];
    if (copyUserNotification)
    {
      if (!v5 || ([(objc_class *)v5 checkInDialog:v4]& 1) != 0 || [(ISDialog *)v4 allowDuplicates])
      {
        v7 = +[ISDevice sharedInstance];
        copyActivePowerAssertionIdentifiers = [(ISOperation *)self copyActivePowerAssertionIdentifiers];
        mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38])
        {
          mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog = [mEMORY[0x277D69B38] shouldLog];
        if ([mEMORY[0x277D69B38] shouldLogToDisk])
        {
          LODWORD(v11) = shouldLog | 2;
        }

        else
        {
          LODWORD(v11) = shouldLog;
        }

        oSLogObject = [mEMORY[0x277D69B38] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
        {
          v11 = v11;
        }

        else
        {
          v11 &= 2u;
        }

        if (v11)
        {
          v48 = 138412546;
          v49 = objc_opt_class();
          v50 = 2048;
          v51 = [copyActivePowerAssertionIdentifiers count];
          v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &dword_275BC3000, oSLogObject, 2, "%@: Disabling %lu power assertions before user interaction", &v48, 22);
          if (v13)
          {
            v14 = v13;
            v15 = [MEMORY[0x277CCACA8] stringWithCString:v13 encoding:4];
            free(v14);
            v37 = v15;
            SSFileLog();
          }
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v16 = [copyActivePowerAssertionIdentifiers countByEnumeratingWithState:&v42 objects:v47 count:{16, v37}];
        if (v16)
        {
          v17 = *v43;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v43 != v17)
              {
                objc_enumerationMutation(copyActivePowerAssertionIdentifiers);
              }

              [(ISDevice *)v7 releasePowerAssertion:*(*(&v42 + 1) + 8 * i)];
            }

            v16 = [copyActivePowerAssertionIdentifiers countByEnumeratingWithState:&v42 objects:v47 count:16];
          }

          while (v16);
        }

        daemon = [NSClassFromString(&cfstr_Daemon.isa) daemon];
        [daemon beginShowingDialog];
        [(ISDialogOperation *)self _showUserNotification:copyUserNotification];
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v20 = [copyActivePowerAssertionIdentifiers countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v20)
        {
          v21 = *v39;
          do
          {
            for (j = 0; j != v20; ++j)
            {
              if (*v39 != v21)
              {
                objc_enumerationMutation(copyActivePowerAssertionIdentifiers);
              }

              [(ISDevice *)v7 takePowerAssertion:*(*(&v38 + 1) + 8 * j)];
            }

            v20 = [copyActivePowerAssertionIdentifiers countByEnumeratingWithState:&v38 objects:v46 count:16];
          }

          while (v20);
        }

        [(objc_class *)v5 checkOutDialog:v4];
        [daemon endShowingDialog];
      }

      else
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
        if (!mEMORY[0x277D69B38]2)
        {
          mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
        }

        shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
        if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
        {
          LODWORD(v32) = shouldLog2 | 2;
        }

        else
        {
          LODWORD(v32) = shouldLog2;
        }

        oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v32 = v32;
        }

        else
        {
          v32 &= 2u;
        }

        if (v32)
        {
          v48 = 138412290;
          v49 = objc_opt_class();
          v34 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &dword_275BC3000, oSLogObject2, 1, "%@: Skipping non-unique dialog", &v48, 12);
          if (v34)
          {
            v35 = v34;
            v36 = [MEMORY[0x277CCACA8] stringWithCString:v34 encoding:4];
            free(v35);
            v37 = v36;
            SSFileLog();
          }
        }

        [(ISOperation *)self setSuccess:1, v37];
      }
    }

    else
    {
      [(ISOperation *)self setError:ISError(2, 0, 0)];
    }
  }

  else
  {
    mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    if (!mEMORY[0x277D69B38]3)
    {
      mEMORY[0x277D69B38]3 = [MEMORY[0x277D69B38] sharedConfig];
    }

    shouldLog3 = [mEMORY[0x277D69B38]3 shouldLog];
    if ([mEMORY[0x277D69B38]3 shouldLogToDisk])
    {
      LODWORD(v25) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v25) = shouldLog3;
    }

    oSLogObject3 = [mEMORY[0x277D69B38]3 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v25 = v25;
    }

    else
    {
      v25 &= 2u;
    }

    if (v25)
    {
      v48 = 138412290;
      v49 = objc_opt_class();
      v27 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &dword_275BC3000, oSLogObject3, 1, "%@: Skipping non-displayable dialog", &v48, 12);
      if (v27)
      {
        v28 = v27;
        v29 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:4];
        free(v28);
        v37 = v29;
        SSFileLog();
      }
    }

    [(ISOperation *)self setSuccess:1, v37];
  }
}

- (void)_showUserNotification:(id)notification
{
  v25 = *MEMORY[0x277D85DE8];
  copyUserNotification = [notification copyUserNotification];
  if (copyUserNotification)
  {
    v6 = copyUserNotification;
    [(ISDialogOperation *)self setUserNotification:copyUserNotification];
    [(ISDialogOperation *)self _waitForUserNotificationResponse:v6];
    [(ISDialogOperation *)self setUserNotification:0];

    CFRelease(v6);
  }

  else
  {
    currentRetryCount = [notification currentRetryCount];
    allowedRetryCount = [notification allowedRetryCount];
    mEMORY[0x277D69B38] = [MEMORY[0x277D69B38] sharediTunesStoreConfig];
    mEMORY[0x277D69B38]2 = mEMORY[0x277D69B38];
    if (currentRetryCount >= allowedRetryCount)
    {
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        LODWORD(v18) = shouldLog | 2;
      }

      else
      {
        LODWORD(v18) = shouldLog;
      }

      oSLogObject = [mEMORY[0x277D69B38]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v18;
      }

      else
      {
        v18 &= 2u;
      }

      if (v18)
      {
        v23 = 138412290;
        v24 = objc_opt_class();
        v20 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &dword_275BC3000, oSLogObject, 0, "%@: Retried user notification too many times", &v23, 12);
        if (v20)
        {
          v21 = v20;
          [MEMORY[0x277CCACA8] stringWithCString:v20 encoding:4];
          free(v21);
          SSFileLog();
        }
      }

      [(ISOperation *)self setError:ISError(2, 0, 0)];
    }

    else
    {
      if (!mEMORY[0x277D69B38])
      {
        mEMORY[0x277D69B38]2 = [MEMORY[0x277D69B38] sharedConfig];
      }

      shouldLog2 = [mEMORY[0x277D69B38]2 shouldLog];
      if ([mEMORY[0x277D69B38]2 shouldLogToDisk])
      {
        LODWORD(v12) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v12) = shouldLog2;
      }

      oSLogObject2 = [mEMORY[0x277D69B38]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v12;
      }

      else
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v23 = 138412290;
        v24 = objc_opt_class();
        v14 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &dword_275BC3000, oSLogObject2, 0, "%@: Will retry user notification", &v23, 12);
        if (v14)
        {
          v15 = v14;
          v16 = [MEMORY[0x277CCACA8] stringWithCString:v14 encoding:4];
          free(v15);
          v22 = v16;
          SSFileLog();
        }
      }

      [notification setCurrentRetryCount:{objc_msgSend(notification, "currentRetryCount", v22) + 1}];
      [MEMORY[0x277CCACC8] sleepForTimeInterval:3.0];
      [(ISDialogOperation *)self _showUserNotification:notification];
    }
  }
}

- (void)_waitForUserNotificationResponse:(__CFUserNotification *)response
{
  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(response, 0.0, &responseFlags))
  {
    [(ISDialogOperation *)self _handleResponseForNotification:response responseFlags:responseFlags];
    [[(ISDialogOperation *)self dialog] incrementDisplayCount];
    [(ISOperation *)self setSuccess:1];
  }
}

@end