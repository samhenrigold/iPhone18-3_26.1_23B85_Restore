BOOL sub_1B7B39380(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B3944C;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B39458;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT person_centric_id FROM handle where ID = ? and service = 'iMessage'", v5, v4);
}

const unsigned __int8 *sub_1B7B39458(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    IMDSqlOperationColumnByIndex(*(a1 + 40), 0, v3);
    result = IMDStringFromSqlColumn(v3);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t sub_1B7B394B0(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDHandleRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDHandleRecordGetIdentifier(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    return *(a1 + 16);
  }

  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Attempted to get record identifier for NULL handle record: %@", &v3, 0xCu);
  }

  return 0;
}

void sub_1B7B3958C(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

void sub_1B7B395F4(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const void *IMDHandleRecordCopyUncanonicalizedID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFD74(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1B7B39794;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 3);
  if (!ValueAtIndex)
  {
    return ValueAtIndex;
  }

  v4 = *MEMORY[0x1E69990F8];
  if (!*MEMORY[0x1E69990F8])
  {
    return ValueAtIndex;
  }

  return v4();
}

void sub_1B7B3977C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B39794(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const void *IMDHandleRecordCopyPersonCentricID(uint64_t a1, uint64_t a2)
{
  if (!a2 || (IMSharedHelperPersistMergeID() & 1) == 0)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFDEC(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  v3 = *(a2 + 24);
  if (!v3)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B39940;
    v15[3] = &unk_1E7CB7920;
    v15[4] = &v16;
    v15[5] = a2;
    _IMDPerformBlock(v15);
    ValueAtIndex = v17[3];
    _Block_object_dispose(&v16, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v3, 4);
  if (!ValueAtIndex)
  {
    return ValueAtIndex;
  }

  v5 = *MEMORY[0x1E69990F8];
  if (!*MEMORY[0x1E69990F8])
  {
    return ValueAtIndex;
  }

  return v5();
}

void sub_1B7B39928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B39940(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

void sub_1B7B399A8(uint64_t a1)
{
  v2 = IMDHandleRecordCopyHandleRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 72) && IMSharedHelperPersistMergeID())
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    CFRelease(v3);
  }
}

const void *_IMDCopyIMDHandleRecordFromXPCObjectServer(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  int64 = xpc_dictionary_get_int64(a1, "recordIdentifier");
  if (int64 < 1)
  {
    return 0;
  }

  return IMDHandleRecordCreateFromRecordIDUnlocked_0(0, int64);
}

xpc_object_t _IMDCopyXPCObjectFromIMDHandleRecordClient(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    return 0;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = 0;
  v4 = &off_1E7CB8330;
  do
  {
    if (CFArrayGetValueAtIndex(*(a1 + 24), v3))
    {
      IMInsertNSStringsToXPCDictionary();
    }

    ++v3;
    v4 += 5;
  }

  while (v3 != 5);
  v5 = *(a1 + 16);
  if (v5)
  {
    xpc_dictionary_set_int64(v2, "recordIdentifier", v5);
  }

  return v2;
}

id _IMDHandleRecordCopyHandlesFromRecords(void *a1)
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    v7 = objc_msgSend_count(a1, v4, v5, v6);
    v10 = objc_msgSend_initWithCapacity_(v3, v8, v7, v9);
    if (objc_msgSend_count(a1, v11, v12, v13))
    {
      v16 = 0;
      v17 = *MEMORY[0x1E695E480];
      do
      {
        objc_msgSend_objectAtIndex_(a1, v14, v16, v15);
        ID = CSDBRecordGetID();
        v19 = IMDHandleRecordCreateFromRecordIDUnlocked_0(v17, ID);
        if (v19)
        {
          v23 = v19;
          objc_msgSend_addObject_(v10, v20, v19, v22);
          CFRelease(v23);
        }

        ++v16;
      }

      while (v16 < objc_msgSend_count(a1, v20, v21, v22));
    }

    return v10;
  }

  else
  {
    v25 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v25);
  }
}

id _IMDHandleRecordCopyHandlesFromXPCArray(void *a1)
{
  if (a1)
  {
    v3 = objc_alloc(MEMORY[0x1E695DF70]);
    count = xpc_array_get_count(a1);
    v7 = objc_msgSend_initWithCapacity_(v3, v5, count, v6);
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B39D3C;
    applier[3] = &unk_1E7CB8400;
    applier[4] = v7;
    xpc_array_apply(a1, applier);
    return v7;
  }

  else
  {
    v9 = MEMORY[0x1E695DEC8];

    return objc_alloc_init(v9);
  }
}

uint64_t sub_1B7B39D3C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = _IMDCopyIMDHandleRecordFromXPCObjectClient(a3);
  if (v6)
  {
    v9 = v6;
    objc_msgSend_addObject_(*(a1 + 32), v7, v6, v8);
    CFRelease(v9);
  }

  objc_autoreleasePoolPop(v5);
  return 1;
}

BOOL IMDDeleteOrphanedHandles(void *a1)
{
  if (a1)
  {
    _IMDSqlOperationBeginQuery(a1, @"DELETE FROM handle WHERE ROWID IN (SELECT ROWID FROM handle h1 WHERE ((SELECT 1 from chat_handle_join WHERE handle_id = h1.ROWID LIMIT 1) IS NULL AND (SELECT 1 from message WHERE handle_id = h1.ROWID LIMIT 1) IS NULL AND (SELECT 1 from message WHERE other_handle = h1.ROWID LIMIT 1) IS NULL));");

    return IMDSqlOperationFinishQuery(a1);
  }

  else
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, &stru_1F2FA9728, v6);
    v10 = objc_msgSend_stringWithFormat_(v3, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", v9, @"op", "BOOL IMDDeleteOrphanedHandles(IMDSqlOperation *)", v4, 761, v7);
    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v12, v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFAB0(v10, v15, v16, v17, v18, v19, v20, v21);
      }
    }

    return 0;
  }
}

sqlite3_stmt **IMDFindOrphanedHandleRowIDs(uint64_t a1)
{
  result = _IMDSqlOperationGetRows(a1, @"SELECT ROWID FROM handle h1 WHERE ((SELECT 1 from chat_handle_join WHERE handle_id = h1.ROWID LIMIT 1) IS NULL AND (SELECT 1 from message WHERE handle_id = h1.ROWID LIMIT 1) IS NULL AND (SELECT 1 from message WHERE other_handle = h1.ROWID LIMIT 1) IS NULL);");
  if (*(a1 + 168))
  {

    return 0;
  }

  return result;
}

CFStringRef sub_1B7B39F1C(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<IMDHandleRecord %p [%p]>{}", a1, v3);
}

void sub_1B7B3A348(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_keyPathsToColumns(IMDMessageRecord, a2, a3, a4);
  v5 = MEMORY[0x1E695DF90];
  v9 = objc_msgSend_count(v4, v6, v7, v8);
  v12 = objc_msgSend_dictionaryWithCapacity_(v5, v10, v9, v11);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1B7B3A420;
  v21[3] = &unk_1E7CB8518;
  v22 = v12;
  v13 = v12;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v4, v14, v21, v15);
  v19 = objc_msgSend_copy(v13, v16, v17, v18);
  v20 = qword_1EBA53F18;
  qword_1EBA53F18 = v19;
}

void sub_1B7B3A420(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = objc_msgSend_stringByAppendingString_(@"message.", v6, a3, v7);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v8, v9, v5);
}

void sub_1B7B3A49C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_mutableCopy(qword_1EBA53F18, a2, a3, a4);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v4, @"chat_message_join.message_date", *MEMORY[0x1E69A7148]);
  v8 = objc_msgSend_copy(v10, v5, v6, v7);
  v9 = qword_1EBA53F28;
  qword_1EBA53F28 = v8;
}

void sub_1B7B3B000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B3B054(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (v6)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v6, a2, a4, a4);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v7, a2, a4, a4);
  }

  v8 = *(a1 + 48);
  if (v8)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v8, a2, a4, a4);
  }

  v9 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v9, v10, v11, v12);
  v18 = CSDBRecordStoreProcessStatement();
  v15 = objc_msgSend__copyMessageRecordsFromCoreSDBResults_(*(a1 + 56), v13, v18, v14);
  v16 = *(*(a1 + 64) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void sub_1B7B3B378(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  if (v7)
  {
    v10 = objc_msgSend_predicateWithFormat_(MEMORY[0x1E696AE18], a2, @"%K = %@", a4, *MEMORY[0x1E69A6B70], v7);
    objc_msgSend__fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_inChatsFilteredUsingPredicate_fromHandlesUsingPredicate_parentedOnly_limit_completionHandler_(v5, v9, v6, v8, v10, 0, 0, a1[9], a1[8]);
  }

  else
  {
    objc_msgSend__fetchMessageRecordsFilteredUsingPredicate_sortedUsingDescriptors_inChatsFilteredUsingPredicate_fromHandlesUsingPredicate_parentedOnly_limit_completionHandler_(v5, a2, v6, v8, 0, 0, 0, a1[9], a1[8]);
  }
}

void sub_1B7B3B888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B3B8AC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_bindParametersToSqliteWithStatement_(*(a1 + 32), a2, a4, a4);
  sub_1B7AEAEE4(v5, v6, v7, v8);
  v14 = CSDBRecordStoreProcessStatement();
  v11 = objc_msgSend__copyMessageRecordsFromCoreSDBResults_(*(a1 + 40), v9, v14, v10);
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1B7B3BC9C(uint64_t a1, const char *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend__messageKeyPathsToColumnsQueryingChatJoinTable_sortDescriptors_(*(a1 + 32), a2, *(a1 + 40) != 0, 0);
  if (*(a1 + 48))
  {
    v4 = [IMDPredicateToSQLConverter alloc];
    v6 = objc_msgSend_initWithPredicate_keyPathsToColumns_(v4, v5, *(a1 + 48), v3);
    if (!v6)
    {
      v7 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 48);
        *buf = 136315394;
        *&buf[4] = "[IMDDatabase(LegacyMessages) fetchMessageRecordCountFilteredUsingPredicate:inChatsFilteredUsingPredicate:limit:completionHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v8;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Bad message predicate provided to %s (%@)", buf, 0x16u);
      }

      v9 = *(a1 + 56);
      if (v9)
      {
        (*(v9 + 16))(v9, 0);
      }

      v6 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v6 = 0;
  }

  if (*(a1 + 40))
  {
    v10 = [IMDPredicateToSQLConverter alloc];
    v11 = *(a1 + 40);
    v15 = objc_msgSend_keyPathsToColumns(IMDChatRecord, v12, v13, v14);
    v17 = objc_msgSend_initWithPredicate_keyPathsToColumns_columnPrefix_(v10, v16, v11, v15, @"chat.");

    if (!v17)
    {
      v18 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 48);
        *buf = 136315394;
        *&buf[4] = "[IMDDatabase(LegacyMessages) fetchMessageRecordCountFilteredUsingPredicate:inChatsFilteredUsingPredicate:limit:completionHandler:]_block_invoke";
        *&buf[12] = 2112;
        *&buf[14] = v19;
        _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Bad chat predicate provided to %s (%@)", buf, 0x16u);
      }

      v20 = *(a1 + 56);
      if (v20)
      {
        (*(v20 + 16))(v20, 0);
      }

      goto LABEL_23;
    }
  }

  else
  {
    v17 = 0;
  }

  v21 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = @"YES";
    v23 = *(a1 + 40);
    if (!*(a1 + 48))
    {
      v22 = @"NO";
    }

    *buf = 138412546;
    *&buf[4] = v23;
    *&buf[12] = 2112;
    *&buf[14] = v22;
    _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_DEFAULT, "Counting messages for chat: %@ filtered by predicate: %@", buf, 0x16u);
  }

  v24 = *(a1 + 32);
  v28 = objc_msgSend_expression(v6, v25, v26, v27);
  v32 = objc_msgSend_expression(v17, v29, v30, v31);
  v34 = objc_msgSend__queryForMessageRecordCountWithMessageWhereClause_chatWhereClause_limit_(v24, v33, v28, v32, *(a1 + 64));

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v44 = 0;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = sub_1B7B3C06C;
  v38[3] = &unk_1E7CB8608;
  v35 = v17;
  v39 = v35;
  v6 = v6;
  v36 = *(a1 + 64);
  v41 = buf;
  v42 = v36;
  v40 = v6;
  _IMDPerformLockedStatementBlockWithQuery(v34, v38);
  v37 = *(a1 + 56);
  if (v37)
  {
    (*(v37 + 16))(v37, *(*&buf[8] + 24));
  }

  _Block_object_dispose(buf, 8);
LABEL_23:
}

void sub_1B7B3C04C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B3C06C(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[4];
  if (v6)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v6, a2, a4, a4);
  }

  v7 = a1[5];
  if (v7)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v7, a2, a4, a4);
  }

  if (a1[7])
  {
    CSDBSqliteBindInt64();
  }

  result = CSDBSqliteStatementIntegerResult();
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_1B7B3C404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v5, v6, v7, v8);
  v18 = CSDBRecordStoreProcessStatement();
  v11 = objc_msgSend__copyMessageRecordsFromCoreSDBResults_(*(a1 + 40), v9, v18, v10);
  v15 = objc_msgSend_firstObject(v11, v12, v13, v14);
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void sub_1B7B3C604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B3C61C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5 && objc_msgSend_length(v5, a2, a3, a4))
  {
    CSDBSqliteBindTextFromCFString();
  }

  v6 = CSDBSqliteBindInt64();
  sub_1B7AEAEE4(v6, v7, v8, v9);
  v15 = CSDBRecordStoreProcessStatement();
  v12 = objc_msgSend__copyMessageRecordsFromCoreSDBResults_(*(a1 + 40), v10, v15, v11);
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;
}

uint64_t sub_1B7B3C788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindTextFromCFString();
  v4 = CSDBSqliteBindTextFromCFString();
  sub_1B7AEAEE4(v4, v5, v6, v7);

  return CSDBRecordStoreProcessStatement();
}

uint64_t sub_1B7B3C928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = CSDBSqliteBindTextFromCFArrayOfCFStrings();
  sub_1B7AEAEE4(v4, v5, v6, v7);

  return CSDBRecordStoreProcessStatement();
}

uint64_t sub_1B7B3CA48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_now(MEMORY[0x1E695DF00], a2, a3, a4);
  objc_msgSend___im_nanosecondTimeInterval(v5, v6, v7, v8);
  CSDBSqliteBindInt64();

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(a1 + 32);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v9);
        }

        CSDBSqliteBindTextFromCFString();
        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v15, &v17, v21, 16);
    }

    while (v12);
  }

  return CSDBSqliteStatementPerform();
}

void sub_1B7B3D3C0(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B3D364);
  }

  _Unwind_Resume(a1);
}

void sub_1B7B3D3F4(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF02D0(a1, v3, v4, v5);
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = objc_msgSend_guid(*(a1 + 32), v7, v8, v9);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Updated syndication ranges for message: %@", &v11, 0xCu);
    }
  }
}

void sub_1B7B3FCB8(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_msgSend_allObjects(*(a1 + 32), v5, v6, v7);
    v12 = 134218242;
    v13 = objc_msgSend_count(v8, v9, v10, v11);
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Deleted %lu unique messages from indexing with error %@", &v12, 0x16u);
  }
}

BOOL sub_1B7B40688(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B40734;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B40734(uint64_t a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v5) = 67109120;
        DWORD1(v5) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in count chat messages query with index %d", &v5, 8u);
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    *(*(*(a1 + 32) + 8) + 24) = IMDInt64FromSqlColumn(&v5);
  }
}

BOOL sub_1B7B40D68(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B40E14;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B40E14(uint64_t a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v5) = 67109120;
        DWORD1(v5) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in count chat messages query with index %d", &v5, 8u);
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    *(*(*(a1 + 32) + 8) + 24) = IMDInt64FromSqlColumn(&v5);
  }
}

BOOL sub_1B7B410BC(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B41168;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B41168(uint64_t a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v5) = 67109120;
        DWORD1(v5) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in count chat messages query with index %d", &v5, 8u);
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    *(*(*(a1 + 32) + 8) + 24) = IMDInt64FromSqlColumn(&v5);
  }
}

void sub_1B7B414A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B414C8(void *a1, void *a2)
{
  v3 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B41590;
  v7[3] = &unk_1E7CB75B0;
  v4 = a1[6];
  v7[4] = a2;
  v7[5] = v4;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B4159C;
  v6[3] = &unk_1E7CB7920;
  v6[4] = a1[5];
  v6[5] = a2;
  return _IMDSqlOperationRunQuery(a2, v3, v7, v6);
}

BOOL sub_1B7B4159C(uint64_t a1)
{
  v87 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v43 = MEMORY[0x1E69E9820];
    *&v3 = 138413314;
    v42 = v3;
    do
    {
      v69 = 0;
      v70 = &v69;
      v71 = 0x3032000000;
      v72 = sub_1B7AE1954;
      v73 = sub_1B7AE24B0;
      v74 = 0;
      v65 = 0;
      v66 = &v65;
      v67 = 0x2020000000;
      v68 = -1;
      v59 = 0;
      v60 = &v59;
      v61 = 0x3032000000;
      v62 = sub_1B7AE1954;
      v63 = sub_1B7AE24B0;
      v64 = 0;
      v55 = 0;
      v56 = &v55;
      v57 = 0x2020000000;
      v58 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      v54 = 0x7FFFFFFFFFFFFFFFLL;
      v45 = 0;
      v46 = &v45;
      v47 = 0x3032000000;
      v48 = sub_1B7AE1954;
      v49 = sub_1B7AE24B0;
      v50 = 0;
      v4 = *(a1 + 40);
      v44[0] = v43;
      v44[1] = 3221225472;
      v44[2] = sub_1B7B41AE8;
      v44[3] = &unk_1E7CB86A8;
      v44[4] = &v69;
      v44[5] = &v65;
      v44[6] = &v59;
      v44[7] = &v55;
      v44[8] = &v51;
      v44[9] = &v45;
      IMDSqlOperationIterateRow(v4, v44);
      if (objc_msgSend_length(v70[5], v5, v6, v7) && v66[3] != -1 && objc_msgSend_length(v60[5], v8, v9, v10) && v56[3] && v52[3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        v76[0] = v70[5];
        v75[0] = @"chatGUID";
        v75[1] = @"messageRowID";
        v25 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v11, v66[3], v12);
        v26 = v60[5];
        v76[1] = v25;
        v76[2] = v26;
        v75[2] = @"messageGUID";
        v75[3] = @"deleteDateInterval";
        v29 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v27, v56[3], v28);
        v76[3] = v29;
        v75[4] = @"partIndex";
        v32 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v30, v52[3], v31);
        v76[4] = v32;
        v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v33, v76, v75, 5);
        v13 = objc_msgSend_mutableCopy(v34, v35, v36, v37);

        if (v46[5])
        {
          v40 = JWDecodeCodableObjectWithStandardAllowlist();
          objc_msgSend_setObject_forKeyedSubscript_(v13, v41, v40, @"partBody");
        }

        objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v38, v13, v39, v42);
      }

      else
      {
        v13 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v70[5];
          v17 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v14, v66[3], v15);
          v18 = v60[5];
          v21 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v19, v56[3], v20);
          v24 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v22, v52[3], v23);
          *buf = v42;
          v78 = v16;
          v79 = 2112;
          v80 = v17;
          v81 = 2112;
          v82 = v18;
          v83 = 2112;
          v84 = v21;
          v85 = 2112;
          v86 = v24;
          _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Error in column values returned: %@|%@|%@|%@|%@", buf, 0x34u);
        }
      }

      _Block_object_dispose(&v45, 8);
      _Block_object_dispose(&v51, 8);
      _Block_object_dispose(&v55, 8);
      _Block_object_dispose(&v59, 8);

      _Block_object_dispose(&v65, 8);
      _Block_object_dispose(&v69, 8);

      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B41A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B41AE8(void *a1, __int128 *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v18 = *a2;
        v19 = *(a2 + 2);
        v14 = IMDInt64FromSqlColumn(&v18);
        v15 = a1[7];
        break;
      case 4:
        v18 = *a2;
        v19 = *(a2 + 2);
        v14 = IMDInt64FromSqlColumn(&v18);
        v15 = a1[8];
        break;
      case 5:
        v18 = *a2;
        v19 = *(a2 + 2);
        v8 = IMDBlobFromSqlColumn(&v18);
        v9 = *(a1[9] + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        return;
      default:
        goto LABEL_12;
    }

LABEL_18:
    *(*(v15 + 8) + 24) = v14;
    return;
  }

  switch(v4)
  {
    case 0:
      v18 = *a2;
      v19 = *(a2 + 2);
      v11 = IMDStringFromSqlColumn(&v18);
      v12 = *(a1[4] + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      return;
    case 1:
      v18 = *a2;
      v19 = *(a2 + 2);
      v14 = IMDInt64FromSqlColumn(&v18);
      v15 = a1[5];
      goto LABEL_18;
    case 2:
      v18 = *a2;
      v19 = *(a2 + 2);
      v5 = IMDStringFromSqlColumn(&v18);
      v6 = *(a1[6] + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      return;
  }

LABEL_12:
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a2 + 4);
      LODWORD(v18) = 67109120;
      DWORD1(v18) = v17;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Recently Deleted | Unexpected column in messages pending update query with index %d", &v18, 8u);
    }
  }
}

void sub_1B7B41EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B41F20(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B41FEC;
  v5[3] = &unk_1E7CB75B0;
  v2 = *(a1 + 40);
  v5[4] = a2;
  v5[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1B7B41FF8;
  v4[3] = &unk_1E7CB7920;
  v4[4] = *(a1 + 32);
  v4[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT urrm.chat_guid, urrm.message_guid, urrm.part_index FROM unsynced_removed_recoverable_messages AS urrm LIMIT ?;", v5, v4);
}

BOOL sub_1B7B41FF8(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = sub_1B7AE1954;
    v4 = sub_1B7AE24B0;
    v5 = MEMORY[0x1E69E9820];
    do
    {
      v41 = 0;
      v42 = &v41;
      v43 = 0x3032000000;
      v44 = v3;
      v45 = v4;
      v46 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = sub_1B7AE1954;
      v39 = sub_1B7AE24B0;
      v40 = 0;
      v31 = 0;
      v32 = &v31;
      v33 = 0x2020000000;
      v34 = 0x7FFFFFFFFFFFFFFFLL;
      v6 = *(a1 + 40);
      v30[0] = v5;
      v30[1] = 3221225472;
      v30[2] = sub_1B7B42380;
      v30[3] = &unk_1E7CB86F8;
      v30[4] = &v41;
      v30[5] = &v35;
      v30[6] = &v31;
      IMDSqlOperationIterateRow(v6, v30);
      if (objc_msgSend_length(v42[5], v7, v8, v9) && objc_msgSend_length(v36[5], v10, v11, v12) && (v15 = v32[3], v15 != 0x7FFFFFFFFFFFFFFFLL))
      {
        v24 = v42[5];
        v47[0] = @"chatGUID";
        v47[1] = @"messageGUID";
        v25 = v36[5];
        v48[0] = v24;
        v48[1] = v25;
        v47[2] = @"partIndex";
        v26 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v13, v15, v14);
        v48[2] = v26;
        v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v27, v48, v47, 3);

        objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v28, v16, v29);
      }

      else
      {
        v16 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v4;
          v20 = v3;
          v21 = v42[5];
          v22 = v36[5];
          v23 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v17, v32[3], v18);
          *buf = 138412802;
          v50 = v21;
          v51 = 2112;
          v52 = v22;
          v53 = 2112;
          v54 = v23;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_DEFAULT, "Error in column values returned: %@|%@|%@", buf, 0x20u);

          v3 = v20;
          v4 = v19;
        }
      }

      _Block_object_dispose(&v31, 8);
      _Block_object_dispose(&v35, 8);

      _Block_object_dispose(&v41, 8);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B4233C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B42380(void *a1, __int128 *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 4);
  if (v4 == 2)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    *(*(a1[6] + 8) + 24) = IMDInt64FromSqlColumn(&v13);
  }

  else if (v4 == 1)
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    v8 = IMDStringFromSqlColumn(&v13);
    v9 = *(a1[5] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a2 + 4);
        LODWORD(v13) = 67109120;
        DWORD1(v13) = v12;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Recently Deleted | Unexpected column in messages pending delete query with index %d", &v13, 8u);
      }
    }
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v13);
    v6 = *(a1[4] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void sub_1B7B43200(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Recently Deleted | Deleted %@ from index with error %@", &v6, 0x16u);
  }
}

void sub_1B7B438BC(uint64_t a1)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2020000000;
  v3[3] = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1B7B43988;
  v2[3] = &unk_1E7CB8720;
  v2[4] = v3;
  IMDRunSqlOperation(v2);
  (*(*(a1 + 32) + 16))();
  _Block_object_dispose(v3, 8);
}

void sub_1B7B43970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B43988(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B43A10;
  v3[3] = &unk_1E7CB7920;
  v3[4] = *(a1 + 32);
  v3[5] = a2;
  return _IMDSqlOperationRunQuery(a2, @"SELECT COUNT(1) FROM message m INDEXED BY message_idx_isRead_isFromMe_itemType  INNER JOIN chat_message_join cm ON cm.message_id = m.rowid  INNER JOIN chat c ON c.ROWID = cm.chat_id  WHERE m.is_read == 0  AND m.is_finished == 1  AND m.is_from_me == 0  AND m.item_type == 0  AND m.is_system_message == 0  AND c.is_filtered != 2  ORDER BY m.ROWID DESC;", 0, v3);
}

BOOL sub_1B7B43A10(uint64_t a1)
{
  result = IMDSqlOperationHasRows(*(a1 + 40));
  if (result)
  {
    v3 = MEMORY[0x1E69E9820];
    do
    {
      v5[0] = v3;
      v5[1] = 3221225472;
      v5[2] = sub_1B7B43ABC;
      v5[3] = &unk_1E7CB78F8;
      v4 = *(a1 + 40);
      v5[4] = *(a1 + 32);
      IMDSqlOperationIterateRow(v4, v5);
      result = IMDSqlOperationHasRows(*(a1 + 40));
    }

    while (result);
  }

  return result;
}

void sub_1B7B43ABC(uint64_t a1, __int128 *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a2 + 4))
  {
    if (IMOSLoggingEnabled())
    {
      v3 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = *(a2 + 4);
        LODWORD(v5) = 67109120;
        DWORD1(v5) = v4;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Unexpected column in count chat messages query with index %d", &v5, 8u);
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = *(a2 + 2);
    *(*(*(a1 + 32) + 8) + 24) = IMDInt64FromSqlColumn(&v5);
  }
}

void sub_1B7B43CDC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

void sub_1B7B43FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id IMDAttachmentRecordGetAttachmentDiagnosticInfo()
{
  v19 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v3 = objc_msgSend_array(MEMORY[0x1E695DF70], v0, v1, v2);
    memset(v16, 0, sizeof(v16));
    IMDSqlOperationInitWithSharedCSDBDatabase(v16);
    _IMDSqlOperationBeginQuery(v16, @"SELECT guid, original_guid, uti, filename, total_bytes, ck_sync_state, transfer_state, hide_attachment, is_sticker, mime_type, attribution_info FROM attachment;");
    while (IMDSqlOperationHasRows(v16))
    {
      v4 = objc_alloc_init(IMDAttachmentDiagnosticInfo);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = sub_1B7B44854;
      v14[3] = &unk_1E7CB87C0;
      v15 = v4;
      v5 = v4;
      IMDSqlOperationIterateRow(v16, v14);
      objc_msgSend_addObject_(v3, v6, v5, v7);
    }

    IMDSqlOperationFinishQuery(v16);
    IMDSqlOperationRelease(v16, 0);
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_count(v3, v9, v10, v11);
      *buf = 134217984;
      v18 = v12;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Loaded %ld IMDAttachment info objects from database", buf, 0xCu);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1B7B44854(uint64_t a1, __int128 *a2)
{
  v3 = *(a2 + 4);
  if (v3 <= 4)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        if (v3 != 1)
        {
          return;
        }

        v40 = *a2;
        v41 = *(a2 + 2);
        v10 = IMDStringFromSqlColumn(&v40);
        objc_msgSend_setOriginalGUID_(*(a1 + 32), v18, v10, v19);
      }

      else
      {
        v40 = *a2;
        v41 = *(a2 + 2);
        v10 = IMDStringFromSqlColumn(&v40);
        objc_msgSend_setGuid_(*(a1 + 32), v20, v10, v21);
      }

      goto LABEL_25;
    }

    if (v3 == 2)
    {
      v40 = *a2;
      v41 = *(a2 + 2);
      v10 = IMDStringFromSqlColumn(&v40);
      objc_msgSend_setUti_(*(a1 + 32), v32, v10, v33);
      goto LABEL_25;
    }

    if (v3 != 3)
    {
      v40 = *a2;
      v41 = *(a2 + 2);
      v7 = IMDInt64FromSqlColumn(&v40);
      objc_msgSend_setTotal_bytes_(*(a1 + 32), v8, v7, v9);
      return;
    }

    v40 = *a2;
    v41 = *(a2 + 2);
    v10 = IMDStringFromSqlColumn(&v40);
    v14 = objc_msgSend_stringByExpandingTildeInPath(v10, v22, v23, v24);
    objc_msgSend_setFilePath_(*(a1 + 32), v25, v14, v26);
    goto LABEL_21;
  }

  if (v3 > 7)
  {
    if (v3 == 8)
    {
      v40 = *a2;
      v41 = *(a2 + 2);
      v37 = IMDInt64FromSqlColumn(&v40);
      objc_msgSend_setIs_sticker_(*(a1 + 32), v38, v37, v39);
      return;
    }

    if (v3 == 9)
    {
      v40 = *a2;
      v41 = *(a2 + 2);
      v10 = IMDStringFromSqlColumn(&v40);
      objc_msgSend_setMime_type_(*(a1 + 32), v30, v10, v31);
      goto LABEL_25;
    }

    if (v3 != 10)
    {
      return;
    }

    v40 = *a2;
    v41 = *(a2 + 2);
    v10 = IMDBlobFromSqlColumn(&v40);
    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = JWDecodeDictionary();
    v14 = v11;
    if (v11)
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(v11, v12, *MEMORY[0x1E69A6FB0], v13);
      objc_msgSend_setPlugin_identifier_(*(a1 + 32), v16, v15, v17);
    }

LABEL_21:

LABEL_25:
    return;
  }

  if (v3 == 5)
  {
    v40 = *a2;
    v41 = *(a2 + 2);
    v34 = IMDInt64FromSqlColumn(&v40);
    objc_msgSend_setCk_sync_state_(*(a1 + 32), v35, v34, v36);
  }

  else
  {
    v40 = *a2;
    v41 = *(a2 + 2);
    if (v3 == 6)
    {
      v27 = IMDInt64FromSqlColumn(&v40);
      objc_msgSend_setTransfer_state_(*(a1 + 32), v28, v27, v29);
    }

    else
    {
      v4 = IMDInt64FromSqlColumn(&v40);
      objc_msgSend_setHide_attachment_(*(a1 + 32), v5, v4, v6);
    }
  }
}

uint64_t IMDDatabaseTriggers(uint64_t a1, uint64_t a2)
{
  if (qword_1EDBE6318[0] != -1)
  {
    sub_1B7CF1734();
  }

  return qword_1EDBE6310;
}

BOOL IMDDropAllTriggersWithOperation(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1B7B44DC0;
  v27[3] = &unk_1E7CB6FD0;
  v27[4] = v6;
  v27[5] = a1;
  _IMDSqlOperationRunQuery(a1, @"SELECT name FROM sqlite_master WHERE type = 'trigger'", 0, v27);
  if (!a1[21])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v23, v32, 16);
    if (v9)
    {
      v12 = v9;
      v13 = *v24;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v6);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v10, @"DROP TRIGGER IF EXISTS %@", v11, v15);
          if (!_IMDSqlOperationRunQuery(a1, v16, 0, 0))
          {
            v18 = IMLogHandleForCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v22 = IMDSqlOperationErrorDescription(a1, v19, v20, v21);
              *buf = 138412546;
              v29 = v15;
              v30 = 2112;
              v31 = v22;
              _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Dropped trigger failed: %@: %@", buf, 0x16u);
            }

            return a1[21] == 0;
          }

          if (v4)
          {
            v17 = IMLogHandleForCategory();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v29 = v15;
              _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Dropped trigger: %@", buf, 0xCu);
            }
          }
        }

        v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, &v23, v32, 16);
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  return a1[21] == 0;
}

BOOL sub_1B7B44DC0(uint64_t a1)
{
  for (result = IMDSqlOperationHasRows(*(a1 + 40)); result; result = IMDSqlOperationHasRows(*(a1 + 40)))
  {
    IMDSqlOperationColumnByIndex(*(a1 + 40), 0, v6);
    v3 = IMDStringFromSqlColumn(v6);
    objc_msgSend_addObject_(*(a1 + 32), v4, v3, v5);
    if (v3)
    {
      CFRelease(v3);
    }
  }

  return result;
}

BOOL IMDDropAllTriggers(uint64_t a1, char a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B44EA4;
  v3[3] = &unk_1E7CB8940;
  v4 = a2;
  v3[4] = a1;
  return IMDRunSqlOperation(v3);
}

uint64_t sub_1B7B44EA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  IMDDropAllTriggersWithOperation(a2, *(a1 + 40), a3, a4);
  v6 = *(a1 + 32);

  return IMDSqlOperationGetError(a2, v6);
}

uint64_t IMDSelectAllTriggers(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = sub_1B7AE1974;
  v12 = sub_1B7AE24C0;
  v13 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3, a4);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B44FE0;
  v7[3] = &unk_1E7CB7948;
  v7[4] = &v8;
  v7[5] = a1;
  IMDRunSqlOperation(v7);
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_1B7B44FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B44FE0(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1B7B450A4;
  v5[3] = &unk_1E7CB7920;
  v5[4] = *(a1 + 32);
  v5[5] = a2;
  _IMDSqlOperationRunQuery(a2, @"select * from sqlite_master where type = 'trigger'", 0, v5);
  CFRelease(@"select * from sqlite_master where type = 'trigger'");
  result = IMDSqlOperationGetError(a2, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 40) = 0;
  }

  return result;
}

BOOL sub_1B7B450A4(uint64_t a1)
{
  for (result = IMDSqlOperationHasRows(*(a1 + 40)); result; result = IMDSqlOperationHasRows(*(a1 + 40)))
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v3, v4, v5);
    v7 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1B7B45174;
    v10[3] = &unk_1E7CB6FA8;
    v10[4] = v6;
    IMDSqlOperationIterateRow(v7, v10);
    objc_msgSend_addObject_(*(*(*(a1 + 32) + 8) + 40), v8, v6, v9);
  }

  return result;
}

void sub_1B7B45174(uint64_t a1, __int128 *a2)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  v5 = IMDStringFromSqlColumn(&v14);
  v6 = *(a1 + 32);
  v7 = MEMORY[0x1E696AEC0];
  v8 = *(a2 + 1);
  if (v8)
  {
    goto LABEL_5;
  }

  v9 = **a2;
  if (!v9)
  {
    v8 = 0;
LABEL_5:
    v12 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v4, v8, 4);
    goto LABEL_6;
  }

  v10 = sqlite3_column_name(v9, *(a2 + 4));
  *(a2 + 1) = v10;
  v12 = objc_msgSend_stringWithCString_encoding_(v7, v11, v10, 4);
LABEL_6:
  objc_msgSend_setObject_forKey_(v6, v13, v5, v12);
  CFRelease(v5);
}

BOOL IMDDropTriggersWithTriggerNames(void *a1, int a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v47 = xmmword_1E7CB8988;
    v48 = *off_1E7CB8998;
    v3 = MEMORY[0x1E696AEC0];
    v4 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, &stru_1F2FA9728, v6);
    v10 = objc_msgSend_stringWithFormat_(v3, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", v9, @"names", "BOOL IMDDropTriggersWithTriggerNames(NSArray *, BOOL)", v4, 204, v7);
    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v12, v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFAB0(v10, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase(&v47);
  IMDSqlOperationBeginTransaction(&v47);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v22, &v43, v62, 16);
  if (v23)
  {
    v24 = v23;
    v25 = *v44;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(a1);
        }

        v27 = *(*(&v43 + 1) + 8 * i);
        v28 = objc_alloc(MEMORY[0x1E696AEC0]);
        v31 = objc_msgSend_initWithFormat_(v28, v29, @"DROP TRIGGER IF EXISTS %@", v30, v27);
        _IMDSqlOperationBeginQuery(&v47, v31);

        IMDSqlOperationFinishQuery(&v47);
        if (*(&v57 + 1))
        {
          v33 = IMLogHandleForCategory();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            continue;
          }

          v36 = IMDSqlOperationErrorDescription(&v47, v32, v34, v35);
          *buf = 138412546;
          v59 = v27;
          v60 = 2112;
          v61 = v36;
          v37 = v33;
          v38 = "dropping trigger failed: %@: %@";
          v39 = 22;
          goto LABEL_17;
        }

        if (a2)
        {
          v40 = IMLogHandleForCategory();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v59 = v27;
            v37 = v40;
            v38 = "dropped trigger ok: %@";
            v39 = 12;
LABEL_17:
            _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, v38, buf, v39);
            continue;
          }
        }
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v32, &v43, v62, 16);
    }

    while (v24);
  }

  IMDSqlOperationCommitOrRevertTransaction(&v47);
  return IMDSqlOperationRelease(&v47, 0);
}

BOOL IMDCreateTriggersWithTriggerNames(void *a1, int a2)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v47 = xmmword_1E7CB89B0;
    v48 = *off_1E7CB89C0;
    v3 = MEMORY[0x1E696AEC0];
    v4 = IMFileLocationTrimFileName();
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v5, &stru_1F2FA9728, v6);
    v10 = objc_msgSend_stringWithFormat_(v3, v8, @"Unexpected nil '%@' in %s at %s:%d. %@", v9, @"names", "BOOL IMDCreateTriggersWithTriggerNames(NSArray *, BOOL)", v4, 231, v7);
    v11 = IMGetAssertionFailureHandler();
    if (v11)
    {
      v11(v10);
    }

    else
    {
      v15 = objc_msgSend_warning(MEMORY[0x1E69A6138], v12, v13, v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEFAB0(v10, v15, v16, v17, v18, v19, v20, v21);
      }
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase(&v47);
  IMDSqlOperationBeginTransaction(&v47);
  if (qword_1EDBE6318[0] != -1)
  {
    sub_1B7AE94E0();
  }

  v23 = qword_1EDBE6310;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v22, &v43, v66, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v44;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(a1);
        }

        v30 = *(*(&v43 + 1) + 8 * i);
        v31 = objc_msgSend_objectForKey_(v23, v25, v30, v26);
        if (v31)
        {
          v32 = v31;
          _IMDSqlOperationBeginQuery(&v47, v31);
          IMDSqlOperationFinishQuery(&v47);
          if (*(&v57 + 1))
          {
            v33 = IMLogHandleForCategory();
            if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
            {
              continue;
            }

            v35 = IMDSqlOperationErrorDescription(&v47, v25, v34, v26);
            *buf = 138412546;
            v59 = v30;
            v60 = 2112;
            v61 = v35;
            v36 = v33;
            v37 = "Create trigger failed: %@: %@";
            goto LABEL_22;
          }

          if (a2)
          {
            v40 = IMLogHandleForCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v59 = v30;
              v60 = 2112;
              v61 = v32;
              v36 = v40;
              v37 = "Created trigger ok: %@ trigger %@";
LABEL_22:
              _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, v37, buf, 0x16u);
              continue;
            }
          }
        }

        else
        {
          v38 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, &stru_1F2FA9728, v26);
            *buf = 136315906;
            v59 = "sql";
            v60 = 2080;
            v61 = "BOOL IMDCreateTriggersWithTriggerNames(NSArray *, BOOL)";
            v62 = 1024;
            v63 = 240;
            v64 = 2112;
            v65 = v39;
            _os_log_error_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", buf, 0x26u);
          }
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(a1, v25, &v43, v66, 16);
    }

    while (v27);
  }

  IMDSqlOperationCommitOrRevertTransaction(&v47);
  return IMDSqlOperationRelease(&v47, 0);
}

id IMDGetTimeStampedFilePath(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!v3)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728, v8);
    v12 = objc_msgSend_stringWithFormat_(v5, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", v11, @"path", "NSString *IMDGetTimeStampedFilePath(NSString *__strong, NSString *__strong)", v6, 31, v9);

    v13 = IMGetAssertionFailureHandler();
    if (v13)
    {
      v13(v12);
    }

    else
    {
      v17 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v18 = objc_alloc_init(MEMORY[0x1E696AB78]);
  objc_msgSend_setDateFormat_(v18, v19, @"yyMMdd-HHmmss", v20);
  v24 = objc_msgSend_pathExtension(v3, v21, v22, v23);
  v28 = objc_msgSend_stringByDeletingPathExtension(v3, v25, v26, v27);
  v32 = objc_msgSend_date(MEMORY[0x1E695DF00], v29, v30, v31);
  v35 = objc_msgSend_stringFromDate_(v18, v33, v32, v34);

  if (v4)
  {
    objc_msgSend_stringByAppendingFormat_(v28, v36, @"-%@-%@.%@", v37, v4, v35, v24);
  }

  else
  {
    objc_msgSend_stringByAppendingFormat_(v28, v36, @"-%@.%@", v37, v35, v24, v40);
  }
  v38 = ;

  return v38;
}

id IMDGetDestinationFilePath(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v10 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = IMFileLocationTrimFileName();
  v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, &stru_1F2FA9728, v14);
  v18 = objc_msgSend_stringWithFormat_(v11, v16, @"Unexpected nil '%@' in %s at %s:%d. %@", v17, @"originalPath", "NSString *IMDGetDestinationFilePath(NSString *__strong, NSString *__strong, NSString *__strong)", v12, 47, v15);

  v19 = IMGetAssertionFailureHandler();
  if (v19)
  {
    v19(v18);
  }

  else
  {
    v23 = objc_msgSend_warning(MEMORY[0x1E69A6138], v20, v21, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

  if (!v6)
  {
LABEL_10:
    v24 = MEMORY[0x1E696AEC0];
    v25 = IMFileLocationTrimFileName();
    v28 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, &stru_1F2FA9728, v27);
    v31 = objc_msgSend_stringWithFormat_(v24, v29, @"Unexpected nil '%@' in %s at %s:%d. %@", v30, @"destFolder", "NSString *IMDGetDestinationFilePath(NSString *__strong, NSString *__strong, NSString *__strong)", v25, 48, v28);

    v32 = IMGetAssertionFailureHandler();
    if (v32)
    {
      v32(v31);
    }

    else
    {
      v36 = objc_msgSend_warning(MEMORY[0x1E69A6138], v33, v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

LABEL_16:
  v37 = objc_msgSend_lastPathComponent(v5, v7, v8, v9);
  if (!v37)
  {
    v38 = MEMORY[0x1E696AEC0];
    v39 = IMFileLocationTrimFileName();
    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v40, &stru_1F2FA9728, v41);
    v45 = objc_msgSend_stringWithFormat_(v38, v43, @"Unexpected nil '%@' in %s at %s:%d. %@", v44, @"fileName", "NSString *IMDGetDestinationFilePath(NSString *__strong, NSString *__strong, NSString *__strong)", v39, 51, v42);

    v46 = IMGetAssertionFailureHandler();
    if (v46)
    {
      v46(v45);
    }

    else
    {
      v50 = objc_msgSend_warning(MEMORY[0x1E69A6138], v47, v48, v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  v53 = IMDGetTimeStampedFilePath(v37, v10);
  if (v53)
  {
    v54 = objc_msgSend_stringByAppendingPathComponent_(v6, v51, v53, v52);
  }

  else
  {
    v55 = MEMORY[0x1E696AEC0];
    v56 = IMFileLocationTrimFileName();
    v59 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v57, &stru_1F2FA9728, v58);
    v62 = objc_msgSend_stringWithFormat_(v55, v60, @"Unexpected nil '%@' in %s at %s:%d. %@", v61, @"newFileName", "NSString *IMDGetDestinationFilePath(NSString *__strong, NSString *__strong, NSString *__strong)", v56, 54, v59);

    v63 = IMGetAssertionFailureHandler();
    if (v63)
    {
      v63(v62);
    }

    else
    {
      v67 = objc_msgSend_warning(MEMORY[0x1E69A6138], v64, v65, v66);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    v54 = 0;
  }

  return v54;
}

void IMDRegisterReconnectBlockWithIdentifier(void *a1, uint64_t a2)
{
  v7 = a1;
  v2 = IMDIsRunningInDatabaseServerProcess();
  if (v2)
  {
    IMDSMSRecordStoreUseProtectedDatabase(v2, v3, v4, v5);
    v6 = IMDSMSRecordStoreCopySMSDBPathWithCreate(0);
    CSDBRegisterReconnectBlockWithIdentifier();
  }
}

uint64_t IMDDeregisterReconnectBlockWithIdentifier(uint64_t a1)
{
  result = IMDIsRunningInDatabaseServerProcess();
  if (result)
  {

    return MEMORY[0x1EEE00240](a1);
  }

  return result;
}

id IMDGetDatabasePath(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  IMDSMSRecordStoreUseProtectedDatabase(a1, a2, a3, a4);
  v4 = IMDSMSRecordStoreCopySMSDBPathWithCreate(1);
  if (!v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = IMFileLocationTrimFileName();
    v9 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, &stru_1F2FA9728, v8);
    v12 = objc_msgSend_stringWithFormat_(v5, v10, @"Unexpected nil '%@' in %s at %s:%d. %@", v11, @"originalPath", "NSString *IMDGetDatabasePath(void)", v6, 74, v9);

    v13 = IMGetAssertionFailureHandler();
    if (v13)
    {
      v13(v12);
    }

    else
    {
      v17 = objc_msgSend_warning(MEMORY[0x1E69A6138], v14, v15, v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  return v4;
}

id IMDGetDefaultTrimmedDatabaseFolderPath(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = IMDGetDatabasePath(a1, a2, a3, a4);
  v8 = objc_msgSend_stringByDeletingLastPathComponent(v4, v5, v6, v7);

  return v8;
}

id IMDGetDefaultTrimmedDatabaseFilePath(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = IMDGetDatabasePath(a1, a2, a3, a4);
  v8 = IMDGetDefaultTrimmedDatabaseFolderPath(v4, v5, v6, v7);
  v9 = IMDGetDestinationFilePath(v4, v8, @"trimmed");

  return v9;
}

uint64_t IMDTrimDatabaseToDays(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [IMTrimDatabaseToDays alloc];
  v11 = objc_msgSend_initWithSourceDatabasePath_destinationDatabasePath_newerThanDays_(v9, v10, v8, v7, a3);

  v12 = sub_1B7B46214(v11, a4);
  return v12;
}

uint64_t sub_1B7B46214(void *a1, void *a2)
{
  v5 = a1;
  if (!v5)
  {
    v22 = xmmword_1E7CB8AC8;
    v23 = *off_1E7CB8AD8;
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728, v9);
    v13 = objc_msgSend_stringWithFormat_(v6, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", v12, @"copier", "BOOL _IMDArchiveDatabase(IMAbstractDatabaseArchiver *__strong, NSError *__autoreleasing *)", v7, 79, v10);

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      v18 = objc_msgSend_warning(MEMORY[0x1E69A6138], v15, v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  *&v22 = 0;
  *(&v22 + 1) = &v22;
  *&v23 = 0x3032000000;
  *(&v23 + 1) = sub_1B7AE1984;
  v24 = sub_1B7AE24CC;
  v25 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1B7B46E28;
  v21[3] = &unk_1E7CB66D8;
  v21[4] = &v22;
  v19 = objc_msgSend_copyDatabase_(v5, v3, v21, v4);
  if (a2)
  {
    *a2 = *(*(&v22 + 1) + 40);
  }

  _Block_object_dispose(&v22, 8);

  return v19;
}

void sub_1B7B463EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t IMDTrimDatabaseToMessageCount(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a1;
  v9 = [IMTrimDatabaseToMessageCount alloc];
  v11 = objc_msgSend_initWithSourceDatabasePath_destinationDatabasePath_messageCount_(v9, v10, v8, v7, a3);

  v12 = sub_1B7B46214(v11, a4);
  return v12;
}

uint64_t IMDTrimSharedDatabaseToDays(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = IMDIsRunningInDatabaseServerProcess();
  if (v6)
  {
    v10 = IMDGetDatabasePath(v6, v7, v8, v9);
    v11 = IMDTrimDatabaseToDays(v10, v5, a2, a3);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7B465A0;
    v13[3] = &unk_1E7CB6838;
    v13[4] = &v14;
    __syncXPCIMDSplitDatabaseByDays_IPCAction(v13, a2);
    v11 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  return v11 & 1;
}

void sub_1B7B46588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B465A0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDTrimSharedDatabaseToMessageCount(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = IMDIsRunningInDatabaseServerProcess();
  if (v6)
  {
    v10 = IMDGetDatabasePath(v6, v7, v8, v9);
    v11 = IMDTrimDatabaseToMessageCount(v10, v5, a2, a3);
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7B466F0;
    v13[3] = &unk_1E7CB6838;
    v13[4] = &v14;
    __syncXPCIMDSplitDatabaseByRecentCount_IPCAction(v13, a2);
    v11 = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  return v11 & 1;
}

void sub_1B7B466D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1B7B466F0(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void IMDSwitchToDatabase(void *a1)
{
  v1 = a1;
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v3 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Tried to change DB on non gizmo device. This is not supported!!", v3, 2u);
    }
  }
}

uint64_t IMDDowngradeDatabaseToVersion(void *a1, void *a2, unint64_t a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "QuickSwitch about to downgrade database at path %@ to %@", buf, 0x16u);
  }

  SchemaVersion = IMDSMSRecordStoreGetSchemaVersion();
  v11 = a3 > 9005 && SchemaVersion > a3;
  v12 = v11;
  if (v11)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13 = [IMDWhitetailToCoralDowngrader alloc];
      v15 = objc_msgSend_initWithSourceDatabasePath_destinationDatabasePath_(v13, v14, v7, v8);
      v16 = sub_1B7B46214(v15, a4);
      *(v25 + 24) = v16;
    }

    else
    {
      v19 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Quickswitch Downgrade Sending XPC now...", buf, 2u);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v29 = sub_1B7AE1984;
      v30 = sub_1B7AE24CC;
      v31 = 0;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = sub_1B7B46BA8;
      v23[3] = &unk_1E7CB74D0;
      v23[4] = &v24;
      v23[5] = buf;
      __IMDDowngradeDatabaseToVersion_IPCAction(v23, v7, v8);
      if (a4)
      {
        v20 = *(*&buf[8] + 40);
        if (v20)
        {
          *a4 = v20;
        }
      }

      _Block_object_dispose(buf, 8);
    }

    if ((v25[3] & 1) == 0 && IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Database QuickSwitch Downgrade got unsuccessful result", buf, 2u);
      }
    }

    _Block_object_dispose(&v24, 8);
  }

  else if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = a3;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Database QuickSwitch tried to downgraded incompatible database versioin %ld", buf, 0xCu);
    }
  }

  return v12;
}

void sub_1B7B46BA8(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_BOOL(v3, "BOOL_result");
  v4 = _IMDGetErrorFromXPCDictionary(v3);

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id _IMDGetErrorFromXPCDictionary(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = xpc_dictionary_get_string(v1, "error_domain")) != 0)
  {
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, v3, v5);
    int64 = xpc_dictionary_get_int64(v2, "error_code");
    string = xpc_dictionary_get_string(v2, "error_localized_description");
    if (string)
    {
      v11 = MEMORY[0x1E695DF20];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v9, string, v10);
      v14 = objc_msgSend_dictionaryWithObject_forKey_(v11, v13, v12, *MEMORY[0x1E696A578]);
    }

    else
    {
      v14 = 0;
    }

    v16 = objc_alloc(MEMORY[0x1E696ABC0]);
    v15 = objc_msgSend_initWithDomain_code_userInfo_(v16, v17, v6, int64, v14);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void _IMDInsertErrorToXPCDictionary(void *a1, uint64_t a2, void *a3)
{
  if (a1 && a3)
  {
    v4 = a3;
    v5 = a1;
    v9 = objc_msgSend_domain(v4, v6, v7, v8);
    v10 = v9;
    v14 = objc_msgSend_UTF8String(v10, v11, v12, v13);
    xpc_dictionary_set_string(v5, "error_domain", v14);

    v18 = objc_msgSend_code(v4, v15, v16, v17);
    xpc_dictionary_set_int64(v5, "error_code", v18);
    v27 = objc_msgSend_localizedDescription(v4, v19, v20, v21);

    v22 = v27;
    v26 = objc_msgSend_UTF8String(v27, v23, v24, v25);
    xpc_dictionary_set_string(v5, "error_localized_description", v26);
  }
}

id sub_1B7B46E48(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend___imdp_persistenceServiceListener(a1, a2, a3, a4);
  if (!v7)
  {
    sub_1B7CF1748(0, v4, v5, v6);
  }

  return v7;
}

void sub_1B7B46EA0(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v12 = objc_msgSend____imdp_persistenceServiceListener(a1, v8, v9, v10);
  objc_msgSend_connection_registerCleanupHandlerWithID_usingBlock_(v12, v11, a1, v7, v6);
}

void sub_1B7B46F20(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v9 = objc_msgSend____imdp_persistenceServiceListener(a1, v5, v6, v7);
  objc_msgSend_connection_unregisterCleanupHandlerWithID_(v9, v8, a1, v4);
}

void sub_1B7B47218()
{
  v0 = [IMDDatabase alloc];
  inited = objc_msgSend__initAsSynchronous_(v0, v1, 0, v2);
  v4 = qword_1EBA53B20;
  qword_1EBA53B20 = inited;
}

void sub_1B7B4725C()
{
  v0 = objc_alloc_init(IMDDatabase);
  v1 = qword_1EDBE5BC8;
  qword_1EDBE5BC8 = v0;
}

void sub_1B7B47298()
{
  v0 = objc_alloc_init(IMDDatabaseClient);
  v1 = qword_1EBA53B30;
  qword_1EBA53B30 = v0;
}

void sub_1B7B47374(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69A80D8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B47414;
  v6[3] = &unk_1E7CB8AF0;
  v6[4] = *(a1 + 32);
  v4 = objc_msgSend_initWithProtocol_forwardingHandler_(v2, v3, &unk_1F2FE88F8, v6);
  v5 = qword_1EBA53B60;
  qword_1EBA53B60 = v4;
}

id sub_1B7B47414(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend__legacyDatabaseClient(*(a1 + 32), a2, a3, a4);
  if (objc_opt_respondsToSelector())
  {
    v8 = v4;
  }

  else
  {
    v8 = objc_msgSend_databaseQueryProvider(IMDPersistenceService, v5, v6, v7);
  }

  v9 = v8;

  return v9;
}

void sub_1B7B47484(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E69A80D8]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7AE07C8;
  v6[3] = &unk_1E7CB8AF0;
  v6[4] = *(a1 + 32);
  v4 = objc_msgSend_initWithProtocol_forwardingHandler_(v2, v3, &unk_1F2FE88F8, v6);
  v5 = qword_1EBA53B50;
  qword_1EBA53B50 = v4;
}

uint64_t _IMDSMSDatabaseMigrateData_38_6100(uint64_t a1, uint64_t a2)
{
  v2 = CSDBSqliteConnectionStatementForSQL();
  if (v2)
  {
    v3 = v2;
    v4 = *(v2 + 8);
    if (v4)
    {
      if (sqlite3_step(v4) == 100)
      {
        do
        {
          v5 = objc_autoreleasePoolPush();
          sqlite3_column_int(*(v3 + 8), 0);
          sqlite3_column_int(*(v3 + 8), 1);
          sqlite3_column_int(*(v3 + 8), 2);
          v6 = CSDBSqliteConnectionStatementForSQL();
          if (v6 && *(v6 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          v7 = CSDBSqliteConnectionStatementForSQL();
          if (v7 && *(v7 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          v8 = CSDBSqliteConnectionStatementForSQL();
          if (v8 && *(v8 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          objc_autoreleasePoolPop(v5);
        }

        while (sqlite3_step(*(v3 + 8)) == 100);
      }

      CSDBSqliteStatementReset();
    }
  }

  v9 = CSDBSqliteConnectionStatementForSQL();
  if (v9)
  {
    v10 = v9;
    v11 = *(v9 + 8);
    if (v11)
    {
      if (sqlite3_step(v11) == 100)
      {
        v12 = *MEMORY[0x1E695E480];
        do
        {
          v13 = objc_autoreleasePoolPush();
          sqlite3_column_int(*(v10 + 8), 0);
          if (sqlite3_column_text(*(v10 + 8), 1))
          {
            v14 = sqlite3_column_text(*(v10 + 8), 1);
            v15 = CFStringCreateWithCString(v12, v14, 0x8000100u);
          }

          else
          {
            v15 = 0;
          }

          if (sqlite3_column_text(*(v10 + 8), 2))
          {
            v16 = sqlite3_column_text(*(v10 + 8), 2);
            v17 = CFStringCreateWithCString(v12, v16, 0x8000100u);
          }

          else
          {
            v17 = 0;
          }

          IMComponentsFromChatGUID();
          objc_msgSend_lowercaseString(v17, v18, v19, v20, 0);
          v21 = IMCopyGUIDForChat();
          v22 = CSDBSqliteConnectionStatementForSQL();
          if (v22 && *(v22 + 8))
          {
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          objc_autoreleasePoolPop(v13);
        }

        while (sqlite3_step(*(v10 + 8)) == 100);
      }

      CSDBSqliteStatementReset();
    }
  }

  v23 = CSDBSqliteConnectionStatementForSQL();
  if (v23)
  {
    v24 = v23;
    v25 = *(v23 + 8);
    if (v25)
    {
      if (sqlite3_step(v25) == 100)
      {
        do
        {
          v26 = objc_autoreleasePoolPush();
          sqlite3_column_int(*(v24 + 8), 0);
          sqlite3_column_int(*(v24 + 8), 1);
          v27 = CSDBSqliteConnectionStatementForSQL();
          if (v27 && *(v27 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          v28 = CSDBSqliteConnectionStatementForSQL();
          if (v28 && *(v28 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          v29 = CSDBSqliteConnectionStatementForSQL();
          if (v29 && *(v29 + 8))
          {
            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }

          objc_autoreleasePoolPop(v26);
        }

        while (sqlite3_step(*(v24 + 8)) == 100);
      }

      CSDBSqliteStatementReset();
    }
  }

  v30 = CSDBSqliteConnectionStatementForSQL();
  if (v30 && *(v30 + 8))
  {
    CSDBSqliteStatementPerform();
    CSDBSqliteStatementReset();
  }

  return 1;
}

uint64_t IMDHandleRecordCopyHandleRecord(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B47C0C;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7B47BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B47C0C(uint64_t a1, uint64_t a2)
{
  result = CSDBRecordStoreCopyInstanceOfClassWithUID();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t IMDHandleRecordAddHandleRecord(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B47D10;
  v3[3] = &unk_1E7CB7368;
  v3[4] = &v4;
  v3[5] = a1;
  _IMDPerformLockedMessageStoreBlock(v3);
  v1 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_1B7B47CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B47D10(uint64_t result, uint64_t a2)
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

void sub_1B7B48368(uint64_t a1, id a2, void *a3)
{
  v5 = a2;
  v9 = a3;
  objc_msgSend_UTF8String(a2, v6, v7, v8);
  IMInsertKeyedCodableObjectsToXPCDictionary();
}

uint64_t sub_1B7B48568(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  objc_msgSend_addObject_(*(a1 + 32), v5, v4, v6);

  return 1;
}

uint64_t sub_1B7B486A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  objc_msgSend_addObject_(*(a1 + 32), v5, v4, v6);

  return 1;
}

uint64_t sub_1B7B48808(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], a2, a2, a4);
  v6 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v7, v6, v5);

  return 1;
}

uint64_t sub_1B7B48974(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a3);
  objc_msgSend_addObject_(*(a1 + 32), v5, v4, v6);

  return 1;
}

void sub_1B7B48C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B48C18(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v8 = v3;
    v5 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
  }
}

void sub_1B7B48DF0(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v8 = v3;
  if (v3)
  {
    v5 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    (*(v6 + 16))(v6, v7);
  }
}

void sub_1B7B48FF8(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v8 = v3;
  if (v3)
  {
    v5 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    (*(v6 + 16))(v6, v7);
  }
}

void sub_1B7B491F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B49208(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v8 = v3;
    v5 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
  }
}

void sub_1B7B49378(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v8 = v3;
  if (v3)
  {
    v5 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    (*(v6 + 16))(v6, v7);
  }
}

void sub_1B7B49638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B49650(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v8 = v3;
    v5 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
  }
}

void sub_1B7B49810(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v8 = v3;
  if (v3)
  {
    v5 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    (*(v6 + 16))(v6, v7);
  }
}

void sub_1B7B499F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B49A10(void *a1, xpc_object_t xdict)
{
  v10 = xpc_dictionary_get_value(xdict, "dictionary_result");
  if (v10)
  {
    v3 = a1[4];
    v4 = objc_opt_class();
    v6 = objc_msgSend__codableDictionaryCopiedFromXPCDictionary_objectClass_(v3, v5, v10, v4);
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  v9 = a1[5];
  if (v9)
  {
    (*(v9 + 16))(v9, *(*(a1[6] + 8) + 40));
  }
}

void sub_1B7B49BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B49BF8(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v8 = v3;
    v5 = objc_msgSend__chatRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
  }
}

uint64_t sub_1B7B49D88(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_BOOL(xdict, "success");
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B49EBC(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v11 = v3;
  if (v3)
  {
    v5 = objc_msgSend__messageRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
    v9 = objc_msgSend_firstObject(v5, v6, v7, v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v9);
  }
}

void sub_1B7B4A06C(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v7 = v3;
  if (v3)
  {
    v5 = objc_msgSend__messageRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_1B7B4A2D4(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v10 = v3;
  if (v3)
  {
    v7 = objc_msgSend__messageRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = objc_msgSend_firstObject(v7, v4, v5, v6);
    (*(v8 + 16))(v8, v9);
  }
}

void sub_1B7B4A5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B4A608(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(xdict, "total_messages");
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_1B7B4A758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B4A770(uint64_t a1, xpc_object_t xdict)
{
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_int64(xdict, "missing_messages");
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_1B7B4AA00(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Received response back from database for notifyFirstUnlockComplete", v4, 2u);
    }
  }
}

void sub_1B7B4AB04(uint64_t a1, void *a2)
{
  v2 = a2;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Received response back from database for deleteDatabase", v4, 2u);
    }
  }
}

void sub_1B7B4ACF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B4AD0C(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  if (v3)
  {
    v8 = v3;
    v5 = objc_msgSend__handleRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v3 = v8;
  }
}

void sub_1B7B4AEE4(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v8 = v3;
  if (v3)
  {
    v5 = objc_msgSend__handleRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    (*(v6 + 16))(v6, v7);
  }
}

void sub_1B7B4B130(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v8 = v3;
  if (v3)
  {
    v5 = objc_msgSend__attachmentRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    (*(v6 + 16))(v6, v7);
  }
}

void sub_1B7B4B328(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v8 = v3;
  if (v3)
  {
    v5 = objc_msgSend__attachmentRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = MEMORY[0x1E695E0F0];
    }

    (*(v6 + 16))(v6, v7);
  }
}

void sub_1B7B4B4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B4B4D8(uint64_t a1, uint64_t a2)
{
  v3 = IMGetXPCDataFromDictionary();
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  result = *(a1 + 32);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

uint64_t sub_1B7B4B638(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_int64(xdict, "result");
  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1B7B4BD44(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "deletedChats");
  if (v3)
  {
    v4 = *(a1 + 32);
    v9 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v6, v9, v5);
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }

    v3 = v9;
  }
}

void sub_1B7B4BF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B4BF48(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "recoverableMessagesMetadataPendingCloudKitSave");
  if (v3)
  {
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v6, v10, v5);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

void sub_1B7B4C110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B4C128(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "recoverableMessagesMetadataPendingCloudKitDelete");
  if (v3)
  {
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v6, v10, v5);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

void sub_1B7B4C404(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 134217984;
    v5 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Finished bulk updating recoverable message guids to status %ld", &v4, 0xCu);
  }
}

uint64_t sub_1B7B4C794(uint64_t a1, xpc_object_t xdict)
{
  xpc_dictionary_get_int64(xdict, "total");
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void sub_1B7B4C918(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  v4 = IMGetXPCKeyedCodableFromDictionaryWithSecureCoding();
  if (v4)
  {
    v5 = v4;
    v6 = 0;
  }

  else
  {
    v8 = IMGetXPCDataFromDictionary();
    if (v8)
    {
      v9 = 0;
      v6 = objc_msgSend_createFromData_error_(_TtC14IMDPersistence22StorageInspectorReport, v7, v8, &v9);
      v5 = v9;
    }

    else
    {
      v6 = 0;
      v5 = 0;
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1B7B4CB08(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "array_result");
  v7 = v3;
  if (v3)
  {
    v5 = objc_msgSend__messageRecordsCopiedFromXPCArray_(*(a1 + 32), v3, v3, v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v5);
  }
}

void sub_1B7B4CCD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B4CCEC(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "scheduledMessagesMetadataPendingCloudKitDelete");
  if (v3)
  {
    v4 = *(a1 + 32);
    v10 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableObjectsCopiedFromXPCArray_objectClass_(v4, v6, v10, v5);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

void sub_1B7B4CE94(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Finished Adding scheduled message to delete from Cloud Kit. GUID: %@, RecordID %@", &v5, 0x16u);
  }
}

void sub_1B7B4D01C(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Finished Deleting tombstoned scheduled message with recordIDs %@", &v4, 0xCu);
  }
}

void sub_1B7B4D18C(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Finished marking messages read with guids %@", &v4, 0xCu);
  }
}

void sub_1B7B4D37C(uint64_t a1, xpc_object_t xdict)
{
  v3 = xpc_dictionary_get_value(xdict, "identifiersToContacts");
  if (v3)
  {
    v4 = *(a1 + 32);
    v9 = v3;
    v5 = objc_opt_class();
    v7 = objc_msgSend__codableDictionaryCopiedFromXPCDictionary_objectClass_(v4, v6, v9, v5);
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }

    v3 = v9;
  }
}

IMDPersistentAttachmentController *sub_1B7B4D7F8()
{
  result = objc_alloc_init(IMDPersistentAttachmentController);
  qword_1EDBE7930 = result;
  return result;
}

uint64_t sub_1B7B4DA88(__CFString *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_length(a1, a2, a3, a4) && objc_msgSend_rangeOfString_(a1, v5, @"/var/mobile/Library/SMS/Attachments", v6) != 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  v7 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = a1;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "Input path: %@", &v11, 0xCu);
  }

  v8 = IMAttachmentsLogHandle();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v9)
  {
    v11 = 138412290;
    v12 = @"/var/mobile/Library/SMS/Attachments";
    _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Attachment store Path: %@", &v11, 0xCu);
    return 0;
  }

  return result;
}

void *sub_1B7B4E7E8(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "        ...removing old file: %@", buf, 0xCu);
  }

  v18 = sub_1B7B4DA88(*(a1 + 32), v3, v4, v5);
  result = objc_msgSend_removeItemAtPath_error_(*(a1 + 40), v7, *(a1 + 32), 0);
  v10 = *(a1 + 48);
  if (v10)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    result = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v9, &v19, v23, 16);
    if (result)
    {
      v11 = result;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = IMAttachmentsLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v25 = v14;
            _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_DEFAULT, "        ...removing old sibling file: %@", buf, 0xCu);
          }

          objc_msgSend_removeItemAtPath_error_(*(a1 + 40), v16, v14, 0);
          v13 = v13 + 1;
        }

        while (v11 != v13);
        result = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v19, v23, 16);
        v11 = result;
      }

      while (result);
    }
  }

  if (v18)
  {
    return objc_msgSend__removeLegacyAttachmentPathsInAttachmentStoreWithOriginalPath_withFileManager_(*(a1 + 56), v9, *(a1 + 32), *(a1 + 40));
  }

  return result;
}

void sub_1B7B4EB8C(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B4EB58);
  }

  _Unwind_Resume(a1);
}

id IMDCopyAttachmentPersistentPath(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v70 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v6 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Storing group photo at an accessible location.", buf, 2u);
    }

    v7 = IMSharedHelperExternalLocationForFile();
  }

  else
  {
    PathComponent = objc_msgSend_im_lastPathComponent(a2, a2, a3, a4, a5);
    v15 = objc_msgSend_pathExtension(PathComponent, v12, v13, v14);
    v19 = objc_msgSend_hash(a1, v16, v17, v18);
    if (!objc_msgSend_length(v15, v20, v21, v22))
    {
      v26 = objc_msgSend_defaultHFSFileManager(MEMORY[0x1E69A60D8], v23, v24, v25);
      v29 = objc_msgSend_pathExtensionForUTIType_(v26, v27, a4, v28);
      if (!objc_msgSend_length(v29, v30, v31, v32))
      {
        v36 = objc_msgSend_defaultHFSFileManager(MEMORY[0x1E69A60D8], v33, v34, v35);
        v29 = objc_msgSend_pathExtensionForMIMEType_(v36, v37, a3, v38);
      }

      if (objc_msgSend_length(v29, v33, v34, v35))
      {
        PathComponent = objc_msgSend_stringByAppendingPathExtension_(PathComponent, v23, v29, v25);
      }
    }

    v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"%02x", v25, v19);
    v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v40, @"%02d", v41, v19 & 0xF);
    if (objc_msgSend_length(PathComponent, v43, v44, v45) && objc_msgSend_length(a1, v46, v47, v48))
    {
      v51 = objc_msgSend_stringByAppendingPathComponent_(@"/var/mobile/Library/SMS/Attachments", v49, v39, v50);
      v54 = objc_msgSend_stringByAppendingPathComponent_(v51, v52, v42, v53);
      v58 = objc_msgSend_im_lastPathComponent(a1, v55, v56, v57);
      v61 = objc_msgSend_stringByAppendingPathComponent_(v54, v59, v58, v60);
      v7 = objc_msgSend_stringByAppendingPathComponent_(v61, v62, PathComponent, v63);
    }

    else
    {
      v7 = 0;
    }

    v64 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v67 = v7;
      v68 = 2112;
      v69 = a1;
      _os_log_impl(&dword_1B7AD5000, v64, OS_LOG_TYPE_DEFAULT, "Resulting path %@   for transfer: %@", buf, 0x16u);
    }
  }

  return v7;
}

uint64_t _IMDSMSDatabaseMigrateData_21_22(uint64_t a1, uint64_t a2)
{
  v521 = *MEMORY[0x1E69E9840];
  v3 = IMLogHandleForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Starting migration from V21 to V22.", buf, 2u);
  }

  v4 = CSDBSqliteConnectionStatementForSQL();
  if (v4 && *(v4 + 8) && CSDBSqliteStatementPerform() == 1)
  {
    v5 = *(a2 + 8);
    v6 = IMLogHandleForCategory();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (v5)
    {
      if (v7)
      {
        v8 = sqlite3_errmsg(*(a2 + 8));
        *buf = 67109378;
        *&buf[4] = 1;
        *&buf[8] = 2080;
        *&buf[10] = v8;
        v9 = "Failed to delete trigger delete_attachment_files [SQLite result %d reason %s]";
        v10 = v6;
        v11 = 18;
LABEL_11:
        _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
      }
    }

    else if (v7)
    {
      *buf = 67109120;
      *&buf[4] = 1;
      v9 = "Failed to delete trigger delete_attachment_files [SQLite result %d]";
      v10 = v6;
      v11 = 8;
      goto LABEL_11;
    }
  }

  v12 = CSDBSqliteConnectionStatementForSQL();
  if (!v12 || !*(v12 + 8) || CSDBSqliteStatementPerform() == 1)
  {
    v13 = IMLogHandleForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v14 = "Whoa, pardner, where is the V21_MIGRATION_GROUP_CHAT_MAP ?!";
LABEL_17:
    _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, v14, buf, 2u);
    return 0;
  }

  v17 = CSDBSqliteConnectionStatementForSQL();
  if (!v17 || !*(v17 + 8) || CSDBSqliteStatementPerform() == 1)
  {
    v13 = IMLogHandleForCategory();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 0;
    v14 = "Whoa, pardner, where is the V21_MIGRATION_NONCANONICAL_GROUP_HANDLE_MAP ?!";
    goto LABEL_17;
  }

  v18 = CSDBSqliteConnectionStatementForSQL();
  if (!v18 || (v19 = v18, (v20 = *(v18 + 8)) == 0))
  {
    v15 = 0;
    goto LABEL_582;
  }

  v21 = sqlite3_step(v20);
  if (!v21 || v21 == 101)
  {
    v446 = IMLogHandleForCategory();
    v15 = 1;
    if (os_log_type_enabled(v446, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v446, OS_LOG_TYPE_INFO, "No message rows available to migrate, great success!!", buf, 2u);
    }

    goto LABEL_581;
  }

  if (v21 != 100)
  {
    goto LABEL_580;
  }

  alloc = *MEMORY[0x1E695E480];
  v465 = *MEMORY[0x1E69A5F68];
  v460 = *MEMORY[0x1E69A5F00];
  v477 = v19;
  while (1)
  {
    v22 = sqlite3_column_int(*(v19 + 8), 30);
    v486 = sqlite3_column_int(*(v19 + 8), 0);
    context = objc_autoreleasePoolPush();
    v478 = sqlite3_column_int(*(v19 + 8), 0);
    v23 = *(v19 + 8);
    if (v22)
    {
      v24 = sqlite3_column_int(v23, 26);
      if (sqlite3_column_text(*(v19 + 8), 18))
      {
        v25 = sqlite3_column_text(*(v19 + 8), 18);
        v26 = CFStringCreateWithCString(alloc, v25, 0x8000100u);
      }

      else
      {
        v26 = 0;
      }

      if (sqlite3_column_text(*(v19 + 8), 22))
      {
        v31 = sqlite3_column_text(*(v19 + 8), 22);
        v32 = CFStringCreateWithCString(alloc, v31, 0x8000100u);
      }

      else
      {
        v32 = 0;
      }

      v33 = sqlite3_column_blob(*(v19 + 8), 17);
      v34 = sqlite3_column_bytes(*(v19 + 8), 17);
      v35 = 0;
      if (v33 && v34)
      {
        v35 = CFDataCreate(alloc, v33, v34);
      }

      v36 = JWDecodeCodableObjectWithStandardAllowlist();
      if (v35)
      {
        CFRelease(v35);
      }

      if (v26 | v32)
      {
        v37 = CSDBSqliteConnectionStatementForSQL();
        if (v37)
        {
          v38 = v37;
          if (*(v37 + 8))
          {
            if (v32)
            {
              CSDBSqliteBindTextFromCFString();
            }

            CSDBSqliteBindTextFromCFString();
            if (sqlite3_step(*(v38 + 8)) == 100)
            {
              v39 = sqlite3_column_int(*(v38 + 8), 0);
              CSDBSqliteStatementReset();
              if (v39 != -1)
              {
                v40 = v39;
                goto LABEL_216;
              }
            }

            else
            {
              CSDBSqliteStatementReset();
            }
          }
        }

        v41 = CSDBSqliteConnectionStatementForSQL();
        if (v41)
        {
          v42 = v41;
          if (*(v41 + 8))
          {
            if (v32)
            {
              CSDBSqliteBindTextFromCFString();
            }

            CSDBSqliteBindTextFromCFString();
            v43 = sqlite3_step(*(v42 + 8));
            if (v43 != 100)
            {
              v54 = v43;
              v55 = IMLogHandleForCategory();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
              {
                *v502 = 138412802;
                *&v502[4] = v26;
                v503 = 2112;
                v504 = v32;
                v505 = 1024;
                LODWORD(v506) = v54;
                _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "ORPHAN: Unable to find a legacy madrid chat record for handle[%@] and roomname[%@] with sqlite status (%d). This usually means that a chat was deleted but the messages it contained weren't. Failing chat creation.", v502, 0x1Cu);
              }

              v40 = -1;
              goto LABEL_339;
            }

            v44 = sqlite3_column_int(*(v42 + 8), 0);
            v45 = sqlite3_column_blob(*(v42 + 8), 10);
            v46 = sqlite3_column_bytes(*(v42 + 8), 10);
            v47 = 0;
            if (v45 && v46)
            {
              v47 = CFDataCreate(alloc, v45, v46);
            }

            v48 = JWDecodeArray();
            if (objc_msgSend_count(v48, v49, v50, v51))
            {
              sqlite3_column_int(*(v42 + 8), 1);
              theArray = v48;
              if (sqlite3_column_text(*(v42 + 8), 5))
              {
                v52 = sqlite3_column_text(*(v42 + 8), 5);
                v53 = CFStringCreateWithCString(alloc, v52, 0x8000100u);
              }

              else
              {
                v53 = 0;
              }

              v205 = CSDBSqliteConnectionStatementForSQL();
              if (v205 && *(v205 + 8))
              {
                cfa = v53;
                CSDBSqliteBindInt();
                v206 = CSDBSqliteStatementPerform();
                CSDBSqliteStatementReset();
                if (v206 == 1)
                {
                  v207 = IMLogHandleForCategory();
                  v53 = cfa;
                  if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
                  {
                    *v502 = 134218240;
                    *&v502[4] = v44;
                    v503 = 1024;
                    LODWORD(v504) = 1;
                    _os_log_impl(&dword_1B7AD5000, v207, OS_LOG_TYPE_INFO, "Unable to migrate chat row %lld with error: %d", v502, 0x12u);
                  }
                }

                else
                {
                  Insert = CSDBSqliteConnectionRowidOfLastInsert();
                  v53 = cfa;
                  if (Insert != -1)
                  {
                    v40 = Insert;
                    if (objc_msgSend_hasPrefix_(cfa, v217, @"chat", v218))
                    {
                      v219 = CSDBSqliteConnectionStatementForSQL();
                      if (v219)
                      {
                        if (*(v219 + 8))
                        {
                          CSDBSqliteBindTextFromCFString();
                          CSDBSqliteBindInt();
                          if (CSDBSqliteStatementPerform() != 101)
                          {
                            v220 = IMLogHandleForCategory();
                            if (os_log_type_enabled(v220, OS_LOG_TYPE_INFO))
                            {
                              *v502 = 134217984;
                              *&v502[4] = v40;
                              _os_log_impl(&dword_1B7AD5000, v220, OS_LOG_TYPE_INFO, "Unable to update chatID[%lld]'s room_name.", v502, 0xCu);
                            }
                          }

                          CSDBSqliteStatementReset();
                          v53 = cfa;
                        }
                      }
                    }

                    v221 = CSDBSqliteConnectionStatementForSQL();
                    if (!v221 || !*(v221 + 8))
                    {
                      goto LABEL_323;
                    }

                    v469 = v47;
                    v223 = IMCopyGUIDForChat();
                    CSDBSqliteBindTextFromCFString();
                    CSDBSqliteBindInt();
                    v224 = CSDBSqliteStatementPerform();
                    if (v224 != 101)
                    {
                      loga = IMLogHandleForCategory();
                      if (os_log_type_enabled(loga, OS_LOG_TYPE_INFO))
                      {
                        *v502 = 134218242;
                        *&v502[4] = v40;
                        v503 = 2112;
                        v504 = v223;
                        _os_log_impl(&dword_1B7AD5000, loga, OS_LOG_TYPE_INFO, "Unable to update chatID[%lld] with guid[%@]", v502, 0x16u);
                      }
                    }

                    if (v223)
                    {
                      CFRelease(v223);
                    }

                    CSDBSqliteStatementReset();
                    v225 = v224 == 101;
                    v47 = v469;
                    v53 = cfa;
                    if (v225)
                    {
LABEL_323:
                      v491 = 0u;
                      v492 = 0u;
                      valuePtr = 0u;
                      v490 = 0u;
                      v226 = objc_msgSend_countByEnumeratingWithState_objects_count_(theArray, v222, &valuePtr, buf, 16);
                      if (v226)
                      {
                        v227 = v226;
                        v470 = v47;
                        v228 = *v490;
                        while (2)
                        {
                          for (i = 0; i != v227; ++i)
                          {
                            if (*v490 != v228)
                            {
                              objc_enumerationMutation(theArray);
                            }

                            v230 = sub_1B7B5388C(a2, 0, *(*(&valuePtr + 1) + 8 * i), @"iMessage", 0);
                            if (!sub_1B7B53CFC(a2, v230, v40))
                            {
                              v40 = -1;
                              goto LABEL_546;
                            }
                          }

                          v227 = objc_msgSend_countByEnumeratingWithState_objects_count_(theArray, v231, &valuePtr, buf, 16);
                          if (v227)
                          {
                            continue;
                          }

                          break;
                        }

LABEL_546:
                        v47 = v470;
                        v53 = cfa;
                      }

                      goto LABEL_335;
                    }

LABEL_334:
                    v40 = -1;
LABEL_335:

                    if (v47)
                    {
                      CFRelease(v47);
                    }

                    if (v53)
                    {
                      CFRelease(v53);
                    }

LABEL_339:
                    CSDBSqliteStatementReset();
LABEL_216:
                    if (v40 == -1)
                    {
                      v196 = IMLogHandleForCategory();
                      v19 = v477;
                      v197 = context;
                      if (os_log_type_enabled(v196, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138412802;
                        *&buf[4] = v26;
                        *&buf[12] = 2112;
                        *&buf[14] = v32;
                        v500 = 1024;
                        LODWORD(v501) = v478;
                        _os_log_impl(&dword_1B7AD5000, v196, OS_LOG_TYPE_INFO, "ORPHAN: Unable to find/create a chat for handle[%@] and roomname[%@] for legacy messageID[%d]. Skipping this message.", buf, 0x1Cu);
                      }

                      v204 = 0;
                      goto LABEL_278;
                    }

                    v152 = CSDBSqliteConnectionStatementForSQL();
                    if (v152 && *(v152 + 8))
                    {
                      CSDBSqliteBindInt();
                      v153 = CSDBSqliteStatementPerform();
                      CSDBSqliteStatementReset();
                      if (v153 != 101)
                      {
                        v198 = IMLogHandleForCategory();
                        v19 = v477;
                        if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67109376;
                          *&buf[4] = v478;
                          *&buf[8] = 1024;
                          *&buf[10] = v153;
                          _os_log_error_impl(&dword_1B7AD5000, v198, OS_LOG_TYPE_ERROR, "[Database] ERROR: Unable to migrate message row %d with error: %d", buf, 0xEu);
                        }

                        v204 = 1;
LABEL_277:
                        v197 = context;
                        goto LABEL_278;
                      }

                      v154 = CSDBSqliteConnectionRowidOfLastInsert();
                      if (v154 != -1)
                      {
                        v155 = v154;
                        v156 = CSDBSqliteConnectionStatementForSQL();
                        if (v156)
                        {
                          if (*(v156 + 8))
                          {
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            CSDBSqliteBindInt();
                            v157 = CSDBSqliteStatementPerform();
                            CSDBSqliteStatementReset();
                            if (v157 != 101)
                            {
                              v158 = IMLogHandleForCategory();
                              if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
                              {
                                *buf = 67109376;
                                *&buf[4] = v478;
                                *&buf[8] = 1024;
                                *&buf[10] = v157;
                                _os_log_impl(&dword_1B7AD5000, v158, OS_LOG_TYPE_INFO, "Unable to update flags row %d with error: %d", buf, 0xEu);
                              }
                            }
                          }
                        }

                        if (sub_1B7B537D8(a2, v155, v40))
                        {
                          v19 = v477;
                          if (!v26 || v32 && (v24 & 4) != 0)
                          {
                            goto LABEL_230;
                          }

                          if (sub_1B7B5388C(a2, 0, v26, @"iMessage", 0) == -1)
                          {
                            v441 = v155;
                            v442 = IMLogHandleForCategory();
                            v204 = 1;
                            v197 = context;
                            if (!os_log_type_enabled(v442, OS_LOG_TYPE_INFO))
                            {
                              goto LABEL_278;
                            }

                            *buf = 134218240;
                            *&buf[4] = -1;
                            *&buf[12] = 2048;
                            *&buf[14] = v441;
                            v212 = v442;
                            v213 = "Invalid handleID[%lld] or messageID[%lld] passed for binding";
                            v214 = 22;
                            goto LABEL_544;
                          }

                          v208 = CSDBSqliteConnectionStatementForSQL();
                          if (!v208 || !*(v208 + 8) || (CSDBSqliteBindInt(), CSDBSqliteBindInt(), v209 = CSDBSqliteStatementPerform(), CSDBSqliteStatementReset(), v209 != 1))
                          {
LABEL_230:
                            v162 = objc_msgSend_string(v36, v159, v160, v161);
                            v166 = objc_msgSend_length(v36, v163, v164, v165);
                            if (v166)
                            {
                              v168 = v166;
                              theArrayb = v155;
                              v169 = 0;
                              v170 = 1;
                              while (1)
                              {
                                valuePtr = 0uLL;
                                v171 = objc_msgSend_attributesAtIndex_longestEffectiveRange_inRange_(v36, v167, v169, &valuePtr, v169, v168 - v169);
                                if (objc_msgSend_characterAtIndex_(v162, v172, valuePtr, v173) != 65532)
                                {
                                  goto LABEL_265;
                                }

                                v175 = objc_msgSend_objectForKey_(v171, v167, v465, v174);
                                if (!v175)
                                {
                                  v189 = IMLogHandleForCategory();
                                  if (os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
                                  {
                                    *buf = 136315138;
                                    *&buf[4] = "Boolean __findOrCreateiMessageAttachmentsForLegacyGUID(CSDBSqliteConnection *, CFStringRef, int64_t)";
                                    _os_log_impl(&dword_1B7AD5000, v189, OS_LOG_TYPE_INFO, "Invalid legacy guid provided in %s - this is bad but non-fatal.", buf, 0xCu);
                                  }

                                  v190 = IMDatabaseLogHandle();
                                  if (os_log_type_enabled(v190, OS_LOG_TYPE_ERROR))
                                  {
                                    sub_1B7CF1810(v507, &v508);
                                  }

                                  goto LABEL_265;
                                }

                                v176 = v175;
                                v177 = CSDBSqliteConnectionStatementForSQL();
                                v178 = v177;
                                if (v177 && *(v177 + 8) && (CSDBSqliteBindTextFromCFString(), sqlite3_step(*(v178 + 8)) == 100))
                                {
                                  v179 = sqlite3_column_int(*(v178 + 8), 0);
                                  CSDBSqliteStatementReset();
                                  if (v179 != -1)
                                  {
                                    v180 = v179;
LABEL_239:
                                    if (v180 != -1)
                                    {
                                      v181 = CSDBSqliteConnectionStatementForSQL();
                                      if (v181)
                                      {
                                        if (*(v181 + 8))
                                        {
                                          CSDBSqliteBindInt();
                                          CSDBSqliteBindInt();
                                          v479 = CSDBSqliteStatementPerform();
                                          CSDBSqliteStatementReset();
                                          if (v479 == 1)
                                          {
                                            v182 = IMLogHandleForCategory();
                                            if (os_log_type_enabled(v182, OS_LOG_TYPE_INFO))
                                            {
                                              *buf = 134218496;
                                              *&buf[4] = v180;
                                              *&buf[12] = 2048;
                                              *&buf[14] = theArrayb;
                                              v500 = 1024;
                                              LODWORD(v501) = 1;
                                              _os_log_impl(&dword_1B7AD5000, v182, OS_LOG_TYPE_INFO, "Unable to bind attachmentID[%lld] to messageID[%lld]: %d", buf, 0x1Cu);
                                            }

                                            v183 = IMLogHandleForCategory();
                                            if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
                                            {
                                              *buf = 134218498;
                                              *&buf[4] = v180;
                                              *&buf[12] = 2112;
                                              *&buf[14] = v176;
                                              v500 = 2048;
                                              v501 = theArrayb;
                                              _os_log_impl(&dword_1B7AD5000, v183, OS_LOG_TYPE_INFO, "Fatal error binding attachmentID[%lld - %@] to messageID[%lld]", buf, 0x20u);
                                            }

                                            v170 = 0;
                                          }
                                        }
                                      }
                                    }

                                    goto LABEL_265;
                                  }
                                }

                                else
                                {
                                  CSDBSqliteStatementReset();
                                }

                                v184 = CSDBSqliteConnectionStatementForSQL();
                                if (v184)
                                {
                                  v185 = v184;
                                  if (*(v184 + 8))
                                  {
                                    CSDBSqliteBindTextFromCFString();
                                    if (sqlite3_step(*(v185 + 8)) == 100)
                                    {
                                      v186 = sqlite3_column_int(*(v185 + 8), 0);
                                      CSDBSqliteStatementReset();
                                      if (v186 != -1)
                                      {
                                        v187 = CSDBSqliteConnectionStatementForSQL();
                                        if (v187 && *(v187 + 8))
                                        {
                                          v480 = v186;
                                          CSDBSqliteBindInt();
                                          v188 = CSDBSqliteStatementPerform();
                                          CSDBSqliteStatementReset();
                                          if (v188 == 101)
                                          {
                                            v180 = CSDBSqliteConnectionRowidOfLastInsert();
                                            goto LABEL_239;
                                          }

                                          v195 = IMLogHandleForCategory();
                                          if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
                                          {
                                            *buf = 134218240;
                                            *&buf[4] = v480;
                                            *&buf[12] = 1024;
                                            *&buf[14] = v188;
                                            v192 = v195;
                                            v193 = "Unable to migrate attachment row %lld with error: %d";
                                            v194 = 18;
                                            goto LABEL_264;
                                          }
                                        }

                                        goto LABEL_265;
                                      }
                                    }

                                    else
                                    {
                                      CSDBSqliteStatementReset();
                                    }
                                  }
                                }

                                v191 = IMLogHandleForCategory();
                                if (os_log_type_enabled(v191, OS_LOG_TYPE_INFO))
                                {
                                  *buf = 138412290;
                                  *&buf[4] = v176;
                                  v192 = v191;
                                  v193 = "Unable to find legacy attachment for guid[%@]. Not fatal, but bailing.";
                                  v194 = 12;
LABEL_264:
                                  _os_log_impl(&dword_1B7AD5000, v192, OS_LOG_TYPE_INFO, v193, buf, v194);
                                }

LABEL_265:
                                v169 = *(&valuePtr + 1) + valuePtr;
                                if (*(&valuePtr + 1) + valuePtr >= v168)
                                {
                                  v204 = v170 == 0;
                                  goto LABEL_270;
                                }
                              }
                            }

                            v204 = 0;
                            goto LABEL_277;
                          }

                          v210 = v155;
                          v211 = IMLogHandleForCategory();
                          v204 = 1;
                          v197 = context;
                          if (os_log_type_enabled(v211, OS_LOG_TYPE_INFO))
                          {
                            *buf = 134218240;
                            *&buf[4] = v210;
                            *&buf[12] = 1024;
                            *&buf[14] = 1;
                            v212 = v211;
                            v213 = "Unable to update handle id on message row %lld with error: %d";
                            v214 = 18;
LABEL_544:
                            _os_log_impl(&dword_1B7AD5000, v212, OS_LOG_TYPE_INFO, v213, buf, v214);
                          }

LABEL_278:
                          if (v32)
                          {
                            CFRelease(v32);
                          }

                          if (v26)
                          {
                            CFRelease(v26);
                          }

                          objc_autoreleasePoolPop(v197);
                          if (v204)
                          {
                            goto LABEL_578;
                          }

                          goto LABEL_563;
                        }
                      }
                    }

                    v204 = 1;
LABEL_270:
                    v19 = v477;
                    goto LABEL_277;
                  }
                }
              }

              v232 = IMLogHandleForCategory();
              if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
              {
                *v502 = 138412546;
                *&v502[4] = v26;
                v503 = 2112;
                v504 = v32;
                _os_log_error_impl(&dword_1B7AD5000, v232, OS_LOG_TYPE_ERROR, "[Database] ERROR: Could not create chat from handle[%@] and roomname[%@].", v502, 0x16u);
              }

              goto LABEL_334;
            }

            v151 = IMLogHandleForCategory();
            if (os_log_type_enabled(v151, OS_LOG_TYPE_ERROR))
            {
              *v502 = 134218498;
              *&v502[4] = v44;
              v503 = 2112;
              v504 = v26;
              v505 = 2112;
              v506 = v32;
              _os_log_error_impl(&dword_1B7AD5000, v151, OS_LOG_TYPE_ERROR, "[DATABASE] There don't appear to be any participants in this chat, so it will NOT be migrated. RowID: %lld Handle %@ Roomname %@", v502, 0x20u);
            }

            CSDBSqliteStatementReset();
            if (v47)
            {
              CFRelease(v47);
            }
          }
        }
      }

      v40 = -1;
      goto LABEL_216;
    }

    log = sqlite3_column_int(v23, 4);
    sqlite3_column_int(*(v19 + 8), 10);
    sqlite3_column_int(*(v19 + 8), 0);
    sqlite3_column_int(*(v19 + 8), 7);
    if (sqlite3_column_int(*(v19 + 8), 8) < 1)
    {
      break;
    }

    v27 = CSDBSqliteConnectionStatementForSQL();
    if (!v27)
    {
      break;
    }

    v28 = v27;
    if (!*(v27 + 8))
    {
      break;
    }

    CSDBSqliteBindInt();
    CSDBSqliteBindInt();
    CSDBSqliteBindInt();
    v29 = sqlite3_step(*(v28 + 8));
    if (v29 != 100)
    {
      v56 = v29;
      v57 = IMLogHandleForCategory();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v56;
        _os_log_error_impl(&dword_1B7AD5000, v57, OS_LOG_TYPE_ERROR, "[Database] ****** Result from select query: %d", buf, 8u);
      }

      CSDBSqliteStatementReset();
      break;
    }

    v30 = sqlite3_column_int(*(v28 + 8), 0);
    CSDBSqliteStatementReset();
    if (v30 <= 0)
    {
      break;
    }

LABEL_562:
    objc_autoreleasePoolPop(context);
LABEL_563:
    v445 = IMLogHandleForCategory();
    if (os_log_type_enabled(v445, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v486;
      _os_log_impl(&dword_1B7AD5000, v445, OS_LOG_TYPE_INFO, "Successful migration for legacy message [%d]", buf, 8u);
    }

    if (sqlite3_step(*(v19 + 8)) != 100)
    {
      v15 = 1;
      goto LABEL_581;
    }
  }

  v58 = sqlite3_column_int(*(v19 + 8), 7);
  v59 = sqlite3_column_int(*(v19 + 8), 8);
  v60 = sqlite3_column_int(*(v19 + 8), 0);
  v61 = sqlite3_column_text(*(v19 + 8), 1);
  if (v61)
  {
    v62 = sqlite3_column_text(*(v19 + 8), 1);
    v61 = CFStringCreateWithCString(alloc, v62, 0x8000100u);
  }

  cf = v61;
  if (v58 < 1)
  {
    v64 = IMLogHandleForCategory();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF185C(&v497, v498);
    }

    if (v58 == -1)
    {
      Mutable = 0;
      goto LABEL_171;
    }

    v466 = v59;
    v461 = v60;
    v63 = v58;
  }

  else
  {
    v466 = v59;
    v461 = v60;
    v63 = v58;
  }

  v468 = v63;
  Mutable = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
  v66 = CSDBSqliteConnectionStatementForSQL();
  if (v66)
  {
    v67 = v66;
    if (*(v66 + 8))
    {
      CSDBSqliteBindInt();
      if (sqlite3_step(*(v67 + 8)) == 100)
      {
        v68 = sqlite3_column_int(*(v67 + 8), 0);
        CSDBSqliteStatementReset();
        if (v68 != -1)
        {
          *&valuePtr = v68;
          v69 = CFNumberCreate(alloc, kCFNumberLongLongType, &valuePtr);
          if (!v69)
          {
            goto LABEL_157;
          }

          v70 = v69;
          CFArrayAppendValue(Mutable, v69);
          CFRelease(v70);
          if (!Mutable)
          {
            goto LABEL_171;
          }

          goto LABEL_158;
        }
      }

      else
      {
        CSDBSqliteStatementReset();
      }
    }
  }

  v71 = IMLogHandleForCategory();
  if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = v468;
    _os_log_impl(&dword_1B7AD5000, v71, OS_LOG_TYPE_INFO, "Got an invalid rowid looking for a handle mapped to group id: %lld", buf, 0xCu);
  }

  *&valuePtr = -1;
  v72 = CSDBSqliteConnectionStatementForSQL();
  if (v72 && *(v72 + 8))
  {
    CSDBSqliteBindInt();
    *buf = 0;
    v73 = CSDBSqliteStatementIntegerResult();
    CSDBSqliteStatementReset();
    v74 = v73 == 1;
  }

  else
  {
    v74 = 0;
  }

  v75 = CSDBSqliteConnectionStatementForSQL();
  if (!v75)
  {
    goto LABEL_156;
  }

  v76 = v75;
  if (!*(v75 + 8))
  {
    goto LABEL_156;
  }

  CSDBSqliteBindInt();
  if (sqlite3_step(*(v76 + 8)) != 100)
  {
LABEL_155:
    CSDBSqliteStatementReset();
LABEL_156:
    v19 = v477;
LABEL_157:
    if (!Mutable)
    {
      goto LABEL_171;
    }

LABEL_158:
    if (!CFArrayGetCount(Mutable))
    {
      v125 = 0;
      goto LABEL_172;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    Count = CFArrayGetCount(Mutable);
    v120 = Count > 1 && v466 > 0;
    v121 = CSDBSqliteConnectionStatementForSQL();
    if (v121)
    {
      v122 = v121;
      if (*(v121 + 8))
      {
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        if (sqlite3_step(*(v122 + 8)) == 100)
        {
          v123 = sqlite3_column_int(*(v122 + 8), 0);
          CSDBSqliteStatementReset();
          if (v123 != -1)
          {
            v124 = v123;
LABEL_359:
            v127 = Mutable;
LABEL_360:
            CFRelease(v127);
            goto LABEL_361;
          }
        }

        else
        {
          CSDBSqliteStatementReset();
        }
      }
    }

    v128 = IMLogHandleForCategory();
    if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v468;
      _os_log_impl(&dword_1B7AD5000, v128, OS_LOG_TYPE_INFO, "Got an invalid rowid looking for a chat mapped to group id: %lld", buf, 0xCu);
    }

    v129 = CSDBSqliteConnectionStatementForSQL();
    if (v129)
    {
      v130 = v129;
      if (*(v129 + 8))
      {
        CSDBSqliteBindInt();
        CSDBSqliteBindTextFromCFString();
        while (1)
        {
          while (1)
          {
            if (sqlite3_step(*(v130 + 8)) != 100)
            {
              CSDBSqliteStatementReset();
              v120 = v120;
              goto LABEL_205;
            }

            v131 = sqlite3_column_int(*(v130 + 8), 0);
            v132 = CSDBSqliteConnectionStatementForSQL();
            if (v132)
            {
              v133 = v132;
              if (*(v132 + 8))
              {
                break;
              }
            }
          }

          CSDBSqliteBindInt();
          v134 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
          while (sqlite3_step(*(v133 + 8)) == 100)
          {
            *buf = sqlite3_column_int(*(v133 + 8), 0);
            v137 = CFNumberCreate(alloc, kCFNumberIntType, buf);
            CFArrayAppendValue(v134, v137);
            if (v137)
            {
              CFRelease(v137);
            }
          }

          v138 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v135, Mutable, v136);
          v141 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v139, v134, v140);
          if (objc_msgSend_isEqualToSet_(v138, v142, v141, v143))
          {
            break;
          }

          if (v134)
          {
            CFRelease(v134);
          }

          CSDBSqliteStatementReset();
          v19 = v477;
        }

        if (v134)
        {
          CFRelease(v134);
        }

        CSDBSqliteStatementReset();
        v19 = v477;
        v120 = v120;
        if (v131 != -1)
        {
          v124 = v131;
          sub_1B7B541C8(a2, v468, v131, v120);
          goto LABEL_359;
        }
      }
    }

LABEL_205:
    v144 = CSDBSqliteConnectionStatementForSQL();
    if (!v144 || !*(v144 + 8))
    {
      goto LABEL_358;
    }

    if (Count > 1)
    {
      v148 = objc_msgSend___im_uniqueChatIdentifierForGroupChat(MEMORY[0x1E696AEC0], v145, v146, v147);
      v149 = v148;
      if (v148)
      {
        CFRetain(v148);
        v150 = v149;
        goto LABEL_347;
      }

LABEL_305:
      v150 = 0;
LABEL_347:
      v234 = IMCopyGUIDForChat();
      CSDBSqliteBindTextFromCFString();
      if (v234)
      {
        CFRelease(v234);
      }

      CSDBSqliteBindInt();
      CSDBSqliteBindInt();
      if (v150)
      {
        CSDBSqliteBindTextFromCFString();
        CFRelease(v150);
      }

      else
      {
        CSDBSqliteBindNull();
      }

      CSDBSqliteBindTextFromCFString();
      if (v149)
      {
        CSDBSqliteBindTextFromCFString();
      }

      else
      {
        CSDBSqliteBindNull();
      }

      v235 = CSDBSqliteStatementPerform();
      CSDBSqliteStatementReset();
      if (v235 != 1)
      {
        v124 = CSDBSqliteConnectionRowidOfLastInsert();
        sub_1B7B541C8(a2, v468, v124, v120);
        v245 = CFArrayGetCount(Mutable);
        if (v245 >= 1)
        {
          for (j = 0; j != v245; ++j)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Mutable, j);
            if (ValueAtIndex)
            {
              *buf = -1;
              CFNumberGetValue(ValueAtIndex, kCFNumberLongLongType, buf);
              sub_1B7B53CFC(a2, *buf, v124);
            }
          }
        }

        goto LABEL_359;
      }

      v236 = IMLogHandleForCategory();
      if (os_log_type_enabled(v236, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF1890(v519, &v520);
      }

LABEL_358:
      v124 = -1;
      goto LABEL_359;
    }

    v199 = CFArrayGetValueAtIndex(Mutable, 0);
    if (!v199)
    {
      v215 = IMLogHandleForCategory();
      if (os_log_type_enabled(v215, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v461;
        _os_log_error_impl(&dword_1B7AD5000, v215, OS_LOG_TYPE_ERROR, "[Database] ERROR: Got a NULL handleID for messageID[%d] to create chat. Something is wrong.", buf, 8u);
      }

      v149 = 0;
      goto LABEL_305;
    }

    *&valuePtr = -1;
    CFNumberGetValue(v199, kCFNumberLongLongType, &valuePtr);
    if (valuePtr == -1)
    {
      v233 = IMLogHandleForCategory();
      if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v461;
        v201 = v233;
        v202 = "[Database] ERROR: Was slinging around an invalid handleID for messageID[%d] to create chat. Something is wrong.";
        v203 = 8;
LABEL_568:
        _os_log_error_impl(&dword_1B7AD5000, v201, OS_LOG_TYPE_ERROR, v202, buf, v203);
      }

LABEL_345:
      v150 = 0;
    }

    else
    {
      v150 = sub_1B7B54348(a2, valuePtr);
      if (!v150)
      {
        v200 = IMLogHandleForCategory();
        if (os_log_type_enabled(v200, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = valuePtr;
          v201 = v200;
          v202 = "[Database] ERROR: Got a NULL identifier for handleID[%lld]. Something is seriously wrong.";
          v203 = 12;
          goto LABEL_568;
        }

        goto LABEL_345;
      }
    }

    v149 = 0;
    goto LABEL_347;
  }

  theArraya = Mutable;
  v463 = v58;
  while (1)
  {
    if (sqlite3_column_text(*(v76 + 8), 3))
    {
      v77 = sqlite3_column_text(*(v76 + 8), 3);
      v78 = CFStringCreateWithCString(alloc, v77, 0x8000100u);
    }

    else
    {
      v78 = 0;
    }

    if (sqlite3_column_text(*(v76 + 8), 2))
    {
      v79 = sqlite3_column_text(*(v76 + 8), 2);
      v80 = CFStringCreateWithCString(alloc, v79, 0x8000100u);
    }

    else
    {
      v80 = 0;
    }

    v81 = sub_1B7B53F68(v80, v78);
    v85 = objc_msgSend__appearsToBePhoneNumber(v81, v82, v83, v84);
    v89 = objc_msgSend_length(v81, v86, v87, v88);
    HasPrefix = CFStringHasPrefix(v81, @"+");
    if (v74 && v85 && !HasPrefix && v89 >= 7)
    {
      v91 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
      v92 = CSDBSqliteConnectionStatementForSQL();
      if (v92)
      {
        v93 = v92;
        if (*(v92 + 8))
        {
          CSDBSqliteBindInt();
          while (sqlite3_step(*(v93 + 8)) == 100)
          {
            v94 = sqlite3_column_text(*(v93 + 8), 0);
            if (v94)
            {
              v95 = CFStringCreateWithCString(alloc, v94, 0x8000100u);
              if (v95)
              {
                v96 = v95;
                CFArrayAppendValue(v91, v95);
                CFRelease(v96);
              }
            }
          }

          CSDBSqliteStatementReset();
        }
      }

      if (v91)
      {
        if (CFArrayGetCount(v91) >= 1)
        {
          for (k = 0; k < CFArrayGetCount(v91); ++k)
          {
            v98 = CFArrayGetValueAtIndex(v91, k);
            if (v98)
            {
              v99 = v98;
              if (v81)
              {
                CFRelease(v81);
              }

              v81 = sub_1B7B53F68(v99, v78);
              v103 = objc_msgSend__appearsToBePhoneNumber(v81, v100, v101, v102);
              v104 = CFStringHasPrefix(v81, @"+");
              if (!v103 || v104)
              {
                break;
              }

              v105 = IMLogHandleForCategory();
              if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = v99;
                v106 = v105;
                v107 = "Ugh, the address '%@' wouldn't canonicalize.";
LABEL_131:
                _os_log_impl(&dword_1B7AD5000, v106, OS_LOG_TYPE_INFO, v107, buf, 0xCu);
              }
            }

            else
            {
              v108 = IMLogHandleForCategory();
              if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                *&buf[4] = 0;
                v106 = v108;
                v107 = "MsgAddress '%@' was null, we won't even try to canonicalize it.";
                goto LABEL_131;
              }
            }
          }
        }

        CFRelease(v91);
        v58 = v463;
      }
    }

    *v502 = sub_1B7B5388C(a2, v80, v81, @"SMS", v78);
    if (*v502 == -1)
    {
      break;
    }

    v109 = CFNumberCreate(alloc, kCFNumberLongLongType, v502);
    if (v109)
    {
      v110 = v109;
      CFArrayAppendValue(theArraya, v109);
      CFRelease(v110);
      if (v74)
      {
        v111 = *v502;
        if (*v502 == -1)
        {
          v118 = IMLogHandleForCategory();
          if (os_log_type_enabled(v118, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *&buf[4] = -1;
            *&buf[12] = 2048;
            *&buf[14] = v468;
            v115 = v118;
            v116 = "[Database] ERROR: You tried to join handle [%lld] to group [%lld] with an invalid row id.";
            v117 = 22;
LABEL_153:
            _os_log_error_impl(&dword_1B7AD5000, v115, OS_LOG_TYPE_ERROR, v116, buf, v117);
            if (!v78)
            {
              goto LABEL_146;
            }

LABEL_145:
            CFRelease(v78);
            goto LABEL_146;
          }
        }

        else
        {
          v112 = CSDBSqliteConnectionStatementForSQL();
          if (v112)
          {
            if (*(v112 + 8))
            {
              CSDBSqliteBindInt();
              CSDBSqliteBindInt();
              v113 = CSDBSqliteStatementPerform();
              CSDBSqliteStatementReset();
              if (v113 == 1)
              {
                v114 = IMLogHandleForCategory();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218496;
                  *&buf[4] = v111;
                  *&buf[12] = 2048;
                  *&buf[14] = v468;
                  v500 = 1024;
                  LODWORD(v501) = 1;
                  v115 = v114;
                  v116 = "[Database] ERROR: Failed to asscociate handle [%lld] to group [%lld] with sqlite result: %d.";
                  v117 = 28;
                  goto LABEL_153;
                }
              }
            }
          }
        }
      }
    }

    if (v78)
    {
      goto LABEL_145;
    }

LABEL_146:
    if (v80)
    {
      CFRelease(v80);
    }

    if (v81)
    {
      CFRelease(v81);
    }

    Mutable = theArraya;
    if (sqlite3_step(*(v76 + 8)) != 100)
    {
      goto LABEL_155;
    }
  }

  if (v78)
  {
    CFRelease(v78);
  }

  v19 = v477;
  if (v80)
  {
    CFRelease(v80);
  }

  if (theArraya)
  {
    CFRelease(theArraya);
  }

  if (v81)
  {
    CFRelease(v81);
  }

  Mutable = 0;
LABEL_171:
  v125 = 1;
LABEL_172:
  v126 = IMLogHandleForCategory();
  if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v58;
    _os_log_impl(&dword_1B7AD5000, v126, OS_LOG_TYPE_INFO, "ORPHAN: Unable to find handles for groupID[%d]. This means we have message rows without a matching group. Failing the chat lookup.", buf, 8u);
  }

  if ((v125 & 1) == 0)
  {
    CFRelease(Mutable);
  }

  v124 = -1;
  v127 = cf;
  if (cf)
  {
    goto LABEL_360;
  }

LABEL_361:
  if (log < 0)
  {
    if (v124 != -1)
    {
      sub_1B7B53FF0(a2, v19, v124);
    }

    goto LABEL_562;
  }

  if (v124 == -1)
  {
    v244 = IMLogHandleForCategory();
    if (os_log_type_enabled(v244, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v478;
      _os_log_impl(&dword_1B7AD5000, v244, OS_LOG_TYPE_INFO, "ORPHAN: Could not find an appropriate chat to use for messageID[%d]. Skipping this message.", buf, 8u);
    }

    goto LABEL_562;
  }

  v237 = CSDBSqliteConnectionStatementForSQL();
  if (!v237 || !*(v237 + 8))
  {
    v243 = IMLogHandleForCategory();
    if (os_log_type_enabled(v243, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1B30(v509, v510);
    }

    goto LABEL_562;
  }

  objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v238, v239, v240);
  if (sqlite3_column_text(*(v19 + 8), 3))
  {
    v241 = sqlite3_column_text(*(v19 + 8), 3);
    v242 = CFStringCreateWithCString(alloc, v241, 0x8000100u);
  }

  else
  {
    v242 = 0;
  }

  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  v248 = CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();
  if (v248 != 1)
  {
    v249 = CSDBSqliteConnectionRowidOfLastInsert();
    if (v242)
    {
      CFRelease(v242);
    }

    sub_1B7B537D8(a2, v249, v124);
    theArrayc = objc_alloc_init(MEMORY[0x1E696AD40]);
    if (sqlite3_column_text(*(v19 + 8), 3))
    {
      v250 = sqlite3_column_text(*(v19 + 8), 3);
      v251 = CFStringCreateWithCString(alloc, v250, 0x8000100u);
    }

    else
    {
      v251 = 0;
    }

    v467 = v249;
    v252 = sqlite3_column_int(*(v19 + 8), 2);
    v256 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v253, v254, v255, v252);
    objc_msgSend_timeIntervalSinceReferenceDate(v256, v257, v258, v259);
    if (v251)
    {
      v260 = objc_alloc(MEMORY[0x1E696AAB0]);
      v263 = objc_msgSend_initWithString_(v260, v261, v251, v262);
      objc_msgSend_appendAttributedString_(theArrayc, v264, v263, v265);

      CFRelease(v251);
    }

    cfb = sqlite3_column_int(*(v19 + 8), 0);
    v266 = sqlite3_column_int(*(v19 + 8), 7);
    v267 = CSDBSqliteConnectionStatementForSQL();
    if (!v267)
    {
      goto LABEL_465;
    }

    v271 = v267;
    if (!*(v267 + 8))
    {
      goto LABEL_465;
    }

    CSDBSqliteBindInt();
    if (sqlite3_step(*(v271 + 8)) == 100)
    {
      if (v266 <= 0)
      {
        v272 = --v266;
      }

      else
      {
        v272 = v266;
      }

      v462 = v272;
      if (cfb <= 0)
      {
        v273 = -(-cfb & 0xF);
      }

      else
      {
        v273 = cfb & 0xF;
      }

      v459 = v273;
      while (1)
      {
        v274 = sqlite3_column_int(*(v271 + 8), 3);
        if (sqlite3_column_text(*(v271 + 8), 5))
        {
          v275 = sqlite3_column_text(*(v271 + 8), 5);
          v276 = CFStringCreateWithCString(alloc, v275, 0x8000100u);
        }

        else
        {
          v276 = 0;
        }

        if (sqlite3_column_text(*(v271 + 8), 10))
        {
          v277 = sqlite3_column_text(*(v271 + 8), 10);
          v278 = CFStringCreateWithCString(alloc, v277, 0x8000100u);
        }

        else
        {
          v278 = 0;
        }

        if (v276)
        {
          break;
        }

LABEL_407:
        if (v278)
        {
          goto LABEL_408;
        }

LABEL_409:
        if (sqlite3_step(*(v271 + 8)) != 100)
        {
          goto LABEL_464;
        }
      }

      v279 = CFEqual(v276, @"application/smil");
      v280 = CFEqual(v276, @"text/plain");
      if (v279)
      {
LABEL_406:
        CFRelease(v276);
        goto LABEL_407;
      }

      if (v280)
      {
        if (sqlite3_column_text(*(v271 + 8), 2))
        {
          v284 = sqlite3_column_text(*(v271 + 8), 2);
          v285 = CFStringCreateWithCString(alloc, v284, 0x8000100u);
          if (v285)
          {
            v286 = v285;
            v287 = objc_alloc(MEMORY[0x1E696AAB0]);
            v290 = objc_msgSend_initWithString_(v287, v288, v286, v289);
            objc_msgSend_appendAttributedString_(theArrayc, v291, v290, v292);

            CFRelease(v276);
            if (v278)
            {
              CFRelease(v278);
            }

            v278 = v286;
LABEL_408:
            CFRelease(v278);
            goto LABEL_409;
          }
        }

        goto LABEL_406;
      }

      if (v278)
      {
        v293 = objc_msgSend_pathExtension(v278, v281, v282, v283);
        v297 = 0x1E69A6000;
        if (v293)
        {
          v298 = v293;
          if (objc_msgSend_length(v293, v294, v295, v296))
          {
LABEL_423:
            v302 = objc_msgSend_defaultHFSFileManager(*(v297 + 216), v294, v295, v296);
            objc_msgSend_UTITypeOfPathExtension_(v302, v303, v298, v304);
            v305 = sqlite3_column_blob(*(v271 + 8), 2);
            v306 = sqlite3_column_bytes(*(v271 + 8), 2);
            v309 = 0;
            if (v305 && v306)
            {
              v309 = CFDataCreate(alloc, v305, v306);
            }

            v464 = v309;
            v310 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v307, @"/var/mobile/Library/SMS/Parts/", v308);
            v313 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v311, @"%02x", v312, v462);
            v316 = objc_msgSend_stringByAppendingPathComponent_(v310, v314, v313, v315);
            v319 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v317, @"%02d", v318, v459);
            v322 = objc_msgSend_stringByAppendingPathComponent_(v316, v320, v319, v321);
            v325 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v323, @"%d-%d", v324, cfb, v274);
            v328 = objc_msgSend_stringByAppendingPathComponent_(v322, v326, v325, v327);
            if (v298)
            {
              objc_msgSend_stringByAppendingPathExtension_(v328, v329, v298, v331);
            }

            v332 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v329, v330, v331);
            v333 = CSDBSqliteConnectionStatementForSQL();
            if (!v333 || !*(v333 + 8))
            {
              goto LABEL_460;
            }

            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindInt();
            v334 = CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
            if (v334 == 1)
            {
              v335 = IMLogHandleForCategory();
              if (os_log_type_enabled(v335, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CF1984(v517, v518);
              }

LABEL_460:
              v383 = objc_alloc(MEMORY[0x1E695DF20]);
              v386 = objc_msgSend_initWithObjectsAndKeys_(v383, v384, v332, v385, v465, 0);
              v387 = objc_alloc(MEMORY[0x1E696AAB0]);
              v389 = objc_msgSend_initWithString_attributes_(v387, v388, v460, v386);
              objc_msgSend_appendAttributedString_(theArrayc, v390, v389, v391);

              if (v298)
              {
                CFRelease(v298);
              }

              v19 = v477;
              if (v464)
              {
                CFRelease(v464);
              }

              goto LABEL_406;
            }

            CSDBSqliteConnectionRowidOfLastInsert();
            v336 = CSDBSqliteConnectionStatementForSQL();
            if (v336)
            {
              if (*(v336 + 8))
              {
                CSDBSqliteBindInt();
                CSDBSqliteBindInt();
                v340 = CSDBSqliteStatementPerform();
                CSDBSqliteStatementReset();
                if (v340 == 1)
                {
                  v341 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v341, OS_LOG_TYPE_ERROR))
                  {
                    sub_1B7CF18D0(v515, v516);
                  }
                }
              }
            }

            if (!v464)
            {
LABEL_455:
              v380 = CSDBSqliteConnectionStatementForSQL();
              if (v380)
              {
                if (*(v380 + 8))
                {
                  CSDBSqliteBindTextFromCFString();
                  CSDBSqliteBindTextFromCFString();
                  v381 = CSDBSqliteStatementPerform();
                  CSDBSqliteStatementReset();
                  if (v381 == 1)
                  {
                    v382 = IMLogHandleForCategory();
                    if (os_log_type_enabled(v382, OS_LOG_TYPE_ERROR))
                    {
                      sub_1B7CF1944(v513, v514);
                    }
                  }
                }
              }

              goto LABEL_460;
            }

            if (v278)
            {
              PathComponent = objc_msgSend_lastPathComponent(v278, v337, v338, v339);
            }

            else
            {
              v458 = v332;
              if (!v298)
              {
LABEL_446:
                v343 = MEMORY[0x1E696AEC0];
                v344 = objc_msgSend_hash(v332, v337, v338, v339);
                v347 = objc_msgSend_stringWithFormat_(v343, v345, @"%02x", v346, v344);
                v348 = MEMORY[0x1E696AEC0];
                v352 = objc_msgSend_hash(v332, v349, v350, v351);
                if (v352 <= 0)
                {
                  v355 = -(-v352 & 0xF);
                }

                else
                {
                  v355 = v352 & 0xF;
                }

                v356 = objc_msgSend_stringWithFormat_(v348, v353, @"%02d", v354, v355);
                v359 = objc_msgSend_stringByAppendingPathComponent_(@"/var/mobile/Library/SMS/Attachments", v357, v347, v358);
                v362 = objc_msgSend_stringByAppendingPathComponent_(v359, v360, v356, v361);
                v365 = objc_msgSend_stringByAppendingPathComponent_(v362, v363, v458, v364);
                *&valuePtr = 0;
                v369 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v366, v367, v368);
                v373 = objc_msgSend_stringByDeletingLastPathComponent(v365, v370, v371, v372);
                if ((objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v369, v374, v373, 1, 0, &valuePtr) & 1) == 0)
                {
                  v376 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v376, OS_LOG_TYPE_ERROR))
                  {
                    v392 = objc_msgSend_stringByDeletingLastPathComponent(v365, v375, v377, v378);
                    *buf = 138412546;
                    *&buf[4] = v392;
                    *&buf[12] = 2112;
                    *&buf[14] = valuePtr;
                    _os_log_error_impl(&dword_1B7AD5000, v376, OS_LOG_TYPE_ERROR, "[Database] ERROR: Failed to create directory [%@]: %@", buf, 0x16u);
                  }
                }

                if ((objc_msgSend_writeToFile_atomically_(v464, v375, v365, 1) & 1) == 0)
                {
                  v379 = IMLogHandleForCategory();
                  if (os_log_type_enabled(v379, OS_LOG_TYPE_ERROR))
                  {
                    sub_1B7CF1910(&v495, v496);
                  }
                }

                goto LABEL_455;
              }

              PathComponent = objc_msgSend_stringByAppendingPathExtension_(v332, v337, v298, v339);
            }

            v458 = PathComponent;
            goto LABEL_446;
          }

          CFRelease(v298);
        }
      }

      else
      {
        v297 = 0x1E69A6000uLL;
        if (!objc_msgSend_length(v276, v281, v282, v283))
        {
          v298 = 0;
          goto LABEL_423;
        }
      }

      v299 = objc_msgSend_defaultHFSFileManager(*(v297 + 216), v294, v295, v296);
      v298 = objc_msgSend_pathExtensionForMIMEType_(v299, v300, v276, v301);
      goto LABEL_423;
    }

LABEL_464:
    CSDBSqliteStatementReset();
LABEL_465:
    if (objc_msgSend_length(theArrayc, v268, v269, v270))
    {
      v396 = objc_msgSend___im_attributedStringByAssigningMessagePartNumbers(theArrayc, v393, v394, v395);
    }

    else
    {
      v396 = 0;
    }

    v397 = v396;
    JWEncodeCodableObject();
    if (sqlite3_column_text(*(v19 + 8), 1))
    {
      v398 = sqlite3_column_text(*(v19 + 8), 1);
      v399 = CFStringCreateWithCString(alloc, v398, 0x8000100u);
    }

    else
    {
      v399 = 0;
    }

    if (sqlite3_column_text(*(v19 + 8), 3))
    {
      v400 = sqlite3_column_text(*(v19 + 8), 3);
      v401 = CFStringCreateWithCString(alloc, v400, 0x8000100u);
    }

    else
    {
      v401 = 0;
    }

    if (sqlite3_column_text(*(v19 + 8), 6))
    {
      v402 = sqlite3_column_text(*(v19 + 8), 6);
      cfc = CFStringCreateWithCString(alloc, v402, 0x8000100u);
    }

    else
    {
      cfc = 0;
    }

    if (sqlite3_column_text(*(v19 + 8), 13))
    {
      v403 = sqlite3_column_text(*(v19 + 8), 13);
      theArrayd = CFStringCreateWithCString(alloc, v403, 0x8000100u);
    }

    else
    {
      theArrayd = 0;
    }

    if (sqlite3_column_text(*(v19 + 8), 12))
    {
      v407 = sqlite3_column_text(*(v19 + 8), 12);
      v408 = CFStringCreateWithCString(alloc, v407, 0x8000100u);
    }

    else
    {
      v408 = 0;
    }

    v409 = (!v401 || !CFStringGetLength(v401)) && (!v408 || !CFStringGetLength(v408)) && objc_msgSend_length(v397, v404, v405, v406) == 0;
    v410 = sqlite3_column_int(*(v477 + 8), 2);
    v414 = objc_msgSend_dateWithTimeIntervalSince1970_(MEMORY[0x1E695DF00], v411, v412, v413, v410);
    objc_msgSend_timeIntervalSinceReferenceDate(v414, v415, v416, v417);
    *&valuePtr = -1;
    v418 = CFArrayCreateMutable(alloc, 0, MEMORY[0x1E695E9C0]);
    v419 = CSDBSqliteConnectionStatementForSQL();
    if (v419 && (v420 = v419, *(v419 + 8)))
    {
      CSDBSqliteBindInt();
      while (1)
      {
        if (sqlite3_step(*(v420 + 8)) != 100)
        {
          CSDBSqliteStatementReset();
          goto LABEL_497;
        }

        *buf = sqlite3_column_int(*(v420 + 8), 0);
        if (*buf == -1)
        {
          break;
        }

        v421 = CFNumberCreate(alloc, kCFNumberIntType, buf);
        if (v421)
        {
          v422 = v421;
          CFArrayAppendValue(v418, v421);
          CFRelease(v422);
        }
      }

      if (v418)
      {
        CFRelease(v418);
      }
    }

    else
    {
LABEL_497:
      if (v418)
      {
        v423 = CFArrayGetCount(v418);
        v424 = v423 == 1;
        v425 = v399;
        if (v423 == 1)
        {
          v426 = CFArrayGetValueAtIndex(v418, 0);
          if (v426)
          {
            CFNumberGetValue(v426, kCFNumberLongLongType, &valuePtr);
          }
        }

        CFRelease(v418);
LABEL_505:
        if (valuePtr == -1)
        {
          *&valuePtr = sub_1B7B5388C(a2, v425, 0, @"SMS", theArrayd);
          v427 = valuePtr == -1;
        }

        else
        {
          v427 = 0;
        }

        if (v409)
        {
          v428 = IMLogHandleForCategory();
          if (os_log_type_enabled(v428, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v428, OS_LOG_TYPE_INFO, "This message is empty, and we should NOT keep it.", buf, 2u);
          }

          if (valuePtr == -1)
          {
LABEL_514:
            v429 = IMLogHandleForCategory();
            if (os_log_type_enabled(v429, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v429, OS_LOG_TYPE_INFO, "This message lacks a handle, and we should NOT keep it.", buf, 2u);
            }
          }

          v430 = CSDBSqliteConnectionStatementForSQL();
          if (!v430 || !*(v430 + 8))
          {
            v436 = IMLogHandleForCategory();
            v19 = v477;
            v437 = cfc;
            if (os_log_type_enabled(v436, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v436, OS_LOG_TYPE_INFO, "Unable to delete message.", buf, 2u);
            }

LABEL_531:
            sub_1B7B53FF0(a2, v19, v124);
            v439 = IMLogHandleForCategory();
            if (os_log_type_enabled(v439, OS_LOG_TYPE_ERROR))
            {
              sub_1B7CF1A04(&v493, v494);
              if (!v437)
              {
LABEL_534:
                if (theArrayd)
                {
                  CFRelease(theArrayd);
                }

                if (v408)
                {
                  CFRelease(v408);
                }

                if (v425)
                {
                  CFRelease(v425);
                }

                if (v401)
                {
                  v440 = v401;
LABEL_561:
                  CFRelease(v440);
                  goto LABEL_562;
                }

                goto LABEL_562;
              }
            }

            else if (!v437)
            {
              goto LABEL_534;
            }

            CFRelease(v437);
            goto LABEL_534;
          }

          CSDBSqliteBindInt();
          v431 = CSDBSqliteStatementPerform();
          v432 = IMLogHandleForCategory();
          v433 = os_log_type_enabled(v432, OS_LOG_TYPE_INFO);
          v19 = v477;
          if (v431 == 1)
          {
            if (v433)
            {
              *buf = 134218240;
              *&buf[4] = v467;
              *&buf[12] = 1024;
              *&buf[14] = 1;
              v434 = v432;
              v435 = "Problems deleting message [%lld], SQLite error: %d";
LABEL_529:
              _os_log_impl(&dword_1B7AD5000, v434, OS_LOG_TYPE_INFO, v435, buf, 0x12u);
            }
          }

          else if (v433)
          {
            *buf = 134218240;
            *&buf[4] = v467;
            *&buf[12] = 1024;
            *&buf[14] = v478;
            v434 = v432;
            v435 = "Message [%lld] Legacy [%d] was problematic, thus we skip it.";
            goto LABEL_529;
          }

          CSDBSqliteStatementReset();
          v425 = v399;
          v437 = cfc;
          goto LABEL_531;
        }

        if (v424 && v427)
        {
          goto LABEL_514;
        }

        v438 = CSDBSqliteConnectionStatementForSQL();
        if (!v438 || !*(v438 + 8))
        {
          goto LABEL_552;
        }

        CSDBSqliteBindBlobFromCFData();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt();
        if (valuePtr == -1)
        {
          CSDBSqliteBindNull();
        }

        else
        {
          CSDBSqliteBindInt();
        }

        CSDBSqliteBindInt();
        v443 = CSDBSqliteStatementPerform();
        CSDBSqliteStatementReset();
        if (v443 == 1 && (v444 = IMLogHandleForCategory(), os_log_type_enabled(v444, OS_LOG_TYPE_ERROR)))
        {
          sub_1B7CF19C4(v511, v512);
          if (!v425)
          {
LABEL_554:
            v19 = v477;
            if (v408)
            {
              CFRelease(v408);
            }

            if (v401)
            {
              CFRelease(v401);
            }

            if (cfc)
            {
              CFRelease(cfc);
            }

            v440 = theArrayd;
            if (theArrayd)
            {
              goto LABEL_561;
            }

            goto LABEL_562;
          }
        }

        else
        {
LABEL_552:
          if (!v425)
          {
            goto LABEL_554;
          }
        }

        CFRelease(v425);
        goto LABEL_554;
      }
    }

    v424 = 0;
    v425 = v399;
    goto LABEL_505;
  }

  v447 = IMLogHandleForCategory();
  if (os_log_type_enabled(v447, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF1A38(v447);
    if (v242)
    {
LABEL_576:
      CFRelease(v242);
    }
  }

  else if (v242)
  {
    goto LABEL_576;
  }

  objc_autoreleasePoolPop(context);
LABEL_578:
  v448 = IMLogHandleForCategory();
  if (os_log_type_enabled(v448, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF1AB8(v486, v448);
  }

LABEL_580:
  v15 = 0;
LABEL_581:
  CSDBSqliteStatementReset();
LABEL_582:
  v449 = CSDBSqliteConnectionStatementForSQL();
  if (!v449 || !*(v449 + 8) || (v450 = CSDBSqliteStatementPerform(), CSDBSqliteStatementReset(), v450 == 1))
  {
    v451 = IMLogHandleForCategory();
    if (os_log_type_enabled(v451, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v451, OS_LOG_TYPE_INFO, "Whoa pardner, we didn't drop the group to chat map table. C'est la vie.", buf, 2u);
    }
  }

  v452 = CSDBSqliteConnectionStatementForSQL();
  if (!v452 || !*(v452 + 8) || (v453 = CSDBSqliteStatementPerform(), CSDBSqliteStatementReset(), v453 == 1))
  {
    v454 = IMLogHandleForCategory();
    if (os_log_type_enabled(v454, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v454, OS_LOG_TYPE_INFO, "Whoa pardner, we didn't drop the non-canonical group to handle map table. C'est la vie.", buf, 2u);
    }
  }

  if (v15)
  {
    v455 = IMLogHandleForCategory();
    if (os_log_type_enabled(v455, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v455, OS_LOG_TYPE_INFO, "Asking DB to analyze.", buf, 2u);
    }

    CSDBSqliteConnectionPerformSQL();
  }

  v456 = IMLogHandleForCategory();
  if (os_log_type_enabled(v456, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v15;
    _os_log_impl(&dword_1B7AD5000, v456, OS_LOG_TYPE_INFO, "Migration ended with result %d", buf, 8u);
  }

  v457 = IMLogHandleForCategory();
  if (os_log_type_enabled(v457, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v457, OS_LOG_TYPE_INFO, "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -", buf, 2u);
  }

  return v15;
}

BOOL sub_1B7B537D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = CSDBSqliteConnectionStatementForSQL();
  if (!v3)
  {
    return 1;
  }

  if (!*(v3 + 8))
  {
    return 1;
  }

  CSDBSqliteBindInt();
  CSDBSqliteBindInt();
  v4 = CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();
  if (v4 != 1)
  {
    return 1;
  }

  v5 = IMLogHandleForCategory();
  result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1B7CF1B70();
    return 0;
  }

  return result;
}

uint64_t sub_1B7B5388C(uint64_t a1, __CFString *a2, __CFString *theString, const __CFString *a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  if (theString)
  {
    Insert = sub_1B7B53E58(a1, theString, a4, a5, 1);
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Insert = -1;
    if (!a2)
    {
      goto LABEL_7;
    }
  }

  if (Insert == -1)
  {
    Insert = sub_1B7B53E58(a1, a2, a4, a5, 0);
  }

LABEL_7:
  if (Insert != -1)
  {
    goto LABEL_8;
  }

  if (IMStringIsEmpty() && IMStringIsEmpty())
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v36 = 138412802;
      v37 = a2;
      v38 = 2112;
      v39 = theString;
      v40 = 2080;
      v41 = "int64_t __createHandleRecord(CSDBSqliteConnection *, CFStringRef, CFStringRef, CFStringRef, CFStringRef)";
      v12 = "Got an invalid IDs uncanon: (%@) canon: (%@) in %s.";
LABEL_23:
      v17 = v11;
      v18 = 32;
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  if (IMStringIsEmpty())
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v36 = 138412546;
      v37 = a4;
      v38 = 2080;
      v39 = "int64_t __createHandleRecord(CSDBSqliteConnection *, CFStringRef, CFStringRef, CFStringRef, CFStringRef)";
      v12 = "Got an invalid service (%@) in %s.";
      v17 = v16;
      v18 = 22;
LABEL_24:
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, v12, &v36, v18);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (!a2 || (v19 = objc_msgSend_lowercaseString(a2, v13, v14, v15), (objc_msgSend_isEqualToString_(v19, v20, @"missed call", v21) & 1) == 0))
  {
    if (!theString || (v22 = objc_msgSend_lowercaseString(theString, v13, v14, v15), !objc_msgSend_isEqualToString_(v22, v23, @"missed call", v24)))
    {
      v27 = CSDBSqliteConnectionStatementForSQL();
      if (!v27 || !*(v27 + 8))
      {
        goto LABEL_25;
      }

      if (theString)
      {
        v28 = CFRetain(theString);
      }

      else
      {
        v29 = sub_1B7B53F68(a2, a5);
        IsEmpty = IMStringIsEmpty();
        if (!v29 || (IsEmpty & 1) != 0)
        {
          v31 = IMStringIsEmpty();
          v28 = 0;
          if (a2 && (v31 & 1) == 0)
          {
            v28 = CFRetain(a2);
          }

          if (!v29)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v28 = CFRetain(v29);
        }

        CFRelease(v29);
      }

LABEL_41:
      CSDBSqliteBindTextFromCFString();
      CSDBSqliteBindTextFromCFString();
      objc_msgSend_uppercaseString(a5, v32, v33, v34);
      CSDBSqliteBindTextFromCFString();
      if (IMStringIsEmpty())
      {
        CSDBSqliteBindNull();
      }

      else
      {
        CSDBSqliteBindTextFromCFString();
      }

      if (CSDBSqliteStatementPerform() == 101)
      {
        Insert = CSDBSqliteConnectionRowidOfLastInsert();
      }

      else
      {
        v35 = IMLogHandleForCategory();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v36 = 138413058;
          v37 = a2;
          v38 = 2112;
          v39 = theString;
          v40 = 2112;
          v41 = a4;
          v42 = 2112;
          v43 = a5;
          _os_log_error_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_ERROR, "[Database] ERROR: Unable to create handle row with uncanonid[%@] canonid[%@] service[%@] country[%@]", &v36, 0x2Au);
        }

        Insert = -1;
      }

      CSDBSqliteStatementReset();
      if (v28)
      {
        CFRelease(v28);
      }

LABEL_8:
      if (Insert != -1)
      {
        return Insert;
      }

      goto LABEL_25;
    }
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v36 = 138412802;
    v37 = a2;
    v38 = 2112;
    v39 = theString;
    v40 = 2080;
    v41 = "int64_t __createHandleRecord(CSDBSqliteConnection *, CFStringRef, CFStringRef, CFStringRef, CFStringRef)";
    v12 = "Got an invalid identifier (%@) (%@) in %s.";
    goto LABEL_23;
  }

LABEL_25:
  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v36 = 138413058;
    v37 = a2;
    v38 = 2112;
    v39 = theString;
    v40 = 2112;
    v41 = a4;
    v42 = 2112;
    v43 = a5;
    _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "AWOL handle for uncanonicalizedID [%@]  canonicalizedID [%@] Service [%@] Country [%@]", &v36, 0x2Au);
  }

  return -1;
}

BOOL sub_1B7B53CFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 == -1 || a3 == -1)
  {
    v9 = IMLogHandleForCategory();
    result = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (result)
    {
      v10 = 134218240;
      v11 = a2;
      v12 = 2048;
      v13 = a3;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "** You attempted to bind HandleID [%lld] to ChatID [%lld]. One of these values is bogus.", &v10, 0x16u);
      return 0;
    }
  }

  else
  {
    v5 = CSDBSqliteConnectionStatementForSQL();
    if (v5 && *(v5 + 8))
    {
      CSDBSqliteBindInt();
      CSDBSqliteBindInt();
    }

    v6 = CSDBSqliteStatementPerform();
    CSDBSqliteStatementReset();
    if (v6 == 1)
    {
      v7 = IMLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF1BE8();
      }
    }

    return v6 != 1;
  }

  return result;
}

uint64_t sub_1B7B53E58(uint64_t a1, __CFString *theString, const __CFString *a3, uint64_t a4, int a5)
{
  Length = CFStringGetLength(theString);
  v10 = -1;
  if (a3)
  {
    if (Length)
    {
      if (CFStringGetLength(a3))
      {
        v11 = CSDBSqliteConnectionStatementForSQL();
        if (v11)
        {
          v12 = v11;
          if (*(v11 + 8))
          {
            if (a5 || (v14 = sub_1B7B53F68(theString, a4)) == 0)
            {
              v13 = CFRetain(theString);
            }

            else
            {
              v15 = v14;
              v13 = CFRetain(v14);
              CFRelease(v15);
            }

            CSDBSqliteBindTextFromCFString();
            CSDBSqliteBindTextFromCFString();
            if (sqlite3_step(*(v12 + 8)) == 100)
            {
              v10 = sqlite3_column_int(*(v12 + 8), 0);
            }

            else
            {
              v10 = -1;
            }

            CSDBSqliteStatementReset();
            if (v13)
            {
              CFRelease(v13);
            }
          }
        }
      }
    }
  }

  return v10;
}

__CFString *sub_1B7B53F68(__CFString *theString, uint64_t a2)
{
  v2 = theString;
  if (theString)
  {
    if (CFStringHasPrefix(theString, @"+"))
    {
      v6 = IMCanonicalizeFormattedString();
    }

    else if (objc_msgSend__appearsToBePhoneNumber(v2, v3, v4, v5))
    {
      v6 = IMInternationalForPhoneNumberWithOptions();
    }

    else
    {
      v6 = objc_msgSend_lowercaseString(v2, v7, v8, v9);
    }

    v2 = v6;
    if (v6)
    {
      CFRetain(v6);
    }
  }

  return v2;
}

void sub_1B7B53FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  keys[1] = *MEMORY[0x1E69E9840];
  valuePtr = sqlite3_column_int(*(a2 + 8), 2);
  v3 = CSDBSqliteConnectionStatementForSQL();
  if (v3)
  {
    v4 = v3;
    if (*(v3 + 8))
    {
      CSDBSqliteBindInt();
      if (sqlite3_step(*(v4 + 8)) == 100)
      {
        v5 = sqlite3_column_int(*(v4 + 8), 0);
        CSDBSqliteStatementReset();
        if (v5)
        {
          return;
        }
      }

      else
      {
        CSDBSqliteStatementReset();
      }
    }
  }

  v6 = *MEMORY[0x1E695E480];
  v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  if (v7)
  {
    v8 = v7;
    values = v7;
    keys[0] = @"CKPlaceholderTimeSince1970Property";
    v9 = CFDictionaryCreate(v6, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v9)
    {
      v10 = v9;
      v11 = CSDBSqliteConnectionStatementForSQL();
      if (v11 && *(v11 + 8))
      {
        if (JWEncodeDictionary())
        {
          CSDBSqliteBindBlobFromCFData();
        }

        CSDBSqliteBindInt();
        if (CSDBSqliteStatementPerform() != 101)
        {
          v12 = IMLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF1C60();
          }
        }

        CSDBSqliteStatementReset();
      }

      CFRelease(v10);
    }

    CFRelease(v8);
  }
}

void sub_1B7B541C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2 == -1 || a3 == -1)
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF1CE4();
    }
  }

  else
  {
    v6 = a4;
    v7 = CSDBSqliteConnectionStatementForSQL();
    if (v7)
    {
      if (*(v7 + 8))
      {
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        CSDBSqliteBindInt();
        v8 = CSDBSqliteStatementPerform();
        CSDBSqliteStatementReset();
        if (v8 == 1)
        {
          v9 = IMLogHandleForCategory();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            v11 = 134218752;
            v12 = a3;
            v13 = 2048;
            v14 = a2;
            v15 = 1024;
            v16 = v6;
            v17 = 1024;
            v18 = 1;
            _os_log_error_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_ERROR, "[Database] ERROR: Failed to Asscociated chat [%lld] for group [%lld] (isBroadcast[%d]) with Sqlite result: %d.", &v11, 0x22u);
          }
        }
      }
    }
  }
}

CFStringRef sub_1B7B54348(uint64_t a1, uint64_t a2)
{
  v2 = CSDBSqliteConnectionStatementForSQL();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!*(v2 + 8))
  {
    return 0;
  }

  CSDBSqliteBindInt();
  if (sqlite3_step(*(v3 + 8)) == 100 && sqlite3_column_text(*(v3 + 8), 0))
  {
    v4 = *MEMORY[0x1E695E480];
    v5 = sqlite3_column_text(*(v3 + 8), 0);
    v6 = CFStringCreateWithCString(v4, v5, 0x8000100u);
  }

  else
  {
    v6 = 0;
  }

  CSDBSqliteStatementReset();
  return v6;
}

_BYTE *sub_1B7B54408(_BYTE *result, _BYTE *a2)
{
  *result = 0;
  *a2 = 0;
  return result;
}

void IMDSqlOperationSetError(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    v4 = *(a1 + 168);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 168) = 0;
    }

    if (cf)
    {
      *(a1 + 168) = CFRetain(cf);
    }
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF23C4(v5, v6, v7, v8);
    }
  }
}

uint64_t IMDSqlOperationBeginTransaction(void *a1)
{
  if (a1)
  {
    if (!a1[1])
    {
      v2 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF2770(v2, v3, v4, v5);
      }
    }

    _IMDSqlOperationBeginQuery(a1, @"BEGIN IMMEDIATE;");
    IMDSqlOperationFinishQuery(a1);
    if (!a1[21])
    {
      a1[2] = CFRetain(@"BEGIN IMMEDIATE;");
      return 1;
    }
  }

  else
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF282C(v7, v8, v9, v10);
    }
  }

  return 0;
}

uint64_t IMDSqlOperationCommitTransaction(void *a1)
{
  if (!a1)
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2A60(v12, v13, v14, v15);
    }

    return 0;
  }

  if (!a1[1])
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF28E8(v2, v3, v4, v5);
    }
  }

  if (!a1[2])
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF29A4(v6, v7, v8, v9);
    }

    if (!a1[2])
    {
      return 0;
    }
  }

  _IMDSqlOperationBeginQuery(a1, @"COMMIT;");
  IMDSqlOperationFinishQuery(a1);
  if (a1[21])
  {
    return 0;
  }

  v10 = a1[2];
  if (v10)
  {
    CFRelease(v10);
    a1[2] = 0;
  }

  return 1;
}

uint64_t IMDSqlOperationRevertTransaction(void *a1)
{
  if (!a1)
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2C94(v12, v13, v14, v15);
    }

    return 0;
  }

  if (!a1[1])
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2B1C(v2, v3, v4, v5);
    }
  }

  if (!a1[2])
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2BD8(v6, v7, v8, v9);
    }

    if (!a1[2])
    {
      return 0;
    }
  }

  _IMDSqlOperationBeginQuery(a1, @"ROLLBACK;");
  IMDSqlOperationFinishQuery(a1);
  if (a1[21])
  {
    return 0;
  }

  v10 = a1[2];
  if (v10)
  {
    CFRelease(v10);
    a1[2] = 0;
  }

  return 1;
}

uint64_t IMDSqlOperationCommitOrRevertTransaction(void *a1)
{
  if (!a1)
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF2D50(v1, v2, v3, v4);
    }

    return 0;
  }

  if (a1[21])
  {
    IMDSqlOperationRevertTransaction(a1);
    return 0;
  }

  IMDSqlOperationCommitTransaction(a1);
  return 1;
}

sqlite3_stmt **_IMDSqlOperationGetRowsWithBindingBlock(sqlite3_stmt **a1, const __CFString *a2, void *a3)
{
  v57 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = MEMORY[0x1E696AEC0];
    v11 = IMFileLocationTrimFileName();
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v12, &stru_1F2FA9728, v13);
    v17 = objc_msgSend_stringWithFormat_(v10, v15, @"Unexpected nil '%@' in %s at %s:%d. %@", v16, @"query", "NSArray *_IMDSqlOperationGetRowsWithBindingBlock(IMDSqlOperation *, CFStringRef, __strong dispatch_block_t)", v11, 329, v14);

    v18 = IMGetAssertionFailureHandler();
    if (v18)
    {
      v18(v17);
    }

    else
    {
      v22 = objc_msgSend_warning(MEMORY[0x1E69A6138], v19, v20, v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF2F98(v6, v7, v8, v9);
  }

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v5)
  {
LABEL_4:
    if (!a1)
    {
      goto LABEL_41;
    }

    _IMDSqlOperationBeginQuery(a1, a2);
    v5[2](v5);
    goto LABEL_22;
  }

LABEL_15:
  v23 = MEMORY[0x1E696AEC0];
  v24 = IMFileLocationTrimFileName();
  v27 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v25, &stru_1F2FA9728, v26);
  v30 = objc_msgSend_stringWithFormat_(v23, v28, @"Unexpected nil '%@' in %s at %s:%d. %@", v29, @"binder", "NSArray *_IMDSqlOperationGetRowsWithBindingBlock(IMDSqlOperation *, CFStringRef, __strong dispatch_block_t)", v24, 330, v27);

  v31 = IMGetAssertionFailureHandler();
  if (v31)
  {
    v31(v30);
  }

  else
  {
    v35 = objc_msgSend_warning(MEMORY[0x1E69A6138], v32, v33, v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

  if (a1)
  {
    _IMDSqlOperationBeginQuery(a1, a2);
LABEL_22:
    v36 = 0;
    while (IMDSqlOperationHasRows(a1))
    {
      Row = IMDSqlStatementGetRow(a1 + 4);
      if (Row)
      {
        if (!v36)
        {
          v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
          if (!v36)
          {
            v40 = MEMORY[0x1E696AEC0];
            v41 = IMFileLocationTrimFileName();
            v44 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v42, &stru_1F2FA9728, v43);
            v47 = objc_msgSend_stringWithFormat_(v40, v45, @"Unexpected nil '%@' in %s at %s:%d. %@", v46, @"rows", "NSArray *_IMDSqlOperationGetRowsWithBindingBlock(IMDSqlOperation *, CFStringRef, __strong dispatch_block_t)", v41, 345, v44);

            v48 = IMGetAssertionFailureHandler();
            if (v48)
            {
              v48(v47);
            }

            else
            {
              v52 = objc_msgSend_warning(MEMORY[0x1E69A6138], v49, v50, v51);
              if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v56 = v47;
                _os_log_error_impl(&dword_1B7AD5000, v52, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", buf, 0xCu);
              }
            }

            v36 = 0;
          }
        }

        objc_msgSend_addObject_(v36, v37, Row, v38);
      }
    }

    IMDSqlOperationFinishQuery(a1);
    if (a1[21] && v36)
    {
      a1 = 0;
    }

    else
    {
      v53 = MEMORY[0x1E695E0F0];
      if (v36)
      {
        v53 = v36;
      }

      a1 = v53;
    }
  }

LABEL_41:

  return a1;
}

sqlite3_stmt **_IMDSqlOperationGetRowsForQueryWithBindingBlock(const __CFString *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    if (v5)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v42 = xmmword_1E7CB8EC8;
  v43 = *off_1E7CB8ED8;
  v7 = MEMORY[0x1E696AEC0];
  v8 = IMFileLocationTrimFileName();
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v9, &stru_1F2FA9728, v10);
  v14 = objc_msgSend_stringWithFormat_(v7, v12, @"Unexpected nil '%@' in %s at %s:%d. %@", v13, @"query", "NSArray *_IMDSqlOperationGetRowsForQueryWithBindingBlock(CFStringRef, NSError *__autoreleasing *, __strong IMDSqlOperationBlock)", v8, 368, v11);

  v15 = IMGetAssertionFailureHandler();
  if (v15)
  {
    v15(v14);
  }

  else
  {
    v19 = objc_msgSend_warning(MEMORY[0x1E69A6138], v16, v17, v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

  if (!v6)
  {
LABEL_10:
    v42 = xmmword_1E7CB8EF0;
    v43 = *off_1E7CB8F00;
    v20 = MEMORY[0x1E696AEC0];
    v21 = IMFileLocationTrimFileName();
    v24 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v22, &stru_1F2FA9728, v23);
    v27 = objc_msgSend_stringWithFormat_(v20, v25, @"Unexpected nil '%@' in %s at %s:%d. %@", v26, @"binderBlock", "NSArray *_IMDSqlOperationGetRowsForQueryWithBindingBlock(CFStringRef, NSError *__autoreleasing *, __strong IMDSqlOperationBlock)", v21, 369, v24);

    v28 = IMGetAssertionFailureHandler();
    if (v28)
    {
      v28(v27);
    }

    else
    {
      v32 = objc_msgSend_warning(MEMORY[0x1E69A6138], v29, v30, v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

LABEL_16:
  *&v42 = 0;
  *(&v42 + 1) = &v42;
  *&v43 = 0xD010000000;
  *(&v43 + 1) = "";
  memset(v44, 0, sizeof(v44));
  IMDSqlOperationInitWithSharedCSDBDatabase(v44);
  v33 = *(&v42 + 1);
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = sub_1B7B54F04;
  v39[3] = &unk_1E7CB8F20;
  v34 = v6;
  v40 = v34;
  v41 = &v42;
  RowsWithBindingBlock = _IMDSqlOperationGetRowsWithBindingBlock((v33 + 32), a1, v39);
  if (IMDSqlOperationRelease(*(&v42 + 1) + 32, a2))
  {
    v36 = MEMORY[0x1E695E0F0];
    if (RowsWithBindingBlock)
    {
      v36 = RowsWithBindingBlock;
    }

    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  _Block_object_dispose(&v42, 8);
  return v37;
}

void sub_1B7B54EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B54F04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(a1 + 40) + 8) + 32);
  }

  return result;
}

void IMDSqlOperationColumnByIndex(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF31CC(v6, v7, v8, v9);
    }
  }

  IMDSqlStatementColumnByIndex((a1 + 32), a2, a3);
}

void IMDSqlOperationColumnByName(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = IMFileLocationTrimFileName();
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v8, &stru_1F2FA9728, v9);
    v13 = objc_msgSend_stringWithFormat_(v6, v11, @"Unexpected nil '%@' in %s at %s:%d. %@", v12, @"operation", "IMDSqlColumn IMDSqlOperationColumnByName(IMDSqlOperation *, const char *)", v7, 449, v10);

    v14 = IMGetAssertionFailureHandler();
    if (v14)
    {
      v14(v13);
    }

    else
    {
      v18 = objc_msgSend_warning(MEMORY[0x1E69A6138], v15, v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  IMDSqlStatementColumnByName((a1 + 32), a2, a3);
}

sqlite3_stmt *IMDSqlOperationColumnCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3288(v2, v3, v4, v5);
    }
  }

  return IMDSqlStatementColumnCount((a1 + 32));
}

const void *IMDChatRecordCreate(uint64_t a1, uint8_t *a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int64_t a14, int64_t a15, int64_t a16, uint64_t a17, uint64_t a18, int64_t a19, uint64_t a20, int64_t a21, uint64_t a22, uint64_t a23, int64_t a24, int64_t a25, int64_t a26, int64_t a27, int64_t a28)
{
  v28 = a27;
  v29 = a28;
  v51 = a26;
  v54 = a25;
  v31 = a23;
  v30 = a24;
  v32 = a22;
  v50 = a21;
  v98 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v48 = v30;
    v33 = a5;
    pthread_once(&stru_1EDBE5A50, sub_1B7AE97F8);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v35 = Instance;
      Instance[1] = 0u;
      Instance[3] = 0u;
      Instance[4] = 0u;
      v47 = Instance + 1;
      Instance[2] = 0u;
      v36 = v28;
      if (IMOSLoggingEnabled())
      {
        v37 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_DEBUG, "_IMDChatRecordCreate()", buf, 2u);
        }
      }

      IMDEnsureSharedRecordStoreInitialized();
      objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v38, v39, v40);
      v41 = CSDBRecordCreate();
      if (v41)
      {
        cfa = CFNumberCreate(0, kCFNumberSInt64Type, &a21);
        v49 = CFNumberCreate(0, kCFNumberSInt64Type, &a26);
        v42 = 0;
        *buf = a8;
        v72 = a2;
        v73 = a3;
        v74 = a4;
        v75 = v33;
        v76 = a6;
        v77 = a7;
        v78 = a9;
        v79 = a12;
        v80 = a14;
        v81 = a11;
        v82 = a10;
        v83 = a13;
        v84 = a15;
        v85 = a16;
        v86 = a17;
        v87 = a18;
        v88 = a19;
        v89 = a20;
        v90 = cfa;
        v91 = v32;
        v92 = v31;
        v93 = v48;
        v94 = v49;
        v95 = v54;
        v96 = v36;
        v97 = v29;
        do
        {
          if (IMOSLoggingEnabled())
          {
            v43 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *v62 = 67109376;
              *v63 = v42;
              *&v63[4] = 1024;
              *&v63[6] = 27;
              _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_DEBUG, "_IMDChatRecordSetProperty [%d of %d]", v62, 0xEu);
            }
          }

          CSDBRecordSetProperty();
          ++v42;
        }

        while (v42 != 27);
        if (cfa)
        {
          CFRelease(cfa);
        }

        if (v49)
        {
          CFRelease(v49);
        }

        v44 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *v62 = 138413314;
          *v63 = a6;
          *&v63[8] = 2112;
          v64 = a10;
          v65 = 2112;
          v66 = a13;
          v67 = 2112;
          v68 = a20;
          v69 = 2112;
          v70 = a7;
          _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_DEFAULT, "Saving new chat record to database with identifier: %@ displayName: %@ groupID: %@ originalGroupID: %@ service: %@", v62, 0x34u);
        }

        if (IMDChatRecordAddChat(v41))
        {
          *v47 = CSDBRecordGetID();
          IMDSMSRecordStoreRecordCommitChangesAndRelease(v41);
          return v35;
        }

        CFRelease(v35);
        IMDSMSRecordStoreRecordCommitChangesAndRelease(v41);
      }

      else
      {
        CFRelease(v35);
      }
    }

    v45 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_DEFAULT, "Saving new chat failed", buf, 2u);
    }

    return 0;
  }

  else
  {
    *buf = 0;
    v72 = buf;
    v73 = 0x2020000000;
    v74 = 0;
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = sub_1B7B55714;
    v61[3] = &unk_1E7CB6838;
    v61[4] = buf;
    __syncXPCIMDChatRecordCreate_IPCAction(v61, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v50, v32, v31, v30, v54, v51, v28, v29);
    v35 = *(v72 + 3);
    _Block_object_dispose(buf, 8);
  }

  return v35;
}

void *sub_1B7B55714(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDChatRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1B7B55748(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const void *IMDChatRecordCopyChatIdentifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF33BC(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B55904;
    v18[3] = &unk_1E7CB7920;
    v18[4] = &v19;
    v18[5] = a2;
    _IMDPerformBlock(v18);
    ValueAtIndex = v20[3];
    _Block_object_dispose(&v19, 8);
    return ValueAtIndex;
  }

  v5 = *(*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + 216);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 5);
  if (ValueAtIndex)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return ValueAtIndex;
  }

  v8 = *v5;
  if (!*v5)
  {
    return ValueAtIndex;
  }

  return v8();
}

void sub_1B7B558EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B55904(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const void *IMDChatRecordCopyGUIDUnlocked(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3434(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B55AC0;
    v18[3] = &unk_1E7CB7920;
    v18[4] = &v19;
    v18[5] = a2;
    _IMDPerformBlock(v18);
    ValueAtIndex = v20[3];
    _Block_object_dispose(&v19, 8);
    return ValueAtIndex;
  }

  v5 = *(*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + 16);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 0);
  if (ValueAtIndex)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return ValueAtIndex;
  }

  v8 = *v5;
  if (!*v5)
  {
    return ValueAtIndex;
  }

  return v8();
}

void sub_1B7B55AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B55AC0(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const void *IMDChatRecordCopyDisplayName(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v10 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF34AC(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    return 0;
  }

  if (!*(a2 + 24))
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_1B7B55C7C;
    v18[3] = &unk_1E7CB7920;
    v18[4] = &v19;
    v18[5] = a2;
    _IMDPerformBlock(v18);
    ValueAtIndex = v20[3];
    _Block_object_dispose(&v19, 8);
    return ValueAtIndex;
  }

  v5 = *(*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, a2, a3, a4) + 80) + 456);
  ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 24), 11);
  if (ValueAtIndex)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return ValueAtIndex;
  }

  v8 = *v5;
  if (!*v5)
  {
    return ValueAtIndex;
  }

  return v8();
}

void sub_1B7B55C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B55C7C(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

CFTypeRef IMDChatRecordCopyChatLookupRecords(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  if (!a1[8])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = sub_1B7AE19A4;
    v24 = sub_1B7AE24DC;
    v25 = objc_msgSend_guid(a1, a2, a3, a4);
    if (v21[5])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3052000000;
      v17 = sub_1B7AE19A4;
      v18 = sub_1B7AE24DC;
      v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v10 = objc_msgSend_synchronousDatabase(IMDDatabase, v7, v8, v9);
      v11 = v21[5];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B55EA4;
      v13[3] = &unk_1E7CB8FC0;
      v13[4] = &v20;
      v13[5] = &v14;
      objc_msgSend_fetchIdentifiersForChatRecordWithGUID_completionHandler_(v10, v12, v11, v13);
      v6 = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v20, 8);
    return v6;
  }

  v4 = a1[8];

  return CFRetain(v4);
}

void sub_1B7B55EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3524(a1, a3, v6);
    }
  }

  else
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);

    MEMORY[0x1EEE66B58](v7, sel_addEntriesFromDictionary_, a2, a4);
  }
}

CFTypeRef IMDChatRecordCopyChatServiceRecords(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return 0;
  }

  if (!a1[9])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3052000000;
    v23 = sub_1B7AE19A4;
    v24 = sub_1B7AE24DC;
    v25 = objc_msgSend_guid(a1, a2, a3, a4);
    if (v21[5])
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3052000000;
      v17 = sub_1B7AE19A4;
      v18 = sub_1B7AE24DC;
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = objc_msgSend_synchronousDatabase(IMDDatabase, v7, v8, v9);
      v11 = v21[5];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B560F4;
      v13[3] = &unk_1E7CB8FE8;
      v13[4] = &v20;
      v13[5] = &v14;
      objc_msgSend_fetchServicesForChatWithGUID_completionHandler_(v10, v12, v11, v13);
      v6 = v15[5];
      _Block_object_dispose(&v14, 8);
    }

    else
    {
      v6 = 0;
    }

    _Block_object_dispose(&v20, 8);
    return v6;
  }

  v4 = a1[9];

  return CFRetain(v4);
}

void sub_1B7B560F4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(*(*(a1 + 32) + 8) + 40);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = a3;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Error fetching services for chat record with guid %@ : %@", &v9, 0x16u);
    }
  }

  else
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);

    objc_msgSend_addObjectsFromArray_(v8, a2, a2, a4);
  }
}

uint64_t sub_1B7B56204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    do
    {
      v8 = sqlite3_column_int(*(a4 + 8), 0);
      v9 = IMDMessageRecordCreateFromRecordIDUnlocked(v7, v8);
      if (v9)
      {
        *(*(*(a1 + 32) + 8) + 24) = v9;
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

uint64_t IMDChatRecordCopyMessagesWithLimit(uint64_t a1, int64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    Identifier = IMDChatRecordGetIdentifier(a1);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1B7B563EC;
    v9[3] = &unk_1E7CB7548;
    v9[5] = Identifier;
    v9[6] = a2;
    v9[4] = &v10;
    _IMDPerformLockedStatementBlockWithQuery(@"SELECT message_id FROM chat_message_join WHERE chat_id = ? ORDER BY ROWID DESC LIMIT ?;", v9);
  }

  else
  {
    v5 = IMDChatRecordGetIdentifier(a1);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B564D4;
    v8[3] = &unk_1E7CB6838;
    v8[4] = &v10;
    __syncXPCIMDChatRecordCopyMessagesWithLimit_IPCAction(v8, v5, a2);
  }

  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v6;
}

uint64_t sub_1B7B563EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt();
  CSDBSqliteBindInt64();
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
  {
    v7 = *MEMORY[0x1E695E480];
    v8 = MEMORY[0x1E695E9C0];
    do
    {
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, v8);
      }

      v9 = sqlite3_column_int(*(a4 + 8), 0);
      v10 = IMDMessageRecordCreateFromRecordIDUnlocked(v7, v9);
      if (v10)
      {
        v11 = v10;
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v10);
        CFRelease(v11);
      }

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

xpc_object_t sub_1B7B564D4(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_value(xdict, "array_result");
  if (result)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = sub_1B7B56568;
    applier[3] = &unk_1E7CB6810;
    applier[4] = *(a1 + 32);
    return xpc_array_apply(result, applier);
  }

  return result;
}

uint64_t sub_1B7B56568(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = _IMDCopyIMDMessageRecordFromXPCObjectClient(a3);
  if (v5)
  {
    v6 = v5;
    CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v5);
    CFRelease(v6);
  }

  return 1;
}

void sub_1B7B56650(uint64_t a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordGetProperty();
    }

    if (*(a1 + 48))
    {
      **(a1 + 48) = CSDBRecordGetProperty();
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 80))
    {
      **(a1 + 80) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 88))
    {
      **(a1 + 88) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 96))
    {
      **(a1 + 96) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 120))
    {
      **(a1 + 120) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 128))
    {
      **(a1 + 128) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 136))
    {
      **(a1 + 136) = CSDBRecordGetProperty();
    }

    if (*(a1 + 144))
    {
      **(a1 + 144) = CSDBRecordGetProperty();
    }

    if (*(a1 + 152))
    {
      **(a1 + 152) = CSDBRecordGetProperty();
    }

    if (*(a1 + 160))
    {
      **(a1 + 160) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 168))
    {
      **(a1 + 168) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 176))
    {
      **(a1 + 176) = CSDBRecordGetProperty();
    }

    if (*(a1 + 184))
    {
      **(a1 + 184) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 192))
    {
      **(a1 + 192) = sub_1B7B36E14(v3, 19);
    }

    if (*(a1 + 200))
    {
      **(a1 + 200) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 208))
    {
      **(a1 + 208) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 216))
    {
      **(a1 + 216) = CSDBRecordGetProperty();
    }

    if (*(a1 + 224))
    {
      **(a1 + 224) = sub_1B7B36E14(v3, 23);
    }

    if (*(a1 + 232))
    {
      **(a1 + 232) = CSDBRecordGetProperty();
    }

    if (*(a1 + 240))
    {
      **(a1 + 240) = CSDBRecordGetProperty();
    }

    if (*(a1 + 248))
    {
      **(a1 + 248) = CSDBRecordGetProperty();
    }

    CFRelease(v3);
  }
}

CFTypeRef IMDChatRecordCopyCachedLastMessage(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 48)) != 0)
  {
    return CFRetain(v1);
  }

  else
  {
    return 0;
  }
}

uint64_t IMDChatRecordCachedUnreadCount(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 40);
  }

  else
  {
    return -1;
  }
}

uint64_t IMDChatRecordLastMessageTimeStampOnLoad(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 56);
  }

  else
  {
    return -1;
  }
}

void _IMDChatRecordSetGUID(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1B7B56AD0;
      v20[3] = &unk_1E7CB75B0;
      v20[4] = a1;
      v20[5] = a2;
      _IMDPerformBlock(v20);
    }

    else
    {
      v12 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF3630(v12, v13, v14, v15, v16, v17, v18, v19);
      }
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF36A8(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56AD0(uint64_t a1)
{
  v1 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v2);
  }
}

void IMDChatRecordSetIsArchived(uint64_t a1, int64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B56C0C;
      v13[3] = &unk_1E7CB75B0;
      v13[4] = a1;
      v13[5] = a2;
      _IMDPerformBlock(v13);
    }

    else
    {
      v12 = *(a1 + 16);

      __syncXPCIMDChatRecordSetIsArchived_IPCAction(0, v12, a2);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3720(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56C0C(uint64_t a1)
{
  v1 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v2);
  }
}

void IMDChatRecordSetIsBlackholed(uint64_t a1, int64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B56D48;
      v13[3] = &unk_1E7CB75B0;
      v13[4] = a1;
      v13[5] = a2;
      _IMDPerformBlock(v13);
    }

    else
    {
      v12 = *(a1 + 16);

      __syncXPCIMDChatRecordSetIsBlackholed_IPCAction(0, v12, a2);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3798(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56D48(uint64_t a1)
{
  v1 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v2);
  }
}

void IMDChatRecordSetIsRecovered(uint64_t a1, int64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B56E84;
      v13[3] = &unk_1E7CB75B0;
      v13[4] = a1;
      v13[5] = a2;
      _IMDPerformBlock(v13);
    }

    else
    {
      v12 = *(a1 + 16);

      __syncXPCIMDChatRecordSetIsRecovered_IPCAction(0, v12, a2);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3810(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56E84(uint64_t a1)
{
  v1 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v2);
  }
}

void IMDChatRecordSetIsDeletingIncomingMessages(uint64_t a1, int64_t a2)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = sub_1B7B56FC0;
      v13[3] = &unk_1E7CB75B0;
      v13[4] = a1;
      v13[5] = a2;
      _IMDPerformBlock(v13);
    }

    else
    {
      v12 = *(a1 + 16);

      __syncXPCIMDChatRecordSetIsDeletingIncomingMessages_IPCAction(0, v12, a2);
    }
  }

  else
  {
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3888(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void sub_1B7B56FC0(uint64_t a1)
{
  v1 = IMDChatRecordCopyChatRecordUnlocked(*(*(a1 + 32) + 16));
  if (v1)
  {
    v2 = v1;
    CSDBRecordSetProperty();

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v2);
  }
}

uint64_t IMDChatRecordAddMessageIfNeededUnlocked(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  Identifier = IMDMessageRecordGetIdentifier(a2);
  v5 = IMDChatRecordGetIdentifier(a1);
  Date = IMDMessageRecordGetDate(a2, 0, v6, v7);
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v13 = Identifier;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEBUG, "Trying to associate message [%lld] with chat [%lld]", buf, 0x16u);
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B7B57184;
  v11[3] = &unk_1E7CB9050;
  v11[4] = v5;
  v11[5] = Identifier;
  v11[6] = Date;
  return _IMDPerformLockedStatementBlockWithQuery(@"INSERT OR IGNORE INTO chat_message_join (chat_id, message_id, message_date) VALUES (?, ?, ?);", v11);
}

void sub_1B7B57184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *MEMORY[0x1E69E9840];
  CSDBSqliteBindInt();
  CSDBSqliteBindInt();
  CSDBSqliteBindInt64();
  v4 = CSDBSqliteStatementPerform();
  v5 = v4;
  if (v4)
  {
    if (v4 != 101)
    {
      v6 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 67109120;
        v9 = v5;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "SQLite returned %d from IMDChatRecordAddMessageIfNeededUnlocked", &v8, 8u);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = 67109120;
      v9 = v5;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEBUG, "SQLite returned %d from IMDChatRecordAddMessageIfNeeded", &v8, 8u);
    }
  }
}

uint64_t IMDChatRecordRemoveMessage(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = IMDatabaseLogHandle(), os_log_type_enabled(v4, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF3900(v4, v5, v6, v7);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF39B8(v8, v9, v10, v11);
  }

LABEL_6:
  Identifier = IMDMessageRecordGetIdentifier(a2);
  v13 = IMDChatRecordGetIdentifier(a1);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B7B573C4;
  v15[3] = &unk_1E7CB9070;
  v15[4] = v13;
  v15[5] = Identifier;
  v15[6] = a2;
  v15[7] = a1;
  return _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM chat_message_join WHERE chat_id = ? AND message_id = ?;", v15);
}

void sub_1B7B573C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  CSDBSqliteBindInt();
  CSDBSqliteBindInt();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();
  IMDCoreSpotlightScheduleUpdateForDeletedMessages(1005);
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = 138412546;
      v9 = v6;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEBUG, "Finished remove message [%@] from chat [%@], updating the spotlight index for this chat.", &v8, 0x16u);
    }
  }
}

void IMDChatRecordAddHandle(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = IMDIsRunningInDatabaseServerProcess();
  Identifier = IMDHandleRecordGetIdentifier(a2);
  v6 = IMDChatRecordGetIdentifier(a1);
  if (v4)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218240;
        v10 = Identifier;
        v11 = 2048;
        v12 = v6;
        _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEBUG, "Trying to associate handle [%lld] with chat [%lld]", buf, 0x16u);
      }
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1B7B576A0;
    v8[3] = &unk_1E7CB81C8;
    v8[4] = v6;
    v8[5] = Identifier;
    _IMDPerformLockedStatementBlockWithQuery(@"INSERT INTO chat_handle_join (chat_id, handle_id) VALUES (?, ?)", v8);
  }

  else
  {

    __syncXPCIMDChatRecordAddHandle_IPCAction(0, v6, Identifier);
  }
}

void sub_1B7B576A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  CSDBSqliteBindInt();
  CSDBSqliteBindInt();
  v4 = CSDBSqliteStatementPerform();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEBUG, "SQLite returned %d from IMDChatRecordAddHandle", v6, 8u);
    }
  }
}

void IMDChatRecordRemoveHandle(uint64_t a1, uint64_t a2)
{
  v4 = IMDIsRunningInDatabaseServerProcess();
  Identifier = IMDHandleRecordGetIdentifier(a2);
  v6 = IMDChatRecordGetIdentifier(a1);
  if (v4)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1B7B5789C;
    v7[3] = &unk_1E7CB81C8;
    v7[4] = v6;
    v7[5] = Identifier;
    _IMDPerformLockedStatementBlockWithQuery(@"DELETE FROM chat_handle_join WHERE chat_id = ? AND handle_id = ?", v7);
  }

  else
  {

    __syncXPCIMDChatRecordRemoveHandle_IPCAction(0, v6, Identifier);
  }
}

void sub_1B7B5789C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  CSDBSqliteBindInt();
  CSDBSqliteBindInt();
  v4 = CSDBSqliteStatementPerform();
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6[0] = 67109120;
      v6[1] = v4;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEBUG, "SQLite returned %d from IMDChatRecordRemoveHandle", v6, 8u);
    }
  }
}

void IMDChatRecordAnonymizedUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((IMDIsRunningInDatabaseServerProcess() & 1) == 0)
  {
    v39 = xmmword_1E7CB9090;
    v40 = *off_1E7CB90A0;
    v41 = 1446;
    v17 = MEMORY[0x1E696AEC0];
    v18 = IMFileLocationTrimFileName();
    v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v19, &stru_1F2FA9728, v20);
    v24 = objc_msgSend_stringWithFormat_(v17, v22, @"Unexpected false '%@' in %s at %s:%d. %@", v23, @"IMDIsRunningInDatabaseServerProcess()", "void IMDChatRecordAnonymizedUpdate(IMDChatRecordRef, CFDataRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef, CFStringRef)", v18, 1446, v21);
    v25 = IMGetAssertionFailureHandler();
    if (v25)
    {
      v25(v24);
    }

    else
    {
      v29 = objc_msgSend_warning(MEMORY[0x1E69A6138], v26, v27, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }
  }

  if (a1)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = sub_1B7B57B70;
    v38[3] = &unk_1E7CB8230;
    v38[4] = a1;
    v38[5] = a2;
    v38[6] = a3;
    v38[7] = a6;
    v38[8] = a5;
    v38[9] = a4;
    v38[10] = a7;
    v38[11] = a8;
    v38[12] = a9;
    _IMDPerformBlock(v38);
  }

  else
  {
    v30 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3AE8(v30, v31, v32, v33, v34, v35, v36, v37);
    }
  }
}

void sub_1B7B57B70(void *a1)
{
  v2 = IMDChatRecordCopyChatRecordUnlocked(*(a1[4] + 16));
  if (v2)
  {
    v3 = v2;
    if (a1[5])
    {
      CSDBRecordSetProperty();
    }

    v4 = a1[6];
    if (v4 && CFStringGetLength(v4) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v5 = a1[7];
    if (v5 && CFStringGetLength(v5) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v6 = a1[8];
    if (v6 && CFStringGetLength(v6) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v7 = a1[9];
    if (v7 && CFStringGetLength(v7) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v8 = a1[10];
    if (v8 && CFStringGetLength(v8) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v9 = a1[11];
    if (v9 && CFStringGetLength(v9) >= 1)
    {
      CSDBRecordSetProperty();
    }

    v10 = a1[12];
    if (v10 && CFStringGetLength(v10) >= 1)
    {
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

_OWORD *_IMDCopyIMDChatRecordFromXPCObjectServer(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  int64 = xpc_dictionary_get_int64(a1, "recordIdentifier");
  if (int64 < 1)
  {
    return 0;
  }

  return sub_1B7AEF890(0, int64, 0);
}

xpc_object_t _IMDCopyXPCObjectFromIMDChatRecordClient(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    return 0;
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = 0;
  for (i = 0; i != 28; ++i)
  {
    v8 = (*(objc_msgSend_chatRecordDescriptor(IMDLegacyRecordBridge, v2, v3, v4, v18, v19) + 80) + v6);
    v9 = *v8;
    v10 = v8[1];
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), i);
    if (!ValueAtIndex)
    {
      goto LABEL_15;
    }

    v12 = ValueAtIndex;
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        v18 = ValueAtIndex;
        v19 = 0;
        IMInsertDatasToXPCDictionary();
        goto LABEL_15;
      }

      if (v10 != 3)
      {
        goto LABEL_15;
      }

      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v13 = valuePtr;
      v14 = v5;
      v15 = v9;
LABEL_13:
      xpc_dictionary_set_int64(v14, v15, v13);
      goto LABEL_15;
    }

    if (!v10)
    {
      v14 = v5;
      v15 = v9;
      v13 = v12;
      goto LABEL_13;
    }

    if (v10 == 1)
    {
      v18 = ValueAtIndex;
      v19 = 0;
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_15:
    v6 += 40;
  }

  v16 = *(a1 + 16);
  if (v16)
  {
    xpc_dictionary_set_int64(v5, "recordIdentifier", v16);
  }

  return v5;
}

void sub_1B7B57E90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = *(a1 + 32);
        v8 = 138412546;
        v9 = v7;
        v10 = 2112;
        v11 = a3;
        _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Failed to fetch services for chat record with guid %@ : %@", &v8, 0x16u);
      }
    }
  }

  else if (objc_msgSend_count(a2, a2, 0, a4))
  {
    IMInsertArraysToXPCDictionary();
  }
}

uint64_t IMDMergeDuplicateChatsWithOperation(void *a1, id a2, uint64_t a3, void *a4)
{
  v124 = *MEMORY[0x1E69E9840];
  obj = a2;
  if (a2)
  {
    if (a1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *buf = xmmword_1E7CB9130;
    *&buf[16] = *off_1E7CB9140;
    v123 = 1875;
    v12 = MEMORY[0x1E696AEC0];
    v13 = IMFileLocationTrimFileName();
    v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, &stru_1F2FA9728, v15);
    v19 = objc_msgSend_stringWithFormat_(v12, v17, @"Unexpected nil '%@' in %s at %s:%d. %@", v18, @"losingChatGUIDs", "BOOL IMDMergeDuplicateChatsWithOperation(IMDSqlOperation *, NSArray<NSString *> *, NSString *, NSString *)", v13, 1875, v16);
    v23 = IMGetAssertionFailureHandler();
    if (v23)
    {
      v23(v19);
    }

    else
    {
      v24 = objc_msgSend_warning(MEMORY[0x1E69A6138], v20, v21, v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CEE318();
      }
    }

    a2 = 0;
    if (a1)
    {
LABEL_3:
      if (a3)
      {
        goto LABEL_4;
      }

LABEL_20:
      *buf = xmmword_1E7CB9180;
      *&buf[16] = *off_1E7CB9190;
      v38 = MEMORY[0x1E696AEC0];
      v39 = IMFileLocationTrimFileName();
      v42 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v40, &stru_1F2FA9728, v41);
      v45 = objc_msgSend_stringWithFormat_(v38, v43, @"Unexpected nil '%@' in %s at %s:%d. %@", v44, @"winningChatGUID", "BOOL IMDMergeDuplicateChatsWithOperation(IMDSqlOperation *, NSArray<NSString *> *, NSString *, NSString *)", v39, 1877, v42);
      v49 = IMGetAssertionFailureHandler();
      if (v49)
      {
        v49(v45);
      }

      else
      {
        v50 = objc_msgSend_warning(MEMORY[0x1E69A6138], v46, v47, v48);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CEE318();
        }
      }

      return 0;
    }
  }

  *buf = xmmword_1E7CB9158;
  *&buf[16] = *off_1E7CB9168;
  v123 = 1876;
  v25 = MEMORY[0x1E696AEC0];
  v26 = IMFileLocationTrimFileName();
  v29 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v27, &stru_1F2FA9728, v28);
  v32 = objc_msgSend_stringWithFormat_(v25, v30, @"Unexpected nil '%@' in %s at %s:%d. %@", v31, @"operation", "BOOL IMDMergeDuplicateChatsWithOperation(IMDSqlOperation *, NSArray<NSString *> *, NSString *, NSString *)", v26, 1876, v29);
  v36 = IMGetAssertionFailureHandler();
  if (v36)
  {
    v36(v32);
  }

  else
  {
    v37 = objc_msgSend_warning(MEMORY[0x1E69A6138], v33, v34, v35);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEE318();
    }
  }

  a2 = obj;
  if (!a3)
  {
    goto LABEL_20;
  }

LABEL_4:
  result = 0;
  if (!a1 || !a2)
  {
    return result;
  }

  IMDDropAllTriggersWithOperation(a1, 0, a3, a4);
  if (!a1[21])
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v117, v121, 16);
    if (v51)
    {
      v52 = *v118;
      while (2)
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v118 != v52)
          {
            objc_enumerationMutation(obj);
          }

          v54 = *(*(&v117 + 1) + 8 * i);
          v116[0] = MEMORY[0x1E69E9820];
          v116[1] = 3221225472;
          v116[2] = sub_1B7B5884C;
          v116[3] = &unk_1E7CB91B0;
          v116[5] = v54;
          v116[6] = a1;
          v116[4] = a3;
          _IMDSqlOperationRunQuery(a1, @"UPDATE chat_message_join SET chat_id = (SELECT ROWID FROM chat WHERE guid = ?) WHERE (chat_id = (SELECT ROWID FROM chat WHERE guid = ?) AND message_id NOT IN (SELECT message_id from chat_message_join WHERE chat_id =  (SELECT ROWID FROM chat WHERE guid = ?)));", v116, 0);
          if (a1[21])
          {
            if (IMOSLoggingEnabled())
            {
              v56 = OSLogHandleForIMEventCategory();
              if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
              {
                v60 = IMDSqlOperationErrorDescription(a1, v57, v58, v59);
                *buf = 138412546;
                *&buf[4] = v60;
                *&buf[12] = 2112;
                *&buf[14] = v54;
                _os_log_impl(&dword_1B7AD5000, v56, OS_LOG_TYPE_INFO, "failed updating chat_message_join table: %@ for unwanted chat: %@", buf, 0x16u);
              }
            }

            goto LABEL_37;
          }
        }

        v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v55, &v117, v121, 16);
        if (v51)
        {
          continue;
        }

        break;
      }
    }

LABEL_37:
    if (a1[21])
    {
      goto LABEL_61;
    }

    if (IMOSLoggingEnabled())
    {
      v76 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
      {
        v77 = objc_msgSend_count(obj, v73, v74, v75);
        v81 = objc_msgSend_description(obj, v78, v79, v80);
        *buf = 134218242;
        *&buf[4] = v77;
        *&buf[12] = 2112;
        *&buf[14] = v81;
        _os_log_impl(&dword_1B7AD5000, v76, OS_LOG_TYPE_INFO, "Delete %lld rows from chat_handle_join: %@", buf, 0x16u);
      }
    }

    v82 = MEMORY[0x1E696AEC0];
    v83 = objc_msgSend_count(obj, v73, v74, v75);
    v87 = IMDGenerateInClauseForCount(v83, v84, v85, v86);
    v90 = objc_msgSend_stringWithFormat_(v82, v88, @"DELETE FROM chat_handle_join WHERE chat_id IN (SELECT ROWID FROM chat WHERE guid %@)", v89, v87);
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v115[2] = sub_1B7B588A4;
    v115[3] = &unk_1E7CB6FD0;
    v115[4] = obj;
    v115[5] = a1;
    _IMDSqlOperationRunQuery(a1, v90, v115, 0);
    if (a1[21])
    {
      if (IMOSLoggingEnabled())
      {
        v94 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          v95 = IMDSqlOperationErrorDescription(a1, v91, v92, v93);
          v99 = objc_msgSend_description(obj, v96, v97, v98);
          *buf = 138412546;
          *&buf[4] = v95;
          *&buf[12] = 2112;
          *&buf[14] = v99;
          _os_log_impl(&dword_1B7AD5000, v94, OS_LOG_TYPE_INFO, "failed deleting chat_handle_join rows failed (%@) - for unwanted chats: %@", buf, 0x16u);
        }
      }

      if (a1[21])
      {
        goto LABEL_61;
      }
    }

    if (objc_msgSend_length(a4, v91, v92, v93))
    {
      v102 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v100, @"UPDATE chat SET display_name = ? WHERE guid = ?;", v101);
      v114[0] = MEMORY[0x1E69E9820];
      v114[1] = 3221225472;
      v114[2] = sub_1B7B58994;
      v114[3] = &unk_1E7CB91B0;
      v114[5] = a3;
      v114[6] = a1;
      v114[4] = a4;
      _IMDSqlOperationRunQuery(a1, v102, v114, 0);
    }

    if (a1[21])
    {
LABEL_61:
      if (!IMOSLoggingEnabled())
      {
        return a1[21] == 0;
      }

      v61 = OSLogHandleForIMEventCategory();
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
      {
        return a1[21] == 0;
      }

      v65 = objc_msgSend_count(obj, v62, v63, v64);
      v69 = objc_msgSend_description(obj, v66, v67, v68);
      *buf = 134218498;
      *&buf[4] = v65;
      *&buf[12] = 2112;
      *&buf[14] = v69;
      *&buf[22] = 2112;
      *&buf[24] = a3;
      v70 = "Finished merging %ld (%@) unwanted chats into %@ ";
      v71 = v61;
      v72 = 32;
    }

    else
    {
      IMDCreateTriggersWithOperation(a1, 0);
      if (!a1[21])
      {
        return a1[21] == 0;
      }

      if (!IMOSLoggingEnabled())
      {
        return a1[21] == 0;
      }

      v103 = OSLogHandleForIMEventCategory();
      if (!os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
      {
        return a1[21] == 0;
      }

      v107 = IMDSqlOperationErrorDescription(a1, v104, v105, v106);
      v111 = objc_msgSend_description(obj, v108, v109, v110);
      *buf = 138412546;
      *&buf[4] = v107;
      *&buf[12] = 2112;
      *&buf[14] = v111;
      v70 = "failed recreating the triggers: (%@) - for unwanted chats: %@";
      v71 = v103;
      v72 = 22;
    }

    _os_log_impl(&dword_1B7AD5000, v71, OS_LOG_TYPE_INFO, v70, buf, v72);
    return a1[21] == 0;
  }

  result = IMOSLoggingEnabled();
  if (result)
  {
    v8 = OSLogHandleForIMEventCategory();
    result = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 138412290;
      *&buf[4] = IMDSqlOperationErrorDescription(a1, v9, v10, v11);
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "failed dropping triggers: %@", buf, 0xCu);
      return 0;
    }
  }

  return result;
}

void sub_1B7B587C4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x1B7B584C8);
  }

  _Unwind_Resume(a1);
}

void sub_1B7B5884C(uint64_t *a1)
{
  IMDSqlStatementBindTextFromCFString(a1[6] + 32, a1[4]);
  IMDSqlStatementBindTextFromCFString(a1[6] + 32, a1[5]);
  v2 = a1[4];
  v3 = a1[6] + 32;

  IMDSqlStatementBindTextFromCFString(v3, v2);
}

void *sub_1B7B588A4(uint64_t a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, a2, &v9, v13, 16);
  if (result)
  {
    v5 = result;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        IMDSqlStatementBindTextFromCFString(*(a1 + 40) + 32, *(*(&v9 + 1) + 8 * v7));
        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v8, &v9, v13, 16);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_1B7B58994(uint64_t *a1)
{
  IMDSqlStatementBindTextFromCFString(a1[6] + 32, a1[4]);
  v2 = a1[5];
  v3 = a1[6] + 32;

  IMDSqlStatementBindTextFromCFString(v3, v2);
}

uint64_t IMDChatRecordRepairDuplicateChats(void *a1, void (*a2)(uint64_t a1, uint64_t a2), void *a3, void *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 1;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_1B7B58DC4;
    v32[3] = &unk_1E7CB91D8;
    v32[4] = a1;
    v32[5] = a2;
    v32[6] = a3;
    v32[7] = &v33;
    v32[8] = a4;
    IMDRunSqlOperation(v32);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = objc_msgSend_count(a1, v8, v9, v10);
        v16 = objc_msgSend_description(a1, v13, v14, v15);
        *buf = 134218498;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v16;
        *&buf[22] = 2112;
        v40 = a2;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Being to merge %lld (%@) duplicate chats into winning chat %@", buf, 0x20u);
      }
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3052000000;
    v40 = sub_1B7AE19A4;
    v41 = sub_1B7AE24DC;
    v42 = 0;
    objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v8, v9, v10);
    v18 = v17;
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = sub_1B7B59044;
    v31[3] = &unk_1E7CB74D0;
    v31[4] = &v33;
    v31[5] = buf;
    __syncXPCIMDRepairDuplicateChats_IPCAction(v31, a1, a2, a3);
    if (*(v34 + 24) == 1)
    {
      if (IMOSLoggingEnabled())
      {
        v19 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v20, v21, v22);
          *v37 = 134217984;
          v38 = v23 - v18;
          _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Finished merging duplicated chats in %f seconds", v37, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v28 = COERCE_DOUBLE(objc_msgSend_localizedDescription(*(*&buf[8] + 40), v25, v26, v27));
          *v37 = 138412290;
          v38 = v28;
          _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "IMDMergeDuplicateChatsWithOperation in agent failed with error: %@", v37, 0xCu);
        }
      }

      if (a4)
      {
        *a4 = *(*&buf[8] + 40);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  v29 = *(v34 + 24);
  _Block_object_dispose(&v33, 8);
  return v29;
}

void sub_1B7B58D34(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    objc_end_catch();
    if (!v24)
    {
      JUMPOUT(0x1B7B58CC8);
    }

    JUMPOUT(0x1B7B58CB4);
  }

  _Block_object_dispose((v25 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(exc_buf);
}

void sub_1B7B58DC4(uint64_t a1, uint64_t a2)
{
  v36 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_msgSend_count(*(a1 + 32), v4, v5, v6);
      *&v12 = COERCE_DOUBLE(objc_msgSend_description(*(a1 + 32), v9, v10, v11));
      v13 = *(a1 + 40);
      v30 = 134218498;
      v31 = v8;
      v32 = 2112;
      v33 = *&v12;
      v34 = 2112;
      v35 = v13;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Being to merge %lld (%@) duplicate chats into winning chat %@", &v30, 0x20u);
    }
  }

  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v4, v5, v6);
  v15 = v14;
  IMDSqlOperationBeginTransaction(a2);
  *(*(*(a1 + 56) + 8) + 24) = IMDMergeDuplicateChatsWithOperation(a2, *(a1 + 32), *(a1 + 40), *(a1 + 48));
  if (*(a2 + 168))
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v20 = IMDSqlOperationErrorDescription(a2, v17, v18, v19);
        v30 = 138412290;
        v31 = v20;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "IMDMergeDuplicateChatsWithOperation failed in db with error: %@", &v30, 0xCu);
      }
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = *(a2 + 168);
    }
  }

  IMDSqlOperationCommitOrRevertTransaction(a2);
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_count(*(a1 + 32), v22, v23, v24);
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v26, v27, v28);
      v30 = 134218240;
      v31 = v25;
      v32 = 2048;
      v33 = v29 - v15;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Finished repairing %lld duplicate chats in %f seconds", &v30, 0x16u);
    }
  }
}