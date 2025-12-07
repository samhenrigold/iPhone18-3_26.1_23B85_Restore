@interface IMDCoreSpotlightMessageAttachmentIndexer
+ (BOOL)_attachmentIsSticker:(id)sticker;
+ (BOOL)messageSupportsIndexingForItem:(id)item;
+ (id)assetUUIDKey;
+ (id)attachmentIndexTypeForPath:(id)path filename:(id)filename isSticker:(BOOL)sticker isCommSafetySensitive:(BOOL)sensitive knownSender:(BOOL)sender;
+ (id)attachmentIsSyndicatableMediaKey;
+ (id)auxiliaryItemsForPrimaryAttributes:(id)attributes withItem:(id)item chat:(id)chat context:(id)context timingProfiler:(id)profiler rejectedItems:(id)items;
+ (id)livePhotoComplementKey;
+ (id)momentShareURLKey;
+ (id)videoComplementPathForResourceURL:(id)l;
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageAttachmentIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  v130 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  v122 = itemCopy;
  v15 = objc_msgSend_objectForKey_(itemCopy, v13, @"hasAttachments", v14);
  LODWORD(update) = objc_msgSend_BOOLValue(v15, v16, v17, v18);

  v21 = objc_msgSend_messageSupportsIndexingForItem_(self, v19, itemCopy, v20);
  if (update && v21)
  {
    v111 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v22, @"attachments", v23);
    v24 = v111;
    if (!objc_msgSend_count(v111, v25, v26, v27))
    {
LABEL_71:

      goto LABEL_72;
    }

    v116 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v118 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v117 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v126 = 0u;
    obj = v111;
    v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v28, &v123, v129, 16);
    if (v31)
    {
      v120 = *MEMORY[0x1E69A7018];
      v121 = *v124;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v124 != v121)
          {
            objc_enumerationMutation(obj);
          }

          v33 = *(*(&v123 + 1) + 8 * i);
          v34 = objc_msgSend_objectForKeyedSubscript_(v33, v29, @"name", v30);
          if ((objc_msgSend_containsString_(v34, v35, v120, v36) & 1) == 0)
          {
            v39 = objc_msgSend_objectForKeyedSubscript_(v33, v37, @"path", v38);
            v43 = objc_msgSend_length(v39, v40, v41, v42);
            if (v39)
            {
              v46 = v43 == 0;
            }

            else
            {
              v46 = 1;
            }

            if (!v46)
            {
              objc_msgSend_addObject_(v116, v44, v39, v45);
            }

            v47 = objc_msgSend_objectForKeyedSubscript_(v33, v44, @"guid", v45);
            v50 = objc_msgSend_objectForKey_(v122, v48, @"guid", v49);
            v53 = objc_msgSend_objectForKey_(v122, v51, @"attributedBody", v52);
            v57 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v54, v55, v56);
            v59 = objc_msgSend__syndicationIdentifierForAttachmentGUID_messageGUID_attributedBody_verbose_(IMDAttachmentSyndicationUtilities, v58, v47, v50, v53, v57);
            v63 = objc_msgSend_length(v59, v60, v61, v62) == 0;
            v67 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v64, v65, v66);
            if (v63)
            {
              if (v67 && IMOSLoggingEnabled())
              {
                v71 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B7AD5000, v71, OS_LOG_TYPE_INFO, "Failed to determine attachment name!", buf, 2u);
                }
              }
            }

            else
            {
              if (v67 && IMOSLoggingEnabled())
              {
                v70 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v128 = v59;
                  _os_log_impl(&dword_1B7AD5000, v70, OS_LOG_TYPE_INFO, "Adding attachment name %@", buf, 0xCu);
                }
              }

              objc_msgSend_addObject_(v118, v68, v59, v69);
            }

            v72 = IMUTITypeForFilename();
            v76 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v73, v74, v75);
            if (v72)
            {
              if (v76 && IMOSLoggingEnabled())
              {
                v79 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412290;
                  v128 = v72;
                  _os_log_impl(&dword_1B7AD5000, v79, OS_LOG_TYPE_INFO, "Adding attachment UTI type to %@", buf, 0xCu);
                }
              }

              objc_msgSend_addObject_(v117, v77, v72, v78);
            }

            else if (v76 && IMOSLoggingEnabled())
            {
              v80 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1B7AD5000, v80, OS_LOG_TYPE_INFO, "Failed to determine attachment UTI type!", buf, 2u);
              }
            }
          }
        }

        v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v29, &v123, v129, 16);
      }

      while (v31);
    }

    v83 = objc_msgSend_objectForKey_(v122, v81, @"flags", v82);
    v87 = (objc_msgSend_unsignedLongLongValue(v83, v84, v85, v86) & 4) == 0;

    if (v87 && (objc_msgSend_objectForKeyedSubscript_(v122, v88, @"handle", v90), v91 = objc_claimAutoreleasedReturnValue(), IsKnownContact = _IMDCoreSpotlightIsKnownContact(v91), v91, (IsKnownContact & 1) == 0))
    {
      if (!objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v88, v89, v90) || !IMOSLoggingEnabled())
      {
        goto LABEL_56;
      }

      v99 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v99, OS_LOG_TYPE_INFO, "Not adding attachment paths for unknown sender", buf, 2u);
      }
    }

    else
    {
      if (objc_msgSend_count(v116, v88, v89, v90))
      {
        objc_msgSend_setAttachmentPaths_(updateCopy, v93, v116, v95);
LABEL_56:
        if (objc_msgSend_count(v118, v96, v97, v98))
        {
          objc_msgSend_setAttachmentNames_(updateCopy, v100, v118, v102);
        }

        else if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v100, v101, v102) && IMOSLoggingEnabled())
        {
          v106 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v106, OS_LOG_TYPE_INFO, "No attachment names to add", buf, 2u);
          }
        }

        if (objc_msgSend_count(v117, v103, v104, v105))
        {
          objc_msgSend_setAttachmentTypes_(updateCopy, v107, v117, v109);
        }

        else if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v107, v108, v109) && IMOSLoggingEnabled())
        {
          v110 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v110, OS_LOG_TYPE_INFO, "No attachment types to add", buf, 2u);
          }
        }

        v24 = v111;
        goto LABEL_71;
      }

      if (!objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v93, v94, v95) || !IMOSLoggingEnabled())
      {
        goto LABEL_56;
      }

      v99 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v99, OS_LOG_TYPE_INFO, "No attachment Paths to add", buf, 2u);
      }
    }

    goto LABEL_56;
  }

LABEL_72:
}

+ (id)auxiliaryItemsForPrimaryAttributes:(id)attributes withItem:(id)item chat:(id)chat context:(id)context timingProfiler:(id)profiler rejectedItems:(id)items
{
  v475 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  profilerCopy = profiler;
  itemsCopy = items;
  _IMDCoreRecentsApiInit(itemsCopy, v14, v15, v16);
  v451 = itemCopy;
  v19 = objc_msgSend_objectForKey_(itemCopy, v17, @"hasAttachments", v18);
  v23 = objc_msgSend_BOOLValue(v19, v20, v21, v22);

  v26 = objc_msgSend_messageSupportsIndexingForItem_(self, v24, itemCopy, v25);
  v428 = objc_msgSend_objectForKey_(chatCopy, v27, @"groupName", v28);
  v437 = objc_msgSend_objectForKey_(itemCopy, v29, @"messageSummaryInfo", v30);
  v33 = objc_msgSend_objectForKey_(v437, v31, *MEMORY[0x1E69A7228], v32);
  v445 = objc_msgSend_unsignedIntegerValue(v33, v34, v35, v36);

  v39 = objc_msgSend_objectForKey_(itemCopy, v37, @"flags", v38);
  LOBYTE(chat) = objc_msgSend_unsignedLongLongValue(v39, v40, v41, v42);

  chatCopy2 = chat;
  if ((chat & 4) != 0)
  {
    IsKnownContact = 1;
  }

  else
  {
    v45 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v43, @"handle", v44);
    IsKnownContact = _IMDCoreSpotlightIsKnownContact(v45);
  }

  v430 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = 0x1E69A7000;
  if ((v23 & v26) == 1)
  {
    objc_msgSend_objectForKeyedSubscript_(itemCopy, v46, @"attachments", v48);
    v461 = 0u;
    v462 = 0u;
    v459 = 0u;
    obj = v460 = 0u;
    v444 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v50, &v459, v474, 16);
    if (!v444)
    {
      goto LABEL_170;
    }

    v443 = *v460;
    v436 = *MEMORY[0x1E69A7220];
    v421 = *MEMORY[0x1E69A68D0];
    v419 = *MEMORY[0x1E6998FA8];
    v420 = *MEMORY[0x1E6963AF0];
    v423 = *MEMORY[0x1E69A6FC0];
    v424 = *MEMORY[0x1E69A6FB8];
    while (1)
    {
      for (i = 0; i != v444; ++i)
      {
        if (*v460 != v443)
        {
          objc_enumerationMutation(obj);
        }

        v54 = *(*(&v459 + 1) + 8 * i);
        v453 = objc_msgSend_objectForKeyedSubscript_(v54, v51, @"guid", v52);
        v454 = objc_msgSend_objectForKey_(v451, v55, @"guid", v56);
        v452 = objc_msgSend_objectForKey_(v451, v57, @"attributedBody", v58);
        v62 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v59, v60, v61);
        v66 = objc_msgSend__syndicationIdentifierForAttachmentGUID_messageGUID_attributedBody_verbose_(IMDAttachmentSyndicationUtilities, v63, v453, v454, v452, v62);
        if (!v445 || (v67 = IMCMMAssetIndexFromIMFileTransferGUID(), objc_msgSend_objectForKey_(v437, v68, v436, v69), v70 = objc_claimAutoreleasedReturnValue(), v74 = objc_msgSend_unsignedIntegerValue(v70, v71, v72, v73), v70, v67 >= v74))
        {
          v450 = objc_msgSend_objectForKeyedSubscript_(v54, v64, @"uti", v65);
          v78 = objc_msgSend_objectForKeyedSubscript_(v54, v76, @"previewGenerationState", v77);
          objc_msgSend_unsignedLongLongValue(v78, v79, v80, v81);

          if (objc_msgSend_ignoreRejections(contextCopy, v82, v83, v84))
          {
            v449 = 0;
            goto LABEL_19;
          }

          v458 = 0;
          v87 = IMShouldAllowInteractionlessUsageOfUTITypeWithPreviewGenerationState();
          v449 = v458;
          if (v87)
          {
LABEL_19:
            if (objc_msgSend_isItemGroupPhoto_(IMDIndexingUtilities, v85, v451, v86))
            {
              if (IMOSLoggingEnabled())
              {
                v91 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
                {
                  *buf = 138412546;
                  v467 = v453;
                  v468 = 2112;
                  v469 = v450;
                  _os_log_impl(&dword_1B7AD5000, v91, OS_LOG_TYPE_INFO, "Not donating attachment to CoreSpotlight because it's a group photo. attachmentGUID: %@ UTI: %@", buf, 0x16u);
                }
              }

              if (v66)
              {
                v92 = objc_alloc(MEMORY[0x1E69A7FF0]);
                v94 = objc_msgSend_initWithDomain_identifier_reason_(v92, v93, @"attachmentDomain", v66, 2);
                objc_msgSend_addObject_(itemsCopy, v95, v94, v96);
                goto LABEL_166;
              }

LABEL_167:

              goto LABEL_168;
            }

            v94 = objc_msgSend_copy(attributesCopy, v88, v89, v90);
            v440 = IMCMMAssetIndexFromIMFileTransferGUID();
            v97 = objc_alloc(MEMORY[0x1E69A8148]);
            v101 = objc_msgSend_defaultPrefix(MEMORY[0x1E69A8140], v98, v99, v100);
            v439 = objc_msgSend_initWithMessageGUID_prefix_partNumber_(v97, v102, v454, v101, v440);

            v448 = objc_msgSend_objectForKeyedSubscript_(v54, v103, @"path", v104);
            if (objc_msgSend_length(v448, v105, v106, v107))
            {
              if (v448)
              {
                v433 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v108, v448, 0);
                if (v433)
                {
                  objc_msgSend_setContentURL_(v94, v110, v433, v111);
                  v117 = objc_msgSend_videoComplementPathForResourceURL_(self, v112, v433, v113);
                  if (v117)
                  {
                    v118 = objc_msgSend_livePhotoComplementKey(self, v114, v115, v116);
                    objc_msgSend_setValue_forCustomKey_(v94, v119, v117, v118);
                  }
                }

                v465 = v448;
                v120 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v110, &v465, 1);
                objc_msgSend_setAttachmentPaths_(v94, v121, v120, v122);
              }

              else
              {
                v433 = 0;
              }

              v441 = objc_msgSend_objectForKeyedSubscript_(v54, v108, @"name", v109);
              if (objc_msgSend_length(v441, v128, v129, v130))
              {
                objc_msgSend_setTextContent_(v94, v131, v441, v133);
                if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v134, v135, v136))
                {
                  if (IMOSLoggingEnabled())
                  {
                    v137 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v467 = v441;
                      _os_log_impl(&dword_1B7AD5000, v137, OS_LOG_TYPE_INFO, "setting text content %@", buf, 0xCu);
                    }
                  }
                }
              }

              v138 = objc_msgSend_length(v66, v131, v132, v133) == 0;
              v142 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v139, v140, v141);
              if (v138)
              {
                if (v142 && IMOSLoggingEnabled())
                {
                  v149 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v149, OS_LOG_TYPE_INFO))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1B7AD5000, v149, OS_LOG_TYPE_INFO, "Failed to determine attachment name!", buf, 2u);
                  }
                }
              }

              else
              {
                if (v142 && IMOSLoggingEnabled())
                {
                  v145 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v467 = v66;
                    _os_log_impl(&dword_1B7AD5000, v145, OS_LOG_TYPE_INFO, "setting attachment name %@", buf, 0xCu);
                  }
                }

                v464 = v66;
                v146 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v143, &v464, 1);
                objc_msgSend_setAttachmentNames_(v94, v147, v146, v148);
              }

              v150 = objc_msgSend_objectForKeyedSubscript_(v54, v143, @"isCommSafetySensitive", v144);
              v154 = objc_msgSend_BOOLValue(v150, v151, v152, v153);

              IsSticker = objc_msgSend__attachmentIsSticker_(self, v155, v54, v156);
              v446 = objc_msgSend_attachmentIndexTypeForPath_filename_isSticker_isCommSafetySensitive_knownSender_(self, v158, v448, v441, IsSticker, v154, IsKnownContact);
              v162 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v159, v160, v161);
              if (v446)
              {
                if (v162 && IMOSLoggingEnabled())
                {
                  v165 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v467 = v446;
                    _os_log_impl(&dword_1B7AD5000, v165, OS_LOG_TYPE_INFO, "Setting attachment index type to %@", buf, 0xCu);
                  }
                }

                objc_msgSend_setMessageType_(v94, v163, v446, v164);
                v169 = objc_msgSend_messageType(v94, v166, v167, v168);
                isEqualToString = objc_msgSend_isEqualToString_(v169, v170, @"ad", v171);

                if (isEqualToString)
                {
                  v176 = objc_msgSend_attribute_atIndex_effectiveRange_(v452, v173, v421, 0, 0);
                  if (v176)
                  {
                    objc_msgSend_setTextContent_(v94, v174, v176, v175);
                  }

                  goto LABEL_72;
                }
              }

              else if (v162 && IMOSLoggingEnabled())
              {
                v176 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B7AD5000, v176, OS_LOG_TYPE_INFO, "Failed to determine attachment index type!", buf, 2u);
                }

LABEL_72:
              }

              v435 = IMUTITypeForFilename();
              v180 = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v177, v178, v179);
              if (v435)
              {
                if (v180 && IMOSLoggingEnabled())
                {
                  v183 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v467 = v435;
                    _os_log_impl(&dword_1B7AD5000, v183, OS_LOG_TYPE_INFO, "Setting attachment UTI type to %@", buf, 0xCu);
                  }
                }

                v463 = v435;
                v184 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v181, &v463, 1);
                objc_msgSend_setAttachmentTypes_(v94, v185, v184, v186);
              }

              else if (v180 && IMOSLoggingEnabled())
              {
                v187 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v187, OS_LOG_TYPE_INFO))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1B7AD5000, v187, OS_LOG_TYPE_INFO, "Failed to determine attachment UTI type!", buf, 2u);
                }
              }

              if ((objc_msgSend_isEqualToString_(v446, v181, @"pa", v182) & IsKnownContact) == 1)
              {
                v426 = objc_msgSend_dataWithContentsOfFile_(MEMORY[0x1E695DEF0], v188, v448, v189);
                v190 = objc_alloc(MEMORY[0x1E69B8A20]);
                v457 = 0;
                v192 = objc_msgSend_initWithData_error_(v190, v191, v426, &v457);
                v425 = v457;
                if (v192)
                {
                  v196 = objc_msgSend_array(MEMORY[0x1E695DF70], v193, v194, v195);
                  v200 = objc_msgSend_localizedName(v192, v197, v198, v199);
                  v204 = objc_msgSend_localizedDescription(v192, v201, v202, v203);
                  v210 = objc_msgSend_organizationName(v192, v205, v206, v207);
                  if (v200)
                  {
                    objc_msgSend_addObject_(v196, v208, v200, v209);
                  }

                  if (v204)
                  {
                    objc_msgSend_addObject_(v196, v208, v204, v209);
                  }

                  if (v210)
                  {
                    objc_msgSend_addObject_(v196, v208, v210, v209);
                  }

                  v211 = objc_msgSend_componentsJoinedByString_(v196, v208, @" ", v209);
                  objc_msgSend_setTextContent_(v94, v212, v211, v213);
                }

                else if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v193, v194, v195) && IMOSLoggingEnabled())
                {
                  v214 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
                  {
                    v218 = objc_msgSend_attributeDictionary(v94, v215, v216, v217);
                    *buf = 138412546;
                    v467 = v218;
                    v468 = 2112;
                    v469 = v425;
                    _os_log_impl(&dword_1B7AD5000, v214, OS_LOG_TYPE_INFO, "Indexing .pkpass with attributes %@ error %@", buf, 0x16u);
                  }
                }
              }

              if (objc_msgSend_isEqualToString_(v446, v188, @"ct", v189))
              {
                if (!IsKnownContact)
                {
                  goto LABEL_127;
                }
              }

              else if ((objc_msgSend_isEqualToString_(v446, v219, @"loc", v221) & IsKnownContact & 1) == 0)
              {
                goto LABEL_127;
              }

              if ((chatCopy2 & 4) == 0 && (objc_msgSend_isReindexing(contextCopy, v219, v220, v221) & 1) == 0)
              {
                v222 = objc_msgSend_objectForKey_(v451, v219, @"time", v221);
                v225 = objc_msgSend_objectForKey_(v451, v223, @"lalh", v224);
                v427 = objc_msgSend__stripFZIDPrefix(v225, v226, v227, v228);

                v231 = objc_msgSend_objectForKey_(v451, v229, @"handle", v230);

                v235 = objc_msgSend_sharedController(IMDCoreRecentsController, v232, v233, v234);
                v456 = 0;
                v237 = objc_msgSend_createRecentsFromVCFWithPath_messageGUID_senderID_messageDate_outAddress_(v235, v236, v448, v454, v231, v222, &v456);
                v238 = v456;

                if (objc_msgSend_count(v237, v239, v240, v241))
                {
                  v245 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v242, v243, v244);
                  v249 = objc_msgSend_recentsInstance(v245, v246, v247, v248);
                  objc_msgSend_recordContactEvents_recentsDomain_sendingAddress_source_userInitiated_(v249, v250, v237, v419, 0, 0, 0);
                }

                if (v238)
                {
                  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v242, v243, v244) && IMOSLoggingEnabled())
                  {
                    v253 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v253, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v467 = v238;
                      _os_log_impl(&dword_1B7AD5000, v253, OS_LOG_TYPE_INFO, "Got address to index %@", buf, 0xCu);
                    }
                  }

                  objc_msgSend_setFullyFormattedAddress_(v94, v251, v238, v252);
                  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v254, v255, v256) && IMOSLoggingEnabled())
                  {
                    v257 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v257, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v467 = v238;
                      _os_log_impl(&dword_1B7AD5000, v257, OS_LOG_TYPE_INFO, "Setting address to %@", buf, 0xCu);
                    }
                  }
                }
              }

              if (objc_msgSend_isEqualToString_(v446, v219, @"loc", v221))
              {
                v260 = objc_msgSend_contactsForVCardAtPath_(IMDContactCache, v258, v448, v259);
                v264 = objc_msgSend_firstObject(v260, v261, v262, v263);

                v267 = objc_msgSend_vCardNameForContact_(IMDContactCache, v265, v264, v266);
                v270 = objc_msgSend_vCardMapURLForContact_(IMDContactCache, v268, v264, v269);
                v455 = 0;
                objc_msgSend_vCardCoordinateForMapURL_outLatitude_outLongitude_(IMDContactCache, v271, v270, &v455 + 4, &v455);
                objc_msgSend_setTextContent_(v94, v272, v267, v273);
                objc_msgSend_setFullyFormattedAddress_(v94, v274, 0, v275);
                objc_msgSend_updateAttributes_withAddressFromContact_(IMDContactCache, v276, v94, v264);
                LODWORD(v277) = HIDWORD(v455);
                v281 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v278, v279, v280, v277);
                objc_msgSend_setLatitude_(v94, v282, v281, v283);

                LODWORD(v284) = v455;
                v288 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v285, v286, v287, v284);
                objc_msgSend_setLongitude_(v94, v289, v288, v290);

                v293 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v291, v270, v292);
                objc_msgSend_setURL_(v94, v294, v293, v295);

                objc_msgSend_setLinkType_(v94, v296, v420, v297);
                if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v298, v299, v300) && IMOSLoggingEnabled())
                {
                  v301 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v301, OS_LOG_TYPE_INFO))
                  {
                    v305 = objc_msgSend_attributeDictionary(v94, v302, v303, v304);
                    *buf = 138412290;
                    v467 = v305;
                    _os_log_impl(&dword_1B7AD5000, v301, OS_LOG_TYPE_INFO, "Indexing .loc.vcf with attributes %@", buf, 0xCu);
                  }
                }
              }

LABEL_127:
            }

            if (v450)
            {
              objc_msgSend_setContentType_(v94, v108, v450, v109);
            }

            v306 = objc_msgSend_objectForKey_(v451, v108, @"syndicationRanges", v109);
            v309 = objc_msgSend_objectForKeyedSubscript_(v54, v307, @"isCommSafetySensitive", v308);
            v313 = objc_msgSend_BOOLValue(v309, v310, v311, v312);

            if ((objc_msgSend__attachmentIsSticker_(self, v314, v54, v315) & 1) == 0)
            {
              LOBYTE(v417) = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v316, v317, v318);
              isCommSafetySensitive_verbose = objc_msgSend__attachmentSyndicationTypeForAttachmentGUID_syndicationIdentifier_attachmentUTI_attributedBody_encodedSyndicationRanges_isCommSafetySensitive_verbose_(IMDAttachmentSyndicationUtilities, v319, v453, v66, v450, v452, v306, v313, v417, profilerCopy);
              if (((isCommSafetySensitive_verbose == 1) & IsKnownContact) == 1)
              {
                LOBYTE(v417) = objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v316, v321, v318);
                isCMM_verbose = objc_msgSend__attachmentGUIDIsSyndicatable_syndicationIdentifier_attachmentUTI_attributedBody_encodedSyndicationRanges_isCMM_verbose_(IMDAttachmentSyndicationUtilities, v322, v453, v66, v450, v452, v306, v445 != 0, v417);
                v326 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v324, isCMM_verbose, v325);
                v330 = objc_msgSend_attachmentIsSyndicatableMediaKey(self, v327, v328, v329);
                objc_msgSend_setValue_forCustomKey_(v94, v331, v326, v330);

LABEL_135:
                if (objc_msgSend_hasPrefix_(v66, v316, @"at_", v318))
                {
                  v334 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v332, 1, v333);
                  objc_msgSend_setEligibleForPhotosProcessing_(v94, v335, v334, v336);
                }

                else if (IMOSLoggingEnabled())
                {
                  v337 = OSLogHandleForIMFoundationCategory();
                  if (os_log_type_enabled(v337, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v467 = v66;
                    _os_log_impl(&dword_1B7AD5000, v337, OS_LOG_TYPE_INFO, "Not marking item as Syndicatable. identifier: %@", buf, 0xCu);
                  }
                }
              }

              else if (isCommSafetySensitive_verbose)
              {
                if (isCommSafetySensitive_verbose == 1)
                {
                  goto LABEL_135;
                }
              }

              else
              {
                v338 = objc_alloc_init(IMDSharedWithYouMetadataManager);
                v340 = objc_msgSend_updateAttributesWithSharedWithYouMetadata_withItem_chat_(v338, v339, v94, v451, chatCopy);
                if (v340)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v341 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v341, OS_LOG_TYPE_INFO))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_1B7AD5000, v341, OS_LOG_TYPE_INFO, "Appended Shared with You meta-data", buf, 2u);
                    }
                  }

                  v342 = v340;

                  v94 = v342;
                }
              }
            }

            v343 = objc_msgSend_objectForKeyedSubscript_(v54, v316, @"attributionInfo", v318);
            v346 = v343;
            if (v343)
            {
              v350 = objc_msgSend_objectForKey_(v343, v344, v424, v345);
              if (v350)
              {
                v351 = objc_msgSend_momentShareURLKey(self, v347, v348, v349);
                objc_msgSend_setValue_forCustomKey_(v94, v352, v350, v351);
              }

              v356 = objc_msgSend_objectForKey_(v346, v347, v423, v349);
              if (v356)
              {
                v357 = objc_msgSend_assetUUIDKey(self, v353, v354, v355);
                objc_msgSend_setValue_forCustomKey_(v94, v358, v356, v357);
              }
            }

            v359 = objc_msgSend_objectForKey_(chatCopy, v344, @"guid", v345);
            if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v360, v361, v362) && IMOSLoggingEnabled())
            {
              v363 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v363, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v467 = v454;
                v468 = 2112;
                v469 = v359;
                _os_log_impl(&dword_1B7AD5000, v363, OS_LOG_TYPE_INFO, "Creating new attribute set with messageGUID %@ chatGUID %@", buf, 0x16u);
              }
            }

            v367 = _IMDCoreSpotlightChatUIDForChatDictionary(chatCopy);
            if (v367)
            {
              v368 = objc_msgSend_chatUniqueIdentifierKey(self, v364, v365, v366);
              objc_msgSend_setValue_forCustomKey_(v94, v369, v367, v368);
            }

            else if (IMOSLoggingEnabled())
            {
              v372 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v372, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_1B7AD5000, v372, OS_LOG_TYPE_INFO, "Not donating the chat's unique identifier to spotlight because it was nil.", buf, 2u);
              }
            }

            objc_msgSend_setAccountIdentifier_(v94, v370, v359, v371);
            objc_msgSend_setOwnerIdentifier_(v94, v373, v454, v374);
            objc_msgSend_setRelatedUniqueIdentifier_(v94, v375, v454, v376);
            v380 = objc_msgSend_encodedMessagePartGUID(v439, v377, v378, v379);
            v384 = objc_msgSend_textContent(v94, v381, v382, v383);
            v387 = objc_msgSend_objectForKey_(v451, v385, @"time", v386);
            objc_msgSend_associateMessageEntityWithIdentifier_displayTitle_displaySubtitle_date_(v94, v388, v380, v384, v428, v387);

            v391 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v389, v440, v390);
            v395 = objc_msgSend_partIndexKey(MEMORY[0x1E69A7FF8], v392, v393, v394);
            objc_msgSend_setValue_forCustomKey_(v94, v396, v391, v395);

            v397 = objc_alloc(MEMORY[0x1E6964E80]);
            v399 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v397, v398, v66, @"attachmentDomain", v94);
            v403 = objc_msgSend_distantFuture(MEMORY[0x1E695DF00], v400, v401, v402);
            objc_msgSend_setExpirationDate_(v399, v404, v403, v405);

            objc_msgSend_addObject_(v430, v406, v399, v407);
          }

          else
          {
            if (IMOSLoggingEnabled())
            {
              v123 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
              {
                *buf = 138543874;
                v467 = v449;
                v468 = 2112;
                v469 = v453;
                v470 = 2112;
                v471 = v450;
                _os_log_impl(&dword_1B7AD5000, v123, OS_LOG_TYPE_INFO, "Not donating attachment to CoreSpotlight because %{public}@. attachmentGUID: %@ UTI: %@", buf, 0x20u);
              }
            }

            if (!v66)
            {
              goto LABEL_167;
            }

            v124 = objc_alloc(MEMORY[0x1E69A7FF0]);
            v94 = objc_msgSend_initWithDomain_identifier_reason_(v124, v125, @"attachmentDomain", v66, 1010);
            objc_msgSend_addObject_(itemsCopy, v126, v94, v127);
          }

LABEL_166:

          goto LABEL_167;
        }

        if (IMOSLoggingEnabled())
        {
          v75 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
          {
            *buf = 134218754;
            v467 = v67;
            v468 = 2048;
            v469 = v74;
            v470 = 2112;
            v471 = v453;
            v472 = 2112;
            v473 = v66;
            _os_log_impl(&dword_1B7AD5000, v75, OS_LOG_TYPE_INFO, "Not donating CMM preview attachment to CoreSpotlight. attachmentIndex: %lu, cmmOffset: %lu, attachmentGUID: %@, syndicationIdentifier: %@", buf, 0x2Au);
          }
        }

LABEL_168:
      }

      v444 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v51, &v459, v474, 16);
      if (!v444)
      {
LABEL_170:

        v49 = 0x1E69A7000uLL;
        break;
      }
    }
  }

  if (objc_msgSend_verboseLoggingEnabled(*(v49 + 4088), v46, v47, v48) && IMOSLoggingEnabled())
  {
    v408 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v408, OS_LOG_TYPE_INFO))
    {
      v412 = objc_msgSend_count(v430, v409, v410, v411);
      v415 = objc_msgSend_objectForKeyedSubscript_(v451, v413, @"guid", v414);
      *buf = 134218242;
      v467 = v412;
      v468 = 2112;
      v469 = v415;
      _os_log_impl(&dword_1B7AD5000, v408, OS_LOG_TYPE_INFO, "Generated %lu aux items for message guid %@", buf, 0x16u);
    }
  }

  return v430;
}

+ (id)attachmentIndexTypeForPath:(id)path filename:(id)filename isSticker:(BOOL)sticker isCommSafetySensitive:(BOOL)sensitive knownSender:(BOOL)sender
{
  senderCopy = sender;
  sensitiveCopy = sensitive;
  stickerCopy = sticker;
  v83 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  filenameCopy = filename;
  v15 = objc_msgSend_pathExtension(filenameCopy, v12, v13, v14);
  v19 = objc_msgSend_lowercaseString(v15, v16, v17, v18);

  isEqualToString = objc_msgSend_isEqualToString_(v19, v20, @"vcf", v21);
  isAudioMessageExtension = objc_msgSend_im_isAudioMessageExtension(v19, v23, v24, v25);
  isPluginPayloadExtension = objc_msgSend_im_isPluginPayloadExtension(v19, v27, v28, v29);
  v33 = objc_msgSend_isEqualToString_(v19, v31, @"pkpass", v32);
  v36 = objc_msgSend_isEqualToString_(v19, v34, @"order", v35);
  if (isAudioMessageExtension)
  {
    v40 = @"ad";
  }

  else
  {
    v40 = @"pp";
  }

  if ((isAudioMessageExtension & 1) == 0 && (isPluginPayloadExtension & 1) == 0)
  {
    if ((v33 | v36))
    {
      v40 = @"pa";
    }

    else if (isEqualToString)
    {
      v41 = objc_msgSend_stringByDeletingPathExtension(filenameCopy, v37, v38, v39);
      v45 = objc_msgSend_pathExtension(v41, v42, v43, v44);
      v48 = objc_msgSend_isEqualToString_(v45, v46, @"loc", v47);

      if (v48)
      {
        v40 = @"loc";
      }

      else
      {
        v40 = @"ct";
      }
    }

    else
    {
      v49 = IMUTITypeForFilename();
      v53 = objc_msgSend_sharedInstance(MEMORY[0x1E69A81D8], v50, v51, v52);
      v56 = objc_msgSend_previewGeneratorClassForUTIType_(v53, v54, v49, v55);

      if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v57, v58, v59) && IMOSLoggingEnabled())
      {
        v60 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v80 = v49;
          v81 = 2112;
          v82 = v56;
          _os_log_impl(&dword_1B7AD5000, v60, OS_LOG_TYPE_INFO, "UTI Type is %@ generator class is %@", buf, 0x16u);
        }
      }

      v61 = objc_opt_class();
      if (objc_msgSend_isEqual_(v56, v62, v61, v63))
      {
        if (stickerCopy)
        {
          v67 = @"st";
        }

        else if (senderCopy && (IMDCoreSpotlightPhotoAtPathIsScreenshot(pathCopy, v64, v65, v66) & 1) != 0)
        {
          v67 = @"scr";
        }

        else
        {
          v67 = @"pto";
        }
      }

      else
      {
        v68 = objc_opt_class();
        if (objc_msgSend_isEqual_(v56, v69, v68, v70))
        {
          v67 = @"apto";
          v71 = @"st";
          v72 = !stickerCopy;
        }

        else
        {
          v73 = objc_opt_class();
          isEqual = objc_msgSend_isEqual_(v56, v74, v73, v75);
          v67 = @"at";
          v71 = @"mov";
          v72 = isEqual == 0;
        }

        if (!v72)
        {
          v67 = v71;
        }
      }

      if (sensitiveCopy)
      {
        v40 = @"csspto";
      }

      else
      {
        v40 = v67;
      }
    }
  }

  return v40;
}

+ (BOOL)_attachmentIsSticker:(id)sticker
{
  if (IMDCoreSpotlightMessageAttachmentIndexer_TestOverrideIsSticker)
  {
    return 1;
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(sticker, a2, @"isSticker", v3);
  v9 = objc_msgSend_BOOLValue(v5, v6, v7, v8);

  return v9;
}

+ (BOOL)messageSupportsIndexingForItem:(id)item
{
  v43 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  v6 = objc_msgSend_objectForKey_(itemCopy, v4, @"balloonBundleID", v5);
  v9 = objc_msgSend_objectForKey_(itemCopy, v7, @"hasAttachments", v8);
  v13 = objc_msgSend_BOOLValue(v9, v10, v11, v12);

  v16 = objc_msgSend_objectForKey_(itemCopy, v14, @"messageSummaryInfo", v15);
  v19 = objc_msgSend_objectForKey_(v16, v17, *MEMORY[0x1E69A7228], v18);
  v23 = objc_msgSend_unsignedIntegerValue(v19, v20, v21, v22);

  v27 = v23 == 4 || v6 == 0;
  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v24, v25, v26))
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v35 = 138412290;
        v36 = v16;
        _os_log_impl(&dword_1B7AD5000, v28, OS_LOG_TYPE_INFO, "messageSummaryInfo: %@", &v35, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = @"NO";
        if (v13)
        {
          v31 = @"YES";
        }

        else
        {
          v31 = @"NO";
        }

        if (v6)
        {
          v32 = @"YES";
        }

        else
        {
          v32 = @"NO";
        }

        v35 = 138413058;
        v36 = v31;
        if (v23)
        {
          v33 = @"YES";
        }

        else
        {
          v33 = @"NO";
        }

        v37 = 2112;
        v38 = v32;
        v39 = 2112;
        v40 = v33;
        if (v27)
        {
          v30 = @"YES";
        }

        v41 = 2112;
        v42 = v30;
        _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "messageHasAttachments %@ isPlugin %@ isCMM %@ messageSupportsIndexing %@", &v35, 0x2Au);
      }
    }
  }

  return v27;
}

+ (id)videoComplementPathForResourceURL:(id)l
{
  v59 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v53 = objc_msgSend_pathExtension(lCopy, v5, v6, v7);
  v11 = objc_msgSend_path(lCopy, v8, v9, v10);
  v15 = objc_msgSend_stringByDeletingPathExtension(v11, v12, v13, v14);
  objc_msgSend__possibleVideoComplementExtensions(self, v16, v17, v18);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v19 = v57 = 0u;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v54, v58, 16);
  if (v21)
  {
    v24 = v21;
    v52 = v11;
    v25 = 0;
    v26 = *v55;
LABEL_3:
    v27 = 0;
    while (1)
    {
      if (*v55 != v26)
      {
        objc_enumerationMutation(v19);
      }

      v28 = *(*(&v54 + 1) + 8 * v27);
      if (objc_msgSend_isEqualToString_(v53, v22, v28, v23))
      {
        goto LABEL_11;
      }

      v31 = objc_msgSend_stringByAppendingPathExtension_(v15, v29, v28, v30);

      v35 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v32, v33, v34);
      v38 = objc_msgSend_fileExistsAtPath_(v35, v36, v31, v37);

      if (v38)
      {
        goto LABEL_14;
      }

      v42 = objc_msgSend_uppercaseString(v28, v39, v40, v41);
      v25 = objc_msgSend_stringByAppendingPathExtension_(v15, v43, v42, v44);

      v48 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v45, v46, v47);
      LOBYTE(v42) = objc_msgSend_fileExistsAtPath_(v48, v49, v25, v50);

      if (v42)
      {
        break;
      }

      if (v24 == ++v27)
      {
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v54, v58, 16);
        if (v24)
        {
          goto LABEL_3;
        }

LABEL_11:

        v31 = 0;
        goto LABEL_14;
      }
    }

    v31 = v25;
LABEL_14:
    v11 = v52;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

+ (id)attachmentIsSyndicatableMediaKey
{
  if (qword_1EDBE5C70 != -1)
  {
    sub_1B7CFA3EC();
  }

  v3 = qword_1EDBE5C78;

  return v3;
}

+ (id)livePhotoComplementKey
{
  if (qword_1EDBE5C48 != -1)
  {
    sub_1B7CFA400();
  }

  v3 = qword_1EDBE5C50;

  return v3;
}

+ (id)momentShareURLKey
{
  if (qword_1EBA541B8 != -1)
  {
    sub_1B7CFA414();
  }

  v3 = qword_1EBA541B0;

  return v3;
}

+ (id)assetUUIDKey
{
  if (qword_1EBA541C8 != -1)
  {
    sub_1B7CFA428();
  }

  v3 = qword_1EBA541C0;

  return v3;
}

@end