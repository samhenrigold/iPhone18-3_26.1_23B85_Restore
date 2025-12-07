@interface IMDCoreSpotlightMessageMetadataIndexer
+ (BOOL)isMutedChatForChatDictionary:(id)dictionary;
+ (int)_spotlightEffectTypeForItemDictionary:(id)dictionary;
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageMetadataIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  v211[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  v196 = objc_msgSend_objectForKey_(itemCopy, v14, @"time", v15);
  v19 = objc_msgSend_distantPast(MEMORY[0x1E695DF00], v16, v17, v18);
  LODWORD(update) = objc_msgSend_isEqualToDate_(v196, v20, v19, v21);

  if (update)
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "messageDate was distant past. Not setting contentCreationDate on metadataAttributes.", buf, 2u);
      }
    }
  }

  else if (v196)
  {
    objc_msgSend_setContentCreationDate_(updateCopy, v22, v196, v23);
  }

  v200 = objc_msgSend_objectForKey_(itemCopy, v22, @"accountID", v23);
  if (v200)
  {
    objc_msgSend_setAccountIdentifier_(updateCopy, v25, v200, v26);
  }

  v27 = objc_msgSend_objectForKey_(chatCopy, v25, @"lalh", v26);
  v199 = objc_msgSend__stripFZIDPrefix(v27, v28, v29, v30);

  if (v199)
  {
    v211[0] = v199;
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v31, v211, 1);
    objc_msgSend_setAccountHandles_(updateCopy, v34, v33, v35);
  }

  v36 = objc_msgSend_objectForKey_(itemCopy, v31, @"flags", v32);
  v40 = objc_msgSend_unsignedLongLongValue(v36, v37, v38, v39);

  v189 = (v40 >> 2) & 1;
  v43 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v41, v189, v42);
  objc_msgSend_setIsFromMe_(updateCopy, v44, v43, v45);

  v48 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v46, v189, v47);
  v52 = objc_msgSend_isFromMeCustomKey(self, v49, v50, v51);
  objc_msgSend_setValue_forCustomKey_(updateCopy, v53, v48, v52);

  v195 = objc_msgSend_objectForKey_(chatCopy, v54, @"participants", v55);
  v59 = objc_msgSend_count(v195, v56, v57, v58) > 1;
  v62 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v60, v59, v61);
  objc_msgSend_setIsGroupThread_(updateCopy, v63, v62, v64);

  objc_msgSend_reason(contextCopy, v65, v66, v67);
  IsIncomingMessage = IMCoreSpotlightIndexReasonIsIncomingMessage();
  v70 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v68, IsIncomingMessage, v69);
  objc_msgSend_setIsNew_(updateCopy, v71, v70, v72);

  v75 = objc_msgSend_objectForKey_(itemCopy, v73, @"attributedBody", v74);
  v193 = _IMDCoreSpotlightTokensMentionedInMessage(v75);
  v79 = objc_msgSend_mentionedAddressesCustomKey(self, v76, v77, v78);
  objc_msgSend_setValue_forCustomKey_(updateCopy, v80, v193, v79);

  v84 = objc_msgSend_length(v75, v81, v82, v83);
  v86 = objc_msgSend_attribute_existsInRange_(v75, v85, *MEMORY[0x1E69A5FF0], 0, v84);
  v89 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v87, v86, v88);
  objc_msgSend_setIsTwoFactorCode_(updateCopy, v90, v89, v91);

  v192 = objc_msgSend_objectForKey_(itemCopy, v92, @"handle", v93);
  v94 = MEMORY[0x1B8CAF990](v192);
  v97 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v95, v94, v96);
  v101 = objc_msgSend_isBusinessChatCustomKey(self, v98, v99, v100);
  objc_msgSend_setValue_forCustomKey_(updateCopy, v102, v97, v101);

  v198 = objc_msgSend_objectForKey_(itemCopy, v103, @"service", v104);
  if (v198)
  {
    objc_msgSend_setMessageService_(updateCopy, v105, v198, v106);
  }

  isMutedChatForChatDictionary = objc_msgSend_isMutedChatForChatDictionary_(self, v105, chatCopy, v106);
  v191 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v108, isMutedChatForChatDictionary, v109);
  v190 = objc_msgSend_isChatMutedCustomKey(self, v110, v111, v112);
  objc_msgSend_setValue_forCustomKey_(updateCopy, v113, v191, v190);
  v116 = objc_msgSend__spotlightEffectTypeForItemDictionary_(self, v114, itemCopy, v115);
  objc_msgSend_setMessageEffectType_(updateCopy, v117, v116, v118);
  v122 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v119, v120, v121);
  isAutomaticIncomingTranslationEnabled = objc_msgSend_isAutomaticIncomingTranslationEnabled(v122, v123, v124, v125);

  if (isAutomaticIncomingTranslationEnabled)
  {
    v130 = objc_msgSend_isTranslatedCustomKey(self, v127, v128, v129);
    v187 = objc_msgSend_objectForKey_(itemCopy, v131, @"messageSummaryInfo", v132);
    v138 = objc_msgSend_objectForKeyedSubscript_(v187, v133, *MEMORY[0x1E69A7278], v134);
    if (v138)
    {
      v185 = objc_msgSend_translationMessagePartClasses(MEMORY[0x1E69A8138], v135, v136, v137);
      v202 = 0;
      v186 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x1E696ACD0], v139, v185, v138, &v202);
      if (v186)
      {
        v143 = objc_msgSend_allValues(v186, v140, v141, v142);
        v147 = objc_msgSend_firstObject(v143, v144, v145, v146);
        v184 = objc_msgSend_firstObject(v147, v148, v149, v150);

        v153 = v184;
        if (v184)
        {
          v154 = objc_msgSend_objectForKey_(v184, v151, @"translatedText", v152);
          v158 = objc_msgSend_string(v154, v155, v156, v157);

          v160 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v158, v159, *MEMORY[0x1E69A5F00], &stru_1F2FA9728);
          v162 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v160, v161, *MEMORY[0x1E69A5F20], &stru_1F2FA9728);

          objc_msgSend_setTextContent_(updateCopy, v163, v162, v164);
          v153 = v184;
        }
      }

      v165 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v140, 1, v142);
      objc_msgSend_setValue_forCustomKey_(updateCopy, v166, v165, v130);
    }

    v167 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v135, 0, v137);
    objc_msgSend_setValue_forCustomKey_(updateCopy, v168, v167, v130);
  }

  v169 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v127, v128, v129);
  isPriorityMessagesEnabled = objc_msgSend_isPriorityMessagesEnabled(v169, v170, v171, v172);

  if ((IsIncomingMessage & isPriorityMessagesEnabled) == 1 && ((v189 | objc_msgSend_needsPriorityCheck(contextCopy, v174, v175, v176) ^ 1) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v180 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v180, OS_LOG_TYPE_INFO, "Asking Text Understanding for time sensitive check ", buf, 2u);
      }
    }

    v181 = objc_msgSend__checkTimeSensitiveCustomKey(self, v177, v178, v179);
    objc_msgSend_setValue_forCustomKey_(updateCopy, v182, MEMORY[0x1E695E118], v181);
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v174, v175, v176) && IMOSLoggingEnabled())
  {
    v183 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      v204 = v196;
      v205 = 2112;
      v206 = v200;
      v207 = 2112;
      v208 = v199;
      v209 = 2112;
      v210 = v198;
      _os_log_impl(&dword_1B7AD5000, v183, OS_LOG_TYPE_INFO, "setting date %@ accountID %@ lastAddressedLocalHandle %@ service %@", buf, 0x2Au);
    }
  }
}

+ (BOOL)isMutedChatForChatDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_msgSend_objectForKey_(dictionaryCopy, v4, @"chatIdentifier", v5);
  v9 = objc_msgSend_objectForKey_(dictionaryCopy, v7, @"style", v8);
  v13 = objc_msgSend_intValue(v9, v10, v11, v12);

  v16 = objc_msgSend_objectForKey_(dictionaryCopy, v14, @"groupID", v15);
  v19 = objc_msgSend_objectForKey_(dictionaryCopy, v17, @"participants", v18);
  v22 = objc_msgSend_arrayByApplyingSelector_(v19, v20, sel__stripFZIDPrefix, v21);
  v25 = objc_msgSend_objectForKey_(dictionaryCopy, v23, @"lalh", v24);
  v29 = objc_msgSend__stripFZIDPrefix(v25, v26, v27, v28);

  v32 = objc_msgSend_objectForKey_(dictionaryCopy, v30, @"originalGroupID", v31);
  v36 = objc_msgSend_sharedList(MEMORY[0x1E69A8180], v33, v34, v35);
  v39 = objc_msgSend_objectForKey_(dictionaryCopy, v37, @"DomainIdentifiers", v38);

  v41 = objc_msgSend_muteIdentifiersForChatStyle_groupID_domainIdentifiers_participantIDs_lastAddressedHandleID_originalGroupID_chatIdentifier_(v36, v40, v13, v16, v39, v22, v29, v32, v6);
  isMutedChatForMuteIdentifiers = objc_msgSend_isMutedChatForMuteIdentifiers_(v36, v42, v41, v43);

  return isMutedChatForMuteIdentifiers;
}

+ (int)_spotlightEffectTypeForItemDictionary:(id)dictionary
{
  v4 = objc_msgSend_objectForKey_(dictionary, a2, @"expressiveSendStyleID", v3);
  if (objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x1E69A7D78], v6))
  {
    v9 = 5;
  }

  else if (objc_msgSend_isEqualToString_(v4, v7, *MEMORY[0x1E69A7D48], v8))
  {
    v9 = 8;
  }

  else if (objc_msgSend_isEqualToString_(v4, v10, *MEMORY[0x1E69A7D58], v11))
  {
    v9 = 9;
  }

  else if (objc_msgSend_isEqualToString_(v4, v12, *MEMORY[0x1E69A7D80], v13))
  {
    v9 = 11;
  }

  else if (objc_msgSend_isEqualToString_(v4, v14, *MEMORY[0x1E69A7D68], v15))
  {
    v9 = 12;
  }

  else if (objc_msgSend_isEqualToString_(v4, v16, *MEMORY[0x1E69A7D98], v17))
  {
    v9 = 14;
  }

  else if (objc_msgSend_isEqualToString_(v4, v18, *MEMORY[0x1E69A7D50], v19))
  {
    v9 = 13;
  }

  else if (objc_msgSend_isEqualToString_(v4, v20, *MEMORY[0x1E69A7D90], v21))
  {
    v9 = 10;
  }

  else if (objc_msgSend_isEqualToString_(v4, v22, *MEMORY[0x1E69A7D60], v23))
  {
    v9 = 6;
  }

  else if (objc_msgSend_isEqualToString_(v4, v24, *MEMORY[0x1E69A7DA8], v25))
  {
    v9 = 7;
  }

  else if (objc_msgSend_isEqualToString_(v4, v26, *MEMORY[0x1E69A7DA0], v27))
  {
    v9 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v4, v28, *MEMORY[0x1E69A7D88], v29))
  {
    v9 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v4, v30, *MEMORY[0x1E69A7D70], v31))
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end