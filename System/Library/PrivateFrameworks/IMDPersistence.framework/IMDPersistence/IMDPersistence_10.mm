uint64_t sub_1B7BF62F4(uint64_t a1)
{
  v2 = IMDMessageRecordCreateFromRecordIDWithLock(0, *(a1 + 256), 1);
  if (v2)
  {
    v6 = *(a1 + 112);
    v3 = v2;
    IMDMessageRecordBulkUpdate(v2, *(a1 + 264), *(a1 + 32), *(a1 + 272), *(a1 + 280), *(a1 + 288), *(a1 + 296), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 304), *(a1 + 88), *(a1 + 312), *(a1 + 320), *(a1 + 328), *(a1 + 96), *(a1 + 336), *(a1 + 344), *(a1 + 352), *(a1 + 360), *(a1 + 368), *(a1 + 104), *(a1 + 376), *(a1 + 384), *(a1 + 392), v6, *(&v6 + 1), *(a1 + 128), *(a1 + 400), *(a1 + 136), *(a1 + 408), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 176), *(a1 + 416), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 208), *(a1 + 424), *(a1 + 432), *(a1 + 440), *(a1 + 216), *(a1 + 224), *(a1 + 232), *(a1 + 448), *(a1 + 456), *(a1 + 240));
    CFRelease(v3);
  }

  result = *(a1 + 248);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDMessagePTaskInsertRow_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF655C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a6;
  block[4] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF655C(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[4];
      v4 = a1[6];
      v6 = 138412546;
      v7 = v3;
      v8 = 2048;
      v9 = v4;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Inserting Message Processing Task with (guid: %@, taskflags: %ld)", &v6, 0x16u);
    }
  }

  IMDMessagePTaskInsertRow(a1[4], a1[6]);
  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessagePTaskSelectWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF66D0;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF66D0(void *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = IMDMessagePTaskSelectWithLimit(a1[6]);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = a1[6];
      *buf = 134218240;
      v33 = v7;
      v34 = 2048;
      v35 = objc_msgSend_count(v2, v4, v5, v6);
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Coping first %ld Message Processing Task (Results: %ld)", buf, 0x16u);
    }
  }

  v11 = xpc_array_create(0, 0);
  if (v11)
  {
    if (objc_msgSend_count(v2, v8, v9, v10))
    {
      v14 = 0;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v2, v12, v14, v13);
        v19 = xpc_dictionary_create(0, 0, 0);
        if (v19)
        {
          if (objc_msgSend_objectForKeyedSubscript_(v15, v16, @"guid", v18))
          {
            v30 = objc_msgSend_objectForKeyedSubscript_(v15, v20, @"guid", v21);
            v31 = 0;
            IMInsertNSStringsToXPCDictionary();
          }

          if (objc_msgSend_objectForKeyedSubscript_(v15, v20, @"task_flags", v21, v30, v31))
          {
            v24 = objc_msgSend_objectForKeyedSubscript_(v15, v22, @"task_flags", v23);
            v30 = objc_msgSend_intValue(v24, v25, v26, v27);
            v31 = 0;
            IMInsertIntsToXPCDictionary();
          }

          xpc_array_append_value(v11, v19);
          xpc_release(v19);
        }

        ++v14;
      }

      while (v14 < objc_msgSend_count(v2, v16, v17, v18, v30, v31));
    }

    v28 = a1[4];
    if (v28)
    {
      xpc_dictionary_set_value(v28, "array_result", v11);
    }

    xpc_release(v11);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessagePTaskUpdateTaskFlagsForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF697C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a6;
  block[4] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF697C(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = a1[6];
      v4 = a1[4];
      v6 = 134218242;
      v7 = v3;
      v8 = 2112;
      v9 = v4;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Updating task_flags to %ld for Message Processing Task with guid: %@", &v6, 0x16u);
    }
  }

  IMDMessagePTaskUpdateTaskFlagsForGUID(a1[4], a1[6]);
  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessagePTaskDeleteAllCompletedTask_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF6AEC;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BF6AEC(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Deleting all completed task from Message Processing Table", v4, 2u);
    }
  }

  IMDMessagePTaskDeleteAllCompletedTask();
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDChatRecordCreate_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF6C74;
  block[3] = &unk_1E7CBD6E0;
  v37 = a5;
  v38 = a6;
  block[4] = a7;
  block[5] = a8;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v39 = a13;
  v31 = a15;
  v40 = a14;
  v41 = a16;
  v42 = a18;
  v32 = a17;
  v33 = a19;
  v43 = a21;
  v44 = a22;
  v45 = a23;
  v34 = a20;
  v35 = a3;
  v36 = a4;
  v23 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v23, v24, v25);
}

void sub_1B7BF6C74(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = IMDChatRecordCreate(0, *(a1 + 168), *(a1 + 176), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 184), *(a1 + 192), *(a1 + 200), *(a1 + 112), *(a1 + 120), *(a1 + 208), *(a1 + 128), *(a1 + 216), *(a1 + 136), *(a1 + 144), *(a1 + 224), *(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256));
  v3 = IMOSLoggingEnabled();
  if (v2)
  {
    if (v3)
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 64);
        *buf = 138412546;
        v10 = v5;
        v11 = 2048;
        v12 = v2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Created chat with guid: %@  (0x%p)", buf, 0x16u);
      }
    }

    _IMDChatRecordBulkCopyXPCDictionary(v2, *(a1 + 152), 0, 0, 1, 1);
  }

  else if (v3)
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 64);
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to create chat with guid: %@", buf, 0xCu);
    }
  }

  v8 = *(a1 + 160);
  if (v8)
  {
    (*(v8 + 16))();
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void __XPCServerIMDChatRecordCopyMessagesWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF6EF8;
  v9[3] = &unk_1E7CBD488;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF6EF8(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[6]);
  if (v2)
  {
    v3 = v2;
    v4 = IMDChatRecordCopyMessagesWithLimit(v2, a1[7]);
    v5 = xpc_array_create(0, 0);
    if (v5)
    {
      v9 = v5;
      v10 = objc_msgSend_count(v4, v6, v7, v8);
      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10 & 0x7FFFFFFF;
        do
        {
          v15 = objc_msgSend_objectAtIndex_(v4, v11, v13, v12);
          v16 = xpc_dictionary_create(0, 0, 0);
          if (v16)
          {
            v17 = v16;
            _IMDMessageRecordBulkCopyXPCDictionary(v15, v16, 0, 0);
            xpc_array_append_value(v9, v17);
            xpc_release(v17);
          }

          ++v13;
        }

        while (v14 != v13);
      }

      v18 = a1[4];
      if (v18)
      {
        xpc_dictionary_set_value(v18, "array_result", v9);
      }

      xpc_release(v9);
    }

    if (v4)
    {
      CFRelease(v4);
    }

    CFRelease(v3);
  }

  result = a1[5];
  if (result)
  {
    v20 = *(result + 16);

    return v20();
  }

  return result;
}

void __XPCServerIMDChatRecordSetIsArchived_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF70C4;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF70C4(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  if (v2)
  {
    v3 = v2;
    IMDChatRecordSetIsArchived(v2, a1[6]);
    CFRelease(v3);
  }

  result = a1[4];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDChatRecordSetIsBlackholed_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF71B0;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF71B0(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  if (v2)
  {
    v3 = v2;
    IMDChatRecordSetIsBlackholed(v2, a1[6]);
    CFRelease(v3);
  }

  result = a1[4];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDChatRecordSetIsRecovered_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF729C;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF729C(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  if (v2)
  {
    v3 = v2;
    IMDChatRecordSetIsRecovered(v2, a1[6]);
    CFRelease(v3);
  }

  result = a1[4];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDChatRecordSetIsDeletingIncomingMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF7388;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF7388(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  if (v2)
  {
    v3 = v2;
    IMDChatRecordSetIsDeletingIncomingMessages(v2, a1[6]);
    CFRelease(v3);
  }

  result = a1[4];
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDChatRecordAddHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF7474;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF7474(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  v3 = IMDHandleRecordCreateFromRecordID(0, a1[6]);
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!v2)
    {
      if (!v3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    IMDChatRecordAddHandle(v2, v3);
  }

  CFRelease(v2);
  if (v4)
  {
LABEL_8:
    CFRelease(v4);
  }

LABEL_9:
  result = a1[4];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordRemoveHandle_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF75A0;
  block[3] = &unk_1E7CBD438;
  block[5] = a5;
  block[6] = a6;
  block[4] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF75A0(void *a1)
{
  v2 = IMDChatRecordCreateFromRecordID(0, a1[5]);
  v3 = IMDHandleRecordCreateFromRecordID(0, a1[6]);
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (!v2)
    {
      if (!v3)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    IMDChatRecordRemoveHandle(v2, v3);
  }

  CFRelease(v2);
  if (v4)
  {
LABEL_8:
    CFRelease(v4);
  }

LABEL_9:
  result = a1[4];
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyAllChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF76C8;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF76C8(uint64_t a1)
{
  v2 = IMDChatRecordCopyAllChats(a1);
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v7 = v3;
    v8 = objc_msgSend_count(v2, v4, v5, v6);
    if (v8 >= 1)
    {
      v11 = 0;
      v12 = v8 & 0x7FFFFFFF;
      do
      {
        v13 = objc_msgSend_objectAtIndex_(v2, v9, v11, v10);
        v14 = xpc_dictionary_create(0, 0, 0);
        if (v14)
        {
          v15 = v14;
          _IMDChatRecordBulkCopyXPCDictionary(v13, v14, 0, 0, 0, 1);
          xpc_array_append_value(v7, v15);
          xpc_release(v15);
        }

        ++v11;
      }

      while (v12 != v11);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      xpc_dictionary_set_value(v16, "array_result", v7);
    }

    xpc_release(v7);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v18 = *(result + 16);

    return v18();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyAllNamedChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF7874;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF7874(uint64_t a1)
{
  v2 = IMDChatRecordCopyAllNamedChats(a1);
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v7 = v3;
    v8 = objc_msgSend_count(v2, v4, v5, v6);
    if (v8 >= 1)
    {
      v11 = 0;
      v12 = v8 & 0x7FFFFFFF;
      do
      {
        v13 = objc_msgSend_objectAtIndex_(v2, v9, v11, v10);
        v14 = xpc_dictionary_create(0, 0, 0);
        if (v14)
        {
          v15 = v14;
          _IMDChatRecordBulkCopyXPCDictionary(v13, v14, 0, 0, 0, 1);
          xpc_array_append_value(v7, v15);
          xpc_release(v15);
        }

        ++v11;
      }

      while (v12 != v11);
    }

    v16 = *(a1 + 32);
    if (v16)
    {
      xpc_dictionary_set_value(v16, "array_result", v7);
    }

    xpc_release(v7);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    v18 = *(result + 16);

    return v18();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyAllActiveChatsProgressivelyWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7BF7A2C;
    v9[3] = &unk_1E7CBD488;
    v9[4] = a3;
    v9[5] = a4;
    v9[6] = a5;
    v9[7] = a6;
    v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
    IMDPersistencePerformBlock(v9, v6, v7, v8);
  }
}

void sub_1B7BF7A2C(void *a1)
{
  v61 = *MEMORY[0x1E69E9840];
  v56 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v56, v2, @"goFetchAllActiveChatsProgressively", v3);
  v54 = a1;
  if (qword_1EBA50C70 != a1[6])
  {
    if (qword_1EBA53B68)
    {
      CFRelease(qword_1EBA53B68);
      qword_1EBA53B68 = 0;
    }

    if (qword_1EBA54300)
    {
      CFRelease(qword_1EBA54300);
      qword_1EBA54300 = 0;
    }

    v4 = qword_1EBA53B70;
    if (qword_1EBA53B70)
    {
      CFRelease(qword_1EBA53B70);
      qword_1EBA53B70 = 0;
    }

    active = IMDChatRecordCopyAllActiveChats(v4);
    qword_1EBA53B68 = active;
    qword_1EDBE5C88 = 0;
    qword_1EBA50C70 = a1[6];
    if (!active)
    {
      if (IMOSLoggingEnabled())
      {
        v51 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "Got nil for all active chats, aborting progressive copy all chats request early", buf, 2u);
        }
      }

      qword_1EBA50C70 = -1;
      v52 = a1[4];
      if (v52)
      {
        xpc_dictionary_set_BOOL(v52, "complete", 1);
      }

      v53 = a1[5];
      if (v53)
      {
        (*(v53 + 16))();
      }

      return;
    }

    if (a1[7] >= 1)
    {
      Count = CFArrayGetCount(active);
      v7 = a1[7];
      if (Count > v7)
      {
        qword_1EBA54300 = IMDChatRowIDsMostRecentByLastMessageWithLimit(v7);
        if (IMOSLoggingEnabled())
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v9 = a1[7];
            *buf = 134218240;
            v58 = v9;
            v59 = 2048;
            v60 = CFDictionaryGetCount(qword_1EBA54300);
            _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Enforcing lastMessage load limit of %lld, found %lu chats with messages", buf, 0x16u);
          }
        }
      }
    }

    v10 = CFArrayGetCount(qword_1EBA53B68);
    qword_1EBA53B70 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v10, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    _IMDMessageRecordCountAllUnreadMessagesForAllUnreadChats(&unk_1F2F9FEF0);
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = CFArrayGetCount(qword_1EBA53B68);
        *buf = 134218240;
        v58 = v12;
        v59 = 2048;
        v60 = 250;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Received new copy all chats request (total: %ld, batch size: %ld)", buf, 0x16u);
      }
    }
  }

  v13 = xpc_array_create(0, 0);
  v14 = CFArrayGetCount(qword_1EBA53B68);
  v15 = qword_1EDBE5C88;
  if (qword_1EDBE5C88 < v14)
  {
    v16 = qword_1EDBE5C88 + 250;
    while (1)
    {
      v17 = xpc_dictionary_create(0, 0, 0);
      ValueAtIndex = CFArrayGetValueAtIndex(qword_1EBA53B68, v15);
      Identifier = IMDChatRecordGetIdentifier(ValueAtIndex);
      v22 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v20, Identifier, v21);
      if (!qword_1EBA54300)
      {
        break;
      }

      Value = CFDictionaryGetValue(qword_1EBA54300, v22);
      v26 = Value;
      if (!Value)
      {
        v31 = 0;
        goto LABEL_24;
      }

      v27 = objc_msgSend_objectForKeyedSubscript_(Value, v24, @"l", v25);
      v31 = objc_msgSend_BOOLValue(v27, v28, v29, v30);
      v34 = objc_msgSend_objectForKeyedSubscript_(v26, v32, @"d", v33);
      v38 = objc_msgSend_integerValue(v34, v35, v36, v37);
LABEL_25:
      _IMDChatRecordBulkCopyXPCDictionary(ValueAtIndex, v17, 1, 0, v31, 1);
      xpc_dictionary_set_int64(v17, "last_message_date_on_load", v38);
      v39 = CFDictionaryGetValue(qword_1EBA53B70, v22);
      if (v39)
      {
        v43 = objc_msgSend_longLongValue(v39, v40, v41, v42);
      }

      else
      {
        v43 = 0;
      }

      xpc_dictionary_set_int64(v17, "unread_count_cache", v43);
      xpc_array_append_value(v13, v17);
      xpc_release(v17);
      ++qword_1EDBE5C88;
      if (v15 + 1 < v14 && v15++ < v16)
      {
        continue;
      }

      goto LABEL_30;
    }

    v31 = 1;
LABEL_24:
    v38 = -1;
    goto LABEL_25;
  }

LABEL_30:
  if (IMOSLoggingEnabled())
  {
    v45 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v58 = qword_1EDBE5C88;
      v59 = 2048;
      v60 = v14;
      _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "Progressive chat send progress: %lu out of %lu", buf, 0x16u);
    }
  }

  xpc_dictionary_set_value(v54[4], "array_result", v13);
  xpc_release(v13);
  v46 = v54[4];
  if (qword_1EDBE5C88 == v14)
  {
    xpc_dictionary_set_BOOL(v46, "complete", 1);
    qword_1EBA50C70 = -1;
    if (qword_1EBA53B68)
    {
      CFRelease(qword_1EBA53B68);
      qword_1EBA53B68 = 0;
    }

    if (qword_1EBA54300)
    {
      CFRelease(qword_1EBA54300);
      qword_1EBA54300 = 0;
    }

    if (qword_1EBA53B70)
    {
      CFRelease(qword_1EBA53B70);
      qword_1EBA53B70 = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v49 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v58 = qword_1EDBE5C88;
        _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_INFO, "Progressive chat send complete with %lu chats sent", buf, 0xCu);
      }
    }
  }

  else
  {
    xpc_dictionary_set_BOOL(v46, "complete", 0);
  }

  objc_msgSend_stopTimingForKey_(v56, v47, @"goFetchAllActiveChatsProgressively", v48, v54);

  v50 = *(v55 + 40);
  if (v50)
  {
    (*(v50 + 16))();
  }
}

void sub_1B7BF809C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, a2, a4);
  v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, a3, v7);
  v9 = qword_1EBA53B70;

  CFDictionarySetValue(v9, v5, v8);
}

void __XPCServerIMDChatRecordCopyAllActiveChatsWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF8180;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF8180(void *a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v61 = objc_alloc_init(MEMORY[0x1E69A6170]);
  started = objc_msgSend_startTimingForKey_(v61, v2, @"goFetchAllActiveChats", v3);
  active = IMDChatRecordCopyAllActiveChats(started);
  xarray = xpc_array_create(0, 0);
  v9 = objc_msgSend_count(active, v6, v7, v8);
  MessageWithLimit = 0;
  v60 = a1;
  v10 = a1[6];
  v12 = v10 > 0 && v10 < v9;
  if (v12)
  {
    MessageWithLimit = IMDChatRowIDsMostRecentByLastMessageWithLimit(v10);
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = v60[6];
        *buf = 134218240;
        v66 = v17;
        v67 = 2048;
        v68 = objc_msgSend_count(MessageWithLimit, v14, v15, v16);
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Enforing lastMessage load limit of %lld, found %lu chats with messages", buf, 0x16u);
      }
    }
  }

  if (xarray)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v9 >= 1)
    {
      v21 = 0;
      v22 = v9 & 0x7FFFFFFF;
      while (1)
      {
        v23 = objc_msgSend_objectAtIndex_(active, v18, v21, v19);
        v24 = v23;
        if (!v12)
        {
          break;
        }

        Identifier = IMDChatRecordGetIdentifier(v23);
        v28 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v26, Identifier, v27);
        v31 = objc_msgSend_objectForKeyedSubscript_(MessageWithLimit, v29, v28, v30);
        v34 = v31;
        if (!v31)
        {
          v39 = 0;
          goto LABEL_19;
        }

        v35 = objc_msgSend_objectForKeyedSubscript_(v31, v32, @"l", v33);
        v39 = objc_msgSend_BOOLValue(v35, v36, v37, v38);
        v42 = objc_msgSend_objectForKeyedSubscript_(v34, v40, @"d", v41);
        v46 = objc_msgSend_integerValue(v42, v43, v44, v45);
LABEL_20:
        v47 = xpc_dictionary_create(0, 0, 0);
        if (v47)
        {
          _IMDChatRecordBulkCopyXPCDictionary(v24, v47, 1, 0, v39, 1);
          xpc_dictionary_set_int64(v47, "last_message_date_on_load", v46);
          xpc_array_append_value(xarray, v47);
          int64 = xpc_dictionary_get_int64(v47, "recordIdentifier");
          v51 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v49, int64, v50);
          objc_msgSend_setObject_forKeyedSubscript_(v20, v52, v47, v51);
          xpc_release(v47);
        }

        if (v22 == ++v21)
        {
          goto LABEL_23;
        }
      }

      v39 = 1;
LABEL_19:
      v46 = -1;
      goto LABEL_20;
    }

LABEL_23:
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = sub_1B7BF856C;
    v64[3] = &unk_1E7CBD750;
    v64[4] = v20;
    _IMDMessageRecordCountAllUnreadMessagesForAllUnreadChats(v64);
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v20, v53, &unk_1F2FA14B0, v54);

    v55 = v60[4];
    if (v55)
    {
      xpc_dictionary_set_value(v55, "array_result", xarray);
    }

    xpc_release(xarray);
  }

  if (active)
  {
    CFRelease(active);
  }

  objc_msgSend_stopTimingForKey_(v61, v56, @"goFetchAllActiveChats", v57);
  if (IMOSLoggingEnabled())
  {
    v58 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v66 = v61;
      _os_log_impl(&dword_1B7AD5000, v58, OS_LOG_TYPE_INFO, "Finished timing goFetchAllActiveChats with time: %@", buf, 0xCu);
    }
  }

  result = v60[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *sub_1B7BF856C(uint64_t a1, const char *a2, int64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, a2, a4);
  result = objc_msgSend_objectForKeyedSubscript_(v7, v9, v8, v10);
  if (result)
  {
    xpc_dictionary_set_int64(result, "unread_count_cache", a3);
    v12 = *(a1 + 32);
    v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v13, a2, v14);

    return objc_msgSend_removeObjectForKey_(v12, v15, v16, v17);
  }

  return result;
}

void __XPCServerIMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF86A4;
  v9[3] = &unk_1E7CBD488;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF86A4(void *a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v2, v3, @"copyRecentChats", v4);
  v5 = IMDChatRecordCopyAllUnreadChatsAndRecentChatsWithLimit(a1[6], a1[7]);
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = xpc_array_create(0, 0);
  if (v7)
  {
    v11 = v7;
    if (objc_msgSend_count(v5, v8, v9, v10))
    {
      v14 = 0;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v5, v12, v14, v13);
        v16 = xpc_dictionary_create(0, 0, 0);
        if (v16)
        {
          v20 = v16;
          _IMDChatRecordBulkCopyXPCDictionary(v15, v16, 1, 0, 1, 1);
          xpc_dictionary_set_int64(v20, "unread_count_cache", 0);
          v21 = MEMORY[0x1E696AD98];
          Identifier = IMDChatRecordGetIdentifier(v15);
          v25 = objc_msgSend_numberWithLongLong_(v21, v23, Identifier, v24);
          objc_msgSend_setObject_forKey_(v6, v26, v20, v25);
          xpc_array_append_value(v11, v20);
          xpc_release(v20);
        }

        ++v14;
      }

      while (v14 < objc_msgSend_count(v5, v17, v18, v19));
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1B7BF893C;
    v32[3] = &unk_1E7CBD750;
    v32[4] = v6;
    _IMDMessageRecordCountAllUnreadMessagesForAllUnreadChats(v32);
    v27 = a1[4];
    if (v27)
    {
      xpc_dictionary_set_value(v27, "array_result", v11);
    }

    xpc_release(v11);
  }

  objc_msgSend_stopTimingForKey_(v2, v28, @"copyRecentChats", v29);
  if (IMOSLoggingEnabled())
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = v2;
      _os_log_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_INFO, "Finished timing copyRecentChats with time: %@", buf, 0xCu);
    }
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1B7BF893C(uint64_t a1, const char *a2, int64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], a2, a2, a4);
  v10 = objc_msgSend_objectForKeyedSubscript_(v6, v8, v7, v9);
  if (v10)
  {

    xpc_dictionary_set_int64(v10, "unread_count_cache", a3);
  }

  else
  {
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 134218240;
      v13 = a2;
      v14 = 2048;
      v15 = a3;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "An unread chat was not included in recent chats with rowID: %llu unreadCount: %lld", &v12, 0x16u);
    }
  }
}

void __XPCServerIMDChatRecordCopyChatRecordForIdentifier_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF8AD8;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

void sub_1B7BF8AD8(uint64_t *a1)
{
  v2 = IMDChatRecordCopyChatRecord(a1[6]);
  v3 = v2;
  if (v2)
  {
    _IMDChatRecordBulkCopyXPCDictionary(v2, a1[4], 0, 0, 1, 1);
  }

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __XPCServerIMDChatRecordCopyChatForMessageID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF8BD8;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

void sub_1B7BF8BD8(uint64_t *a1)
{
  v2 = IMDChatRecordCopyChatForMessageID(a1[6]);
  v3 = v2;
  if (v2)
  {
    _IMDChatRecordBulkCopyXPCDictionary(v2, a1[4], 0, 0, 0, 1);
  }

  v4 = a1[5];
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __XPCServerIMDChatRecordCopyChatsWithHandleOnService_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF8CD8;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF8CD8(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatsWithHandleOnService(*(a1 + 32), *(a1 + 40));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v4 = v3;
    _IMDChatRecordCopyChatsToXPCArray(v2, v3, 0, 0, 0, 1);
    v5 = *(a1 + 48);
    if (v5)
    {
      xpc_dictionary_set_value(v5, "array_result", v4);
    }

    xpc_release(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatsWithIdentifierOnService_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF8E18;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF8E18(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatsWithIdentifierOnService(*(a1 + 32), *(a1 + 40));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v4 = v3;
    _IMDChatRecordCopyChatsToXPCArray(v2, v3, 0, 0, 0, 1);
    v5 = *(a1 + 48);
    if (v5)
    {
      xpc_dictionary_set_value(v5, "array_result", v4);
    }

    xpc_release(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatsWithRoomnameOnService_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF8F58;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF8F58(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatsWithRoomnameOnService(*(a1 + 32), *(a1 + 40));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v4 = v3;
    _IMDChatRecordCopyChatsToXPCArray(v2, v3, 0, 0, 0, 1);
    v5 = *(a1 + 48);
    if (v5)
    {
      xpc_dictionary_set_value(v5, "array_result", v4);
    }

    xpc_release(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatsWithGroupID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF9098;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BF9098(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatsWithGroupID(*(a1 + 32));
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v4 = v3;
    _IMDChatRecordCopyChatsToXPCArray(v2, v3, 0, 0, 0, 1);
    v5 = *(a1 + 40);
    if (v5)
    {
      xpc_dictionary_set_value(v5, "array_result", v4);
    }

    xpc_release(v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 48);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyNewestChatForGroupIDOnService_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF91D8;
  block[3] = &unk_1E7CBD798;
  block[4] = a5;
  block[5] = a6;
  v11 = a7;
  block[6] = a3;
  block[7] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v7, v8, v9);
}

void sub_1B7BF91D8(uint64_t a1)
{
  v2 = IMDChatRecordCopyNewestChatForGroupIDOnService(*(a1 + 32), *(a1 + 40), *(a1 + 64));
  v3 = v2;
  if (v2)
  {
    _IMDChatRecordBulkCopyXPCDictionary(v2, *(a1 + 48), 0, 0, 0, 1);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    (*(v4 + 16))();
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

void __XPCServerIMDChatRecordDeleteChatForGUID_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF92DC;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BF92DC(uint64_t a1)
{
  IMDChatRecordDeleteChatForGUID(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF93AC;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF93AC(uint64_t *a1)
{
  IMDChatRecordAssociateMessageWithGUIDToChatWithGUIDIfNeeded(a1[4], a1[5]);
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF9480;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF9480(uint64_t a1)
{
  IMDChatRecordDisassociateMessageWithGUIDFromChatWithGUIDIfNeeded(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BF9550;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

uint64_t sub_1B7BF9550(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = IMDChatRecordCopyChatGUIDsWithUnplayedAudioMessages();
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v5 = v3;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v19, v23, 16);
    if (v6)
    {
      v10 = v6;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v2);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          if (objc_msgSend_UTF8String(v13, v7, v8, v9))
          {
            v14 = objc_msgSend_UTF8String(v13, v7, v8, v9);
            v15 = xpc_string_create(v14);
            if (v15)
            {
              v16 = v15;
              xpc_array_append_value(v5, v15);
              xpc_release(v16);
            }
          }
        }

        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v7, &v19, v23, 16);
      }

      while (v10);
    }

    v17 = *(a1 + 32);
    if (v17)
    {
      xpc_dictionary_set_value(v17, "array_result", v5);
    }

    xpc_release(v5);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDChatRecordSetIsFiltered_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF9744;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a6;
  block[4] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BF9744(uint64_t a1)
{
  IMDChatRecordSetIsFiltered(*(a1 + 32), *(a1 + 48));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordDeleteEmptyChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF9814;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BF9814(uint64_t a1)
{
  IMDChatRecordDeleteEmptyChats();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordRepairDuplicateChats_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BF98E4;
  block[3] = &unk_1E7CBD7C0;
  block[4] = a5;
  block[5] = a6;
  block[6] = a7;
  block[7] = a3;
  block[8] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v7, v8, v9);
}

uint64_t sub_1B7BF98E4(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v35 = 0;
  v2 = IMDChatRecordRepairDuplicateChats(*(a1 + 32), *(a1 + 40), *(a1 + 48), &v35);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = @"NO";
      if (v2)
      {
        v4 = @"YES";
      }

      *buf = 138412290;
      v37 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "IMDChatRecordRepairDuplicateChats is returned %@", buf, 0xCu);
    }
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    xpc_dictionary_set_BOOL(v5, "BOOL_result", v2);
    if ((v2 & 1) == 0)
    {
      v6 = v35 == 0;
      v7 = IMOSLoggingEnabled();
      if (v6)
      {
        if (v7)
        {
          v33 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "got NO success with NO error!?", buf, 2u);
          }
        }
      }

      else
      {
        if (v7)
        {
          v11 = OSLogHandleForIMEventCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v12 = objc_msgSend_description(v35, v8, v9, v10);
            *buf = 138412290;
            v37 = v12;
            _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "got NO success with error: %@", buf, 0xCu);
          }
        }

        v13 = *(a1 + 56);
        v14 = objc_msgSend_domain(v35, v8, v9, v10);
        v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
        xpc_dictionary_set_string(v13, "error_domain", v18);
        v19 = *(a1 + 56);
        v23 = objc_msgSend_code(v35, v20, v21, v22);
        xpc_dictionary_set_int64(v19, "error_code", v23);
        v24 = *(a1 + 56);
        v28 = objc_msgSend_localizedDescription(v35, v25, v26, v27);
        v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
        xpc_dictionary_set_string(v24, "error_localized_description", v32);
      }
    }
  }

  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDChatRecordSplitDatabaseByDays_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF9BE0;
  v9[3] = &unk_1E7CBD7E8;
  v9[4] = a6;
  v9[5] = a3;
  v9[6] = a4;
  v9[7] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF9BE0(uint64_t a1)
{
  v2 = IMDTrimSharedDatabaseToDays(*(a1 + 32), *(a1 + 56), 0);
  xpc_dictionary_set_BOOL(*(a1 + 40), "BOOL_result", v2);
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDChatRecordSplitDatabaseByRecentCount_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF9CCC;
  v9[3] = &unk_1E7CBD7E8;
  v9[4] = a6;
  v9[5] = a3;
  v9[6] = a4;
  v9[7] = a5;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF9CCC(uint64_t a1)
{
  v2 = IMDTrimSharedDatabaseToMessageCount(*(a1 + 32), *(a1 + 56), 0);
  xpc_dictionary_set_BOOL(*(a1 + 40), "BOOL_result", v2);
  result = *(a1 + 48);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __XPCServerIMDSwitchDatabase_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BF9DB4;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BF9DB4(uint64_t a1)
{
  IMDSwitchToDatabase(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BF9E84;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BF9E84(uint64_t *a1)
{
  v45 = 0;
  v2 = IMDMessageRecordCopyArrayOfAssociatedMessagesForMessageGUIDFromSender(a1[4], a1[5], &v45);
  v3 = xpc_array_create(0, 0);
  if (v3)
  {
    v7 = v3;
    v8 = objc_msgSend_count(v2, v4, v5, v6);
    if (v8 >= 1)
    {
      v11 = 0;
      v12 = v8 & 0x7FFFFFFF;
      do
      {
        v13 = objc_msgSend_objectAtIndex_(v2, v9, v11, v10);
        v14 = xpc_dictionary_create(0, 0, 0);
        if (v14)
        {
          v15 = v14;
          _IMDMessageRecordBulkCopyXPCDictionary(v13, v14, 0, 0);
          xpc_array_append_value(v7, v15);
          xpc_release(v15);
        }

        ++v11;
      }

      while (v12 != v11);
    }

    v16 = a1[6];
    if (v16)
    {
      xpc_dictionary_set_value(v16, "array_result", v7);
    }

    xpc_release(v7);
  }

  if (v45)
  {
    v17 = a1[6];
    if (v17)
    {
      v18 = objc_msgSend_code(v45, v4, v5, v6);
      xpc_dictionary_set_int64(v17, "error_code", v18);
      v19 = a1[6];
      v23 = objc_msgSend_domain(v45, v20, v21, v22);
      v27 = objc_msgSend_UTF8String(v23, v24, v25, v26);
      xpc_dictionary_set_string(v19, "error_domain", v27);
      v31 = objc_msgSend_localizedDescription(v45, v28, v29, v30);
      if (objc_msgSend_UTF8String(v31, v32, v33, v34))
      {
        v38 = a1[6];
        v39 = objc_msgSend_localizedDescription(v45, v35, v36, v37);
        v43 = objc_msgSend_UTF8String(v39, v40, v41, v42);
        xpc_dictionary_set_string(v38, "error_description", v43);
      }
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDDowngradeDatabase_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA0A8;
  block[3] = &unk_1E7CBD4D8;
  block[4] = a5;
  block[5] = a6;
  block[7] = a4;
  block[8] = a7;
  block[6] = a3;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v7, v8, v9);
}

uint64_t sub_1B7BFA0A8(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v2 = IMDDowngradeDatabaseToVersion(*(a1 + 32), *(a1 + 40), *(a1 + 64), &v7);
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 64);
      *buf = 134217984;
      v9 = v4;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Downgrade Database to version %ld", buf, 0xCu);
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    xpc_dictionary_set_BOOL(v5, "BOOL_result", v2);
  }

  if (v7)
  {
    _IMDInsertErrorToXPCDictionary(*(a1 + 48), "error", v7);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesToUploadToCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BFA254;
  v9[3] = &unk_1E7CBD488;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BFA254(void *a1)
{
  v2 = IMDMessageRecordCopyMessagesToUploadToCloudKitWithLimit(a1[6], a1[7]);
  if (v2)
  {
    v3 = xpc_array_create(0, 0);
    if (v3)
    {
      v7 = v3;
      v8 = objc_msgSend_count(v2, v4, v5, v6);
      if (v8 >= 1)
      {
        v11 = 0;
        v12 = v8 & 0x7FFFFFFF;
        do
        {
          v13 = objc_msgSend_objectAtIndex_(v2, v9, v11, v10);
          v14 = xpc_dictionary_create(0, 0, 0);
          if (v14)
          {
            v15 = v14;
            _IMDMessageRecordBulkCopyXPCDictionary(v13, v14, 1, 1);
            xpc_array_append_value(v7, v15);
            xpc_release(v15);
          }

          ++v11;
        }

        while (v12 != v11);
      }

      v16 = a1[4];
      if (v16)
      {
        xpc_dictionary_set_value(v16, "array_result", v7);
      }

      xpc_release(v7);
    }
  }

  result = a1[5];
  if (result)
  {
    v18 = *(result + 16);

    return v18();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA404;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BFA404(void *a1)
{
  updated = IMDMessageRecordCopyMessagesPendingUpdateT1ToCloudKitWithLimit(a1[6]);
  if (updated)
  {
    v3 = xpc_array_create(0, 0);
    if (v3)
    {
      v7 = v3;
      v8 = objc_msgSend_count(updated, v4, v5, v6);
      if (v8 >= 1)
      {
        v11 = 0;
        v12 = v8 & 0x7FFFFFFF;
        do
        {
          objc_msgSend_objectAtIndex_(updated, v9, v11, v10);
          v13 = IMCreateXPCObjectFromDictionary();
          if (v13)
          {
            v14 = v13;
            xpc_array_append_value(v7, v13);
            xpc_release(v14);
          }

          ++v11;
        }

        while (v12 != v11);
      }

      v15 = a1[4];
      if (v15)
      {
        xpc_dictionary_set_value(v15, "array_result", v7);
      }

      xpc_release(v7);
    }
  }

  result = a1[5];
  if (result)
  {
    v17 = *(result + 16);

    return v17();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA57C;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BFA57C(void *a1)
{
  updated = IMDMessageRecordCopyMessagesPendingUpdateT2ToCloudKitWithLimit(a1[6]);
  if (updated)
  {
    v3 = xpc_array_create(0, 0);
    if (v3)
    {
      v7 = v3;
      v8 = objc_msgSend_count(updated, v4, v5, v6);
      if (v8 >= 1)
      {
        v11 = 0;
        v12 = v8 & 0x7FFFFFFF;
        do
        {
          objc_msgSend_objectAtIndex_(updated, v9, v11, v10);
          v13 = IMCreateXPCObjectFromDictionary();
          if (v13)
          {
            v14 = v13;
            xpc_array_append_value(v7, v13);
            xpc_release(v14);
          }

          ++v11;
        }

        while (v12 != v11);
      }

      v15 = a1[4];
      if (v15)
      {
        xpc_dictionary_set_value(v15, "array_result", v7);
      }

      xpc_release(v7);
    }
  }

  result = a1[5];
  if (result)
  {
    v17 = *(result + 16);

    return v17();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA6F4;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BFA6F4(void *a1)
{
  updated = IMDMessageRecordCopyMessagesPendingUpdateT3ToCloudKitWithLimit(a1[6]);
  if (updated)
  {
    v3 = xpc_array_create(0, 0);
    if (v3)
    {
      v7 = v3;
      v8 = objc_msgSend_count(updated, v4, v5, v6);
      if (v8 >= 1)
      {
        v11 = 0;
        v12 = v8 & 0x7FFFFFFF;
        do
        {
          objc_msgSend_objectAtIndex_(updated, v9, v11, v10);
          v13 = IMCreateXPCObjectFromDictionary();
          if (v13)
          {
            v14 = v13;
            xpc_array_append_value(v7, v13);
            xpc_release(v14);
          }

          ++v11;
        }

        while (v12 != v11);
      }

      v15 = a1[4];
      if (v15)
      {
        xpc_dictionary_set_value(v15, "array_result", v7);
      }

      xpc_release(v7);
    }
  }

  result = a1[5];
  if (result)
  {
    v17 = *(result + 16);

    return v17();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA868;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BFA868(uint64_t a1)
{
  IMDMessageRecordMarkAllMessagesAsNeedingCloudKitSync();
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordCopyMessagesToDeleteFromCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFA934;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BFA934(void *a1)
{
  v1 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v2 = IMDMessageRecordCopyRecordIDsAndGUIDsToDeleteWithLimit(a1[6]);
  if (objc_msgSend_count(v2, v3, v4, v5))
  {
    v6 = xpc_array_create(0, 0);
    if (v6)
    {
      v10 = v6;
      v39 = v1;
      if (objc_msgSend_count(v2, v7, v8, v9))
      {
        v11 = 0;
        xarray = v10;
        v41 = v2;
        do
        {
          v12 = xpc_dictionary_create(0, 0, 0);
          if (v12)
          {
            v16 = v12;
            v17 = objc_msgSend_objectAtIndex_(v2, v13, v11, v15);
            v42 = 0u;
            v43 = 0u;
            v44 = 0u;
            v45 = 0u;
            v21 = objc_msgSend_allKeys(v17, v18, v19, v20);
            v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v42, v46, 16);
            if (v23)
            {
              v26 = v23;
              v27 = *v43;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v43 != v27)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v29 = *(*(&v42 + 1) + 8 * i);
                  if ((objc_msgSend_isEqualToString_(v29, v24, @"ROWID", v25) & 1) == 0)
                  {
                    v30 = objc_msgSend_valueForKey_(v17, v24, v29, v25);
                    v33 = objc_msgSend_cStringUsingEncoding_(v29, v31, 4, v32);
                    v36 = objc_msgSend_cStringUsingEncoding_(v30, v34, 4, v35);
                    xpc_dictionary_set_string(v16, v33, v36);
                  }
                }

                v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v42, v46, 16);
              }

              while (v26);
            }

            v10 = xarray;
            xpc_array_append_value(xarray, v16);
            xpc_release(v16);
            v2 = v41;
          }

          ++v11;
        }

        while (objc_msgSend_count(v2, v13, v14, v15) > v11);
      }

      v1 = v39;
      v37 = v39[4];
      if (v37)
      {
        xpc_dictionary_set_value(v37, "array_result", v10);
      }

      xpc_release(v10);
    }
  }

  result = v1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDUpdateWallpaperForCNContact_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BFABCC;
  v9[3] = &unk_1E7CBD460;
  v9[4] = a5;
  v9[5] = a6;
  v9[6] = a3;
  v9[7] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BFABCC(uint64_t a1)
{
  v2 = IMDSaveWallpaperForCNContact(*(a1 + 32), *(a1 + 40));
  v3 = *(a1 + 48);
  if (v3)
  {
    xpc_dictionary_set_BOOL(v3, "BOOL_result", v2);
  }

  result = *(a1 + 56);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

void __XPCServerIMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFACB8;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

uint64_t sub_1B7BFACB8(uint64_t a1)
{
  IMDMessageRecordAddGUIDAndCKRecordIDToDeleteFromCloudKit(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFAD88;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BFAD88(uint64_t a1)
{
  IMDAddIncompatibleGroupPhotoChangedMessagesToDeleteFromCloudKit(a1);
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordDeleteTombStonedMessagesWithRecordIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFAE50;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BFAE50(uint64_t a1)
{
  IMDMessageRecordDeleteTombStonedMessagesWithRecordIDs(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerInsertIntoDeletedChatsTable_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BFAF20;
  v10[3] = &unk_1E7CBD7E8;
  v10[4] = a5;
  v10[5] = a6;
  v10[6] = a4;
  v10[7] = a7;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v10, v7, v8, v9);
}

uint64_t sub_1B7BFAF20(uint64_t *a1)
{
  IMDChatInsertIntoDeletedChatsTable(a1[4], a1[5], a1[7]);
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRecordCopyChatRecordIDsAndGUIDsToDeleteFromCloudKitWithLimit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFAFF8;
  block[3] = &unk_1E7CBD3C0;
  block[5] = a4;
  block[6] = a5;
  block[4] = a3;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

uint64_t sub_1B7BFAFF8(uint64_t a1)
{
  v1 = a1;
  v55 = *MEMORY[0x1E69E9840];
  v2 = IMDChatCopyChatRecordIDsAndGUIDsToDeleteWithLimit(*(a1 + 48));
  if (objc_msgSend_count(v2, v3, v4, v5))
  {
    v6 = xpc_array_create(0, 0);
    if (v6)
    {
      v10 = v6;
      v46 = v1;
      if (objc_msgSend_count(v2, v7, v8, v9))
      {
        v11 = 0;
        xarray = v10;
        v48 = v2;
        do
        {
          v12 = xpc_dictionary_create(0, 0, 0);
          if (v12)
          {
            v16 = v12;
            v49 = v11;
            v17 = objc_msgSend_objectAtIndex_(v2, v13, v11, v15);
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v21 = objc_msgSend_allKeys(v17, v18, v19, v20);
            v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v50, v54, 16);
            if (v23)
            {
              v26 = v23;
              v27 = *v51;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v51 != v27)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v29 = *(*(&v50 + 1) + 8 * i);
                  if ((objc_msgSend_isEqualToString_(v29, v24, @"ROWID", v25) & 1) == 0)
                  {
                    if ((objc_msgSend_isEqualToString_(v29, v24, @"guid", v25) & 1) != 0 || objc_msgSend_isEqualToString_(v29, v30, @"recordID", v31))
                    {
                      v32 = objc_msgSend_valueForKey_(v17, v30, v29, v31);
                      v35 = objc_msgSend_cStringUsingEncoding_(v29, v33, 4, v34);
                      v38 = objc_msgSend_cStringUsingEncoding_(v32, v36, 4, v37);
                      xpc_dictionary_set_string(v16, v35, v38);
                    }

                    if (objc_msgSend_isEqualToString_(v29, v30, @"timestamp", v31))
                    {
                      v39 = objc_msgSend_valueForKey_(v17, v24, v29, v25);
                      v43 = objc_msgSend_unsignedIntegerValue(v39, v40, v41, v42);
                      xpc_dictionary_set_int64(v16, "timestamp", v43);
                    }
                  }
                }

                v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v50, v54, 16);
              }

              while (v26);
            }

            v10 = xarray;
            xpc_array_append_value(xarray, v16);
            xpc_release(v16);
            v2 = v48;
            v11 = v49;
          }

          ++v11;
        }

        while (objc_msgSend_count(v2, v13, v14, v15) > v11);
      }

      v1 = v46;
      v44 = *(v46 + 32);
      if (v44)
      {
        xpc_dictionary_set_value(v44, "array_result", v10);
      }

      xpc_release(v10);
    }
  }

  result = *(v1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDChatClearPendingDeleteChatsTable_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFB2F0;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BFB2F0(uint64_t a1)
{
  IMDChatClearPendingDeleteChatsTable(a1);
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDChatRemapMessagesWithErrorCodeToErrorCode_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BFB3BC;
  v10[3] = &unk_1E7CBD488;
  v10[6] = a6;
  v10[7] = a7;
  v10[4] = a5;
  v10[5] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v10, v7, v8, v9);
}

uint64_t sub_1B7BFB3BC(uint64_t a1)
{
  IMDChatRemapMessagesWithErrorCodeToErrorCode(*(a1 + 32), *(a1 + 48), *(a1 + 56));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordCalculateLocalCloudKitStatistics_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFB48C;
  v7[3] = &unk_1E7CBD2F8;
  v7[4] = a3;
  v7[5] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v7, v4, v5, v6);
}

void sub_1B7BFB48C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7BFB508;
    v6[3] = &unk_1E7CBD528;
    v5 = *(a1 + 40);
    v6[4] = v4;
    v6[5] = v5;
    IMDMessageRecordCalculateLocalCloudKitStatisticsAsync(v6, a2, a3, a4);
  }
}

uint64_t sub_1B7BFB508(uint64_t a1, uint64_t a2)
{
  v3 = IMCreateXPCObjectFromDictionary();
  if (v3)
  {
    v4 = v3;
    xpc_dictionary_set_value(*(a1 + 32), "dictionary_result", v3);
    xpc_release(v4);
  }

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFB5F8;
  v8[3] = &unk_1E7CBD398;
  v8[4] = a4;
  v8[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BFB5F8(uint64_t a1)
{
  IMDMessageRecordMarkMessageWithROWIDAsSyncedWithCloudKit(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFB6C4;
  v8[3] = &unk_1E7CBD398;
  v8[4] = a4;
  v8[5] = a5;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BFB6C4(uint64_t a1)
{
  IMDMessageRecordMarkMessageWithROWIDAsIgnoreButNeedingSyncWithCloudKit(*(a1 + 40));
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordSetCloudKitSyncCounts_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFB790;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BFB790(uint64_t a1)
{
  _IMDMessageRecordSetCloudKitSyncCounts(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordMarkFailedAttachmentsAsNeedingSync_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFB85C;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

uint64_t sub_1B7BFB85C(uint64_t a1)
{
  IMDAttachmentMarkAllFailedAttachmentsAsNeedingSync(a1);
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentsToDeleteFromCloudKit(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BFB928;
  v9[3] = &unk_1E7CBD7E8;
  v9[4] = a5;
  v9[5] = a3;
  v9[6] = a4;
  v9[7] = a6;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BFB928(uint64_t a1)
{
  v1 = a1;
  v55 = *MEMORY[0x1E69E9840];
  v2 = IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit(*(a1 + 32), *(a1 + 56));
  if (objc_msgSend_count(v2, v3, v4, v5))
  {
    v6 = xpc_array_create(0, 0);
    if (v6)
    {
      v10 = v6;
      v46 = v1;
      if (objc_msgSend_count(v2, v7, v8, v9))
      {
        v11 = 0;
        xarray = v10;
        v48 = v2;
        do
        {
          v12 = xpc_dictionary_create(0, 0, 0);
          if (v12)
          {
            v16 = v12;
            v49 = v11;
            v17 = objc_msgSend_objectAtIndex_(v2, v13, v11, v15);
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v21 = objc_msgSend_allKeys(v17, v18, v19, v20);
            v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v50, v54, 16);
            if (v23)
            {
              v26 = v23;
              v27 = *v51;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v51 != v27)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v29 = *(*(&v50 + 1) + 8 * i);
                  if (objc_msgSend_isEqualToString_(v29, v24, @"ROWID", v25))
                  {
                    v32 = objc_msgSend_objectForKeyedSubscript_(v17, v30, v29, v31);
                    v36 = objc_msgSend_longLongValue(v32, v33, v34, v35);
                    xpc_dictionary_set_int64(v16, "ROWID", v36);
                  }

                  else
                  {
                    v37 = objc_msgSend_valueForKey_(v17, v30, v29, v31);
                    v40 = objc_msgSend_cStringUsingEncoding_(v29, v38, 4, v39);
                    v43 = objc_msgSend_cStringUsingEncoding_(v37, v41, 4, v42);
                    xpc_dictionary_set_string(v16, v40, v43);
                  }
                }

                v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v50, v54, 16);
              }

              while (v26);
            }

            v10 = xarray;
            xpc_array_append_value(xarray, v16);
            xpc_release(v16);
            v2 = v48;
            v11 = v49;
          }

          ++v11;
        }

        while (objc_msgSend_count(v2, v13, v14, v15) > v11);
      }

      v1 = v46;
      v44 = *(v46 + 40);
      if (v44)
      {
        xpc_dictionary_set_value(v44, "array_result", v10);
      }

      xpc_release(v10);
    }
  }

  result = *(v1 + 48);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordCopyAttachmentGUIDs(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7BFBBF4;
  v9[3] = &unk_1E7CBD7E8;
  v9[4] = a5;
  v9[5] = a3;
  v9[6] = a4;
  v9[7] = a6;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v9, v6, v7, v8);
}

uint64_t sub_1B7BFBBF4(void *a1)
{
  v2 = IMDAttachmentCopyGUIDsAfterRowWithLimit(a1[4], a1[7]);
  if (objc_msgSend_count(v2, v3, v4, v5))
  {
    v6 = xpc_array_create(0, 0);
    if (v6)
    {
      v10 = v6;
      if (objc_msgSend_count(v2, v7, v8, v9))
      {
        v11 = 0;
        do
        {
          v12 = xpc_dictionary_create(0, 0, 0);
          if (v12)
          {
            v16 = v12;
            v17 = objc_msgSend_objectAtIndex_(v2, v13, v11, v15);
            v20 = objc_msgSend_objectForKey_(v17, v18, @"ROWID", v19);
            v24 = objc_msgSend_longLongValue(v20, v21, v22, v23);
            v27 = objc_msgSend_objectForKey_(v17, v25, @"guid", v26);
            v30 = objc_msgSend_objectForKey_(v17, v28, @"is_orphaned", v29);
            LOBYTE(v17) = objc_msgSend_BOOLValue(v30, v31, v32, v33);
            xpc_dictionary_set_int64(v16, "ROWID", v24);
            v36 = objc_msgSend_cStringUsingEncoding_(v27, v34, 4, v35);
            xpc_dictionary_set_string(v16, "guid", v36);
            xpc_dictionary_set_BOOL(v16, "is_orphaned", v17);
            xpc_array_append_value(v10, v16);
            xpc_release(v16);
          }

          ++v11;
        }

        while (objc_msgSend_count(v2, v13, v14, v15) > v11);
      }

      v37 = a1[5];
      if (v37)
      {
        xpc_dictionary_set_value(v37, "array_result", v10);
      }

      xpc_release(v10);
    }
  }

  result = a1[6];
  if (result)
  {
    v39 = *(result + 16);

    return v39();
  }

  return result;
}

void __XPCServerIMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFBE28;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t sub_1B7BFBE28(uint64_t a1)
{
  IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void __XPCServerIMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCD60;
  block[3] = &unk_1E7CB7FD8;
  block[4] = a4;
  v4 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v4, v5, v6);
}

void __XPCServerIMDKVValueForKey_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCDB0;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a3;
  block[6] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v5, v6, v7);
}

void __XPCServerIMDKVPersistValueForKey_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCE2C;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

void __XPCServerIMDNotificationsPostNotifications_asyncIPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFCE84;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

void __XPCServerIMDMessageRecordRetractNotificationsForChatGuids_asyncIPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFCED8;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

void __XPCServerIMDNotificationsRetractNotificationsFromFirstUnlock_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFCF2C;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

void __XPCServerIMDNotificationsPostUrgentNotificationsForMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCF80;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

void __XPCServerIMDNotificationsUpdatePostedNotificationsForMessages_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFCFD8;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

void __XPCServerIMDNotificationsPostFirstUnlockMessage_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7BFD030;
  block[3] = &unk_1E7CBD348;
  block[4] = a5;
  block[5] = a6;
  block[6] = a4;
  v6 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(block, v6, v7, v8);
}

void __XPCServerIMDMessageRecordMarkMessageGUIDUnread_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFD088;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

void __XPCServerIMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B7BFD0DC;
  v10[3] = &unk_1E7CBD370;
  v10[4] = a5;
  v10[5] = a6;
  v11 = a7;
  v10[6] = a4;
  v7 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v10, v7, v8, v9);
}

void __XPCServerIMDChatRecordPurgeAttachments_IPCAction(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7BFD138;
  v8[3] = &unk_1E7CBD2F8;
  v8[4] = a5;
  v8[5] = a4;
  v5 = sub_1B7ADEAB4(a3, a2, a3, a4);
  IMDPersistencePerformBlock(v8, v5, v6, v7);
}

uint64_t __IMDPersistenceCheckAnyEntitlementsForInitialConnection(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }

  v1 = IMDAuditTokenTaskCopyValuesForEntitlements();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = qword_1EDBE62F0;
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(qword_1EDBE62F0, v2, &v13, v17, 16);
    if (v4)
    {
      v7 = v4;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v3);
          }

          v10 = objc_msgSend_objectForKeyedSubscript_(v1, v5, *(*(&v13 + 1) + 8 * i), v6);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_BOOLValue(v10, v5, v11, v6))
          {

            return 1;
          }
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v13, v17, 16);
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  return 0;
}

void __IMDPersistenceIPCServer_InitializeEntitlements()
{
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }
}

uint64_t __IMDPersistenceCheckLesserEntitlements(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (qword_1EDBE62F8 != -1)
  {
    sub_1B7AF2794();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = objc_msgSend_allKeys(qword_1EDBE62E0, a2, a3, a4, 0);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (result)
  {
    v11 = result;
    v12 = *v20;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v19 + 1) + 8 * v13);
        v15 = objc_msgSend_objectForKey_(a1, v9, v14, v10);
        if (v15)
        {
          v16 = v15;
          v17 = CFGetTypeID(v15);
          if (v17 == CFBooleanGetTypeID())
          {
            if (CFBooleanGetValue(v16))
            {
              v18 = objc_msgSend_objectForKey_(qword_1EDBE62E0, v9, v14, v10);
              if (v18)
              {
                if (objc_msgSend_containsIndex_(v18, v9, a2, v10))
                {
                  return 1;
                }
              }
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v19, v23, 16);
      v11 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1B7BFC750()
{
  v28[4] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  qword_1EDBE62E8 = objc_msgSend_initWithObjects_(v0, v1, @"com.apple.private.imcore.spi.database-access", v2, @"com.apple.private.imcore.imdpersistence.data-detection-access", @"com.apple.private.imcore.imdpersistence.database-access", 0);
  v4 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AD50], v3, 20, 2);
  objc_msgSend_addIndexesInRange_(v4, v5, 164, 4);
  v7 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AD50], v6, 206, 1);
  objc_msgSend_addIndexesInRange_(v7, v8, 216, 1);
  v27[0] = @"com.apple.imdpersistence.IMDPersistenceAgent-UnreadChatList";
  v28[0] = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v9, 201, 1);
  v28[1] = v4;
  v27[1] = @"com.apple.imdpersistence.IMDPersistenceAgent-StorageManagement";
  v27[2] = @"com.apple.imdpersistence.IMDPersistenceAgent-GroupMetadata";
  v27[3] = @"com.apple.imdpersistence.IMDPersistenceAgent-Syndication";
  v28[2] = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x1E696AC90], v10, 137, 1);
  v28[3] = v7;
  qword_1EDBE62E0 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v11, v28, v27, 4);
  v12 = MEMORY[0x1E695DF70];
  v16 = objc_msgSend_allObjects(qword_1EDBE62E8, v13, v14, v15);
  v19 = objc_msgSend_arrayWithArray_(v12, v17, v16, v18);
  qword_1EDBE62F0 = v19;
  v23 = objc_msgSend_allKeys(qword_1EDBE62E0, v20, v21, v22);
  return objc_msgSend_addObjectsFromArray_(v19, v24, v23, v25);
}

void __IMDPersistenceIPCServer_peer_event_handler(_xpc_connection_s *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1B8CB1210](a2);
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (a2 == MEMORY[0x1E69E9E20])
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = xpc_connection_get_pid(a1);
          _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "peer(%d) received XPC_ERROR_CONNECTION_INVALID", buf, 8u);
        }
      }

      xpc_connection_cancel(a1);
      goto LABEL_28;
    }

    if (a2 == MEMORY[0x1E69E9E18])
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_28;
      }

      v15 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(a1);
      v16 = "peer(%d) received XPC_ERROR_CONNECTION_INTERRUPTED";
    }

    else
    {
      if (a2 != MEMORY[0x1E69E9E38])
      {
        goto LABEL_28;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_28;
      }

      v15 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      *buf = 67109120;
      *&buf[4] = xpc_connection_get_pid(a1);
      v16 = "peer(%d) received XPC_ERROR_TERMINATION_IMMINENT";
    }

    _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, v16, buf, 8u);
LABEL_28:
    if ((byte_1EDBE5C38 & 1) == 0)
    {
      byte_1EDBE5C38 = 1;
      IMDPersistencePerformBlockAfterDelay(&unk_1F2FA1510, 3.0, v5, v6, v7);
    }

    return;
  }

  if (v4 != MEMORY[0x1E69E9E80])
  {
    goto LABEL_28;
  }

  int64 = xpc_dictionary_get_int64(a2, "__xpc__event_code__");
  *buf = 0u;
  v27 = 0u;
  xpc_connection_get_audit_token();
  memset(v25, 0, sizeof(v25));
  if (__IMDPersistenceCheckEntitlements(v25, int64))
  {
    v9 = xpc_dictionary_get_int64(a2, "__xpc_wants_reply__");
    xpc_retain(a2);
    xpc_retain(a1);
    v13 = os_transaction_create();
    if (v9)
    {
      reply = xpc_dictionary_create_reply(a2);
    }

    else
    {
      reply = 0;
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1B7BFCD04;
    v24[3] = &unk_1E7CB8E30;
    v22 = v9 != 0;
    v24[4] = reply;
    v24[5] = a1;
    v24[6] = a2;
    v24[7] = v13;
    v23 = objc_msgSend_copy(v24, v10, v11, v12);
    __IMDPersistenceIPCServer_command_dispatcher(int64, a1, a2, v22, reply, v23);
    if (!v22)
    {
      v23[2](v23);
    }

    goto LABEL_28;
  }

  pid = xpc_connection_get_pid(a1);
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = sub_1B7AD85AC(int64);
      v21 = IMProcessNameForPid();
      *v25 = 138412802;
      *&v25[4] = v20;
      *&v25[12] = 2112;
      *&v25[14] = v21;
      *&v25[22] = 1024;
      *&v25[24] = pid;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Denying xpc connection, task does not have entitlement for message: %@  (%@:%d)", v25, 0x1Cu);
    }
  }

  xpc_connection_cancel(a1);
}

void sub_1B7BFCCB0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7BFCC54);
  }

  _Unwind_Resume(a1);
}

void sub_1B7BFCD04(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    xpc_connection_send_message(*(a1 + 40), v2);
    xpc_release(*(a1 + 32));
  }

  xpc_release(*(a1 + 40));
  xpc_release(*(a1 + 48));
  v3 = *(a1 + 56);
}

uint64_t sub_1B7BFCD60(uint64_t a1)
{
  IMDMessageRecordMarkAllUnsuccessFullSyncMessagesAsNeedingSync(a1);
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCDB0(uint64_t a1)
{
  IMDKVValueForKey(*(a1 + 32));
  if (*(a1 + 40))
  {
    IMInsertDatasToXPCDictionary();
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCE2C(uint64_t *a1)
{
  IMDKVPersistValueForKey(a1[4], a1[5]);
  result = a1[6];
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCE84(uint64_t a1)
{
  IMDNotificationsPostNotificationsWithContext(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCED8(uint64_t a1)
{
  IMDMessageRecordRetractNotificationsForMessagesMatchingChatGUIDs(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCF2C(uint64_t a1)
{
  IMDNotificationsRetractNotificationsFromFirstUnlockWithContext(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCF80(uint64_t a1)
{
  IMDNotificationsPostUrgentNotificationsForMessages(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFCFD8(uint64_t a1)
{
  IMDNotificationsUpdatePostedNotificationsForMessages(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFD030(uint64_t a1)
{
  IMDNotificationsPostFirstUnlockMessage(*(a1 + 32), *(a1 + 40));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFD088(uint64_t a1)
{
  IMDMessageRecordMarkMessageGUIDUnread(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFD0DC(uint64_t a1)
{
  IMDMessageRecordMarkMessagesAsUnreadWithChatGUIDUpToGUIDFromMe(*(a1 + 32), *(a1 + 40), *(a1 + 56));
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

uint64_t sub_1B7BFD138(uint64_t a1)
{
  IMDChatRecordPurgeAttachments(*(a1 + 32));
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

__CFString *IMDCreateQueryRemoveMessagesFromTombStoneTableQuery(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"DELETE FROM sync_deleted_messages WHERE (recordID = ?");
  v3 = a1 - 1;
  if (a1 != 1)
  {
    do
    {
      CFStringAppend(Mutable, @" OR recordID = ?");
      --v3;
    }

    while (v3);
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

__CFString *IMDCreateQueryRemoveMessagesFromMessageTableWithMessageGuidCount(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 256);
  CFStringAppend(Mutable, @"DELETE FROM message WHERE (guid = ?");
  v3 = a1 - 1;
  if (a1 != 1)
  {
    do
    {
      CFStringAppend(Mutable, @" OR guid = ?");
      --v3;
    }

    while (v3);
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

__CFString *IMDMessageRecordGetMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifierQuery(int a1, int a2, uint64_t a3, uint64_t a4)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"SELECT message_id from chat_message_join cmj ");
  if (a1)
  {
    CFStringAppend(Mutable, @"INNER JOIN message m ON m.ROWID = cmj.message_id ");
    if (a2)
    {
      v9 = @"WHERE cmj.chat_id in (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) ";
    }

    else
    {
      v9 = @"WHERE cmj.chat_id in (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ?) ";
    }

    CFStringAppend(Mutable, v9);
    v10 = @"AND ((m.thread_originator_guid = ? AND m.thread_originator_part = ?) OR m.associated_message_guid = ?) ";
  }

  else if (a2)
  {
    v10 = @"WHERE cmj.chat_id in (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) ";
  }

  else
  {
    v10 = @"WHERE cmj.chat_id in (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ?) ";
  }

  CFStringAppend(Mutable, v10);
  if (a3 < 1 || a4)
  {
    if (a3 < 1)
    {
      if (a4 < 1)
      {
        CFRelease(Mutable);
        return 0;
      }

      v11 = @"AND cmj.message_date >= (SELECT om.date FROM message om WHERE om.guid = ?) ORDER BY cmj.message_date ASC LIMIT ? + 1";
    }

    else
    {
      v11 = @"AND cmj.message_date < (SELECT om.date FROM message om WHERE om.guid = ?) ORDER BY cmj.message_date DESC LIMIT ?";
    }
  }

  else
  {
    v11 = @"AND cmj.message_date <= (SELECT om.date FROM message om WHERE om.guid = ?) ORDER BY cmj.message_date DESC LIMIT ? + 1";
  }

  CFStringAppend(Mutable, v11);
  return Mutable;
}

id IMDMessageRecordSelectMessagesWithGUIDsChatIdentifiersOnServicesQuery1(uint64_t a1)
{
  v1 = IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery1(a1);
  v3 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v1, v2, @"DELETE", @"SELECT *");
  CFRelease(v1);
  return v3;
}

__CFString *IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery1(uint64_t a1)
{
  if (!a1)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCD24(v5, v6, v7, v8);
    }

    goto LABEL_9;
  }

  v1 = a1;
  if (a1 < 2)
  {
LABEL_9:
    v3 = @"DELETE FROM chat_message_join WHERE chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) AND message_id = (SELECT m.ROWID FROM message m WHERE m.guid = ?);";
    CFRetain(@"DELETE FROM chat_message_join WHERE chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) AND message_id = (SELECT m.ROWID FROM message m WHERE m.guid = ?);");
    return v3;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (Mutable)
  {
    v3 = Mutable;
    CFStringAppend(Mutable, CFSTR("DELETE FROM chat_message_join WHERE chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?) AND message_id IN (SELECT m.ROWID FROM message m WHERE m.guid IN (?"));
    v4 = v1 - 1;
    do
    {
      CFStringAppend(v3, @", ?");
      --v4;
    }

    while (v4);
    CFStringAppend(v3, @");"));
  }

  else
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCC74(v10, v11, v12, v13);
    }

    return 0;
  }

  return v3;
}

__CFString *IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery2(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCDE0(v2, v3, v4, v5);
    }
  }

  Mutable = CFStringCreateMutable(0, 0);
  v7 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"DELETE FROM message WHERE(    SELECT 1 FROM chat_message_join     WHERE message_id = message.rowid     LIMIT 1) IS NULL AND message.guid ");
    v11 = IMDGenerateInClauseForCount(v1, v8, v9, v10);
    CFStringAppend(v7, v11);
  }

  else
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCE9C(v12, v13, v14, v15);
    }
  }

  return v7;
}

__CFString *IMDMessageRecordDeleteMessagesWithGUIDsChatIdentifiersOnServicesQuery3(uint64_t a1)
{
  v1 = a1;
  if (!a1)
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFCF4C(v2, v3, v4, v5);
    }
  }

  Mutable = CFStringCreateMutable(0, 0);
  v7 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"UPDATE message SET cache_roomnames = (SELECT group_concat(c.room_name)                    FROM chat c INNER JOIN chat_message_join j                    ON c.ROWID = j.chat_id                    WHERE j.message_id = message.ROWID) WHERE message.guid ");
    v11 = IMDGenerateInClauseForCount(v1, v8, v9, v10);
    CFStringAppend(v7, v11);
  }

  else
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD008(v12, v13, v14, v15);
    }
  }

  return v7;
}

void sub_1B7BFD664(uint64_t a1, const char *a2, uint64_t a3, CFTypeRef *a4)
{
  v5 = a3;
  v7 = *MEMORY[0x1E695E480];
  if (a1 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = IMDGenerateInClauseForCount(a1, a2, a3, a4);
    v9 = CFStringCreateWithFormat(v7, 0, @"AND h.service NOT %@", v8);
  }

  if (a2 < 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = IMDGenerateInClauseForCount(a2, a2, a3, a4);
    v11 = CFStringCreateWithFormat(v7, 0, @"AND m.guid NOT %@", v10);
  }

  v12 = @"m.is_from_me = 0 AND";
  if (v5)
  {
    v12 = @"m.is_from_me = 1 OR";
  }

  v13 = &stru_1F2FA9728;
  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = &stru_1F2FA9728;
  }

  if (v11)
  {
    v13 = v11;
  }

  v15 = CFStringCreateWithFormat(v7, 0, @"SELECT   MAX(m.ROWID) FROM   message m   INDEXED BY message_idx_handle WHERE (  %@  m.handle_id IN(   SELECT       h.rowid     FROM       handle h     WHERE       h.id = ?       %@) )   AND m.date >= ?   AND m.was_deduplicated = 0   AND m.cache_has_attachments = 0   %@   AND im_trim(m.text) = im_trim(?)   AND m.ROWID IN(    SELECT        cm.message_id      FROM        chat_message_join cm      WHERE        m.ROWID = cm.message_id        AND cm.chat_id = (SELECT c.rowid FROM chat c WHERE c.chat_identifier = ? AND c.service_name = ?)  ) ", v12, v14, v13);
  if (v11)
  {
    CFRelease(v11);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v15)
  {
    if (a4)
    {
      *a4 = CFRetain(v15);
    }

    CFRelease(v15);
  }
}

CFTypeRef IMDMessageRecordCopyMessageMatchingBodyStringWithChatIdentifiersServicesSkippingGUIDsQuery(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = 0;
  sub_1B7BFD664(a1, a2, a3, &v4);
  return v4;
}

CFStringRef IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDsQuery(int a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = *MEMORY[0x1E695E480];
  if (a1 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = IMDGenerateInClauseForCount(a1, a2, a3, a4);
    v7 = CFStringCreateWithFormat(v5, 0, @"AND h.service NOT %@", v6);
  }

  if (v4 < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = IMDGenerateInClauseForCount(v4, a2, a3, a4);
    v9 = CFStringCreateWithFormat(v5, 0, @"AND m.guid NOT %@", v8);
  }

  v10 = &stru_1F2FA9728;
  if (v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = &stru_1F2FA9728;
  }

  if (v9)
  {
    v10 = v9;
  }

  v12 = CFStringCreateWithFormat(v5, 0, @"SELECT   MAX(m.ROWID) FROM   message m   INDEXED BY message_idx_handle WHERE   m.handle_id IN(   SELECT       h.rowid     FROM       handle h     WHERE       h.id = ?       %@ )  AND m.date >= ?   AND m.is_from_me = 0   AND m.was_deduplicated = 0   AND m.cache_roomnames IS NULL   %@   AND im_trim(m.text) = im_trim(?) ", v11, v10);
  if (v12 || (v13 = IMDatabaseLogHandle(), !os_log_type_enabled(v13, OS_LOG_TYPE_ERROR)))
  {
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  sub_1B7CFD0B8(v13, v14, v15, v16);
  if (v9)
  {
LABEL_15:
    CFRelease(v9);
  }

LABEL_16:
  if (v7)
  {
    CFRelease(v7);
  }

  return v12;
}

__CFString *IMDMessageRecordCopyMostRecentUseageOfAddressesQuery(int a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppend(Mutable, @"SELECT   MAX(cm.message_id), h.ID FROM chat_message_join cm   INNER JOIN chat_handle_join j     ON cm.chat_id = j.chat_id       INNER JOIN handle h         ON h.ROWID = j.handle_id WHERE h.ID ");
    v7 = IMDGenerateInClauseForCount(a1, v4, v5, v6);
    CFStringAppend(v3, v7);
    CFStringAppend(v3, @" GROUP BY h.ID ");
    CFStringAppend(v3, @" ORDER BY cm.message_id DESC ");
  }

  else
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD168(v8, v9, v10, v11);
    }
  }

  return v3;
}

__CFString *IMDCreateDeleteDeletedMessagesGuidsQuery(uint64_t a1)
{
  if (!a1)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD378(v5, v6, v7, v8);
    }

    return 0;
  }

  v1 = a1;
  if (a1 < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD2C8(v9, v10, v11, v12);
    }

    return 0;
  }

  v3 = Mutable;
  CFStringAppend(Mutable, @"DELETE from deleted_messages where (ROWID = ?");
  v4 = v1 - 1;
  if (v1 != 1)
  {
    do
    {
      CFStringAppend(v3, @" OR ROWID = ?");
      --v4;
    }

    while (v4);
  }

  CFStringAppend(v3, @""));
  return v3;
}

__CFString *IMDMessageRecordCountAllUnreadMessagesQuery(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (!a1)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD434(v5, a2, a3, a4);
    }
  }

  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3, a4);
  if (!objc_msgSend_isPriorityMessagesEnabled(v6, v7, v8, v9))
  {
    if (v4 >= 2)
    {
      Mutable = CFStringCreateMutable(0, 0);
      if (Mutable)
      {
        v11 = Mutable;
        CFStringAppend(Mutable, CFSTR("SELECT COUNT(1) FROM (SELECT m.rowid , cm.message_id FROM message m INNER JOIN chat_message_join cm ON cm.message_id = m.rowid INNER JOIN chat c ON c.ROWID = cm.chat_id WHERE   m.is_read == 0   AND NOT (m.ROWID in (SELECT message_id FROM chat_recoverable_message_join))  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_blackholed != 1  AND c.is_filtered NOT IN (?"));
        v14 = v4 - 1;
        do
        {
          CFStringAppend(v11, @", ?");
          --v14;
        }

        while (v14);
        goto LABEL_14;
      }

      v19 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFD4F0(v19, v20, v21, v22);
      }

      return 0;
    }

LABEL_15:
    v11 = @"SELECT   COUNT(1) FROM (SELECT   m.rowid , cm.message_id FROM   message m INNER JOIN chat_message_join cm ON  cm.message_id = m.rowid INNER JOIN chat c ON   c.ROWID = cm.chat_id WHERE   m.is_read == 0   AND NOT (m.ROWID in (SELECT message_id FROM chat_recoverable_message_join))  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_blackholed != 1  AND c.is_filtered != ?)";
    CFRetain(@"SELECT   COUNT(1) FROM (SELECT   m.rowid , cm.message_id FROM   message m INNER JOIN chat_message_join cm ON  cm.message_id = m.rowid INNER JOIN chat c ON   c.ROWID = cm.chat_id WHERE   m.is_read == 0   AND NOT (m.ROWID in (SELECT message_id FROM chat_recoverable_message_join))  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_blackholed != 1  AND c.is_filtered != ?)");
    return v11;
  }

  if (v4 < 2)
  {
    goto LABEL_15;
  }

  v10 = CFStringCreateMutable(0, 0);
  if (!v10)
  {
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD5A0(v15, v16, v17, v18);
    }

    return 0;
  }

  v11 = v10;
  CFStringAppend(v10, CFSTR("SELECT COUNT(1) FROM (SELECT m.rowid , cm.message_id FROM message m INNER JOIN chat_message_join cm ON cm.message_id = m.rowid INNER JOIN chat c ON c.ROWID = cm.chat_id WHERE   m.is_read == 0   AND NOT (m.ROWID in (SELECT message_id FROM chat_recoverable_message_join))  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_blackholed != 1  AND c.is_filtered NOT IN (?"));
  v12 = v4 - 1;
  do
  {
    CFStringAppend(v11, @", ?");
    --v12;
  }

  while (v12);
LABEL_14:
  CFStringAppend(v11, @");"));
  return v11;
}

uint64_t IMDMessageRecordCopyAllUnreadMessagesQueryWithFilter(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v5 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"AND (%@)", a4, a1);
  }

  else
  {
    v5 = &stru_1F2FA9728;
  }

  v6 = objc_alloc(MEMORY[0x1E696AEC0]);
  return objc_msgSend_initWithFormat_(v6, v7, @"%@ %@ ORDER BY m.date DESC LIMIT %ld", v8, @"SELECT m.ROWID, m.guid, m.text, m.replace, m.service_center, m.handle_id, m.subject, m.country, m.attributedBody, m.version, m.type, m.service, m.account, m.account_guid, m.error, m.date, m.date_read, m.date_delivered, m.is_delivered, m.is_finished, m.is_emote, m.is_from_me, m.is_empty, m.is_delayed, m.is_auto_reply, m.is_prepared, m.is_read, m.is_system_message, m.is_sent, m.has_dd_results, m.is_service_message, m.is_forward, m.was_downgraded, m.is_archive, m.cache_has_attachments, m.cache_roomnames, m.was_data_detected, m.was_deduplicated, m.is_audio_message, m.is_played, m.date_played, m.item_type, m.other_handle, m.group_title, m.group_action_type, m.share_status, m.share_direction, m.is_expirable, m.expire_state, m.message_action_type, m.message_source, m.associated_message_guid, m.associated_message_type, m.balloon_bundle_id, m.payload_data, m.expressive_send_style_id, m.associated_message_range_location, m.associated_message_range_length, m.time_expressive_send_played, m.message_summary_info, m.ck_sync_state, m.ck_record_id, m.ck_record_change_tag, m.destination_caller_id, m.is_corrupt, m.reply_to_guid, m.sort_id, m.is_spam, m.has_unseen_mention, m.thread_originator_guid, m.thread_originator_part, m.syndication_ranges, m.synced_syndication_ranges, m.was_delivered_quietly, m.did_notify_recipient, m.date_retracted, m.date_edited, m.date_recovered, m.was_detonated, m.part_count, m.is_stewie, m.is_sos, m.is_critical, m.bia_reference_id, m.is_kt_verified, m.fallback_hash, m.associated_message_emoji, m.is_pending_satellite_send, m.needs_relay, m.schedule_type, m.schedule_state, m.sent_or_received_off_grid, m.is_time_sensitive, m.ck_chat_id FROM message m  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.is_read == 0  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0 ", v5, a2);
}

void _IMDSMSRecordStoreCustomFunctionBeforeDeleteChatDeleteChatBackground(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v48 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v5 = sqlite3_value_text(*a3);
    v6 = a3[1];
    v7 = sqlite3_value_bytes(v6);
    if (v7 && (v8 = v7, (v9 = sqlite3_value_blob(v6)) != 0) && (objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v10, v9, v8), (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = JWDecodeDictionary();

      if (v13)
      {
        v16 = objc_msgSend_transcriptBackgroundFileURLFromProperties_(IMDChatRecord, v14, v13, v15);
        if (!v16)
        {
          v20 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v45 = v5;
            _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "CustomFunctionBeforeDeleteChatDeleteChatBackground: chat %s has nil chat background url - nothing to do (this is not an error)", buf, 0xCu);
          }

          goto LABEL_20;
        }

        v20 = v16;
        v21 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v17, v18, v19);
        v43 = 0;
        v23 = objc_msgSend_removeItemAtURL_error_(v21, v22, v20, &v43);
        v24 = v43;

        if (v23 && !v24)
        {
          v28 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v32 = objc_msgSend_path(v20, v29, v30, v31);
            *buf = 138412546;
            v45 = v32;
            v46 = 2080;
            v47 = v5;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "CustomFunctionBeforeDeleteChatDeleteChatBackground: Successfully deleted chat backgound file at '%@' for chat %s", buf, 0x16u);
          }

LABEL_20:
          goto LABEL_16;
        }

        v33 = MEMORY[0x1E696AEC0];
        v34 = objc_msgSend_path(v20, v25, v26, v27);
        v37 = objc_msgSend_stringWithFormat_(v33, v35, @"deleting chat background file at '%@' for chat %s FAILED with error: '%@'", v36, v34, v5, v24);

        if (v37)
        {
          v38 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CFD650(v37, v38);
          }

          v39 = v37;
          v42 = objc_msgSend_cStringUsingEncoding_(v39, v40, 1, v41);
          sqlite3_result_error(a1, v42, -1);

          goto LABEL_17;
        }
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_16:
    sqlite3_result_int(a1, 0);
LABEL_17:

    return;
  }

  sqlite3_result_error(a1, "_IMDSMSRecordStateCustomFunctionDeleteChatBackground: wrong number of arguments", -1);
}

void _IMDSMSRecordStoreCustomFunctionVerifyChat(sqlite3_context *a1, const char *a2, sqlite3_value **a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3, a4);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v6, v7, v8, v9);

  if (isOneChatEnabled)
  {
    v11 = sqlite3_value_text(*a3);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v12, v11, v13);
    if (objc_msgSend___im_isParseableChatGUID(v28, v14, v15, v16))
    {
      IMComponentsFromChatGUID();
      v17 = 0;
      v18 = 0;
      if (objc_msgSend_length(v17, v19, v20, v21))
      {
        if (objc_msgSend_length(v18, v22, v23, v24) && objc_msgSend_isEqualToString_(v18, v25, *MEMORY[0x1E69A7AC8], v26))
        {
          v27 = "verify_chat: invalid style";
        }

        else
        {
          v27 = "verify_chat: invalid service";
        }
      }

      else
      {
        v27 = "verify_chat: invalid chat identifier";
      }

      sqlite3_result_error(a1, v27, -1);
    }

    else
    {
      sqlite3_result_error(a1, "verify_chat: invalid chat identifier (not parseable)", -1);
    }
  }

  else
  {
    sqlite3_result_int(a1, 0);
  }
}

void _IMDSMSRecordStoreCustomFunctionGUIDForChat(sqlite3_context *a1, const char *a2, sqlite3_value **a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, a3, a4);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v6, v7, v8, v9);

  if (isOneChatEnabled)
  {
    v11 = sqlite3_value_text(*a3);
    v12 = sqlite3_value_text(a3[1]);
    v13 = sqlite3_value_int(a3[2]);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, v11, v15);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v17, v12, v18);
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v30 = 138412802;
        v31 = v16;
        v32 = 2112;
        v33 = v19;
        v34 = 2048;
        v35 = v13;
        _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "chatIdentifier %@ service %@ style %lu", &v30, 0x20u);
      }
    }

    if (v16 && v19 && v13)
    {
      v21 = IMCopyGUIDForChat();
      v22 = v21;
      if (v21)
      {
        v23 = v21;
        v27 = objc_msgSend_UTF8String(v22, v24, v25, v26);
        sqlite3_result_text(a1, v27, -1, 0xFFFFFFFFFFFFFFFFLL);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            LOWORD(v30) = 0;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Failed to create chat guid from non-null chat identifer and service.", &v30, 2u);
          }
        }

        sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionGUIDForChat: Failed to create chat guid from non-null chat identifer and service.", -1);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v29 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          LOWORD(v30) = 0;
          _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Failed to create chat guid due to a null chat identifier or service.", &v30, 2u);
        }
      }

      sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionGUIDForChat: Failed to create chat guid due to a null chat identifier or service.", -1);
    }
  }

  else
  {

    sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionGUIDForChat: This should not be running when one chat is disabled.", -1);
  }
}

void _IMDSMSRecordStoreCustomFunctionIsMiCEnabled(sqlite3_context *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMIsRunningInUnitTesting())
  {
    BoolFromDomain_forKey = 1;
  }

  else
  {
    v7 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], v3, v4, v5);
    BoolFromDomain_forKey = objc_msgSend_getBoolFromDomain_forKey_(v7, v8, *MEMORY[0x1E69A6D10], *MEMORY[0x1E69A6E00]);
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = @"NO";
      if (BoolFromDomain_forKey)
      {
        v12 = @"YES";
      }

      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "isEnabled returning = isCloudKitEnabled = %@", &v18, 0xCu);
    }
  }

  v13 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v9, BoolFromDomain_forKey, v10);
  v17 = objc_msgSend_intValue(v13, v14, v15, v16);
  sqlite3_result_int(a1, v17);
}

void _IMDSMSRecordStoreCustomFunctionDomainForService(sqlite3_context *a1, uint64_t a2, sqlite3_value **a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = sqlite3_value_text(*a3);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, v4, v6);
  v8 = IMChatLookupDomainForServiceName();
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
    sqlite3_result_text(a1, v14, -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v7;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "No domain for service %@", &v16, 0xCu);
      }
    }

    sqlite3_result_null(a1);
  }
}

uint64_t IMDAttachmentRecordCreateEphemeralRecord(uint64_t a1)
{
  IMDAttachmentRecordGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    Mutable = CFArrayCreateMutable(0, 23, 0);
    if (a1)
    {
      v5 = (*MEMORY[0x1E69990F8])(a1);
    }

    else
    {
      v5 = 0;
    }

    CFArraySetValueAtIndex(Mutable, 0, v5);
    *(v3 + 16) = 3735928559;
    v6 = 22;
    do
    {
      CFArrayAppendValue(Mutable, 0);
      --v6;
    }

    while (v6);
  }

  return v3;
}

uint64_t IMDAttachmentRecordCopyAttachmentRecordUnlocked(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BFE918;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7BFE900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BFE918(uint64_t a1, uint64_t a2)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyAttachmentRecord(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7BFEA1C;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7BFEA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7BFEA1C(uint64_t a1, uint64_t a2)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordDoesAttachmentWithGUIDExist(const __CFString *a1)
{
  v2 = IMDIsRunningInDatabaseServerProcess();
  v3 = &v8;
  if ((v2 & 1) == 0)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7BFEBBC;
    v7[3] = &unk_1E7CB6838;
    v7[4] = &v8;
    __syncXPCIMDAttachmentRecordDoesAttachmentWithGUIDExist_IPCAction(v7, a1);
LABEL_6:
    v3 = v9;
    goto LABEL_7;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (a1)
  {
    if (CFStringGetLength(a1))
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1B7BFEBFC;
      v6[3] = &unk_1E7CB7520;
      v6[4] = &v8;
      v6[5] = a1;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT count(rowid) FROM Attachment where guid = ?", v6);
    }

    goto LABEL_6;
  }

LABEL_7:
  v4 = *(v3 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

BOOL sub_1B7BFEBBC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BFEBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStatementIntegerResult();
  *(*(*(a1 + 32) + 8) + 24) = result > 0;
  return result;
}

CFStringRef IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID(CFStringRef theString, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = @"YES";
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "*** IMDAttachmentRecordCopyAttachmentForGUIDIsLegacyGUID called with isLegacyGUID %@", &buf, 0xCu);
      }
    }
  }

  if (theString)
  {
    if (CFStringGetLength(theString))
    {
      if (!IMDIsRunningInDatabaseServerProcess())
      {
        *&buf = 0;
        *(&buf + 1) = &buf;
        v15 = 0x2020000000;
        v16 = 0;
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = sub_1B7BFEF84;
        v12[3] = &unk_1E7CB6838;
        v12[4] = &buf;
        __syncXPCIMDAttachmentRecordCopyAttachmentForGUID_IPCAction(v12, theString);
        theString = *(*(&buf + 1) + 24);
LABEL_22:
        _Block_object_dispose(&buf, 8);
        return theString;
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v15 = 0x2020000000;
      v16 = 0;
      if (a2)
      {
        v5 = @"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE original_guid = ? ORDER BY ROWID DESC;";
      }

      else
      {
        v5 = @"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE guid = ? ORDER BY ROWID DESC;";
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7BFEF20;
      v13[3] = &unk_1E7CB7520;
      v13[4] = &buf;
      v13[5] = theString;
      _IMDPerformLockedStatementBlockWithQuery(v5, v13);
      v6 = *(*(&buf + 1) + 24);
      if (v6)
      {
        Count = CFArrayGetCount(v6);
        if (Count >= 2)
        {
          v8 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CFD6C8();
          }

          goto LABEL_18;
        }

        if (Count == 1)
        {
LABEL_18:
          CFArrayGetValueAtIndex(*(*(&buf + 1) + 24), 0);
          ID = CSDBRecordGetID();
          theString = IMDAttachmentRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
          goto LABEL_20;
        }
      }

      theString = 0;
LABEL_20:
      v10 = *(*(&buf + 1) + 24);
      if (v10)
      {
        CFRelease(v10);
      }

      goto LABEL_22;
    }

    return 0;
  }

  return theString;
}

uint64_t sub_1B7BFEF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7BFEF84(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordRowIDForGUID(const __CFString *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v36 = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_1B7BFF3F8;
    v26[3] = &unk_1E7CB6838;
    v26[4] = &v33;
    __syncXPCIMDAttachmentRecordRIDForGUID_IPCAction(v26, a1);
    v12 = v34[3];
LABEL_21:
    _Block_object_dispose(&v33, 8);
    return v12;
  }

  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1B7CFD738();
  }

  if (a1 && CFStringGetLength(a1))
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0xD010000000;
    v36 = "";
    memset(v37, 0, sizeof(v37));
    IMDSqlOperationInitWithSharedCSDBDatabase(v37);
    IMDSqlOperationBeginTransaction(v34 + 4);
    v28 = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v30 = sub_1B7BFF388;
    v31 = &unk_1E7CB6EA8;
    v32 = &v33;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1B7BFF3E8;
    v27[3] = &unk_1E7CBD8A8;
    v27[4] = a1;
    RowsForQueryWithBindingBlock = _IMDSqlOperationGetRowsForQueryWithBindingBlock(@"SELECT ROWID FROM attachment WHERE guid = ? LIMIT 1;", &v28, v27);
    v7 = RowsForQueryWithBindingBlock;
    if (v28)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_20;
      }

      v8 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      *buf = 138412290;
      v39 = v28;
      v9 = "kIMDAttachmentRecordGetAttachmentRowIDForGUID returned error %@";
      v10 = v8;
      v11 = 12;
    }

    else
    {
      if (objc_msgSend_count(RowsForQueryWithBindingBlock, v4, v5, v6))
      {
        Object = objc_msgSend_firstObject(v7, v13, v14, v15);
        v19 = objc_msgSend_objectForKey_(Object, v17, @"ROWID", v18);
        v12 = objc_msgSend_integerValue(v19, v20, v21, v22);
        v23 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218242;
          v39 = v12;
          v40 = 2112;
          v41 = a1;
          _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_DEFAULT, "Got ROWID %lu for GUID %@", buf, 0x16u);
        }

        v30(v29);
        goto LABEL_21;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_20;
      }

      v24 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v9 = "kIMDAttachmentRecordGetAttachmentRowIDForGUID returned zero results";
      v10 = v24;
      v11 = 2;
    }

    _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
LABEL_20:

    v30(v29);
    v12 = 0;
    goto LABEL_21;
  }

  return 0;
}

void sub_1B7BFF368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7BFF388(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

int64_t sub_1B7BFF3F8(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "rrid");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyMessageForAttachmentGUID(const __CFString *a1)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v61 = 0x2020000000;
    v62 = 0;
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = sub_1B7BFFAF4;
    v50[3] = &unk_1E7CB6838;
    v50[4] = &buf;
    __syncXPCIMDAttachmentRecordCopyMessageForAttachmentGUID_IPCAction(v50, a1);
    v12 = *(*(&buf + 1) + 24);
LABEL_37:
    _Block_object_dispose(&buf, 8);
    return v12;
  }

  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Getting message record for attachment guid %@", &buf, 0xCu);
  }

  if (a1 && CFStringGetLength(a1))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v61 = 0xD010000000;
    v62 = "";
    memset(v63, 0, sizeof(v63));
    IMDSqlOperationInitWithSharedCSDBDatabase(v63);
    IMDSqlOperationBeginTransaction((*(&buf + 1) + 32));
    v53 = 0;
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v55 = sub_1B7BFFA74;
    v56 = &unk_1E7CB6EA8;
    p_buf = &buf;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = sub_1B7BFFAD4;
    v52[3] = &unk_1E7CBD8A8;
    v52[4] = a1;
    RowsForQueryWithBindingBlock = _IMDSqlOperationGetRowsForQueryWithBindingBlock(@"SELECT ROWID FROM attachment WHERE guid = ? LIMIT 1;", &v53, v52);
    v4 = RowsForQueryWithBindingBlock;
    if (v53)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_35;
      }

      v8 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      *v58 = 138412290;
      v59 = v53;
      v9 = "kIMDAttachmentRecordGetAttachmentRowIDForGUID returned error %@";
      v10 = v8;
      v11 = 12;
LABEL_10:
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, v9, v58, v11);
LABEL_35:
      v55(v54);
      goto LABEL_36;
    }

    if (!objc_msgSend_count(RowsForQueryWithBindingBlock, v5, v6, v7))
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_35;
      }

      v34 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        goto LABEL_35;
      }

      *v58 = 0;
      v9 = "kIMDAttachmentRecordGetAttachmentRowIDForGUID returned zero results";
      v10 = v34;
      v11 = 2;
      goto LABEL_10;
    }

    Object = objc_msgSend_firstObject(RowsForQueryWithBindingBlock, v13, v14, v15);
    v19 = objc_msgSend_objectForKey_(Object, v17, @"ROWID", v18);
    v23 = objc_msgSend_integerValue(v19, v20, v21, v22);
    v24 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v58 = 134217984;
      v59 = v23;
      _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_DEFAULT, "Looking up message ID that corresponds to attachment ID %lld", v58, 0xCu);
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = sub_1B7BFFAE4;
    v51[3] = &unk_1E7CBD8A8;
    v51[4] = v23;
    v25 = _IMDSqlOperationGetRowsForQueryWithBindingBlock(@"SELECT message_id FROM message_attachment_join WHERE attachment_id = ?;", &v53, v51);
    v26 = v25;
    if (v53)
    {
      if (!IMOSLoggingEnabled())
      {
        goto LABEL_34;
      }

      v30 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *v58 = 138412290;
      v59 = v53;
      v31 = "kIMDAttachmentRecordGetMessageIDFromAttachmentID returned error %@";
      v32 = v30;
      v33 = 12;
    }

    else
    {
      if (objc_msgSend_count(v25, v27, v28, v29))
      {
        v38 = objc_msgSend_firstObject(v25, v35, v36, v37);
        v41 = objc_msgSend_objectForKey_(v38, v39, @"message_id", v40);
        v45 = objc_msgSend_integerValue(v41, v42, v43, v44);
        v46 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *v58 = 134217984;
          v59 = v45;
          _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_DEFAULT, "Looking up message record corresponding to %lld", v58, 0xCu);
        }

        v12 = IMDMessageRecordCopyMessageForRowID(v45);
        IMDSqlOperationFinishQuery(*(&buf + 1) + 32);
        IMDSqlOperationCommitOrRevertTransaction((*(&buf + 1) + 32));
        IMDSqlOperationRelease(*(&buf + 1) + 32, 0);
        if (v12)
        {
          goto LABEL_37;
        }

        if (IMOSLoggingEnabled())
        {
          v47 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            *v58 = 134217984;
            v59 = v45;
            _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "Failed to look up message record for messsage_id %llu", v58, 0xCu);
          }
        }

        goto LABEL_36;
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_34;
      }

      v48 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *v58 = 0;
      v31 = "kIMDAttachmentRecordGetMessageIDFromAttachmentID returned zero results";
      v32 = v48;
      v33 = 2;
    }

    _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, v31, v58, v33);
LABEL_34:
    v55(v54);
LABEL_36:
    v12 = 0;
    goto LABEL_37;
  }

  return 0;
}

void sub_1B7BFFA5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7BFFA74(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

uint64_t sub_1B7BFFAF4(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDMessageRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyAttachmentStickers(int64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v45 = 0;
    v46 = &v45;
    v47 = 0x3052000000;
    v48 = sub_1B7AE1B50;
    v49 = sub_1B7AE25B8;
    v50 = 0;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v52[3] = Mutable;
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = sub_1B7BFFEC8;
    v44[3] = &unk_1E7CB7998;
    v44[4] = &v45;
    v44[5] = @"SELECT sticker_user_info, filename, created_date, attribution_info FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON ma.message_id = m.ROWID WHERE a.sticker_user_info IS NOT NULL AND m.is_from_me=1 AND a.transfer_state=5 GROUP BY filename ORDER BY a.ROWID DESC LIMIT ?;";
    v44[6] = a1;
    IMDRunSqlOperation(v44);
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = v46[5];
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v40, v55, 16);
    if (v6)
    {
      v38 = *v41;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v40 + 1) + 8 * i);
          objc_msgSend_valueForKey_(v8, v4, @"attribution_info", v5);
          v9 = JWDecodeDictionary();
          v12 = objc_msgSend_valueForKey_(v9, v10, @"accessl", v11);
          v15 = MEMORY[0x1E695DF20];
          if (v12)
          {
            v16 = objc_msgSend_valueForKey_(v8, v13, @"filename", v14);
            v19 = objc_msgSend_valueForKey_(v8, v17, @"sticker_user_info", v18);
            v22 = objc_msgSend_valueForKey_(v8, v20, @"created_date", v21);
            v25 = objc_msgSend_valueForKey_(v9, v23, @"accessl", v24);
          }

          else
          {
            v16 = objc_msgSend_valueForKey_(v8, v13, @"filename", v14);
            v19 = objc_msgSend_valueForKey_(v8, v28, @"sticker_user_info", v29);
            v22 = objc_msgSend_valueForKey_(v8, v30, @"created_date", v31);
            v25 = objc_msgSend_valueForKey_(v8, v32, @"filename", v33);
          }

          v34 = objc_msgSend_dictionaryWithObjectsAndKeys_(v15, v26, v16, v27, @"filename", v19, @"sticker_user_info", v22, @"created_date", v25, @"accessibility_string", 0);
          CFArrayAppendValue(v52[3], v34);
        }

        v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v40, v55, 16);
      }

      while (v6);
    }

    _Block_object_dispose(&v45, 8);
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_1B7BFFF64;
    v39[3] = &unk_1E7CB6838;
    v39[4] = &v51;
    __syncXPCIMDAttachmentRecordCopyStickers_IPCAction(v39, a1);
  }

  v35 = v52[3];
  _Block_object_dispose(&v51, 8);
  return v35;
}

void sub_1B7BFFE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 256), 8);
  _Unwind_Resume(a1);
}

sqlite3_stmt **sub_1B7BFFEC8(void *a1, sqlite3_stmt **a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7BFFF58;
  v7[3] = &unk_1E7CB75B0;
  v4 = a1[5];
  v5 = a1[6];
  v7[4] = a2;
  v7[5] = v5;
  result = _IMDSqlOperationGetRowsWithBindingBlock(a2, v4, v7);
  *(*(a1[4] + 8) + 40) = result;
  return result;
}

void sub_1B7BFFF64(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    count = xpc_array_get_count(v4);
    if (count)
    {
      v6 = count;
      for (i = 0; i != v6; ++i)
      {
        xpc_array_get_dictionary(v4, i);
        v8 = IMGetXPCStringFromDictionary();
        v9 = IMGetXPCDataFromDictionary();
        v10 = IMGetXPCIntFromDictionary();
        v11 = IMGetXPCStringFromDictionary();
        v12 = MEMORY[0x1E695DF20];
        v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v13, v10, v14);
        v18 = objc_msgSend_dictionaryWithObjectsAndKeys_(v12, v16, v8, v17, @"filename", v9, @"sticker_user_info", v15, @"created_date", v11, @"accessibility_string", 0);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v18);
      }
    }
  }
}

const void *IMDAttachmentCopyAttachmentWithStickerPath(CFStringRef theString)
{
  v17 = *MEMORY[0x1E69E9840];
  if (theString && CFStringGetLength(theString) > 0)
  {
    if (!IMDIsRunningInDatabaseServerProcess())
    {
      *&v14 = 0;
      *(&v14 + 1) = &v14;
      v15 = 0x2020000000;
      v16 = 0;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = sub_1B7C00418;
      v10[3] = &unk_1E7CB6838;
      v10[4] = &v14;
      __syncXPCIMDAttachmentRecordCopyStickerAttachmentForStickerCachePath_IPCAction(v10, theString);
      v6 = *(*(&v14 + 1) + 24);
LABEL_19:
      _Block_object_dispose(&v14, 8);
      return v6;
    }

    *&v14 = 0;
    *(&v14 + 1) = &v14;
    v15 = 0x2020000000;
    v16 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7C003B4;
    v11[3] = &unk_1E7CB7520;
    v11[4] = &v14;
    v11[5] = theString;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE filename LIKE ?;", v11);
    v2 = *(*(&v14 + 1) + 24);
    if (v2)
    {
      Count = CFArrayGetCount(v2);
      if (Count >= 2)
      {
        if (IMOSLoggingEnabled())
        {
          v4 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v13 = theString;
            _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "There appears to be more than one sticker with sticker path [%@]", buf, 0xCu);
          }
        }

        goto LABEL_15;
      }

      if (Count == 1)
      {
LABEL_15:
        CFArrayGetValueAtIndex(*(*(&v14 + 1) + 24), 0);
        ID = CSDBRecordGetID();
        v6 = IMDAttachmentRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
        goto LABEL_17;
      }
    }

    v6 = 0;
LABEL_17:
    v8 = *(*(&v14 + 1) + 24);
    if (v8)
    {
      CFRelease(v8);
    }

    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      LODWORD(v14) = 138412290;
      *(&v14 + 4) = theString;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Invalid parameter to IMDAttachmentCountAttachmentsWithStickerPath stickerCachePath %@", &v14, 0xCu);
    }
  }

  return 0;
}

uint64_t sub_1B7C003B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7C00418(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _IMDAttachmentRecordProcessStickerPathAttachmentCount(uint64_t result)
{
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t IMDAttachmentRecordDoesStickerPathHaveAttachments(CFStringRef theString)
{
  v10 = *MEMORY[0x1E69E9840];
  if (theString && CFStringGetLength(theString) > 0)
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v8 = 0x2020000000;
    v9 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = sub_1B7C00658;
      v6[3] = &unk_1E7CB7520;
      v6[4] = &buf;
      v6[5] = theString;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT count(rowid) FROM Attachment WHERE is_sticker = 1 AND filename LIKE ?;", v6);
    }

    else
    {
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = sub_1B7C006AC;
      v5[3] = &unk_1E7CB6838;
      v5[4] = &buf;
      __syncXPCIMDAttachmentRecordDoesStickerPathHaveAttachments_IPCAction(v5, theString);
    }

    v3 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = theString;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Invalid parameter to IMDAttachmentCountAttachmentsWithStickerPath stickerCachePath %@", &buf, 0xCu);
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_1B7C00658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  result = CSDBSqliteStatementIntegerResult();
  if (result)
  {
    v6 = result;
  }

  else
  {
    v6 = -1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  return result;
}

int64_t sub_1B7C006AC(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "int64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFStringRef IMDAttachmentRecordCopyAttachmentForGUIDUnlocked(CFStringRef theString)
{
  v1 = theString;
  if (!theString)
  {
    return v1;
  }

  if (!CFStringGetLength(theString))
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7C00860;
  v8[3] = &unk_1E7CB7520;
  v8[4] = &v9;
  v8[5] = v1;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE guid = ? ORDER BY ROWID DESC;", v8);
  v2 = v10[3];
  if (!v2)
  {
    goto LABEL_10;
  }

  Count = CFArrayGetCount(v2);
  if (Count >= 2)
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD6C8();
    }

    goto LABEL_9;
  }

  if (Count != 1)
  {
LABEL_10:
    v1 = 0;
    goto LABEL_11;
  }

LABEL_9:
  CFArrayGetValueAtIndex(v10[3], 0);
  ID = CSDBRecordGetID();
  v1 = IMDAttachmentRecordCreateFromRecordIDUnlocked(*MEMORY[0x1E695E480], ID);
LABEL_11:
  v6 = v10[3];
  if (v6)
  {
    CFRelease(v6);
  }

  _Block_object_dispose(&v9, 8);
  return v1;
}

void sub_1B7C00838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C00860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyRecentFilenames(int64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7C00ADC;
    v4[3] = &unk_1E7CB7520;
    v4[4] = &v6;
    v4[5] = a1;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT filename from attachment where mime_type in (image/jpeg, image/png, image/gif)  order by ROWID DESC LIMIT ?", v4);
  }

  else
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = sub_1B7C00A08;
    v5[3] = &unk_1E7CB6838;
    v5[4] = &v6;
    __syncXPCIMDAttachmentRecordCopyRecentFilenames_IPCAction(v5, a1);
  }

  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

void sub_1B7C00A08(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        string = xpc_array_get_string(v4, v7);
        if (string)
        {
          v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, string, v11);
          if (v12)
          {
            CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v12);
          }
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t sub_1B7C00ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1E695E9C0];
    do
    {
      if (sqlite3_column_text(*(a4 + 8), 0))
      {
        v9 = sqlite3_column_text(*(a4 + 8), 0);
        v10 = CFStringCreateWithCString(v7, v9, 0x8000100u);
        if (v10)
        {
          v11 = v10;
          v12 = *(*(*(a1 + 32) + 8) + 24);
          if (!v12)
          {
            *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
            v12 = *(*(*(a1 + 32) + 8) + 24);
          }

          CFArrayAppendValue(v12, v11);
          CFRelease(v11);
        }
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

void IMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState(sqlite3_int64 a1, sqlite3_int64 a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v6[0]) = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Request to mark attachment with ROWID %lld as failed to upload to cloudKit", v6, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v7, 0, sizeof(v7));
    memset(v6, 0, sizeof(v6));
    IMDSqlOperationInitWithSharedCSDBDatabase(v6);
    _IMDSqlOperationBeginQuery(v6, @"update attachment set ck_sync_state = ? where rowid=?");
    IMDSqlStatementBindInt64(v7, a2);
    IMDSqlStatementBindInt64(v7, a1);
    IMDSqlOperationFinishQuery(v6);
    IMDSqlOperationRelease(v6, 0);
  }

  else
  {
    __syncXPCIMDAttachmentRecordMarkAttachmentWithROWIDWithSyncState_IPCAction(0, a1, a2);
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v6[0]) = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Finished marking attachment with ROWID %lld as failed to upload (2)", v6, 0xCu);
  }
}

void IMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit(sqlite3_int64 a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v4[0]) = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to mark attachment with ROWID %lld as clean", v4, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    memset(v5, 0, sizeof(v5));
    memset(v4, 0, sizeof(v4));
    IMDSqlOperationInitWithSharedCSDBDatabase(v4);
    _IMDSqlOperationBeginQuery(v4, @"update attachment set ck_sync_state = 1,transfer_state = 5 where rowid=?");
    IMDSqlStatementBindInt64(v5, a1);
    IMDSqlOperationFinishQuery(v4);
    IMDSqlOperationRelease(v4, 0);
  }

  else
  {
    __syncXPCIMDAttachmentRecordMarkAttachmentWithROWIDAsSyncedWithCloudKit_IPCAction(0, a1);
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v4[0]) = 134217984;
    *(v4 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_DEFAULT, "Finished marking attachment with ROWID %lld as clean", v4, 0xCu);
  }
}

void IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"update attachment set ck_sync_state=0, ck_server_change_token_blob='', ck_record_id='';", &unk_1F2FA0650);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Returned from DB call after marking all attachments as dirty.", v2, 2u);
      }
    }
  }
}

void sub_1B7C00FF4(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDAttachmentRecordMarkAllAttachmentsAsNeedingCloudKitSync updated attachments as dirty ", v2, 2u);
    }
  }
}

void IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v0 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState", v2, 2u);
      }
    }

    memset(v2, 0, sizeof(v2));
    IMDSqlOperationInitWithSharedCSDBDatabase(v2);
    IMDSqlOperationExecuteQuery(v2, @"UPDATE attachment SET ck_sync_state == 1 WHERE ck_sync_state == 5;", &unk_1F2F9FA90);
    IMDSqlOperationExecuteQuery(v2, @"UPDATE attachment SET ck_sync_state=0 where ck_sync_state in (2,3,5) OR (ck_sync_state==1 AND guid not like at_%);", &unk_1F2FA1530);
    IMDSqlOperationRelease(v2, 0);
  }

  else
  {
    __syncXPCIMDAttachmentResetAllAttachmentsInFailedCloudDownloadState_IPCAction(0);
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        LOWORD(v2[0]) = 0;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState Returned from DB call after resetting all failed cloud attachment downloads.", v2, 2u);
      }
    }
  }
}

void sub_1B7C01208(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState update all failed cloud attachment downloads ", v2, 2u);
    }
  }
}

void sub_1B7C012A8(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "IMDAttachmentResetAllAttachmentsInFailedCloudDownloadState reset all failed cloud attachments ", v2, 2u);
    }
  }
}

uint64_t IMDAttachmentRecordGetNonSyncedAttachmentDiskSpace(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Request to fetch the non synced attachment disk space", buf, 2u);
  }

  *buf = 0;
  v9 = buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7C01534;
    v7[3] = &unk_1E7CB7390;
    v7[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT sum(total_bytes) FROM attachment WHERE ck_sync_state != 1 AND hide_attachment == 0 ORDER BY created_date ASC;", v7);
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v9 + 3);
      *v12 = 134217984;
      v13 = v3;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Returning non synced attachment disk space with: %lld bytes", v12, 0xCu);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7C0156C;
    v6[3] = &unk_1E7CB6838;
    v6[4] = buf;
    __syncXPCIMDAttachmentRecordGetNonSyncedAttachmentDiskSpace_IPCAction(v6);
  }

  v4 = *(v9 + 3);
  _Block_object_dispose(buf, 8);
  return v4;
}

void sub_1B7C01514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C01534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

int64_t sub_1B7C0156C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "diskSpace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordGetPurgeableDiskSpace(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v1 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Request to fetch the purgeable disk space", buf, 2u);
  }

  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    *buf = 0u;
    v26 = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    _IMDSqlOperationBeginQuery(buf, @"SELECT filename, total_bytes FROM attachment WHERE ck_sync_state == 1 AND transfer_state == 5 AND ck_server_change_token_blob != '' AND ck_server_change_token_blob NOT NULL;");
    v2 = 0;
    v3 = 0;
    while (IMDSqlOperationHasRows(buf))
    {
      IMDSqlOperationColumnByIndex(buf, 0, v40);
      v4 = IMDStringFromSqlColumn(v40);
      IMDSqlOperationColumnByIndex(buf, 1, v40);
      v5 = IMDInt64FromSqlColumn(v40);
      if (objc_msgSend_length(v4, v6, v7, v8) && (v12 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v9, v10, v11), v14 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v13, @"~", @"/var/mobile"), objc_msgSend_fileExistsAtPath_(v12, v15, v14, v16)))
      {
        v37[3] += v5;
        ++v3;
      }

      else
      {
        v17 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v4, v18, @"~", @"/var/mobile");
          *v40 = 138412290;
          v41 = v19;
          _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "File does not exist at path %@", v40, 0xCu);
        }
      }

      ++v2;
    }

    IMDSqlOperationFinishQuery(buf);
    IMDSqlOperationRelease(buf, 0);
    v20 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v37[3];
      *v40 = 134218496;
      v41 = v21;
      v42 = 2048;
      v43 = v3;
      v44 = 2048;
      v45 = v2;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_DEFAULT, "returning purgeable disk space results (%lld) to delete number of attachments to delete (%lld) number of attachments total (%lld) ", v40, 0x20u);
    }
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1B7C018F4;
    v24[3] = &unk_1E7CB6838;
    v24[4] = &v36;
    __syncXPCIMDAttachmentRecordGetPurgeableDiskSpace_IPCAction(v24);
  }

  v22 = v37[3];
  _Block_object_dispose(&v36, 8);
  return v22;
}

int64_t sub_1B7C018F4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_int64(xdict, "purgeableDiskSpace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace(int64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to copy attachments to metric what we would purge", buf, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    LODWORD(v18) = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7C01B9C;
    v14[3] = &unk_1E7CB7390;
    v14[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT COUNT(*) FROM attachment WHERE ck_sync_state == 1 AND transfer_state == 5 AND ck_server_change_token_blob != '' AND ck_server_change_token_blob NOT NULL;", v14);
    v3 = arc4random_uniform(*(v16 + 6));
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v5, v3, v6);
      v10 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v8, *(v16 + 6), v9);
      *v19 = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v10;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Offset we are choosing: %@ number of available records: %@", v19, 0x16u);
    }

    v11 = IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace(a1, v3);
  }

  else
  {
    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    v18 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7C01F50;
    v13[3] = &unk_1E7CB6838;
    v13[4] = buf;
    __syncXPCIMDAttachmentRecordCopyAttachmentsToMetricForDiskSpace_IPCAction(v13, a1);
    v11 = *(v16 + 3);
  }

  _Block_object_dispose(buf, 8);
  return v11;
}

void sub_1B7C01B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C01B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = CSDBSqliteStatementIntegerResult();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace(int64_t a1, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = a2;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Request to copy attachments to purge from disk that have been synced to CloudKit with bytes to free up: %lld starting offset: %d", buf, 0x12u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v28 = 0;
    v29 = &v28;
    v30 = 0x2020000000;
    v31 = 0;
    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v27 = a2;
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = a1 < 1;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v13 = sub_1B7C02718;
    v14 = &unk_1E7CBD920;
    v21 = a2;
    v15 = v26;
    v16 = &v22;
    v19 = @"SELECT ROWID, guid, created_date, start_date, filename, uti, mime_type, transfer_state, is_outgoing, user_info, transfer_name, total_bytes, is_sticker, sticker_user_info, attribution_info, hide_attachment, ck_sync_state, ck_server_change_token_blob, ck_record_id, original_guid, is_commsafety_sensitive, emoji_image_content_identifier, emoji_image_short_description, preview_generation_state FROM attachment WHERE ck_sync_state == 1 AND transfer_state == 5 AND ck_server_change_token_blob != '' AND ck_server_change_token_blob NOT NULL ORDER BY created_date ASC LIMIT ? OFFSET ?;";
    v20 = a1;
    v17 = &v28;
    v18 = buf;
    while ((v23[3] & 1) == 0)
    {
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = a1 - v29[3];
        *v32 = 134217984;
        v33 = v6;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Going to try and free up disk space with remaining bytes to free up: %lld", v32, 0xCu);
      }

      v13(v12);
    }

    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      Count = CFArrayGetCount(*(*&buf[8] + 24));
      *v32 = 67109120;
      LODWORD(v33) = Count;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "returning results (%d) to delete ", v32, 8u);
    }

    v7 = *(*&buf[8] + 24);
    _Block_object_dispose(&v22, 8);
    _Block_object_dispose(v26, 8);
    _Block_object_dispose(&v28, 8);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    Mutable = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1B7C02A1C;
    v11[3] = &unk_1E7CB6838;
    v11[4] = buf;
    __syncXPCIMDAttachmentRecordCopyAttachmentsToPurgeForDiskSpace_IPCAction(v11, a1, a2);
    v7 = *(*&buf[8] + 24);
  }

  _Block_object_dispose(buf, 8);
  return v7;
}

void sub_1B7C01EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v30 - 176), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B7C01F50(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        v9 = xpc_array_get_value(v4, v7);
        v10 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(v9);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        if (v10)
        {
          CFRelease(v10);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

__CFDictionary *IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChatsTest(int64_t a1, int64_t a2)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x3052000000;
    v39 = sub_1B7AE1B50;
    v40 = sub_1B7AE25B8;
    v41 = objc_msgSend_array(MEMORY[0x1E695DEC8], v4, v5, v6);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_1B7C02434;
    v35[3] = &unk_1E7CB7998;
    v35[4] = &v36;
    v35[5] = @"SELECT DISTINCT chat_id FROM (SELECT chat_id,message_date FROM chat_message_join ORDER BY message_date desc) ORDER BY message_date DESC LIMIT ?;";
    v35[6] = a1;
    IMDRunSqlOperation(v35);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = 0;
    v12 = *MEMORY[0x1E695E480];
    while (v11 < objc_msgSend_count(v37[5], v7, v8, v9))
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_msgSend_objectAtIndexedSubscript_(v37[5], v13, v11, v14);
      v19 = objc_msgSend_valueForKey_(v16, v17, @"chat_id", v18);
      v22 = objc_msgSend_stringWithFormat_(v15, v20, @"%@", v21, v19);
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = sub_1B7C024D0;
      v34[3] = &unk_1E7CBD018;
      v34[4] = v22;
      v34[5] = &v42;
      v34[6] = a2;
      _IMDPerformLockedStatementBlockWithQuery(@"SELECT a.ROWID, a.guid, a.is_sticker, a.transfer_name, a.filename FROM attachment a JOIN (SELECT ma.attachment_id as a_id, message_date as m_date FROM message_attachment_join ma JOIN (SELECT cm.message_id as message_id, cm.message_date as message_date FROM message m JOIN chat_message_join cm WHERE m.cache_has_attachments = 1 AND cm.chat_id AND cm.chat_id = ? AND m.rowid = cm.message_id) as tmp WHERE ma.message_id = tmp.message_id) as tmp2 WHERE a.rowid = tmp2.a_id ORDER BY tmp2.m_date DESC LIMIT ?", v34);
      v23 = v43[3];
      if (v23)
      {
        Count = CFArrayGetCount(v23);
      }

      else
      {
        Count = 0;
      }

      v25 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          CFArrayGetValueAtIndex(v43[3], i);
          ID = CSDBRecordGetID();
          v28 = IMDAttachmentRecordCreateFromRecordIDUnlocked(v12, ID);
          CFArrayAppendValue(v25, v28);
          if (v28)
          {
            CFRelease(v28);
          }
        }
      }

      CFDictionarySetValue(Mutable, v22, v25);
      if (v25)
      {
        CFRelease(v25);
      }

      v29 = v43[3];
      if (v29)
      {
        CFRelease(v29);
        v43[3] = 0;
      }

      ++v11;
    }

    v31 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    CFArrayAppendValue(v31, Mutable);
    _Block_object_dispose(&v36, 8);
    v30 = &v42;
  }

  else
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = CFDictionaryCreateMutable(0, 0, 0, 0);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1B7C02540;
    v33[3] = &unk_1E7CB74D0;
    v33[4] = &v36;
    v33[5] = &v42;
    __syncXPCIMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats_IPCAction(v33, a1, a2);
    Mutable = v43[3];
    _Block_object_dispose(&v42, 8);
    v30 = &v36;
  }

  _Block_object_dispose(v30, 8);
  return Mutable;
}

void sub_1B7C023C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose((v29 - 136), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

sqlite3_stmt **sub_1B7C02434(void *a1, sqlite3_stmt **a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7C024C4;
  v7[3] = &unk_1E7CB75B0;
  v4 = a1[5];
  v5 = a1[6];
  v7[4] = a2;
  v7[5] = v5;
  result = _IMDSqlOperationGetRowsWithBindingBlock(a2, v4, v7);
  *(*(a1[4] + 8) + 40) = result;
  return result;
}

uint64_t sub_1B7C024D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  result = CSDBRecordStoreProcessStatement();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

xpc_object_t sub_1B7C02540(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "dictionary_result");
  if (result)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7C025D4;
    v4[3] = &unk_1E7CBD8D0;
    v5 = *(a1 + 32);
    return xpc_dictionary_apply(result, v4);
  }

  return result;
}

uint64_t sub_1B7C025D4(uint64_t a1, uint64_t a2, xpc_object_t xarray)
{
  if (xpc_array_get_count(xarray))
  {
    v6 = 0;
    v7 = MEMORY[0x1E695E9C0];
    do
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v7);
      }

      value = xpc_array_get_value(xarray, v6);
      v9 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(value);
      v10 = IMDAttachmentRecordCopyFilename(0, v9, 0);
      if (v10)
      {
        v11 = v10;
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        CFRelease(v11);
      }

      if (v9)
      {
        CFRelease(v9);
      }

      ++v6;
    }

    while (xpc_array_get_count(xarray) > v6);
  }

  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = objc_msgSend_initWithUTF8String_(v12, v13, a2, v14);
  CFDictionaryAddValue(*(*(*(a1 + 40) + 8) + 24), v15, *(*(*(a1 + 32) + 8) + 24));
  v16 = *(*(*(a1 + 32) + 8) + 24);
  if (v16)
  {
    CFRelease(v16);
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return 1;
}

void sub_1B7C02718(uint64_t a1)
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v2 = *(a1 + 64);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1B7C029A4;
  v25[3] = &unk_1E7CBD8F8;
  v25[4] = *(a1 + 32);
  v25[5] = &v26;
  _IMDPerformLockedStatementBlockWithQuery(v2, v25);
  v3 = v27[3];
  if (!v3)
  {
    v5 = 0;
    goto LABEL_7;
  }

  Count = CFArrayGetCount(v3);
  v5 = Count;
  if (!Count)
  {
LABEL_7:
    *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_8:
    if (v5 < 1)
    {
      goto LABEL_19;
    }

    goto LABEL_9;
  }

  if (Count <= 49)
  {
    if (*(a1 + 80))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_9:
  v6 = 0;
  v7 = *MEMORY[0x1E695E480];
  while (*(*(*(a1 + 48) + 8) + 24) < *(a1 + 72))
  {
    CFArrayGetValueAtIndex(v27[3], v6);
    ID = CSDBRecordGetID();
    v9 = IMDAttachmentRecordCreateFromRecordIDUnlocked(v7, ID);
    v10 = IMDAttachmentRecordCopyFilename(0, v9, 0);
    if (objc_msgSend_length(v10, v11, v12, v13))
    {
      v17 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v14, v15, v16);
      if (objc_msgSend_fileExistsAtPath_(v17, v18, v10, v19))
      {
        *(*(*(a1 + 48) + 8) + 24) += IMDAttachmentRecordGetTotalBytes(v9);
        CFArrayAppendValue(*(*(*(a1 + 56) + 8) + 24), v9);
      }
    }

    if (v9)
    {
      CFRelease(v9);
    }

    if (v5 == ++v6)
    {
      goto LABEL_19;
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_19:
  v20 = v27[3];
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 80);
  v22 = *(*(a1 + 32) + 8);
  v23 = *(v22 + 24);
  if (v21 < 1)
  {
    goto LABEL_30;
  }

  if (v23 >= v21 || v23 + 50 < v21)
  {
    if (v5 <= 49 && v23 >= v21)
    {
      *(v22 + 24) = 0;
      goto LABEL_31;
    }

LABEL_30:
    *(v22 + 24) = v23 + v5;
    goto LABEL_31;
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_31:
  _Block_object_dispose(&v26, 8);
}

void sub_1B7C02970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C029A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt();
  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1B7C02A1C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        v9 = xpc_array_get_value(v4, v7);
        v10 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(v9);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        if (v10)
        {
          CFRelease(v10);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

__CFString *sub_1B7C02AEC(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x1E69E9840];
  switch(a1)
  {
    case 3:
      v4 = @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON m.rowid = ma.message_id WHERE a.ck_sync_state == 0 AND m.balloon_bundle_id == 'com.apple.messages.chatbot' ORDER BY a.ROWID LIMIT ? ";
      v5 = @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON m.rowid = ma.message_id WHERE a.ck_sync_state == 0 AND m.balloon_bundle_id == 'com.apple.messages.chatbot' AND a.ROWID > ? ORDER BY a.ROWID LIMIT ? ";
LABEL_7:
      if (a2)
      {
        return v5;
      }

      else
      {
        return v4;
      }

    case 2:
      v4 = @"SELECT * FROM attachment a WHERE a.ck_sync_state == 1 AND a.transfer_state == 0 ORDER BY a.ROWID LIMIT ? ";
      v5 = @"SELECT * FROM attachment a WHERE a.ck_sync_state == 1 AND a.transfer_state == 0 AND a.ROWID > ? ORDER BY a.ROWID LIMIT ? ";
      goto LABEL_7;
    case 1:
      v4 = @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON m.rowid = ma.message_id WHERE a.ck_sync_state == 0 AND (m.balloon_bundle_id IS NULL OR m.balloon_bundle_id != 'com.apple.messages.chatbot') ORDER BY a.ROWID LIMIT ? ";
      v5 = @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON a.ROWID = ma.attachment_id INNER JOIN message m ON m.rowid = ma.message_id WHERE a.ck_sync_state == 0 AND (m.balloon_bundle_id IS NULL OR m.balloon_bundle_id != 'com.apple.messages.chatbot') AND a.ROWID > ? ORDER BY a.ROWID LIMIT ? ";
      goto LABEL_7;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = @"NO";
      if (a2)
      {
        v8 = @"YES";
      }

      v9 = 134218242;
      v10 = a1;
      v11 = 2112;
      v12 = v8;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDAttachmentQueryStringForIMAttachmentsQuery unknown IMAttachmentsQuery type %lld, fromRow %@", &v9, 0x16u);
    }
  }

  return 0;
}

__CFArray *IMDAttachmentRecordCopyAttachmentsForQueryWithLimit(uint64_t a1, void *a2, int64_t a3)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v6 = sub_1B7C02AEC(a1, a2 != 0);
    if (v6)
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = sub_1B7C02E80;
      v18[3] = &unk_1E7CBD018;
      v18[4] = a2;
      v18[5] = &v19;
      v18[6] = a3;
      _IMDPerformLockedStatementBlockWithQuery(v6, v18);
      v7 = v20[3];
      if (v7 && (Count = CFArrayGetCount(v7), Count >= 1))
      {
        v9 = 0;
        Mutable = 0;
        v11 = *MEMORY[0x1E695E480];
        v12 = MEMORY[0x1E695E9C0];
        do
        {
          CFArrayGetValueAtIndex(v20[3], v9);
          ID = CSDBRecordGetID();
          v14 = IMDAttachmentRecordCreateFromRecordIDUnlocked(v11, ID);
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, v12);
          }

          CFArrayAppendValue(Mutable, v14);
          if (v14)
          {
            CFRelease(v14);
          }

          ++v9;
        }

        while (Count != v9);
      }

      else
      {
        Mutable = 0;
      }

      v15 = v20[3];
      if (v15)
      {
        CFRelease(v15);
      }
    }

    else
    {
      Mutable = 0;
    }
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1B7C02EFC;
    v17[3] = &unk_1E7CB6838;
    v17[4] = &v19;
    __syncXPCIMDAttachmentRecordCopyAttachmentsForQueryWithLimit_IPCAction(v17, a1, a2, a3);
    Mutable = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  return Mutable;
}

uint64_t sub_1B7C02E80(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[4];
  if (v5)
  {
    objc_msgSend_longLongValue(v5, a2, a3, a4);
    CSDBSqliteBindInt64();
  }

  CSDBSqliteBindInt64();
  result = CSDBRecordStoreProcessStatement();
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

void sub_1B7C02EFC(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        v9 = xpc_array_get_value(v4, v7);
        v10 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(v9);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        if (v10)
        {
          CFRelease(v10);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

uint64_t _IMDAttachmentRecordGetGuidsAndTransferNamesFromQueryRows(void *a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v37 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v35 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = a1;
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v2, &v39, v45, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v40;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v39 + 1) + 8 * i);
        v10 = objc_msgSend_valueForKey_(v9, v4, @"guid", v5);
        v13 = objc_msgSend_valueForKey_(v9, v11, @"transfer_name", v12);
        v16 = objc_msgSend_valueForKey_(v9, v14, @"filename", v15);
        v19 = objc_msgSend_valueForKey_(v9, v17, @"is_sticker", v18);
        v23 = objc_msgSend_intValue(v19, v20, v21, v22);
        if (v23 != 1 || v13 == 0)
        {
          v26 = v23;
          if (v23 != 1 && v10 != 0)
          {
            objc_msgSend_addObject_(v36, v4, v10, v5);
          }

          if (v26 != 1 && v16 != 0)
          {
            objc_msgSend_addObject_(v35, v4, v16, v5);
          }
        }

        else
        {
          StickerPathFromTransferName = _IMDAttachmentRecordGetStickerPathFromTransferName(v13, v4, v24, v5);
          if (objc_msgSend_length(StickerPathFromTransferName, v30, v31, v32))
          {
            objc_msgSend_addObject_(v37, v4, StickerPathFromTransferName, v5);
          }
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v39, v45, 16);
    }

    while (v6);
  }

  v43[0] = @"guids";
  v43[1] = @"transfernames";
  v44[0] = v36;
  v44[1] = v37;
  v43[2] = @"filenames";
  v44[2] = v35;
  return objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v44, v43, 3);
}

__CFString *_IMDAttachmentRecordGetStickerPathFromTransferName(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!objc_msgSend_containsString_(a1, a2, @"sticker", a4))
  {
    return &stru_1F2FA9728;
  }

  if (!objc_msgSend_containsString_(a1, v5, @"-", v6))
  {
    return &stru_1F2FA9728;
  }

  v9 = objc_msgSend_componentsSeparatedByString_(a1, v7, @"-", v8);
  if (!objc_msgSend_count(v9, v10, v11, v12))
  {
    return &stru_1F2FA9728;
  }

  v15 = objc_msgSend_objectAtIndex_(v9, v13, 0, v14);
  if (objc_msgSend_length(v15, v16, v17, v18))
  {
    return objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, @"%@-%@-sticker", v20, v15, v15);
  }

  return v15;
}

void IMDAttachmentRecordDeleteAttachmentPreviewsOlderThan(int64_t a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats(50, 15);
    GuidsAndTransferNamesFromQueryRows = _IMDAttachmentRecordGetGuidsAndTransferNamesFromQueryRows(v2);

    v6 = objc_msgSend_objectForKey_(GuidsAndTransferNamesFromQueryRows, v4, @"guids", v5);
    v7 = IMCachesDirectoryURL();
    v11 = objc_msgSend_path(v7, v8, v9, v10);
    v14 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v12, v11, v13, @"Previews", @"Attachments", 0);
    v17 = objc_msgSend_pathWithComponents_(MEMORY[0x1E696AEC0], v15, v14, v16);
    v32 = objc_alloc_init(MEMORY[0x1E696AC08]);
    v20 = objc_msgSend_enumeratorAtPath_(v32, v18, v17, v19);
    _IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep(v6, v17, v32, v20);
    v23 = objc_msgSend_objectForKey_(GuidsAndTransferNamesFromQueryRows, v21, @"transfernames", v22);
    v26 = objc_msgSend_arrayWithObjects_(MEMORY[0x1E695DEC8], v24, v11, v25, @"Previews", @"StickerCache", 0);
    v29 = objc_msgSend_pathWithComponents_(MEMORY[0x1E696AEC0], v27, v26, v28);
    _IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep(v23, v29, v30, v31);
  }

  else
  {

    __syncXPCIMDAttachmentRecordDeleteAttachmentPreviewsOlderThan_IPCAction(0, a1);
  }
}

id IMDAttachmentRecordCopyMostRecentAttachmentsInMostRecentChats(uint64_t a1, uint64_t a2)
{
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3052000000;
  v35 = sub_1B7AE1B50;
  v36 = sub_1B7AE25B8;
  v37 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1B7C06C7C;
  v31[3] = &unk_1E7CB7998;
  v31[4] = &v32;
  v31[5] = @"SELECT DISTINCT chat_id FROM (SELECT chat_id,message_date FROM chat_message_join ORDER BY message_date desc) ORDER BY message_date DESC LIMIT ?;";
  v31[6] = a1;
  IMDRunSqlOperation(v31);
  for (i = 0; objc_msgSend_count(v33[5], v4, v5, v6) > i; ++i)
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_msgSend_objectAtIndexedSubscript_(v33[5], v8, i, v9);
    v14 = objc_msgSend_valueForKey_(v11, v12, @"chat_id", v13);
    v17 = objc_msgSend_stringWithFormat_(v10, v15, @"%@", v16, v14);
    v25 = 0;
    v26 = &v25;
    v27 = 0x3052000000;
    v28 = sub_1B7AE1B50;
    v29 = sub_1B7AE25B8;
    v30 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = sub_1B7C06D18;
    v24[3] = &unk_1E7CBD9C0;
    v24[4] = v17;
    v24[5] = &v25;
    v24[6] = @"SELECT a.ROWID, a.guid, a.is_sticker, a.transfer_name, a.filename FROM attachment a JOIN (SELECT ma.attachment_id as a_id, message_date as m_date FROM message_attachment_join ma JOIN (SELECT cm.message_id as message_id, cm.message_date as message_date FROM message m JOIN chat_message_join cm WHERE m.cache_has_attachments = 1 AND cm.chat_id AND cm.chat_id = ? AND m.rowid = cm.message_id) as tmp WHERE ma.message_id = tmp.message_id) as tmp2 WHERE a.rowid = tmp2.a_id ORDER BY tmp2.m_date DESC LIMIT ?";
    v24[7] = a2;
    IMDRunSqlOperation(v24);
    v20 = v26[5];
    if (v20)
    {
      objc_msgSend_addObjectsFromArray_(v23, v18, v20, v19);
    }

    _Block_object_dispose(&v25, 8);
  }

  v21 = v33[5];
  if (v21)
  {
    CFRelease(v21);
    v33[5] = 0;
  }

  _Block_object_dispose(&v32, 8);
  return v23;
}

void _IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep(void *a1, void *a2, void *a3, void *a4)
{
  *(&v47[2] + 2) = *MEMORY[0x1E69E9840];
  v8 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v45 = a2;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Deleting previews at %@", buf, 0xCu);
  }

  Object = objc_msgSend_nextObject(a4, v9, v10, v11);
  if (Object)
  {
    v17 = Object;
    v18 = 501;
    *&v16 = 138412290;
    v41 = v16;
    do
    {
      if (!--v18)
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B7C03F34;
        block[3] = &unk_1E7CB8E30;
        block[4] = a1;
        block[5] = a2;
        block[6] = a3;
        block[7] = a4;
        IMDPersistencePerformBlock(block, 0, v14, v15);
        return;
      }

      v22 = objc_msgSend_level(a4, v13, v14, v15);
      if (v22 == 3)
      {
        if (objc_msgSend_level(a4, v19, v20, v21) != 3)
        {
          goto LABEL_19;
        }

        PathComponent = objc_msgSend_lastPathComponent(v17, v23, v24, v25);
        v27 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v45 = v17;
          v46 = 2112;
          v47[0] = PathComponent;
          _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "Examining '%@' as it looks like it contains a guid '%@'.", buf, 0x16u);
        }

        if (objc_msgSend_containsObject_(a1, v28, PathComponent, v29, v41))
        {
          goto LABEL_19;
        }

        v43 = 0;
        v30 = objc_msgSend_stringByAppendingPathComponent_(a2, v23, v17, v25);
        v31 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v41;
          v45 = v30;
          _os_log_impl(&dword_1B7AD5000, v31, OS_LOG_TYPE_DEFAULT, "To Delete: %@", buf, 0xCu);
        }

        v33 = objc_msgSend_removeItemAtPath_error_(a3, v32, v30, &v43);
        v34 = IMAttachmentsLogHandle();
        v35 = os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        if (!v33)
        {
          if (!v35)
          {
            goto LABEL_19;
          }

          *buf = 138412546;
          v45 = v30;
          v46 = 2112;
          v47[0] = v43;
          v36 = v34;
          v37 = "Could ~not~ clean up '%@' due to error '%@'.";
          v38 = 22;
          goto LABEL_18;
        }

        if (v35)
        {
          *buf = v41;
          v45 = v30;
          v36 = v34;
          v37 = "Cleaned up '%@'";
          v38 = 12;
LABEL_18:
          _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_DEFAULT, v37, buf, v38);
        }
      }

      else
      {
        v39 = IMAttachmentsLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v45 = v17;
          v46 = 1024;
          LODWORD(v47[0]) = v22;
          WORD2(v47[0]) = 1024;
          *(v47 + 6) = 3;
          v36 = v39;
          v37 = "Skipping '%@' as its level is %d and our target level is %d.";
          v38 = 24;
          goto LABEL_18;
        }
      }

LABEL_19:
      v17 = objc_msgSend_nextObject(a4, v23, v24, v25, v41);
    }

    while (v17);
  }

  v40 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_DEFAULT, "_IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep File cleanse ended", buf, 2u);
  }
}

void _IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep(char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v53 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v6 = 0x1E696A000uLL;
  v7 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3, a4);
  v9 = objc_msgSend_contentsOfDirectoryAtPath_error_(v7, v8, v4, &v47);
  if (v47)
  {
    v11 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v49 = v47;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_DEFAULT, "Could ~not~ clean up sticker previews due to error '%@'.", buf, 0xCu);
    }

    goto LABEL_26;
  }

  v12 = v9;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v43, v52, 16);
  if (!v13)
  {
LABEL_26:
    v38 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_DEFAULT, "_IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep File cleanse ended", buf, 2u);
    }

    return;
  }

  v17 = v13;
  v18 = 0;
  v41 = *v44;
  *&v16 = 138412546;
  v39 = v16;
  obj = v12;
LABEL_6:
  v19 = 0;
  if (v18 <= 0x1F4)
  {
    v20 = 500 - v18;
  }

  else
  {
    v20 = 0;
  }

  while (1)
  {
    if (*v44 != v41)
    {
      objc_enumerationMutation(obj);
    }

    v21 = *(*(&v43 + 1) + 8 * v19);
    if (v20 == v19)
    {
      break;
    }

    if (_IMDAttachmentRecordShouldDeleteSticketPreviewWithFolderName(*(*(&v43 + 1) + 8 * v19), a1, v14, v15))
    {
      v23 = v4;
      v24 = objc_msgSend_stringByAppendingPathComponent_(v4, v22, v21, v15);
      v47 = 0;
      v25 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v24;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_DEFAULT, "Sticker Preview to Delete: %@", buf, 0xCu);
      }

      v29 = v6;
      v30 = objc_msgSend_defaultManager(*(v6 + 3080), v26, v27, v28, v39);
      v32 = objc_msgSend_removeItemAtPath_error_(v30, v31, v24, &v47);
      v33 = IMAttachmentsLogHandle();
      v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
      if (v32)
      {
        v6 = v29;
        v4 = v23;
        if (v34)
        {
          *buf = 138412290;
          v49 = v24;
          v35 = v33;
          v36 = "Cleaned up sticker preview '%@'";
          v37 = 12;
LABEL_20:
          _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_DEFAULT, v36, buf, v37);
        }
      }

      else
      {
        v6 = v29;
        v4 = v23;
        if (v34)
        {
          *buf = v39;
          v49 = v24;
          v50 = 2112;
          v51 = v47;
          v35 = v33;
          v36 = "Could ~not~ clean up sticker preview '%@' due to error '%@'.";
          v37 = 22;
          goto LABEL_20;
        }
      }
    }

    ++v19;
    ++v18;
    if (v17 == v19)
    {
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v43, v52, 16);
      if (v17)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    }
  }

  if (!v21)
  {
    goto LABEL_26;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B7C03EC8;
  block[3] = &unk_1E7CBD948;
  block[4] = a1;
  block[5] = v4;
  IMDPersistencePerformBlock(block, 0, v14, v15);
}

BOOL _IMDAttachmentRecordShouldDeleteSticketPreviewWithFolderName(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_length(a1, a2, a3, a4);
  v7 = IMAttachmentsLogHandle();
  result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (!result)
    {
      return result;
    }

    v12 = 138412290;
    v13 = a1;
    v11 = "Skipping folder %@ as it does not have a valid transfername";
    goto LABEL_9;
  }

  if (result)
  {
    v12 = 138412290;
    v13 = a1;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "Examining pewview folder name'%@'.", &v12, 0xCu);
  }

  if (objc_msgSend_containsObject_(a2, v9, a1, v10))
  {
    v7 = IMAttachmentsLogHandle();
    result = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v12 = 138412290;
    v13 = a1;
    v11 = "Sticker preview %@ is part of 200 last attachments, not deleting";
LABEL_9:
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, v11, &v12, 0xCu);
    return 0;
  }

  return 1;
}

void sub_1B7C03EC8(uint64_t a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Beginning iteration of _IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep attachments", v3, 2u);
  }

  _IMDAttachmentRecordDeleteStickersExceptPreviewsToKeep(*(a1 + 32), *(a1 + 40));
}

void sub_1B7C03F34(void **a1)
{
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Beginning iteration of _IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep attachments", v3, 2u);
  }

  _IMDAttachmentRecordDeleteAttachmentsExceptPreviewsToKeep(a1[4], a1[5], a1[6], a1[7]);
}

void IMDAttachmentRecordDeleteAttachmentsOlderThanDays(int64_t a1)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    sub_1B7C04060(a1);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7C040E4;
    v3[3] = &unk_1E7CB7590;
    v3[4] = v2;
    _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM attachment WHERE created_date < ? AND transfer_name != 'GroupPhotoImage';", v3);
  }

  else
  {

    __syncXPCIMDAttachmentRecordDeleteAttachmentsOlderThanDays_IPCAction(0, a1);
  }
}

uint64_t sub_1B7C04060(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  objc_msgSend_setDay_(v2, v3, -a1, v4);
  v8 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v5, v6, v7);
  v12 = objc_msgSend_date(MEMORY[0x1E695DF00], v9, v10, v11);
  v14 = objc_msgSend_dateByAddingComponents_toDate_options_(v8, v13, v2, v12, 0);

  return objc_msgSend_timeIntervalSinceReferenceDate(v14, v15, v16, v17);
}

uint64_t sub_1B7C040E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

uint64_t IMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = a1;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to fetch estimate space taken by attachments older than days %llu", buf, 0xCu);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    sub_1B7C04060(a1);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7C04398;
    v8[3] = &unk_1E7CB7520;
    v8[5] = v3;
    v8[4] = &v10;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT filename FROM attachment WHERE created_date < ?;", v8);
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v11[3];
      *buf = 134218240;
      v15 = a1;
      v16 = 2048;
      v17 = v5;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Request to fetch estimate space taken by attachments older than days %llu returning %llu", buf, 0x16u);
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7C04358;
    v9[3] = &unk_1E7CB6838;
    v9[4] = &v10;
    __syncXPCIMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays_IPCAction(v9, a1);
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t sub_1B7C04358(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_uint64(xdict, "bytes");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1B7C04398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  if (sqlite3_step(*(a4 + 8)) == 100)
  {
    v6 = *MEMORY[0x1E695E480];
    v53 = *MEMORY[0x1E69A7078];
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = sqlite3_column_text(*(a4 + 8), 0);
      if (v8)
      {
        v9 = sqlite3_column_text(*(a4 + 8), 0);
        v8 = CFStringCreateWithCString(v6, v9, 0x8000100u);
      }

      v10 = v8;
      if (v10)
      {
        v14 = v10;
        if (objc_msgSend_length(v10, v11, v12, v13))
        {
          v18 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v15, v16, v17);
          v55 = 0;
          v56 = &v55;
          v57 = 0x2020000000;
          v58 = 0;
          v24 = objc_msgSend_stringByResolvingAndStandardizingPath(v14, v19, v20, v21);
          if (v24)
          {
            v25 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DF70], v22, v24, v23);
            v28 = objc_msgSend___im_filePathWithVariant_(v24, v26, v53, v27);
            objc_msgSend_addObject_(v25, v29, v28, v30);
            v34 = objc_msgSend_stringByDeletingPathExtension(v14, v31, v32, v33);
            v37 = objc_msgSend_stringByAppendingPathExtension_(v34, v35, @"MOV", v36);
            objc_msgSend_addObject_(v25, v38, v37, v39);
            v43 = objc_msgSend_stringByDeletingPathExtension(v28, v40, v41, v42);
            v46 = objc_msgSend_stringByAppendingPathExtension_(v43, v44, @"MOV", v45);
            objc_msgSend_addObject_(v25, v47, v46, v48);
            v54[0] = MEMORY[0x1E69E9820];
            v54[1] = 3221225472;
            v54[2] = sub_1B7C09998;
            v54[3] = &unk_1E7CBDDA8;
            v54[4] = v18;
            v54[5] = &v55;
            objc_msgSend_enumerateObjectsUsingBlock_(v25, v49, v54, v50);
          }

          v51 = v56[3];
          _Block_object_dispose(&v55, 8);
          *(*(*(a1 + 32) + 8) + 24) += v51;
        }
      }

      objc_autoreleasePoolPop(v7);
    }

    while (sqlite3_step(*(a4 + 8)) == 100);
  }

  return CSDBSqliteStatementReset();
}

void sub_1B7C045C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id IMDAttachmentFindLargestConversations(unint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = &v20;
  v22 = 0x3052000000;
  v23 = sub_1B7AE1B50;
  v24 = sub_1B7AE25B8;
  v25 = 0;
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Request to fetch largest non synced conversations", buf, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    *buf = 0;
    v14 = buf;
    v15 = 0x3052000000;
    v16 = sub_1B7AE1B50;
    v17 = sub_1B7AE25B8;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (a1 >= 3)
    {
      v3 = 0;
    }

    else
    {
      v3 = off_1E7CBDDC8[a1];
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7C04908;
    v12[3] = &unk_1E7CB7390;
    v12[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(v3, v12);
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_msgSend_count(*(v14 + 5), v5, v6, v7);
      *v26 = 134217984;
      v27 = v8;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Returning %lu conversations", v26, 0xCu);
    }

    v9 = objc_msgSend_copy(*(v14 + 5), v5, v6, v7);
    v21[5] = v9;

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_1B7C048C0;
    v19[3] = &unk_1E7CB6838;
    v19[4] = &v20;
    __syncXPCIMDAttachmentRecordFindLargestConversations_IPCAction(v19, a1);
  }

  v10 = v21[5];
  _Block_object_dispose(&v20, 8);
  return v10;
}

void sub_1B7C04884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7C048C0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "result");
  if (result)
  {
    result = _CFXPCCreateCFObjectFromXPCObject();
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

uint64_t sub_1B7C04908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x1E69E9840];
  if (sqlite3_step(*(a4 + 8)) == 100)
  {
    v6 = *MEMORY[0x1E695E480];
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = sqlite3_column_text(*(a4 + 8), 0);
      if (v8)
      {
        v9 = sqlite3_column_text(*(a4 + 8), 0);
        v8 = CFStringCreateWithCString(v6, v9, 0x8000100u);
      }

      v10 = v8;
      v11 = sqlite3_column_int64(*(a4 + 8), 1);
      if (v10)
      {
        v19[1] = @"size";
        v20[0] = v10;
        v19[0] = @"guid";
        v20[1] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v12, v11, v13);
        v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v20, v19, 2);
        objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v16, v15, v17);
      }

      objc_autoreleasePoolPop(v7);
    }

    while (sqlite3_step(*(a4 + 8)) == 100);
  }

  return CSDBSqliteStatementReset();
}

id IMDAttachmentFindLargestAttachmentGUIDsForAttachmentClassWithLimitAndOffset(void *a1, unint64_t a2, int64_t a3, int64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x3052000000;
  v50 = sub_1B7AE1B50;
  v51 = sub_1B7AE25B8;
  v52 = 0;
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Request to fetch non synced attachment guids for attachment class", buf, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v11 = &stru_1F2FA9728;
    if (a2 <= 2)
    {
      v11 = off_1E7CBDDE0[a2];
    }

    if (objc_msgSend_isEqualToString_(a1, v9, IMAttachmentClassPhoto[0], v10))
    {
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x1E696AEC0], v12, v11, @"%@", 0, @"AND is_sticker = 0 AND mime_type LIKE 'image/%' AND NOT mime_type = 'image/gif'");
    }

    else if (objc_msgSend_isEqualToString_(a1, v12, IMAttachmentClassVideo, v13))
    {
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x1E696AEC0], v18, v11, @"%@", 0, @"AND mime_type LIKE 'video/%'");
    }

    else if (objc_msgSend_isEqualToString_(a1, v18, IMAttachmentClassGIFOrSticker[0], v19))
    {
      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x1E696AEC0], v20, v11, @"%@", 0, @"AND (is_sticker = 1 OR mime_type = 'image/gif')");
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(a1, v20, IMAttachmentClassOther, v21);
      v24 = @"AND NOT (mime_type LIKE 'image/%' OR mime_type LIKE 'video/%' OR is_sticker = 1 OR mime_type = 'image/gif')";
      if (!isEqualToString)
      {
        v24 = &stru_1F2FA9728;
      }

      valid = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(MEMORY[0x1E696AEC0], v23, v11, @"%@", 0, v24);
    }

    v25 = valid;
    *buf = 0;
    v41 = buf;
    v42 = 0x3052000000;
    v43 = sub_1B7AE1B50;
    v44 = sub_1B7AE25B8;
    v45 = objc_msgSend_array(MEMORY[0x1E695DF70], v15, v16, v17);
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    if (v25)
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_1B7C04EC8;
      v35[3] = &unk_1E7CBD970;
      v35[6] = a3;
      v35[7] = a4;
      v35[4] = buf;
      v35[5] = &v36;
      _IMDPerformLockedStatementBlockWithQuery(v25, v35);
    }

    v26 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_msgSend_count(*(v41 + 5), v27, v28, v29);
      v31 = v37[3];
      *v53 = 134218498;
      v54 = v30;
      v55 = 2048;
      v56 = v31;
      v57 = 2112;
      v58 = a1;
      _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_DEFAULT, "Returning %lu non synced attachments with total size %llu for attachmentClass %@", v53, 0x20u);
    }

    v32 = objc_msgSend_copy(*(v41 + 5), v27, v28, v29);
    v48[5] = v32;
    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = sub_1B7C04E80;
    v46[3] = &unk_1E7CB6838;
    v46[4] = &v47;
    __syncXPCIMDAttachmentRecordFindLargestAttachmentGUIDsWithLimitAndOffset_IPCAction(v46, a1, a2, a3, a4);
  }

  v33 = v48[5];
  _Block_object_dispose(&v47, 8);
  return v33;
}

void sub_1B7C04E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 176), 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7C04E80(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "result");
  if (result)
  {
    result = _CFXPCCreateCFObjectFromXPCObject();
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

uint64_t sub_1B7C04EC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[4] = *MEMORY[0x1E69E9840];
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    do
    {
      v8 = sqlite3_column_text(*(a4 + 8), 0);
      if (v8)
      {
        v9 = sqlite3_column_text(*(a4 + 8), 0);
        v8 = CFStringCreateWithCString(v7, v9, 0x8000100u);
      }

      v10 = v8;
      v11 = sqlite3_column_int64(*(a4 + 8), 1);
      v12 = sqlite3_column_text(*(a4 + 8), 2);
      if (v12)
      {
        v13 = sqlite3_column_text(*(a4 + 8), 2);
        v12 = CFStringCreateWithCString(v7, v13, 0x8000100u);
      }

      v14 = v12;
      v15 = MEMORY[0x1E695DF00];
      v16 = sqlite3_column_int64(*(a4 + 8), 3);
      v20 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(v15, v17, v18, v19, v16);
      if (v10 && v14)
      {
        v23 = v20;
        if (v20)
        {
          v29[0] = v10;
          v28[0] = @"guid";
          v28[1] = @"size";
          v29[1] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v21, v11, v22);
          v29[2] = v14;
          v28[2] = @"filename";
          v28[3] = @"date";
          v29[3] = v23;
          v25 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v29, v28, 4);
          objc_msgSend_addObject_(*(*(a1[4] + 8) + 40), v26, v25, v27);
          *(*(a1[5] + 8) + 24) += v11;
        }
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

id IMDAttachmentSpaceTakenByAttachmentClass(int64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_1B7AE1B50;
  v12 = sub_1B7AE25B8;
  v13 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = @"SELECT mime_type, is_sticker, SUM(total_bytes) FROM attachment WHERE ck_sync_state != 1 AND hide_attachment=0 AND transfer_state = 5 GROUP BY mime_type, is_sticker ;";
    if (a1 == 1)
    {
      v2 = @"SELECT mime_type, is_sticker, SUM(total_bytes) FROM attachment WHERE ck_sync_state != 0 AND hide_attachment=0 AND transfer_state = 5 GROUP BY mime_type, is_sticker ;";
    }

    if (a1)
    {
      v3 = v2;
    }

    else
    {
      v3 = @"SELECT mime_type, is_sticker, SUM(total_bytes) FROM attachment WHERE hide_attachment=0 AND transfer_state = 5 GROUP BY mime_type, is_sticker ;";
    }

    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B7C05284;
    v6[3] = &unk_1E7CB7390;
    v6[4] = &v8;
    _IMDPerformLockedStatementBlockWithQuery(v3, v6);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7C0523C;
    v7[3] = &unk_1E7CB6838;
    v7[4] = &v8;
    __syncXPCIMDAttachmentRecordSpaceTakenByAttachmentClass_IPCAction(v7, a1);
  }

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

xpc_object_t sub_1B7C0523C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "result");
  if (result)
  {
    result = _CFXPCCreateCFObjectFromXPCObject();
    *(*(*(a1 + 32) + 8) + 40) = result;
  }

  return result;
}

void sub_1B7C05284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v36 = objc_msgSend_initWithCapacity_(v5, v6, 4, v7);
  if (sqlite3_step(*(a4 + 8)) == 100)
  {
    v11 = *MEMORY[0x1E695E480];
    do
    {
      v12 = sqlite3_column_text(*(a4 + 8), 0);
      if (v12)
      {
        v13 = sqlite3_column_text(*(a4 + 8), 0);
        v12 = CFStringCreateWithCString(v11, v13, 0x8000100u);
      }

      v14 = v12;
      v15 = sqlite3_column_int(*(a4 + 8), 1);
      v18 = sqlite3_column_int64(*(a4 + 8), 2);
      if (v15 || (objc_msgSend_isEqualToString_(v14, v16, @"image/gif", v17) & 1) != 0)
      {
        v19 = IMAttachmentClassGIFOrSticker;
      }

      else
      {
        v31 = objc_msgSend_containsString_(v14, v16, @"image/", v17);
        v19 = IMAttachmentClassPhoto;
        if ((v31 & 1) == 0)
        {
          v32 = objc_msgSend_rangeOfString_(v14, v16, @"video/", v17) || v16 == 0;
          v19 = &IMAttachmentClassOther;
          if (!v32)
          {
            v19 = &IMAttachmentClassVideo;
          }
        }
      }

      v20 = *v19;
      v21 = objc_msgSend_objectForKeyedSubscript_(v36, v16, *v19, v17, v34);
      v25 = MEMORY[0x1E696AD98];
      if (v21)
      {
        v26 = objc_msgSend_unsignedLongLongValue(v21, v22, v23, v24);
        v29 = objc_msgSend_numberWithUnsignedLongLong_(v25, v27, v26 + v18, v28);
      }

      else
      {
        v29 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v22, v18, v24);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v36, v30, v29, v20);
    }

    while (sqlite3_step(*(a4 + 8)) == 100);
  }

  v33 = objc_msgSend_copy(v36, v8, v9, v10, v34);
  *(*(*(v35 + 32) + 8) + 40) = v33;
}

BOOL _IMDAttachmentUpdateAttachmentWithRowidToFileSize(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    return 0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0xD010000000;
  v22 = "";
  memset(v23, 0, sizeof(v23));
  IMDSqlOperationInitWithSharedCSDBDatabase(v23);
  IMDSqlOperationBeginTransaction(v20 + 4);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = sub_1B7C056C0;
  v17 = &unk_1E7CB6EA8;
  v18 = &v19;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7C05720;
  v14[3] = &unk_1E7CBD998;
  v14[4] = &v19;
  v14[5] = a2;
  v14[6] = a1;
  v4 = IMDSqlOperationExecuteQuery(v20 + 4, @"UPDATE attachment set total_bytes = ? WHERE rowid = ?;", v14);
  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, a1, v7);
    v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v9, a2, v10);
    v12 = @"NO";
    *buf = 138412802;
    v25 = v8;
    v26 = 2112;
    if (v4)
    {
      v12 = @"YES";
    }

    v27 = v11;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Updated attachment at rowID %@ to new filesize %@ with success %@", buf, 0x20u);
  }

  v16(v15);
  _Block_object_dispose(&v19, 8);
  return v4;
}

void sub_1B7C05694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7C056C0(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

void sub_1B7C05720(void *a1)
{
  IMDSqlStatementBindInt64((*(a1[4] + 8) + 64), a1[5]);
  v2 = a1[6];
  v3 = (*(a1[4] + 8) + 64);

  IMDSqlStatementBindInt64(v3, v2);
}

BOOL _IMDAttachmentUpdateAttachmentWithRowidToTransferState(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!IMDIsRunningInDatabaseServerProcess())
  {
    return 0;
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0xD010000000;
  v22 = "";
  memset(v23, 0, sizeof(v23));
  IMDSqlOperationInitWithSharedCSDBDatabase(v23);
  IMDSqlOperationBeginTransaction(v20 + 4);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v16 = sub_1B7C059CC;
  v17 = &unk_1E7CB6EA8;
  v18 = &v19;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7C05A2C;
  v14[3] = &unk_1E7CBD998;
  v14[4] = &v19;
  v14[5] = a2;
  v14[6] = a1;
  v4 = IMDSqlOperationExecuteQuery(v20 + 4, @"UPDATE attachment set transfer_state = ? WHERE rowid = ?;", v14);
  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v6, a1, v7);
    v11 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v9, a2, v10);
    v12 = @"NO";
    *buf = 138412802;
    v25 = v8;
    v26 = 2112;
    if (v4)
    {
      v12 = @"YES";
    }

    v27 = v11;
    v28 = 2112;
    v29 = v12;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Updated attachment at rowID %@ to new transfer_state %@ with success %@", buf, 0x20u);
  }

  v16(v15);
  _Block_object_dispose(&v19, 8);
  return v4;
}

void sub_1B7C059A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7C059CC(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

void sub_1B7C05A2C(void *a1)
{
  IMDSqlStatementBindInt64((*(a1[4] + 8) + 64), a1[5]);
  v2 = a1[6];
  v3 = (*(a1[4] + 8) + 64);

  IMDSqlStatementBindInt64(v3, v2);
}

uint64_t _IMDCopyAttachmentsNeedingFileSizeUpdatesForWatermark(uint64_t a1, uint64_t *a2)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = -1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_1B7AE1B50;
  v14 = sub_1B7AE25B8;
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7C05BE4;
  v9[3] = &unk_1E7CB9010;
  v9[5] = &v10;
  v9[6] = a1;
  v9[4] = &v16;
  _IMDPerformLockedStatementBlockWithQuery(@"SELECT filename,rowid,total_bytes,ck_sync_state,is_sticker,hide_attachment,transfer_state,guid FROM attachment WHERE rowid > ? AND filename != '' ORDER BY rowid ASC LIMIT 20;", v9);
  *a2 = objc_msgSend_copy(v11[5], v4, v5, v6);

  v7 = v17[3];
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);
  return v7;
}

uint64_t sub_1B7C05BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45[8] = *MEMORY[0x1E69E9840];
  CSDBSqliteBindInt64();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    v42 = *MEMORY[0x1E695E480];
    v43 = a1;
    do
    {
      v8 = sqlite3_column_text(*(a4 + 8), 0);
      if (v8)
      {
        v9 = sqlite3_column_text(*(a4 + 8), 0);
        v8 = CFStringCreateWithCString(v7, v9, 0x8000100u);
      }

      v10 = v8;
      *(*(*(a1 + 32) + 8) + 24) = sqlite3_column_int64(*(a4 + 8), 1);
      v11 = sqlite3_column_int64(*(a4 + 8), 2);
      v12 = sqlite3_column_int64(*(a4 + 8), 3);
      v13 = sqlite3_column_int64(*(a4 + 8), 4);
      v14 = sqlite3_column_int64(*(a4 + 8), 5);
      v15 = sqlite3_column_int64(*(a4 + 8), 6);
      v16 = sqlite3_column_text(*(a4 + 8), 7);
      if (v16)
      {
        v17 = sqlite3_column_text(*(a4 + 8), 7);
        v16 = CFStringCreateWithCString(v7, v17, 0x8000100u);
      }

      v18 = v16;
      if (objc_msgSend_length(v10, v19, v20, v21))
      {
        if (v18)
        {
          v24 = *(a1 + 32);
          v25 = *(*(*(a1 + 40) + 8) + 40);
          v44[0] = @"rowID";
          v45[0] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v22, *(*(v24 + 8) + 24), v23);
          v44[1] = @"bytes";
          v45[1] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v26, v11, v27);
          v45[2] = v10;
          v44[2] = @"filename";
          v44[3] = @"ck_sync_state";
          v45[3] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v28, v12, v29);
          v44[4] = @"is_sticker";
          v45[4] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v30, v13, v31);
          v44[5] = @"hide_attachment";
          v45[5] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v32, v14, v33);
          v44[6] = @"transfer_state";
          v36 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v34, v15, v35);
          v44[7] = @"guid";
          v45[6] = v36;
          v45[7] = v18;
          v38 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v37, v45, v44, 8);
          v39 = v25;
          v7 = v42;
          a1 = v43;
          objc_msgSend_addObject_(v39, v40, v38, v41);
        }
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

BOOL _IMDUpdateAttachmentFileSizeIfNeeded(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 != a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412802;
      v15 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v7, a1, v8);
      v16 = 2112;
      v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v9, a2, v10);
      v18 = 2112;
      v19 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, a3, v12);
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "For rowID %@ bytes %@ is not equal to new byte count %@ for file.", &v14, 0x20u);
    }

    _IMDAttachmentUpdateAttachmentWithRowidToFileSize(a1, a3);
  }

  return a3 != a2;
}

void *IMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark(int64_t a1)
{
  v235 = *MEMORY[0x1E69E9840];
  v207 = 0;
  v208 = &v207;
  v209 = 0x3052000000;
  v210 = sub_1B7AE1B50;
  v211 = sub_1B7AE25B8;
  v212 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v203 = 0;
  v204 = &v203;
  v205 = 0x2020000000;
  v206 = 0;
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v202[0] = MEMORY[0x1E69E9820];
    v202[1] = 3221225472;
    v202[2] = sub_1B7C069B0;
    v202[3] = &unk_1E7CB74D0;
    v202[4] = &v203;
    v202[5] = &v207;
    __syncXPCIMDAttachmentUpdateAttachmentFileSizeWithRowIDGreaterThanWatermark_IPCAction(v202, a1);
    goto LABEL_56;
  }

  v201 = 0;
  _IMDCopyAttachmentsNeedingFileSizeUpdatesForWatermark(a1, &v201);
  v199 = 0u;
  v200 = 0u;
  v197 = 0u;
  v198 = 0u;
  obj = v201;
  v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(v201, v2, &v197, v234, 16);
  if (!v182)
  {
    goto LABEL_50;
  }

  v180 = *MEMORY[0x1E69A7018];
  v181 = *v198;
  v179 = *MEMORY[0x1E69A6A18];
  do
  {
    for (i = 0; i != v182; ++i)
    {
      if (*v198 != v181)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v197 + 1) + 8 * i);
      v7 = objc_msgSend_objectForKey_(v6, v3, @"filename", v5);
      v10 = objc_msgSend_objectForKey_(v6, v8, @"rowID", v9);
      v190 = objc_msgSend_longLongValue(v10, v11, v12, v13);
      v16 = objc_msgSend_objectForKey_(v6, v14, @"bytes", v15);
      v183 = objc_msgSend_longLongValue(v16, v17, v18, v19);
      v22 = objc_msgSend_objectForKey_(v6, v20, @"ck_sync_state", v21);
      v188 = objc_msgSend_longLongValue(v22, v23, v24, v25);
      v28 = objc_msgSend_stringWithString_(MEMORY[0x1E696AEC0], v26, v7, v27);
      v191 = objc_msgSend_stringByExpandingTildeInPath(v28, v29, v30, v31);
      v34 = objc_msgSend_objectForKey_(v6, v32, @"is_sticker", v33);
      v187 = objc_msgSend_BOOLValue(v34, v35, v36, v37);
      v40 = objc_msgSend_objectForKey_(v6, v38, @"hide_attachment", v39);
      LODWORD(v7) = objc_msgSend_BOOLValue(v40, v41, v42, v43);
      v46 = objc_msgSend_objectForKey_(v6, v44, @"transfer_state", v45);
      v185 = objc_msgSend_longLongValue(v46, v47, v48, v49);
      v53 = objc_msgSend_pathExtension(v191, v50, v51, v52);
      v184 = v7;
      isAudioMessageExtension = objc_msgSend_im_isAudioMessageExtension(v53, v54, v55, v56);
      v61 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v58, v59, v60);
      v186 = objc_msgSend_fileExistsAtPath_(v61, v62, v191, v63);
      PathComponent = objc_msgSend_lastPathComponent(v191, v64, v65, v66);
      v70 = objc_msgSend_containsString_(PathComponent, v68, v180, v69);
      isPluginPayloadExtension = objc_msgSend_im_isPluginPayloadExtension(v53, v71, v72, v73);
      v77 = objc_msgSend_objectForKey_(v6, v75, @"guid", v76);
      v78 = IMDAttachmentRecordCopyMessageForAttachmentGUID(v77);
      v82 = objc_msgSend_balloonBundleID(v78, v79, v80, v81);

      LOBYTE(v177) = objc_msgSend_hasPrefix_(v82, v83, v179, v84);
      isRichLink = objc_msgSend_canMarkPurgeableWithCKSyncState_transferState_isAudio_isSticker_isGroupPhoto_isPluginPayload_isRichLink_(MEMORY[0x1E69A8078], v85, v188, 5, isAudioMessageExtension, v187, v70, isPluginPayloadExtension, v177);
      v87 = IMOffloadingLogHandle();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134219778;
        v219 = v190;
        v220 = 2112;
        v221 = v191;
        v222 = 2048;
        v223 = v188;
        v224 = 1024;
        v225 = v187;
        v226 = 1024;
        v227 = v184;
        v228 = 1024;
        v229 = isPluginPayloadExtension;
        v230 = 2112;
        v231 = v82;
        v232 = 1024;
        v233 = isRichLink;
        _os_log_impl(&dword_1B7AD5000, v87, OS_LOG_TYPE_DEFAULT, "Can mark rowID: %lld file: [%@], cloudKitSyncState: [%lld], is_sticker: [%{BOOL}d], hide_attachment: [%{BOOL}d], isPluginPayload: [%{BOOL}d], bundleID: [%@], purgeable: [%{BOOL}d]", buf, 0x42u);
      }

      if (isRichLink)
      {
        if (v186)
        {
          v90 = v208[5];
          v216[0] = @"rowID";
          v217[0] = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v88, v190, v89);
          v217[1] = v191;
          v216[1] = @"filename";
          v216[2] = @"guid";
          v217[2] = v77;
          v92 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v91, v217, v216, 3);
          objc_msgSend_addObject_(v90, v93, v92, v94);
          if (v185 != 5)
          {
            v95 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
            {
              v98 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v96, v190, v97);
              *buf = 138412546;
              v219 = v98;
              v220 = 2112;
              v221 = v191;
              _os_log_impl(&dword_1B7AD5000, v95, OS_LOG_TYPE_DEFAULT, "File on disk, but not in finished state: %@, filename: %@.", buf, 0x16u);
            }

            _IMDAttachmentUpdateAttachmentWithRowidToTransferState(v190, 5);
          }
        }
      }

      else
      {
        v99 = v208[5];
        v214[0] = @"rowID";
        v100 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v88, v190, v89);
        v214[1] = @"filename";
        v215[0] = v100;
        v215[1] = &stru_1F2FA9728;
        v102 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v101, v215, v214, 2);
        objc_msgSend_addObject_(v99, v103, v102, v104);
      }

      objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v88, v191, v89);
      v105 = IMAttachmentPreviewFileURL();
      v109 = objc_msgSend_path(v105, v106, v107, v108);
      v113 = objc_msgSend_im_livePhotoBundlePath(v191, v110, v111, v112);
      v114 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (objc_msgSend_length(v113, v115, v116, v117))
      {
        objc_msgSend_addObject_(v114, v118, v113, v120);
      }

      if (objc_msgSend_length(v109, v118, v119, v120))
      {
        v124 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v121, v122, v123);
        if (objc_msgSend_fileExistsAtPath_(v124, v125, v109, v126))
        {
          objc_msgSend_addObject_(v114, v121, v109, v127);
        }
      }

      v195 = 0u;
      v196 = 0u;
      v193 = 0u;
      v194 = 0u;
      v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v121, &v193, v213, 16);
      if (v131)
      {
        v132 = *v194;
        do
        {
          for (j = 0; j != v131; ++j)
          {
            if (*v194 != v132)
            {
              objc_enumerationMutation(v114);
            }

            v134 = *(*(&v193 + 1) + 8 * j);
            if (objc_msgSend_length(v134, v128, v129, v130))
            {
              v192 = 0;
              v135 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v128, v129, v130);
              if (objc_msgSend_removeItemAtPath_error_(v135, v136, v134, &v192))
              {
                v137 = IMDatabaseLogHandle();
                if (!os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
                {
                  continue;
                }

                *buf = 138412290;
                v219 = v134;
                v138 = v137;
                v139 = "Live Photo bundle deleted: %@";
                v140 = 12;
              }

              else
              {
                v141 = IMDatabaseLogHandle();
                if (!os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
                {
                  continue;
                }

                *buf = 138412546;
                v219 = v134;
                v220 = 2112;
                v221 = v192;
                v138 = v141;
                v139 = "Live Photo bundle on disk, but failed to delete it: %@, error: %@";
                v140 = 22;
              }

              _os_log_impl(&dword_1B7AD5000, v138, OS_LOG_TYPE_DEFAULT, v139, buf, v140);
            }
          }

          v131 = objc_msgSend_countByEnumeratingWithState_objects_count_(v114, v128, &v193, v213, 16);
        }

        while (v131);
      }

      if (v186)
      {
        v143 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v142, v5);
        v145 = objc_msgSend_attributesOfItemAtPath_error_(v143, v144, v191, 0);
        v149 = objc_msgSend_fileSize(v145, v146, v147, v148);
        v153 = objc_msgSend_im_livePhotoVideoPath(v191, v150, v151, v152);
        if (v145)
        {
          v157 = v153;
          if (!objc_msgSend_length(v153, v154, v155, v156))
          {
            goto LABEL_40;
          }

          v161 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v158, v159, v160);
          v163 = objc_msgSend_attributesOfItemAtPath_error_(v161, v162, v157, 0);
          v167 = objc_msgSend_fileSize(v163, v164, v165, v166);
          if (v163)
          {
            v149 += v167;
LABEL_40:
            _IMDUpdateAttachmentFileSizeIfNeeded(v190, v183, v149);
            continue;
          }
        }

        v172 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
        {
          v173 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v3, v190, v5);
          *buf = 138412546;
          v219 = v173;
          v220 = 2112;
          v221 = v191;
          _os_log_impl(&dword_1B7AD5000, v172, OS_LOG_TYPE_DEFAULT, "Failed getting filesize at rowID %@ and path %@.", buf, 0x16u);
        }
      }

      else if (v188 == 1 && v185 == 5)
      {
        v168 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          v171 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v169, v190, v170);
          *buf = 138412546;
          v219 = v171;
          v220 = 2112;
          v221 = v191;
          _os_log_impl(&dword_1B7AD5000, v168, OS_LOG_TYPE_DEFAULT, "File not on disk, lets switch it to tap to download rowID: %@, filename: %@.", buf, 0x16u);
        }

        _IMDAttachmentUpdateAttachmentWithRowidToTransferState(v190, 0);
      }
    }

    v182 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v197, v234, 16);
  }

  while (v182);
LABEL_50:
  if (objc_msgSend_count(obj, v3, v4, v5))
  {
    *(v204 + 24) = 1;
  }

  else
  {
    v174 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v174, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v174, OS_LOG_TYPE_DEFAULT, "No more attachments found to update", buf, 2u);
    }
  }

LABEL_56:
  v175 = v208[5];
  if ((v204[3] & 1) == 0)
  {

    v175 = 0;
  }

  _Block_object_dispose(&v203, 8);
  _Block_object_dispose(&v207, 8);
  return v175;
}

void sub_1B7C068DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

xpc_object_t sub_1B7C069B0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7C06A54;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 40);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7C06A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = MEMORY[0x1E696AD98];
  v6 = IMGetXPCIntFromDictionary();
  v9 = objc_msgSend_numberWithLongLong_(v5, v7, v6, v8);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v10, v9, @"rowID");
  v11 = IMGetXPCStringFromDictionary();
  objc_msgSend_setObject_forKeyedSubscript_(v4, v12, v11, @"filename");
  v13 = IMGetXPCStringFromDictionary();
  objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v13, @"guid");
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v15, v4, v16);

  return 1;
}

void IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServicesQuery(void *a1, const char *a2, CFTypeRef *a3, uint64_t a4)
{
  v5 = a2;
  v17 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_count(a1, a2, a3, a4);
  Mutable = CFStringCreateMutable(0, 0);
  v8 = Mutable;
  if (v5)
  {
    v9 = @"SELECT c.rowid FROM chat c WHERE (c.chat_identifier = ? AND c.service_name = ?)";
  }

  else
  {
    v9 = @"SELECT c.rowid FROM chat c WHERE (c.chat_identifier = ?)";
  }

  CFStringAppend(Mutable, v9);
  if (v6 >= 2)
  {
    if (v5)
    {
      v10 = @" OR (c.chat_identifier = ? AND c.service_name = ?)";
    }

    else
    {
      v10 = @" OR (c.chat_identifier = ?)";
    }

    v11 = v6 - 1;
    do
    {
      CFStringAppend(v8, v10);
      --v11;
    }

    while (v11);
  }

  v12 = CFStringCreateWithFormat(0, 0, @"select a.filename, a.guid, a.is_sticker, a.created_date, a.transfer_state from attachment a join  (select ma.attachment_id as a_id, message_date as m_date from message_attachment_join ma join (select cm.message_id as message_id, cm.message_date as message_date from message m join chat_message_join cm where m.cache_has_attachments = 1 AND cm.chat_id AND cm.chat_id IN (%@) AND m.rowid = cm.message_id) as tmp where ma.message_id = tmp.message_id) as tmp2 where a.rowid = tmp2.a_id AND     a.hide_attachment == 0 ORDER BY tmp2.m_date ASC;", v8);
  v13 = v12;
  if (a3)
  {
    *a3 = CFRetain(v12);
    v14 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_DEFAULT, "IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServicesQuery %@", buf, 0xCu);
    }
  }

  CFRelease(v13);
  CFRelease(v8);
}

sqlite3_stmt **sub_1B7C06C7C(void *a1, sqlite3_stmt **a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7C06D0C;
  v7[3] = &unk_1E7CB75B0;
  v4 = a1[5];
  v5 = a1[6];
  v7[4] = a2;
  v7[5] = v5;
  result = _IMDSqlOperationGetRowsWithBindingBlock(a2, v4, v7);
  *(*(a1[4] + 8) + 40) = result;
  return result;
}

sqlite3_stmt **sub_1B7C06D18(void *a1, sqlite3_stmt **a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7C06DB0;
  v5[3] = &unk_1E7CB8428;
  v5[4] = a1[4];
  v6 = a2;
  v3 = a1[6];
  v7 = a1[7];
  result = _IMDSqlOperationGetRowsWithBindingBlock(v6, v3, v5);
  *(*(a1[5] + 8) + 40) = result;
  return result;
}

void sub_1B7C06DB0(uint64_t *a1)
{
  IMDSqlStatementBindTextFromCFString(a1[5] + 32, a1[4]);
  v2 = a1[6];
  v3 = (a1[5] + 32);

  IMDSqlStatementBindInt64(v3, v2);
}

void IMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServicesQuery(void *a1, const char *a2, uint64_t a3, CFTypeRef *a4)
{
  v6 = a2;
  v16 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_count(a1, a2, a3, a4);
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppend(Mutable, @"SELECT c.rowid FROM chat c WHERE (c.chat_identifier = ? AND c.service_name = ?)");
  if (v7 >= 2)
  {
    if (v6)
    {
      v9 = @" OR (c.chat_identifier = ? AND c.service_name = ?)";
    }

    else
    {
      v9 = @" OR (c.chat_identifier = ?)";
    }

    v10 = v7 - 1;
    do
    {
      CFStringAppend(Mutable, v9);
      --v10;
    }

    while (v10);
  }

  v11 = CFStringCreateWithFormat(0, 0, @"SELECT * FROM attachment a INNER JOIN message_attachment_join ma ON   a.ROWID = ma.attachment_id INNER JOIN chat_message_join cm ON   ma.message_id = cm.message_id INNER JOIN message m ON   ma.message_id = m.ROWID WHERE   m.cache_has_attachments   AND m.expire_state != %d   AND cm.chat_id IN (%@)   AND a.hide_attachment == 0   AND a.ck_sync_state == 1   AND a.transfer_state == 0 ORDER BY m.date DESC limit %d", 2, Mutable, a3);
  v12 = v11;
  if (a4)
  {
    *a4 = CFRetain(v11);
    v13 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v12;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServicesQuery %@", buf, 0xCu);
    }
  }

  CFRelease(v12);
  CFRelease(Mutable);
}

void IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServicesQuery(void *a1, const char *a2, CFTypeRef *a3, uint64_t a4)
{
  v5 = a2;
  v6 = objc_msgSend_count(a1, a2, a3, a4);
  Mutable = CFStringCreateMutable(0, 0);
  v8 = Mutable;
  if (v5)
  {
    v9 = @"SELECT c.rowid FROM chat c INDEXED BY chat_idx_chat_identifier_service_name WHERE (c.chat_identifier = ? AND c.service_name = ?)";
  }

  else
  {
    v9 = @"SELECT c.rowid FROM chat c INDEXED BY chat_idx_chat_identifier_service_name WHERE (c.chat_identifier = ?)";
  }

  CFStringAppend(Mutable, v9);
  if (v6 >= 2)
  {
    if (v5)
    {
      v10 = @" OR (c.chat_identifier = ? AND c.service_name = ?)";
    }

    else
    {
      v10 = @" OR (c.chat_identifier = ?)";
    }

    v11 = v6 - 1;
    do
    {
      CFStringAppend(v8, v10);
      --v11;
    }

    while (v11);
  }

  v12 = CFStringCreateWithFormat(0, 0, @"select count(*) from attachment a INDEXED BY attachment_idx_purged_attachments_v2 join (select ma.attachment_id as a_id, message_date as m_date from message_attachment_join ma INDEXED BY message_attachment_join_idx_attachment_id join (select cm.message_id as message_id, cm.message_date as message_date from message m INDEXED BY message_idx_cache_has_attachments join chat_message_join cm where m.cache_has_attachments = 1 AND cm.chat_id AND cm.chat_id IN (%@) AND m.rowid = cm.message_id) as tmp where ma.message_id = tmp.message_id) as tmp2 where a.rowid = tmp2.a_id AND a.hide_attachment == 0 AND (a.ck_sync_state == 1 OR a.ck_sync_state == 4) AND a.transfer_state == 0 ORDER BY tmp2.m_date ASC;", v8);
  v13 = v12;
  if (a3)
  {
    *a3 = CFRetain(v12);
  }

  CFRelease(v13);

  CFRelease(v8);
}

__CFArray *IMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_count(a1, a2, a3, a4);
  v11 = objc_msgSend_count(a2, v8, v9, v10);
  v15 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v12, v13, v14);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v15, v16, v17, v18);
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      *&buf[22] = 2112;
      v52 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v21, a3, v22);
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Copy purged attachments for chat %@ services %@ limit %@", buf, 0x20u);
    }
  }

  if (v7 && v11 && v7 == v11)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v23 = (isOneChatEnabled ^ 1u);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v52 = 0;
      v44 = 0;
      IMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServicesQuery(a1, v23, a3, &v44);
      if (v44)
      {
        v42[0] = MEMORY[0x1E69E9820];
        v42[1] = 3221225472;
        v42[2] = sub_1B7C07494;
        v42[3] = &unk_1E7CBD9E8;
        v43 = v23;
        v42[6] = a1;
        v42[7] = a2;
        v42[4] = buf;
        v42[5] = v7;
        _IMDPerformLockedStatementBlockWithQuery(v44, v42);
        v24 = *(*&buf[8] + 24);
        if (v24)
        {
          Count = CFArrayGetCount(v24);
        }

        else
        {
          Count = 0;
        }

        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v31 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v29, Count, v30);
            *v45 = 138412802;
            v46 = v31;
            v47 = 2112;
            v48 = a1;
            v49 = 2112;
            v50 = v44;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "%@ assets that have been purged for chat %@ outQuery %@", v45, 0x20u);
          }
        }

        if (Count < 1)
        {
          Mutable = 0;
        }

        else
        {
          v32 = 0;
          Mutable = 0;
          v33 = Count;
          v34 = *MEMORY[0x1E695E480];
          v35 = MEMORY[0x1E695E9C0];
          do
          {
            CFArrayGetValueAtIndex(*(*&buf[8] + 24), v32);
            ID = CSDBRecordGetID();
            v37 = IMDAttachmentRecordCreateFromRecordIDUnlocked(v34, ID);
            if (!Mutable)
            {
              Mutable = CFArrayCreateMutable(0, 0, v35);
            }

            CFArrayAppendValue(Mutable, v37);
            if (v37)
            {
              CFRelease(v37);
            }

            ++v32;
          }

          while (v33 != v32);
        }

        v38 = *(*&buf[8] + 24);
        if (v38)
        {
          CFRelease(v38);
        }
      }

      else
      {
        v27 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CFD7AC();
        }

        Mutable = 0;
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v52 = 0;
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_1B7C07544;
      v41[3] = &unk_1E7CB6838;
      v41[4] = buf;
      __syncXPCIMDAttachmentRecordCopyPurgedAttachmentsForChatIdentifiersOnServices_IPCAction(v41, a1, a2);
      Mutable = *(*&buf[8] + 24);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v39 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBF4C();
    }

    return 0;
  }

  return Mutable;
}

uint64_t sub_1B7C07494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 40))
  {
    v5 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a1 + 48), v5);
      CSDBSqliteBindTextFromCFString();
      if (*(a1 + 64) == 1)
      {
        CFArrayGetValueAtIndex(*(a1 + 56), v5);
        CSDBSqliteBindTextFromCFString();
      }

      ++v5;
    }

    while (v5 < *(a1 + 40));
  }

  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7C07544(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    count = xpc_array_get_count(value);
    if (count)
    {
      v6 = count;
      v7 = 0;
      v8 = MEMORY[0x1E695E9C0];
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
        }

        v9 = xpc_array_get_value(v4, v7);
        v10 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(v9);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        if (v10)
        {
          CFRelease(v10);
        }

        ++v7;
      }

      while (v6 != v7);
    }
  }
}

__CFArray *IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_count(a1, a2, a3, a4);
  v10 = objc_msgSend_count(a2, v7, v8, v9);
  v14 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v11, v12, v13);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v14, v15, v16, v17);
  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 2112;
      *&buf[14] = a2;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Copy purged attachments count for chat %@ services %@", buf, 0x16u);
    }
  }

  if (v6 && v10 && v6 == v10)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v21 = (isOneChatEnabled ^ 1u);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v44 = 0;
      cf = 0;
      IMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServicesQuery(a1, v21, &cf, v20);
      if (cf)
      {
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = sub_1B7C079D4;
        v34[3] = &unk_1E7CBD9E8;
        v35 = v21;
        v34[6] = a1;
        v34[7] = a2;
        v34[4] = buf;
        v34[5] = v6;
        _IMDPerformLockedStatementBlockWithQuery(cf, v34);
        CFArrayGetValueAtIndex(*(*&buf[8] + 24), 0);
        v22 = MEMORY[0x1E696AD98];
        ID = CSDBRecordGetID();
        v26 = objc_msgSend_numberWithInt_(v22, v24, ID, v25);
        if (IMOSLoggingEnabled())
        {
          v27 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *v37 = 138412802;
            v38 = v26;
            v39 = 2112;
            v40 = a1;
            v41 = 2112;
            v42 = cf;
            _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "%@ assets that have been purged for chat %@ outQuery %@", v37, 0x20u);
          }
        }

        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        CFArrayAppendValue(Mutable, v26);
        v29 = *(*&buf[8] + 24);
        if (v29)
        {
          CFRelease(v29);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        v30 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CFD7AC();
        }

        Mutable = 0;
      }
    }

    else
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v44 = 0;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1B7C07A84;
      v33[3] = &unk_1E7CB6838;
      v33[4] = buf;
      __syncXPCIMDAttachmentRecordCopyPurgedAttachmentsCountForChatIdentifiersOnServices_IPCAction(v33, a1, a2);
      Mutable = *(*&buf[8] + 24);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v31 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBF4C();
    }

    return 0;
  }

  return Mutable;
}

uint64_t sub_1B7C079D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 40))
  {
    v5 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a1 + 48), v5);
      CSDBSqliteBindTextFromCFString();
      if (*(a1 + 64) == 1)
      {
        CFArrayGetValueAtIndex(*(a1 + 56), v5);
        CSDBSqliteBindTextFromCFString();
      }

      ++v5;
    }

    while (v5 < *(a1 + 40));
  }

  result = CSDBRecordStoreProcessStatement();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7C07A84(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    v4 = value;
    if (xpc_array_get_count(value) == 1)
    {
      dictionary = xpc_array_get_dictionary(v4, 0);
      if (dictionary)
      {
        int64 = xpc_dictionary_get_int64(dictionary, "purgedCount");
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v7 = *(*(*(a1 + 32) + 8) + 24);
        v10 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v8, int64, v9);

        CFArrayAppendValue(v7, v10);
      }
    }
  }
}

uint64_t IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_count(a1, a2, a3, a4);
  v10 = objc_msgSend_count(a2, v7, v8, v9);
  v14 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v11, v12, v13);
  isOneChatEnabled = objc_msgSend_isOneChatEnabled(v14, v15, v16, v17);
  if (v6 && v10 && v6 == v10)
  {
    v19 = isOneChatEnabled;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v21 = (v19 ^ 1u);
      v28 = 0;
      IMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServicesQuery(a1, v21, &v28, v20);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1B7C07D24;
      v26[3] = &unk_1E7CBD9E8;
      v27 = v21;
      v26[6] = a1;
      v26[7] = a2;
      v26[4] = &v29;
      v26[5] = v6;
      _IMDPerformLockedStatementBlockWithQuery(v28, v26);
      if (v28)
      {
        CFRelease(v28);
      }
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1B7C0806C;
      v25[3] = &unk_1E7CB6838;
      v25[4] = &v29;
      __syncXPCIMDAttachmentRecordCopyAttachmentGUIDsAndPathsForChatIdentifiersOnServices_IPCAction(v25, a1, a2);
    }

    v23 = v30[3];
    _Block_object_dispose(&v29, 8);
  }

  else
  {
    v22 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFBF4C();
    }

    return 0;
  }

  return v23;
}

uint64_t sub_1B7C07D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40))
  {
    v6 = 0;
    do
    {
      CFArrayGetValueAtIndex(*(a1 + 48), v6);
      CSDBSqliteBindTextFromCFString();
      if (*(a1 + 64) == 1)
      {
        CFArrayGetValueAtIndex(*(a1 + 56), v6);
        CSDBSqliteBindTextFromCFString();
      }

      ++v6;
    }

    while (v6 < *(a1 + 40));
  }

  if (sqlite3_step(*(a4 + 8)) == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    do
    {
      if (sqlite3_column_text(*(a4 + 8), 0))
      {
        v8 = sqlite3_column_text(*(a4 + 8), 0);
        v9 = CFStringCreateWithCString(v7, v8, 0x8000100u);
      }

      else
      {
        v9 = 0;
      }

      if (sqlite3_column_text(*(a4 + 8), 1))
      {
        v10 = sqlite3_column_text(*(a4 + 8), 1);
        v11 = CFStringCreateWithCString(v7, v10, 0x8000100u);
      }

      else
      {
        v11 = 0;
      }

      v12 = objc_alloc(MEMORY[0x1E696AD98]);
      v13 = sqlite3_column_int(*(a4 + 8), 2) != 0;
      v16 = objc_msgSend_initWithBool_(v12, v14, v13, v15);
      v17 = objc_alloc(MEMORY[0x1E696AD98]);
      v18 = sqlite3_column_int64(*(a4 + 8), 3);
      v21 = objc_msgSend_initWithUnsignedLong_(v17, v19, v18, v20);
      v22 = objc_alloc(MEMORY[0x1E696AD98]);
      v23 = sqlite3_column_int64(*(a4 + 8), 4);
      v26 = objc_msgSend_initWithUnsignedLong_(v22, v24, v23, v25);
      v27 = v26;
      if (v11 && v16 && v21 && v26)
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        }

        v28 = objc_alloc(MEMORY[0x1E695DF90]);
        v31 = objc_msgSend_initWithObjectsAndKeys_(v28, v29, v11, v30, @"guid", v16, @"isSticker", v21, @"createdDate", v27, @"transferState", 0);
        v33 = v31;
        if (v9)
        {
          objc_msgSend_setObject_forKey_(v31, v32, v9, @"path");
        }

        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v33);
      }

      else
      {
        v34 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413314;
          v37 = v9;
          v38 = 2112;
          v39 = v11;
          v40 = 2112;
          v41 = v16;
          v42 = 2112;
          v43 = v21;
          v44 = 2112;
          v45 = v27;
          _os_log_error_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_ERROR, "Skipping an attachment because of incomplete data filename %@ guid %@ isSticker %@ createdDate %@ transferState %@", buf, 0x34u);
        }
      }
    }

    while (sqlite3_step(*(a4 + 8)) == 100);
  }

  return CSDBSqliteStatementReset();
}

void sub_1B7C0806C(uint64_t a1, xpc_object_t xdict)
{
  value = xpc_dictionary_get_value(xdict, "array_result");
  if (value)
  {
    count = xpc_array_get_count(value);
    if (count)
    {
      v3 = 0;
      v37 = a1;
      do
      {
        if (!*(*(*(a1 + 32) + 8) + 24))
        {
          *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        }

        v4 = xpc_array_get_value(value, v3);
        string = xpc_dictionary_get_string(v4, "guid");
        v6 = xpc_dictionary_get_string(v4, "path");
        v7 = xpc_dictionary_get_BOOL(v4, "isSticker");
        int64 = xpc_dictionary_get_int64(v4, "createdDate");
        v9 = xpc_dictionary_get_int64(v4, "transferState");
        if (string)
        {
          v10 = v9;
          v11 = objc_alloc(MEMORY[0x1E696AEC0]);
          v14 = objc_msgSend_initWithUTF8String_(v11, v12, string, v13);
          if (v6)
          {
            v15 = objc_alloc(MEMORY[0x1E696AEC0]);
            v6 = objc_msgSend_initWithUTF8String_(v15, v16, v6, v17);
          }

          v18 = objc_alloc(MEMORY[0x1E696AD98]);
          v21 = objc_msgSend_initWithBool_(v18, v19, v7, v20);
          v22 = objc_alloc(MEMORY[0x1E695DF00]);
          v26 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v22, v23, v24, v25, int64);
          v27 = objc_alloc(MEMORY[0x1E696AD98]);
          v30 = objc_msgSend_initWithLongLong_(v27, v28, v10, v29);
          v31 = objc_alloc(MEMORY[0x1E695DF90]);
          v34 = objc_msgSend_initWithObjectsAndKeys_(v31, v32, v14, v33, @"guid", v6, @"path", v21, @"isSticker", v26, @"createdDate", v30, @"transferState", 0);
          v36 = v34;
          if (v6)
          {
            objc_msgSend_setObject_forKey_(v34, v35, v6, @"path");
          }

          a1 = v37;
          if (v36)
          {
            CFArrayAppendValue(*(*(*(v37 + 32) + 8) + 24), v36);
          }
        }

        ++v3;
      }

      while (count != v3);
    }
  }
}

void IMDAttachmentRecordDeleteAttachmentForGUID(CFStringRef theString)
{
  if (theString && CFStringGetLength(theString))
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v3[0] = MEMORY[0x1E69E9820];
      v3[1] = 3221225472;
      v3[2] = sub_1B7C083A4;
      v3[3] = &unk_1E7CB7590;
      v3[4] = theString;
      _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM attachment WHERE guid = ?;", v3);
    }

    else
    {

      __syncXPCIMDAttachmentRecordDeleteAttachmentForGUID_IPCAction(0, theString);
    }
  }

  else
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD7E8();
    }
  }
}

uint64_t sub_1B7C083A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteStatementPerform();
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

uint64_t IMDAttachmentRecordAddAttachment(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7C084B8;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7C084A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7C084B8(uint64_t result, uint64_t a2)
{
  if (*(result + 40))
  {
    v2 = result;
    CSDBRecordStoreAddRecord();
    result = CSDBRecordSaveStore();
    *(*(*(v2 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t IMDAttachmentRecordUpdateAttachmentGUIDWithGUID(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v50 = *MEMORY[0x1E69E9840];
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  if (a1 && a2)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0xD010000000;
      v42 = "";
      memset(v43, 0, sizeof(v43));
      IMDSqlOperationInitWithSharedCSDBDatabase(v43);
      IMDSqlOperationBeginTransaction(v40 + 4);
      v34 = 0;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v36 = sub_1B7C0899C;
      v37 = &unk_1E7CB6EA8;
      v38 = &v39;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_1B7C089FC;
      v33[3] = &unk_1E7CBD8A8;
      v33[4] = a1;
      RowsForQueryWithBindingBlock = _IMDSqlOperationGetRowsForQueryWithBindingBlock(@"SELECT ROWID FROM attachment WHERE guid = ? LIMIT 1;", &v34, v33);
      v6 = RowsForQueryWithBindingBlock;
      if (v34)
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_23;
        }

        v10 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        *buf = 138412290;
        v49 = v34;
        v11 = "IMDAttachmentRecordUpdateAttachmentGUIDWithGUID - kIMDAttachmentRecordGetAttachmentRowIDForGUID returned error %@";
        v12 = v10;
        v13 = 12;
LABEL_8:
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, v11, buf, v13);
LABEL_23:
        v36(v35);
        v2 = *(v45 + 24);
        _Block_object_dispose(&v39, 8);
        goto LABEL_24;
      }

      if (!objc_msgSend_count(RowsForQueryWithBindingBlock, v7, v8, v9))
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_23;
        }

        v29 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          goto LABEL_23;
        }

        *buf = 0;
        v11 = "IMDAttachmentRecordUpdateAttachmentGUIDWithGUID - kIMDAttachmentRecordGetAttachmentRowIDForGUID returned zero results";
        v12 = v29;
        v13 = 2;
        goto LABEL_8;
      }

      Object = objc_msgSend_firstObject(RowsForQueryWithBindingBlock, v14, v15, v16);
      v20 = objc_msgSend_objectForKey_(Object, v18, @"ROWID", v19);
      v24 = objc_msgSend_integerValue(v20, v21, v22, v23);
      v25 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v49 = v24;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_DEFAULT, "Updating GUID for attachment at rowID %lld", buf, 0xCu);
      }

      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = sub_1B7C08A0C;
      v32[3] = &unk_1E7CBD998;
      v32[4] = &v39;
      v32[5] = a2;
      v32[6] = v24;
      v26 = IMDSqlOperationExecuteQuery(v40 + 4, @"UPDATE attachment set guid = ? WHERE ROWID = ?;", v32);
      *(v45 + 24) = v26;
      v27 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v45 + 24))
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        *buf = 138412290;
        v49 = v28;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_DEFAULT, "kIMDAttachmentRecordUpdateAttachmentGUIDWithGUID Success: %@", buf, 0xCu);
      }

      v36(v35);
      _Block_object_dispose(&v39, 8);
    }

    else
    {
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = sub_1B7C08A5C;
      v31[3] = &unk_1E7CB6838;
      v31[4] = &v44;
      __syncXPCIMDAttachmentRecordUpdateAttachmentGUIDWithGUID_IPCAction(v31, a1, a2);
    }

    v2 = *(v45 + 24);
  }

LABEL_24:
  _Block_object_dispose(&v44, 8);
  return v2;
}

void sub_1B7C08978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 128), 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7C0899C(uint64_t a1)
{
  IMDSqlOperationFinishQuery(*(*(a1 + 32) + 8) + 32);
  IMDSqlOperationCommitOrRevertTransaction((*(*(a1 + 32) + 8) + 32));
  v2 = *(*(a1 + 32) + 8) + 32;

  return IMDSqlOperationRelease(v2, 0);
}

void sub_1B7C08A0C(void *a1)
{
  IMDSqlStatementBindTextFromCFString(*(a1[4] + 8) + 64, a1[5]);
  v2 = a1[6];
  v3 = (*(a1[4] + 8) + 64);

  IMDSqlStatementBindInt64(v3, v2);
}