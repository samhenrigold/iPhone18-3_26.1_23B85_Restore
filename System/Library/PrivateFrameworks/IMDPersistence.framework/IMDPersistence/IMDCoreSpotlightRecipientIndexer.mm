@interface IMDCoreSpotlightRecipientIndexer
+ (id)_contactForURI:(id)i;
+ (id)_createCSPersonForParticipantID:(id)d messageService:(id)service timingProfiler:(id)profiler timingIteration:(int64_t)iteration;
+ (id)_handleIDForHandleID:(id)d;
+ (id)_selfCSPersonFromHandleID:(id)d messageService:(id)service;
+ (id)groupPhotoPathCustomKey;
+ (id)suggestedContactNameCustomKey;
+ (id)suggestedContactPhotoCustomKey;
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightRecipientIndexer

+ (id)suggestedContactNameCustomKey
{
  if (qword_1EBA54198 != -1)
  {
    sub_1B7CFA2E4();
  }

  v3 = qword_1EBA54190;

  return v3;
}

+ (id)suggestedContactPhotoCustomKey
{
  if (qword_1EBA541A8 != -1)
  {
    sub_1B7CFA2F8();
  }

  v3 = qword_1EBA541A0;

  return v3;
}

+ (id)groupPhotoPathCustomKey
{
  if (qword_1EDBE5E80 != -1)
  {
    sub_1B7CFA30C();
  }

  v3 = qword_1EDBE5E88;

  return v3;
}

+ (id)_createCSPersonForParticipantID:(id)d messageService:(id)service timingProfiler:(id)profiler timingIteration:(int64_t)iteration
{
  profilerCopy = profiler;
  serviceCopy = service;
  dCopy = d;
  v15 = objc_msgSend__contactForURI_(self, v13, dCopy, v14);
  objc_msgSend_startTimingForKey_iteration_(profilerCopy, v16, @"IMDCoreSpotlightFullNameForContactProfilingKey", iteration);
  v20 = objc_msgSend_sharedInstance(IMDContactCache, v17, v18, v19);
  v23 = objc_msgSend_fullNameForContact_(v20, v21, v15, v22);

  objc_msgSend_stopTimingForKey_iteration_(profilerCopy, v24, @"IMDCoreSpotlightFullNameForContactProfilingKey", iteration);
  objc_msgSend_startTimingForKey_iteration_(profilerCopy, v25, @"IMDCoreSpotlightContactsHandleIDForHandler", iteration);
  v28 = objc_msgSend__handleIDForHandleID_(self, v26, dCopy, v27);

  objc_msgSend_stopTimingForKey_iteration_(profilerCopy, v29, @"IMDCoreSpotlightContactsHandleIDForHandler", iteration);
  if (!v23)
  {
    v23 = objc_msgSend_im_stripCategoryLabel(v28, v30, v31, v32);
  }

  objc_msgSend_startTimingForKey_iteration_(profilerCopy, v30, @"IMDCoreSpotlightCreateCoreSpotlightPerson", iteration);
  v33 = _IMDCoreSpotlightPerson(v23, v28, v15, serviceCopy);

  objc_msgSend_stopTimingForKey_iteration_(profilerCopy, v34, @"IMDCoreSpotlightCreateCoreSpotlightPerson", iteration);

  return v33;
}

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  v349 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  started = objc_msgSend_startTimingForKey_(profilerCopy, v13, @"IMDCoreRecentsApiInitProfilingKey", v14);
  _IMDCoreRecentsApiInit(started, v16, v17, v18);
  v318 = profilerCopy;
  objc_msgSend_stopTimingForKey_(profilerCopy, v19, @"IMDCoreRecentsApiInitProfilingKey", v20);
  v312 = __PAIR128__(IMDCoreSpotlightRecipientIndexer_TestHandleID, IMDCoreSpotlightRecipientIndexer_TestContact) == 0;
  v307 = chatCopy;
  v23 = objc_msgSend_objectForKey_(chatCopy, v21, @"participants", v22);
  v315 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v311 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v310 = objc_msgSend_objectForKey_(itemCopy, v24, @"time", v25);
  v319 = objc_msgSend_objectForKey_(itemCopy, v26, @"service", v27);
  v30 = objc_msgSend_objectForKey_(chatCopy, v28, @"lalh", v29);
  v304 = objc_msgSend__stripFZIDPrefix(v30, v31, v32, v33);

  v36 = objc_msgSend_objectForKey_(itemCopy, v34, @"flags", v35);
  LOBYTE(context) = objc_msgSend_unsignedLongLongValue(v36, v37, v38, v39);

  contextCopy2 = context;
  if ((context & 4) != 0)
  {
    v50 = v304;
  }

  else
  {
    v42 = objc_msgSend_objectForKey_(itemCopy, v40, @"handle", v41);
    v46 = objc_msgSend__stripFZIDPrefix(v42, v43, v44, v45);
    v50 = objc_msgSend_im_stripCategoryLabel(v46, v47, v48, v49);
  }

  v306 = v50;
  v299 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v51, @"%@:%@", v52, v319, v50);
  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v53, v54, v55) && IMOSLoggingEnabled())
  {
    v56 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v60 = objc_msgSend_count(v23, v57, v58, v59);
      v61 = @"YES";
      *buf = 134219522;
      v336 = v60;
      v337 = 2112;
      if ((contextCopy2 & 4) == 0)
      {
        v61 = @"NO";
      }

      v338 = v310;
      v339 = 2112;
      v340 = v319;
      v341 = 2112;
      v342 = v304;
      v343 = 2112;
      v344 = v61;
      v345 = 2112;
      v346 = v50;
      v347 = 2112;
      v348 = v299;
      _os_log_impl(&dword_1B7AD5000, v56, OS_LOG_TYPE_INFO, "Got %lu participants, date %@ service %@ lastAddressedLocalHandle %@ isFromMe %@ senderID %@ sendingAddress %@", buf, 0x48u);
    }
  }

  v326 = 0u;
  v327 = 0u;
  v324 = 0u;
  v325 = 0u;
  obj = v23;
  v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, &v324, v334, 16);
  if (v64)
  {
    v65 = 0;
    v66 = *v325;
    do
    {
      for (i = 0; i != v64; ++i)
      {
        if (*v325 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v68 = objc_msgSend__createCSPersonForParticipantID_messageService_timingProfiler_timingIteration_(self, v63, *(*(&v324 + 1) + 8 * i), v319, v318, v65);
        v72 = objc_msgSend_handles(v68, v69, v70, v71);
        v76 = objc_msgSend_firstObject(v72, v73, v74, v75);

        v77 = _IMDCoreRecentsKindForHandleID(v76, v319);
        if ((objc_msgSend_isReindexing(contextCopy, v78, v79, v80) & 1) == 0)
        {
          v84 = v76 && v312;
          if (v84 && v77 != 0)
          {
            objc_msgSend_startTimingForKey_iteration_(v318, v81, @"IMDCoreSpotlightCoreRecentsRecentEventForAddress", v65);
            v86 = MEMORY[0x1E6998FC8];
            v90 = objc_msgSend_displayName(v68, v87, v88, v89);
            v92 = objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(v86, v91, v76, v90, v77, v310, 0, 0, 1);

            objc_msgSend_addObject_(v311, v93, v92, v94);
            objc_msgSend_stopTimingForKey_iteration_(v318, v95, @"IMDCoreSpotlightCoreRecentsRecentEventForAddress", v65);
          }
        }

        if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v81, v82, v83) && IMOSLoggingEnabled())
        {
          v98 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v336 = v68;
            _os_log_impl(&dword_1B7AD5000, v98, OS_LOG_TYPE_INFO, "Adding name %@", buf, 0xCu);
          }
        }

        if (v68)
        {
          objc_msgSend_addObject_(v315, v96, v68, v97);
        }

        ++v65;
      }

      v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v63, &v324, v334, 16);
    }

    while (v64);
    v99 = v65 + 1;
  }

  else
  {
    v99 = 1;
  }

  v103 = _IMDCoreSpotlightChatUIDForChatDictionary(v307);
  if (v103)
  {
    v104 = objc_msgSend_chatUniqueIdentifierKey(self, v100, v101, v102);
    objc_msgSend_setValue_forCustomKey_(updateCopy, v105, v103, v104);
  }

  v309 = objc_msgSend_objectForKeyedSubscript_(v307, v100, @"groupPhotoPath", v102);
  v108 = objc_msgSend_objectForKey_(v307, v106, @"groupName", v107);
  v110 = objc_msgSend_integerValueForKey_withDefault_(v307, v109, @"isFiltered", 0);
  shouldDisplayGroupNameAndPhotoWith_handles = objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(IMDGroupNameAndPhotoHelper, v111, v110, obj);
  if (shouldDisplayGroupNameAndPhotoWith_handles)
  {
    v115 = v108;
  }

  else
  {

    v115 = 0;
    v309 = 0;
  }

  v300 = v115;
  if (objc_msgSend_length(v115, v112, v113, v114))
  {
    objc_msgSend_setDisplayName_(updateCopy, v116, v300, v118);
  }

  v119 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v116, v117, v118);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v119, v120, v121, v122);

  if ((isSpotlightRefactorEnabled & 1) == 0)
  {
    v127 = [IMDINInteractionMessageDonationJob alloc];
    v130 = objc_msgSend_initWithContext_(v127, v128, contextCopy, v129);
    objc_msgSend_processMessageDictionary_chatDictionary_(v130, v131, itemCopy, v307);
    objc_msgSend_finishWithCompletion_(v130, v132, &unk_1F2FA1190, v133);
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v124, v125, v126) && IMOSLoggingEnabled())
  {
    v137 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v137, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v336 = v315;
      _os_log_impl(&dword_1B7AD5000, v137, OS_LOG_TYPE_INFO, "generated CSPersons %@", buf, 0xCu);
    }
  }

  if (!(objc_msgSend_isReindexing(contextCopy, v134, v135, v136) & 1 | !v312) && objc_msgSend_count(v311, v138, v139, v140) && objc_msgSend_count(obj, v138, v139, v140) == 1)
  {
    v141 = objc_msgSend_sharedInstance(IMDCoreSpotlightDispatchObject, v138, v139, v140);
    v145 = objc_msgSend_recentsInstance(v141, v142, v143, v144);
    objc_msgSend_recordContactEvents_recentsDomain_sendingAddress_source_userInitiated_(v145, v146, v311, *MEMORY[0x1E6998FB0], v299, @"com.apple.MobileSMS", 1);
  }

  if (v304 != 0 && v312)
  {
    objc_msgSend_startTimingForKey_(v318, v138, @"IMDCoreSpotlightCreateCoreSpotlightPersonForHandleID", v140);
    v313 = objc_msgSend__selfCSPersonFromHandleID_messageService_(self, v147, v304, v319);
    objc_msgSend_stopTimingForKey_(v318, v148, @"IMDCoreSpotlightCreateCoreSpotlightPersonForHandleID", v149);
  }

  else
  {
    v313 = 0;
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v138, v139, v140) && IMOSLoggingEnabled())
  {
    v152 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v336 = v313;
      _os_log_impl(&dword_1B7AD5000, v152, OS_LOG_TYPE_INFO, "generated self person %@", buf, 0xCu);
    }
  }

  v153 = (contextCopy2 & 4) == 0;
  v302 = objc_msgSend_objectForKey_(itemCopy, v150, @"handle", v151);
  v156 = MEMORY[0x1E696AD98];
  if (v153)
  {
    IsKnownContact = _IMDCoreSpotlightIsKnownContact(v302);
    v160 = objc_msgSend_numberWithInt_(v156, v158, IsKnownContact, v159);
    objc_msgSend_setIsMessageFromKnownSender_(updateCopy, v161, v160, v162);

    objc_msgSend_startTimingForKey_(v318, v163, @"IMDCoreSpotlightAddAuthorDataTimingKey", v164);
    if (objc_msgSend_containsObject_(obj, v165, v306, v166))
    {
      v322 = 0u;
      v323 = 0u;
      v320 = 0u;
      v321 = 0u;
      v168 = v315;
      v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v169, &v320, v333, 16);
      if (v173)
      {
        v174 = *v321;
        while (2)
        {
          for (j = 0; j != v173; ++j)
          {
            if (*v321 != v174)
            {
              objc_enumerationMutation(v168);
            }

            v176 = *(*(&v320 + 1) + 8 * j);
            v177 = objc_msgSend_handles(v176, v170, v171, v172);
            v181 = objc_msgSend_firstObject(v177, v178, v179, v180);

            if (objc_msgSend_isEqualToString_(v181, v182, v306, v183))
            {
              v184 = v176;

              goto LABEL_83;
            }
          }

          v173 = objc_msgSend_countByEnumeratingWithState_objects_count_(v168, v170, &v320, v333, 16);
          if (v173)
          {
            continue;
          }

          break;
        }
      }

      v184 = 0;
LABEL_83:
    }

    else
    {
      v184 = objc_msgSend__createCSPersonForParticipantID_messageService_timingProfiler_timingIteration_(self, v167, v306, v319, v318, v99);
    }

    if (v184)
    {
      if (MEMORY[0x1B8CAF990](v302))
      {
        v332 = v300;
        v201 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v200, &v332, 1);
        objc_msgSend_setAuthorNames_(updateCopy, v202, v201, v203);
      }

      else
      {
        v331 = v184;
        v201 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v200, &v331, 1);
        objc_msgSend_setAuthors_(updateCopy, v205, v201, v206);
      }

      v208 = v306;
      if (v306)
      {
        v330 = v306;
        v209 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v207, &v330, 1);
        objc_msgSend_setAuthorAddresses_(updateCopy, v210, v209, v211);

        v208 = v306;
      }

      v204 = _IMDNicknameInfoForAddress(v208);
      v212 = objc_alloc(MEMORY[0x1E69A8190]);
      v215 = objc_msgSend_initWithDictionaryRepresentation_(v212, v213, v204, v214);
      v216 = _IMDContactNameForNickname(v215, 0);
      v220 = objc_msgSend_avatar(v215, v217, v218, v219);
      v224 = objc_msgSend_imageFilePath(v220, v221, v222, v223);

      if (objc_msgSend_length(v216, v225, v226, v227))
      {
        if (IMOSLoggingEnabled())
        {
          v234 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v234, OS_LOG_TYPE_INFO))
          {
            v238 = MEMORY[0x1E696AD98];
            v239 = objc_msgSend_length(v216, v235, v236, v237);
            v242 = objc_msgSend_numberWithUnsignedInteger_(v238, v240, v239, v241);
            *buf = 138412290;
            v336 = v242;
            _os_log_impl(&dword_1B7AD5000, v234, OS_LOG_TYPE_INFO, " Adding profile name of length %@ ", buf, 0xCu);
          }
        }

        v243 = objc_msgSend_suggestedContactNameCustomKey(self, v231, v232, v233);
        objc_msgSend_setValue_forCustomKey_(updateCopy, v244, v216, v243);
      }

      if (objc_msgSend_length(v224, v228, v229, v230))
      {
        if (IMOSLoggingEnabled())
        {
          v250 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v250, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v250, OS_LOG_TYPE_INFO, " Adding profile avatar path ", buf, 2u);
          }
        }

        v251 = objc_msgSend_suggestedContactPhotoCustomKey(self, v247, v248, v249);
        objc_msgSend_setValue_forCustomKey_(updateCopy, v252, v224, v251);
      }

      objc_msgSend_removeObject_(v315, v245, v184, v246);
      if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v253, v254, v255) && IMOSLoggingEnabled())
      {
        v256 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v256, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v336 = v184;
          v337 = 2112;
          v338 = v306;
          _os_log_impl(&dword_1B7AD5000, v256, OS_LOG_TYPE_INFO, "Adding author %@ author senderID %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v204 = IMLogHandleForCategory();
      if (os_log_type_enabled(v204, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFA348(v204);
      }
    }

    if (v313)
    {
      objc_msgSend_insertObject_atIndex_(v315, v257, v313, 0);
    }

    objc_msgSend_stopTimingForKey_(v318, v257, @"IMDCoreSpotlightAddAuthorDataTimingKey", v258);
  }

  else
  {
    v185 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v154, 1, v155);
    objc_msgSend_setIsMessageFromKnownSender_(updateCopy, v186, v185, v187);

    if (v313)
    {
      v329 = v313;
      v190 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v188, &v329, 1);
      objc_msgSend_setAuthors_(updateCopy, v191, v190, v192);

      if (v304)
      {
        v328 = v304;
        v196 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v193, &v328, 1);
        objc_msgSend_setAuthorAddresses_(updateCopy, v197, v196, v198);
      }

      if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v193, v194, v195) && IMOSLoggingEnabled())
      {
        v199 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v199, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v336 = v313;
          v337 = 2112;
          v338 = v304;
          _os_log_impl(&dword_1B7AD5000, v199, OS_LOG_TYPE_INFO, "Adding author %@ author senderID %@", buf, 0x16u);
        }
      }
    }
  }

  objc_msgSend_setPrimaryRecipients_(updateCopy, v188, v315, v189);
  v261 = objc_msgSend___imArrayByApplyingBlock_(v315, v259, &unk_1F2FA11B0, v260);
  objc_msgSend_setRecipientAddresses_(updateCopy, v262, v261, v263);
  v266 = objc_msgSend_objectForKey_(v307, v264, @"guid", v265);
  v270 = objc_msgSend_im_lastPathComponent(v309, v267, v268, v269);
  v274 = IMSharedHelperExternalLocationForFile();
  if (shouldDisplayGroupNameAndPhotoWith_handles)
  {
    v275 = objc_msgSend_groupPhotoPathCustomKey(self, v271, v272, v273);
    objc_msgSend_setValue_forCustomKey_(updateCopy, v276, v274, v275);

    objc_msgSend_setGroupPhotoPath_(updateCopy, v277, v274, v278);
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v271, v272, v273))
  {
    if (IMOSLoggingEnabled())
    {
      v279 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v279, OS_LOG_TYPE_INFO))
      {
        v283 = objc_msgSend_primaryRecipients(updateCopy, v280, v281, v282);
        *buf = 138412290;
        v336 = v283;
        _os_log_impl(&dword_1B7AD5000, v279, OS_LOG_TYPE_INFO, "Setting primary recipients %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v284 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v284, OS_LOG_TYPE_INFO))
      {
        v288 = objc_msgSend_recipientAddresses(updateCopy, v285, v286, v287);
        *buf = 138412290;
        v336 = v288;
        _os_log_impl(&dword_1B7AD5000, v284, OS_LOG_TYPE_INFO, "Setting primary recipient IDs %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v289 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v289, OS_LOG_TYPE_INFO))
      {
        v293 = objc_msgSend_authors(updateCopy, v290, v291, v292);
        *buf = 138412290;
        v336 = v293;
        _os_log_impl(&dword_1B7AD5000, v289, OS_LOG_TYPE_INFO, "Setting author %@", buf, 0xCu);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v294 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v294, OS_LOG_TYPE_INFO))
      {
        v298 = objc_msgSend_authorAddresses(updateCopy, v295, v296, v297);
        *buf = 138412290;
        v336 = v298;
        _os_log_impl(&dword_1B7AD5000, v294, OS_LOG_TYPE_INFO, "Setting author IDs %@", buf, 0xCu);
      }
    }
  }
}

+ (id)_contactForURI:(id)i
{
  if (IMDCoreSpotlightRecipientIndexer_TestContact)
  {
    v3 = IMDCoreSpotlightRecipientIndexer_TestContact;
  }

  else
  {
    v3 = _IMDCoreSpotlightCNContactForAddress(i);
  }

  return v3;
}

+ (id)_handleIDForHandleID:(id)d
{
  dCopy = d;
  v4 = dCopy;
  v5 = IMDCoreSpotlightRecipientIndexer_TestHandleID;
  if (!IMDCoreSpotlightRecipientIndexer_TestHandleID)
  {
    v5 = dCopy;
  }

  v6 = v5;

  return v6;
}

+ (id)_selfCSPersonFromHandleID:(id)d messageService:(id)service
{
  dCopy = d;
  serviceCopy = service;
  v7 = _IMDCoreSpotlightCNContactForAddress(dCopy);
  v11 = objc_msgSend_sharedInstance(IMDContactCache, v8, v9, v10);
  v14 = objc_msgSend_fullNameForContact_(v11, v12, v7, v13);

  if (!v14)
  {
    v14 = dCopy;
  }

  v15 = _IMDCoreSpotlightPerson(v14, dCopy, v7, serviceCopy);

  return v15;
}

@end