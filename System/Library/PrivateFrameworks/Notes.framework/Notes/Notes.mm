__CFString *_NoteStoreCopyPath()
{
  v0 = _NoteStoreCopyRootPath();
  v1 = v0;
  if (v0)
  {
    if (_testingFilePrefix)
    {
      CFStringAppend(v0, _testingFilePrefix);
      v2 = @".db";
    }

    else
    {
      v2 = @"notes.db";
    }

    CFStringAppend(v1, v2);
  }

  return v1;
}

__CFString *_NoteStoreCopyRootPath()
{
  v0 = CPSharedResourcesDirectory();
  if (!v0)
  {
    return 0;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, v0);
  CFStringAppend(MutableCopy, @"/Library/Notes/");
  CPFileBuildDirectoriesToPath();
  return MutableCopy;
}

id NoteContextManagedObjectModelPath()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = [v0 pathForResource:@"NotesModel" ofType:@"momd"];

  return v1;
}

void sub_25C69E528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  objc_sync_exit(v36);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

id NoteContextPersistentStorePath()
{
  v0 = NoteContextRootDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"notes.sqlite"];

  return v1;
}

__CFString *NoteContextRootDirectoryPath()
{
  if (s_testsNotesRootPath)
  {
    v0 = s_testsNotesRootPath;
  }

  else
  {
    v0 = NoteStoreCopyRootPath();
  }

  return v0;
}

void sub_25C69EC28(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x25C69EBA4);
  }

  _Unwind_Resume(exception_object);
}

void sub_25C69F218(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v23 = va_arg(va1, id);
  if (a2)
  {
    objc_end_catch();
    if (a2 == 2)
    {
      v15 = objc_begin_catch(a1);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [v15 name];
        v17 = [v16 isEqualToString:@"NoteStoreHasMismatchedNoteBodies"];

        if (v17)
        {
          v18 = os_log_create("com.apple.notes", "HTML");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            [NoteContext handleMigration];
          }

          v19 = [MEMORY[0x277CCAA00] defaultManager];
          v23 = 0;
          v20 = [v19 removeItemAtPath:a10 error:va];
          v21 = v23;

          if ((v20 & 1) == 0)
          {
            v22 = os_log_create("com.apple.notes", "HTML");
            if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
            {
              [v21 userInfo];
              objc_claimAutoreleasedReturnValue();
              [NoteContext handleMigration];
            }
          }

          [v12 invalidate];

          objc_end_catch();
          JUMPOUT(0x25C69F1A4);
        }
      }

      objc_exception_rethrow();
    }

    objc_begin_catch(a1);
    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_25C69F3F0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x25C69F3FCLL);
}

uint64_t __ReceiveNotification(int a1, void *a2, CFTypeRef cf1)
{
  v4 = CFEqual(cf1, @"NoteContextDarwinNotificationWithLoggedChanges") != 0;

  return [a2 receiveDarwinNotificationWithChangeLogging:v4];
}

void sub_25C6A4FBC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    JUMPOUT(0x25C6A4F24);
  }

  _Unwind_Resume(exception_object);
}

id NoteContextIndexPath()
{
  v0 = NoteContextRootDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"notes.idx"];

  return v1;
}

uint64_t OUTLINED_FUNCTION_1(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_10(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_fault_impl(a1, a4, OS_LOG_TYPE_FAULT, a2, a3, 0x16u);
}

void sub_25C6A9BFC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25C6A9980);
  }

  _Unwind_Resume(a1);
}

void sub_25C6AA354(_Unwind_Exception *a1)
{
  objc_end_catch();
  _Block_object_dispose(&v2, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25C6ABCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getACUILocalizationClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AccountsUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __AccountsUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2799AC998;
    v6 = 0;
    AccountsUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AccountsUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("ACUILocalization");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getACUILocalizationClass_block_invoke_cold_1();
  }

  getACUILocalizationClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __AccountsUILibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  AccountsUILibraryCore_frameworkLibrary = result;
  return result;
}

id ICNotesFrameworkBundle(uint64_t a1)
{
  if (ICNotesFrameworkBundle_onceToken != -1)
  {
    ICNotesFrameworkBundle_cold_1();
  }

  v2 = ICNotesFrameworkBundle_bundle;

  return v2;
}

uint64_t __ICNotesFrameworkBundle_block_invoke()
{
  ICNotesFrameworkBundle_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

id __ICLocalizedFrameworkString_impl(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = ICNotesFrameworkBundle(v7);
  v9 = [v8 localizedStringForKey:v7 value:v6 table:v5];

  return v9;
}

id __ICLocalizedFrameworkStringWithDefaultValue_impl(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = ICNotesFrameworkBundle(v7);
  v9 = [v8 localizedStringForKey:v7 value:v6 table:v5];

  return v9;
}

void sub_25C6ACEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NoteAttachmentObjectDataBasePath(void *a1, uint64_t a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 managedObjectContext];
  v10[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  v6 = [v4 obtainPermanentIDsForObjects:v5 error:a2];

  if (v6)
  {
    v7 = [v3 objectID];
    v8 = [NoteAttachmentObject attachmentDirectoryPathForAttachmentObjectID:v7 error:a2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id NoteAttachmentObjectDataPath(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = NoteAttachmentObjectDataBasePath(v3, a2);
  if (v4)
  {
    v5 = [v3 valueForKey:@"filename"];
    if (![(__CFString *)v5 length])
    {

      v5 = @"attachmentFile";
    }

    v6 = [v4 stringByAppendingPathComponent:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t DataWritingOptionForFileProtectionOption(void *a1)
{
  v1 = a1;
  if (v1)
  {
    if (DataWritingOptionForFileProtectionOption_onceToken != -1)
    {
      DataWritingOptionForFileProtectionOption_cold_1();
    }

    v2 = [DataWritingOptionForFileProtectionOption_s_mappings objectForKeyedSubscript:v1];
    v3 = [v2 unsignedIntegerValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __DataWritingOptionForFileProtectionOption_block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCA190];
  v4[0] = *MEMORY[0x277CCA1B8];
  v4[1] = v0;
  v5[0] = &unk_286E32AF8;
  v5[1] = &unk_286E32B10;
  v1 = *MEMORY[0x277CCA1A0];
  v4[2] = *MEMORY[0x277CCA198];
  v4[3] = v1;
  v5[2] = &unk_286E32B28;
  v5[3] = &unk_286E32B40;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = DataWritingOptionForFileProtectionOption_s_mappings;
  DataWritingOptionForFileProtectionOption_s_mappings = v2;
}

id NoteAttachmentObjectDataBasePathBetween12A173And12A189()
{
  v0 = NoteContextRootDirectoryPath();
  v1 = [v0 stringByAppendingPathComponent:@"attachments"];

  return v1;
}

id NoteAttachmentObjectDataPathBetween12A173And12A189(void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 managedObjectContext];
  v13[0] = v3;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  LODWORD(a2) = [v4 obtainPermanentIDsForObjects:v5 error:a2];

  if (a2)
  {
    v6 = [v3 objectID];
    v7 = [v6 URIRepresentation];
    v8 = [v7 absoluteString];

    v9 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], v8, 0, @"/", 0x8000100u);
    v10 = NoteAttachmentObjectDataBasePathBetween12A173And12A189();
    v11 = [v10 stringByAppendingPathComponent:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_25C6AF340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t NoteStoreGetSharedNoteStore()
{
  v0 = __SharedNoteStore;
  if (!__SharedNoteStore)
  {
    v1 = _NoteStoreCopyPath();
    if (v1)
    {
      v2 = v1;
      v0 = CPRecordStoreCreateWithPath();
      CFRelease(v2);
      CPRecordStoreLogChanges();
      CPRecordStoreSetSetupHandler();
      CPRecordStoreGetDatabase();
      CPSqliteDatabaseSetMigrationHandlers();
      CPSqliteDatabaseSetVersion();
    }

    else
    {
      v0 = 0;
    }

    __SharedNoteStore = v0;
  }

  return v0;
}

void __LoadContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = CPSqliteConnectionStatementForSQL();
  if (v4)
  {
    v5 = *(v4 + 8);
    ID = CPRecordGetID();
    sqlite3_bind_int(v5, 1, ID);
    LODWORD(v5) = CPSqliteStatementIntegerResult();
    CPSqliteStatementReset();
    ppBlob = 0;
    if (sqlite3_blob_open(*(a3 + 8), "main", "note_bodies", "data", v5, 0, &ppBlob))
    {
      v17 = [MEMORY[0x277CBEAD8] exceptionWithName:@"NoteStoreHasMismatchedNoteBodies" reason:@"Couldn't find the note body for a note" userInfo:0];
      objc_exception_throw(v17);
    }

    v7 = malloc_type_calloc(1uLL, 0x4000uLL, 0x547E147uLL);
    v8 = sqlite3_blob_bytes(ppBlob);
    v9 = MFGetMappedAllocator();
    v10 = v8;
    Mutable = CFDataCreateMutable(v9, v8);
    if (v8 >= 1)
    {
      v12 = 0;
      do
      {
        if (v10 - v12 >= 0x4000)
        {
          v13 = 0x4000;
        }

        else
        {
          v13 = v10 - v12;
        }

        if (sqlite3_blob_read(ppBlob, v7, v13, v12))
        {
          __LoadContent_cold_1();
        }

        v12 += v13;
        CFDataAppendBytes(Mutable, v7, v13);
      }

      while (v12 < v10);
    }

    free(v7);
    v14 = MFGetMappedAllocator();
    BytePtr = CFDataGetBytePtr(Mutable);
    v16 = CFStringCreateWithBytes(v14, BytePtr, v10, 0x8000100u, 0);
    CFRelease(Mutable);
    if (sqlite3_blob_close(ppBlob))
    {
      __LoadContent_cold_2();
    }

    CPSqliteDatabaseReleaseSqliteConnection();
    if (v16)
    {
      CPRecordInitializeProperty();
      CFRelease(v16);
    }
  }
}

void __SaveContent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = CPSqliteConnectionStatementForSQL();
  if (!v3)
  {
    return;
  }

  v4 = *(v3 + 8);
  ID = CPRecordGetID();
  sqlite3_bind_int(v4, 1, ID);
  LODWORD(v4) = CPSqliteStatementPerform();
  CPSqliteStatementReset();
  if (v4 != 100)
  {
    return;
  }

  v6 = CPSqliteConnectionStatementForSQL();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  Property = CPRecordGetProperty();
  CStringPtr = CFStringGetCStringPtr(Property, 0x8000100u);
  if (CStringPtr)
  {
    v10 = CStringPtr;
    v11 = 0;
LABEL_6:
    v12 = *(v7 + 8);
    v13 = CPRecordGetID();
    sqlite3_bind_int(v12, 1, v13);
    sqlite3_bind_text(*(v7 + 8), 2, v10, -1, 0);
    goto LABEL_7;
  }

  Length = CFStringGetLength(Property);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length + 1, 0x8000100u);
  v11 = malloc_type_malloc(MaximumSizeForEncoding, 0x39E757CDuLL);
  if (v11)
  {
    CString = CFStringGetCString(Property, v11, MaximumSizeForEncoding, 0x8000100u);
    v10 = v11;
    if (CString == 1)
    {
      goto LABEL_6;
    }
  }

LABEL_7:
  CPSqliteStatementPerform();
  CPSqliteStatementReset();
  if (v11)
  {

    free(v11);
  }
}

uint64_t configureNotesDatabase(uint64_t a1, uint64_t a2)
{
  CPRecordStoreCreateTablesForClass();
  CPSqliteConnectionPerformSQL();

  return _CreateBodiesTrigger(a2);
}

uint64_t _migrationHandler(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 4)
  {
    goto LABEL_6;
  }

  if (a3 == 3)
  {
    CPSqliteConnectionPerformSQL();
LABEL_6:
    _UpdateNoteTableWithCJK(a2);
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    return 1;
  }

  CPSqliteConnectionPerformSQL();
  CPRecordStoreCreateTablesForClass();
  CPSqliteConnectionPerformSQL();
  CPSqliteConnectionPerformSQL();
LABEL_8:
  _CreateBodiesTrigger(a2);
  return 0;
}

uint64_t _UpdateNoteTableWithCJK(uint64_t a1)
{
  CPSqliteConnectionPerformSQL();
  CPRecordStoreCreateTablesForClass();
  CPSqliteConnectionPerformSQL();

  return CPSqliteConnectionPerformSQL();
}

uint64_t _CreateBodiesTrigger(uint64_t a1)
{
  result = CPSqliteConnectionStatementForSQL();
  if (result)
  {
    CPSqliteStatementPerform();

    return CPSqliteStatementReset();
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MCProfileConnection(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ManagedConfiguration))
  {
    return dlopenHelper_ManagedConfiguration(result);
  }

  return result;
}

double dlopenHelper_ManagedConfiguration(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/ManagedConfiguration.framework/ManagedConfiguration", 0);
  atomic_store(1u, &dlopenHelperFlag_ManagedConfiguration);
  return a1;
}