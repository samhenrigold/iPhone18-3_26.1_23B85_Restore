@interface CKDDeviceIDManager
+ (id)currentPersonaID;
+ (id)sharedManager;
- (__CFDictionary)createQueryForService:(id)service lookupKey:(id)key sysBound:(BOOL)bound;
- (id)_fetchDeviceIDForService:(id)service lookupKey:(id)key keychainSuccess:(BOOL *)success;
- (id)_fetchDeviceIdentifierFromDefaultsForService:(id)service lookupKey:(id)key;
- (id)_perServiceLookupKeyForContainer:(id)container;
- (id)_serviceForContainer:(id)container;
- (id)deviceIDsByContainerIdentifierInContainerEnvironment:(int64_t)environment;
- (id)deviceIdentifierForContainer:(id)container skipInMemoryCache:(BOOL)cache createIfNecessary:(BOOL)necessary;
- (id)globalDeviceID;
- (id)globalDeviceIdentifierSkipInMemoryCache:(BOOL)cache createIfNecessary:(BOOL)necessary;
- (id)initInternal;
- (void)_deleteDeviceIdentifierForContainer:(id)container;
- (void)_saveDeviceIdentifier:(id)identifier forContainer:(id)container;
- (void)_saveDeviceIdentifier:(id)identifier forService:(id)service lookupKey:(id)key sysBound:(BOOL)bound success:(BOOL *)success;
- (void)_saveDeviceIdentifierToDefaults:(id)defaults forService:(id)service lookupKey:(id)key;
- (void)setGlobalDeviceID:(id)d;
@end

@implementation CKDDeviceIDManager

+ (id)sharedManager
{
  if (qword_280D58660 != -1)
  {
    dispatch_once(&qword_280D58660, &unk_28385EA00);
  }

  v3 = qword_280D58658;

  return v3;
}

+ (id)currentPersonaID
{
  if (objc_msgSend_isSupported(MEMORY[0x277CBC558], a2, v2))
  {
    v5 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v3, v4);
    v8 = objc_msgSend_identifier(v5, v6, v7);
    v9 = v8;
    v10 = @"(nil)";
    if (v8)
    {
      v10 = v8;
    }

    v11 = v10;
  }

  else
  {
    v11 = @"(n/a)";
  }

  return v11;
}

- (id)initInternal
{
  v16.receiver = self;
  v16.super_class = CKDDeviceIDManager;
  v2 = [(CKDDeviceIDManager *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v7 = objc_msgSend_UTF8String(v4, v5, v6);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create(v7, v8);
    queue = v2->_queue;
    v2->_queue = v9;

    v11 = objc_opt_new();
    deviceIDsByContainerIdentifierByContainerEnvironmentByPersona = v2->_deviceIDsByContainerIdentifierByContainerEnvironmentByPersona;
    v2->_deviceIDsByContainerIdentifierByContainerEnvironmentByPersona = v11;

    v13 = objc_opt_new();
    globalDeviceIDsPerPersona = v2->_globalDeviceIDsPerPersona;
    v2->_globalDeviceIDsPerPersona = v13;
  }

  return v2;
}

- (id)globalDeviceID
{
  v4 = objc_msgSend_queue(self, a2, v2);
  dispatch_assert_queue_V2(v4);

  v7 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v5, v6);
  v10 = objc_msgSend_globalDeviceIDsPerPersona(self, v8, v9);
  v12 = objc_msgSend_objectForKey_(v10, v11, v7);

  return v12;
}

- (void)setGlobalDeviceID:(id)d
{
  dCopy = d;
  v7 = objc_msgSend_queue(self, v5, v6);
  dispatch_assert_queue_V2(v7);

  v14 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v8, v9);
  v12 = objc_msgSend_globalDeviceIDsPerPersona(self, v10, v11);
  objc_msgSend_setObject_forKey_(v12, v13, dCopy, v14);
}

- (id)deviceIDsByContainerIdentifierInContainerEnvironment:(int64_t)environment
{
  v5 = objc_msgSend_queue(self, a2, environment);
  dispatch_assert_queue_V2(v5);

  v8 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v6, v7);
  v11 = objc_msgSend_deviceIDsByContainerIdentifierByContainerEnvironmentByPersona(self, v9, v10);
  v13 = objc_msgSend_objectForKey_(v11, v12, v8);

  if (!v13)
  {
    v13 = objc_opt_new();
    v17 = objc_msgSend_deviceIDsByContainerIdentifierByContainerEnvironmentByPersona(self, v15, v16);
    objc_msgSend_setObject_forKey_(v17, v18, v13, v8);
  }

  v19 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v14, environment);
  v21 = objc_msgSend_objectForKeyedSubscript_(v13, v20, v19);

  if (!v21)
  {
    v21 = objc_opt_new();
    v23 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v22, environment);
    objc_msgSend_setObject_forKeyedSubscript_(v13, v24, v21, v23);
  }

  return v21;
}

- (id)_serviceForContainer:(id)container
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *MEMORY[0x277CBC918];
  v5 = objc_msgSend_containerID(container, a2, container);
  objc_msgSend_environment(v5, v6, v7);
  v8 = CKContainerEnvironmentString();
  v10 = objc_msgSend_stringWithFormat_(v3, v9, @"%@.%@.%@", v4, @"deviceIdentifier", v8);

  return v10;
}

- (id)_perServiceLookupKeyForContainer:(id)container
{
  v3 = objc_msgSend_containerID(container, a2, container);
  v6 = objc_msgSend_containerIdentifier(v3, v4, v5);

  return v6;
}

- (id)_fetchDeviceIDForService:(id)service lookupKey:(id)key keychainSuccess:(BOOL *)success
{
  v60 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  keyCopy = key;
  v12 = objc_msgSend_currentProcess(CKDDaemonProcess, v10, v11);
  isSystemInstalledBinary = objc_msgSend_isSystemInstalledBinary(v12, v13, v14);

  if ((isSystemInstalledBinary & 1) == 0)
  {
    v17 = objc_msgSend__fetchDeviceIdentifierFromDefaultsForService_lookupKey_(self, v16, serviceCopy, keyCopy);
    if (v17)
    {
      v18 = v17;
      v19 = 1;
      if (!success)
      {
        goto LABEL_29;
      }

LABEL_28:
      *success = v19;
      goto LABEL_29;
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], *MEMORY[0x277CBC918]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], serviceCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], keyCopy);
  v21 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC558], *MEMORY[0x277CBED28]);
  if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_useLegacyKeychain(self, v22, v23) & 1) == 0)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], v21);
  }

  result = 0;
  v24 = SecItemCopyMatching(Mutable, &result);
  if (v24 == -25300)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *MEMORY[0x277CBC830];
    v19 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v27 = v26;
      v30 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v28, v29);
      *buf = 138412802;
      v53 = serviceCopy;
      v54 = 2112;
      v55 = keyCopy;
      v56 = 2112;
      v57 = v30;
      _os_log_impl(&dword_22506F000, v27, OS_LOG_TYPE_INFO, "No deviceID found in keychain (service: %@, lookupKey: %@, persona: %@)", buf, 0x20u);
    }
  }

  else
  {
    v25 = v24;
    if (v24)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v31 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v47 = v31;
        v50 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v48, v49);
        *buf = 138413058;
        v53 = serviceCopy;
        v54 = 2112;
        v55 = keyCopy;
        v56 = 2112;
        v57 = v50;
        v58 = 2048;
        v59 = v25;
        _os_log_error_impl(&dword_22506F000, v47, OS_LOG_TYPE_ERROR, "Failed to retrieve deviceID from keychain (service: %@, lookupKey: %@, persona: %@). SecItemCopyMatching() failed: %ld", buf, 0x2Au);
      }

      v19 = 0;
    }

    else
    {
      v19 = 1;
    }
  }

  CFRelease(Mutable);
  if (result)
  {
    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = objc_msgSend_initWithData_encoding_(v32, v33, result, 4);
    CFRelease(result);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v37 = v34;
      v40 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v38, v39);
      *buf = 138544130;
      v53 = v18;
      v54 = 2112;
      v55 = serviceCopy;
      v56 = 2112;
      v57 = keyCopy;
      v58 = 2112;
      v59 = v40;
      _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_INFO, "Successfully retrieved deviceID %{public}@ from keychain (service: %@, lookupKey: %@, persona: %@)", buf, 0x2Au);
    }

    v41 = objc_msgSend_currentProcess(CKDDaemonProcess, v35, v36);
    v44 = objc_msgSend_isSystemInstalledBinary(v41, v42, v43);

    if ((v44 & 1) == 0)
    {
      objc_msgSend__saveDeviceIdentifierToDefaults_forService_lookupKey_(self, v45, v18, serviceCopy, keyCopy);
    }

    if (success)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v18 = 0;
    if (success)
    {
      goto LABEL_28;
    }
  }

LABEL_29:

  return v18;
}

- (void)_saveDeviceIdentifierToDefaults:(id)defaults forService:(id)service lookupKey:(id)key
{
  v39 = *MEMORY[0x277D85DE8];
  defaultsCopy = defaults;
  serviceCopy = service;
  keyCopy = key;
  v12 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v10, v11);
  v14 = objc_msgSend_dictionaryForKey_(v12, v13, serviceCopy);

  v17 = objc_msgSend_mutableCopy(v14, v15, v16);
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = v19;

  objc_msgSend_setObject_forKeyedSubscript_(v20, v21, defaultsCopy, keyCopy);
  v24 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v22, v23);
  objc_msgSend_setObject_forKey_(v24, v25, v20, serviceCopy);

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v27 = v26;
    v30 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v28, v29);
    v31 = 138413058;
    v32 = defaultsCopy;
    v33 = 2112;
    v34 = serviceCopy;
    v35 = 2112;
    v36 = keyCopy;
    v37 = 2112;
    v38 = v30;
    _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Saved deviceID %@ to standardUserDefaults (service: %@, lookupKey: %@, persona: %@)", &v31, 0x2Au);
  }
}

- (id)_fetchDeviceIdentifierFromDefaultsForService:(id)service lookupKey:(id)key
{
  v28 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  keyCopy = key;
  v9 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], v7, v8);
  v11 = objc_msgSend_dictionaryForKey_(v9, v10, serviceCopy);
  v13 = objc_msgSend_objectForKey_(v11, v12, keyCopy);

  if (v13)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v16 = v14;
      v19 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v17, v18);
      v20 = 138413058;
      v21 = v13;
      v22 = 2112;
      v23 = serviceCopy;
      v24 = 2112;
      v25 = keyCopy;
      v26 = 2112;
      v27 = v19;
      _os_log_debug_impl(&dword_22506F000, v16, OS_LOG_TYPE_DEBUG, "Retrieved deviceID %@ from standardUserDefaults (service: %@, lookupKey: %@, persona: %@)", &v20, 0x2Au);
    }
  }

  return v13;
}

- (__CFDictionary)createQueryForService:(id)service lookupKey:(id)key sysBound:(BOOL)bound
{
  boundCopy = bound;
  keyCopy = key;
  serviceCopy = service;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], *MEMORY[0x277CBC918]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC120], serviceCopy);

  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], keyCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBED8], *MEMORY[0x277CDBF00]);
  if (boundCopy)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC150], &unk_2838C8BE0);
  }

  if (*MEMORY[0x277CBC810] != 1 || (objc_msgSend_useLegacyKeychain(self, v11, v12) & 1) == 0)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5C8], *MEMORY[0x277CBED28]);
  }

  return Mutable;
}

- (void)_saveDeviceIdentifier:(id)identifier forService:(id)service lookupKey:(id)key sysBound:(BOOL)bound success:(BOOL *)success
{
  boundCopy = bound;
  v64 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  serviceCopy = service;
  keyCopy = key;
  QueryForService_lookupKey_sysBound = objc_msgSend_createQueryForService_lookupKey_sysBound_(self, v15, serviceCopy, keyCopy, boundCopy);
  v18 = objc_msgSend_dataUsingEncoding_(identifierCopy, v17, 4);
  v19 = *MEMORY[0x277CDC5E8];
  CFDictionaryAddValue(QueryForService_lookupKey_sysBound, *MEMORY[0x277CDC5E8], v18);
  v20 = SecItemAdd(QueryForService_lookupKey_sysBound, 0);
  v21 = v20;
  if (v20 == -25299)
  {
    CFDictionaryRemoveValue(QueryForService_lookupKey_sysBound, v19);
    v22 = keyCopy;
    v23 = serviceCopy;
    v24 = identifierCopy;
    selfCopy = self;
    successCopy = success;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionaryAddValue(Mutable, v19, v18);
    v21 = SecItemUpdate(QueryForService_lookupKey_sysBound, Mutable);
    v28 = Mutable;
    success = successCopy;
    self = selfCopy;
    identifierCopy = v24;
    serviceCopy = v23;
    keyCopy = v22;
    v20 = -25299;
    CFRelease(v28);
  }

  CFRelease(QueryForService_lookupKey_sysBound);
  v29 = v21 == 0;
  v30 = *MEMORY[0x277CBC878];
  if (v21)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v30);
    }

    v31 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      if (v20 == -25299)
      {
        v32 = @"update";
      }

      else
      {
        v32 = @"save";
      }

      successCopy2 = success;
      v34 = v31;
      v37 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v35, v36);
      *buf = 138413570;
      v53 = v32;
      v54 = 2114;
      v55 = identifierCopy;
      v56 = 2112;
      v57 = serviceCopy;
      v58 = 2112;
      v59 = keyCopy;
      v60 = 2112;
      v61 = v37;
      v62 = 2048;
      v63 = v21;
      _os_log_error_impl(&dword_22506F000, v34, OS_LOG_TYPE_ERROR, "Failed to %@ device ID %{public}@ in keychain (service: %@, lookupKey: %@, persona: %@). SecItemAdd()/SecItemUpdate() failed: %ld", buf, 0x3Eu);

      success = successCopy2;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v30);
    }

    successCopy3 = success;
    v39 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      if (v20 == -25299)
      {
        v42 = @"updated";
      }

      else
      {
        v42 = @"saved";
      }

      v43 = v39;
      v46 = objc_msgSend_currentPersonaID(CKDDeviceIDManager, v44, v45);
      *buf = 138413314;
      v53 = v42;
      v54 = 2114;
      v55 = identifierCopy;
      v56 = 2112;
      v57 = serviceCopy;
      v58 = 2112;
      v59 = keyCopy;
      v60 = 2112;
      v61 = v46;
      _os_log_impl(&dword_22506F000, v43, OS_LOG_TYPE_INFO, "Successfully %@ device ID %{public}@ in keychain (service: %@, lookupKey: %@, persona: %@)", buf, 0x34u);
    }

    v47 = objc_msgSend_currentProcess(CKDDaemonProcess, v40, v41);
    isSystemInstalledBinary = objc_msgSend_isSystemInstalledBinary(v47, v48, v49);

    success = successCopy3;
    if ((isSystemInstalledBinary & 1) == 0)
    {
      objc_msgSend__saveDeviceIdentifierToDefaults_forService_lookupKey_(self, v51, identifierCopy, serviceCopy, keyCopy);
    }
  }

  if (success)
  {
    *success = v29;
  }
}

- (void)_saveDeviceIdentifier:(id)identifier forContainer:(id)container
{
  containerCopy = container;
  identifierCopy = identifier;
  v12 = objc_msgSend__serviceForContainer_(self, v8, containerCopy);
  v10 = objc_msgSend__perServiceLookupKeyForContainer_(self, v9, containerCopy);

  objc_msgSend__saveDeviceIdentifier_forService_lookupKey_sysBound_success_(self, v11, identifierCopy, v12, v10, 0, 0);
}

- (void)_deleteDeviceIdentifierForContainer:(id)container
{
  v16 = *MEMORY[0x277D85DE8];
  containerCopy = container;
  v6 = objc_msgSend__serviceForContainer_(self, v5, containerCopy);
  v8 = objc_msgSend__perServiceLookupKeyForContainer_(self, v7, containerCopy);

  QueryForService_lookupKey_sysBound = objc_msgSend_createQueryForService_lookupKey_sysBound_(self, v9, v6, v8, 0);
  v11 = SecItemDelete(QueryForService_lookupKey_sysBound);
  if (v11)
  {
    v12 = v11;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v14 = 134217984;
      v15 = v12;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "SecItemDelete() for device identifier failed: %ld", &v14, 0xCu);
    }
  }

  CFRelease(QueryForService_lookupKey_sysBound);
}

- (id)deviceIdentifierForContainer:(id)container skipInMemoryCache:(BOOL)cache createIfNecessary:(BOOL)necessary
{
  containerCopy = container;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_22507421C;
  v37 = sub_22507368C;
  v38 = 0;
  v11 = objc_msgSend_currentProcess(CKDDaemonProcess, v9, v10);
  v14 = objc_msgSend_processType(v11, v12, v13);

  if (v14 == 1)
  {
    v16 = 0;
  }

  else
  {
    v17 = objc_msgSend__serviceForContainer_(self, v15, containerCopy);
    v19 = objc_msgSend__perServiceLookupKeyForContainer_(self, v18, containerCopy);
    v22 = objc_msgSend_queue(self, v20, v21);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_225407D60;
    v26[3] = &unk_27854E110;
    v26[4] = self;
    cacheCopy = cache;
    v27 = containerCopy;
    v28 = v17;
    v29 = v19;
    v30 = &v33;
    necessaryCopy = necessary;
    v23 = v19;
    v24 = v17;
    dispatch_sync(v22, v26);

    v16 = v34[5];
  }

  _Block_object_dispose(&v33, 8);

  return v16;
}

- (id)globalDeviceIdentifierSkipInMemoryCache:(BOOL)cache createIfNecessary:(BOOL)necessary
{
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_22507421C;
  v30 = sub_22507368C;
  v31 = 0;
  v7 = objc_msgSend_currentProcess(CKDDaemonProcess, a2, cache);
  v10 = objc_msgSend_processType(v7, v8, v9);

  if (v10 == 1)
  {
    v13 = 0;
  }

  else
  {
    v14 = objc_msgSend__globalService(self, v11, v12);
    v17 = objc_msgSend_queue(self, v15, v16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22540844C;
    block[3] = &unk_27854E138;
    cacheCopy = cache;
    block[4] = self;
    v21 = v14;
    v22 = @"globalDeviceIdentifier";
    v23 = &v26;
    necessaryCopy = necessary;
    v18 = v14;
    dispatch_sync(v17, block);

    v13 = v27[5];
  }

  _Block_object_dispose(&v26, 8);

  return v13;
}

@end