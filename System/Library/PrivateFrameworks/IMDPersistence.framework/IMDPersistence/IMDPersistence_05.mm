uint64_t sub_1B7B59044(uint64_t result, xpc_object_t xdict)
{
  if (xdict)
  {
    v3 = result;
    result = xpc_dictionary_get_BOOL(xdict, "BOOL_result");
    *(*(*(v3 + 32) + 8) + 24) = result;
    if ((*(*(*(v3 + 32) + 8) + 24) & 1) == 0)
    {
      result = xpc_dictionary_get_string(xdict, "error_domain");
      if (result)
      {
        v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, result, v5);
        uint64 = xpc_dictionary_get_uint64(xdict, "error_code");
        string = xpc_dictionary_get_string(xdict, "error_localized_description");
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

        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        result = objc_msgSend_initWithDomain_code_userInfo_(v15, v16, v6, uint64, v14);
        *(*(*(v3 + 40) + 8) + 40) = result;
      }
    }
  }

  return result;
}

CFStringRef sub_1B7B59178(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<IMDChatRecord %p [%p]>[%lld]{}", a1, v3, a1[2]);
}

uint64_t sub_1B7B591D0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = _IMDCopyIMDHandleRecordFromXPCObjectClient(a3);
  if (v4)
  {
    v5 = v4;
    CFArrayAppendValue(*(*(a1 + 32) + 32), v4);
    CFRelease(v5);
  }

  return 1;
}

uint64_t sub_1B7B5921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteBindInt();
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
      v10 = IMDHandleRecordCreateFromRecordIDUnlocked(v7, v9);
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

uint64_t _IMDSMSDatabaseMigrateData_24_25(uint64_t a1, uint64_t a2)
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
        v5 = *MEMORY[0x1E695E480];
        v6 = *MEMORY[0x1E69A5F00];
        do
        {
          sqlite3_column_int(*(v3 + 8), 0);
          v7 = sqlite3_column_blob(*(v3 + 8), 1);
          v8 = sqlite3_column_bytes(*(v3 + 8), 1);
          if (v7)
          {
            v9 = v8 == 0;
          }

          else
          {
            v9 = 1;
          }

          if (v9)
          {
            v10 = 0;
          }

          else
          {
            v10 = CFDataCreate(v5, v7, v8);
          }

          v11 = JWDecodeCodableObjectWithStandardAllowlist();
          v15 = objc_msgSend_string(v11, v12, v13, v14);
          v18 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x1E696AB08], v16, v6, v17);
          v21 = objc_msgSend_stringByRemovingCharactersFromSet_(v15, v19, v18, v20);
          v22 = CSDBSqliteConnectionStatementForSQL();
          if (v22 && *(v22 + 8))
          {
            if (v21)
            {
              CSDBSqliteBindTextFromCFString();
            }

            else
            {
              CSDBSqliteBindNull();
            }

            CSDBSqliteBindInt();
            CSDBSqliteStatementPerform();
            CSDBSqliteStatementReset();
          }
        }

        while (sqlite3_step(*(v3 + 8)) == 100);
      }
    }
  }

  return 1;
}

void *IMDCreateCFErrorWithQueryErrorCode(int a1, sqlite3 *a2, void *a3)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v5 = sqlite3_errmsg(a2);
    if (v5)
    {
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v6, v5, v7);
      a3 = objc_msgSend_stringWithFormat_(v8, v10, @"%@, error: %@", v11, a3, v9);
    }
  }

  v12 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E696A578];
  v22[0] = a3;
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v22, &v21, 1);
  v16 = objc_msgSend_initWithDomain_code_userInfo_(v12, v15, @"SQL_ERROR", a1, v14);
  v17 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF3C50(v16, v17, v18, v19);
  }

  return v16;
}

const void *sub_1B7B5958C()
{
  v0 = _CFCopySystemVersionDictionary();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, *MEMORY[0x1E695E1E8]);
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

uint64_t sub_1B7B595E8()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1B8CAFAD0]("DMIsMigrationNeeded", @"DataMigration");
  if (byte_1EDBE2A90 == 1)
  {
    byte_1EDBE2A90 = v0();
    if (IMOSLoggingEnabled())
    {
      v1 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        if (byte_1EDBE2A90)
        {
          v2 = @"YES";
        }

        else
        {
          v2 = @"NO";
        }

        v11 = 138412290;
        v12 = v2;
        _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "system migration finished: %@", &v11, 0xCu);
      }
    }

    if (byte_1EDBE2A90 == 1)
    {
      if (!IMOSLoggingEnabled())
      {
        return 1;
      }

      v3 = OSLogHandleForIMEventCategory();
      v4 = 1;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "system needs to finish migration still, not allowing indexing", &v11, 2u);
      }

      return v4;
    }
  }

  v5 = sub_1B7B5958C();
  if (v5)
  {
    CFPreferencesSynchronize(@"com.apple.imdsmsrecordstore", @"mobile", *MEMORY[0x1E695E898]);
    v6 = CFPreferencesCopyValue(@"kIMDPersistenceLastBuild", @"com.apple.imdsmsrecordstore", @"mobile", *MEMORY[0x1E695E8B0]);
    if (v6 && CFStringCompare(v5, v6, 1uLL) == kCFCompareEqualTo)
    {
      if (IMOSLoggingEnabled())
      {
        v9 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          v11 = 138412546;
          v12 = v6;
          v13 = 2112;
          v14 = v5;
          _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Migration not needed, allowing indexing, lastBuild: %@ currentBuild: %@", &v11, 0x16u);
        }
      }

      v4 = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v7 = OSLogHandleForIMEventCategory();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v11 = 138412546;
          v12 = v6;
          v13 = 2112;
          v14 = v5;
          _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Needs migration, not allowing indexing, lastBuild: %@, currentBuild: %@", &v11, 0x16u);
        }
      }

      v4 = 1;
      if (!v6)
      {
        goto LABEL_29;
      }
    }

    CFRelease(v6);
LABEL_29:
    CFRelease(v5);
    return v4;
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "No current build version, allowing indexing", &v11, 2u);
    }
  }

  return 0;
}

uint64_t IMDSystemMigrationOccurred()
{
  if (byte_1EDBE5C80)
  {
    return 1;
  }

  result = sub_1B7B595E8() ^ 1;
  byte_1EDBE5C80 = result;
  return result;
}

void IMDSystemMigrationSetHasMigrated(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  byte_1EDBE5C80 = a1;
  if (a1)
  {
    v1 = sub_1B7B5958C();
    if (IMOSLoggingEnabled())
    {
      v2 = OSLogHandleForIMEventCategory();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v4 = 138412290;
        v5 = v1;
        _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "We have migrated, lastBuild: %@", &v4, 0xCu);
      }
    }

    v3 = *MEMORY[0x1E695E898];
    CFPreferencesSetValue(@"kIMDPersistenceLastBuild", v1, @"com.apple.imdsmsrecordstore", @"mobile", *MEMORY[0x1E695E898]);
    CFPreferencesSynchronize(@"com.apple.imdsmsrecordstore", @"mobile", v3);
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

uint64_t IMDSaveWallpaperForCNContact(void *a1, void *a2)
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v61 = v3;
        _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "handle to save wallpaper for: %@", buf, 0xCu);
      }
    }

    v9 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v5, v6, v7);
    v12 = objc_msgSend_fetchCNContactForHandleWithID_(v9, v10, v3, v11);

    v16 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v13, v14, v15);
    v20 = objc_msgSend_keysForNicknameHandling(MEMORY[0x1E69A7FD0], v17, v18, v19);
    v22 = objc_msgSend_completedContact_withKeys_(v16, v21, v12, v20);

    if (v22)
    {
      v28 = objc_msgSend_mutableCopy(v22, v23, v24, v25);
      if (!v4 || (objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v26, v4, v27), v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend_dataWithContentsOfURL_(MEMORY[0x1E695DEF0], v30, v29, v31), v32 = objc_claimAutoreleasedReturnValue(), v29, !v32))
      {
        if (IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v61 = v3;
            _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, "updated contact wallpaper with nil image from handle: %@", buf, 0xCu);
          }
        }

        v32 = 0;
      }

      v37 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7FD0], v33, v34, v35);
      v41 = objc_msgSend_getContactStore(v37, v38, v39, v40);

      v42 = objc_alloc_init(MEMORY[0x1E695CF88]);
      objc_msgSend_updateContact_(v42, v43, v28, v44);
      v55 = 0;
      v46 = objc_msgSend_executeSaveRequest_error_(v41, v45, v42, &v55);
      v47 = v55;
      *(v57 + 24) = v46;
      if (v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = v46;
      }

      if ((v48 & 1) == 0)
      {
        v49 = IMLogHandleForCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF3CDC(v47, v49);
        }
      }
    }

    else
    {
      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF3D54(v3, v28);
      }
    }
  }

  else
  {
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = sub_1B7B59ED0;
    v52[3] = &unk_1E7CB70D0;
    v54 = &v56;
    v53 = v3;
    __syncXPCIMDSaveWallpaperForCNContact_IPCAction(v52, v53, v4);
    v22 = v53;
  }

  v50 = *(v57 + 24);
  _Block_object_dispose(&v56, 8);

  return v50 & 1;
}

void sub_1B7B59ED0(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = xpc_dictionary_get_BOOL(v3, "BOOL_result");
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 32);
      v6 = 138412290;
      v7 = v5;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "successfully saved wallpaper for: %@", &v6, 0xCu);
    }
  }
}

void sub_1B7B5A65C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = *(a1 + 32);
  v12 = objc_msgSend_transferGUID(v7, v9, v10, v11);
  LODWORD(v8) = objc_msgSend_isEqualToString_(v8, v13, v12, v14);

  if (v8)
  {
    if (*(a1 + 56) == 1 && IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = 136315650;
        v19 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDIsSyndicatable:syndicationIdentifier:attachmentUTI:attributedBody:encodedSyndicationRanges:isCMM:verbose:]_block_invoke";
        v20 = 2112;
        v21 = v16;
        v22 = 2112;
        v23 = v17;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "%s Found corresponding IMMessagePartDescriptor for attachment GUID %@ (syndicationIdentifier %@)", &v18, 0x20u);
      }
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *a4 = 1;
  }
}

id sub_1B7B5B20C(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = @"sms.db";
  }

  else
  {
    v2 = @"sms-temp.db";
  }

  PathToFilename = IMDSMSRecordStoreCreatePathToFilename(v2);

  return PathToFilename;
}

uint64_t IMDSMSRecordStoreCreatePathToFilename(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  objc_msgSend_addObject_(v3, v4, @"/", v5);
  objc_msgSend_addObject_(v3, v6, @"var", v7);
  objc_msgSend_addObject_(v3, v8, @"mobile", v9);
  objc_msgSend_addObject_(v3, v10, @"Library", v11);
  objc_msgSend_addObject_(v3, v12, @"SMS", v13);
  objc_msgSend_addObject_(v3, v14, v1, v15);
  v18 = objc_msgSend_pathWithComponents_(MEMORY[0x1E696AEC0], v16, v3, v17);

  objc_autoreleasePoolPop(v2);
  return v18;
}

void _IMDSetDatabasePathBlock(const void *a1)
{
  v1 = _Block_copy(a1);
  v2 = off_1EBA510E8;
  off_1EBA510E8 = v1;
}

void _IMDExecuteBlockForTesting(void *a1)
{
  v1 = off_1EBA510E8;
  v2 = a1;
  aBlock = _Block_copy(v1);
  v2[2](v2);

  v3 = _Block_copy(aBlock);
  v4 = off_1EBA510E8;
  off_1EBA510E8 = v3;
}

void *IMDSMSRecordStoreIsDatabaseProtectedAtPath(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    return objc_msgSend_hasSuffix_(result, a2, @"sms.db", a4);
  }

  return result;
}

uint64_t IMDSMSRecordStoreCopySMSDBPathWithCreate(int a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = (*(off_1EBA510E8 + 2))();
  v7 = v3;
  if (a1)
  {
    v8 = v3;
    objc_msgSend_fileSystemRepresentation(v8, v9, v10, v11);
    CSDBGetMobileUserUID();
    CSDBGetMobileUserGID();
    CSDBCreateDirectoriesToPath();
  }

  v12 = objc_msgSend_stringByResolvingAndStandardizingPath(v7, v4, v5, v6);

  objc_autoreleasePoolPop(v2);
  return v12;
}

void IMDSMSRecordStoreInvalidateCaches()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {

    _IMDPerformLockedMessageStoreBlockWithoutInitialize(&unk_1F2FA0BB0);
  }
}

uint64_t sub_1B7B5B4F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return CSDBRecordStoreInvalidateCachesWithStore();
  }

  return result;
}

uint64_t IMDSMSRecordStoreGetSchemaVersion()
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v0 = IMDIsRunningInDatabaseServerProcess();
  if (v0)
  {
    IMDSMSRecordStoreUseProtectedDatabase(v0, v1, v2, v3);
    v4 = IMDSMSRecordStoreCopySMSDBPathWithCreate(1);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
      v10 = objc_msgSend_UTF8String(v6, v7, v8, v9);
      if (v10)
      {
        memset(&v14, 0, sizeof(v14));
        if (!stat(v10, &v14))
        {
          *(v16 + 6) = CSDBSqliteUtilitiesGetSchemaVersionAtPathWithProtection();
        }
      }
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1B7B5B65C;
    v13[3] = &unk_1E7CB6838;
    v13[4] = &v15;
    __syncXPCIMDMessageStoreSchemaVersion_IPCAction(v13);
  }

  v11 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v11;
}

uint64_t sub_1B7B5B65C(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_uint64(xdict, "uint64_result");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

__CFString *IMDSMSRecordStoreGetSchema()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1B7AE19C4;
  v9 = sub_1B7AE24F0;
  v10 = 0;
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_1B7B5B820;
    v4[3] = &unk_1E7CB7390;
    v4[4] = &v5;
    _IMDPerformLockedStatementBlockWithQuery(@"select type,name,tbl_name,sql from sqlite_master;", v4);
  }

  else
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = sub_1B7B5B9E4;
    v3[3] = &unk_1E7CB6838;
    v3[4] = &v5;
    __syncXPCIMDMessageStoreSchema_IPCAction(v3);
  }

  v0 = v6[5];
  if (!v0)
  {
    v0 = &stru_1F2FA9728;
  }

  v1 = v0;
  _Block_object_dispose(&v5, 8);

  return v1;
}

uint64_t sub_1B7B5B820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sqlite3_step(*(a4 + 8));
  if (result == 100)
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

      if (sqlite3_column_text(*(a4 + 8), 2))
      {
        v12 = sqlite3_column_text(*(a4 + 8), 2);
        v13 = CFStringCreateWithCString(v7, v12, 0x8000100u);
      }

      else
      {
        v13 = 0;
      }

      if (sqlite3_column_text(*(a4 + 8), 3))
      {
        v16 = sqlite3_column_text(*(a4 + 8), 3);
        v17 = CFStringCreateWithCString(v7, v16, 0x8000100u);
      }

      else
      {
        v17 = 0;
      }

      if (*(*(*(a1 + 32) + 8) + 40))
      {
        objc_msgSend_stringByAppendingFormat_(*(*(*(a1 + 32) + 8) + 40), v14, @"<t:%@, n:%@, tn:%@, sql:%@>", v15, v9, v11, v13, v17);
      }

      else
      {
        objc_msgSend_stringByAppendingFormat_(&stru_1F2FA9728, v14, @"<t:%@, n:%@, tn:%@, sql:%@>", v15, v9, v11, v13, v17);
      }
      v18 = ;
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      result = sqlite3_step(*(a4 + 8));
    }

    while (result == 100);
  }

  return result;
}

void sub_1B7B5B9E4(uint64_t a1, xpc_object_t xdict)
{
  v3 = MEMORY[0x1E696AEC0];
  string = xpc_dictionary_get_string(xdict, "schema");
  if (string)
  {
    objc_msgSend_stringWithCString_encoding_(v3, v5, string, 4);
  }

  else
  {
    objc_msgSend_stringWithCString_encoding_(v3, v5, "", 4);
  }
  v6 = ;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

uint64_t IMDSMSRecordStoreSetPageCacheSize(uint64_t a1)
{
  result = IMDIsRunningInDatabaseServerProcess();
  if (result)
  {

    return MEMORY[0x1EEE003E8](a1);
  }

  return result;
}

uint64_t sub_1B7B5BAB8(uint64_t a1, uint64_t a2)
{
  CSDBRecordSaveStore();

  return CSDBRecordStoreInvalidateCachesWithStore();
}

void IMDSMSRecordStoreRecordCommitChangesAndRelease(const void *a1)
{
  _IMDPerformLockedMessageStoreBlock(&unk_1F2FA0BF0);

  CFRelease(a1);
}

uint64_t IMDSMSRecordStoreCopySMSDBPath(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  IMDSMSRecordStoreUseProtectedDatabase(a1, a2, a3, a4);

  return IMDSMSRecordStoreCopySMSDBPathWithCreate(1);
}

void IMDSMSRecordStoreSave()
{
  if (IMDIsRunningInDatabaseServerProcess())
  {

    _IMDPerformLockedMessageStoreBlock(&unk_1F2F9FAF0);
  }

  else
  {

    __syncXPCIMDMessageStoreSave_IPCAction(0);
  }
}

uint64_t sub_1B7B5BBE8(uint64_t a1)
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = sub_1B7B5CB60;
  v3[3] = &unk_1E7CB92D0;
  v3[5] = &v4;
  v3[6] = a1;
  v3[4] = v8;
  _IMDPerformLockedDatabaseBlock(v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(v8, 8);
  return v1;
}

void sub_1B7B5BCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5BCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *MEMORY[0x1E695E480];
  Current = CFAbsoluteTimeGetCurrent();
  v6 = CFStringCreateWithFormat(v4, 0, @"%f", *&Current);
  CSDBSqliteConnectionBeginTransactionType();
  CSDBSqliteConnectionSetValueForProperty();
  CSDBSqliteConnectionSetValueForProperty();
  CSDBSqliteConnectionSetValueForProperty();
  CSDBSqliteConnectionCommit();

  CFRelease(v6);
}

uint64_t sub_1B7B5BDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = CSDBSqliteDatabaseConnectionForReading();
  IMDSqliteDatabaseClean(v3, v4, v5, v6);

  return CSDBSqliteDatabaseReleaseSqliteConnection();
}

void IMDSMSRecordStoreClean(uint64_t a1)
{
  if (IMOSLoggingEnabled())
  {
    v1 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *v2 = 0;
      _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Beginning record store clean.", v2, 2u);
    }
  }

  _IMDPerformLockedDatabaseBlock(&unk_1F2FA0C30);
}

double _IMDSMSRecordStoreCountersGetLastResetTime()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = 0;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1B7B5BF7C;
  v2[3] = &unk_1E7CB92A8;
  v2[4] = &v3;
  _IMDPerformLockedDatabaseBlock(v2);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7B5BF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5BF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CSDBSqliteDatabaseCopyValueForProperty();
  if (v4)
  {
    v5 = v4;
    *(*(*(a1 + 32) + 8) + 24) = CFStringGetDoubleValue(v4);

    CFRelease(v5);
  }
}

uint64_t _IMDSMSRecordStoreShouldDeleteStickerFromReferenceCount(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = IMAttachmentsLogHandle();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (!a1)
  {
    if (v3)
    {
      LOWORD(v9) = 0;
      v5 = "XPC connection failed, not deleting sticker";
      v6 = v2;
      v7 = 2;
LABEL_10:
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, v5, &v9, v7);
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if (a1 != -1)
  {
    if (v3)
    {
      v9 = 134217984;
      v10 = a1;
      v5 = "Found %lld sticker(s), path is in use";
      v6 = v2;
      v7 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (v3)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_DEFAULT, "Sticker with path is not in use.", &v9, 2u);
  }

  v4 = 1;
LABEL_12:

  return v4;
}

void IMDCleanseOrphanedStickerAttachments(uint64_t a1)
{
  v69 = *MEMORY[0x1E69E9840];
  v1 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Beginning sticker attachment cleanse.", buf, 2u);
  }

  v55 = IMStickerCacheDirectoryURL();
  v54 = objc_msgSend_path(v55, v2, v3, v4);
  v8 = objc_msgSend_stringByResolvingAndStandardizingPath(v54, v5, v6, v7);
  if (v8)
  {
    v9 = IMAttachmentsLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v66 = v8;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_DEFAULT, "Sticker cache path %@", buf, 0xCu);
    }

    v13 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v10, v11, v12);
    v62 = 0;
    v52 = objc_msgSend_contentsOfDirectoryAtPath_error_(v13, v14, v8, &v62);
    v53 = v62;

    if (v53)
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v66 = v8;
          v67 = 2112;
          v68 = v53;
          _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Attachments. Error getting contents of directory %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v20 = objc_msgSend_lastPathComponent(v8, v15, v16, v17);
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = v52;
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v21, &v58, buf, 16);
      if (v24)
      {
        v25 = *v59;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v59 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v58 + 1) + 8 * i);
            v28 = objc_msgSend_stringByAppendingPathComponent_(v20, v22, v27, v23);
            v31 = objc_msgSend_stringByAppendingString_(v28, v29, @"%", v30);

            v34 = objc_msgSend_stringByAppendingString_(@"%", v32, v31, v33);

            v35 = IMAttachmentsLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *v63 = 138412290;
              v64 = v34;
              _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_DEFAULT, "Searching db for filename: %@", v63, 0xCu);
            }

            HaveAttachments = IMDAttachmentRecordDoesStickerPathHaveAttachments(v34);
            v39 = objc_msgSend_stringByAppendingPathComponent_(v8, v37, v27, v38);
            v43 = objc_msgSend_stringByResolvingAndStandardizingPath(v39, v40, v41, v42);

            if (_IMDSMSRecordStoreShouldDeleteStickerFromReferenceCount(HaveAttachments))
            {
              if (IMOSLoggingEnabled())
              {
                v47 = OSLogHandleForIMEventCategory();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
                {
                  *v63 = 138412290;
                  v64 = v43;
                  _os_log_impl(&dword_1B7AD5000, v47, OS_LOG_TYPE_INFO, "Will delete %@", v63, 0xCu);
                }
              }

              v48 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v44, v45, v46);
              v57 = 0;
              objc_msgSend_removeItemAtPath_error_(v48, v49, v43, &v57);
              v50 = v57;

              if (v50 && IMOSLoggingEnabled())
              {
                v51 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
                {
                  *v63 = 138412290;
                  v64 = v43;
                  _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "Attachments. Could not delete sticker at path %@", v63, 0xCu);
                }
              }
            }
          }

          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v58, buf, 16);
        }

        while (v24);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Attachments _IMDCleanseOrpanedStickersInStickerCachePath nil stickerCachePath", buf, 2u);
    }
  }
}

void IMDCleanseBrowserSnapshots(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = IMAttachmentsLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_DEFAULT, "Beginning browser snapshot deletion", buf, 2u);
  }

  v2 = IMBrowserSnapshotCacheDirectoryURL();
  v6 = objc_msgSend_path(v2, v3, v4, v5);

  v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v7, v8, v9);
  v14 = 0;
  objc_msgSend_removeItemAtPath_error_(v10, v11, v6, &v14);
  v12 = v14;

  if (v12 && IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v16 = v6;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Attachments. Could not delete browser snapshot cache at path %@", buf, 0xCu);
    }
  }
}

BOOL IMDPersistenceProtectionMerge_UnprotectedDatabaseExists()
{
  v22 = *MEMORY[0x1E69E9840];
  v0 = (*(off_1EBA510E8 + 2))();
  v1 = v0;
  v5 = objc_msgSend_UTF8String(v1, v2, v3, v4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
  v6 = stat(v5, &v15);
  if ((!v6 || *__error() != 2) && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v0;
      v12 = objc_msgSend_UTF8String(v0, v9, v10, v11);
      v13 = "NO";
      *buf = 136315650;
      v17 = v12;
      if (!v6)
      {
        v13 = "YES";
      }

      v18 = 2080;
      v19 = v13;
      v20 = 1024;
      v21 = v6;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "ProtectionMerge: unprotected database: %s, found: %s, error: %d\n", buf, 0x1Cu);
    }
  }

  return v6 == 0;
}

BOOL IMDPersistenceProtectionMerge_DeleteUnprotectedDatabase()
{
  v42 = *MEMORY[0x1E69E9840];
  v0 = (*(off_1EBA510E8 + 2))();
  v1 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_msgSend_initWithFormat_(v1, v2, @"%@-shm", v3, v0);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8 = objc_msgSend_initWithFormat_(v5, v6, @"%@-wal", v7, v0);
  v9 = v4;
  v13 = objc_msgSend_UTF8String(v9, v10, v11, v12);
  remove(v13, v14);
  v15 = v8;
  v19 = objc_msgSend_UTF8String(v15, v16, v17, v18);
  remove(v19, v20);
  v21 = v0;
  v25 = objc_msgSend_UTF8String(v21, v22, v23, v24);
  v27 = remove(v25, v26);
  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = v0;
      v33 = objc_msgSend_UTF8String(v29, v30, v31, v32);
      v34 = "NO";
      *buf = 136315650;
      v37 = v33;
      if (!v27)
      {
        v34 = "YES";
      }

      v38 = 2080;
      v39 = v34;
      v40 = 1024;
      v41 = v27;
      _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "ProtectionMerge: unprotected database: %s, deleted: %s, error: %d\n", buf, 0x1Cu);
    }
  }

  return !v27;
}

uint64_t IMDPersistenceProtectionMerge_CurrentlyUsingUnprotectedDatabase()
{
  v0 = IMDSharedSqliteDatabasePath();
  v1 = (*(off_1EBA510E8 + 2))();
  isEqualToString = objc_msgSend_isEqualToString_(v0, v2, v1, v3);

  return isEqualToString;
}

void sub_1B7B5CB60(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[6];
  if (v4 <= 3)
  {
    *(*(a1[4] + 8) + 24) = off_1E7CB92F0[v4];
  }

  v5 = CSDBSqliteDatabaseCopyValueForProperty();
  if (v5)
  {
    v6 = v5;
    *(*(a1[5] + 8) + 24) += CFStringGetIntValue(v5);

    CFRelease(v6);
  }
}

void sub_1B7B5CC3C()
{
  v0 = objc_alloc_init(IMDGroupPhotoDonationManager);
  v1 = qword_1EDBE7938;
  qword_1EDBE7938 = v0;
}

void sub_1B7B5D1C0()
{
  qword_1EDBE7950 = _CFRuntimeRegisterClass();
  v0 = objc_opt_class();
  class_getName(v0);
  _CFRuntimeBridgeClasses();
  v1 = objc_opt_class();

  IMDBridgedRecordPopulatePropertyImplementations(v1, &off_1E7CB9378, 0x17u);
}

const void *IMDAttachmentRecordCreate(uint64_t a1, uint64_t a2, uint8_t *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v69 = *MEMORY[0x1E69E9840];
  if (IMDIsRunningInDatabaseServerProcess())
  {
    pthread_once(&stru_1EDBE5740, sub_1B7B5D1C0);
    Instance = _CFRuntimeCreateInstance();
    v25 = Instance;
    if (Instance)
    {
      *(Instance + 16) = 0;
      v37 = (Instance + 16);
      *(Instance + 24) = 0;
      v26 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "_IMDAttachmentRecordCreate()", buf, 2u);
      }

      IMDEnsureSharedRecordStoreInitialized();
      v28 = a12;
      v27 = a14;
      v32 = CSDBRecordCreate();
      if (v32)
      {
        if (a12)
        {
          v28 = JWEncodeDictionary();
        }

        if (a14)
        {
          v27 = JWEncodeDictionary();
        }

        if (a15)
        {
          v33 = JWEncodeDictionary();
        }

        else
        {
          v33 = 0;
        }

        *buf = a2;
        v47 = a3;
        v48 = a4;
        v35 = 0;
        v49 = objc_msgSend_stringByAbbreviatingWithTildeInPath(a6, v29, v30, v31);
        v50 = a7;
        v51 = a8;
        v52 = a9;
        v53 = a10;
        v54 = v28;
        v55 = a5;
        v56 = a11;
        v57 = a13;
        v58 = v27;
        v59 = v33;
        v60 = a16;
        v61 = a17;
        v62 = a18;
        v63 = a19;
        v64 = a20;
        v65 = a21;
        v66 = a22;
        v67 = a23;
        v68 = a24;
        do
        {
          CSDBRecordSetProperty();
          v35 += 8;
        }

        while (v35 != 184);
        if (IMDAttachmentRecordAddAttachment(v32))
        {
          *v37 = CSDBRecordGetID();
        }

        else
        {
          CFRelease(v25);
          v25 = 0;
        }

        CFRelease(v32);
        IMDAttachmentRecordDoubleCheckSize(a6, a11);
      }

      else
      {
        v34 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF3F68(v34);
        }

        CFRelease(v25);
        return 0;
      }
    }
  }

  else
  {
    *buf = 0;
    v47 = buf;
    v48 = 0x2020000000;
    v49 = 0;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_1B7B5D618;
    v45[3] = &unk_1E7CB6838;
    v45[4] = buf;
    __syncXPCIMDAttachmentRecordCreate_IPCAction(v45, a2, a3, a4, a5, a6, a7, a8, a9, a10 != 0, a11, a12, a13 != 0, a14, a15, a16 != 0, a17, a18, a19, a20, a21, a22, a23, a24);
    v25 = *(v47 + 3);
    _Block_object_dispose(buf, 8);
  }

  return v25;
}

void sub_1B7B5D5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B5D618(uint64_t a1, void *a2)
{
  result = _IMDCopyIMDAttachmentRecordFromXPCObjectClient(a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _IMDCopyIMDAttachmentRecordFromXPCObjectClient(void *a1)
{
  if (xpc_dictionary_get_count(a1) >= 3)
  {
    pthread_once(&stru_1EDBE5740, sub_1B7B5D1C0);
    Instance = _CFRuntimeCreateInstance();
    v2 = Instance;
    if (!Instance)
    {
      return v2;
    }

    *(Instance + 16) = 0;
    *(Instance + 24) = 0;
    v4 = 23;
    Mutable = CFArrayCreateMutable(0, 23, 0);
    do
    {
      CFArrayAppendValue(Mutable, 0);
      --v4;
    }

    while (v4);
    for (i = &qword_1E7CB9388; ; i += 5)
    {
      v7 = 0;
      v8 = *(i - 1);
      v9 = *i;
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v10 = IMGetXPCDataFromDictionary();
          goto LABEL_15;
        }

        if (v8 != 3)
        {
          goto LABEL_16;
        }
      }

      else if (v8)
      {
        if (v8 != 1)
        {
          goto LABEL_16;
        }

        v10 = IMGetXPCStringFromDictionary();
        goto LABEL_15;
      }

      v10 = IMGetXPCIntFromDictionary();
LABEL_15:
      v7 = v10;
LABEL_16:
      if (CFArrayGetValueAtIndex(Mutable, v4))
      {
        if (v9)
        {
          v11 = *(v9 + 8);
          if (v11)
          {
            v11();
          }
        }
      }

      if (v7 && v9 && *v9)
      {
        v7 = (*v9)(v7);
      }

      CFArraySetValueAtIndex(Mutable, v4++, v7);
      if (v4 == 23)
      {
        *(v2 + 24) = Mutable;
        *(v2 + 16) = xpc_dictionary_get_int64(a1, "recordIdentifier");
        return v2;
      }
    }
  }

  return 0;
}

const void *sub_1B7B5D7E8(uint64_t a1, uint64_t a2, int a3)
{
  pthread_once(&stru_1EDBE5740, sub_1B7B5D1C0);
  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 0;
  }

  v6 = Instance;
  *(Instance + 16) = a2;
  *(Instance + 24) = 0;
  if (a3)
  {
    v7 = IMDAttachmentRecordCopyAttachmentRecord(a2);
  }

  else
  {
    v7 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(a2);
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v7 = v6;
    v8 = 0;
  }

  CFRelease(v7);
  return v8;
}

uint64_t IMDAttachmentRecordIsSticker(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 11);
      v2 = ValueAtIndex;
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        return (*MEMORY[0x1E69990E8])(ValueAtIndex);
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5D9B8;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 24);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF3FAC(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5D9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5D9B8(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetIdentifier(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  v6 = v1;
  v7 = v2;
  v4 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_DEFAULT, "Attempted to get record identifier for NULL attachment record", v5, 2u);
  }

  return 0;
}

const void *IMDAttachmentRecordCopyGUID(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4024(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5DBCC;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
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

void sub_1B7B5DBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5DBCC(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetCreatedDate(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 1);
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        LODWORD(ValueAtIndex) = (*MEMORY[0x1E69990E8])();
      }

      return ValueAtIndex;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5DD54;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 6);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF409C(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5DD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5DD54(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetStartDate(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 2);
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        LODWORD(ValueAtIndex) = (*MEMORY[0x1E69990E8])();
      }

      return ValueAtIndex;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5DEDC;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 6);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4114(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5DEDC(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetIsOutgoing(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 7);
      v2 = ValueAtIndex;
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        return (*MEMORY[0x1E69990E8])(ValueAtIndex);
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5E06C;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 24);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF418C(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E06C(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

id IMDAttachmentRecordCopyFilename(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4204(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    return 0;
  }

  v4 = *(a2 + 24);
  if (!v4)
  {
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = 0;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = sub_1B7B5E278;
    v33[3] = &unk_1E7CB7920;
    v33[4] = &v34;
    v33[5] = a2;
    _IMDPerformBlock(v33);
    v27 = v35[3];
    if (v27)
    {
      v31 = objc_msgSend_stringByResolvingAndStandardizingPath(v27, v24, v25, v26);
      v32 = v35[3];
      if (v32)
      {
        CFRelease(v32);
        v35[3] = 0;
      }

      if (a3)
      {
        v31 = objc_msgSend___im_filePathWithVariant_(v31, v28, *MEMORY[0x1E69A7078], v30);
      }

      v23 = objc_msgSend___im_apfsCompatibleFilename(v31, v28, v29, v30);
      v35[3] = v23;
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&v34, 8);
    return v23;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v4, 3);
  if (!ValueAtIndex)
  {
    return 0;
  }

  if (a3)
  {
    ValueAtIndex = objc_msgSend___im_filePathWithVariant_(ValueAtIndex, v6, *MEMORY[0x1E69A7078], v8);
  }

  v9 = objc_msgSend_stringByResolvingAndStandardizingPath(ValueAtIndex, v6, v7, v8);
  v13 = objc_msgSend___im_apfsCompatibleFilename(v9, v10, v11, v12);

  return v13;
}

void sub_1B7B5E25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E278(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const void *IMDAttachmentRecordCopyTransferName(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF427C(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5E418;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 9);
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

void sub_1B7B5E400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E418(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const void *IMDAttachmentRecordCopyUTIType(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF42F4(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5E5B8;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 4);
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

void sub_1B7B5E5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E5B8(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const __CFData *IMDAttachmentRecordCopyAttributionInfo(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF436C(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B5E760;
    v15[3] = &unk_1E7CB7920;
    v15[4] = &v16;
    v15[5] = a2;
    _IMDPerformBlock(v15);
    v4 = v17[3];
    _Block_object_dispose(&v16, 8);
    return v4;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 13);
  v4 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    return v4;
  }

  if (CFDataGetLength(ValueAtIndex) < 1)
  {
    return 0;
  }

  v5 = JWDecodeDictionary();
  if (!v5)
  {
    return 0;
  }

  return CFRetain(v5);
}

void sub_1B7B5E748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E760(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = CSDBRecordCopyProperty();
    if (v4)
    {
      v5 = v4;
      if (CFDataGetLength(v4) < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = JWDecodeDictionary();
        if (v6)
        {
          v6 = CFRetain(v6);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = v6;
      CFRelease(v5);
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    CFRelease(v3);
  }
}

const __CFData *IMDAttachmentRecordCopyUserInfo(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF43E4(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 0;
  }

  v2 = *(a2 + 24);
  if (!v2)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B5E958;
    v15[3] = &unk_1E7CB7920;
    v15[4] = &v16;
    v15[5] = a2;
    _IMDPerformBlock(v15);
    v4 = v17[3];
    _Block_object_dispose(&v16, 8);
    return v4;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 8);
  v4 = ValueAtIndex;
  if (!ValueAtIndex)
  {
    return v4;
  }

  if (CFDataGetLength(ValueAtIndex) < 1)
  {
    return 0;
  }

  v5 = JWDecodeDictionary();
  if (!v5)
  {
    return 0;
  }

  return CFRetain(v5);
}

void sub_1B7B5E940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5E958(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = CSDBRecordCopyProperty();
    if (v4)
    {
      v5 = v4;
      if (CFDataGetLength(v4) < 1)
      {
        v6 = 0;
      }

      else
      {
        v6 = JWDecodeDictionary();
        if (v6)
        {
          v6 = CFRetain(v6);
        }
      }

      *(*(*(a1 + 32) + 8) + 24) = v6;
      CFRelease(v5);
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    CFRelease(v3);
  }
}

const void *IMDAttachmentRecordCopyMIMEType(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF445C(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5EB48;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 5);
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

void sub_1B7B5EB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5EB48(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetTransferState(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 6);
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        LODWORD(ValueAtIndex) = (*MEMORY[0x1E69990E8])();
      }

      return ValueAtIndex;
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5ECD0;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = *(v14 + 6);
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF44D4(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5ECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5ECD0(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetTotalBytes(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 10);
      v2 = ValueAtIndex;
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        return (*MEMORY[0x1E69990E8])(ValueAtIndex);
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5EE60;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = v14[3];
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF454C(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5EE48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5EE60(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

uint64_t IMDAttachmentRecordGetCommSafetySensitive(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 24))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), 19);
      v2 = ValueAtIndex;
      if (ValueAtIndex && *MEMORY[0x1E69990E8])
      {
        return (*MEMORY[0x1E69990E8])(ValueAtIndex);
      }
    }

    else
    {
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v16 = 0;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = sub_1B7B5EFF0;
      v12[3] = &unk_1E7CB7920;
      v12[4] = &v13;
      v12[5] = a1;
      _IMDPerformBlock(v12);
      v2 = v14[3];
      _Block_object_dispose(&v13, 8);
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF45C4(v3, v4, v5, v6, v7, v8, v9, v10);
    }

    return 0;
  }

  return v2;
}

void sub_1B7B5EFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5EFF0(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordGetProperty();

    CFRelease(v3);
  }
}

const void *IMDAttachmentRecordCopyEmojiImageContentIdentifier(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF463C(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5F190;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 20);
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

void sub_1B7B5F178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5F190(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

const void *IMDAttachmentRecordCopyEmojiImageShortDescription(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF46B4(v6, v7, v8, v9, v10, v11, v12, v13);
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
    v14[2] = sub_1B7B5F330;
    v14[3] = &unk_1E7CB7920;
    v14[4] = &v15;
    v14[5] = a2;
    _IMDPerformBlock(v14);
    ValueAtIndex = v16[3];
    _Block_object_dispose(&v15, 8);
    return ValueAtIndex;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 21);
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

void sub_1B7B5F318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B5F330(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    *(*(*(a1 + 32) + 8) + 24) = CSDBRecordCopyProperty();

    CFRelease(v3);
  }
}

void _IMDAttachmentRecordBulkCopy(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, void *a9, _BYTE *a10, void *a11, uint64_t *a12, _BYTE *a13, uint64_t *a14, uint64_t *a15, _BYTE *a16, void *a17, uint64_t *a18, uint64_t *a19, uint64_t *a20, void *a21, uint64_t *a22, uint64_t *a23)
{
  if (a1)
  {
    v25 = a6;
    v28 = a15;
    v29 = a12;
    v30 = *(a1 + 24);
    if (v30)
    {
      if (a2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v30, 0);
        v32 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
        }

        *a2 = v32;
        v28 = a15;
        v29 = a12;
        v25 = a6;
      }

      if (a7)
      {
        v33 = CFArrayGetValueAtIndex(*(a1 + 24), 4);
        v34 = v33;
        if (v33)
        {
          CFRetain(v33);
        }

        *a7 = v34;
      }

      if (a8)
      {
        v35 = CFArrayGetValueAtIndex(*(a1 + 24), 5);
        v36 = v35;
        if (v35)
        {
          CFRetain(v35);
        }

        *a8 = v36;
      }

      if (a5)
      {
        v37 = CFArrayGetValueAtIndex(*(a1 + 24), 9);
        v38 = v37;
        if (v37)
        {
          CFRetain(v37);
        }

        *a5 = v38;
      }

      if (a3)
      {
        *a3 = CFArrayGetValueAtIndex(*(a1 + 24), 1);
      }

      if (a4)
      {
        *a4 = CFArrayGetValueAtIndex(*(a1 + 24), 2);
      }

      if (a9)
      {
        *a9 = CFArrayGetValueAtIndex(*(a1 + 24), 6);
      }

      if (a10)
      {
        *a10 = CFArrayGetValueAtIndex(*(a1 + 24), 7);
      }

      if (a11)
      {
        *a11 = CFArrayGetValueAtIndex(*(a1 + 24), 10);
      }

      if (a13)
      {
        *a13 = CFArrayGetValueAtIndex(*(a1 + 24), 11);
      }

      if (a16)
      {
        *a16 = CFArrayGetValueAtIndex(*(a1 + 24), 14);
      }

      if (a17)
      {
        *a17 = CFArrayGetValueAtIndex(*(a1 + 24), 15);
      }

      if (a18)
      {
        v39 = CFArrayGetValueAtIndex(*(a1 + 24), 16);
        v40 = v39;
        if (v39)
        {
          CFRetain(v39);
        }

        *a18 = v40;
      }

      if (a19)
      {
        v41 = CFArrayGetValueAtIndex(*(a1 + 24), 17);
        v42 = v41;
        if (v41)
        {
          CFRetain(v41);
        }

        *a19 = v42;
      }

      if (a20)
      {
        v43 = CFArrayGetValueAtIndex(*(a1 + 24), 18);
        v44 = v43;
        if (v43)
        {
          CFRetain(v43);
        }

        *a20 = v44;
      }

      if (a21)
      {
        *a21 = CFArrayGetValueAtIndex(*(a1 + 24), 19);
      }

      if (a22)
      {
        v45 = CFArrayGetValueAtIndex(*(a1 + 24), 20);
        v46 = v45;
        if (v45)
        {
          CFRetain(v45);
        }

        *a22 = v46;
      }

      if (a23)
      {
        v47 = CFArrayGetValueAtIndex(*(a1 + 24), 21);
        v48 = v47;
        if (v47)
        {
          CFRetain(v47);
        }

        *a23 = v48;
      }

      if (v25)
      {
        v49 = CFArrayGetValueAtIndex(*(a1 + 24), 3);
        if (v49)
        {
          v53 = objc_msgSend_stringByExpandingTildeInPath(v49, v50, v51, v52);
          v49 = objc_msgSend___im_apfsCompatibleFilename(v53, v54, v55, v56);
        }

        *v25 = v49;
      }

      if (v29)
      {
        v57 = CFArrayGetValueAtIndex(*(a1 + 24), 8);
        if (v57)
        {
          if (CFDataGetLength(v57) < 1)
          {
            v57 = 0;
          }

          else
          {
            v57 = JWDecodeDictionary();
            if (v57)
            {
              v57 = CFRetain(v57);
            }
          }
        }

        *v29 = v57;
      }

      if (a14)
      {
        v66 = CFArrayGetValueAtIndex(*(a1 + 24), 12);
        if (v66)
        {
          if (CFDataGetLength(v66) < 1)
          {
            v66 = 0;
          }

          else
          {
            v66 = JWDecodeDictionary();
            if (v66)
            {
              v66 = CFRetain(v66);
            }
          }
        }

        *a14 = v66;
      }

      if (v28)
      {
        v67 = CFArrayGetValueAtIndex(*(a1 + 24), 13);
        if (v67)
        {
          if (CFDataGetLength(v67) < 1)
          {
            v67 = 0;
          }

          else
          {
            v67 = JWDecodeDictionary();
            if (v67)
            {
              v67 = CFRetain(v67);
            }
          }
        }

        *v28 = v67;
      }
    }

    else
    {
      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = sub_1B7B5F838;
      v72[3] = &unk_1E7CB9310;
      v72[4] = a1;
      v72[5] = a2;
      v72[6] = a6;
      v72[7] = a7;
      v72[8] = a5;
      v72[9] = a8;
      v72[10] = a12;
      v72[11] = a14;
      v72[12] = a15;
      v72[13] = a3;
      v72[14] = a4;
      v72[15] = a9;
      v72[16] = a10;
      v72[17] = a13;
      v72[18] = a11;
      v72[19] = a16;
      v72[20] = a17;
      v72[21] = a18;
      v72[22] = a19;
      v72[23] = a20;
      v72[24] = a21;
      v72[25] = a22;
      v72[26] = a23;
      _IMDPerformBlock(v72);
    }
  }

  else
  {
    v58 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF472C(v58, v59, v60, v61, v62, v63, v64, v65);
    }
  }
}

void sub_1B7B5F838(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    if (*(a1 + 40))
    {
      **(a1 + 40) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 48))
    {
      v4 = CSDBRecordCopyProperty();
      if (v4)
      {
        v8 = v4;
        v9 = objc_msgSend_stringByResolvingAndStandardizingPath(v4, v5, v6, v7);
        v13 = objc_msgSend___im_apfsCompatibleFilename(v9, v10, v11, v12);
        CFRelease(v8);
      }

      else
      {
        v13 = 0;
      }

      **(a1 + 48) = v13;
    }

    if (*(a1 + 56))
    {
      **(a1 + 56) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 64))
    {
      **(a1 + 64) = CSDBRecordCopyProperty();
      if (!**(a1 + 64))
      {
        v14 = CSDBRecordCopyProperty();
        if (v14)
        {
          v18 = v14;
          PathComponent = objc_msgSend_lastPathComponent(v14, v15, v16, v17);
          **(a1 + 64) = objc_msgSend___im_apfsCompatibleFilename(PathComponent, v20, v21, v22);
          CFRelease(v18);
        }
      }
    }

    if (*(a1 + 72))
    {
      **(a1 + 72) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 80))
    {
      v23 = CSDBRecordCopyProperty();
      if (v23)
      {
        v24 = v23;
        if (CFDataGetLength(v23) < 1)
        {
          v25 = 0;
        }

        else
        {
          v25 = JWDecodeDictionary();
          if (v25)
          {
            v25 = CFRetain(v25);
          }
        }

        **(a1 + 80) = v25;
        CFRelease(v24);
      }

      else
      {
        **(a1 + 80) = 0;
      }
    }

    if (*(a1 + 88))
    {
      v26 = CSDBRecordCopyProperty();
      if (v26)
      {
        v27 = v26;
        if (CFDataGetLength(v26) < 1)
        {
          v28 = 0;
        }

        else
        {
          v28 = JWDecodeDictionary();
          if (v28)
          {
            v28 = CFRetain(v28);
          }
        }

        **(a1 + 88) = v28;
        CFRelease(v27);
      }

      else
      {
        **(a1 + 88) = 0;
      }
    }

    if (*(a1 + 96))
    {
      v29 = CSDBRecordCopyProperty();
      if (v29)
      {
        v30 = v29;
        if (CFDataGetLength(v29) < 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = JWDecodeDictionary();
          if (v31)
          {
            v31 = CFRetain(v31);
          }
        }

        **(a1 + 96) = v31;
        CFRelease(v30);
      }

      else
      {
        **(a1 + 96) = 0;
      }
    }

    if (*(a1 + 104))
    {
      **(a1 + 104) = CSDBRecordGetProperty();
    }

    if (*(a1 + 112))
    {
      **(a1 + 112) = CSDBRecordGetProperty();
    }

    if (*(a1 + 120))
    {
      **(a1 + 120) = CSDBRecordGetProperty();
    }

    if (*(a1 + 128))
    {
      **(a1 + 128) = CSDBRecordGetProperty();
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
      **(a1 + 160) = CSDBRecordGetProperty();
    }

    if (*(a1 + 168))
    {
      **(a1 + 168) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 176))
    {
      **(a1 + 176) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 184))
    {
      **(a1 + 184) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 192))
    {
      **(a1 + 192) = CSDBRecordGetProperty();
    }

    if (*(a1 + 200))
    {
      **(a1 + 200) = CSDBRecordCopyProperty();
    }

    if (*(a1 + 208))
    {
      **(a1 + 208) = CSDBRecordCopyProperty();
    }

    CFRelease(v3);
  }
}

void IMDAttachmentRecordBulkUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a1)
  {
    if (IMDIsRunningInDatabaseServerProcess())
    {
      v24 = a15;
      v25 = a24;
      if (a24 == 3 || IMFileTransferAttributionInfoHasLegacyState())
      {
        v25 = IMFileTransferPreviewGenerationStateWithStoredState();
        v29 = a19;
        v30 = a20;
        v31 = a14;
        v32 = a10;
        if (a15)
        {
          v33 = objc_msgSend_mutableCopy(a15, v26, v27, v28);
          objc_msgSend_removeObjectForKey_(v33, v34, *MEMORY[0x1E69A6FE0], v35);
          v43 = a21;
          v42 = a18;
          v44 = a12;
          v45 = a16;
          if (objc_msgSend_count(v33, v36, v37, v38))
          {
            v24 = objc_msgSend_copy(v33, v39, v40, v41);
            CFAutorelease(v24);
          }

          else
          {
            v24 = 0;
          }

          CFRelease(v33);
          v55 = a8;
          v54 = a7;
          v32 = a10;
          v29 = a19;
        }

        else
        {
          v43 = a21;
          v42 = a18;
          v55 = a8;
          v54 = a7;
          v44 = a12;
          v45 = a16;
        }
      }

      else
      {
        v29 = a19;
        v30 = a20;
        v43 = a21;
        v42 = a18;
        v31 = a14;
        v55 = a8;
        v54 = a7;
        v44 = a12;
        v45 = a16;
        v32 = a10;
      }

      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = sub_1B7B5FFBC;
      v64[3] = &unk_1E7CB9330;
      v64[4] = a1;
      v64[5] = a3;
      v64[6] = a4;
      v64[7] = a9;
      v65 = v32;
      v66 = a13;
      v67 = v45;
      v64[8] = a11;
      v64[9] = v25;
      v64[10] = a2;
      v64[11] = a6;
      v64[12] = a5;
      v64[13] = v54;
      v64[14] = v55;
      v64[15] = v44;
      v64[16] = v31;
      v64[17] = v24;
      v64[18] = a17;
      v64[19] = v42;
      v64[20] = v29;
      v64[21] = v30;
      v64[22] = v43;
      v64[23] = a22;
      v64[24] = a23;
      _IMDPerformBlock(v64);
    }

    else
    {

      __syncXPCIMDAttachmentRecordBulkUpdate_IPCAction(0, a2, a3, a4, a5, a6, a7, a8, a9, a10 != 0, a11, a12, a13 != 0, a14, a15, a16 != 0, a17, a18, a19, a20, a21, a24);
    }
  }

  else
  {
    v46 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF47A4(v46, v47, v48, v49, v50, v51, v52, v53);
    }
  }
}

void sub_1B7B5FFBC(void *a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(a1[4] + 16));
  if (v2)
  {
    v3 = v2;
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    CSDBRecordSetProperty();
    v6 = a1[10];
    if (v6)
    {
      CSDBRecordSetProperty();
    }

    v7 = a1[11];
    if (v7)
    {
      objc_msgSend_stringByAbbreviatingWithTildeInPath(v7, v4, v6, v5);
      CSDBRecordSetProperty();
    }

    v8 = a1[12];
    if (v8)
    {
      objc_msgSend_lastPathComponent(v8, v4, v6, v5);
      CSDBRecordSetProperty();
    }

    if (a1[13])
    {
      CSDBRecordSetProperty();
    }

    if (a1[14])
    {
      CSDBRecordSetProperty();
    }

    if (a1[15])
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    if (a1[16])
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    if (a1[17])
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    CSDBRecordSetProperty();
    if (a1[19])
    {
      CSDBRecordSetProperty();
    }

    if (a1[20])
    {
      CSDBRecordSetProperty();
    }

    if (a1[21])
    {
      CSDBRecordSetProperty();
    }

    CSDBRecordSetProperty();
    if (a1[23])
    {
      CSDBRecordSetProperty();
    }

    if (a1[24])
    {
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
    v9 = a1[11];
    v10 = a1[8];

    IMDAttachmentRecordDoubleCheckSize(v9, v10);
  }
}

void IMDAttachmentRecordAnonymizedUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    goto LABEL_6;
  }

  v40 = xmmword_1E7CB9350;
  v41 = *off_1E7CB9360;
  v42 = 1326;
  v12 = MEMORY[0x1E696AEC0];
  v13 = IMFileLocationTrimFileName();
  v16 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v14, &stru_1F2FA9728, v15);
  v19 = objc_msgSend_stringWithFormat_(v12, v17, @"Unexpected false '%@' in %s at %s:%d. %@", v18, @"IMDIsRunningInDatabaseServerProcess()", "void IMDAttachmentRecordAnonymizedUpdate(IMDAttachmentRecordRef, CFStringRef, CFStringRef, CFDictionaryRef, CFDictionaryRef, CFDictionaryRef)", v13, 1326, v16);
  v20 = IMGetAssertionFailureHandler();
  if (!v20)
  {
    v24 = objc_msgSend_warning(MEMORY[0x1E69A6138], v21, v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEFAB0(v19, v24, v25, v26, v27, v28, v29, v30);
      if (!a1)
      {
        goto LABEL_9;
      }

LABEL_7:
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = sub_1B7B60384;
      v39[3] = &unk_1E7CB8310;
      v39[4] = a1;
      v39[5] = a2;
      v39[6] = a3;
      v39[7] = a4;
      v39[8] = a5;
      v39[9] = a6;
      _IMDPerformBlock(v39);
      return;
    }

LABEL_6:
    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v20(v19);
  if (a1)
  {
    goto LABEL_7;
  }

LABEL_9:
  v31 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF481C(v31, v32, v33, v34, v35, v36, v37, v38);
  }
}

void sub_1B7B60384(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 32) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 40);
    if (v4 && CFStringGetLength(v4) >= 1)
    {
      objc_msgSend_stringByAbbreviatingWithTildeInPath(*(a1 + 40), v5, v6, v7);
      CSDBRecordSetProperty();
    }

    v8 = *(a1 + 48);
    if (v8 && CFStringGetLength(v8) >= 1)
    {
      CSDBRecordSetProperty();
    }

    if (*(a1 + 56))
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    if (*(a1 + 64))
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    if (*(a1 + 72))
    {
      JWEncodeDictionary();
      CSDBRecordSetProperty();
    }

    IMDSMSRecordStoreRecordCommitChangesAndReleaseUnlocked(v3);
  }
}

const void *_IMDCopyIMDAttachmentRecordFromXPCObjectServer(void *a1)
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

  return sub_1B7B5D7E8(0, int64, 1);
}

xpc_object_t _IMDCopyXPCObjectFromIMDAttachmentRecordClient(uint64_t a1)
{
  if (!a1 || !*(a1 + 24))
  {
    return 0;
  }

  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = 0;
  v4 = &unk_1E7CB9380;
  do
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 24), v3);
    if (!ValueAtIndex)
    {
      goto LABEL_15;
    }

    v8 = ValueAtIndex;
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        IMInsertDatasToXPCDictionary();
        goto LABEL_15;
      }

      if (v6 != 3)
      {
        goto LABEL_15;
      }

      valuePtr = 0;
      CFNumberGetValue(ValueAtIndex, kCFNumberSInt64Type, &valuePtr);
      v9 = valuePtr;
      v10 = v2;
      v11 = v5;
LABEL_13:
      xpc_dictionary_set_int64(v10, v11, v9);
      goto LABEL_15;
    }

    if (!v6)
    {
      v10 = v2;
      v11 = v5;
      v9 = v8;
      goto LABEL_13;
    }

    if (v6 == 1)
    {
      IMInsertNSStringsToXPCDictionary();
    }

LABEL_15:
    v4 += 5;
    ++v3;
  }

  while (v3 != 23);
  v12 = *(a1 + 16);
  if (v12)
  {
    xpc_dictionary_set_int64(v2, "recordIdentifier", v12);
  }

  return v2;
}

void _IMDAttachmentRecordBulkCopyXPCDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if (a2)
  {
    if (a1)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1B7B606CC;
      v19[3] = &unk_1E7CB8428;
      v19[4] = a2;
      v19[5] = a1;
      v19[6] = a1;
      if (a3)
      {
        _IMDPerformBlock(v19);
      }

      else
      {
        sub_1B7B606CC(v19);
      }
    }

    else
    {
      v11 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF4894(v11, v12, v13, v14, v15, v16, v17, v18);
      }
    }
  }

  else
  {
    v3 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF490C(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

void sub_1B7B606CC(uint64_t a1)
{
  v2 = IMDAttachmentRecordCopyAttachmentRecordUnlocked(*(*(a1 + 40) + 16));
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    for (i = &unk_1E7CB9380; ; i += 5)
    {
      v6 = *(i - 1);
      v7 = *i;
      Property = CSDBRecordGetProperty();
      v9 = Property;
      if (v7 <= 1)
      {
        break;
      }

      if (v7 == 2)
      {
        IMInsertDatasToXPCDictionary();
      }

      else if (v7 == 3)
      {
        valuePtr = 0;
        if (Property)
        {
          CFNumberGetValue(Property, kCFNumberSInt64Type, &valuePtr);
          v10 = valuePtr;
        }

        else
        {
          v10 = 0;
        }

        v11 = *(a1 + 32);
        v12 = v6;
LABEL_15:
        xpc_dictionary_set_int64(v11, v12, v10);
      }

LABEL_16:
      if (++v4 == 23)
      {
        xpc_dictionary_set_int64(*(a1 + 32), "recordIdentifier", *(*(a1 + 48) + 16));
        CFRelease(v3);
        return;
      }
    }

    if (v7)
    {
      if (v7 == 1)
      {
        IMInsertNSStringsToXPCDictionary();
      }

      goto LABEL_16;
    }

    v11 = *(a1 + 32);
    v12 = v6;
    v10 = v9;
    goto LABEL_15;
  }
}

void sub_1B7B60800(uint64_t a1)
{
  *(a1 + 16) = -1;
  if (*(a1 + 24))
  {
    v2 = 0;
    v3 = &qword_1E7CB9388;
    do
    {
      v4 = *v3;
      if (CFArrayGetValueAtIndex(*(a1 + 24), v2))
      {
        v5 = *(v4 + 8);
        if (v5)
        {
          v5();
        }
      }

      ++v2;
      v3 += 5;
    }

    while (v2 != 23);
    v6 = *(a1 + 24);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 24) = 0;
    }
  }
}

CFStringRef sub_1B7B608A4(const void *a1)
{
  if (a1)
  {
    v2 = CFGetAllocator(a1);
    v3 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v2, 0, @"<IMDAttachmentRecord %p [%p]>{}", a1, v3);
  }

  else
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4984(v5, v6, v7, v8, v9, v10, v11, v12);
    }

    return 0;
  }
}

void sub_1B7B60B14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (v4)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v4, a2, a4, a4);
  }

  v5 = CSDBSqliteStatementPerform();
  v6 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v5;
    _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "SQLite returned %d from deleteAttachmentsByPredicate", v7, 8u);
  }
}

void sub_1B7B6115C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B6117C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v5, a2, a4, a4);
  }

  v11 = CSDBRecordStoreProcessStatement();
  v8 = objc_msgSend__copyAttachmentRecordsFromCoreSDBResults_(*(a1 + 40), v6, v11, v7);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_1B7B616C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B7B61714(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_bindParametersToSqliteWithStatement_(v5, a2, a4, a4);
  }

  CSDBSqliteBindInt64();
  v11 = CSDBRecordStoreProcessStatement();
  v8 = objc_msgSend__copyAttachmentRecordsFromCoreSDBResults_(*(a1 + 40), v6, v11, v7);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

BOOL sub_1B7B6228C(uint64_t a1, uint64_t a2)
{
  v2 = CSDBSqliteConnectionPerformSQL();
  v3 = v2;
  if (v2)
  {
    if (v2 != 101)
    {
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF4BC0();
      }
    }
  }

  return !v3 || v3 == 101;
}

uint64_t sub_1B7B62300(uint64_t a1)
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  v1 = CSDBSqliteStatementInteger64Result();
  CSDBSqliteStatementReset();
  return v1;
}

uint64_t sub_1B7B6235C(uint64_t a1)
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  v1 = CSDBSqliteStatementInteger64Result();
  CSDBSqliteStatementReset();
  return v1;
}

uint64_t sub_1B7B623B8(uint64_t a1)
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  v1 = CSDBSqliteStatementInteger64Result();
  CSDBSqliteStatementReset();
  return v1;
}

uint64_t sub_1B7B62414(uint64_t a1, uint64_t a2)
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  v2 = CSDBSqliteStatementInteger64Result();
  CSDBSqliteStatementReset();
  return v2;
}

uint64_t sub_1B7B62488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindBlobFromCFData();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();

  return CSDBSqliteConnectionRowidOfLastInsert();
}

uint64_t sub_1B7B6257C(uint64_t a1, uint64_t a2)
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();

  return CSDBSqliteConnectionRowidOfLastInsert();
}

uint64_t sub_1B7B625F8(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = 134218240;
      v7 = a1;
      v8 = 2048;
      v9 = a2;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Adding handle %lld to chat %lld", &v6, 0x16u);
    }
  }

  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  return CSDBSqliteStatementReset();
}

uint64_t sub_1B7B62710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10)
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();

  return CSDBSqliteConnectionRowidOfLastInsert();
}

uint64_t sub_1B7B62834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26)
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindBlobFromCFData();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindTextFromCFString();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
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
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();
  CSDBSqliteStatementReset();

  return CSDBSqliteConnectionRowidOfLastInsert();
}

uint64_t sub_1B7B62A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CSDBSqliteConnectionStatementForSQL();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteBindInt64();
  CSDBSqliteStatementPerform();

  return CSDBSqliteStatementReset();
}

uint64_t IMDMessageImportBeginWithDatabaseAndConnection(id *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  qword_1EBA53F38 = a2;
  v5 = objc_msgSend_stringByDeletingPathExtension(*a1, a2, a3, a4);
  v8 = objc_msgSend_stringByAppendingPathExtension_(v5, v6, @"importbackup", v7);
  v11 = objc_msgSend_stringByAppendingPathExtension_(v8, v9, @"db", v10);
  qword_1EBA53F40 = v11;
  CSDBSqliteBackupDatabase();
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = v11;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Backing up database to %@", buf, 0xCu);
    }
  }

  sub_1B7B6228C(a2, @"ALTER TABLE message ADD COLUMN order_date INTEGER DEFAULT 0");
  v13 = sub_1B7B6228C(a2, @"UPDATE message SET order_date = date");
  v14 = CSDBSqliteConnectionStatementForSQL();
  v16 = v14;
  if (v14)
  {
    v14 = *(v14 + 1);
    if (v14)
    {
      if (sqlite3_step(v14) == 100)
      {
        v17 = 0;
        do
        {
          v18 = sqlite3_column_int64(*(v16 + 1), 0);
          v19 = sqlite3_column_int64(*(v16 + 1), 1);
          v20 = v19;
          if (v17 <= v19)
          {
            v17 = v19;
          }

          else
          {
            CSDBSqliteConnectionStatementForSQL();
            CSDBSqliteBindInt64();
            CSDBSqliteBindInt64();
            v21 = CSDBSqliteStatementPerform();
            if (v21)
            {
              if (v21 != 101)
              {
                v22 = IMDatabaseLogHandle();
                if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v53 = v18;
                  v54 = 2048;
                  v55 = v20;
                  _os_log_error_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_ERROR, "Couldn't update %lld with order date %lld", buf, 0x16u);
                }
              }
            }

            CSDBSqliteStatementReset();
          }
        }

        while (sqlite3_step(*(v16 + 1)) == 100);
      }

      v14 = CSDBSqliteStatementReset();
    }
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v23 = IMDDatabaseTriggers(v14, v15);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v46, v51, 16);
  v28 = v25;
  if (v25)
  {
    v29 = *v47;
    do
    {
      v30 = 0;
      do
      {
        if (*v47 != v29)
        {
          objc_enumerationMutation(v23);
        }

        v31 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v26, @"DROP TRIGGER IF EXISTS %@", v27, *(*(&v46 + 1) + 8 * v30));
        v13 = v13 & sub_1B7B6228C(a2, v31);
        ++v30;
      }

      while (v28 != v30);
      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v46, v51, 16);
      v28 = v25;
    }

    while (v25);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v32 = IMDDatabaseIndexes(v25, v26);
  v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v42, v50, 16);
  if (v36)
  {
    v37 = *v43;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v43 != v37)
        {
          objc_enumerationMutation(v32);
        }

        v39 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v34, @"DROP INDEX IF EXISTS %@", v35, *(*(&v42 + 1) + 8 * i));
        v13 = v13 & sub_1B7B6228C(a2, v39);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v34, &v42, v50, 16);
    }

    while (v36);
  }

  byte_1EBA53F48 = 1;
  if ((v13 & 1) == 0)
  {
    v40 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4C3C();
    }

    byte_1EBA53F48 = 0;
  }

  return v13;
}

void IMDMessageImportEnd(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if ((byte_1EBA53F48 & 1) == 0)
  {
    v11 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4C7C();
    }

    goto LABEL_30;
  }

  v4 = qword_1EBA53F38;
  if (qword_1EBA53F38)
  {
    if (sub_1B7B6228C(qword_1EBA53F38, @"ALTER TABLE message RENAME TO message_import"))
    {
      v5 = sub_1B7B6228C(v4, @"CREATE INDEX message_import_idx ON message_import(date, ROWID)");
      CSDBRecordStoreCreateTablesForClass();
      if (v5
        && sub_1B7B6228C(v4, @"INSERT INTO message (guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated) SELECT guid, text, replace, service_center, handle_id, subject, country, attributedBody, version, type, service, account, account_guid, error, date, date_read, date_delivered, is_delivered, is_finished, is_emote, is_from_me, is_empty, is_delayed, is_auto_reply, is_prepared, is_read, is_system_message, is_sent, has_dd_results, is_service_message, is_forward, was_downgraded, is_archive, cache_has_attachments, cache_roomnames, was_data_detected, was_deduplicated FROM message_import ORDER BY message_import.order_date ASC, message_import.ROWID ASC;")
        && sub_1B7B6228C(v4, @"CREATE TABLE IF NOT EXISTS message_new_to_old(           ROWID        INTEGER PRIMARY KEY,            old_rowid    INTEGER           ); ")
        && sub_1B7B6228C(v4, @"INSERT INTO message_new_to_old (old_rowid) SELECT message_import.ROWID FROM message_import ORDER BY message_import.order_date ASC, message_import.ROWID ASC")
        && sub_1B7B6228C(v4, @"CREATE INDEX message_new_to_old_idx ON message_new_to_old(old_rowid);")
        && sub_1B7B6228C(v4, @"ALTER TABLE chat_message_join RENAME TO chat_message_join_import")
        && sub_1B7B6228C(v4, @"CREATE TABLE IF NOT EXISTS chat_message_join(chat_id INTEGER REFERENCES chat (ROWID) ON DELETE CASCADE, message_id INTEGER REFERENCES message (ROWID) ON DELETE CASCADE, message_date INTEGER DEFAULT 0, PRIMARY KEY (chat_id, message_id));")
        && sub_1B7B6228C(v4, @"INSERT INTO chat_message_join    SELECT cmi.chat_id, mno.ROWID, mno.date    FROM      chat_message_join_import cmi    INNER JOIN message_new_to_old mno ON      cmi.message_id = mno.old_rowid    ; ")
        && sub_1B7B6228C(v4, @"ALTER TABLE message_attachment_join RENAME TO message_attachment_join_import")
        && sub_1B7B6228C(v4, @"CREATE TABLE IF NOT EXISTS message_attachment_join(message_id INTEGER REFERENCES message (ROWID) ON DELETE CASCADE, attachment_id INTEGER REFERENCES attachment (ROWID) ON DELETE CASCADE, UNIQUE(message_id, attachment_id));")
        && sub_1B7B6228C(v4, @"INSERT INTO message_attachment_join   SELECT mno.ROWID, mai.attachment_id   FROM     message_attachment_join_import mai   INNER JOIN message_new_to_old mno ON     mai.message_id = mno.old_rowid   ;")
        && sub_1B7B6228C(v4, @"UPDATE message SET cache_has_attachments = IFNULL((SELECT 1 FROM message_attachment_join maj WHERE message.ROWID = maj.message_id LIMIT 1), 0)")
        && sub_1B7B6228C(v4, @"UPDATE message SET cache_roomnames =(                          SELECT group_concat(c.room_name)                           FROM                             chat c                           INNER JOIN                             chat_message_join j                           ON                             c.ROWID = j.chat_id                           WHERE                             j.message_id = message.ROWID                          ) WHERE message.ROWID = (select j.message_id FROM chat c INNER JOIN chat_message_join j ON c.rowid = j.chat_id WHERE c.room_name IS NOT NULL); ")
        && sub_1B7B6228C(v4, @"DELETE FROM message WHERE (SELECT 1 from chat_message_join cmj WHERE message.ROWID = cmj.message_id LIMIT 1) IS NULL;")
        && sub_1B7B6228C(v4, @"DELETE FROM attachment WHERE (SELECT 1 from message_attachment_join maj WHERE attachment.ROWID = maj.attachment_id LIMIT 1) IS NULL"))
      {
        goto LABEL_19;
      }
    }

    else
    {
      CSDBRecordStoreCreateTablesForClass();
    }

LABEL_28:
    if (qword_1EBA53F40)
    {
      CFRelease(qword_1EBA53F40);
      qword_1EBA53F40 = 0;
    }

    goto LABEL_30;
  }

LABEL_19:
  v6 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], a2, a3, a4);
  if (objc_msgSend_isInternalInstall(v6, v7, v8, v9))
  {
    goto LABEL_28;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = qword_1EBA53F40;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Successful import! This is not an internal install so let's delete the backup database stored at %@", &v12, 0xCu);
    }
  }

  if (qword_1EBA53F40)
  {
    CSDBSqliteDeleteDatabase();
    goto LABEL_28;
  }

LABEL_30:
  byte_1EBA53F48 = 0;
  qword_1EBA53F38 = 0;
}

uint64_t IMDCopyGUIDForImportedOneToOneChat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = IMCopyGUIDForChat();
  v11 = v10;
  if (byte_1EBA53F48)
  {
    v12 = sub_1B7B62300(v10);
    v13 = IMOSLoggingEnabled();
    if (v12 <= 0)
    {
      if (v13)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v24 = 138412290;
          v25 = v11;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Creating chat for guid: %@", &v24, 0xCu);
        }
      }

      v17 = sub_1B7B62488(v11, 45, a2, a3, a4, a1, 0, a5);
      if (v17 < 1)
      {
        v21 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF4D78();
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v18 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v24 = 134217984;
            v25 = v17;
            _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "Created new chat with row id: %lld", &v24, 0xCu);
          }
        }

        v19 = sub_1B7B62414(a4, a1);
        if (v19 > 0)
        {
          goto LABEL_20;
        }

        if (IMOSLoggingEnabled())
        {
          v20 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v24 = 134217984;
            v25 = v19;
            _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Creating handle for: %lld", &v24, 0xCu);
          }
        }

        v19 = sub_1B7B6257C(a4, a1);
        if (v19 < 1)
        {
          v23 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF4DE8();
          }
        }

        else
        {
LABEL_20:
          sub_1B7B625F8(v19, v17);
        }
      }
    }

    else if (v13)
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v24 = 138412290;
        v25 = v11;
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Already have chat for guid: %@", &v24, 0xCu);
      }
    }
  }

  else
  {
    v15 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4CFC();
    }
  }

  return v11;
}

uint64_t IMDCopyGUIDForImportedChat(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v44 = *MEMORY[0x1E69E9840];
  v14 = IMCopyGUIDForChat();
  v34 = v14;
  if (byte_1EBA53F48)
  {
    v15 = sub_1B7B62300(v14);
    v16 = IMOSLoggingEnabled();
    if (v15 <= 0)
    {
      if (v16)
      {
        v19 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v40 = v34;
          _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "Creating chat for guid: %@", buf, 0xCu);
        }
      }

      v20 = sub_1B7B62488(v34, a2, a3, a4, a5, a1, a5, a6);
      if (v20 < 1)
      {
        v32 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF4D78();
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            v40 = v20;
            _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Created new chat: %lld", buf, 0xCu);
          }
        }

        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v21, &v35, v43, 16);
        if (v23)
        {
          v24 = *v36;
          do
          {
            v25 = 0;
            do
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(a7);
              }

              v26 = *(*(&v35 + 1) + 8 * v25);
              v27 = sub_1B7B62414(v26, a1);
              if (v27 > 0)
              {
                goto LABEL_25;
              }

              if (IMOSLoggingEnabled())
              {
                v28 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v40 = v26;
                  _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "Creating handle for: %@", buf, 0xCu);
                }
              }

              v27 = sub_1B7B6257C(v26, a1);
              if (v27 < 1)
              {
                v30 = IMDatabaseLogHandle();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218240;
                  v40 = v27;
                  v41 = 2048;
                  v42 = v20;
                  _os_log_error_impl(&dword_1B7AD5000, v30, OS_LOG_TYPE_ERROR, "Failed to add handle: %lld to chat: %lld", buf, 0x16u);
                }
              }

              else
              {
LABEL_25:
                sub_1B7B625F8(v27, v20);
              }

              ++v25;
            }

            while (v23 != v25);
            v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(a7, v29, &v35, v43, 16);
            v23 = v31;
          }

          while (v31);
        }
      }
    }

    else if (v16)
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v40 = v34;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Already have chat for guid: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v18 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4E64();
    }
  }

  return v34;
}

void IMDImportAttachmentWithData(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v10 = a6;
  v18 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = a1;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Import attachment %@ with data", &v16, 0xCu);
    }
  }

  sub_1B7B63A4C(a1, a2, 0, a8, a3, a4, v10, a9);
}

void sub_1B7B63A4C(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, void *a8)
{
  v62 = *MEMORY[0x1E69E9840];
  if (byte_1EBA53F48)
  {
    if (a1)
    {
      if (sub_1B7B623B8(a1) > 0)
      {
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = a1;
            _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Already have an attachment for guid %@", buf, 0xCu);
          }
        }

        return;
      }

      v19 = IMDCopyAttachmentPersistentPath(a1, a8, a6, a5, 0, 0);
      v20 = objc_alloc_init(MEMORY[0x1E696AC08]);
      PathComponent = objc_msgSend_stringByDeletingLastPathComponent(v19, v21, v22, v23);
      if ((objc_msgSend_makeDirectoriesInPath_mode_(v20, v25, PathComponent, 448) & 1) == 0)
      {
        v26 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          sub_1B7CF4F60();
        }
      }

      if (a4)
      {
        if ((objc_msgSend_writeToFile_atomically_(a4, v27, v19, 0) & 1) == 0)
        {
          v32 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF4FDC();
          }
        }

        v33 = objc_msgSend_length(a4, v29, v30, v31);
LABEL_33:
        v54 = sub_1B7B62710(a1, a2, a2, a8, v19, a5, a6, 5, a7, v33);
        if (IMOSLoggingEnabled())
        {
          v55 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            *buf = 134218498;
            *&buf[4] = v54;
            v58 = 2112;
            v59 = a3;
            v60 = 2112;
            v61 = a1;
            _os_log_impl(&dword_1B7AD5000, v55, OS_LOG_TYPE_INFO, "Created attachment id %lld with path %@ for guid %@", buf, 0x20u);
          }
        }

        if (v19)
        {
          CFRelease(v19);
        }

        return;
      }

      v56 = 0;
      if (a3)
      {
        v34 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v27, a3, v28);
      }

      else
      {
        v34 = 0;
      }

      v35 = v19;
      if (v19)
      {
        v36 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v27, v19, v28);
        if (!v34)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v36 = 0;
        if (!v34)
        {
          goto LABEL_29;
        }
      }

      v37 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v27, v35, v28);
      if (objc_msgSend_linkItemAtURL_toURL_error_(v37, v38, v34, v36, &v56) & 1) != 0 || v36 && (v42 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v39, v40, v41), (objc_msgSend_copyItemAtURL_toURL_error_(v42, v43, v34, v36, &v56)))
      {
LABEL_31:
        v33 = objc_msgSend_length(a3, v39, v40, v41);
        if (v33)
        {
          *buf = 0;
          v48 = objc_msgSend_defaultHFSFileManager(MEMORY[0x1E69A60D8], v45, v46, v47);
          v50 = objc_msgSend_attributesOfItemAtPath_error_(v48, v49, a3, buf);
          v33 = objc_msgSend_fileSize(v50, v51, v52, v53);
        }

        goto LABEL_33;
      }

LABEL_29:
      v44 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        *&buf[4] = a3;
        v58 = 2112;
        v59 = v19;
        v60 = 2112;
        v61 = v56;
        _os_log_error_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_ERROR, "MessageImport - couldn't link/copy attachment from %@ to %@ - %@", buf, 0x20u);
      }

      goto LABEL_31;
    }

    v18 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF504C();
    }
  }

  else
  {
    v17 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF4EE0();
    }
  }
}

void IMDImportAttachmentWithPath(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, uint64_t a8, void *a9)
{
  v20 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412546;
      v17 = a1;
      v18 = 2112;
      v19 = a3;
      _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "Import attachment %@ with filePath %@", &v16, 0x16u);
    }
  }

  sub_1B7B63A4C(a1, a2, a3, 0, a4, a5, a7, a9);
}

void IMDImportMessage(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, unsigned __int8 a22, unsigned __int8 a23, unsigned __int8 a24, unsigned __int8 a25, unsigned __int8 a26, unsigned __int8 a27, char a28)
{
  v62 = *MEMORY[0x1E69E9840];
  if (byte_1EBA53F48)
  {
    v36 = sub_1B7B62300(a1);
    if (v36 < 1)
    {
      v52 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF510C();
      }
    }

    else
    {
      v56 = a8;
      v57 = v36;
      v40 = sub_1B7B6235C(a2);
      v41 = 1;
      if (v40 <= 0 && a28)
      {
        CSDBSqliteConnectionStatementForSQL();
        CSDBSqliteBindInt64();
        CSDBSqliteBindTextFromCFString();
        CSDBSqliteBindInt64();
        CSDBSqliteBindInt64();
        v42 = CSDBSqliteStatementInteger64Result();
        v41 = v42 < 1;
        if (v42 >= 1)
        {
          if (IMOSLoggingEnabled())
          {
            log = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v59 = a3;
              v60 = 2048;
              v61 = a11;
              _os_log_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_INFO, "Found duplicate for %@ at %lld", buf, 0x16u);
            }
          }
        }

        CSDBSqliteStatementReset();
      }

      if (v40 <= 0 && v41)
      {
        if (!objc_msgSend_length(a2, v37, v38, v39))
        {
          a2 = objc_msgSend_stringGUID(MEMORY[0x1E696AEC0], v43, v44, v45);
        }

        IMComponentsFromChatGUID();
        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v59 = a1;
            _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "Found chat for guid: %@", buf, 0xCu);
          }
        }

        v47 = sub_1B7B62414(a4, a9);
        if (v47 <= 0)
        {
          if (IMOSLoggingEnabled())
          {
            v48 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v59 = a4;
              _os_log_impl(&dword_1B7AD5000, v48, OS_LOG_TYPE_INFO, "Creating handle for: %@", buf, 0xCu);
            }
          }

          v47 = sub_1B7B6257C(a4, a9);
        }

        v49 = sub_1B7B62834(a2, a3, v47, a5, a6, a7, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
        if (v49 < 1)
        {
          v54 = IMDatabaseLogHandle();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            sub_1B7CF5188();
          }
        }

        else
        {
          if (IMOSLoggingEnabled())
          {
            v50 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v59 = a2;
              v60 = 2112;
              v61 = a1;
              _os_log_impl(&dword_1B7AD5000, v50, OS_LOG_TYPE_INFO, "Created message for guid: %@  associating with chat: %@", buf, 0x16u);
            }
          }

          sub_1B7B62A98(v49, v57, a11);
        }
      }

      else if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v59 = a2;
          v60 = 2112;
          v61 = a1;
          _os_log_impl(&dword_1B7AD5000, v53, OS_LOG_TYPE_INFO, "Not inserting %@  already have message in chat: %@", buf, 0x16u);
        }
      }
    }
  }

  else
  {
    v51 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF508C();
    }
  }
}

uint64_t IMDBindAttachmentToMessage(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = a2;
      v9 = 2112;
      v10 = a1;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Associated attachment GUID %@ with message GUID: %@", &v7, 0x16u);
    }
  }

  v5 = sub_1B7B6235C(a1);
  result = sub_1B7B623B8(a2);
  if (v5 >= 1 && result >= 1)
  {
    CSDBSqliteConnectionStatementForSQL();
    CSDBSqliteBindInt64();
    CSDBSqliteBindInt64();
    CSDBSqliteStatementPerform();
    return CSDBSqliteStatementReset();
  }

  return result;
}

_OWORD *IMDCreateIMDMessageRecordRefFromIMMessageItem(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v1031 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v8 = objc_msgSend_type(a1, a2, a3, a4);
    result = 0;
    if (v8 <= 3)
    {
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v131 = objc_msgSend_guid(a1, v5, v6, v7);
          v135 = objc_msgSend_time(a1, v132, v133, v134);
          v139 = objc_msgSend_service(a1, v136, v137, v138);
          v143 = objc_msgSend_account(a1, v140, v141, v142);
          v147 = objc_msgSend_accountID(a1, v144, v145, v146);
          if (objc_msgSend_sender(a1, v148, v149, v150))
          {
            v154 = objc_msgSend_sender(a1, v151, v152, v153);
          }

          else
          {
            v154 = objc_msgSend_handle(a1, v151, v152, v153);
          }

          v643 = v154;
          v644 = objc_msgSend_otherHandle(a1, v155, v156, v157);
          v648 = objc_msgSend_title(a1, v645, v646, v647);
          v649 = IMDatabaseLogHandle();
          v972 = v644;
          v981 = v643;
          v991 = v147;
          v1001 = v143;
          v1011 = v139;
          if (os_log_type_enabled(v649, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v131;
            *&buf[12] = 2112;
            *&buf[14] = v648;
            _os_log_impl(&dword_1B7AD5000, v649, OS_LOG_TYPE_DEFAULT, "Attempting to create title item with GUID: %@   title: %@", buf, 0x16u);
          }

          v963 = v648;
          v1021 = v131;
          v956 = objc_msgSend___im_nanosecondTimeInterval(v135, v650, v651, v652);
          v656 = objc_msgSend_errorCode(a1, v653, v654, v655);
          v949 = objc_msgSend_countryCode(a1, v657, v658, v659);
          v663 = objc_msgSend_unformattedID(a1, v660, v661, v662);
          v667 = objc_msgSend_cloudKitSyncState(a1, v664, v665, v666);
          v671 = objc_msgSend_cloudKitRecordID(a1, v668, v669, v670);
          v675 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v672, v673, v674);
          v679 = objc_msgSend_cloudKitRecordChangeTag(a1, v676, v677, v678);
          v683 = objc_msgSend_destinationCallerID(a1, v680, v681, v682);
          v687 = objc_msgSend_replyToGUID(a1, v684, v685, v686);
          v691 = objc_msgSend_sortID(a1, v688, v689, v690);
          v695 = objc_msgSend_cloudKitChatID(a1, v692, v693, v694);
          return IMDMessageRecordCreate(0, 2, 0, v956, 0, 0, 0, v656, 0, 0, 0, v1021, 0, v1011, v1001, v991, 0, v981, v949, v663, v972, v963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v667, v671, v675, v679, 0, v683, v687, v691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v695);
        }

        else
        {
          if (objc_msgSend_sender(a1, v5, v6, v7))
          {
            v1017 = objc_msgSend_sender(a1, v97, v98, v99);
          }

          else
          {
            v1017 = objc_msgSend_handle(a1, v97, v98, v99);
          }

          v1008 = objc_msgSend_actionType(a1, v100, v101, v102);
          if (IMOSLoggingEnabled())
          {
            v420 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v420, OS_LOG_TYPE_INFO))
            {
              *buf = 138412802;
              *&buf[4] = objc_msgSend_guid(a1, v417, v418, v419);
              *&buf[12] = 2112;
              *&buf[14] = v1017;
              *&buf[22] = 2112;
              *&buf[24] = objc_msgSend_otherHandle(a1, v421, v422, v423);
              _os_log_impl(&dword_1B7AD5000, v420, OS_LOG_TYPE_INFO, "Attempting to add group leave GUID: %@ %@ => %@", buf, 0x20u);
            }
          }

          v424 = objc_msgSend_time(a1, v417, v418, v419);
          v998 = objc_msgSend___im_nanosecondTimeInterval(v424, v425, v426, v427);
          v988 = objc_msgSend_errorCode(a1, v428, v429, v430);
          v978 = objc_msgSend_guid(a1, v431, v432, v433);
          v969 = objc_msgSend_service(a1, v434, v435, v436);
          v960 = objc_msgSend_account(a1, v437, v438, v439);
          v953 = objc_msgSend_accountID(a1, v440, v441, v442);
          v946 = objc_msgSend_countryCode(a1, v443, v444, v445);
          v449 = objc_msgSend_unformattedID(a1, v446, v447, v448);
          v453 = objc_msgSend_otherHandle(a1, v450, v451, v452);
          v457 = objc_msgSend_cloudKitSyncState(a1, v454, v455, v456);
          v461 = objc_msgSend_cloudKitRecordID(a1, v458, v459, v460);
          v465 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v462, v463, v464);
          v469 = objc_msgSend_cloudKitRecordChangeTag(a1, v466, v467, v468);
          v473 = objc_msgSend_destinationCallerID(a1, v470, v471, v472);
          v477 = objc_msgSend_replyToGUID(a1, v474, v475, v476);
          v481 = objc_msgSend_sortID(a1, v478, v479, v480);
          v485 = objc_msgSend_cloudKitChatID(a1, v482, v483, v484);
          return IMDMessageRecordCreate(0, 3, 0, v998, 0, 0, 0, v988, 0, 0, 0, v978, 0, v969, v960, v953, 0, v1017, v946, v449, v453, 0, v1008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v457, v461, v465, v469, 0, v473, v477, v481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v485);
        }
      }

      else if (v8)
      {
        if (v8 == 1)
        {
          if (objc_msgSend_sender(a1, v5, v6, v7))
          {
            v1016 = objc_msgSend_sender(a1, v91, v92, v93);
          }

          else
          {
            v1016 = objc_msgSend_handle(a1, v91, v92, v93);
          }

          v325 = MEMORY[0x1E695DEF0];
          v326 = objc_msgSend_messageSummaryInfo(a1, v94, v95, v96);
          v997 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v325, v327, v326, v328);
          v1007 = objc_msgSend_changeType(a1, v329, v330, v331);
          v335 = objc_msgSend_timeRead(a1, v332, v333, v334) != 0;
          if (IMOSLoggingEnabled())
          {
            v339 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v339, OS_LOG_TYPE_INFO))
            {
              v340 = objc_msgSend_guid(a1, v336, v337, v338);
              v344 = objc_msgSend_otherHandle(a1, v341, v342, v343);
              v345 = @"remove";
              *buf = 138413058;
              *&buf[4] = v340;
              *&buf[12] = 2112;
              if (!v1007)
              {
                v345 = @"invite";
              }

              *&buf[14] = v345;
              *&buf[22] = 2112;
              *&buf[24] = v1016;
              *v1028 = 2112;
              *&v1028[2] = v344;
              _os_log_impl(&dword_1B7AD5000, v339, OS_LOG_TYPE_INFO, "Attempting to create participant change item with GUID: %@  %@  %@ => %@", buf, 0x2Au);
            }
          }

          v346 = objc_msgSend_time(a1, v336, v337, v338);
          v987 = objc_msgSend___im_nanosecondTimeInterval(v346, v347, v348, v349);
          v353 = objc_msgSend_timeRead(a1, v350, v351, v352);
          v977 = objc_msgSend___im_nanosecondTimeInterval(v353, v354, v355, v356);
          v968 = objc_msgSend_errorCode(a1, v357, v358, v359);
          v959 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x1E696AD98], v360, v335 << 13, v361);
          v952 = objc_msgSend_guid(a1, v362, v363, v364);
          v945 = objc_msgSend_service(a1, v365, v366, v367);
          v942 = objc_msgSend_account(a1, v368, v369, v370);
          v940 = objc_msgSend_accountID(a1, v371, v372, v373);
          v938 = objc_msgSend_countryCode(a1, v374, v375, v376);
          v380 = objc_msgSend_unformattedID(a1, v377, v378, v379);
          v384 = objc_msgSend_otherHandle(a1, v381, v382, v383);
          v388 = objc_msgSend_cloudKitSyncState(a1, v385, v386, v387);
          v392 = objc_msgSend_cloudKitRecordID(a1, v389, v390, v391);
          v396 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v393, v394, v395);
          v400 = objc_msgSend_cloudKitRecordChangeTag(a1, v397, v398, v399);
          v404 = objc_msgSend_destinationCallerID(a1, v401, v402, v403);
          v408 = objc_msgSend_replyToGUID(a1, v405, v406, v407);
          v412 = objc_msgSend_sortID(a1, v409, v410, v411);
          v416 = objc_msgSend_cloudKitChatID(a1, v413, v414, v415);
          return IMDMessageRecordCreate(0, 1, 0, v987, v977, 0, 0, v968, 0, 0, v959, v952, 0, v945, v942, v940, 0, v1016, v938, v380, v384, 0, v1007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v997, v388, v392, v396, v400, 0, v404, v408, v412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v416);
        }
      }

      else
      {
        v109 = objc_msgSend_guid(a1, v5, v6, v7);
        v113 = objc_msgSend_time(a1, v110, v111, v112);
        v1019 = objc_msgSend_timeRead(a1, v114, v115, v116);
        v1006 = objc_msgSend_timeDelivered(a1, v117, v118, v119);
        v123 = objc_msgSend_timePlayed(a1, v120, v121, v122);
        if (objc_msgSend_body(a1, v124, v125, v126))
        {
          objc_msgSend_body(a1, v127, v128, v129);
          v130 = JWEncodeCodableObject();
        }

        else
        {
          v130 = 0;
        }

        v218 = MEMORY[0x1E696AD98];
        v219 = objc_msgSend_flags(a1, v127, v128, v129);
        v222 = objc_msgSend_numberWithUnsignedLongLong_(v218, v220, v219, v221);
        v226 = objc_msgSend_service(a1, v223, v224, v225);
        v941 = objc_msgSend_account(a1, v227, v228, v229);
        v939 = objc_msgSend_accountID(a1, v230, v231, v232);
        v233 = MEMORY[0x1E696AD98];
        v237 = objc_msgSend_errorCode(a1, v234, v235, v236);
        v996 = objc_msgSend_numberWithUnsignedInt_(v233, v238, v237, v239);
        v243 = objc_msgSend_roomName(a1, v240, v241, v242);
        v247 = objc_msgSend_length(v243, v244, v245, v246);
        v251 = &unk_1F2FCA2D8;
        if (!v247)
        {
          v251 = &unk_1F2FCA2C0;
        }

        v986 = v251;
        v936 = objc_msgSend_subject(a1, v248, v249, v250);
        v255 = objc_msgSend_body(a1, v252, v253, v254);
        v259 = objc_msgSend_string(v255, v256, v257, v258);
        v934 = objc_msgSend_partCount(a1, v260, v261, v262);
        v958 = v130;
        v967 = v109;
        v944 = v226;
        v951 = v222;
        v937 = v259;
        if (objc_msgSend_isFromMe(a1, v263, v264, v265))
        {
          v269 = objc_msgSend_handle(a1, v266, v267, v268);
        }

        else
        {
          v269 = objc_msgSend_sender(a1, v266, v267, v268);
        }

        v935 = v269;
        v933 = objc_msgSend_expireState(a1, v270, v271, v272);
        v931 = objc_msgSend_destinationCallerID(a1, v273, v274, v275);
        v932 = objc_msgSend_balloonBundleID(a1, v276, v277, v278);
        v930 = objc_msgSend_payloadData(a1, v279, v280, v281);
        v929 = objc_msgSend_expressiveSendStyleID(a1, v282, v283, v284);
        v976 = objc_msgSend_timeExpressiveSendPlayed(a1, v285, v286, v287);
        v291 = objc_msgSend_associatedMessageGUID(a1, v288, v289, v290);
        v927 = objc_msgSend_associatedMessageType(a1, v292, v293, v294);
        v926 = objc_msgSend_associatedMessageRange(a1, v295, v296, v297);
        v925 = v298;
        v299 = MEMORY[0x1E695DEF0];
        v302 = objc_msgSend_messageSummaryInfo(a1, v298, v300, v301);
        v924 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v299, v303, v302, v304);
        v928 = v291;
        if (v291)
        {
          v1025 = 0;
          v1026 = objc_msgSend_type(a1, v305, v306, v307);
          if (v1026)
          {
            *buf = xmmword_1E7CBA250;
            *&buf[16] = *off_1E7CBA260;
            *v1028 = 842;
            v309 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v308, &v1026, "q");
            v311 = objc_msgSend_value_withObjCType_(MEMORY[0x1E696B098], v310, &v1025, "q");
            v312 = MEMORY[0x1E696AEC0];
            v313 = IMFileLocationTrimFileName();
            v314 = *v1028;
            v317 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v315, &stru_1F2FA9728, v316);
            v320 = objc_msgSend_stringWithFormat_(v312, v318, @"Unexpected not equal '%@ (%@) != %@ (%@)' in %s at %s:%d. %@", v319, @"[imMessageItem type]", v309, @"IMDMessageRecordItemTypeMessage", v311, "IMDMessageRecordRef IMDCreateIMDMessageRecordRefFromIMMessageItem(IMItem *)", v313, v314, v317);
            v324 = IMGetAssertionFailureHandler();
            if (v324)
            {
              v324(v320);
            }

            else
            {
              v788 = objc_msgSend_warning(MEMORY[0x1E69A6138], v321, v322, v323);
              if (os_log_type_enabled(v788, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CEC540(v320, v788);
              }
            }
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            *buf = xmmword_1E7CBA278;
            *&buf[16] = *off_1E7CBA288;
            *v1028 = 843;
            v789 = MEMORY[0x1E696AEC0];
            v790 = IMFileLocationTrimFileName();
            v791 = *v1028;
            v794 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v792, &stru_1F2FA9728, v793);
            v797 = objc_msgSend_stringWithFormat_(v789, v795, @"Unexpected false '%@' in %s at %s:%d. %@", v796, @"[imMessageItem isKindOfClass:[IMAssociatedMessageItem class]]", "IMDMessageRecordRef IMDCreateIMDMessageRecordRefFromIMMessageItem(IMItem *)", v790, v791, v794);
            v801 = IMGetAssertionFailureHandler();
            if (v801)
            {
              v801(v797);
            }

            else
            {
              v802 = objc_msgSend_warning(MEMORY[0x1E69A6138], v798, v799, v800);
              if (os_log_type_enabled(v802, OS_LOG_TYPE_ERROR))
              {
                sub_1B7CEC540(v797, v802);
              }
            }
          }
        }

        v923 = IMDDataDectorDictionaryForMessageItem(a1);
        v1026 = 0;
        *buf = 0;
        objc_msgSend_threadIdentifier(a1, v803, v804, v805);
        IMMessageThreadIdentifierGetComponents();
        v806 = MEMORY[0x1E69A8158];
        v810 = objc_msgSend_syndicationRanges(a1, v807, v808, v809);
        v922 = objc_msgSend_serializedStringFromArray_(v806, v811, v810, v812);
        v813 = MEMORY[0x1E69A8158];
        v817 = objc_msgSend_syncedSyndicationRanges(a1, v814, v815, v816);
        v921 = objc_msgSend_serializedStringFromArray_(v813, v818, v817, v819);
        v823 = objc_msgSend_dateEdited(a1, v820, v821, v822);
        v920 = objc_msgSend_dateRecovered(a1, v824, v825, v826);
        v919 = objc_msgSend_biaReferenceID(a1, v827, v828, v829);
        v918 = objc_msgSend_fallbackHash(a1, v830, v831, v832);
        v917 = objc_msgSend_associatedMessageEmoji(a1, v833, v834, v835);
        v916 = objc_msgSend_scheduleType(a1, v836, v837, v838);
        v915 = objc_msgSend_scheduleState(a1, v839, v840, v841);
        v914 = objc_msgSend_cloudKitChatID(a1, v842, v843, v844);
        v913 = objc_msgSend___im_nanosecondTimeInterval(v113, v845, v846, v847);
        v1024 = objc_msgSend___im_nanosecondTimeInterval(v1019, v848, v849, v850);
        v1014 = objc_msgSend___im_nanosecondTimeInterval(v1006, v851, v852, v853);
        v912 = objc_msgSend___im_nanosecondTimeInterval(v123, v854, v855, v856);
        v1004 = objc_msgSend_intValue(v996, v857, v858, v859);
        v863 = objc_msgSend_intValue(v986, v860, v861, v862);
        v994 = objc_msgSend_replaceID(a1, v864, v865, v866);
        v911 = objc_msgSend_countryCode(a1, v867, v868, v869);
        v910 = objc_msgSend_unformattedID(a1, v870, v871, v872);
        v984 = objc_msgSend___im_nanosecondTimeInterval(v976, v873, v874, v875);
        v879 = objc_msgSend_cloudKitSyncState(a1, v876, v877, v878);
        v883 = objc_msgSend_cloudKitRecordID(a1, v880, v881, v882);
        v887 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v884, v885, v886);
        v891 = objc_msgSend_cloudKitRecordChangeTag(a1, v888, v889, v890);
        v895 = objc_msgSend_replyToGUID(a1, v892, v893, v894);
        v899 = objc_msgSend_sortID(a1, v896, v897, v898);
        v901 = v1026;
        v900 = *buf;
        v905 = objc_msgSend___im_nanosecondTimeInterval(v823, v902, v903, v904);
        v909 = objc_msgSend___im_nanosecondTimeInterval(v920, v906, v907, v908);
        return IMDMessageRecordCreate(0, 0, v937, v913, v1024, v1014, v912, v1004, v863, v994, v951, v967, v958, v944, v941, v939, v936, v935, v911, v910, 0, 0, 0, 0, 0, v933, 0, v928, v927, v926, v925, v932, v930, v929, v984, v924, v879, v883, v887, v891, v923, v931, v895, v899, v900, v901, v922, v921, v934, v905, v909, v919, v918, v917, v916, v915, v914);
      }
    }

    else if (v8 <= 5)
    {
      if (v8 == 4)
      {
        if (objc_msgSend_sender(a1, v5, v6, v7))
        {
          v1020 = objc_msgSend_sender(a1, v185, v186, v187);
        }

        else
        {
          v1020 = objc_msgSend_handle(a1, v185, v186, v187);
        }

        v563 = objc_msgSend_status(a1, v188, v189, v190);
        if (v563 == 1)
        {
          v564 = @"stop sharing";
        }

        else
        {
          v564 = @"unknown";
        }

        v565 = objc_msgSend_direction(a1, v560, v561, v562);
        if (v565)
        {
          v566 = @"unknown";
        }

        else
        {
          v566 = @"outgoing";
        }

        if (IMOSLoggingEnabled())
        {
          v570 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v570, OS_LOG_TYPE_INFO))
          {
            v571 = objc_msgSend_guid(a1, v567, v568, v569);
            v575 = objc_msgSend_otherHandle(a1, v572, v573, v574);
            v576 = @"incoming";
            *buf = 138413314;
            if (v565 != 1)
            {
              v576 = v566;
            }

            *&buf[4] = v571;
            *&buf[12] = 2112;
            v577 = @"start sharing";
            if (v563)
            {
              v577 = v564;
            }

            *&buf[14] = v577;
            *&buf[22] = 2112;
            *&buf[24] = v576;
            *v1028 = 2112;
            *&v1028[2] = v1020;
            v1029 = 2112;
            v1030 = v575;
            _os_log_impl(&dword_1B7AD5000, v570, OS_LOG_TYPE_INFO, "Attempting location share update to chat guid GUID: %@  (%@:%@) %@ => %@", buf, 0x34u);
          }
        }

        v578 = objc_msgSend_time(a1, v567, v568, v569);
        v1010 = objc_msgSend___im_nanosecondTimeInterval(v578, v579, v580, v581);
        v1000 = objc_msgSend_guid(a1, v582, v583, v584);
        v990 = objc_msgSend_service(a1, v585, v586, v587);
        v980 = objc_msgSend_account(a1, v588, v589, v590);
        v971 = objc_msgSend_accountID(a1, v591, v592, v593);
        v962 = objc_msgSend_countryCode(a1, v594, v595, v596);
        v955 = objc_msgSend_unformattedID(a1, v597, v598, v599);
        v948 = objc_msgSend_otherHandle(a1, v600, v601, v602);
        v606 = objc_msgSend_status(a1, v603, v604, v605);
        v610 = objc_msgSend_direction(a1, v607, v608, v609);
        v614 = objc_msgSend_cloudKitSyncState(a1, v611, v612, v613);
        v618 = objc_msgSend_cloudKitRecordID(a1, v615, v616, v617);
        v622 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v619, v620, v621);
        v626 = objc_msgSend_cloudKitRecordChangeTag(a1, v623, v624, v625);
        v630 = objc_msgSend_destinationCallerID(a1, v627, v628, v629);
        v634 = objc_msgSend_replyToGUID(a1, v631, v632, v633);
        v638 = objc_msgSend_sortID(a1, v635, v636, v637);
        v642 = objc_msgSend_cloudKitChatID(a1, v639, v640, v641);
        return IMDMessageRecordCreate(0, 4, 0, v1010, 0, 0, 0, 0, 0, 0, 0, v1000, 0, v990, v980, v971, 0, v1020, v962, v955, v948, 0, 0, v606, v610, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v614, v618, v622, v626, 0, v630, v634, v638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v642);
      }

      else
      {
        if (objc_msgSend_sender(a1, v5, v6, v7))
        {
          v1018 = objc_msgSend_sender(a1, v103, v104, v105);
        }

        else
        {
          v1018 = objc_msgSend_handle(a1, v103, v104, v105);
        }

        v486 = objc_msgSend_actionType(a1, v106, v107, v108);
        v1009 = v486;
        if (v486 >= 3)
        {
          v487 = @"unknown";
        }

        else
        {
          v487 = off_1E7CBA2A0[v486];
        }

        if (IMOSLoggingEnabled())
        {
          v491 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v491, OS_LOG_TYPE_INFO))
          {
            *buf = 138413058;
            *&buf[4] = objc_msgSend_guid(a1, v488, v489, v490);
            *&buf[12] = 2112;
            *&buf[14] = v487;
            *&buf[22] = 2112;
            *&buf[24] = v1018;
            *v1028 = 2112;
            *&v1028[2] = objc_msgSend_otherHandle(a1, v492, v493, v494);
            _os_log_impl(&dword_1B7AD5000, v491, OS_LOG_TYPE_INFO, "Attempting to add message action GUID: %@ (%@) %@ => %@", buf, 0x2Au);
          }
        }

        v495 = objc_msgSend_time(a1, v488, v489, v490);
        v999 = objc_msgSend___im_nanosecondTimeInterval(v495, v496, v497, v498);
        v989 = objc_msgSend_guid(a1, v499, v500, v501);
        v979 = objc_msgSend_service(a1, v502, v503, v504);
        v970 = objc_msgSend_account(a1, v505, v506, v507);
        v961 = objc_msgSend_accountID(a1, v508, v509, v510);
        v954 = objc_msgSend_originalMessageGUID(a1, v511, v512, v513);
        v947 = objc_msgSend_countryCode(a1, v514, v515, v516);
        v943 = objc_msgSend_unformattedID(a1, v517, v518, v519);
        v523 = objc_msgSend_otherHandle(a1, v520, v521, v522);
        v527 = objc_msgSend_balloonBundleID(a1, v524, v525, v526);
        v531 = objc_msgSend_cloudKitSyncState(a1, v528, v529, v530);
        v535 = objc_msgSend_cloudKitRecordID(a1, v532, v533, v534);
        v539 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v536, v537, v538);
        v543 = objc_msgSend_cloudKitRecordChangeTag(a1, v540, v541, v542);
        v547 = objc_msgSend_destinationCallerID(a1, v544, v545, v546);
        v551 = objc_msgSend_replyToGUID(a1, v548, v549, v550);
        v555 = objc_msgSend_sortID(a1, v552, v553, v554);
        v559 = objc_msgSend_cloudKitChatID(a1, v556, v557, v558);
        return IMDMessageRecordCreate(0, 5, 0, v999, 0, 0, 0, 0, 0, 0, 0, v989, 0, v979, v970, v961, v954, v1018, v947, v943, v523, 0, 0, 0, 0, 0, v1009, 0, 0, 0, 0, v527, 0, 0, 0, 0, v531, v535, v539, v543, 0, v547, v551, v555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v559);
      }
    }

    else
    {
      switch(v8)
      {
        case 8:
          v158 = objc_msgSend_guid(a1, v5, v6, v7);
          v162 = objc_msgSend_time(a1, v159, v160, v161);
          v166 = objc_msgSend_service(a1, v163, v164, v165);
          v170 = objc_msgSend_account(a1, v167, v168, v169);
          v174 = objc_msgSend_accountID(a1, v171, v172, v173);
          if (objc_msgSend_sender(a1, v175, v176, v177))
          {
            v181 = objc_msgSend_sender(a1, v178, v179, v180);
          }

          else
          {
            v181 = objc_msgSend_handle(a1, v178, v179, v180);
          }

          v696 = v181;
          v697 = objc_msgSend_otherHandle(a1, v182, v183, v184);
          v698 = IMDatabaseLogHandle();
          v973 = v697;
          v982 = v696;
          v992 = v174;
          v1002 = v170;
          v1012 = v166;
          if (os_log_type_enabled(v698, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v158;
            _os_log_impl(&dword_1B7AD5000, v698, OS_LOG_TYPE_DEFAULT, "Attempting to create location update item with GUID: %@", buf, 0xCu);
          }

          v1022 = v158;
          v964 = objc_msgSend___im_nanosecondTimeInterval(v162, v699, v700, v701);
          v705 = objc_msgSend_countryCode(a1, v702, v703, v704);
          v709 = objc_msgSend_unformattedID(a1, v706, v707, v708);
          v713 = objc_msgSend_cloudKitSyncState(a1, v710, v711, v712);
          v717 = objc_msgSend_cloudKitRecordID(a1, v714, v715, v716);
          v721 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v718, v719, v720);
          v725 = objc_msgSend_cloudKitRecordChangeTag(a1, v722, v723, v724);
          v729 = objc_msgSend_destinationCallerID(a1, v726, v727, v728);
          v733 = objc_msgSend_replyToGUID(a1, v730, v731, v732);
          v737 = objc_msgSend_sortID(a1, v734, v735, v736);
          v741 = objc_msgSend_cloudKitChatID(a1, v738, v739, v740);
          return IMDMessageRecordCreate(0, 8, 0, v964, 0, 0, 0, 0, 0, 0, 0, v1022, 0, v1012, v1002, v992, 0, v982, v705, v709, v973, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v713, v717, v721, v725, 0, v729, v733, v737, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v741);
        case 7:
          v191 = objc_msgSend_guid(a1, v5, v6, v7);
          v195 = objc_msgSend_time(a1, v192, v193, v194);
          v199 = objc_msgSend_service(a1, v196, v197, v198);
          v203 = objc_msgSend_account(a1, v200, v201, v202);
          v207 = objc_msgSend_accountID(a1, v204, v205, v206);
          if (objc_msgSend_sender(a1, v208, v209, v210))
          {
            v214 = objc_msgSend_sender(a1, v211, v212, v213);
          }

          else
          {
            v214 = objc_msgSend_handle(a1, v211, v212, v213);
          }

          v742 = v214;
          v743 = objc_msgSend_otherHandle(a1, v215, v216, v217);
          v744 = IMDatabaseLogHandle();
          v974 = v743;
          v983 = v742;
          v993 = v207;
          v1003 = v203;
          v1013 = v199;
          if (os_log_type_enabled(v744, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v191;
            _os_log_impl(&dword_1B7AD5000, v744, OS_LOG_TYPE_DEFAULT, "Attempting to create transcript sharing item with GUID: %@", buf, 0xCu);
          }

          v1023 = v191;
          v965 = objc_msgSend___im_nanosecondTimeInterval(v195, v745, v746, v747);
          v751 = objc_msgSend_countryCode(a1, v748, v749, v750);
          v755 = objc_msgSend_unformattedID(a1, v752, v753, v754);
          v759 = objc_msgSend_cloudKitSyncState(a1, v756, v757, v758);
          v763 = objc_msgSend_cloudKitRecordID(a1, v760, v761, v762);
          v767 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v764, v765, v766);
          v771 = objc_msgSend_cloudKitRecordChangeTag(a1, v768, v769, v770);
          v775 = objc_msgSend_destinationCallerID(a1, v772, v773, v774);
          v779 = objc_msgSend_replyToGUID(a1, v776, v777, v778);
          v783 = objc_msgSend_sortID(a1, v780, v781, v782);
          v787 = objc_msgSend_cloudKitChatID(a1, v784, v785, v786);
          return IMDMessageRecordCreate(0, 7, 0, v965, 0, 0, 0, 0, 0, 0, 0, v1023, 0, v1013, v1003, v993, 0, v983, v751, v755, v974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v759, v763, v767, v771, 0, v775, v779, v783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v787);
        case 6:
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              *&buf[4] = objc_msgSend_guid(a1, v10, v11, v12);
              *&buf[12] = 2112;
              *&buf[14] = objc_msgSend_conversationUUID(a1, v14, v15, v16);
              _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Attempting to create a TU Conversation item with guid %@ conversationUUID: %@", buf, 0x16u);
            }
          }

          v17 = MEMORY[0x1E696AD98];
          v18 = objc_msgSend_flags(a1, v10, v11, v12);
          v1015 = objc_msgSend_numberWithUnsignedLongLong_(v17, v19, v18, v20);
          v21 = MEMORY[0x1E695DEF0];
          v25 = objc_msgSend_messageSummaryInfo(a1, v22, v23, v24);
          v1005 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v21, v26, v25, v27);
          v31 = objc_msgSend_time(a1, v28, v29, v30);
          v995 = objc_msgSend___im_nanosecondTimeInterval(v31, v32, v33, v34);
          v985 = objc_msgSend_guid(a1, v35, v36, v37);
          v975 = objc_msgSend_service(a1, v38, v39, v40);
          v966 = objc_msgSend_account(a1, v41, v42, v43);
          v957 = objc_msgSend_accountID(a1, v44, v45, v46);
          v950 = objc_msgSend_handle(a1, v47, v48, v49);
          v53 = objc_msgSend_countryCode(a1, v50, v51, v52);
          v57 = objc_msgSend_unformattedID(a1, v54, v55, v56);
          v61 = objc_msgSend_cloudKitSyncState(a1, v58, v59, v60);
          v65 = objc_msgSend_cloudKitRecordID(a1, v62, v63, v64);
          v69 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v66, v67, v68);
          v73 = objc_msgSend_cloudKitRecordChangeTag(a1, v70, v71, v72);
          v77 = objc_msgSend_destinationCallerID(a1, v74, v75, v76);
          v81 = objc_msgSend_replyToGUID(a1, v78, v79, v80);
          v85 = objc_msgSend_sortID(a1, v82, v83, v84);
          v89 = objc_msgSend_cloudKitChatID(a1, v86, v87, v88);
          return IMDMessageRecordCreate(0, 6, 0, v995, 0, 0, 0, 0, 0, 0, v1015, v985, 0, v975, v966, v957, 0, v950, v53, v57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v1005, v61, v65, v69, v73, 0, v77, v81, v85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v89);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v90 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v90, OS_LOG_TYPE_INFO, "Attempted to create IMDMessageRecordRef from nil IMItem.", buf, 2u);
      }
    }

    return 0;
  }

  return result;
}

void sub_1B7B65F84(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x1B7B64E88);
  }

  _Unwind_Resume(exception_object);
}

id IMDDataDectorDictionaryForMessageItem(void *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = objc_msgSend_roomName(a1, v3, v4, v5);
  if (v6)
  {
    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v7, @"msg-room-%@", v9, v6);
  }

  else
  {
    v12 = objc_msgSend_handle(a1, v7, v8, v9);
    if (!v12)
    {
      goto LABEL_6;
    }

    v10 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v13, @"msg-handle-%@", v15, v12);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v2, v11, v10, *MEMORY[0x1E69A6550]);
LABEL_6:
  v16 = objc_msgSend_service(a1, v13, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v2, v17, v16, *MEMORY[0x1E69A6558]);
  v21 = objc_msgSend_copy(v2, v18, v19, v20);

  return v21;
}

id IMDUpdateIMMessageItemWithIMMessageItemForceReplaceReplaceError(id a1, void *a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v1524 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = objc_alloc(MEMORY[0x1E69A7EF0]);
      a1 = objc_msgSend_initWithMessageItem_(v13, v14, a1, v15);
    }
  }

  context = objc_autoreleasePoolPush();
  v16 = MEMORY[0x1E696AD60];
  v20 = objc_msgSend_guid(a1, v17, v18, v19);
  v23 = objc_msgSend_stringWithFormat_(v16, v21, @"IMMessageItem: %@", v22, v20);
  v30 = objc_msgSend_plainBody(a2, v24, v25, v26);
  if ((a3 & 1) == 0 && ((v38 = objc_msgSend_plainBody(a1, v27, v28, v29), v38 == v30) || (v40 = v38, objc_msgSend_length(v38, v27, v39, v29)) && objc_msgSend_length(v30, v27, v41, v29) && objc_msgSend_isEqualToString_(v40, v27, v30, v29)))
  {
    v37 = objc_msgSend_bodyData(a2, v27, v39, v29);
  }

  else
  {
    objc_msgSend_setPlainBody_(a1, v27, v30, v29);
    v37 = objc_msgSend_bodyData(a2, v31, v32, v33);
    if (a3)
    {
      goto LABEL_17;
    }
  }

  v42 = objc_msgSend_bodyData(a1, v34, v35, v36);
  if (v42 == v37 || v37 && v42 && objc_msgSend_isEqualToData_(v42, v34, v37, v36))
  {
    v47 = objc_msgSend_body(a2, v34, v43, v36);
    goto LABEL_18;
  }

LABEL_17:
  objc_msgSend_setBodyData_(a1, v34, v37, v36);
  v47 = objc_msgSend_body(a2, v48, v49, v50);
  if (a3)
  {
LABEL_22:
    objc_msgSend_appendString_(v23, v44, @", body changed", v46);
    objc_msgSend_setBody_(a1, v63, v47, v64);
    goto LABEL_23;
  }

LABEL_18:
  v51 = objc_msgSend_body(a1, v44, v45, v46);
  v55 = objc_msgSend_string(v51, v52, v53, v54);
  v59 = objc_msgSend_string(v47, v56, v57, v58);
  if (v55 != v59)
  {
    v61 = v59;
    if (!objc_msgSend_length(v55, v44, v60, v46) || !objc_msgSend_length(v61, v44, v62, v46) || (objc_msgSend_isEqualToString_(v55, v44, v61, v46) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  v1460 = a6;
  v65 = objc_msgSend_partCount(a2, v44, v60, v46);
  objc_msgSend_setPartCount_(a1, v66, v65, v67);
  v74 = objc_msgSend_subject(a2, v68, v69, v70);
  if ((a3 & 1) != 0 || (v435 = objc_msgSend_subject(a1, v71, v72, v73), v435 != v74) && ((v436 = v435, !objc_msgSend_length(v435, v71, v77, v73)) || !objc_msgSend_length(v74, v71, v437, v73) || (objc_msgSend_isEqualToString_(v436, v71, v74, v73) & 1) == 0))
  {
    objc_msgSend_appendString_(v23, v71, @", subject changed", v73);
    objc_msgSend_setSubject_(a1, v75, v74, v76);
  }

  if (isKindOfClass)
  {
    v78 = objc_msgSend_associatedMessageGUID(a1, v71, v77, v73);
    v82 = objc_msgSend_associatedMessageGUID(a2, v79, v80, v81);
    if (v78 != v82)
    {
      v86 = v82;
      if (!objc_msgSend_length(v78, v83, v84, v85) || objc_msgSend_length(v86, v83, v84, v85) && (objc_msgSend_isEqualToString_(v78, v83, v86, v85) & 1) == 0)
      {
        v87 = MEMORY[0x1E696AEC0];
        v88 = objc_msgSend_associatedMessageGUID(a1, v83, v84, v85);
        v92 = objc_msgSend_associatedMessageGUID(a2, v89, v90, v91);
        v95 = objc_msgSend_stringWithFormat_(v87, v93, @", associatedMessageGUID from %@ to %@", v94, v88, v92);
        objc_msgSend_appendString_(v23, v96, v95, v97);
        v101 = objc_msgSend_associatedMessageGUID(a2, v98, v99, v100);
        objc_msgSend_setAssociatedMessageGUID_(a1, v102, v101, v103);
      }
    }

    v104 = MEMORY[0x1E696AD98];
    v105 = objc_msgSend_associatedMessageType(a1, v83, v84, v85);
    v108 = objc_msgSend_numberWithUnsignedLongLong_(v104, v106, v105, v107);
    v109 = MEMORY[0x1E696AD98];
    v113 = objc_msgSend_associatedMessageType(a2, v110, v111, v112);
    v116 = objc_msgSend_numberWithUnsignedLongLong_(v109, v114, v113, v115);
    if (v108 != v116 && (!v108 || (v118 = v116) != 0 && (objc_msgSend_isEqualToNumber_(v108, v117, v116, v119) & 1) == 0))
    {
      v120 = MEMORY[0x1E696AEC0];
      v121 = MEMORY[0x1E696AD98];
      v122 = objc_msgSend_associatedMessageType(a1, v117, v118, v119);
      v125 = objc_msgSend_numberWithUnsignedLongLong_(v121, v123, v122, v124);
      v126 = MEMORY[0x1E696AD98];
      v130 = objc_msgSend_associatedMessageType(a2, v127, v128, v129);
      v133 = objc_msgSend_numberWithUnsignedLongLong_(v126, v131, v130, v132);
      v136 = objc_msgSend_stringWithFormat_(v120, v134, @", associatedMessageType from %@ to %@", v135, v125, v133);
      objc_msgSend_appendString_(v23, v137, v136, v138);
      v142 = objc_msgSend_associatedMessageType(a2, v139, v140, v141);
      objc_msgSend_setAssociatedMessageType_(a1, v143, v142, v144);
    }

    v145 = objc_msgSend_associatedMessageRange(a2, v117, v118, v119);
    v147 = v146;
    v150 = objc_msgSend_associatedMessageRange(a1, v146, v148, v149);
    v151 = v147 == v71 && v145 == v150;
    if (!v151 && v147)
    {
      objc_msgSend_setAssociatedMessageRange_(a1, v71, v145, v147);
    }
  }

  if ((a3 & 1) == 0 && !objc_msgSend_payloadData(a2, v71, v77, v73) && !objc_msgSend_payloadData(a1, v71, v77, v73))
  {
    goto LABEL_58;
  }

  v152 = objc_msgSend_payloadData(a1, v71, v77, v73);
  v156 = objc_msgSend_payloadData(a2, v153, v154, v155);
  if (v152 != v156 && (!v152 || (v77 = v156) == 0 || (objc_msgSend_isEqualToData_(v152, v71, v156, v73) & 1) == 0))
  {
    v157 = objc_msgSend_payloadData(a2, v71, v77, v73);
    objc_msgSend_setPayloadData_(a1, v158, v157, v159);
  }

  if (a3)
  {
    if (objc_msgSend_balloonBundleID(a2, v71, v77, v73))
    {
      v163 = objc_msgSend_balloonBundleID(a1, v160, v161, v162);
      v167 = objc_msgSend_balloonBundleID(a2, v164, v165, v166);
      if (v163 != v167)
      {
        v168 = v167;
        if (!objc_msgSend_length(v163, v160, v161, v162) || objc_msgSend_length(v168, v160, v161, v162) && (objc_msgSend_isEqualToString_(v163, v160, v168, v162) & 1) == 0)
        {
          v169 = objc_msgSend_balloonBundleID(a2, v160, v161, v162);
          objc_msgSend_setBalloonBundleID_(a1, v170, v169, v171);
        }
      }
    }
  }

  else
  {
LABEL_58:
    if (!objc_msgSend_messageSummaryInfo(a2, v71, v77, v73) && !objc_msgSend_messageSummaryInfo(a1, v160, v161, v162))
    {
      goto LABEL_62;
    }
  }

  v172 = objc_msgSend_messageSummaryInfo(a2, v160, v161, v162);
  v176 = objc_msgSend_messageSummaryInfo(a1, v173, v174, v175);
  if ((objc_msgSend_isEqualToDictionary_(v172, v177, v176, v178) & 1) == 0)
  {
    v179 = objc_msgSend_messageSummaryInfo(a2, v160, v161, v162);
    objc_msgSend_setMessageSummaryInfo_(a1, v180, v179, v181);
  }

  if ((a3 & 1) == 0)
  {
LABEL_62:
    if (!objc_msgSend_fileTransferGUIDs(a2, v160, v161, v162) && !objc_msgSend_fileTransferGUIDs(a1, v160, v161, v162))
    {
      goto LABEL_66;
    }
  }

  v182 = objc_msgSend_fileTransferGUIDs(a2, v160, v161, v162);
  v186 = objc_msgSend_fileTransferGUIDs(a1, v183, v184, v185);
  if ((objc_msgSend_isEqualToArray_(v182, v187, v186, v188) & 1) == 0)
  {
    v189 = MEMORY[0x1E696AEC0];
    v190 = objc_msgSend_fileTransferGUIDs(a1, v160, v161, v162);
    v194 = objc_msgSend_fileTransferGUIDs(a2, v191, v192, v193);
    v197 = objc_msgSend_stringWithFormat_(v189, v195, @", fileTransferGUIDs from %@ to %@", v196, v190, v194);
    objc_msgSend_appendString_(v23, v198, v197, v199);
    v203 = objc_msgSend_fileTransferGUIDs(a2, v200, v201, v202);
    objc_msgSend_setFileTransferGUIDs_(a1, v204, v203, v205);
  }

LABEL_66:
  v206 = objc_msgSend_time(a2, v160, v161, v162);
  v210 = v206;
  if ((a3 & 1) != 0 || v206)
  {
    v211 = objc_msgSend_time(a1, v207, v208, v209);
    if (v211 != v210 && (!v211 || v210 && (objc_msgSend_isEqualToDate_(v211, v207, v210, v209) & 1) == 0))
    {
      if ((a3 & 1) != 0 || (v212 = objc_msgSend_time(a1, v207, v208, v209), objc_msgSend_timeIntervalSinceReferenceDate(v212, v213, v214, v215), v216 >= 0.00000011920929))
      {
        v217 = MEMORY[0x1E696AEC0];
        v218 = objc_msgSend_time(a1, v207, v208, v209);
        v221 = objc_msgSend_stringWithFormat_(v217, v219, @", time from %@ to %@", v220, v218, v210);
        objc_msgSend_appendString_(v23, v222, v221, v223);
        objc_msgSend_setTime_(a1, v224, v210, v225);
      }
    }
  }

  v229 = objc_msgSend_timeDelivered(a2, v207, v208, v209);
  if (v229 || a3)
  {
    v230 = objc_msgSend_timeDelivered(a1, v226, v227, v228);
    if (v230 != v229 && (!v230 || v229 && (objc_msgSend_isEqualToDate_(v230, v226, v229, v228) & 1) == 0))
    {
      v231 = MEMORY[0x1E696AEC0];
      v232 = objc_msgSend_timeDelivered(a1, v226, v227, v228);
      v235 = objc_msgSend_stringWithFormat_(v231, v233, @", timeDelivered from %@ to %@", v234, v232, v229);
      objc_msgSend_appendString_(v23, v236, v235, v237);
      objc_msgSend_setTimeDelivered_(a1, v238, v229, v239);
    }
  }

  v243 = objc_msgSend_timeRead(a2, v226, v227, v228);
  if (v243 || a3)
  {
    v244 = objc_msgSend_timeRead(a1, v240, v241, v242);
    if (v244 != v243 && (!v244 || v243 && (objc_msgSend_isEqualToDate_(v244, v240, v243, v242) & 1) == 0))
    {
      v245 = MEMORY[0x1E696AEC0];
      v246 = objc_msgSend_timeRead(a1, v240, v241, v242);
      v249 = objc_msgSend_stringWithFormat_(v245, v247, @", timeRead from %@ to %@", v248, v246, v243);
      objc_msgSend_appendString_(v23, v250, v249, v251);
      objc_msgSend_setTimeRead_(a1, v252, v243, v253);
    }
  }

  v257 = objc_msgSend_timePlayed(a2, v240, v241, v242);
  if (v257 || a3)
  {
    v258 = objc_msgSend_timePlayed(a1, v254, v255, v256);
    if (v258 != v257 && (!v258 || v257 && (objc_msgSend_isEqualToDate_(v258, v254, v257, v256) & 1) == 0))
    {
      v259 = MEMORY[0x1E696AEC0];
      v260 = objc_msgSend_timePlayed(a1, v254, v255, v256);
      v263 = objc_msgSend_stringWithFormat_(v259, v261, @", timePlayed from %@ to %@", v262, v260, v257);
      objc_msgSend_appendString_(v23, v264, v263, v265);
      objc_msgSend_setTimePlayed_(a1, v266, v257, v267);
    }
  }

  v271 = objc_msgSend_dateEdited(a2, v254, v255, v256);
  if (v271 || a3)
  {
    v272 = objc_msgSend_dateEdited(a1, v268, v269, v270);
    if (v272 != v271 && (!v272 || v271 && (objc_msgSend_isEqualToDate_(v272, v268, v271, v270) & 1) == 0))
    {
      v273 = MEMORY[0x1E696AEC0];
      v274 = objc_msgSend_dateEdited(a1, v268, v269, v270);
      v277 = objc_msgSend_stringWithFormat_(v273, v275, @", dateEdited from %@ to %@", v276, v274, v271);
      objc_msgSend_appendString_(v23, v278, v277, v279);
      objc_msgSend_setDateEdited_(a1, v280, v271, v281);
    }
  }

  v282 = objc_msgSend_account(a2, v268, v269, v270);
  v286 = objc_msgSend_account(a1, v283, v284, v285);
  if (v286 != v282)
  {
    v290 = v286;
    if (!objc_msgSend_length(v286, v287, v288, v289) || objc_msgSend_length(v282, v287, v291, v289) && (objc_msgSend_isEqualToString_(v290, v287, v282, v289) & 1) == 0)
    {
      objc_msgSend_setAccount_(a1, v287, v282, v289);
    }
  }

  v292 = objc_msgSend_accountID(a2, v287, v288, v289);
  v296 = objc_msgSend_accountID(a1, v293, v294, v295);
  if (v296 != v292)
  {
    v300 = v296;
    if (!objc_msgSend_length(v296, v297, v298, v299) || objc_msgSend_length(v292, v297, v301, v299) && (objc_msgSend_isEqualToString_(v300, v297, v292, v299) & 1) == 0)
    {
      objc_msgSend_setAccountID_(a1, v297, v292, v299);
    }
  }

  v302 = objc_msgSend_service(a2, v297, v298, v299);
  v306 = objc_msgSend_service(a1, v303, v304, v305);
  if (v306 != v302)
  {
    v310 = v306;
    if (!objc_msgSend_length(v306, v307, v308, v309) || objc_msgSend_length(v302, v307, v308, v309) && (objc_msgSend_isEqualToString_(v310, v307, v302, v309) & 1) == 0)
    {
      v311 = MEMORY[0x1E696AEC0];
      v312 = objc_msgSend_service(a1, v307, v308, v309);
      v315 = objc_msgSend_stringWithFormat_(v311, v313, @", service from %@ to %@", v314, v312, v302);
      objc_msgSend_appendString_(v23, v316, v315, v317);
      objc_msgSend_setService_(a1, v318, v302, v319);
    }
  }

  v323 = objc_msgSend_destinationCallerID(a2, v307, v308, v309);
  if (v323 || a3)
  {
    v324 = objc_msgSend_destinationCallerID(a1, v320, v321, v322);
    if (v324 != v323)
    {
      v325 = v324;
      if (!objc_msgSend_length(v324, v320, v321, v322) || objc_msgSend_length(v323, v320, v321, v322) && (objc_msgSend_isEqualToString_(v325, v320, v323, v322) & 1) == 0)
      {
        v326 = MEMORY[0x1E696AEC0];
        v327 = objc_msgSend_destinationCallerID(a1, v320, v321, v322);
        v330 = objc_msgSend_stringWithFormat_(v326, v328, @", destinationCallerID from %@ to %@", v329, v327, v323);
        objc_msgSend_appendString_(v23, v331, v330, v332);
        objc_msgSend_setDestinationCallerID_(a1, v333, v323, v334);
      }
    }
  }

  if ((a3 & 1) != 0 || a4)
  {
    v335 = MEMORY[0x1E696AD98];
    v336 = objc_msgSend_errorCode(a2, v320, v321, v322);
    v339 = objc_msgSend_numberWithUnsignedInt_(v335, v337, v336, v338);
    v340 = MEMORY[0x1E696AD98];
    v344 = objc_msgSend_errorCode(a1, v341, v342, v343);
    v347 = objc_msgSend_numberWithUnsignedInt_(v340, v345, v344, v346);
    if (v347 != v339)
    {
      v348 = v347;
      if (!v347 || v339 && (objc_msgSend_isEqualToNumber_(v347, v320, v339, v322) & 1) == 0)
      {
        v349 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v320, @", errorCode from %@ to %@", v322, v348, v339);
        objc_msgSend_appendString_(v23, v350, v349, v351);
        v355 = objc_msgSend_unsignedIntValue(v339, v352, v353, v354);
        objc_msgSend_setErrorCode_(a1, v356, v355, v357);
      }
    }
  }

  v361 = objc_msgSend_expireState(a2, v320, v321, v322);
  if ((a3 & 1) != 0 || v361 > objc_msgSend_expireState(a1, v358, v359, v360))
  {
    v362 = MEMORY[0x1E696AEC0];
    v363 = objc_msgSend_expireState(a1, v358, v359, v360);
    v366 = objc_msgSend_stringWithFormat_(v362, v364, @", expireState from %lld to %lld", v365, v363, v361);
    objc_msgSend_appendString_(v23, v367, v366, v368);
    objc_msgSend_setExpireState_(a1, v369, v361, v370);
  }

  v374 = objc_msgSend_timeExpressiveSendPlayed(a2, v358, v359, v360);
  if (v374 || a3)
  {
    v375 = objc_msgSend_timeExpressiveSendPlayed(a1, v371, v372, v373);
    if (v375 != v374 && (!v375 || v374 && (objc_msgSend_isEqualToDate_(v375, v371, v374, v373) & 1) == 0))
    {
      v376 = MEMORY[0x1E696AEC0];
      v377 = objc_msgSend_timeExpressiveSendPlayed(a1, v371, v372, v373);
      v380 = objc_msgSend_stringWithFormat_(v376, v378, @", timeExpressiveSendPlayed from %@ to %@", v379, v377, v374);
      objc_msgSend_appendString_(v23, v381, v380, v382);
      objc_msgSend_setTimeExpressiveSendPlayed_(a1, v383, v374, v384);
    }
  }

  if (a5)
  {
    v385 = MEMORY[0x1E696AD98];
    v386 = objc_msgSend_flags(a2, v371, v372, v373);
    v389 = objc_msgSend_numberWithUnsignedLongLong_(v385, v387, v386, v388);
    v390 = MEMORY[0x1E696AD98];
    v394 = objc_msgSend_flags(a1, v391, v392, v393);
    v397 = objc_msgSend_numberWithUnsignedLongLong_(v390, v395, v394, v396);
    if (v397 != v389)
    {
      v398 = v397;
      if (!v397 || v389 && (objc_msgSend_isEqualToNumber_(v397, v371, v389, v373) & 1) == 0)
      {
        v399 = objc_msgSend_flags(a1, v371, v372, v373);
        v403 = objc_msgSend_flags(a2, v400, v401, v402);
        v406 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v404, @", flags from %@ to %@", v405, v398, v389);
        objc_msgSend_appendString_(v23, v407, v406, v408);
        if (v1460)
        {
          v412 = -1;
        }

        else
        {
          v412 = a7;
        }

        v413 = v403 & v412;
        if ((a3 & 1) == 0 && (v399 & 8) == 0 && objc_msgSend_isEmpty(a2, v409, v410, v411))
        {
          v413 &= ~8uLL;
        }

        v414 = v413 | v399;
        if (((a7 & 0x2000) != 0 || v1460) && objc_msgSend_isRead(a1, v409, v410, v411) && !objc_msgSend_isRead(a2, v409, v410, v411))
        {
          v414 &= ~0x2000uLL;
        }

        if (((a7 & 0x8000) != 0 || v1460) && objc_msgSend_isSent(a1, v409, v410, v411) && !objc_msgSend_isSent(a2, v409, v410, v411))
        {
          v414 &= ~0x8000uLL;
        }

        if (((a7 & 0x1000) != 0 || v1460) && objc_msgSend_isDelivered(a1, v409, v410, v411) && !objc_msgSend_isDelivered(a2, v409, v410, v411))
        {
          v414 &= ~0x1000uLL;
        }

        if (((a7 & 0x4000000) != 0 || v1460) && objc_msgSend_isCorrupt(a1, v409, v410, v411) && !objc_msgSend_isCorrupt(a2, v409, v410, v411))
        {
          v414 &= ~0x4000000uLL;
        }

        if (((a7 & 0x8000000) != 0 || v1460) && objc_msgSend_isSpam(a1, v409, v410, v411) && !objc_msgSend_isSpam(a2, v409, v410, v411))
        {
          v414 &= ~0x8000000uLL;
        }

        if (((a7 & 0x20000000000) != 0 || v1460) && objc_msgSend_isPendingSatelliteSend(a1, v409, v410, v411) && !objc_msgSend_isPendingSatelliteSend(a2, v409, v410, v411))
        {
          v414 &= ~0x20000000000uLL;
        }

        if (((a7 & 0x40000000000) != 0 || v1460) && objc_msgSend_needsRelay(a1, v409, v410, v411) && !objc_msgSend_needsRelay(a2, v409, v415, v411))
        {
          v414 &= ~0x40000000000uLL;
        }

        objc_msgSend_setFlags_(a1, v409, v414, v411);
      }
    }
  }

  if (a3)
  {
    v416 = MEMORY[0x1E696AEC0];
    if (objc_msgSend_hasUnseenMention(a1, v371, v372, v373))
    {
      v420 = @"YES";
    }

    else
    {
      v420 = @"NO";
    }

    if (objc_msgSend_hasUnseenMention(a2, v417, v418, v419))
    {
      v423 = objc_msgSend_stringWithFormat_(v416, v421, @", hasUnseenMention from %@ to %@", v422, v420, @"YES");
    }

    else
    {
      v423 = objc_msgSend_stringWithFormat_(v416, v421, @", hasUnseenMention from %@ to %@", v422, v420, @"NO");
    }

    objc_msgSend_appendString_(v23, v424, v423, v425);
    hasUnseenMention = objc_msgSend_hasUnseenMention(a2, v426, v427, v428);
    objc_msgSend_setHasUnseenMention_(a1, v430, hasUnseenMention, v431);
  }

  else
  {
    v438 = objc_msgSend_hasUnseenMention(a1, v371, v372, v373);
    if (v438 != objc_msgSend_hasUnseenMention(a2, v439, v440, v441))
    {
      v445 = MEMORY[0x1E696AEC0];
      if (objc_msgSend_hasUnseenMention(a1, v442, v443, v444))
      {
        v449 = @"YES";
      }

      else
      {
        v449 = @"NO";
      }

      if (objc_msgSend_hasUnseenMention(a2, v446, v447, v448))
      {
        v452 = objc_msgSend_stringWithFormat_(v445, v450, @", hasUnseenMention from %@ to %@", v451, v449, @"YES");
      }

      else
      {
        v452 = objc_msgSend_stringWithFormat_(v445, v450, @", hasUnseenMention from %@ to %@", v451, v449, @"NO");
      }

      objc_msgSend_appendString_(v23, v453, v452, v454);
      v458 = objc_msgSend_hasUnseenMention(a2, v455, v456, v457);
      objc_msgSend_setHasUnseenMention_(a1, v459, v458, v460);
    }

    v461 = objc_msgSend_cloudKitSyncState(a1, v442, v443, v444);
    if (v461 == objc_msgSend_cloudKitSyncState(a2, v462, v463, v464))
    {
LABEL_214:
      v488 = objc_msgSend_cloudKitRecordID(a1, v432, v433, v434);
      v492 = objc_msgSend_cloudKitRecordID(a2, v489, v490, v491);
      if (v488 != v492)
      {
        v496 = v492;
        if (!objc_msgSend_length(v488, v493, v494, v495) || objc_msgSend_length(v496, v493, v494, v495) && (objc_msgSend_isEqualToString_(v488, v493, v496, v495) & 1) == 0)
        {
          v497 = objc_msgSend_cloudKitRecordID(a2, v493, v494, v495);
          objc_msgSend_setCloudKitRecordID_(a1, v498, v497, v499);
        }
      }

      v500 = objc_msgSend_cloudKitRecordChangeTag(a1, v493, v494, v495);
      v504 = objc_msgSend_cloudKitRecordChangeTag(a2, v501, v502, v503);
      if (v500 == v504)
      {
        goto LABEL_225;
      }

      v505 = v504;
      if (objc_msgSend_length(v500, v485, v486, v487))
      {
        if (!objc_msgSend_length(v505, v485, v486, v487) || (objc_msgSend_isEqualToString_(v500, v485, v505, v487) & 1) != 0)
        {
          goto LABEL_225;
        }
      }

      goto LABEL_223;
    }
  }

  v465 = MEMORY[0x1E696AEC0];
  v466 = objc_msgSend_cloudKitSyncState(a1, v432, v433, v434);
  v470 = objc_msgSend_cloudKitSyncState(a2, v467, v468, v469);
  v473 = objc_msgSend_stringWithFormat_(v465, v471, @", cloudKitSyncState from %lld to %lld", v472, v466, v470);
  objc_msgSend_appendString_(v23, v474, v473, v475);
  v479 = objc_msgSend_cloudKitSyncState(a2, v476, v477, v478);
  objc_msgSend_setCloudKitSyncState_(a1, v480, v479, v481);
  if ((a3 & 1) == 0)
  {
    goto LABEL_214;
  }

  v482 = objc_msgSend_cloudKitRecordID(a2, v432, v433, v434);
  objc_msgSend_setCloudKitRecordID_(a1, v483, v482, v484);
LABEL_223:
  v506 = objc_msgSend_cloudKitRecordChangeTag(a2, v485, v486, v487);
  objc_msgSend_setCloudKitRecordChangeTag_(a1, v507, v506, v508);
  v512 = objc_msgSend_cloudKitServerChangeTokenBlob(a2, v509, v510, v511);
  objc_msgSend_setCloudKitServerChangeTokenBlob_(a1, v513, v512, v514);
  if (a3)
  {
    v515 = MEMORY[0x1E696AEC0];
    v516 = objc_msgSend_replyToGUID(a1, v485, v486, v487);
    v520 = objc_msgSend_replyToGUID(a2, v517, v518, v519);
    v523 = objc_msgSend_stringWithFormat_(v515, v521, @", replyToGUID from %@ to %@", v522, v516, v520);
    objc_msgSend_appendString_(v23, v524, v523, v525);
    v529 = objc_msgSend_replyToGUID(a2, v526, v527, v528);
    objc_msgSend_setReplyToGUID_(a1, v530, v529, v531);
    goto LABEL_234;
  }

LABEL_225:
  v535 = objc_msgSend_replyToGUID(a1, v485, v486, v487);
  v539 = objc_msgSend_replyToGUID(a2, v536, v537, v538);
  if (v535 != v539)
  {
    v543 = v539;
    if (!objc_msgSend_length(v535, v540, v541, v542) || objc_msgSend_length(v543, v540, v541, v542) && (objc_msgSend_isEqualToString_(v535, v540, v543, v542) & 1) == 0)
    {
      v544 = MEMORY[0x1E696AEC0];
      v545 = objc_msgSend_replyToGUID(a1, v540, v541, v542);
      v549 = objc_msgSend_replyToGUID(a2, v546, v547, v548);
      v552 = objc_msgSend_stringWithFormat_(v544, v550, @", replyToGUID from %@ to %@", v551, v545, v549);
      objc_msgSend_appendString_(v23, v553, v552, v554);
      v558 = objc_msgSend_replyToGUID(a2, v555, v556, v557);
      objc_msgSend_setReplyToGUID_(a1, v559, v558, v560);
    }
  }

  v561 = MEMORY[0x1E696AD98];
  v562 = objc_msgSend_sortID(a1, v540, v541, v542);
  v565 = objc_msgSend_numberWithUnsignedInteger_(v561, v563, v562, v564);
  v566 = MEMORY[0x1E696AD98];
  v570 = objc_msgSend_sortID(a2, v567, v568, v569);
  v573 = objc_msgSend_numberWithUnsignedInteger_(v566, v571, v570, v572);
  if (v565 == v573 || v565 && ((v533 = v573) == 0 || (objc_msgSend_isEqualToNumber_(v565, v532, v573, v534) & 1) != 0))
  {
LABEL_236:
    v619 = objc_msgSend_threadIdentifier(a1, v532, v533, v534);
    v623 = objc_msgSend_threadIdentifier(a2, v620, v621, v622);
    if (v619 != v623)
    {
      v627 = v623;
      if (!objc_msgSend_length(v619, v624, v625, v626) || objc_msgSend_length(v627, v624, v625, v626) && (objc_msgSend_isEqualToString_(v619, v624, v627, v626) & 1) == 0)
      {
        v628 = MEMORY[0x1E696AEC0];
        v629 = objc_msgSend_threadIdentifier(a1, v624, v625, v626);
        v633 = objc_msgSend_threadIdentifier(a2, v630, v631, v632);
        v636 = objc_msgSend_stringWithFormat_(v628, v634, @", threadIdentifier from %@ to %@", v635, v629, v633);
        objc_msgSend_appendString_(v23, v637, v636, v638);
        v642 = objc_msgSend_threadIdentifier(a2, v639, v640, v641);
        objc_msgSend_setThreadIdentifier_(a1, v643, v642, v644);
      }
    }

    v645 = objc_msgSend_syndicationRanges(a1, v624, v625, v626);
    v649 = objc_msgSend_syndicationRanges(a2, v646, v647, v648);
    if (v645 == v649)
    {
      goto LABEL_247;
    }

    if (v645)
    {
      v617 = v649;
      if (v649)
      {
        if (objc_msgSend_isEqualToArray_(v645, v616, v649, v618))
        {
          goto LABEL_247;
        }
      }
    }

    goto LABEL_245;
  }

LABEL_234:
  v574 = MEMORY[0x1E696AEC0];
  v575 = MEMORY[0x1E696AD98];
  v576 = objc_msgSend_sortID(a1, v532, v533, v534);
  v579 = objc_msgSend_numberWithUnsignedInteger_(v575, v577, v576, v578);
  v580 = MEMORY[0x1E696AD98];
  v584 = objc_msgSend_sortID(a2, v581, v582, v583);
  v587 = objc_msgSend_numberWithUnsignedInteger_(v580, v585, v584, v586);
  v590 = objc_msgSend_stringWithFormat_(v574, v588, @", sortID from %@ to %@", v589, v579, v587);
  objc_msgSend_appendString_(v23, v591, v590, v592);
  v596 = objc_msgSend_sortID(a2, v593, v594, v595);
  objc_msgSend_setSortID_(a1, v597, v596, v598);
  if ((a3 & 1) == 0)
  {
    goto LABEL_236;
  }

  v599 = MEMORY[0x1E696AEC0];
  v600 = objc_msgSend_threadIdentifier(a1, v532, v533, v534);
  v604 = objc_msgSend_threadIdentifier(a2, v601, v602, v603);
  v607 = objc_msgSend_stringWithFormat_(v599, v605, @", threadIdentifier from %@ to %@", v606, v600, v604);
  objc_msgSend_appendString_(v23, v608, v607, v609);
  v613 = objc_msgSend_threadIdentifier(a2, v610, v611, v612);
  objc_msgSend_setThreadIdentifier_(a1, v614, v613, v615);
LABEL_245:
  v650 = MEMORY[0x1E696AEC0];
  v651 = objc_msgSend_syndicationRanges(a1, v616, v617, v618);
  v655 = objc_msgSend_syndicationRanges(a2, v652, v653, v654);
  v658 = objc_msgSend_stringWithFormat_(v650, v656, @", syndicationRanges from %@ to %@", v657, v651, v655);
  objc_msgSend_appendString_(v23, v659, v658, v660);
  v664 = objc_msgSend_syndicationRanges(a2, v661, v662, v663);
  objc_msgSend_setSyndicationRanges_(a1, v665, v664, v666);
  if (a3)
  {
    v667 = MEMORY[0x1E696AEC0];
    v668 = objc_msgSend_syncedSyndicationRanges(a1, v616, v617, v618);
    v672 = objc_msgSend_syncedSyndicationRanges(a2, v669, v670, v671);
    v675 = objc_msgSend_stringWithFormat_(v667, v673, @", syncedSyndicationRanges from %@ to %@", v674, v668, v672);
    objc_msgSend_appendString_(v23, v676, v675, v677);
    v681 = objc_msgSend_syncedSyndicationRanges(a2, v678, v679, v680);
    objc_msgSend_setSyncedSyndicationRanges_(a1, v682, v681, v683);
    goto LABEL_256;
  }

LABEL_247:
  v687 = objc_msgSend_syncedSyndicationRanges(a1, v616, v617, v618);
  v691 = objc_msgSend_syncedSyndicationRanges(a2, v688, v689, v690);
  if (v687 != v691 && (!v687 || (v693 = v691) == 0 || (objc_msgSend_isEqualToArray_(v687, v692, v691, v694) & 1) == 0))
  {
    v695 = MEMORY[0x1E696AEC0];
    v696 = objc_msgSend_syncedSyndicationRanges(a1, v692, v693, v694);
    v700 = objc_msgSend_syncedSyndicationRanges(a2, v697, v698, v699);
    v703 = objc_msgSend_stringWithFormat_(v695, v701, @", syncedSyndicationRanges from %@ to %@", v702, v696, v700);
    objc_msgSend_appendString_(v23, v704, v703, v705);
    v709 = objc_msgSend_syncedSyndicationRanges(a2, v706, v707, v708);
    objc_msgSend_setSyncedSyndicationRanges_(a1, v710, v709, v711);
  }

  v712 = objc_msgSend_expressiveSendStyleID(a1, v692, v693, v694);
  v716 = objc_msgSend_expressiveSendStyleID(a2, v713, v714, v715);
  if (v712 == v716 || (v717 = v716, objc_msgSend_length(v712, v684, v685, v686)) && (!objc_msgSend_length(v717, v684, v685, v686) || (objc_msgSend_isEqualToString_(v712, v684, v717, v686) & 1) != 0))
  {
LABEL_258:
    v755 = objc_msgSend_scheduleType(a1, v684, v685, v686);
    if (v755 != objc_msgSend_scheduleType(a2, v756, v757, v758))
    {
      v762 = MEMORY[0x1E696AEC0];
      v763 = objc_msgSend_scheduleType(a1, v759, v760, v761);
      v767 = objc_msgSend_scheduleType(a2, v764, v765, v766);
      v770 = objc_msgSend_stringWithFormat_(v762, v768, @", scheduleType from %lu to %lu", v769, v763, v767);
      objc_msgSend_appendString_(v23, v771, v770, v772);
      v776 = objc_msgSend_scheduleType(a2, v773, v774, v775);
      objc_msgSend_setScheduleType_(a1, v777, v776, v778);
    }

    v779 = objc_msgSend_scheduleState(a1, v759, v760, v761);
    if (v779 == objc_msgSend_scheduleState(a2, v780, v781, v782))
    {
      goto LABEL_262;
    }

    goto LABEL_261;
  }

LABEL_256:
  v718 = MEMORY[0x1E696AEC0];
  v719 = objc_msgSend_expressiveSendStyleID(a1, v684, v685, v686);
  v723 = objc_msgSend_expressiveSendStyleID(a2, v720, v721, v722);
  v726 = objc_msgSend_stringWithFormat_(v718, v724, @", expressiveSendStyleID from %@ to %@", v725, v719, v723);
  objc_msgSend_appendString_(v23, v727, v726, v728);
  v732 = objc_msgSend_expressiveSendStyleID(a2, v729, v730, v731);
  objc_msgSend_setExpressiveSendStyleID_(a1, v733, v732, v734);
  if ((a3 & 1) == 0)
  {
    goto LABEL_258;
  }

  v735 = MEMORY[0x1E696AEC0];
  v736 = objc_msgSend_scheduleType(a1, v684, v685, v686);
  v740 = objc_msgSend_scheduleType(a2, v737, v738, v739);
  v743 = objc_msgSend_stringWithFormat_(v735, v741, @", scheduleType from %lu to %lu", v742, v736, v740);
  objc_msgSend_appendString_(v23, v744, v743, v745);
  v749 = objc_msgSend_scheduleType(a2, v746, v747, v748);
  objc_msgSend_setScheduleType_(a1, v750, v749, v751);
LABEL_261:
  v783 = MEMORY[0x1E696AEC0];
  v784 = objc_msgSend_scheduleState(a1, v752, v753, v754);
  v788 = objc_msgSend_scheduleState(a2, v785, v786, v787);
  v791 = objc_msgSend_stringWithFormat_(v783, v789, @", scheduleState from %lu to %lu", v790, v784, v788);
  objc_msgSend_appendString_(v23, v792, v791, v793);
  v797 = objc_msgSend_scheduleState(a2, v794, v795, v796);
  objc_msgSend_setScheduleState_(a1, v798, v797, v799);
  if (a3)
  {
LABEL_263:
    v804 = MEMORY[0x1E696AEC0];
    v805 = objc_msgSend_fallbackHash(a1, v752, v753, v754);
    v809 = objc_msgSend_fallbackHash(a2, v806, v807, v808);
    v812 = objc_msgSend_stringWithFormat_(v804, v810, @", fallbackHash from %@ to %@", v811, v805, v809);
    objc_msgSend_appendString_(v23, v813, v812, v814);
    v818 = objc_msgSend_fallbackHash(a2, v815, v816, v817);
    objc_msgSend_setFallbackHash_(a1, v819, v818, v820);
    goto LABEL_264;
  }

LABEL_262:
  v800 = objc_msgSend_fallbackHash(a1, v752, v753, v754);
  if (v800 != objc_msgSend_fallbackHash(a2, v801, v802, v803))
  {
    goto LABEL_263;
  }

LABEL_264:
  v821 = objc_msgSend_cloudKitChatID(a2, v752, v753, v754);
  v825 = objc_msgSend_cloudKitChatID(a1, v822, v823, v824);
  if (v825 != v821)
  {
    v829 = v825;
    if (!objc_msgSend_length(v825, v826, v827, v828) || objc_msgSend_length(v821, v826, v827, v828) && (objc_msgSend_isEqualToString_(v829, v826, v821, v828) & 1) == 0)
    {
      v830 = MEMORY[0x1E696AEC0];
      v831 = objc_msgSend_cloudKitChatID(a1, v826, v827, v828);
      v834 = objc_msgSend_stringWithFormat_(v830, v832, @", cloudKitChatID from %@ to %@", v833, v831, v821);
      objc_msgSend_appendString_(v23, v835, v834, v836);
      objc_msgSend_setCloudKitChatID_(a1, v837, v821, v838);
    }
  }

  v1521 = 0;
  v1522 = 0;
  objc_msgSend_threadIdentifier(a1, v826, v827, v828);
  IMMessageThreadIdentifierGetComponents();
  v839 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v839, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v23;
    _os_log_impl(&dword_1B7AD5000, v839, OS_LOG_TYPE_DEFAULT, "Updating %@", &buf, 0xCu);
  }

  v843 = objc_msgSend_guid(a1, v840, v841, v842);
  v844 = IMDMessageRecordCopyMessageForGUID(v843);
  if (v844)
  {
    v845 = v844;
    v1519 = 0;
    v1520 = 0;
    v1517 = 0;
    v1518 = 0;
    v1515 = 0;
    v1516 = 0;
    v1513 = 0;
    v1514 = 0;
    v1511 = 0;
    v1512 = 0;
    v1509 = 0;
    v1510 = 0;
    v1507 = 0;
    v1508 = 0;
    v1505 = 0;
    v1506 = 0;
    v1504 = 0;
    v1503 = 0;
    v1502 = 0;
    v1501 = 0;
    v1500 = 0;
    v1499 = 0;
    v1498 = 0;
    v1497 = 0;
    v1496 = 0;
    v1495 = 0;
    v1494 = 0;
    v1493 = 0;
    v1492 = 0;
    buf = 0uLL;
    v1491 = 0;
    v1490 = 0;
    v1489 = 0;
    cf = 0;
    v1487 = 0;
    v1486 = 0;
    v1485 = 0;
    v1484 = 0;
    v1483 = 0;
    v1482 = 0;
    v1481 = 0;
    v1480 = 0;
    v1479 = 0;
    v1478 = 0;
    v1477 = 0;
    v1476 = 0;
    v1475 = 0;
    v1474 = 0;
    v1473 = 0;
    v1472 = 0;
    v1471 = 0;
    v1470 = 0;
    v1469 = 0;
    v1468 = 0;
    v1467 = 0;
    IMDMessageRecordBulkCopy(v844, &v1500, &v1520, &v1519, &v1518, &v1517, &v1516, &v1515, &v1514, &v1513, &v1512, &v1511, &v1510, &v1509, &v1508, &v1507, &v1506, &v1505, &v1504, &v1503 + 1, &v1503, &v1502, &v1498, &v1499, &v1495, &v1496, &v1497, &v1501, &v1494, &v1493, &v1492, &buf, &v1489, &cf, &v1491, &v1490, &v1487, &v1486, &v1485, &v1484, &v1483, &v1482, &v1481, &v1480, &v1479, &v1478, &v1477, &v1476, &v1475, &v1474, &v1473, &v1472, &v1471, &v1470, &v1469, &v1468, &v1467);
    v849 = objc_msgSend_time(a1, v846, v847, v848);
    v853 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v850, v851, v852, v1517);
    if (v849 == v853)
    {
      goto LABEL_276;
    }

    if (!v849)
    {
      v857 = 1;
      goto LABEL_278;
    }

    v855 = v853;
    if (!v853)
    {
LABEL_276:
      v857 = 0;
    }

    else
    {
      v857 = objc_msgSend_isEqualToDate_(v849, v854, v853, v856) ^ 1;
    }

LABEL_278:
    v858 = objc_msgSend_timeRead(a1, v854, v855, v856);
    v862 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v859, v860, v861, v1516);
    if (v858 == v862)
    {
      goto LABEL_282;
    }

    if (!v858)
    {
      v866 = 1;
      goto LABEL_284;
    }

    v864 = v862;
    if (!v862)
    {
LABEL_282:
      v866 = 0;
    }

    else
    {
      v866 = objc_msgSend_isEqualToDate_(v858, v863, v862, v865) ^ 1;
    }

LABEL_284:
    v867 = v857 | v866;
    v868 = objc_msgSend_timeDelivered(a1, v863, v864, v865);
    v872 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v869, v870, v871, v1515);
    if (v868 == v872)
    {
      goto LABEL_288;
    }

    if (!v868)
    {
      v876 = 1;
      goto LABEL_290;
    }

    v874 = v872;
    if (!v872)
    {
LABEL_288:
      v876 = 0;
    }

    else
    {
      v876 = objc_msgSend_isEqualToDate_(v868, v873, v872, v875) ^ 1;
    }

LABEL_290:
    v877 = v867 | v876;
    v878 = objc_msgSend_timePlayed(a1, v873, v874, v875);
    v882 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v879, v880, v881, v1514);
    if (v878 == v882)
    {
      goto LABEL_294;
    }

    if (!v878)
    {
      v886 = 1;
      goto LABEL_296;
    }

    v884 = v882;
    if (!v882)
    {
LABEL_294:
      v886 = 0;
    }

    else
    {
      v886 = objc_msgSend_isEqualToDate_(v878, v883, v882, v885) ^ 1;
    }

LABEL_296:
    v887 = v877 | v886;
    v888 = objc_msgSend_plainBody(a1, v883, v884, v885);
    v892 = v1513;
    if (v888 == v1513)
    {
      v894 = 0;
    }

    else
    {
      v893 = v888;
      if (objc_msgSend_length(v888, v889, v890, v891) && objc_msgSend_length(v892, v889, v890, v891))
      {
        v894 = objc_msgSend_isEqualToString_(v893, v889, v892, v891) ^ 1;
      }

      else
      {
        v894 = 1;
      }
    }

    v895 = v887 | v894;
    v896 = objc_msgSend_bodyData(a1, v889, v890, v891);
    v899 = v1512;
    if (v896 == v1512)
    {
      v900 = 0;
    }

    else
    {
      v900 = 1;
      if (v896 && v1512)
      {
        v900 = objc_msgSend_isEqualToData_(v896, v897, v1512, v898) ^ 1;
      }
    }

    v901 = v895 | v900;
    v902 = MEMORY[0x1E696AD98];
    v903 = objc_msgSend_flags(a1, v897, v899, v898);
    v906 = objc_msgSend_numberWithUnsignedLongLong_(v902, v904, v903, v905);
    v909 = v1511;
    if (v906 == v1511)
    {
      goto LABEL_311;
    }

    if (!v906)
    {
      v910 = 1;
      goto LABEL_313;
    }

    if (!v1511)
    {
LABEL_311:
      v910 = 0;
    }

    else
    {
      v910 = objc_msgSend_isEqualToNumber_(v906, v907, v1511, v908) ^ 1;
    }

LABEL_313:
    v911 = v901 | v910;
    v912 = objc_msgSend_service(a1, v907, v909, v908);
    v916 = v1510;
    if (v912 == v1510)
    {
      goto LABEL_317;
    }

    v917 = v912;
    if (!objc_msgSend_length(v912, v913, v914, v915))
    {
      v918 = 1;
      goto LABEL_319;
    }

    if (!objc_msgSend_length(v916, v913, v914, v915))
    {
LABEL_317:
      v918 = 0;
    }

    else
    {
      v918 = objc_msgSend_isEqualToString_(v917, v913, v916, v915) ^ 1;
    }

LABEL_319:
    v919 = v911 | v918;
    v920 = objc_msgSend_destinationCallerID(a1, v913, v914, v915);
    v924 = v1482;
    if (v920 == v1482)
    {
      goto LABEL_323;
    }

    v925 = v920;
    if (!objc_msgSend_length(v920, v921, v922, v923))
    {
      v926 = 1;
      goto LABEL_325;
    }

    if (!objc_msgSend_length(v924, v921, v922, v923))
    {
LABEL_323:
      v926 = 0;
    }

    else
    {
      v926 = objc_msgSend_isEqualToString_(v925, v921, v924, v923) ^ 1;
    }

LABEL_325:
    v927 = v919 | v926;
    v928 = objc_msgSend_roomName(a1, v921, v922, v923);
    v932 = v1502;
    if (v928 == v1502)
    {
      goto LABEL_329;
    }

    v933 = v928;
    if (!objc_msgSend_length(v928, v929, v930, v931))
    {
      v934 = 1;
      goto LABEL_331;
    }

    if (!objc_msgSend_length(v932, v929, v930, v931))
    {
LABEL_329:
      v934 = 0;
    }

    else
    {
      v934 = objc_msgSend_isEqualToString_(v933, v929, v932, v931) ^ 1;
    }

LABEL_331:
    v935 = v927 | v934;
    v936 = objc_msgSend_account(a1, v929, v930, v931);
    v940 = v1509;
    if (v936 == v1509)
    {
      goto LABEL_335;
    }

    v941 = v936;
    if (!objc_msgSend_length(v936, v937, v938, v939))
    {
      v942 = 1;
      goto LABEL_337;
    }

    if (!objc_msgSend_length(v940, v937, v938, v939))
    {
LABEL_335:
      v942 = 0;
    }

    else
    {
      v942 = objc_msgSend_isEqualToString_(v941, v937, v940, v939) ^ 1;
    }

LABEL_337:
    v943 = v935 | v942;
    v944 = objc_msgSend_accountID(a1, v937, v938, v939);
    v948 = v1508;
    if (v944 == v1508)
    {
      goto LABEL_341;
    }

    v949 = v944;
    if (!objc_msgSend_length(v944, v945, v946, v947))
    {
      v950 = 1;
      goto LABEL_343;
    }

    if (!objc_msgSend_length(v948, v945, v946, v947))
    {
LABEL_341:
      v950 = 0;
    }

    else
    {
      v950 = objc_msgSend_isEqualToString_(v949, v945, v948, v947) ^ 1;
    }

LABEL_343:
    v951 = v943 | v950;
    v952 = objc_msgSend_subject(a1, v945, v946, v947);
    v956 = v1506;
    if (v952 == v1506)
    {
      v958 = 0;
    }

    else
    {
      v957 = v952;
      if (objc_msgSend_length(v952, v953, v954, v955) && objc_msgSend_length(v956, v953, v954, v955))
      {
        v958 = objc_msgSend_isEqualToString_(v957, v953, v956, v955) ^ 1;
      }

      else
      {
        v958 = 1;
      }
    }

    v959 = v951 | v958;
    v960 = MEMORY[0x1E696AD98];
    v961 = objc_msgSend_errorCode(a1, v953, v954, v955);
    v964 = objc_msgSend_numberWithUnsignedInt_(v960, v962, v961, v963);
    v967 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x1E696AD98], v965, v1505, v966);
    if (v964 == v967)
    {
      goto LABEL_353;
    }

    if (!v964)
    {
      v971 = 1;
      goto LABEL_355;
    }

    v969 = v967;
    if (!v967)
    {
LABEL_353:
      v971 = 0;
    }

    else
    {
      v971 = objc_msgSend_isEqualToNumber_(v964, v968, v967, v970) ^ 1;
    }

LABEL_355:
    v972 = v959 | v971;
    v973 = MEMORY[0x1E696AD98];
    v974 = objc_msgSend_expireState(a1, v968, v969, v970);
    v977 = objc_msgSend_numberWithLongLong_(v973, v975, v974, v976);
    v980 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v978, v1501, v979);
    if (v977 == v980)
    {
      goto LABEL_359;
    }

    if (!v977)
    {
      v984 = 1;
      goto LABEL_361;
    }

    v982 = v980;
    if (!v980)
    {
LABEL_359:
      v984 = 0;
    }

    else
    {
      v984 = objc_msgSend_isEqualToNumber_(v977, v981, v980, v983) ^ 1;
    }

LABEL_361:
    v985 = v972 | v984;
    v986 = v1489;
    v987 = objc_msgSend_balloonBundleID(a1, v981, v982, v983);
    if (v986 == v987)
    {
      goto LABEL_365;
    }

    v991 = v987;
    if (!objc_msgSend_length(v986, v988, v989, v990))
    {
      v992 = 1;
      goto LABEL_367;
    }

    if (!objc_msgSend_length(v991, v988, v989, v990))
    {
LABEL_365:
      v992 = 0;
    }

    else
    {
      v992 = objc_msgSend_isEqualToString_(v986, v988, v991, v990) ^ 1;
    }

LABEL_367:
    v993 = v985 | v992;
    v994 = objc_msgSend_payloadData(a1, v988, v989, v990);
    v997 = cf;
    if (v994 == cf)
    {
      v998 = 0;
    }

    else
    {
      v998 = 1;
      if (v994 && cf)
      {
        v998 = objc_msgSend_isEqualToData_(v994, v995, cf, v996) ^ 1;
      }
    }

    v999 = v993 | v998;
    v1000 = objc_msgSend_associatedMessageGUID(a1, v995, v997, v996);
    v1004 = v1493;
    if (v1000 == v1493)
    {
      goto LABEL_376;
    }

    v1005 = v1000;
    if (!objc_msgSend_length(v1000, v1001, v1002, v1003))
    {
      v1006 = 1;
      goto LABEL_378;
    }

    if (!objc_msgSend_length(v1004, v1001, v1002, v1003))
    {
LABEL_376:
      v1006 = 0;
    }

    else
    {
      v1006 = objc_msgSend_isEqualToString_(v1005, v1001, v1004, v1003) ^ 1;
    }

LABEL_378:
    v1007 = v999 | v1006;
    v1008 = MEMORY[0x1E696AD98];
    v1009 = objc_msgSend_associatedMessageType(a1, v1001, v1002, v1003);
    v1012 = objc_msgSend_numberWithLongLong_(v1008, v1010, v1009, v1011);
    v1015 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v1013, v1492, v1014);
    if (v1012 == v1015)
    {
      goto LABEL_382;
    }

    if (!v1012)
    {
      v1019 = 1;
      goto LABEL_384;
    }

    v1017 = v1015;
    if (!v1015)
    {
LABEL_382:
      v1019 = 0;
    }

    else
    {
      v1019 = objc_msgSend_isEqualToNumber_(v1012, v1016, v1015, v1018) ^ 1;
    }

LABEL_384:
    v1020 = v1007 | v1019;
    v1021 = objc_msgSend_expressiveSendStyleID(a1, v1016, v1017, v1018);
    v1025 = v1491;
    if (v1021 == v1491)
    {
      goto LABEL_388;
    }

    v1026 = v1021;
    if (!objc_msgSend_length(v1021, v1022, v1023, v1024))
    {
      v1027 = 1;
      goto LABEL_390;
    }

    if (!objc_msgSend_length(v1025, v1022, v1023, v1024))
    {
LABEL_388:
      v1027 = 0;
    }

    else
    {
      v1027 = objc_msgSend_isEqualToString_(v1026, v1022, v1025, v1024) ^ 1;
    }

LABEL_390:
    v1028 = v1020 | v1027;
    v1029 = objc_msgSend_timeExpressiveSendPlayed(a1, v1022, v1023, v1024);
    v1033 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v1030, v1031, v1032, v1490);
    if (v1029 == v1033)
    {
      goto LABEL_394;
    }

    if (!v1029)
    {
      v1037 = 1;
      goto LABEL_396;
    }

    v1035 = v1033;
    if (!v1033)
    {
LABEL_394:
      v1037 = 0;
    }

    else
    {
      v1037 = objc_msgSend_isEqualToDate_(v1029, v1034, v1033, v1036) ^ 1;
    }

LABEL_396:
    v1038 = v1028 | v1037;
    v1039 = objc_msgSend_associatedMessageRange(a1, v1034, v1035, v1036);
    v1041 = v1040;
    v1043 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v1040, v1039, v1042);
    v1046 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v1044, buf, v1045);
    if (v1043 == v1046)
    {
      goto LABEL_400;
    }

    if (!v1043)
    {
      v1049 = 1;
      goto LABEL_402;
    }

    if (!v1046)
    {
LABEL_400:
      v1049 = 0;
    }

    else
    {
      v1049 = objc_msgSend_isEqualToNumber_(v1043, v1047, v1046, v1048) ^ 1;
    }

LABEL_402:
    v1050 = v1038 | v1049;
    v1051 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v1047, v1041, v1048);
    v1054 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v1052, *(&buf + 1), v1053);
    if (v1051 == v1054)
    {
      goto LABEL_406;
    }

    if (!v1051)
    {
      v1058 = 1;
      goto LABEL_408;
    }

    v1056 = v1054;
    if (!v1054)
    {
LABEL_406:
      v1058 = 0;
    }

    else
    {
      v1058 = objc_msgSend_isEqualToNumber_(v1051, v1055, v1054, v1057) ^ 1;
    }

LABEL_408:
    v1059 = v1050 | v1058;
    v1060 = MEMORY[0x1E695DEF0];
    v1061 = objc_msgSend_messageSummaryInfo(a1, v1055, v1056, v1057);
    v1064 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v1060, v1062, v1061, v1063);
    v1067 = v1487;
    if (v1064 == v1487)
    {
      v1068 = 0;
    }

    else
    {
      v1068 = 1;
      if (v1064 && v1487)
      {
        v1068 = objc_msgSend_isEqualToData_(v1064, v1065, v1487, v1066) ^ 1;
      }
    }

    v1069 = v1059 | v1068;
    v1070 = MEMORY[0x1E696AD98];
    v1071 = objc_msgSend_cloudKitSyncState(a1, v1065, v1067, v1066);
    v1074 = objc_msgSend_numberWithLongLong_(v1070, v1072, v1071, v1073);
    v1077 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v1075, v1486, v1076);
    if (v1074 == v1077)
    {
      goto LABEL_417;
    }

    if (!v1074)
    {
      v1081 = 1;
      goto LABEL_419;
    }

    v1079 = v1077;
    if (!v1077)
    {
LABEL_417:
      v1081 = 0;
    }

    else
    {
      v1081 = objc_msgSend_isEqualToNumber_(v1074, v1078, v1077, v1080) ^ 1;
    }

LABEL_419:
    v1082 = v1069 | v1081;
    v1083 = objc_msgSend_cloudKitRecordID(a1, v1078, v1079, v1080);
    v1087 = v1485;
    if (v1083 == v1485)
    {
      goto LABEL_423;
    }

    v1088 = v1083;
    if (!objc_msgSend_length(v1083, v1084, v1085, v1086))
    {
      v1089 = 1;
      goto LABEL_425;
    }

    if (!objc_msgSend_length(v1087, v1084, v1085, v1086))
    {
LABEL_423:
      v1089 = 0;
    }

    else
    {
      v1089 = objc_msgSend_isEqualToString_(v1088, v1084, v1087, v1086) ^ 1;
    }

LABEL_425:
    v1090 = v1082 | v1089;
    v1091 = objc_msgSend_cloudKitRecordChangeTag(a1, v1084, v1085, v1086);
    v1095 = v1483;
    if (v1091 == v1483)
    {
      goto LABEL_429;
    }

    v1096 = v1091;
    if (!objc_msgSend_length(v1091, v1092, v1093, v1094))
    {
      v1097 = 1;
      goto LABEL_431;
    }

    if (!objc_msgSend_length(v1095, v1092, v1093, v1094))
    {
LABEL_429:
      v1097 = 0;
    }

    else
    {
      v1097 = objc_msgSend_isEqualToString_(v1096, v1092, v1095, v1094) ^ 1;
    }

LABEL_431:
    v1098 = v1090 | v1097;
    v1099 = objc_msgSend_replyToGUID(a1, v1092, v1093, v1094);
    v1103 = v1481;
    if (v1099 == v1481)
    {
      goto LABEL_435;
    }

    v1104 = v1099;
    if (!objc_msgSend_length(v1099, v1100, v1101, v1102))
    {
      v1105 = 1;
      goto LABEL_437;
    }

    if (!objc_msgSend_length(v1103, v1100, v1101, v1102))
    {
LABEL_435:
      v1105 = 0;
    }

    else
    {
      v1105 = objc_msgSend_isEqualToString_(v1104, v1100, v1103, v1102) ^ 1;
    }

LABEL_437:
    v1106 = v1098 | v1105;
    v1107 = MEMORY[0x1E696AD98];
    v1108 = objc_msgSend_sortID(a1, v1100, v1101, v1102);
    v1111 = objc_msgSend_numberWithUnsignedInteger_(v1107, v1109, v1108, v1110);
    v1114 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v1112, v1480, v1113);
    if (v1111 == v1114)
    {
      goto LABEL_441;
    }

    if (!v1111)
    {
      v1118 = 1;
      goto LABEL_443;
    }

    v1116 = v1114;
    if (!v1114)
    {
LABEL_441:
      v1118 = 0;
    }

    else
    {
      v1118 = objc_msgSend_isEqualToNumber_(v1111, v1115, v1114, v1117) ^ 1;
    }

LABEL_443:
    v1119 = v1106 | v1118;
    v1120 = v1522;
    v1121 = v1479;
    if (v1522 == v1479)
    {
      goto LABEL_447;
    }

    if (!objc_msgSend_length(v1522, v1115, v1116, v1117))
    {
      v1122 = 1;
      goto LABEL_449;
    }

    if (!objc_msgSend_length(v1121, v1115, v1116, v1117))
    {
LABEL_447:
      v1122 = 0;
    }

    else
    {
      v1122 = objc_msgSend_isEqualToString_(v1120, v1115, v1121, v1117) ^ 1;
    }

LABEL_449:
    v1123 = v1119 | v1122;
    v1124 = v1521;
    v1125 = v1478;
    if (v1521 == v1478)
    {
      goto LABEL_453;
    }

    if (!objc_msgSend_length(v1521, v1115, v1116, v1117))
    {
      v1126 = 1;
      goto LABEL_455;
    }

    if (!objc_msgSend_length(v1125, v1115, v1116, v1117))
    {
LABEL_453:
      v1126 = 0;
    }

    else
    {
      v1126 = objc_msgSend_isEqualToString_(v1124, v1115, v1125, v1117) ^ 1;
    }

LABEL_455:
    v1127 = v1123 | v1126;
    v1128 = objc_msgSend_dateEdited(a1, v1115, v1116, v1117);
    v1132 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v1129, v1130, v1131, v1474);
    if (v1128 == v1132)
    {
      goto LABEL_459;
    }

    if (!v1128)
    {
      v1136 = 1;
      goto LABEL_461;
    }

    v1134 = v1132;
    if (!v1132)
    {
LABEL_459:
      v1136 = 0;
    }

    else
    {
      v1136 = objc_msgSend_isEqualToDate_(v1128, v1133, v1132, v1135) ^ 1;
    }

LABEL_461:
    v1137 = v1127 | v1136;
    v1138 = objc_msgSend_biaReferenceID(a1, v1133, v1134, v1135);
    v1142 = v1472;
    if (v1138 == v1472)
    {
      goto LABEL_465;
    }

    v1143 = v1138;
    if (!objc_msgSend_length(v1138, v1139, v1140, v1141))
    {
      v1144 = 1;
      goto LABEL_467;
    }

    if (!objc_msgSend_length(v1142, v1139, v1140, v1141))
    {
LABEL_465:
      v1144 = 0;
    }

    else
    {
      v1144 = objc_msgSend_isEqualToString_(v1143, v1139, v1142, v1141) ^ 1;
    }

LABEL_467:
    v1145 = v1137 | v1144;
    v1146 = MEMORY[0x1E696AD98];
    v1147 = objc_msgSend_partCount(a1, v1139, v1140, v1141);
    v1150 = objc_msgSend_numberWithUnsignedInteger_(v1146, v1148, v1147, v1149);
    v1153 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v1151, v1475, v1152);
    if (v1150 == v1153)
    {
      goto LABEL_471;
    }

    if (!v1150)
    {
      v1157 = 1;
      goto LABEL_473;
    }

    v1155 = v1153;
    if (!v1153)
    {
LABEL_471:
      v1157 = 0;
    }

    else
    {
      v1157 = objc_msgSend_isEqualToNumber_(v1150, v1154, v1153, v1156) ^ 1;
    }

LABEL_473:
    v1158 = v1145 | v1157;
    v1159 = objc_msgSend_fallbackHash(a1, v1154, v1155, v1156);
    v1163 = v1471;
    if (v1159 == v1471)
    {
      goto LABEL_477;
    }

    v1164 = v1159;
    if (!objc_msgSend_length(v1159, v1160, v1161, v1162))
    {
      v1165 = 1;
      goto LABEL_479;
    }

    if (!objc_msgSend_length(v1163, v1160, v1161, v1162))
    {
LABEL_477:
      v1165 = 0;
    }

    else
    {
      v1165 = objc_msgSend_isEqualToString_(v1164, v1160, v1163, v1162) ^ 1;
    }

LABEL_479:
    v1166 = v1158 | v1165;
    v1167 = objc_msgSend_associatedMessageEmoji(a1, v1160, v1161, v1162);
    v1171 = v1470;
    if (v1167 == v1470)
    {
      goto LABEL_483;
    }

    v1172 = v1167;
    if (!objc_msgSend_length(v1167, v1168, v1169, v1170))
    {
      v1173 = 1;
      goto LABEL_485;
    }

    if (!objc_msgSend_length(v1171, v1168, v1169, v1170))
    {
LABEL_483:
      v1173 = 0;
    }

    else
    {
      v1173 = objc_msgSend_isEqualToString_(v1172, v1168, v1171, v1170) ^ 1;
    }

LABEL_485:
    v1174 = v1166 | v1173;
    v1175 = MEMORY[0x1E696AD98];
    v1176 = objc_msgSend_scheduleType(a1, v1168, v1169, v1170);
    v1179 = objc_msgSend_numberWithUnsignedInteger_(v1175, v1177, v1176, v1178);
    v1182 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v1180, v1469, v1181);
    if (v1179 == v1182)
    {
      goto LABEL_489;
    }

    if (!v1179)
    {
      v1186 = 1;
      goto LABEL_491;
    }

    v1184 = v1182;
    if (!v1182)
    {
LABEL_489:
      v1186 = 0;
    }

    else
    {
      v1186 = objc_msgSend_isEqualToNumber_(v1179, v1183, v1182, v1185) ^ 1;
    }

LABEL_491:
    v1187 = v1174 | v1186;
    v1188 = MEMORY[0x1E696AD98];
    v1189 = objc_msgSend_scheduleState(a1, v1183, v1184, v1185);
    v1192 = objc_msgSend_numberWithUnsignedInteger_(v1188, v1190, v1189, v1191);
    v1195 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v1193, v1468, v1194);
    if (v1192 == v1195)
    {
      goto LABEL_495;
    }

    if (!v1192)
    {
      v1199 = 1;
      goto LABEL_497;
    }

    v1197 = v1195;
    if (!v1195)
    {
LABEL_495:
      v1199 = 0;
    }

    else
    {
      v1199 = objc_msgSend_isEqualToNumber_(v1192, v1196, v1195, v1198) ^ 1;
    }

LABEL_497:
    v1200 = v1187 | v1199;
    v1201 = objc_msgSend_cloudKitChatID(a1, v1196, v1197, v1198);
    v1205 = v1467;
    if (v1201 == v1467)
    {
      goto LABEL_501;
    }

    v1206 = v1201;
    if (!objc_msgSend_length(v1201, v1202, v1203, v1204))
    {
      v1207 = 1;
      goto LABEL_503;
    }

    if (!objc_msgSend_length(v1205, v1202, v1203, v1204))
    {
LABEL_501:
      v1207 = 0;
    }

    else
    {
      v1207 = objc_msgSend_isEqualToString_(v1206, v1202, v1205, v1204) ^ 1;
    }

LABEL_503:
    v1208 = v1200 | v1207;
    v1209 = objc_msgSend_roomName(a1, v1202, v1203, v1204);
    v1213 = objc_msgSend_length(v1209, v1210, v1211, v1212) != 0;
    v1216 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v1214, v1213, v1215);
    v1219 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v1217, v1504, v1218);
    if (v1216 == v1219)
    {
      goto LABEL_507;
    }

    if (!v1216)
    {
      v1223 = 1;
      goto LABEL_509;
    }

    v1221 = v1219;
    if (!v1219)
    {
LABEL_507:
      v1223 = 0;
    }

    else
    {
      v1223 = objc_msgSend_isEqualToNumber_(v1216, v1220, v1219, v1222) ^ 1;
    }

LABEL_509:
    v1224 = v1208 | v1223;
    Identifier = v1507;
    if (objc_msgSend_isFromMe(a1, v1220, v1221, v1222))
    {
      v1228 = objc_msgSend_handle(a1, v1225, v1226, v1227);
    }

    else
    {
      v1228 = objc_msgSend_sender(a1, v1225, v1226, v1227);
    }

    v1232 = v1228;
    if (v1228)
    {
      v1233 = objc_msgSend_service(a1, v1229, v1230, v1231);
      if (v1233)
      {
        v1234 = v1233;
        v1235 = IMDHandleRecordCopyHandleForIDOnService(v1232, v1233);
        if (v1235 || (v1236 = *MEMORY[0x1E695E480], v1237 = IMCountryCodeForIncomingTextMessage(), (v1235 = IMDHandleRecordCreate(v1236, v1232, v1237, v1234, 0, 0)) != 0))
        {
          v1238 = v1235;
          v1239 = v1507;
          if (v1239 != IMDHandleRecordGetIdentifier(v1235))
          {
            v1224 = 1;
          }

          Identifier = IMDHandleRecordGetIdentifier(v1238);
          CFRelease(v1238);
        }
      }
    }

    v1240 = MEMORY[0x1E69A8158];
    v1241 = objc_msgSend_syndicationRanges(a1, v1229, v1230, v1231);
    v1244 = objc_msgSend_serializedStringFromArray_(v1240, v1242, v1241, v1243);
    v1248 = v1477;
    v1463 = v1244;
    if (v1244 == v1477)
    {
      goto LABEL_523;
    }

    v1249 = v1244;
    if (!objc_msgSend_length(v1244, v1245, v1246, v1247))
    {
      v1250 = 1;
      goto LABEL_525;
    }

    if (!objc_msgSend_length(v1248, v1245, v1246, v1247))
    {
LABEL_523:
      v1250 = 0;
    }

    else
    {
      v1250 = objc_msgSend_isEqualToString_(v1249, v1245, v1248, v1247) ^ 1;
    }

LABEL_525:
    v1251 = MEMORY[0x1E69A8158];
    v1252 = objc_msgSend_syncedSyndicationRanges(a1, v1245, v1246, v1247);
    v1255 = objc_msgSend_serializedStringFromArray_(v1251, v1253, v1252, v1254);
    v1259 = v1255;
    v1260 = v1476;
    if (v1255 == v1476)
    {
      goto LABEL_529;
    }

    if (!objc_msgSend_length(v1255, v1256, v1257, v1258))
    {
      v1261 = 1;
      goto LABEL_531;
    }

    if (!objc_msgSend_length(v1260, v1256, v1257, v1258))
    {
LABEL_529:
      v1261 = 0;
    }

    else
    {
      v1261 = objc_msgSend_isEqualToString_(v1259, v1256, v1260, v1258) ^ 1;
    }

LABEL_531:
    if (v1518)
    {
      CFRelease(v1518);
    }

    if (v1513)
    {
      CFRelease(v1513);
    }

    if (v1512)
    {
      CFRelease(v1512);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v1511)
    {
      CFRelease(v1511);
    }

    if (v1510)
    {
      CFRelease(v1510);
    }

    if (v1509)
    {
      CFRelease(v1509);
    }

    if (v1508)
    {
      CFRelease(v1508);
    }

    if (v1506)
    {
      CFRelease(v1506);
    }

    if (v1502)
    {
      CFRelease(v1502);
    }

    if (v1499)
    {
      CFRelease(v1499);
    }

    if (v1493)
    {
      CFRelease(v1493);
    }

    if (v1491)
    {
      CFRelease(v1491);
    }

    if (v1487)
    {
      CFRelease(v1487);
    }

    if (v1485)
    {
      CFRelease(v1485);
    }

    if (v1483)
    {
      CFRelease(v1483);
    }

    if (v1484)
    {
      CFRelease(v1484);
    }

    if (v1482)
    {
      CFRelease(v1482);
    }

    if (v1481)
    {
      CFRelease(v1481);
    }

    if (v1479)
    {
      CFRelease(v1479);
    }

    if (v1478)
    {
      CFRelease(v1478);
    }

    if (v1477)
    {
      CFRelease(v1477);
    }

    if (v1476)
    {
      CFRelease(v1476);
    }

    if (v1472)
    {
      CFRelease(v1472);
    }

    if (v1471)
    {
      CFRelease(v1471);
    }

    v1262 = v1224 | v1250;
    if (v1470)
    {
      CFRelease(v1470);
    }

    v1263 = v1262 | v1261;
    if (v1467)
    {
      CFRelease(v1467);
    }

    if ((v1263 | a3) == 1)
    {
      v1461 = objc_msgSend_replaceID(a1, v1256, v1257, v1258);
      v1267 = objc_msgSend_time(a1, v1264, v1265, v1266);
      v1459 = objc_msgSend___im_nanosecondTimeInterval(v1267, v1268, v1269, v1270);
      v1274 = objc_msgSend_timeRead(a1, v1271, v1272, v1273);
      v1458 = objc_msgSend___im_nanosecondTimeInterval(v1274, v1275, v1276, v1277);
      v1281 = objc_msgSend_timeDelivered(a1, v1278, v1279, v1280);
      v1457 = objc_msgSend___im_nanosecondTimeInterval(v1281, v1282, v1283, v1284);
      v1288 = objc_msgSend_timePlayed(a1, v1285, v1286, v1287);
      v1456 = objc_msgSend___im_nanosecondTimeInterval(v1288, v1289, v1290, v1291);
      v1455 = objc_msgSend_plainBody(a1, v1292, v1293, v1294);
      v1454 = objc_msgSend_bodyData(a1, v1295, v1296, v1297);
      v1298 = MEMORY[0x1E696AD98];
      v1302 = objc_msgSend_flags(a1, v1299, v1300, v1301);
      v1453 = objc_msgSend_numberWithUnsignedLongLong_(v1298, v1303, v1302, v1304);
      v1452 = objc_msgSend_service(a1, v1305, v1306, v1307);
      v1451 = objc_msgSend_account(a1, v1308, v1309, v1310);
      v1450 = objc_msgSend_accountID(a1, v1311, v1312, v1313);
      v1449 = objc_msgSend_subject(a1, v1314, v1315, v1316);
      v1448 = objc_msgSend_errorCode(a1, v1317, v1318, v1319);
      v1447 = objc_msgSend_intValue(v1216, v1320, v1321, v1322);
      v1446 = objc_msgSend_expireState(a1, v1323, v1324, v1325);
      v1445 = objc_msgSend_associatedMessageGUID(a1, v1326, v1327, v1328);
      v1444 = objc_msgSend_associatedMessageType(a1, v1329, v1330, v1331);
      v1443 = objc_msgSend_associatedMessageRange(a1, v1332, v1333, v1334);
      v1442 = v1335;
      v1441 = objc_msgSend_balloonBundleID(a1, v1335, v1336, v1337);
      v1440 = objc_msgSend_payloadData(a1, v1338, v1339, v1340);
      v1439 = objc_msgSend_expressiveSendStyleID(a1, v1341, v1342, v1343);
      v1347 = objc_msgSend_timeExpressiveSendPlayed(a1, v1344, v1345, v1346);
      v1438 = objc_msgSend___im_nanosecondTimeInterval(v1347, v1348, v1349, v1350);
      v1351 = MEMORY[0x1E695DEF0];
      v1355 = objc_msgSend_messageSummaryInfo(a1, v1352, v1353, v1354);
      v1437 = objc_msgSend_dataWithMessageSummaryInfoDictionary_(v1351, v1356, v1355, v1357);
      v1436 = objc_msgSend_cloudKitSyncState(a1, v1358, v1359, v1360);
      v1435 = objc_msgSend_cloudKitRecordID(a1, v1361, v1362, v1363);
      v1434 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v1364, v1365, v1366);
      v1433 = objc_msgSend_cloudKitRecordChangeTag(a1, v1367, v1368, v1369);
      v1432 = objc_msgSend_destinationCallerID(a1, v1370, v1371, v1372);
      v1431 = objc_msgSend_replyToGUID(a1, v1373, v1374, v1375);
      v1379 = objc_msgSend_sortID(a1, v1376, v1377, v1378);
      v1429 = v1522;
      v1430 = v1379;
      v1428 = v1521;
      v1427 = objc_msgSend_partCount(a1, v1380, v1381, v1382);
      v1386 = objc_msgSend_dateEdited(a1, v1383, v1384, v1385);
      v1390 = objc_msgSend___im_nanosecondTimeInterval(v1386, v1387, v1388, v1389);
      v1394 = objc_msgSend_dateRecovered(a1, v1391, v1392, v1393);
      v1398 = v845;
      v1399 = objc_msgSend___im_nanosecondTimeInterval(v1394, v1395, v1396, v1397);
      v1403 = objc_msgSend_biaReferenceID(a1, v1400, v1401, v1402);
      v1407 = objc_msgSend_fallbackHash(a1, v1404, v1405, v1406);
      v1411 = objc_msgSend_associatedMessageEmoji(a1, v1408, v1409, v1410);
      v1415 = objc_msgSend_scheduleType(a1, v1412, v1413, v1414);
      v1419 = v1259;
      v1420 = objc_msgSend_scheduleState(a1, v1416, v1417, v1418);
      v1424 = objc_msgSend_cloudKitChatID(a1, v1421, v1422, v1423);
      v1426 = v1399;
      v845 = v1398;
      IMDMessageRecordBulkUpdate(v1398, v1461, 0, v1459, v1458, v1457, v1456, v1455, v1454, v1453, v1452, v1451, v1450, Identifier, v1449, v1448, v1447, 0, 0, 0, 0, 0, v1446, 0, v1445, v1444, v1443, v1442, v1441, v1440, v1439, v1438, v1437, v1436, v1435, v1434, v1433, v1432, v1431, v1430, v1429, v1428, v1463, v1419, v1427, v1390, v1426, v1403, v1407, v1411, v1415, v1420, v1424);
    }

    CFRelease(v845);
  }

  objc_autoreleasePoolPop(context);
  return a1;
}

void *IMDUpdateIMItemWithIMItemForceReplace(void *a1, void *a2, int a3)
{
  v391 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = a1;
    *&buf[12] = 2112;
    *&buf[14] = a2;
    _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "Updating IMItem: %@ from IMItem: %@", buf, 0x16u);
  }

  v11 = objc_msgSend_time(a2, v8, v9, v10);
  v15 = v11;
  if ((a3 & 1) != 0 || v11)
  {
    v16 = objc_msgSend_time(a1, v12, v13, v14);
    if (v16 != v15 && (!v16 || v15 && (objc_msgSend_isEqualToDate_(v16, v12, v15, v14) & 1) == 0))
    {
      if ((a3 & 1) != 0 || (v17 = objc_msgSend_time(a1, v12, v13, v14), objc_msgSend_timeIntervalSinceReferenceDate(v17, v18, v19, v20), v21 >= 0.00000011920929))
      {
        objc_msgSend_setTime_(a1, v12, v15, v14);
      }
    }
  }

  v22 = objc_msgSend_account(a2, v12, v13, v14);
  v26 = objc_msgSend_account(a1, v23, v24, v25);
  if (v26 != v22)
  {
    v30 = v26;
    if (!objc_msgSend_length(v26, v27, v28, v29) || objc_msgSend_length(v22, v27, v31, v29) && (objc_msgSend_isEqualToString_(v30, v27, v22, v29) & 1) == 0)
    {
      objc_msgSend_setAccount_(a1, v27, v22, v29);
    }
  }

  v32 = objc_msgSend_accountID(a2, v27, v28, v29);
  v36 = objc_msgSend_accountID(a1, v33, v34, v35);
  if (v36 != v32)
  {
    v40 = v36;
    if (!objc_msgSend_length(v36, v37, v38, v39) || objc_msgSend_length(v32, v37, v41, v39) && (objc_msgSend_isEqualToString_(v40, v37, v32, v39) & 1) == 0)
    {
      objc_msgSend_setAccountID_(a1, v37, v32, v39);
    }
  }

  v42 = objc_msgSend_service(a2, v37, v38, v39);
  v46 = objc_msgSend_service(a1, v43, v44, v45);
  if (v46 != v42)
  {
    v50 = v46;
    if (!objc_msgSend_length(v46, v47, v48, v49) || objc_msgSend_length(v42, v47, v51, v49) && (objc_msgSend_isEqualToString_(v50, v47, v42, v49) & 1) == 0)
    {
      objc_msgSend_setService_(a1, v47, v42, v49);
    }
  }

  v52 = objc_msgSend_destinationCallerID(a2, v47, v48, v49);
  v56 = objc_msgSend_destinationCallerID(a1, v53, v54, v55);
  if (v56 != v52)
  {
    v60 = v56;
    if (!objc_msgSend_length(v56, v57, v58, v59) || objc_msgSend_length(v52, v57, v61, v59) && (objc_msgSend_isEqualToString_(v60, v57, v52, v59) & 1) == 0)
    {
      objc_msgSend_setDestinationCallerID_(a1, v57, v52, v59);
    }
  }

  if (objc_msgSend_conformsToProtocol_(a1, v57, &unk_1F2FE89D8, v59) && objc_msgSend_conformsToProtocol_(a2, v62, &unk_1F2FE89D8, v64))
  {
    v65 = objc_msgSend_errorCode(a2, v62, v63, v64);
    objc_msgSend_setErrorCode_(a1, v66, v65, v67);
  }

  if (a3)
  {
    v68 = objc_msgSend_cloudKitSyncState(a2, v62, v63, v64);
    objc_msgSend_setCloudKitSyncState_(a1, v69, v68, v70);
  }

  else
  {
    v89 = objc_msgSend_cloudKitSyncState(a1, v62, v63, v64);
    if (v89 != objc_msgSend_cloudKitSyncState(a2, v90, v91, v92))
    {
      v96 = objc_msgSend_cloudKitSyncState(a2, v93, v94, v95);
      objc_msgSend_setCloudKitSyncState_(a1, v97, v96, v98);
    }

    v99 = objc_msgSend_cloudKitRecordID(a1, v93, v94, v95);
    v103 = objc_msgSend_cloudKitRecordID(a2, v100, v101, v102);
    if (v99 == v103 || (v104 = v103, objc_msgSend_length(v99, v71, v72, v73)) && (!objc_msgSend_length(v104, v71, v72, v73) || (objc_msgSend_isEqualToString_(v99, v71, v104, v73) & 1) != 0))
    {
LABEL_45:
      v105 = objc_msgSend_cloudKitRecordChangeTag(a1, v71, v72, v73);
      v109 = objc_msgSend_cloudKitRecordChangeTag(a2, v106, v107, v108);
      if (v105 != v109)
      {
        v113 = v109;
        if (!objc_msgSend_length(v105, v110, v111, v112) || objc_msgSend_length(v113, v110, v111, v112) && (objc_msgSend_isEqualToString_(v105, v110, v113, v112) & 1) == 0)
        {
          v114 = objc_msgSend_cloudKitRecordChangeTag(a2, v110, v111, v112);
          objc_msgSend_setCloudKitRecordChangeTag_(a1, v115, v114, v116);
          v120 = objc_msgSend_cloudKitServerChangeTokenBlob(a2, v117, v118, v119);
          objc_msgSend_setCloudKitServerChangeTokenBlob_(a1, v121, v120, v122);
        }
      }

      v123 = objc_msgSend_replyToGUID(a1, v110, v111, v112);
      v127 = objc_msgSend_replyToGUID(a2, v124, v125, v126);
      if (v123 == v127)
      {
        goto LABEL_56;
      }

      v128 = v127;
      if (objc_msgSend_length(v123, v86, v87, v88))
      {
        if (!objc_msgSend_length(v128, v86, v87, v88) || (objc_msgSend_isEqualToString_(v123, v86, v128, v88) & 1) != 0)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_54;
    }
  }

  v74 = objc_msgSend_cloudKitRecordID(a2, v71, v72, v73);
  objc_msgSend_setCloudKitRecordID_(a1, v75, v74, v76);
  if ((a3 & 1) == 0)
  {
    goto LABEL_45;
  }

  v77 = objc_msgSend_cloudKitRecordChangeTag(a2, v71, v72, v73);
  objc_msgSend_setCloudKitRecordChangeTag_(a1, v78, v77, v79);
  v83 = objc_msgSend_cloudKitServerChangeTokenBlob(a2, v80, v81, v82);
  objc_msgSend_setCloudKitServerChangeTokenBlob_(a1, v84, v83, v85);
LABEL_54:
  v129 = objc_msgSend_replyToGUID(a2, v86, v87, v88);
  objc_msgSend_setReplyToGUID_(a1, v130, v129, v131);
  if (a3)
  {
    v132 = objc_msgSend_sortID(a2, v86, v87, v88);
    objc_msgSend_setSortID_(a1, v133, v132, v134);
LABEL_65:
    v163 = objc_msgSend_cloudKitChatID(a2, v135, v136, v137);
    objc_msgSend_setCloudKitChatID_(a1, v164, v163, v165);
    goto LABEL_66;
  }

LABEL_56:
  v138 = MEMORY[0x1E696AD98];
  v139 = objc_msgSend_sortID(a1, v86, v87, v88);
  v142 = objc_msgSend_numberWithUnsignedInteger_(v138, v140, v139, v141);
  v143 = MEMORY[0x1E696AD98];
  v147 = objc_msgSend_sortID(a2, v144, v145, v146);
  v150 = objc_msgSend_numberWithUnsignedInteger_(v143, v148, v147, v149);
  if (v142 != v150 && (!v142 || (v152 = v150) != 0 && (objc_msgSend_isEqualToNumber_(v142, v151, v150, v153) & 1) == 0))
  {
    v154 = objc_msgSend_sortID(a2, v151, v152, v153);
    objc_msgSend_setSortID_(a1, v155, v154, v156);
  }

  v157 = objc_msgSend_cloudKitChatID(a1, v151, v152, v153);
  v161 = objc_msgSend_cloudKitChatID(a2, v158, v159, v160);
  if (v157 != v161)
  {
    v162 = v161;
    if (!objc_msgSend_length(v157, v135, v136, v137) || objc_msgSend_length(v162, v135, v136, v137) && (objc_msgSend_isEqualToString_(v157, v135, v162, v137) & 1) == 0)
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  v166 = objc_msgSend_guid(a1, v135, v136, v137);
  v167 = IMDMessageRecordCopyMessageForGUID(v166);
  if (!v167)
  {
    goto LABEL_178;
  }

  v168 = v167;
  v388 = 0;
  v389 = 0;
  v386 = 0;
  v387 = 0;
  v384 = 0;
  v385 = 0;
  v382 = 0;
  v383 = 0;
  v380 = 0;
  v381 = 0;
  v378 = 0;
  v379 = 0;
  v376 = 0;
  v377 = 0;
  *buf = 0u;
  v374 = 0;
  v375 = 0;
  cf = 0;
  v372 = 0;
  v371 = 0;
  v369 = 0;
  v370 = 0;
  v367 = 0;
  v368 = 0;
  IMDMessageRecordBulkCopy(v167, 0, &v389, 0, &v388, &v387, 0, 0, 0, 0, 0, 0, &v386, &v385, &v384, &v383, 0, &v368, 0, 0, 0, &v382, &v381, 0, &v378, &v379, &v380, 0, &v377, 0, &v376, buf, 0, 0, 0, 0, 0, &v375, &v374, &cf, &v372, &v371, &v370, &v369, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v367);
  v172 = objc_msgSend_time(a1, v169, v170, v171);
  v176 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v173, v174, v175, v387);
  if (v172 == v176)
  {
LABEL_71:
    v180 = 0;
    goto LABEL_73;
  }

  if (v172)
  {
    v178 = v176;
    if (v176)
    {
      v180 = objc_msgSend_isEqualToDate_(v172, v177, v176, v179) ^ 1;
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  v180 = 1;
LABEL_73:
  v181 = objc_msgSend_service(a1, v177, v178, v179);
  v185 = v386;
  if (v181 == v386)
  {
LABEL_77:
    v187 = 0;
    goto LABEL_79;
  }

  v186 = v181;
  if (objc_msgSend_length(v181, v182, v183, v184))
  {
    if (objc_msgSend_length(v185, v182, v183, v184))
    {
      v187 = objc_msgSend_isEqualToString_(v186, v182, v185, v184) ^ 1;
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  v187 = 1;
LABEL_79:
  v188 = v180 | v187;
  v189 = objc_msgSend_destinationCallerID(a1, v182, v183, v184);
  v193 = v371;
  if (v189 == v371)
  {
LABEL_83:
    v195 = 0;
    goto LABEL_85;
  }

  v194 = v189;
  if (objc_msgSend_length(v189, v190, v191, v192))
  {
    if (objc_msgSend_length(v193, v190, v191, v192))
    {
      v195 = objc_msgSend_isEqualToString_(v194, v190, v193, v192) ^ 1;
      goto LABEL_85;
    }

    goto LABEL_83;
  }

  v195 = 1;
LABEL_85:
  v196 = v188 | v195;
  v197 = objc_msgSend_roomName(a1, v190, v191, v192);
  v201 = v382;
  if (v197 == v382)
  {
LABEL_89:
    v203 = 0;
    goto LABEL_91;
  }

  v202 = v197;
  if (objc_msgSend_length(v197, v198, v199, v200))
  {
    if (objc_msgSend_length(v201, v198, v199, v200))
    {
      v203 = objc_msgSend_isEqualToString_(v202, v198, v201, v200) ^ 1;
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  v203 = 1;
LABEL_91:
  v204 = v196 | v203;
  v205 = objc_msgSend_account(a1, v198, v199, v200);
  v209 = v385;
  if (v205 == v385)
  {
LABEL_95:
    v211 = 0;
    goto LABEL_97;
  }

  v210 = v205;
  if (objc_msgSend_length(v205, v206, v207, v208))
  {
    if (objc_msgSend_length(v209, v206, v207, v208))
    {
      v211 = objc_msgSend_isEqualToString_(v210, v206, v209, v208) ^ 1;
      goto LABEL_97;
    }

    goto LABEL_95;
  }

  v211 = 1;
LABEL_97:
  v212 = v204 | v211;
  v213 = objc_msgSend_accountID(a1, v206, v207, v208);
  v217 = v384;
  if (v213 == v384)
  {
LABEL_101:
    v219 = 0;
    goto LABEL_103;
  }

  v218 = v213;
  if (objc_msgSend_length(v213, v214, v215, v216))
  {
    if (objc_msgSend_length(v217, v214, v215, v216))
    {
      v219 = objc_msgSend_isEqualToString_(v218, v214, v217, v216) ^ 1;
      goto LABEL_103;
    }

    goto LABEL_101;
  }

  v219 = 1;
LABEL_103:
  v220 = v212 | v219;
  v221 = MEMORY[0x1E696AD98];
  v222 = objc_msgSend_cloudKitSyncState(a1, v214, v215, v216);
  v225 = objc_msgSend_numberWithLongLong_(v221, v223, v222, v224);
  v228 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v226, v375, v227);
  if (v225 == v228)
  {
LABEL_107:
    v232 = 0;
    goto LABEL_109;
  }

  if (v225)
  {
    v230 = v228;
    if (v228)
    {
      v232 = objc_msgSend_isEqualToNumber_(v225, v229, v228, v231) ^ 1;
      goto LABEL_109;
    }

    goto LABEL_107;
  }

  v232 = 1;
LABEL_109:
  v233 = v220 | v232;
  v234 = objc_msgSend_cloudKitRecordID(a1, v229, v230, v231);
  v238 = v374;
  if (v234 == v374)
  {
LABEL_113:
    v240 = 0;
    goto LABEL_115;
  }

  v239 = v234;
  if (objc_msgSend_length(v234, v235, v236, v237))
  {
    if (objc_msgSend_length(v238, v235, v236, v237))
    {
      v240 = objc_msgSend_isEqualToString_(v239, v235, v238, v237) ^ 1;
      goto LABEL_115;
    }

    goto LABEL_113;
  }

  v240 = 1;
LABEL_115:
  v241 = v233 | v240;
  v242 = objc_msgSend_cloudKitRecordChangeTag(a1, v235, v236, v237);
  v246 = v372;
  if (v242 == v372)
  {
LABEL_119:
    v248 = 0;
    goto LABEL_121;
  }

  v247 = v242;
  if (objc_msgSend_length(v242, v243, v244, v245))
  {
    if (objc_msgSend_length(v246, v243, v244, v245))
    {
      v248 = objc_msgSend_isEqualToString_(v247, v243, v246, v245) ^ 1;
      goto LABEL_121;
    }

    goto LABEL_119;
  }

  v248 = 1;
LABEL_121:
  v249 = v241 | v248;
  v250 = objc_msgSend_replyToGUID(a1, v243, v244, v245);
  v254 = v370;
  if (v250 == v370)
  {
LABEL_125:
    v256 = 0;
    goto LABEL_127;
  }

  v255 = v250;
  if (objc_msgSend_length(v250, v251, v252, v253))
  {
    if (objc_msgSend_length(v254, v251, v252, v253))
    {
      v256 = objc_msgSend_isEqualToString_(v255, v251, v254, v253) ^ 1;
      goto LABEL_127;
    }

    goto LABEL_125;
  }

  v256 = 1;
LABEL_127:
  v257 = v249 | v256;
  v258 = MEMORY[0x1E696AD98];
  v259 = objc_msgSend_sortID(a1, v251, v252, v253);
  v262 = objc_msgSend_numberWithUnsignedInteger_(v258, v260, v259, v261);
  v265 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v263, v369, v264);
  if (v262 == v265)
  {
LABEL_131:
    v269 = 0;
    goto LABEL_133;
  }

  if (v262)
  {
    v267 = v265;
    if (v265)
    {
      v269 = objc_msgSend_isEqualToNumber_(v262, v266, v265, v268) ^ 1;
      goto LABEL_133;
    }

    goto LABEL_131;
  }

  v269 = 1;
LABEL_133:
  v270 = v257 | v269;
  v271 = objc_msgSend_cloudKitChatID(a1, v266, v267, v268);
  v275 = v367;
  if (v271 == v367)
  {
LABEL_137:
    v278 = 0;
    goto LABEL_139;
  }

  v276 = v271;
  if (objc_msgSend_length(v271, v272, v273, v274))
  {
    if (objc_msgSend_length(v275, v272, v277, v274))
    {
      v278 = objc_msgSend_isEqualToString_(v276, v272, v275, v274) ^ 1;
      goto LABEL_139;
    }

    goto LABEL_137;
  }

  v278 = 1;
LABEL_139:
  v279 = v270 | v278;
  if (objc_msgSend_conformsToProtocol_(a1, v272, &unk_1F2FE89D8, v274))
  {
    v283 = v368;
    if (v283 != objc_msgSend_errorCode(a1, v280, v281, v282))
    {
      v279 = 1;
    }
  }

  Identifier = v383;
  if (objc_msgSend_sender(a1, v280, v281, v282))
  {
    v288 = objc_msgSend_sender(a1, v285, v286, v287);
  }

  else
  {
    v288 = objc_msgSend_handle(a1, v285, v286, v287);
  }

  v292 = v288;
  if (v288)
  {
    v293 = objc_msgSend_service(a1, v289, v290, v291);
    if (v293)
    {
      v294 = v293;
      v295 = IMDHandleRecordCopyHandleForIDOnService(v292, v293);
      if (v295 || (v296 = *MEMORY[0x1E695E480], v297 = IMCountryCodeForIncomingTextMessage(), (v295 = IMDHandleRecordCreate(v296, v292, v297, v294, 0, 0)) != 0))
      {
        v298 = v295;
        v299 = v383;
        if (v299 != IMDHandleRecordGetIdentifier(v295))
        {
          v279 = 1;
        }

        Identifier = IMDHandleRecordGetIdentifier(v298);
        CFRelease(v298);
      }
    }
  }

  if (objc_msgSend_conformsToProtocol_(a1, v289, &unk_1F2FE89D8, v291))
  {
    v303 = objc_msgSend_errorCode(a1, v300, v301, v302);
  }

  else
  {
    v303 = 0;
  }

  if (v388)
  {
    CFRelease(v388);
  }

  if (v386)
  {
    CFRelease(v386);
  }

  if (v385)
  {
    CFRelease(v385);
  }

  if (v384)
  {
    CFRelease(v384);
  }

  if (v382)
  {
    CFRelease(v382);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v372)
  {
    CFRelease(v372);
  }

  if (v374)
  {
    CFRelease(v374);
  }

  if (v371)
  {
    CFRelease(v371);
  }

  if (v367)
  {
    CFRelease(v367);
  }

  if ((v279 | a3) == 1)
  {
    v304 = objc_msgSend_time(a1, v300, v301, v302);
    v365 = objc_msgSend___im_nanosecondTimeInterval(v304, v305, v306, v307);
    v364 = objc_msgSend_service(a1, v308, v309, v310);
    v363 = objc_msgSend_account(a1, v311, v312, v313);
    v317 = objc_msgSend_accountID(a1, v314, v315, v316);
    v361 = v381;
    v362 = v317;
    v359 = v379;
    v360 = v378;
    v357 = v377;
    v358 = v380;
    v356 = v376;
    v366 = v6;
    v321 = objc_msgSend_cloudKitSyncState(a1, v318, v319, v320);
    v325 = v168;
    v326 = objc_msgSend_cloudKitRecordID(a1, v322, v323, v324);
    v355 = v303;
    v330 = objc_msgSend_cloudKitServerChangeTokenBlob(a1, v327, v328, v329);
    v334 = objc_msgSend_cloudKitRecordChangeTag(a1, v331, v332, v333);
    v338 = Identifier;
    v339 = objc_msgSend_destinationCallerID(a1, v335, v336, v337);
    v343 = objc_msgSend_replyToGUID(a1, v340, v341, v342);
    v347 = objc_msgSend_sortID(a1, v344, v345, v346);
    v351 = objc_msgSend_cloudKitChatID(a1, v348, v349, v350);
    v354 = v326;
    v168 = v325;
    v353 = v321;
    v6 = v366;
    IMDMessageRecordBulkUpdate(v325, 0, 0, v365, 0, 0, 0, 0, 0, 0, v364, v363, v362, v338, 0, v355, 0, v361, 0, v360, v359, v358, 0, v357, 0, v356, *buf, *&buf[8], 0, 0, 0, 0, 0, v353, v354, v330, v334, v339, v343, v347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v351);
  }

  CFRelease(v168);
LABEL_178:
  objc_autoreleasePoolPop(v6);
  return a1;
}

uint64_t IMDSharedSqliteDatabasePath()
{
  if (!sub_1B7ADF510(1))
  {
    v0 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF539C(v0, v1, v2, v3);
    }
  }

  v4 = CSDBSqliteDatabasePath();
  if (!v4)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF544C(v5, v6, v7, v8);
    }
  }

  return v4;
}

void sub_1B7B6A70C(uint64_t a1)
{
  CSDBSetCorruptedDatabaseHandler();
  if (!qword_1EDBE6300)
  {
    qword_1EDBE6300 = CSDBCreateThreadedRecordStore();
    if (!qword_1EDBE6300)
    {
      v2 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF557C(v2, v3, v4, v5);
      }
    }
  }

  *(*(*(a1 + 32) + 8) + 24) = 1;
}

uint64_t CSDBSharedRecordStore()
{
  if (!IMDSharedThreadedRecordStore())
  {
    v0 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF562C(v0, v1, v2, v3);
    }
  }

  v4 = CSDBRecordStoreRefFromThreadedRecordStoreRef();
  if (!v4)
  {
    v5 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF56DC(v5, v6, v7, v8);
    }
  }

  return v4;
}

uint64_t IMDCreateThreadedRecordStoreWithPath(uint64_t a1)
{
  v2 = CSDBCreateThreadedRecordStore();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B6A934;
  v8[3] = &unk_1E7CBA2C0;
  v8[4] = a1;
  v6 = objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v3, v4, v5);
  _IMDInitializeMessagesRecordStoreWithVersion(v2, v8, 0, v6);
  return v2;
}

uint64_t _IMDInitializeMessagesRecordStore(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v7 = objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3, a4);

  return _IMDInitializeMessagesRecordStoreWithVersion(a1, a2, v4, v7);
}

id sub_1B7B6A934(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringByResolvingAndStandardizingPath(*(a1 + 32), a2, a3, a4);

  return v4;
}

void IMDSMSRecordStoreClose(uint64_t a1)
{
  v1 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v1, OS_LOG_TYPE_INFO, "Saving database.", buf, 2u);
  }

  _IMDSMSRecordStoreSaveAndInvalidateCaches();
  if (IMDSharedThreadedRecordStore())
  {
    v2 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_1B7AD5000, v2, OS_LOG_TYPE_INFO, "Destroying database.", v6, 2u);
    }

    v3 = IMDSharedThreadedRecordStore();
    MEMORY[0x1B8CAF1D0](v3);
    v4 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Closed database.", v5, 2u);
    }
  }
}

BOOL sub_1B7B6AA4C(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v3 = IMDatabaseLogHandle(), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF583C(v3, v4, v5, v6);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF58EC(v7, v8, v9, v10);
  }

LABEL_6:
  v11 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Create tables...", v16, 2u);
  }

  CSDBSqliteConnectionCommit();
  v17 = 0u;
  memset(v16, 0, sizeof(v16));
  Database = CSDBRecordStoreGetDatabase();
  IMDSqlOperationInitWithCSDBConnection(a2, Database, v16);
  IMDSqlOperationBeginTransaction(v16);
  if (*(&v17 + 1) || (IMDCreateTablesWithOperation(v16, 1), *(&v17 + 1)) || (IMDCreateIndexesWithOperation(v16, 1), *(&v17 + 1)) || (IMDCreateTriggersWithOperation(v16, 1), *(&v17 + 1)) || (CSDBSqliteConnectionSetValueForProperty(), CSDBSqliteConnectionSetValueForProperty(), CSDBSqliteConnectionSetValueForProperty(), CSDBSqliteConnectionSetValueForProperty(), CSDBSqliteConnectionSetValueForProperty(), objc_msgSend_configureNewDatabaseUsingConnection_(IMDLegacyRecordBridge, v13, *(&v16[0] + 1), v14), *(&v17 + 1)))
  {
    IMDSqlOperationRevertTransaction(v16);
  }

  else
  {
    IMDSqlOperationCommitTransaction(v16);
  }

  return IMDSqlOperationRelease(v16, 0);
}

void sub_1B7B6AC34(void *a1, uint64_t a2)
{
  v4 = a1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1B7B6ACB8;
  v7[3] = &unk_1E7CB6FD0;
  v7[4] = a1;
  v7[5] = a2;
  IMDPersistencePerformBlock(v7, 0, v5, v6);
}

void sub_1B7B6ACB8(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v2 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF599C();
  }

  v3 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "  Elapsed milliseconds: %lld", buf, 0xCu);
  }

  v5 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "  Query:", buf, 2u);
  }

  v6 = *(a1 + 32);
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v47 = a1;
  if (objc_msgSend_length(v6, v8, v9, v10) >= 0x3E8)
  {
    if (objc_msgSend_length(v6, v11, v12, v13))
    {
      v17 = 0;
      do
      {
        if (objc_msgSend_length(v6, v14, v15, v16) - v17 > 0x3E7)
        {
          v21 = 1000;
          v23 = objc_msgSend_substringWithRange_(v6, v18, v17, 1000);
        }

        else
        {
          v21 = objc_msgSend_length(v6, v18, v19, v20) - v17;
          v23 = objc_msgSend_substringWithRange_(v6, v22, v17, v21);
        }

        objc_msgSend_addObject_(v7, v24, v23, v25);
        v17 += v21;
      }

      while (v17 < objc_msgSend_length(v6, v26, v27, v28));
    }
  }

  else
  {
    objc_msgSend_addObject_(v7, v11, v6, v13);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v49, v66, 16);
  if (v29)
  {
    v30 = v29;
    v31 = *v50;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v50 != v31)
        {
          objc_enumerationMutation(v7);
        }

        v33 = *(*(&v49 + 1) + 8 * i);
        v34 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v33;
          _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "    '%@'", buf, 0xCu);
        }
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v35, &v49, v66, 16);
    }

    while (v30);
  }

  v36 = objc_alloc(MEMORY[0x1E696AEC0]);
  v39 = objc_msgSend_initWithFormat_(v36, v37, @"EXPLAIN QUERY PLAN %@;", v38, *(v47 + 32));
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  *buf = 0u;
  IMDSqlOperationInitWithSharedCSDBDatabase();
  _IMDSqlOperationBeginQuery(buf, v39);
  v40 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    *v53 = 0;
    _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "  Query Plan:", v53, 2u);
  }

  while (IMDSqlOperationHasRows(buf))
  {
    v41 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_1B7B6B13C;
    v48[3] = &unk_1E7CB6FA8;
    v48[4] = v41;
    IMDSqlOperationIterateRow(buf, v48);
    v44 = objc_msgSend_containsString_(v41, v42, @"SCAN", v43);
    v45 = IMDatabaseLogHandle();
    v46 = v45;
    if (v44)
    {
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *v53 = 138412290;
        v54 = v41;
        _os_log_error_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_ERROR, "    '%@' <-- TABLE SCAN DETECTED!", v53, 0xCu);
      }
    }

    else if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *v53 = 138412290;
      v54 = v41;
      _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "    '%@'", v53, 0xCu);
    }
  }

  IMDSqlOperationFinishQuery(buf);
}

void sub_1B7B6B13C(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 1);
  if (!v4)
  {
    v4 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v4;
  }

  if (!strncmp(v4, "detail", 0x100uLL))
  {
    v8 = *a2;
    v9 = *(a2 + 2);
    v5 = IMDStringFromSqlColumn(&v8);
    objc_msgSend_appendString_(*(a1 + 32), v6, v5, v7);
  }
}

void sub_1B7B6B1C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2)
    {
      v3 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "Setting page size.", buf, 2u);
      }

      CSDBSqliteConnectionPerformSQL();
      v4 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *v18 = 0;
        _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Enabling WAL journal mode.", v18, 2u);
      }

      CSDBSqliteConnectionPerformSQL();
      v5 = IMDatabaseLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v17 = 0;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Enabling Foreign Key support.", v17, 2u);
      }

      CSDBSqliteConnectionPerformSQL();
      if (*(a2 + 8))
      {
        v6 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v16 = 0;
          _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Registering external functions.", v16, 2u);
        }

        CSDBSqliteDatabaseRegisterFunctionForDB();
        CSDBSqliteDatabaseRegisterFunctionForDB();
        CSDBSqliteDatabaseRegisterFunctionForDB();
        CSDBSqliteDatabaseRegisterFunctionForDB();
        CSDBSqliteDatabaseRegisterFunctionForDB();
        CSDBSqliteDatabaseRegisterFunctionForDB();
        CSDBSqliteDatabaseRegisterFunctionForDB();
        CSDBSqliteDatabaseRegisterFunctionForDB();
        CSDBSqliteDatabaseRegisterFunctionForDB();
        CSDBSqliteDatabaseRegisterFunctionForDB();
        sqlite3_create_function(*(a2 + 8), "domain_for_service", 1, 2049, 0, _IMDSMSRecordStoreCustomFunctionDomainForService, 0, 0);
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      sqlite3_trace_v2(v7, 2u, sub_1B7AE0448, 0);
      return;
    }

    goto LABEL_16;
  }

  v8 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF59D0(v8, v9, v10, v11);
  }

  if (!a2)
  {
LABEL_16:
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF5A80(v12, v13, v14, v15);
    }
  }
}

void IMDSqliteDatabaseClean(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 && *(a1 + 8))
  {
    v5 = objc_msgSend_date(MEMORY[0x1E695DF00], a2, a3, a4);
    v6 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Performing a pre-checkpoint vacuum.", &v15, 2u);
    }

    sqlite3_exec(*(a1 + 8), "vacuum;", 0, 0, 0);
    v7 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Performing Analyze to optimize the database", &v15, 2u);
    }

    sqlite3_exec(*(a1 + 8), "ANALYZE;", 0, 0, 0);
    v8 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Performing a WAL checkpoint.", &v15, 2u);
    }

    sqlite3_exec(*(a1 + 8), "PRAGMA wal_checkpoint(RESTART);", 0, 0, 0);
    v9 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_timeIntervalSinceNow(v5, v10, v11, v12);
      v15 = 134217984;
      v16 = -v13;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Database Clean up took: %f seconds", &v15, 0xCu);
    }
  }

  else
  {
    v14 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF5B30();
    }
  }
}

uint64_t sub_1B7B6B744(uint64_t a1, const char *a2, const char *a3, uint64_t a4)
{
  if (!a1 && (v6 = IMDatabaseLogHandle(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF5BBC(v6, a2, a3, a4);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF5C6C(v7, a2, a3, a4);
  }

LABEL_6:
  isInternalInstall = a3 >= 2 && objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3, a4) > a3;
  v9 = IMLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF5D1C(isInternalInstall, a3, v9, v12);
  }

  if (objc_msgSend_schemaVersion(IMDLegacyRecordBridge, v10, v11, v12) < a3)
  {
    v16 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v13, v14, v15);
    isInternalInstall = objc_msgSend_isInternalInstall(v16, v17, v18, v19);
    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF5DC4(isInternalInstall, a3, v20, v21);
    }
  }

  return isInternalInstall;
}

uint64_t sub_1B7B6B868(const char *a1, const char *a2, uint64_t a3)
{
  if (!a1 && (v6 = IMDatabaseLogHandle(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF5E6C(v6, v7, v8, v9);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF5F1C(v10, v11, v12, v13);
  }

LABEL_6:
  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF5FCC(a3, v14, v15, v16);
  }

  CSDBSqliteConnectionCommit();
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v17, v18, v19);
  v20 = sub_1B7B6BCB8(a1, a2);
  v21 = IMLogHandleForCategory();
  v22 = v21;
  if (!v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6068();
    }

    return 2;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Initial Integrity checked success", buf, 2u);
  }

  v41 = 0;
  v40 = a3;
  if (!_IMDDatabasePerformMigrations(a1, a2, a3, &v40, &v41))
  {
    goto LABEL_21;
  }

  CSDBSqliteConnectionPerformSQL();
  if (!sub_1B7B6BCB8(a1, a2))
  {
    v32 = IMLogHandleForCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF609C();
    }

LABEL_21:
    v30 = 1;
    v31 = 3;
    goto LABEL_22;
  }

  IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.Migration.Migration_Successful", v26, v27, v28);
  v29 = IMLogHandleForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF60D0();
  }

  if (!v41)
  {
    v31 = 0;
    goto LABEL_27;
  }

  v30 = 0;
  v31 = 0;
LABEL_22:
  IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.Migration.Migration_Failure", v23, v24, v25);
  v33 = IMLogHandleForCategory();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF6104(&v40, &v41, v33, v34);
  }

  if (v30)
  {
    return 2;
  }

LABEL_27:
  v35 = IMLogHandleForCategory();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF61AC(v35, v36, v37, v38);
  }

  return v31;
}

uint64_t sub_1B7B6BAE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 32) + 8) + 24) = 1;
  sub_1B7AEAEE4(a1, a2, a3, a4);
  v4 = CSDBThreadedRecordStoreRegisterClass();
  sub_1B7AE0D64(v4, v5, v6, v7);
  CSDBThreadedRecordStoreRegisterClass();
  CSDBThreadedRecordStoreRegisterClass();

  return CSDBThreadedRecordStoreRegisterClass();
}

uint64_t _IMDSMSRecordStoreUpdateLastDeleteSequenceNumberUnlocked()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v6 = -1;
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = sub_1B7B6BC30;
  v2[3] = &unk_1E7CBA330;
  v2[4] = &v3;
  _IMDPerformLockedConnectionBlock(v2);
  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1B7B6BC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B7B6BC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CSDBSqliteConnectionBeginTransactionType();
  *(*(*(a1 + 32) + 8) + 24) = CSDBRecordStoreGetSequenceNumber();
  IMSetDomainIntForKey();

  return CSDBSqliteConnectionCommit();
}

uint64_t sub_1B7B6BCB8(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v3 = IMDatabaseLogHandle(), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF6248(v3, v4, v5, v6);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v7 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF62F8(v7, v8, v9, v10);
  }

LABEL_6:
  if (sub_1B7B6BFE0(a2))
  {
    v14 = IMLogHandleForCategory();
    v15 = 1;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *v47 = 0;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "Integrity checked success", v47, 2u);
    }

    v19 = @"com.apple.MobileSMS.InitialIntegrityCheck_Success";
    goto LABEL_37;
  }

  IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.InitialIntegrityCheck_Failure", v11, v12, v13);
  v20 = CSDBSqliteConnectionPerformSQL();
  if (v20 != 101 && (v21 = v20) != 0)
  {
    v27 = IMLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF63A8(v21, v27);
    }

    v26 = @"com.apple.MobileSMS.Migration.Reindex_Failure";
  }

  else
  {
    v22 = IMLogHandleForCategory();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "Reindexing the DB worked.", buf, 2u);
    }

    v26 = @"com.apple.MobileSMS.Migration.Reindex_Success";
  }

  IMDPersistenceSubmitEvent(v26, v23, v24, v25);
  if (sub_1B7B6BFE0(a2))
  {
    goto LABEL_31;
  }

  IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.PostReindex.IntegrityCheck_Failure", v28, v29, v30);
  v31 = CSDBSqliteDatabaseVacuum();
  if (v31 != 101 && (v32 = v31) != 0)
  {
    v38 = IMLogHandleForCategory();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6420(v32, v38);
    }

    v37 = @"com.apple.MobileSMS.Migration.Vacuum_Failure";
  }

  else
  {
    v33 = IMLogHandleForCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *v50 = 0;
      _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "Vacuuming DB success", v50, 2u);
    }

    v37 = @"com.apple.MobileSMS.Migration.Vacuum_Success";
  }

  IMDPersistenceSubmitEvent(v37, v34, v35, v36);
  v39 = sub_1B7B6BFE0(a2);
  v40 = IMLogHandleForCategory();
  v41 = v40;
  if (v39)
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *v49 = 0;
      _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "Post Vacuuming integrity check success", v49, 2u);
    }

    IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.Migration.PostVacuum.IntegrityCheck_Success", v42, v43, v44);
LABEL_31:
    v45 = IMLogHandleForCategory();
    v15 = 1;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
    {
      *v48 = 0;
      _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "Integrity checked success", v48, 2u);
    }

    v19 = @"com.apple.MobileSMS.PostReindex.IntegrityCheck_Success";
    goto LABEL_37;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF6498();
  }

  v15 = 0;
  v19 = @"com.apple.MobileSMS.Migration.PostVacuum.IntegrityCheck_Failure";
LABEL_37:
  IMDPersistenceSubmitEvent(v19, v16, v17, v18);
  return v15;
}

uint64_t sub_1B7B6BFE0(uint64_t a1)
{
  if (!a1)
  {
    v1 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF64CC(v1, v2, v3, v4);
    }
  }

  v8 = CSDBSqliteDatabaseCheckIntegrity();
  if ((v8 & 1) == 0)
  {
    IMDPersistenceSubmitEvent(@"com.apple.MobileSMS.Migration.IntegrityCheck_Failure", v5, v6, v7);
  }

  return v8;
}

uint64_t IMDSqlOperationIsQueryIndexed(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *a2 = 0;
  }

  if (a1)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    while (IMDSqlOperationHasRows(a1))
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = sub_1B7B6C2D0;
      v21[3] = &unk_1E7CBA8F8;
      v21[4] = v4;
      v21[5] = &v22;
      IMDSqlOperationIterateRow(a1, v21);
    }

    if (*(v23 + 24))
    {
      v5 = @"YES";
    }

    else
    {
      v5 = @"NO";
    }

    NSLog(&cfstr_QueryIsIndexed.isa, v5);
    NSLog(&cfstr_Query_0.isa, *(a1 + 48));
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v17, v26, 16);
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v4);
          }

          NSLog(&stru_1F2FAFC28.isa, *(*(&v17 + 1) + 8 * i));
        }

        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v10, &v17, v26, 16);
      }

      while (v7);
    }

    if (a2)
    {
      *a2 = v4;
    }

    v11 = *(v23 + 24);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v12 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF657C(v12, v13, v14, v15);
    }

    v11 = 0;
  }

  return v11 & 1;
}

void sub_1B7B6C2D0(uint64_t a1, __int128 *a2, _BYTE *a3)
{
  v6 = *(a2 + 1);
  if (!v6)
  {
    v6 = sqlite3_column_name(**a2, *(a2 + 4));
    *(a2 + 1) = v6;
  }

  if (!strncmp(v6, "detail", 0x100uLL))
  {
    v12 = *a2;
    v13 = *(a2 + 2);
    v7 = IMDStringFromSqlColumn(&v12);
    if (v7)
    {
      v8 = v7;
      v10 = CFStringFind(v7, @"SCAN TABLE", 1uLL);
      *(*(*(a1 + 40) + 8) + 24) = v10.length == 0;
      v11 = *(a1 + 32);
      if (v11)
      {
        objc_msgSend_addObject_(v11, v10.length, v8, v9);
      }

      CFRelease(v8);
    }

    *a3 = 1;
  }
}

uint64_t IMDSqlOperationColumnExistsOnTableWithOperation(void *a1, uint64_t a2, const __CFString *a3)
{
  if (!a1 && (v6 = IMDatabaseLogHandle(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF6624(v6, v7, v8, v9);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF66CC(v10, v11, v12, v13);
  }

LABEL_6:
  if (!a3)
  {
    v14 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6774(v14, v15, v16, v17);
      if (a1)
      {
        goto LABEL_9;
      }

      return 0;
    }
  }

  if (!a1)
  {
    return 0;
  }

LABEL_9:
  v18 = CFStringCreateWithFormat(0, 0, @"PRAGMA table_info(%@);", a2);
  _IMDSqlOperationBeginQuery(a1, v18);
  CFRelease(v18);
  if (IMDSqlOperationHasRows(a1))
  {
    while (1)
    {
      if (IMDSqlOperationColumnCount(a1))
      {
        v19 = 0;
        while (1)
        {
          v27 = 0uLL;
          *N = 0;
          IMDSqlOperationColumnByIndex(a1, v19, &v27);
          v20 = *(&v27 + 1);
          if (!*(&v27 + 1))
          {
            v20 = sqlite3_column_name(*v27, N[0]);
            *(&v27 + 1) = v20;
          }

          if (!strncmp(v20, "name", 0x100uLL))
          {
            break;
          }

          if (++v19 >= IMDSqlOperationColumnCount(a1))
          {
            goto LABEL_18;
          }
        }

        v25 = v27;
        v26 = *N;
        v21 = IMDStringFromSqlColumn(&v25);
        v22 = CFStringCompare(v21, a3, 0);
        CFRelease(v21);
        if (v22 == kCFCompareEqualTo)
        {
          break;
        }
      }

LABEL_18:
      if (!IMDSqlOperationHasRows(a1))
      {
        goto LABEL_19;
      }
    }

    v23 = 1;
  }

  else
  {
LABEL_19:
    v23 = 0;
  }

  IMDSqlOperationFinishQuery(a1);
  return v23;
}

BOOL IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(void *a1, uint64_t a2, const __CFString *a3, __CFString *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  if (!a2 && (v8 = IMDatabaseLogHandle(), os_log_type_enabled(v8, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF681C(v8, v9, v10, v11);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v12 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF68C4(v12, v13, v14, v15);
  }

LABEL_6:
  if (!a4)
  {
    v16 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF696C(v16, v17, v18, v19);
    }
  }

  if (IMDSqlOperationColumnExistsOnTableWithOperation(a1, a2, a3))
  {
    v20 = IMLogHandleForCategory();
    v21 = 1;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v32 = a3;
      v33 = 2112;
      v34 = a2;
      v22 = "Found column %@ on %@, no need to add it";
      v23 = v20;
      v24 = 22;
LABEL_18:
      _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, v22, buf, v24);
    }
  }

  else
  {
    v25 = &stru_1F2FA9728;
    if (a4)
    {
      v25 = a4;
    }

    v26 = CFStringCreateWithFormat(0, 0, @"ALTER TABLE %@ ADD COLUMN %@ %@;", a2, a3, v25);
    _IMDSqlOperationBeginQuery(a1, v26);
    IMDSqlOperationFinishQuery(a1);
    CFRelease(v26);
    v27 = a1[21];
    v21 = v27 == 0;
    v28 = IMLogHandleForCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = @"NO";
      *buf = 138412802;
      v32 = a3;
      v33 = 2112;
      if (!v27)
      {
        v29 = @"YES";
      }

      v34 = a2;
      v35 = 2112;
      v36 = v29;
      v22 = "Adding column %@ to %@ succeeded: %@";
      v23 = v28;
      v24 = 32;
      goto LABEL_18;
    }
  }

  return v21;
}

BOOL IMDSqlOperationDropColumnIfExistsToTableWithOperation(void *a1, uint64_t a2, const __CFString *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (!a2 && (v6 = IMDatabaseLogHandle(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF6A14(v6, v7, v8, v9);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF6ABC(v10, v11, v12, v13);
  }

LABEL_6:
  if (IMDSqlOperationColumnExistsOnTableWithOperation(a1, a2, a3))
  {
    v14 = CFStringCreateWithFormat(0, 0, @"ALTER TABLE %@ DROP COLUMN %@;", a2, a3);
    _IMDSqlOperationBeginQuery(a1, v14);
    IMDSqlOperationFinishQuery(a1);
    CFRelease(v14);
    v15 = a1[21];
    v16 = v15 == 0;
    v17 = IMLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = @"NO";
      *buf = 138412802;
      v22 = a3;
      v23 = 2112;
      if (!v15)
      {
        v18 = @"YES";
      }

      v24 = a2;
      v25 = 2112;
      v26 = v18;
      _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Dropping column %@ to %@ succeeded: %@", buf, 0x20u);
    }
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v22 = a3;
      v23 = 2112;
      v24 = a2;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "No column %@ on %@, no need to drop it", buf, 0x16u);
    }

    return 0;
  }

  return v16;
}

BOOL IMDSqlOperationAddColumnIfNotExistsToTable(uint64_t a1, const __CFString *a2, __CFString *a3)
{
  if (!a1 && (v6 = IMDatabaseLogHandle(), os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    sub_1B7CF6B64(v6, v7, v8, v9);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v10 = IMDatabaseLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF6C0C(v10, v11, v12, v13);
  }

LABEL_6:
  if (!a3)
  {
    v14 = IMDatabaseLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF6CB4(v14, v15, v16, v17);
    }
  }

  memset(v20, 0, sizeof(v20));
  IMDSqlOperationInitWithSharedCSDBDatabase(v20);
  v18 = IMDSqlOperationAddColumnIfNotExistsToTableWithOperation(v20, a1, a2, a3);
  IMDSqlOperationRelease(v20, 0);
  return v18;
}