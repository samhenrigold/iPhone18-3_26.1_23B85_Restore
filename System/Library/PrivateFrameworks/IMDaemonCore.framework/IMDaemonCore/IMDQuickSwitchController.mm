@interface IMDQuickSwitchController
+ (id)sharedInstance;
- (BOOL)_isPairedDeviceInProxyMode;
- (BOOL)_sendIDSFile:(id)file withCommand:(int64_t)command;
- (BOOL)_sendIDSMessage:(id)message;
- (BOOL)_sendZippedFileAtPath:(id)path withCommand:(int64_t)command;
- (BOOL)_supportsQuickSwitchWithPairedDevice;
- (BOOL)_truncateDBToPath:(id)path;
- (IMDQuickSwitchController)init;
- (id)_defaultPairedDevice;
- (id)_getDowngradedDBPath;
- (id)_getTempDBPath;
- (id)_getTempRecentsPath;
- (id)_getTruncatedDBPath;
- (id)_getZippedDBPath;
- (id)_getZippedRecentsPath;
- (int64_t)_getCurrentDBVersion;
- (unint64_t)_getFileSizeAtPath:(id)path;
- (void)_cleanUpTemporaryFiles;
- (void)_compressFileAtPath:(id)path toPath:(id)toPath withCompletionBlock:(id)block;
- (void)_decompressFileAtPath:(id)path toPath:(id)toPath withCompletionBlock:(id)block;
- (void)_deleteFileAtPath:(id)path;
- (void)_handleDBVersionResponse:(id)response;
- (void)_handleIncomingDB:(id)b;
- (void)_handleIncomingRecents:(id)recents;
- (void)_handleQuickSwitchCompleted:(id)completed;
- (void)_handleQuickSwitchInitiateRequest;
- (void)_handleRecentsRequest;
- (void)_initiateQuickSwitch;
- (void)_notifyPSYDataSent;
- (void)_notifyPSYWithResult:(BOOL)result;
- (void)_quickSwitchCompleted:(BOOL)completed;
- (void)_sendDBVersionResponse:(int64_t)response;
- (void)_sendQuickSwitchCompletedWithResult:(BOOL)result;
- (void)_sendRecentsRequest;
- (void)dealloc;
- (void)dummyMethod;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
@end

@implementation IMDQuickSwitchController

+ (id)sharedInstance
{
  if (qword_281421138 != -1)
  {
    sub_22B7D2DFC();
  }

  return qword_281420FB0;
}

- (IMDQuickSwitchController)init
{
  v8.receiver = self;
  v8.super_class = IMDQuickSwitchController;
  v2 = [(IMDQuickSwitchController *)&v8 init];
  if (v2)
  {
    if (qword_281421450 != -1)
    {
      sub_22B7D2E10();
    }

    v3 = [objc_alloc(MEMORY[0x277D18778]) initWithService:@"com.apple.private.alloy.messagesquickswitch"];
    v2->_quickSwitchIDSService = v3;
    [(IDSService *)v3 addDelegate:v2 queue:MEMORY[0x277D85CD0]];
    v4 = [qword_281421480 syncCoordinatorWithServiceName:@"com.apple.pairedsync.messagessync"];
    v2->_syncCoordinator = v4;
    [(PSYSyncCoordinator *)v4 setDelegate:v2];
    [(IMDQuickSwitchController *)v2 _cleanUpTemporaryFiles];
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Instantiated IMDQuickSwitchController", v7, 2u);
    }
  }

  return v2;
}

- (void)dealloc
{
  [(IMDQuickSwitchController *)self _cleanUpTemporaryFiles];
  v3.receiver = self;
  v3.super_class = IMDQuickSwitchController;
  [(IMDQuickSwitchController *)&v3 dealloc];
}

- (void)dummyMethod
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Sending dummy request", v4, 2u);
    }
  }

  [(IMDQuickSwitchController *)self _isPairedDeviceInProxyMode];
  [(IMDQuickSwitchController *)self _initiateQuickSwitch];
}

- (int64_t)_getCurrentDBVersion
{
  v7 = *MEMORY[0x277D85DE8];
  SchemaVersion = IMDSMSRecordStoreGetSchemaVersion();
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      v6 = SchemaVersion;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Current db version is %ld", &v5, 0xCu);
    }
  }

  return SchemaVersion;
}

- (id)_getTempDBPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"MessagesQSwitch"];
}

- (id)_getTempRecentsPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"Recents"];
}

- (id)_getZippedRecentsPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"compressedSMSRecents.zip"];
}

- (id)_getTruncatedDBPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"tempSMS.db"];
}

- (id)_getDowngradedDBPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"tempDowngradedSMS.db"];
}

- (id)_getZippedDBPath
{
  path = [IMSafeTemporaryDirectory() path];

  return [path stringByAppendingPathComponent:@"compressedSMSDB.zip"];
}

- (unint64_t)_getFileSizeAtPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  if (!path)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v9 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v6 = "QuickSwitch Could not determine file size as path was nil";
    v7 = v9;
    v8 = 2;
    goto LABEL_9;
  }

  v13 = 0;
  v4 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (v13)
  {
    if (!IMOSLoggingEnabled())
    {
      return 0;
    }

    v5 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 138412546;
    pathCopy2 = path;
    v16 = 2112;
    v17 = v13;
    v6 = "QuickSwitch Could not determine file size at path %@ with error %@";
    v7 = v5;
    v8 = 22;
LABEL_9:
    _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, v6, buf, v8);
    return 0;
  }

  fileSize = [v4 fileSize];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      pathCopy2 = path;
      v16 = 2048;
      v17 = fileSize;
      _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Size of file at path %@ is %lu", buf, 0x16u);
    }
  }

  return fileSize;
}

- (BOOL)_truncateDBToPath:(id)path
{
  v12 = *MEMORY[0x277D85DE8];
  if (path)
  {
    if ((IMDDatabaseDelete() & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          pathCopy = path;
          _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "QuickSwitch Could not delete DB at path %@", buf, 0xCu);
        }
      }
    }

    IMTimingStartTimingForKey();
    v6 = IMDTrimSharedDatabaseToMessageCount();
    if (v6)
    {
      IMTimingStopTimingForKey();
      [(IMDQuickSwitchController *)self _getFileSizeAtPath:path];
    }

    else if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        pathCopy = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "QuickSwitch Could not trim DB with error %@ ", buf, 0xCu);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "QuickSwitch We got a nil path to truncate to.", buf, 2u);
      }
    }

    return 0;
  }

  return v6;
}

- (void)_deleteFileAtPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  if (path)
  {
    v14 = 0;
    v4 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
    v5 = IMOSLoggingEnabled();
    if (v4)
    {
      if (v5)
      {
        v6 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          pathCopy2 = path;
          v7 = "Deleted file at path %@ ";
          v8 = v6;
          v9 = 12;
LABEL_12:
          _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, v7, &v15, v9);
        }
      }
    }

    else if (v5)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        domain = [v14 domain];
        code = [v14 code];
        v15 = 138412802;
        pathCopy2 = path;
        v17 = 2112;
        v18 = domain;
        v19 = 2048;
        v20 = code;
        v7 = "QuickSwitch Could not delete file at path %@ with error domain '%@' code: %ld";
        v8 = v11;
        v9 = 32;
        goto LABEL_12;
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      v7 = "QuickSwitch we were given a nil path to delete";
      v8 = v10;
      v9 = 2;
      goto LABEL_12;
    }
  }
}

- (void)_cleanUpTemporaryFiles
{
  v10 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Cleaning up temporary files", buf, 2u);
    }
  }

  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getTempDBPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getTempRecentsPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getZippedDBPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getZippedRecentsPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getTruncatedDBPath]];
  [(IMDQuickSwitchController *)self _deleteFileAtPath:[(IMDQuickSwitchController *)self _getDowngradedDBPath]];
  [(IMDQuickSwitchController *)self _getTruncatedDBPath];
  if ((IMDDatabaseDelete() & 1) == 0 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      _getTruncatedDBPath = [(IMDQuickSwitchController *)self _getTruncatedDBPath];
      *buf = 138412546;
      v7 = _getTruncatedDBPath;
      v8 = 2112;
      v9 = 0;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "QuickSwitch Could not delete DB at path %@ %@", buf, 0x16u);
    }
  }
}

- (void)_compressFileAtPath:(id)path toPath:(id)toPath withCompletionBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "QuickSwitch. We do not expect file to already exist. Clearing it.", buf, 2u);
      }
    }

    v17 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          toPathCopy = toPath;
          v20 = 2112;
          v21 = v17;
          _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "QuickSwitch Could not delete zipped file DB at path %@ with error %@", buf, 0x16u);
        }
      }
    }
  }

  v15 = MEMORY[0x277D85DD0];
  blockCopy = block;
  v11 = objc_alloc(MEMORY[0x277D19248]);
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:{path, v15, 3221225472, sub_22B57E090, &unk_278704F18, toPath, self, blockCopy}];
  v13 = [MEMORY[0x277CBEBC0] fileURLWithPath:toPath];
  v14 = [v11 initWithInputURL:v12 outputURL:v13 identifier:0 operation:2 completionBlock:&v15 queue:MEMORY[0x277D85CD0]];
  IMTimingStartTimingForKey();
  [v14 start];
}

- (void)_decompressFileAtPath:(id)path toPath:(id)toPath withCompletionBlock:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "QuickSwitch. We do not expect file to already exist.", buf, 2u);
      }
    }

    v15 = 0;
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          toPathCopy = toPath;
          v18 = 2112;
          v19 = v15;
          _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "QuickSwitch Could not delete zipped file DB at path %@ with error %@", buf, 0x16u);
        }
      }
    }
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_22B57E3D0;
  v14[3] = &unk_278704F40;
  v14[4] = toPath;
  v14[5] = block;
  v10 = objc_alloc(MEMORY[0x277D19248]);
  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:toPath];
  v13 = [v10 initWithInputURL:v11 outputURL:v12 identifier:0 operation:1 completionBlock:v14 queue:MEMORY[0x277D85CD0]];
  IMTimingStartTimingForKey();
  [v13 start];
}

- (void)_initiateQuickSwitch
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Initiating quick switch", buf, 2u);
    }
  }

  v4 = objc_alloc(MEMORY[0x277CBEAC0]);
  v5 = [v4 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", 1), @"c", 0}];
  if (![(IMDQuickSwitchController *)self _sendIDSMessage:v5])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "QuickSwitch Could not send initiate QuickSwitch message. Bailing!", v7, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }
}

- (void)_sendDBVersionResponse:(int64_t)response
{
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:2];
  v7 = [v5 initWithObjectsAndKeys:{v6, @"c", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", response), @"dbv", 0}];
  if (![(IMDQuickSwitchController *)self _sendIDSMessage:v7])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Could not send initiate QuickSwitch message. Bailing!", buf, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }
}

- (void)_sendRecentsRequest
{
  v3 = objc_alloc(MEMORY[0x277CBEAC0]);
  v4 = [v3 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", 5), @"c", 0}];
  if (![(IMDQuickSwitchController *)self _sendIDSMessage:v4])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Could not send QuickSwitch Recents request. Bailing!", buf, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }
}

- (void)_handleQuickSwitchInitiateRequest
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "We tried to _handleQuickSwitchInitiateRequest a non watch device for QuickSwitch. This is really bad!", v3, 2u);
    }
  }
}

- (void)_quickSwitchCompleted:(BOOL)completed
{
  completedCopy = completed;
  v9 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (completedCopy)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Finished with success %@", &v7, 0xCu);
    }
  }

  [(IMDQuickSwitchController *)self _cleanUpTemporaryFiles];
  [(IMDQuickSwitchController *)self _notifyPSYWithResult:completedCopy];
}

- (BOOL)_sendZippedFileAtPath:(id)path withCommand:(int64_t)command
{
  if (!path)
  {
    return 0;
  }

  [MEMORY[0x277CBEBC0] fileURLWithPath:?];

  return MEMORY[0x2821F9670](self, sel__sendIDSFile_withCommand_);
}

- (void)_handleDBVersionResponse:(id)response
{
  v43 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *&buf[4] = response;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "dbVersionResponse %@", buf, 0xCu);
    }
  }

  _getCurrentDBVersion = [(IMDQuickSwitchController *)self _getCurrentDBVersion];
  v7 = [objc_msgSend(response objectForKey:{@"dbv", "integerValue"}];
  if (_getCurrentDBVersion != v7)
  {
    v12 = IMDCanDowngradeDatabaseToVersion();
    v13 = IMOSLoggingEnabled();
    if (!v12)
    {
      if (v13)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = _getCurrentDBVersion;
          *&buf[12] = 2048;
          *&buf[14] = v7;
          _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Trying to QuickSwitch to incompatible gizmo. Bailing quick switch. localDBVersion %ld gizmoDBVersion %ld", buf, 0x16u);
        }
      }

      [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
      return;
    }

    if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v7;
        _os_log_impl(&dword_22B4CC000, v14, OS_LOG_TYPE_INFO, "Downgrade: found a database that can be downgraded to version: %ld", buf, 0xCu);
      }
    }
  }

  _getTruncatedDBPath = [(IMDQuickSwitchController *)self _getTruncatedDBPath];
  if (-[IMDQuickSwitchController _truncateDBToPath:](self, "_truncateDBToPath:", _getTruncatedDBPath) && ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) != 0)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v9, OS_LOG_TYPE_INFO, "Truncation succeeded! :-)", buf, 2u);
      }
    }

    if (_getCurrentDBVersion == v7)
    {
      goto LABEL_11;
    }

    if ([objc_msgSend(MEMORY[0x277D1A9B8] "sharedFeatureFlags")])
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22B4CC000, v16, OS_LOG_TYPE_INFO, "Needs downgrade, but must split chats first.", buf, 2u);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3052000000;
      v40 = sub_22B4D76A0;
      v41 = sub_22B4D78A8;
      v42 = 0;
      synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = sub_22B57F2CC;
      v35[3] = &unk_278704F68;
      v35[4] = buf;
      [synchronousDatabase splitMergedChatsInDatabaseAtPath:_getTruncatedDBPath completionHandler:v35];
      if (*(*&buf[8] + 40))
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = *(*&buf[8] + 40);
            *v36 = 138412546;
            *&v36[4] = _getTruncatedDBPath;
            v37 = 2112;
            v38 = v19;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "QuickSwitch failed to split merged chats on db at path %@ with error: %@", v36, 0x16u);
          }
        }

        [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
        _Block_object_dispose(buf, 8);
        return;
      }

      _Block_object_dispose(buf, 8);
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = _getCurrentDBVersion;
        *&buf[12] = 2048;
        *&buf[14] = v7;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "Attempting downgrade from %ld to %ld...", buf, 0x16u);
      }
    }

    _getDowngradedDBPath = [(IMDQuickSwitchController *)self _getDowngradedDBPath];
    *v36 = 0;
    v22 = IMDDowngradeDatabaseToVersion();
    if (*v36)
    {
      v23 = 0;
    }

    else
    {
      v23 = v22;
    }

    v24 = IMOSLoggingEnabled();
    if (v23)
    {
      if (v24)
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 134218240;
          *&buf[4] = _getCurrentDBVersion;
          *&buf[12] = 2048;
          *&buf[14] = v7;
          _os_log_impl(&dword_22B4CC000, v25, OS_LOG_TYPE_INFO, "Downgraded from %ld to %ld ok! :-D", buf, 0x16u);
        }
      }

      [(IMDQuickSwitchController *)self _deleteFileAtPath:_getTruncatedDBPath];
      v34 = 0;
      v26 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      if (v34)
      {
        v27 = 0;
      }

      else
      {
        v27 = v26;
      }

      v28 = IMOSLoggingEnabled();
      if (v27)
      {
        if (v28)
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = _getDowngradedDBPath;
            *&buf[12] = 2112;
            *&buf[14] = _getTruncatedDBPath;
            _os_log_impl(&dword_22B4CC000, v29, OS_LOG_TYPE_INFO, "renamed %@ to %@ in preperation for compression - this means the downgrade completed ok. :-D", buf, 0x16u);
          }
        }

LABEL_11:
        _getZippedDBPath = [(IMDQuickSwitchController *)self _getZippedDBPath];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = sub_22B57F2DC;
        v33[3] = &unk_278704F90;
        v33[4] = self;
        [(IMDQuickSwitchController *)self _compressFileAtPath:_getTruncatedDBPath toPath:_getZippedDBPath withCompletionBlock:v33];
        return;
      }

      if (v28)
      {
        v32 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v34;
          _os_log_impl(&dword_22B4CC000, v32, OS_LOG_TYPE_INFO, "QuickSwitch failed to rename downgraded db to tempdb with error: %@", buf, 0xCu);
        }
      }

      [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
    }

    else
    {
      if (v24)
      {
        v30 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          localizedDescription = [*v36 localizedDescription];
          *buf = 134218498;
          *&buf[4] = v7;
          *&buf[12] = 2048;
          *&buf[14] = _getCurrentDBVersion;
          *&buf[22] = 2112;
          v40 = localizedDescription;
          _os_log_impl(&dword_22B4CC000, v30, OS_LOG_TYPE_INFO, "Error Trying to QuickSwitch watch to version %ld from %ld. Downgrade failed with error: %@", buf, 0x20u);
        }
      }

      [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = _getTruncatedDBPath;
        _os_log_impl(&dword_22B4CC000, v11, OS_LOG_TYPE_INFO, "QuickSwitch Truncated DB did not succeed at path %@, Really bad! ", buf, 0xCu);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }
}

- (void)_handleRecentsRequest
{
  v14 = *MEMORY[0x277D85DE8];
  stringByStandardizingPath = [FormattedRecentDomainDirectory() stringByStandardizingPath];
  _getTempRecentsPath = [(IMDQuickSwitchController *)self _getTempRecentsPath];
  _getZippedRecentsPath = [(IMDQuickSwitchController *)self _getZippedRecentsPath];
  v9 = 0;
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    goto LABEL_6;
  }

  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v11 = stringByStandardizingPath;
      v12 = 2112;
      v13 = _getTempRecentsPath;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Copying from %@ to %@", buf, 0x16u);
    }
  }

  if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v11 = v9;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "QuickSwitch could not copy path to temp directory with error %@. Bailing!!", buf, 0xCu);
      }
    }

    [(IMDQuickSwitchController *)self _deleteFileAtPath:_getTempRecentsPath];
    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }

  else
  {
LABEL_6:
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_22B57F6A8;
    v8[3] = &unk_2787043C8;
    v8[4] = _getZippedRecentsPath;
    v8[5] = self;
    [(IMDQuickSwitchController *)self _compressFileAtPath:_getTempRecentsPath toPath:_getZippedRecentsPath withCompletionBlock:v8];
  }
}

- (void)_handleQuickSwitchCompleted:(id)completed
{
  v8 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      completedCopy = completed;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "_handleQuickSwitchCompleted %@", &v6, 0xCu);
    }
  }

  -[IMDQuickSwitchController _quickSwitchCompleted:](self, "_quickSwitchCompleted:", [objc_msgSend(completed objectForKey:{@"s", "BOOLValue"}]);
}

- (void)_handleIncomingDB:(id)b
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "QuickSwitch got _handleIncomingDB on a non gizmo. Really bad!!", v4, 2u);
    }
  }
}

- (void)_handleIncomingRecents:(id)recents
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "QuickSwitch got _handleIncomingRecents on a non gizmo. Really bad!!", v4, 2u);
    }
  }
}

- (void)_sendQuickSwitchCompletedWithResult:(BOOL)result
{
  resultCopy = result;
  v5 = objc_alloc(MEMORY[0x277CBEAC0]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:4];
  v7 = [v5 initWithObjectsAndKeys:{v6, @"c", objc_msgSend(MEMORY[0x277CCABB0], "numberWithBool:", resultCopy), @"s", 0}];
  [(IMDQuickSwitchController *)self _sendIDSMessage:v7];
}

- (BOOL)_sendIDSFile:(id)file withCommand:(int64_t)command
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = [v7 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", command), @"c", 0}];
  v13 = 0;
  v14 = 0;
  v9 = -[IDSService sendResourceAtURL:metadata:toDestinations:priority:options:identifier:error:](self->_quickSwitchIDSService, "sendResourceAtURL:metadata:toDestinations:priority:options:identifier:error:", file, v8, [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]], 300, 0, &v14, &v13);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (v9)
      {
        v11 = @"YES";
      }

      *buf = 138413314;
      fileCopy = file;
      v17 = 2112;
      v18 = v14;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "Sending file at URL %@ to local account (identifier %@)  (error %@)  (metadata %@) success: %@", buf, 0x34u);
    }
  }

  return v9;
}

- (BOOL)_sendIDSMessage:(id)message
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v11 = 0;
  _FTCopyGzippedData = [JWEncodeDictionary() _FTCopyGzippedData];
  v6 = -[IDSService sendData:toDestinations:priority:options:identifier:error:](self->_quickSwitchIDSService, "sendData:toDestinations:priority:options:identifier:error:", _FTCopyGzippedData, [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]], 300, 0, &v11, &v10);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (v6)
      {
        v8 = @"YES";
      }

      *buf = 138413058;
      v13 = v11;
      v14 = 2112;
      v15 = v10;
      v16 = 2112;
      messageCopy = message;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Sending message to local account (identifier %@)  (error %@)  (request %@) success: %@", buf, 0x2Au);
    }
  }

  return v6;
}

- (void)service:(id)service account:(id)account incomingData:(id)data fromID:(id)d context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v24 = 138413314;
      dCopy2 = service;
      v26 = 2112;
      accountCopy = account;
      v28 = 2112;
      dataCopy = data;
      v30 = 2112;
      dCopy = d;
      v32 = 2112;
      contextCopy = context;
      _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "service %@, account %@, incomingData %@ fromID %@ context %@", &v24, 0x34u);
    }
  }

  if (![service deviceForFromID:d])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v24 = 138412290;
    dCopy2 = d;
    v20 = "Not an IDSDevice: fromID %@. Bailing";
LABEL_27:
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, v20, &v24, 0xCu);
    return;
  }

  [data _FTOptionallyDecompressData];
  v14 = JWDecodeDictionary();
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      dCopy2 = v14;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "Got request %@", &v24, 0xCu);
    }
  }

  v16 = [objc_msgSend(v14 objectForKey:{@"c", "integerValue"}];
  v17 = IMOSLoggingEnabled();
  if (v16 > 3)
  {
    if (v16 == 4)
    {
      if (v17)
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_22B4CC000, v23, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandQuickSwitchCompleted", &v24, 2u);
        }
      }

      [(IMDQuickSwitchController *)self _handleQuickSwitchCompleted:v14];
    }

    else
    {
      if (v16 != 5)
      {
LABEL_24:
        if (!v17)
        {
          return;
        }

        v19 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v24 = 134217984;
        dCopy2 = v16;
        v20 = "QuickSwitch got unknown request over quick switch service %ld";
        goto LABEL_27;
      }

      if (v17)
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          LOWORD(v24) = 0;
          _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandRequestRecents", &v24, 2u);
        }
      }

      [(IMDQuickSwitchController *)self _handleRecentsRequest];
    }
  }

  else
  {
    if (v16 != 1)
    {
      if (v16 == 2)
      {
        if (v17)
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            LOWORD(v24) = 0;
            _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandResponeDBVersion", &v24, 2u);
          }
        }

        [(IMDQuickSwitchController *)self _handleDBVersionResponse:v14];
        return;
      }

      goto LABEL_24;
    }

    if (v17)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(v24) = 0;
        _os_log_impl(&dword_22B4CC000, v22, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandInitiateQuickSwitch", &v24, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _handleQuickSwitchInitiateRequest];
  }
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v22 = 138413570;
      lCopy3 = service;
      v24 = 2112;
      accountCopy = account;
      v26 = 2112;
      lCopy = l;
      v28 = 2112;
      metadataCopy = metadata;
      v30 = 2112;
      dCopy = d;
      v32 = 2112;
      contextCopy = context;
      _os_log_impl(&dword_22B4CC000, v15, OS_LOG_TYPE_INFO, "service %@, account %@, resourceURL %@ metadata %@ fromID %@ context %@", &v22, 0x3Eu);
    }
  }

  if (![service deviceForFromID:d])
  {
    if (!IMOSLoggingEnabled())
    {
      return;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v22 = 138412290;
    lCopy3 = d;
    v20 = "Not an IDSDevice: fromID %@. Bailing";
    goto LABEL_21;
  }

  v16 = [objc_msgSend(metadata objectForKey:{@"c", "integerValue"}];
  v17 = IMOSLoggingEnabled();
  if (v16 != 6)
  {
    if (v16 == 3)
    {
      if (v17)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v22 = 138412290;
          lCopy3 = l;
          _os_log_impl(&dword_22B4CC000, v18, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandIncomingDB at url %@", &v22, 0xCu);
        }
      }

      -[IMDQuickSwitchController _handleIncomingDB:](self, "_handleIncomingDB:", [l path]);
      return;
    }

    if (!v17)
    {
      return;
    }

    v19 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v22 = 134217984;
    lCopy3 = v16;
    v20 = "QuickSwitch got unknown resource ULR callback over quick switch service %ld";
LABEL_21:
    _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, v20, &v22, 0xCu);
    return;
  }

  if (v17)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      lCopy3 = l;
      _os_log_impl(&dword_22B4CC000, v21, OS_LOG_TYPE_INFO, "Got IMDQuickSwitchControllerCommandIncomingRecents at url %@", &v22, 0xCu);
    }
  }

  -[IMDQuickSwitchController _handleIncomingRecents:](self, "_handleIncomingRecents:", [l path]);
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      identifierCopy = identifier;
      _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "message sent with identifier %@ ", &v9, 0xCu);
    }
  }
}

- (BOOL)_isPairedDeviceInProxyMode
{
  v21 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "Checking if we are in proxy mode", buf, 2u);
    }
  }

  v3 = +[IMDServiceController sharedController];
  v4 = MEMORY[0x277D1A620];
  v5 = [+[IMDAccountController sharedInstance](IMDAccountController activeAccountsForService:"activeAccountsForService:", [(IMDServiceController *)v3 serviceWithName:*MEMORY[0x277D1A620]]];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v9 "service")] && objc_msgSend(objc_msgSend(v9, "loginID"), "_appearsToBeEmail"))
        {
          if (IMOSLoggingEnabled())
          {
            v12 = OSLogHandleForIMEventCategory();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v19 = v9;
              _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Not in proxy mode. Found active iMessage account signed into email %@ ", buf, 0xCu);
            }
          }

          return 0;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (!IMOSLoggingEnabled())
  {
    return 1;
  }

  v10 = OSLogHandleForIMEventCategory();
  v11 = 1;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22B4CC000, v10, OS_LOG_TYPE_INFO, "In proxy mode. Did not find any active iMessage account logged in using email.", buf, 2u);
  }

  return v11;
}

- (id)_defaultPairedDevice
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  devices = [self->_quickSwitchIDSService devices];
  v3 = [devices countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(devices);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isDefaultPairedDevice])
        {
          if (IMOSLoggingEnabled())
          {
            v8 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v15 = v6;
              _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Found default paired device %@", buf, 0xCu);
            }
          }

          return v6;
        }
      }

      v3 = [devices countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "QuickSwitch Did not find default paired device", buf, 2u);
    }
  }

  return 0;
}

- (BOOL)_supportsQuickSwitchWithPairedDevice
{
  v2 = [objc_msgSend(MEMORY[0x277D37B50] "sharedInstance")];

  return [v2 supportsCapability:2799955160];
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  v13 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 138412546;
      coordinatorCopy = coordinator;
      v11 = 2112;
      sessionCopy = session;
      _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Got beginSyncSession call with coordinator %@ and session %@", &v9, 0x16u);
    }
  }

  if ([(IMDQuickSwitchController *)self _supportsQuickSwitchWithPairedDevice])
  {
    [(IMDQuickSwitchController *)self _initiateQuickSwitch];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v9) = 0;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "QuickSwitch. Pairing with older gizmo. Not supported", &v9, 2u);
      }
    }

    [(IMDQuickSwitchController *)self _quickSwitchCompleted:0];
  }
}

- (void)_notifyPSYWithResult:(BOOL)result
{
  resultCopy = result;
  activeSyncSession = [(PSYSyncCoordinator *)[(IMDQuickSwitchController *)self syncCoordinator] activeSyncSession];
  v5 = IMOSLoggingEnabled();
  if (resultCopy)
  {
    if (v5)
    {
      v6 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Calling back to PSY with success", buf, 2u);
      }
    }

    [activeSyncSession syncDidComplete];
  }

  else
  {
    if (v5)
    {
      v7 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v8 = 0;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Calling back to PSY with failure", v8, 2u);
      }
    }

    [activeSyncSession syncDidFailWithError:0];
  }
}

- (void)_notifyPSYDataSent
{
  activeSyncSession = [(PSYSyncCoordinator *)[(IMDQuickSwitchController *)self syncCoordinator] activeSyncSession];

  MEMORY[0x2821F9670](activeSyncSession, sel_syncDidCompleteSending);
}

@end