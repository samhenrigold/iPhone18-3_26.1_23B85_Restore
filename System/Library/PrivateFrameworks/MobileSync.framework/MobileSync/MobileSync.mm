void _resetDataSourceState()
{
  if (sDataSourceCreators)
  {
    CFRelease(sDataSourceCreators);
    sDataSourceCreators = 0;
  }
}

uint64_t CreateDataSourceForDataClassName(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFStringRef *a5)
{
  if (a3)
  {
    if (a1)
    {
      if ((sDataSourcesInitialized & 1) == 0)
      {
        _dataSourceRegisterCreatorForDataClassName(@"com.apple.Bookmarks", a5);
        _dataSourceRegisterCreatorForDataClassName(@"com.apple.Calendars", a5);
        _dataSourceRegisterCreatorForDataClassName(@"com.apple.Contacts", a5);
        _dataSourceRegisterCreatorForDataClassName(@"com.apple.MailAccounts", a5);
        sDataSourcesInitialized = 1;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      if (sDataSourceCreators && (Value = CFDictionaryGetValue(sDataSourceCreators, a1)) != 0)
      {

        return Value(a3, a2, a4, a5);
      }

      else
      {
        if (a5)
        {
          *a5 = CFStringCreateWithFormat(0, 0, @"CreateDataSourceForDataClassName: Data Source is not registered for %@", a1);
        }

        return 0xFFFFFFFFLL;
      }
    }

    v12 = @"CreateDataSourceForDataClassName: Parameter for dataClassName is NULL";
  }

  else
  {
    v12 = @"CreateDataSourceForDataClassName: Out parameter for dataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a5, v12);
}

uint64_t DataSourceDeleteDataSource(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return (*(a1 + 128))(a1, a2);
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceDeleteDataSource: DataSource is NULL");
  }
}

uint64_t DataSourceCanSyncWithVersion(uint64_t a1, const __CFNumber *a2, void *a3, uint64_t a4)
{
  number = 0;
  (*(a1 + 16))(a1, &number, a4);
  valuePtr = 0;
  if (a2 && number)
  {
    CFNumberGetValue(number, kCFNumberIntType, &valuePtr + 4);
    CFNumberGetValue(a2, kCFNumberIntType, &valuePtr);
    if (valuePtr != -1 && SHIDWORD(valuePtr) > valuePtr)
    {
      v10 = (*(a1 + 24))(a1, a2, a3, a4);
      goto LABEL_11;
    }

    v10 = 0;
    v9 = MEMORY[0x277CBED28];
  }

  else
  {
    v10 = 0;
    v9 = MEMORY[0x277CBED10];
  }

  *a3 = *v9;
LABEL_11:
  if (DLShouldLog())
  {
    _DLLog();
  }

  return v10;
}

uint64_t DataSourceMigrateRecords(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = @"DataSourceMigrateRecords: source DataSource is NULL";
    return MEMORY[0x2821867D0](4294967293, a3, v5);
  }

  if (!a2)
  {
    v5 = @"DataSourceMigrateRecords: destination DataSource is NULL";
    return MEMORY[0x2821867D0](4294967293, a3, v5);
  }

  if (a1 == a2)
  {
    v5 = @"DataSourceMigrateRecords: What are you thinking?? You can't migrate from and to the same store.";
    return MEMORY[0x2821867D0](4294967293, a3, v5);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    return v3();
  }

  else
  {
    return 0;
  }
}

uint64_t DataSourceRemoveStore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return MEMORY[0x2821867D0](4294967293, a3, @"DataSourceRemoveStore: DataSource is NULL");
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    return v3();
  }

  else
  {
    return 0;
  }
}

uint64_t DataSourceGetSyncTypeAndExchangeSyncAnchors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a5)
      {
        if (a6)
        {
          v8 = (*(a1 + 48))();
          if (*a5)
          {
            if (CFStringCompare(*a5, @"---DATACLASS_CLEARED---", 0) == kCFCompareEqualTo)
            {
              CFRelease(*a5);
              *a5 = 0;
            }
          }

          return v8;
        }

        v10 = @"SADataSourceGetSyncTypeAndSyncAnchors: Out parameter for nextDeviceAnchor is NULL";
      }

      else
      {
        v10 = @"SADataSourceGetSyncTypeAndSyncAnchors: Out parameter for previousComputerAnchor is NULL";
      }
    }

    else
    {
      v10 = @"SADataSourceGetSyncTypeAndSyncAnchors: Out parameter for syncType is NULL";
    }
  }

  else
  {
    v10 = @"SADataSourceGetSyncTypeAndSyncAnchors: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a7, v10);
}

uint64_t DataSourceClearSyncAnchors(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceClearSyncAnchors: DataSource is NULL");
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t DataSourceClearAllRecords(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return (*(a1 + 64))(a1, a2);
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceClearAllRecords: DataSource is NULL");
  }
}

uint64_t DataSourceGetChanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        return (*(a1 + 72))();
      }

      v5 = @"DataSourceGetChanges: Out parameter for moreComing is NULL";
    }

    else
    {
      v5 = @"DataSourceGetChanges: Out parameter for changes is NULL";
    }
  }

  else
  {
    v5 = @"DataSourceGetChanges: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a4, v5);
}

uint64_t DataSourceGetAllRecords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        return (*(a1 + 80))();
      }

      v5 = @"DataSourceGetAllRecords: Out parameter for moreComing is NULL";
    }

    else
    {
      v5 = @"DataSourceGetAllRecords: Out parameter for records is NULL";
    }
  }

  else
  {
    v5 = @"DataSourceGetAllRecords: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a4, v5);
}

uint64_t DataSourceGetCountOfRecords(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      return (*(a1 + 88))(a1, a2, a3);
    }

    v4 = @"DataSourceGetCountOfRecords: Out parameter for count is NULL";
  }

  else
  {
    v4 = @"DataSourceGetCountOfRecords: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a3, v4);
}

uint64_t DataSourceProcessChanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        return (*(a1 + 96))();
      }

      v7 = @"DataSourceProcessChanges: Out parameter for oldToNewIdentifiers is NULL";
    }

    else
    {
      v7 = @"DataSourceProcessChanges: changes parameter is NULL";
    }
  }

  else
  {
    v7 = @"DataSourceProcessChanges: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a6, v7);
}

uint64_t DataSourceCommit(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return (*(a1 + 104))(a1, a2);
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceCommit: DataSource is NULL");
  }
}

uint64_t DataSourceRollback(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return (*(a1 + 112))(a1, a2);
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceRollback: DataSource is NULL");
  }
}

uint64_t DataSourceGetEntityTypeProcessOrder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return (*(a1 + 120))(a1, a2, a3);
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a3, @"DataSourceGetEntityTypeProcessOrder: DataSource is NULL");
  }
}

void _dataSourceRegisterCreatorForDataClassName(CFStringRef theString1, uint64_t a2)
{
  if (theString1)
  {
    if (!sDataSourceCreators)
    {
      sDataSourceCreators = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], 0);
    }

    v4 = CFStringCompare(theString1, @"com.apple.Bookmarks", 0);
    v5 = BookmarksDataSourceCreator;
    if (v4)
    {
      v6 = CFStringCompare(theString1, @"com.apple.Calendars", 0);
      v5 = CalendarsDataSourceCreator;
      if (v6)
      {
        v7 = CFStringCompare(theString1, @"com.apple.Contacts", 0);
        v5 = ContactsDataSourceCreator;
        if (v7)
        {
          v8 = CFStringCompare(theString1, @"com.apple.MailAccounts", 0);
          v5 = MailAccountsDataSourceCreator;
          if (v8)
          {
            v5 = 0;
          }
        }
      }
    }

    v9 = sDataSourceCreators;

    CFDictionarySetValue(v9, theString1, v5);
  }

  else
  {

    MEMORY[0x2821867D0](4294967293, a2, @"_dataSourceRegisterCreatorForDataClassName: Parameter for dataClassName is NULL");
  }
}

uint64_t ContactsDataSourceCreator(void *a1, uint64_t a2, const __CFDictionary *a3, CFStringRef *a4)
{
  v8 = malloc_type_calloc(0x1C0uLL, 1uLL, 0x10E0040ADB60193uLL);
  *a1 = v8;
  *v8 = *MEMORY[0x277CBED10];
  *(v8 + 2) = ContactsDataSourceGetVersionFunction;
  *(v8 + 3) = ContactsDataSourceCanSyncWithVersionFunction;
  *(v8 + 4) = ContactsDataSourceMigrateFunction;
  *(v8 + 5) = ContactsDataSourceRemoveStoreFunction;
  *(v8 + 6) = ContactsDataSourceGetSyncTypeAndExchangeSyncAnchors;
  *(v8 + 7) = ContactsDataSourceClearSyncAnchors;
  *(v8 + 8) = ContactsDataSourceClearAllRecords;
  *(v8 + 9) = ContactsDataSourceGetChanges;
  *(v8 + 10) = ContactsDataSourceGetAllRecords;
  *(v8 + 11) = ContactsDataSourceGetCountOfRecords;
  *(v8 + 12) = ContactsDataSourceProcessChanges;
  *(v8 + 13) = ContactsDataSourceCommit;
  *(v8 + 14) = ContactsDataSourceRollback;
  *(v8 + 16) = ContactsDataSourceDeleteDataSource;
  *(v8 + 15) = ContactsDataSourceGetEntityTypeProcessOrder;
  v8[136] = 0;
  v8[138] = 0;
  *(v8 + 35) = 0;
  *(v8 + 22) = 0;
  *(v8 + 108) = 0;
  *(v8 + 32) = 0;
  *(v8 + 14) = 0u;
  *(v8 + 15) = 0u;
  *(v8 + 12) = 0u;
  *(v8 + 13) = 0u;
  *(v8 + 280) = 0u;
  *(v8 + 296) = 0u;
  *(v8 + 312) = 0u;
  *(v8 + 328) = 0u;
  *(v8 + 344) = 0u;
  *(v8 + 360) = 0u;
  *(v8 + 376) = 0u;
  *(v8 + 392) = 0u;
  v9 = *MEMORY[0x277CBECE8];
  v10 = MEMORY[0x277CBF138];
  v11 = MEMORY[0x277CBF150];
  *(v8 + 51) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v8 + 52) = CFDictionaryCreateMutable(v9, 0, v10, v11);
  error = 0;
  v12 = ABAddressBookCreateWithOptions(0, &error);
  *(v8 + 18) = v12;
  if (!v12)
  {
    if (DLShouldLog())
    {
      goto LABEL_98;
    }

    return 0xFFFFFFFFLL;
  }

  ABAddressBookSetIsBackgroundProcess();
  *(v8 + 220) = 0;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"UseImageChangedPlaceholder");
    if (Value)
    {
      v8[440] = CFBooleanGetValue(Value) != 0;
      if (DLShouldLog())
      {
        _DLLog();
      }
    }

    v14 = CFDictionaryGetValue(a3, @"UpdateAnchorsOnPull");
    if (v14)
    {
      v8[441] = CFBooleanGetValue(v14) != 0;
      if (DLShouldLog())
      {
        _DLLog();
      }
    }
  }

  v8[443] = 0;
  v45 = 0;
  if (!a2)
  {
    v29 = ABAddressBookCopyLocalSource();
    *(v8 + 19) = v29;
    if (v29)
    {
      v8[443] = 1;
    }

    else if (a4)
    {
      *a4 = @"Could not get the default address book store";
    }

    goto LABEL_92;
  }

  v15 = ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier();
  v16 = v15;
  if (v15 && CFArrayGetCount(v15) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
    CFRetain(ValueAtIndex);
LABEL_19:
    CFRelease(v16);
    goto LABEL_20;
  }

  v18 = ABAddressBookCopySourceWithAccountAndExternalIdentifiers();
  ValueAtIndex = v18;
  if (v18)
  {
    v19 = ABRecordCopyValue(v18, *MEMORY[0x277CE9A90]);
    if (v19)
    {
      v20 = v19;
      _makeAccountForSource(v8, ValueAtIndex, v19);
      CFRelease(v20);
    }
  }

  if (v16)
  {
    goto LABEL_19;
  }

LABEL_20:
  v21 = ValueAtIndex == 0;
  v22 = ValueAtIndex;
  if (ValueAtIndex)
  {
    goto LABEL_102;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v30 = ABSourceCreate();
  if (!v30)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a4)
    {
      *a4 = @"Could not create an AddressBook store";
      CFRetain(@"Could not create an AddressBook store");
    }

    goto LABEL_92;
  }

  v22 = v30;
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (!_makeAccountForSource(v8, v22, a2))
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a4)
    {
      *a4 = CFStringCreateWithFormat(0, 0, @"Could not set external identifier on AB store: %@", 0);
    }

    v33 = v22;
    goto LABEL_91;
  }

  v31 = ABAddressBookAddRecord(*(v8 + 18), v22, &v45);
  if (!v31)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a4)
    {
      *a4 = CFStringCreateWithFormat(0, 0, @"Could not add store to AddressBook: %@", v45);
    }

    CFRelease(v22);
    v22 = 0;
  }

  if (v45)
  {
    CFRelease(v45);
    v45 = 0;
  }

  v32 = !v31;
  if (!v22)
  {
    v32 = 1;
  }

  if ((v32 & 1) == 0)
  {
LABEL_102:
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a3)
    {
      v23 = CFDictionaryGetValue(a3, @"StoreDisplayName");
      if (v23)
      {
        if (!ABRecordSetValue(v22, *MEMORY[0x277CE9AC0], v23, &v45) && DLShouldLog())
        {
          _DLLog();
        }

        if (v45)
        {
          CFRelease(v45);
          v45 = 0;
        }
      }

      v24 = CFDictionaryGetValue(a3, @"StoreType");
      if (v24)
      {
        if (!ABRecordSetValue(v22, *MEMORY[0x277CE9AD0], v24, &v45) && DLShouldLog())
        {
          _DLLog();
        }

        if (v45)
        {
          CFRelease(v45);
          v45 = 0;
        }
      }

      v25 = CFDictionaryGetValue(a3, @"SetAsDefault");
      if (v25 && CFBooleanGetValue(v25))
      {
        v26 = ABAddressBookCopyDefaultSource(*(v8 + 18));
        if (v26)
        {
          v27 = v26;
          RecordID = ABRecordGetRecordID(v26);
          CFRelease(v27);
        }

        else
        {
          RecordID = -1;
        }

        v34 = CFDictionaryGetValue(a3, @"SetAsDefaultOnlyIfNotSet");
        if (v34)
        {
          CFBooleanGetValue(v34);
        }

        if (DLShouldLog())
        {
          ABRecordGetRecordID(v22);
          _DLLog();
        }

        if (!ValueAtIndex)
        {
          ABAddressBookProcessAddedRecords();
        }

        ABAddressBookSetDefaultSource();
        v35 = ABAddressBookCopyDefaultSource(*(v8 + 18));
        if (v35)
        {
          v36 = v35;
          v37 = ABRecordGetRecordID(v35);
          CFRelease(v36);
        }

        else
        {
          v37 = -1;
        }

        if (v37 != RecordID)
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          v21 = 1;
        }
      }
    }

    v38 = *(v8 + 19);
    if (v38)
    {
      CFRelease(v38);
    }

    *(v8 + 19) = v22;
    if (!v21)
    {
      goto LABEL_92;
    }
  }

  else if (!v31)
  {
    goto LABEL_92;
  }

  v44 = 0;
  ABAddressBookSave(*(v8 + 18), &v44);
  if (v44)
  {
    *a4 = CFStringCreateWithFormat(0, 0, @"Could not save new AddressBook store: %@", v44);
    v33 = v44;
    if (v44)
    {
LABEL_91:
      CFRelease(v33);
    }
  }

LABEL_92:
  if (!*(v8 + 19))
  {
    if (DLShouldLog())
    {
LABEL_98:
      _DLLog();
    }

    return 0xFFFFFFFFLL;
  }

  *(v8 + 106) = 0;
  *(v8 + 20) = 0;
  *(v8 + 21) = 0;
  LOBYTE(v45) = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MaxCompressedImageSize", @"com.apple.SyncAgent", &v45);
  if (v45)
  {
    v40 = AppIntegerValue;
  }

  else
  {
    v40 = 768000;
  }

  *(v8 + 107) = v40;
  ABChangeHistorySetAddressBookClientIdentifier();
  v41 = ABChangeHistoryRegisterClientForSource();
  result = 0;
  *(v8 + 109) = v41;
  v8[442] = 0;
  return result;
}

uint64_t ContactsDataSourceGetVersionFunction(uint64_t a1, CFTypeRef *a2)
{
  v3 = sContactsDataSourceVersionNumber;
  if (!sContactsDataSourceVersionNumber)
  {
    valuePtr = 106;
    v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    sContactsDataSourceVersionNumber = v3;
  }

  *a2 = CFRetain(v3);
  return 0;
}

uint64_t ContactsDataSourceCanSyncWithVersionFunction(uint64_t a1, CFNumberRef number, void *a3)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  v5 = valuePtr;
  if (valuePtr == 104)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    goto LABEL_8;
  }

  if (valuePtr == 103)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    *(a1 + 138) = 1;
LABEL_8:
    v5 = valuePtr;
  }

  if (v5 > 105)
  {
    goto LABEL_13;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *(a1 + 440) = 0;
  if (valuePtr < 103)
  {
    v6 = MEMORY[0x277CBED10];
  }

  else
  {
LABEL_13:
    v6 = MEMORY[0x277CBED28];
  }

  *a3 = *v6;
  return 0;
}

uint64_t ContactsDataSourceMigrateFunction(uint64_t a1, uint64_t a2)
{
  result = 4294967293;
  if (a1 && a2)
  {
    if (DLShouldLog())
    {
      ABRecordGetRecordID(*(a1 + 152));
      ABRecordGetRecordID(*(a2 + 152));
      _DLLog();
    }

    if (ABAddressBookMoveAllRecordsInSourceToSource())
    {
      ContactsDataSourceClearSyncAnchors(a1);
      ContactsDataSourceClearSyncAnchors(a2);
      return 0;
    }

    else
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t ContactsDataSourceRemoveStoreFunction(uint64_t a1, const __CFDictionary *a2)
{
  error = 0;
  _setComputerSyncAnchorForStore(a1, 0);
  _setDeviceSyncAnchorForStore(a1, 0);
  v4 = ABAddressBookCopyDefaultSource(*(a1 + 144));
  if (v4)
  {
    v5 = v4;
    RecordID = ABRecordGetRecordID(v4);
    CFRelease(v5);
  }

  else
  {
    RecordID = -1;
  }

  if (!ABRecordGetRecordID(*(a1 + 152)))
  {
    v8 = ABAddressBookCopyArrayOfAllPeopleInSource(*(a1 + 144), *(a1 + 152));
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          if (!ABAddressBookRemoveRecord(*(a1 + 144), ValueAtIndex, &error) && DLShouldLog())
          {
            ABRecordGetRecordID(*(a1 + 152));
            _DLLog();
          }
        }
      }

      CFRelease(v9);
    }

    v14 = ABAddressBookCopyArrayOfAllGroupsInSource(*(a1 + 144), *(a1 + 152));
    if (v14)
    {
      v15 = v14;
      v16 = CFArrayGetCount(v14);
      if (v16 >= 1)
      {
        v17 = v16;
        for (j = 0; j != v17; ++j)
        {
          v19 = CFArrayGetValueAtIndex(v15, j);
          if (!ABAddressBookRemoveRecord(*(a1 + 144), v19, &error) && DLShouldLog())
          {
            ABRecordGetRecordID(*(a1 + 152));
            _DLLog();
          }
        }
      }

      CFRelease(v15);
    }

LABEL_26:
    if (!a2 || CFDictionaryGetValue(a2, @"ClearDefaultStore") != *MEMORY[0x277CBED28])
    {
      return (ABAddressBookSave(*(a1 + 144), &error) - 1);
    }

    goto LABEL_28;
  }

  v7 = ABRecordGetRecordID(*(a1 + 152));
  if (!ABAddressBookRemoveRecord(*(a1 + 144), *(a1 + 152), &error) && DLShouldLog())
  {
    ABRecordGetRecordID(*(a1 + 152));
    _DLLog();
  }

  if (v7 != RecordID)
  {
    goto LABEL_26;
  }

LABEL_28:
  v20 = ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources();
  if (v20)
  {
    v21 = v20;
    v22 = CFArrayGetCount(v20);
    if (v22 >= 1)
    {
      v23 = v22;
      v24 = 0;
      v25 = *MEMORY[0x277CE9AD0];
      do
      {
        v26 = CFArrayGetValueAtIndex(v21, v24);
        valuePtr = -1;
        v27 = ABRecordCopyValue(v26, v25);
        if (v27)
        {
          v28 = v27;
          CFNumberGetValue(v27, kCFNumberIntType, &valuePtr);
          if (valuePtr)
          {
            CFRetain(v26);
            CFRelease(v28);
            if (v26)
            {
              goto LABEL_38;
            }
          }

          else
          {
            CFRelease(v28);
          }
        }

        ++v24;
      }

      while (v23 != v24);
    }

    v26 = 0;
LABEL_38:
    CFRelease(v21);
  }

  else
  {
    v26 = 0;
  }

  v29 = *(a1 + 152);
  if (v29)
  {
    CFRelease(v29);
  }

  *(a1 + 152) = v26;
  ABAddressBookSetDefaultSource();
  return (ABAddressBookSave(*(a1 + 144), &error) - 1);
}

uint64_t ContactsDataSourceGetSyncTypeAndExchangeSyncAnchors(void *a1, CFTypeRef *a2, const __CFString *a3, const __CFString *cf, const __CFString **a5, CFTypeRef *a6)
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v12 = _copyComputerSyncAnchorKey(a1);
    v13 = ABAddressBookCopyValue();
    if (!v13)
    {
      v14 = ABAddressBookCopyValue();
      if (v14)
      {
        v15 = v14;
        if (CFStringCompare(v14, @"__UNUSED__", 0))
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          ABAddressBookSetValue();
          ABAddressBookSetValue();
          v13 = CFRetain(v15);
        }

        else
        {
          v13 = 0;
        }

        CFRelease(v15);
      }

      else
      {
        v13 = 0;
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v13 = 0;
  }

  if (cf && (a1[21] = CFRetain(cf), CFStringCompare(cf, @"---DATACLASS_CLEARED---", 0) == kCFCompareEqualTo))
  {
    ABChangeHistoryUnregisterClientForSource();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = CFRetain(@"SDSyncTypeFast");
  *a5 = v13;
  v17 = _copyDeviceSyncAnchorKey(a1);
  v18 = ABAddressBookCopyValue();
  if (!v18)
  {
    v19 = ABAddressBookCopyValue();
    if (v19)
    {
      v20 = v19;
      if (CFStringCompare(v19, @"__UNUSED__", 0))
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        ABAddressBookSetValue();
        ABAddressBookSetValue();
        v18 = CFRetain(v20);
      }

      else
      {
        v18 = 0;
      }

      CFRelease(v20);
    }

    else
    {
      v18 = 0;
    }
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v18)
  {
    if (a3 && CFStringCompare(v18, a3, 0) == kCFCompareEqualTo)
    {
      if (!v16)
      {
        goto LABEL_39;
      }

      v26 = *MEMORY[0x277CE9798];
      v31[0] = *MEMORY[0x277CE9798];
      [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
      v27 = 0;
      v28 = 0;
      do
      {
        EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
        if (EntityChangesSinceSequenceNumberForClient)
        {
          v30 = EntityChangesSinceSequenceNumberForClient;
          if (CFDictionaryGetCount(EntityChangesSinceSequenceNumberForClient) >= 1)
          {
            v28 |= [CFDictionaryGetValue(v30 v26)];
          }
        }

        v27 += 4;
      }

      while (v27 != 12);
      if ((v28 & 1) == 0)
      {
        goto LABEL_39;
      }

      if (DLShouldLog())
      {
        goto LABEL_37;
      }
    }

    else if (DLShouldLog())
    {
LABEL_37:
      _DLLog();
    }

    *a2 = CFRetain(@"SDSyncTypeSlow");
LABEL_39:
    CFRelease(v18);
    goto LABEL_43;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = CFRetain(@"SDSyncTypeReset");
LABEL_43:
  v21 = CFLocaleCopyCurrent();
  v22 = CFDateFormatterCreate(0, v21, kCFDateFormatterLongStyle, kCFDateFormatterLongStyle);
  CFDateFormatterSetFormat(v22, @"MMM dd yyyy HH:mm:ss ZZZ");
  Current = CFAbsoluteTimeGetCurrent();
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v22, Current);
  a1[20] = StringWithAbsoluteTime;
  *a6 = CFRetain(StringWithAbsoluteTime);
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return 0;
}

uint64_t ContactsDataSourceClearSyncAnchors(uint64_t a1)
{
  error = 0;
  _setComputerSyncAnchorForStore(a1, 0);
  _setDeviceSyncAnchorForStore(a1, 0);
  v2 = ABAddressBookSave(*(a1 + 144), &error);
  if (error)
  {
    CFRelease(error);
  }

  return (v2 - 1);
}

uint64_t ContactsDataSourceClearAllRecords(uint64_t a1)
{
  v2 = ABAddressBookCopyArrayOfAllGroupsInSource(*(a1 + 144), *(a1 + 152));
  if (v2)
  {
    v3 = v2;
    _RemoveRecordsFromAddressBook(a1, v2, 0);
    CFRelease(v3);
  }

  v4 = ABAddressBookCopyArrayOfAllPeopleInSource(*(a1 + 144), *(a1 + 152));
  if (v4)
  {
    v5 = v4;
    _RemoveRecordsFromAddressBook(a1, v4, _SaveClearedPersonsSounds);
    CFRelease(v5);
  }

  if ((*(a1 + 436) & 0x80000000) == 0)
  {
    ABChangeHistoryClearChangesUpToSequenceNumberForClient();
  }

  v6 = *(a1 + 160);
  if (!v6)
  {
    v6 = CFRetain(@"---");
    *(a1 + 160) = v6;
  }

  _setDeviceSyncAnchorForStore(a1, v6);
  return 0;
}

uint64_t ContactsDataSourceGetChanges(uint64_t a1, __CFDictionary **a2, const __CFAllocator *a3, void *a4)
{
  v6 = a1;
  v89[5] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBED28];
  *a3 = *MEMORY[0x277CBED28];
  v8 = *(a1 + 140);
  if (v8 == 8)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    allocator = a3;
    v79 = a2;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    v86 = Mutable;
    if (*(v6 + 176))
    {
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9888], @"com.apple.contacts.Email Address", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9A18], @"com.apple.contacts.Phone Number", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9828], @"com.apple.contacts.Street Address", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9A58], @"com.apple.contacts.URL", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9A38], @"com.apple.contacts.Related Name", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE98E8], @"com.apple.contacts.IM", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9870], @"com.apple.contacts.Date", Mutable);
    }

    v19 = *MEMORY[0x277CE97C0];
    keya = *MEMORY[0x277CE97D0];
    v88[0] = *MEMORY[0x277CE97D0];
    v88[1] = v19;
    v20 = *MEMORY[0x277CE97B8];
    v88[2] = *MEMORY[0x277CE97B8];
    [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
    EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
    if (!EntityChangesSinceSequenceNumberForClient)
    {
      goto LABEL_31;
    }

    v22 = EntityChangesSinceSequenceNumberForClient;
    if (CFDictionaryGetCount(EntityChangesSinceSequenceNumberForClient) < 1)
    {
      goto LABEL_31;
    }

    Value = CFDictionaryGetValue(v22, keya);
    theArraya = CFDictionaryGetValue(v22, v19);
    v24 = CFDictionaryGetValue(v22, v20);
    Count = CFArrayGetCount(Value);
    if (Count < 1)
    {
      goto LABEL_31;
    }

    v26 = Count;
    v27 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v27);
      v29 = CFArrayGetValueAtIndex(theArraya, v27);
      v30 = CFArrayGetValueAtIndex(v24, v27);
      PersonWithRecordID = ABAddressBookGetPersonWithRecordID(*(v6 + 144), ValueAtIndex);
      if (PersonWithRecordID)
      {
        v32 = ABRecordCopyValue(PersonWithRecordID, v29);
        if (!v32 || (v33 = v32, IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v32, v30), CFRelease(v33), v35 = IndexForIdentifier == -1, v6 = a1, v35))
        {
          v36 = CFStringCreateWithFormat(0, 0, @"%d/%d/%d", v29, ValueAtIndex, v30);
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
          }

          CFDictionarySetValue(Mutable, v36, v36);
          if (v36)
          {
            CFRelease(v36);
          }

          goto LABEL_29;
        }

        if (DLShouldLog())
        {
          v73 = v29;
          v74 = ValueAtIndex;
          v72 = v30;
LABEL_28:
          _DLLog();
        }
      }

      else if (DLShouldLog())
      {
        v73 = v29;
        v74 = ValueAtIndex;
        v72 = v30;
        goto LABEL_28;
      }

LABEL_29:
      if (v26 == ++v27)
      {
        v86 = Mutable;
LABEL_31:
        v37 = *MEMORY[0x277CE97A0];
        v87[0] = keya;
        v87[1] = v37;
        [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:{2, v72, v73, v74}];
        v38 = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
        v39 = v79;
        if (!v38)
        {
          goto LABEL_125;
        }

        v40 = v38;
        if (CFDictionaryGetCount(v38) < 1)
        {
          goto LABEL_125;
        }

        v41 = CFDictionaryGetValue(v40, keya);
        v42 = CFDictionaryGetValue(v40, v37);
        if (v41)
        {
          v43 = CFArrayGetCount(v41);
        }

        else
        {
          v43 = 0;
        }

        v60 = CFArrayGetCount(v41);
        if (v60 != CFArrayGetCount(v42))
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          goto LABEL_125;
        }

        if (v43 < 1)
        {
LABEL_125:
          if (DLShouldLog())
          {
            _DLLog();
          }

          if ((*(v6 + 441) & 1) == 0)
          {
            _saveDeviceSyncAnchorAndClearChangeHistory(v6);
          }

          v44 = 0;
          *v39 = v86;
          *allocator = *MEMORY[0x277CBED10];
          *(v6 + 140) = 9;
          return v44;
        }

        if (DLShouldLog())
        {
          _DLLog();
        }

        v61 = 0;
        v62 = 0;
        v63 = 0;
        v64 = *MEMORY[0x277CBECE8];
        while (2)
        {
          v65 = CFArrayGetValueAtIndex(v41, v61);
          v66 = CFArrayGetValueAtIndex(v42, v61);
          if (v66 > 1)
          {
            if (v66 == 2)
            {
              v69 = CFStringCreateWithFormat(0, 0, @"Group/%d", v65);
              v70 = v86;
              if (!v86)
              {
                v70 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
                v86 = v70;
              }

              CFDictionarySetValue(v70, v69, v69);
              if (v69)
              {
                CFRelease(v69);
              }

              goto LABEL_115;
            }

            if (!DLShouldLog())
            {
              goto LABEL_115;
            }
          }

          else
          {
            GroupWithRecordID = ABAddressBookGetGroupWithRecordID(*(a1 + 144), v65);
            if (GroupWithRecordID)
            {
              v68 = GroupWithRecordID;
              if (v62)
              {
                if (v63)
                {
                  goto LABEL_102;
                }

LABEL_118:
                v63 = CFSetCreateMutable(0, 0, 0);
              }

              else
              {
                v62 = CFArrayCreateMutable(v64, 0, MEMORY[0x277CBF128]);
                if (!v63)
                {
                  goto LABEL_118;
                }
              }

LABEL_102:
              if (!v86)
              {
                v86 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
              }

              if (!CFSetContainsValue(v63, v65))
              {
                CFSetAddValue(v63, v65);
                CFArrayAppendValue(v62, v68);
              }

LABEL_115:
              if (v43 == ++v61)
              {
                v39 = v79;
                if (v62)
                {
                  _AccumulateGroups(&v86, v62);
                  CFRelease(v62);
                }

                v6 = a1;
                if (v63)
                {
                  CFRelease(v63);
                }

                goto LABEL_125;
              }

              continue;
            }

            if (!DLShouldLog())
            {
              goto LABEL_115;
            }
          }

          break;
        }

        _DLLog();
        goto LABEL_115;
      }
    }
  }

  if (v8)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    v44 = 0;
    *a2 = 0;
    *a3 = *MEMORY[0x277CBED10];
    return v44;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v10 = *MEMORY[0x277CE97D0];
  v11 = *MEMORY[0x277CE97A0];
  v89[0] = *MEMORY[0x277CE97D0];
  v89[1] = v11;
  v12 = *MEMORY[0x277CE97A8];
  v13 = *MEMORY[0x277CE97B0];
  v89[2] = *MEMORY[0x277CE97A8];
  v89[3] = v13;
  v89[4] = *MEMORY[0x277CE97C8];
  [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:5];
  v14 = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
  if (!v14 || (v15 = v14, CFDictionaryGetCount(v14) < 1))
  {
    v44 = 0;
    goto LABEL_85;
  }

  v16 = CFDictionaryGetValue(v15, v10);
  v17 = CFDictionaryGetValue(v15, v11);
  CFDictionaryGetValue(v15, v12);
  key = CFDictionaryGetValue(v15, v13);
  if (v16)
  {
    theArray = CFArrayGetCount(v16);
  }

  else
  {
    theArray = 0;
  }

  v45 = CFArrayGetCount(v16);
  if (v45 != CFArrayGetCount(v17))
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a4)
    {
      *a4 = @"The changedIDs and changeTypes counts do not match";
      CFRetain(@"The changedIDs and changeTypes counts do not match");
    }

    goto LABEL_82;
  }

  if (theArray < 1)
  {
LABEL_82:
    if (*a4)
    {
      v44 = 0xFFFFFFFFLL;
    }

    else
    {
      v44 = 0;
    }

    goto LABEL_85;
  }

  v75 = a4;
  v80 = a2;
  if (DLShouldLog())
  {
    v73 = v17;
    _DLLog();
  }

  v46 = 0;
  v47 = 0;
  v48 = 0;
  allocatora = *MEMORY[0x277CBECE8];
  v76 = *MEMORY[0x277CBED10];
  do
  {
    while (1)
    {
      v49 = CFArrayGetValueAtIndex(v16, v46);
      HasImageData = CFArrayGetValueAtIndex(key, v46);
      v51 = CFArrayGetValueAtIndex(v17, v46);
      v52 = v51;
      if (v51 > 1)
      {
        break;
      }

      v53 = ABAddressBookGetPersonWithRecordID(*(a1 + 144), v49);
      if (!v53)
      {
        if (!DLShouldLog())
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      v54 = v53;
      if (!*(a1 + 176))
      {
        *(a1 + 176) = CFArrayCreateMutable(allocatora, 0, MEMORY[0x277CBF128]);
      }

      if (v48)
      {
        if (v47)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v48 = CFSetCreateMutable(0, 0, 0);
        if (v47)
        {
LABEL_51:
          if (v48)
          {
            goto LABEL_52;
          }

          goto LABEL_76;
        }
      }

      v47 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      if (v48)
      {
LABEL_52:
        if (!CFSetContainsValue(v48, v49))
        {
          CFSetAddValue(v48, v49);
          CFArrayAppendValue(*(a1 + 176), v54);
          v55 = *(a1 + 184);
          if (!v55)
          {
            v55 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
            *(a1 + 184) = v55;
          }

          if (!v52)
          {
            HasImageData = ABPersonHasImageData(v54);
            v55 = *(a1 + 184);
          }

          if (HasImageData)
          {
            v56 = v7;
          }

          else
          {
            v56 = v76;
          }

          CFDictionarySetValue(v55, v49, v56);
        }

        goto LABEL_72;
      }

LABEL_76:
      if (++v46 == theArray)
      {
        goto LABEL_133;
      }
    }

    if (v51 != 2)
    {
      if (!DLShouldLog())
      {
        goto LABEL_72;
      }

LABEL_71:
      _DLLog();
      goto LABEL_72;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    v57 = CFStringCreateWithFormat(0, 0, @"%d", v49, v73);
    if (!v47)
    {
      v47 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    }

    CFDictionarySetValue(v47, v57, v57);
    if (v57)
    {
      CFRelease(v57);
    }

LABEL_72:
    ++v46;
  }

  while (v46 != theArray);
  if (v48)
  {
    CFRelease(v48);
  }

LABEL_133:
  if (*v75)
  {
    v44 = 0xFFFFFFFFLL;
  }

  else
  {
    v44 = 0;
  }

  a2 = v80;
  if (!v47)
  {
LABEL_85:
    v47 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  }

  if (*(a1 + 176) && v47)
  {
    _AccumulateContacts(a1, v47);
  }

  *a2 = v47;
  v58 = *(a1 + 176);
  if (!v58 || (v59 = *(a1 + 432), CFArrayGetCount(v58) == v59))
  {
    *(a1 + 140) = 8;
  }

  return v44;
}

uint64_t ContactsDataSourceGetAllRecords(uint64_t a1, CFMutableDictionaryRef *a2, void *a3)
{
  *a3 = *MEMORY[0x277CBED28];
  v6 = *(a1 + 140);
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        v22 = *MEMORY[0x277CE9A58];
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
        _AccumulatePropertiesForType(a1, v22, @"com.apple.contacts.URL", Mutable);
        *a2 = Mutable;
        v9 = 5;
      }

      else
      {
        v10 = *MEMORY[0x277CE9A38];
        v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
        _AccumulatePropertiesForType(a1, v10, @"com.apple.contacts.Related Name", v11);
        *a2 = v11;
        v9 = 6;
      }

      goto LABEL_24;
    }

    if (v6 == 6)
    {
      v26 = *MEMORY[0x277CE98E8];
      v27 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v26, @"com.apple.contacts.IM", v27);
      *a2 = v27;
      v9 = 7;
      goto LABEL_24;
    }

    if (v6 == 7)
    {
      v14 = *MEMORY[0x277CE9870];
      v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v14, @"com.apple.contacts.Date", v15);
      *a2 = v15;
LABEL_28:
      *(a1 + 140) = 9;
LABEL_29:
      *a3 = *MEMORY[0x277CBED10];
      if ((*(a1 + 441) & 1) == 0 && (*(a1 + 442) & 1) == 0)
      {
        _saveDeviceSyncAnchorAndClearChangeHistory(a1);
      }

      return 0;
    }

LABEL_26:
    if (DLShouldLog())
    {
      _DLLog();
    }

    goto LABEL_28;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v24 = *MEMORY[0x277CE9A18];
      v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v24, @"com.apple.contacts.Phone Number", v25);
      *a2 = v25;
      v9 = 3;
    }

    else
    {
      v12 = *MEMORY[0x277CE9828];
      v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v12, @"com.apple.contacts.Street Address", v13);
      *a2 = v13;
      v9 = 4;
    }

    goto LABEL_24;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = *MEMORY[0x277CE9888];
      v8 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v7, @"com.apple.contacts.Email Address", v8);
      *a2 = v8;
      v9 = 2;
LABEL_24:
      *(a1 + 140) = v9;
      return 0;
    }

    goto LABEL_26;
  }

  if (!*(a1 + 176))
  {
    v16 = ABAddressBookCopyArrayOfAllPeopleInSource(*(a1 + 144), *(a1 + 152));
    *(a1 + 176) = v16;
    if (!v16)
    {
      *a2 = 0;
      goto LABEL_37;
    }
  }

  v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  _AccumulateContacts(a1, v17);
  *a2 = v17;
  if (!v17)
  {
LABEL_37:
    v21 = 9;
    goto LABEL_38;
  }

  v18 = *(a1 + 432);
  Count = CFArrayGetCount(*(a1 + 176));
  v20 = DLShouldLog();
  if (Count != v18)
  {
    if (v20)
    {
      CFArrayGetCount(*(a1 + 176));
      _DLLog();
    }

    if (!*(a1 + 140))
    {
      return 0;
    }

    goto LABEL_39;
  }

  if (v20)
  {
    _DLLog();
  }

  v21 = 1;
LABEL_38:
  *(a1 + 140) = v21;
LABEL_39:
  v29 = ABAddressBookCopyArrayOfAllGroupsInSource(*(a1 + 144), *(a1 + 152));
  if (v29)
  {
    v30 = v29;
    _AccumulateGroups(a2, v29);
    CFRelease(v30);
  }

  if (*(a1 + 140) == 9)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t ContactsDataSourceProcessChanges(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, void *a4, const __CFDictionary *a5)
{
  v7 = a1;
  if (*(a1 + 443) == 1)
  {
    error = 0;
    if (!ABRecordSetValue(*(a1 + 152), *MEMORY[0x277CE9A88], *MEMORY[0x277CBED28], &error))
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    *(v7 + 443) = 0;
  }

  if (*(v7 + 441) == 1 && (*(v7 + 442) & 1) == 0)
  {
    _saveDeviceSyncAnchorAndClearChangeHistory(v7);
  }

  *(v7 + 240) = 0;
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    *(v7 + 137) = 0;
    CFDictionaryApplyFunction(theDict, _ChangesApplierFunction, v7);
    if (*(v7 + 137) == 1)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      ABProcessAddedImages();
    }

    v72 = v7;
    if ((*(v7 + 136) & 1) == 0)
    {
      v8 = a5 ? CFDictionaryGetValue(a5, @"SyncDeviceLinkAllRecordsOfPulledEntityTypeSentKey") : *MEMORY[0x277CBED28];
      if ((*(v7 + 138) & 1) != 0 || v8 && CFBooleanGetValue(v8) == 1)
      {
        ABAddressBookProcessAddedRecords();
        v9 = *(v7 + 200);
        if (v9)
        {
          CFDictionaryApplyFunction(v9, _UpdateContactRemapping, v7);
          v10 = *(v7 + 200);
          if (v10)
          {
            CFRelease(v10);
            *(v7 + 200) = 0;
          }
        }

        if (*(v7 + 224))
        {
          v11 = *(v7 + 208);
          if (v11)
          {
            CFDictionaryApplyFunction(v11, _UpdateGroupRemapping, v7);
            v12 = *(v7 + 208);
            if (v12)
            {
              CFRelease(v12);
              *(v7 + 208) = 0;
            }
          }

          error = 0;
          Count = CFArrayGetCount(*(v7 + 224));
          v14 = CFArrayGetCount(*(v7 + 232));
          if (v14 != Count && DLShouldLog())
          {
            _DLLog();
          }

          if (v14 >= Count)
          {
            v15 = Count;
          }

          else
          {
            v15 = v14;
          }

          v65 = v15;
          if (v15 >= 1)
          {
            v16 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 224), v16);
              v18 = CFArrayGetValueAtIndex(*(v7 + 232), v16);
              v19 = v18;
              v67 = v16;
              if (v18)
              {
                v20 = CFArrayGetCount(v18);
                if (v20 >= 1)
                {
                  Mutable = CFSetCreateMutable(0, v20, MEMORY[0x277CBF158]);
                  goto LABEL_44;
                }
              }

              else
              {
                v20 = 0;
              }

              Mutable = 0;
LABEL_44:
              v22 = ABGroupCopyArrayOfAllMembersAndSubgroups();
              v23 = v22;
              if (!v22)
              {
                v24 = 0;
LABEL_50:
                theSet = 0;
                goto LABEL_51;
              }

              v24 = CFArrayGetCount(v22);
              if (v24 < 1)
              {
                goto LABEL_50;
              }

              v25 = CFSetCreateMutable(0, v24, MEMORY[0x277CBF158]);
              for (i = 0; i != v24; ++i)
              {
                v27 = CFArrayGetValueAtIndex(v23, i);
                CFSetAddValue(v25, v27);
              }

              theSet = v25;
LABEL_51:
              record = ValueAtIndex;
              if (v20 >= 1)
              {
                v28 = 0;
                *property = v19;
                do
                {
                  v29 = CFArrayGetValueAtIndex(v19, v28);
                  Value = *(v7 + 248);
                  if (Value)
                  {
                    Value = CFDictionaryGetValue(Value, v29);
                  }

                  if (Value)
                  {
                    v29 = Value;
                  }

                  if (!recordIdentifierIsLocal(v29))
                  {
                    if (DLShouldLog())
                    {
                      _DLLog();
                    }

                    goto LABEL_81;
                  }

                  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v29, @"/");
                  v32 = ArrayBySeparatingStrings;
                  if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) == 2)
                  {
                    v33 = CFArrayGetValueAtIndex(v32, 1);
                    if (!v33)
                    {
                      goto LABEL_80;
                    }

                    IntValue = CFStringGetIntValue(v33);
                    GroupWithRecordID = ABAddressBookGetGroupWithRecordID(*(v7 + 144), IntValue);
                    v36 = 1;
                    if (!GroupWithRecordID)
                    {
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                    if (!v29)
                    {
                      goto LABEL_79;
                    }

                    v37 = CFStringGetIntValue(v29);
                    GroupWithRecordID = ABAddressBookGetPersonWithRecordID(*(v7 + 144), v37);
                    v36 = 0;
                    if (!GroupWithRecordID)
                    {
LABEL_62:
                      if (DLShouldLog())
                      {
                        _DLLog();
                      }

                      goto LABEL_79;
                    }
                  }

                  CFSetAddValue(Mutable, GroupWithRecordID);
                  if (!theSet || !CFSetContainsValue(theSet, GroupWithRecordID))
                  {
                    if (DLShouldLog())
                    {
                      ABRecordGetRecordID(record);
                      v7 = v72;
                      _DLLog();
                    }

                    if (v36)
                    {
                      ABGroupAddSubgroup();
                    }

                    else
                    {
                      if (!ABGroupAddMember(record, GroupWithRecordID, &error) && DLShouldLog())
                      {
                        ABRecordGetRecordID(GroupWithRecordID);
                        ABRecordGetRecordID(record);
                        _DLLog();
                      }

                      if (error)
                      {
                        CFRelease(error);
                        error = 0;
                      }
                    }
                  }

LABEL_79:
                  v19 = *property;
                  if (v32)
                  {
LABEL_80:
                    CFRelease(v32);
                  }

LABEL_81:
                  ++v28;
                }

                while (v20 != v28);
              }

              if (v24 >= 1)
              {
                for (j = 0; j != v24; ++j)
                {
                  v39 = CFArrayGetValueAtIndex(v23, j);
                  if (!Mutable || !CFSetContainsValue(Mutable, v39))
                  {
                    if (DLShouldLog())
                    {
                      ABRecordGetRecordID(v39);
                      ABRecordGetRecordID(record);
                      v7 = v72;
                      _DLLog();
                    }

                    if (!ABGroupRemoveMember(record, v39, &error) && DLShouldLog())
                    {
                      ABRecordGetRecordID(v39);
                      ABRecordGetRecordID(record);
                      _DLLog();
                    }

                    if (error)
                    {
                      CFRelease(error);
                      error = 0;
                    }
                  }
                }
              }

              if (v23)
              {
                CFRelease(v23);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              if (theSet)
              {
                CFRelease(theSet);
              }

              v16 = v67 + 1;
            }

            while (v67 + 1 != v65);
          }

          v40 = *(v7 + 224);
          if (v40)
          {
            CFRelease(v40);
            *(v7 + 224) = 0;
          }
        }

        *(v7 + 136) = 1;
      }
    }

    v41 = *(v7 + 216);
    if (v41)
    {
      v42 = CFArrayGetCount(v41);
      if (v42 >= 1)
      {
        v43 = v42;
        v44 = 0;
        v45 = "/Library/Caches/com.apple.xbs/Sources/Sync/DataSources/ContactsDataSource.m";
        do
        {
          v46 = CFArrayGetValueAtIndex(*(v7 + 216), v44);
          v47 = CFStringCreateArrayBySeparatingStrings(0, v46, @"/");
          if (DLShouldLog())
          {
            _DLLog();
          }

          if (!v47 || CFArrayGetCount(v47) != 3)
          {
            if (DLShouldLog())
            {
              _DLLog();
            }

            if (!v47)
            {
              goto LABEL_144;
            }

            goto LABEL_143;
          }

          v48 = v43;
          v49 = CFArrayGetValueAtIndex(v47, 0);
          v50 = CFArrayGetValueAtIndex(v47, 1);
          v51 = v45;
          v52 = CFArrayGetValueAtIndex(v47, 2);
          propertya = CFStringGetIntValue(v49);
          v53 = CFStringGetIntValue(v50);
          v54 = v52;
          v45 = v51;
          v55 = CFStringGetIntValue(v54);
          error = 0;
          if (DLShouldLog())
          {
            _DLLog();
          }

          PersonWithRecordID = ABAddressBookGetPersonWithRecordID(*(v72 + 144), v53);
          if (PersonWithRecordID)
          {
            v57 = PersonWithRecordID;
            v58 = ABRecordCopyValue(PersonWithRecordID, propertya);
            if (v58)
            {
              v59 = v58;
              IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v58, v55);
              if (IndexForIdentifier == -1)
              {
                v45 = v51;
                v43 = v48;
                if (DLShouldLog())
                {
                  _DLLog();
                }
              }

              else
              {
                v61 = IndexForIdentifier;
                if (ABMultiValueGetCount(v59) < 2)
                {
                  MutableCopy = 0;
                }

                else
                {
                  MutableCopy = ABMultiValueCreateMutableCopy(v59);
                  ABMultiValueRemoveValueAndLabelAtIndex(MutableCopy, v61);
                }

                v45 = v51;
                v43 = v48;
                if (!ABRecordRemoveValue(v57, propertya, &error) && DLShouldLog())
                {
                  ABRecordGetRecordID(v57);
                  _DLLog();
                }

                if (error)
                {
                  CFRelease(error);
                  error = 0;
                }

                if (MutableCopy)
                {
                  ABMultiValueSetImmutable();
                  if (!ABRecordSetValue(v57, propertya, MutableCopy, &error) && DLShouldLog())
                  {
                    ABRecordGetRecordID(v57);
                    _DLLog();
                  }

                  if (error)
                  {
                    CFRelease(error);
                    error = 0;
                  }

                  CFRelease(MutableCopy);
                }
              }

              CFRelease(v59);
              goto LABEL_142;
            }

            v43 = v48;
            if (DLShouldLog())
            {
LABEL_125:
              _DLLog();
            }
          }

          else
          {
            v43 = v48;
            if (DLShouldLog())
            {
              goto LABEL_125;
            }
          }

LABEL_142:
          v7 = v72;
LABEL_143:
          CFRelease(v47);
LABEL_144:
          ++v44;
        }

        while (v43 != v44);
      }

      v63 = *(v7 + 216);
      if (v63)
      {
        CFRelease(v63);
      }

      *(v7 + 216) = 0;
    }
  }

  *a4 = *(v7 + 240);
  return 0;
}

uint64_t ContactsDataSourceCommit(uint64_t a1, void *a2)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  v4 = ABAddressBookCopyArrayOfAllPeopleInSource(*(a1 + 144), *(a1 + 152));
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        _RestoreClearedPersonsSound(*(a1 + 408), ValueAtIndex, 0xFFFFFFFFLL);
        _RestoreClearedPersonsSound(*(a1 + 416), ValueAtIndex, 4294967294);
      }
    }

    CFRelease(v5);
  }

  else if (DLShouldLog())
  {
    _DLLog();
  }

  if (*(a1 + 441) == 1 && (*(a1 + 442) & 1) == 0)
  {
    _saveDeviceSyncAnchorAndClearChangeHistory(a1);
  }

  error = 0;
  v10 = *(a1 + 168);
  if (!v10)
  {
    v10 = CFRetain(@"---");
    *(a1 + 168) = v10;
  }

  _setComputerSyncAnchorForStore(a1, v10);
  v11 = ABAddressBookSave(*(a1 + 144), &error);
  if (!v11 && DLShouldLog())
  {
    _DLLog();
  }

  if (error)
  {
    CFRelease(error);
  }

  if (v11)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = @"Can't commit Address Book";
    CFRetain(@"Can't commit Address Book");
  }

  return 0xFFFFFFFFLL;
}

uint64_t ContactsDataSourceDeleteDataSource(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    CFRelease(v2);
    a1[18] = 0;
  }

  v3 = a1[19];
  if (v3)
  {
    CFRelease(v3);
    a1[19] = 0;
  }

  v4 = a1[20];
  if (v4)
  {
    CFRelease(v4);
    a1[20] = 0;
  }

  v5 = a1[21];
  if (v5)
  {
    CFRelease(v5);
    a1[21] = 0;
  }

  v6 = a1[22];
  if (v6)
  {
    CFRelease(v6);
    a1[22] = 0;
  }

  v7 = a1[23];
  if (v7)
  {
    CFRelease(v7);
    a1[23] = 0;
  }

  v8 = a1[24];
  if (v8)
  {
    CFRelease(v8);
    a1[24] = 0;
  }

  v9 = a1[25];
  if (v9)
  {
    CFRelease(v9);
    a1[25] = 0;
  }

  v10 = a1[26];
  if (v10)
  {
    CFRelease(v10);
    a1[26] = 0;
  }

  v11 = a1[27];
  if (v11)
  {
    CFRelease(v11);
    a1[27] = 0;
  }

  v12 = a1[28];
  if (v12)
  {
    CFRelease(v12);
    a1[28] = 0;
  }

  v13 = a1[29];
  if (v13)
  {
    CFRelease(v13);
    a1[29] = 0;
  }

  v14 = a1[31];
  if (v14)
  {
    CFRelease(v14);
    a1[31] = 0;
  }

  v15 = a1[32];
  if (v15)
  {
    CFRelease(v15);
    a1[32] = 0;
  }

  v16 = a1[33];
  if (v16)
  {
    CFRelease(v16);
    a1[33] = 0;
  }

  v17 = a1[34];
  if (v17)
  {
    CFRelease(v17);
    a1[34] = 0;
  }

  v18 = a1[35];
  if (v18)
  {
    CFRelease(v18);
    a1[35] = 0;
  }

  v19 = a1[36];
  if (v19)
  {
    CFRelease(v19);
    a1[36] = 0;
  }

  v20 = a1[37];
  if (v20)
  {
    CFRelease(v20);
    a1[37] = 0;
  }

  v21 = a1[38];
  if (v21)
  {
    CFRelease(v21);
    a1[38] = 0;
  }

  v22 = a1[39];
  if (v22)
  {
    CFRelease(v22);
    a1[39] = 0;
  }

  v23 = a1[40];
  if (v23)
  {
    CFRelease(v23);
    a1[40] = 0;
  }

  v24 = a1[41];
  if (v24)
  {
    CFRelease(v24);
    a1[41] = 0;
  }

  v25 = a1[42];
  if (v25)
  {
    CFRelease(v25);
    a1[42] = 0;
  }

  v26 = a1[43];
  if (v26)
  {
    CFRelease(v26);
    a1[43] = 0;
  }

  v27 = a1[44];
  if (v27)
  {
    CFRelease(v27);
    a1[44] = 0;
  }

  v28 = a1[45];
  if (v28)
  {
    CFRelease(v28);
    a1[45] = 0;
  }

  v29 = a1[46];
  if (v29)
  {
    CFRelease(v29);
    a1[46] = 0;
  }

  v30 = a1[47];
  if (v30)
  {
    CFRelease(v30);
    a1[47] = 0;
  }

  v31 = a1[48];
  if (v31)
  {
    CFRelease(v31);
    a1[48] = 0;
  }

  v32 = a1[49];
  if (v32)
  {
    CFRelease(v32);
    a1[49] = 0;
  }

  v33 = a1[50];
  if (v33)
  {
    CFRelease(v33);
    a1[50] = 0;
  }

  v34 = a1[52];
  if (v34)
  {
    CFRelease(v34);
    a1[52] = 0;
  }

  v35 = a1[51];
  if (v35)
  {
    CFRelease(v35);
  }

  free(a1);
  return 0;
}

uint64_t ContactsDataSourceGetEntityTypeProcessOrder(uint64_t a1, __CFArray **a2)
{
  Mutable = *(a1 + 400);
  if (!Mutable)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = MEMORY[0x277CBF128];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v7 = CFArrayCreateMutable(v5, 0, v6);
    CFArrayAppendValue(v7, @"com.apple.contacts.Contact");
    CFArrayAppendValue(v7, @"com.apple.contacts.Group");
    CFArrayAppendValue(Mutable, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v8, @"com.apple.contacts.Email Address");
    CFArrayAppendValue(Mutable, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v9, @"com.apple.contacts.Phone Number");
    CFArrayAppendValue(Mutable, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v10, @"com.apple.contacts.Street Address");
    CFArrayAppendValue(Mutable, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v11, @"com.apple.contacts.URL");
    CFArrayAppendValue(Mutable, v11);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v12, @"com.apple.contacts.Related Name");
    CFArrayAppendValue(Mutable, v12);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v13, @"com.apple.contacts.IM");
    CFArrayAppendValue(Mutable, v13);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v14, @"com.apple.contacts.Date");
    CFArrayAppendValue(Mutable, v14);
    if (v14)
    {
      CFRelease(v14);
    }

    *(a1 + 400) = Mutable;
  }

  *a2 = Mutable;
  return 0;
}

uint64_t _makeAccountForSource(uint64_t a1, const void *a2, uint64_t a3)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  error = 0;
  v5 = ABAccountCreate();
  if (v5)
  {
    v6 = v5;
    if (ABAccountSetIdentifier())
    {
      if (ABAddressBookAddRecord(*(a1 + 144), v6, &error))
      {
        ABAddressBookProcessAddedRecords();
        if (ABAddressBookSetAccountForSource())
        {
          v7 = 1;
LABEL_21:
          CFRelease(v6);
          return v7;
        }

        if (!DLShouldLog())
        {
LABEL_18:
          if (error)
          {
            CFRelease(error);
            v7 = 0;
            error = 0;
          }

          else
          {
            v7 = 0;
          }

          goto LABEL_21;
        }

        ABRecordGetRecordID(a2);
      }

      else if (!DLShouldLog())
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!DLShouldLog())
      {
        goto LABEL_18;
      }

      ABRecordGetRecordID(a2);
    }

    _DLLog();
    goto LABEL_18;
  }

  if (DLShouldLog())
  {
    ABRecordGetRecordID(a2);
    _DLLog();
  }

  return 1;
}

void _setComputerSyncAnchorForStore(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = _copyComputerSyncAnchorKey(a1);
    if (DLShouldLog())
    {
      _DLLog();
    }

    ABAddressBookSetValue();
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void _setDeviceSyncAnchorForStore(uint64_t a1, uint64_t a2)
{
  v2 = _copyDeviceSyncAnchorKey(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  ABAddressBookSetValue();
  if (v2)
  {

    CFRelease(v2);
  }
}

CFStringRef _copyComputerSyncAnchorKey(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1)
  {
    RecordID = ABRecordGetRecordID(v1);
  }

  else
  {
    RecordID = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(0, 0, @"ComputerStoreSyncAnchor-%d", RecordID);
}

CFStringRef _copyDeviceSyncAnchorKey(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 152)) != 0)
  {
    RecordID = ABRecordGetRecordID(v1);
  }

  else
  {
    RecordID = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(0, 0, @"DeviceStoreSyncAnchor-%d", RecordID);
}

void _RemoveRecordsFromAddressBook(uint64_t a1, CFArrayRef theArray, void (*a3)(uint64_t, const void *))
{
  error = 0;
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (a3)
      {
        a3(a1, ValueAtIndex);
      }

      if (!ABAddressBookRemoveRecord(*(a1 + 144), ValueAtIndex, &error) && DLShouldLog())
      {
        _DLLog();
      }

      if (error)
      {
        CFRelease(error);
        error = 0;
      }
    }
  }
}

void _SaveClearedPersonsSounds(uint64_t a1, uint64_t a2)
{
  _SaveClearedPersonsSound(*(a1 + 408), a2, 0xFFFFFFFFLL);
  v4 = *(a1 + 416);

  _SaveClearedPersonsSound(v4, a2, 4294967294);
}

void _SaveClearedPersonsSound(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v6 = ABPersonCopyCompositeName();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = MEMORY[0x25F849DC0](a2, a3);
  if (!v8)
  {
    v8 = CFRetain(@"<null>");
  }

  Value = CFDictionaryGetValue(a1, v7);
  if (!Value)
  {
    if (CFStringCompare(v8, @"<null>", 0) && DLShouldLog())
    {
      _DLLog();
    }

    CFDictionaryAddValue(a1, v7, v8);
    goto LABEL_20;
  }

  v10 = Value;
  if (CFStringCompare(Value, v8, 0))
  {
    v11 = CFStringCompare(v10, @"<conflict>", 0);
    v12 = DLShouldLog();
    if (v11)
    {
      if (v12)
      {
        _DLLog();
      }

      CFDictionaryReplaceValue(a1, v7, @"<conflict>");
      goto LABEL_20;
    }

    if (v12)
    {
      goto LABEL_19;
    }
  }

  else if (CFStringCompare(v8, @"<null>", 0) && DLShouldLog())
  {
LABEL_19:
    _DLLog();
  }

LABEL_20:
  CFRelease(v7);
  if (v8)
  {

    CFRelease(v8);
  }
}

void _AccumulateContacts(uint64_t a1, __CFDictionary *a2)
{
  v3 = *(a1 + 176);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    property = *MEMORY[0x277CE98C0];
    v35 = *MEMORY[0x277CE9980];
    v34 = *MEMORY[0x277CE99A0];
    v33 = *MEMORY[0x277CE9A30];
    v31 = *MEMORY[0x277CE99B0];
    v32 = *MEMORY[0x277CE9A50];
    v29 = *MEMORY[0x277CE9978];
    v30 = *MEMORY[0x277CE98B8];
    v28 = *MEMORY[0x277CE9998];
    v27 = *MEMORY[0x277CE99C0];
    v25 = *MEMORY[0x277CE9878];
    v26 = *MEMORY[0x277CE9958];
    v24 = *MEMORY[0x277CE99B8];
    v4 = *MEMORY[0x277CE9858];
    v5 = *MEMORY[0x277CE9970];
    v6 = *MEMORY[0x277CE9968];
    otherNumber = *MEMORY[0x277CE9960];
    v7 = *MEMORY[0x277CBED28];
    v22 = *MEMORY[0x277CBED10];
    v8 = *(a1 + 432);
    do
    {
      if (Count <= v8)
      {
        return;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), v8);
      RecordID = ABRecordGetRecordID(ValueAtIndex);
      v11 = CFStringCreateWithFormat(0, 0, @"%d", RecordID);
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.contacts.Contact");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, property, @"first name");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v35, @"last name");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v34, @"middle name");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v33, @"title");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v32, @"suffix");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v31, @"nickname");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v30, @"first name yomi");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v29, @"last name yomi");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v28, @"middle name yomi");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v27, @"company name");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v26, @"job title");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v25, @"department");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v24, @"notes");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v4, @"birthday");
      v13 = ABRecordCopyValue(ValueAtIndex, v5);
      if (CFNumberCompare(v13, v6, 0))
      {
        if (CFNumberCompare(v13, otherNumber, 0))
        {
          goto LABEL_9;
        }

        v14 = @"company";
      }

      else
      {
        v14 = @"person";
      }

      CFDictionarySetValue(Mutable, @"display as company", v14);
LABEL_9:
      if (v13)
      {
        CFRelease(v13);
      }

      v15 = ABPersonCopyImageDataWithFormat(ValueAtIndex, 5u);
      if (!v15)
      {
        v15 = ABPersonCopyImageDataWithFormat(ValueAtIndex, kABPersonImageFormatThumbnail);
      }

      Value = v7;
      if (*(a1 + 440) == 1)
      {
        v17 = *(a1 + 184);
        if (v17)
        {
          v18 = ABRecordGetRecordID(ValueAtIndex);
          Value = CFDictionaryGetValue(v17, v18);
          if (!Value)
          {
            Value = v7;
            if (DLShouldLog())
            {
              ABRecordGetRecordID(ValueAtIndex);
              _DLLog();
              Value = v7;
            }
          }
        }

        else if (v15)
        {
          Value = v7;
        }

        else
        {
          Value = v22;
        }

        CFDictionarySetValue(Mutable, @"ImageChanged", Value);
      }

      if (Value == v7 && v15)
      {
        CFDictionarySetValue(Mutable, @"image", v15);
        Length = CFDataGetLength(v15);
LABEL_26:
        CFRelease(v15);
        v20 = Length;
        goto LABEL_27;
      }

      Length = 0;
      v20 = 0;
      if (v15)
      {
        goto LABEL_26;
      }

LABEL_27:
      v21 = *(a1 + 424) + v20;
      *(a1 + 424) = v21;
      if (v21 >= 4000001)
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        ABProcessAddedImages();
        *(a1 + 424) = 0;
      }

      CFDictionarySetValue(a2, v11, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v8 = *(a1 + 432) + 1;
      *(a1 + 432) = v8;
    }

    while (v21 < 4000001);
  }
}

void _SetRecordValueInDictionary(__CFDictionary *a1, ABRecordRef record, ABPropertyID property, const void *a4)
{
  v6 = ABRecordCopyValue(record, property);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a1, a4, v6);

    CFRelease(v7);
  }
}

void _AccumulateGroups(CFMutableDictionaryRef *a1, CFArrayRef theArray)
{
  v2 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return;
  }

  v5 = Count;
  if (!*a1)
  {
    *a1 = CFDictionaryCreateMutable(0, Count, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  }

  v6 = 0;
  property = *MEMORY[0x277CE97F8];
  v24 = a1;
  v25 = v2;
  v23 = v5;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
    RecordID = ABRecordGetRecordID(ValueAtIndex);
    v9 = CFStringCreateWithFormat(0, 0, @"Group/%d", RecordID);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    CFDictionarySetValue(*a1, v9, Mutable);
    CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.contacts.Group");
    _SetRecordValueInDictionary(Mutable, ValueAtIndex, property, @"name");
    if (v9)
    {
      CFRelease(v9);
    }

    v11 = ABGroupCopyArrayOfAllMembersAndSubgroups();
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = v11;
    v13 = CFArrayGetCount(v11);
    if (v13 < 1)
    {
      goto LABEL_23;
    }

    v14 = v13;
    v15 = CFArrayCreateMutable(0, v13, MEMORY[0x277CBF128]);
    for (i = 0; i != v14; ++i)
    {
      v17 = CFArrayGetValueAtIndex(v12, i);
      RecordType = ABRecordGetRecordType(v17);
      v19 = ABRecordGetRecordID(v17);
      if (RecordType == 1)
      {
        v20 = CFStringCreateWithFormat(0, 0, @"Group/%d", v19, v22);
LABEL_14:
        if (v20)
        {
          v21 = v20;
          CFArrayAppendValue(v15, v20);
          CFRelease(v21);
        }

        continue;
      }

      if (!RecordType)
      {
        v20 = CFStringCreateWithFormat(0, 0, @"%d", v19, v22);
        goto LABEL_14;
      }

      if (DLShouldLog())
      {
        v22 = v17;
        _DLLog();
      }
    }

    if (CFArrayGetCount(v15) >= 1)
    {
      CFDictionarySetValue(Mutable, @"members", v15);
    }

    a1 = v24;
    v2 = v25;
    v5 = v23;
    if (v15)
    {
      CFRelease(v15);
    }

LABEL_23:
    CFRelease(v12);
LABEL_24:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    ++v6;
  }

  while (v6 != v5);
}

void _AccumulatePropertiesForType(const __CFArray **a1, uint64_t a2, const void *a3, __CFDictionary *a4)
{
  v5 = a1[22];
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = 0;
      v62 = *MEMORY[0x277CBECE8];
      v65 = *MEMORY[0x277CE9828];
      v60 = *MEMORY[0x277CE98E8];
      v49 = *MEMORY[0x277CE9948];
      v50 = *MEMORY[0x277CE9920];
      v56 = *MEMORY[0x277CE9810];
      key = *MEMORY[0x277CE9838];
      v54 = *MEMORY[0x277CE9840];
      v55 = *MEMORY[0x277CE9830];
      v52 = *MEMORY[0x277CE9818];
      v53 = *MEMORY[0x277CE9820];
      v61 = *MEMORY[0x277CE9888];
      v59 = *MEMORY[0x277CE9A18];
      v43 = *MEMORY[0x277CE9A38];
      v44 = *MEMORY[0x277CE9A58];
      v42 = *MEMORY[0x277CE9870];
      v40 = *MEMORY[0x277CE9848];
      v41 = *MEMORY[0x277CE98D0];
      v47 = *MEMORY[0x277CE9AE8];
      v48 = *MEMORY[0x277CE9800];
      theString2 = *MEMORY[0x277CE99F8];
      v51 = *MEMORY[0x277CE9808];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[22], v7);
        v9 = ABRecordCopyValue(ValueAtIndex, a2);
        if (v9)
        {
          v10 = v9;
          v46 = v7;
          RecordID = ABRecordGetRecordID(ValueAtIndex);
          v12 = ABMultiValueGetCount(v10);
          if (v12 >= 1)
          {
            v13 = v12;
            for (i = 0; v13 != i; ++i)
            {
              values = CFStringCreateWithFormat(0, 0, @"%d", RecordID);
              v15 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v10, i);
              Mutable = CFDictionaryCreateMutable(v62, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", a3);
              CFDictionarySetValue(Mutable, @"contact", v15);
              if (v15)
              {
                CFRelease(v15);
              }

              v18 = ABMultiValueCopyValueAtIndex(v10, i);
              v19 = v18;
              if (v65 == a2)
              {
                if (!v18)
                {
                  goto LABEL_36;
                }

                Value = CFDictionaryGetValue(v18, key);
                if (Value)
                {
                  CFDictionarySetValue(Mutable, @"street", Value);
                }

                v21 = CFDictionaryGetValue(v19, v56);
                if (v21)
                {
                  CFDictionarySetValue(Mutable, @"city", v21);
                }

                v22 = CFDictionaryGetValue(v19, v55);
                if (v22)
                {
                  CFDictionarySetValue(Mutable, @"state", v22);
                }

                v23 = CFDictionaryGetValue(v19, v54);
                if (v23)
                {
                  CFDictionarySetValue(Mutable, @"postal code", v23);
                }

                v24 = CFDictionaryGetValue(v19, v53);
                if (v24)
                {
                  CFDictionarySetValue(Mutable, @"country", v24);
                }

                v25 = CFDictionaryGetValue(v19, v52);
                if (!v25)
                {
                  goto LABEL_35;
                }

                v26 = v25;
                v27 = Mutable;
                v28 = @"country code";
              }

              else if (v60 == a2)
              {
                if (!v18)
                {
                  goto LABEL_36;
                }

                v29 = CFDictionaryGetValue(v18, v50);
                if (v29)
                {
                  v30 = v29;
                  v31 = a1[43];
                  if (!v31)
                  {
                    _InitializeInstantMessageServiceStringsArrays();
                    v31 = CFDictionaryCreate(0, &sABInstantMessageServiceStrings, &sSyncServicesInstantMessageServiceStrings, 10, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    a1[43] = v31;
                  }

                  v32 = CFDictionaryGetValue(v31, v30);
                  if (v32)
                  {
                    CFDictionarySetValue(Mutable, v50, v32);
                  }
                }

                v33 = CFDictionaryGetValue(v19, v49);
                if (!v33)
                {
                  goto LABEL_35;
                }

                v26 = v33;
                v27 = Mutable;
                v28 = @"user";
              }

              else
              {
                if (!v18)
                {
                  goto LABEL_36;
                }

                v27 = Mutable;
                v28 = @"value";
                v26 = v19;
              }

              CFDictionarySetValue(v27, v28, v26);
LABEL_35:
              CFRelease(v19);
LABEL_36:
              v34 = ABMultiValueCopyLabelAtIndex(v10, i);
              if (v61 == a2)
              {
                v35 = a1[33];
                if (!v35)
                {
                  if (!sABEmailTypeStrings)
                  {
                    sABEmailTypeStrings = v48;
                    *algn_27F9F29B8 = v47;
                    sSyncServicesEmailTypeStrings = @"home";
                    *algn_27F9F29C8 = @"work";
                  }

                  v35 = CFDictionaryCreate(0, &sABEmailTypeStrings, &sSyncServicesEmailTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[33] = v35;
                }
              }

              else if (v59 == a2)
              {
                v35 = a1[35];
                if (!v35)
                {
                  _InitializePhoneTypeStringsArrays();
                  v35 = CFDictionaryCreate(0, &sABPhoneTypeStrings, &sSyncServicesPhoneTypeStrings, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[35] = v35;
                }
              }

              else if (v65 == a2)
              {
                v35 = a1[37];
                if (!v35)
                {
                  if (!sABAddressTypeStrings)
                  {
                    sABAddressTypeStrings = v48;
                    *algn_27F9F2A48 = v47;
                    sSyncServicesAddressTypeStrings = @"home";
                    *algn_27F9F2A58 = @"work";
                  }

                  v35 = CFDictionaryCreate(0, &sABAddressTypeStrings, &sSyncServicesAddressTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[37] = v35;
                }
              }

              else if (v60 == a2)
              {
                v35 = a1[45];
                if (!v35)
                {
                  if (!sABInstantMessageTypeStrings)
                  {
                    sABInstantMessageTypeStrings = v48;
                    *algn_27F9F2A68 = v47;
                    sSyncServicesInstantMessageTypeStrings = @"home";
                    *algn_27F9F2A78 = @"work";
                  }

                  v35 = CFDictionaryCreate(0, &sABInstantMessageTypeStrings, &sSyncServicesInstantMessageTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[45] = v35;
                }
              }

              else if (v44 == a2)
              {
                v35 = a1[39];
                if (!v35)
                {
                  if (!sABURLTypeStrings)
                  {
                    sABURLTypeStrings = v41;
                    *algn_27F9F2A88 = v48;
                    qword_27F9F2A90 = v47;
                    sSyncServicesURLTypeStrings = @"home page";
                    unk_27F9F2AA0 = @"home";
                    qword_27F9F2AA8 = @"work";
                  }

                  v35 = CFDictionaryCreate(0, &sABURLTypeStrings, &sSyncServicesURLTypeStrings, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[39] = v35;
                }
              }

              else if (v43 == a2)
              {
                v35 = a1[41];
                if (!v35)
                {
                  _InitializeRelatedNamesTypeStringsArrays();
                  v35 = CFDictionaryCreate(0, &sABRelatedNamesTypeStrings, &sSyncServicesRelatedNamesTypeStrings, 11, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[41] = v35;
                }
              }

              else if (v42 == a2)
              {
                v35 = a1[47];
                if (!v35)
                {
                  if (!sABDateTypeStrings)
                  {
                    sABDateTypeStrings = v40;
                    sSyncServicesDateTypeStrings = @"anniversary";
                  }

                  v35 = CFDictionaryCreate(0, &sABDateTypeStrings, &sSyncServicesDateTypeStrings, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[47] = v35;
                }
              }

              else
              {
                v35 = 0;
              }

              if (!v34)
              {
                v34 = CFRetain(@"other");
              }

              v36 = CFDictionaryGetValue(v35, v34);
              if (v36)
              {
                goto LABEL_79;
              }

              if (CFStringCompare(v34, theString2, 0) == kCFCompareEqualTo)
              {
                v38 = @"iPhone";
LABEL_77:
                CFDictionarySetValue(Mutable, @"label", v38);
                goto LABEL_78;
              }

              if (CFStringCompare(v34, v51, 0))
              {
                v37 = CFStringCompare(v34, @"other", 0);
                if (!v34)
                {
                  v36 = @"other";
                  goto LABEL_79;
                }

                v38 = v34;
                v36 = @"other";
                if (v37 == kCFCompareEqualTo)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              }

LABEL_78:
              v36 = @"other";
LABEL_79:
              CFDictionarySetValue(Mutable, @"type", v36);
              if (v34)
              {
                CFRelease(v34);
              }

              v39 = CFStringCreateWithFormat(0, 0, @"%d/%d/%d", a2, RecordID, IdentifierAtIndex);
              CFDictionarySetValue(a4, v39, Mutable);
              if (v39)
              {
                CFRelease(v39);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              if (values)
              {
                CFRelease(values);
              }
            }
          }

          CFRelease(v10);
          v7 = v46;
        }

        ++v7;
      }

      while (v7 != Count);
    }
  }

  else if (DLShouldLog())
  {
    _DLLog();
  }
}

void _InitializePhoneTypeStringsArrays()
{
  if (!sABPhoneTypeStrings)
  {
    v0 = *MEMORY[0x277CE9AE8];
    sABPhoneTypeStrings = *MEMORY[0x277CE9800];
    *algn_27F9F29D8 = v0;
    v1 = *MEMORY[0x277CE9A00];
    qword_27F9F29E0 = *MEMORY[0x277CE9A08];
    unk_27F9F29E8 = v1;
    v2 = *MEMORY[0x277CE9A28];
    qword_27F9F29F0 = *MEMORY[0x277CE99F0];
    unk_27F9F29F8 = v2;
    qword_27F9F2A00 = *MEMORY[0x277CE9A10];
    sSyncServicesPhoneTypeStrings = @"home";
    unk_27F9F2A10 = @"work";
    qword_27F9F2A18 = @"mobile";
    unk_27F9F2A20 = @"main";
    qword_27F9F2A28 = @"home fax";
    unk_27F9F2A30 = @"work fax";
    qword_27F9F2A38 = @"pager";
  }
}

void _InitializeRelatedNamesTypeStringsArrays()
{
  if (!sABRelatedNamesTypeStrings)
  {
    v0 = *MEMORY[0x277CE99A8];
    sABRelatedNamesTypeStrings = *MEMORY[0x277CE98B0];
    *algn_27F9F2AB8 = v0;
    v1 = *MEMORY[0x277CE9868];
    qword_27F9F2AC0 = *MEMORY[0x277CE99C8];
    unk_27F9F2AC8 = v1;
    v2 = *MEMORY[0x277CE9A40];
    qword_27F9F2AD0 = *MEMORY[0x277CE9860];
    unk_27F9F2AD8 = v2;
    v3 = *MEMORY[0x277CE9A48];
    qword_27F9F2AE0 = *MEMORY[0x277CE98C8];
    unk_27F9F2AE8 = v3;
    v4 = *MEMORY[0x277CE9850];
    qword_27F9F2AF0 = *MEMORY[0x277CE99D0];
    unk_27F9F2AF8 = v4;
    qword_27F9F2B00 = *MEMORY[0x277CE9990];
    sSyncServicesRelatedNamesTypeStrings = @"father";
    unk_27F9F2B10 = @"mother";
    qword_27F9F2B18 = @"parent";
    unk_27F9F2B20 = @"child";
    qword_27F9F2B28 = @"brother";
    unk_27F9F2B30 = @"sister";
    qword_27F9F2B38 = @"friend";
    unk_27F9F2B40 = @"spouse";
    qword_27F9F2B48 = @"partner";
    unk_27F9F2B50 = @"assistant";
    qword_27F9F2B58 = @"manager";
  }
}

void _InitializeInstantMessageServiceStringsArrays()
{
  if (!sABInstantMessageServiceStrings)
  {
    v0 = *MEMORY[0x277CE9918];
    sABInstantMessageServiceStrings = *MEMORY[0x277CE9940];
    *algn_27F9F2B78 = v0;
    v1 = *MEMORY[0x277CE9910];
    qword_27F9F2B80 = *MEMORY[0x277CE9928];
    unk_27F9F2B88 = v1;
    v2 = *MEMORY[0x277CE9930];
    qword_27F9F2B90 = *MEMORY[0x277CE98F0];
    unk_27F9F2B98 = v2;
    v3 = *MEMORY[0x277CE9938];
    qword_27F9F2BA0 = *MEMORY[0x277CE9908];
    unk_27F9F2BA8 = v3;
    v4 = *MEMORY[0x277CE9900];
    qword_27F9F2BB0 = *MEMORY[0x277CE98F8];
    unk_27F9F2BB8 = v4;
    sSyncServicesInstantMessageServiceStrings = @"yahoo";
    *algn_27F9F2BC8 = @"jabber";
    qword_27F9F2BD0 = @"msn";
    unk_27F9F2BD8 = @"icq";
    qword_27F9F2BE0 = @"aim";
    unk_27F9F2BE8 = @"qq";
    qword_27F9F2BF0 = @"googletalk";
    unk_27F9F2BF8 = @"skype";
    qword_27F9F2C00 = @"facebook";
    unk_27F9F2C08 = @"gadugadu";
  }
}

void _saveDeviceSyncAnchorAndClearChangeHistory(uint64_t a1)
{
  if ((*(a1 + 436) & 0x80000000) == 0)
  {
    ABChangeHistoryClearChangesUpToSequenceNumberForClient();
  }

  error = 0;
  v2 = *(a1 + 160);
  if (!v2)
  {
    v2 = CFRetain(@"---");
    *(a1 + 160) = v2;
  }

  _setDeviceSyncAnchorForStore(a1, v2);
  if (!ABAddressBookSave(*(a1 + 144), &error) && DLShouldLog())
  {
    _DLLog();
  }

  *(a1 + 442) = 1;
  if (error)
  {
    CFRelease(error);
  }
}

void _ChangesApplierFunction(const __CFString *a1, const __CFDictionary *a2, uint64_t a3)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v12 = CFDictionaryGetValue(a2, @"com.apple.syncservices.RecordEntityName");
    if (!v12)
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_30;
    }

    v13 = v12;
    if (CFStringCompare(v12, @"com.apple.contacts.Group", 0))
    {
      if (CFStringCompare(v13, @"com.apple.contacts.Contact", 0))
      {
        if (CFStringCompare(v13, @"com.apple.contacts.Email Address", 0) && CFStringCompare(v13, @"com.apple.contacts.Phone Number", 0) && CFStringCompare(v13, @"com.apple.contacts.Street Address", 0) && CFStringCompare(v13, @"com.apple.contacts.URL", 0) && CFStringCompare(v13, @"com.apple.contacts.IM", 0) && CFStringCompare(v13, @"com.apple.contacts.Related Name", 0) && CFStringCompare(v13, @"com.apple.contacts.Date", 0))
        {
          if (!DLShouldLog())
          {
            return;
          }

          goto LABEL_30;
        }

        v14 = *(a3 + 392);
        if (v14 || (sSyncServicesEntityTypeStrings = @"com.apple.contacts.Email Address", *algn_27F9F2C18 = @"com.apple.contacts.Phone Number", qword_27F9F2C20 = @"com.apple.contacts.Street Address", unk_27F9F2C28 = @"com.apple.contacts.URL", qword_27F9F2C30 = @"com.apple.contacts.Date", unk_27F9F2C38 = @"com.apple.contacts.Related Name", qword_27F9F2C40 = @"com.apple.contacts.IM", v15 = *MEMORY[0x277CE9A18], sABPropertyNames = *MEMORY[0x277CE9888], unk_27F9F2C50 = v15, v16 = *MEMORY[0x277CE9A58], qword_27F9F2C58 = *MEMORY[0x277CE9828], unk_27F9F2C60 = v16, v17 = *MEMORY[0x277CE9A38], qword_27F9F2C68 = *MEMORY[0x277CE9870], unk_27F9F2C70 = v17, qword_27F9F2C78 = *MEMORY[0x277CE98E8], v14 = CFDictionaryCreate(0, &sSyncServicesEntityTypeStrings, &sABPropertyNames, 7, MEMORY[0x277CBF138], 0), (*(a3 + 392) = v14) != 0))
        {
          error = 0;
          if (CFDictionaryGetValueIfPresent(v14, v13, &error))
          {
            v18 = error;
            v19 = CFDictionaryGetValue(a2, @"contact");
            if (v19 && (v20 = v19, CFArrayGetCount(v19) == 1))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
              if (DLShouldLog())
              {
                _DLLog();
              }
            }

            else
            {
              ValueAtIndex = 0;
            }

            ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
            GroupWithRecordID = ArrayBySeparatingStrings;
            if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) >= 2)
            {
              if (CFArrayGetCount(GroupWithRecordID) == 3)
              {
                v34 = CFArrayGetValueAtIndex(GroupWithRecordID, 1);
                v35 = CFArrayGetValueAtIndex(GroupWithRecordID, 2);
                if (v35)
                {
                  IntValue = CFStringGetIntValue(v35);
                }

                else
                {
                  IntValue = -1;
                }

                if (ValueAtIndex && v34)
                {
                  if (CFStringCompare(v34, ValueAtIndex, 0) == kCFCompareEqualTo)
                  {
                    goto LABEL_142;
                  }

                  IntValue = -1;
                  goto LABEL_133;
                }

                if (v34)
                {
                  goto LABEL_142;
                }

LABEL_132:
                if (!ValueAtIndex)
                {
                  v34 = 0;
                  goto LABEL_139;
                }

LABEL_133:
                v47 = *(a3 + 248);
                if (v47 && (v48 = CFDictionaryGetValue(v47, ValueAtIndex)) != 0)
                {
                  v34 = v48;
                  if (DLShouldLog())
                  {
                    _DLLog();
                  }
                }

                else
                {
                  v34 = ValueAtIndex;
                }

LABEL_139:
                if (DLShouldLog())
                {
                  _DLLog();
                }

                if (!v34)
                {
                  if (!DLShouldLog())
                  {
                    goto LABEL_312;
                  }

                  goto LABEL_161;
                }

LABEL_142:
                if (recordIdentifierIsLocal(v34))
                {
                  recordID = CFStringGetIntValue(v34);
                }

                else
                {
                  if (DLShouldLog())
                  {
                    _DLLog();
                  }

                  recordID = 0xFFFFFFFFLL;
                }

                v49 = *(a3 + 192);
                if (v49)
                {
                  v50 = CFDictionaryGetValue(v49, v34);
                  if (v50)
                  {
                    PersonWithRecordID = v50;
                    if (DLShouldLog())
                    {
                      _DLLog();
                    }

LABEL_155:
                    if (DLShouldLog())
                    {
                      _DLLog();
                    }

                    LODWORD(value) = IntValue;
                    error = 0;
                    v52 = ABRecordCopyValue(PersonWithRecordID, v18);
                    v53 = v52;
                    v54 = MEMORY[0x277CE9828];
                    if (v52)
                    {
                      if (IntValue == -1)
                      {
                        IndexForIdentifier = -1;
                      }

                      else
                      {
                        IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v52, IntValue);
                      }

                      MutableCopy = ABMultiValueCreateMutableCopy(v53);
                    }

                    else
                    {
                      if (*MEMORY[0x277CE98E8] == v18 || *MEMORY[0x277CE9828] == v18)
                      {
                        v57 = 261;
                      }

                      else
                      {
                        v57 = 257;
                      }

                      MutableCopy = ABMultiValueCreateMutable(v57);
                      IndexForIdentifier = -1;
                    }

                    if (!MutableCopy)
                    {
                      goto LABEL_309;
                    }

                    v59 = *v54;
                    index = IndexForIdentifier;
                    multiValue = MutableCopy;
                    if (v59 == v18)
                    {
                      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
                      v61 = CFDictionaryGetValue(a2, @"street");
                      if (v61)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9838], v61);
                      }

                      v62 = CFDictionaryGetValue(a2, @"city");
                      if (v62)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9810], v62);
                      }

                      v63 = CFDictionaryGetValue(a2, @"state");
                      if (v63)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9830], v63);
                      }

                      v64 = CFDictionaryGetValue(a2, @"postal code");
                      if (v64)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9840], v64);
                      }

                      v65 = CFDictionaryGetValue(a2, @"country");
                      if (v65)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9820], v65);
                      }

                      v66 = CFDictionaryGetValue(a2, @"country code");
                      if (v66)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9818], v66);
                      }

                      goto LABEL_222;
                    }

                    v89 = PersonWithRecordID;
                    v67 = v59;
                    if (*MEMORY[0x277CE98E8] == v18)
                    {
                      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
                      v68 = CFDictionaryGetValue(a2, @"service");
                      if (v68)
                      {
                        v69 = v68;
                        v70 = *(a3 + 352);
                        if (!v70)
                        {
                          _InitializeInstantMessageServiceStringsArrays();
                          v70 = CFDictionaryCreate(0, &sSyncServicesInstantMessageServiceStrings, &sABInstantMessageServiceStrings, 10, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                          *(a3 + 352) = v70;
                        }

                        v71 = CFDictionaryGetValue(v70, v69);
                        if (v71)
                        {
                          CFDictionarySetValue(Mutable, *MEMORY[0x277CE9920], v71);
                        }
                      }

                      v72 = CFDictionaryGetValue(a2, @"user");
                      if (v72)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9948], v72);
                      }
                    }

                    else
                    {
                      v73 = *MEMORY[0x277CE9A58];
                      v74 = CFDictionaryGetValue(a2, @"value");
                      Mutable = v74;
                      if (v73 != v18)
                      {
                        v59 = v67;
                        if (!v74)
                        {
                          PersonWithRecordID = v89;
                          if (DLShouldLog())
                          {
                            _DLLog();
                          }

                          Mutable = 0;
LABEL_222:
                          v75 = CFDictionaryGetValue(a2, @"type");
                          if (!v75)
                          {
                            v79 = Mutable != 0;
                            goto LABEL_291;
                          }

                          v76 = v75;
                          if (CFStringCompare(v75, @"other", 0))
                          {
                            if (*MEMORY[0x277CE9888] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 272);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                if (!sABEmailTypeStrings)
                                {
                                  v78 = *MEMORY[0x277CE9AE8];
                                  sABEmailTypeStrings = *MEMORY[0x277CE9800];
                                  *algn_27F9F29B8 = v78;
                                  sSyncServicesEmailTypeStrings = @"home";
                                  *algn_27F9F29C8 = @"work";
                                }

                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesEmailTypeStrings, &sABEmailTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 272) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (*MEMORY[0x277CE9A18] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 288);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                _InitializePhoneTypeStringsArrays();
                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesPhoneTypeStrings, &sABPhoneTypeStrings, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 288) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (v59 == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 304);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                if (!sABAddressTypeStrings)
                                {
                                  v83 = *MEMORY[0x277CE9AE8];
                                  sABAddressTypeStrings = *MEMORY[0x277CE9800];
                                  *algn_27F9F2A48 = v83;
                                  sSyncServicesAddressTypeStrings = @"home";
                                  *algn_27F9F2A58 = @"work";
                                }

                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesAddressTypeStrings, &sABAddressTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 304) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (*MEMORY[0x277CE98E8] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 368);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                if (!sABInstantMessageTypeStrings)
                                {
                                  v84 = *MEMORY[0x277CE9AE8];
                                  sABInstantMessageTypeStrings = *MEMORY[0x277CE9800];
                                  *algn_27F9F2A68 = v84;
                                  sSyncServicesInstantMessageTypeStrings = @"home";
                                  *algn_27F9F2A78 = @"work";
                                }

                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesInstantMessageTypeStrings, &sABInstantMessageTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 368) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (*MEMORY[0x277CE9A58] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 320);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                if (!sABURLTypeStrings)
                                {
                                  v85 = *MEMORY[0x277CE9800];
                                  sABURLTypeStrings = *MEMORY[0x277CE98D0];
                                  *algn_27F9F2A88 = v85;
                                  qword_27F9F2A90 = *MEMORY[0x277CE9AE8];
                                  sSyncServicesURLTypeStrings = @"home page";
                                  unk_27F9F2AA0 = @"home";
                                  qword_27F9F2AA8 = @"work";
                                }

                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesURLTypeStrings, &sABURLTypeStrings, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 320) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (*MEMORY[0x277CE9A38] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = _GetRelatedNamesTypeSyncServicesToAB(a3);
                            }

                            else if (*MEMORY[0x277CE9870] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = _GetDateTypeSyncServicesToAB(a3);
                            }

                            else
                            {
                              RelatedNamesTypeSyncServicesToAB = 0;
                            }

                            v81 = CFDictionaryGetValue(RelatedNamesTypeSyncServicesToAB, v76);
                            if (DLShouldLog())
                            {
                              goto LABEL_284;
                            }
                          }

                          else
                          {
                            v80 = CFDictionaryGetValue(a2, @"label");
                            if (v80)
                            {
                              v81 = v80;
                              if (CFStringCompare(v80, @"iPhone", 0) == kCFCompareEqualTo)
                              {
                                v82 = DLShouldLog();
                                v81 = *MEMORY[0x277CE99F8];
                                if (v82)
                                {
                                  _DLLog();
                                }
                              }

                              if (DLShouldLog())
                              {
                                goto LABEL_284;
                              }
                            }

                            else
                            {
                              v81 = *MEMORY[0x277CE9808];
                              if (DLShouldLog())
                              {
LABEL_284:
                                _DLLog();
                              }
                            }
                          }

                          v79 = Mutable != 0;
                          if (Mutable && v81)
                          {
                            if (index == -1)
                            {
                              v86 = multiValue;
                              ABMultiValueAddValueAndLabel(multiValue, Mutable, v81, &value);
                              v87 = CFStringCreateWithFormat(0, 0, @"%d/%d/%d", v18, recordID, value);
                              v88 = *(a3 + 256);
                              if (!v88)
                              {
                                v88 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
                                *(a3 + 256) = v88;
                              }

                              *(a3 + 240) = v88;
                              if (DLShouldLog())
                              {
                                _DLLog();
                              }

                              CFDictionarySetValue(*(a3 + 240), a1, v87);
                              if (v87)
                              {
                                CFRelease(v87);
                              }
                            }

                            else
                            {
                              v86 = multiValue;
                              if (DLShouldLog())
                              {
                                _DLLog();
                              }

                              ABMultiValueReplaceValueAtIndex(multiValue, Mutable, index);
                              ABMultiValueReplaceLabelAtIndex(multiValue, v81, index);
                            }

                            ABMultiValueSetImmutable();
                            if (!ABRecordSetValue(PersonWithRecordID, v18, v86, &error) && DLShouldLog())
                            {
                              ABRecordGetRecordID(PersonWithRecordID);
                              _DLLog();
                            }

                            if (error)
                            {
                              CFRelease(error);
                              error = 0;
                            }

                            goto LABEL_307;
                          }

LABEL_291:
                          if (DLShouldLog())
                          {
                            _DLLog();
                            if (!v79)
                            {
                              goto LABEL_308;
                            }
                          }

                          else if (!v79)
                          {
                            goto LABEL_308;
                          }

LABEL_307:
                          CFRelease(Mutable);
LABEL_308:
                          CFRelease(multiValue);
LABEL_309:
                          if (!v53)
                          {
                            goto LABEL_312;
                          }

                          v46 = v53;
                          goto LABEL_311;
                        }

                        CFRetain(v74);
LABEL_221:
                        PersonWithRecordID = v89;
                        goto LABEL_222;
                      }

                      Mutable = CFURLCreateStringByReplacingPercentEscapes(0, v74, &stru_286BC1018);
                    }

                    v59 = v67;
                    goto LABEL_221;
                  }
                }

                if (recordID != -1)
                {
                  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(*(a3 + 144), recordID);
                  if (PersonWithRecordID)
                  {
                    goto LABEL_155;
                  }
                }

                if (!DLShouldLog())
                {
                  goto LABEL_312;
                }

LABEL_161:
                _DLLog();
                goto LABEL_312;
              }

              if (DLShouldLog())
              {
                _DLLog();
              }
            }

            IntValue = -1;
            goto LABEL_132;
          }
        }

        if (!DLShouldLog())
        {
          return;
        }

LABEL_30:
        _DLLog();
        return;
      }

      v93 = 0;
      if (recordIdentifierIsLocal(a1) && (v27 = CFStringGetIntValue(a1), (v28 = ABAddressBookGetPersonWithRecordID(*(a3 + 144), v27)) != 0))
      {
        GroupWithRecordID = v28;
        if (DLShouldLog())
        {
          _DLLog();
        }

        CFRetain(GroupWithRecordID);
      }

      else
      {
        v30 = ABPersonCreateInSource(*(a3 + 152));
        if (!v30)
        {
          if (!DLShouldLog())
          {
            return;
          }

          goto LABEL_30;
        }

        GroupWithRecordID = v30;
        if (!ABAddressBookAddRecord(*(a3 + 144), v30, &v93))
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          CFRelease(GroupWithRecordID);
          v29 = v93;
          if (v93)
          {
            goto LABEL_314;
          }

          return;
        }

        if (v93)
        {
          CFRelease(v93);
          v93 = 0;
        }

        if (!*(a3 + 200))
        {
          *(a3 + 200) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        }

        if (DLShouldLog())
        {
          _DLLog();
        }

        CFDictionaryAddValue(*(a3 + 200), a1, GroupWithRecordID);
      }

      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE98C0], @"first name");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9980], @"last name");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE99A0], @"middle name");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9A30], @"title");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9A50], @"suffix");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE99B0], @"nickname");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE98B8], @"first name yomi");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9978], @"last name yomi");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9998], @"middle name yomi");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE99C0], @"company name");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9958], @"job title");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9878], @"department");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE99B8], @"notes");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9858], @"birthday");
      v31 = CFDictionaryGetValue(a2, @"display as company");
      if (!v31)
      {
        ABRecordRemoveValue(GroupWithRecordID, *MEMORY[0x277CE9970], &v93);
        goto LABEL_172;
      }

      v32 = v31;
      if (CFStringCompare(v31, @"person", 0))
      {
        if (CFStringCompare(v32, @"company", 0))
        {
          goto LABEL_174;
        }

        if (!ABRecordSetValue(GroupWithRecordID, *MEMORY[0x277CE9970], *MEMORY[0x277CE9960], &v93) && DLShouldLog())
        {
          goto LABEL_171;
        }
      }

      else if (!ABRecordSetValue(GroupWithRecordID, *MEMORY[0x277CE9970], *MEMORY[0x277CE9968], &v93) && DLShouldLog())
      {
LABEL_171:
        ABRecordGetRecordID(GroupWithRecordID);
        _DLLog();
      }

LABEL_172:
      if (v93)
      {
        CFRelease(v93);
        v93 = 0;
      }

LABEL_174:
      value = 0;
      error = 0;
      if (*(a3 + 440) == 1 && CFDictionaryGetValue(a2, @"ImageChanged") == *MEMORY[0x277CBED10])
      {
        if (DLShouldLog())
        {
          goto LABEL_192;
        }
      }

      else
      {
        if (CFDictionaryGetValue(a2, @"SDImageUnchangedMarker"))
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          if (!CFDictionaryContainsKey(a2, @"image") || !DLShouldLog())
          {
            goto LABEL_313;
          }

          goto LABEL_193;
        }

        if (!ABPersonRemoveImageData(GroupWithRecordID, &error) && DLShouldLog())
        {
          ABRecordGetRecordID(GroupWithRecordID);
          _DLLog();
        }

        if (error)
        {
          CFRelease(error);
          error = 0;
        }

        if (!CFDictionaryGetValueIfPresent(a2, @"image", &value))
        {
          goto LABEL_313;
        }

        *(a3 + 137) = 1;
        if (CFDataGetLength(value) <= *(a3 + 428))
        {
          if (!ABPersonSetImageData(GroupWithRecordID, value, &error))
          {
            if (DLShouldLog())
            {
              ABRecordGetRecordID(GroupWithRecordID);
              _DLLog();
            }

            if (error)
            {
              CFRelease(error);
              error = 0;
            }
          }

          if ((ABPersonSetImageDataAndCropRect() & 1) == 0)
          {
            if (DLShouldLog())
            {
              ABRecordGetRecordID(GroupWithRecordID);
              _DLLog();
            }

            if (error)
            {
              CFRelease(error);
            }
          }

          goto LABEL_313;
        }

        if (DLShouldLog())
        {
LABEL_192:
          ABRecordGetRecordID(GroupWithRecordID);
LABEL_193:
          _DLLog();
        }
      }

LABEL_313:
      v29 = GroupWithRecordID;
LABEL_314:
      CFRelease(v29);
      return;
    }

    error = 0;
    if (recordIdentifierIsLocal(a1))
    {
      v22 = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
      v23 = v22;
      if (v22 && CFArrayGetCount(v22) == 2)
      {
        v24 = CFArrayGetValueAtIndex(v23, 1);
        v25 = CFStringGetIntValue(v24);
        GroupWithRecordID = ABAddressBookGetGroupWithRecordID(*(a3 + 144), v25);
        goto LABEL_83;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      if (v23)
      {
        GroupWithRecordID = 0;
LABEL_83:
        CFRelease(v23);
        v37 = CFDictionaryGetValue(a2, @"name");
        if (v37)
        {
          v38 = v37;
          if (GroupWithRecordID)
          {
            CFRetain(GroupWithRecordID);
            if (DLShouldLog())
            {
              ABRecordGetRecordID(GroupWithRecordID);
              _DLLog();
            }

LABEL_96:
            if (!ABRecordSetValue(GroupWithRecordID, *MEMORY[0x277CE97F8], v38, &error) && DLShouldLog())
            {
              ABRecordGetRecordID(GroupWithRecordID);
              _DLLog();
            }

            if (error)
            {
              CFRelease(error);
              error = 0;
            }

            v41 = CFDictionaryGetValue(a2, @"members");
            if (v41)
            {
              v42 = v41;
              CFRetain(v41);
            }

            else
            {
              v42 = CFArrayCreate(0, 0, 0, 0);
            }

            v43 = *(a3 + 224);
            if (!v43)
            {
              v44 = *MEMORY[0x277CBECE8];
              v45 = MEMORY[0x277CBF128];
              *(a3 + 224) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
              *(a3 + 232) = CFArrayCreateMutable(v44, 0, v45);
              v43 = *(a3 + 224);
            }

            CFArrayAppendValue(v43, GroupWithRecordID);
            CFArrayAppendValue(*(a3 + 232), v42);
            if (!v42)
            {
LABEL_312:
              if (!GroupWithRecordID)
              {
                return;
              }

              goto LABEL_313;
            }

            v46 = v42;
LABEL_311:
            CFRelease(v46);
            goto LABEL_312;
          }

LABEL_89:
          if (DLShouldLog())
          {
            _DLLog();
          }

          GroupWithRecordID = ABGroupCreateInSource(*(a3 + 152));
          if (!ABAddressBookAddRecord(*(a3 + 144), GroupWithRecordID, &error))
          {
            if (DLShouldLog())
            {
              _DLLog();
            }

            CFShow(GroupWithRecordID);
            if (GroupWithRecordID)
            {
              CFRelease(GroupWithRecordID);
            }

            v29 = error;
            if (error)
            {
              goto LABEL_314;
            }

            return;
          }

          v40 = *(a3 + 208);
          if (!v40)
          {
            v40 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            *(a3 + 208) = v40;
          }

          CFDictionaryAddValue(v40, a1, GroupWithRecordID);
          if (error)
          {
            CFRelease(error);
            error = 0;
          }

          goto LABEL_96;
        }

        goto LABEL_103;
      }
    }

    v39 = CFDictionaryGetValue(a2, @"name");
    if (v39)
    {
      v38 = v39;
      goto LABEL_89;
    }

LABEL_103:
    if (!DLShouldLog())
    {
      return;
    }

    goto LABEL_30;
  }

  v7 = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
  if (v7)
  {
    v8 = v7;
    if (CFArrayGetCount(v7) >= 2)
    {
      if (CFArrayGetCount(v8) == 2)
      {
        v9 = CFArrayGetValueAtIndex(v8, 1);
        error = 0;
        if (DLShouldLog())
        {
          _DLLog();
        }

        if (recordIdentifierIsLocal(v9) && (v10 = CFStringGetIntValue(v9), (v11 = ABAddressBookGetGroupWithRecordID(*(a3 + 144), v10)) != 0))
        {
          if (!ABAddressBookRemoveRecord(*(a3 + 144), v11, &error) && DLShouldLog())
          {
            _DLLog();
          }

          if (error)
          {
            CFRelease(error);
          }
        }

        else if (DLShouldLog())
        {
          _DLLog();
        }

        v29 = v8;
        goto LABEL_314;
      }

      if (CFArrayGetCount(v8) == 3)
      {
        if (!*(a3 + 216))
        {
          *(a3 + 216) = CFArrayCreateMutable(0, 0, 0);
        }

        if (DLShouldLog())
        {
          _DLLog();
        }

        CFArrayAppendValue(*(a3 + 216), a1);
        goto LABEL_108;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }
    }

    _DeleteContact(a3, a1);
LABEL_108:

    CFRelease(v8);
    return;
  }

  _DeleteContact(a3, a1);
}

void _DeleteContact(uint64_t a1, const __CFString *a2)
{
  error = 0;
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (recordIdentifierIsLocal(a2) && (IntValue = CFStringGetIntValue(a2), (PersonWithRecordID = ABAddressBookGetPersonWithRecordID(*(a1 + 144), IntValue)) != 0))
  {
    if (!ABAddressBookRemoveRecord(*(a1 + 144), PersonWithRecordID, &error) && DLShouldLog())
    {
      _DLLog();
    }

    if (error)
    {
      CFRelease(error);
    }
  }

  else if (DLShouldLog())
  {
    _DLLog();
  }
}

void _SetContactValueInABPerson(const __CFDictionary *a1, const void *a2, ABPropertyID a3, void *key)
{
  error = 0;
  Value = CFDictionaryGetValue(a1, key);
  if (Value)
  {
    if (ABRecordSetValue(a2, a3, Value, &error) || !DLShouldLog())
    {
      goto LABEL_8;
    }
  }

  else if (ABRecordRemoveValue(a2, a3, &error) || !DLShouldLog())
  {
    goto LABEL_8;
  }

  ABRecordGetRecordID(a2);
  _DLLog();
LABEL_8:
  if (error)
  {
    CFRelease(error);
  }
}

CFDictionaryRef _GetRelatedNamesTypeSyncServicesToAB(uint64_t a1)
{
  result = *(a1 + 336);
  if (!result)
  {
    _InitializeRelatedNamesTypeStringsArrays();
    result = CFDictionaryCreate(0, &sSyncServicesRelatedNamesTypeStrings, &sABRelatedNamesTypeStrings, 11, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 336) = result;
  }

  return result;
}

CFDictionaryRef _GetDateTypeSyncServicesToAB(uint64_t a1)
{
  result = *(a1 + 384);
  if (!result)
  {
    if (!sABDateTypeStrings)
    {
      sABDateTypeStrings = *MEMORY[0x277CE9848];
      sSyncServicesDateTypeStrings = @"anniversary";
    }

    result = CFDictionaryCreate(0, &sSyncServicesDateTypeStrings, &sABDateTypeStrings, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 384) = result;
  }

  return result;
}

void _UpdateRecordRemapping(const void *a1, ABRecordRef record, __CFDictionary **a3, uint64_t (*a4)(uint64_t))
{
  RecordID = ABRecordGetRecordID(record);
  if (RecordID)
  {
    v9 = RecordID;
    Mutable = a3[31];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      a3[31] = Mutable;
    }

    a3[30] = Mutable;
    v11 = a4(v9);
    if (DLShouldLog())
    {
      _DLLog();
    }

    CFDictionarySetValue(a3[30], a1, v11);
    v12 = a3[24];
    if (!v12)
    {
      v12 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      a3[24] = v12;
    }

    CFDictionaryAddValue(v12, v11, record);
    if (v11)
    {

      CFRelease(v11);
    }
  }

  else if (DLShouldLog())
  {

    _DLLog();
  }
}

void _RestoreClearedPersonsSound(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = ABPersonCopyCompositeName();
    if (v4)
    {
      v5 = v4;
      Value = CFDictionaryGetValue(a1, v4);
      if (Value)
      {
        v7 = Value;
        if (CFStringCompare(Value, @"<null>", 0))
        {
          if (CFStringCompare(v7, @"<conflict>", 0))
          {
            if (DLShouldLog())
            {
              _DLLog();
            }

            ABPersonSetSoundIdentifierForMultiValueIdentifier();
          }

          else if (DLShouldLog())
          {
            _DLLog();
          }
        }
      }

      CFRelease(v5);
    }
  }
}

uint64_t CalendarsDataSourceCreator(void *a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  v8 = malloc_type_calloc(0x168uLL, 1uLL, 0x10E00407F70F82FuLL);
  v9 = MEMORY[0x277CBED10];
  *a1 = v8;
  *v8 = *v9;
  *(v8 + 2) = CalendarsDataSourceGetVersionFunction;
  *(v8 + 3) = CalendarsDataSourceCanSyncWithVersionFunction;
  *(v8 + 4) = CalendarsDataSourceMigrateFunction;
  *(v8 + 5) = CalendarsDataSourceRemoveStoreFunction;
  *(v8 + 6) = CalendarsDataSourceGetSyncTypeAndExchangeSyncAnchors;
  *(v8 + 7) = CalendarsDataSourceClearSyncAnchors;
  *(v8 + 8) = CalendarsDataSourceClearAllRecords;
  *(v8 + 9) = CalendarsDataSourceGetChanges;
  *(v8 + 10) = CalendarsDataSourceGetAllRecords;
  *(v8 + 11) = CalendarsDataSourceGetCountOfRecords;
  *(v8 + 12) = CalendarsDataSourceProcessChanges;
  *(v8 + 13) = CalendarsDataSourceCommit;
  *(v8 + 14) = CalendarsDataSourceRollback;
  *(v8 + 15) = CalendarsDataSourceGetEntityTypeProcessOrder;
  *(v8 + 16) = CalendarsDataSourceDeleteDataSource;
  *(v8 + 17) = DLMemoryPoolCreate();
  *(v8 + 37) = 0;
  *(v8 + 9) = 0u;
  *(v8 + 10) = 0u;
  *(v8 + 44) = 0;
  *(v8 + 13) = 0u;
  *(v8 + 14) = 0u;
  *(v8 + 15) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 17) = 0u;
  *(v8 + 23) = CalDatabaseCreateWithOptions();
  CalDatabaseSetClientIdentifier();
  *(v8 + 24) = CalDatabaseCopyDefaultLocalCalendar();
  if (!a2)
  {
    v25 = CalDatabaseCopyLocalStore();
    *(v8 + 25) = v25;
    if (v25)
    {
      v24 = 0;
      goto LABEL_45;
    }

    if (!DLShouldLog())
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v10 = CalDatabaseCopyStoreWithExternalID();
  v11 = v10;
  if (v10)
  {
    goto LABEL_7;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  Store = CalDatabaseCreateStore();
  if (Store)
  {
    v11 = Store;
    CalStoreSetExternalID();
LABEL_7:
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a3)
    {
      if (CFDictionaryGetValue(a3, @"StoreDisplayName"))
      {
        CalStoreSetName();
      }

      Value = CFDictionaryGetValue(a3, @"StoreType");
      if (Value)
      {
        valuePtr = -1;
        if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
        {
          CalStoreSetType();
        }
      }
    }

    v14 = CalDatabaseCopyProperty();
    if (!v14)
    {
      goto LABEL_27;
    }

    v15 = v14;
    if (CFStringGetIntValue(v14) <= 106)
    {
      Type = CalStoreGetType();
      CFRelease(v15);
      if (Type != 3)
      {
        goto LABEL_27;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      v17 = CalStoreCopyCalendars();
      if (!v17)
      {
        goto LABEL_27;
      }

      v15 = v17;
      Count = CFArrayGetCount(v17);
      if (Count >= 1)
      {
        v19 = Count;
        for (i = 0; i != v19; ++i)
        {
          CFArrayGetValueAtIndex(v15, i);
          UID = CalCalendarGetUID();
          v22 = CFStringCreateWithFormat(0, 0, @"%d", UID);
          CalCalendarSetExternalID();
          if (v22)
          {
            CFRelease(v22);
          }
        }
      }
    }

    CFRelease(v15);
LABEL_27:
    if (!v10)
    {
      CalDatabaseSave();
    }

    v23 = *(v8 + 25);
    if (v23)
    {
      CFRelease(v23);
    }

    v24 = 0;
    *(v8 + 25) = v11;
    goto LABEL_45;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (a4)
  {
    *a4 = @"Could not create a new calendar store";
    CFRetain(@"Could not create a new calendar store");
  }

  if (DLShouldLog())
  {
LABEL_41:
    _DLLog();
  }

LABEL_42:
  if (DLShouldLog())
  {
    _DLLog();
  }

  v24 = 0xFFFFFFFFLL;
LABEL_45:
  *(v8 + 78) = CalDatabaseRegisterClientForPersistentChangeTrackingInStore();
  *&v26 = 0x100000001;
  *(&v26 + 1) = 0x100000001;
  *(v8 + 316) = v26;
  *(v8 + 332) = 0xFFFFFFFEFFFFFFFELL;
  *(v8 + 43) = 0;
  v8[340] = 0;
  *(v8 + 88) = 257;
  v8[356] = 1;
  if (a3)
  {
    v27 = CFDictionaryGetValue(a3, @"ShouldSendAllCalendarsOnFastSync");
    if (v27)
    {
      v28 = v27;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8[340] = CFBooleanGetValue(v28);
    }

    v29 = CFDictionaryGetValue(a3, @"OrganizerAddressSet");
    if (v29)
    {
      v30 = v29;
      if (DLShouldLog())
      {
        _DLLog();
      }

      *(v8 + 43) = CFRetain(v30);
    }

    v31 = CFDictionaryGetValue(a3, @"ShouldSyncAttendeesAndOrganizers");
    if (v31)
    {
      v32 = v31;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8[352] = CFBooleanGetValue(v32);
    }

    v33 = CFDictionaryGetValue(a3, @"ShouldSyncCalendarColors");
    if (v33)
    {
      v34 = v33;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8[353] = CFBooleanGetValue(v34);
    }

    v35 = CFDictionaryGetValue(a3, @"UpdateAnchorsOnPull");
    if (v35)
    {
      v36 = v35;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8[354] = CFBooleanGetValue(v36);
    }

    v37 = CFDictionaryGetValue(a3, @"IsEventsOnly");
    if (v37)
    {
      v38 = v37;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8[357] = CFBooleanGetValue(v38);
    }

    v39 = CFDictionaryGetValue(a3, @"IsRemindersOnly");
    if (v39)
    {
      v40 = v39;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8[358] = CFBooleanGetValue(v40);
    }

    v41 = CFDictionaryGetValue(a3, @"IsTetheredSync");
    if (v41)
    {
      v42 = v41;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8[359] = CFBooleanGetValue(v42);
    }
  }

  return v24;
}

uint64_t CalendarsDataSourceGetVersionFunction(uint64_t a1, CFTypeRef *a2)
{
  v3 = sCalendarDataSourceVersion;
  if (!sCalendarDataSourceVersion)
  {
    v3 = CFNumberCreate(0, kCFNumberIntType, &kDefaultCalendarsDataSourceVersion);
    sCalendarDataSourceVersion = v3;
  }

  *a2 = CFRetain(v3);
  return 0;
}

uint64_t CalendarsDataSourceCanSyncWithVersionFunction(uint64_t a1, CFNumberRef number, void *a3)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  v5 = MEMORY[0x277CBED28];
  v6 = valuePtr;
  if (valuePtr <= 102)
  {
    v5 = MEMORY[0x277CBED10];
  }

  *a3 = *v5;
  if (v6 <= 104)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    *(a1 + 352) = 0;
    v6 = valuePtr;
  }

  if (v6 <= 107)
  {
    *(a1 + 356) = 0;
    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  return 0;
}

uint64_t CalendarsDataSourceMigrateFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  CalStoreGetUID();
  v6 = CalDatabaseCopyStoreWithUID();
  if (v6)
  {
    v7 = v6;
    if (DLShouldLog())
    {
      _DLLog();
    }

    v8 = CalStoreCopyCalendars();
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count < 1)
      {
        CFRelease(v9);
      }

      else
      {
        v11 = Count;
        v21 = a1;
        v12 = 0;
        for (i = 0; i != v11; ++i)
        {
          CFArrayGetValueAtIndex(v9, i);
          v14 = CalCalendarCopyType();
          if ((CalCalendarIsSubscribed() & 1) != 0 || (CalCalendarIsInbox() & 1) != 0 || (CalCalendarIsNotificationsCollection() & 1) != 0 || CalCalendarGetSharingStatus() == 3 || v14 && (CFStringCompare(v14, @"caldav", 0) == kCFCompareEqualTo || CFStringCompare(v14, @"urlsubscribe", 0) == kCFCompareEqualTo) || CalCalendarGetSharingStatus() == 2 || CalCalendarIsReadOnly())
          {
            v15 = CalCalendarCopyTitle();
            if (DLShouldLog())
            {
              CalCalendarGetUID();
              _DLLog();
            }

            if (v15)
            {
              CFRelease(v15);
            }

            CalRemoveCalendar();
            v12 = 1;
          }

          if (v14)
          {
            CFRelease(v14);
          }
        }

        CFRelease(v9);
        a1 = v21;
        if (v12)
        {
          CalDatabaseSave();
        }
      }
    }

    if (*(a1 + 357) || *(a1 + 358) || *(a2 + 357) || *(a2 + 358))
    {
      v17 = CalDatabaseMigrateCalendarsWithEntityType();
    }

    else
    {
      v17 = CalStoreMigrateToStore();
    }

    v18 = v17;
    CFRelease(v7);
    if (v18)
    {
      _setComputerSyncAnchorForStore_0(a2, 0);
      _setDeviceSyncAnchorForStore_0(a2, 0);
      if (CalDatabaseSave())
      {
        v19 = 0;
      }

      else
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        v19 = 0xFFFFFFFFLL;
      }

      _setComputerSyncAnchorForStore_0(a1, 0);
      _setDeviceSyncAnchorForStore_0(a1, 0);
      if ((CalDatabaseSave() & 1) == 0)
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        return 0xFFFFFFFFLL;
      }

      return v19;
    }

    v16 = @"CalendarsDataSourceMigrateFunction: could not perform cal store migration";
  }

  else
  {
    v16 = @"CalendarsDataSourceMigrateFunction: Could not get the destination data source";
  }

  return MEMORY[0x2821867D0](0xFFFFFFFFLL, a3, v16);
}

uint64_t CalendarsDataSourceRemoveStoreFunction(uint64_t a1)
{
  if (DLShouldLog())
  {
    CalStoreGetUID();
    _DLLog();
  }

  _setComputerSyncAnchorForStore_0(a1, 0);
  _setDeviceSyncAnchorForStore_0(a1, 0);
  v2 = CalStoreCopyExternalID();
  CalRemoveStore();
  if (CalDatabaseSave())
  {
    v3 = 0;
    if (!v2)
    {
      return v3;
    }

    goto LABEL_9;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v3 = 0xFFFFFFFFLL;
  if (v2)
  {
LABEL_9:
    CFRelease(v2);
  }

  return v3;
}

uint64_t CalendarsDataSourceGetSyncTypeAndExchangeSyncAnchors(void *a1, CFTypeRef *a2, const __CFString *a3, const void *a4, uint64_t *a5, CFTypeRef *a6)
{
  v12 = _copyComputerSyncAnchorKey_0(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v13 = CalDatabaseCopyProperty();
  if (!v13)
  {
    v14 = CalDatabaseCopyProperty();
    if (v14)
    {
      v15 = v14;
      if (CFStringCompare(v14, @"__UNUSED__", 0))
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        CalDatabaseSetProperty();
        CalDatabaseSetProperty();
        v13 = CFRetain(v15);
      }

      else
      {
        v13 = 0;
      }

      CFRelease(v15);
    }

    else
    {
      v13 = 0;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (a4)
  {
    CFRetain(a4);
    a1[19] = DLMemoryPoolAddObject();
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = CFRetain(@"SDSyncTypeFast");
  *a5 = v13;
  v16 = _copyDeviceSyncAnchorKey_0(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v17 = CalDatabaseCopyProperty();
  if (!v17)
  {
    v18 = CalDatabaseCopyProperty();
    if (v18)
    {
      v19 = v18;
      if (CFStringCompare(v18, @"__UNUSED__", 0))
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        CalDatabaseSetProperty();
        CalDatabaseSetProperty();
        v17 = CFRetain(v19);
      }

      else
      {
        v17 = 0;
      }

      CFRelease(v19);
    }

    else
    {
      v17 = 0;
    }
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v20 = CalDatabaseCopyProperty();
  v21 = CFStringCreateWithFormat(0, 0, @"%d", kDefaultCalendarsDataSourceVersion);
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v17)
  {
    if (v20 && CFStringCompare(v20, v21, 0) == kCFCompareEqualTo)
    {
      if (a3 && CFStringCompare(v17, a3, 0) == kCFCompareEqualTo)
      {
LABEL_40:
        CFRelease(v17);
        if (!v20)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      v22 = @"SDSyncTypeSlow";
    }

    else
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v22 = @"SDSyncTypeReset";
    }

    *a2 = CFRetain(v22);
    goto LABEL_40;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = CFRetain(@"SDSyncTypeReset");
  if (v20)
  {
LABEL_41:
    CFRelease(v20);
  }

LABEL_42:
  if (v21)
  {
    CFRelease(v21);
  }

  v23 = CFLocaleCopyCurrent();
  v24 = CFDateFormatterCreate(0, v23, kCFDateFormatterLongStyle, kCFDateFormatterLongStyle);
  CFDateFormatterSetFormat(v24, @"MMM dd yyyy HH:mm:ss ZZZ");
  Current = CFAbsoluteTimeGetCurrent();
  CFDateFormatterCreateStringWithAbsoluteTime(0, v24, Current);
  v26 = DLMemoryPoolAddObject();
  a1[18] = v26;
  *a6 = CFRetain(v26);
  if (DLShouldLog())
  {
    _DLLog();
  }

  CFRelease(v24);
  CFRelease(v23);
  return 0;
}

uint64_t CalendarsDataSourceClearSyncAnchors(uint64_t a1)
{
  _setComputerSyncAnchorForStore_0(a1, 0);
  _setDeviceSyncAnchorForStore_0(a1, 0);
  return CalDatabaseSave() - 1;
}

uint64_t CalendarsDataSourceClearAllRecords(uint64_t a1)
{
  if (*(a1 + 357) || *(a1 + 358))
  {
    v2 = CalStoreCopyCalendars();
    if (v2)
    {
      v3 = v2;
      Count = CFArrayGetCount(v2);
      if (Count >= 1)
      {
        v5 = Count;
        for (i = 0; i != v5; ++i)
        {
          CFArrayGetValueAtIndex(v3, i);
          if (CalCalendarCanContainEntityType())
          {
            if (DLShouldLog())
            {
              CalCalendarGetUID();
              _DLLog();
            }

            if (CalCalendarCanContainEntityType())
            {
              CalDatabaseRemoveAllCalendarItemsWithCalendarAndEntityType();
              CalCalendarSetCanContainEntityType();
            }

            else
            {
              v7 = CalCalendarCopyTitle();
              v8 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v7);
              if (v7)
              {
                CFRelease(v7);
              }

              CalDatabaseSetProperty();
              if (v8)
              {
                CFRelease(v8);
              }

              CalRemoveCalendar();
            }
          }
        }
      }

      CFRelease(v3);
    }
  }

  else
  {
    if ((*(a1 + 312) & 0x80000000) == 0)
    {
      CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient();
    }

    v9 = CalDatabaseCopyOfAllCalendarsInStore();
    if (v9)
    {
      v10 = v9;
      v11 = CFArrayGetCount(v9);
      if (v11 >= 1)
      {
        v12 = v11;
        for (j = 0; j != v12; ++j)
        {
          CFArrayGetValueAtIndex(v10, j);
          v14 = CalCalendarCopyTitle();
          if (DLShouldLog())
          {
            UID = CalCalendarGetUID();
            _DLLog();
          }

          v15 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v14, UID);
          if (v14)
          {
            CFRelease(v14);
          }

          CalDatabaseSetProperty();
          if (v15)
          {
            CFRelease(v15);
          }

          CalRemoveCalendar();
        }
      }

      CFRelease(v10);
    }

    if (!*(a1 + 144))
    {
      CFRetain(@"---");
      *(a1 + 144) = DLMemoryPoolAddObject();
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    _setDeviceSyncAnchorForStore_0(a1, *(a1 + 144));
  }

  return 0;
}

uint64_t CalendarsDataSourceGetChanges(uint64_t a1, CFDictionaryRef *a2, void *a3)
{
  *a2 = 0;
  v6 = *(a1 + 176);
  if (v6 == 2)
  {
LABEL_4:
    *(a1 + 320) = CalDatabaseCopyEventChangesInStore();
    *(a1 + 324) = CalDatabaseCopyTaskChangesInStore();
    *(a1 + 328) = CalDatabaseCopyAlarmChangesInStore();
    *(a1 + 332) = CalDatabaseCopyRecurrenceChangesInStore();
    *(a1 + 336) = CalDatabaseCopyAttendeeChangesInStore();
    *a3 = *MEMORY[0x277CBED10];
    _AccumulateChangedRecords(a1, 2, a2, 0, 0);
    _AccumulateChangedRecords(a1, 8, a2, 0, 0);
    _AccumulateChangedRecords(a1, 4, a2, 0, 0);
    _AccumulateChangedRecords(a1, 5, a2, 0, 0);
    _AccumulateChangedRecords(a1, 7, a2, 0, 0);
    if (!*(a1 + 354))
    {
      _saveDeviceSyncAnchorAndClearChangeHistory_0(a1);
    }

    result = 0;
    *(a1 + 176) = 6;
    return result;
  }

  if (!v6)
  {
    *(a1 + 176) = 2;
    *(a1 + 316) = CalDatabaseCopyCalendarChangesInStore();
    *(a1 + 304) = CFSetCreateMutable(0, 0, 0);
    if (CFArrayGetCount(0) >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(a1 + 304);
        ValueAtIndex = CFArrayGetValueAtIndex(0, v8);
        CFSetAddValue(v9, ValueAtIndex);
        ++v8;
      }

      while (v8 < CFArrayGetCount(0));
    }

    if (*(a1 + 340) == 1)
    {
      v11 = CalDatabaseCopyOfAllCalendarsInStore();
      if (v11)
      {
        v12 = v11;
        _AccumulateCalendars(a1, a2, v11);
        CFRelease(v12);
        if (DLShouldLog())
        {
          _DLLog();
        }

        if (*a2 && CFDictionaryGetCount(*a2) >= 1)
        {
          *a3 = *MEMORY[0x277CBED28];
          return 0;
        }
      }
    }

    else
    {
      _AccumulateChangedRecords(a1, 1, a2, 0, 0);
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (*a2 && CFDictionaryGetCount(*a2) >= 1)
      {
        result = 0;
        *a3 = *MEMORY[0x277CBED28];
        return result;
      }
    }

    goto LABEL_4;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  return 0xFFFFFFFFLL;
}

uint64_t CalendarsDataSourceGetAllRecords(uint64_t a1, CFMutableDictionaryRef *a2, void *a3)
{
  *a2 = 0;
  *a3 = *MEMORY[0x277CBED28];
  v6 = *(a1 + 176);
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 != 2)
      {
LABEL_31:
        if (DLShouldLog())
        {
          _DLLog();
        }

        goto LABEL_33;
      }

      *(a1 + 320) = CalDatabaseCopyEventChangesInStore();
      v11 = CalDatabaseCopyOfAllEventsInStore();
      if (v11)
      {
        v12 = v11;
        _AccumulateEvents(a1, a2, v11);
        if (*(a1 + 352) == 1)
        {
          v13 = *(a1 + 288);
          if (v13)
          {
            CFRelease(v13);
            *(a1 + 288) = 0;
          }

          _AccumulateOrganizers(a1, (a1 + 288), v12);
        }

        CFRelease(v12);
      }

      v14 = 3;
    }

    else
    {
      *(a1 + 316) = CalDatabaseCopyCalendarChangesInStore();
      v19 = CalDatabaseCopyOfAllCalendarsInStore();
      if (v19)
      {
        v20 = v19;
        _AccumulateCalendars(a1, a2, v19);
        CFRelease(v20);
      }

      v14 = 2;
    }

LABEL_30:
    *(a1 + 176) = v14;
    return 0;
  }

  if (v6 == 3)
  {
    *(a1 + 328) = CalDatabaseCopyAlarmChangesInStore();
    v15 = CalDatabaseCopyOfAllAlarmsInStore();
    if (v15)
    {
      v16 = v15;
      _AccumulateAlarms(a2, v15);
      CFRelease(v16);
    }

    v14 = 4;
    goto LABEL_30;
  }

  if (v6 == 4)
  {
    *(a1 + 332) = CalDatabaseCopyRecurrenceChangesInStore();
    v17 = CalDatabaseCopyOfAllRecurrencesInStore();
    if (v17)
    {
      v18 = v17;
      _AccumulateRecurrences(a2, v17);
      CFRelease(v18);
    }

    if (!*(a1 + 352))
    {
      goto LABEL_33;
    }

    v14 = 5;
    goto LABEL_30;
  }

  if (v6 != 5)
  {
    goto LABEL_31;
  }

  *(a1 + 336) = CalDatabaseCopyAttendeeChangesInStore();
  v7 = CalDatabaseCopyOfAllAttendeesInStore();
  if (v7)
  {
    v8 = v7;
    _AccumulateAttendees(a1, a2, v7);
    CFRelease(v8);
  }

  v9 = *(a1 + 288);
  if (v9)
  {
    Mutable = *a2;
    if (!*a2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *a2 = Mutable;
      v9 = *(a1 + 288);
    }

    CFDictionaryApplyFunction(v9, _addOrganizersToDictionary, Mutable);
    CFRelease(*(a1 + 288));
  }

LABEL_33:
  *(a1 + 176) = 6;
  *a3 = *MEMORY[0x277CBED10];
  if (!*(a1 + 354) && !*(a1 + 355))
  {
    _saveDeviceSyncAnchorAndClearChangeHistory_0(a1);
  }

  return 0;
}

uint64_t CalendarsDataSourceGetCountOfRecords(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 357))
  {
    *a2 = 0;
    CountOfEventsInStore = CalDatabaseGetCountOfEventsInStore();
  }

  else
  {
    v4 = *(a1 + 358);
    *a2 = 0;
    if (v4)
    {
      CountOfEventsInStore = CalDatabaseGetCountOfTasksInStore();
    }

    else
    {
      CountOfEventsInStore = CalDatabaseGetCountOfCalendarItemsInStore();
    }
  }

  *a2 = CountOfEventsInStore;
  return 0;
}

uint64_t CalendarsDataSourceProcessChanges(const __CFDictionary **context, CFDictionaryRef theDict, uint64_t a3, void *a4)
{
  if (*(context + 354) && !*(context + 355))
  {
    _saveDeviceSyncAnchorAndClearChangeHistory_0(context);
  }

  if (*(context + 352) == 1 && !context[43])
  {
    context[43] = _copySetOfEmailAddressesFromMessageFramework(context);
  }

  v7 = context[20];
  if (v7)
  {
    CFDictionaryApplyFunction(v7, _addCurrentRemappingsToAllRemappings, context);
    context[20] = 0;
  }

  CFDictionaryApplyFunction(theDict, _ChangesApplierFunction_0, context);
  CalDatabaseProcessAddedRecords();
  v8 = context[26];
  if (v8)
  {
    CFDictionaryApplyFunction(v8, _UpdateCalendarRemapping, context);
    context[26] = 0;
  }

  v9 = context[27];
  if (v9)
  {
    CFDictionaryApplyFunction(v9, _UpdateEventRemapping, context);
    context[27] = 0;
  }

  v10 = context[34];
  if (v10 && CFDictionaryGetCount(v10))
  {
    if (context[33])
    {
      CFDictionaryApplyFunction(context[34], _UpdateDetachedEvents, context);
      v11 = context[35];
      if (v11)
      {
        CFSetApplyFunction(v11, _RemoveProcessedMainRecordIds, context);
        CFSetRemoveAllValues(context[35]);
      }
    }

    else if (DLShouldLog())
    {
      _DLLog();
    }
  }

  v12 = context[31];
  if (v12)
  {
    CFDictionaryApplyFunction(v12, _UpdateOrganizerRemapping, context);
    context[31] = 0;
  }

  v13 = context[28];
  if (v13)
  {
    CFDictionaryApplyFunction(v13, _UpdateTaskRemapping, context);
    context[28] = 0;
  }

  v14 = context[29];
  if (v14)
  {
    CFDictionaryApplyFunction(v14, _UpdateAlarmRemapping, context);
    context[29] = 0;
  }

  v15 = context[30];
  if (v15)
  {
    CFDictionaryApplyFunction(v15, _UpdateRecurrenceRemapping, context);
    context[30] = 0;
  }

  v16 = context[32];
  if (v16)
  {
    CFDictionaryApplyFunction(v16, _UpdateAttendeeRemapping, context);
    context[32] = 0;
  }

  *a4 = context[20];
  return 0;
}

uint64_t CalendarsDataSourceCommit(uint64_t a1, void *a2)
{
  if (*(a1 + 354) && !*(a1 + 355))
  {
    _saveDeviceSyncAnchorAndClearChangeHistory_0(a1);
  }

  if (!*(a1 + 152))
  {
    CFRetain(@"---");
    *(a1 + 152) = DLMemoryPoolAddObject();
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  _setComputerSyncAnchorForStore_0(a1, *(a1 + 152));
  v4 = CFStringCreateWithFormat(0, 0, @"%d", kDefaultCalendarsDataSourceVersion);
  CalDatabaseSetProperty();
  if (v4)
  {
    CFRelease(v4);
  }

  if (*(a1 + 359))
  {
    CalStoreSetAllowsEvents();
  }

  if (CalDatabaseSaveAndFlushCaches())
  {
    CalDatabaseWaitForSpotlight();
    return 0;
  }

  else
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a2)
    {
      *a2 = @"Can't commit Calendars";
      CFRetain(@"Can't commit Calendars");
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t CalendarsDataSourceGetEntityTypeProcessOrder(uint64_t a1, __CFArray **a2)
{
  Mutable = *(a1 + 296);
  if (!Mutable)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = MEMORY[0x277CBF128];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v7 = CFArrayCreateMutable(v5, 0, v6);
    CFArrayAppendValue(v7, @"com.apple.calendars.Calendar");
    CFArrayAppendValue(Mutable, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v8, @"com.apple.calendars.Event");
    CFArrayAppendValue(Mutable, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v9, @"com.apple.calendars.AudioAlarm");
    CFArrayAppendValue(v9, @"com.apple.calendars.DisplayAlarm");
    CFArrayAppendValue(Mutable, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v10, @"com.apple.calendars.Recurrence");
    CFArrayAppendValue(Mutable, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v11, @"com.apple.calendars.Attendee");
    CFArrayAppendValue(v11, @"com.apple.calendars.Organizer");
    CFArrayAppendValue(Mutable, v11);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v12, @"com.apple.calendars.CalendarOrder");
    CFArrayAppendValue(Mutable, v12);
    if (v12)
    {
      CFRelease(v12);
    }

    *(a1 + 296) = Mutable;
  }

  *a2 = Mutable;
  return 0;
}

uint64_t CalendarsDataSourceDeleteDataSource(void *a1)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  v2 = a1[17];
  if (v2)
  {
    CFRelease(v2);
    a1[17] = 0;
  }

  v3 = a1[37];
  if (v3)
  {
    CFRelease(v3);
    a1[37] = 0;
  }

  v4 = a1[24];
  if (v4)
  {
    CFRelease(v4);
    a1[24] = 0;
  }

  v5 = a1[25];
  if (v5)
  {
    CFRelease(v5);
    a1[25] = 0;
  }

  v6 = a1[43];
  if (v6)
  {
    CFRelease(v6);
    a1[43] = 0;
  }

  v7 = a1[23];
  if (v7)
  {
    CFRelease(v7);
    a1[23] = 0;
  }

  v8 = a1[38];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a1);
  return 0;
}

id _reallyCopySetOfEmailAddressesFromMessageFramework()
{
  v13 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  if (_calendarSyncAccountLoader_onceToken != -1)
  {
    _reallyCopySetOfEmailAddressesFromMessageFramework_cold_1();
  }

  v1 = [_calendarSyncAccountLoader_sSyncAccountLoader mailAccounts];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [v0 addObjectsFromArray:{objc_msgSend(*(*(&v8 + 1) + 8 * i), "emailAddresses")}];
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v6 = DLShouldLog();
  if (v0)
  {
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else if (v6)
  {
LABEL_16:
    _DLLog();
  }

  return v0;
}

uint64_t _copySetOfEmailAddressesFromMessageFramework(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___copySetOfEmailAddressesFromMessageFramework_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_copySetOfEmailAddressesFromMessageFramework_onceToken != -1)
  {
    dispatch_once(&_copySetOfEmailAddressesFromMessageFramework_onceToken, block);
  }

  return _copySetOfEmailAddressesFromMessageFramework_sEmails;
}

id ___copySetOfEmailAddressesFromMessageFramework_block_invoke()
{
  result = _reallyCopySetOfEmailAddressesFromMessageFramework();
  _copySetOfEmailAddressesFromMessageFramework_sEmails = result;
  return result;
}

void _setComputerSyncAnchorForStore_0(uint64_t a1, uint64_t a2)
{
  v2 = _copyComputerSyncAnchorKey_0(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  CalDatabaseSetProperty();
  if (v2)
  {

    CFRelease(v2);
  }
}

void _setDeviceSyncAnchorForStore_0(uint64_t a1, uint64_t a2)
{
  v2 = _copyDeviceSyncAnchorKey_0(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  CalDatabaseSetProperty();
  if (v2)
  {

    CFRelease(v2);
  }
}

CFStringRef _copyComputerSyncAnchorKey_0(uint64_t a1)
{
  if (DLShouldLog())
  {
    if (a1)
    {
      v2 = *(a1 + 200);
      if (v2)
      {
        UID = CalStoreGetUID();
LABEL_7:
        v6 = v2;
        v7 = UID;
        _DLLog();
        goto LABEL_8;
      }
    }

    else
    {
      v2 = 0;
    }

    UID = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

LABEL_8:
  if (a1 && *(a1 + 200))
  {
    v4 = CalStoreGetUID();
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(0, 0, @"ComputerStoreSyncAnchor-%d", v4, v6, v7);
}

CFStringRef _copyDeviceSyncAnchorKey_0(uint64_t a1)
{
  if (DLShouldLog())
  {
    if (a1)
    {
      v2 = *(a1 + 200);
      if (v2)
      {
        UID = CalStoreGetUID();
LABEL_7:
        v6 = v2;
        v7 = UID;
        _DLLog();
        goto LABEL_8;
      }
    }

    else
    {
      v2 = 0;
    }

    UID = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

LABEL_8:
  if (a1 && *(a1 + 200))
  {
    v4 = CalStoreGetUID();
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(0, 0, @"DeviceStoreSyncAnchor-%d", v4, v6, v7);
}

void _AccumulateCalendars(uint64_t a1, CFMutableDictionaryRef *a2, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray))
  {
    v6 = MEMORY[0x277CBECE8];
    if (!*a2)
    {
      *a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      v10 = *v6;
      value = *MEMORY[0x277CBED28];
      do
      {
        if (CFArrayGetValueAtIndex(theArray, v9) == *(a1 + 192))
        {
          if (DLShouldLog())
          {
            goto LABEL_25;
          }
        }

        else if (CalCalendarIsSubscribed())
        {
          if (DLShouldLog())
          {
            goto LABEL_25;
          }
        }

        else if (CalCalendarCanContainEntityType())
        {
          UID = CalCalendarGetUID();
          v12 = CalCalendarCopyTitle();
          if (UID == -1)
          {
            v18 = v12;
            if (DLShouldLog())
            {
              _DLLog();
            }

            if (!v18)
            {
              goto LABEL_26;
            }

            goto LABEL_65;
          }

          if (v12)
          {
            cf = v12;
            key = CFStringCreateWithFormat(0, 0, @"%d/%d", 1, UID);
            Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v14 = *(a1 + 304);
            if (v14 && CFSetContainsValue(v14, UID))
            {
              CFDictionarySetValue(Mutable, @"com.apple.MobileSync.updated", value);
            }

            CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Calendar");
            theDict = Mutable;
            CFDictionarySetValue(Mutable, @"title", cf);
            valuePtr = 0;
            v15 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", cf);
            v16 = CalDatabaseCopyProperty();
            if (v16)
            {
              v17 = v16;
              if (CFStringGetIntValue(v16))
              {
                valuePtr = 1;
              }

              CFDictionarySetValue(theDict, @"com.apple.MobileSync.calDAVInfo", value);
              if (DLShouldLog())
              {
                _DLLog();
              }

              CFRelease(v17);
            }

            else
            {
              valuePtr = CalCalendarIsReadOnly();
              if (valuePtr && DLShouldLog())
              {
                _DLLog();
              }
            }

            if (v15)
            {
              CFRelease(v15);
            }

            v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            if (v19)
            {
              v20 = v19;
              CFDictionarySetValue(theDict, @"read only", v19);
              CFRelease(v20);
            }

            else if (DLShouldLog())
            {
              _DLLog();
            }

            if (*(a1 + 353) == 1)
            {
              v37 = -1;
              v38 = -1;
              v35 = 255;
              v36 = -1;
              ColorComponents = CalCalendarGetColorComponents();
              if (DLShouldLog())
              {
                _DLLog();
              }

              v22 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
              if ((ColorComponents & 1) == 0)
              {
                if (DLShouldLog())
                {
                  _DLLog();
                }

                v36 = -1;
                v37 = -1;
                v38 = -1;
              }

              v29 = v10;
              v30 = a2;
              v23 = CFNumberCreate(0, kCFNumberIntType, &v38);
              v24 = CFNumberCreate(0, kCFNumberIntType, &v37);
              v25 = CFNumberCreate(0, kCFNumberIntType, &v36);
              v26 = CFNumberCreate(0, kCFNumberIntType, &v35);
              CFArrayAppendValue(v22, v23);
              CFArrayAppendValue(v22, v24);
              CFArrayAppendValue(v22, v25);
              CFArrayAppendValue(v22, v26);
              if (v23)
              {
                CFRelease(v23);
              }

              if (v24)
              {
                CFRelease(v24);
              }

              if (v25)
              {
                CFRelease(v25);
              }

              a2 = v30;
              if (v26)
              {
                CFRelease(v26);
              }

              CFDictionarySetValue(theDict, @"colorComponents", v22);
              v10 = v29;
              if (v22)
              {
                CFRelease(v22);
              }
            }

            v27 = CalCalendarCopyType();
            if (v27)
            {
              v28 = v27;
              CFDictionarySetValue(theDict, @"com.apple.ical.type", v27);
              CFRelease(v28);
            }

            v18 = key;
            CFDictionarySetValue(*a2, key, theDict);
            if (DLShouldLog())
            {
              _DLLog();
            }

            CFRelease(cf);
            CFRelease(theDict);
LABEL_65:
            CFRelease(v18);
            goto LABEL_26;
          }

          if (DLShouldLog())
          {
LABEL_25:
            _DLLog();
          }
        }

        else if (DLShouldLog())
        {
          goto LABEL_25;
        }

LABEL_26:
        ++v9;
      }

      while (v8 != v9);
    }
  }
}

void _AccumulateEvents(uint64_t a1, CFMutableDictionaryRef *a2, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray))
  {
    v6 = MEMORY[0x277CBECE8];
    if (!*a2)
    {
      *a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      allocator = *v6;
      v51 = a1;
      v10 = *MEMORY[0x277CF78F0];
      v52 = a2;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        RowID = CalCalendarItemGetRowID();
        v13 = MEMORY[0x25F84A9A0](ValueAtIndex);
        v14 = CalCalendarItemCopyCalendar();
        v15 = v14;
        if (RowID == -1)
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          if (v13)
          {
            CFRelease(v13);
          }

          if (!v15)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (!v14)
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          v15 = v13;
          if (!v13)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (CalCalendarIsSubscribed())
        {
          if (!DLShouldLog())
          {
            goto LABEL_28;
          }
        }

        else if (CalCalendarCanContainEntityType())
        {
          if (v15 == *(a1 + 192))
          {
            UID = 0xFFFFFFFFLL;
LABEL_34:
            key = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID, v45);
            Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Event");
            if (v15 == *(a1 + 192))
            {
              if (DLShouldLog())
              {
                _DLLog();
              }
            }

            else
            {
              values = CFStringCreateWithFormat(0, 0, @"%d/%d", 1, UID);
              v18 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              CFDictionarySetValue(Mutable, @"calendar", v18);
              CFRelease(v18);
              CFRelease(values);
            }

            if (v13)
            {
              CFDictionarySetValue(Mutable, @"summary", v13);
            }

            v19 = CalEventCopyLocation_Deprecated();
            if (v19)
            {
              v20 = v19;
              CFDictionarySetValue(Mutable, @"location", v19);
              CFRelease(v20);
            }

            v21 = MEMORY[0x25F84A940](ValueAtIndex);
            if (v21)
            {
              v22 = v21;
              CFDictionarySetValue(Mutable, @"description", v21);
              CFRelease(v22);
            }

            if (CalEventIsAllDay())
            {
              LODWORD(values) = 1;
              v23 = CFNumberCreate(0, kCFNumberIntType, &values);
              CFDictionarySetValue(Mutable, @"all day", v23);
              if (v23)
              {
                CFRelease(v23);
              }
            }

            v24 = MEMORY[0x25F84A9B0](ValueAtIndex);
            if (v24)
            {
              v25 = v24;
              CFDictionarySetValue(Mutable, @"url", [v24 absoluteString]);
              CFRelease(v25);
            }

            *&v26 = COERCE_DOUBLE(CalEventCopyStartDate());
            v28 = v27;
            CalEventGetEndDate();
            if (v28)
            {
              v30 = v29;
              v31 = *&v26;
              if (CFStringCompare(v28, @"_float", 0))
              {
                CFDictionarySetValue(Mutable, @"start date.timezone", v28);
                goto LABEL_54;
              }

              if (CalEventIsAllDay())
              {
LABEL_54:
                v32 = CFDateCreate(0, *&v26);
                v33 = CFDateCreate(0, v30);
                if (v32)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v41 = CFTimeZoneCopyDefault();
                v46 = CFTimeZoneCopyAbbreviation(v41, v31);
                CFDictionarySetValue(Mutable, @"start date.timezone", v46);
                cf = v41;
                SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(v41, v31);
                values = SecondsFromGMT;
                v43 = CFNumberCreate(0, kCFNumberSInt64Type, &values);
                v44 = CFDateCreate(0, SecondsFromGMT + v31);
                v49 = v43;
                CFDictionarySetValue(Mutable, @"floatingOffset", v43);
                v48 = v44;
                CFDictionarySetValue(Mutable, @"floatingGMTDate", v44);
                v32 = CFDateCreate(0, v31 - SecondsFromGMT);
                v33 = CFDateCreate(0, v30 - SecondsFromGMT);
                if (DLShouldLog())
                {
                  v45 = v48;
                  _DLLog();
                }

                CFRelease(cf);
                CFRelease(v46);
                CFRelease(v48);
                CFRelease(v49);
                if (v32)
                {
LABEL_55:
                  CFDictionarySetValue(Mutable, @"start date", v32);
                  CFRelease(v32);
                }
              }

              CalDateTimeRelease();
              if (v33)
              {
                CFDictionarySetValue(Mutable, @"end date", v33);
                CFRelease(v33);
              }
            }

            else
            {
              CalDateTimeRelease();
            }

            CalEventGetOriginalStartDate();
            if (v34 != v10)
            {
              v35 = CFDateCreate(0, v34);
              CFDictionarySetValue(Mutable, @"original date", v35);
              CFRelease(v35);
            }

            v36 = CalEventCopyOriginalEvent();
            if (v36)
            {
              v37 = CalCalendarItemGetRowID();
              values = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, v37);
              v38 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              CFDictionarySetValue(Mutable, @"main event", v38);
              CFRelease(v38);
              CFRelease(values);
            }

            v39 = MEMORY[0x25F84A960](ValueAtIndex);
            if (v39)
            {
              v40 = v39;
              CFDictionarySetValue(Mutable, @"exception dates", v39);
              CFRelease(v40);
            }

            CFDictionarySetValue(*v52, key, Mutable);
            if (DLShouldLog())
            {
              _DLLog();
            }

            a1 = v51;
            if (v13)
            {
              CFRelease(v13);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (key)
            {
              CFRelease(key);
            }

            CFRelease(v15);
            v15 = v36;
            if (!v36)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

          UID = CalCalendarGetUID();
          if (UID != -1)
          {
            goto LABEL_34;
          }

          if (!DLShouldLog())
          {
            goto LABEL_28;
          }
        }

        else if (!DLShouldLog())
        {
          goto LABEL_28;
        }

        _DLLog();
LABEL_28:
        if (v13)
        {
          CFRelease(v13);
        }

LABEL_30:
        CFRelease(v15);
LABEL_31:
        ++v9;
      }

      while (v8 != v9);
    }
  }
}

void _AccumulateOrganizers(uint64_t a1, CFMutableDictionaryRef *a2, CFArrayRef theArray)
{
  if (*(a1 + 352) && CFArrayGetCount(theArray))
  {
    v4 = MEMORY[0x277CBECE8];
    if (!*a2)
    {
      *a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      allocator = *v4;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Sync/DataSources/CalendarsDataSource.m";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        v10 = CalCalendarItemCopyCalendar();
        if (v10)
        {
          v11 = v10;
          if (CalCalendarIsSubscribed())
          {
            if (DLShouldLog())
            {
LABEL_31:
              _DLLog();
            }

LABEL_32:
            v24 = v11;
LABEL_33:
            CFRelease(v24);
            goto LABEL_34;
          }

          if ((CalCalendarCanContainEntityType() & 1) == 0)
          {
            if (DLShouldLog())
            {
              goto LABEL_31;
            }

            goto LABEL_32;
          }

          CFRelease(v11);
        }

        v12 = MEMORY[0x25F84A970](ValueAtIndex);
        if (v12)
        {
          v13 = v12;
          RowID = CalCalendarItemGetRowID();
          if (RowID == -1)
          {
            if (DLShouldLog())
            {
              _DLLog();
            }

            goto LABEL_34;
          }

          v15 = RowID;
          v16 = v8;
          values = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID);
          v17 = CFStringCreateWithFormat(0, 0, @"%d/%d", 8, v15);
          v18 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
          Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Organizer");
          CFDictionarySetValue(Mutable, @"owner", v18);
          v20 = MEMORY[0x25F84AAD0](v13);
          if (v20)
          {
            v21 = v20;
            CFDictionarySetValue(Mutable, @"common name", v20);
            CFRelease(v21);
          }

          v22 = MEMORY[0x25F84AAE0](v13);
          if (v22)
          {
            v23 = v22;
            CFDictionarySetValue(Mutable, @"email", v22);
            CFRelease(v23);
          }

          CFDictionarySetValue(*a2, v17, Mutable);
          v8 = v16;
          if (DLShouldLog())
          {
            _DLLog();
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          if (values)
          {
            CFRelease(values);
            values = 0;
          }

          v24 = v13;
          goto LABEL_33;
        }

LABEL_34:
        ++v7;
      }

      while (v6 != v7);
    }
  }
}

void _AccumulateAlarms(CFMutableDictionaryRef *a1, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray))
  {
    v3 = MEMORY[0x277CBECE8];
    if (!*a1)
    {
      *a1 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      allocator = *v3;
      do
      {
        CFArrayGetValueAtIndex(theArray, v6);
        UID = CalAlarmGetUID();
        if (UID == -1)
        {
          if (DLShouldLog())
          {
            goto LABEL_16;
          }
        }

        else
        {
          v8 = UID;
          v9 = CalAlarmCopyOwningEntity();
          if (v9)
          {
            v10 = v9;
            v11 = _entityTypeForRecord();
            RowID = CalCalendarItemGetRowID();
            if (RowID == -1)
            {
              if (DLShouldLog())
              {
                _DLLog();
              }
            }

            else
            {
              v13 = RowID;
              v14 = CalCalendarItemCopyCalendar();
              if (v14)
              {
                v15 = v14;
                if (CalCalendarIsSubscribed())
                {
                  if (DLShouldLog())
                  {
LABEL_35:
                    _DLLog();
                  }

LABEL_36:
                  CFRelease(v10);
                  v26 = v15;
LABEL_37:
                  CFRelease(v26);
                  goto LABEL_38;
                }

                if ((CalCalendarCanContainEntityType() & 1) == 0)
                {
                  if (DLShouldLog())
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_36;
                }

                CFRelease(v15);
              }

              v16 = 2;
              if (v11 != 2)
              {
                v16 = 3;
              }

              values = CFStringCreateWithFormat(0, 0, @"%d/%d", v16, v13);
              v17 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              v18 = CFStringCreateWithFormat(0, 0, @"%d/%d", 4, v8);
              Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (CalAlarmGetType() == 1)
              {
                v20 = Mutable;
                v21 = @"com.apple.syncservices.RecordEntityName";
                v22 = @"com.apple.calendars.AudioAlarm";
              }

              else
              {
                CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.DisplayAlarm");
                v20 = Mutable;
                v21 = @"description";
                v22 = @"Event reminder";
              }

              CFDictionarySetValue(v20, v21, v22);
              CFDictionarySetValue(Mutable, @"owner", v17);
              CalAlarmGetTriggerDate();
              if (v23 != 1.17549435e-38)
              {
                v24 = CFDateCreate(0, v23);
                CFDictionarySetValue(Mutable, @"triggerdate", v24);
                CFRelease(v24);
              }

              valuePtr = CalAlarmGetTriggerInterval();
              if (valuePtr != 0x7FFFFFFF)
              {
                v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                CFDictionarySetValue(Mutable, @"triggerduration", v25);
                CFRelease(v25);
              }

              CFDictionarySetValue(*a1, v18, Mutable);
              if (DLShouldLog())
              {
                _DLLog();
              }

              CFRelease(Mutable);
              CFRelease(values);
              CFRelease(v17);
              CFRelease(v18);
            }

            v26 = v10;
            goto LABEL_37;
          }

          if (DLShouldLog())
          {
LABEL_16:
            _DLLog();
          }
        }

LABEL_38:
        ++v6;
      }

      while (v5 != v6);
    }
  }
}

void _AccumulateRecurrences(CFMutableDictionaryRef *a1, CFArrayRef theArray)
{
  v2 = theArray;
  if (CFArrayGetCount(theArray))
  {
    v4 = MEMORY[0x277CBECE8];
    if (!*a1)
    {
      *a1 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      allocator = *v4;
      v74 = a1;
      v8 = *MEMORY[0x277CF78F0];
      v75 = v2;
      v76 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v7);
        UID = CalRecurrenceGetUID();
        if (UID == -1)
        {
          if (DLShouldLog())
          {
            goto LABEL_15;
          }
        }

        else
        {
          v11 = UID;
          v12 = MEMORY[0x25F84AB70](ValueAtIndex);
          if (v12)
          {
            v13 = v12;
            v14 = CalCalendarItemCopyCalendar();
            if (v14)
            {
              v15 = v14;
              if (CalCalendarIsSubscribed())
              {
                if (DLShouldLog())
                {
LABEL_26:
                  _DLLog();
                }

LABEL_27:
                CFRelease(v13);
                v21 = v15;
LABEL_28:
                CFRelease(v21);
                goto LABEL_106;
              }

              if ((CalCalendarCanContainEntityType() & 1) == 0)
              {
                if (DLShouldLog())
                {
                  goto LABEL_26;
                }

                goto LABEL_27;
              }

              CFRelease(v15);
            }

            RowID = CalCalendarItemGetRowID();
            if (RowID != -1)
            {
              values = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID);
              v17 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              key = CFStringCreateWithFormat(0, 0, @"%d/%d", 5, v11);
              Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Recurrence");
              cf = v17;
              CFDictionarySetValue(Mutable, @"owner", v17);
              WeekStartDirectly = CalRecurrenceGetWeekStartDirectly();
              if (WeekStartDirectly != 7)
              {
                DayOfWeekStringForDayOfWeek = _GetDayOfWeekStringForDayOfWeek(WeekStartDirectly);
                if (DayOfWeekStringForDayOfWeek)
                {
                  CFDictionarySetValue(Mutable, @"weekstartday", DayOfWeekStringForDayOfWeek);
                }

                else if (DLShouldLog())
                {
                  _DLLog();
                }
              }

              Frequency = CalRecurrenceGetFrequency();
              if (!Frequency)
              {
                goto LABEL_46;
              }

              v23 = sFrequencyStrings_0;
              if (!sFrequencyStrings_0)
              {
                v23 = @"daily";
                sFrequencyStrings_0 = @"daily";
                sFrequencyStrings_1 = @"weekly";
                sFrequencyStrings_2 = @"monthly";
                sFrequencyStrings_3 = @"yearly";
              }

              if (Frequency > 2)
              {
                if (Frequency == 4)
                {
                  v24 = &sFrequencyStrings_3;
                  goto LABEL_42;
                }

                if (Frequency == 3)
                {
                  v24 = &sFrequencyStrings_2;
                  goto LABEL_42;
                }
              }

              else
              {
                if (Frequency == 1)
                {
                  goto LABEL_43;
                }

                v24 = &sFrequencyStrings_1;
                if (Frequency != 2)
                {
                  goto LABEL_44;
                }

LABEL_42:
                v23 = *v24;
                if (*v24)
                {
LABEL_43:
                  CFDictionarySetValue(Mutable, @"frequency", v23);
LABEL_46:
                  valuePtr = CalRecurrenceGetInterval();
                  if (valuePtr)
                  {
                    v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                    CFDictionarySetValue(Mutable, @"interval", v25);
                    CFRelease(v25);
                  }

                  v81 = CalRecurrenceGetCount();
                  if (v81 >= 1)
                  {
                    v26 = CFNumberCreate(0, kCFNumberIntType, &v81);
                    CFDictionarySetValue(Mutable, @"count", v26);
                    CFRelease(v26);
                  }

                  CalRecurrenceGetEndDate();
                  if (v27 != v8)
                  {
                    v28 = CFDateCreate(0, v27);
                    CFDictionarySetValue(Mutable, @"until", v28);
                    CFRelease(v28);
                  }

                  v29 = CalRecurrenceGetByMonthMonths();
                  if (v29)
                  {
                    v30 = v29;
                    v31 = CFArrayCreateMutable(0, 12, MEMORY[0x277CBF128]);
                    v32 = 0;
                    do
                    {
                      if ((v30 >> v32))
                      {
                        v80 = ++v32;
                        v33 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v31, v33);
                        CFRelease(v33);
                      }

                      else
                      {
                        ++v32;
                      }
                    }

                    while (v32 != 12);
                    if (CFArrayGetCount(v31) >= 1)
                    {
                      CFDictionarySetValue(Mutable, @"bymonth", v31);
                    }

                    CFRelease(v31);
                  }

                  v34 = CalRecurrenceCopyByWeekWeeks();
                  if (v34)
                  {
                    v35 = v34;
                    v36 = CFArrayGetCount(v34);
                    if (v36 >= 1)
                    {
                      v37 = v36;
                      v38 = CFArrayCreateMutable(0, v36, MEMORY[0x277CBF128]);
                      for (i = 0; i != v37; ++i)
                      {
                        LODWORD(v80) = CFArrayGetValueAtIndex(v35, i);
                        v40 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v38, v40);
                        CFRelease(v40);
                      }

                      if (CFArrayGetCount(v38) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"byweeknumber", v38);
                      }

                      CFRelease(v38);
                    }

                    CFRelease(v35);
                  }

                  v41 = CalRecurrenceCopyByYearDayDays();
                  if (v41)
                  {
                    v42 = v41;
                    v43 = CFArrayGetCount(v41);
                    if (v43 >= 1)
                    {
                      v44 = v43;
                      v45 = CFArrayCreateMutable(0, v43, MEMORY[0x277CBF128]);
                      for (j = 0; j != v44; ++j)
                      {
                        LODWORD(v80) = CFArrayGetValueAtIndex(v42, j);
                        v47 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v45, v47);
                        CFRelease(v47);
                      }

                      if (CFArrayGetCount(v45) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"byyearday", v45);
                      }

                      CFRelease(v45);
                    }

                    CFRelease(v42);
                  }

                  v48 = CalRecurrenceCopyByMonthDayDays();
                  if (v48)
                  {
                    v49 = v48;
                    v50 = CFArrayGetCount(v48);
                    if (v50 >= 1)
                    {
                      v51 = v50;
                      v52 = CFArrayCreateMutable(0, v50, MEMORY[0x277CBF128]);
                      for (k = 0; k != v51; ++k)
                      {
                        LODWORD(v80) = CFArrayGetValueAtIndex(v49, k);
                        v54 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v52, v54);
                        CFRelease(v54);
                      }

                      if (CFArrayGetCount(v52) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"bymonthday", v52);
                      }

                      CFRelease(v52);
                    }

                    CFRelease(v49);
                  }

                  v55 = CalRecurrenceCopyBySetPos();
                  if (v55)
                  {
                    v56 = v55;
                    v57 = CFArrayGetCount(v55);
                    if (v57 >= 1)
                    {
                      v58 = v57;
                      v59 = CFArrayCreateMutable(0, v57, MEMORY[0x277CBF128]);
                      for (m = 0; m != v58; ++m)
                      {
                        LODWORD(v80) = CFArrayGetValueAtIndex(v56, m);
                        v61 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v59, v61);
                        CFRelease(v61);
                      }

                      if (CFArrayGetCount(v59) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"bysetpos", v59);
                      }

                      CFRelease(v59);
                    }

                    CFRelease(v56);
                  }

                  v62 = CalRecurrenceCopyByDayDays();
                  v6 = v76;
                  if (v62)
                  {
                    v63 = v62;
                    v64 = CFArrayGetCount(v62);
                    if (v64 >= 1)
                    {
                      v65 = v64;
                      v66 = MEMORY[0x277CBF128];
                      v67 = CFArrayCreateMutable(0, v64, MEMORY[0x277CBF128]);
                      v68 = CFArrayCreateMutable(0, v65, v66);
                      for (n = 0; n != v65; ++n)
                      {
                        v70 = CFArrayGetValueAtIndex(v63, n);
                        v71 = CFNumberCreate(0, kCFNumberIntType, v70);
                        v72 = _GetDayOfWeekStringForDayOfWeek(v70[1]);
                        if (v72)
                        {
                          CFArrayAppendValue(v67, v72);
                          CFArrayAppendValue(v68, v71);
                        }

                        CFRelease(v71);
                      }

                      if (CFArrayGetCount(v67) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"bydaydays", v67);
                        CFDictionarySetValue(Mutable, @"bydayfreq", v68);
                      }

                      CFRelease(v67);
                      CFRelease(v68);
                      v6 = v76;
                    }

                    CFRelease(v63);
                  }

                  CFDictionarySetValue(*v74, key, Mutable);
                  if (DLShouldLog())
                  {
                    _DLLog();
                  }

                  CFRelease(Mutable);
                  CFRelease(values);
                  CFRelease(cf);
                  CFRelease(key);
                  CFRelease(v13);
                  v2 = v75;
                  goto LABEL_106;
                }
              }

LABEL_44:
              if (DLShouldLog())
              {
                _DLLog();
              }

              goto LABEL_46;
            }

            if (DLShouldLog())
            {
              _DLLog();
            }

            v21 = v13;
            goto LABEL_28;
          }

          if (DLShouldLog())
          {
LABEL_15:
            _DLLog();
          }
        }

LABEL_106:
        ++v7;
      }

      while (v7 != v6);
    }
  }
}

void _AccumulateAttendees(uint64_t a1, CFMutableDictionaryRef *a2, CFArrayRef theArray)
{
  if (*(a1 + 352) && CFArrayGetCount(theArray))
  {
    v5 = MEMORY[0x277CBECE8];
    if (!*a2)
    {
      *a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v34 = a2;
      allocator = *v5;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Sync/DataSources/CalendarsDataSource.m";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v12 = MEMORY[0x25F84A400](ValueAtIndex, v11);
        if (v12 == -1)
        {
          if (DLShouldLog())
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = v12;
          v14 = MEMORY[0x25F84A3C0](ValueAtIndex);
          if (v14)
          {
            v15 = v14;
            v16 = CalCalendarItemCopyCalendar();
            if (v16)
            {
              v17 = v16;
              if (CalCalendarIsSubscribed())
              {
                if (DLShouldLog())
                {
                  _DLLog();
                }

                CFRelease(v17);
                goto LABEL_36;
              }

              if (CalCalendarCanContainEntityType())
              {
                CFRelease(v17);
                goto LABEL_20;
              }

              if (DLShouldLog())
              {
                _DLLog();
              }

              CFRelease(v15);
              v33 = v17;
            }

            else
            {
LABEL_20:
              RowID = CalCalendarItemGetRowID();
              if (RowID != -1)
              {
                v19 = v9;
                values = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID);
                v20 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
                v21 = CFStringCreateWithFormat(0, 0, @"%d/%d", 7, v13);
                Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Attendee");
                CFDictionarySetValue(Mutable, @"owner", v20);
                v23 = MEMORY[0x25F84A3A0](ValueAtIndex);
                if (v23)
                {
                  v24 = v23;
                  CFDictionarySetValue(Mutable, @"common name", v23);
                  CFRelease(v24);
                }

                v25 = MEMORY[0x25F84A3B0](ValueAtIndex);
                if (v25)
                {
                  v26 = v25;
                  CFDictionarySetValue(Mutable, @"email", v25);
                  CFRelease(v26);
                }

                v27 = CalAttendeeGetType() - 1;
                v28 = @"unknown";
                if (v27 <= 3)
                {
                  v28 = off_279916BC0[v27];
                }

                CFDictionarySetValue(Mutable, @"user type", v28);
                Role = CalAttendeeGetRole();
                v30 = @"requiredparticipant";
                v9 = v19;
                if (Role <= 5)
                {
                  v30 = off_279916BE0[Role];
                }

                CFDictionarySetValue(Mutable, @"role", v30);
                Status = CalAttendeeGetStatus();
                v32 = @"tentative";
                if (Status <= 6)
                {
                  v32 = off_279916C10[Status];
                }

                CFDictionarySetValue(Mutable, @"status", v32);
                CFDictionarySetValue(*v34, v21, Mutable);
                if (DLShouldLog())
                {
                  _DLLog();
                }

                CFRelease(Mutable);
                CFRelease(values);
                CFRelease(v20);
                CFRelease(v21);
                CFRelease(v15);
                goto LABEL_41;
              }

              if (DLShouldLog())
              {
                _DLLog();
              }

LABEL_36:
              v33 = v15;
            }

            CFRelease(v33);
            goto LABEL_41;
          }

          if (DLShouldLog())
          {
LABEL_17:
            _DLLog();
          }
        }

LABEL_41:
        ++v8;
      }

      while (v7 != v8);
    }
  }
}

uint64_t _entityTypeForRecord()
{
  LODWORD(result) = CalEntityGetType();
  if ((result - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *_GetDayOfWeekStringForDayOfWeek(int a1)
{
  result = sDayOfWeekStrings_0;
  if (!sDayOfWeekStrings_0)
  {
    result = @"sunday";
    sDayOfWeekStrings_0 = @"sunday";
    sDayOfWeekStrings_1 = @"monday";
    sDayOfWeekStrings_2 = @"tuesday";
    sDayOfWeekStrings_3 = @"wednesday";
    sDayOfWeekStrings_4 = @"thursday";
    sDayOfWeekStrings_5 = @"friday";
    sDayOfWeekStrings_6 = @"saturday";
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return sDayOfWeekStrings_1;
      }

      else
      {
        result = 0;
        if (a1 == 2)
        {
          return sDayOfWeekStrings_2;
        }
      }
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      return sDayOfWeekStrings_5;
    }

    else
    {
      result = 0;
      if (a1 == 6)
      {
        return sDayOfWeekStrings_6;
      }
    }
  }

  else if (a1 == 3)
  {
    return sDayOfWeekStrings_3;
  }

  else
  {
    return sDayOfWeekStrings_4;
  }

  return result;
}

uint64_t _saveDeviceSyncAnchorAndClearChangeHistory_0(uint64_t a1)
{
  if ((*(a1 + 312) & 0x80000000) == 0)
  {
    CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient();
  }

  if (!*(a1 + 144))
  {
    CFRetain(@"---");
    *(a1 + 144) = DLMemoryPoolAddObject();
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  _setDeviceSyncAnchorForStore_0(a1, *(a1 + 144));
  result = CalDatabaseSave();
  if ((result & 1) == 0)
  {
    result = DLShouldLog();
    if (result)
    {
      result = _DLLog();
    }
  }

  *(a1 + 355) = 1;
  return result;
}

void _AccumulateChangedRecords(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, CFArrayRef theArray, const __CFArray *a5)
{
  if (!theArray)
  {
    return;
  }

  Count = CFArrayGetCount(theArray);
  if (!a5 || (v11 = Count, v12 = CFArrayGetCount(theArray), v12 != CFArrayGetCount(a5)))
  {
    if (DLShouldLog())
    {

      _DLLog();
    }

    return;
  }

  if (v11 < 1)
  {
    return;
  }

  v23 = a3;
  v13 = 0;
  Mutable = 0;
  v15 = 0;
  allocator = *MEMORY[0x277CBECE8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
    v17 = CFArrayGetValueAtIndex(a5, v13);
    if (v17 <= 1)
    {
      if (a2 > 4)
      {
        if (a2 == 5)
        {
          v18 = CalDatabaseCopyRecurrenceWithUID();
          goto LABEL_31;
        }

        if (a2 == 7)
        {
          v18 = MEMORY[0x25F84A660](*(a1 + 184), ValueAtIndex);
          goto LABEL_31;
        }

        if (a2 != 8)
        {
          goto LABEL_27;
        }
      }

      else if ((a2 - 2) >= 2)
      {
        if (a2 != 1)
        {
          if (a2 == 4)
          {
            v18 = CalDatabaseCopyAlarmWithUID();
            goto LABEL_31;
          }

LABEL_27:
          if (DLShouldLog())
          {
            _DLLog();
          }

          goto LABEL_37;
        }

        v18 = CalDatabaseCopyCalendarWithUID();
LABEL_31:
        v20 = v18;
        if (v18)
        {
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(allocator, 0, 0);
            v15 = CFSetCreateMutable(0, 0, 0);
          }

          if (!CFSetContainsValue(v15, ValueAtIndex))
          {
            CFSetAddValue(v15, ValueAtIndex);
            CFArrayAppendValue(Mutable, v20);
          }

LABEL_36:
          CFRelease(v20);
          goto LABEL_43;
        }

LABEL_37:
        if (!DLShouldLog())
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v18 = CalDatabaseCopyCalendarItemWithRowID();
      goto LABEL_31;
    }

    if (v17 != 2)
    {
      if (!DLShouldLog())
      {
        goto LABEL_43;
      }

LABEL_42:
      _DLLog();
      goto LABEL_43;
    }

    if (a2 <= 8 && ((1 << a2) & 0x1BE) != 0)
    {
      v19 = CFStringCreateWithFormat(0, 0, @"%d/%d", a2, ValueAtIndex);
      if (v19)
      {
        v20 = v19;
        v21 = *v23;
        if (!*v23)
        {
          v21 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *v23 = v21;
        }

        CFDictionarySetValue(v21, v20, v20);
        goto LABEL_36;
      }
    }

    else if (DLShouldLog())
    {
      _DLLog();
    }

    if (DLShouldLog())
    {
      goto LABEL_42;
    }

LABEL_43:
    ++v13;
  }

  while (v11 != v13);
  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    if (a2 > 4)
    {
      switch(a2)
      {
        case 5:
          _AccumulateRecurrences(v23, Mutable);
          break;
        case 7:
          _AccumulateAttendees(a1, v23, Mutable);
          break;
        case 8:
          _AccumulateOrganizers(a1, v23, Mutable);
          break;
        default:
          goto LABEL_63;
      }
    }

    else
    {
      switch(a2)
      {
        case 1:
          _AccumulateCalendars(a1, v23, Mutable);
          break;
        case 2:
          _AccumulateEvents(a1, v23, Mutable);
          break;
        case 4:
          _AccumulateAlarms(v23, Mutable);
          break;
        default:
LABEL_63:
          if (DLShouldLog())
          {
            _DLLog();
          }

          break;
      }
    }

    CFRelease(Mutable);
  }
}

Class ___calendarSyncAccountLoader_block_invoke()
{
  if (([objc_msgSend(MEMORY[0x277CCA8D8] bundleWithPath:{objc_msgSend(CPSystemRootDirectory(), "stringByAppendingPathComponent:", @"/System/Library/PrivateFrameworks/Message.framework", "load"}] & 1) == 0)
  {
    ___calendarSyncAccountLoader_block_invoke_cold_1();
  }

  result = NSClassFromString(&cfstr_Mailaccount.isa);
  _calendarSyncAccountLoader_sSyncAccountLoader = result;
  return result;
}

void _addCurrentRemappingsToAllRemappings(void *key, void *value, uint64_t a3)
{
  v5 = *(a3 + 168);
  if (!v5)
  {
    CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = DLMemoryPoolAddObject();
    *(a3 + 168) = v5;
  }

  CFDictionarySetValue(v5, key, value);
}

void _ChangesApplierFunction_0(const __CFString *a1, const void *a2, uint64_t a3)
{
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    *valuePtr = 0;
    v123[0] = 0;
    v121 = 0;
    if (!_deconstructRecordIdentifier(a1, &v121, valuePtr, v123, &valuePtr[1]))
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_86;
    }

    if (valuePtr[0] <= 4)
    {
      if (valuePtr[0] <= 2)
      {
        if (valuePtr[0] == 1)
        {
          v39 = CalDatabaseCopyCalendarWithUID();
          if (v39)
          {
            v40 = v39;
            v41 = CalCalendarCopyTitle();
            CalRemoveCalendar();
            v42 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v41);
            if (v41)
            {
              CFRelease(v41);
            }

            if (DLShouldLog())
            {
              _DLLog();
            }

            CalDatabaseSetProperty();
            if (v42)
            {
              CFRelease(v42);
            }

            if (DLShouldLog())
            {
              _DLLog();
            }

            v43 = v40;
            goto LABEL_322;
          }

          if (!DLShouldLog())
          {
            return;
          }
        }

        else
        {
          if (valuePtr[0] != 2)
          {
            return;
          }

          v7 = CalDatabaseCopyCalendarItemWithRowID();
          if (v7)
          {
            v8 = v7;
            CalRemoveEvent();
            if (DLShouldLog())
            {
              goto LABEL_189;
            }

            goto LABEL_221;
          }

          if (!DLShouldLog())
          {
            return;
          }
        }

LABEL_86:
        _DLLog();
        return;
      }

      if (valuePtr[0] == 3)
      {
        v46 = CalDatabaseCopyCalendarItemWithRowID();
        if (v46)
        {
          v8 = v46;
          CalRemoveTask();
          if (DLShouldLog())
          {
            goto LABEL_189;
          }

          goto LABEL_221;
        }

        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v30 = CalDatabaseCopyAlarmWithUID();
      if (!v30)
      {
        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v8 = v30;
      v31 = CalAlarmCopyOwningEntity();
      if (!v31)
      {
        if (!DLShouldLog())
        {
          goto LABEL_221;
        }

        goto LABEL_189;
      }

      v32 = v31;
      v123[0] = CalCalendarItemGetRowID();
      CalCalendarItemRemoveAlarm();
      if (DLShouldLog())
      {
        goto LABEL_219;
      }

LABEL_220:
      CFRelease(v32);
      goto LABEL_221;
    }

    if (valuePtr[0] > 6)
    {
      if (valuePtr[0] != 7)
      {
        if (valuePtr[0] != 8)
        {
          return;
        }

        if (CalDatabaseCopyCalendarItemWithRowID())
        {
          CalCalendarItemSetOrganizer();
          if (!DLShouldLog())
          {
            return;
          }
        }

        else if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v47 = MEMORY[0x25F84A660](*(a3 + 184), valuePtr[1]);
      if (!v47)
      {
        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v8 = v47;
      v48 = MEMORY[0x25F84A3C0](v47);
      if (!v48)
      {
        if (!DLShouldLog())
        {
          goto LABEL_221;
        }

        goto LABEL_189;
      }

      v32 = v48;
      v49 = _entityTypeForRecord();
      v121 = v49;
      if (v49 != 3)
      {
        if (v49 != 2)
        {
          goto LABEL_220;
        }

        MEMORY[0x25F84AA00](v32, v8);
        if (!DLShouldLog())
        {
          goto LABEL_220;
        }

        goto LABEL_219;
      }

      if (!DLShouldLog())
      {
        goto LABEL_220;
      }
    }

    else
    {
      if (valuePtr[0] != 5)
      {
        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v44 = CalDatabaseCopyRecurrenceWithUID();
      if (!v44)
      {
        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v8 = v44;
      v45 = MEMORY[0x25F84AB70](v44);
      if (!v45)
      {
        if (DLShouldLog())
        {
LABEL_189:
          _DLLog();
        }

LABEL_221:
        v43 = v8;
        goto LABEL_322;
      }

      v32 = v45;
      v123[0] = CalCalendarItemGetRowID();
      MEMORY[0x25F84AA10](v32, v8);
      if (!DLShouldLog())
      {
        goto LABEL_220;
      }
    }

LABEL_219:
    _DLLog();
    goto LABEL_220;
  }

  Value = CFDictionaryGetValue(a2, @"com.apple.syncservices.RecordEntityName");
  if (!Value)
  {
    if (!DLShouldLog())
    {
      return;
    }

    goto LABEL_86;
  }

  v10 = Value;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v11 = _deconstructRecordIdentifier(a1, &v119, &v120, &v120 + 1, &v121);
  if (CFStringCompare(v10, @"com.apple.calendars.Calendar", 0) == kCFCompareEqualTo)
  {
    if (v120 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      goto LABEL_85;
    }

    v13 = v121;
    v14 = CFDictionaryGetValue(a2, @"title");
    if (v13 != -1)
    {
      CalendarForEntityType = CalDatabaseCopyCalendarWithUID();
      v16 = DLShouldLog();
      if (CalendarForEntityType)
      {
        if (v16)
        {
          _DLLog();
        }

        v17 = CalCalendarCopyTitle();
        v18 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v14);
        CalDatabaseSetProperty();
        if (v18)
        {
          CFRelease(v18);
        }

        if (v17)
        {
          CFRelease(v17);
        }

LABEL_125:
        v58 = CFDictionaryGetValue(a2, @"read only");
        if (v58)
        {
          valuePtr[1] = 0;
          if (CFNumberGetValue(v58, kCFNumberIntType, &valuePtr[1]))
          {
            v59 = valuePtr[1] == 0;
          }

          else
          {
            v59 = 1;
          }

          v60 = !v59;
          if (!v59 && DLShouldLog())
          {
            _DLLog();
          }
        }

        else
        {
          v60 = 0;
        }

        CalCalendarSetReadOnly();
        CalCalendarSetTitle();
        if (CFDictionaryGetValue(a2, @"com.apple.ical.type"))
        {
          CalCalendarSetType();
        }

        if (*(a3 + 353) == 1)
        {
          v61 = CFDictionaryGetValue(a2, @"colorComponents");
          if (v61)
          {
            v62 = v61;
            if (CFArrayGetCount(v61) >= 3)
            {
              *valuePtr = 0;
              v123[0] = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v62, 0);
              CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr[1]);
              v64 = CFArrayGetValueAtIndex(v62, 1);
              CFNumberGetValue(v64, kCFNumberIntType, v123);
              v65 = CFArrayGetValueAtIndex(v62, 2);
              CFNumberGetValue(v65, kCFNumberIntType, valuePtr);
              if (DLShouldLog())
              {
                _DLLog();
              }

              CalCalendarSetColorComponents();
            }
          }
        }

        if (CFDictionaryGetValue(a2, @"com.apple.MobileSync.calDAVInfo"))
        {
          v66 = CFStringCreateWithFormat(0, 0, @"%d", v60);
          v67 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v14);
          if (DLShouldLog())
          {
            _DLLog();
          }

          CalDatabaseSetProperty();
          if (v66)
          {
            CFRelease(v66);
          }

          if (v67)
          {
            CFRelease(v67);
          }

          CalCalendarSetReadOnly();
        }

        goto LABEL_321;
      }

      if (v16)
      {
        _DLLog();
      }
    }

    if (!v14)
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_86;
    }

    CalendarForEntityType = CalDatabaseCreateCalendarForEntityType();
    CalStoreAddCalendar();
    if (!*(a3 + 208))
    {
      CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a3 + 208) = DLMemoryPoolAddObject();
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    CFDictionaryAddValue(*(a3 + 208), a1, CalendarForEntityType);
    goto LABEL_125;
  }

  if (CFStringCompare(v10, @"com.apple.calendars.Event", 0) == kCFCompareEqualTo)
  {
    if (v120 == 2)
    {
      v19 = 0;
    }

    else
    {
      v19 = v11;
    }

    if (v19)
    {
      goto LABEL_85;
    }

    v20 = v121;
    v21 = _CopyParentCalendar(a3, a2);
    if (!v21)
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_86;
    }

    CalendarForEntityType = v21;
    v22 = CFDictionaryGetValue(a2, @"summary");
    v23 = CFDictionaryGetValue(a2, @"description");
    v24 = CFDictionaryGetValue(a2, @"location");
    v115 = CFDictionaryGetValue(a2, @"all day");
    v25 = CFDictionaryGetValue(a2, @"start date");
    number = CFDictionaryGetValue(a2, @"floatingOffset");
    v26 = CFDictionaryGetValue(a2, @"end date");
    v116 = CFDictionaryGetValue(a2, @"original date");
    v118 = CFDictionaryGetValue(a2, @"exception dates");
    v117 = CFDictionaryGetValue(a2, @"main event");
    v27 = CFDictionaryGetValue(a2, @"url");
    if (!v25 || !v26)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      goto LABEL_321;
    }

    URLString = v27;
    v113 = CalendarForEntityType;
    if (v20 != -1)
    {
      Event = CalDatabaseCopyCalendarItemWithRowID();
      v29 = DLShouldLog();
      if (Event)
      {
        if (v29)
        {
          _DLLog();
        }

        v111 = 0;
        goto LABEL_253;
      }

      if (v29)
      {
        _DLLog();
      }
    }

    Event = CalDatabaseCreateEvent();
    if (!*(a3 + 216))
    {
      CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a3 + 216) = DLMemoryPoolAddObject();
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    CFDictionaryAddValue(*(a3 + 216), a1, Event);
    v111 = 1;
LABEL_253:
    MEMORY[0x25F84A460](CalendarForEntityType, Event);
    if (v22)
    {
      v83 = CFGetTypeID(v22);
      if (v83 == CFStringGetTypeID())
      {
        CalCalendarItemSetSummary();
      }
    }

    if (v23)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v84 = CFGetTypeID(v23);
      if (v84 == CFStringGetTypeID())
      {
        v85 = v23;
      }

      else
      {
        v85 = 0;
      }
    }

    else
    {
      v85 = 0;
    }

    MEMORY[0x25F84AA30](Event, v85);
    if (v24)
    {
      CFGetTypeID(v24);
      CFStringGetTypeID();
    }

    v86 = v26;
    CalEventSetLocation_Deprecated();
    if (v115 && (v87 = CFGetTypeID(v115), v87 == CFNumberGetTypeID()))
    {
      valuePtr[1] = 0;
      if (CFNumberGetValue(v115, kCFNumberIntType, &valuePtr[1]))
      {
        v88 = valuePtr[1] == 0;
      }

      else
      {
        v88 = 1;
      }

      v89 = !v88;
      CalEventSetAllDay();
      v90 = v25;
      if (v89)
      {
        v91 = @"_float";
        CalendarForEntityType = v113;
        goto LABEL_286;
      }
    }

    else
    {
      CalEventSetAllDay();
      v90 = v25;
    }

    v92 = CFDictionaryGetValue(a2, @"start date.timezone");
    CalendarForEntityType = v113;
    if (!v92)
    {
      goto LABEL_325;
    }

    v91 = v92;
    if (CFStringCompare(v92, @"LOCAL", 1uLL) == kCFCompareEqualTo)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v93 = CalCopyDefaultTimeZone();
      if (v93)
      {
        v97 = v93;
        v91 = MEMORY[0x25F84A2A0](v93, v94, v95, v96);
        CFRelease(v97);
        if (!v91)
        {
LABEL_325:
          if (number)
          {
            *&valuePtr[1] = 0;
            CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr[1]);
            v98 = MEMORY[0x25F849FA0](v90);
            v90 = CFDateCreate(0, v98 + *&valuePtr[1]);
            v99 = MEMORY[0x25F849FA0](v86);
            v86 = CFDateCreate(0, v99 + *&valuePtr[1]);
            if (DLShouldLog())
            {
              _DLLog();
            }
          }

          v91 = @"_float";
        }
      }
    }

LABEL_286:
    MEMORY[0x25F849FA0](v90);
    CalEventSetStartDateDirectly();
    MEMORY[0x25F849FA0](v86);
    CalEventSetEndDate();
    v100 = CFTimeZoneCreateWithName(0, v91, 1u);
    CalCalendarItemSetEndTimeZone();
    if (v100)
    {
      CFRelease(v100);
    }

    if (v116 && (MEMORY[0x25F849FA0](v116), CalEventSetOriginalStartDate(), v117) && CFArrayGetCount(v117) == 1)
    {
      v101 = CFArrayGetValueAtIndex(v117, 0);
      valuePtr[1] = -1;
      v123[0] = 0;
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (!_deconstructRecordIdentifier(v101, 0, v123, 0, &valuePtr[1]))
      {
        goto LABEL_300;
      }

      if (v123[0] != 2)
      {
        v104 = v118;
        if (DLShouldLog())
        {
          _DLLog();
        }

        CalEventSetOriginalEvent();
        if (v118)
        {
          goto LABEL_299;
        }

        goto LABEL_312;
      }

      v102 = CalDatabaseCopyCalendarItemWithRowID();
      if (v102)
      {
        v103 = v102;
        MEMORY[0x25F84A910](v102, v116);
        CalEventSetOriginalEvent();
        CFRelease(v103);
      }

      else
      {
LABEL_300:
        v105 = *(a3 + 264);
        if (!v105)
        {
          CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v105 = DLMemoryPoolAddObject();
          *(a3 + 264) = v105;
        }

        if (!CFDictionaryContainsKey(v105, v101))
        {
          CFDictionarySetValue(*(a3 + 264), v101, v101);
        }

        v106 = *(a3 + 272);
        if (!v106)
        {
          CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v106 = DLMemoryPoolAddObject();
          *(a3 + 272) = v106;
        }

        Mutable = CFDictionaryGetValue(v106, v101);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          CFDictionarySetValue(*(a3 + 272), v101, Mutable);
          CFRelease(Mutable);
        }

        CFArrayAppendValue(Mutable, Event);
      }
    }

    else
    {
      CalEventSetOriginalEvent();
    }

    v104 = v118;
    if (v118)
    {
LABEL_299:
      MEMORY[0x25F84AA60](Event, v104);
LABEL_315:
      if (URLString)
      {
        v110 = CFURLCreateWithString(0, URLString, 0);
        MEMORY[0x25F84AAC0](Event, v110);
        if (v110)
        {
          CFRelease(v110);
        }
      }

      else
      {
        MEMORY[0x25F84AAC0](Event);
      }

      v81 = Event;
      goto LABEL_320;
    }

LABEL_312:
    if ((v111 & 1) == 0)
    {
      v108 = MEMORY[0x25F84A960](Event);
      if (v108)
      {
        v109 = v108;
        MEMORY[0x25F84AA60](Event, 0);
        CFRelease(v109);
      }
    }

    goto LABEL_315;
  }

  if (CFStringCompare(v10, @"com.apple.calendars.Task", 0) == kCFCompareEqualTo)
  {
    if (v120 == 3)
    {
      v38 = 0;
    }

    else
    {
      v38 = v11;
    }

    if (v38)
    {
      goto LABEL_85;
    }

    v50 = v121;
    v51 = _CopyParentCalendar(a3, a2);
    if (!v51)
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_86;
    }

    CalendarForEntityType = v51;
    v52 = CFDictionaryGetValue(a2, @"summary");
    v53 = CFDictionaryGetValue(a2, @"priority");
    v54 = CFDictionaryGetValue(a2, @"due date");
    v55 = CFDictionaryGetValue(a2, @"completion date");
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (v50 != -1)
    {
      Task = CalDatabaseCopyCalendarItemWithRowID();
      v57 = DLShouldLog();
      if (Task)
      {
        if (v57)
        {
          _DLLog();
        }

LABEL_229:
        MEMORY[0x25F84A470](CalendarForEntityType, Task);
        if (v52)
        {
          v77 = CFGetTypeID(v52);
          if (v77 == CFStringGetTypeID())
          {
            CalCalendarItemSetSummary();
          }
        }

        if (v53)
        {
          v78 = CFGetTypeID(v53);
          if (v78 == CFNumberGetTypeID())
          {
            valuePtr[1] = 0;
            if (CFNumberGetValue(v53, kCFNumberIntType, &valuePtr[1]))
            {
              CalCalendarItemSetPriority();
            }
          }
        }

        if (v54)
        {
          v79 = CFGetTypeID(v54);
          if (v79 == CFDateGetTypeID())
          {
            if (DLShouldLog())
            {
              _DLLog();
            }
          }
        }

        CalTaskSetDueDate();
        if (v55)
        {
          v80 = CFGetTypeID(v55);
          if (v80 == CFDateGetTypeID())
          {
            if (DLShouldLog())
            {
              _DLLog();
            }
          }
        }

        CalTaskSetCompletionDate();
        v81 = Task;
LABEL_320:
        CFRelease(v81);
LABEL_321:
        v43 = CalendarForEntityType;
        goto LABEL_322;
      }

      if (v57)
      {
        _DLLog();
      }
    }

    Task = CalDatabaseCreateTask();
    if (!*(a3 + 224))
    {
      CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a3 + 224) = DLMemoryPoolAddObject();
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    CFDictionaryAddValue(*(a3 + 224), a1, Task);
    goto LABEL_229;
  }

  if (CFStringCompare(v10, @"com.apple.calendars.AudioAlarm", 0) && CFStringCompare(v10, @"com.apple.calendars.DisplayAlarm", 0))
  {
    if (CFStringCompare(v10, @"com.apple.calendars.Recurrence", 0))
    {
      if (CFStringCompare(v10, @"com.apple.calendars.Organizer", 0))
      {
        if (CFStringCompare(v10, @"com.apple.calendars.Attendee", 0))
        {
          if (CFStringCompare(v10, @"com.apple.calendars.CalendarOrder", 0) == kCFCompareEqualTo)
          {
            v82 = CFDictionaryGetValue(a2, @"calendars");
            _HandleCalendarOrdering(a3, v82);
            return;
          }

          if (!DLShouldLog())
          {
            return;
          }

          goto LABEL_86;
        }

        if (v120 == 7)
        {
          v76 = 0;
        }

        else
        {
          v76 = v11;
        }

        if ((v76 & 1) == 0)
        {
          _HandleAddOrModifyAttendee(a3, a1, a2, v121);
          return;
        }
      }

      else
      {
        if (v120 == 8)
        {
          v69 = 0;
        }

        else
        {
          v69 = v11;
        }

        if ((v69 & 1) == 0)
        {
          _HandleAddOrModifyOrganizer(a3, a1, a2);
          return;
        }
      }
    }

    else
    {
      if (v120 == 5)
      {
        v68 = 0;
      }

      else
      {
        v68 = v11;
      }

      if ((v68 & 1) == 0)
      {
        _HandleAddOrModifyRecurrence(a3, a1, a2, v121);
        return;
      }
    }

LABEL_85:
    if (!DLShouldLog())
    {
      return;
    }

    goto LABEL_86;
  }

  if (v120 == 4)
  {
    v33 = 0;
  }

  else
  {
    v33 = v11;
  }

  if (v33)
  {
    goto LABEL_85;
  }

  v34 = v121;
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v34 != -1)
  {
    Alarm = CalDatabaseCopyAlarmWithUID();
    if (Alarm)
    {
      goto LABEL_77;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  Alarm = 0;
LABEL_77:
  valuePtr[1] = 0;
  v36 = _CopyCalEntityOwner(a3, a2, &valuePtr[1]);
  if (v36)
  {
    v37 = v36;
    if (Alarm)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }
    }

    else
    {
      Alarm = CalDatabaseCreateAlarm();
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      CalCalendarItemAddAlarm();
      v70 = *(a3 + 232);
      if (!v70)
      {
        CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v70 = DLMemoryPoolAddObject();
        *(a3 + 232) = v70;
      }

      CFDictionaryAddValue(v70, a1, Alarm);
    }

    CFStringCompare(v10, @"com.apple.calendars.AudioAlarm", 0);
    CalAlarmSetType();
    v71 = CFDictionaryGetValue(a2, @"triggerduration");
    if (v71 && (v123[0] = 0, CFNumberGetValue(v71, kCFNumberIntType, v123)))
    {
      v72 = v123[0];
      CalAlarmSetTriggerInterval();
      if (v72 != 0x7FFFFFFF)
      {
LABEL_211:
        CFRelease(Alarm);
        Alarm = v37;
LABEL_212:
        v43 = Alarm;
LABEL_322:
        CFRelease(v43);
        return;
      }
    }

    else
    {
      CalAlarmSetTriggerInterval();
    }

    v73 = CFDictionaryGetValue(a2, @"triggerdate");
    if (v73)
    {
      v74 = v73;
      v75 = CFGetTypeID(v73);
      if (v75 == CFDateGetTypeID())
      {
        MEMORY[0x25F849FA0](v74);
        if (DLShouldLog())
        {
          _DLLog();
        }
      }
    }

    CalAlarmSetTriggerDate();
    goto LABEL_211;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (Alarm)
  {
    goto LABEL_212;
  }
}

void _UpdateCalendarRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  UID = CalCalendarGetUID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 1, UID);
  _addRemapping(a3, a1, v6);
  CFRelease(v6);
  v7 = CalCalendarGetUID();
  v8 = CFStringCreateWithFormat(0, 0, @"%d", v7);
  CalCalendarSetExternalID();
  if (v8)
  {

    CFRelease(v8);
  }
}

void _UpdateEventRemapping(const void *a1, const void *a2, uint64_t a3)
{
  RowID = CalCalendarItemGetRowID();
  v7 = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID);
  _addRemapping(a3, a1, v7);
  v8 = *(a3 + 264);
  if (v8 && CFDictionaryContainsKey(v8, a1))
  {
    CFDictionarySetValue(*(a3 + 264), a1, a2);
  }

  CFRelease(v7);
}

void _UpdateDetachedEvents(void *key, const __CFArray *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*(a3 + 264), key);
  if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFStringGetTypeID()))
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        CFArrayGetValueAtIndex(a2, i);
        if (DLShouldLog())
        {
          CalCalendarItemGetRowID();
          CalCalendarItemGetRowID();
          _DLLog();
        }

        CalEventGetOriginalStartDate();
        v13 = CFDateCreate(0, v12);
        if (v13)
        {
          v14 = v13;
          MEMORY[0x25F84A910](v7, v13);
          CFRelease(v14);
        }

        else if (DLShouldLog())
        {
          CalEventGetOriginalStartDate();
          _DLLog();
        }

        CalEventSetOriginalEvent();
      }
    }

    v15 = *(a3 + 280);
    if (!v15)
    {
      CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
      v15 = DLMemoryPoolAddObject();
      *(a3 + 280) = v15;
    }

    CFSetAddValue(v15, key);
  }

  else if (DLShouldLog())
  {
    _DLLog();
  }
}

void _RemoveProcessedMainRecordIds(const void *a1, uint64_t a2)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  v4 = *(a2 + 272);

  CFDictionaryRemoveValue(v4, a1);
}

void _UpdateOrganizerRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  RowID = CalCalendarItemGetRowID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 8, RowID);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

void _UpdateTaskRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  RowID = CalCalendarItemGetRowID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 3, RowID);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

void _UpdateAlarmRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  UID = CalAlarmGetUID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 4, UID);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

void _UpdateRecurrenceRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  UID = CalRecurrenceGetUID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 5, UID);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

void _UpdateAttendeeRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x25F84A400](a2);
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 7, v5);
  _addRemapping(a3, a1, v6);

  CFRelease(v6);
}

uint64_t _deconstructRecordIdentifier(const __CFString *a1, SInt32 *a2, SInt32 *a3, SInt32 *a4, SInt32 *a5)
{
  if (a5)
  {
    *a5 = -1;
  }

  if (a4)
  {
    *a4 = -1;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (recordIdentifierIsLocal(a1))
  {
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
    if (ArrayBySeparatingStrings)
    {
      v11 = ArrayBySeparatingStrings;
      Count = CFArrayGetCount(ArrayBySeparatingStrings);
      if (Count == 4)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
        if (a2)
        {
          *a2 = CFStringGetIntValue(ValueAtIndex);
        }

        v17 = CFArrayGetValueAtIndex(v11, 1);
        if (a3)
        {
          *a3 = CFStringGetIntValue(v17);
        }

        v18 = CFArrayGetValueAtIndex(v11, 2);
        if (a4)
        {
          *a4 = CFStringGetIntValue(v18);
        }

        v15 = CFArrayGetValueAtIndex(v11, 3);
        if (!a5)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (Count != 2)
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          v14 = 0;
          goto LABEL_32;
        }

        v13 = CFArrayGetValueAtIndex(v11, 0);
        if (a3)
        {
          *a3 = CFStringGetIntValue(v13);
        }

        v14 = 1;
        v15 = CFArrayGetValueAtIndex(v11, 1);
        if (!a5)
        {
LABEL_32:
          CFRelease(v11);
          return v14;
        }
      }

      *a5 = CFStringGetIntValue(v15);
LABEL_28:
      v14 = 1;
      goto LABEL_32;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  return 0;
}

void _HandleAddOrModifyRecurrence(void *a1, const void *a2, CFDictionaryRef theDict, uint64_t a4)
{
  v4 = a4;
  Value = CFDictionaryGetValue(theDict, @"owner");
  if (!Value || (v9 = Value, CFArrayGetCount(Value) < 1))
  {
    if (!DLShouldLog())
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }

LABEL_11:
    _DLLog();
    goto LABEL_12;
  }

  LODWORD(valuePtr) = 0;
  v75 = 0;
  ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
  v11 = a1[21];
  if (v11)
  {
    v12 = CFDictionaryGetValue(v11, ValueAtIndex);
    if (v12)
    {
      ValueAtIndex = v12;
    }
  }

  v13 = 0;
  if (_deconstructRecordIdentifier(ValueAtIndex, 0, &v75, 0, &valuePtr) && valuePtr != -1)
  {
    if (v75 == 2)
    {
      v13 = CalDatabaseCopyCalendarItemWithRowID();
      goto LABEL_13;
    }

    if (!DLShouldLog())
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v4 != -1)
  {
    v14 = CalDatabaseCopyRecurrenceWithUID();
    if (v14)
    {
      if (v13)
      {
        goto LABEL_18;
      }

      goto LABEL_25;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  v14 = 0;
  if (v13)
  {
LABEL_18:
    v15 = MEMORY[0x25F84A9A0](v13);
    v16 = DLShouldLog();
    if (v14)
    {
      if (v16)
      {
        _DLLog();
      }

      MEMORY[0x25F84AA10](v13, v14);
    }

    else if (v16)
    {
      _DLLog();
    }

    if (v15)
    {
      CFRelease(v15);
    }

    if (v14)
    {
      CFRelease(v14);
    }

    Recurrence = CalDatabaseCreateRecurrence();
    if (DLShouldLog())
    {
      _DLLog();
    }

    v18 = a1[30];
    if (!v18)
    {
      CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v18 = DLMemoryPoolAddObject();
      a1[30] = v18;
    }

    CFDictionaryAddValue(v18, a2, Recurrence);
    v19 = CFDictionaryGetValue(theDict, @"weekstartday");
    _GetDayOfWeekFromString(v19);
    CalRecurrenceSetWeekStart();
    v20 = CFDictionaryGetValue(theDict, @"frequency");
    if (!v20)
    {
      goto LABEL_52;
    }

    CharacterAtIndex = CFStringGetCharacterAtIndex(v20, 0);
    if (CharacterAtIndex > 118)
    {
      if (CharacterAtIndex == 121 || CharacterAtIndex == 119)
      {
        goto LABEL_51;
      }
    }

    else if (CharacterAtIndex == 100 || CharacterAtIndex == 109)
    {
LABEL_51:
      CalRecurrenceSetFrequency();
LABEL_52:
      v22 = CFDictionaryGetValue(theDict, @"interval");
      if (v22)
      {
        LODWORD(valuePtr) = 0;
        if (CFNumberGetValue(v22, kCFNumberIntType, &valuePtr))
        {
          if (valuePtr)
          {
            CalRecurrenceSetInterval();
          }
        }
      }

      v23 = CFDictionaryGetValue(theDict, @"count");
      if (v23 && (LODWORD(valuePtr) = 0, CFNumberGetValue(v23, kCFNumberIntType, &valuePtr)) && valuePtr)
      {
        CalRecurrenceSetCount();
      }

      else
      {
        v24 = CFDictionaryGetValue(theDict, @"until");
        if (v24)
        {
          v25 = v24;
          v26 = CFGetTypeID(v24);
          if (v26 == CFDateGetTypeID())
          {
            MEMORY[0x25F849FA0](v25);
            if (DLShouldLog())
            {
              _DLLog();
            }
          }
        }

        CalRecurrenceSetEndDate();
      }

      v27 = CFDictionaryGetValue(theDict, @"bymonth");
      if (v27)
      {
        v28 = v27;
        Count = CFArrayGetCount(v27);
        if (Count >= 1)
        {
          v30 = Count;
          v31 = 0;
          v32 = 0;
          do
          {
            LODWORD(valuePtr) = 0;
            v33 = CFArrayGetValueAtIndex(v28, v31);
            v34 = CFNumberGetValue(v33, kCFNumberIntType, &valuePtr) != 0;
            if (v34 && valuePtr != 0)
            {
              v35 = 1 << (valuePtr - 1);
            }

            else
            {
              v35 = 0;
            }

            v32 |= v35;
            ++v31;
          }

          while (v30 != v31);
          if (v32)
          {
            CalRecurrenceSetByMonthMonths();
          }
        }
      }

      v36 = CFDictionaryGetValue(theDict, @"byweeknumber");
      if (v36)
      {
        v37 = v36;
        v38 = CFArrayGetCount(v36);
        if (v38 >= 1)
        {
          v39 = v38;
          Mutable = CFArrayCreateMutable(0, v38, 0);
          for (i = 0; i != v39; ++i)
          {
            LODWORD(valuePtr) = 0;
            v42 = CFArrayGetValueAtIndex(v37, i);
            if (CFNumberGetValue(v42, kCFNumberIntType, &valuePtr))
            {
              CFArrayAppendValue(Mutable, valuePtr);
            }
          }

          if (CFArrayGetCount(Mutable))
          {
            CalRecurrenceSetByWeekWeeks();
          }

          CFRelease(Mutable);
        }
      }

      v43 = CFDictionaryGetValue(theDict, @"byyearday");
      if (v43)
      {
        v44 = v43;
        v45 = CFArrayGetCount(v43);
        if (v45 >= 1)
        {
          v46 = v45;
          v47 = CFArrayCreateMutable(0, v45, 0);
          for (j = 0; j != v46; ++j)
          {
            LODWORD(valuePtr) = 0;
            v49 = CFArrayGetValueAtIndex(v44, j);
            if (CFNumberGetValue(v49, kCFNumberIntType, &valuePtr))
            {
              CFArrayAppendValue(v47, valuePtr);
            }
          }

          if (CFArrayGetCount(v47))
          {
            CalRecurrenceSetByYearDayDays();
          }

          CFRelease(v47);
        }
      }

      v50 = CFDictionaryGetValue(theDict, @"bymonthday");
      if (v50)
      {
        v51 = v50;
        v52 = CFArrayGetCount(v50);
        if (v52 >= 1)
        {
          v53 = v52;
          v54 = CFArrayCreateMutable(0, v52, 0);
          for (k = 0; k != v53; ++k)
          {
            LODWORD(valuePtr) = 0;
            v56 = CFArrayGetValueAtIndex(v51, k);
            if (CFNumberGetValue(v56, kCFNumberIntType, &valuePtr))
            {
              CFArrayAppendValue(v54, valuePtr);
            }
          }

          if (CFArrayGetCount(v54))
          {
            CalRecurrenceSetByMonthDayDays();
          }

          CFRelease(v54);
        }
      }

      v57 = CFDictionaryGetValue(theDict, @"bysetpos");
      if (v57)
      {
        v58 = v57;
        v59 = CFArrayGetCount(v57);
        if (v59 >= 1)
        {
          v60 = v59;
          v61 = CFArrayCreateMutable(0, v59, 0);
          for (m = 0; m != v60; ++m)
          {
            LODWORD(valuePtr) = 0;
            v63 = CFArrayGetValueAtIndex(v58, m);
            if (CFNumberGetValue(v63, kCFNumberIntType, &valuePtr))
            {
              CFArrayAppendValue(v61, valuePtr);
            }
          }

          if (CFArrayGetCount(v61))
          {
            CalRecurrenceSetBySetPos();
          }

          CFRelease(v61);
        }
      }

      v64 = CFDictionaryGetValue(theDict, @"bydayfreq");
      v65 = CFDictionaryGetValue(theDict, @"bydaydays");
      if (v64)
      {
        v66 = v65;
        if (v65)
        {
          v67 = CFArrayGetCount(v64);
          if (v67 >= 1)
          {
            v68 = v67;
            if (CFArrayGetCount(v66) == v67)
            {
              valuePtr = 0;
              v69 = CFArrayCreateMutable(0, v68, MEMORY[0x277CF78F8]);
              for (n = 0; n != v68; ++n)
              {
                v75 = 0;
                v71 = CFArrayGetValueAtIndex(v64, n);
                v72 = CFArrayGetValueAtIndex(v66, n);
                LODWORD(v71) = CFNumberGetValue(v71, kCFNumberIntType, &v75);
                DayOfWeekFromString = _GetDayOfWeekFromString(v72);
                if (v71 && DayOfWeekFromString != 7)
                {
                  valuePtr = __PAIR64__(DayOfWeekFromString, v75);
                  CFArrayAppendValue(v69, &valuePtr);
                }
              }

              if (CFArrayGetCount(v69))
              {
                CalRecurrenceSetByDayDays();
              }

              CFRelease(v69);
            }
          }
        }
      }

      MEMORY[0x25F84A920](v13, Recurrence);
      CFRelease(Recurrence);
LABEL_123:
      CFRelease(v13);
      return;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    goto LABEL_52;
  }

LABEL_25:
  if (DLShouldLog())
  {
    _DLLog();
  }

  v13 = v14;
  if (v14)
  {
    goto LABEL_123;
  }
}