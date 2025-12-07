void sub_1A83DA2A0(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  sub_1A8306F6C();
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v24 = v3;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Marking messages as saved: %@", buf, 0xCu);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v7 = *v19;
    *&v6 = 138412290;
    v17 = v6;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          v10 = [v9 guid];
        }

        else
        {
          v10 = 0;
        }

        v11 = [v10 length] == 0;
        v12 = IMOSLoggingEnabled();
        if (v11)
        {
          if (v12)
          {
            v16 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = v17;
              v24 = v9;
              _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Missing message guid for message: %@, not marking as saved", buf, 0xCu);
            }
          }
        }

        else
        {
          if (v12)
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v17;
              v24 = v10;
              _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, " => Message guid: %@", buf, 0xCu);
            }
          }

          v14 = +[IMDaemonController sharedController];
          v15 = [v14 remoteDaemon];
          [v15 markSavedForMessageGUID:v10];
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  sub_1A8307074();
}

uint64_t IMSPIQueryMessageWithRowIDAndQOS(uint64_t a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "BOOL IMSPIQueryMessageWithRowIDAndQOS(int64_t, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = [v8 copy];

    v13 = sub_1A826443C(a2);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_1A83DA768;
    v16[3] = &unk_1E7814980;
    v19 = a1;
    v20 = a2;
    v17 = v7;
    v9 = v12;
    v18 = v9;
    dispatch_async(v13, v16);
  }

  return v11;
}

void sub_1A83DA768(uint64_t a1)
{
  if (qword_1EB2EA550 != -1)
  {
    sub_1A84E46B4();
  }

  v2 = off_1EB2EA548(*(a1 + 48));
  v3 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1A8259CB0;
  v21 = sub_1A825AF84;
  v22 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DA994;
  block[3] = &unk_1E7814898;
  v14 = &v17;
  v15 = v2;
  v4 = v3;
  v13 = v4;
  v16 = *(a1 + 56);
  dispatch_sync(MEMORY[0x1E69E96A0], block);
  v5 = v18[5];
  if (v5)
  {
    v6 = [v5 service];
    v7 = [v6 isEqualToString:*MEMORY[0x1E69A7AE0]];

    if (v7)
    {
      IMGreenTeaMessageReadLog();
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83DA9F0;
  v9[3] = &unk_1E78148C0;
  v11 = &v17;
  v8 = *(a1 + 32);
  v10 = *(a1 + 40);
  dispatch_async(v8, v9);
  if (v2)
  {
    CFRelease(v2);
  }

  _Block_object_dispose(&v17, 8);
}

void sub_1A83DA94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t (*sub_1A83DA964())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForRowID", @"IMDPersistence");
  off_1EB2EA548 = result;
  return result;
}

uint64_t sub_1A83DA994(uint64_t a1)
{
  v2 = _IMSPIMessageFromRecord(*(a1 + 48), 1, 0, *(a1 + 32), *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2);
}

void sub_1A83DA9F0(uint64_t a1)
{
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  else
  {
    [MEMORY[0x1E695DEC8] array];
  }
  v2 = ;
  (*(*(a1 + 32) + 16))();
}

uint64_t IMSPIQueryMessagesWithRowIDsAndQOS(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "BOOL IMSPIQueryMessagesWithRowIDsAndQOS(NSArray<NSNumber *> *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = [v9 copy];

    v14 = sub_1A826443C(a2);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A83DAC58;
    v17[3] = &unk_1E78149A8;
    v18 = v7;
    v21 = a2;
    v19 = v8;
    v10 = v13;
    v20 = v10;
    dispatch_async(v14, v17);
  }

  return v12;
}

void sub_1A83DAC58(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA560 != -1)
  {
    sub_1A84E46C8();
  }

  v2 = off_1EB2EA558(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v2 count];
      v5 = [*(a1 + 32) count];
      *buf = 134218240;
      v14 = v4;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Got back %lu messages for %lu row IDs", buf, 0x16u);
    }
  }

  v6 = sub_1A82618D4(v2, *(a1 + 56));
  sub_1A8262A8C(v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A83DAE48;
  v10[3] = &unk_1E7810230;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t (*sub_1A83DAE18())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesForRowIDs", @"IMDPersistence");
  off_1EB2EA558 = result;
  return result;
}

uint64_t sub_1A83DAE84(void *a1, char a2, int a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  if (v13)
  {
    if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = "BOOL _IMSPIQueryMessageWithGUIDAndLoadAttachments(NSString *__strong, BOOL, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = [v11 copy];

    if (qword_1EB2EA660 != -1)
    {
      sub_1A84E46DC();
    }

    v16 = off_1EB2EA658(v9);
    v17 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83E16B8;
    block[3] = &unk_1E7814C40;
    v27 = a2;
    v25 = v16;
    v22 = v17;
    v26 = a3;
    v23 = v10;
    v12 = v15;
    v24 = v12;
    v18 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  return v14;
}

uint64_t IMSPIQueryMessagesWithGUIDsAndQOS(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v23 = "BOOL IMSPIQueryMessagesWithGUIDsAndQOS(NSArray<NSString *> *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = [v9 copy];

    v14 = sub_1A826443C(a2);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A83DB2B8;
    v17[3] = &unk_1E78149A8;
    v18 = v7;
    v21 = a2;
    v19 = v8;
    v10 = v13;
    v20 = v10;
    dispatch_async(v14, v17);
  }

  return v12;
}

void sub_1A83DB2B8(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA570 != -1)
  {
    sub_1A84E46F0();
  }

  v2 = off_1EB2EA568(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v2 count];
      v5 = [*(a1 + 32) count];
      *buf = 134218240;
      v14 = v4;
      v15 = 2048;
      v16 = v5;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Got back %lu messages for %lu GUIDs", buf, 0x16u);
    }
  }

  v6 = sub_1A82618D4(v2, *(a1 + 56));
  sub_1A8262A8C(v6);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1A83DB4A8;
  v10[3] = &unk_1E7810230;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v11 = v6;
  v12 = v8;
  v9 = v6;
  dispatch_async(v7, v10);
}

uint64_t (*sub_1A83DB478())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesForGUIDs", @"IMDPersistence");
  off_1EB2EA568 = result;
  return result;
}

uint64_t IMSPIGetAttachmentPathsForTransferGUIDsWithQOS(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "BOOL IMSPIGetAttachmentPathsForTransferGUIDsWithQOS(NSArray<NSString *> *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPITransferPathsCallback)";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = [v9 copy];

    v14 = sub_1A826443C(a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83DB6A0;
    block[3] = &unk_1E7810190;
    v18 = v7;
    v19 = v8;
    v10 = v13;
    v20 = v10;
    dispatch_async(v14, block);
  }

  return v12;
}

void sub_1A83DB6A0(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA580 != -1)
  {
    sub_1A84E4704();
  }

  if (qword_1EB2EA590 != -1)
  {
    sub_1A84E4718();
  }

  v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v31;
    v24 = *v31;
    do
    {
      v7 = 0;
      v25 = v5;
      do
      {
        if (*v31 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v30 + 1) + 8 * v7);
        v9 = IMDAttachmentRecordCopyAttachmentForGUID();
        if (v9)
        {
          v10 = v9;
          cf = 0;
          off_1EB2EA578(v9, 0, 0, 0, 0, &cf, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
          if (cf)
          {
            v11 = cf;
            v12 = [cf copy];
            v13 = [v12 componentsSeparatedByString:@"/Attachments/"];

            if ([v13 count] >= 2)
            {
              v14 = [v13 objectAtIndexedSubscript:1];
              v15 = sub_1A83DBA08(v14);
              [v15 path];
              v16 = v3;
              v18 = v17 = v2;

              v11 = v18;
              v2 = v17;
              v3 = v16;
              v6 = v24;
            }

            v19 = [v11 copy];
            [v2 setObject:v19 forKey:v8];

            if (cf)
            {
              CFRelease(cf);
              cf = 0;
            }

            v5 = v25;
          }

          CFRelease(v10);
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v5);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DBA8C;
  block[3] = &unk_1E7810230;
  v20 = *(v23 + 40);
  v21 = *(v23 + 48);
  v27 = v2;
  v28 = v21;
  v22 = v2;
  dispatch_async(v20, block);
}

uint64_t (*sub_1A83DB9A8())(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("_IMDAttachmentRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA578 = result;
  return result;
}

uint64_t sub_1A83DB9D8()
{
  result = MEMORY[0x1AC56C560]("IMDAttachmentRecordCopyAttachmentForGUID", @"IMDPersistence");
  qword_1EB2EA588 = result;
  return result;
}

id sub_1A83DBA08(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@", @"/var/mobile/Library/SMS/Attachments", a1];
  v2 = [MEMORY[0x1E695DFF8] fileURLWithPath:v1 isDirectory:0];

  return v2;
}

id IMSPIGetGroupPhotosForChatsWithGroupIDs(void *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1A8259CB0;
  v14 = sub_1A825AF84;
  v15 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v17 = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Attempting to lookup group photos for chats with groupIDs: %@", buf, 0xCu);
    }
  }

  v3 = +[IMDaemonController sharedController];
  v4 = [v3 synchronousRemoteDaemon];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83DBD4C;
  v9[3] = &unk_1E7811198;
  v9[4] = &v10;
  [v4 fetchGroupPhotoPathsForChatsWithGroupIDs:v1 completionHandler:v9];

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = v11[5];
      *buf = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v1;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Finished fetching group photos data: '%@', for groups: '%@'.", buf, 0x16u);
    }
  }

  v7 = [v11[5] copy];
  _Block_object_dispose(&v10, 8);

  return v7;
}

void sub_1A83DBD4C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMLogHandleForCategory();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Received group photos: %@", buf, 0xCu);
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1A83DBE88;
    v6[3] = &unk_1E78149F8;
    v6[4] = *(a1 + 32);
    [v3 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E472C(v5);
    }
  }
}

void sub_1A83DBE88(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83DBF7C;
  v9[3] = &unk_1E78149D0;
  v11 = *(a1 + 32);
  v7 = v5;
  v10 = v7;
  if (([v6 accessResourceByConsumingSandboxExtensionWithBlock:v9] & 1) == 0)
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4770(v7, v6, v8);
    }
  }
}

void sub_1A83DBF7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v8 = 0;
    v3 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:a2 options:0 error:&v8];
    v4 = v8;
    v5 = v4;
    if (v3)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKeyedSubscript:*(a1 + 32)];
    }

    else
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E47F8(v5, v7);
      }
    }
  }

  else
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4890(v5);
    }
  }
}

uint64_t IMSPIHasActiveAliasForSendingOnService(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = +[IMDaemonController sharedController];
    v7 = [v6 multiplexedConnectionWithLabel:@"IMCoreSPI_HasActiveAlias" capabilities:512 context:0];

    [v7 waitForSetup];
    v8 = +[IMAccountController sharedInstance];
    v9 = [v8 activeAccounts];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v14 serviceName];
          if ([v15 isEqualToString:v5])
          {
            v16 = [v14 aliases];
            v17 = [v16 containsObject:v3];

            if (v17)
            {
              v11 = 1;
              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v11);
    }

LABEL_20:

    [v7 invalidate];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Invalid input to IMSPIHasActiveAliasForSendingOnService", buf, 2u);
      }
    }

    v11 = 0;
  }

  return v11;
}

uint64_t IMSPIQueryIMMessageItemsWithGUIDsAndQOS(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  if (v11)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v22 = "BOOL IMSPIQueryIMMessageItemsWithGUIDsAndQOS(NSArray<NSString *> *__strong, dispatch_qos_class_t, __strong dispatch_queue_t, __strong IMSPIMessageQueryCallback)";
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to %s", buf, 0xCu);
      }
    }
  }

  else
  {
    v13 = [v9 copy];

    v14 = sub_1A826443C(a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83DC4A4;
    block[3] = &unk_1E7810190;
    v18 = v7;
    v19 = v8;
    v10 = v13;
    v20 = v10;
    dispatch_async(v14, block);
  }

  return v12;
}

void sub_1A83DC4A4(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA5A0 != -1)
  {
    sub_1A84E48D4();
  }

  v2 = off_1EB2EA598(*(a1 + 32));
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [v2 count];
      v5 = [*(a1 + 32) count];
      *buf = 134218240;
      v26 = v4;
      v27 = 2048;
      v28 = v5;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Got back %lu messages for %lu GUIDs", buf, 0x16u);
    }
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v2;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = sub_1A83D22A0(*(*(&v20 + 1) + 8 * i));
        if (v11)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [v6 count];
      *buf = 134217984;
      v26 = v13;
      _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Converted records into items %lu items", buf, 0xCu);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1A83DC7C4;
  v17[3] = &unk_1E7810230;
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v18 = v6;
  v19 = v15;
  v16 = v6;
  dispatch_async(v14, v17);
}

uint64_t (*sub_1A83DC794())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesForGUIDs", @"IMDPersistence");
  off_1EB2EA598 = result;
  return result;
}

uint64_t IMSPIQueryUnreadMessagesWithQOS(uint64_t a1, uint64_t a2, dispatch_qos_class_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9 || !v10)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v16 = "Empty results block or queue supplied to IMSPIQueryUnreadMessages";
LABEL_11:
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, v16, buf, 2u);
      }

LABEL_12:
    }

LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  if (!a1)
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v16 = "0 limit supplied, no query issued to IMSPIQueryUnreadMessages";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v12 = [v10 copy];

  v13 = sub_1A826443C(a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DC9B4;
  block[3] = &unk_1E7814A20;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v19 = v9;
  v11 = v12;
  v20 = v11;
  dispatch_async(v13, block);

  v14 = 1;
LABEL_14:

  return v14;
}

void sub_1A83DC9B4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA5B0 != -1)
  {
    sub_1A84E48E8();
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 56);
      *buf = 134218240;
      v16 = v3;
      v17 = 2048;
      v18 = v4;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Querying for unread messages with limit: %lld, from row id: %lld", buf, 0x16u);
    }
  }

  v5 = off_1EB2EA5A8(*(a1 + 48), *(a1 + 56));
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 count];
      *buf = 134217984;
      v16 = v7;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Got back %lu unread messages", buf, 0xCu);
    }
  }

  v8 = sub_1A82618D4(v5, *(a1 + 64));
  sub_1A8262A8C(v8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1A83DCC10;
  v12[3] = &unk_1E7810230;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v14 = v10;
  v11 = v8;
  dispatch_async(v9, v12);
}

uint64_t (*sub_1A83DCBE0())(void, void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyNewestUnreadIncomingMessagesToLimitAfterRowID", @"IMDPersistence");
  off_1EB2EA5A8 = result;
  return result;
}

uint64_t sub_1A83DCC10(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t IMSPIQueryUnreadMessagesWithIDsAndQOS(void *a1, void *a2, uint64_t a3, dispatch_qos_class_t a4, void *a5, void *a6)
{
  v33 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = a2;
  v13 = a5;
  v14 = a6;
  v15 = v14;
  if (!v13 || !v14)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to IMSPIQueryUnreadMessagesWithIDs", buf, 2u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v16 = [v11 count];
  if (v16 != [v12 count])
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v30 = v11;
        v31 = 2112;
        v32 = v12;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Services is not matched with IDs: [%@] [%@] to IMSPIQueryUnreadMessagesWithIDs", buf, 0x16u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (![v11 count])
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Empty services or IDs supplied to IMSPIQueryUnreadMessagesWithIDs", buf, 2u);
      }

      goto LABEL_22;
    }

LABEL_23:
    v19 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "0 limit supplied, no query issued to IMSPIQueryUnreadMessagesWithIDs", buf, 2u);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v17 = [v15 copy];

  v18 = sub_1A826443C(a4);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_1A83DCFC0;
  v22[3] = &unk_1E7814A48;
  v23 = v12;
  v24 = v11;
  v27 = a3;
  v28 = a4;
  v25 = v13;
  v15 = v17;
  v26 = v15;
  dispatch_async(v18, v22);

  v19 = 1;
LABEL_24:

  return v19;
}

void sub_1A83DCF9C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83DCF48);
  }

  _Unwind_Resume(a1);
}

void sub_1A83DCFC0(uint64_t a1)
{
  if (qword_1EB2EA5C0 != -1)
  {
    sub_1A84E48FC();
  }

  v2 = off_1EB2EA5B8(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  v3 = sub_1A82618D4(v2, *(a1 + 72));
  v4 = [v3 __imArrayByFilteringWithBlock:&unk_1F1B6FD40];
  sub_1A8262A8C(v4);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A83DD100;
  v8[3] = &unk_1E7810230;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

uint64_t (*sub_1A83DD0D0())(void, void, void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesWithHandlesOnServicesLimit", @"IMDPersistence");
  off_1EB2EA5B8 = result;
  return result;
}

uint64_t sub_1A83DD100(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t IMSPIQueryMessagesWithIDsWithOnlyUnreadAndQOS(void *a1, void *a2, char a3, char a4, uint64_t a5, dispatch_qos_class_t a6, void *a7, void *a8)
{
  v39 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v17 = a7;
  v18 = a8;
  v19 = v18;
  if (!v17 || !v18)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Empty results block or queue supplied to IMSPIQueryMessagesWithIDs", buf, 2u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v20 = [v15 count];
  if (v20 != [v16 count])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v36 = v15;
        v37 = 2112;
        v38 = v16;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Services is not matched with IDs: [%@] [%@] to IMSPIQueryMessagesWithIDs", buf, 0x16u);
      }

      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (![v15 count])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "Empty services or IDs supplied to IMSPIQueryMessagesWithIDs", buf, 2u);
      }

      goto LABEL_22;
    }

LABEL_23:
    v22 = 0;
    goto LABEL_24;
  }

  if (!a5)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, "0 limit supplied, no query issued to IMSPIQueryMessagesWithIDs", buf, 2u);
      }

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v25 = [v19 copy];

  v21 = sub_1A826443C(a6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DD504;
  block[3] = &unk_1E7814A70;
  v27 = v16;
  v33 = a3;
  v34 = a4;
  v28 = v15;
  v31 = a5;
  v32 = a6;
  v29 = v17;
  v19 = v25;
  v30 = v19;
  dispatch_async(v21, block);

  v22 = 1;
LABEL_24:

  return v22;
}

void sub_1A83DD4D4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83DD480);
  }

  _Unwind_Resume(a1);
}

void sub_1A83DD504(uint64_t a1)
{
  if (qword_1EB2EA5D0 != -1)
  {
    sub_1A84E4910();
  }

  v2 = off_1EB2EA5C8(*(a1 + 32), *(a1 + 40), *(a1 + 76), *(a1 + 77), *(a1 + 64));
  v3 = sub_1A82618D4(v2, *(a1 + 72));
  sub_1A8262A8C(v3);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83DD62C;
  v7[3] = &unk_1E7810230;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t (*sub_1A83DD5FC())(void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOnlyUnreadAndLimit", @"IMDPersistence");
  off_1EB2EA5C8 = result;
  return result;
}

uint64_t sub_1A83DD62C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t IMSPIQueryMessagesWithQOS(uint64_t a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7 || !v8)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v14 = "Empty results block or queue supplied to IMSPIQueryMessages";
LABEL_11:
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
      }

LABEL_12:
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (!a1)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v14 = "0 limit supplied, no query issued to IMSPIQueryMessages";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v10 = [v8 copy];

  v11 = sub_1A826443C(a2);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A83DD850;
  v16[3] = &unk_1E7814980;
  v19 = a1;
  v20 = a2;
  v17 = v7;
  v9 = v10;
  v18 = v9;
  dispatch_async(v11, v16);

  v12 = 1;
LABEL_14:

  return v12;
}

void sub_1A83DD850(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EB2EA5E0 != -1)
  {
    sub_1A84E4924();
  }

  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 48);
      *buf = 134217984;
      v15 = v3;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Querying for messages with limit: %lld", buf, 0xCu);
    }
  }

  v4 = off_1EB2EA5D8(*(a1 + 48));
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [v4 count];
      *buf = 134217984;
      v15 = v6;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Got back %lu messages", buf, 0xCu);
    }
  }

  v7 = sub_1A82618D4(v4, *(a1 + 56));
  sub_1A8262A8C(v7);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A83DDAA0;
  v11[3] = &unk_1E7810230;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v7;
  v13 = v9;
  v10 = v7;
  dispatch_async(v8, v11);
}

uint64_t (*sub_1A83DDA70())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyLastReceivedMessageLimit", @"IMDPersistence");
  off_1EB2EA5D8 = result;
  return result;
}

uint64_t sub_1A83DDAA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

uint64_t (*sub_1A83DDB20())(void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOnlyUnreadAndLimit", @"IMDPersistence");
  off_1EB2E91F8 = result;
  return result;
}

uint64_t IMSPIQueryHasConversationWithIDAndQOS(void *a1, void *a2, dispatch_qos_class_t a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (!v11 || !v12)
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v24 = "Empty results block or queue supplied to IMSPIQueryHasConversationWithID";
LABEL_16:
        _os_log_impl(&dword_1A823F000, v23, OS_LOG_TYPE_INFO, v24, buf, 2u);
      }

LABEL_17:
    }

LABEL_18:
    v22 = 0;
    goto LABEL_19;
  }

  if (![v9 length])
  {
    if (IMOSLoggingEnabled())
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v24 = "Empty ID passed into IMSPIQueryHasConversationWithID";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v14 = IMSingleObjectArray();
  if (![v14 count])
  {
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"iMessage", @"SMS", 0}];

    v14 = v15;
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v14 count])
  {
    v17 = 0;
    do
    {
      [v16 addObject:v9];
      ++v17;
    }

    while (v17 < [v14 count]);
  }

  v18 = [v13 copy];

  v19 = sub_1A826443C(a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DDDF8;
  block[3] = &unk_1E78120D0;
  v27 = v16;
  v28 = v14;
  v29 = v11;
  v13 = v18;
  v30 = v13;
  v20 = v14;
  v21 = v16;
  dispatch_async(v19, block);

  v22 = 1;
LABEL_19:

  return v22;
}

void sub_1A83DDDF8(uint64_t a1)
{
  if (qword_1EB2EA5F0 != -1)
  {
    sub_1A84E494C();
  }

  v2 = off_1EB2EA5E8(*(a1 + 32), *(a1 + 40), 1);
  v3 = [v2 count] != 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A83DDF00;
  v5[3] = &unk_1E7812930;
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v4, v5);
}

uint64_t (*sub_1A83DDED0())(void, void, void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesWithHandlesOnServicesLimit", @"IMDPersistence");
  off_1EB2EA5E8 = result;
  return result;
}

BOOL IMSPIQueryChatsWithUnplayedAudioMessages(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E96A0];
  v3 = MEMORY[0x1E69E96A0];
  if (v1)
  {
    v4 = [v1 copy];

    v5 = sub_1A826443C(QOS_CLASS_DEFAULT);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A83DE078;
    v9[3] = &unk_1E7814750;
    v6 = v2;
    v10 = v2;
    v11 = v4;
    v7 = v4;
    dispatch_async(v5, v9);
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_4;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Empty results block supplied to IMSPIQueryChatsWithUnplayedAudioMessages", buf, 2u);
    }
  }

LABEL_4:
  return v1 != 0;
}

void sub_1A83DE078(uint64_t a1)
{
  if (qword_1EB2EA600 != -1)
  {
    sub_1A84E4960();
  }

  v2 = off_1EB2EA5F8();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83DE178;
  v6[3] = &unk_1E7810230;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

uint64_t (*sub_1A83DE148())(void)
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages", @"IMDPersistence");
  off_1EB2EA5F8 = result;
  return result;
}

void IMSPIBatchFetchMessageGUIDsWithBalloonBundleID(void *a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v23 = a1;
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v23;
      _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Received request to get message GUIDs for balloon bundle ID %@", buf, 0xCu);
    }
  }

  v7 = [v5 copy];

  v8 = objc_alloc_init(MEMORY[0x1E69A5DD0]);
  [v8 setBatchSize:a2];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", *MEMORY[0x1E69A7130], v23];
  [v8 setPredicate:v9];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = *v25;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 guid];
        v16 = [v15 copy];

        v17 = [v14 iMessageAppData];
        v18 = [v17 copy];

        v19 = _IMSPIExtractPayloadURLFromPayloadNSData(v18);
        v20 = [v19 copy];

        if ((v7)[2](v7, v16, v20))
        {
          if (IMOSLoggingEnabled())
          {
            v21 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v30 = v23;
              _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Stopping early for batch fetch of message records with balloon bundle ID %@", buf, 0xCu);
            }
          }

          goto LABEL_19;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  if (IMOSLoggingEnabled())
  {
    v22 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v23;
      _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "Finished batch fetch of message records with balloon bundle ID %@", buf, 0xCu);
    }
  }
}

void sub_1A83DE514(uint64_t a1)
{
  if (qword_1EB2EA610 != -1)
  {
    sub_1A84E4974();
  }

  v2 = off_1EB2EA608(*(a1 + 32));
  if (v2)
  {
    v3 = [[IMSPIChat alloc] initWithChatRecord:v2];
  }

  else
  {
    v3 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83DE648;
  v7[3] = &unk_1E7810230;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
  if (v2)
  {
    CFRelease(v2);
  }
}

uint64_t (*sub_1A83DE618())(void)
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyChatForGUID", @"IMDPersistence");
  off_1EB2EA608 = result;
  return result;
}

BOOL IMSPIQueryChatWithGroupID(void *a1, dispatch_qos_class_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = [v9 copy];

    v12 = sub_1A826443C(a2);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83DE7E4;
    block[3] = &unk_1E7810190;
    v17 = v7;
    v18 = v8;
    v19 = v11;
    v13 = v11;
    dispatch_async(v12, block);
  }

  else if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Empty result block supplied to IMSPIQueryChatWithGuid", buf, 2u);
    }
  }

  return v10 != 0;
}

void sub_1A83DE7E4(uint64_t a1)
{
  if (qword_1EB2EA620 != -1)
  {
    sub_1A84E4988();
  }

  v2 = off_1EB2EA618(*(a1 + 32));
  v3 = v2;
  if (v2 && CFArrayGetCount(v2) >= 1)
  {
    Count = CFArrayGetCount(v3);
    ValueAtIndex = CFArrayGetValueAtIndex(v3, Count - 1);
    if (ValueAtIndex)
    {
      ValueAtIndex = [[IMSPIChat alloc] initWithChatRecord:ValueAtIndex];
    }
  }

  else
  {
    ValueAtIndex = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A83DE944;
  v9[3] = &unk_1E7810230;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10 = ValueAtIndex;
  v11 = v7;
  v8 = ValueAtIndex;
  dispatch_async(v6, v9);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t (*sub_1A83DE914())(void)
{
  result = MEMORY[0x1AC56C560]("IMDChatRecordCopyChatsWithGroupID", @"IMDPersistence");
  off_1EB2EA618 = result;
  return result;
}

uint64_t IMSPIQueryMessagesWithAttributesAndQOS(int a1, uint64_t a2, uint64_t a3, dispatch_qos_class_t a4, void *a5, void *a6)
{
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v11 || !v12)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = "Empty results block or queue supplied to IMSPIQueryUnreadMessagesWithIDs";
LABEL_11:
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, v18, buf, 2u);
      }

LABEL_12:
    }

LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  if (!a2)
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = "0 limit supplied, no query issued to IMSPIQueryUnreadMessagesWithIDs";
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v14 = [v12 copy];

  v15 = sub_1A826443C(a4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DEB38;
  block[3] = &unk_1E7814AE0;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a1;
  v21 = v11;
  v13 = v14;
  v22 = v13;
  dispatch_async(v15, block);

  v16 = 1;
LABEL_14:

  return v16;
}

void sub_1A83DEB38(uint64_t a1)
{
  if (qword_1EB2EA630 != -1)
  {
    sub_1A84E499C();
  }

  v2 = off_1EB2EA628(*(a1 + 48), *(a1 + 56));
  v3 = sub_1A82618D4(v2, *(a1 + 64));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A83DECB8;
  v11[3] = &unk_1E7814AB8;
  v12 = *(a1 + 68);
  v4 = [v3 __imArrayByFilteringWithBlock:v11];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83DEE14;
  block[3] = &unk_1E7810230;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, block);
}

uint64_t (*sub_1A83DEC88())(void, void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessagesDataDetectionResults", @"IMDPersistence");
  off_1EB2EA628 = result;
  return result;
}

uint64_t sub_1A83DECB8(uint64_t a1, void *a2)
{
  v3 = [a2 attributedText];
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v3 attribute:*MEMORY[0x1E69A5FB0] existsInRange:{0, objc_msgSend(v3, "length")}];
    v5 = *(a1 + 32);
  }

  else
  {
    v6 = 0;
  }

  v7 = MEMORY[0x1E69A5EF0];
  if ((v5 & 4) != 0)
  {
    v6 = v6 | [v4 attribute:*MEMORY[0x1E69A5EF0] existsInRange:{0, objc_msgSend(v4, "length")}];
    v5 = *(a1 + 32);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_12:
      v6 = v6 | [v4 attribute:*MEMORY[0x1E69A5F38] existsInRange:{0, objc_msgSend(v4, "length")}];
      if ((*(a1 + 32) & 0x10) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v6 = v6 | [v4 attribute:*v7 existsInRange:{0, objc_msgSend(v4, "length")}];
  v5 = *(a1 + 32);
  if ((v5 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v5 & 0x10) != 0)
  {
LABEL_8:
    v6 = v6 | [v4 attribute:*MEMORY[0x1E69A5F48] existsInRange:{0, objc_msgSend(v4, "length")}];
  }

LABEL_9:

  return v6;
}

uint64_t sub_1A83DEE14(uint64_t a1)
{
  v2 = *(a1 + 40);
  if ([*(a1 + 32) count])
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void IMSPIRemoveAttachmentGUIDFromSyndication(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Received request to hide syndication for attachment GUID %@", &v4, 0xCu);
    }
  }

  v3 = [MEMORY[0x1E69A5DA8] synchronousDatabase];
  [v3 updateAttachmentSyndicationRanges:v1 shouldHideFromSyndication:1];
}

void IMSPIUnhideSyndicationForAttachmentGUID(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Received request to unhide syndication for attachment GUID %@", &v4, 0xCu);
    }
  }

  v3 = [MEMORY[0x1E69A5DA8] synchronousDatabase];
  [v3 updateAttachmentSyndicationRanges:v1 shouldHideFromSyndication:0];
}

void IMSPIRemoveMessageGUIDFromSyndication(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Received request to hide syndication for message GUID: %@", &v4, 0xCu);
    }
  }

  v3 = [MEMORY[0x1E69A5DA8] database];
  [v3 updateMessageSyndicationRanges:v1 shouldHideFromSyndication:1];
}

void IMSPIUnhideSyndicationForMessageGUID(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 138412290;
      v5 = v1;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Received request to hide syndication for message GUID: %@", &v4, 0xCu);
    }
  }

  v3 = [MEMORY[0x1E69A5DA8] database];
  [v3 updateMessageSyndicationRanges:v1 shouldHideFromSyndication:0];
}

void IMSPIUpdatePluginMessageWithGUID(void *a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Received request to update plugin payload data for message GUID: %@", buf, 0xCu);
    }
  }

  v6 = +[IMDaemonController sharedController];
  v7 = [v6 multiplexedConnectionWithLabel:@"IMCoreSPI_UpdatePluginMessageWithGUID" capabilities:8708 context:0];

  [v7 waitForSetup];
  v8 = [v7 synchronousRemoteProxy];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1A83DF40C;
  v11[3] = &unk_1E7814B08;
  v12 = v3;
  v13 = v7;
  v9 = v7;
  v10 = v3;
  [v8 updatePluginMessageWithGUID:v10 newPayloadData:v4 completion:v11];
}

uint64_t sub_1A83DF40C(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"NO";
      v6 = *(a1 + 32);
      if (a2)
      {
        v5 = @"YES";
      }

      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Finished updating plugin payload data for message with GUID %@. success: %@", &v8, 0x16u);
    }
  }

  return [*(a1 + 40) invalidate];
}

id IMSPILastAddressedHandleForChatWithGUID(void *a1)
{
  v1 = a1;
  v2 = +[IMDaemonController sharedController];
  v3 = [v2 multiplexedConnectionWithLabel:@"IMCoreSPI_LastAddressedHandleForChatWithGUID" capabilities:516 context:0];

  [v3 waitForSetup];
  if (v1)
  {
    v4 = +[IMChatRegistry sharedRegistry];
    v5 = [v4 existingChatWithGUID:v1];

    if (v5)
    {
      v6 = [v5 lastAddressedHandleID];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 0;
LABEL_6:
  [v3 invalidate];

  return v6;
}

void IMSPIResetChatRegistry(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1A823F000, v1, OS_LOG_TYPE_INFO, "IMSPIResetChatRegistry", v3, 2u);
    }
  }

  v2 = +[IMChatRegistry sharedRegistry];
  [v2 _resetChatRegistry];
}

uint64_t IMCopyIDForPhoneNumber(void *a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v5 = a2;
  if ([v4 length])
  {
    v6 = IMInternationalForPhoneNumberWithOptions();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL sub_1A83DF740(uint64_t a1, void *a2, void *a3, void *a4, BOOL *a5, BOOL *a6, void *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = IMDAttachmentRecordCopyAttachmentForGUID();
  if (v13)
  {
    if (a7)
    {
      *a7 = 0;
    }

    if (a3)
    {
      v14 = IMDAttachmentRecordCopyFilename();
      if (CFStringGetLength(v14) < 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 isDirectory:0];
      }

      *a3 = v15;
      if (v14)
      {
        CFRelease(v14);
      }
    }

    if (a4)
    {
      v17 = IMDAttachmentRecordCopyUTIType();
      *a4 = v17;
      if (v17)
      {
        CFRelease(v17);
      }
    }

    if (a5)
    {
      *a5 = IMDAttachmentRecordIsSticker() != 0;
    }

    if (a6)
    {
      *a6 = IMDAttachmentRecordGetIsOutgoing() != 0;
    }

    CFRelease(v13);
  }

  else if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = v12;
      _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Couldn't find attachment with guid %@", &v19, 0xCu);
    }
  }

  return v13 != 0;
}

uint64_t IMSPISimulateMessageReceive(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  sub_1A8306F6C();
  v11 = +[IMDaemonController sharedController];
  v12 = [v11 remoteDaemon];
  [v12 simulateMessageReceive:v10 serviceName:v8 groupID:0 handles:v9 sender:v7];

  return 1;
}

uint64_t (*sub_1A83DF9CC())(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("_IMDAttachmentRecordBulkCopy", @"IMDPersistence");
  off_1EB2E9208 = result;
  return result;
}

uint64_t (*sub_1A83DF9FC())(void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("IMDCreateIMItemFromIMDMessageRecordRefWithAccountLookup", @"IMDPersistence");
  off_1EB2EA638 = result;
  return result;
}

uint64_t (*sub_1A83DFA2C())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyChats", @"IMDPersistence");
  off_1EB2E9168 = result;
  return result;
}

uint64_t (*sub_1A83DFA5C())(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("_IMDChatRecordBulkCopy", @"IMDPersistence");
  off_1EB2E9158 = result;
  return result;
}

uint64_t (*sub_1A83DFA8C())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyLastReadMessageForChatIdentifier", @"IMDPersistence");
  off_1EB2E9160 = result;
  return result;
}

uint64_t (*sub_1A83DFABC())(void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void, void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordBulkCopy", @"IMDPersistence");
  off_1EB2EA648 = result;
  return result;
}

void sub_1A83DFAEC(uint64_t a1, void *a2)
{
  v3 = [a2 allValuesSortedByGUIDKeyWithBackupOrder:*(a1 + 32)];
  [*(a1 + 40) addAttachmentsFromFilePaths:v3];
  dispatch_group_leave(*(a1 + 48));
}

void sub_1A83DFB50(uint64_t a1)
{
  v5 = +[IMBalloonPluginManager sharedInstance];
  v2 = [v5 dataSourceForPluginPayload:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1A83DFBC0(id *a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if ([a1[4] count] || a1[5] || IMIsRunningInGameCenter())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Have non-zero attachments to send, ensuring we have transfer capability", buf, 2u);
      }
    }

    sub_1A830701C();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
      }
    }

    sub_1A8306FC4();
  }

  v3 = sub_1A83D3A58(a1[6], a1[7], a1[8], a1[9], 1);
  if (v3)
  {
    if ([a1[6] length])
    {
      v4 = [IMServiceImpl serviceWithInternalName:a1[6]];
      [v3 _targetToService:v4 newComposition:1 supportsEncryption:0];
    }

    else
    {
      [v3 refreshServiceForSending];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A83DFFDC;
    aBlock[3] = &unk_1E7814B78;
    v23 = a1[4];
    v7 = v3;
    v24 = v7;
    v8 = a1[10];
    v9 = a1[11];
    v10 = a1[12];
    v11 = a1[13];
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v25 = v13;
    v26 = v12;
    v27 = a1[14];
    v28 = a1[5];
    v29 = a1[15];
    v30 = a1[16];
    v14 = _Block_copy(aBlock);
    v15 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83E0874;
    block[3] = &unk_1E7810190;
    v19 = v7;
    v20 = a1[6];
    v21 = v14;
    v16 = v14;
    dispatch_after(v15, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = a1[7];
        *buf = 138412290;
        v32 = v6;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Cannot get chat for destinations: %@", buf, 0xCu);
      }
    }

    sub_1A8307074();
  }
}

void sub_1A83DFFDC(void **a1)
{
  v2 = sub_1A83D775C(a1[4]);
  sub_1A83E004C(a1[5], a1[6], a1[7], a1[8], a1[9], v2, a1[10], a1[11], a1[12], a1[13]);
  sub_1A8307074();
}

BOOL sub_1A83E004C(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v81 = *MEMORY[0x1E69E9840];
  v17 = a1;
  v66 = a2;
  v64 = a3;
  v58 = a4;
  v65 = a5;
  v61 = a6;
  v59 = a7;
  v60 = a8;
  v62 = a9;
  v63 = a10;
  v18 = IMOSLoggingEnabled();
  v67 = v17;
  if (v17)
  {
    if (v18)
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        if (v62)
        {
          [v62 timeIntervalSinceNow];
        }

        else
        {
          v20 = 0;
        }

        *buf = 138412802;
        v76 = v17;
        v77 = 2048;
        v78 = v20;
        v79 = 2112;
        v80 = v65;
        _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "About to send message for chat: %@ time delay: %lf associatedMessageGUID: %@", buf, 0x20u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v17 participants];
        *buf = 138412290;
        v76 = v23;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_INFO, "About to send message to: %@", buf, 0xCu);
      }
    }

    v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v61;
    v24 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
    if (v24)
    {
      v25 = *v71;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v71 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v70 + 1) + 8 * i);
          v28 = [v27 fileURL];
          v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:v28];
          v30 = +[IMFileTransferCenter sharedInstance];
          [v30 setIssueSandboxEstensionsForTransfers:1];

          v31 = +[IMFileTransferCenter sharedInstance];
          v32 = [v31 createNewOutgoingTransferWithLocalFileURL:v29];

          v33 = +[IMFileTransferCenter sharedInstance];
          [v33 setIssueSandboxEstensionsForTransfers:0];

          v34 = +[IMFileTransferCenter sharedInstance];
          v35 = [v34 transferForGUID:v32];

          if ([v27 isSensitive])
          {
            [v35 setCommSafetySensitive:2];
          }

          [v69 addObject:v32];
          v36 = +[IMFileTransferCenter sharedInstance];
          [v36 registerTransferWithDaemon:v32];
        }

        v24 = [obj countByEnumeratingWithState:&v70 objects:v74 count:16];
      }

      while (v24);
    }

    v37 = objc_alloc(MEMORY[0x1E696AAB0]);
    if ([(__CFString *)v66 length])
    {
      v38 = v66;
    }

    else
    {
      v38 = &stru_1F1B76F98;
    }

    v39 = [v37 initWithString:v38];
    v40 = [v39 __im_attributedStringByAppendingFileTransfers:v69];
    v41 = [v40 __im_attributedStringByAssigningMessagePartNumbers];
    v42 = v41;
    if (v64)
    {
      v43 = [v41 mutableCopy];
      [v43 appendAttributedString:v64];
      v44 = [v43 copy];

      v42 = v44;
    }

    v45 = [v65 length] == 0;
    v46 = [IMMessage alloc];
    v47 = v46;
    if (v45)
    {
      if (!v62)
      {
        v51 = [MEMORY[0x1E695DF00] date];
        v49 = [(IMMessage *)v47 initWithSender:0 time:v51 text:v42 messageSubject:0 fileTransferGUIDs:v69 flags:5 error:0 guid:v58 subject:0 balloonBundleID:v59 payloadData:v60 expressiveSendStyleID:0 threadIdentifier:0 scheduleType:0 scheduleState:0];

        goto LABEL_39;
      }

      v48 = [(IMMessage *)v46 initWithSender:0 time:v62 text:v42 messageSubject:0 fileTransferGUIDs:v69 flags:5 error:0 guid:v58 subject:0 balloonBundleID:v59 payloadData:v60 expressiveSendStyleID:0 threadIdentifier:0 scheduleType:1 scheduleState:2];
    }

    else
    {
      if (!v62)
      {
        v50 = [MEMORY[0x1E695DF00] date];
        v49 = [(IMMessage *)v47 _initWithSender:0 time:v50 timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:v42 messageSubject:0 fileTransferGUIDs:v69 flags:5 error:0 guid:v58 messageID:0 subject:0 balloonBundleID:v59 payloadData:v60 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:v65 associatedMessageType:2 associatedMessageRange:0 associatedMessageEmoji:0x7FFFFFFFFFFFFFFFLL messageSummaryInfo:0 threadIdentifier:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:0, 0];

        goto LABEL_39;
      }

      v48 = [(IMMessage *)v46 _initWithSender:0 time:v62 timeRead:0 timeDelivered:0 timePlayed:0 plainText:0 text:v42 messageSubject:0 fileTransferGUIDs:v69 flags:5 error:0 guid:v58 messageID:0 subject:0 balloonBundleID:v59 payloadData:v60 expressiveSendStyleID:0 timeExpressiveSendPlayed:0 associatedMessageGUID:v65 associatedMessageType:2 associatedMessageRange:0 associatedMessageEmoji:0x7FFFFFFFFFFFFFFFLL messageSummaryInfo:0 threadIdentifier:0 dateEdited:0 dateRecovered:0 scheduleType:0 scheduleState:1, 2];
    }

    v49 = v48;
LABEL_39:
    v52 = +[IMFileTransferCenter sharedInstance];
    [v52 setIssueSandboxEstensionsForTransfers:1];

    [v67 sendMessage:v49];
    v53 = +[IMFileTransferCenter sharedInstance];
    [v53 setIssueSandboxEstensionsForTransfers:0];

    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v55 = [(IMMessage *)v49 guid];
        *buf = 138412546;
        v76 = v55;
        v77 = 2112;
        v78 = v67;
        _os_log_impl(&dword_1A823F000, v54, OS_LOG_TYPE_INFO, "Sent message with guid: %@ to chat: %@", buf, 0x16u);
      }
    }

    if (v63)
    {
      v56 = [(IMMessage *)v49 guid];
      v63[2](v63, v56);
    }

    goto LABEL_46;
  }

  if (v18)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Cannot send message without chat", buf, 2u);
    }
  }

LABEL_46:

  return v67 != 0;
}

void sub_1A83E0814(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1A83E01ECLL);
  }

  _Unwind_Resume(a1);
}

void sub_1A83E0874(id *a1)
{
  v2 = [a1[4] account];
  v3 = [v2 service];

  v4 = +[IMServiceImpl iMessageService];
  v5 = v4;
  if (v3 == v4)
  {
  }

  else
  {
    v6 = [a1[5] length];

    if (!v6)
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v10 = 0;
          _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Waiting for registration check before sending", v10, 2u);
        }
      }

      v8 = dispatch_time(0, 4000000000);
      dispatch_after(v8, MEMORY[0x1E69E96A0], a1[6]);
      goto LABEL_14;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_INFO, "Cache hit, send now", buf, 2u);
    }
  }

  (*(a1[6] + 2))();
LABEL_14:
}

void sub_1A83E0A04(id *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  if ([a1[4] count] || a1[5] || IMIsRunningInGameCenter())
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Have non-zero attachments to receive, ensuring we have transfer capability", buf, 2u);
      }
    }

    sub_1A830701C();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v18, OS_LOG_TYPE_INFO, "Setting the chat cap only", buf, 2u);
      }
    }

    sub_1A8306FC4();
  }

  v3 = sub_1A83D3A58(a1[6], a1[7], a1[8], a1[9], 1);
  v4 = v3;
  if (v3)
  {
    [v3 refreshServiceForSending];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A83E0DD4;
    aBlock[3] = &unk_1E7814BC8;
    v23 = a1[4];
    v5 = v4;
    v24 = v5;
    v6 = a1[10];
    v7 = a1[11];
    v8 = a1[12];
    v9 = a1[13];
    *&v10 = v8;
    *(&v10 + 1) = v9;
    *&v11 = v6;
    *(&v11 + 1) = v7;
    v25 = v11;
    v26 = v10;
    v27 = a1[14];
    v28 = a1[5];
    v29 = a1[15];
    v12 = _Block_copy(aBlock);
    v13 = dispatch_time(0, 100000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A83E1494;
    block[3] = &unk_1E7814750;
    v20 = v5;
    v21 = v12;
    v14 = v12;
    dispatch_after(v13, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = a1[7];
        *buf = 138412290;
        v31 = v16;
        _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Cannot get chat for destinations: %@", buf, 0xCu);
      }
    }

    sub_1A8307074();
    v17 = a1[15];
    if (v17)
    {
      v17[2](v17, 0);
    }
  }
}

void sub_1A83E0DD4(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = sub_1A83D775C(*(a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 88);
  v9 = *(a1 + 96);
  v11 = v3;
  v51 = v4;
  v52 = v5;
  v47 = v6;
  v48 = v7;
  v55 = v2;
  v49 = v8;
  v50 = v10;
  v53 = v11;
  v54 = v9;
  if (v11)
  {
    v12 = [v11 account];
    v46 = [v12 imHandleWithID:v51];

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = v11;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "About to insert a received message for chat: %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v67 = v46;
        _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "About to insert a received message from handle: %@", buf, 0xCu);
      }
    }

    v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v55;
    v15 = [obj countByEnumeratingWithState:&v58 objects:buf count:16];
    if (v15)
    {
      v16 = *v59;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v58 + 1) + 8 * i);
          v19 = [v18 fileURL];
          v20 = [MEMORY[0x1E695DFF8] fileURLWithPath:v19];
          v21 = +[IMFileTransferCenter sharedInstance];
          [v21 setIssueSandboxEstensionsForTransfers:1];

          v22 = +[IMFileTransferCenter sharedInstance];
          v23 = [v22 createNewOutgoingTransferWithLocalFileURL:v20];

          v24 = +[IMFileTransferCenter sharedInstance];
          [v24 setIssueSandboxEstensionsForTransfers:0];

          v25 = +[IMFileTransferCenter sharedInstance];
          v26 = [v25 transferForGUID:v23];

          if ([v18 isSensitive])
          {
            [v26 setCommSafetySensitive:2];
          }

          [v57 addObject:v23];
          v27 = +[IMFileTransferCenter sharedInstance];
          [v27 registerTransferWithDaemon:v23];
        }

        v15 = [obj countByEnumeratingWithState:&v58 objects:buf count:16];
      }

      while (v15);
    }

    v28 = objc_alloc(MEMORY[0x1E696AAB0]);
    if ([(__CFString *)v52 length])
    {
      v29 = v52;
    }

    else
    {
      v29 = &stru_1F1B76F98;
    }

    v30 = [v28 initWithString:v29];
    v31 = [v30 __im_attributedStringByAppendingFileTransfers:v57];
    v32 = [v31 __im_attributedStringByAssigningMessagePartNumbers];
    if (v48)
    {
      v33 = v48;
    }

    else
    {
      v33 = [MEMORY[0x1E695DF00] date];
    }

    v35 = v33;
    v36 = [[IMMessage alloc] initWithSender:v46 time:v33 text:v32 messageSubject:0 fileTransferGUIDs:v57 flags:1 error:0 guid:v47 subject:0 balloonBundleID:v49 payloadData:v50 expressiveSendStyleID:0 threadIdentifier:0];
    v37 = +[IMFileTransferCenter sharedInstance];
    [v37 setIssueSandboxEstensionsForTransfers:1];

    v38 = +[IMDaemonController sharedController];
    v39 = [v38 remoteDaemon];
    v40 = [(IMMessage *)v36 _imMessageItem];
    v41 = [v53 chatIdentifier];
    [v39 insertReceivedMessage:v40 forChat:v41 style:objc_msgSend(v53 serviceName:{"chatStyle"), @"iMessage"}];

    v42 = +[IMFileTransferCenter sharedInstance];
    [v42 setIssueSandboxEstensionsForTransfers:0];

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v44 = [(IMMessage *)v36 guid];
        *v62 = 138412546;
        v63 = v44;
        v64 = 2112;
        v65 = v53;
        _os_log_impl(&dword_1A823F000, v43, OS_LOG_TYPE_INFO, "Inserted received message with guid: %@ to chat: %@", v62, 0x16u);
      }
    }

    if (v54)
    {
      v45 = [(IMMessage *)v36 guid];
      v54[2](v54, v45);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v34, OS_LOG_TYPE_INFO, "Cannot receive message without chat", buf, 2u);
      }
    }

    if (v54)
    {
      v54[2](v54, 0);
    }
  }

  sub_1A8307074();
}

void sub_1A83E1494(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  v3 = [v2 service];

  v4 = +[IMServiceImpl iMessageService];

  v5 = IMOSLoggingEnabled();
  if (v3 == v4)
  {
    if (v5)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Cache hit, send now", buf, 2u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (v5)
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Waiting for registration check before sending", v9, 2u);
      }
    }

    v7 = dispatch_time(0, 4000000000);
    dispatch_after(v7, MEMORY[0x1E69E96A0], *(a1 + 40));
  }
}

void sub_1A83E160C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[IMSPIOutgoingAttachmentObject alloc] initWithFileURL:v3 isSensitive:0];

  [v2 addObject:v4];
}

uint64_t (*sub_1A83E1688())(void)
{
  result = MEMORY[0x1AC56C560]("IMDMessageRecordCopyMessageForGUID", @"IMDPersistence");
  off_1EB2EA658 = result;
  return result;
}

void sub_1A83E16B8(uint64_t a1)
{
  v2 = _IMSPIMessageFromRecord(*(a1 + 56), 1, *(a1 + 68), *(a1 + 32), *(a1 + 64));
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1A83E1790;
  v6[3] = &unk_1E7814750;
  v4 = v2;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_async(v3, v6);
  v5 = *(a1 + 56);
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1A83E1790(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [MEMORY[0x1E695DEC8] arrayWithObject:?];
  }

  else
  {
    [MEMORY[0x1E695DEC8] array];
  }
  v2 = ;
  (*(*(a1 + 40) + 16))();
}

BOOL IMMomentShareCacheErrorIsPermanent(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 domain];
    if ([v3 isEqualToString:@"IMMomentShareCacheErrorDomain"])
    {
      v4 = [v2 code] == -1001;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1A83E199C(uint64_t a1)
{
  v2 = [sub_1A83E1A48() sharedMomentSharePhotoLibrary];
  [v2 registerChangeObserver:*(a1 + 32)];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E1B28;
  block[3] = &unk_1E780FCB0;
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id sub_1A83E1A48()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EB2E9D38;
  v7 = qword_1EB2E9D38;
  if (!qword_1EB2E9D38)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A83E3090;
    v3[3] = &unk_1E7811770;
    v3[4] = &v4;
    sub_1A83E3090(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A83E1B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83E1B7C()
{
  v6 = *MEMORY[0x1E69E9840];
  if ((IMIsRunningInImagent() & 1) != 0 || (IMIsRunningInIMDPersistenceAgent() & 1) != 0 || IMIsRunningInMessagesUIProcess())
  {
    v0 = objc_alloc_init(IMMomentShareCache);
    qword_1ED767878 = v0;

    MEMORY[0x1EEE66BB8](v0);
  }

  else
  {
    v1 = [MEMORY[0x1E696AAE8] mainBundle];
    v2 = [v1 bundleIdentifier];

    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = v2;
        _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Not allowing IMMomentShareCache to be created because we're running in %@.", &v4, 0xCu);
      }
    }
  }
}

id sub_1A83E1F6C()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EB2EA668;
  v7 = qword_1EB2EA668;
  if (!qword_1EB2EA668)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A83E3250;
    v3[3] = &unk_1E7811770;
    v3[4] = &v4;
    sub_1A83E3250(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A83E2034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A83E204C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83E213C;
  block[3] = &unk_1E78129F8;
  v7 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v11 = v7;
  v12 = v5;
  v13 = v6;
  v14 = *(a1 + 48);
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t sub_1A83E213C(void *a1)
{
  [*(a1[4] + 8) setObject:0 forKeyedSubscript:a1[5]];
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];

  return [v2 _processFetchedMomentShare:v4 forURLString:v3 error:v5 completionHandlers:v6];
}

id sub_1A83E22A4(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = *MEMORY[0x1E696AA08];
    v9[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"IMMomentShareCacheErrorDomain" code:a1 userInfo:v5];

  return v6;
}

void sub_1A83E27C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1A83E281C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1A83E2B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1A83E2B6C(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(sub_1A83E3464()) initWithFirst:v1 second:0];

  return v2;
}

id sub_1A83E2BC0(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(sub_1A83E3464()) initWithFirst:0 second:v1];

  return v2;
}

void sub_1A83E2CC4(uint64_t a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [*(*(a1 + 32) + 16) allKeys];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = sub_1A83E2E6C;
  v13 = &unk_1E7814D18;
  v4 = *(a1 + 40);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = v2;
  v16 = v5;
  [v3 enumerateObjectsUsingBlock:&v10];

  if ([v5 count])
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1A84E4D58(v6);
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    v8 = *(a1 + 32);
    v17 = @"IMMomentShareCacheNotificationURLStringsUserInfoKey";
    v18[0] = v5;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    [v7 postNotificationName:@"IMMomentShareCacheDidChangeNotification" object:v8 userInfo:v9];
  }
}

void sub_1A83E2E6C(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(*(a1 + 32) + 16) objectForKeyedSubscript:v3];
  v5 = [v4 first];
  if (v5)
  {
    v6 = [*(a1 + 40) changeDetailsForObject:v5];
    if (v6)
    {
      [*(a1 + 48) addObject:v3];
      v7 = [v6 objectWasDeleted];
      v8 = IMLogHandleForCategory();
      v9 = v8;
      if (v7)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v5 uuid];
          v14 = 138543618;
          v15 = v10;
          v16 = 2112;
          v17 = v3;
          _os_log_impl(&dword_1A823F000, v9, OS_LOG_TYPE_DEFAULT, "Moment share was deleted: %{public}@, URL: %@", &v14, 0x16u);
        }

        v11 = sub_1A83E22A4(-1001, 0);
        v12 = sub_1A83E2BC0(v11);
      }

      else
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          sub_1A84E4D9C(v5);
        }

        v11 = [v6 objectAfterChanges];
        v12 = sub_1A83E2B6C(v11);
      }

      v13 = v12;
      [*(*(a1 + 32) + 16) setObject:v12 forKeyedSubscript:v3];
    }
  }
}

Class sub_1A83E3090(uint64_t a1)
{
  sub_1A83E30E8();
  result = objc_getClass("PHPhotoLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E4E30();
  }

  qword_1EB2E9D38 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A83E30E8()
{
  v3 = *MEMORY[0x1E69E9840];
  v0[0] = 0;
  if (!qword_1EB2E9D98)
  {
    v0[1] = MEMORY[0x1E69E9820];
    v0[2] = 3221225472;
    v0[3] = sub_1A83E31DC;
    v0[4] = &unk_1E78102B8;
    v0[5] = v0;
    v1 = xmmword_1E7814D38;
    v2 = 0;
    qword_1EB2E9D98 = _sl_dlopen();
  }

  if (!qword_1EB2E9D98)
  {
    sub_1A84E4EAC(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t sub_1A83E31DC(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB2E9D98 = result;
  return result;
}

Class sub_1A83E3250(uint64_t a1)
{
  sub_1A83E30E8();
  result = objc_getClass("PHMomentShare");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E4F2C();
  }

  qword_1EB2EA668 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_1A83E32A8(uint64_t a1)
{
  v2 = sub_1A83E32F8();
  result = dlsym(v2, "PXIsMomentShareErrorPermanent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_1EB2EA670 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1A83E32F8()
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (!qword_1EB2EA678)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = sub_1A83E33F0;
    v2[4] = &unk_1E78102B8;
    v2[5] = v2;
    v3 = xmmword_1E7814D50;
    v4 = 0;
    qword_1EB2EA678 = _sl_dlopen();
  }

  v0 = qword_1EB2EA678;
  if (!qword_1EB2EA678)
  {
    sub_1A84E4FA8(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t sub_1A83E33F0(uint64_t a1)
{
  result = _sl_dlopen();
  qword_1EB2EA678 = result;
  return result;
}

id sub_1A83E3464()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1EB2EA680;
  v7 = qword_1EB2EA680;
  if (!qword_1EB2EA680)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1A83E3544;
    v3[3] = &unk_1E7811770;
    v3[4] = &v4;
    sub_1A83E3544(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A83E352C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_1A83E3544(uint64_t a1)
{
  sub_1A83E32F8();
  result = objc_getClass("PXTwoTuple");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1A84E5028();
  }

  qword_1EB2EA680 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A83E35B0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1A83E35CC(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void _IMIntentsApiInit(uint64_t result, uint64_t a2)
{
  if (qword_1EB2EA010 != -1)
  {
    sub_1A84E50A4();
  }
}

uint64_t sub_1A83E4C88()
{
  qword_1EB2EA058 = MEMORY[0x1AC56C550](@"INInteraction", @"Intents");
  qword_1EB2EA038 = MEMORY[0x1AC56C550](@"INSendMessageIntent", @"Intents");
  qword_1EB2EA030 = MEMORY[0x1AC56C550](@"INSendMessageIntentResponse", @"Intents");
  qword_1EB2E9218 = MEMORY[0x1AC56C550](@"INUnsendMessagesIntent", @"Intents");
  qword_1EB2E9210 = MEMORY[0x1AC56C550](@"INUnsendMessagesIntentResponse", @"Intents");
  qword_1EB2EA048 = MEMORY[0x1AC56C550](@"INPerson", @"Intents");
  qword_1EB2EA040 = MEMORY[0x1AC56C550](@"INPersonHandle", @"Intents");
  qword_1EB2EA050 = MEMORY[0x1AC56C550](@"INMessage", @"Intents");
  qword_1EB2EA028 = MEMORY[0x1AC56C550](@"INSpeakableString", @"Intents");
  result = MEMORY[0x1AC56C550](@"INImage", @"Intents");
  qword_1EB2EA060 = result;
  return result;
}

void *sub_1A83E5108()
{
  result = MEMORY[0x1AC56C560]("INPersonHandleLabelForCNLabeledValue", @"Intents");
  off_1EB2EA688 = result;
  return result;
}

void *sub_1A83E5138()
{
  result = MEMORY[0x1AC56C560]("INPersonHandleLabelForCNLabeledValue", @"Intents");
  off_1EB2EA698 = result;
  return result;
}

void sub_1A83E53F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1A83E540C(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_1A83E7F34(uint64_t a1)
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v6[0] = @"ResultSuccess";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[1] = @"ResultKeyNewState";
  v7[0] = v3;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 33)];
  v7[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:2];
  [v2 postNotificationName:@"com.apple.IMCore.IMCloudKitHooks.SetEnabledReturned" object:0 userInfo:v5];
}

void sub_1A83E8314(uint64_t a1)
{
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
  [v7 setObject:v2 forKey:@"ResultSuccess"];

  if (*(a1 + 56) == 1)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*(a1 + 48)];
    [v7 setObject:v3 forKey:@"ResultAdditionalStorageRequired"];

    v4 = *(a1 + 32);
    if (v4)
    {
      [v7 setObject:v4 forKey:@"ResultiCloudAccountId"];
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    [v7 setObject:v5 forKey:@"Error"];
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"com.apple.IMCore.IMCloudKitHooks.AdditionalStorageCheckReturned" object:0 userInfo:v7];
}

void sub_1A83E8674(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = @"ResultSuccess";
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 32)];
  v6[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"com.apple.IMCore.IMCloudKitHooks.tryToDisableAllDevicesReturned" object:0 userInfo:v4];
}

id sub_1A83E95D8(void *a1)
{
  v1 = a1;
  v2 = sub_1A83E9674();

  return v2;
}

id sub_1A83E9674()
{
  v1 = [v0 transferGUID];
  if (!v1)
  {
    sub_1A84E5DBC();
    v1 = sub_1A84E5D8C();
  }

  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 transferForGUID_];

    if (v4)
    {
      v5 = [v4 commSafetySensitive];

      v1 = v4;
    }

    else
    {
      v5 = 0;
      v1 = v3;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_1A83E9754@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

void *sub_1A83E97D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1A83E9800@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1A83E98B0()
{
  v0 = sub_1A84E5DBC();
  v1 = MEMORY[0x1AC56AA10](v0);

  return v1;
}

uint64_t sub_1A83E98EC(uint64_t a1)
{
  sub_1A84E5DBC();
  sub_1A84E5E5C();
}

uint64_t sub_1A83E9940(uint64_t a1)
{
  sub_1A84E5DBC();
  sub_1A84E684C();
  sub_1A84E5E5C();
  v1 = sub_1A84E687C();

  return v1;
}

uint64_t sub_1A83E99B4(uint64_t a1, id *a2)
{
  result = sub_1A84E5D9C();
  *a2 = 0;
  return result;
}

uint64_t sub_1A83E9A2C(uint64_t a1, id *a2)
{
  v3 = sub_1A84E5DAC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1A83E9AAC@<X0>(uint64_t *a2@<X8>)
{
  sub_1A84E5DBC();
  v3 = sub_1A84E5D8C();

  *a2 = v3;
  return result;
}

uint64_t sub_1A83E9AF0()
{
  v1 = *v0;
  sub_1A84E684C();
  MEMORY[0x1AC56B350](v1);
  return sub_1A84E687C();
}

uint64_t sub_1A83E9B64(uint64_t a1)
{
  v2 = *v1;
  sub_1A84E684C();
  MEMORY[0x1AC56B350](v2);
  return sub_1A84E687C();
}

uint64_t sub_1A83E9BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1A83EA070(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1A83E9C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A83E9D50(void *a1, uint64_t *a2)
{
  v2 = sub_1A84E5DBC();
  v4 = v3;
  if (v2 == sub_1A84E5DBC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1A84E67AC();
  }

  return v7 & 1;
}

uint64_t sub_1A83E9DD8(uint64_t a1)
{
  v2 = sub_1A83E9C78(&qword_1EB2E5B90, type metadata accessor for Key, &unk_1A85005F4);
  v3 = sub_1A83E9C78(&qword_1EB2E5B98, type metadata accessor for Key, &unk_1A850050C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A83E9E94@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1A84E5D8C();

  *a2 = v3;
  return result;
}

uint64_t sub_1A83E9EDC(uint64_t a1)
{
  v2 = sub_1A83E9C78(&qword_1EB2E5B48, type metadata accessor for FileAttributeKey, &unk_1A85003DC);
  v3 = sub_1A83E9C78(&qword_1EB2E5B50, type metadata accessor for FileAttributeKey, &unk_1A85002EC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1A83EA070(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1A83EA0F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A83EA110(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1A83EA2FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id DaemonConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DaemonConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A83EA4C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1A83EA52C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_beginAccess();
    *(a3 + 16) = a2;

    swift_beginAccess();
    *(a4 + 16) = 1;
  }

  return result;
}

uint64_t sub_1A83EA5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1A84E5D3C();

  v4(a2, v5);
}

uint64_t sub_1A83EA63C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v7 = IMSetupInfoAllowedClasses();
    if (!v7)
    {
      sub_1A83EA2FC(&unk_1EB2E6698, &qword_1A8500950);
      sub_1A84E5FFC();
      v7 = sub_1A84E5FEC();
    }

    v8 = [a2 dictionaryForKey:"setupInfo" allowedClasses:v7];

    if (v8)
    {
      v9 = sub_1A84E5D3C();
    }

    else
    {
      v9 = 0;
    }

    swift_beginAccess();
    *(a3 + 16) = v9;

    result = swift_beginAccess();
    *(a4 + 16) = 1;
  }

  return result;
}

void sub_1A83EA774(uint64_t a1)
{
  v2 = sub_1A84E5CFC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v5 = sub_1A84E5A4C();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v6 = sub_1A84E5D1C();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_1ED7675D0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = sub_1A84E5C9C();
  sub_1A824431C(v7, qword_1ED7679F8);
  v8 = sub_1A84E5C7C();
  v9 = sub_1A84E617C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1A823F000, v8, v9, "Disconnecting from daemon", v10, 2u);
    MEMORY[0x1AC56D3F0](v10, -1, -1);
  }

  v11 = *a1;
  [*a1 invalidate];

  *a1 = 0;
  *(a1 + 24) = 1;
}

void sub_1A83EA978(void *a1, const char *a2, ...)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  sub_1A824431C(v4, qword_1ED7679F8);
  v5 = a1;
  oslog = sub_1A84E5C7C();
  v6 = sub_1A84E619C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_1A84E67FC();
    v11 = sub_1A82446BC(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1A823F000, oslog, v6, a2, v7, 0xCu);
    sub_1A8244788(v8);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
    MEMORY[0x1AC56D3F0](v7, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1A83EAB10(void *a1)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A84E5C9C();
  sub_1A824431C(v2, qword_1ED7679F8);
  v3 = a1;
  v4 = sub_1A84E5C7C();
  v5 = sub_1A84E617C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = [v3 processIdentifier];

    _os_log_impl(&dword_1A823F000, v4, v5, "Connection to PID %d was interrupted", v6, 8u);
    MEMORY[0x1AC56D3F0](v6, -1, -1);
  }

  else
  {

    v4 = v3;
  }

  return sub_1A84E5A6C();
}

uint64_t sub_1A83EAC64(void *a1, void *a2)
{
  if (qword_1ED7675D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1A84E5C9C();
  sub_1A824431C(v4, qword_1ED7679F8);
  v5 = a1;
  v6 = sub_1A84E5C7C();
  v7 = sub_1A84E617C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = [v5 processIdentifier];

    _os_log_impl(&dword_1A823F000, v6, v7, "Connection to PID %d was invalidated", v8, 8u);
    MEMORY[0x1AC56D3F0](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  *(swift_allocObject() + 16) = a2;
  v9 = a2;
  sub_1A84E5A6C();
}

uint64_t sub_1A83EAEA4(uint64_t a1)
{
  sub_1A83EA2FC(&qword_1EB2E65A8, &qword_1A8500738);
  sub_1A84E5A5C();
  return v2;
}

uint64_t (*DaemonConnection.onSetupComplete.getter())(uint64_t a1)
{
  sub_1A83EA2FC(&qword_1EB2E65B0, &qword_1A8500740);
  sub_1A84E5A5C();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1A83EBB5C;
}

uint64_t sub_1A83EB0E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1A84E5D3C();

  v2(v3);
}

double sub_1A83EB1E0@<D0>(_OWORD *a1@<X8>)
{
  sub_1A83EA2FC(&qword_1EB2E65B0, &qword_1A8500740);
  sub_1A84E5A5C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1A83EB258(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    a1 = swift_allocObject();
    v3 = a1;
    a1[2] = v1;
    a1[3] = v2;
    v4 = sub_1A83ECC40;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1A8242AE8(v1, v2);
  sub_1A84E5A5C();
  return sub_1A8245638(v4, v3);
}

uint64_t sub_1A83EB344@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1A83ECC14;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1A8242AE8(v3, v4);
}

void (*DaemonConnection.onSetupComplete.modify(uint64_t (***a1)()))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + OBJC_IVAR___IMDaemonConnection_queue);
  sub_1A83EA2FC(&qword_1EB2E65B0, &qword_1A8500740);
  sub_1A84E5A5C();
  v5 = v4[2];
  if (v5)
  {
    v6 = v4[3];
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = sub_1A83ECC40;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *v4 = v8;
  v4[1] = v7;
  return sub_1A83EB4BC;
}

void sub_1A83EB4BC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  if (a2)
  {
    sub_1A8242AE8(v3, v4);
    sub_1A84E5A5C();
    sub_1A8245638(v3, v4);
    sub_1A8245638(*v2, v2[1]);
  }

  else
  {
    sub_1A84E5A5C();
    sub_1A8245638(v3, v4);
  }

  free(v2);
}

uint64_t DaemonConnection.connect(capabilities:context:contextChanged:)(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = v3;

  v8 = v3;
  sub_1A84E5A6C();
}

uint64_t sub_1A83EB6D0(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  sub_1A84E5A6C();
}

uint64_t sub_1A83EB760(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a1;
  v5 = a1;
  sub_1A84E5A6C();
}

uint64_t sub_1A83EB800()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1A83EB8F4;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A83EB8F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1A83EBA0C, 0, 0);
}

unint64_t sub_1A83EBA20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6668, &qword_1A8500930);
    v3 = sub_1A84E657C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1A824B390(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A83EBB5C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1A83EBBEC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A83EBC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1A83EBC98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A83EBCE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A83EBD30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6630, &qword_1A85008F8);
    v3 = sub_1A84E657C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A824B390(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EBE2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6610, &qword_1A85008D8);
    v3 = sub_1A84E657C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8243D74(v4, &v11, &qword_1EB2E6618, &unk_1A85008E0);
      v5 = v11;
      result = sub_1A8490560();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1A8243DDC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EBF90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1A83EA2FC(a2, a3);
    v5 = sub_1A84E657C();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;
      result = sub_1A8489DCC(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC07C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  sub_1A83EA2FC(&qword_1EB2E6648, &qword_1A8500910);
  v3 = sub_1A84E657C();

  v4 = *(a1 + 144);
  *&v29[96] = *(a1 + 128);
  *&v29[112] = v4;
  *&v29[128] = *(a1 + 160);
  *&v29[144] = *(a1 + 176);
  v5 = *(a1 + 80);
  *&v29[32] = *(a1 + 64);
  *&v29[48] = v5;
  v6 = *(a1 + 112);
  *&v29[64] = *(a1 + 96);
  *&v29[80] = v6;
  v7 = *(a1 + 48);
  *v29 = *(a1 + 32);
  *&v29[16] = v7;
  v8 = v29[0];
  sub_1A8243D74(v29, v28, &qword_1EB2E6650, &qword_1A8500918);
  result = sub_1A8489DCC(v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = a1 + 184;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v8;
    v12 = (v3[7] + 144 * result);
    *v12 = *&v29[8];
    v13 = *&v29[24];
    v14 = *&v29[40];
    v15 = *&v29[72];
    v12[3] = *&v29[56];
    v12[4] = v15;
    v12[1] = v13;
    v12[2] = v14;
    v16 = *&v29[88];
    v17 = *&v29[104];
    v18 = *&v29[136];
    v12[7] = *&v29[120];
    v12[8] = v18;
    v12[5] = v16;
    v12[6] = v17;
    v19 = v3[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v3[2] = v21;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v22 = v11 + 152;
    v23 = *(v11 + 112);
    *&v29[96] = *(v11 + 96);
    *&v29[112] = v23;
    *&v29[128] = *(v11 + 128);
    *&v29[144] = *(v11 + 144);
    v24 = *(v11 + 48);
    *&v29[32] = *(v11 + 32);
    *&v29[48] = v24;
    v25 = *(v11 + 80);
    *&v29[64] = *(v11 + 64);
    *&v29[80] = v25;
    v26 = *(v11 + 16);
    *v29 = *v11;
    *&v29[16] = v26;
    v8 = v29[0];
    sub_1A8243D74(v29, v28, &qword_1EB2E6650, &qword_1A8500918);
    result = sub_1A8489DCC(v8);
    v11 = v22;
    if (v27)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1A83EC260(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6640, &qword_1A8500908);
    v3 = sub_1A84E657C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1A8489DCC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&unk_1EB2E6620, &qword_1A8509AD0);
    v3 = sub_1A84E657C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1A8243D74(v4, v13, &qword_1EB2E8790, &qword_1A85008F0);
      result = sub_1A8250C0C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1A8243DDC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC490(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E6608, &qword_1A85008D0);
    v3 = sub_1A84E657C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A8489EA0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E65F0, &qword_1A8500898);
    v3 = sub_1A84E657C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_1A8489F0C(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC6AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A83EA2FC(&qword_1EB2E65D0, &qword_1A8500878);
    v3 = sub_1A84E657C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1A8489FA0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A83EC7B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1A83EA2FC(a2, a3);
    v5 = sub_1A84E657C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1A824B390(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A83EC8C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A824FBE0;

  return sub_1A8248724(v2, v3, v4);
}

uint64_t sub_1A83EC988@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1A8244354(a1);
  *a2 = *(a1 + 16);

  return swift_unknownObjectRetain();
}

uint64_t sub_1A83EC9D4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A83ECA54()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1A83ECAAC(char a1)
{
  v2 = IMGetDaemonProtocol();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = objc_allocWithZone(MEMORY[0x1E69A80D0]);
  aBlock[4] = sub_1A8246FEC;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A8247230;
  aBlock[3] = &unk_1F1B717C0;
  v6 = _Block_copy(aBlock);

  [v5 initWithProtocol:v2 forwardingHandler:v6];

  _Block_release(v6);

  return swift_dynamicCastObjCProtocolUnconditional();
}

uint64_t ImportExport.ExportedAttachmentStatistics.downloadErrors.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

double ImportExport.ExportedAttachmentStatistics.averageDownloadSpeed.getter()
{
  v1 = *(v0 + 40);
  result = 0.0;
  if (v1 > 0.0)
  {
    return *(v0 + 32) / v1;
  }

  return result;
}

uint64_t ImportExport.ExportedAttachmentStatistics.init(downloadCount:downloadFailureCount:downloadErrors:missingCount:totalDownloadBytes:totalDownloadSeconds:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  return result;
}

void ImportExport.ExportedAttachmentStatistics.init()(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = MEMORY[0x1E69E7CC0];
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
}

uint64_t sub_1A83ECE34()
{
  v1 = *v0;
  sub_1A84E684C();
  MEMORY[0x1AC56B350](v1);
  return sub_1A84E687C();
}

uint64_t sub_1A83ECE7C(uint64_t a1)
{
  v2 = *v1;
  sub_1A84E684C();
  MEMORY[0x1AC56B350](v2);
  return sub_1A84E687C();
}

uint64_t sub_1A83ECEC0()
{
  v1 = 0x64616F6C6E776F64;
  v2 = *v0;
  v3 = 0x43676E697373696DLL;
  v4 = 0xD000000000000012;
  if (v2 != 4)
  {
    v4 = 0xD000000000000014;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v2 != 1)
  {
    v5 = 0x64616F6C6E776F64;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A83ECF9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A83F0410(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A83ECFDC(uint64_t a1)
{
  v2 = sub_1A83ED308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83ED018(uint64_t a1)
{
  v2 = sub_1A83ED308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ExportedAttachmentStatistics.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E6D60, &qword_1A8500980);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v17 = v1[2];
  v18 = v8;
  v16 = v9;
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  sub_1A82471E0(v11, v10);
  sub_1A83ED308();
  sub_1A84E68AC();
  v25 = 0;
  sub_1A84E673C();
  if (!v2)
  {
    v14 = v17;
    v24 = 1;
    sub_1A84E673C();
    v23 = v14;
    v22 = 2;
    sub_1A83EA2FC(&qword_1EB2E6D70, &qword_1A8500988);
    sub_1A83ED654(&qword_1EB2E6D78, &qword_1EB2E6D80, &protocol conformance descriptor for ImportExport.AttachmentDownloadError, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    v21 = 3;
    sub_1A84E673C();
    v20 = 4;
    sub_1A84E673C();
    v19 = 5;
    sub_1A84E66EC();
  }

  return (*(v5 + 8))(v7, v13);
}

unint64_t sub_1A83ED308()
{
  result = qword_1EB2E6D68;
  if (!qword_1EB2E6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6D68);
  }

  return result;
}

uint64_t ImportExport.ExportedAttachmentStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E6D88, &qword_1A8500990);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A83ED308();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(a1);
  }

  v24 = 0;
  v9 = sub_1A84E667C();
  v23 = 1;
  v10 = sub_1A84E667C();
  sub_1A83EA2FC(&qword_1EB2E6D70, &qword_1A8500988);
  v21 = 2;
  sub_1A83ED654(&qword_1EB2E6D90, &qword_1EB2E6D98, &protocol conformance descriptor for ImportExport.AttachmentDownloadError, MEMORY[0x1E69E6330]);
  sub_1A84E666C();
  v17 = v22;
  v20 = 3;
  v16 = sub_1A84E667C();
  v19 = 4;
  v15 = sub_1A84E667C();
  v18 = 5;
  sub_1A84E662C();
  v13 = v12;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  a2[1] = v10;
  v14 = v16;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v15;
  a2[5] = v13;

  sub_1A8244788(a1);
}

uint64_t sub_1A83ED654(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E6D70, &qword_1A8500988);
    sub_1A83ED6DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A83ED6DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ImportExport.AttachmentDownloadError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A83ED750()
{
  xmmword_1EB2E6D30 = 0uLL;
  qword_1EB2E6D40 = MEMORY[0x1E69E7CC0];
  unk_1EB2E6D48 = 0;
  qword_1EB2E6D50 = 0;
  qword_1EB2E6D58 = 0;
}

uint64_t static ImportExport.ExportedAttachmentStatistics.zero.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB2E6D40;
  v3 = qword_1EB2E6D58;
  *a1 = xmmword_1EB2E6D30;
  *(a1 + 16) = v2;
  *(a1 + 24) = unk_1EB2E6D48;
  *(a1 + 40) = v3;
}

uint64_t static ImportExport.ExportedAttachmentStatistics.zero.setter(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *&xmmword_1EB2E6D30 = v1;
  *(&xmmword_1EB2E6D30 + 1) = v2;
  qword_1EB2E6D40 = v3;
  unk_1EB2E6D48 = v4;
  qword_1EB2E6D50 = v5;
  qword_1EB2E6D58 = v6;
}

uint64_t (*static ImportExport.ExportedAttachmentStatistics.zero.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *static ImportExport.ExportedAttachmentStatistics.- infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v3 = *result - *a2;
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2[1];
  v5 = result[1];
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if (v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result[3];
  v9 = a2[3];
  v6 = __OFSUB__(v8, v9);
  v10 = v8 - v9;
  if (v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result[4];
  v12 = a2[4];
  v6 = __OFSUB__(v11, v12);
  v13 = v11 - v12;
  if (!v6)
  {
    v14 = result[2];
    *a3 = v3;
    a3[1] = v7;
    a3[2] = v14;
    a3[3] = v10;
    a3[4] = v13;
    a3[5] = 0;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *static ImportExport.ExportedAttachmentStatistics.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *result + *a2;
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = a2[1];
  v6 = result[1];
  v7 = v6 + v5;
  if (__OFADD__(v6, v5))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = result[3];
  v9 = result[4];
  v10 = a2[3];
  v11 = a2[4];
  v13 = result[2];

  result = sub_1A83EE58C(v12, &qword_1EB2E6EE8, &unk_1A8500CD0, type metadata accessor for ImportExport.AttachmentDownloadError, type metadata accessor for ImportExport.AttachmentDownloadError);
  if (__OFADD__(v8, v10))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (!__OFADD__(v9, v11))
  {
    *a3 = v4;
    a3[1] = v7;
    a3[2] = v13;
    a3[3] = v8 + v10;
    a3[4] = v9 + v11;
    a3[5] = 0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1A83EDAA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_1EB2E6D40;
  v3 = qword_1EB2E6D58;
  *a1 = xmmword_1EB2E6D30;
  *(a1 + 16) = v2;
  *(a1 + 24) = unk_1EB2E6D48;
  *(a1 + 40) = v3;
}

uint64_t sub_1A83EDB44(__int128 *a1, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *(a2 + 5);
  v11 = *a2;
  v12 = v2;
  v13 = *(a2 + 24);
  v14 = v3;
  v4 = *(a1 + 2);
  v5 = *(a1 + 5);
  v7 = *a1;
  v8 = v4;
  v9 = *(a1 + 24);
  v10 = v5;
  static ImportExport.ExportedAttachmentStatistics.+ infix(_:_:)(&v7, &v11, a1);
}

void *sub_1A83EDBD0(void *result, void *a2)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result[1];
  v3 = a2[1];
  v4 = __OFSUB__(v2, v3);
  v5 = v2 - v3;
  if (v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = a2[3];
  v7 = result[3];
  v4 = __OFSUB__(v7, v6);
  v8 = v7 - v6;
  if (v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = a2[4];
  v10 = result[4];
  v4 = __OFSUB__(v10, v9);
  v11 = v10 - v9;
  if (!v4)
  {
    *result -= *a2;
    result[1] = v5;
    result[3] = v8;
    result[4] = v11;
    result[5] = 0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t ImportExport.ExportedAttachmentStatistics.format(report:)(uint64_t a1)
{
  v3 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  v59 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v8 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  rawValue = *v1;
  v10 = sub_1A84E676C();
  v12 = v11;
  v60 = a1;
  v13 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1A83EEBEC(0, *(v13 + 2) + 1, 1, v13);
  }

  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1A83EEBEC((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[32 * v15];
  strcpy(v16 + 32, "downloadCount");
  *(v16 + 23) = -4864;
  *(v16 + 6) = v10;
  *(v16 + 7) = v12;
  *(v60 + 16) = v13;
  rawValue = v6;
  v17 = sub_1A84E676C();
  v20 = *(v13 + 2);
  v19 = *(v13 + 3);
  if (v20 >= v19 >> 1)
  {
    v50 = v17;
    v51 = v18;
    v52 = sub_1A83EEBEC((v19 > 1), v20 + 1, 1, v13);
    v18 = v51;
    v13 = v52;
    v17 = v50;
  }

  *(v13 + 2) = v20 + 1;
  v21 = &v13[32 * v20];
  *(v21 + 4) = 0xD000000000000014;
  *(v21 + 5) = 0x80000001A852F210;
  *(v21 + 6) = v17;
  *(v21 + 7) = v18;
  v22 = v60;
  *(v60 + 16) = v13;
  rawValue = v7;
  v23 = sub_1A84E676C();
  v26 = *(v13 + 2);
  v25 = *(v13 + 3);
  if (v26 >= v25 >> 1)
  {
    v53 = v23;
    v54 = v24;
    v55 = sub_1A83EEBEC((v25 > 1), v26 + 1, 1, v13);
    v24 = v54;
    v13 = v55;
    v23 = v53;
  }

  *(v13 + 2) = v26 + 1;
  v27 = &v13[32 * v26];
  strcpy(v27 + 32, "missingCount");
  v27[45] = 0;
  *(v27 + 23) = -5120;
  *(v27 + 6) = v23;
  *(v27 + 7) = v24;
  *(v22 + 16) = v13;
  rawValue = v9;
  v28 = sub_1A84E676C();
  v31 = *(v13 + 2);
  v30 = *(v13 + 3);
  if (v31 >= v30 >> 1)
  {
    v56 = v28;
    v57 = v29;
    v58 = sub_1A83EEBEC((v30 > 1), v31 + 1, 1, v13);
    v29 = v57;
    v13 = v58;
    v28 = v56;
  }

  *(v13 + 2) = v31 + 1;
  v32 = &v13[32 * v31];
  *(v32 + 4) = 0xD000000000000012;
  *(v32 + 5) = 0x80000001A852F230;
  *(v32 + 6) = v28;
  *(v32 + 7) = v29;
  *(v22 + 16) = v13;
  rawValue = 0;
  v62 = 0xE000000000000000;
  sub_1A84E60EC();
  v33 = rawValue;
  v34 = v62;
  v36 = *(v13 + 2);
  v35 = *(v13 + 3);
  if (v36 >= v35 >> 1)
  {
    v13 = sub_1A83EEBEC((v35 > 1), v36 + 1, 1, v13);
  }

  *(v13 + 2) = v36 + 1;
  v37 = &v13[32 * v36];
  *(v37 + 4) = 0xD000000000000014;
  *(v37 + 5) = 0x80000001A852F250;
  *(v37 + 6) = v33;
  *(v37 + 7) = v34;
  *(v22 + 16) = v13;
  v38 = v8[2];
  v39._rawValue = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    rawValue = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v38, 0);
    v39._rawValue = rawValue;
    v40 = v8 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v41 = *(v59 + 72);
    do
    {
      sub_1A83EFFDC(v40, v5);
      v42 = ImportExport.AttachmentDownloadError.description.getter();
      v44 = v43;
      sub_1A83F0040(v5);
      rawValue = v39._rawValue;
      v46 = *(v39._rawValue + 2);
      v45 = *(v39._rawValue + 3);
      if (v46 >= v45 >> 1)
      {
        sub_1A83EF534((v45 > 1), v46 + 1, 1);
        v39._rawValue = rawValue;
      }

      *(v39._rawValue + 2) = v46 + 1;
      v47 = v39._rawValue + 16 * v46;
      *(v47 + 4) = v42;
      *(v47 + 5) = v44;
      v40 += v41;
      --v38;
    }

    while (v38);
  }

  v48._countAndFlagsBits = 0xD000000000000011;
  v48._object = 0x80000001A852F270;
  ImportExport.Report.add(reportNamed:forList:)(v48, v39);
}

uint64_t sub_1A83EE154()
{
  v2[0] = 0xD000000000000014;
  v2[1] = 0x80000001A852F1F0;
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = MEMORY[0x1E69E7CC0];
  v3 = 0;
  ImportExport.ExportedAttachmentStatistics.format(report:)(v2);
  sub_1A8471734(0);
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950, MEMORY[0x1E69E6310]);
  v0 = sub_1A84E5D6C();

  return v0;
}

uint64_t sub_1A83EE280()
{
  v2[0] = 0xD000000000000011;
  v2[1] = 0x80000001A852F290;
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = MEMORY[0x1E69E7CC0];
  v3 = 0;
  ImportExport.ExportStatistics.format(report:)(v2);
  sub_1A8471734(0);
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950, MEMORY[0x1E69E6310]);
  v0 = sub_1A84E5D6C();

  return v0;
}

uint64_t _s6IMCore12ImportExportO0B10StatisticsC19progressDescriptionSSvg_0()
{
  v2[0] = 0xD000000000000011;
  v2[1] = 0x80000001A852F2B0;
  v2[2] = MEMORY[0x1E69E7CC0];
  v2[3] = MEMORY[0x1E69E7CC0];
  v3 = 0;
  ImportExport.ImportStatistics.format(report:)(v2);
  sub_1A8471734(0);
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A83F0624(&qword_1EB2E6E50, &qword_1EB2E6E48, &qword_1A8502950, MEMORY[0x1E69E6310]);
  v0 = sub_1A84E5D6C();

  return v0;
}

uint64_t sub_1A83EE58C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_1A83EF190(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1A83EE724(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A824A1FC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A83EE818(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A824A1FC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_1A84D86E4(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v15 = result;
  if (result)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, result);
    v18 = v16 + result;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  result = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = result;
  v26 = (*(result + 48) + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_1A824A1FC((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    result = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (*(result + 48) + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  result = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  result = sub_1A8267334(result);
  *v1 = v4;
  return result;
}

uint64_t sub_1A83EEAD4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A84E654C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A84E654C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A83EF494(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A83EFDA8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1A83EEBEC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6EE0, &qword_1A8500CC8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A83EECF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6ED8, &qword_1A8500CC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A83EEE14(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6DC8, &unk_1A8500C18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1A83EEF08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6EA0, &qword_1A8503A70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1A83EF00C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A83EF190(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A83EA2FC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_1A83EF36C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6E98, &unk_1A8500C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A83EF494(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1A84E654C();
LABEL_9:
  result = sub_1A84E649C();
  *v2 = result;
  return result;
}

char *sub_1A83EF534(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A83EF6BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A83EF554(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A83EF7C8(a1, a2, a3, *v3, &qword_1EB2E6EA8, &qword_1A8500C90, &qword_1EB2E6EB0, &qword_1A8500C98);
  *v3 = result;
  return result;
}

void *sub_1A83EF594(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A83EF7C8(a1, a2, a3, *v3, &qword_1EB2E6E80, &qword_1A8500C68, &qword_1EB2E6E88, &qword_1A8500C70);
  *v3 = result;
  return result;
}

void *sub_1A83EF5D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A83EF7C8(a1, a2, a3, *v3, &qword_1EB2E6E70, &qword_1A8500C58, &qword_1EB2E6E78, &qword_1A8500C60);
  *v3 = result;
  return result;
}

char *sub_1A83EF614(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A83EF910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A83EF634(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A83EFB44(a1, a2, a3, *v3, &qword_1EB2E6EC8, &unk_1A8500CB0, MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

void *sub_1A83EF678(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A83EFB44(a1, a2, a3, *v3, &qword_1EB2E6E90, &qword_1A8500C78, type metadata accessor for ImportExport.Conversation);
  *v3 = result;
  return result;
}

char *sub_1A83EF6BC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&unk_1EB2E8DC0, &qword_1A8500C50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A83EF7C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1A83EA2FC(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A83EA2FC(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1A83EF910(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6DC0, &qword_1A8500C10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A83EFA1C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A83EA2FC(&qword_1EB2E6E98, &unk_1A8500C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 144);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[144 * v8])
    {
      memmove(v12, v13, 144 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A83EFB44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A83EA2FC(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t (*sub_1A83EFD20(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC56AF80](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1A83EFDA0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A83EFDA8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A84E654C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A84E654C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A83F0624(&qword_1EB2E6E40, &qword_1EB2E6E38, &unk_1A8500C30, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            sub_1A83EA2FC(&qword_1EB2E6E38, &unk_1A8500C30);
            v9 = sub_1A83EFD20(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A83EA2FC(&qword_1EB2E6E30, &qword_1A8500C28);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s6IMCore12ImportExportO28ExportedAttachmentStatisticsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = *(a1 + 40);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v9 = *(a1 + 24);
  v8 = *(a1 + 32);
  v10 = sub_1A8414BB0(*(a1 + 16), *(a2 + 16)) & (v9 == v7);
  if (v8 != v6)
  {
    v10 = 0;
  }

  if (v5 == v4)
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A83EFFDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A83F0040(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A83F00A0()
{
  result = qword_1EB2E6DA0;
  if (!qword_1EB2E6DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6DA0);
  }

  return result;
}

__n128 sub_1A83F00F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1A83F0108(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A83F0150(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s28ExportedAttachmentStatisticsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s28ExportedAttachmentStatisticsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A83F030C()
{
  result = qword_1EB2E6DA8;
  if (!qword_1EB2E6DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6DA8);
  }

  return result;
}

unint64_t sub_1A83F0364()
{
  result = qword_1EB2E6DB0;
  if (!qword_1EB2E6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6DB0);
  }

  return result;
}

unint64_t sub_1A83F03BC()
{
  result = qword_1EB2E6DB8;
  if (!qword_1EB2E6DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E6DB8);
  }

  return result;
}

uint64_t sub_1A83F0410(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x64616F6C6E776F64 && a2 == 0xED0000746E756F43;
  if (v3 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A852F210 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEE0073726F727245 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x43676E697373696DLL && a2 == 0xEC000000746E756FLL || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A852F230 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A852F250 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A83F0624(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

IMCore::CountStatistics::RootKeys_optional __swiftcall CountStatistics.RootKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A84E67BC();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

IMCore::CountStatistics::RootKeys_optional __swiftcall CountStatistics.RootKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CountStatistics.RootKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t CountStatistics.RootKeys.rawValue.getter()
{
  result = 0x756F436C61746F74;
  switch(*v0)
  {
    case 1:
      result = 0x65636E79536C6C61;
      break;
    case 2:
    case 8:
      result = 0x766C6F7365726E75;
      break;
    case 3:
      result = 0x6F43726576726573;
      break;
    case 4:
      result = 0x726F7453636E7973;
      break;
    case 5:
      result = 0x6168436C61746F74;
      break;
    case 6:
      result = 0x68436465636E7973;
      break;
    case 7:
      result = 0x43646574656C6564;
      break;
    case 9:
      result = 0x73654D6C61746F74;
      break;
    case 0xA:
      result = 0x654D6465636E7973;
      break;
    case 0xB:
      result = 0x4D646574656C6564;
      break;
    case 0xC:
      result = 0xD000000000000012;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
      result = 0xD000000000000012;
      break;
    case 0x10:
      result = 0xD000000000000015;
      break;
    case 0x11:
      result = 0xD000000000000018;
      break;
    case 0x12:
      result = 0xD000000000000019;
      break;
    case 0x13:
      result = 0xD00000000000001ALL;
      break;
    case 0x14:
      result = 0xD00000000000001DLL;
      break;
    case 0x15:
    case 0x16:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A83F0B0C()
{
  v0 = CountStatistics.RootKeys.rawValue.getter();
  v2 = v1;
  if (v0 == CountStatistics.RootKeys.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1A84E67AC();
  }

  return v5 & 1;
}

uint64_t sub_1A83F0BA8()
{
  sub_1A84E684C();
  CountStatistics.RootKeys.rawValue.getter();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A83F0C10(uint64_t a1)
{
  CountStatistics.RootKeys.rawValue.getter();
  sub_1A84E5E5C();
}

uint64_t sub_1A83F0C74(uint64_t a1)
{
  sub_1A84E684C();
  CountStatistics.RootKeys.rawValue.getter();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

unint64_t sub_1A83F0CE4@<X0>(unint64_t *a1@<X8>)
{
  result = CountStatistics.RootKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IMCore::CountStatistics::RootKeys_optional sub_1A83F0D40@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = CountStatistics.RootKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1A83F0D84(uint64_t a1)
{
  v2 = sub_1A83F3678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83F0DC0(uint64_t a1)
{
  v2 = sub_1A83F3678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

IMCore::CountStatistics::SyncStoreCountKeys_optional __swiftcall CountStatistics.SyncStoreCountKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A84E65AC();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

IMCore::CountStatistics::SyncStoreCountKeys_optional __swiftcall CountStatistics.SyncStoreCountKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CountStatistics.SyncStoreCountKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1A83F0EAC()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  if (v2 > 4)
  {
    v6 = 0xD00000000000001DLL;
    v7 = 0xD000000000000023;
    if (v2 != 8)
    {
      v7 = 0xD000000000000022;
    }

    if (v2 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001ELL;
    if (v2 == 5)
    {
      v8 = 0xD000000000000019;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v3 = 0xD000000000000017;
    v4 = 0xD000000000000016;
    if (v2 != 3)
    {
      v4 = 0xD00000000000001ALL;
    }

    if (v2 != 2)
    {
      v3 = v4;
    }

    if (!*v0)
    {
      v1 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1A83F0FD4()
{
  v1 = *v0;
  sub_1A84E684C();
  sub_1A84A1428(v3, v1);
  return sub_1A84E687C();
}

uint64_t sub_1A83F1024(uint64_t a1)
{
  v2 = *v1;
  sub_1A84E684C();
  sub_1A84A1428(v4, v2);
  return sub_1A84E687C();
}

uint64_t sub_1A83F1074@<X0>(uint64_t *a1@<X8>)
{
  result = CountStatistics.SyncStoreCountKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

IMCore::CountStatistics::SyncStoreCountKeys_optional sub_1A83F10A0@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = CountStatistics.SyncStoreCountKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1A83F10E4(uint64_t a1)
{
  v2 = sub_1A83F36CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83F1120(uint64_t a1)
{
  v2 = sub_1A83F36CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

IMCore::CountStatistics::ServerZoneKeys_optional __swiftcall CountStatistics.ServerZoneKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A84E65AC();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

IMCore::CountStatistics::ServerZoneKeys_optional __swiftcall CountStatistics.ServerZoneKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = CountStatistics.ServerZoneKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1A83F120C()
{
  v1 = *v0;
  v2 = 0x616E614D74616863;
  v3 = 0xD000000000000015;
  v4 = 0xD00000000000001CLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A83F12C8()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A83F13C0(uint64_t a1)
{
  sub_1A84E5E5C();
}

uint64_t sub_1A83F14A4(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

void sub_1A83F15A4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF656E6F5A656574;
  v4 = 0x616E614D74616863;
  v5 = 0x80000001A852EAE0;
  v6 = 0xD000000000000015;
  v7 = 0x80000001A852EB00;
  v8 = 0xD00000000000001CLL;
  if (v2 == 3)
  {
    v8 = 0xD000000000000011;
  }

  else
  {
    v7 = 0x80000001A852EB20;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001A852EAC0;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

IMCore::CountStatistics::ServerZoneKeys_optional sub_1A83F1658@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = CountStatistics.ServerZoneKeys.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_1A83F169C(uint64_t a1)
{
  v2 = sub_1A83F3720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83F16D8(uint64_t a1)
{
  v2 = sub_1A83F3720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A83F172C@<X0>(char *a4@<X8>)
{
  v5 = sub_1A84E65AC();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t CountStatistics.ServerCountKeys.stringValue.getter()
{
  if (*v0)
  {
    return 0x6365725F6576696CLL;
  }

  else
  {
    return 0x65725F6C61746F74;
  }
}

uint64_t sub_1A83F17F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6365725F6576696CLL;
  }

  else
  {
    v3 = 0x65725F6C61746F74;
  }

  if (v2)
  {
    v4 = 0xED00007364726F63;
  }

  else
  {
    v4 = 0xEC0000007364726FLL;
  }

  if (*a2)
  {
    v5 = 0x6365725F6576696CLL;
  }

  else
  {
    v5 = 0x65725F6C61746F74;
  }

  if (*a2)
  {
    v6 = 0xEC0000007364726FLL;
  }

  else
  {
    v6 = 0xED00007364726F63;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1A84E67AC();
  }

  return v8 & 1;
}

uint64_t sub_1A83F18B0()
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A83F1948(uint64_t a1)
{
  sub_1A84E5E5C();
}

uint64_t sub_1A83F19CC(uint64_t a1)
{
  sub_1A84E684C();
  sub_1A84E5E5C();

  return sub_1A84E687C();
}

uint64_t sub_1A83F1A60@<X0>(char *a2@<X8>)
{
  v3 = sub_1A84E65AC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1A83F1AC0(uint64_t *a1@<X8>)
{
  v2 = 0x65725F6C61746F74;
  if (*v1)
  {
    v2 = 0x6365725F6576696CLL;
  }

  v3 = 0xED00007364726F63;
  if (*v1)
  {
    v3 = 0xEC0000007364726FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1A83F1B14()
{
  if (*v0)
  {
    return 0x6365725F6576696CLL;
  }

  else
  {
    return 0x65725F6C61746F74;
  }
}

uint64_t sub_1A83F1B64@<X0>(char *a3@<X8>)
{
  v4 = sub_1A84E65AC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A83F1BD4(uint64_t a1)
{
  v2 = sub_1A83F3774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A83F1C10(uint64_t a1)
{
  v2 = sub_1A83F3774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1A83F1C4C()
{
  if (qword_1EB2E59A0 != -1)
  {
    swift_once();
  }

  qword_1EB2FF028 = 0;
  unk_1EB2FF030 = 0;
  qword_1EB2FF038 = 0;
  unk_1EB2FF060 = xmmword_1EB2FF2E0;
  unk_1EB2FF070 = xmmword_1EB2FF2F0;
  unk_1EB2FF080 = xmmword_1EB2FF300;
  unk_1EB2FF040 = xmmword_1EB2FF2C0;
  unk_1EB2FF050 = xmmword_1EB2FF2D0;
  unk_1EB2FF0B0 = xmmword_1EB2FF2D0;
  unk_1EB2FF0A0 = xmmword_1EB2FF2C0;
  unk_1EB2FF090 = xmmword_1EB2FF310;
  unk_1EB2FF0F0 = xmmword_1EB2FF310;
  unk_1EB2FF0E0 = xmmword_1EB2FF300;
  unk_1EB2FF0D0 = xmmword_1EB2FF2F0;
  unk_1EB2FF0C0 = xmmword_1EB2FF2E0;
  xmmword_1EB2FF140 = xmmword_1EB2FF300;
  unk_1EB2FF150 = xmmword_1EB2FF310;
  xmmword_1EB2FF130 = xmmword_1EB2FF2F0;
  unk_1EB2FF120 = xmmword_1EB2FF2E0;
  xmmword_1EB2FF180 = xmmword_1EB2FF2E0;
  unk_1EB2FF190 = xmmword_1EB2FF2F0;
  unk_1EB2FF110 = xmmword_1EB2FF2D0;
  xmmword_1EB2FF1A0 = xmmword_1EB2FF300;
  unk_1EB2FF1B0 = xmmword_1EB2FF310;
  unk_1EB2FF100 = xmmword_1EB2FF2C0;
  xmmword_1EB2FF160 = xmmword_1EB2FF2C0;
  *algn_1EB2FF170 = xmmword_1EB2FF2D0;
  xmmword_1EB2FF1C0 = xmmword_1EB2FF2C0;
  *algn_1EB2FF1D0 = xmmword_1EB2FF2D0;
  result = *&xmmword_1EB2FF310;
  xmmword_1EB2FF200 = xmmword_1EB2FF300;
  unk_1EB2FF210 = xmmword_1EB2FF310;
  xmmword_1EB2FF1E0 = xmmword_1EB2FF2E0;
  unk_1EB2FF1F0 = xmmword_1EB2FF2F0;
  return result;
}

uint64_t CountStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v288 = a2;
  v3 = sub_1A83EA2FC(&qword_1EB2E6EF0, &qword_1A8500CE0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v282 = &v241 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v280 = &v241 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v278 = &v241 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v276 = &v241 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v274 = &v241 - v12;
  v13 = sub_1A83EA2FC(&qword_1EB2E6EF8, &qword_1A8500CE8);
  v14 = *(v13 - 8);
  v284 = v13;
  v285 = v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v283 = &v241 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v281 = &v241 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v279 = &v241 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v277 = &v241 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v275 = &v241 - v23;
  v24 = sub_1A83EA2FC(&qword_1EB2E6F00, &qword_1A8500CF0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v273 = &v241 - v25;
  v286 = sub_1A83EA2FC(&qword_1EB2E6F08, &qword_1A8500CF8);
  v272 = *(v286 - 8);
  MEMORY[0x1EEE9AC00](v286);
  v287 = &v241 - v26;
  v27 = sub_1A83EA2FC(&qword_1EB2E6F10, &qword_1A8500D00);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v241 - v28;
  v30 = sub_1A83EA2FC(&qword_1EB2E6F18, &qword_1A8500D08);
  v289 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v241 - v31;
  v33 = sub_1A83EA2FC(&qword_1EB2E6F20, &qword_1A8500D10);
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v241 - v35;
  v37 = a1[3];
  v290 = a1;
  sub_1A82471E0(a1, v37);
  sub_1A83F3678();
  v38 = v291;
  sub_1A84E689C();
  if (v38)
  {
    v291 = v38;
    return sub_1A8244788(v290);
  }

  v39 = v289;
  v292 = 0;
  v40 = v36;
  v41 = sub_1A84E65EC();
  if (v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  v292 = 1;
  v44 = sub_1A84E65EC();
  v271 = v43;
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v46 = v44;
  }

  v292 = 2;
  v47 = sub_1A84E65EC();
  v268 = v46;
  v269 = v40;
  v270 = v33;
  if (v48)
  {
    v50 = 0;
  }

  else
  {
    v50 = v47;
  }

  if (v271 < 0)
  {
    __break(1u);
    goto LABEL_94;
  }

  if (v268 < 0)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v50 < 0)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v292 = 5;
  v51 = sub_1A84E65EC();
  if (v52)
  {
    v33 = 0;
  }

  else
  {
    v33 = v51;
  }

  v292 = 6;
  v53 = sub_1A84E65EC();
  v267 = v50;
  if (v54)
  {
    v55 = 0;
  }

  else
  {
    v55 = v53;
  }

  v292 = 7;
  v56 = sub_1A84E65EC();
  v266 = v55;
  if (v57)
  {
    v50 = 0;
  }

  else
  {
    v50 = v56;
  }

  v292 = 8;
  v58 = sub_1A84E65EC();
  if (v59)
  {
    v60 = 0;
  }

  else
  {
    v60 = v58;
  }

  v265 = v60;
  v292 = 9;
  v61 = sub_1A84E65EC();
  if (v62)
  {
    v63 = 0;
  }

  else
  {
    v63 = v61;
  }

  v264 = v63;
  v292 = 10;
  v64 = sub_1A84E65EC();
  v291 = 0;
  if (v65)
  {
    v66 = 0;
  }

  else
  {
    v66 = v64;
  }

  v263 = v66;
  v292 = 11;
  v67 = v291;
  v68 = sub_1A84E65EC();
  v291 = v67;
  if (v69)
  {
    v70 = 0;
  }

  else
  {
    v70 = v68;
  }

  v262 = v70;
  v292 = 12;
  v71 = v291;
  v72 = sub_1A84E65EC();
  v291 = v71;
  if (v73)
  {
    v74 = 0;
  }

  else
  {
    v74 = v72;
  }

  v261 = v74;
  v292 = 13;
  v75 = v291;
  v76 = sub_1A84E65EC();
  v291 = v75;
  if (v77)
  {
    v78 = 0;
  }

  else
  {
    v78 = v76;
  }

  v260 = v78;
  v292 = 14;
  v79 = v291;
  v80 = sub_1A84E65EC();
  v291 = v79;
  if (v81)
  {
    v82 = 0;
  }

  else
  {
    v82 = v80;
  }

  v259 = v82;
  v292 = 15;
  v83 = v291;
  v84 = sub_1A84E65EC();
  v291 = v83;
  if (v85)
  {
    v86 = 0;
  }

  else
  {
    v86 = v84;
  }

  v258 = v86;
  v292 = 16;
  v87 = v291;
  v88 = sub_1A84E65EC();
  v291 = v87;
  if (v89)
  {
    v90 = 0;
  }

  else
  {
    v90 = v88;
  }

  v257 = v90;
  v292 = 17;
  v91 = v291;
  v92 = sub_1A84E65EC();
  v291 = v91;
  if (v93)
  {
    v94 = 0;
  }

  else
  {
    v94 = v92;
  }

  v256 = v94;
  v292 = 18;
  v95 = v291;
  v96 = sub_1A84E65EC();
  v291 = v95;
  if (v97)
  {
    v98 = 0;
  }

  else
  {
    v98 = v96;
  }

  v255 = v98;
  v292 = 19;
  v99 = v291;
  v100 = sub_1A84E65EC();
  v291 = v99;
  if (v101)
  {
    v102 = 0;
  }

  else
  {
    v102 = v100;
  }

  v254 = v102;
  v292 = 20;
  v103 = v291;
  v104 = sub_1A84E65EC();
  v291 = v103;
  if (v105)
  {
    v106 = 0;
  }

  else
  {
    v106 = v104;
  }

  v253 = v106;
  v292 = 21;
  v107 = v291;
  v108 = sub_1A84E65EC();
  v291 = v107;
  if (v109)
  {
    v110 = 0;
  }

  else
  {
    v110 = v108;
  }

  v252 = v110;
  v292 = 22;
  v111 = v291;
  v112 = sub_1A84E65EC();
  v291 = v111;
  if (v113)
  {
    v114 = 0;
  }

  else
  {
    v114 = v112;
  }

  v242 = v114;
  v292 = 4;
  sub_1A83F36CC();
  v115 = v291;
  sub_1A84E65BC();
  v291 = v115;
  if (v115)
  {

    (*(v39 + 56))(v29, 1, 1, v30);
    sub_1A824B2D4(v29, &qword_1EB2E6F10, &qword_1A8500D00);
    v289 = 0;
    v243 = 0;
    v244 = 0;
    v245 = 0;
    v246 = 0;
    v247 = 0;
    v248 = 0;
    v249 = 0;
    v250 = 0;
    v251 = 0;
    v291 = 0;
    while (1)
    {
      v292 = 3;
      sub_1A83F3720();
      v116 = v291;
      sub_1A84E65BC();
      if (v116)
      {
        break;
      }

      v172 = v272;
      v171 = v273;
      v173 = v286;
      (*(v272 + 56))(v273, 0, 1, v286);
      (*(v172 + 32))(v287, v171, v173);
      v292 = 0;
      sub_1A83F3774();
      sub_1A84E65BC();
      v182 = v284;
      v183 = v285;
      v184 = v274;
      v273 = *(v285 + 56);
      (v273)(v274, 0, 1, v284);
      (*(v183 + 32))(v275, v184, v182);
      v292 = 0;
      v185 = sub_1A84E65EC();
      v291 = 0;
      v186 = v185;
      v188 = v187;
      v292 = 1;
      v189 = sub_1A84E65EC();
      v291 = 0;
      v224 = v189;
      v225 = v190;
      if (v188)
      {
        v226 = 0;
      }

      else
      {
        v226 = v186;
      }

      v274 = v226;
      (*(v285 + 8))(v275, v284);
      if (v225)
      {
        v227 = 0;
      }

      else
      {
        v227 = v224;
      }

      v275 = v227;
      v292 = 1;
      v174 = v291;
      sub_1A84E65BC();
      if (v174)
      {

        v175 = v276;
        (v273)(v276, 1, 1, v284);
        sub_1A824B2D4(v175, &qword_1EB2E6EF0, &qword_1A8500CE0);
        v277 = 0;
        v32 = 0;
        v291 = 0;
      }

      else
      {
        v191 = v284;
        v192 = v285;
        v193 = v276;
        (v273)(v276, 0, 1, v284);
        (*(v192 + 32))(v277, v193, v191);
        v292 = 0;
        v194 = sub_1A84E65EC();
        v291 = 0;
        v195 = v194;
        v197 = v196;
        v292 = 1;
        v198 = sub_1A84E65EC();
        v291 = 0;
        v228 = v198;
        v229 = v199;
        if (v197)
        {
          v32 = 0;
        }

        else
        {
          v32 = v195;
        }

        (*(v285 + 8))(v277, v284);
        if (v229)
        {
          v230 = 0;
        }

        else
        {
          v230 = v228;
        }

        v277 = v230;
      }

      v292 = 2;
      v176 = v291;
      sub_1A84E65BC();
      if (v176)
      {

        v177 = v278;
        (v273)(v278, 1, 1, v284);
        sub_1A824B2D4(v177, &qword_1EB2E6EF0, &qword_1A8500CE0);
        v278 = 0;
        v279 = 0;
        v291 = 0;
      }

      else
      {
        v201 = v284;
        v200 = v285;
        v202 = v278;
        (v273)(v278, 0, 1, v284);
        (*(v200 + 32))(v279, v202, v201);
        v292 = 0;
        v203 = sub_1A84E65EC();
        v291 = 0;
        v204 = v203;
        v206 = v205;
        v292 = 1;
        v207 = sub_1A84E65EC();
        v291 = 0;
        v231 = v207;
        v232 = v208;
        if (v206)
        {
          v233 = 0;
        }

        else
        {
          v233 = v204;
        }

        v278 = v233;
        (*(v285 + 8))(v279, v284);
        if (v232)
        {
          v234 = 0;
        }

        else
        {
          v234 = v231;
        }

        v279 = v234;
      }

      v292 = 3;
      v178 = v291;
      sub_1A84E65BC();
      if (v178)
      {

        v179 = v280;
        (v273)(v280, 1, 1, v284);
        sub_1A824B2D4(v179, &qword_1EB2E6EF0, &qword_1A8500CE0);
        v122 = 0;
        v123 = 0;
        v291 = 0;
      }

      else
      {
        v209 = v284;
        v210 = v285;
        v211 = v280;
        (v273)(v280, 0, 1, v284);
        (*(v210 + 32))(v281, v211, v209);
        v292 = 0;
        v212 = sub_1A84E65EC();
        v291 = 0;
        v123 = v212;
        v214 = v213;
        v292 = 1;
        v215 = sub_1A84E65EC();
        v291 = 0;
        v235 = v215;
        v236 = v216;
        if (v214)
        {
          v123 = 0;
        }

        (*(v285 + 8))(v281, v284);
        if (v236)
        {
          v122 = 0;
        }

        else
        {
          v122 = v235;
        }
      }

      v292 = 4;
      v180 = v291;
      sub_1A84E65BC();
      if (v180)
      {

        v30 = v272 + 8;
        (*(v272 + 8))(v287, v286);
        v181 = *(v34 + 8);
        v34 += 8;
        v181(v269, v270);
        v39 = v282;
        (v273)(v282, 1, 1, v284);
        sub_1A824B2D4(v39, &qword_1EB2E6EF0, &qword_1A8500CE0);
        v120 = 0;
        v121 = 0;
        goto LABEL_75;
      }

      v217 = v284;
      v218 = v282;
      (v273)(v282, 0, 1, v284);
      (*(v285 + 32))(v283, v218, v217);
      v292 = 0;
      v219 = sub_1A84E65EC();
      LODWORD(v282) = v220;
      v291 = 0;
      v221 = v219;
      v292 = 1;
      v222 = sub_1A84E65EC();
      LODWORD(v281) = v223;
      v291 = 0;
      v30 = v222;
      if (v282)
      {
        v121 = 0;
      }

      else
      {
        v121 = v221;
      }

      (*(v285 + 8))(v283, v284);
      v39 = v272 + 8;
      (*(v272 + 8))(v287, v286);
      v237 = *(v34 + 8);
      v34 += 8;
      v237(v269, v270);
      if (v281)
      {
        v120 = 0;
      }

      else
      {
        v120 = v30;
      }

LABEL_76:
      if ((v266 | v33 | v50 | v265) < 0)
      {
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
LABEL_180:
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
        goto LABEL_183;
      }

      if ((v251 | v250) < 0)
      {
        goto LABEL_169;
      }

      if (((v274 | v275) & 0x8000000000000000) != 0)
      {
        goto LABEL_170;
      }

      if ((v263 | v264 | v262 | v261) < 0)
      {
        goto LABEL_171;
      }

      if ((v249 | v248) < 0)
      {
        goto LABEL_172;
      }

      if (((v32 | v277) & 0x8000000000000000) != 0)
      {
        goto LABEL_173;
      }

      if ((v259 | v260 | v258 | v257) < 0)
      {
        goto LABEL_174;
      }

      if ((v247 | v246) < 0)
      {
        goto LABEL_175;
      }

      if (((v278 | v279) & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      v124 = v252 + v242;
      if (__OFADD__(v252, v242))
      {
        goto LABEL_177;
      }

      if (v124 < 0)
      {
        goto LABEL_178;
      }

      if ((v245 | v244) < 0)
      {
        goto LABEL_179;
      }

      if ((v123 | v122) < 0)
      {
        goto LABEL_180;
      }

      if ((v255 | v256 | v254 | v253) < 0)
      {
        goto LABEL_181;
      }

      if ((v243 | v289) < 0)
      {
        goto LABEL_182;
      }

      if (((v121 | v120) & 0x8000000000000000) == 0)
      {
        v125 = v288;
        v126 = v268;
        *v288 = v271;
        v125[1] = v126;
        v125[2] = v267;
        v125[5] = v266;
        v125[6] = v33;
        v127 = v265;
        v125[7] = v50;
        v125[8] = v127;
        v128 = v250;
        v125[10] = v251;
        v125[11] = v128;
        v129 = v275;
        v125[13] = v274;
        v125[14] = v129;
        *(v125 + 24) = 0;
        *(v125 + 32) = 0;
        *(v125 + 72) = 0;
        *(v125 + 96) = 0;
        *(v125 + 120) = 1;
        *(v125 + 128) = 1;
        v125[17] = v263;
        v125[18] = v264;
        v125[19] = v262;
        v125[20] = v261;
        *(v125 + 168) = 1;
        v125[22] = v249;
        v125[23] = v248;
        *(v125 + 192) = 1;
        v130 = v277;
        v125[25] = v32;
        v125[26] = v130;
        *(v125 + 216) = 2;
        *(v125 + 224) = 2;
        v125[29] = v259;
        v125[30] = v260;
        v125[31] = v258;
        v125[32] = v257;
        *(v125 + 264) = 2;
        v125[34] = v247;
        v125[35] = v246;
        *(v125 + 288) = 2;
        v131 = v279;
        v125[37] = v278;
        v125[38] = v131;
        *(v125 + 312) = 3;
        *(v125 + 320) = 3;
        v125[41] = 0;
        v125[42] = v124;
        v125[43] = 0;
        v125[44] = 0;
        *(v125 + 360) = 3;
        v132 = v244;
        v125[46] = v245;
        v125[47] = v132;
        *(v125 + 384) = 3;
        v125[49] = v123;
        v125[50] = v122;
        *(v125 + 408) = 4;
        *(v125 + 416) = 4;
        v133 = v256;
        v125[53] = v255;
        v125[54] = v133;
        v134 = v253;
        v125[55] = v254;
        v125[56] = v134;
        *(v125 + 456) = 4;
        v135 = v289;
        v125[58] = v243;
        v125[59] = v135;
        *(v125 + 480) = 4;
        v125[61] = v121;
        v125[62] = v120;
        return sub_1A8244788(v290);
      }

LABEL_183:
      __break(1u);
LABEL_184:
      v238 = v119;
      if (v122)
      {
        v239 = 0;
      }

      else
      {
        v239 = v123;
      }

      v243 = v239;
      (*(v39 + 8))(v32, v30);
      v240 = v241;
      if (v238)
      {
        v240 = 0;
      }

      v289 = v240;
    }

    v117 = *(v34 + 8);
    v34 += 8;
    v117(v269, v270);
    v118 = v273;
    v39 = v272 + 56;
    (*(v272 + 56))(v273, 1, 1, v286);
    sub_1A824B2D4(v118, &qword_1EB2E6F00, &qword_1A8500CF0);
    v120 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v278 = 0;
    v279 = 0;
    v277 = 0;
    v32 = 0;
    v274 = 0;
    v275 = 0;
LABEL_75:
    v291 = 0;
    goto LABEL_76;
  }

LABEL_96:
  (*(v39 + 56))(v29, 0, 1, v30);
  (*(v39 + 32))(v32, v29, v30);
  v292 = 0;
  v136 = v291;
  v137 = sub_1A84E65EC();
  v291 = v136;
  if (!v136)
  {
    if (v138)
    {
      v139 = 0;
    }

    else
    {
      v139 = v137;
    }

    v251 = v139;
    v292 = 1;
    v140 = v291;
    v141 = sub_1A84E65EC();
    v291 = v140;
    if (v142)
    {
      v143 = 0;
    }

    else
    {
      v143 = v141;
    }

    v250 = v143;
    v292 = 2;
    v144 = v291;
    v145 = sub_1A84E65EC();
    v291 = v144;
    if (v146)
    {
      v147 = 0;
    }

    else
    {
      v147 = v145;
    }

    v249 = v147;
    v292 = 3;
    v148 = v291;
    v149 = sub_1A84E65EC();
    v291 = v148;
    if (v150)
    {
      v151 = 0;
    }

    else
    {
      v151 = v149;
    }

    v248 = v151;
    v292 = 4;
    v152 = v291;
    v153 = sub_1A84E65EC();
    v291 = v152;
    if (v154)
    {
      v155 = 0;
    }

    else
    {
      v155 = v153;
    }

    v247 = v155;
    v292 = 5;
    v156 = v291;
    v157 = sub_1A84E65EC();
    v291 = v156;
    if (v158)
    {
      v159 = 0;
    }

    else
    {
      v159 = v157;
    }

    v246 = v159;
    v292 = 6;
    v160 = v291;
    v161 = sub_1A84E65EC();
    v291 = v160;
    if (v162)
    {
      v163 = 0;
    }

    else
    {
      v163 = v161;
    }

    v245 = v163;
    v292 = 7;
    v164 = v291;
    v165 = sub_1A84E65EC();
    v291 = v164;
    if (v166)
    {
      v167 = 0;
    }

    else
    {
      v167 = v165;
    }

    v244 = v167;
    v292 = 8;
    v168 = v291;
    v169 = sub_1A84E65EC();
    v291 = v168;
    v123 = v169;
    LOBYTE(v122) = v170;
    v292 = 9;
    v241 = sub_1A84E65EC();
    v291 = 0;
    goto LABEL_184;
  }

  (*(v39 + 8))(v32, v30);
  (*(v34 + 8))(v269, v270);
  return sub_1A8244788(v290);
}