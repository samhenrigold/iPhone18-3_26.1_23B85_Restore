@interface IMDIndexingMessageScrutinyController
+ (id)sharedController;
- (BOOL)isMessageBlocklisted:(id)blocklisted;
- (IMDIndexingMessageScrutinyController)init;
- (NSMutableOrderedSet)blocklistMessageGUIDs;
- (id)_scrutinyMessagesQueue;
- (void)clearMessageGUIDFromScrutiny:(id)scrutiny;
- (void)setMessageGUIDUnderScrutiny:(id)scrutiny;
@end

@implementation IMDIndexingMessageScrutinyController

+ (id)sharedController
{
  if (qword_1EBA53AE0 != -1)
  {
    sub_1B7CFB660();
  }

  v3 = qword_1EBA53AB0;

  return v3;
}

- (IMDIndexingMessageScrutinyController)init
{
  v21 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = IMDIndexingMessageScrutinyController;
  v2 = [(IMDIndexingMessageScrutinyController *)&v18 init];
  if (v2)
  {
    v3 = IMGetCachedDomainValueForKey();
    v7 = objc_msgSend_count(v3, v4, v5, v6);
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v20 = v7;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Current blocklist size is %lu", buf, 0xCu);
      }
    }

    if (v7 >= 0xC9)
    {
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v20) = 200;
          _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Blocklist size > %d on load, truncating", buf, 8u);
        }
      }

      v11 = objc_msgSend_subarrayWithRange_(v3, v9, v7 - 200, 200);

      v3 = v11;
    }

    if (v3)
    {
      v12 = objc_alloc(MEMORY[0x1E695DFA0]);
      v15 = objc_msgSend_initWithArray_(v12, v13, v3, v14);
    }

    else
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    }

    blocklistMessageGUIDs = v2->_blocklistMessageGUIDs;
    v2->_blocklistMessageGUIDs = v15;
  }

  return v2;
}

- (id)_scrutinyMessagesQueue
{
  if (qword_1EDBE5BB0 != -1)
  {
    sub_1B7CFB674();
  }

  v3 = qword_1EDBE5BA0;

  return v3;
}

- (NSMutableOrderedSet)blocklistMessageGUIDs
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1B7AE1B00;
  v13 = sub_1B7AE2588;
  v14 = 0;
  v5 = objc_msgSend__scrutinyMessagesQueue(self, a2, v2, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BC9974;
  v8[3] = &unk_1E7CBB6F0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v5, v8);

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)setMessageGUIDUnderScrutiny:(id)scrutiny
{
  v17 = *MEMORY[0x1E69E9840];
  scrutinyCopy = scrutiny;
  if (objc_msgSend_length(scrutinyCopy, v5, v6, v7))
  {
    v11 = objc_msgSend__scrutinyMessagesQueue(self, v8, v9, v10);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7BC9B2C;
    v13[3] = &unk_1E7CB6770;
    v13[4] = self;
    v14 = scrutinyCopy;
    dispatch_barrier_sync(v11, v13);
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[IMDIndexingMessageScrutinyController setMessageGUIDUnderScrutiny:]";
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Invalid guid passed in. Skipping %s", buf, 0xCu);
    }
  }
}

- (void)clearMessageGUIDFromScrutiny:(id)scrutiny
{
  v17 = *MEMORY[0x1E69E9840];
  scrutinyCopy = scrutiny;
  if (objc_msgSend_length(scrutinyCopy, v5, v6, v7))
  {
    v11 = objc_msgSend__scrutinyMessagesQueue(self, v8, v9, v10);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7BC9D0C;
    v13[3] = &unk_1E7CB6770;
    v13[4] = self;
    v14 = scrutinyCopy;
    dispatch_barrier_sync(v11, v13);
  }

  else if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[IMDIndexingMessageScrutinyController clearMessageGUIDFromScrutiny:]";
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Invalid guid passed in. Skipping %s", buf, 0xCu);
    }
  }
}

- (BOOL)isMessageBlocklisted:(id)blocklisted
{
  blocklistedCopy = blocklisted;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = objc_msgSend__scrutinyMessagesQueue(self, v5, v6, v7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BC9F78;
  block[3] = &unk_1E7CBC338;
  v12 = blocklistedCopy;
  v13 = &v14;
  block[4] = self;
  v9 = blocklistedCopy;
  dispatch_barrier_sync(v8, block);

  LOBYTE(blocklistedCopy) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return blocklistedCopy;
}

@end