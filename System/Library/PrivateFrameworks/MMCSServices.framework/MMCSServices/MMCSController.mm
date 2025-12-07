@interface MMCSController
+ (id)parseContentHeaderAsDictionary:(id)dictionary treatValuesAsArrays:(BOOL)arrays;
+ (id)serialControllerQueue;
+ (void)preMMCSWarm;
- (BOOL)_getTransfers:(id)transfers requestURL:(id)l requestorID:(id)d sourceAppID:(id)iD token:(id)token error:(id *)error;
- (BOOL)_putTransfers:(id)transfers requestURL:(id)l requestorID:(id)d transferID:(id)iD sourceAppID:(id)appID token:(id)token error:(id *)error;
- (BOOL)_unregisterTransfers:(id)transfers;
- (BOOL)isActive;
- (BOOL)unregisterFiles:(id)files;
- (MMCSController)initWithQueue:(id)queue;
- (_mmcs_engine)_engine;
- (id)_MMCSICloudRequestHeadersCopy:(__CFString *)copy;
- (id)_optionsForFiles:(id)files sourceAppID:(id)d;
- (id)_registeredTransferForGUID:(id)d;
- (id)_registeredTransferForItemID:(unint64_t)d;
- (id)getContentHeadersAsString;
- (void)_addPreauthorizationOptions:(id)options forFiles:(id)files;
- (void)_addRequestorContext:(id)context transferID:(id)d;
- (void)_cancelRequest:(id)request;
- (void)_getItemCompleted:(id)completed path:(id)path error:(id)error;
- (void)_getItemUpdated:(id)updated progress:(double)progress state:(int)state error:(id)error;
- (void)_handleRegistrationForMMCSPutFile:(id)file preauthenticate:(BOOL)preauthenticate completionBlock:(id)block;
- (void)_invalidatePowerAssertionTimer;
- (void)_itemCompleted:(id)completed;
- (void)_processCompletedItem:(id)item error:(id)error;
- (void)_putItemCompleted:(id)completed error:(id)error;
- (void)_putItemUpdated:(id)updated progress:(double)progress state:(int)state error:(id)error;
- (void)_registerFiles:(id)files preauthenticate:(BOOL)preauthenticate completionBlock:(id)block;
- (void)_registerPowerAssertionIfNeeded;
- (void)_registerTransfers:(id)transfers preauthenticate:(BOOL)preauthenticate completionBlock:(id)block;
- (void)_releasePowerAssertion;
- (void)_releasePowerAssertionAndSimulateCrash;
- (void)_removeRequestorContext:(id)context transferID:(id)d;
- (void)_schedulePowerAssertionTimer;
- (void)_setScheduledTransfers:(id)transfers block:(id)block;
- (void)_unregisterPowerAssertion;
- (void)cancelPutRequestID:(id)d;
- (void)dealloc;
- (void)getFiles:(id)files requestURL:(id)l requestorID:(id)d sourceAppID:(id)iD authToken:(id)token completionBlock:(id)block;
- (void)putFiles:(id)files requestURL:(id)l requestorID:(id)d transferID:(id)iD sourceAppID:(id)appID authToken:(id)token preauthenticate:(BOOL)preauthenticate completionBlock:(id)self0;
- (void)registerFilesForDownload:(id)download completionBlock:(id)block;
- (void)registerFilesForUpload:(id)upload withPreauthentication:(BOOL)preauthentication completionBlock:(id)block;
@end

@implementation MMCSController

- (MMCSController)initWithQueue:(id)queue
{
  v14.receiver = self;
  v14.super_class = MMCSController;
  v4 = [(MMCSController *)&v14 init];
  v9 = v4;
  if (v4)
  {
    objc_msgSend__engine(v4, v5, v6, v7, v8);
    v9->_powerAssertionTimer = 0;
    v9->_transferIDContextMapLock = objc_alloc_init(MEMORY[0x277CCAC60]);
    objc_msgSend_setReplyQueue_(v9, v10, queue, v11, v12);
  }

  return v9;
}

- (void)_releasePowerAssertionAndSimulateCrash
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_count(self->_transfers, v7, v8, v9, v10);
      powerAssertion = self->_powerAssertion;
      v23 = 134218498;
      v24 = 0x4082C00000000000;
      v25 = 2048;
      v26 = v12;
      v27 = 2112;
      v28 = powerAssertion;
      _os_log_impl(&dword_20E3AF000, v11, OS_LOG_TYPE_INFO, "Power assertion timed out after %f secs, %ld transfers remaining: %@", &v23, 0x20u);
    }
  }

  objc_msgSend__releasePowerAssertion(self, v7, v8, v9, v10);
  IMLogBacktrace();
  v18 = objc_msgSend_processInfo(MEMORY[0x277CCAC38], v14, v15, v16, v17);
  objc_msgSend_processName(v18, v19, v20, v21, v22);
  IMLogSimulateCrashForProcess();
}

- (void)_releasePowerAssertion
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (self->_powerAssertion)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        powerAssertion = self->_powerAssertion;
        v9 = 138412290;
        v10 = powerAssertion;
        _os_log_impl(&dword_20E3AF000, v7, OS_LOG_TYPE_INFO, "Releasing power assertion %@", &v9, 0xCu);
      }
    }

    self->_powerAssertion = 0;
  }
}

- (void)_invalidatePowerAssertionTimer
{
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  powerAssertionTimer = self->_powerAssertionTimer;
  if (powerAssertionTimer)
  {
    objc_msgSend_invalidate(powerAssertionTimer, v7, v8, v9, v10);

    self->_powerAssertionTimer = 0;
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_20E3AF000, v12, OS_LOG_TYPE_INFO, "Power Assertion Timer invalidated", v13, 2u);
      }
    }
  }
}

- (void)_schedulePowerAssertionTimer
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      v14 = 0x4082C00000000000;
      _os_log_impl(&dword_20E3AF000, v11, OS_LOG_TYPE_INFO, "Extending power assertion timer by %f seconds", &v13, 0xCu);
    }
  }

  objc_msgSend__invalidatePowerAssertionTimer(self, v7, v8, v9, v10);
  self->_powerAssertionTimer = objc_msgSend_scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_(MEMORY[0x277CBEBB8], v12, self, sel__releasePowerAssertionAndSimulateCrash, 0, 0, 600.0);
}

- (void)_unregisterPowerAssertion
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_count(self->_transfers, v7, v8, v9, v10);
      powerAssertion = self->_powerAssertion;
      v26[0] = 67109378;
      v26[1] = v12;
      v27 = 2112;
      v28 = powerAssertion;
      _os_log_impl(&dword_20E3AF000, v11, OS_LOG_TYPE_INFO, "Clearing power assertion, we have %d transfers (%@)", v26, 0x12u);
    }
  }

  objc_msgSend__invalidatePowerAssertionTimer(self, v7, v8, v9, v10);
  objc_msgSend__releasePowerAssertion(self, v14, v15, v16, v17);
  v22 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v18, v19, v20, v21);
  objc_msgSend_removeFastDormancyDisableToken_(v22, v23, @"iMessageMMCSFastDormancyAssertion", v24, v25);
}

- (void)_registerPowerAssertionIfNeeded
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (self->_powerAssertion)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v12 = objc_msgSend_count(self->_transfers, v8, v9, v10, v11);
        powerAssertion = self->_powerAssertion;
        v33 = 67109378;
        v34 = v12;
        v35 = 2112;
        v36 = powerAssertion;
        v14 = "power assertion already exists- we have %d transfers (%@)";
LABEL_8:
        _os_log_impl(&dword_20E3AF000, v7, OS_LOG_TYPE_INFO, v14, &v33, 0x12u);
      }
    }
  }

  else
  {
    v15 = objc_alloc(MEMORY[0x277CFB978]);
    self->_powerAssertion = objc_msgSend_initWithIdentifier_(v15, v16, @"iMessageMMCSController", v17, v18);
    v23 = objc_msgSend_sharedInstance(MEMORY[0x277D19270], v19, v20, v21, v22);
    objc_msgSend_addFastDormancyDisableToken_(v23, v24, @"iMessageMMCSFastDormancyAssertion", v25, v26);
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v31 = objc_msgSend_count(self->_transfers, v27, v28, v29, v30);
        v32 = self->_powerAssertion;
        v33 = 67109378;
        v34 = v31;
        v35 = 2112;
        v36 = v32;
        v14 = "Creating power assertion, we have %d transfers (%@)";
        goto LABEL_8;
      }
    }
  }
}

- (void)dealloc
{
  transfers = self->_transfers;
  if (transfers)
  {

    self->_transfers = 0;
  }

  if (self->_engine)
  {
    v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
    dispatch_assert_queue_not_V2(v7);
    v12 = objc_msgSend_serialControllerQueue(MMCSController, v8, v9, v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_20E3B07AC;
    block[3] = &unk_277E1CB28;
    block[4] = self;
    dispatch_sync(v12, block);
    self->_engine = 0;
  }

  if (self->_chunkStoreURL)
  {
    v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, v2, v3, v4);
    objc_msgSend_removeItemAtURL_error_(v13, v14, self->_chunkStoreURL, 0, v15);
    chunkStoreURL = self->_chunkStoreURL;
    if (chunkStoreURL)
    {
      CFRelease(chunkStoreURL);
      self->_chunkStoreURL = 0;
    }
  }

  objc_msgSend__unregisterPowerAssertion(self, a2, v2, v3, v4);

  self->_transferIDToContextMap = 0;
  self->_transferIDContextMapLock = 0;

  self->_replyQueue = 0;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_20E3AF000, v17, OS_LOG_TYPE_INFO, "MMCS Controller dealloc", buf, 2u);
    }
  }

  v18.receiver = self;
  v18.super_class = MMCSController;
  [(MMCSController *)&v18 dealloc];
}

- (void)_addPreauthorizationOptions:(id)options forFiles:(id)files
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, options, files, v4);
  dispatch_assert_queue_V2(v6);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(files, v7, &v46, v58, 16);
  if (v12)
  {
    v13 = 0;
    v14 = 0;
    v15 = *v47;
LABEL_3:
    v16 = 0;
    while (1)
    {
      v17 = v14;
      if (*v47 != v15)
      {
        objc_enumerationMutation(files);
      }

      v18 = *(*(&v46 + 1) + 8 * v16);
      v14 = objc_msgSend_authResponseData(v18, v8, v9, v10, v11);
      if (!v14)
      {
        return;
      }

      if (v17 && (objc_msgSend_isEqualToData_(v17, v19, v14, v20, v21) & 1) == 0)
      {
        break;
      }

      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v27 = objc_msgSend_authResponseData(v18, v23, v24, v25, v26);
          v32 = objc_msgSend_length(v27, v28, v29, v30, v31);
          v37 = objc_msgSend_guid(v18, v33, v34, v35, v36);
          *buf = 134218242;
          filesCopy = v32;
          v52 = 2112;
          filesCopy2 = v37;
          _os_log_impl(&dword_20E3AF000, v22, OS_LOG_TYPE_INFO, "Preauthorizing MMCS request with auth data of length %tu (file: %@)", buf, 0x16u);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = objc_msgSend_protocolVersion(v18, v8, v9, v10, v11);
        if (!v38)
        {
          return;
        }

        if (v13 && (objc_msgSend_isEqualToString_(v13, v8, v38, v10, v11) & 1) == 0)
        {
          if (IMOSLoggingEnabled())
          {
            v44 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              filesCopy = files;
              v52 = 2112;
              filesCopy2 = v13;
              v54 = 2112;
              v55 = v38;
              v41 = "MMCSPutFiles %@ have different protocol versions: %@ vs. %@";
              v42 = v44;
              v43 = 32;
              goto LABEL_27;
            }
          }

          return;
        }

        v13 = v38;
      }

      if (v12 == ++v16)
      {
        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(files, v8, &v46, v58, 16);
        if (v12)
        {
          goto LABEL_3;
        }

        CFDictionarySetValue(options, *MEMORY[0x277D255B8], v14);
        if (v13)
        {
          CFDictionarySetValue(options, *MEMORY[0x277D255F8], v13);
        }

        return;
      }
    }

    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        *buf = 138413058;
        filesCopy = v40;
        v52 = 2112;
        filesCopy2 = files;
        v54 = 2112;
        v55 = v17;
        v56 = 2112;
        v57 = v14;
        v41 = "%@s %@ have different auth data: %@ vs. %@";
        v42 = v39;
        v43 = 42;
LABEL_27:
        _os_log_impl(&dword_20E3AF000, v42, OS_LOG_TYPE_INFO, v41, buf, v43);
      }
    }
  }
}

- (id)_optionsForFiles:(id)files sourceAppID:(id)d
{
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, files, d, v4);
  dispatch_assert_queue_V2(v8);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v11, 1, v12, v13);
  if (v14)
  {
    CFDictionarySetValue(v9, *MEMORY[0x277D25440], v14);
  }

  v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v15, 1, v16, v17);
  if (v18)
  {
    CFDictionarySetValue(v9, *MEMORY[0x277D25448], v18);
  }

  v23 = MEMORY[0x277CCABB0];
  v24 = objc_msgSend_allowUltraConstrainedAttachments(self, v19, v20, v21, v22);
  v28 = objc_msgSend_numberWithBool_(v23, v25, v24, v26, v27);
  if (v28)
  {
    CFDictionarySetValue(v10, *MEMORY[0x277D25530], v28);
  }

  objc_msgSend__addPreauthorizationOptions_forFiles_(self, v29, v9, files, v30);
  if (d)
  {
    v35 = *MEMORY[0x277D25600];
    CFDictionarySetValue(v9, *MEMORY[0x277D25600], d);
    CFDictionarySetValue(v10, v35, d);
  }

  if (objc_msgSend_connectionBehavior(self, v31, v32, v33, v34) == 1)
  {
    v40 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v36, 0, v38, v39);
    if (v40)
    {
      CFDictionarySetValue(v10, *MEMORY[0x277CBADD8], v40);
    }

    CFDictionarySetValue(v10, *MEMORY[0x277CBADA8], @"en0");
  }

  v41 = MEMORY[0x277CCABB0];
  v42 = objc_msgSend_currentThread(MEMORY[0x277CCACC8], v36, v37, v38, v39);
  v47 = objc_msgSend_qualityOfService(v42, v43, v44, v45, v46);
  v51 = objc_msgSend_numberWithInteger_(v41, v48, v47, v49, v50);
  objc_msgSend_setObject_forKey_(v10, v52, v51, *MEMORY[0x277D255C8], v53);
  v57 = *MEMORY[0x277D194B8];
  if (*MEMORY[0x277D194B8])
  {
    objc_msgSend_setObject_forKey_(v10, v54, v57, *MEMORY[0x277CBAE78], v56);
  }

  if (objc_msgSend_count(v10, v54, v57, v55, v56))
  {
    objc_msgSend_setObject_forKey_(v9, v58, v10, *MEMORY[0x277D25610], v59);
  }

  return v9;
}

- (_mmcs_engine)_engine
{
  v45 = *MEMORY[0x277D85DE8];
  result = self->_engine;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = NSTemporaryDirectory();
    v10 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v6, v7, v8, v9);
    v18 = objc_msgSend_stringByAppendingPathComponent_(v5, v11, v10, v12, v13);
    chunkStoreURL = self->_chunkStoreURL;
    if (chunkStoreURL)
    {
      CFRelease(chunkStoreURL);
      self->_chunkStoreURL = 0;
    }

    v20 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v14, v15, v16, v17);
    if (objc_msgSend_makeDirectoriesInPath_mode_(v20, v21, v18, 509, v22))
    {
      self->_chunkStoreURL = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v23, v18, v24, v25);
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = self->_chunkStoreURL;
        *buf = 138412546;
        v42 = v31;
        v43 = 2112;
        v44 = v4;
        _os_log_impl(&dword_20E3AF000, v30, OS_LOG_TYPE_INFO, "Creating engine with temp url: %@ options: %@", buf, 0x16u);
      }
    }

    self->_currentItemID = 100;
    objc_msgSend_serialControllerQueue(MMCSController, v26, v27, v28, v29);
    if (qword_28112D718 != -1)
    {
      sub_20E3B89F4();
    }

    v32 = MMCSEngineCreateWithTargetDispatchQueue();
    self->_engine = v32;
    v33 = v32 == 0;
    v34 = IMOSLoggingEnabled();
    if (v33)
    {
      if (!v34)
      {
        goto LABEL_19;
      }

      v40 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v37 = "Failed to create MMCS engine";
      v38 = v40;
      v39 = 2;
    }

    else
    {
      if (!v34)
      {
        goto LABEL_19;
      }

      v35 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      engine = self->_engine;
      *buf = 134217984;
      v42 = engine;
      v37 = "Created engine: %p";
      v38 = v35;
      v39 = 12;
    }

    _os_log_impl(&dword_20E3AF000, v38, OS_LOG_TYPE_INFO, v37, buf, v39);
LABEL_19:

    return self->_engine;
  }

  return result;
}

- (id)_registeredTransferForGUID:(id)d
{
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, d, v3, v4);
  dispatch_assert_queue_V2(v7);
  transfers = self->_transfers;

  return objc_msgSend_objectForKey_(transfers, v8, d, v9, v10);
}

- (id)_registeredTransferForItemID:(unint64_t)d
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, d, v3, v4);
  dispatch_assert_queue_V2(v7);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = objc_msgSend_allValues(self->_transfers, v8, v9, v10, v11, 0);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v24, v30, 16);
  if (v18)
  {
    v19 = *v25;
LABEL_3:
    v20 = 0;
    while (1)
    {
      if (*v25 != v19)
      {
        objc_enumerationMutation(v12);
      }

      v21 = *(*(&v24 + 1) + 8 * v20);
      if (objc_msgSend_itemID(v21, v14, v15, v16, v17) == d)
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v24, v30, 16);
        if (v18)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        dCopy = d;
        _os_log_impl(&dword_20E3AF000, v22, OS_LOG_TYPE_INFO, "Found no registered transfer for transfer id: %qx", buf, 0xCu);
      }
    }

    return 0;
  }

  return v21;
}

- (void)_handleRegistrationForMMCSPutFile:(id)file preauthenticate:(BOOL)preauthenticate completionBlock:(id)block
{
  preauthenticateCopy = preauthenticate;
  v42[3] = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_serialControllerQueue(MMCSController, a2, file, preauthenticate, block);
  dispatch_assert_queue_V2(v9);
  objc_msgSend_setRegistrationBlock_(file, v10, block, v11, v12);
  v41[0] = *MEMORY[0x277D255F0];
  v16 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v13, preauthenticateCopy, v14, v15);
  v17 = *MEMORY[0x277D25500];
  v18 = MEMORY[0x277CBEC38];
  v42[0] = v16;
  v42[1] = MEMORY[0x277CBEC38];
  v19 = *MEMORY[0x277D25598];
  v41[1] = v17;
  v41[2] = v19;
  v20 = MEMORY[0x277CCABB0];
  v25 = objc_msgSend_itemID(file, v21, v22, v23, v24, *MEMORY[0x277D254B0]);
  v29 = objc_msgSend_numberWithUnsignedLongLong_(v20, v26, v25, v27, v28);
  v38[1] = *MEMORY[0x277D25508];
  v39[0] = v29;
  v39[1] = v18;
  v40 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, v39, v38, 2);
  v42[2] = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, &v40, 1, v32);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v42, v41, 3);
  objc_msgSend__engine(self, v34, v35, v36, v37);
  MMCSRegisterItems();
}

- (void)_registerTransfers:(id)transfers preauthenticate:(BOOL)preauthenticate completionBlock:(id)block
{
  preauthenticateCopy = preauthenticate;
  v98 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, transfers, preauthenticate, block);
  dispatch_assert_queue_V2(v8);
  if (objc_msgSend_count(transfers, v9, v10, v11, v12))
  {
    v90[0] = 0;
    v90[1] = v90;
    v90[2] = 0x2020000000;
    v91 = 1;
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v80 = sub_20E3B3288;
    v81 = &unk_277E1CB50;
    selfCopy = self;
    blockCopy = block;
    v84 = &v86;
    v85 = v90;
    v13 = objc_opt_new();
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(transfers, v14, &v75, v97, 16);
    if (!v19)
    {
      goto LABEL_27;
    }

    v20 = *v76;
    while (1)
    {
      v21 = 0;
      do
      {
        if (*v76 != v20)
        {
          objc_enumerationMutation(transfers);
        }

        v22 = *(*(&v75 + 1) + 8 * v21);
        v23 = objc_msgSend_guid(v22, v15, v16, v17, v18);
        v30 = objc_msgSend__registeredTransferForGUID_(self, v24, v23, v25, v26);
        if (v30)
        {
          if (IMOSLoggingEnabled())
          {
            v31 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              *&buf[4] = v30;
              _os_log_impl(&dword_20E3AF000, v31, OS_LOG_TYPE_INFO, "Returning existing file transfer: %@", buf, 0xCu);
            }
          }

          *(v87 + 24) = 0;
        }

        else
        {
          v32 = self->_currentItemID + 1;
          self->_currentItemID = v32;
          objc_msgSend_setItemID_(v22, v27, v32, v28, v29);
          transfers = self->_transfers;
          if (!transfers)
          {
            transfers = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            self->_transfers = transfers;
          }

          v38 = objc_msgSend_guid(v22, v33, v34, v35, v36);
          objc_msgSend_setObject_forKey_(transfers, v39, v22, v38, v40);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_addObject_(v13, v41, v22, v42, v43);
            goto LABEL_16;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (IMOSLoggingEnabled())
            {
              v44 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v22;
                v45 = v44;
                v46 = "Registered mmcs get transfer: %@";
                v47 = 12;
LABEL_25:
                _os_log_impl(&dword_20E3AF000, v45, OS_LOG_TYPE_INFO, v46, buf, v47);
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v48 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = objc_opt_class();
              *buf = 138412546;
              *&buf[4] = v22;
              *&buf[12] = 2112;
              *&buf[14] = v49;
              v45 = v48;
              v46 = "Attempted to register unknown transfer %@ of type %@";
              v47 = 22;
              goto LABEL_25;
            }
          }
        }

LABEL_16:
        ++v21;
      }

      while (v19 != v21);
      v50 = objc_msgSend_countByEnumeratingWithState_objects_count_(transfers, v15, &v75, v97, 16);
      v19 = v50;
      if (!v50)
      {
LABEL_27:
        if (objc_msgSend_count(v13, v15, v16, v17, v18))
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3052000000;
          v94 = sub_20E3B331C;
          v95 = sub_20E3B332C;
          v96 = dispatch_group_create();
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v51, &v71, v92, 16);
          if (v56)
          {
            v57 = *v72;
            do
            {
              for (i = 0; i != v56; ++i)
              {
                if (*v72 != v57)
                {
                  objc_enumerationMutation(v13);
                }

                v59 = *(*(&v71 + 1) + 8 * i);
                objc_initWeak(&location, self);
                objc_initWeak(&from, v59);
                dispatch_group_enter(*(*&buf[8] + 40));
                v66[0] = MEMORY[0x277D85DD0];
                v66[1] = 3221225472;
                v66[2] = sub_20E3B3338;
                v66[3] = &unk_277E1CB78;
                objc_copyWeak(&v67, &location);
                objc_copyWeak(&v68, &from);
                v66[4] = self;
                v66[5] = v90;
                v66[6] = buf;
                objc_msgSend__handleRegistrationForMMCSPutFile_preauthenticate_completionBlock_(self, v60, v59, preauthenticateCopy, v66);
                objc_destroyWeak(&v68);
                objc_destroyWeak(&v67);
                objc_destroyWeak(&from);
                objc_destroyWeak(&location);
              }

              v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v61, &v71, v92, 16);
            }

            while (v56);
          }

          v62 = *(*&buf[8] + 40);
          v63 = objc_msgSend_serialControllerQueue(MMCSController, v52, v53, v54, v55);
          dispatch_group_notify(v62, v63, block);
          dispatch_release(*(*&buf[8] + 40));
          if (v13)
          {
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          (v80)(block);
          if (v13)
          {
          }
        }

        _Block_object_dispose(&v86, 8);
        _Block_object_dispose(v90, 8);
        return;
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v64 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_20E3AF000, v64, OS_LOG_TYPE_INFO, "Empty files array supplied to register, failing", buf, 2u);
    }
  }

  (*(block + 2))(block, 0);
}

- (BOOL)_unregisterTransfers:(id)transfers
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, transfers, v3, v4);
  dispatch_assert_queue_V2(v7);
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(transfers, v8, &v55, v61, 16);
  if (v13)
  {
    v15 = *v56;
    *&v14 = 138412290;
    v54 = v14;
    do
    {
      v16 = 0;
      do
      {
        if (*v56 != v15)
        {
          objc_enumerationMutation(transfers);
        }

        v17 = *(*(&v55 + 1) + 8 * v16);
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = v54;
            v60 = v17;
            _os_log_impl(&dword_20E3AF000, v22, OS_LOG_TYPE_INFO, "Unregistering file transfer: %@", buf, 0xCu);
          }
        }

        transfers = self->_transfers;
        v24 = objc_msgSend_guid(v17, v18, v19, v20, v21, v54);
        v28 = objc_msgSend_objectForKey_(transfers, v25, v24, v26, v27);
        v29 = IMOSLoggingEnabled();
        if (v28)
        {
          if (v29)
          {
            v34 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              *buf = v54;
              v60 = v28;
              _os_log_impl(&dword_20E3AF000, v34, OS_LOG_TYPE_INFO, " => Unregistering: %@", buf, 0xCu);
            }
          }

          objc_msgSend__engine(self, v30, v31, v32, v33);
          objc_msgSend_itemID(v28, v35, v36, v37, v38);
          MMCSUnregisterFile();
          v39 = self->_transfers;
          v44 = objc_msgSend_guid(v17, v40, v41, v42, v43);
          objc_msgSend_removeObjectForKey_(v39, v45, v44, v46, v47);
          if (!objc_msgSend_count(self->_transfers, v48, v49, v50, v51))
          {

            self->_transfers = 0;
          }
        }

        else if (v29)
        {
          v52 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_20E3AF000, v52, OS_LOG_TYPE_INFO, "Found no transfer to unregister", buf, 2u);
          }
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(transfers, v30, &v55, v61, 16);
    }

    while (v13);
  }

  if (!self->_transfers)
  {
    objc_msgSend__unregisterPowerAssertion(self, v9, v10, v11, v12);
  }

  return 1;
}

- (void)_setScheduledTransfers:(id)transfers block:(id)block
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, transfers, block, v4);
  dispatch_assert_queue_V2(v8);
  if (block)
  {
    if (!self->_requestIDToBlockMap)
    {
      self->_requestIDToBlockMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    if (!self->_transferToRequestIDsMap)
    {
      self->_transferToRequestIDsMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    blockCopy = block;
    if (!self->_requestIDToRemainingTransfersMap)
    {
      self->_requestIDToRemainingTransfersMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    if (!self->_requestIDToTransfersMap)
    {
      self->_requestIDToTransfersMap = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v13 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v9, v10, v11, v12);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(transfers, v14, &v54, v58, 16);
    if (v15)
    {
      v20 = v15;
      v21 = *v55;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v55 != v21)
          {
            objc_enumerationMutation(transfers);
          }

          v23 = *(*(&v54 + 1) + 8 * i);
          transferToRequestIDsMap = self->_transferToRequestIDsMap;
          v25 = objc_msgSend_guid(v23, v16, v17, v18, v19);
          v32 = objc_msgSend_objectForKey_(transferToRequestIDsMap, v26, v25, v27, v28);
          if (!v32)
          {
            v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
          }

          objc_msgSend_addObject_(v32, v29, v13, v30, v31);
          v33 = self->_transferToRequestIDsMap;
          v38 = objc_msgSend_guid(v23, v34, v35, v36, v37);
          objc_msgSend_setObject_forKey_(v33, v39, v32, v38, v40);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(transfers, v16, &v54, v58, 16);
      }

      while (v20);
    }

    v41 = objc_msgSend_copy(blockCopy, v16, v17, v18, v19);
    objc_msgSend_setObject_forKey_(self->_requestIDToBlockMap, v42, v41, v13, v43);

    v48 = objc_msgSend_mutableCopy(transfers, v44, v45, v46, v47);
    objc_msgSend_setObject_forKey_(self->_requestIDToRemainingTransfersMap, v49, v48, v13, v50);
    objc_msgSend_setObject_forKey_(self->_requestIDToTransfersMap, v51, transfers, v13, v52);
  }
}

- (BOOL)_putTransfers:(id)transfers requestURL:(id)l requestorID:(id)d transferID:(id)iD sourceAppID:(id)appID token:(id)token error:(id *)error
{
  *&v53[5] = *MEMORY[0x277D85DE8];
  v16 = objc_msgSend_serialControllerQueue(MMCSController, a2, transfers, l, d);
  dispatch_assert_queue_V2(v16);
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v53 = transfers;
      _os_log_impl(&dword_20E3AF000, v21, OS_LOG_TYPE_INFO, "Make put transfer request for transfers: %@", buf, 0xCu);
    }
  }

  if (!objc_msgSend__engine(self, v17, v18, v19, v20))
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v45 = " => Could not generate engine, failing";
    goto LABEL_29;
  }

  if (!l)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v45 = " => empty requestURL";
    goto LABEL_29;
  }

  if (!d)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v45 = " => empty requestorID";
    goto LABEL_29;
  }

  if (!token)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v44 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v45 = " => empty authToken";
LABEL_29:
    _os_log_impl(&dword_20E3AF000, v44, OS_LOG_TYPE_INFO, v45, buf, 2u);
    return 0;
  }

  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  objc_msgSend_count(transfers, v22, v23, v24, v25);
  sub_20E3B3F3C(transfers, d, l, token);
  if (sub_20E3B4058(transfers, &v51, &v50, &v49, &v48))
  {
    v28 = objc_msgSend__optionsForFiles_sourceAppID_(self, v26, transfers, appID, v27);
    v29 = [MMCSRequestorContext alloc];
    v32 = objc_msgSend_initWithController_transferID_(v29, v30, self, iD, v31);
    objc_msgSend__addRequestorContext_transferID_(self, v33, v32, iD, v34);
    if (IMOSLoggingEnabled())
    {
      v39 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
      {
        v40 = objc_msgSend_count(v28, v35, v36, v37, v38);
        *buf = 134217984;
        *v53 = v40;
        _os_log_impl(&dword_20E3AF000, v39, OS_LOG_TYPE_INFO, "Calling MMCSPutItems: requestOptions has %tu keys.", buf, 0xCu);
      }
    }

    objc_msgSend__engine(self, v35, v36, v37, v38);
    v41 = MMCSPutItems();
    v42 = v41 != 0;
    if (error)
    {
      *error = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v53[0] = v41 != 0;
        LOWORD(v53[1]) = 2112;
        *(&v53[1] + 2) = 0;
        _os_log_impl(&dword_20E3AF000, v43, OS_LOG_TYPE_INFO, "Returning success: %d   error: %@", buf, 0x12u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v47 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_20E3AF000, v47, OS_LOG_TYPE_INFO, "Failed to generate item set", buf, 2u);
      }
    }

    v42 = 0;
  }

  sub_20E3B4404(transfers, &v51, &v50, &v49, &v48);
  return v42;
}

- (BOOL)_getTransfers:(id)transfers requestURL:(id)l requestorID:(id)d sourceAppID:(id)iD token:(id)token error:(id *)error
{
  *&v53[5] = *MEMORY[0x277D85DE8];
  v15 = objc_msgSend_serialControllerQueue(MMCSController, a2, transfers, l, d);
  dispatch_assert_queue_V2(v15);
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v53 = transfers;
      _os_log_impl(&dword_20E3AF000, v20, OS_LOG_TYPE_INFO, "Make get transfer request for transfers: %@", buf, 0xCu);
    }
  }

  if (!objc_msgSend__engine(self, v16, v17, v18, v19))
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v45 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v46 = " => Could not generate engine, failing";
    goto LABEL_38;
  }

  if (!l)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v45 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v46 = " => empty requestURL";
    goto LABEL_38;
  }

  if (!d)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v45 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v46 = " => empty requestorID";
    goto LABEL_38;
  }

  if (!token)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v45 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v46 = " => empty authToken";
LABEL_38:
    _os_log_impl(&dword_20E3AF000, v45, OS_LOG_TYPE_INFO, v46, buf, 2u);
    return 0;
  }

  v50 = 0;
  v51 = 0;
  v49 = 0;
  objc_msgSend_count(transfers, v21, v22, v23, v24);
  sub_20E3B3F3C(transfers, d, l, token);
  v25 = sub_20E3B4058(transfers, &v51, 0, &v50, &v49);
  v26 = IMOSLoggingEnabled();
  if (v25)
  {
    if (v26)
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v53 = v51;
        _os_log_impl(&dword_20E3AF000, v27, OS_LOG_TYPE_INFO, "items: %p", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v53 = v50;
        _os_log_impl(&dword_20E3AF000, v28, OS_LOG_TYPE_INFO, "signatures: %p", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v31 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *v53 = v49;
        _os_log_impl(&dword_20E3AF000, v31, OS_LOG_TYPE_INFO, "tokens: %p", buf, 0xCu);
      }
    }

    v32 = objc_msgSend__optionsForFiles_sourceAppID_(self, v29, transfers, iD, v30);
    v33 = [MMCSRequestorContext alloc];
    objc_msgSend_initWithController_transferID_(v33, v34, self, 0, v35);
    if (IMOSLoggingEnabled())
    {
      v40 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        v41 = objc_msgSend_count(v32, v36, v37, v38, v39);
        *buf = 134217984;
        *v53 = v41;
        _os_log_impl(&dword_20E3AF000, v40, OS_LOG_TYPE_INFO, "Calling MMCSGetItems: requestOptions has %tu keys.", buf, 0xCu);
      }
    }

    objc_msgSend__engine(self, v36, v37, v38, v39);
    v42 = MMCSGetItems();
    v43 = v42 != 0;
    if (error)
    {
      *error = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v53[0] = v42 != 0;
        LOWORD(v53[1]) = 2112;
        *(&v53[1] + 2) = 0;
        _os_log_impl(&dword_20E3AF000, v44, OS_LOG_TYPE_INFO, "Returning success: %d   error: %@", buf, 0x12u);
      }
    }
  }

  else
  {
    if (v26)
    {
      v48 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_20E3AF000, v48, OS_LOG_TYPE_INFO, "Failed to generate item set", buf, 2u);
      }
    }

    v43 = 0;
  }

  sub_20E3B4404(transfers, &v51, 0, &v50, &v49);
  return v43;
}

- (void)_registerFiles:(id)files preauthenticate:(BOOL)preauthenticate completionBlock:(id)block
{
  preauthenticateCopy = preauthenticate;
  if (objc_msgSend_count(files, a2, files, preauthenticate, block))
  {

    objc_msgSend__registerTransfers_preauthenticate_completionBlock_(self, v9, files, preauthenticateCopy, block);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v16 = 0;
        _os_log_impl(&dword_20E3AF000, v14, OS_LOG_TYPE_INFO, "Empty files array supplied to register, failing", v16, 2u);
      }
    }

    v15 = objc_msgSend_serialControllerQueue(MMCSController, v10, v11, v12, v13);
    dispatch_assert_queue_V2(v15);
    if (block)
    {
      (*(block + 2))(block, 0);
    }
  }
}

- (BOOL)isActive
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_not_V2(v6);
  v11 = objc_msgSend_serialControllerQueue(MMCSController, v7, v8, v9, v10);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_20E3B4C8C;
  v13[3] = &unk_277E1CBA0;
  v13[4] = self;
  v13[5] = &v14;
  dispatch_sync(v11, v13);
  LOBYTE(self) = *(v15 + 24) != 0;
  _Block_object_dispose(&v14, 8);
  return self;
}

- (void)registerFilesForDownload:(id)download completionBlock:(id)block
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_20E3B4DB4;
  v9[3] = &unk_277E1CBF0;
  v9[4] = self;
  v9[5] = block;
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, download, block, v4);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_20E3B4E64;
  block[3] = &unk_277E1CC18;
  block[4] = self;
  block[5] = download;
  block[6] = v9;
  dispatch_async(v7, block);
}

- (void)registerFilesForUpload:(id)upload withPreauthentication:(BOOL)preauthentication completionBlock:(id)block
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_20E3B4F5C;
  v11[3] = &unk_277E1CBF0;
  v11[4] = self;
  v11[5] = block;
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, upload, preauthentication, block);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_20E3B500C;
  v9[3] = &unk_277E1CC40;
  v9[4] = self;
  v9[5] = upload;
  preauthenticationCopy = preauthentication;
  v9[6] = v11;
  dispatch_async(v8, v9);
}

- (BOOL)unregisterFiles:(id)files
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, files, v3, v4);
  dispatch_assert_queue_not_V2(v7);
  v12 = objc_msgSend_serialControllerQueue(MMCSController, v8, v9, v10, v11);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_20E3B5114;
  block[3] = &unk_277E1CC68;
  block[5] = self;
  block[6] = &v15;
  block[4] = files;
  dispatch_sync(v12, block);
  LOBYTE(self) = *(v16 + 24) != 0;
  _Block_object_dispose(&v15, 8);
  return self;
}

+ (id)serialControllerQueue
{
  if (qword_28112D6F8 != -1)
  {
    sub_20E3B8A1C();
  }

  return qword_28112D6F0;
}

+ (void)preMMCSWarm
{
  v5 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);

  dispatch_async(v5, &unk_28253E008);
}

- (void)getFiles:(id)files requestURL:(id)l requestorID:(id)d sourceAppID:(id)iD authToken:(id)token completionBlock:(id)block
{
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_20E3B569C;
  v16[3] = &unk_277E1CCD8;
  v16[4] = self;
  v16[5] = block;
  v14 = objc_msgSend_serialControllerQueue(MMCSController, a2, files, l, d);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_20E3B5764;
  block[3] = &unk_277E1CD28;
  block[9] = token;
  block[10] = v16;
  block[4] = files;
  block[5] = self;
  block[6] = l;
  block[7] = d;
  block[8] = iD;
  dispatch_async(v14, block);
}

- (void)putFiles:(id)files requestURL:(id)l requestorID:(id)d transferID:(id)iD sourceAppID:(id)appID authToken:(id)token preauthenticate:(BOOL)preauthenticate completionBlock:(id)self0
{
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_20E3B5BD0;
  v20[3] = &unk_277E1CCD8;
  v20[4] = self;
  v20[5] = block;
  v17 = objc_msgSend_serialControllerQueue(MMCSController, a2, files, l, d);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_20E3B5C98;
  block[3] = &unk_277E1CD78;
  block[4] = files;
  block[5] = self;
  preauthenticateCopy = preauthenticate;
  block[6] = l;
  block[7] = d;
  block[8] = iD;
  block[9] = appID;
  block[10] = token;
  block[11] = v20;
  dispatch_async(v17, block);
}

- (void)_addRequestorContext:(id)context transferID:(id)d
{
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, context, d, v4);
  dispatch_assert_queue_V2(v8);
  if (context && d)
  {
    objc_msgSend_lock(self->_transferIDContextMapLock, v9, v10, v11, v12);
    transferIDToContextMap = self->_transferIDToContextMap;
    if (!transferIDToContextMap)
    {
      transferIDToContextMap = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      self->_transferIDToContextMap = transferIDToContextMap;
    }

    v20 = objc_msgSend_objectForKeyedSubscript_(transferIDToContextMap, v13, d, v14, v15);
    if (!v20)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      objc_msgSend_setObject_forKeyedSubscript_(self->_transferIDToContextMap, v21, v20, d, v22);
    }

    objc_msgSend_addObject_(v20, v17, context, v18, v19);
    transferIDContextMapLock = self->_transferIDContextMapLock;

    objc_msgSend_unlock(transferIDContextMapLock, v23, v24, v25, v26);
  }
}

- (void)_removeRequestorContext:(id)context transferID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, context, d, v4);
  dispatch_assert_queue_V2(v8);
  if (context && d)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v29 = 138412290;
        dCopy = d;
        _os_log_impl(&dword_20E3AF000, v13, OS_LOG_TYPE_INFO, "Remove request context for transferID %@", &v29, 0xCu);
      }
    }

    objc_msgSend_lock(self->_transferIDContextMapLock, v9, v10, v11, v12);
    v17 = objc_msgSend_objectForKeyedSubscript_(self->_transferIDToContextMap, v14, d, v15, v16);
    objc_msgSend_removeObject_(v17, v18, context, v19, v20);
    if (!objc_msgSend_count(v17, v21, v22, v23, v24))
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_transferIDToContextMap, v25, 0, d, v28);
    }

    objc_msgSend_unlock(self->_transferIDContextMapLock, v25, v26, v27, v28);
  }
}

- (void)_cancelRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, request, v3, v4);
  dispatch_assert_queue_V2(v7);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = 134217984;
      requestCopy = request;
      _os_log_impl(&dword_20E3AF000, v12, OS_LOG_TYPE_INFO, "Request cancel context %p", &v13, 0xCu);
    }
  }

  objc_msgSend__engine(self, v8, v9, v10, v11);
  MMCSEngineCancelRequests();
}

- (void)cancelPutRequestID:(id)d
{
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, d, v3, v4);
  dispatch_assert_queue_not_V2(v7);
  if (d)
  {
    v12 = objc_msgSend_serialControllerQueue(MMCSController, v8, v9, v10, v11);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = sub_20E3B6394;
    v13[3] = &unk_277E1CDA0;
    v13[4] = d;
    v13[5] = self;
    dispatch_sync(v12, v13);
  }
}

+ (id)parseContentHeaderAsDictionary:(id)dictionary treatValuesAsArrays:(BOOL)arrays
{
  arraysCopy = arrays;
  v86 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, dictionary, arrays, v4);
  dispatch_assert_queue_not_V2(v6);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v11 = objc_msgSend_componentsSeparatedByString_(dictionary, v8, @"\n", v9, v10);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v79, v85, 16);
  if (v17)
  {
    v19 = *v80;
    *&v18 = 138412290;
    v77 = v18;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v80 != v19)
        {
          objc_enumerationMutation(v11);
        }

        v21 = *(*(&v79 + 1) + 8 * i);
        v22 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v13, v14, v15, v16, v77);
        v26 = objc_msgSend_stringByTrimmingCharactersInSet_(v21, v23, v22, v24, v25);
        if (objc_msgSend_length(v26, v27, v28, v29, v30))
        {
          v31 = objc_msgSend_rangeOfString_(v26, v13, @":", v15, v16);
          if (v31 <= objc_msgSend_length(v26, v32, v33, v34, v35))
          {
            v42 = objc_msgSend_substringToIndex_(v26, v36, v31, v37, v38);
            v46 = objc_msgSend_substringFromIndex_(v26, v43, v31 + 1, v44, v45);
            v54 = objc_msgSend_objectForKey_(v7, v47, v42, v48, v49);
            if (!v54)
            {
              v54 = objc_msgSend_array(MEMORY[0x277CBEB18], v50, v51, v52, v53);
            }

            if (!arraysCopy)
            {
              goto LABEL_18;
            }

            if (objc_msgSend_length(v46, v50, v51, v52, v53) >= 2 && objc_msgSend_characterAtIndex_(v46, v55, 0, v56, v57) == 91)
            {
              v62 = objc_msgSend_length(v46, v58, v59, v60, v61);
              if (objc_msgSend_characterAtIndex_(v46, v63, v62 - 1, v64, v65) == 93)
              {
                v70 = objc_msgSend_length(v46, v66, v67, v68, v69);
                v46 = objc_msgSend_substringWithRange_(v46, v71, 1, v70 - 2, v72);
LABEL_18:
                objc_msgSend_addObject_(v54, v50, v46, v52, v53);
                objc_msgSend_setObject_forKey_(v7, v73, v54, v42, v74);
                continue;
              }
            }

            if (IMOSLoggingEnabled())
            {
              v75 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
              {
                *buf = v77;
                v84 = v26;
                v40 = v75;
                v41 = "Failed to parse header entry: %@ (value was not enclosed by brackets)";
                goto LABEL_22;
              }
            }
          }

          else if (IMOSLoggingEnabled())
          {
            v39 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = v77;
              v84 = v26;
              v40 = v39;
              v41 = "Failed to parse header entry: %@ (no ':' delimiter between key and value)";
LABEL_22:
              _os_log_impl(&dword_20E3AF000, v40, OS_LOG_TYPE_INFO, v41, buf, 0xCu);
              continue;
            }
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v13, &v79, v85, 16);
    }

    while (v17);
  }

  return v7;
}

- (id)getContentHeadersAsString
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_20E3B331C;
  v19 = sub_20E3B332C;
  v20 = 0;
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, v2, v3, v4);
  dispatch_assert_queue_not_V2(v6);
  v11 = objc_msgSend_serialControllerQueue(MMCSController, v7, v8, v9, v10);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_20E3B6938;
  v14[3] = &unk_277E1CDC8;
  v14[4] = self;
  v14[5] = &v15;
  dispatch_sync(v11, v14);
  v12 = v16[5];
  _Block_object_dispose(&v15, 8);
  return v12;
}

- (void)_putItemUpdated:(id)updated progress:(double)progress state:(int)state error:(id)error
{
  v7 = *&state;
  v31 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_serialControllerQueue(MMCSController, a2, updated, *&state, error);
  dispatch_assert_queue_V2(v11);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      updatedCopy = updated;
      v25 = 2048;
      progressCopy = progress;
      v27 = 2112;
      v28 = sub_20E3B6C4C(v7, v13, v14, v15, v16);
      v29 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_20E3AF000, v12, OS_LOG_TYPE_INFO, "Put item updated: %@  progress: %f state: %@ error: %@", buf, 0x2Au);
    }
  }

  if (MMCSPutItemStateIsDeterminant())
  {
    v21 = objc_msgSend_replyQueue(self, v17, v18, v19, v20);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_20E3B6C9C;
    v22[3] = &unk_277E1CDF0;
    v22[4] = updated;
    *&v22[5] = progress;
    dispatch_async(v21, v22);
  }
}

- (void)_getItemUpdated:(id)updated progress:(double)progress state:(int)state error:(id)error
{
  v7 = *&state;
  v31 = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_serialControllerQueue(MMCSController, a2, updated, *&state, error);
  dispatch_assert_queue_V2(v11);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      updatedCopy = updated;
      v25 = 2048;
      progressCopy = progress;
      v27 = 2112;
      v28 = sub_20E3B6E3C(v7, v13, v14, v15, v16);
      v29 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_20E3AF000, v12, OS_LOG_TYPE_INFO, "Get item updated: %@  progress: %f state: %@ error: %@", buf, 0x2Au);
    }
  }

  if (MMCSGetItemStateIsDeterminant())
  {
    v21 = objc_msgSend_replyQueue(self, v17, v18, v19, v20);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_20E3B6E8C;
    v22[3] = &unk_277E1CDF0;
    v22[4] = updated;
    *&v22[5] = progress;
    dispatch_async(v21, v22);
  }
}

- (void)_processCompletedItem:(id)item error:(id)error
{
  itemCopy = item;
  v99 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_serialControllerQueue(MMCSController, a2, item, error, v4);
  dispatch_assert_queue_V2(v7);
  v8 = itemCopy;
  transferToRequestIDsMap = self->_transferToRequestIDsMap;
  v14 = objc_msgSend_guid(itemCopy, v10, v11, v12, v13);
  v18 = objc_msgSend_objectForKey_(transferToRequestIDsMap, v15, v14, v16, v17);
  v23 = objc_msgSend_mutableCopy(v18, v19, v20, v21, v22);
  v28 = objc_msgSend_mutableCopy(v23, v24, v25, v26, v27);
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v29, &v94, v98, 16);
  if (v30)
  {
    v35 = v30;
    v36 = *v95;
    if (itemCopy)
    {
      v37 = v28 == 0;
    }

    else
    {
      v37 = 1;
    }

    v38 = !v37;
    v92 = v38;
    v91 = itemCopy;
    do
    {
      v39 = 0;
      do
      {
        if (*v95 != v36)
        {
          objc_enumerationMutation(v23);
        }

        v40 = *(*(&v94 + 1) + 8 * v39);
        v41 = objc_msgSend_objectForKey_(self->_requestIDToRemainingTransfersMap, v31, v40, v33, v34);
        objc_msgSend_removeObjectIdenticalTo_(v41, v42, itemCopy, v43, v44);
        if (!objc_msgSend_count(v41, v45, v46, v47, v48))
        {
          v49 = objc_msgSend_objectForKey_(self->_requestIDToBlockMap, v31, v40, v33, v34);
          if (v49)
          {
            v53 = v49;
            v54 = objc_msgSend_objectForKey_(self->_requestIDToTransfersMap, v50, v40, v51, v52);
            itemCopy = v91;
            (*(v53 + 16))(v53, v54, error == 0, error);
          }

          objc_msgSend_removeObjectForKey_(self->_requestIDToBlockMap, v50, v40, v51, v52);
          objc_msgSend_removeObjectForKey_(self->_requestIDToRemainingTransfersMap, v55, v40, v56, v57);
          objc_msgSend_removeObjectForKey_(self->_requestIDToTransfersMap, v58, v40, v59, v60);
          objc_msgSend_removeObjectIdenticalTo_(v28, v61, v40, v62, v63);
          if (objc_msgSend_count(v28, v64, v65, v66, v67))
          {
            if (v92)
            {
              v69 = self->_transferToRequestIDsMap;
              v70 = objc_msgSend_guid(itemCopy, v31, v68, v33, v34);
              objc_msgSend_setObject_forKey_(v69, v71, v28, v70, v72);
            }
          }

          else if (itemCopy)
          {
            v73 = self->_transferToRequestIDsMap;
            v74 = objc_msgSend_guid(itemCopy, v31, v68, v33, v34);
            objc_msgSend_removeObjectForKey_(v73, v75, v74, v76, v77);
          }
        }

        ++v39;
      }

      while (v35 != v39);
      v78 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v31, &v94, v98, 16);
      v35 = v78;
    }

    while (v78);
  }

  if (!objc_msgSend_count(self->_requestIDToTransfersMap, v31, v32, v33, v34))
  {

    self->_requestIDToTransfersMap = 0;
  }

  if (!objc_msgSend_count(self->_requestIDToRemainingTransfersMap, v79, v80, v81, v82))
  {

    self->_requestIDToRemainingTransfersMap = 0;
  }

  if (!objc_msgSend_count(self->_requestIDToBlockMap, v83, v84, v85, v86))
  {

    self->_requestIDToBlockMap = 0;
  }

  if (!objc_msgSend_count(self->_transferToRequestIDsMap, v87, v88, v89, v90))
  {

    self->_transferToRequestIDsMap = 0;
  }
}

- (void)_putItemCompleted:(id)completed error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_serialControllerQueue(MMCSController, a2, completed, error, v4);
  dispatch_assert_queue_V2(v8);
  objc_msgSend_setMMCSError_(completed, v9, error, v10, v11);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      completedCopy = completed;
      v21 = 2112;
      errorCopy = error;
      _os_log_impl(&dword_20E3AF000, v16, OS_LOG_TYPE_INFO, "Put item completed: %@  error: %@", buf, 0x16u);
    }
  }

  if (completed)
  {
    v17 = objc_msgSend_replyQueue(self, v12, v13, v14, v15);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_20E3B72CC;
    v18[3] = &unk_277E1CDA0;
    v18[4] = error;
    v18[5] = completed;
    dispatch_async(v17, v18);
  }

  objc_msgSend__processCompletedItem_error_(self, v12, completed, error, v15);
}

- (void)_getItemCompleted:(id)completed path:(id)path error:(id)error
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_serialControllerQueue(MMCSController, a2, completed, path, error);
  dispatch_assert_queue_V2(v9);
  v25 = 0;
  v26 = &v25;
  v27 = 0x3052000000;
  v28 = sub_20E3B331C;
  v29 = sub_20E3B332C;
  errorCopy = error;
  objc_msgSend_setMMCSError_(completed, v10, error, v11, v12);
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v26[5];
      *buf = 138412546;
      pathCopy = completed;
      v33 = 2112;
      v34 = v14;
      _os_log_impl(&dword_20E3AF000, v13, OS_LOG_TYPE_INFO, "Get item completed: %@  error: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v26[5];
      *buf = 138412546;
      pathCopy = path;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_20E3AF000, v15, OS_LOG_TYPE_INFO, "[=MMCS-Timing=]  Get Item completed for path: %@  (error: %@)", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = qos_class_self();
      *buf = 67109120;
      LODWORD(pathCopy) = v22;
      _os_log_impl(&dword_20E3AF000, v21, OS_LOG_TYPE_INFO, "Get item completed running at qos (%u)", buf, 8u);
    }
  }

  if (completed)
  {
    v23 = objc_msgSend_replyQueue(self, v17, v18, v19, v20);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_20E3B780C;
    block[3] = &unk_277E1CC68;
    block[5] = path;
    block[6] = &v25;
    block[4] = completed;
    dispatch_async(v23, block);
  }

  objc_msgSend__processCompletedItem_error_(self, v17, completed, v26[5], v20);
  _Block_object_dispose(&v25, 8);
}

- (void)_itemCompleted:(id)completed
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_serialControllerQueue(MMCSController, a2, completed, v3, v4);
  dispatch_assert_queue_V2(v6);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = 138412290;
      completedCopy = completed;
      _os_log_impl(&dword_20E3AF000, v7, OS_LOG_TYPE_INFO, "Item completed: %@", &v8, 0xCu);
    }
  }
}

- (id)_MMCSICloudRequestHeadersCopy:(__CFString *)copy
{
  v5 = objc_msgSend_serialControllerQueue(MMCSController, a2, copy, v3, v4);
  dispatch_assert_queue_V2(v5);
  v6 = MMCSICloudRequestHeadersCopy();

  return v6;
}

@end