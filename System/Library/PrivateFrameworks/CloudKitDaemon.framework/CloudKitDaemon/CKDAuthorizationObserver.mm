@interface CKDAuthorizationObserver
+ (CKDAuthorizationObserver)defaultObserver;
- (CKDAuthorizationObserver)init;
- (CKDAuthorizationObserver)initWithIdentifier:(id)identifier;
- (NSSet)bundleIdentifiers;
- (NSSet)services;
- (void)_handleTCCAuthorizationEventWithType:(unint64_t)type record:(id)record block:(id)block;
- (void)invalidate;
- (void)registerWithBlock:(id)block;
- (void)setBundleIdentifiers:(id)identifiers;
- (void)setServices:(id)services;
@end

@implementation CKDAuthorizationObserver

+ (CKDAuthorizationObserver)defaultObserver
{
  if (qword_280D585E0 != -1)
  {
    dispatch_once(&qword_280D585E0, &unk_28385E8E0);
  }

  v3 = qword_280D585D8;

  return v3;
}

- (CKDAuthorizationObserver)init
{
  v2 = objc_alloc(MEMORY[0x277CBC360]);
  v4 = objc_msgSend_initWithName_format_(v2, v3, *MEMORY[0x277CBE660], @"You must call -initWithIdentifier: instead");
  objc_exception_throw(v4);
}

- (CKDAuthorizationObserver)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = CKDAuthorizationObserver;
  v7 = [(CKDAuthorizationObserver *)&v26 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(identifierCopy, v5, v6);
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v10 = identifierCopy;
    v13 = objc_msgSend_UTF8String(v10, v11, v12);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create(v13, v14);
    queue = v7->_queue;
    v7->_queue = v15;

    v19 = objc_msgSend_set(MEMORY[0x277CBEB98], v17, v18);
    services = v7->_services;
    v7->_services = v19;

    v23 = objc_msgSend_set(MEMORY[0x277CBEB98], v21, v22);
    bundleIdentifiers = v7->_bundleIdentifiers;
    v7->_bundleIdentifiers = v23;
  }

  return v7;
}

- (NSSet)services
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_services;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setServices:(id)services
{
  servicesCopy = services;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (servicesCopy)
  {
    v7 = objc_msgSend_copy(servicesCopy, v5, v6);
  }

  else
  {
    v7 = objc_msgSend_set(MEMORY[0x277CBEB98], v5, v6);
  }

  services = selfCopy->_services;
  selfCopy->_services = v7;

  objc_sync_exit(selfCopy);
}

- (NSSet)bundleIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_bundleIdentifiers;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setBundleIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (identifiersCopy)
  {
    v7 = objc_msgSend_copy(identifiersCopy, v5, v6);
  }

  else
  {
    v7 = objc_msgSend_set(MEMORY[0x277CBEB98], v5, v6);
  }

  bundleIdentifiers = selfCopy->_bundleIdentifiers;
  selfCopy->_bundleIdentifiers = v7;

  objc_sync_exit(selfCopy);
}

- (void)registerWithBlock:(id)block
{
  v76 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = objc_msgSend_bundleIdentifiers(selfCopy, v6, v7);
  v11 = objc_msgSend_count(v8, v9, v10);

  if (v11)
  {
    empty = xpc_array_create_empty();
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v66 = 0u;
    v15 = objc_msgSend_bundleIdentifiers(selfCopy, v13, v14);
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v66, v75, 16);
    if (v17)
    {
      v18 = *v67;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v67 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v66 + 1) + 8 * i);
          v23 = objc_msgSend_UTF8String(v20, v21, v22);
          v24 = xpc_string_create(v23);
          xpc_array_append_value(empty, v24);
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v25, &v66, v75, 16);
      }

      while (v17);
    }
  }

  else
  {
    empty = 0;
  }

  v26 = xpc_dictionary_create_empty();
  v29 = objc_msgSend_services(selfCopy, v27, v28);
  if (objc_msgSend_count(v29, v30, v31))
  {
    objc_msgSend_services(selfCopy, v32, v33);
  }

  else
  {
    objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v32, *MEMORY[0x277D6C108]);
  }
  v34 = ;

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v35 = v34;
  v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v36, &v62, v74, 16);
  if (v37)
  {
    v38 = *v63;
    if (empty)
    {
      v39 = empty;
    }

    else
    {
      v39 = MEMORY[0x277D863E8];
    }

    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v41 = *(*(&v62 + 1) + 8 * j);
        v44 = objc_msgSend_UTF8String(v41, v42, v43);
        xpc_dictionary_set_value(v26, v44, v39);
      }

      v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v35, v45, &v62, v74, 16);
    }

    while (v37);
  }

  objc_initWeak(&location, selfCopy);
  v48 = tcc_events_filter_create_with_criteria();
  if (!v48)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v58 = objc_msgSend_bundleIdentifiers(selfCopy, v50, v51);
      *buf = 138412546;
      v71 = v58;
      v72 = 2112;
      v73 = v35;
      _os_log_error_impl(&dword_22506F000, v49, OS_LOG_TYPE_ERROR, "Failed to create event filter for bundle identifier %@ and services %@", buf, 0x16u);
    }
  }

  v52 = objc_msgSend_identifier(selfCopy, v46, v47);
  v53 = v52;
  objc_msgSend_UTF8String(v52, v54, v55);
  if (selfCopy)
  {
    queue = selfCopy->_queue;
  }

  else
  {
    queue = 0;
  }

  v57 = queue;
  objc_copyWeak(&v60, &location);
  v59 = blockCopy;
  tcc_events_subscribe();

  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);

  objc_sync_exit(selfCopy);
}

- (void)invalidate
{
  v6 = objc_msgSend_identifier(self, a2, v2);
  v3 = v6;
  objc_msgSend_UTF8String(v6, v4, v5);
  tcc_events_unsubscribe();
}

- (void)_handleTCCAuthorizationEventWithType:(unint64_t)type record:(id)record block:(id)block
{
  v51 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  blockCopy = block;
  v10 = type - 1;
  if (type - 1 < 3)
  {
    v11 = tcc_authorization_record_get_service();
    v12 = tcc_service_get_CF_name();
    v13 = tcc_authorization_record_get_subject_identity();
    if (v13)
    {
      if (!tcc_identity_get_type())
      {
        v17 = MEMORY[0x277CCACA8];
        identifier = tcc_identity_get_identifier();
        v20 = objc_msgSend_stringWithUTF8String_(v17, v19, identifier);
        if (v20)
        {
          authorization_right = tcc_authorization_record_get_authorization_right();
          v22 = -1;
          v23 = @"Unknown";
          if (authorization_right == 2)
          {
            v23 = @"Allowed";
            v22 = 1;
          }

          if (authorization_right)
          {
            v24 = v23;
          }

          else
          {
            v24 = @"Denied";
          }

          if (!authorization_right)
          {
            v22 = 0;
          }

          v39 = v22;
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v25 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
          {
            v37 = off_27854DE30[v10];
            *buf = 138413058;
            typeCopy = v37;
            v45 = 2112;
            v46 = v20;
            v47 = 2112;
            v48 = v12;
            v49 = 2112;
            v50 = v24;
            _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "Posting %@ event for %@(%@) with authorization: %@", buf, 0x2Au);
          }

          objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v26, v27);
          v28 = v40 = v12;
          v41[0] = @"CKDAuthorizationServiceKey";
          v41[1] = @"CKDAuthorizationBundleIdentifierKey";
          v42[0] = v40;
          v42[1] = v20;
          v41[2] = @"CKDAuthorizationEventTypeKey";
          objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v29, v10);
          v30 = v38 = v20;
          v42[2] = v30;
          v41[3] = @"CKDAuthorizationKey";
          v32 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v31, v39);
          v42[3] = v32;
          v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, v42, v41, 4);
          objc_msgSend_postNotificationName_object_userInfo_(v28, v35, @"CKDAuthorizationChangedNotification", self, v34);

          v20 = v38;
          v12 = v40;
          if (blockCopy)
          {
            blockCopy[2](blockCopy, v40, v38, v10, v39);
          }
        }

        else
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v36 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            typeCopy = v12;
            _os_log_error_impl(&dword_22506F000, v36, OS_LOG_TYPE_ERROR, "Unable to determine bundle identifier for service: %@", buf, 0xCu);
          }
        }

        goto LABEL_36;
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v14 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
LABEL_36:

        goto LABEL_37;
      }

      *buf = 138412290;
      typeCopy = v12;
      v15 = "Invalid subject identity type for service event: %@";
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v14 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 138412290;
      typeCopy = v12;
      v15 = "Unable to determine subject identity for service event: %@";
    }

    _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, v15, buf, 0xCu);
    goto LABEL_36;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    typeCopy = type;
    _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Unknown TCC event received: %lld", buf, 0xCu);
  }

LABEL_37:
}

@end