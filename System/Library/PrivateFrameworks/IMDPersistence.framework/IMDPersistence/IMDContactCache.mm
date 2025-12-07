@interface IMDContactCache
+ (BOOL)vCardCoordinateForMapURL:(id)l outLatitude:(float *)latitude outLongitude:(float *)longitude;
+ (id)contactsForVCardAtPath:(id)path;
+ (id)sharedInstance;
+ (id)vCardMapURLForContact:(id)contact;
+ (id)vCardNameForContact:(id)contact;
+ (void)updateAttributes:(id)attributes withAddressFromContact:(id)contact;
- (IMDContactCache)init;
- (id)_handlesMatchingContactIdentifier:(id)identifier;
- (id)cachedContactForKey:(id)key;
- (id)fullNameForContact:(id)contact;
- (void)_contactStoreDidChange;
- (void)cacheAndReindexAcceptedContactUpdates:(id)updates deletions:(id)deletions;
- (void)cacheContact:(id)contact forKey:(id)key;
- (void)cacheContactsFromFetchResults:(id)results forAliases:(id)aliases;
- (void)contactStoreDidChange:(id)change;
- (void)removeCachedContactForKey:(id)key;
- (void)removeCachedContactsForKeys:(id)keys;
- (void)resetCache;
- (void)updateCacheForAliases:(id)aliases;
@end

@implementation IMDContactCache

+ (id)sharedInstance
{
  if (qword_1EDBE62C0 != -1)
  {
    sub_1B7CEB3B0();
  }

  v3 = qword_1EDBE7920;

  return v3;
}

- (IMDContactCache)init
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v21.receiver = self;
    v21.super_class = IMDContactCache;
    v3 = [(IMDContactCache *)&v21 init];
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      cache = v3->_cache;
      v3->_cache = v4;

      v6 = objc_alloc_init(MEMORY[0x1E695DEE0]);
      fullNameCache = v3->_fullNameCache;
      v3->_fullNameCache = v6;

      v11 = objc_msgSend_data(MEMORY[0x1E695DEF0], v8, v9, v10);
      currentHistoryToken = v3->_currentHistoryToken;
      v3->_currentHistoryToken = v11;

      v16 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v13, v14, v15);
      objc_msgSend_addObserver_selector_name_object_(v16, v17, v3, sel_contactStoreDidChange_, *MEMORY[0x1E695C3D8], 0);
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    v19 = IMLogHandleForCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CEB3C4(v19);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)resetCache
{
  v7 = objc_msgSend_cache(self, a2, v2, v3);
  objc_msgSend_removeAllObjects(v7, v4, v5, v6);
}

- (void)removeCachedContactForKey:(id)key
{
  v16 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = IMOSLoggingEnabled();
  if (keyCopy)
  {
    if (v5)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v14 = 138412290;
        v15 = keyCopy;
        _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "Removing cached contact for key %@", &v14, 0xCu);
      }
    }

    v10 = objc_msgSend_cache(self, v6, v7, v8);
    objc_msgSend_removeObjectForKey_(v10, v11, keyCopy, v12);
  }

  else if (v5)
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = 0;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "IMDContactCache - asked to remove cached contact for nil key %@", &v14, 0xCu);
    }
  }
}

- (void)removeCachedContactsForKeys:(id)keys
{
  v17 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(keysCopy, v5, &v12, v16, 16);
  if (v6)
  {
    v9 = v6;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(keysCopy);
        }

        objc_msgSend_removeCachedContactForKey_(self, v7, *(*(&v12 + 1) + 8 * v11++), v8);
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(keysCopy, v7, &v12, v16, 16);
    }

    while (v9);
  }
}

- (void)cacheContactsFromFetchResults:(id)results forAliases:(id)aliases
{
  v52 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  aliasesCopy = aliases;
  v11 = objc_msgSend_count(aliasesCopy, v8, v9, v10);
  if ((!resultsCopy || !v11) && IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v49 = aliasesCopy;
      v50 = 2112;
      v51 = resultsCopy;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "IMDContactCache - not caching fetchResults as aliases: %@, fetchResults: %@", buf, 0x16u);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Caching contacts for Spotlight Contacts cache", buf, 2u);
    }
  }

  v17 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v13, v14, v15);
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = aliasesCopy;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v43, v47, 16);
  if (v22)
  {
    v23 = *v44;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v43 + 1) + 8 * i);
        v26 = objc_msgSend_objectForKey_(resultsCopy, v20, v25, v21);
        if (objc_msgSend_count(v26, v27, v28, v29))
        {
          v33 = objc_msgSend_firstObject(v26, v30, v31, v32);
          objc_msgSend_setObject_forKey_(v17, v34, v33, v25);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v43, v47, 16);
    }

    while (v22);
  }

  if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v35, v36, v37))
  {
    objc_msgSend_updateCacheForAliases_(self, v38, v17, v39);
  }

  else
  {
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = sub_1B7B04758;
    v41[3] = &unk_1E7CB6770;
    v41[4] = self;
    v42 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v41);
  }

  if (IMOSLoggingEnabled())
  {
    v40 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "DONE Caching contacts for Spotlight", buf, 2u);
    }
  }
}

- (void)cacheAndReindexAcceptedContactUpdates:(id)updates deletions:(id)deletions
{
  v35 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  deletionsCopy = deletions;
  if (objc_msgSend_count(updatesCopy, v8, v9, v10) || objc_msgSend_count(deletionsCopy, v11, v12, v13))
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        v32 = objc_msgSend_count(updatesCopy, v15, v16, v17);
        v33 = 2048;
        v34 = objc_msgSend_count(deletionsCopy, v18, v19, v20);
        _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "cacheAndReindexAcceptedContactUpdates: %lu updated, %lu deleted", buf, 0x16u);
      }
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1B7B04994;
    aBlock[3] = &unk_1E7CB6798;
    v28 = updatesCopy;
    selfCopy = self;
    v30 = deletionsCopy;
    v21 = _Block_copy(aBlock);
    if (objc_msgSend_isMainThread(MEMORY[0x1E696AF00], v22, v23, v24))
    {
      v21[2](v21);
    }

    else
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_1B7B04B40;
      v25[3] = &unk_1E7CB67C0;
      v26 = v21;
      dispatch_async(MEMORY[0x1E69E96A0], v25);
    }
  }
}

- (void)updateCacheForAliases:(id)aliases
{
  v16 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  if (!aliasesCopy && IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "IMDContactCache - asked to udpate cache with %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = objc_msgSend_count(aliasesCopy, v9, v10, v11);
      *buf = 134217984;
      v15 = v12;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Udpating cache with %lu aliases", buf, 0xCu);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1B7B04D08;
  v13[3] = &unk_1E7CB67E8;
  v13[4] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(aliasesCopy, v6, v13, v7);
}

- (void)cacheContact:(id)contact forKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  keyCopy = key;
  if (!keyCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_12;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = contactCopy;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "IMDContactCache - asked to cache contact for nil key %@", &v14, 0xCu);
    }

LABEL_11:

    goto LABEL_12;
  }

  if (!contactCopy)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_12;
    }

    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = 138412546;
      v15 = 0;
      v16 = 2112;
      v17 = keyCopy;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Not caching nil contact:%@ for key:%@", &v14, 0x16u);
    }

    goto LABEL_11;
  }

  v11 = objc_msgSend_cache(self, v7, v8, v9);
  objc_msgSend_setObject_forKey_(v11, v12, contactCopy, keyCopy);

LABEL_12:
}

- (id)cachedContactForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v8 = objc_msgSend_cache(self, v4, v5, v6);
    v11 = objc_msgSend_objectForKey_(v8, v9, keyCopy, v10);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "IMDContactCache - Cannot get cached contact for nil key", v14, 2u);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (id)fullNameForContact:(id)contact
{
  contactCopy = contact;
  if (contactCopy)
  {
    v8 = objc_msgSend_fullNameCache(self, v4, v5, v6);
    v12 = objc_msgSend_identifier(contactCopy, v9, v10, v11);
    v15 = objc_msgSend_objectForKey_(v8, v13, v12, v14);

    v19 = objc_msgSend_null(MEMORY[0x1E695DFB0], v16, v17, v18);

    if (v15 == v19)
    {
      v20 = 0;
    }

    else if (v15)
    {
      v20 = v15;
    }

    else
    {
      v20 = _IMDCoreSpotlightFullNameForContact(contactCopy, 0);
      v27 = objc_msgSend_fullNameCache(self, v21, v22, v23);
      v28 = v20;
      if (!v20)
      {
        v28 = objc_msgSend_null(MEMORY[0x1E695DFB0], v24, v25, v26);
      }

      v29 = objc_msgSend_identifier(contactCopy, v24, v25, v26);
      objc_msgSend_setObject_forKey_(v27, v30, v28, v29);

      if (!v20)
      {
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)_handlesMatchingContactIdentifier:(id)identifier
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9 = objc_msgSend_cache(self, v6, v7, v8);
  v13 = objc_msgSend_mapTableRepresentation(v9, v10, v11, v12);

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = objc_msgSend_keyEnumerator(v13, v14, v15, v16, 0);
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v40, v44, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v41;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v41 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = *(*(&v40 + 1) + 8 * i);
        v26 = objc_msgSend_objectForKey_(v13, v20, v25, v21);
        v30 = objc_msgSend_identifier(v26, v27, v28, v29);
        if (objc_msgSend_isEqualToString_(identifierCopy, v31, v30, v32))
        {
          objc_msgSend_addObject_(v5, v33, v25, v34);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v40, v44, 16);
    }

    while (v22);
  }

  v38 = objc_msgSend_copy(v5, v35, v36, v37);

  return v38;
}

- (void)contactStoreDidChange:(id)change
{
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Contacts store reported a change", v8, 2u);
    }
  }

  objc_msgSend_cancelPreviousPerformRequestsWithTarget_selector_object_(MEMORY[0x1E69E58C0], v5, self, sel__contactStoreDidChange, 0);
  objc_msgSend_performSelector_withObject_afterDelay_(self, v7, sel__contactStoreDidChange, 0, 0.5);
}

- (void)_contactStoreDidChange
{
  v48[2] = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v3, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Contacts store reported a change, updating our contacts cache", buf, 2u);
    }
  }

  v4 = objc_alloc_init(MEMORY[0x1E695CD40]);
  objc_msgSend_setStartingToken_(v4, v5, self->_currentHistoryToken, v6);
  v7 = *MEMORY[0x1E695C330];
  v48[0] = *MEMORY[0x1E695C208];
  v48[1] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v48, 2);
  objc_msgSend_setAdditionalContactKeyDescriptors_(v4, v10, v9, v11);

  v14 = _IMDContactStore(v12, v13);
  v44 = 0;
  v16 = objc_msgSend_executeFetchRequest_error_(v14, v15, v4, &v44);
  v17 = v44;

  if (!v16 && IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v22 = objc_msgSend_description(v17, v19, v20, v21);
      *buf = 138412290;
      v47 = v22;
      _os_log_impl(&dword_1B7AD5000, v18, OS_LOG_TYPE_INFO, "IMDCoreSpotlight: Could not fetch Change History from CNContactStore error:%@", buf, 0xCu);
    }
  }

  v23 = objc_alloc_init(IMDContactChangeHandler);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v27 = objc_msgSend_value(v16, v24, v25, v26, 0);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v40, v45, 16);
  if (v31)
  {
    v32 = *v41;
    do
    {
      v33 = 0;
      do
      {
        if (*v41 != v32)
        {
          objc_enumerationMutation(v27);
        }

        objc_msgSend_acceptEventVisitor_(*(*(&v40 + 1) + 8 * v33++), v29, v23, v30);
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v40, v45, 16);
    }

    while (v31);
  }

  v37 = objc_msgSend_currentHistoryToken(v16, v34, v35, v36);
  objc_msgSend_setCurrentHistoryToken_(self, v38, v37, v39);
}

+ (id)contactsForVCardAtPath:(id)path
{
  v23 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    v12 = 0;
    goto LABEL_16;
  }

  v5 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v3, pathCopy, 0);
  v16 = 0;
  v7 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v6, v5, 8, &v16);
  v8 = v16;
  if (v8)
  {
    v10 = v8;
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v18 = "+[IMDContactCache contactsForVCardAtPath:]";
        v19 = 2112;
        v20 = pathCopy;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "%s Couldn't read data from file %@ ; error %@", buf, 0x20u);
      }
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

  v15 = 0;
  v12 = objc_msgSend_contactsWithData_error_(MEMORY[0x1E695CE30], v9, v7, &v15);
  v10 = v15;
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v18 = "+[IMDContactCache contactsForVCardAtPath:]";
        v19 = 2112;
        v20 = pathCopy;
        v21 = 2112;
        v22 = v10;
        _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "%s Failed to generate vcard summary from file %@ ; error %@", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

LABEL_15:

LABEL_16:

  return v12;
}

+ (id)vCardNameForContact:(id)contact
{
  contactCopy = contact;
  v8 = objc_msgSend_stringFromContact_style_(MEMORY[0x1E695CD80], v4, contactCopy, 0);
  if (!v8)
  {
    v8 = objc_msgSend_organizationName(contactCopy, v5, v6, v7);
  }

  return v8;
}

+ (void)updateAttributes:(id)attributes withAddressFromContact:(id)contact
{
  attributesCopy = attributes;
  v9 = objc_msgSend_postalAddresses(contact, v6, v7, v8);
  v47 = objc_msgSend_firstObject(v9, v10, v11, v12);

  v16 = objc_msgSend_value(v47, v13, v14, v15);
  v20 = objc_msgSend_street(v16, v17, v18, v19);
  objc_msgSend_setThoroughfare_(attributesCopy, v21, v20, v22);

  v26 = objc_msgSend_city(v16, v23, v24, v25);
  objc_msgSend_setCity_(attributesCopy, v27, v26, v28);

  v32 = objc_msgSend_postalCode(v16, v29, v30, v31);
  objc_msgSend_setPostalCode_(attributesCopy, v33, v32, v34);

  v38 = objc_msgSend_state(v16, v35, v36, v37);
  objc_msgSend_setStateOrProvince_(attributesCopy, v39, v38, v40);

  v44 = objc_msgSend_country(v16, v41, v42, v43);
  objc_msgSend_setCountry_(attributesCopy, v45, v44, v46);
}

+ (id)vCardMapURLForContact:(id)contact
{
  v55 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  v6 = objc_msgSend_urlAddresses(contactCopy, v3, v4, v5);
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 136315395;
      v49 = "+[IMDContactCache vCardMapURLForContact:]";
      v50 = 2117;
      v51 = v6;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "%s urls %{sensitive}@", buf, 0x16u);
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v6;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v44, v54, 16);
  if (v12)
  {
    v13 = *v45;
    v14 = *MEMORY[0x1E69A70B0];
    v15 = *MEMORY[0x1E69A70B8];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = objc_msgSend_value(v17, v9, v10, v11);
        v21 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v19, v18, v20);
        v25 = objc_msgSend_host(v21, v22, v23, v24);
        if (IMOSLoggingEnabled())
        {
          v28 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v49 = "+[IMDContactCache vCardMapURLForContact:]";
            v50 = 2112;
            v51 = v25;
            _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "%s url host %@", buf, 0x16u);
          }
        }

        if ((objc_msgSend_isEqualToString_(v25, v26, v14, v27) & 1) != 0 || objc_msgSend_isEqualToString_(v25, v29, v15, v30))
        {
          v31 = v17;

          goto LABEL_21;
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v44, v54, 16);
      v31 = 0;
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v31 = 0;
  }

LABEL_21:

  if (IMOSLoggingEnabled())
  {
    v35 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v39 = objc_msgSend_value(v31, v36, v37, v38);
      *buf = 136315651;
      v49 = "+[IMDContactCache vCardMapURLForContact:]";
      v50 = 2117;
      v51 = v31;
      v52 = 2117;
      v53 = v39;
      _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "%s got mapURL %{sensitive}@ value %{sensitive}@", buf, 0x20u);
    }
  }

  v40 = objc_msgSend_value(v31, v32, v33, v34);

  return v40;
}

+ (BOOL)vCardCoordinateForMapURL:(id)l outLatitude:(float *)latitude outLongitude:(float *)longitude
{
  lCopy = l;
  if (objc_msgSend_length(lCopy, v8, v9, v10))
  {
    v13 = objc_msgSend_coordinatesFromString_(MEMORY[0x1E69A80F8], v11, lCopy, v12);
    v17 = objc_msgSend_count(v13, v14, v15, v16);
    v20 = v17 == 2;
    if (v17 == 2)
    {
      if (latitude)
      {
        v21 = objc_msgSend_objectAtIndex_(v13, v18, 0, v19);
        objc_msgSend_doubleValue(v21, v22, v23, v24);
        *&v25 = v25;
        *latitude = *&v25;
      }

      if (longitude)
      {
        v26 = objc_msgSend_objectAtIndex_(v13, v18, 1, v19);
        objc_msgSend_doubleValue(v26, v27, v28, v29);
        *&v30 = v30;
        *longitude = *&v30;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end