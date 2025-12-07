@interface _IMDCoreSpotlightSearchableMessageItemGenerator
- (BOOL)_populateMetadataAttributesAndCreateAuxItems;
- (BOOL)isDenylisted;
- (BOOL)isMultiPart;
- (BOOL)isOtherPluginMessage;
- (BOOL)isValid;
- (_IMDCoreSpotlightSearchableMessageItemGenerator)initWithGenerator:(id)generator messageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary context:(id)context rejectedItems:(id)items populatedChatItems:(id)chatItems;
- (id)chatDisplayName;
- (id)chatGUID;
- (id)date;
- (id)descriptor;
- (id)generate;
- (id)indexers;
- (id)messageGUID;
- (id)threadOriginatorFormattedGUID;
- (void)_addTimeSensitiveListenerIfNeededForSearchableItem:(id)item;
- (void)_generateHiddenRootItem;
- (void)_generateTextParts;
- (void)_generateVisibleRootItem;
@end

@implementation _IMDCoreSpotlightSearchableMessageItemGenerator

- (void)_generateVisibleRootItem
{
  v5 = objc_msgSend_metadataAttributes(self, a2, v2, v3);
  v9 = objc_msgSend_messageGUID(self, v6, v7, v8);
  v13 = objc_msgSend_descriptor(self, v10, v11, v12);
  v17 = objc_msgSend_messageBody(v13, v14, v15, v16);
  v21 = objc_msgSend_string(v17, v18, v19, v20);
  v25 = objc_msgSend_chatDisplayName(self, v22, v23, v24);
  v29 = objc_msgSend_date(self, v26, v27, v28);
  objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v5, v30, v9, v21, v25, v29);

  v34 = objc_msgSend_metadataAttributes(self, v31, v32, v33);
  v41 = objc_msgSend_threadOriginatorFormattedGUID(self, v35, v36, v37);
  v42 = v41;
  if (!v41)
  {
    v42 = objc_msgSend_messageGUID(self, v38, v39, v40);
  }

  v43 = objc_msgSend_threadIdentifierCustomKey(MEMORY[0x1E69A7FF8], v38, v39, v40);
  objc_msgSend_setValue_forCustomKey_(v34, v44, v42, v43);

  if (!v41)
  {
  }

  v48 = objc_msgSend_metadataAttributes(self, v45, v46, v47);
  v52 = objc_msgSend_partCountKey(MEMORY[0x1E69A7FF8], v49, v50, v51);
  objc_msgSend_setValue_forCustomKey_(v48, v53, &unk_1F2FCA320, v52);

  v57 = objc_msgSend_metadataAttributes(self, v54, v55, v56);
  v61 = objc_msgSend_partIndexKey(MEMORY[0x1E69A7FF8], v58, v59, v60);
  objc_msgSend_setValue_forCustomKey_(v57, v62, &unk_1F2FCA338, v61);

  v63 = objc_alloc(MEMORY[0x1E6964E80]);
  v67 = objc_msgSend_messageGUID(self, v64, v65, v66);
  v71 = objc_msgSend_chatGUID(self, v68, v69, v70);
  v75 = objc_msgSend_metadataAttributes(self, v72, v73, v74);
  v107 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v63, v76, v67, v71, v75);

  v80 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v77, v78, v79);
  objc_msgSend_setExpirationDate_(v107, v81, v80, v82);

  v86 = objc_msgSend_context(self, v83, v84, v85);
  v87 = sub_1B7BC1A24(v86);
  objc_msgSend_setIsUpdate_(v107, v88, v87, v89);

  objc_msgSend__addTimeSensitiveListenerIfNeededForSearchableItem_(self, v90, v107, v91);
  v95 = objc_msgSend_generator(self, v92, v93, v94);
  v99 = objc_msgSend_chatDictionary(self, v96, v97, v98);
  objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(v95, v100, v107, v99);

  v104 = objc_msgSend_generatedItems(self, v101, v102, v103);
  objc_msgSend_addObject_(v104, v105, v107, v106);
}

- (id)generate
{
  if (objc_msgSend__populateMetadataAttributesAndCreateAuxItems(self, a2, v2, v3))
  {
    if (objc_msgSend_isMultiPart(self, v5, v6, v7))
    {
      objc_msgSend__generateTextParts(self, v8, v9, v10);
      objc_msgSend__generateHiddenRootItem(self, v11, v12, v13);
    }

    else
    {
      objc_msgSend__generateVisibleRootItem(self, v8, v9, v10);
    }

    v18 = objc_msgSend_generatedItems(self, v14, v15, v16);
    v22 = objc_msgSend_auxItems(self, v19, v20, v21);
    objc_msgSend_addObjectsFromArray_(v18, v23, v22, v24);

    v28 = objc_msgSend_generatedItems(self, v25, v26, v27);
    v17 = objc_msgSend_copy(v28, v29, v30, v31);
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  return v17;
}

- (_IMDCoreSpotlightSearchableMessageItemGenerator)initWithGenerator:(id)generator messageItemDictionary:(id)dictionary chatDictionary:(id)chatDictionary context:(id)context rejectedItems:(id)items populatedChatItems:(id)chatItems
{
  generatorCopy = generator;
  dictionaryCopy = dictionary;
  chatDictionaryCopy = chatDictionary;
  contextCopy = context;
  itemsCopy = items;
  chatItemsCopy = chatItems;
  v28.receiver = self;
  v28.super_class = _IMDCoreSpotlightSearchableMessageItemGenerator;
  v18 = [(_IMDCoreSpotlightSearchableMessageItemGenerator *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_generator, generator);
    objc_storeStrong(&v19->_itemDictionary, dictionary);
    objc_storeStrong(&v19->_chatDictionary, chatDictionary);
    objc_storeStrong(&v19->_context, context);
    objc_storeStrong(&v19->_rejectedItems, items);
    objc_storeStrong(&v19->_populatedChatItems, chatItems);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    auxItems = v19->_auxItems;
    v19->_auxItems = v20;

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    generatedItems = v19->_generatedItems;
    v19->_generatedItems = v22;
  }

  return v19;
}

- (id)messageGUID
{
  v4 = objc_msgSend_itemDictionary(self, a2, v2, v3);
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"guid", v6);

  return v7;
}

- (id)chatGUID
{
  v4 = objc_msgSend_chatDictionary(self, a2, v2, v3);
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"guid", v6);

  return v7;
}

- (id)indexers
{
  v4 = objc_msgSend_context(self, a2, v2, v3);
  v5 = IMDSpotlightPriorityIndexerClassesForIndexingContext(v4);

  return v5;
}

- (id)chatDisplayName
{
  v5 = objc_msgSend_chatDictionary(self, a2, v2, v3);
  v7 = objc_msgSend_integerValueForKey_withDefault_(v5, v6, @"isFiltered", 0);

  v11 = objc_msgSend_chatDictionary(self, v8, v9, v10);
  v14 = objc_msgSend_objectForKeyedSubscript_(v11, v12, @"participants", v13);
  v15 = v14;
  v16 = MEMORY[0x1E695E0F0];
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  shouldDisplayGroupNameAndPhotoWith_handles = objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(IMDGroupNameAndPhotoHelper, v18, v7, v17);
  v23 = 0;
  if (shouldDisplayGroupNameAndPhotoWith_handles)
  {
    v24 = objc_msgSend_chatDictionary(self, v20, v21, v22);
    v23 = objc_msgSend_objectForKeyedSubscript_(v24, v25, @"groupName", v26);
  }

  return v23;
}

- (BOOL)isDenylisted
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_chatDictionary(self, a2, v2, v3);
  v7 = objc_msgSend_BOOLValueForKey_withDefault_(v5, v6, @"isBlackholed", 0);

  v11 = objc_msgSend_chatDictionary(self, v8, v9, v10);
  v13 = objc_msgSend_integerValueForKey_withDefault_(v11, v12, @"isFiltered", 0);

  v17 = objc_msgSend_generator(self, v14, v15, v16);
  v21 = objc_msgSend_scrutinyController(v17, v18, v19, v20);
  v25 = objc_msgSend_messageGUID(self, v22, v23, v24);
  if ((objc_msgSend_isMessageBlocklisted_(v21, v26, v25, v27) | v7))
  {
  }

  else
  {

    if (v13 != 2)
    {
      return 0;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v28 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v32 = objc_msgSend_messageGUID(self, v29, v30, v31);
      v33 = v32;
      v34 = @"NO";
      if (v7)
      {
        v34 = @"YES";
      }

      v36 = 138412546;
      v37 = v32;
      v38 = 2112;
      v39 = v34;
      _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "IMDCoreSpotlight - Skipping indexing %@, denylisted - isBlackholed: %@", &v36, 0x16u);
    }
  }

  return 1;
}

- (BOOL)isValid
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_chatGUID(self, a2, v2, v3);
  if (objc_msgSend_length(v5, v6, v7, v8))
  {
    v12 = objc_msgSend_messageGUID(self, v9, v10, v11);
    v16 = objc_msgSend_length(v12, v13, v14, v15);

    if (v16)
    {
      LOBYTE(v20) = objc_msgSend_isDenylisted(self, v17, v18, v19) ^ 1;
      return v20;
    }
  }

  else
  {
  }

  v20 = IMOSLoggingEnabled();
  if (v20)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v25 = objc_msgSend_itemDictionary(self, v22, v23, v24);
      v29 = objc_msgSend_count(v25, v26, v27, v28);
      v33 = objc_msgSend_chatDictionary(self, v30, v31, v32);
      v37 = objc_msgSend_count(v33, v34, v35, v36);
      v41 = objc_msgSend_itemDictionary(self, v38, v39, v40);
      v45 = objc_msgSend_chatDictionary(self, v42, v43, v44);
      v47 = 134349826;
      v48 = v29;
      v49 = 2050;
      v50 = v37;
      v51 = 2112;
      v52 = v41;
      v53 = 2112;
      v54 = v45;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Not attempting to index malformed message/chat pair. message dict has %{public}lld entries, chat dict has %{public}lld entries. %@ %@", &v47, 0x2Au);
    }

    LOBYTE(v20) = 0;
  }

  return v20;
}

- (BOOL)_populateMetadataAttributesAndCreateAuxItems
{
  v200 = *MEMORY[0x1E69E9840];
  if (!objc_msgSend_isValid(self, a2, v2, v3))
  {
    LOBYTE(v50) = 0;
    return v50;
  }

  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v9 = objc_msgSend_messageGUID(self, v6, v7, v8);
      *buf = 138412290;
      v198 = v9;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Indexing placing %@ under scrutiny", buf, 0xCu);
    }
  }

  v10 = objc_alloc(MEMORY[0x1E6964E90]);
  v13 = objc_msgSend_initWithItemContentType_(v10, v11, *MEMORY[0x1E6963848], v12);
  objc_msgSend_setMetadataAttributes_(self, v14, v13, v15);

  v19 = objc_msgSend_generator(self, v16, v17, v18);
  v23 = objc_msgSend_scrutinyController(v19, v20, v21, v22);
  v27 = objc_msgSend_messageGUID(self, v24, v25, v26);
  objc_msgSend_setMessageGUIDUnderScrutiny_(v23, v28, v27, v29);

  val = objc_alloc_init(IMDSpotlightIndexerTimingProfiler);
  v33 = objc_msgSend_spotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v30, v31, v32);
  objc_msgSend_startMainTimerWithExpectedTimeoutInterval_(val, v34, v35, v36, v33);
  if (objc_msgSend_exitOnIndexingTimeout(MEMORY[0x1E69A7FF8], v37, v38, v39))
  {
    objc_initWeak(buf, val);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B7BC1404;
    block[3] = &unk_1E7CBC240;
    objc_copyWeak(&v196, buf);
    block[4] = self;
    v43 = dispatch_block_create(0, block);
    v47 = objc_msgSend_spotlightTimeoutSeconds(MEMORY[0x1E69A7FF8], v44, v45, v46);
    v48 = dispatch_time(0, 1000000000 * v47);
    v49 = dispatch_get_global_queue(2, 0);
    v186 = v43;
    dispatch_after(v48, v49, v43);

    objc_destroyWeak(&v196);
    objc_destroyWeak(buf);
  }

  else
  {
    v186 = 0;
  }

  v193 = 0u;
  v194 = 0u;
  v191 = 0u;
  v192 = 0u;
  v51 = objc_msgSend_indexers(self, v40, v41, v42, v186);
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v191, v199, 16);
  if (v55)
  {
    obj = v51;
    v189 = *v192;
    while (2)
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v192 != v189)
        {
          objc_enumerationMutation(obj);
        }

        v57 = *(*(&v191 + 1) + 8 * i);
        objc_msgSend_startTimingWithProfiler_(v57, v53, val, v54);
        v61 = objc_msgSend_itemDictionary(self, v58, v59, v60);
        v64 = objc_msgSend_cancelIndexingForItem_(v57, v62, v61, v63);
        objc_msgSend_setBailed_(self, v65, v64, v66);

        v70 = objc_msgSend_metadataAttributes(self, v67, v68, v69);
        v74 = objc_msgSend_itemDictionary(self, v71, v72, v73);
        v78 = objc_msgSend_chatDictionary(self, v75, v76, v77);
        v82 = objc_msgSend_context(self, v79, v80, v81);
        v86 = objc_msgSend_rejectedItems(self, v83, v84, v85);
        v88 = objc_msgSend_auxiliaryItemsForPrimaryAttributes_withItem_chat_context_timingProfiler_rejectedItems_(v57, v87, v70, v74, v78, v82, val, v86);

        v92 = objc_msgSend_auxItems(self, v89, v90, v91);
        objc_msgSend_addObjectsFromArray_(v92, v93, v88, v94);

        if (objc_msgSend_bailed(self, v95, v96, v97))
        {
          objc_msgSend_stopProfilingAfterIndexersBailed(val, v98, v99, v100);

          v51 = obj;
          goto LABEL_22;
        }

        v101 = objc_msgSend_context(self, v98, v99, v100);
        v105 = objc_msgSend_preflight(v101, v102, v103, v104);

        if ((v105 & 1) == 0)
        {
          v109 = objc_msgSend_itemDictionary(self, v106, v107, v108);
          v113 = objc_msgSend_chatDictionary(self, v110, v111, v112);
          v117 = objc_msgSend_context(self, v114, v115, v116);
          v121 = objc_msgSend_metadataAttributes(self, v118, v119, v120);
          objc_msgSend_indexItem_withChat_context_metadataToUpdate_timingProfiler_(v57, v122, v109, v113, v117, v121, val);
        }

        objc_msgSend_stopTimingWithProfiler_(v57, v106, val, v108);
      }

      v51 = obj;
      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v53, &v191, v199, 16);
      if (v55)
      {
        continue;
      }

      break;
    }
  }

LABEL_22:

  if ((objc_msgSend_bailed(self, v123, v124, v125) & 1) == 0)
  {
    objc_msgSend_startTimingForKey_(val, v126, @"post-processor", v128);
  }

  v129 = objc_msgSend_generator(self, v126, v127, v128);
  v133 = objc_msgSend_delegate(v129, v130, v131, v132);
  v137 = objc_msgSend_itemDictionary(self, v134, v135, v136);
  v141 = objc_msgSend_chatDictionary(self, v138, v139, v140);
  v145 = objc_msgSend_context(self, v142, v143, v144);
  objc_msgSend_postProcessIndexingForItem_chatDictionary_context_(v133, v146, v137, v141, v145);

  if ((objc_msgSend_bailed(self, v147, v148, v149) & 1) == 0)
  {
    objc_msgSend_stopTimingForKey_(val, v150, @"post-processor", v152);
  }

  if (v187)
  {
    dispatch_block_cancel(v187);
  }

  if ((objc_msgSend_bailed(self, v150, v151, v152) & 1) == 0)
  {
    objc_msgSend_stopMainTimerAndLogAfterSuccess(val, v153, v154, v155);
  }

  if (objc_msgSend_threwException(self, v153, v154, v155))
  {
    if (IMOSLoggingEnabled())
    {
      v162 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
      {
        v166 = objc_msgSend_messageGUID(self, v163, v164, v165);
        *buf = 138412290;
        v198 = v166;
        _os_log_impl(&dword_1B7AD5000, v162, OS_LOG_TYPE_INFO, "Indexing NOT removing %@ from scrutiny, exception was thrown", buf, 0xCu);
      }

LABEL_38:
    }
  }

  else
  {
    v167 = objc_msgSend_generator(self, v156, v157, v158);
    v171 = objc_msgSend_scrutinyController(v167, v168, v169, v170);
    v175 = objc_msgSend_messageGUID(self, v172, v173, v174);
    objc_msgSend_clearMessageGUIDFromScrutiny_(v171, v176, v175, v177);

    if (IMOSLoggingEnabled())
    {
      v162 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
      {
        v181 = objc_msgSend_messageGUID(self, v178, v179, v180);
        *buf = 138412290;
        v198 = v181;
        _os_log_impl(&dword_1B7AD5000, v162, OS_LOG_TYPE_INFO, "Indexing removing %@ from scrutiny", buf, 0xCu);
      }

      goto LABEL_38;
    }
  }

  if (objc_msgSend_bailed(self, v159, v160, v161))
  {
    LOBYTE(v50) = 0;
  }

  else
  {
    v50 = objc_msgSend_threwException(self, v182, v183, v184) ^ 1;
  }

  return v50;
}

- (id)descriptor
{
  v5 = objc_msgSend_itemDictionary(self, a2, v2, v3);
  v8 = objc_msgSend_objectForKey_(v5, v6, @"attributedBody", v7);

  v9 = objc_alloc(MEMORY[0x1E69A8118]);
  v13 = objc_msgSend_messageGUID(self, v10, v11, v12);
  v15 = objc_msgSend_initWithMessageBody_messageGUID_(v9, v14, v8, v13);

  return v15;
}

- (id)date
{
  v4 = objc_msgSend_itemDictionary(self, a2, v2, v3);
  v7 = objc_msgSend_objectForKey_(v4, v5, @"time", v6);

  return v7;
}

- (id)threadOriginatorFormattedGUID
{
  v4 = objc_msgSend_itemDictionary(self, a2, v2, v3);
  v7 = objc_msgSend_objectForKey_(v4, v5, @"threadOriginatorFormattedGUID", v6);

  return v7;
}

- (void)_generateTextParts
{
  v147 = *MEMORY[0x1E69E9840];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v5 = objc_msgSend_descriptor(self, a2, v2, v3);
  v9 = objc_msgSend_messageParts(v5, v6, v7, v8);

  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v142, v146, 16);
  if (v11)
  {
    v15 = v11;
    v16 = *v143;
    v17 = *MEMORY[0x1E69A5F00];
    v18 = *MEMORY[0x1E69A5F20];
    v139 = *v143;
    v140 = v9;
    v137 = *MEMORY[0x1E69A5F20];
    v138 = *MEMORY[0x1E69A5F00];
    do
    {
      v19 = 0;
      v141 = v15;
      do
      {
        if (*v143 != v16)
        {
          objc_enumerationMutation(v9);
        }

        v20 = *(*(&v142 + 1) + 8 * v19);
        v21 = objc_msgSend_messagePartBody(v20, v12, v13, v14);
        v25 = objc_msgSend_string(v21, v22, v23, v24);

        if ((objc_msgSend_isEqualToString_(v25, v26, v17, v27) & 1) == 0 && (objc_msgSend_isEqualToString_(v25, v28, v18, v29) & 1) == 0)
        {
          v33 = objc_msgSend_metadataAttributes(self, v30, v31, v32);
          v37 = objc_msgSend_copy(v33, v34, v35, v36);

          v41 = objc_msgSend_messageGUID(self, v38, v39, v40);
          v44 = objc_msgSend_messagePartGUIDForMessageGUID_(v20, v42, v41, v43);
          v48 = objc_msgSend_encodedMessagePartGUID(v44, v45, v46, v47);

          v52 = objc_msgSend_context(self, v49, v50, v51);
          LODWORD(v41) = IMDSpotlightIndexingIncludesTextContentForIndexingContext(v52, v53, v54, v55);

          if (v41)
          {
            v59 = objc_msgSend_chatDisplayName(self, v56, v57, v58);
            v63 = objc_msgSend_date(self, v60, v61, v62);
            objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v37, v64, v48, v25, v59, v63);

            objc_msgSend_setTextContent_(v37, v65, v25, v66);
          }

          v67 = objc_msgSend_threadOriginatorFormattedGUID(self, v56, v57, v58);
          v71 = v67;
          if (v67)
          {
            v72 = v67;
          }

          else
          {
            v72 = v48;
          }

          v73 = objc_msgSend_threadIdentifierCustomKey(MEMORY[0x1E69A7FF8], v68, v69, v70);
          objc_msgSend_setValue_forCustomKey_(v37, v74, v72, v73);

          v75 = MEMORY[0x1E696AD98];
          v79 = objc_msgSend_messagePartIndex(v20, v76, v77, v78);
          v82 = objc_msgSend_numberWithUnsignedInteger_(v75, v80, v79, v81);
          v86 = objc_msgSend_partIndexKey(MEMORY[0x1E69A7FF8], v83, v84, v85);
          objc_msgSend_setValue_forCustomKey_(v37, v87, v82, v86);

          v91 = objc_msgSend_messageGUID(self, v88, v89, v90);
          objc_msgSend_setOwnerIdentifier_(v37, v92, v91, v93);

          v97 = objc_msgSend_messageGUID(self, v94, v95, v96);
          objc_msgSend_setRelatedUniqueIdentifier_(v37, v98, v97, v99);

          v100 = objc_alloc(MEMORY[0x1E6964E80]);
          v104 = objc_msgSend_chatGUID(self, v101, v102, v103);
          v106 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v100, v105, v48, v104, v37);

          v110 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v107, v108, v109);
          objc_msgSend_setExpirationDate_(v106, v111, v110, v112);

          v116 = objc_msgSend_context(self, v113, v114, v115);
          v117 = sub_1B7BC1A24(v116);
          objc_msgSend_setIsUpdate_(v106, v118, v117, v119);

          objc_msgSend__addTimeSensitiveListenerIfNeededForSearchableItem_(self, v120, v106, v121);
          v125 = objc_msgSend_generator(self, v122, v123, v124);
          v129 = objc_msgSend_chatDictionary(self, v126, v127, v128);
          objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(v125, v130, v106, v129);

          v134 = objc_msgSend_generatedItems(self, v131, v132, v133);
          objc_msgSend_addObject_(v134, v135, v106, v136);

          v16 = v139;
          v9 = v140;
          v18 = v137;
          v17 = v138;
          v15 = v141;
        }

        ++v19;
      }

      while (v15 != v19);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v142, v146, 16);
    }

    while (v15);
  }
}

- (void)_generateHiddenRootItem
{
  if (objc_msgSend_isOtherPluginMessage(self, a2, v2, v3))
  {
    v8 = objc_msgSend_metadataAttributes(self, v5, v6, v7);
    v12 = objc_msgSend_messageGUID(self, v9, v10, v11);
    v16 = objc_msgSend_descriptor(self, v13, v14, v15);
    v20 = objc_msgSend_messageBody(v16, v17, v18, v19);
    v24 = objc_msgSend_string(v20, v21, v22, v23);
    v28 = objc_msgSend_chatDisplayName(self, v25, v26, v27);
    v32 = objc_msgSend_date(self, v29, v30, v31);
    objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v8, v33, v12, v24, v28, v32);
  }

  v34 = objc_msgSend_metadataAttributes(self, v5, v6, v7);
  v120 = objc_msgSend_copy(v34, v35, v36, v37);

  v41 = objc_msgSend_threadOriginatorFormattedGUID(self, v38, v39, v40);
  v45 = v41;
  if (v41)
  {
    v46 = v41;
  }

  else
  {
    v46 = objc_msgSend_messageGUID(self, v42, v43, v44);
  }

  v47 = v46;

  v51 = objc_msgSend_threadIdentifierCustomKey(MEMORY[0x1E69A7FF8], v48, v49, v50);
  objc_msgSend_setValue_forCustomKey_(v120, v52, v47, v51);

  v53 = MEMORY[0x1E696AD98];
  v57 = objc_msgSend_generatedItems(self, v54, v55, v56);
  v61 = objc_msgSend_count(v57, v58, v59, v60);
  v65 = objc_msgSend_auxItems(self, v62, v63, v64);
  v69 = objc_msgSend_count(v65, v66, v67, v68);
  v72 = objc_msgSend_numberWithUnsignedInteger_(v53, v70, v69 + v61, v71);
  v76 = objc_msgSend_partCountKey(MEMORY[0x1E69A7FF8], v73, v74, v75);
  objc_msgSend_setValue_forCustomKey_(v120, v77, v72, v76);

  objc_msgSend_setTextContent_(v120, v78, 0, v79);
  objc_msgSend_setDisableSearchInSpotlight_(v120, v80, MEMORY[0x1E695E118], v81);
  v82 = objc_alloc(MEMORY[0x1E6964E80]);
  v86 = objc_msgSend_messageGUID(self, v83, v84, v85);
  v90 = objc_msgSend_chatGUID(self, v87, v88, v89);
  v92 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v82, v91, v86, v90, v120);

  v96 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v93, v94, v95);
  objc_msgSend_setExpirationDate_(v92, v97, v96, v98);

  v102 = objc_msgSend_context(self, v99, v100, v101);
  v103 = sub_1B7BC1A24(v102);
  objc_msgSend_setIsUpdate_(v92, v104, v103, v105);

  v109 = objc_msgSend_generator(self, v106, v107, v108);
  v113 = objc_msgSend_chatDictionary(self, v110, v111, v112);
  objc_msgSend__updateFilteringForSearchableItem_chatDictionary_(v109, v114, v92, v113);

  v118 = objc_msgSend_generatedItems(self, v115, v116, v117);
  objc_msgSend_insertObject_atIndex_(v118, v119, v92, 0);
}

- (BOOL)isMultiPart
{
  v5 = objc_msgSend_generator(self, a2, v2, v3);
  v9 = objc_msgSend_itemDictionary(self, v6, v7, v8);
  shouldSkipMessagePartPrefixingForItemDictionary = objc_msgSend__shouldSkipMessagePartPrefixingForItemDictionary_(v5, v10, v9, v11);

  if (shouldSkipMessagePartPrefixingForItemDictionary)
  {
    return 0;
  }

  v17 = objc_msgSend_descriptor(self, v13, v14, v15);
  v21 = objc_msgSend_messageParts(v17, v18, v19, v20);
  v16 = objc_msgSend_count(v21, v22, v23, v24) > 1;

  return v16;
}

- (BOOL)isOtherPluginMessage
{
  v4 = objc_msgSend_metadataAttributes(self, a2, v2, v3);
  v8 = objc_msgSend_messageType(v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, @"op", v10);

  return isEqualToString;
}

- (void)_addTimeSensitiveListenerIfNeededForSearchableItem:(id)item
{
  itemCopy = item;
  v7 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v4, v5, v6);
  isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v7, v8, v9, v10);

  if (isPriorityMessagesEnabled)
  {
    v15 = objc_msgSend_metadataAttributes(self, v12, v13, v14);
    v19 = objc_msgSend_checkPriorityCustomKey(MEMORY[0x1E69A7FF8], v16, v17, v18);
    v22 = objc_msgSend_valueForCustomKey_(v15, v20, v19, v21);

    if (objc_msgSend_BOOLValue(v22, v23, v24, v25))
    {
      updated = objc_msgSend_updateListenerOptions(itemCopy, v26, v27, v28);
      objc_msgSend_setUpdateListenerOptions_(itemCopy, v30, updated | 8, v31);
    }
  }
}

@end