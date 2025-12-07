@interface IMDCoreSpotlightSearchableItemGenerator
- (BOOL)_shouldSkipMessagePartPrefixingForItemDictionary:(id)dictionary;
- (IMDCoreSpotlightSearchableItemGenerator)initWithScrutinyController:(id)controller delegate:(id)delegate;
- (id)newChatSearchableItemForChatDictionary:(id)dictionary optionalLastMessageDate:(id)date;
- (id)newChatSearchableItemForChatDictionary:(id)dictionary optionalLastMessageDate:(id)date error:(id *)error;
- (id)newSearchableItemsForMessageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary context:(id)context rejectedItems:(id)items populatedChatItems:(id)chatItems;
- (void)_updateFilteringForSearchableItem:(id)item chatDictionary:(id)dictionary;
@end

@implementation IMDCoreSpotlightSearchableItemGenerator

- (IMDCoreSpotlightSearchableItemGenerator)initWithScrutinyController:(id)controller delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = IMDCoreSpotlightSearchableItemGenerator;
  v9 = [(IMDCoreSpotlightSearchableItemGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_scrutinyController, controller);
    objc_storeStrong(&v10->_delegate, delegate);
  }

  return v10;
}

- (id)newChatSearchableItemForChatDictionary:(id)dictionary optionalLastMessageDate:(id)date
{
  v17 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dateCopy = date;
  v14 = 0;
  v9 = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_error_(self, v8, dictionaryCopy, dateCopy, &v14);
  v10 = v14;
  if (v10)
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = dictionaryCopy;
        _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "(1/2) Failed to generate searchable chat item for chat dictionary %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "(1/2) Failed to generate searchable chat item with error %@", buf, 0xCu);
      }
    }
  }

  return v9;
}

- (id)newChatSearchableItemForChatDictionary:(id)dictionary optionalLastMessageDate:(id)date error:(id *)error
{
  v188 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dateCopy = date;
  if (dictionaryCopy)
  {
    IMDPersistenceCheckNotDatabaseThread();
    IMDIndexingAssertClientRequestQueue();
    v9 = _IMDCoreSpotlightChatUIDForChatDictionary(dictionaryCopy);
    v12 = objc_msgSend_objectForKey_(dictionaryCopy, v10, @"guid", v11);
    v15 = v12;
    v171 = v12;
    if (!v9 || !v12)
    {
      if (!error)
      {
        v54 = 0;
LABEL_51:

        goto LABEL_52;
      }

      v55 = MEMORY[0x1E696ABC0];
      v184 = *MEMORY[0x1E696A578];
      v56 = MEMORY[0x1E696AEC0];
      v57 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, @"chatIdentifier", v14);
      v60 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v58, @"groupID", v59);
      v63 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v61, @"style", v62);
      v66 = objc_msgSend_stringWithFormat_(v56, v64, @"Chat dictionary malformed. unique identifier %@ guid %@ chat identifier %@ group ID %@ style %@", v65, v9, v15, v57, v60, v63);
      v185 = v66;
      v68 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v67, &v185, &v184, 1);
      v69 = v55;
      v70 = v68;
      objc_msgSend_errorWithDomain_code_userInfo_(v69, v71, @"com.apple.Messages.IMDCoreSpotlight", 1, v68);
      *error = v54 = 0;
LABEL_50:

      goto LABEL_51;
    }

    v169 = v9;
    v16 = objc_msgSend_objectForKey_(dictionaryCopy, v13, @"lastMessageDate", v14);
    v17 = v16;
    v170 = dateCopy;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = dateCopy;
    }

    v19 = v18;

    v20 = objc_alloc(MEMORY[0x1E6964E90]);
    v23 = objc_msgSend_initWithItemContentType_(v20, v21, *MEMORY[0x1E6963848], v22);
    objc_msgSend_setAccountIdentifier_(v23, v24, v15, v25);
    v172 = v23;
    v168 = v19;
    objc_msgSend_setLastUsedDate_(v23, v26, v19, v27);
    v30 = objc_msgSend_objectForKey_(dictionaryCopy, v28, @"participants", v29);
    v175 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v174 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    v31 = v30;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v180, v187, 16);
    obj = v31;
    if (v33)
    {
      v34 = v33;
      LOBYTE(v35) = 0;
      v36 = *v181;
      v37 = MEMORY[0x1E69A7AF0];
      do
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v181 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v180 + 1) + 8 * i);
          v43 = _IMDCoreSpotlightCNContactForAddress(v39);
          if (!((v43 == 0) | v35 & 1))
          {
            objc_opt_class();
            v35 = objc_opt_isKindOfClass() ^ 1;
          }

          v44 = objc_msgSend_sharedInstance(IMDContactCache, v40, v41, v42);
          v47 = objc_msgSend_fullNameForContact_(v44, v45, v43, v46);

          if (!v47)
          {
            v47 = v39;
          }

          v50 = _IMDCoreSpotlightPerson(v47, v39, v43, *v37);
          if (v50)
          {
            objc_msgSend_addObject_(v175, v48, v50, v49);
            objc_msgSend_addObject_(v174, v51, v39, v52);
          }
        }

        v31 = obj;
        v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v180, v187, 16);
      }

      while (v34);
    }

    else
    {
      LOBYTE(v35) = 0;
    }

    objc_msgSend_setPrimaryRecipients_(v172, v72, v175, v73);
    objc_msgSend_setRecipientAddresses_(v172, v74, v174, v75);
    v77 = objc_msgSend_integerValueForKey_withDefault_(dictionaryCopy, v76, @"isFiltered", 0);
    shouldDisplayGroupNameAndPhotoWith_handles = objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(IMDGroupNameAndPhotoHelper, v78, v77, v174);
    v82 = objc_msgSend_objectForKey_(dictionaryCopy, v80, @"groupName", v81);
    v86 = v82;
    if (v82 && ((objc_msgSend_length(v82, v83, v84, v85) != 0) & shouldDisplayGroupNameAndPhotoWith_handles) == 1)
    {
      objc_msgSend_setSubject_(v172, v87, v86, v88);
      objc_msgSend_setDisplayName_(v172, v89, v86, v90);
    }

    else
    {
      v93 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v176 = 0u;
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v94 = v175;
      v96 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v95, &v176, v186, 16);
      if (v96)
      {
        v100 = v96;
        v101 = *v177;
        do
        {
          for (j = 0; j != v100; ++j)
          {
            if (*v177 != v101)
            {
              objc_enumerationMutation(v94);
            }

            v103 = objc_msgSend_displayName(*(*(&v176 + 1) + 8 * j), v97, v98, v99);
            objc_msgSend_addObject_(v93, v104, v103, v105);
          }

          v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v94, v97, &v176, v186, 16);
        }

        while (v100);
      }

      v108 = objc_msgSend_getDisplayNameFromParticipantNames_(MEMORY[0x1E69A7F80], v106, v93, v107);

      objc_msgSend_setSubject_(v172, v109, v108, v110);
      objc_msgSend_setDisplayName_(v172, v111, v108, v112);

      v86 = v108;
    }

    v113 = objc_msgSend_valueForKey_(dictionaryCopy, v91, @"style", v92);

    if (v113)
    {
      v116 = objc_msgSend_valueForKey_(dictionaryCopy, v114, @"style", v115);
      v120 = objc_msgSend_charValue(v116, v117, v118, v119);

      v123 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v121, @"%c", v122, v120);
      v127 = objc_msgSend_chatStyleCustomKey(MEMORY[0x1E69A7FF8], v124, v125, v126);
      objc_msgSend_setValue_forCustomKey_(v172, v128, v123, v127);

      v131 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v129, v120 == 43, v130);
      objc_msgSend_setIsGroupThread_(v172, v132, v131, v133);
    }

    v134 = objc_msgSend_objectForKey_(dictionaryCopy, v114, @"syndicationType", v115);

    v57 = v168;
    if (v134 && (objc_msgSend_objectForKey_(dictionaryCopy, v135, @"syndicationType", v136), v137 = objc_claimAutoreleasedReturnValue(), v141 = objc_msgSend_integerValue(v137, v138, v139, v140), v137, (v35 & (v141 < 2)) == 1))
    {
      v142 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v135, 1, v136);
      v146 = objc_msgSend_chatAutoDonatingCutomKey(MEMORY[0x1E69A7FF8], v143, v144, v145);
      objc_msgSend_setValue_forCustomKey_(v172, v147, v142, v146);

      v150 = objc_msgSend_objectForKey_(dictionaryCopy, v148, @"syndicationDate", v149);

      v9 = v169;
      dateCopy = v170;
      if (!v150)
      {
LABEL_47:
        v164 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v151, @"chatIdentifier", v152);
        v60 = v172;
        if (v164)
        {
          objc_msgSend_associateConversationEntityWithIdentifier_displayTitle_(v172, v163, v164, v86);
        }

        v165 = objc_alloc(MEMORY[0x1E6964E80]);
        v54 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v165, v166, v9, @"chatDomain", v172);

        v70 = v174;
        v66 = v175;
        v63 = obj;
        goto LABEL_50;
      }

      v156 = objc_msgSend_objectForKey_(dictionaryCopy, v151, @"syndicationDate", v152);
      if (!v156)
      {
LABEL_46:

        goto LABEL_47;
      }

      v157 = objc_msgSend_chatAutoDonatingServerDateCustomKey(MEMORY[0x1E69A7FF8], v153, v154, v155);
      objc_msgSend_setValue_forCustomKey_(v172, v158, v156, v157);
    }

    else
    {
      v156 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v135, 0, v136);
      v157 = objc_msgSend_chatAutoDonatingCutomKey(MEMORY[0x1E69A7FF8], v159, v160, v161);
      objc_msgSend_setValue_forCustomKey_(v172, v162, v156, v157);
      v9 = v169;
      dateCopy = v170;
    }

    goto LABEL_46;
  }

  v54 = 0;
LABEL_52:

  return v54;
}

- (id)newSearchableItemsForMessageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary context:(id)context rejectedItems:(id)items populatedChatItems:(id)chatItems
{
  dictionaryCopy = dictionary;
  chatDictionaryCopy = chatDictionary;
  contextCopy = context;
  itemsCopy = items;
  chatItemsCopy = chatItems;
  if (IMDCoreSpotlightDisabled(chatItemsCopy, v17, v18, v19))
  {
    v20 = 0;
  }

  else
  {
    IMDPersistenceCheckNotDatabaseThread();
    IMDIndexingAssertClientRequestQueue();
    v21 = [_IMDCoreSpotlightSearchableMessageItemGenerator alloc];
    v23 = objc_msgSend_initWithGenerator_messageItemDictionary_chatDictionary_context_rejectedItems_populatedChatItems_(v21, v22, self, dictionaryCopy, chatDictionaryCopy, contextCopy, itemsCopy, chatItemsCopy);
    v27 = objc_msgSend_generate(v23, v24, v25, v26);
    if (objc_msgSend_count(v27, v28, v29, v30))
    {
      if ((objc_msgSend_isReindexing(contextCopy, v31, v32, v33) & 1) == 0 && (sub_1B7BC1A24(contextCopy) & 1) == 0)
      {
        v37 = objc_msgSend_chatGUID(v23, v34, v35, v36);
        v40 = objc_msgSend_containsObject_(chatItemsCopy, v38, v37, v39);

        if ((v40 & 1) == 0)
        {
          v41 = objc_msgSend_date(v23, v34, v35, v36);
          MessageDate = objc_msgSend_newChatSearchableItemForChatDictionary_optionalLastMessageDate_(self, v42, chatDictionaryCopy, v41);

          if (MessageDate)
          {
            v46 = objc_msgSend_arrayByAddingObject_(v27, v44, MessageDate, v45);

            v50 = objc_msgSend_chatGUID(v23, v47, v48, v49);
            objc_msgSend_addObject_(chatItemsCopy, v51, v50, v52);

            v27 = v46;
          }
        }
      }

      if (!IMDSpotlightIndexingUsesPartialIndexersForIndexingContext(contextCopy, v34, v35, v36))
      {
        v56 = objc_msgSend_delegate(self, v53, v54, v55);
        v57 = objc_opt_respondsToSelector();

        if (v57)
        {
          v61 = objc_msgSend_delegate(self, v58, v59, v60);
          objc_msgSend_postProcessItemsPotentiallyNeedingAdditionalMetadata_(v61, v62, v27, v63);
        }
      }

      v27 = v27;
      v20 = v27;
    }

    else
    {
      v20 = MEMORY[0x1E695E0F0];
    }
  }

  return v20;
}

- (BOOL)_shouldSkipMessagePartPrefixingForItemDictionary:(id)dictionary
{
  v4 = objc_msgSend_objectForKey_(dictionary, a2, @"associatedMessageType", v3);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_integerValue(v4, v5, v6, v7) == 2007;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateFilteringForSearchableItem:(id)item chatDictionary:(id)dictionary
{
  itemCopy = item;
  dictionaryCopy = dictionary;
  v10 = objc_msgSend_delegate(self, v7, v8, v9);
  v14 = objc_msgSend_filteringExtensionBundleID(v10, v11, v12, v13);
  isEqualToString = objc_msgSend_isEqualToString_(v14, v15, @"com.apple.smsFilter.extension", v16);

  if (isEqualToString)
  {
    v20 = objc_msgSend_objectForKey_(dictionaryCopy, v18, @"properties", v19);
    v23 = objc_msgSend_objectForKey_(v20, v21, @"SMSSubCategory", v22);
    v27 = objc_msgSend_integerValue(v23, v24, v25, v26);

    if (v27 == 4)
    {
      v31 = objc_msgSend_attributeSet(itemCopy, v28, v29, v30);
      objc_msgSend_setPotentialEventMessage_(v31, v32, MEMORY[0x1E695E118], v33);
    }
  }
}

@end