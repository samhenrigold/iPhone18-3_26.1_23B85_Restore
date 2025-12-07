@interface IMHandleRegistrar
+ (id)sharedInstance;
- (IMHandleRegistrar)init;
- (id)CNIDToHandlesMap;
- (id)IDToHandlesMap;
- (id)_accountSiblingsForHandle:(id)handle;
- (id)_chatSiblingsForHandle:(id)handle;
- (id)_existingAccountSiblingsForHandle:(id)handle;
- (id)_existingChatSiblingsForHandle:(id)handle;
- (id)allIMHandles;
- (id)getIDsForAllIMHandles;
- (id)getIDsForFinalBatch;
- (id)getIMHandlesForID:(id)d;
- (id)handlesForCNIdentifier:(id)identifier;
- (id)siblingsForIMHandle:(id)handle;
- (void)_addIMHandleToIDToHandlesMap:(id)map;
- (void)_addressBookChanged;
- (void)_buildSiblingsForIMHandle:(id)handle;
- (void)_clearSiblingsCacheForIMHandle:(id)handle rebuildAfter:(BOOL)after;
- (void)_dumpOutAllIMHandles;
- (void)_dumpOutAllIMHandlesForAccount:(id)account;
- (void)_emptySiblingCacheForIMHandleGUID:(id)d;
- (void)_handleAddContactChangeHistoryEvent:(id)event;
- (void)_handleDeleteContactChangeHistoryEvent:(id)event;
- (void)_handleDropEverythingChangeHistoryEvent;
- (void)_handleNicknameDidChangeNotification:(id)notification;
- (void)_handleUpdateContactChangeHistoryEvent:(id)event;
- (void)_postContactChangeHistoryEventClientNotifications;
- (void)_removeIMHandleToIDToHandlesMap:(id)map;
- (void)addHandleToCNIDMap:(id)map CNContact:(id)contact;
- (void)clearCNIDToHandlesMap;
- (void)processContactChangeHistoryEventWithHandleIDs:(id)ds andCNContact:(id)contact;
- (void)registerIMHandle:(id)handle;
- (void)removeHandleFromCNIDMap:(id)map withCNID:(id)d;
- (void)unregisterIMHandle:(id)handle;
@end

@implementation IMHandleRegistrar

+ (id)sharedInstance
{
  if (qword_1ED767818 != -1)
  {
    sub_1A824DD54();
  }

  if (qword_1ED767928 != -1)
  {
    sub_1A824DD68();
  }

  if (qword_1ED767820 != -1)
  {
    sub_1A824DD38();
  }

  v2 = qword_1ED7678C8;

  return v2;
}

- (IMHandleRegistrar)init
{
  v14.receiver = self;
  v14.super_class = IMHandleRegistrar;
  v2 = [(IMHandleRegistrar *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    siblingsMap = v2->_siblingsMap;
    v2->_siblingsMap = v3;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    allIMHandles = v2->_allIMHandles;
    v2->_allIMHandles = weakObjectsHashTable;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    CNIDToHandlesMap = v2->_CNIDToHandlesMap;
    v2->_CNIDToHandlesMap = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    IDToHandlesMap = v2->_IDToHandlesMap;
    v2->_IDToHandlesMap = v9;

    v11 = objc_alloc_init(MEMORY[0x1E69A7F40]);
    businessNameManager = v2->_businessNameManager;
    v2->_businessNameManager = v11;
  }

  return v2;
}

- (id)getIDsForAllIMHandles
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  allIMHandles = [(IMHandleRegistrar *)self allIMHandles];
  v5 = [allIMHandles countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(allIMHandles);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 ID];
        v11 = [v10 length];

        if (v11)
        {
          v12 = [v9 ID];
          [v3 addObject:v12];
        }
      }

      v6 = [allIMHandles countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)allIMHandles
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allObjects = [(NSHashTable *)selfCopy->_allIMHandles allObjects];
  objc_sync_exit(selfCopy);

  return allObjects;
}

- (void)_handleDropEverythingChangeHistoryEvent
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v2, OS_LOG_TYPE_INFO, "Handling drop everything ContactStore change history event", v7, 2u);
    }
  }

  v3 = +[IMHandleRegistrar sharedInstance];
  [v3 _addressBookChanged];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69A6830] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:@"__kIMHandleRegistrarAddressBookChangedNotification" object:0];

  defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter3 postNotificationName:*MEMORY[0x1E69A6828] object:0];
}

- (void)_handleDeleteContactChangeHistoryEvent:(id)event
{
  v41 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Received a DeleteContactChangeHistoryEvent", buf, 2u);
    }
  }

  userInfo = [eventCopy userInfo];
  v22 = userInfo;
  if (userInfo)
  {
    v5 = [userInfo objectForKey:*MEMORY[0x1E69A6A88]];
    v6 = +[IMHandleRegistrar sharedInstance];
    v21 = [v6 handlesForCNIdentifier:v5];

    if ([v21 count])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = v21;
      v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v27)
      {
        v25 = *v34;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v34 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v8 = *(*(&v33 + 1) + 8 * i);
            v9 = [IMHandleRegistrar sharedInstance:v21];
            [v9 removeHandleFromCNIDMap:v8 withCNID:v5];

            v28 = [v8 ID];
            mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
            [mEMORY[0x1E69A7FD0] removeContactWithID:v28];

            [v8 updateCNContact:0];
            v11 = [(IMHandleRegistrar *)self getIMHandlesForID:v28];
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
            if (v12)
            {
              v13 = *v30;
              do
              {
                for (j = 0; j != v12; ++j)
                {
                  if (*v30 != v13)
                  {
                    objc_enumerationMutation(v11);
                  }

                  v15 = *(*(&v29 + 1) + 8 * j);
                  if (v15 != v8)
                  {
                    v16 = +[IMHandleRegistrar sharedInstance];
                    [v16 removeHandleFromCNIDMap:v15 withCNID:v5];

                    [v15 updateCNContact:0];
                  }
                }

                v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
              }

              while (v12);
            }
          }

          v27 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
        }

        while (v27);
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x1E69A6830] object:0];

      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 postNotificationName:*MEMORY[0x1E69A6828] object:0];
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v38 = v5;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "No handles with CNID %@ found, no action to take.", buf, 0xCu);
      }
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "No action to take in _handleAddContactChangeHistoryEvent", buf, 2u);
    }
  }
}

- (void)_handleAddContactChangeHistoryEvent:(id)event
{
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Received a AddContactChangeHistoryEvent", buf, 2u);
    }
  }

  userInfo = [eventCopy userInfo];
  v6 = userInfo;
  if (userInfo)
  {
    v7 = [userInfo objectForKey:*MEMORY[0x1E69A6AA8]];
    v8 = [v6 objectForKey:*MEMORY[0x1E69A6A90]];
    v9 = +[IMHandleRegistrar sharedInstance];
    [v9 processContactChangeHistoryEventWithHandleIDs:v7 andCNContact:v8];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_8;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "No action to take in _handleAddContactChangeHistoryEvent", v10, 2u);
    }
  }

LABEL_8:
}

- (void)_handleUpdateContactChangeHistoryEvent:(id)event
{
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v4, OS_LOG_TYPE_INFO, "Received a UpdateContactChangeHistoryEvent", buf, 2u);
    }
  }

  userInfo = [eventCopy userInfo];
  v6 = userInfo;
  if (userInfo)
  {
    v7 = [userInfo objectForKey:*MEMORY[0x1E69A6AA8]];
    v8 = [v6 objectForKey:*MEMORY[0x1E69A6A90]];
    v9 = +[IMHandleRegistrar sharedInstance];
    [v9 processContactChangeHistoryEventWithHandleIDs:v7 andCNContact:v8];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_8;
    }

    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "No action to take in _handleAddContactChangeHistoryEvent", v10, 2u);
    }
  }

LABEL_8:
}

- (void)processContactChangeHistoryEventWithHandleIDs:(id)ds andCNContact:(id)contact
{
  v49 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contactCopy = contact;
  v7 = [dsCopy count];
  v36 = contactCopy;
  v33 = dsCopy;
  if (contactCopy && v7)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = dsCopy;
    v9 = 0;
    v10 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:{16, dsCopy}];
    if (v10)
    {
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = IMCleanupPhoneNumber();
          v14 = +[IMHandleRegistrar sharedInstance];
          v15 = [v14 getIMHandlesForID:v13];

          if ([v15 count])
          {
            if (!v9)
            {
              v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
            }

            [v9 addObjectsFromArray:v15];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v10);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Cannot process Contact change history event!. No handles or invalid CNContact recevied.", buf, 2u);
      }
    }

    v9 = 0;
  }

  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v47 = v9;
      _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Updating handles with IDs %@ with a new Contact", buf, 0xCu);
    }
  }

  if (contactCopy)
  {
    mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
    identifier = [contactCopy identifier];
    v20 = [mEMORY[0x1E69A7FD0] handleIDsForCNID:identifier];
  }

  else
  {
    v20 = 0;
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v9;
  v21 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v21)
  {
    v22 = *v38;
    v23 = MEMORY[0x1E695E0F0];
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v37 + 1) + 8 * j);
        v26 = +[IMHandleRegistrar sharedInstance];
        v27 = [v25 cnContactWithKeys:v23];
        identifier2 = [v27 identifier];
        [v26 removeHandleFromCNIDMap:v25 withCNID:identifier2];

        v29 = MEMORY[0x1E69A7FD0];
        v30 = [v25 ID];
        v31 = [v29 validateAndCleanupID:v30];
        LODWORD(v27) = [v20 containsObject:v31];

        if (v27)
        {
          v32 = v36;
        }

        else
        {
          v32 = 0;
        }

        [v25 updateCNContact:v32];
      }

      v21 = [obj countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v21);
  }

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__postContactChangeHistoryEventClientNotifications object:0];
  [(IMHandleRegistrar *)self performSelector:sel__postContactChangeHistoryEventClientNotifications withObject:0 afterDelay:0.0];
}

- (void)_postContactChangeHistoryEventClientNotifications
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:*MEMORY[0x1E69A6830] object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 postNotificationName:*MEMORY[0x1E69A6828] object:0];
}

- (void)_addressBookChanged
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v3 startTimingForKey:@"_addressBookChanged"];
  allIMHandles = [(IMHandleRegistrar *)self allIMHandles];
  v5 = [allIMHandles copy];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = +[IMHandleRegistrar sharedInstance];
        [v12 clearSiblingCacheForIMHandle:v11];

        [v11 updateCNContact:0];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = +[IMHandleRegistrar sharedInstance];
  [v13 clearCNIDToHandlesMap];
}

- (void)_handleNicknameDidChangeNotification:(id)notification
{
  v31 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v18 = [userInfo objectForKeyedSubscript:@"__kIMNicknameDidChangeNotificationHandleIDsWithUpdatedNamesUserInfoKey"];

  objc_opt_class();
  v5 = v18;
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 count])
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v30 = [v18 count];
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_INFO, "Resetting cached names for %ld handles due to nickname change notification", buf, 0xCu);
      }

      v5 = v18;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v21 = 0u;
          v22 = 0u;
          v19 = 0u;
          v20 = 0u;
          v13 = [(IMHandleRegistrar *)self getIMHandlesForID:v11];
          v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
          if (v14)
          {
            v15 = *v20;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                [*(*(&v19 + 1) + 8 * j) resetCachedName];
              }

              v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
            }

            while (v14);
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }

    v5 = v18;
  }
}

- (void)_emptySiblingCacheForIMHandleGUID:(id)d
{
  if (d)
  {
    removeAllObjects = [(NSMutableDictionary *)self->_siblingsMap objectForKey:?];
    if (removeAllObjects)
    {
      v4 = removeAllObjects;
      removeAllObjects = [removeAllObjects count];
      if (removeAllObjects)
      {
        removeAllObjects = [v4 removeAllObjects];
      }
    }

    MEMORY[0x1EEE66BB8](removeAllObjects);
  }
}

- (void)_buildSiblingsForIMHandle:(id)handle
{
  v26 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = handleCopy;
  if (handleCopy)
  {
    guid = [handleCopy guid];
    [(IMHandleRegistrar *)self _emptySiblingCacheForIMHandleGUID:guid];

    guid2 = [v5 guid];
    v8 = [(NSMutableDictionary *)self->_siblingsMap objectForKey:guid2];
    if (!v8)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(NSMutableDictionary *)self->_siblingsMap setObject:v8 forKey:guid2];
    }

    [v8 addObject:v5];
    v9 = [v5 cnContactWithKeys:MEMORY[0x1E695E0F0]];
    identifier = [v9 identifier];

    v11 = +[IMHandleRegistrar sharedInstance];
    v12 = [v11 handlesForCNIdentifier:identifier];
    allObjects = [v12 allObjects];

    if ([allObjects count])
    {
      v20 = guid2;
      [v8 addObjectsFromArray:allObjects];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = allObjects;
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          v18 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            if (*(*(&v21 + 1) + 8 * v18) != v5)
            {
              guid3 = [v5 guid];
              if ([guid3 length])
              {
                [(NSMutableDictionary *)self->_siblingsMap setObject:v8 forKey:guid3];
              }
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v16);
      }

      guid2 = v20;
    }
  }
}

- (void)_clearSiblingsCacheForIMHandle:(id)handle rebuildAfter:(BOOL)after
{
  afterCopy = after;
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  guid = [handleCopy guid];
  if ([guid length])
  {
    v8 = [(NSMutableDictionary *)self->_siblingsMap objectForKey:guid];
    v9 = [v8 copy];

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (v15 != handleCopy)
          {
            guid2 = [v15 guid];
            [(IMHandleRegistrar *)self _emptySiblingCacheForIMHandleGUID:guid2];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [(IMHandleRegistrar *)self _emptySiblingCacheForIMHandleGUID:guid];
    if (afterCopy)
    {
      [(IMHandleRegistrar *)self _buildSiblingsForIMHandle:handleCopy];
      [(IMHandleRegistrar *)self _clearSiblingsCacheForIMHandle:handleCopy rebuildAfter:0];
    }
  }
}

- (void)addHandleToCNIDMap:(id)map CNContact:(id)contact
{
  mapCopy = map;
  contactCopy = contact;
  if (mapCopy && contactCopy)
  {
    v7 = +[IMHandleRegistrar sharedInstance];
    identifier = [contactCopy identifier];
    v9 = [v7 handlesForCNIdentifier:identifier];
    v10 = [v9 mutableCopy];

    if (self->_CNIDToHandlesMap)
    {
      if (v10)
      {
LABEL_5:
        [v10 addObject:mapCopy];

        goto LABEL_6;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CNIDToHandlesMap = self->_CNIDToHandlesMap;
      self->_CNIDToHandlesMap = Mutable;

      if (v10)
      {
        goto LABEL_5;
      }
    }

    v10 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v13 = self->_CNIDToHandlesMap;
    identifier2 = [contactCopy identifier];
    [(NSMutableDictionary *)v13 setObject:v10 forKey:identifier2];

    goto LABEL_5;
  }

LABEL_6:
}

- (id)handlesForCNIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_CNIDToHandlesMap objectForKey:identifierCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeHandleFromCNIDMap:(id)map withCNID:(id)d
{
  mapCopy = map;
  dCopy = d;
  if (mapCopy && [dCopy length])
  {
    if (!self->_CNIDToHandlesMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CNIDToHandlesMap = self->_CNIDToHandlesMap;
      self->_CNIDToHandlesMap = Mutable;
    }

    v9 = +[IMHandleRegistrar sharedInstance];
    v10 = [v9 handlesForCNIdentifier:dCopy];
    v11 = [v10 mutableCopy];

    if ([v11 count])
    {
      [v11 removeObject:mapCopy];
    }

    if (![v11 count])
    {
      [(NSMutableDictionary *)self->_CNIDToHandlesMap removeObjectForKey:dCopy];
    }
  }
}

- (void)clearCNIDToHandlesMap
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "Clearing the CNIDToHandlesMap", v4, 2u);
    }
  }

  [(NSMutableDictionary *)self->_CNIDToHandlesMap removeAllObjects];
}

- (id)CNIDToHandlesMap
{
  v2 = [(NSMutableDictionary *)self->_CNIDToHandlesMap copy];

  return v2;
}

- (void)registerIMHandle:(id)handle
{
  v17 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_allIMHandles addObject:handleCopy];
  siblingsMap = selfCopy->_siblingsMap;
  guid = [handleCopy guid];
  v8 = [(NSMutableDictionary *)siblingsMap objectForKey:guid];

  if (!v8)
  {
    guid2 = [handleCopy guid];
    [(IMHandleRegistrar *)selfCopy _emptySiblingCacheForIMHandleGUID:guid2];
  }

  [(IMHandleRegistrar *)selfCopy _addIMHandleToIDToHandlesMap:handleCopy];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [handleCopy ID];
      v12 = [(NSHashTable *)selfCopy->_allIMHandles count];
      v13 = 138412546;
      v14 = v11;
      v15 = 1024;
      v16 = v12;
      _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_DEBUG, "** Added: %@   (%d now exist)", &v13, 0x12u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)unregisterIMHandle:(id)handle
{
  handleCopy = handle;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  guid = [handleCopy guid];
  if ([guid length])
  {
    [(NSHashTable *)selfCopy->_allIMHandles removeObject:handleCopy];
    [(IMHandleRegistrar *)selfCopy _clearSiblingsCacheForIMHandle:handleCopy rebuildAfter:0];
    [(NSMutableDictionary *)selfCopy->_siblingsMap removeObjectForKey:guid];
    [(IMHandleRegistrar *)selfCopy _removeIMHandleToIDToHandlesMap:handleCopy];
  }

  objc_sync_exit(selfCopy);
}

- (id)siblingsForIMHandle:(id)handle
{
  handleCopy = handle;
  siblingsMap = self->_siblingsMap;
  guid = [handleCopy guid];
  v7 = [(NSMutableDictionary *)siblingsMap objectForKey:guid];

  if (![v7 count])
  {
    [(IMHandleRegistrar *)self _buildSiblingsForIMHandle:handleCopy];
    v8 = self->_siblingsMap;
    guid2 = [handleCopy guid];
    v10 = [(NSMutableDictionary *)v8 objectForKey:guid2];

    v7 = v10;
  }

  v11 = [v7 copy];

  return v11;
}

- (void)_addIMHandleToIDToHandlesMap:(id)map
{
  v18 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v5 = mapCopy;
  if (mapCopy && ([mapCopy ID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    IDToHandlesMap = self->_IDToHandlesMap;
    v9 = [v5 ID];
    im_stripCategoryLabel = [v9 im_stripCategoryLabel];
    v11 = [(NSMutableDictionary *)IDToHandlesMap objectForKey:im_stripCategoryLabel];

    if (!v11)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
      v12 = self->_IDToHandlesMap;
      v13 = [v5 ID];
      im_stripCategoryLabel2 = [v13 im_stripCategoryLabel];
      [(NSMutableDictionary *)v12 setObject:v11 forKey:im_stripCategoryLabel2];
    }

    if (([v11 containsObject:v5] & 1) == 0)
    {
      [v11 addObject:v5];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Not adding %@ to IDToHandlesMap", &v16, 0xCu);
    }
  }
}

- (void)_removeIMHandleToIDToHandlesMap:(id)map
{
  v18 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v5 = mapCopy;
  if (mapCopy && ([mapCopy ID], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    IDToHandlesMap = self->_IDToHandlesMap;
    v9 = [v5 ID];
    im_stripCategoryLabel = [v9 im_stripCategoryLabel];
    v11 = [(NSMutableDictionary *)IDToHandlesMap objectForKey:im_stripCategoryLabel];

    if ([v11 containsObject:v5])
    {
      [v11 removeObject:v5];
    }

    if (![v11 count])
    {
      v12 = self->_IDToHandlesMap;
      v13 = [v5 ID];
      im_stripCategoryLabel2 = [v13 im_stripCategoryLabel];
      [(NSMutableDictionary *)v12 removeObjectForKey:im_stripCategoryLabel2];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = 138412290;
      v17 = v5;
      _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Not removing %@ from IDToHandlesMap", &v16, 0xCu);
    }
  }
}

- (id)IDToHandlesMap
{
  v2 = [(NSMutableDictionary *)self->_IDToHandlesMap copy];

  return v2;
}

- (id)getIMHandlesForID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if ([dCopy length])
  {
    v5 = [(NSMutableDictionary *)self->_IDToHandlesMap objectForKey:dCopy];
    allObjects = [v5 allObjects];
    v7 = [allObjects copy];

    dialingForCurrentLocale = [MEMORY[0x1E69A7FD0] dialingForCurrentLocale];
    if ([v7 count] || (objc_msgSend(dCopy, "hasPrefix:", dialingForCurrentLocale) & 1) != 0 || !MEMORY[0x1AC56C3C0](dCopy))
    {
      v9 = dCopy;
    }

    else
    {
      v9 = IMStripFormattingFromAddress();

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", dialingForCurrentLocale, v9];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Re-attempting to lookup cache with ID & ITU: %@", buf, 0xCu);
        }
      }

      v12 = [(NSMutableDictionary *)self->_IDToHandlesMap objectForKey:v10];
      allObjects2 = [v12 allObjects];
      v14 = [allObjects2 copy];

      v7 = v14;
    }

    v15 = [v7 copy];

    dCopy = v9;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)getIDsForFinalBatch
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allIMHandles = [(IMHandleRegistrar *)self allIMHandles];
  v5 = [allIMHandles countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(allIMHandles);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
        v11 = [v9 ID];
        v12 = [mEMORY[0x1E69A7FD0] isContactWithIDAlreadyFetched:v11];

        if ((v12 & 1) == 0)
        {
          v13 = [v9 ID];
          v14 = [v13 length];

          if (v14)
          {
            v15 = [v9 ID];
            [v3 addObject:v15];
          }
        }
      }

      v6 = [allIMHandles countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

- (void)_dumpOutAllIMHandles
{
  v7 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      allIMHandles = self->_allIMHandles;
      v5 = 138412290;
      v6 = allIMHandles;
      _os_log_impl(&dword_1A823F000, v3, OS_LOG_TYPE_INFO, "All handles: %@", &v5, 0xCu);
    }
  }
}

- (void)_dumpOutAllIMHandlesForAccount:(id)account
{
  v25 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (!_IMWillLog())
  {
    goto LABEL_24;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = accountCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "All handles for account: %@", buf, 0xCu);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_allIMHandles;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v7)
  {

LABEL_20:
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "    Hurray, no handles!", buf, 2u);
      }
    }

    goto LABEL_24;
  }

  v9 = 0;
  v10 = *v19;
  *&v8 = 138412290;
  v17 = v8;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v19 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v18 + 1) + 8 * i);
      account = [v12 account];
      v14 = account == accountCopy;

      if (v14)
      {
        v15 = IMHandleLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v24 = v12;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_DEFAULT, "     %@", buf, 0xCu);
        }

        v9 = 1;
      }
    }

    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v7);

  if ((v9 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_24:
}

- (id)_accountSiblingsForHandle:(id)handle
{
  v28 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  guid = [handleCopy guid];
  if (guid)
  {
    v21 = guid;
    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v22 addObject:handleCopy];
    countryCode = [handleCopy countryCode];
    originalID = [handleCopy originalID];
    account = [handleCopy account];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = +[IMAccountController sharedInstance];
    service = [account service];
    v10 = [v8 accountsForService:service];

    v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v24;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if (v15 != account)
          {
            v16 = handleCopy;
            v17 = [handleCopy ID];
            v18 = [v15 _imHandleWithID:v17 alreadyCanonical:1 originalID:originalID countryCode:countryCode];

            if (v18 && ([v22 containsObject:v18] & 1) == 0)
            {
              [v22 addObject:v18];
            }

            handleCopy = v16;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v12);
    }

    allObjects = [v22 allObjects];

    guid = v21;
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)_existingAccountSiblingsForHandle:(id)handle
{
  v24 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  guid = [handleCopy guid];
  if (guid)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v5 addObject:handleCopy];
    account = [handleCopy account];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = +[IMAccountController sharedInstance];
    service = [account service];
    v9 = [v7 accountsForService:service];

    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if (v14 != account)
          {
            v15 = [handleCopy ID];
            v16 = [v14 existingIMHandleWithID:v15 alreadyCanonical:1];

            if (v16)
            {
              [v5 addObject:v16];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    allObjects = [v5 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)_chatSiblingsForHandle:(id)handle
{
  v44 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  guid = [handleCopy guid];
  if ([guid length])
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v31 addObject:handleCopy];
    account = [handleCopy account];
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = handleCopy;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_DEBUG, "Handle %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = account;
        _os_log_impl(&dword_1A823F000, v6, OS_LOG_TYPE_DEBUG, "Handle account %@", buf, 0xCu);
      }
    }

    countryCode = [handleCopy countryCode];
    originalID = [handleCopy originalID];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    service = [handleCopy service];
    obj = [service siblingServices];

    v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v29)
    {
      v28 = *v37;
      do
      {
        v10 = 0;
        do
        {
          if (*v37 != v28)
          {
            v11 = v10;
            objc_enumerationMutation(obj);
            v10 = v11;
          }

          v30 = v10;
          v12 = *(*(&v36 + 1) + 8 * v10);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v13 = +[IMAccountController sharedInstance];
          v14 = [v13 accountsForService:v12];

          v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v15)
          {
            v16 = *v33;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v33 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v32 + 1) + 8 * i);
                if (v18 != account)
                {
                  v19 = [handleCopy ID];
                  v20 = [v18 _imHandleWithID:v19 alreadyCanonical:1 originalID:originalID countryCode:countryCode];

                  if (v20)
                  {
                    v21 = v20 == handleCopy;
                  }

                  else
                  {
                    v21 = 1;
                  }

                  if (!v21)
                  {
                    [v20 _setOriginalID:originalID countryCode:countryCode updateSiblings:0];
                    [v31 addObject:v20];
                  }
                }
              }

              v15 = [v14 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v15);
          }

          v10 = v30 + 1;
        }

        while (v30 + 1 != v29);
        v29 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v29);
    }

    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v43 = v31;
        _os_log_impl(&dword_1A823F000, v22, OS_LOG_TYPE_DEBUG, "Account sibling: %@", buf, 0xCu);
      }
    }

    allObjects = [v31 allObjects];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v24, OS_LOG_TYPE_DEBUG, "No GUID, bailing...", buf, 2u);
      }
    }

    allObjects = 0;
  }

  return allObjects;
}

- (id)_existingChatSiblingsForHandle:(id)handle
{
  v28 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  guid = [handleCopy guid];

  if (guid)
  {
    v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v22 addObject:handleCopy];
    account = [handleCopy account];
    service = [account service];
    countryCode = [handleCopy countryCode];
    originalID = [handleCopy originalID];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = +[IMAccountController sharedInstance];
    v9 = [v8 accountsForService:0];

    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          if (v14 != account)
          {
            if (([*(*(&v23 + 1) + 8 * i) hasCapability:1024] & 1) != 0 || (objc_msgSend(v14, "hasCapability:", 8) & 1) != 0 || (objc_msgSend(v14, "service"), v15 = objc_claimAutoreleasedReturnValue(), v15, v15 == service))
            {
              v16 = [handleCopy ID];
              v17 = [v14 existingIMHandleWithID:v16 alreadyCanonical:1];

              if (v17)
              {
                v18 = v17 == handleCopy;
              }

              else
              {
                v18 = 1;
              }

              if (!v18)
              {
                [v17 _setOriginalID:originalID countryCode:countryCode updateSiblings:0];
                [v22 addObject:v17];
              }
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    allObjects = [v22 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

@end