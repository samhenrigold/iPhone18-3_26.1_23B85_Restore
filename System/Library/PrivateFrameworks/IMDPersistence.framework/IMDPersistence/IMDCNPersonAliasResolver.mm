@interface IMDCNPersonAliasResolver
+ (IMDCNPersonAliasResolver)sharedResolver;
- (BOOL)isCNContactFavorited:(id)favorited;
- (BOOL)isFavoritedContact:(id)contact;
- (CNContactStore)acceptedContactStore;
- (CNContactStore)contactStore;
- (IMDCNPersonAliasResolver)init;
- (id)_batchFetchContactRecordIDForAliases:(id)aliases;
- (id)_fetchAliasToCNIDMapForAliases:(id)aliases;
- (id)_fetchContactIdentifierForAlias:(id)alias;
- (id)_predicateForAlias:(id)alias;
- (id)_predicateForPhoneNumber:(id)number;
- (id)_preferCuratedContactFromFetchResults:(id)results;
- (id)_updateAcceptedContactsInAliasToCNIDMap:(id)map;
- (id)_updateAliasToCNIDMap:(id)map withHistoryToken:(id)token;
- (void)CNRecordIDForAliases:(id)aliases completionHandler:(id)handler;
@end

@implementation IMDCNPersonAliasResolver

- (IMDCNPersonAliasResolver)init
{
  if (IMDIsRunningInDatabaseServerProcess())
  {
    v7.receiver = self;
    v7.super_class = IMDCNPersonAliasResolver;
    v3 = [(IMDCNPersonAliasResolver *)&v7 init];
    if (v3)
    {
      sub_1B7C0BDD8();
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Error! being called in a process that is not in IMDPersistenceAgent!", buf, 2u);
      }
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (IMDCNPersonAliasResolver)sharedResolver
{
  if (qword_1EBA53A38 != -1)
  {
    sub_1B7CFDAEC();
  }

  v3 = qword_1EBA53A30;

  return v3;
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    if ((IMIsRunningInUnitTesting() & 1) == 0)
    {
      sub_1B7C0BDD8();
      v4 = objc_alloc_init(MEMORY[0x1E695CE28]);
      objc_msgSend_setUseInProcessMapperExclusively_(v4, v5, 1, v6);
      v10 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v7, v8, v9);
      isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v10, v11, v12, v13);

      if (isIntroductionsEnabled)
      {
        objc_msgSend_setIncludeAcceptedIntroductions_(v4, v15, 1, v16);
      }

      v17 = objc_alloc(MEMORY[0x1B8CAFAC0](@"CNContactStore", @"Contacts"));
      v20 = objc_msgSend_initWithConfiguration_(v17, v18, v4, v19);
      v21 = self->_contactStore;
      self->_contactStore = v20;

      v25 = objc_msgSend_data(MEMORY[0x1E695DEF0], v22, v23, v24);
      currentHistoryToken = self->_currentHistoryToken;
      self->_currentHistoryToken = v25;

      contactsEventhandler = self->_contactsEventhandler;
      self->_contactsEventhandler = 0;
    }

    contactStore = self->_contactStore;
    if (!contactStore)
    {
      v28 = IMLogHandleForCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFDB00();
      }

      contactStore = self->_contactStore;
    }
  }

  return contactStore;
}

- (CNContactStore)acceptedContactStore
{
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2, v3);
  isIntroductionsEnabled = objc_msgSend_isIntroductionsEnabled(v5, v6, v7, v8);

  if (isIntroductionsEnabled && !self->_acceptedContactStore)
  {
    if ((IMIsRunningInUnitTesting() & 1) == 0)
    {
      sub_1B7C0BDD8();
      v10 = objc_alloc_init(MEMORY[0x1E695CE28]);
      objc_msgSend_setUseInProcessMapperExclusively_(v10, v11, 1, v12);
      objc_msgSend_setIncludeLocalContacts_(v10, v13, 0, v14);
      objc_msgSend_setIncludeAcceptedIntroductions_(v10, v15, 1, v16);
      v17 = objc_alloc(MEMORY[0x1B8CAFAC0](@"CNContactStore", @"Contacts"));
      v20 = objc_msgSend_initWithConfiguration_(v17, v18, v10, v19);
      acceptedContactStore = self->_acceptedContactStore;
      self->_acceptedContactStore = v20;
    }

    if (!self->_acceptedContactStore)
    {
      v22 = IMLogHandleForCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFDB40();
      }
    }
  }

  v23 = self->_acceptedContactStore;

  return v23;
}

- (id)_predicateForPhoneNumber:(id)number
{
  v4 = qword_1EDBE5CC0;
  v5 = objc_msgSend_phoneNumberWithStringValue_(qword_1EDBE5C98, a2, number, v3);
  v8 = objc_msgSend_predicateForContactsMatchingPhoneNumber_(v4, v6, v5, v7);

  return v8;
}

- (id)_predicateForAlias:(id)alias
{
  aliasCopy = alias;
  if (objc_msgSend__appearsToBeEmail(aliasCopy, v5, v6, v7))
  {
    objc_msgSend__predicateForEmailAddress_(self, v8, aliasCopy, v9);
  }

  else
  {
    objc_msgSend__predicateForPhoneNumber_(self, v8, aliasCopy, v9);
  }
  v10 = ;

  return v10;
}

- (id)_fetchContactIdentifierForAlias:(id)alias
{
  v52 = *MEMORY[0x1E69E9840];
  aliasCopy = alias;
  if (objc_msgSend_length(aliasCopy, v5, v6, v7))
  {
    v10 = objc_msgSend__predicateForAlias_(self, v8, aliasCopy, v9);
    v11 = IMAdditionalContactsLoggingEnabled();
    if (v10)
    {
      if (v11 && IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v49 = aliasCopy;
          v50 = 2112;
          v51 = v10;
          _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Requesting a CNContact from Contact Store for Alias %@ and Predicate %@", buf, 0x16u);
        }
      }

      v16 = objc_msgSend_contactStore(self, v12, v13, v14);
      v47[0] = qword_1EDBE5C68;
      v47[1] = qword_1EDBE5C58;
      v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v17, v47, 2);
      v46 = 0;
      v20 = objc_msgSend_unifiedContactsMatchingPredicate_keysToFetch_error_(v16, v19, v10, v18, &v46);
      v21 = v46;

      if (v21)
      {
        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v29 = objc_msgSend_description(v21, v26, v27, v28);
            *buf = 138412546;
            v49 = aliasCopy;
            v50 = 2112;
            v51 = v29;
            _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Error getting contact from Contact Store for alias %@ error %@", buf, 0x16u);
          }
        }

        v20 = 0;
      }

      if (objc_msgSend_count(v20, v22, v23, v24))
      {
        v32 = objc_msgSend__preferCuratedContactFromFetchResults_(self, v30, v20, v31);
        if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
        {
          v36 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            v40 = objc_msgSend_identifier(v32, v37, v38, v39);
            *buf = 138412546;
            v49 = v40;
            v50 = 2112;
            v51 = aliasCopy;
            _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: CNContact Identifier %@ for alias %@", buf, 0x16u);
          }
        }

        v41 = objc_msgSend_identifier(v32, v33, v34, v35);
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v44 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v49 = aliasCopy;
            _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: No contact for alias %@", buf, 0xCu);
          }
        }

        v41 = 0;
      }
    }

    else
    {
      if (v11 && IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v49 = aliasCopy;
          _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Could not get predicate for alias %@", buf, 0xCu);
        }
      }

      v41 = 0;
    }
  }

  else
  {
    if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Passed in nil email _fetchCNContactForEmail", buf, 2u);
      }
    }

    v41 = 0;
  }

  return v41;
}

- (id)_preferCuratedContactFromFetchResults:(id)results
{
  v28 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  if (objc_msgSend_count(resultsCopy, v4, v5, v6) == 1)
  {
    v10 = objc_msgSend_firstObject(resultsCopy, v7, v8, v9);
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = resultsCopy;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v23, v27, 16);
    if (v13)
    {
      v14 = v13;
      v10 = 0;
      v15 = *v24;
LABEL_5:
      v16 = 0;
      v17 = v10;
      while (1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v10 = *(*(&v23 + 1) + 8 * v16);

        if (!objc_msgSend_isCoreRecentsAccepted(v10, v18, v19, v20, v23))
        {
          break;
        }

        ++v16;
        v17 = v10;
        if (v14 == v16)
        {
          v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v21, &v23, v27, 16);
          if (v14)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_batchFetchContactRecordIDForAliases:(id)aliases
{
  v100[2] = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  if (objc_msgSend_count(aliasesCopy, v3, v4, v5))
  {
    v6 = [qword_1EDBE5CB8 alloc];
    v100[0] = qword_1EDBE5C68;
    v100[1] = qword_1EDBE5C58;
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v100, 2);
    v79 = objc_msgSend_initWithKeysToFetch_(v6, v9, v8, v10);

    v75 = objc_msgSend_predicateForContactsMatchingHandleStrings_(qword_1EDBE5CC0, v11, aliasesCopy, v12);
    objc_msgSend_setPredicate_(v79, v13, v75, v14);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = objc_msgSend_count(aliasesCopy, v16, v17, v18);
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Dispatching a contacts batch query for %lu aliases.", &buf, 0xCu);
      }
    }

    v82 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = objc_alloc_init(MEMORY[0x1E69A6170]);
    objc_msgSend_startTimingForKey_(v19, v20, @"batchFetchForAliases", v21);
    v76 = v19;
    v25 = objc_msgSend_contactStore(self, v22, v23, v24);
    v91 = 0;
    v78 = objc_msgSend_executeFetchRequest_error_(v25, v26, v79, &v91);
    v74 = v91;

    v77 = objc_msgSend_value(v78, v27, v28, v29);
    objc_msgSend_stopTimingForKey_(v76, v30, @"batchFetchForAliases", v31);
    if (IMOSLoggingEnabled())
    {
      v35 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        objc_msgSend_totalTimeForKey_(v76, v36, @"batchFetchForAliases", v37);
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v38;
        _os_log_impl(&dword_1B7AD5000, v35, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Contacts batch fetch from Contact Store completed. Took %f seconds", &buf, 0xCu);
      }
    }

    if (v77)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v96 = 0x3032000000;
      v97 = sub_1B7AE1B60;
      v98 = sub_1B7AE25C4;
      v99 = objc_msgSend_currentHistoryToken(v78, v32, v33, v34);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1B7C0D23C;
      block[3] = &unk_1E7CBC428;
      v39 = v77;
      v88 = v39;
      v40 = aliasesCopy;
      v89 = v40;
      p_buf = &buf;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v41 = v40;
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v83, v94, 16);
      if (v45)
      {
        v46 = *v84;
        do
        {
          for (i = 0; i != v45; ++i)
          {
            if (*v84 != v46)
            {
              objc_enumerationMutation(v41);
            }

            v48 = *(*(&v83 + 1) + 8 * i);
            v49 = objc_msgSend_objectForKey_(v39, v43, v48, v44);
            if (objc_msgSend_count(v49, v50, v51, v52))
            {
              v55 = objc_msgSend__preferCuratedContactFromFetchResults_(self, v53, v49, v54);
              v59 = objc_msgSend_sharedInstance(IMDContactCache, v56, v57, v58);
              objc_msgSend_cacheContact_forKey_(v59, v60, v55, v48);

              v64 = objc_msgSend_identifier(v55, v61, v62, v63);
              objc_msgSend_setObject_forKey_(v82, v65, v64, v48);
            }

            else
            {
              if (IMOSLoggingEnabled())
              {
                v67 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
                {
                  *v92 = 138412290;
                  v93 = v48;
                  _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: No contact for alias %@", v92, 0xCu);
                }
              }

              objc_msgSend_setObject_forKey_(v82, v66, @"__kIMDCNPersonNotFound", v48);
            }
          }

          v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v83, v94, 16);
        }

        while (v45);
      }

      objc_msgSend_setCurrentHistoryToken_(self, v68, *(*(&buf + 1) + 40), v69);
      _Block_object_dispose(&buf, 8);
    }

    else if (IMOSLoggingEnabled())
    {
      v72 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v74;
        _os_log_impl(&dword_1B7AD5000, v72, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: No results obtained from the Contacts batch Fetchrequest. Error: %@", &buf, 0xCu);
      }
    }

    v71 = v82;
  }

  else
  {
    if (IMAdditionalContactsLoggingEnabled() && IMOSLoggingEnabled())
    {
      v70 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B7AD5000, v70, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Passed in empty set of aliases", &buf, 2u);
      }
    }

    v71 = 0;
  }

  return v71;
}

- (id)_fetchAliasToCNIDMapForAliases:(id)aliases
{
  v23 = *MEMORY[0x1E69E9840];
  aliasesCopy = aliases;
  v5 = objc_alloc_init(MEMORY[0x1E69A6170]);
  objc_msgSend_startTimingForKey_(v5, v6, @"_fetchAliasToCNIDMapForAliases", v7);
  v10 = objc_msgSend__batchFetchContactRecordIDForAliases_(self, v8, aliasesCopy, v9);
  if (IMAdditionalContactsLoggingEnabled())
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_1B7AD5000, v15, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: _fetchAliasToCNIDMapForAliases returning aliasIDMap", &v21, 2u);
      }
    }

    objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v13, v10, v14);
  }

  objc_msgSend_stopTimingForKey_(v5, v11, @"_fetchAliasToCNIDMapForAliases", v12);
  if (IMOSLoggingEnabled())
  {
    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_totalTimeForKey_(v5, v17, @"_fetchAliasToCNIDMapForAliases", v18);
      v21 = 134217984;
      v22 = v19;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Generating aliasToIDMap completed. Took %f seconds", &v21, 0xCu);
    }
  }

  return v10;
}

- (id)_updateAliasToCNIDMap:(id)map withHistoryToken:(id)token
{
  v98[2] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  tokenCopy = token;
  v7 = objc_alloc_init(qword_1EDBE5CC8);
  v87 = tokenCopy;
  objc_msgSend_setStartingToken_(v7, v8, tokenCopy, v9);
  v98[0] = qword_1EDBE5C68;
  v98[1] = qword_1EDBE5C58;
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v98, 2);
  objc_msgSend_setAdditionalContactKeyDescriptors_(v7, v12, v11, v13);

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v14, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Updating aliasToCNIDMap using Contact Change History events", buf, 2u);
    }
  }

  if (IMAdditionalContactsLoggingEnabled())
  {
    objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v15, mapCopy, v17);
  }

  v18 = objc_msgSend_contactStore(self, v15, v16, v17);
  v94 = 0;
  v20 = objc_msgSend_executeFetchRequest_error_(v18, v19, v7, &v94);
  v88 = v94;

  v21 = IMOSLoggingEnabled();
  if (v20)
  {
    if (v21)
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v26 = MEMORY[0x1E696AD98];
        v27 = objc_msgSend_value(v20, v23, v24, v25);
        v31 = objc_msgSend_count(v27, v28, v29, v30);
        v34 = objc_msgSend_numberWithUnsignedInteger_(v26, v32, v31, v33);
        *buf = 138412290;
        v97 = v34;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Updating aliasToCNIDMap using %@ Contact Change History events", buf, 0xCu);
      }
    }

    if ((IMIsRunningInUnitTesting() & 1) == 0)
    {
      v38 = objc_alloc(MEMORY[0x1E69A8000]);
      v42 = objc_msgSend_mutableCopy(mapCopy, v39, v40, v41);
      v45 = objc_msgSend_initWithAliasToCNIDMap_(v38, v43, v42, v44);
      contactsEventhandler = self->_contactsEventhandler;
      self->_contactsEventhandler = v45;
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v47 = objc_msgSend_value(v20, v35, v36, v37);
    v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v48, &v90, v95, 16);
    if (v49)
    {
      v50 = *v91;
      while (2)
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v91 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = *(*(&v90 + 1) + 8 * i);
          v53 = objc_autoreleasePoolPush();
          objc_msgSend_acceptEventVisitor_(v52, v54, self->_contactsEventhandler, v55);
          if (objc_msgSend_receivedDropEverythingEvent(self->_contactsEventhandler, v56, v57, v58))
          {
            if (IMOSLoggingEnabled())
            {
              v60 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1B7AD5000, v60, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Skipping Contact change history events after the Drop Everything Event", buf, 2u);
              }
            }

            objc_autoreleasePoolPop(v53);
            goto LABEL_28;
          }

          objc_autoreleasePoolPop(v53);
        }

        v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v47, v59, &v90, v95, 16);
        if (v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:

    v64 = objc_msgSend_currentHistoryToken(v20, v61, v62, v63);
    objc_msgSend_setCurrentHistoryToken_(self, v65, v64, v66);

    v70 = objc_msgSend_getAliasToCNIDMap(self->_contactsEventhandler, v67, v68, v69);
    if (v70)
    {
      if (IMAdditionalContactsLoggingEnabled())
      {
        if (IMOSLoggingEnabled())
        {
          v73 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v73, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: _updateAliasToCNIDMap returning aliasIDMap", buf, 2u);
          }
        }

        objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v71, v70, v72);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v82 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v82, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Refetching CNID for ALL Aliases.", buf, 2u);
        }
      }

      v83 = objc_msgSend_allKeys(mapCopy, v79, v80, v81);
      v70 = objc_msgSend__fetchAliasToCNIDMapForAliases_(self, v84, v83, v85);
    }
  }

  else
  {
    if (v21)
    {
      v74 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
      {
        v78 = objc_msgSend_description(v88, v75, v76, v77);
        *buf = 138412290;
        v97 = v78;
        _os_log_impl(&dword_1B7AD5000, v74, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Could not fetch Change History from CNContactStore error:%@", buf, 0xCu);
      }
    }

    v70 = mapCopy;
  }

  return v70;
}

- (id)_updateAcceptedContactsInAliasToCNIDMap:(id)map
{
  v89[2] = *MEMORY[0x1E69E9840];
  mapCopy = map;
  v8 = objc_msgSend_allKeys(mapCopy, v5, v6, v7);
  if (objc_msgSend_count(v8, v9, v10, v11))
  {
    v12 = [qword_1EDBE5CB8 alloc];
    v89[0] = qword_1EDBE5C68;
    v89[1] = qword_1EDBE5C58;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, v89, 2);
    v85 = objc_msgSend_initWithKeysToFetch_(v12, v15, v14, v16);

    v84 = objc_msgSend_predicateForContactsMatchingHandleStrings_(qword_1EDBE5CC0, v17, v8, v18);
    objc_msgSend_setPredicate_(v85, v19, v84, v20);
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Updating aliasToCNIDMap with latest accepted contacts", buf, 2u);
      }
    }

    if (IMAdditionalContactsLoggingEnabled())
    {
      objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v22, mapCopy, v24);
    }

    v25 = objc_msgSend_acceptedContactStore(self, v22, v23, v24);
    v86 = 0;
    v27 = objc_msgSend_executeFetchRequest_error_(v25, v26, v85, &v86);
    v83 = v86;

    if (v27)
    {
      v31 = objc_msgSend_value(v27, v28, v29, v30);
      if ((IMIsRunningInUnitTesting() & 1) == 0)
      {
        v35 = objc_alloc(MEMORY[0x1E69A8000]);
        v39 = objc_msgSend_mutableCopy(mapCopy, v36, v37, v38);
        v42 = objc_msgSend_initWithAliasToCNIDMap_(v35, v40, v39, v41);
        contactsEventhandler = self->_contactsEventhandler;
        self->_contactsEventhandler = v42;
      }

      if (!objc_msgSend_count(v31, v32, v33, v34, v83) && IMOSLoggingEnabled())
      {
        v46 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver _updateAliasToCNIDMapForAcceptedContactStoreChange: received 0 accepted contacts, which will result in any cached accepted contacts being removed. This is expected if the accepted list is actually empty.", buf, 2u);
        }
      }

      v47 = objc_msgSend_updateWithCurrentAcceptedContactsMap_(self->_contactsEventhandler, v44, v31, v45);
      v51 = objc_msgSend_sharedInstance(IMDContactCache, v48, v49, v50);
      v55 = objc_msgSend_updatedMap(v47, v52, v53, v54);
      v59 = objc_msgSend_deletedCNIDs(v47, v56, v57, v58);
      objc_msgSend_cacheAndReindexAcceptedContactUpdates_deletions_(v51, v60, v55, v59);

      v64 = objc_msgSend_getAliasToCNIDMap(self->_contactsEventhandler, v61, v62, v63);
      if (v64)
      {
        if (IMAdditionalContactsLoggingEnabled())
        {
          if (IMOSLoggingEnabled())
          {
            v67 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v67, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: _updateAliasToCNIDMapForAcceptedContactStoreChange returning aliasIDMap", buf, 2u);
            }
          }

          objc_msgSend_logDictionary_(MEMORY[0x1E69A7FD0], v65, v64, v66);
        }
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v78 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v78, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver _updateAliasToCNIDMapForAcceptedContactStoreChange: Refetching CNID for ALL Aliases.", buf, 2u);
          }
        }

        v79 = objc_msgSend_allKeys(mapCopy, v75, v76, v77);
        v64 = objc_msgSend__fetchAliasToCNIDMapForAliases_(self, v80, v79, v81);
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v70 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
        {
          v74 = objc_msgSend_description(v83, v71, v72, v73);
          *buf = 138412290;
          v88 = v74;
          _os_log_impl(&dword_1B7AD5000, v70, OS_LOG_TYPE_INFO, "IMDCNPersonAliasResolver: Could not fetch accepted contacts with error:%@", buf, 0xCu);
        }
      }

      v64 = mapCopy;
    }
  }

  else
  {
    v68 = IMLogHandleForCategory();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFDB80();
    }

    v69 = MEMORY[0x1E695E0F8];
    if (mapCopy)
    {
      v69 = mapCopy;
    }

    v64 = v69;
  }

  return v64;
}

- (void)CNRecordIDForAliases:(id)aliases completionHandler:(id)handler
{
  handlerCopy = handler;
  v8 = objc_msgSend__fetchAliasToCNIDMapForAliases_(self, v6, aliases, v7);
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v8, 0);
  }
}

- (BOOL)isFavoritedContact:(id)contact
{
  if (!contact)
  {
    return 0;
  }

  contactCopy = contact;
  v8 = objc_msgSend_contactStore(self, v5, v6, v7);
  v10 = objc_msgSend_unifiedContactWithIdentifier_keysToFetch_error_(v8, v9, contactCopy, MEMORY[0x1E695E0F0], 0);

  LOBYTE(self) = objc_msgSend_isCNContactFavorited_(self, v11, v10, v12);
  return self;
}

- (BOOL)isCNContactFavorited:(id)favorited
{
  if (!favorited)
  {
    return 0;
  }

  v4 = qword_1EDBE5CA0;
  favoritedCopy = favorited;
  v6 = [v4 alloc];
  v10 = objc_msgSend_contactStore(self, v7, v8, v9);
  v13 = objc_msgSend_initWithContactStore_(v6, v11, v10, v12);

  v16 = objc_msgSend_entriesForContact_(v13, v14, favoritedCopy, v15);

  v20 = objc_msgSend_count(v16, v17, v18, v19) != 0;
  return v20;
}

@end