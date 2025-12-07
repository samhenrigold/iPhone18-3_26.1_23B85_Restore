BOOL sub_1B7C08A5C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDAttachmentCopyGUIDsAfterRowWithLimit(void *a1, sqlite3_int64 a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = sub_1B7AE1B50;
  v28 = sub_1B7AE25B8;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 138412546;
        *(buf + 4) = a1;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = a2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDAttachmentCopyGUIDsAfterRowWithLimit is in IMDP afterRow %@ with limit %lld", buf, 0x16u);
      }
    }

    memset(v31, 0, sizeof(v31));
    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    if (a1)
    {
      v5 = @" select ROWID, guid, maj.rowid is null as is_orphaned from attachment left join message_attachment_join maj on attachment.ROWID=maj.attachment_id WHERE ROWID > ? ORDER BY ROWID limit ?;";
    }

    else
    {
      v5 = @" select ROWID, guid, maj.rowid is null as is_orphaned from attachment left join message_attachment_join maj on attachment.ROWID=maj.attachment_id ORDER BY ROWID limit ?;";
    }

    _IMDSqlOperationBeginQuery(buf, v5);
    if (a1)
    {
      v9 = objc_msgSend_longLongValue(a1, v6, v7, v8);
      IMDSqlStatementBindInt64(v31, v9);
    }

    IMDSqlStatementBindInt64(v31, a2);
    while (IMDSqlOperationHasRows(buf))
    {
      Row = IMDSqlStatementGetRow(v31);
      if (Row)
      {
        objc_msgSend_addObject_(v25[5], v10, Row, v11);
      }
    }

    IMDSqlOperationFinishQuery(buf);
    v23 = 0;
    IMDSqlOperationRelease(buf, &v23);
    if (v23)
    {
      v19 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFD858();
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 138412546;
        *(buf + 4) = a1;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = a2;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "IMDAttachmentCopyGUIDsAfterRowWithLimit is in imagent afterRow %@ with limit %lld", buf, 0x16u);
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1B7C08E68;
    v22[3] = &unk_1E7CB6838;
    v22[4] = &v24;
    __syncXPCIMDAttachmentRecordCopyAttachmentGUIDs_IPCAction(v22, a1, a2);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = objc_msgSend_count(v25[5], v15, v16, v17);
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v18;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Returned from DB call after loading attachments to delete messages count %lu", buf, 0xCu);
      }
    }
  }

  v20 = v25[5];
  _Block_object_dispose(&v24, 8);
  return v20;
}

void sub_1B7C08DDC(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7C08D94);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

xpc_object_t sub_1B7C08E68(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7C08EFC;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7C08EFC(uint64_t a1, int a2, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "ROWID");
  v6 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "guid");
  v9 = objc_msgSend_stringWithCString_encoding_(v6, v8, string, 4);
  v10 = xpc_dictionary_get_BOOL(xdict, "is_orphaned");
  v11 = MEMORY[0x1E695DF20];
  v14 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v12, int64, v13);
  v17 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v15, v10, v16);
  v20 = objc_msgSend_dictionaryWithObjectsAndKeys_(v11, v18, v9, v19, @"guid", v14, @"ROWID", v17, @"is_orphaned", 0);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v21, v20, v22);
  return 1;
}

uint64_t IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit(void *a1, sqlite3_int64 a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3052000000;
  v27 = sub_1B7AE1B50;
  v28 = sub_1B7AE25B8;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 138412546;
        *(buf + 4) = a1;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = a2;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit is in IMDP with afterRow %@ limit %lld", buf, 0x16u);
      }
    }

    memset(v31, 0, sizeof(v31));
    memset(buf, 0, sizeof(buf));
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    if (a1)
    {
      v5 = @" select * from sync_deleted_attachments where LENGTH(TRIM(recordID)) > 0 AND ROWID > ? ORDER BY ROWID LIMIT ?;";
    }

    else
    {
      v5 = @" select * from sync_deleted_attachments where LENGTH(TRIM(recordID)) > 0 ORDER BY ROWID LIMIT ?;";
    }

    _IMDSqlOperationBeginQuery(buf, v5);
    if (a1)
    {
      v9 = objc_msgSend_longLongValue(a1, v6, v7, v8);
      IMDSqlStatementBindInt64(v31, v9);
    }

    IMDSqlStatementBindInt64(v31, a2);
    while (IMDSqlOperationHasRows(buf))
    {
      Row = IMDSqlStatementGetRow(v31);
      if (Row)
      {
        objc_msgSend_addObject_(v25[5], v10, Row, v11);
      }
    }

    IMDSqlOperationFinishQuery(buf);
    v23 = 0;
    IMDSqlOperationRelease(buf, &v23);
    if (v23)
    {
      v19 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFD8D0();
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf[0]) = 138412546;
        *(buf + 4) = a1;
        WORD2(buf[1]) = 2048;
        *(&buf[1] + 6) = a2;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "IMDAttachmentCopyRecordIDsToDeleteAfterRowWithLimit is in imagent afterRow %@ with limit %lld", buf, 0x16u);
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = sub_1B7C093C8;
    v22[3] = &unk_1E7CB6838;
    v22[4] = &v24;
    __syncXPCIMDAttachmentRecordCopyAttachmentsToDeleteFromCloudKit_IPCAction(v22, a1, a2);
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v18 = objc_msgSend_count(v25[5], v15, v16, v17);
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v18;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Returned from DB call after loading attachments to delete messages count %lu", buf, 0xCu);
      }
    }
  }

  v20 = v25[5];
  _Block_object_dispose(&v24, 8);
  return v20;
}

void sub_1B7C0933C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7C092F4);
  }

  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

xpc_object_t sub_1B7C093C8(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7C0945C;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7C0945C(uint64_t a1, int a2, xpc_object_t xdict)
{
  int64 = xpc_dictionary_get_int64(xdict, "ROWID");
  v6 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "guid");
  v9 = objc_msgSend_stringWithCString_encoding_(v6, v8, string, 4);
  v10 = MEMORY[0x1E696AEC0];
  v11 = xpc_dictionary_get_string(xdict, "recordID");
  v13 = objc_msgSend_stringWithCString_encoding_(v10, v12, v11, 4);
  v14 = MEMORY[0x1E695DF20];
  v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v15, int64, v16);
  v20 = objc_msgSend_dictionaryWithObjectsAndKeys_(v14, v18, v9, v19, @"guid", v13, @"recordID", v17, @"ROWID", 0);
  objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v21, v20, v22);
  return 1;
}

__CFString *sub_1B7C09560(uint64_t a1)
{
  if (a1 < 1)
  {
    return 0;
  }

  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"DELETE FROM sync_deleted_attachments WHERE (recordID = ?");
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

void IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs(const __CFArray *Count)
{
  if (!Count || !CFArrayGetCount(Count))
  {
    v4 = IMDatabaseLogHandle();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "IMDAttachmentRecordDeleteTombStonedAttachmentsWithRecordIDs has no GUIDs to delete.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_7;
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v2 = CFArrayGetCount(Count);
    v3 = sub_1B7C09560(v2);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7C09760;
    v9[3] = &unk_1E7CBD178;
    v9[4] = v3;
    v9[5] = Count;
    IMDRunSqlOperation(v9);
    CFRelease(v3);
    return;
  }

  __syncXPCIMDAttachmentRecordDeleteTombStonedAttachmentsForRecordIDs_IPCAction(0, Count);
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "Returned from DB call after deleting RecordIDs from Tombstone table";
      v6 = v8;
      v7 = OS_LOG_TYPE_INFO;
LABEL_7:
      _os_log_impl(&dword_1B7AD5000, v6, v7, v5, buf, 2u);
    }
  }
}

BOOL sub_1B7C09760(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7C097E0;
  v6[3] = &unk_1E7CB75B0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = a2;
  v6[5] = v4;
  return _IMDSqlOperationRunQuery(a2, v3, v6, 0);
}

void IMDAttachmentMarkAllFailedAttachmentsAsNeedingSync(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Request to markAllUnsuccessFullySyncedAttachmentsAsNeedingSync ", buf, 2u);
  }

  if (IMDIsRunningInDatabaseServerProcess())
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    *buf = 0u;
    v5 = 0u;
    IMDSqlOperationInitWithSharedCSDBDatabase(buf);
    IMDSqlOperationExecuteQuery(buf, @"UPDATE attachment SET ck_sync_state=0 where ck_sync_state in (2,3,5) OR (ck_sync_state==1 AND guid not like at_%);", &unk_1F2FA1570);
    v3 = 0;
    IMDSqlOperationRelease(buf, &v3);
    if (v3)
    {
      v2 = IMAttachmentsLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 138412290;
        v16 = v3;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Error executing markAllFailedAttachmentsAsNeedingSync %@ ", v15, 0xCu);
      }
    }
  }

  else
  {
    __syncXPCIMDAttachmentRecordMarkFailedAttachmentsAsNeedingSync_IPCAction(0);
  }
}

void sub_1B7C09938(uint64_t a1)
{
  v1 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Executed query to mark all unsuccessfuly synced attachments as needing sync", v2, 2u);
  }
}

uint64_t sub_1B7C09998(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  result = objc_msgSend_fileExistsAtPath_(*(a1 + 32), a2, a2, a4);
  if (result)
  {
    v11 = 0;
    result = objc_msgSend_attributesOfItemAtPath_error_(*(a1 + 32), v7, a2, &v11);
    if (result)
    {
      result = objc_msgSend_fileSize(result, v8, v9, v10);
      *(*(*(a1 + 40) + 8) + 24) += result;
    }
  }

  return result;
}

void _IMDSMSRecordStoreCustomFunctionBeforeDeleteAttachment(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v6 = dword_1EBA54308++;
  if (v6 >= 1)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD948(v7);
    }
  }

  if (a2 == 2)
  {
    v8 = sqlite3_value_int(*a3);
    v9 = sqlite3_value_text(a3[1]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7C09B20;
    v12[3] = &unk_1E7CBCC58;
    v12[4] = v9;
    v13 = v8;
    IMDPersistencePerformBlock(v12, 1, v10, v11);
    sqlite3_result_int(a1, 0);
  }

  else
  {
    sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionDeleteAttachment: wrong number of arguments", -1);
  }

  --dword_1EBA54308;
}

void sub_1B7C09B20(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, *(a1 + 32), a4);
  if (objc_msgSend_length(v5, v6, v7, v8))
  {
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      *buf = 67109120;
      *&buf[4] = v10;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, finding messageRowID for attachment rowID %d", buf, 8u);
    }

    *buf = 0;
    v63 = buf;
    v64 = 0x2020000000;
    v65 = 0;
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = sub_1B7C0A138;
    v58[3] = &unk_1E7CBDE00;
    v59 = *(a1 + 40);
    v58[4] = buf;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT message_id FROM message_attachment_join WHERE attachment_id = ? LIMIT 1", v58);
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(v63 + 3);
      *v60 = 134217984;
      v61 = v12;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, message row id: %lli", v60, 0xCu);
    }

    v13 = IMDMessageRecordCopyMessageForRowID(*(v63 + 3));
    v14 = v13;
    if (v13)
    {
      v56 = 0;
      v57 = 0;
      v55 = 0;
      IMDMessageRecordBulkCopy(v13, 0, 0, 0, &v56, 0, 0, 0, 0, 0, &v57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      v15 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *v60 = 138412290;
        v61 = v14;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, messageRecord: %@", v60, 0xCu);
      }

      v16 = v56;
      if (v57 && v56)
      {
        v17 = JWDecodeCodableObjectWithStandardAllowlist();
        v18 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *v60 = 138412290;
          v61 = v5;
          _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, we found attachment guid: %@", v60, 0xCu);
        }

        v22 = objc_msgSend_mutableCopy(v17, v19, v20, v21);
        v26 = objc_msgSend_length(v22, v23, v24, v25);
        v27 = *MEMORY[0x1E69A5FD8];
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = sub_1B7C0A184;
        v54[3] = &unk_1E7CBDE28;
        v54[4] = v22;
        v54[5] = v5;
        objc_msgSend_enumerateAttribute_inRange_options_usingBlock_(v22, v28, v27, 0, v26, 0, v54);
        v31 = objc_msgSend_dictionaryWithMessageSummaryInfoData_(MEMORY[0x1E695DF20], v29, v55, v30);
        v34 = objc_msgSend_objectForKey_(v31, v32, *MEMORY[0x1E69A7240], v33);
        if (objc_msgSend_length(v22, v35, v36, v37) || objc_msgSend_count(v34, v38, v39, v40))
        {
          v41 = JWEncodeCodableObject();
          v45 = objc_msgSend_string(v22, v42, v43, v44);
          if (v41)
          {
            if (v45)
            {
              v52[0] = MEMORY[0x1E69E9820];
              v52[1] = 3221225472;
              v52[2] = sub_1B7C0A37C;
              v52[3] = &unk_1E7CBDE78;
              v52[4] = v45;
              v52[5] = v56;
              v52[6] = v41;
              _IMDPerformLockedStatementBlockWithQuery(@"UPDATE message set attributedBody = ?, text = ? where guid = ?", v52);
              v46 = IMDatabaseLogHandle();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
              {
                *v60 = 0;
                _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, updated attributedBody and text", v60, 2u);
              }
            }
          }
        }

        else
        {
          v48 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
          {
            *v60 = 0;
            _os_log_impl(&dword_1B7AD5000, v48, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment,deleted messages for guid", v60, 2u);
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1B7C0A2B4;
          block[3] = &unk_1E7CBDE50;
          block[4] = v56;
          IMDPersistencePerformBlock(block, 0, v49, v50);
        }

        v16 = v56;
      }

      if (v16)
      {
        CFRelease(v16);
        v56 = 0;
      }

      if (v57)
      {
        CFRelease(v57);
        v57 = 0;
      }

      CFRelease(v14);
    }

    else
    {
      v47 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        *v60 = 0;
        _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, no message record found", v60, 2u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v51 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, all done!", buf, 2u);
  }
}

uint64_t sub_1B7C0A138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt();
  result = CSDBSqliteStatementInteger64Result();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7C0A184(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend_attribute_atIndex_effectiveRange_(*(a1 + 32), a2, *MEMORY[0x1E69A5F68], a3, 0);
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, guid in message part: %@", &v13, 0xCu);
  }

  if (objc_msgSend_isEqualToString_(v7, v9, *(a1 + 40), v10))
  {
    objc_msgSend_deleteCharactersInRange_(*(a1 + 32), v11, a3, a4);
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "TRIGGER: Before deleting attachment, was equal, deleting range", &v13, 2u);
    }
  }
}

void sub_1B7C0A2B4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v9 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "TRIGGER: deferred deletion of messageGUID: %@", buf, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x1E695DEC8]);
  v7 = objc_msgSend_initWithObjects_(v4, v5, *(a1 + 32), v6, 0);
  IMDMessageRecordDeleteMessagesForGUIDs(v7, 0);
}

uint64_t sub_1B7C0A37C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindBlobFromCFData();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();

  return CSDBSqliteStatementPerform();
}

void _IMDSMSRecordStoreCustomFunctionDeleteAttachment(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v47 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v4 = sqlite3_value_text(*a3);
    if (v4)
    {
      v5 = v4;
      v6 = objc_autoreleasePoolPush();
      v7 = objc_alloc(MEMORY[0x1E696AEC0]);
      v10 = objc_msgSend_initWithUTF8String_(v7, v8, v5, v9);
      v14 = objc_msgSend_stringByResolvingAndStandardizingPath(v10, v11, v12, v13);
      v15 = IMSharedHelperPathIsInStickerCache();
      v16 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v20 = @"NO";
        if (v15)
        {
          v20 = @"YES";
        }

        v43 = 138412546;
        v44 = v14;
        v45 = 2112;
        v46 = v20;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "TRIGGER: Deleting attachment files based on path: %@, pathIsInStickerCache %@", &v43, 0x16u);
      }

      if (v15 & 1 | ((objc_msgSend_isAbsolutePath(v14, v17, v18, v19) & 1) == 0))
      {
        v21 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v43 = 138412290;
          v44 = v14;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Did not delete attachment at path %@", &v43, 0xCu);
        }

        v22 = 0;
      }

      else
      {
        v23 = objc_alloc_init(MEMORY[0x1E696AC08]);
        PathComponent = objc_msgSend_stringByDeletingLastPathComponent(v14, v24, v25, v26);
        if (v14)
        {
          objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v27, v14, 0);
        }

        v29 = IMPreviewCachesDirectoryWithAttachmentURL();
        v33 = objc_msgSend_lastPathComponent(PathComponent, v30, v31, v32);
        v37 = objc_msgSend_length(v33, v34, v35, v36);
        v38 = IMDatabaseLogHandle();
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);
        if (v37 < 0x24)
        {
          if (v39)
          {
            v43 = 138412290;
            v44 = v14;
            _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Just deleting the original path: %@", &v43, 0xCu);
          }

          v22 = objc_msgSend_removeItemAtPath_error_(v23, v40, v14, 0);
        }

        else
        {
          if (v39)
          {
            v43 = 138412290;
            v44 = PathComponent;
            _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Deleting this guid directory too: %@", &v43, 0xCu);
          }

          v22 = objc_msgSend_removeItemAtPath_error_(v23, v40, PathComponent, 0);
          if (v29)
          {
            objc_msgSend_removeItemAtURL_error_(v23, v41, v29, 0);
            v42 = IMDatabaseLogHandle();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v43 = 138412290;
              v44 = v29;
              _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "Deleting this caches guid directory too: %@", &v43, 0xCu);
            }
          }
        }
      }

      objc_autoreleasePoolPop(v6);
    }

    else
    {
      v22 = 0;
    }

    sqlite3_result_int(a1, v22);
  }

  else
  {

    sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionDeleteAttachment: wrong number of arguments", -1);
  }
}

void _IMDSMSRecordStoreCustomFunctionAfterDeleteMessagePlugin(sqlite3_context *a1, int a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = &qword_1EBA54000;
  v7 = dword_1EBA5430C++;
  if (v7 >= 1)
  {
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFD948(v8);
    }
  }

  if (a2 == 2)
  {
    v9 = sqlite3_value_text(*(a3 + 8));
    if (v9)
    {
      v10 = v9;
      context = objc_autoreleasePoolPush();
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v11, v10, v12);
      v16 = objc_alloc_init(MEMORY[0x1E696AC08]);
      for (i = 0; i != 3; ++i)
      {
        objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, @"%@-%d", v15, v13, i);
        v18 = IMPluginSnapshotCachesFileURL();
        v19 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v18;
          _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "TRIGGER: Deleting plugin snapshot at path: %@", buf, 0xCu);
        }

        v23 = 0;
        if ((objc_msgSend_removeItemAtURL_error_(v16, v20, v18, &v23) & 1) == 0)
        {
          v21 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v25 = v23;
            _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Failure to delete file at path with error: %@", buf, 0xCu);
          }
        }
      }

      objc_autoreleasePoolPop(context);
      v6 = &qword_1EBA54000;
    }
  }

  else
  {
    sqlite3_result_error(a1, "_IMDSMSRecordStoreCustomFunctionAfterDeleteMessagePlugin: wrong number of arguments", -1);
  }

  --*(v6 + 195);
}

void _IMDSMSRecordStoreCustomFunctionTrim(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 1)
  {
    if (a3)
    {
      v4 = sqlite3_value_text(*a3);
      if (v4)
      {
        v5 = v4;
        v6 = objc_autoreleasePoolPush();
        v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, v5, v8);
        v13 = objc_msgSend_trimmedString(v9, v10, v11, v12);
        v17 = objc_msgSend_UTF8String(v13, v14, v15, v16);
        sqlite3_result_text(a1, v17, -1, 0xFFFFFFFFFFFFFFFFLL);

        objc_autoreleasePoolPop(v6);
        return;
      }

      v18 = "_IMDSMSRecordStoreCustomFunctionTrim: SQLite text of value[0] was NULL.";
    }

    else
    {
      v18 = "_IMDSMSRecordStoreCustomFunctionTrim: sqlite3_value was NULL.";
    }
  }

  else
  {
    v18 = "_IMDSMSRecordStoreCustomFunctionTrim: wrong number of arguments";
  }

  sqlite3_result_error(a1, v18, -1);
}

uint64_t IMDPersistenceCheckNotDatabaseThread()
{
  if (byte_1EDBE7948 == 1)
  {
    IMDSharedThreadedRecordStore();
    if (CSDBThreadedRecordStoreOwnsCurrentThread())
    {
      if (IMOSLoggingEnabled())
      {
        v0 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_INFO, "**************************************************************************", buf, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v1 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
        {
          *v6 = 0;
          _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "***** Non-database work on the database thread, please file a radar ******", v6, 2u);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v2 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
        {
          *v5 = 0;
          _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "**************************************************************************", v5, 2u);
        }
      }

      if (qword_1EBA54318 != -1)
      {
        sub_1B7CFD98C();
      }

      v3 = qword_1EBA54320;
      if (os_log_type_enabled(qword_1EBA54320, OS_LOG_TYPE_FAULT))
      {
        sub_1B7CFD9B4(v3);
      }
    }
  }

  return 1;
}

void IMDPersistencePerformBlockAfterDelay(void *a1, double a2, const char *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (byte_1EDBE7948 == 1)
    {
      IMDSharedThreadedRecordStore();

      CSDBPerformBlockAfterDelay();
    }

    else
    {
      v6 = objc_msgSend_copy(a1, a3, a4, a5);
      if (qword_1EBA54330[0] != -1)
      {
        sub_1B7CFDA3C();
      }

      v7 = qword_1EBA54328;
      if (qword_1EBA54328)
      {
        v8 = dispatch_time(0, (a2 * 1000000000.0));
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B7C0B304;
        block[3] = &unk_1E7CB7FD8;
        block[4] = v6;
        dispatch_after(v8, v7, block);
      }
    }
  }
}

void IMDPersistencePerformBlockWithHandoffIfNeeded(dispatch_block_t block, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 1) != 0 || !objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], a2, a3, a4))
  {

    IMDPersistencePerformBlock(block, a2, a3, a4);
  }

  else
  {
    v6 = MEMORY[0x1E696B0B8];
    v7 = IMDSharedThreadedRecordStore();
    v9 = MEMORY[0x1B8CAF1A0](v7);

    objc_msgSend__handoffCurrentReplyToQueue_block_(v6, v8, v9, block);
  }
}

void IMDPersistenceDispatchAsyncWithHandoffIfNeeded(NSObject *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_currentConnection(MEMORY[0x1E696B0B8], a2, a3, a4))
  {
    v7 = MEMORY[0x1E696B0B8];

    objc_msgSend__handoffCurrentReplyToQueue_block_(v7, v6, a1, a2);
  }

  else
  {

    dispatch_async(a1, a2);
  }
}

uint64_t _IMDContactStore(uint64_t a1, uint64_t a2)
{
  if (qword_1EDBE5BF8 != -1)
  {
    sub_1B7CFDA50();
  }

  return qword_1EDBE5BF0;
}

void sub_1B7C0B45C()
{
  v12 = objc_alloc_init(MEMORY[0x1E695CE28]);
  v3 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v0, v1, v2);
  if (objc_msgSend_isIntroductionsEnabled(v3, v4, v5, v6))
  {
    objc_msgSend_setIncludeAcceptedIntroductions_(v12, v7, 1, v8);
  }

  v9 = objc_alloc(MEMORY[0x1E695CE18]);
  qword_1EDBE5BF0 = objc_msgSend_initWithConfiguration_(v9, v10, v12, v11);
}

void *IMDPersistenceSubmitEvent(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v9 = *MEMORY[0x1E69E9840];
  result = objc_msgSend_length(a1, a2, a3, a4);
  if (result)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = 138412290;
        v8 = a1;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Submitting persistence event: %@", &v7, 0xCu);
      }
    }

    return IMSubmitSimpleAggegateMetric();
  }

  return result;
}

void *IMDDBRecordGetAllColumnNames(uint64_t *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  LODWORD(v4) = a2;
  v6 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], a2, a2 + 1, a4);
  objc_msgSend_addObject_(v6, v7, @"ROWID", v8);
  if (v4 >= 1)
  {
    v4 = v4;
    do
    {
      v11 = *a1;
      a1 += 5;
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, v11, v10);
      objc_msgSend_addObject_(v6, v13, v12, v14);
      --v4;
    }

    while (v4);
  }

  return v6;
}

__CFString *_IMDGetUserDefaultsDomainForSavedDeviceInfo()
{
  if (qword_1EBA54310)
  {
    return qword_1EBA54310;
  }

  else
  {
    return @"com.apple.imdsmsrecordstore";
  }
}

void _IMDSetUserDefaultsDomainForSavedDeviceInfo(id a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (qword_1EBA54310)
  {

    qword_1EBA54310 = 0;
  }

  if (a1)
  {
    qword_1EBA54310 = a1;
  }

  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = qword_1EBA54310;
    if (!qword_1EBA54310)
    {
      v3 = @"com.apple.imdsmsrecordstore";
    }

    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Set device state test user defaults domain to: %@", &v4, 0xCu);
  }
}

void *_IMDGetSavedDeviceState()
{
  if (qword_1EBA54310)
  {
    v0 = qword_1EBA54310;
  }

  else
  {
    v0 = @"com.apple.imdsmsrecordstore";
  }

  v1 = CFPreferencesCopyValue(@"IMDSavedDeviceState", v0, @"mobile", *MEMORY[0x1E695E898]);
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  return v2;
}

id _IMDSetAllPropertiesOnDeviceStateIfNeeded(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_mutableCopy(a1, a2, a3, a4);
  if (!v7)
  {
    v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v4, v5, v6);
  }

  if (!objc_msgSend_objectForKey_(v7, v4, @"IMDSavedDeviceStateDidUpgradeKey", v6))
  {
    objc_msgSend_setObject_forKey_(v7, v8, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidUpgradeKey");
  }

  if (!objc_msgSend_objectForKey_(v7, v8, @"IMDSavedDeviceStateDidRestoreFromBackupKey", v9))
  {
    objc_msgSend_setObject_forKey_(v7, v10, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidRestoreFromBackupKey");
  }

  if (!objc_msgSend_objectForKey_(v7, v10, @"IMDSavedDeviceStateDidMigrateFromDifferentDeviceKey", v11))
  {
    objc_msgSend_setObject_forKey_(v7, v12, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidMigrateFromDifferentDeviceKey");
  }

  if (!objc_msgSend_objectForKey_(v7, v12, @"IMDSavedDeviceStateDidRestoreFromCloudBackupKey", v13))
  {
    objc_msgSend_setObject_forKey_(v7, v14, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidRestoreFromCloudBackupKey");
  }

  if (!objc_msgSend_objectForKey_(v7, v14, @"IMDSavedDeviceStateDidMigrateKey", v15))
  {
    objc_msgSend_setObject_forKey_(v7, v16, MEMORY[0x1E695E110], @"IMDSavedDeviceStateDidMigrateKey");
  }

  if (!objc_msgSend_objectForKey_(v7, v16, @"IMDSavedDeviceStateBuildVersionKey", v17))
  {
    v21 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], v18, v19, v20);
    v25 = objc_msgSend_operatingSystemVersionString(v21, v22, v23, v24);
    objc_msgSend_setObject_forKey_(v7, v26, v25, @"IMDSavedDeviceStateBuildVersionKey");
  }

  if (!objc_msgSend_objectForKey_(v7, v18, @"IMDSavedDeviceStateIsMigratingKey", v20))
  {
    objc_msgSend_setObject_forKey_(v7, v27, MEMORY[0x1E695E110], @"IMDSavedDeviceStateIsMigratingKey");
  }

  if (!objc_msgSend_objectForKey_(v7, v27, @"IMDSavedDeviceStateDateKey", v28))
  {
    v32 = objc_msgSend_date(MEMORY[0x1E695DF00], v29, v30, v31);
    objc_msgSend_setObject_forKey_(v7, v33, v32, @"IMDSavedDeviceStateDateKey");
  }

  return v7;
}

void _IMDSetSavedDeviceState(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = _IMDSetAllPropertiesOnDeviceStateIfNeeded(a1, a2, a3, a4);
  }

  else
  {
    v4 = 0;
  }

  if (qword_1EBA54310)
  {
    v5 = qword_1EBA54310;
  }

  else
  {
    v5 = @"com.apple.imdsmsrecordstore";
  }

  v6 = *MEMORY[0x1E695E898];
  CFPreferencesSetValue(@"IMDSavedDeviceState", v4, v5, @"mobile", *MEMORY[0x1E695E898]);
  if (qword_1EBA54310)
  {
    v7 = qword_1EBA54310;
  }

  else
  {
    v7 = @"com.apple.imdsmsrecordstore";
  }

  CFPreferencesSynchronize(v7, @"mobile", v6);
  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v12 = 138412290;
    v13 = objc_msgSend_description(v4, v9, v10, v11);
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Saved device state: %@", &v12, 0xCu);
  }
}

id IMDReadDeviceState()
{
  v14 = *MEMORY[0x1E69E9840];
  v0 = _IMDGetSavedDeviceState();
  v4 = _IMDSetAllPropertiesOnDeviceStateIfNeeded(v0, v1, v2, v3);
  v5 = IMDatabaseLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v0)
  {
    if (v6)
    {
      v12 = 138412290;
      v13 = objc_msgSend_description(v4, v7, v8, v9);
      v10 = "Read stored device state: %@";
LABEL_6:
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, v10, &v12, 0xCu);
    }
  }

  else if (v6)
  {
    v12 = 138412290;
    v13 = objc_msgSend_description(v4, v7, v8, v9);
    v10 = "Device state not set, return default version: %@";
    goto LABEL_6;
  }

  return v4;
}

void IMSaveDeviceState(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27[6] = *MEMORY[0x1E69E9840];
  v26[0] = @"IMDSavedDeviceStateDidUpgradeKey";
  v27[0] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], a2, a1, a4);
  v26[1] = @"IMDSavedDeviceStateDidRestoreFromBackupKey";
  v27[1] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v11, a2, v12);
  v26[2] = @"IMDSavedDeviceStateDidMigrateFromDifferentDeviceKey";
  v27[2] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v13, a3, v14);
  v26[3] = @"IMDSavedDeviceStateDidRestoreFromCloudBackupKey";
  v27[3] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v15, a4, v16);
  v26[4] = @"IMDSavedDeviceStateDidMigrateKey";
  v27[4] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v17, a5, v18);
  v26[5] = @"IMDSavedDeviceStateIsMigratingKey";
  v27[5] = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v19, a6, v20);
  v22 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v21, v27, v26, 6);
  _IMDSetSavedDeviceState(v22, v23, v24, v25);
}

os_log_t sub_1B7C0BC88()
{
  result = os_log_create("com.apple.runtime-issues", "Messages");
  qword_1EBA54320 = result;
  return result;
}

dispatch_queue_t sub_1B7C0BCB8()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  result = dispatch_queue_create("_IMDPersistenceClientQueue", v0);
  qword_1EBA54328 = result;
  return result;
}

void sub_1B7C0BDD8()
{
  if (qword_1EDBE5C90 != -1)
  {
    sub_1B7CFDA64();
  }

  if (!qword_1EDBE5C68)
  {
    v0 = MEMORY[0x1E696AEC0];
    v1 = IMFileLocationTrimFileName();
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v2, &stru_1F2FA9728, v3);
    v7 = objc_msgSend_stringWithFormat_(v0, v5, @"Unexpected nil '%@' in %s at %s:%d. %@", v6, @"kIMContactsContactEmailAddressesKey", "void _IMDContactsApiInit(void)", v1, 72, v4);

    v8 = IMGetAssertionFailureHandler();
    if (v8)
    {
      v8(v7);
    }

    else
    {
      v12 = objc_msgSend_warning(MEMORY[0x1E69A6138], v9, v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFDA78();
      }
    }
  }

  if (!qword_1EDBE5C58)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = IMFileLocationTrimFileName();
    v17 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v15, &stru_1F2FA9728, v16);
    v20 = objc_msgSend_stringWithFormat_(v13, v18, @"Unexpected nil '%@' in %s at %s:%d. %@", v19, @"kIMContactsContactPhoneNumbersKey", "void _IMDContactsApiInit(void)", v14, 73, v17);

    v21 = IMGetAssertionFailureHandler();
    if (v21)
    {
      v21(v20);
    }

    else
    {
      v25 = objc_msgSend_warning(MEMORY[0x1E69A6138], v22, v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFDA78();
      }
    }
  }

  if (!qword_1EDBE5C60)
  {
    v26 = MEMORY[0x1E696AEC0];
    v27 = IMFileLocationTrimFileName();
    v30 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v28, &stru_1F2FA9728, v29);
    v33 = objc_msgSend_stringWithFormat_(v26, v31, @"Unexpected nil '%@' in %s at %s:%d. %@", v32, @"kIMContactsContactInstantMessageAddressesKey", "void _IMDContactsApiInit(void)", v27, 74, v30);

    v34 = IMGetAssertionFailureHandler();
    if (v34)
    {
      v34(v33);
    }

    else
    {
      v38 = objc_msgSend_warning(MEMORY[0x1E69A6138], v35, v36, v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFDA78();
      }
    }
  }
}

void sub_1B7C0C0F4()
{
  v0 = objc_alloc_init(IMDCNPersonAliasResolver);
  v1 = qword_1EBA53A30;
  qword_1EBA53A30 = v0;
}

void sub_1B7C0D1FC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    JUMPOUT(0x1B7C0D1E8);
  }

  objc_end_catch();
  _Unwind_Resume(exc_buf);
}

void sub_1B7C0D23C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sharedInstance(IMDContactCache, a2, a3, a4);
  objc_msgSend_cacheContactsFromFetchResults_forAliases_(v5, v6, a1[4], a1[5]);

  v12 = objc_msgSend_sharedInstance(IMDContactCache, v7, v8, v9);
  objc_msgSend_setCurrentHistoryToken_(v12, v10, *(*(a1[6] + 8) + 40), v11);
}

uint64_t sub_1B7C0E220()
{
  if (!qword_1EDBE5C68)
  {
    v0 = MEMORY[0x1B8CAFAD0]("CNContactEmailAddressesKey", @"Contacts");
    if (v0)
    {
      v1 = *v0;
    }

    else
    {
      v1 = 0;
    }

    objc_storeStrong(&qword_1EDBE5C68, v1);
  }

  if (!qword_1EDBE5C58)
  {
    v2 = MEMORY[0x1B8CAFAD0]("CNContactPhoneNumbersKey", @"Contacts");
    if (v2)
    {
      v3 = *v2;
    }

    else
    {
      v3 = 0;
    }

    objc_storeStrong(&qword_1EDBE5C58, v3);
  }

  if (!qword_1EDBE5C60)
  {
    v4 = MEMORY[0x1B8CAFAD0]("CNContactInstantMessageAddressesKey", @"Contacts");
    if (v4)
    {
      v5 = *v4;
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong(&qword_1EDBE5C60, v5);
  }

  qword_1EDBE5CA8 = MEMORY[0x1B8CAFAC0](@"CNContactStore", @"Contacts");
  qword_1EDBE5CC0 = MEMORY[0x1B8CAFAC0](@"CNContact", @"Contacts");
  qword_1EDBE5C98 = MEMORY[0x1B8CAFAC0](@"CNPhoneNumber", @"Contacts");
  qword_1EDBE5CB0 = MEMORY[0x1B8CAFAC0](@"CNContactFormatter", @"Contacts");
  qword_1EDBE5CB8 = MEMORY[0x1B8CAFAC0](@"CNContactFetchRequest", @"Contacts");
  qword_1EDBE5CC8 = MEMORY[0x1B8CAFAC0](@"CNChangeHistoryFetchRequest", @"Contacts");
  result = MEMORY[0x1B8CAFAC0](@"CNFavorites", @"Contacts");
  qword_1EDBE5CA0 = result;
  return result;
}

void sub_1B7C0E648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7C0E7EC()
{
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ChatRecord(0);
  sub_1B7C10724(&qword_1EDBE5708, type metadata accessor for ChatRecord, &unk_1B7D0F570);
  sub_1B7CC1208(v0);
  if (v1)
  {
    v2 = *(v1 + 32);

    v3 = *(v2 + 16);
    if (v3)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v3, 0);
      v4 = v12;
      v5 = v2 + 32;
      do
      {
        sub_1B7AEBEFC(v5, v11);
        v7 = v11[2];
        v6 = v11[3];

        sub_1B7AEBF70(v11);
        v12 = v4;
        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1B7AECEEC((v8 > 1), v9 + 1, 1);
          v4 = v12;
        }

        *(v4 + 16) = v9 + 1;
        v10 = v4 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 136;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    v11[0] = &unk_1F2FA15D0;
    sub_1B7C50BFC(v4);
    off_1EBA50DF8 = v11[0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B7C0EC44(uint64_t a1, uint64_t a2)
{
  v4 = 0xE000000000000000;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x205443454C4553, 0xE700000000000000);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_1B7CFEA30();
  v7 = [ObjCClassFromMetadata allColumnsWithPrefix_];

  v8 = sub_1B7CFEA60();
  v10 = v9;

  MEMORY[0x1B8CADCA0](v8, v10);

  MEMORY[0x1B8CADCA0](0xD00000000000014CLL, 0x80000001B7D4E700);
  if (a2)
  {
    MEMORY[0x1B8CADCA0](a1, a2);
    v11 = 0x20444E4120;
    v4 = 0xE500000000000000;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1B8CADCA0](v11, v4);

  MEMORY[0x1B8CADCA0](0xD000000000000016, 0x80000001B7D4E850);
  return 0;
}

uint64_t sub_1B7C0EE48()
{
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x205443454C4553, 0xE700000000000000);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = sub_1B7CFEA30();
  v2 = [ObjCClassFromMetadata allColumnsWithPrefix_];

  v3 = sub_1B7CFEA60();
  v5 = v4;

  MEMORY[0x1B8CADCA0](v3, v5);

  MEMORY[0x1B8CADCA0](0xD0000000000000B5, 0x80000001B7D4E9E0);
  return 0;
}

uint64_t sub_1B7C0EF40(int a1)
{
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000009ALL, 0x80000001B7D4E870);
  v2 = [swift_getObjCClassFromMetadata() allColumns];
  v3 = sub_1B7CFEA60();
  v5 = v4;

  MEMORY[0x1B8CADCA0](v3, v5);

  MEMORY[0x1B8CADCA0](0xD000000000000067, 0x80000001B7D4E910);
  sub_1B7AF7F10(0xD00000000000005CLL, 0x80000001B7D4E980, a1);
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v6 = sub_1B7CFEA10();
  v8 = v7;

  MEMORY[0x1B8CADCA0](v6, v8);

  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  return 0;
}

uint64_t sub_1B7C0F114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_1B7CFE120();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B7C0EC44(a3, a4);
  v17 = v16;
  sub_1B7C108AC(a2, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B7C10844(v10);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1B7CFF210();

    v25 = v15;
    v26 = v17;
    MEMORY[0x1B8CADCA0](0xD000000000000023, 0x80000001B7D4E6D0);
    v18 = sub_1B7CFE0A0();
    v19 = [v18 __im_nanosecondTimeInterval];

    v24 = v19;
    v20 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v20);

    v15 = v25;
    v17 = v26;
    (*(v12 + 8))(v14, v11);
  }

  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1B7CFF210();

  v25 = v15;
  v26 = v17;
  MEMORY[0x1B8CADCA0](0xD000000000000023, 0x80000001B7D4E6A0);
  result = v25;
  if (a1 >= 1)
  {
    MEMORY[0x1B8CADCA0](0x2054494D494C0ALL, 0xE700000000000000);
    v24 = a1;
    v22 = sub_1B7CFF570();
    MEMORY[0x1B8CADCA0](v22);

    MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
    return v25;
  }

  return result;
}

IMDChatQueryStrings __swiftcall IMDChatQueryStrings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

const char *sub_1B7C0F77C()
{
  result = sub_1B7AE3B2C(0xD000000000000039, 0x80000001B7D4F0D0, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void sub_1B7C0F888()
{
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MessageRecord(0);
  sub_1B7C10724(&qword_1EDBE5658, type metadata accessor for MessageRecord, &unk_1B7D0BB40);
  sub_1B7CC1208(v0);
  if (v1)
  {
    sub_1B7C2EBBC(v1, 0x74694B64756F6C63, 0xEE00444974616843);
  }

  else
  {
    __break(1u);
  }
}

const char *sub_1B7C0F99C()
{
  result = sub_1B7AE3B2C(0xD000000000000039, 0x80000001B7D4F090, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

void sub_1B7C0FAC4()
{
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for ChatRecord(0);
  sub_1B7C10724(&qword_1EDBE5708, type metadata accessor for ChatRecord, &unk_1B7D0F570);
  sub_1B7CC1208(v0);
  if (v1)
  {
    sub_1B7C2EBBC(v1, 0x6E69646E65507369, 0xEF77656976655267);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B7C0FC2C(void *a1)
{

  sub_1B7C816E0();
}

const char *sub_1B7C0FC84()
{
  result = sub_1B7AE3B2C(0xD00000000000002FLL, 0x80000001B7D4F060, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

const char *sub_1B7C0FD90()
{
  result = sub_1B7AE3B2C(0xD000000000000036, 0x80000001B7D4F020, 0);
  if (!v0)
  {
    sub_1B7AF3FE4(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

unint64_t type metadata accessor for IMDChatQueryStrings()
{
  result = qword_1EBA51670;
  if (!qword_1EBA51670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA51670);
  }

  return result;
}

__n128 sub_1B7C0FEEC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1B7C0FF20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 176))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B7C0FF7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_1B7C10010(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_1B7C10038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_1B7C10064(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B7C100C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C10210(uint64_t a1, id *a2)
{
  result = sub_1B7CFEA40();
  *a2 = 0;
  return result;
}

uint64_t sub_1B7C10288(uint64_t a1, id *a2)
{
  v3 = sub_1B7CFEA50();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B7C10308@<X0>(uint64_t *a2@<X8>)
{
  sub_1B7CFEA60();
  v3 = sub_1B7CFEA30();

  *a2 = v3;
  return result;
}

uint64_t sub_1B7C1034C()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C103C0(uint64_t a1)
{
  v2 = *v1;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v2);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C10404()
{
  v0 = sub_1B7CFEA60();
  v1 = MEMORY[0x1B8CADD40](v0);

  return v1;
}

uint64_t sub_1B7C10440(uint64_t a1)
{
  sub_1B7CFEA60();
  sub_1B7CFEB10();
}

uint64_t sub_1B7C10494(uint64_t a1)
{
  sub_1B7CFEA60();
  sub_1B7CFF7C0();
  sub_1B7CFEB10();
  v1 = sub_1B7CFF800();

  return v1;
}

uint64_t sub_1B7C10524(void *a1, uint64_t *a2)
{
  v2 = sub_1B7CFEA60();
  v4 = v3;
  if (v2 == sub_1B7CFEA60() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B7CFF590();
  }

  return v7 & 1;
}

uint64_t sub_1B7C105AC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B7CFEA30();

  *a2 = v3;
  return result;
}

uint64_t sub_1B7C105F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7CFEA60();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B7C10620(uint64_t a1)
{
  v2 = sub_1B7C10724(&qword_1EBA51730, type metadata accessor for URLResourceKey, &unk_1B7D0A088);
  v3 = sub_1B7C10724(&qword_1EBA51738, type metadata accessor for URLResourceKey, &unk_1B7D0A028);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B7C10724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7C107FC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B7C10844(uint64_t a1)
{
  v2 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C108AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7C1091C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_1B7C109B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1B7C109E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B7C10A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C10AE0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1B7C10B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 sub_1B7C10BC0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1B7C10BD4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C10BF4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

__n128 sub_1B7C10C34(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B7C10C50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B7C10CAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_1B7C10D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B7C10D58(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_1B7C10DB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C10E6C(uint64_t a1)
{
  type metadata accessor for CFDictionary(255);
  *(a1 + 16) = v2;
  return 0;
}

__n128 sub_1B7C10EB4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_1B7C10EF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 200))
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

uint64_t sub_1B7C10F54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1B7C11000(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1B7C11014(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C11034(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 12) = v3;
  return result;
}

__n128 sub_1B7C11088(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7C1109C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7C110BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1B7C11184()
{
  v1 = v0;
  v2 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v134 = v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v127 = v109 - v5;
  v116 = sub_1B7CFE420();
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v111 = v109 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v132 = v109 - v10;
  v11 = sub_1B7CFDFF0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v110 = (v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v139 = (v109 - v15);
  MEMORY[0x1EEE9AC00](v16);
  v128 = (v109 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v130 = (v109 - v19);
  MEMORY[0x1EEE9AC00](v20);
  v131 = (v109 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (v109 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v129 = v109 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = (v109 - v28);
  if (qword_1EBA515D8 != -1)
  {
LABEL_59:
    swift_once();
  }

  v123 = qword_1EBA5DAF0;
  v125 = "eDirectoryLoggerDelegate";
  v118 = OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory;
  v119 = *(v12 + 16);
  v120 = v12;
  v119(v29, v1 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory, v11);
  v122 = sub_1B7CFDF30();
  v126 = v30;
  v124 = v1;
  v31 = *(v12 + 8);
  v31(v29, v11);
  v32 = v130;
  sub_1B7C4F08C(v130);
  v33 = v131;
  sub_1B7CFDF60();
  v31(v32, v11);
  sub_1B7CFDF60();
  v31(v33, v11);
  v34 = v129;
  sub_1B7CFDF70();
  v114 = v24;
  v130 = v31;
  v131 = (v12 + 8);
  v31(v24, v11);
  type metadata accessor for StorageInspectorReportFile(0);
  v35 = swift_allocObject();
  v36 = (v35 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile____lazy_storage___path);
  *v36 = 0;
  v36[1] = 0;
  *(v35 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_fileHandle) = 0;
  v37 = v120 + 32;
  v129 = *(v120 + 32);
  (v129)(v35 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v34, v11);

  v24 = v124;
  v38 = v128;
  v39 = v11;
  v113 = v12 + 16;
  v119(v128, &v124[v118], v11);
  v40 = v38;
  if (qword_1EBA51660 != -1)
  {
    swift_once();
  }

  v41 = qword_1EBA5DB50;
  type metadata accessor for AttachmentDirectoryEnumerator(0);
  swift_allocObject();

  v42 = v133;
  v43 = sub_1B7CD6A6C(v40, v41, 4);
  v44 = v132;
  if (!v42)
  {
    v133 = v43;
    v117 = v35;
    v109[2] = "directoryBatchSize";
    v109[1] = "com.apple.Messages";
    sub_1B7CFE410();

    v45 = sub_1B7CFE400();
    v46 = sub_1B7CFEED0();

    v47 = os_log_type_enabled(v45, v46);
    v123 = 0;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      *&v137 = v128;
      *v48 = 136315138;
      v49 = v114;
      v11 = v39;
      v119(v114, v24 + v118, v39);
      v50 = sub_1B7CFDFC0();
      v52 = v51;
      v130(v49, v11);
      v53 = sub_1B7AED1B8(v50, v52, &v137);

      *(v48 + 4) = v53;
      _os_log_impl(&dword_1B7AD5000, v45, v46, "Logging contents of root directory: '%s'", v48, 0xCu);
      v54 = v128;
      sub_1B7AE9168(v128);
      MEMORY[0x1B8CB0E70](v54, -1, -1);
      MEMORY[0x1B8CB0E70](v48, -1, -1);

      v109[0] = *(v115 + 8);
      (v109[0])(v132, v116);
    }

    else
    {

      v109[0] = *(v115 + 8);
      (v109[0])(v44, v116);
      v11 = v39;
    }

    v1 = v127;
    v55 = 0;
    v125 = 0;
    v128 = OBJC_IVAR____TtC14IMDPersistence29AttachmentDirectoryEnumerator_error;
    v126 = OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_minDepth;
    v121 = OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_directoryBatchSize;
    v12 = v120 + 56;
    v29 = (v120 + 48);
    v132 = MEMORY[0x1E69E7CC0];
    v122 = v37;
    v56 = v133;
    while (1)
    {
      v57 = objc_autoreleasePoolPush();
      v58 = *(v56 + 16);
      if (v58)
      {
        if ([v58 nextObject])
        {
          sub_1B7CFF0A0();
          v56 = v133;
          swift_unknownObjectRelease();
        }

        else
        {
          v135 = 0u;
          v136 = 0u;
        }

        v137 = v135;
        v138 = v136;
        if (*(&v136 + 1))
        {
          v59 = v134;
          v60 = swift_dynamicCast() ^ 1;
          v61 = v59;
          v1 = v127;
          (*v12)(v61, v60, 1, v11);
          goto LABEL_21;
        }
      }

      else
      {
        v137 = 0u;
        v138 = 0u;
      }

      sub_1B7AEE190(&v137, &qword_1EBA51FA8, qword_1B7D0B230);
      (*v12)(v134, 1, 1, v11);
LABEL_21:
      v62 = *(v128 + v56);
      if (v62)
      {
        swift_willThrow();
        v75 = v62;
        sub_1B7AEE190(v134, &qword_1EBA51FA0, &qword_1B7D0A6D0);
        goto LABEL_37;
      }

      sub_1B7C124A0(v134, v1);
      if ((*v29)(v1, 1, v11) == 1)
      {
        sub_1B7AEE190(v1, &qword_1EBA51FA0, &qword_1B7D0A6D0);
        objc_autoreleasePoolPop(v57);
        if (*(v132 + 2))
        {
          v76 = v123;
          sub_1B7C96998(v132);
          v77 = v112;
          v78 = v111;
          v79 = v114;
          if (v76)
          {

            swift_setDeallocating();
            sub_1B7C95D64();
            swift_deallocClassInstance();
            goto LABEL_54;
          }
        }

        else
        {
          v77 = v112;
          v78 = v111;
          v79 = v114;
        }

        sub_1B7CFE410();

        v80 = v24;
        v81 = sub_1B7CFE400();
        v82 = sub_1B7CFEED0();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          *&v137 = swift_slowAlloc();
          v84 = v137;
          *v83 = 134218242;
          *(v83 + 4) = v55;
          *(v83 + 12) = 2080;
          v119(v79, &v80[v118], v11);
          v85 = sub_1B7CFDFC0();
          v86 = v79;
          v88 = v87;
          v130(v86, v11);
          v89 = sub_1B7AED1B8(v85, v88, &v137);

          *(v83 + 14) = v89;
          _os_log_impl(&dword_1B7AD5000, v81, v82, "Finished Logging %ld contents of root directory: '%s'", v83, 0x16u);
          sub_1B7AE9168(v84);
          v90 = v84;
          v77 = v112;
          MEMORY[0x1B8CB0E70](v90, -1, -1);
          MEMORY[0x1B8CB0E70](v83, -1, -1);

          v91 = v111;
        }

        else
        {

          v91 = v78;
        }

        (v109[0])(v91, v116);
        sub_1B7CFE410();

        v92 = sub_1B7CFE400();
        v93 = sub_1B7CFEED0();

        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v95 = swift_slowAlloc();
          *&v137 = v95;
          *v94 = 136315138;
          v96 = sub_1B7C95CE0();
          v98 = sub_1B7AED1B8(v96, v97, &v137);

          *(v94 + 4) = v98;
          _os_log_impl(&dword_1B7AD5000, v92, v93, "Created log file: %s", v94, 0xCu);
          sub_1B7AE9168(v95);
          MEMORY[0x1B8CB0E70](v95, -1, -1);
          MEMORY[0x1B8CB0E70](v94, -1, -1);
        }

        (v109[0])(v77, v116);
        v99 = v110;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v101 = *(Strong + OBJC_IVAR____TtC14IMDPersistence26AttachmentStorageInspector_inspectionReport);
          v119(v99, v117 + OBJC_IVAR____TtC14IMDPersistence26StorageInspectorReportFile_pathURL, v11);
          swift_beginAccess();
          v102 = *(v101 + 344);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v101 + 344) = v102;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v102 = sub_1B7CA1D44(0, v102[2] + 1, 1, v102);
            *(v101 + 344) = v102;
          }

          v104 = v120;
          v106 = v102[2];
          v105 = v102[3];
          if (v106 >= v105 >> 1)
          {
            v108 = sub_1B7CA1D44((v105 > 1), v106 + 1, 1, v102);
            v104 = v120;
            v102 = v108;
          }

          v102[2] = v106 + 1;
          (v129)(v102 + ((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v106, v99, v11);
          *(v101 + 344) = v102;

          swift_setDeallocating();
          sub_1B7C95D64();
          swift_deallocClassInstance();
          swift_unknownObjectRelease();
          goto LABEL_54;
        }

LABEL_38:
        swift_setDeallocating();
        sub_1B7C95D64();
        swift_deallocClassInstance();
LABEL_54:

        return 1;
      }

      (v129)(v139, v1, v11);
      v56 = v133;
      v63 = *(v133 + 16);
      if (v63)
      {
        v64 = [v63 level];
        if (v64 < *(v24 + v126))
        {
LABEL_11:
          v130(v139, v11);
          goto LABEL_12;
        }
      }

      else if (*(v24 + v126) > 0)
      {
        goto LABEL_11;
      }

      v55 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      v65 = sub_1B7CFDFC0();
      v67 = v66;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v68 = v132;
      }

      else
      {
        v68 = sub_1B7AF182C(0, *(v132 + 2) + 1, 1, v132);
      }

      v70 = *(v68 + 2);
      v69 = *(v68 + 3);
      v71 = v70 + 1;
      if (v70 >= v69 >> 1)
      {
        v68 = sub_1B7AF182C((v69 > 1), v70 + 1, 1, v68);
      }

      *(v68 + 2) = v71;
      v72 = &v68[16 * v70];
      *(v72 + 4) = v65;
      *(v72 + 5) = v67;
      v24 = v124;
      if (v71 >= *&v124[v121])
      {
        v73 = v123;
        v74 = v68;
        sub_1B7C96998(v68);
        v123 = v73;
        if (v73)
        {
          v132 = v74;
          v130(v139, v11);
LABEL_37:
          objc_autoreleasePoolPop(v57);

          goto LABEL_38;
        }

        v130(v139, v11);

        v132 = MEMORY[0x1E69E7CC0];
        v125 = v55;
      }

      else
      {
        v132 = v68;
        v130(v139, v11);
        v125 = v55;
      }

      v56 = v133;
      v1 = v127;
LABEL_12:
      objc_autoreleasePoolPop(v57);
    }
  }

  swift_setDeallocating();
  sub_1B7C95D64();
  swift_deallocClassInstance();
  return 1;
}

uint64_t sub_1B7C122C0()
{
  v1 = OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_rootDirectory;
  v2 = sub_1B7CFDFF0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1B7C12510(v0 + OBJC_IVAR____TtC14IMDPersistence32AttachmentStorageDirectoryLogger_delegate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttachmentStorageDirectoryLogger(uint64_t a1)
{
  result = qword_1EBA51F90;
  if (!qword_1EBA51F90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C123C0(uint64_t a1)
{
  result = sub_1B7CFDFF0();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_1B7C12490@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1B7C124A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B7C12538(uint64_t a1, void (*a2)(uint64_t, void))
{
  sub_1B7AE3F68();
  v32[1] = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000034, 0x80000001B7D50B60);
  v5 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v5);

  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);

  v6 = sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  v32[0] = v4;

  sub_1B7C94FDC(v33, v6, v32, v6);
  v31 = a2;

  swift_bridgeObjectRelease_n();
  v7 = v32[0];
  v8 = sub_1B7AEE408(MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 16);
  if (!v9)
  {
LABEL_16:

    sub_1B7C12930(v8);
    v30 = v29;

    v31(v30, 0);

    return;
  }

  v10 = 0;
  v11 = (v7 + 48);
  while (v10 < *(v7 + 16))
  {
    v14 = *(v11 - 2);
    v13 = *(v11 - 1);
    v15 = *v11;
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = v8;
    v17 = sub_1B7AE11D0(v14, v13);
    v19 = v8[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_20;
    }

    v23 = v18;
    if (v8[3] < v22)
    {
      sub_1B7AEE574(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1B7AE11D0(v14, v13);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v28 = v17;
    sub_1B7CE8360();
    v17 = v28;
    if (v23)
    {
LABEL_3:
      v12 = v17;

      v8 = v32[0];
      *(*(v32[0] + 56) + 8 * v12) = v15;

      goto LABEL_4;
    }

LABEL_12:
    v8 = v32[0];
    *(v32[0] + 8 * (v17 >> 6) + 64) |= 1 << v17;
    v25 = (v8[6] + 16 * v17);
    *v25 = v14;
    v25[1] = v13;
    *(v8[7] + 8 * v17) = v15;

    v26 = v8[2];
    v21 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v21)
    {
      goto LABEL_21;
    }

    v8[2] = v27;
LABEL_4:
    ++v10;
    v11 += 3;
    if (v9 == v10)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1B7CFF740();
  __break(1u);
}

void sub_1B7C12930(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1B7C107FC(&qword_1EBA521F0, &unk_1B7D0A6E0);
    v2 = sub_1B7CFF380();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_1B7CFEE20();
        v18 = sub_1B7AE11D0(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1B7C12C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
  v5 = sub_1B7CFE980();
  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B7C12CF8(void (*a1)(void))
{
  v20 = a1;
  v1 = sub_1B7CFE120();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  sub_1B7AE3F68();
  sub_1B7CFE100();
  IMSharedHelperMessagePriorityTimeout();
  sub_1B7CFE090();
  v8 = *(v2 + 8);
  v8(v4, v1);
  v9 = sub_1B7CFE080();
  v8(v7, v1);
  sub_1B7CFE100();
  IMSharedHelperReadMessagePriorityTimeout();
  sub_1B7CFE090();
  v8(v4, v1);
  v10 = sub_1B7CFE080();
  v8(v7, v1);
  v11 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = v11[2];
  v12 = v11[3];
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1B7AE3A9C((v12 > 1), v13 + 1, 1, v11);
  }

  v15 = MEMORY[0x1E69E7360];
  v22 = MEMORY[0x1E69E7360];
  v23 = &off_1F2FA8A78;
  *&v21 = v10;
  v11[2] = v14;
  sub_1B7AE910C(&v21, &v11[5 * v13 + 4]);
  v16 = v11[3];
  v17 = v13 + 2;
  if (v17 > (v16 >> 1))
  {
    v11 = sub_1B7AE3A9C((v16 > 1), v17, 1, v11);
  }

  v22 = v15;
  v23 = &off_1F2FA8A78;
  *&v21 = v9;
  v11[2] = v17;
  sub_1B7AE910C(&v21, &v11[5 * v14 + 4]);
  sub_1B7AE3B2C(0xD0000000000000A4, 0x80000001B7D50AB0, 0);
  sub_1B7AF3FE4(v11);

  v20(0);
}

void sub_1B7C1317C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_1B7AEE088(0, &qword_1EDBE58F8, 0x1E69A8340);
    v5 = sub_1B7CFECC0();
  }

  if (a2)
  {
    v6 = sub_1B7CFDEB0();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_1B7C13228(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1B7AEE088(0, &qword_1EDBE58F8, 0x1E69A8340);
    v4 = sub_1B7CFECE0();
  }

  v6 = a3;
  v5(v4, a3);
}

void sub_1B7C132CC(int64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, void))
{
  sub_1B7AE3F68();
  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  v9 = v8 + 1;
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B7AE3A9C((v7 > 1), v8 + 1, 1, v6);
  }

  v10 = MEMORY[0x1E69E7360];
  v30 = MEMORY[0x1E69E7360];
  v31 = &off_1F2FA8A78;
  *&v29 = a1;
  v6[2] = v9;
  sub_1B7AE910C(&v29, &v6[5 * v8 + 4]);
  v12 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
  }

  else
  {
    v11 = v6[3];
    a1 = v8 + 2;
    if ((v8 + 2) <= (v11 >> 1))
    {
      goto LABEL_5;
    }
  }

  v6 = sub_1B7AE3A9C((v11 > 1), a1, 1, v6);
LABEL_5:
  v30 = v10;
  v31 = &off_1F2FA8A78;
  *&v29 = v12;
  v6[2] = a1;
  sub_1B7AE910C(&v29, &v6[5 * v9 + 4]);
  v13 = v6[3];
  if ((v8 + 3) > (v13 >> 1))
  {
    v6 = sub_1B7AE3A9C((v13 > 1), v8 + 3, 1, v6);
  }

  v30 = v10;
  v31 = &off_1F2FA8A78;
  *&v29 = a2;
  v6[2] = v8 + 3;
  sub_1B7AE910C(&v29, &v6[5 * a1 + 4]);
  v14 = sub_1B7AE3B2C(0xD00000000000047DLL, 0x80000001B7D4F710, 0);
  *&v29 = v5;

  sub_1B7C95060(v6, v14, &v29, v14);

  v15 = v29;
  *&v29 = &v28;
  v16 = MEMORY[0x1E69E7CC0];
  sub_1B7C15630(0xD00000000000001DLL, 0x80000001B7D4FB90, MEMORY[0x1E69E7CC0], 0, &v29);
  if (v28 < v12)
  {
    v17 = -1;
  }

  else
  {
    v17 = v12;
  }

  v26 = v17;
  v18 = *(v15 + 16);
  if (v18)
  {
    sub_1B7AECEEC(0, v18, 0);
    v19 = v16;
    v20 = (v15 + 40);
    do
    {
      v21 = *(v20 - 1);
      v22 = *v20;
      v24 = *(v19 + 16);
      v23 = *(v19 + 24);

      if (v24 >= v23 >> 1)
      {
        sub_1B7AECEEC((v23 > 1), v24 + 1, 1);
      }

      *(v19 + 16) = v24 + 1;
      v25 = v19 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      v20 += 3;
      --v18;
    }

    while (v18);
  }

  else
  {

    v19 = MEMORY[0x1E69E7CC0];
  }

  a3(v19, v26, 0);
}

void sub_1B7C13824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B7CFECC0();
  if (a3)
  {
    v8 = sub_1B7CFDEB0();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, a2);
}

uint64_t sub_1B7C138B8(uint64_t a1, void (*a2)(void))
{
  sub_1B7AE3F68();
  *(&v28 + 1) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  MEMORY[0x1B8CADCA0](0xD000000000000267, 0x80000001B7D4F320);
  v5 = sub_1B7AF5664(a1);
  sub_1B7AF57A0(v5);

  MEMORY[0x1B8CADCA0](0xD000000000000118, 0x80000001B7D4F590);

  v6 = sub_1B7AE3B2C(0, 0xE000000000000000, 0);
  *&v28 = v4;

  sub_1B7C950B8(v29, v6, &v28, v6);

  swift_bridgeObjectRelease_n();
  v7 = *(v28 + 16);
  if (v7)
  {
    v25 = a2;
    v8 = (v28 + 64);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v8 - 4);
      v9 = *(v8 - 3);
      v11 = *(v8 - 2);
      v27 = *(v8 - 1);
      v12 = *v8;

      v13 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = v13[2];
      v14 = v13[3];
      v16 = v15 + 1;
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1B7AE3A9C((v14 > 1), v15 + 1, 1, v13);
      }

      v31 = &off_1F2FA8A78;
      v30 = MEMORY[0x1E69E7360];
      *&v28 = v10;
      v13[2] = v16;
      sub_1B7AE910C(&v28, &v13[5 * v15 + 4]);
      v17 = v13[3];
      v18 = v15 + 2;
      if ((v15 + 2) > (v17 >> 1))
      {
        v13 = sub_1B7AE3A9C((v17 > 1), v15 + 2, 1, v13);
      }

      v31 = &off_1F2FA8A78;
      v30 = MEMORY[0x1E69E7360];
      *&v28 = v9;
      v13[2] = v18;
      sub_1B7AE910C(&v28, &v13[5 * v16 + 4]);
      v19 = v13[3];
      if ((v15 + 3) > (v19 >> 1))
      {
        v13 = sub_1B7AE3A9C((v19 > 1), v15 + 3, 1, v13);
      }

      v31 = &off_1F2FA8A78;
      v30 = MEMORY[0x1E69E7360];
      *&v28 = v11;
      v13[2] = v15 + 3;
      sub_1B7AE910C(&v28, &v13[5 * v18 + 4]);
      sub_1B7AE3B2C(0xD000000000000059, 0x80000001B7D4F6B0, 0);
      sub_1B7AF3FE4(v13);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v26;
      }

      else
      {
        v20 = sub_1B7AF182C(0, *(v26 + 2) + 1, 1, v26);
      }

      v22 = *(v20 + 2);
      v21 = *(v20 + 3);
      if (v22 >= v21 >> 1)
      {
        v20 = sub_1B7AF182C((v21 > 1), v22 + 1, 1, v20);
      }

      *(v20 + 2) = v22 + 1;
      v26 = v20;
      v23 = &v20[16 * v22];
      *(v23 + 4) = v27;
      *(v23 + 5) = v12;
      v8 += 5;
      --v7;
    }

    while (v7);

    a2 = v25;
    v4 = v26;
  }

  else
  {
  }

  a2(v4);
}

uint64_t sub_1B7C13F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_1B7AE3F68();

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6158];
  v18 = MEMORY[0x1E69E6158];
  v19 = &off_1F2FA8B58;
  *&v17 = a1;
  *(&v17 + 1) = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v17, &v9[5 * v11 + 4]);
  v14 = v9[3];

  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v18 = v13;
  v19 = &off_1F2FA8B58;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v17, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD00000000000002FLL, 0x80000001B7D4F2F0, 0);
  sub_1B7AF3FE4(v9);

  a5(0);
}

void sub_1B7C14214(sqlite3_int64 a1)
{
  v3 = sub_1B7C107FC(&unk_1EBA51980, &unk_1B7D0A1B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v82 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v7 = *(a1 + 40);
  if (v7 < 0xFFFFFFFF80000000)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  if (!sqlite3_column_text(*(a1 + 32), v7))
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v8 = sub_1B7CFEB80();
  if (v6 == 1)
  {
    goto LABEL_87;
  }

  v10 = *(a1 + 56);
  if (v10 < 0xFFFFFFFF80000000)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v10 > 0x7FFFFFFF)
  {
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v11 = v9;
  v93 = v8;
  v12 = *(a1 + 48);
  if (sqlite3_column_type(v12, v10) == 5)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    if (!sqlite3_column_text(v12, v10))
    {
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v13 = sub_1B7CFEB80();
  }

  if (v6 < 3)
  {
    goto LABEL_90;
  }

  v92 = v14;
  v15 = *(a1 + 72);
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v82[4] = v13;
  v16 = *(a1 + 64);
  if (sqlite3_column_type(v16, v15) == 5)
  {
    v17 = 0;
    v18 = 0;
  }

  else
  {
    if (!sqlite3_column_text(v16, v15))
    {
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v17 = sub_1B7CFEB80();
  }

  if (v6 == 3)
  {
    goto LABEL_93;
  }

  v82[3] = v17;
  v91 = v18;
  v19 = *(a1 + 88);
  if (v19 < 0xFFFFFFFF80000000)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v20 = *(a1 + 80);
  if (sqlite3_column_type(v20, *(a1 + 88)) == 5)
  {
    v21 = 0;
    v90 = 0;
  }

  else
  {
    if (!sqlite3_column_text(v20, v19))
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    v21 = sub_1B7CFEB80();
    v90 = v22;
  }

  if (v6 < 5)
  {
    goto LABEL_96;
  }

  v23 = *(a1 + 104);
  if (v23 < 0xFFFFFFFF80000000)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (v23 > 0x7FFFFFFF)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v82[2] = v21;
  v24 = *(a1 + 96);
  if (sqlite3_column_type(v24, v23) == 5)
  {
    v25 = 0;
    v89 = 0;
  }

  else
  {
    if (!sqlite3_column_text(v24, v23))
    {
LABEL_128:
      __break(1u);
      return;
    }

    v25 = sub_1B7CFEB80();
    v89 = v26;
  }

  if (v6 == 5)
  {
    goto LABEL_99;
  }

  v27 = *(a1 + 120);
  if (v27 < 0xFFFFFFFF80000000)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v27 > 0x7FFFFFFF)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v82[1] = v25;
  v28 = sqlite3_column_int64(*(a1 + 112), v27);
  if (v6 < 7)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v29 = *(a1 + 136);
  if (v29 < 0xFFFFFFFF80000000)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  if (v29 > 0x7FFFFFFF)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v30 = v28;
  v31 = sqlite3_column_int64(*(a1 + 128), v29);
  if (v6 == 7)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v32 = *(a1 + 152);
  if (v32 < 0xFFFFFFFF80000000)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  if (v32 > 0x7FFFFFFF)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v33 = v31;
  v34 = sqlite3_column_int64(*(a1 + 144), v32);
  if (v6 < 9)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v35 = *(a1 + 168);
  if (v35 < 0xFFFFFFFF80000000)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  if (v35 > 0x7FFFFFFF)
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v86 = v34;
  v87 = v33;
  v88 = v30;
  v95 = v6;
  if (!sqlite3_column_text(*(a1 + 160), v35))
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v36 = sub_1B7CFEB80();
  v94[0] = 44;
  v94[1] = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v36);
  v80[2] = v94;
  v39 = sub_1B7CA57D8(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B7C14D3C, v80, v37, v38, v82);
  v85 = v1;
  v40 = *(v39 + 16);
  if (v40)
  {
    v82[0] = v11;
    v83 = a1;
    v84 = v5;
    v94[0] = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v40, 0);
    v41 = 0;
    v42 = v94[0];
    v43 = (v39 + 56);
    while (v41 < *(v39 + 16))
    {
      v44 = *(v43 - 3);
      v45 = *(v43 - 2);
      v46 = *(v43 - 1);
      v47 = *v43;

      v48 = MEMORY[0x1B8CADC20](v44, v45, v46, v47);
      v50 = v49;

      v94[0] = v42;
      v52 = *(v42 + 16);
      v51 = *(v42 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1B7AECEEC((v51 > 1), v52 + 1, 1);
        v42 = v94[0];
      }

      ++v41;
      *(v42 + 16) = v52 + 1;
      v53 = v42 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v43 += 4;
      if (v40 == v41)
      {

        a1 = v83;
        v5 = v84;
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_84;
  }

LABEL_54:
  if (v95 == 9)
  {
    goto LABEL_111;
  }

  v54 = *(a1 + 184);
  if (v54 < 0xFFFFFFFF80000000)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v54 > 0x7FFFFFFF)
  {
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v55 = *(a1 + 176);
  if (sqlite3_column_type(v55, *(a1 + 184)) == 5)
  {
    v56 = 1;
  }

  else
  {
    sqlite3_column_double(v55, v54);
    sub_1B7CFE0D0();
    v56 = 0;
  }

  v57 = sub_1B7CFE120();
  v58 = *(v57 - 8);
  (*(v58 + 56))(v5, v56, 1, v57);
  if (v95 < 0xB)
  {
    goto LABEL_114;
  }

  v59 = *(a1 + 200);
  if (v59 < 0xFFFFFFFF80000000)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v59 > 0x7FFFFFFF)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v60 = sqlite3_column_int64(*(a1 + 192), v59);
  if (v95 == 11)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v61 = *(a1 + 216);
  if (v61 < 0xFFFFFFFF80000000)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  if (v61 > 0x7FFFFFFF)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v62 = v60;
  v63 = sqlite3_column_int64(*(a1 + 208), v61);
  if (v95 < 0xD)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v64 = *(a1 + 232);
  if (v64 < 0xFFFFFFFF80000000)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v64 > 0x7FFFFFFF)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v84 = v63;
  v95 = v62;
  v65 = v5;
  v83 = sqlite3_column_int64(*(a1 + 224), v64);
  v93 = sub_1B7CFEA30();

  if (v92)
  {
    v66 = sub_1B7CFEA30();
  }

  else
  {
    v66 = 0;
  }

  v68 = v89;
  v67 = v90;
  if (v91)
  {
    v69 = sub_1B7CFEA30();

    if (v67)
    {
      goto LABEL_74;
    }

LABEL_77:
    v70 = 0;
    if (v68)
    {
      goto LABEL_75;
    }

LABEL_78:
    v71 = 0;
    goto LABEL_79;
  }

  v69 = 0;
  if (!v90)
  {
    goto LABEL_77;
  }

LABEL_74:
  v70 = sub_1B7CFEA30();

  if (!v68)
  {
    goto LABEL_78;
  }

LABEL_75:
  v71 = sub_1B7CFEA30();

LABEL_79:
  v72 = sub_1B7CFECC0();

  if ((*(v58 + 48))(v65, 1, v57) == 1)
  {
    v73 = 0;
  }

  else
  {
    v73 = sub_1B7CFE0A0();
    (*(v58 + 8))(v65, v57);
  }

  v74 = v87 != 0;
  v75 = v86 != 0;
  v76 = v83 != 0;
  v77 = objc_allocWithZone(MEMORY[0x1E69A8340]);
  LOBYTE(v81) = v76;
  BYTE1(v79) = v75;
  LOBYTE(v79) = v74;
  v78 = v93;
  [v77 initWithGUID:v93 groupID:v66 originalGroupID:v69 lastAddressedHandleID:v70 lastAddressedSIMID:v71 isFiltered:v88 isBlackholed:v79 isArchived:v72 participants:v73 timeSensitiveRefreshDate:v95 timeSensitiveMessageCount:v84 unreadCount:v81 isPendingReview:?];
}

uint64_t sub_1B7C14A9C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(void, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = swift_allocObject();
    v13[2] = a3;
    v13[3] = a4;
    v13[4] = a1;
    v13[5] = a2;
    v13[6] = sub_1B7AF5954;
    v13[7] = v10;
    v18[4] = sub_1B7C14C4C;
    v18[5] = v13;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1B7AE14D0;
    v18[3] = &unk_1F2F9F7D0;
    v14 = _Block_copy(v18);
    _Block_copy(a5);

    IMDPersistencePerformBlock(v14, 1, v15, v16);
    _Block_release(v14);
  }

  else
  {
LABEL_8:
    _Block_copy(a5);
    a5[2](a5, 0);
  }
}

unint64_t sub_1B7C14C5C()
{
  result = qword_1EBA50F50;
  if (!qword_1EBA50F50)
  {
    type metadata accessor for SQLConnectionError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50F50);
  }

  return result;
}

void sub_1B7C14CB4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1B7CFECC0();
  (*(v2 + 16))(v2, v3);
}

uint64_t sub_1B7C14D6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7C14DF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B7AED284(a1, v20);
  sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
  if (swift_dynamicCast())
  {
    sub_1B7AE910C(&v19, a2);
  }

  else
  {
    sub_1B7AEE088(0, &unk_1EDBE59A0, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      v3 = v19;
      v4 = sub_1B7CFEA60();
      v6 = v5;
      a2[3] = MEMORY[0x1E69E6158];
      a2[4] = &off_1F2FA8B58;

      *a2 = v4;
      a2[1] = v6;
    }

    else
    {
      sub_1B7AEE088(0, &unk_1EDBE59B0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v7 = v19;
        sub_1B7AEE088(0, &qword_1EBA51FB8, 0x1E696AB90);
        if (([v19 isKindOfClass_] & 1) != 0 || (v8 = objc_msgSend(v19, sel_integerValue), v9 = objc_msgSend(objc_allocWithZone(MEMORY[0x1E696AD98]), sel_initWithInteger_, v8), v10 = sub_1B7CFEFD0(), v9, (v10 & 1) == 0))
        {
          [v19 doubleValue];
          v17 = v16;
          a2[3] = MEMORY[0x1E69E63B0];
          a2[4] = &off_1F2FA8B38;

          *a2 = v17;
        }

        else
        {
          if (([v19 longLongValue] & 0x8000000000000000) != 0 || (v11 = objc_msgSend(v19, sel_unsignedLongLongValue), v12 = objc_msgSend(v19, sel_longLongValue), (v12 & 0x8000000000000000) == 0) && v11 == v12)
          {
            v13 = [v19 longLongValue];
            v14 = MEMORY[0x1E69E7360];
            v15 = &off_1F2FA8A78;
          }

          else
          {
            v13 = [v19 unsignedLongLongValue];
            v14 = MEMORY[0x1E69E76D8];
            v15 = &off_1F2FA8B18;
          }

          a2[3] = v14;
          a2[4] = v15;

          *a2 = v13;
        }
      }

      else
      {
        a2[3] = sub_1B7C107FC(&qword_1EBA51FB0, &unk_1B7D0FA00);
        a2[4] = sub_1B7C1547C();
        *a2 = 0;
        a2[1] = 0;
      }
    }
  }

  return sub_1B7AE9168(v20);
}

void sub_1B7C15098(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    v15 = *(v1 + 16);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_10:
      v29 = v15[2];
      v28 = v15[3];
      if (v29 >= v28 >> 1)
      {
        v15 = sub_1B7AE3A9C((v28 > 1), v29 + 1, 1, v15);
      }

      v40 = MEMORY[0x1E69E6158];
      v41 = &off_1F2FA8B58;
      *&v39 = 12576;
      *(&v39 + 1) = 0xE200000000000000;
      v15[2] = v29 + 1;
      sub_1B7AE910C(&v39, &v15[5 * v29 + 4]);
      v2[2] = v15;
      MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);
      return;
    }

LABEL_16:
    v15 = sub_1B7AE3A9C(0, v15[2] + 1, 1, v15);
    goto LABEL_10;
  }

  *&v39 = 32;
  *(&v39 + 1) = 0xE100000000000000;
  v3 = a1;
  v4 = [v3 expression];
  v5 = sub_1B7CFEA60();
  v7 = v6;

  MEMORY[0x1B8CADCA0](v5, v7);

  v9 = 32;
  v8 = 0xE100000000000000;
  v10 = [v3 parameters];
  v11 = sub_1B7CFECE0();

  v12 = v2[1];
  v13 = *(v11 + 16);
  if (v13)
  {
    v30[1] = v2 + 2;
    v31 = 32;
    v32 = 0xE100000000000000;
    v33 = v3;
    v14 = *v2;
    v34 = v2;
    v35 = v14;
    v38 = MEMORY[0x1E69E7CC0];
    v36 = v12;

    v15 = &v38;
    sub_1B7AF5760(0, v13, 0);
    v16 = 0;
    v17 = v38;
    v18 = v11 + 32;
    v19 = v11;
    while (v16 < *(v19 + 16))
    {
      sub_1B7AED284(v18, v37);
      sub_1B7C14DF0(v37, &v39);
      sub_1B7AE9168(v37);
      v38 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1B7AF5760((v20 > 1), v21 + 1, 1);
      }

      ++v16;
      v15 = v40;
      v22 = v41;
      v23 = sub_1B7C1542C(&v39, v40);
      v2 = v30;
      v24 = MEMORY[0x1EEE9AC00](v23);
      v26 = v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_1B7CB5BB0(v21, v26, &v38, v15, v22);
      sub_1B7AE9168(&v39);
      v17 = v38;
      v18 += 32;
      if (v13 == v16)
      {

        v3 = v33;
        v9 = v31;
        v8 = v32;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_14:
  MEMORY[0x1B8CADCA0](v9, v8);

  sub_1B7AF3098(v17);
}

uint64_t sub_1B7C1542C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_1B7C1547C()
{
  result = qword_1EBA50E68;
  if (!qword_1EBA50E68)
  {
    sub_1B7C1091C(&qword_1EBA51FB0, &unk_1B7D0FA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA50E68);
  }

  return result;
}

uint64_t sub_1B7C154F8(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  v9 = sub_1B7AE3B2C(a1, a2, a4);
  if (v4)
  {
  }

  v11 = v9;
  v12 = MEMORY[0x1E69E7CC0];

  sub_1B7AF1A7C(a3, v11, &v12, v11);

  return v12;
}

uint64_t sub_1B7C1565C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void (*a5)(uint64_t, const char *, uint64_t *, const char *)@<X4>, void **a6@<X8>)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  v13 = sub_1B7AE3B2C(a1, a2, a4);
  if (v6)
  {
  }

  v15 = v13;
  v17 = MEMORY[0x1E69E7CC0];

  a5(a3, v15, &v17, v15);

  if (*(v17 + 16) == 1)
  {
    v16 = *(v17 + 32);

    **a6 = v16;
  }

  else
  {
    type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    swift_allocError();

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1B7C15818@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void **a5@<X8>)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  v11 = sub_1B7AE3B2C(a1, a2, a4);
  if (v5)
  {
  }

  v13 = v11;
  v17 = MEMORY[0x1E69E7CC0];

  sub_1B7AF1A7C(a3, v13, &v17, v13);

  if (v17[2] == 1)
  {
    v15 = v17[4];
    v14 = v17[5];

    v16 = *a5;
    *v16 = v15;
    v16[1] = v14;
  }

  else
  {
    type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    swift_allocError();

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1B7C159CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t **a5@<X8>)
{
  if ((a4 & 4) != 0)
  {
    sub_1B7CA4FAC(a1, a2, a3);
  }

  v11 = sub_1B7AE3B2C(a1, a2, a4);
  if (v5)
  {
  }

  v13 = v11;
  v17 = MEMORY[0x1E69E7CC0];

  sub_1B7C9508C(a3, v13, &v17, v13);

  if (v17[2] == 1)
  {
    v14 = v17[4];
    v15 = v17[5];
    sub_1B7C1A208(v14, v15);

    v16 = *a5;
    *v16 = v14;
    v16[1] = v15;
  }

  else
  {
    type metadata accessor for SQLConnectionError(0);
    sub_1B7C14C5C();
    swift_allocError();

    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

BOOL sub_1B7C15B84(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v15;

  v5 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = v5[2];
  v6 = v5[3];
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1B7AE3A9C((v6 > 1), v7 + 1, 1, v5);
  }

  v12 = MEMORY[0x1E69E6158];
  v13 = &off_1F2FA8B58;
  *&v11 = 0x7372655674616863;
  *(&v11 + 1) = 0xEB000000006E6F69;
  v5[2] = v7 + 1;
  sub_1B7AE910C(&v11, &v5[5 * v7 + 4]);
  sub_1B7C1565C(0xD000000000000029, 0x80000001B7D51060, v5, 0, sub_1B7AF2C24, &v14);
  if (!v1)
  {

    return v15 > 0;
  }

  *&v11 = v1;
  v8 = v1;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return v9;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1B7C19DBC(v4);
    goto LABEL_9;
  }

  return 0;
}

void sub_1B7C15DB4()
{
  v2 = type metadata accessor for SQLConnectionError(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v21 = &v22;

  v6 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1B7AE3A9C((v7 > 1), v8 + 1, 1, v6);
  }

  v19 = MEMORY[0x1E69E6158];
  v20 = &off_1F2FA8B58;
  *&v18 = 0x7372655674616863;
  *(&v18 + 1) = 0xEB000000006E6F69;
  v6[2] = v8 + 1;
  sub_1B7AE910C(&v18, &v6[5 * v8 + 4]);
  sub_1B7C1565C(0xD000000000000029, 0x80000001B7D51060, v6, 0, sub_1B7AF2C24, &v21);
  if (v1)
  {

    *&v18 = v1;
    v9 = v1;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {

LABEL_13:
        if (qword_1EBA50EB8 != -1)
        {
          swift_once();
        }

        v14 = sub_1B7CFE420();
        sub_1B7AD9040(v14, qword_1EBA5DA20);
        v15 = sub_1B7CFE400();
        v16 = sub_1B7CFEED0();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_1B7AD5000, v15, v16, "Chat table doesn't need split migration", v17, 2u);
          MEMORY[0x1B8CB0E70](v17, -1, -1);
        }

        return;
      }

      sub_1B7C19DBC(v4);
    }

    return;
  }

  if (v22 <= 0)
  {
    goto LABEL_13;
  }

  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B7CFE420();
  sub_1B7AD9040(v10, qword_1EBA5DA20);
  v11 = sub_1B7CFE400();
  v12 = sub_1B7CFEF00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B7AD5000, v11, v12, "Migrating chat table to legacy split chats", v13, 2u);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
  }

  sub_1B7C16194(v5);

  sub_1B7CD2F6C(0, 0x7372655674616863, 0xEB000000006E6F69);
}

double sub_1B7C16194(uint64_t a1)
{
  v197 = *MEMORY[0x1E69E9840];
  v186 = type metadata accessor for SQLConnectionError(0);
  MEMORY[0x1EEE9AC00](v186);
  v183 = &v155 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v155 - v4;
  v6 = sub_1B7AE8874(1952540771, 0xE400000000000000);
  v8 = v7;
  *&v193[0] = MEMORY[0x1E69E7CC0];
  *&v194 = 0xD000000000000012;
  *(&v194 + 1) = 0x80000001B7D50BA0;
  MEMORY[0x1B8CADCA0](v6);
  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v9 = v194;

  v10 = v189;
  v11 = sub_1B7AE3B2C(v9, *(&v9 + 1), 1);
  if (v10)
  {

    swift_bridgeObjectRelease_n();

    return result;
  }

  v189 = v8;
  v169 = 0xD000000000000012;
  v178 = a1;
  sub_1B7C945B4(MEMORY[0x1E69E7CC0], v11, v193);
  v188 = 0;
  v155 = v5;

  swift_bridgeObjectRelease_n();
  v13 = *&v193[0];
  v14 = *(*&v193[0] + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = 0;
    v17 = *&v193[0] + 40;
    v187 = v14 - 1;
    v167 = MEMORY[0x1E69E7CC0];
    v189 = *&v193[0] + 40;
    do
    {
      v18 = (v17 + 16 * v16);
      v19 = v16;
      while (1)
      {
        if (v19 >= *(v13 + 16))
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
        }

        v20 = *(v18 - 1);
        v21 = *v18;
        v22 = v20 == 0x4449574F52 && v21 == 0xE500000000000000;
        if (!v22 && (sub_1B7CFF590() & 1) == 0)
        {
          break;
        }

        ++v19;
        v18 += 2;
        if (v14 == v19)
        {
          v15 = MEMORY[0x1E69E7CC0];
          goto LABEL_22;
        }
      }

      v23 = v167;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v194 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B7AE70B4(0, *(v23 + 16) + 1, 1);
        v23 = v194;
      }

      v17 = v189;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        v184 = *(v23 + 16);
        v185 = v26 + 1;
        sub_1B7AE70B4((v25 > 1), v26 + 1, 1);
        v26 = v184;
        v27 = v185;
        v17 = v189;
        v23 = v194;
      }

      v16 = v19 + 1;
      *(v23 + 16) = v27;
      v167 = v23;
      v28 = v23 + 16 * v26;
      *(v28 + 32) = v20;
      *(v28 + 40) = v21;
      v22 = v187 == v19;
      v15 = MEMORY[0x1E69E7CC0];
    }

    while (!v22);
  }

  else
  {
    v167 = MEMORY[0x1E69E7CC0];
  }

LABEL_22:

  v156 = 0x80000001B7D50BC0;
  v29 = 0x80000001B7D50C10;
  v161 = "M chat WHERE guid ==  ? ";
  v160 = "cloudkit_record_id";
  *&v30 = 136315138;
  v176 = v30;
  v159 = xmmword_1B7D0A6F0;
  v162 = 0x80000001B7D50C10;
LABEL_23:
  *&v194 = sub_1B7CFEA60();
  *(&v194 + 1) = v31;

  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);

  v32 = v194;

  v33 = sub_1B7AE3A9C(0, 1, 1, v15);
  v35 = v33[2];
  v34 = v33[3];
  if (v35 >= v34 >> 1)
  {
    v33 = sub_1B7AE3A9C((v34 > 1), v35 + 1, 1, v33);
  }

  v195 = MEMORY[0x1E69E6158];
  v196 = &off_1F2FA8B58;
  v194 = v32;
  v33[2] = v35 + 1;
  sub_1B7AE910C(&v194, &v33[5 * v35 + 4]);
  v36 = v178;
  v37 = v188;
  v38 = sub_1B7AE3B2C(0xD00000000000004ALL, v156, 0);
  if (v37)
  {

    goto LABEL_101;
  }

  v39 = v38;
  *&v194 = v15;

  sub_1B7AF1A7C(v33, v39, &v194, v39);
  v188 = 0;

  v40 = v194;
  v158 = *(v194 + 16);
  if (!v158)
  {

    return result;
  }

  v41 = 0;
  v164 = v194 + 32;
  v163 = v194;
  while (1)
  {
    if (v41 >= *(v40 + 16))
    {
      goto LABEL_106;
    }

    v172 = v41;
    v42 = (v164 + 16 * v41);
    v43 = *v42;
    v44 = qword_1EBA50EB8;
    v189 = v42[1];

    if (v44 != -1)
    {
      swift_once();
    }

    v45 = sub_1B7CFE420();
    v46 = sub_1B7AD9040(v45, qword_1EBA5DA20);

    v187 = v46;
    v47 = sub_1B7CFE400();
    v48 = sub_1B7CFEEE0();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *&v194 = v50;
      *v49 = v176;
      *(v49 + 4) = sub_1B7AED1B8(v43, v189, &v194);
      _os_log_impl(&dword_1B7AD5000, v47, v48, "Preparing to split %s", v49, 0xCu);
      sub_1B7AE9168(v50);
      MEMORY[0x1B8CB0E70](v50, -1, -1);
      MEMORY[0x1B8CB0E70](v49, -1, -1);
    }

    v51 = sub_1B7AE3A9C(0, 1, 1, v15);
    v53 = v51[2];
    v52 = v51[3];
    if (v53 >= v52 >> 1)
    {
      v51 = sub_1B7AE3A9C((v52 > 1), v53 + 1, 1, v51);
    }

    v195 = MEMORY[0x1E69E6158];
    v196 = &off_1F2FA8B58;
    *&v194 = v43;
    *(&v194 + 1) = v189;
    v51[2] = v53 + 1;
    sub_1B7AE910C(&v194, &v51[5 * v53 + 4]);
    v54 = v188;
    v55 = sub_1B7AE3B2C(0xD000000000000028, v29, 0);
    if (v54)
    {
      v143 = v54;

      goto LABEL_89;
    }

    v56 = v55;
    *&v194 = v15;

    sub_1B7AF2C24(v51, v56, &v194, v56);
    v188 = 0;
    if (*(v194 + 16) != 1)
    {
      sub_1B7C14C5C();
      v144 = swift_allocError();

      swift_storeEnumTagMultiPayload();
      v143 = v144;
      swift_willThrow();

LABEL_89:
      *&v194 = v143;
      v145 = v143;
      sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
      v146 = v155;
      if (swift_dynamicCast())
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {

          v147 = sub_1B7CFE400();
          v148 = sub_1B7CFEEF0();

          if (os_log_type_enabled(v147, v148))
          {
            v149 = swift_slowAlloc();
            v150 = swift_slowAlloc();
            v151 = v43;
            v152 = v189;
            v153 = v150;
            *&v194 = v150;
            *v149 = v176;
            v154 = sub_1B7AED1B8(v151, v152, &v194);

            *(v149 + 4) = v154;
            _os_log_impl(&dword_1B7AD5000, v147, v148, "No rowID for guid %s", v149, 0xCu);
            sub_1B7AE9168(v153);
            MEMORY[0x1B8CB0E70](v153, -1, -1);
            MEMORY[0x1B8CB0E70](v149, -1, -1);
          }

          else
          {
          }

          return result;
        }

        sub_1B7C19DBC(v146);
      }

      goto LABEL_101;
    }

    v165 = *(v194 + 32);

    v192 = 45;
    v179 = v43;
    v57 = sub_1B7CFEA30();
    *&v194 = 0;
    IMComponentsFromChatGUID();

    v58 = v194;
    if (v194)
    {
      v194 = 0uLL;
      v59 = v58;
      sub_1B7CFEA50();
      v157 = v59;

      v177 = *(&v194 + 1);
      if (*(&v194 + 1))
      {
        break;
      }
    }

    v64 = sub_1B7CFE400();
    v65 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = v189;
      v69 = v67;
      *&v194 = v67;
      *v66 = v176;
      v70 = sub_1B7AED1B8(v179, v68, &v194);

      *(v66 + 4) = v70;
      v36 = v178;
      _os_log_impl(&dword_1B7AD5000, v64, v65, "No chat identifier or style for %s", v66, 0xCu);
      sub_1B7AE9168(v69);
      v71 = v69;
      v29 = v162;
      MEMORY[0x1B8CB0E70](v71, -1, -1);
      MEMORY[0x1B8CB0E70](v66, -1, -1);
    }

    else
    {
    }

LABEL_85:
    v41 = v172 + 1;
    v40 = v163;
    if (v172 + 1 == v158)
    {

      goto LABEL_23;
    }
  }

  v173 = v194;
  v60 = IMChatServiceNames();
  v61 = sub_1B7CFECE0();

  v170 = *(v61 + 16);
  if (!v170)
  {
LABEL_83:

    v142 = v188;
    sub_1B7C190F0(v165);
    v188 = v142;
    if (v142)
    {

      return result;
    }

    goto LABEL_85;
  }

  v62 = 0;
  v63 = (v61 + 40);
  v171 = v61;
  while (1)
  {
    if (v62 >= *(v61 + 16))
    {
      goto LABEL_105;
    }

    v74 = v29;
    v76 = *(v63 - 1);
    v75 = *v63;
    v180 = v63;
    swift_bridgeObjectRetain_n();
    v77 = sub_1B7CFE400();
    v78 = sub_1B7CFEEE0();

    v79 = os_log_type_enabled(v77, v78);
    v181 = v62;
    if (v79)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v194 = v81;
      *v80 = v176;
      *(v80 + 4) = sub_1B7AED1B8(v76, v75, &v194);
      _os_log_impl(&dword_1B7AD5000, v77, v78, " ==> adopting service %s", v80, 0xCu);
      sub_1B7AE9168(v81);
      MEMORY[0x1B8CB0E70](v81, -1, -1);
      MEMORY[0x1B8CB0E70](v80, -1, -1);
    }

    v82 = sub_1B7CFEA30();
    v182 = v76;
    v83 = sub_1B7CFEA30();
    v84 = IMCopyGUIDForChat();

    if (!v84)
    {

      v93 = sub_1B7CFE400();
      v94 = sub_1B7CFEEF0();

      v29 = v74;
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v194 = v96;
        *v95 = v176;
        v97 = sub_1B7AED1B8(v182, v75, &v194);

        *(v95 + 4) = v97;
        v36 = v178;
        _os_log_impl(&dword_1B7AD5000, v93, v94, "Failed to create service guid for %s", v95, 0xCu);
        sub_1B7AE9168(v96);
        MEMORY[0x1B8CB0E70](v96, -1, -1);
        MEMORY[0x1B8CB0E70](v95, -1, -1);
      }

      else
      {
      }

      v61 = v171;
      v72 = v180;
      v73 = v181;
      v15 = MEMORY[0x1E69E7CC0];
      goto LABEL_47;
    }

    v185 = sub_1B7CFEA60();
    v86 = v85;

    v184 = v86;

    v87 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v89 = v87[2];
    v88 = v87[3];
    v29 = v74;
    if (v89 >= v88 >> 1)
    {
      v87 = sub_1B7AE3A9C((v88 > 1), v89 + 1, 1, v87);
    }

    v195 = MEMORY[0x1E69E6158];
    v196 = &off_1F2FA8B58;
    *&v194 = v185;
    *(&v194 + 1) = v184;
    v87[2] = v89 + 1;
    sub_1B7AE910C(&v194, &v87[5 * v89 + 4]);
    v90 = v188;
    v91 = sub_1B7AE3B2C(0xD000000000000028, v74, 0);
    v15 = MEMORY[0x1E69E7CC0];
    if (v90)
    {
      v92 = v90;

      goto LABEL_63;
    }

    v98 = v91;
    *&v194 = MEMORY[0x1E69E7CC0];

    sub_1B7AF2C24(v87, v98, &v194, v98);
    v188 = 0;
    if (*(v194 + 16) != 1)
    {
      break;
    }

    v99 = v184;

    v100 = sub_1B7CFE400();
    v101 = sub_1B7CFEEF0();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v194 = v103;
      *v102 = v176;
      v104 = sub_1B7AED1B8(v185, v99, &v194);

      *(v102 + 4) = v104;
      v36 = v178;
      _os_log_impl(&dword_1B7AD5000, v100, v101, "Unexpectedly has existing service chat for %s", v102, 0xCu);
      sub_1B7AE9168(v103);
      MEMORY[0x1B8CB0E70](v103, -1, -1);
      MEMORY[0x1B8CB0E70](v102, -1, -1);
    }

    else
    {
    }

LABEL_81:
    v61 = v171;
    v72 = v180;
    v73 = v181;
LABEL_47:
    v62 = v73 + 1;
    v63 = v72 + 2;
    if (v170 == v62)
    {
      goto LABEL_83;
    }
  }

  sub_1B7C14C5C();
  v105 = swift_allocError();
  v188 = v106;

  v36 = v178;
  swift_storeEnumTagMultiPayload();
  v92 = v105;
  swift_willThrow();

LABEL_63:
  *&v194 = v92;
  v107 = v92;
  sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
  v108 = v183;
  if (!swift_dynamicCast())
  {
    goto LABEL_94;
  }

  if (swift_getEnumCaseMultiPayload() == 5)
  {

    v109 = v179;
    v110 = v182;
    sub_1B7C17E0C(v179, v189, v182, v75, v36);
    v112 = v111;
    v114 = v113;
    v188 = sub_1B7C1811C(v109, v189, v110, v75, v36);
    v174 = v116;
    v175 = v115;
    v168 = v117;
    v166 = 0;
    sub_1B7C107FC(&qword_1EBA51FC8, &qword_1B7D0A708);
    inited = swift_initStackObject();
    *(inited + 32) = 1684632935;
    *(inited + 16) = v159;
    v119 = MEMORY[0x1E69E6158];
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 80) = &off_1F2FA8B58;
    v121 = v184;
    v120 = v185;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v120;
    *(inited + 56) = v121;
    strcpy((inited + 88), "service_name");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    *(inited + 104) = v110;
    *(inited + 128) = v119;
    *(inited + 136) = &off_1F2FA8B58;
    *(inited + 112) = v75;

    v122 = sub_1B7C239C8(inited);
    swift_setDeallocating();
    sub_1B7C107FC(&qword_1EBA521B0, &unk_1B7D0A710);
    swift_arrayDestroy();
    v191 = v122;
    if (v114)
    {
      v195 = v119;
      v196 = &off_1F2FA8B58;
      *&v194 = v112;
      *(&v194 + 1) = v114;
      sub_1B7AE910C(&v194, v193);
      v123 = swift_isUniquelyReferenced_nonNull_native();
      v190 = v122;
      sub_1B7CA5D1C(v193, v169, v161 | 0x8000000000000000, v123);
      v191 = v190;
    }

    else
    {
      sub_1B7CE2EA4(v169, v161 | 0x8000000000000000, &v194);
      sub_1B7C1A0C8(&v194);
    }

    v15 = MEMORY[0x1E69E7CC0];
    v124 = v174;
    v36 = v178;
    v125 = v166;
    v126 = v184;
    if (v175)
    {
      v195 = v119;
      v196 = &off_1F2FA8B58;
      *&v194 = v188;
      *(&v194 + 1) = v175;
      sub_1B7AE910C(&v194, v193);

      v127 = v191;
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v190 = v127;
      sub_1B7CA5D1C(v193, 0x64695F70756F7267, 0xE800000000000000, v128);
      v191 = v190;
      if (v124)
      {
        goto LABEL_70;
      }

LABEL_72:
      sub_1B7CE2EA4(0xD000000000000011, v160 | 0x8000000000000000, &v194);
      sub_1B7C1A0C8(&v194);
      v131 = v191;
    }

    else
    {
      sub_1B7CE2EA4(0x64695F70756F7267, 0xE800000000000000, &v194);
      sub_1B7C1A0C8(&v194);
      if (!v124)
      {
        goto LABEL_72;
      }

LABEL_70:
      v195 = v119;
      v196 = &off_1F2FA8B58;
      *&v194 = v168;
      *(&v194 + 1) = v124;
      sub_1B7AE910C(&v194, v193);

      v129 = v191;
      v130 = swift_isUniquelyReferenced_nonNull_native();
      v190 = v129;
      sub_1B7CA5D1C(v193, 0xD000000000000011, v160 | 0x8000000000000000, v130);
      v131 = v190;
      v191 = v190;
    }

    sub_1B7C183B0(v179, v189, v167, v131);
    if (v125)
    {

      goto LABEL_101;
    }

    sub_1B7C17BF8(v185, v126);
    if (v133)
    {
      v188 = 0;

      v134 = sub_1B7CFE400();
      v135 = sub_1B7CFEEF0();

      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        *&v194 = v137;
        *v136 = v176;
        v138 = sub_1B7AED1B8(v185, v126, &v194);

        *(v136 + 4) = v138;
        v36 = v178;
        _os_log_impl(&dword_1B7AD5000, v134, v135, "Failed to get row ID for %s", v136, 0xCu);
        sub_1B7AE9168(v137);
        MEMORY[0x1B8CB0E70](v137, -1, -1);
        MEMORY[0x1B8CB0E70](v136, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v139 = v132;

      v140 = v165;
      sub_1B7C186D4(v165, v139);
      v141 = v182;
      sub_1B7C18994(v140, v139, v182, v75);
      sub_1B7C18D20(v188, v175, v168, v174, v139, v141, v75, v36);
      v188 = 0;
    }

    v29 = v162;
    goto LABEL_81;
  }

  sub_1B7C19DBC(v108);
LABEL_94:

LABEL_101:

  return result;
}

double sub_1B7C17B04()
{
  v1 = v0;
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B7CFE420();
  sub_1B7AD9040(v2, qword_1EBA5DA20);
  v3 = sub_1B7CFE400();
  v4 = sub_1B7CFEF00();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v3, v4, "Migrating chat table to legacy split chats without versioning", v5, 2u);
    MEMORY[0x1B8CB0E70](v5, -1, -1);
  }

  return sub_1B7C16194(*v1);
}

void sub_1B7C17BF8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SQLConnectionError(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = &v15;

  v8 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1B7AE3A9C((v9 > 1), v10 + 1, 1, v8);
  }

  v13 = MEMORY[0x1E69E6158];
  v14 = &off_1F2FA8B58;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v8[2] = v10 + 1;
  sub_1B7AE910C(&v12, &v8[5 * v10 + 4]);
  sub_1B7C1565C(0xD000000000000028, 0x80000001B7D50C10, v8, 0, sub_1B7AF2C24, &v16);
  if (v2)
  {

    *&v12 = v2;
    v11 = v2;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {

        return;
      }

      sub_1B7C19DBC(v7);
    }
  }

  else
  {
  }
}

void sub_1B7C17E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v24 = a3;
  v23 = type metadata accessor for SQLConnectionError(0);
  MEMORY[0x1EEE9AC00](v23);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v10 = sub_1B7CFE420();
  sub_1B7AD9040(v10, qword_1EBA5DA20);
  v11 = sub_1B7CFE400();
  v12 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B7AD5000, v11, v12, " ==> executing: copying ckRecordID", v13, 2u);
    MEMORY[0x1B8CB0E70](v13, -1, -1);
  }

  v31 = &v30;

  v14 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v16 = v14[2];
  v15 = v14[3];
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1B7AE3A9C((v15 > 1), v16 + 1, 1, v14);
  }

  v18 = MEMORY[0x1E69E6158];
  v28 = MEMORY[0x1E69E6158];
  v29 = &off_1F2FA8B58;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  v14[2] = v17;
  sub_1B7AE910C(&v27, &v14[5 * v16 + 4]);
  v19 = v14[3];

  if ((v16 + 2) > (v19 >> 1))
  {
    v14 = sub_1B7AE3A9C((v19 > 1), v16 + 2, 1, v14);
  }

  v28 = v18;
  v29 = &off_1F2FA8B58;
  *&v27 = v24;
  *(&v27 + 1) = a4;
  v14[2] = v16 + 2;
  sub_1B7AE910C(&v27, &v14[5 * v17 + 4]);
  v20 = v26;
  sub_1B7C15818(0xD00000000000008ALL, 0x80000001B7D50FA0, v14, 0, &v31);
  if (v20)
  {

    *&v27 = v20;
    v21 = v20;
    sub_1B7C107FC(&qword_1EBA51FC0, &qword_1B7D0A700);
    if (swift_dynamicCast())
    {
      if (swift_getEnumCaseMultiPayload() == 5)
      {

        return;
      }

      sub_1B7C19DBC(v9);
    }
  }

  else
  {
  }
}

uint64_t sub_1B7C1811C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = sub_1B7C19380(a1, a2, a5);
  if (!v6)
  {
    v10 = v9;
    v11 = sub_1B7CFEA60();
    if (v10[2])
    {
      v13 = sub_1B7AE11D0(v11, v12);
      v15 = v14;

      if (v15)
      {
        v16 = *(v10[7] + 8 * v13);
        if (*(v16 + 16))
        {
          v5 = *(v16 + 32);

          goto LABEL_8;
        }
      }
    }

    else
    {
    }

    v5 = 0;
LABEL_8:
    sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B7D0A6F0;
    *(inited + 32) = sub_1B7CFEA60();
    *(inited + 40) = v18;
    v19 = sub_1B7CFEA60();
    *(inited + 48) = v19;
    *(inited + 56) = v20;
    v32[0] = a3;
    v32[1] = a4;
    MEMORY[0x1EEE9AC00](v19);
    v31[2] = v32;
    v21 = sub_1B7C19B50(sub_1B7C1A26C, v31, inited);
    v33 = 0;
    swift_setDeallocating();
    swift_arrayDestroy();
    if ((v21 & 1) == 0)
    {

      return v5;
    }

    v22 = sub_1B7CFEA30();
    v23 = IMChatLookupDomainForServiceName();

    if (!v23)
    {
      goto LABEL_15;
    }

    v24 = sub_1B7CFEA60();
    if (v10[2])
    {
      v26 = sub_1B7AE11D0(v24, v25);
      v28 = v27;

      if (v28)
      {
        v29 = *(v10[7] + 8 * v26);

        if (*(v29 + 16))
        {

          return v5;
        }

LABEL_15:

        return v5;
      }
    }

    else
    {
    }
  }

  return v5;
}

double sub_1B7C183B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];

  v10 = sub_1B7C19E18(a3, a4, &v26);

  *&v20 = v10;
  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v11 = sub_1B7CFEA10();
  v13 = v12;

  v23 = 0;
  v24 = 0xE000000000000000;
  v25 = v9;
  MEMORY[0x1B8CADCA0](0xD000000000000012, 0x80000001B7D50EB0);
  v14 = sub_1B7CB5600(a3);
  MEMORY[0x1B8CADCA0](0x5443454C45530A29, 0xE900000000000020, v14);
  MEMORY[0x1B8CADCA0](v11, v13);

  sub_1B7AF3098(v15);
  MEMORY[0x1B8CADCA0](0xD00000000000001DLL, 0x80000001B7D50ED0);
  v16 = v9;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1B7AE3A9C(0, v9[2] + 1, 1, v9);
  }

  v18 = v16[2];
  v17 = v16[3];
  if (v18 >= v17 >> 1)
  {
    v16 = sub_1B7AE3A9C((v17 > 1), v18 + 1, 1, v16);
  }

  v21 = MEMORY[0x1E69E6158];
  v22 = &off_1F2FA8B58;
  *&v20 = a1;
  *(&v20 + 1) = a2;
  v16[2] = v18 + 1;
  sub_1B7AE910C(&v20, &v16[5 * v18 + 4]);
  v25 = v16;

  MEMORY[0x1B8CADCA0](2113312, 0xE300000000000000);

  sub_1B7AE3B2C(v23, v24, 0);
  if (v4)
  {
  }

  else
  {
    sub_1B7AF3FE4(v16);
  }

  return result;
}

double sub_1B7C186D4(uint64_t a1, uint64_t a2)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B7CFE420();
  sub_1B7AD9040(v5, qword_1EBA5DA20);
  v6 = sub_1B7CFE400();
  v7 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = a1;
    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_1B7AD5000, v6, v7, " ==> executing: copy handle associates from chat %ld to chat %ld", v8, 0x16u);
    MEMORY[0x1B8CB0E70](v8, -1, -1);
  }

  v9 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v11 = v9[2];
  v10 = v9[3];
  v12 = v11 + 1;
  if (v11 >= v10 >> 1)
  {
    v9 = sub_1B7AE3A9C((v10 > 1), v11 + 1, 1, v9);
  }

  v13 = MEMORY[0x1E69E6530];
  v17 = MEMORY[0x1E69E6530];
  v18 = &off_1F2FA89F8;
  *&v16 = a2;
  v9[2] = v12;
  sub_1B7AE910C(&v16, &v9[5 * v11 + 4]);
  v14 = v9[3];
  if ((v11 + 2) > (v14 >> 1))
  {
    v9 = sub_1B7AE3A9C((v14 > 1), v11 + 2, 1, v9);
  }

  v17 = v13;
  v18 = &off_1F2FA89F8;
  *&v16 = a1;
  v9[2] = v11 + 2;
  sub_1B7AE910C(&v16, &v9[5 * v12 + 4]);
  sub_1B7AE3B2C(0xD00000000000008BLL, 0x80000001B7D50E20, 0);
  if (!v2)
  {
    sub_1B7AF3FE4(v9);
  }

  return result;
}

double sub_1B7C18994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1B7CFE420();
  sub_1B7AD9040(v8, qword_1EBA5DA20);

  v9 = sub_1B7CFE400();
  v10 = sub_1B7CFEEE0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v23 = v12;
    *v11 = 134218498;
    *(v11 + 4) = a1;
    *(v11 + 12) = 2048;
    *(v11 + 14) = a2;
    *(v11 + 22) = 2080;
    *(v11 + 24) = sub_1B7AED1B8(a3, a4, &v23);
    _os_log_impl(&dword_1B7AD5000, v9, v10, " ==> executing: moving messages from chat %ld to chat %ld on service %s", v11, 0x20u);
    sub_1B7AE9168(v12);
    MEMORY[0x1B8CB0E70](v12, -1, -1);
    MEMORY[0x1B8CB0E70](v11, -1, -1);
  }

  v13 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = v13[2];
  v14 = v13[3];
  v16 = v15 + 1;
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1B7AE3A9C((v14 > 1), v15 + 1, 1, v13);
  }

  v17 = MEMORY[0x1E69E6530];
  v24 = MEMORY[0x1E69E6530];
  v25 = &off_1F2FA89F8;
  *&v23 = a2;
  v13[2] = v16;
  sub_1B7AE910C(&v23, &v13[5 * v15 + 4]);
  v18 = v13[3];
  v19 = v15 + 2;
  if ((v15 + 2) > (v18 >> 1))
  {
    v13 = sub_1B7AE3A9C((v18 > 1), v15 + 2, 1, v13);
  }

  v24 = v17;
  v25 = &off_1F2FA89F8;
  *&v23 = a1;
  v13[2] = v19;
  sub_1B7AE910C(&v23, &v13[5 * v16 + 4]);
  v20 = v13[3];

  if ((v15 + 3) > (v20 >> 1))
  {
    v13 = sub_1B7AE3A9C((v20 > 1), v15 + 3, 1, v13);
  }

  v24 = MEMORY[0x1E69E6158];
  v25 = &off_1F2FA8B58;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v13[2] = v15 + 3;
  sub_1B7AE910C(&v23, &v13[5 * v19 + 4]);
  v21 = v26;
  sub_1B7AE3B2C(0xD00000000000009DLL, 0x80000001B7D50D80, 0);
  if (!v21)
  {
    sub_1B7AF3FE4(v13);
  }

  return result;
}

void sub_1B7C18D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v39 = a3;
  v41 = a1;
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v15 = sub_1B7CFE420();
  sub_1B7AD9040(v15, qword_1EBA5DA20);
  v16 = sub_1B7CFE400();
  v17 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v16, v17))
  {
    v38 = a2;
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1B7AD5000, v16, v17, " ==> executing: assigning identifiers to new legacy chats", v18, 2u);
    v9 = v8;
    a2 = v38;
    MEMORY[0x1B8CB0E70](v18, -1, -1);
  }

  if (a2)
  {
    v19 = sub_1B7CFEA60();
    sub_1B7C1988C(v41, a2, v19, v20, a5, 1);
    if (v9)
    {
LABEL_19:

      return;
    }

    if (sub_1B7CFEA60() == a6 && v21 == a7)
    {
      goto LABEL_15;
    }

    v23 = sub_1B7CFF590();

    if ((v23 & 1) == 0)
    {
      v24 = sub_1B7CFEA30();
      v25 = IMChatLookupDomainForServiceName();

      if (v25)
      {
        v38 = v25;
        v26 = sub_1B7CFEA60();
        sub_1B7C1988C(v41, a2, v26, v27, a5, 0);

LABEL_15:
      }
    }
  }

  if (a4)
  {
    v28 = sub_1B7CFEA30();
    v29 = IMChatLookupDomainForServiceName();

    if (v29)
    {
      sub_1B7C107FC(&qword_1EBA525D0, qword_1B7D0A720);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B7D0A6F0;
      *(inited + 32) = sub_1B7CFEA60();
      *(inited + 40) = v31;
      v32 = sub_1B7CFEA60();
      *(inited + 48) = v32;
      *(inited + 56) = v33;
      v40[0] = a6;
      v40[1] = a7;
      MEMORY[0x1EEE9AC00](v32);
      v37[2] = v40;
      v34 = sub_1B7C19B50(sub_1B7C1A130, v37, inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v35 = sub_1B7CFEA60();
      sub_1B7C1988C(v39, a4, v35, v36, a5, v34 & 1);

      goto LABEL_19;
    }
  }
}

double sub_1B7C190F0(uint64_t a1)
{
  if (qword_1EBA50EB8 != -1)
  {
    swift_once();
  }

  v3 = sub_1B7CFE420();
  sub_1B7AD9040(v3, qword_1EBA5DA20);
  v4 = sub_1B7CFE400();
  v5 = sub_1B7CFEEE0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1B7AD5000, v4, v5, " ==> executing: deleting chat with ROWID %ld", v6, 0xCu);
    MEMORY[0x1B8CB0E70](v6, -1, -1);
  }

  v7 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_1B7AE3A9C((v8 > 1), v9 + 1, 1, v7);
  }

  v12 = MEMORY[0x1E69E6530];
  v13 = &off_1F2FA89F8;
  *&v11 = a1;
  v7[2] = v9 + 1;
  sub_1B7AE910C(&v11, &v7[5 * v9 + 4]);
  sub_1B7AE3B2C(0xD000000000000022, 0x80000001B7D51030, 0);
  if (!v1)
  {
    sub_1B7AF3FE4(v7);
  }

  return result;
}

void *sub_1B7C19380(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  if (qword_1EBA50EB8 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v8 = sub_1B7CFE420();
    sub_1B7AD9040(v8, qword_1EBA5DA20);
    v9 = sub_1B7CFE400();
    v10 = sub_1B7CFEEE0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B7AD5000, v9, v10, " ==> executing: copying domain identifiers", v11, 2u);
      MEMORY[0x1B8CB0E70](v11, -1, -1);
    }

    v12 = MEMORY[0x1E69E7CC0];
    v13 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      v13 = sub_1B7AE3A9C((v14 > 1), v15 + 1, 1, v13);
    }

    v47 = MEMORY[0x1E69E6158];
    v48 = &off_1F2FA8B58;
    *&v46 = a1;
    *(&v46 + 1) = a2;
    v13[2] = v15 + 1;
    sub_1B7AE910C(&v46, &v13[5 * v15 + 4]);
    a2 = 0x80000001B7D50EF0;
    v16 = a3;
    v17 = sub_1B7AE3B2C(0xD0000000000000A4, 0x80000001B7D50EF0, 0);
    if (v4)
    {
      break;
    }

    v18 = v17;
    *&v46 = v12;

    sub_1B7AEA964(v13, v18, &v46, v18);

    a3 = v46;
    v16 = sub_1B7AF1238(MEMORY[0x1E69E7CC0]);
    v45 = a3[2];
    if (!v45)
    {
      break;
    }

    v19 = 0;
    v4 = a3 + 7;
    v44 = a3;
    while (v19 < a3[2])
    {
      a1 = *(v4 - 3);
      a3 = *(v4 - 2);
      a2 = *v4;
      v49 = *(v4 - 1);
      v22 = v16[2];

      if (v22)
      {

        v23 = sub_1B7AE11D0(a1, a3);
        v25 = v24;

        v26 = MEMORY[0x1E69E7CC0];
        if ((v25 & 1) == 0)
        {
          goto LABEL_17;
        }

        v26 = *(v16[7] + 8 * v23);
      }

      else
      {
        v26 = MEMORY[0x1E69E7CC0];
      }

LABEL_17:

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1B7AF182C(0, *(v26 + 2) + 1, 1, v26);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_1B7AF182C((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[16 * v28];
      *(v29 + 4) = v49;
      *(v29 + 5) = a2;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v46 = v16;
      v31 = sub_1B7AE11D0(a1, a3);
      v33 = v16[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_33;
      }

      v37 = v32;
      if (v16[3] < v36)
      {
        sub_1B7CE4030(v36, isUniquelyReferenced_nonNull_native);
        v31 = sub_1B7AE11D0(a1, a3);
        if ((v37 & 1) != (v38 & 1))
        {
          result = sub_1B7CFF740();
          __break(1u);
          return result;
        }

LABEL_26:
        if (v37)
        {
          goto LABEL_9;
        }

        goto LABEL_27;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_26;
      }

      v42 = v31;
      sub_1B7CE84C8();
      v31 = v42;
      if (v37)
      {
LABEL_9:
        v20 = v31;

        v16 = v46;
        v21 = *(v46 + 56);
        a1 = *(v21 + 8 * v20);
        *(v21 + 8 * v20) = v26;

        goto LABEL_10;
      }

LABEL_27:
      v16 = v46;
      *(v46 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v39 = (v16[6] + 16 * v31);
      *v39 = a1;
      v39[1] = a3;
      *(v16[7] + 8 * v31) = v26;

      v40 = v16[2];
      v35 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v35)
      {
        goto LABEL_34;
      }

      v16[2] = v41;
LABEL_10:
      ++v19;
      v4 += 4;
      a3 = v44;
      if (v45 == v19)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_31:

  return v16;
}

double sub_1B7C1988C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  v10 = sub_1B7AE3A9C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = v10[2];
  v11 = v10[3];
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1B7AE3A9C((v11 > 1), v12 + 1, 1, v10);
  }

  v14 = MEMORY[0x1E69E6158];
  v26 = MEMORY[0x1E69E6158];
  v27 = &off_1F2FA8B58;
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v10[2] = v13;
  sub_1B7AE910C(&v25, &v10[5 * v12 + 4]);
  v15 = v10[3];
  v16 = v12 + 2;

  if ((v12 + 2) > (v15 >> 1))
  {
    v10 = sub_1B7AE3A9C((v15 > 1), v12 + 2, 1, v10);
  }

  v26 = v14;
  v27 = &off_1F2FA8B58;
  *&v25 = a3;
  *(&v25 + 1) = a4;
  v10[2] = v16;
  sub_1B7AE910C(&v25, &v10[5 * v13 + 4]);
  v17 = v10[3];
  v18 = v12 + 3;
  if ((v12 + 3) > (v17 >> 1))
  {
    v10 = sub_1B7AE3A9C((v17 > 1), v12 + 3, 1, v10);
  }

  v19 = MEMORY[0x1E69E6530];
  v26 = MEMORY[0x1E69E6530];
  v27 = &off_1F2FA89F8;
  *&v25 = a6;
  v10[2] = v18;
  sub_1B7AE910C(&v25, &v10[5 * v16 + 4]);
  v20 = v10[3];
  if ((v12 + 4) > (v20 >> 1))
  {
    v10 = sub_1B7AE3A9C((v20 > 1), v12 + 4, 1, v10);
  }

  v26 = v19;
  v27 = &off_1F2FA89F8;
  *&v25 = a5;
  v10[2] = v12 + 4;
  sub_1B7AE910C(&v25, &v10[5 * v18 + 4]);
  v21 = v28;
  sub_1B7AE3B2C(0xD0000000000000FFLL, 0x80000001B7D50C80, 0);
  if (!v21)
  {
    sub_1B7AF3FE4(v10);
  }

  return result;
}

uint64_t sub_1B7C19B50(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B7C19BFC(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x1B8CAE380](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_1B7CFF120();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_1B7C19D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1B7C1A14C(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1B7AE910C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1B7C19DBC(uint64_t a1)
{
  v2 = type metadata accessor for SQLConnectionError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C19E18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v34 = a3;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v3, 0);
    v4 = v40;
    v7 = (a1 + 40);
    v33 = a2;
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v10 = *(a2 + 16);

      if (v10 && (v11 = sub_1B7AE11D0(v9, v8), (v12 & 1) != 0))
      {
        sub_1B7AE90A8(*(a2 + 56) + 40 * v11, &v35);
        sub_1B7AE910C(&v35, &v38);
        sub_1B7AE90A8(&v38, &v35);
        v13 = v34;
        v14 = *v34;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v13 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v14 = sub_1B7AE3A9C(0, v14[2] + 1, 1, v14);
          *v34 = v14;
        }

        v17 = v14[2];
        v16 = v14[3];
        if (v17 >= v16 >> 1)
        {
          v30 = sub_1B7AE3A9C((v16 > 1), v17 + 1, 1, v14);
          *v34 = v30;
        }

        v18 = v36;
        v19 = v37;
        v20 = sub_1B7C1542C(&v35, v36);
        v21 = MEMORY[0x1EEE9AC00](v20);
        v23 = &v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v24 + 16))(v23, v21);
        sub_1B7C19D24(v17, v23, v34, v18, v19);
        sub_1B7AE9168(&v35);
        sub_1B7AE9168(&v38);

        v25 = 0xE100000000000000;
        v26 = 63;
        a2 = v33;
      }

      else
      {
        v38 = 11875;
        v39 = 0xE200000000000000;
        MEMORY[0x1B8CADCA0](v9, v8);

        v26 = v38;
        v25 = v39;
      }

      v40 = v4;
      v28 = *(v4 + 16);
      v27 = *(v4 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1B7AECEEC((v27 > 1), v28 + 1, 1);
        v4 = v40;
      }

      *(v4 + 16) = v28 + 1;
      v29 = v4 + 16 * v28;
      *(v29 + 32) = v26;
      *(v29 + 40) = v25;
      v7 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1B7C1A0C8(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA51FD0, qword_1B7D11D60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1B7C1A14C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B7C1A1B0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7CFF590() & 1;
  }
}

double sub_1B7C1A208(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t StorageInspectionLoggable.logger.getter(uint64_t a1)
{
  static StorageInspectionLoggable.category.getter(a1);

  return sub_1B7CFE410();
}

unint64_t static StorageInspectionLoggable.category.getter(uint64_t a1)
{
  sub_1B7CFF210();

  v1 = sub_1B7CFF8D0();
  MEMORY[0x1B8CADCA0](v1);

  return 0xD000000000000012;
}

uint64_t static StorageInspectionLoggable.logger.getter(uint64_t a1)
{
  static StorageInspectionLoggable.category.getter(a1);

  return sub_1B7CFE410();
}

uint64_t sub_1B7C1A3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7CFDEA0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - v8;
  v25 = a3;
  v10 = sub_1B7CFE1B0();
  sub_1B7CFE190();
  sub_1B7C107FC(&qword_1EBA51FD8, &qword_1B7D0AA40);
  sub_1B7C107FC(&qword_1EBA51FE0, &qword_1B7D0AA48);
  if (swift_dynamicCast())
  {
    sub_1B7AE910C(v23, v26);
    sub_1B7C107FC(&qword_1EBA51FF0, &qword_1B7D0AA58);
    v11 = (sub_1B7C107FC(&qword_1EBA52160, &qword_1B7D0AA60) - 8);
    v12 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B7D0A7B0;
    v14 = v13 + v12;
    v15 = (v14 + v11[14]);
    v22[1] = v9;

    sub_1B7CFE1A0();
    sub_1B7CFDE90();
    (*(v7 + 8))(v9, v6);
    v16 = *(a2 + 24);
    *v15 = *(a2 + 16);
    v15[1] = v16;
    v15[2] = MEMORY[0x1E69E7CC0];

    v17 = sub_1B7C23AFC(v13);
    swift_setDeallocating();
    sub_1B7AEE190(v14, &qword_1EBA52160, &qword_1B7D0AA60);
    swift_deallocClassInstance();
    *&v23[0] = a2;
    *(&v23[0] + 1) = v17;
    v18 = v27;
    v19 = v28;
    sub_1B7AE9124(v26, v27);
    v20 = (*(v19 + 8))(v23, v18, v19);

    (*(*(v10 - 8) + 8))(a1, v10);

    sub_1B7AE9168(v26);
    return v20;
  }

  else
  {
    (*(*(v10 - 8) + 8))(a1, v10);

    v24 = 0;
    memset(v23, 0, sizeof(v23));
    sub_1B7AEE190(v23, &qword_1EBA51FE8, &qword_1B7D0AA50);
    return 0;
  }
}

uint64_t sub_1B7C1A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v33 = *(a2 + 24);
  v34 = a4;
  v5 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_conformsToProtocol2();
  if (AssociatedTypeWitness)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = 21321;
  if (v16)
  {
    v17 = 15677;
  }

  v32 = v17;
  sub_1B7CFDE10();
  v18 = v31;
  v30 = (*(a3 + 8))(v31, v9, a3);
  v20 = v19;
  v35 = v21;
  (*(v10 + 8))(v13, v9);
  sub_1B7CFDE20();
  v22 = v33;
  v23 = (*(v34 + 8))(v18, v33);
  v25 = v24;
  v27 = v26;
  (*(v5 + 8))(v7, v22);
  v36 = 40;
  v37 = 0xE100000000000000;
  MEMORY[0x1B8CADCA0](v30, v20);

  MEMORY[0x1B8CADCA0](8233, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v32, 0xE200000000000000);

  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v23, v25);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v28 = v36;
  v36 = v35;
  sub_1B7AF3098(v27);
  return v28;
}

uint64_t sub_1B7C1AA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = *(a2 + 24);
  v35 = a4;
  v6 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (swift_conformsToProtocol2())
  {
    v16 = AssociatedTypeWitness == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = 15649;
  }

  else
  {
    v17 = 0x544F4E205349;
  }

  v18 = 0xE600000000000000;
  if (v16)
  {
    v18 = 0xE200000000000000;
  }

  v32 = v18;
  v33 = v17;
  sub_1B7CFDE70();
  v31 = (*(a3 + 8))(a1, v10, a3);
  v20 = v19;
  v36 = v21;
  (*(v11 + 8))(v14, v10);
  sub_1B7CFDE80();
  v22 = a1;
  v23 = v34;
  v24 = (*(v35 + 8))(v22, v34);
  v26 = v25;
  v28 = v27;
  (*(v6 + 8))(v8, v23);
  v37 = 40;
  v38 = 0xE100000000000000;
  MEMORY[0x1B8CADCA0](v31, v20);

  MEMORY[0x1B8CADCA0](8233, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v33, v32);

  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v24, v26);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v29 = v37;
  v37 = v36;
  sub_1B7AF3098(v28);
  return v29;
}

uint64_t sub_1B7C1AD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a1;
  v40 = a4;
  v6 = sub_1B7CFDE00();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(a2 + 24);
  v9 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDD70();
  v18 = a3;
  v19 = *(a3 + 8);
  v20 = v39;
  v21 = v19(v39, v13, v18);
  v36 = v22;
  v37 = v21;
  v43 = v23;
  (*(v14 + 8))(v17, v13);
  sub_1B7CFDD80();
  v24 = v20;
  v25 = v38;
  v26 = (*(v40 + 8))(v24, v38);
  v28 = v27;
  v30 = v29;
  (*(v9 + 8))(v12, v25);
  sub_1B7CFDD60();
  v31 = sub_1B7C1B088();
  v33 = v32;
  (*(v41 + 8))(v8, v42);
  v44 = 40;
  v45 = 0xE100000000000000;
  MEMORY[0x1B8CADCA0](v37, v36);

  MEMORY[0x1B8CADCA0](8233, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v31, v33);

  MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
  MEMORY[0x1B8CADCA0](v26, v28);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v34 = v44;
  v44 = v43;
  sub_1B7AF3098(v30);
  return v34;
}

uint64_t sub_1B7C1B088()
{
  v1 = v0;
  v2 = sub_1B7CFDE00();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6968C40])
  {
    return 60;
  }

  if (v7 == *MEMORY[0x1E6968C30])
  {
    return 15676;
  }

  if (v7 == *MEMORY[0x1E6968C28])
  {
    return 62;
  }

  if (v7 == *MEMORY[0x1E6968C38])
  {
    return 15678;
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD000000000000015, 0x80000001B7D51150);
  sub_1B7CFF320();
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

uint64_t sub_1B7C1B294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B7C107FC(&unk_1EBA52600, &qword_1B7D0AA78);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7D0A7B0;
  *(v5 + 56) = *(a2 + 16);
  *(v5 + 64) = a3;
  sub_1B7C1A14C((v5 + 32));
  MEMORY[0x1B8CACF70](a2);
  return 63;
}

uint64_t sub_1B7C1B328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CACF90](v11, v8);
  v12 = (*(a3 + 8))(a1, v6, a3);
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  v17[0] = v12;
  v17[1] = v14;
  MEMORY[0x1B8CADCA0](46, 0xE100000000000000);
  v15 = sub_1B7C1B484(a1, a2);
  MEMORY[0x1B8CADCA0](v15);

  return v17[0];
}

uint64_t sub_1B7C1B484(uint64_t a1, uint64_t a2)
{
  sub_1B7CFDE40();
  v3 = sub_1B7C4BE8C();
  v5 = v4;

  v6 = *(*a1 + 48);

  v7 = sub_1B7CFEC30();
  if (*(v6 + 16))
  {
    v9 = sub_1B7AE11D0(v7, v8);
    v11 = v10;

    if (v11)
    {

      v12 = *(*(v6 + 56) + 16 * v9);

      return v12;
    }
  }

  else
  {
  }

  sub_1B7CFF210();

  MEMORY[0x1B8CADCA0](v3, v5);
  result = sub_1B7CFF340();
  __break(1u);
  return result;
}

uint64_t sub_1B7C1B604(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7CFDD90();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - v8;
  sub_1B7CFDE90();
  v10 = *(a1 + 8);
  if (*(v10 + 16) && (v11 = sub_1B7C40208(v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 24 * v11);
    v14 = *(v4 + 8);

    v14(v9, v3);
    return v13;
  }

  else
  {
    v16 = *(v4 + 8);
    v16(v9, v3);
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    sub_1B7CFF210();
    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D51100);
    sub_1B7CFDE90();
    sub_1B7CFF320();
    v16(v6, v3);
    result = sub_1B7CFF340();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7C1B8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v40 = a7;
  v41 = a8;
  v37 = a4;
  v38 = a6;
  v36 = *(a2 + 24);
  v11 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22(v21, v18);
  v35 = (*(a3 + 8))(a1, v15, a3);
  v24 = v23;
  v39 = v25;
  (*(v16 + 8))(v20, v15);
  v38(a2);
  v26 = v36;
  v27 = (*(v37 + 8))(a1, v36);
  v29 = v28;
  v31 = v30;
  (*(v11 + 8))(v13, v26);
  v42 = 40;
  v43 = 0xE100000000000000;
  MEMORY[0x1B8CADCA0](v35, v24);

  MEMORY[0x1B8CADCA0](v40, v41);
  MEMORY[0x1B8CADCA0](v27, v29);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  v32 = v42;
  v42 = v39;
  sub_1B7AF3098(v31);
  return v32;
}

uint64_t sub_1B7C1BB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7CFDE60();
  v9 = (*(a3 + 8))(a1, v5, a3);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v13[0] = 0x2820544F4ELL;
  v13[1] = 0xE500000000000000;
  MEMORY[0x1B8CADCA0](v9, v11);

  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  return v13[0];
}

uint64_t sub_1B7C1BC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CACF00](v10, v7);
  v11 = (*(a3 + 8))(a1, v5, a3);
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_1B7C1BDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v41 = a1;
  v6 = sub_1B7C107FC(&qword_1EBA51FF8, &qword_1B7D0AA68);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v43 = v40 - v7;
  v44 = sub_1B7C107FC(&qword_1EBA52000, &qword_1B7D0AA70);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v40[0] = v40 - v8;
  v9 = *(a2 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v40[1] = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v40 - v14;
  v16 = *(a2 + 16);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CACEE0](a2, v19);
  v22 = a3;
  v23 = *(a3 + 8);
  v24 = v41;
  v46 = v23(v41, v16, v22);
  v47 = v25;
  v48 = v26;
  (*(v17 + 8))(v21, v16);
  sub_1B7CFDDB0();
  v45 = (*(v45 + 8))(v24, v9);
  v28 = v27;
  v30 = v29;
  v31 = v15;
  v32 = v43;
  (*(v10 + 8))(v31, v9);
  v33 = v42;
  sub_1B7CFDDB0();
  v34 = v44;
  v35 = swift_dynamicCast();
  v36 = *(v33 + 56);
  if ((v35 & 1) == 0)
  {
    v36(v32, 1, 1, v34);
    sub_1B7AEE190(v32, &qword_1EBA51FF8, &qword_1B7D0AA68);
    goto LABEL_5;
  }

  v36(v32, 0, 1, v34);
  v37 = v40[0];
  (*(v33 + 32))(v40[0], v32, v34);
  MEMORY[0x1B8CACF70](&v49, v34);
  (*(v33 + 8))(v37, v34);
  if (v49)
  {
LABEL_5:
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1B7CFF210();

    v49 = 0x28286C6C756E6669;
    v50 = 0xE800000000000000;
    MEMORY[0x1B8CADCA0](v46, v47);

    MEMORY[0x1B8CADCA0](673197097, 0xE400000000000000);
    MEMORY[0x1B8CADCA0](v45, v28);

    MEMORY[0x1B8CADCA0](10537, 0xE200000000000000);
    v38 = v49;
    v49 = v48;
    sub_1B7AF3098(v30);
    return v38;
  }

  return v46;
}

uint64_t sub_1B7C1C238(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v38 = a1;
  v44 = a2[4];
  v45 = a4;
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7CFDD90();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1B7CFDEA0();
  v10 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v12 = &v37 - v11;
  v13 = a2[2];
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1B8CACF10](a2, v16);
  v48 = (*(a3 + 8))(a1, v13, a3);
  v20 = v19;
  v22 = v21;
  (*(v14 + 8))(v18, v13);
  sub_1B7CFDDE0();
  v23 = v39;
  v24 = v47;
  sub_1B7CFDE90();
  (*(v10 + 8))(v12, v24);

  v25 = v38;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v25 + 8);
  v43 = v20;
  v47 = v22;
  sub_1B7CA5E70(v48, v20, v22, v23, isUniquelyReferenced_nonNull_native);
  (*(v40 + 8))(v23, v41);
  *(v25 + 8) = v49;
  v27 = v42;
  sub_1B7CFDDF0();
  v28 = v45;
  v29 = v27;
  v30 = v44;
  v40 = (*(v45 + 8))(v25, v44, v45);
  v41 = v31;
  v33 = v32;
  v34 = *(v46 + 8);
  v34(v29, v30);
  sub_1B7CFDDF0();
  LOBYTE(v18) = (*(v28 + 16))(v30, v28);
  v34(v29, v30);
  if (v18)
  {

    return v40;
  }

  else
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_1B7CFF210();

    v49 = 0x2828666669;
    v50 = 0xE500000000000000;
    MEMORY[0x1B8CADCA0](v48, v43);

    MEMORY[0x1B8CADCA0](0xD000000000000010, 0x80000001B7D510B0);
    MEMORY[0x1B8CADCA0](v40, v33);

    MEMORY[0x1B8CADCA0](0x294C4C554E202C29, 0xE800000000000000);
    v35 = v49;
    v49 = v47;
    sub_1B7AF3098(v41);
  }

  return v35;
}

uint64_t SqlOperation.ColumnType.description.getter()
{
  v1 = *v0;
  v2 = 0x72656765746E69;
  v3 = 1954047348;
  v4 = 1651469410;
  if (v1 != 3)
  {
    v4 = 1819047278;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616F6C66;
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

unint64_t SqlOperation.ColumnType.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x40302010005uLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1B7C1C81C()
{
  result = qword_1EBA52008;
  if (!qword_1EBA52008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52008);
  }

  return result;
}

uint64_t sub_1B7C1C870()
{
  v1 = *v0;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v1 + 1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C1C8E8(uint64_t a1)
{
  v2 = *v1;
  sub_1B7CFF7C0();
  MEMORY[0x1B8CAE910](v2 + 1);
  return sub_1B7CFF800();
}

uint64_t sub_1B7C1C944()
{
  v1 = *v0;
  v2 = 0x72656765746E69;
  v3 = 1954047348;
  v4 = 1651469410;
  if (v1 != 3)
  {
    v4 = 1819047278;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74616F6C66;
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

uint64_t _s10ColumnTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s10ColumnTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B7C1CB20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B7CFE420();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v10;

  sub_1B7CFE410();
  v11 = sub_1B7CFE400();
  v12 = sub_1B7CFEED0();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19 = a1;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_1B7AD5000, v11, v12, "Cross checking DatabaseExportRecordCounter with DatabaseInspector:", v13, 2u);
    a1 = v19;
    MEMORY[0x1B8CB0E70](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v15 = *(a1 + 24);
  v16 = *(a2 + 80);

  sub_1B7C9E06C(v15, v16);

  return v3;
}

uint64_t sub_1B7C1CD2C(void *a1)
{
  swift_allocObject();
  sub_1B7AE90A8(a1, v4);
  v2 = StorageInspectionCrossCheckReport.init(from:)(v4);
  sub_1B7AE9168(a1);
  return v2;
}

uint64_t RecordCounterDatabaseInspectorCrossCheckReport.deinit()
{

  return v0;
}

uint64_t RecordCounterDatabaseInspectorCrossCheckReport.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1B7C1CE48()
{
  if (qword_1EDBE3F50 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for MessageRecord(0);
  sub_1B7C1D34C();
  sub_1B7CC1208(v0);
  if (v1)
  {
    v2 = *(v1 + 32);

    v3 = *(v2 + 16);
    if (v3)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v3, 0);
      v4 = v12;
      v5 = v2 + 32;
      do
      {
        sub_1B7AEBEFC(v5, v11);
        v7 = v11[2];
        v6 = v11[3];

        sub_1B7AEBF70(v11);
        v12 = v4;
        v9 = *(v4 + 16);
        v8 = *(v4 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_1B7AECEEC((v8 > 1), v9 + 1, 1);
          v4 = v12;
        }

        *(v4 + 16) = v9 + 1;
        v10 = v4 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 136;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x1E69E7CC0];
    }

    v11[0] = &unk_1F2FA1628;
    sub_1B7C50BFC(v4);
    off_1EBA50CE8 = v11[0];
  }

  else
  {
    __break(1u);
  }
}

IMDMessageQueryStrings __swiftcall IMDMessageQueryStrings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for IMDMessageQueryStrings()
{
  result = qword_1EBA52010;
  if (!qword_1EBA52010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52010);
  }

  return result;
}

uint64_t sub_1B7C1D15C(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    goto LABEL_13;
  }

  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    if (qword_1EBA50CE0 != -1)
    {
      swift_once();
    }

    v5 = off_1EBA50CE8;
    v6 = *(off_1EBA50CE8 + 2);
    if (v6)
    {
      v15 = MEMORY[0x1E69E7CC0];
      sub_1B7AECEEC(0, v6, 0);
      v7 = (v5 + 40);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;

        MEMORY[0x1B8CADCA0](v8, v9);

        v11 = *(v15 + 16);
        v10 = *(v15 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1B7AECEEC((v10 > 1), v11 + 1, 1);
        }

        *(v15 + 16) = v11 + 1;
        v12 = v15 + 16 * v11;
        *(v12 + 32) = a1;
        *(v12 + 40) = a2;
        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
LABEL_13:
    if (qword_1EBA50CE0 != -1)
    {
      swift_once();
    }
  }

  sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
  sub_1B7AF7FAC();
  v13 = sub_1B7CFEA10();

  MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
  return v13;
}

unint64_t sub_1B7C1D34C()
{
  result = qword_1EDBE5658;
  if (!qword_1EDBE5658)
  {
    type metadata accessor for MessageRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBE5658);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for SQLColumn(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B7C1D3B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B7C1D3F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7C1D450@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1B7AE8874(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B7C1D478(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B7CFF590();
  }
}

uint64_t sub_1B7C1D4A8()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1B7C1D4DC()
{
  result = qword_1EBA52018;
  if (!qword_1EBA52018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52018);
  }

  return result;
}

unint64_t sub_1B7C1D540()
{
  result = qword_1EBA52020;
  if (!qword_1EBA52020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52020);
  }

  return result;
}

unint64_t sub_1B7C1D598()
{
  result = qword_1EBA52028;
  if (!qword_1EBA52028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52028);
  }

  return result;
}

uint64_t sub_1B7C1D5F8(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA52030, &unk_1B7D13080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C1D664@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord, &unk_1B7D0ADF4);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord, &unk_1B7D0AEB0);
  sub_1B7CFE770();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1B7C1D770(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord, &unk_1B7D0ADF4);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C1D848()
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord, &unk_1B7D0ADF4);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord, &unk_1B7D0AEB0);
  sub_1B7CFE770();

  return v0;
}

uint64_t sub_1B7C1D94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord, &unk_1B7D0AEB0);
  sub_1B7CFE790();
}

uint64_t sub_1B7C1DA00@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord, &unk_1B7D0ADF4);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord, &unk_1B7D0AEB0);
  sub_1B7C1EC10(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  v3 = sub_1B7CFE760();

  *a2 = v3;
  return result;
}

uint64_t sub_1B7C1DB3C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord, &unk_1B7D0ADF4);
  sub_1B7CFE1D0();
}

uint64_t sub_1B7C1DC08()
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F38, type metadata accessor for ChatServiceRecord, &unk_1B7D0ADF4);
  sub_1B7CFE1E0();

  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord, &unk_1B7D0AEB0);
  sub_1B7C1EC10(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  v0 = sub_1B7CFE760();

  return v0;
}

uint64_t sub_1B7C1DD40(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord, &unk_1B7D0AEB0);
  sub_1B7C1EC10(&qword_1EDBE5728, type metadata accessor for ChatRecord, &unk_1B7D0F500);
  sub_1B7CFE780();
}

uint64_t sub_1B7C1DE3C()
{
  sub_1B7AE9168((v0 + 16));
  v1 = OBJC_IVAR____TtC14IMDPersistence17ChatServiceRecord___observationRegistrar;
  v2 = sub_1B7CFE200();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChatServiceRecord(uint64_t a1)
{
  result = qword_1EDBE3F00;
  if (!qword_1EDBE3F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7C1DF34(uint64_t a1)
{
  result = sub_1B7CFE200();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1B7C1E010(__int128 *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ChatServiceRecord(0);
  v4 = swift_allocObject();
  v4[5] = sub_1B7C107FC(&qword_1EBA52070, qword_1B7D0AFE0);
  v4[6] = swift_getOpaqueTypeConformance2();
  sub_1B7C1A14C(v4 + 2);
  sub_1B7CFE720();
  sub_1B7CFE1F0();
  swift_beginAccess();
  sub_1B7AE9168(v4 + 2);
  sub_1B7AE910C(a1, (v4 + 2));
  swift_endAccess();
  return v4;
}

uint64_t sub_1B7C1E154(__int128 *a1)
{
  swift_beginAccess();
  sub_1B7AE9168((v1 + 16));
  sub_1B7AE910C(a1, v1 + 16);
  return swift_endAccess();
}

void (*sub_1B7C1E1AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  sub_1B7AE90A8(v1 + 16, v4);
  return sub_1B7C1E23C;
}

void sub_1B7C1E23C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    sub_1B7AE90A8(*a1, v2 + 40);
    swift_beginAccess();
    sub_1B7AE9168((v3 + 16));
    sub_1B7AE910C((v2 + 40), v3 + 16);
    swift_endAccess();
    sub_1B7AE9168(v2);
  }

  else
  {
    swift_beginAccess();
    sub_1B7AE9168((v3 + 16));
    sub_1B7AE910C(v2, v3 + 16);
    swift_endAccess();
  }

  free(v2);
}

uint64_t sub_1B7C1E2F8()
{
  sub_1B7CFF7C0();
  type metadata accessor for ChatServiceRecord(0);
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord, &unk_1B7D0AEB0);
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C1E3DC(uint64_t a1, uint64_t a2)
{
  sub_1B7CFF7C0();
  swift_getWitnessTable();
  sub_1B7CFE750();
  return sub_1B7CFF800();
}

uint64_t sub_1B7C1E444()
{
  type metadata accessor for ChatServiceRecord(0);
  sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord, &unk_1B7D0AEB0);
  return sub_1B7CFE740();
}

uint64_t sub_1B7C1E4C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDD9288](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7C1E6DC(uint64_t a1)
{
  result = sub_1B7C1EC10(&qword_1EDBE3F30, type metadata accessor for ChatServiceRecord, &unk_1B7D0AEB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B7C1E734()
{
  v26 = sub_1B7CFE850();
  v0 = *(v26 - 8);
  v1 = v0;
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B7CFE7D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C107FC(&qword_1EBA52050, &qword_1B7D0AF40);
  v8 = *(v0 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B7D0A6F0;
  swift_getKeyPath();
  v30 = 0u;
  v31 = 0u;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_1B7CFE840();
  swift_getKeyPath();
  v30 = 0u;
  v31 = 0u;
  (*(v5 + 104))(v7, *MEMORY[0x1E697BCD8], v4);
  v11 = sub_1B7CFE800();
  swift_allocObject();
  v12 = MEMORY[0x1E69E7CC0];
  v13 = sub_1B7CFE810();
  *(&v28 + 1) = v11;
  v29 = sub_1B7C1EC10(qword_1EDBE3A20, MEMORY[0x1E697BCF0], MEMORY[0x1E697BCE8]);
  *&v27 = v13;
  sub_1B7CFE840();
  swift_getKeyPath();
  v30 = 0u;
  v31 = 0u;
  sub_1B7C107FC(&qword_1EBA52058, &qword_1B7D0AFC8);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1B7D0A7B0;
  sub_1B7C107FC(&qword_1EBA52060, &qword_1B7D0AFD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1B7D0AD40;
  *(v15 + 32) = swift_getKeyPath();
  *(v15 + 40) = swift_getKeyPath();
  *(v14 + 32) = v15;
  v16 = v3;
  v17 = sub_1B7C107FC(&qword_1EBA52068, &qword_1B7D0AFD8);
  swift_allocObject();
  v18 = sub_1B7CFE890();
  *(&v28 + 1) = v17;
  v29 = sub_1B7C1EB90();
  *&v27 = v18;
  sub_1B7CFE840();
  v19 = sub_1B7CA2198(0, 1, 1, v12);
  v21 = v19[2];
  v20 = v19[3];
  if (v21 >= v20 >> 1)
  {
    v19 = sub_1B7CA2198((v20 > 1), v21 + 1, 1, v19);
  }

  v19[2] = v21 + 1;
  v22 = v19 + v9 + v21 * v8;
  v23 = v19;
  (*(v1 + 32))(v22, v16, v26);
  *&v27 = v10;
  sub_1B7C50CF0(v23);
  return v27;
}

unint64_t sub_1B7C1EB90()
{
  result = qword_1EDBE3A10;
  if (!qword_1EDBE3A10)
  {
    sub_1B7C1091C(&qword_1EBA52068, &qword_1B7D0AFD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBE3A10);
  }

  return result;
}

uint64_t sub_1B7C1EC10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B7C1EC88(unint64_t a1, void *a2, uint64_t *a3)
{
  v11 = *(a1 + 16);
  if (!v11)
  {
    __break(1u);
    goto LABEL_26;
  }

  v8 = a2;
  v3 = a1;
  v12 = *(a1 + 40);
  if (v12 < 0xFFFFFFFF80000000)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v12 > 0x7FFFFFFF)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v5 = v4;
  v7 = a3;
  if (!sqlite3_column_text(*(a1 + 32), v12))
  {
    __break(1u);
    goto LABEL_35;
  }

  v13 = sub_1B7CFEB80();
  if (v11 < 3)
  {
    goto LABEL_28;
  }

  v6 = v14;
  v15 = *(v3 + 72);
  if (v15 < 0xFFFFFFFF80000000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v15 > 0x7FFFFFFF)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v16 = v13;
  v43 = v7;
  v17 = sqlite3_column_int64(*(v3 + 64), v15);
  v42 = v16;

  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  v41 = v17;
  v18 = sub_1B7CFF570();
  MEMORY[0x1B8CADCA0](v18);

  v10 = v16;
  v9 = v6;
  v5 = MEMORY[0x1B8CADD40](v16, v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v8;
  v44 = *v8;
  *v8 = 0x8000000000000000;
  v3 = sub_1B7AE1160(v5);
  v22 = v20[2];
  v23 = (v21 & 1) == 0;
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  LOBYTE(v7) = v21;
  if (v20[3] >= v24)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_13;
  }

  sub_1B7CE49B4(v24, isUniquelyReferenced_nonNull_native);
  v20 = v44;
  v25 = sub_1B7AE1160(v5);
  if ((v7 & 1) != (v26 & 1))
  {
LABEL_35:
    sub_1B7CFF740();
    __break(1u);
    return;
  }

  v3 = v25;
  while (1)
  {
LABEL_13:
    *v8 = v20;

    v27 = *v8;
    if ((v7 & 1) == 0)
    {
      sub_1B7CA66E4(v3, v5, 0, *v8);
    }

    v28 = v27[7];
    v29 = *(v28 + 8 * v3);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (!v30)
    {
      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    sub_1B7CE8A84();
    v20 = v44;
  }

  *(v28 + 8 * v3) = v31;
  v32 = MEMORY[0x1B8CADD40](v10, v9);

  v33 = *v8;
  if (*(*v8 + 16) && (v34 = sub_1B7AE1160(v32), (v35 & 1) != 0) && *(v33[7] + 8 * v34) == 2)
  {
    v36 = *v43;
    v37 = swift_isUniquelyReferenced_nonNull_native();
    *v43 = v36;
    if ((v37 & 1) == 0)
    {
      v36 = sub_1B7CA1D90(0, v36[2] + 1, 1, v36);
      *v43 = v36;
    }

    v39 = v36[2];
    v38 = v36[3];
    if (v39 >= v38 >> 1)
    {
      v36 = sub_1B7CA1D90((v38 > 1), v39 + 1, 1, v36);
      *v43 = v36;
    }

    v36[2] = v39 + 1;
    v40 = &v36[3 * v39];
    v40[4] = v42;
    v40[5] = v6;
    v40[6] = v41;
  }

  else
  {
  }
}

uint64_t getEnumTagSinglePayload for SqlOperation.RowIterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SqlOperation.RowIterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B7C1F044()
{
  result = qword_1EBA52078;
  if (!qword_1EBA52078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA52078);
  }

  return result;
}

double sub_1B7C1F098()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0xD00000000000001BLL, 0x80000001B7D513A0);
  MEMORY[0x1B8CADCA0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1B8CADCA0](0xD000000000000031, 0x80000001B7D513C0);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0, 0);

  return result;
}

double sub_1B7C1F1A4()
{
  if (qword_1EBA515F0 != -1)
  {
    swift_once();
  }

  sub_1B7CFF210();
  MEMORY[0x1B8CADCA0](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1B8CADCA0](v0[2], v0[3]);
  MEMORY[0x1B8CADCA0](0xD000000000000027, 0x80000001B7D51370);
  MEMORY[0x1B8CADCA0](v0[4], v0[5]);
  MEMORY[0x1B8CADCA0](59, 0xE100000000000000);
  SqlOperation.execute(_:_:)(0, 0xE000000000000000, 0, 0);

  return result;
}

uint64_t sub_1B7C1F2C4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B7C1F330()
{
  v0 = sub_1B7CFE420();
  sub_1B7AED154(v0, qword_1EBA5DAC8);
  sub_1B7AD9040(v0, qword_1EBA5DAC8);
  sub_1B7CFE3F0();
  return sub_1B7CFE410();
}

uint64_t sub_1B7C1F39C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B7C20504(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1B7C1F454(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B7C20518(v1);
      v1 = result;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

id sub_1B7C1F50C(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B7CFDF40();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1B7CFDFF0();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1B7CFDEC0();

    swift_willThrow();
    v9 = sub_1B7CFDFF0();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_1B7C1F664(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B7CFE030();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B7C1A208(a2, a3);
  sub_1B7CFE040();
  v10 = *(a1 + 16);
  sub_1B7C20A58(&qword_1EBA52090, MEMORY[0x1E6969050], MEMORY[0x1E6969058]);
  sub_1B7CFF040();
  if (v10)
  {
    v11 = (a1 + 32);
    while (1)
    {
      v12 = 0;
      if (v16)
      {
        break;
      }

      v13 = *v11++;
      if (v15[14] != v13)
      {
        break;
      }

      sub_1B7CFF040();
      if (!--v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = v16;
  }

  (*(v7 + 8))(v9, v6);
  return v12;
}

id sub_1B7C1F8F0(uint64_t a1)
{
  v2 = v1;
  v89[2] = *MEMORY[0x1E69E9840];
  v4 = sub_1B7CFDFF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v89[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B7CFDF40();
  LODWORD(v2) = [v2 imagePreviewIsMultiFrameAtFileURL_];

  if (!v2)
  {
    return 0;
  }

  sub_1B7C203E8();
  (*(v5 + 16))(v7, a1, v4);
  v9 = sub_1B7C1F50C(v7);
  v10 = sub_1B7CFEE90();
  v26 = v11;
  if (v11 >> 60 == 15)
  {
    if (qword_1EBA51598 != -1)
    {
      swift_once();
    }

    v27 = sub_1B7CFE420();
    sub_1B7AD9040(v27, qword_1EBA5DAC8);
    v28 = sub_1B7CFE400();
    v29 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1B7AD5000, v28, v29, "Failed to read frame length", v30, 2u);
      MEMORY[0x1B8CB0E70](v30, -1, -1);
    }

    goto LABEL_56;
  }

  v31 = v11 >> 62;
  v32 = v10;
  if ((v11 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_29;
    }

    v35 = *(v10 + 16);
    v34 = *(v10 + 24);
    v36 = __OFSUB__(v34, v35);
    v33 = v34 - v35;
    if (!v36)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v31)
  {
    v33 = BYTE6(v11);
    goto LABEL_22;
  }

  LODWORD(v33) = HIDWORD(v10) - v10;
  if (__OFSUB__(HIDWORD(v10), v10))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v33 = v33;
LABEL_22:
  if (v33 != 8)
  {
LABEL_29:
    if (qword_1EBA51598 != -1)
    {
      swift_once();
    }

    v43 = sub_1B7CFE420();
    sub_1B7AD9040(v43, qword_1EBA5DAC8);
    sub_1B7C1A208(v32, v26);
    v28 = sub_1B7CFE400();
    v44 = sub_1B7CFEEF0();
    if (!os_log_type_enabled(v28, v44))
    {
      sub_1B7C2049C(v32, v26);
      goto LABEL_55;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        v47 = *(v32 + 16);
        v46 = *(v32 + 24);
        v36 = __OFSUB__(v46, v47);
        v45 = v46 - v47;
        if (v36)
        {
          __break(1u);
LABEL_40:
          v48 = v10;
          if (v10 > v10 >> 32)
          {
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
            goto LABEL_93;
          }

          v49 = sub_1B7CFDC90();
          if (!v49)
          {
LABEL_99:
            result = sub_1B7CFDCA0();
            __break(1u);
            goto LABEL_100;
          }

          v50 = v49;
          v51 = sub_1B7CFDCB0();
          if (__OFSUB__(v48, v51))
          {
            goto LABEL_92;
          }

          v42 = (v48 - v51 + v50);
          result = sub_1B7CFDCA0();
          if (!v42)
          {
LABEL_100:
            __break(1u);
            return result;
          }

          goto LABEL_44;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else if (v31)
    {
      LODWORD(v45) = HIDWORD(v32) - v32;
      if (__OFSUB__(HIDWORD(v32), v32))
      {
LABEL_93:
        __break(1u);
LABEL_94:
        swift_once();
LABEL_48:
        v55 = sub_1B7CFE420();
        sub_1B7AD9040(v55, qword_1EBA5DAC8);
        v28 = sub_1B7CFE400();
        v56 = sub_1B7CFEEF0();
        if (os_log_type_enabled(v28, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          v58 = "Failed to read first frame";
          v59 = v56;
          v60 = v28;
          v61 = v57;
          v62 = 2;
LABEL_54:
          _os_log_impl(&dword_1B7AD5000, v60, v59, v58, v61, v62);
          MEMORY[0x1B8CB0E70](v57, -1, -1);
        }

LABEL_55:
        sub_1B7C2049C(v32, v26);
LABEL_56:

        return 0;
      }

      v45 = v45;
    }

    else
    {
      v45 = BYTE6(v26);
    }

    *(v10 + 4) = v45;
    v57 = v10;
    sub_1B7C2049C(v32, v26);
    v58 = "Failed to read frame length - data wrong length: %ld";
    v59 = v44;
    v60 = v28;
    v61 = v57;
    v62 = 12;
    goto LABEL_54;
  }

  v37 = v10;
  if (!v31)
  {
    goto LABEL_45;
  }

  if (v31 != 2)
  {
    goto LABEL_40;
  }

  v38 = *(v10 + 16);
  v39 = sub_1B7CFDC90();
  if (!v39)
  {
LABEL_97:
    sub_1B7CFDCA0();
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v40 = v39;
  v41 = sub_1B7CFDCB0();
  if (__OFSUB__(v38, v41))
  {
    goto LABEL_91;
  }

  v42 = (v38 - v41 + v40);
  sub_1B7CFDCA0();
  if (!v42)
  {
    goto LABEL_98;
  }

LABEL_44:
  v37 = *v42;
LABEL_45:
  if (v37 < 0)
  {
    __break(1u);
    goto LABEL_89;
  }

  v53 = sub_1B7CFEE90();
  if (v54 >> 60 == 15)
  {
    if (qword_1EBA51598 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_94;
  }

  v63 = v54 >> 62;
  if ((v54 >> 62) <= 1)
  {
    if (!v63)
    {
      v64 = BYTE6(v54);
      goto LABEL_67;
    }

    goto LABEL_65;
  }

  if (v63 != 2)
  {
    if (!v37)
    {
      goto LABEL_68;
    }

    goto LABEL_71;
  }

  v66 = *(v53 + 16);
  v65 = *(v53 + 24);
  v36 = __OFSUB__(v65, v66);
  v64 = v65 - v66;
  if (v36)
  {
    __break(1u);
LABEL_65:
    LODWORD(v64) = HIDWORD(v53) - v53;
    if (__OFSUB__(HIDWORD(v53), v53))
    {
      __break(1u);
LABEL_96:
      __break(1u);
      goto LABEL_97;
    }

    v64 = v64;
  }

LABEL_67:
  if (v64 != v37)
  {
LABEL_71:
    v70 = v53;
    v71 = v54;
    if (qword_1EBA51598 != -1)
    {
      swift_once();
    }

    v72 = sub_1B7CFE420();
    sub_1B7AD9040(v72, qword_1EBA5DAC8);
    sub_1B7C1A208(v70, v71);
    v28 = sub_1B7CFE400();
    v73 = sub_1B7CFEEF0();
    if (!os_log_type_enabled(v28, v73))
    {
      sub_1B7C2049C(v70, v71);
      sub_1B7C2049C(v70, v71);
      goto LABEL_55;
    }

    v74 = swift_slowAlloc();
    *v74 = 134217984;
    if (v63 > 1)
    {
      v75 = v71;
      if (v63 == 2)
      {
        v85 = v70[2];
        v84 = v70[3];
        v36 = __OFSUB__(v84, v85);
        v76 = v84 - v85;
        if (v36)
        {
          __break(1u);
          swift_once();
          v12 = sub_1B7CFE420();
          sub_1B7AD9040(v12, qword_1EBA5DAC8);
          v13 = v70;
          v14 = sub_1B7CFE400();
          v15 = sub_1B7CFEEF0();

          if (os_log_type_enabled(v14, v15))
          {
            v16 = swift_slowAlloc();
            v17 = swift_slowAlloc();
            *v16 = 138412290;
            v18 = v70;
            v19 = _swift_stdlib_bridgeErrorToNSError();
            *(v16 + 4) = v19;
            *v17 = v19;
            _os_log_impl(&dword_1B7AD5000, v14, v15, "Failed to copy first frame: %@", v16, 0xCu);
            sub_1B7C20434(v17);
            MEMORY[0x1B8CB0E70](v17, -1, -1);
            MEMORY[0x1B8CB0E70](v16, -1, -1);
          }

          v20 = [objc_opt_self() defaultManager];
          v21 = sub_1B7CFDF40();
          v89[0] = 0;
          v22 = [v20 removeItemAtURL:v21 error:v89];

          if (v22)
          {
            v23 = v89[0];
          }

          else
          {
            v24 = v89[0];
            v25 = sub_1B7CFDEC0();

            swift_willThrow();
          }

          return 0;
        }
      }

      else
      {
        v76 = 0;
      }

      goto LABEL_87;
    }

    v75 = v71;
    if (!v63)
    {
      v76 = BYTE6(v71);
LABEL_87:
      *(v74 + 4) = v76;
      v86 = v70;
      v87 = v74;
      sub_1B7C2049C(v86, v75);
      _os_log_impl(&dword_1B7AD5000, v28, v73, "Failed to read first frame- data wrong length: %ld", v87, 0xCu);
      MEMORY[0x1B8CB0E70](v87, -1, -1);
      sub_1B7C2049C(v86, v75);
      goto LABEL_55;
    }

    LODWORD(v76) = HIDWORD(v70) - v70;
    if (!__OFSUB__(HIDWORD(v70), v70))
    {
      v76 = v76;
      goto LABEL_87;
    }

    goto LABEL_96;
  }

LABEL_68:
  v67 = v53;
  v68 = v54;
  v89[0] = 0;
  if ([v9 closeAndReturnError_])
  {
    v69 = v89[0];
  }

  else
  {
    v77 = v89[0];
    v78 = sub_1B7CFDEC0();

    swift_willThrow();
  }

  v79 = [objc_opt_self() defaultManager];
  sub_1B7CFDFD0();
  v80 = sub_1B7CFEA30();

  v81 = v67;
  v82 = sub_1B7CFE010();
  v83 = [v79 createFileAtPath:v80 contents:v82 attributes:0];

  sub_1B7C2049C(v81, v68);
  sub_1B7C2049C(v32, v26);

  return v83;
}

unint64_t sub_1B7C203E8()
{
  result = qword_1EBA52080;
  if (!qword_1EBA52080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA52080);
  }

  return result;
}

uint64_t sub_1B7C20434(uint64_t a1)
{
  v2 = sub_1B7C107FC(&qword_1EBA521E0, &unk_1B7D0CE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7C2049C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B7C204B0(result, a2);
  }

  return result;
}

uint64_t sub_1B7C204B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1B7C2052C(uint64_t a1)
{
  v2 = sub_1B7CFDFF0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = sub_1B7C1F39C(&unk_1F2FA18B8);
  if (qword_1EBA51598 != -1)
  {
    swift_once();
  }

  v10 = sub_1B7CFE420();
  v11 = sub_1B7AD9040(v10, qword_1EBA5DAC8);
  v41 = *(v3 + 16);
  v41(v8, a1, v2);
  v40 = v11;
  v12 = sub_1B7CFE400();
  v13 = sub_1B7CFEED0();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = v9;
    v15 = v14;
    v37 = swift_slowAlloc();
    v38 = a1;
    v42 = v37;
    *v15 = 136315138;
    sub_1B7C20A58(&qword_1EBA52088, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v16 = sub_1B7CFF570();
    v17 = v5;
    v19 = v18;
    (*(v3 + 8))(v8, v2);
    v20 = sub_1B7AED1B8(v16, v19, &v42);
    v5 = v17;

    *(v15 + 4) = v20;
    _os_log_impl(&dword_1B7AD5000, v12, v13, "Opening source file: %s", v15, 0xCu);
    v21 = v37;
    sub_1B7AE9168(v37);
    v22 = v21;
    a1 = v38;
    MEMORY[0x1B8CB0E70](v22, -1, -1);
    v23 = v15;
    v9 = v39;
    MEMORY[0x1B8CB0E70](v23, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  sub_1B7C203E8();
  v41(v5, a1, v2);
  v24 = sub_1B7C1F50C(v5);
  result = sub_1B7CFEEA0();
  if (result < 4)
  {
    v27 = result;

    v28 = sub_1B7CFE400();
    v29 = sub_1B7CFEEF0();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      *(v30 + 4) = v27;
      _os_log_impl(&dword_1B7AD5000, v28, v29, "File too small: %llu", v30, 0xCu);
      MEMORY[0x1B8CB0E70](v30, -1, -1);
    }

    v26 = 0;
    return v26 & 1;
  }

  v31 = *(v9 + 16);
  if (result >= v31)
  {
    [v24 seekToFileOffset_];
    v32 = [v24 readDataOfLength_];
    v33 = sub_1B7CFE020();
    v35 = v34;

    [v24 closeFile];
    v26 = sub_1B7C1F664(v9, v33, v35);
    sub_1B7C204B0(v33, v35);

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7C20A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7C20AA0()
{
  v1 = (*(*(v0 + 88) + 8))();
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 0xE700000000000000;
      v3 = 0x52454745544E49;
    }

    else
    {
      v2 = 0xE400000000000000;
      v3 = 1280070990;
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    if (v1 == 2)
    {
      v3 = 1279346002;
    }

    else if (v1 == 3)
    {
      v3 = 1415071060;
    }

    else
    {
      v3 = 1112493122;
    }
  }

  MEMORY[0x1B8CADCA0](v3, v2);

  if (*(v0 + 32))
  {
    v4 = 0x455551494E5520;
  }

  else
  {
    v4 = 0;
  }

  if (*(v0 + 32))
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1B8CADCA0](v4, v5);

  v6 = sub_1B7C20BEC();
  MEMORY[0x1B8CADCA0](v6);

  v7 = sub_1B7C20DE8();
  MEMORY[0x1B8CADCA0](v7);

  return 0;
}

uint64_t sub_1B7C20BEC()
{
  sub_1B7C21820(v0 + 96, &v5);
  if (v7)
  {
    sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
    if (swift_dynamicCast())
    {
      v5 = 0x544C554146454420;
      v6 = 0xE900000000000020;
LABEL_8:
      v1 = sub_1B7CFF570();
      MEMORY[0x1B8CADCA0](v1);
LABEL_16:

      return v5;
    }
  }

  else
  {
    sub_1B7C1A0C8(&v5);
  }

  sub_1B7C21820(v0 + 96, &v5);
  if (v7)
  {
    sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
    if (swift_dynamicCast())
    {
      v5 = 0x544C554146454420;
      v6 = 0xE900000000000020;
      goto LABEL_8;
    }
  }

  else
  {
    sub_1B7C1A0C8(&v5);
  }

  sub_1B7C21820(v0 + 96, &v5);
  if (v7)
  {
    sub_1B7C107FC(&qword_1EBA52460, &qword_1B7D113A0);
    if (swift_dynamicCast())
    {
      v5 = 0x544C554146454420;
      v6 = 0xE900000000000020;
      if (v4)
      {
        v2 = 49;
      }

      else
      {
        v2 = 48;
      }

      MEMORY[0x1B8CADCA0](v2, 0xE100000000000000);
      goto LABEL_16;
    }
  }

  else
  {
    sub_1B7C1A0C8(&v5);
  }

  if (*(v0 + 33))
  {
    return 0;
  }

  else
  {
    return 0x4C554E20544F4E20;
  }
}

uint64_t sub_1B7C20DE8()
{
  v1 = *(v0 + 48);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 72);
  v3 = v2 >> 8;
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  strcpy(v29, " ON DELETE ");
  HIDWORD(v29[1]) = -352321536;
  v7 = 0xE800000000000000;
  v8 = 0x4C4C554E20544553;
  v9 = 0x4146454420544553;
  v10 = 0xEB00000000544C55;
  if (v2 >> 8 != 3)
  {
    v9 = 0x45444143534143;
    v10 = 0xE700000000000000;
  }

  if (v3 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  v11 = 0xE800000000000000;
  v12 = 0x5443495254534552;
  if (!v3)
  {
    v12 = 0x4F49544341204F4ELL;
    v11 = 0xE90000000000004ELL;
  }

  if (v2 >> 8 <= 1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v2 >> 8 <= 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v7;
  }

  MEMORY[0x1B8CADCA0](v13, v14);

  v15 = v2;
  v17 = v29[0];
  v16 = v29[1];
  strcpy(v29, " ON UPDATE ");
  HIDWORD(v29[1]) = -352321536;
  v18 = 0xE800000000000000;
  v19 = 0x4C4C554E20544553;
  v20 = 0x4146454420544553;
  v21 = 0xEB00000000544C55;
  if (v15 != 3)
  {
    v20 = 0x45444143534143;
    v21 = 0xE700000000000000;
  }

  if (v15 != 2)
  {
    v19 = v20;
    v18 = v21;
  }

  v22 = 0xE800000000000000;
  v23 = 0x5443495254534552;
  if (!v15)
  {
    v23 = 0x4F49544341204F4ELL;
    v22 = 0xE90000000000004ELL;
  }

  if (v15 <= 1)
  {
    v24 = v23;
  }

  else
  {
    v24 = v19;
  }

  if (v15 <= 1)
  {
    v25 = v22;
  }

  else
  {
    v25 = v18;
  }

  MEMORY[0x1B8CADCA0](v24, v25);

  v27 = v29[0];
  v26 = v29[1];
  sub_1B7CFF210();

  strcpy(v29, " REFERENCES ");
  BYTE5(v29[1]) = 0;
  HIWORD(v29[1]) = -5120;
  MEMORY[0x1B8CADCA0](v4, v1);
  MEMORY[0x1B8CADCA0](40, 0xE100000000000000);
  MEMORY[0x1B8CADCA0](v5, v6);
  MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
  MEMORY[0x1B8CADCA0](v27, v26);

  MEMORY[0x1B8CADCA0](v17, v16);

  return v29[0];
}

uint64_t sub_1B7C21090(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v2, 0);
    v4 = v1 + 32;
    v3 = v56;
    do
    {
      v5 = v3;
      sub_1B7AEBEFC(v4, &v50);
      v47 = v52;
      v49 = v53;

      MEMORY[0x1B8CADCA0](32, 0xE100000000000000);
      v6 = (*(v55 + 8))();
      if (v6 <= 1)
      {
        if (v6)
        {
          v7 = 0xE700000000000000;
          v8 = 0x52454745544E49;
        }

        else
        {
          v7 = 0xE400000000000000;
          v8 = 1280070990;
        }
      }

      else
      {
        v7 = 0xE400000000000000;
        if (v6 == 2)
        {
          v8 = 1279346002;
        }

        else if (v6 == 3)
        {
          v8 = 1415071060;
        }

        else
        {
          v8 = 1112493122;
        }
      }

      MEMORY[0x1B8CADCA0](v8, v7);

      if (v54)
      {
        v9 = 0x455551494E5520;
      }

      else
      {
        v9 = 0;
      }

      if (v54)
      {
        v10 = 0xE700000000000000;
      }

      else
      {
        v10 = 0xE000000000000000;
      }

      MEMORY[0x1B8CADCA0](v9, v10);

      v11 = sub_1B7C20BEC();
      MEMORY[0x1B8CADCA0](v11);

      v12 = sub_1B7C20DE8();
      MEMORY[0x1B8CADCA0](v12);

      MEMORY[0x1B8CADCA0](0, 0xE000000000000000);

      sub_1B7AEBF70(&v50);
      v3 = v5;
      v56 = v5;
      v13 = *(v5 + 16);
      v14 = *(v3 + 24);
      if (v13 >= v14 >> 1)
      {
        sub_1B7AECEEC((v14 > 1), v13 + 1, 1);
        v3 = v56;
      }

      *(v3 + 16) = v13 + 1;
      v15 = v3 + 16 * v13;
      *(v15 + 32) = v47;
      *(v15 + 40) = v49;
      v4 += 136;
      --v2;
    }

    while (v2);
  }

  v16 = a1[5];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v41 = v3;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1B7AECEEC(0, v17, 0);
    v19 = 0;
    result = v48;
    v43 = v16 + 32;
    v44 = v17;
    v45 = v16;
    while (v19 < *(v16 + 16))
    {
      v46 = result;
      v21 = *(v43 + 8 * v19);
      v50 = 0x2820455551494E55;
      v51 = 0xE800000000000000;
      v22 = *(v21 + 16);
      if (v22)
      {

        sub_1B7AECEEC(0, v22, 0);
        v23 = v18;
        v24 = (v21 + 40);
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          v28 = *(v23 + 16);
          v27 = *(v23 + 24);

          if (v28 >= v27 >> 1)
          {
            sub_1B7AECEEC((v27 > 1), v28 + 1, 1);
          }

          *(v23 + 16) = v28 + 1;
          v29 = v23 + 16 * v28;
          *(v29 + 32) = v25;
          *(v29 + 40) = v26;
          v24 += 2;
          --v22;
        }

        while (v22);
        v18 = MEMORY[0x1E69E7CC0];
      }

      else
      {
      }

      sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
      sub_1B7AF7FAC();
      v30 = sub_1B7CFEA10();
      v32 = v31;

      MEMORY[0x1B8CADCA0](v30, v32);

      MEMORY[0x1B8CADCA0](41, 0xE100000000000000);

      v33 = v50;
      v34 = v51;
      result = v46;
      v36 = *(v46 + 16);
      v35 = *(v46 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1B7AECEEC((v35 > 1), v36 + 1, 1);
        result = v46;
      }

      ++v19;
      *(result + 16) = v36 + 1;
      v37 = result + 16 * v36;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      v16 = v45;
      if (v19 == v44)
      {
        v3 = v41;
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
LABEL_36:
    v50 = v3;
    sub_1B7C50BFC(result);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1B7CFF210();

    v50 = 0xD00000000000001BLL;
    v51 = 0x80000001B7D513A0;
    MEMORY[0x1B8CADCA0](a1[2], a1[3]);
    MEMORY[0x1B8CADCA0](10272, 0xE200000000000000);
    sub_1B7C107FC(&unk_1EBA525A0, "D\r\b");
    sub_1B7AF7FAC();
    v38 = sub_1B7CFEA10();
    v40 = v39;

    MEMORY[0x1B8CADCA0](v38, v40);

    MEMORY[0x1B8CADCA0](41, 0xE100000000000000);
    return v50;
  }

  return result;
}