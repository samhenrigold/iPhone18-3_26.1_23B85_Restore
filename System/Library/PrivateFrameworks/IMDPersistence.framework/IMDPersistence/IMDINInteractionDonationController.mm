@interface IMDINInteractionDonationController
+ (id)sharedController;
- (id)_createSOSImage;
- (id)createImageForNickname:(id)nickname;
- (id)createInteractionWithContext:(id)context updateHandler:(id)handler;
- (id)createPersonFromHandle:(id)handle contact:(id)contact context:(id)context interactionUpdatedHandler:(id)handler;
- (id)createPersonHandleFromHandle:(id)handle contact:(id)contact;
- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection;
@end

@implementation IMDINInteractionDonationController

+ (id)sharedController
{
  if (qword_1EBA53AD8 != -1)
  {
    sub_1B7CF83B0();
  }

  v3 = qword_1EBA53AA8;

  return v3;
}

- (id)createPersonHandleFromHandle:(id)handle contact:(id)contact
{
  v55 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contactCopy = contact;
  if (!MEMORY[0x1B8CAF9C0](handleCopy))
  {
    if (!IMStringIsEmail())
    {
      v19 = 0;
      v21 = 0;
      goto LABEL_35;
    }

    if (!contactCopy)
    {
      v19 = 0;
      v21 = 1;
      goto LABEL_35;
    }

    v13 = IMNormalizeFormattedString();
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = objc_msgSend_emailAddresses(contactCopy, v27, v28, v29);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v30, &v45, v53, 16);
    if (!v19)
    {
      v21 = 1;
      goto LABEL_33;
    }

    v44 = contactCopy;
    v34 = *v46;
    v21 = 1;
    while (2)
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v46 != v34)
        {
          objc_enumerationMutation(v14);
        }

        v36 = objc_msgSend_value(*(*(&v45 + 1) + 8 * i), v31, v32, v33);
        v37 = IMNormalizeFormattedString();

        if (objc_msgSend_isEqual_(v37, v38, v13, v39))
        {
          v19 = INPersonHandleLabelForCNLabeledValue();

          v21 = 1;
          goto LABEL_29;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v31, &v45, v53, 16);
      if (v19)
      {
        continue;
      }

      goto LABEL_29;
    }
  }

  if (!contactCopy)
  {
    v19 = 0;
    v21 = 2;
    goto LABEL_35;
  }

  v7 = objc_alloc(MEMORY[0x1E695CF50]);
  v13 = objc_msgSend_initWithStringValue_(v7, v8, handleCopy, v9);
  if (v13)
  {
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v14 = objc_msgSend_phoneNumbers(contactCopy, v10, v11, v12);
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v49, v54, 16);
    if (!v19)
    {
      v21 = 2;
      goto LABEL_33;
    }

    v44 = contactCopy;
    v20 = *v50;
    v21 = 2;
    while (2)
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v23 = objc_msgSend_value(*(*(&v49 + 1) + 8 * j), v16, v17, v18);
        isLikePhoneNumber = objc_msgSend_isLikePhoneNumber_(v23, v24, v13, v25);

        if (isLikePhoneNumber)
        {
          v19 = INPersonHandleLabelForCNLabeledValue();
          v21 = 2;
          goto LABEL_29;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v16, &v49, v54, 16);
      if (v19)
      {
        continue;
      }

      break;
    }

LABEL_29:
    contactCopy = v44;
LABEL_33:

    goto LABEL_34;
  }

  v19 = 0;
  v21 = 2;
LABEL_34:

LABEL_35:
  v40 = objc_alloc(MEMORY[0x1E696E948]);
  v42 = objc_msgSend_initWithValue_type_label_(v40, v41, handleCopy, v21, v19);

  return v42;
}

- (id)createImageForNickname:(id)nickname
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_avatar(nickname, a2, nickname, v3);
  if (objc_msgSend_imageExists(v4, v5, v6, v7))
  {
    v11 = objc_msgSend_imageFilePath(v4, v8, v9, v10);
    if (objc_msgSend_length(v11, v12, v13, v14))
    {
      v17 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v15, v11, v16);
      v20 = objc_msgSend_imageWithURL_(MEMORY[0x1E696E868], v18, v17, v19);
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = 138412290;
        v24 = v11;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Using image file path: %@", &v23, 0xCu);
      }
    }

    else
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Image file path is nil", &v23, 2u);
      }

      v20 = 0;
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_1B7AD5000, v11, OS_LOG_TYPE_INFO, "Image does not exist at nickname file path", &v23, 2u);
    }

    v20 = 0;
  }

  return v20;
}

- (id)_createSOSImage
{
  v4 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], a2, v2, v3);
  v8 = objc_msgSend_resourcePath(v4, v5, v6, v7);

  v11 = objc_msgSend_stringByAppendingPathComponent_(v8, v9, @"Icons", v10);
  v14 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, @"SOS_lt_60.png", v13);

  v17 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v15, v14, v16);
  v20 = objc_msgSend_imageWithURL_(MEMORY[0x1E696E868], v18, v17, v19);

  return v20;
}

- (id)createPersonFromHandle:(id)handle contact:(id)contact context:(id)context interactionUpdatedHandler:(id)handler
{
  v127 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contactCopy = contact;
  contextCopy = context;
  handlerCopy = handler;
  v17 = objc_msgSend_identifier(contactCopy, v14, v15, v16);
  v19 = objc_msgSend_createPersonHandleFromHandle_contact_(self, v18, handleCopy, contactCopy);
  v22 = objc_msgSend_componentsForContact_(MEMORY[0x1E696ADF0], v20, contactCopy, v21);
  if (objc_msgSend_hasSuffix_(handleCopy, v23, *MEMORY[0x1E69A6EA0], v24))
  {
    v25 = IMSharedUtilitiesFrameworkBundle();
    objc_msgSend_localizedStringForKey_value_table_(v25, v26, @"TS_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    v28 = LABEL_5:;

    v32 = objc_msgSend__createSOSImage(self, v29, v30, v31);
    v33 = 0;
    goto LABEL_19;
  }

  if (IMIsStringStewieEmergency())
  {
    v25 = IMSharedUtilitiesFrameworkBundle();
    objc_msgSend_localizedStringForKey_value_table_(v25, v27, @"STEWIE_NOTIFICATION_EMERGENCY_SOS_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-SYDROB_FEATURES");
    goto LABEL_5;
  }

  if (IMIsStringStewieRoadside())
  {
    v37 = objc_msgSend_chatDisplayName(contextCopy, v34, v35, v36);
    v38 = v37;
    if (v37)
    {
      v28 = v37;
    }

    else
    {
      v48 = IMSharedUtilitiesFrameworkBundle();
      v28 = objc_msgSend_localizedStringForKey_value_table_(v48, v49, @"STEWIE_NOTIFICATION_ROADSIDE_HANDLE", &stru_1F2FA9728, @"IMSharedUtilities-Avocet");
    }

LABEL_18:

    v33 = 0;
    v32 = 0;
    goto LABEL_19;
  }

  if ((MEMORY[0x1B8CAF990](handleCopy) & 1) != 0 || objc_msgSend___im_isChatBot(handleCopy, v39, v40, v41))
  {
    v38 = objc_msgSend_sharedInstance(MEMORY[0x1E69A7F40], v39, v40, v41);
    v119[0] = MEMORY[0x1E69E9820];
    v119[1] = 3221225472;
    v119[2] = sub_1B7B85EE0;
    v119[3] = &unk_1E7CBB350;
    v120 = handlerCopy;
    v43 = objc_msgSend_businessNameForUID_updateHandler_(v38, v42, handleCopy, v119);
    if (objc_msgSend_length(v43, v44, v45, v46))
    {
      v47 = v43;
    }

    else
    {
      v50 = IMLogHandleForCategory();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v50, OS_LOG_TYPE_INFO, "No cached business name, using placeholder business name, will call interaction update handler if business name fetch completes", buf, 2u);
      }

      v47 = objc_msgSend_placeholderBusinessNameForBrandURI_(MEMORY[0x1E69A7F40], v51, handleCopy, v52);
    }

    v28 = v47;

    goto LABEL_18;
  }

  if (contactCopy && objc_msgSend_isCNContactAKnownContact_(MEMORY[0x1E69A7FD0], v39, contactCopy, v41))
  {
    v57 = objc_msgSend_sharedDefaults(MEMORY[0x1E695CE40], v39, v40, v41);
    v61 = objc_msgSend_shortNameFormatPrefersNicknames(v57, v58, v59, v60);
    v28 = _IMDCoreSpotlightFullNameForContact(contactCopy, v61);
    if (objc_msgSend_length(v28, v62, v63, v64))
    {
      log = v57;
      v65 = v28;
      v66 = IMLogHandleForCategory();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v122 = handleCopy;
        v123 = 2112;
        v124 = v65;
        v125 = 2112;
        v126 = v17;
        _os_log_impl(&dword_1B7AD5000, v66, OS_LOG_TYPE_INFO, "For handle %@ used contacts to determine displayName %@ and image. Using contactID: %@", buf, 0x20u);
      }

      v28 = v65;
      v57 = log;
    }
  }

  else
  {
    v28 = 0;
  }

  if (objc_msgSend_length(v28, v39, v40, v41))
  {
    v33 = 0;
    v32 = 0;
  }

  else
  {
    loga = v28;
    v70 = _IMDCoreSpotlightNicknameForAddress(handleCopy);
    if (v70)
    {
      v111 = v70;
      v71 = _IMDContactNameForNickname(v70, 0);
      v75 = objc_msgSend_length(v71, v72, v73, v74);
      v33 = v75 != 0;
      v109 = v71;
      if (v75)
      {
        v107 = v71;

        v32 = objc_msgSend_createImageForNickname_(self, v76, v111, v77);
        v78 = IMLogHandleForCategory();
        if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v122 = handleCopy;
          v123 = 2112;
          v124 = v107;
          v125 = 2112;
          v126 = v32;
          _os_log_impl(&dword_1B7AD5000, v78, OS_LOG_TYPE_INFO, "For handle %@ used nickname to determine displayName %@ and image %@", buf, 0x20u);
        }

        loga = v107;
      }

      else
      {
        v32 = 0;
      }

      v70 = v111;
    }

    else
    {
      v33 = 0;
      v32 = 0;
    }

    v28 = loga;
  }

  if (!objc_msgSend_length(v28, v67, v68, v69))
  {
    logb = v28;
    v82 = _IMDCoreSpotlightSuggestedNameForAddress(handleCopy);
    v112 = v82;
    if (objc_msgSend_length(v82, v83, v84, v85))
    {
      v86 = v82;

      v87 = IMLogHandleForCategory();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v122 = handleCopy;
        v123 = 2112;
        v124 = v86;
        _os_log_impl(&dword_1B7AD5000, v87, OS_LOG_TYPE_INFO, "For handle %@ used nickname to determine displayName %@ and no image", buf, 0x16u);
      }

      v33 = 1;
      logb = v86;
    }

    v28 = logb;
  }

  if (!objc_msgSend_length(v28, v79, v80, v81))
  {
    v113 = objc_msgSend_uncanonicalizedSenderHandleID(contextCopy, v88, v89, v90);
    if (!objc_msgSend_length(v113, v91, v92, v93))
    {
      v106 = v113;
LABEL_54:

      goto LABEL_19;
    }

    logc = v28;
    v110 = objc_msgSend_uncanonicalizedSenderHandleID(contextCopy, v94, v95, v96);
    v100 = objc_msgSend_lowercaseString(v110, v97, v98, v99);
    isEqualToString = objc_msgSend_isEqualToString_(handleCopy, v101, v100, v102);

    if (isEqualToString)
    {
      v28 = objc_msgSend_uncanonicalizedSenderHandleID(contextCopy, v103, v104, v105);

      logd = IMLogHandleForCategory();
      if (os_log_type_enabled(logd, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v122 = handleCopy;
        v123 = 2112;
        v124 = v28;
        _os_log_impl(&dword_1B7AD5000, logd, OS_LOG_TYPE_INFO, "For handle %@ used uncanonicalized address to determine displayName %@ and no image", buf, 0x16u);
      }

      v106 = logd;
      goto LABEL_54;
    }

    v28 = logc;
  }

LABEL_19:
  v53 = objc_alloc(MEMORY[0x1E696E940]);
  isContactSuggestion_suggestionType = objc_msgSend_initWithPersonHandle_nameComponents_displayName_image_contactIdentifier_customIdentifier_isContactSuggestion_suggestionType_(v53, v54, v19, v22, v28, v32, v17, 0, v33, 0);

  return isContactSuggestion_suggestionType;
}

- (id)createInteractionWithContext:(id)context updateHandler:(id)handler
{
  v313 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  v6 = 0x1E695D000uLL;
  v297 = objc_msgSend_array(MEMORY[0x1E695DF70], v7, v8, v9);
  v306 = 0u;
  v307 = 0u;
  v308 = 0u;
  v309 = 0u;
  v13 = objc_msgSend_chatParticipants(contextCopy, v10, v11, v12);
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v306, v312, 16);
  if (!v15)
  {

LABEL_17:
    v41 = IMLogHandleForCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "None of the current chat participants match the current senderID, creating a new person.", buf, 2u);
    }

    v45 = objc_msgSend_senderHandleID(contextCopy, v42, v43, v44);
    v21 = objc_msgSend_createPersonFromHandle_contact_context_interactionUpdatedHandler_(self, v46, v45, 0, contextCopy, handlerCopy);

    goto LABEL_20;
  }

  v19 = v15;
  v20 = contextCopy;
  v21 = 0;
  v22 = *v307;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v307 != v22)
      {
        objc_enumerationMutation(v13);
      }

      v24 = *(*(&v306 + 1) + 8 * i);
      v25 = objc_msgSend_handleID(v24, v16, v17, v18);
      v29 = objc_msgSend_contact(v24, v26, v27, v28);
      v31 = objc_msgSend_createPersonFromHandle_contact_context_interactionUpdatedHandler_(self, v30, v25, v29, v20, handlerCopy);

      if (objc_msgSend_isSender(v24, v32, v33, v34))
      {
        v37 = v21 == 0;
      }

      else
      {
        v37 = 0;
      }

      if (v37)
      {
        v21 = v31;
      }

      else
      {
        objc_msgSend_addObject_(v297, v35, v31, v36);
      }
    }

    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v306, v312, 16);
  }

  while (v19);

  contextCopy = v20;
  v6 = 0x1E695D000;
  if (!v21)
  {
    goto LABEL_17;
  }

LABEL_20:
  v47 = objc_msgSend_chatLastAddressedLocaleHandle(contextCopy, v38, v39, v40);
  v48 = MEMORY[0x1B8CAF9C0]();

  if (v48)
  {
    v52 = 2;
  }

  else
  {
    v53 = objc_msgSend_chatLastAddressedLocaleHandle(contextCopy, v49, v50, v51);
    LODWORD(v52) = IMStringIsEmail();

    v52 = v52;
  }

  v54 = objc_alloc(MEMORY[0x1E696E948]);
  v58 = objc_msgSend_chatLastAddressedLocaleHandle(contextCopy, v55, v56, v57);
  v60 = objc_msgSend_initWithValue_type_(v54, v59, v58, v52);

  v61 = objc_alloc(MEMORY[0x1E696E940]);
  v294 = v60;
  v63 = objc_msgSend_initWithPersonHandle_nameComponents_displayName_image_contactIdentifier_customIdentifier_(v61, v62, v60, 0, 0, 0, 0, 0);
  objc_msgSend_setIsMe_(v63, v64, 1, v65);
  v293 = v63;
  objc_msgSend_addObject_(v297, v66, v63, v67);
  v71 = objc_msgSend_chatStyle(contextCopy, v68, v69, v70);
  isFilteredValue = objc_msgSend_isFilteredValue(contextCopy, v72, v73, v74);
  v75 = contextCopy;
  v79 = objc_msgSend_chatParticipants(contextCopy, v76, v77, v78);
  v80 = objc_alloc_init(*(v6 + 3952));
  v301 = 0u;
  v302 = 0u;
  v303 = 0u;
  v304 = 0u;
  v81 = v79;
  v83 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v82, &v301, v311, 16);
  if (v83)
  {
    v87 = v83;
    v88 = *v302;
    do
    {
      for (j = 0; j != v87; ++j)
      {
        if (*v302 != v88)
        {
          objc_enumerationMutation(v81);
        }

        v90 = *(*(&v301 + 1) + 8 * j);
        v91 = objc_msgSend_handleID(v90, v84, v85, v86);

        if (v91)
        {
          v92 = objc_msgSend_handleID(v90, v84, v85, v86);
          objc_msgSend_addObject_(v80, v93, v92, v94);
        }
      }

      v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v81, v84, &v301, v311, 16);
    }

    while (v87);
  }

  if (v71 == 45)
  {
    v296 = 0;
    v96 = v75;
  }

  else
  {
    v96 = v75;
    if (objc_msgSend_shouldDisplayGroupNameAndPhotoWith_handles_(IMDGroupNameAndPhotoHelper, v95, isFilteredValue, v80) && (objc_msgSend_chatDisplayName(v75, v97, v98, v99), v100 = objc_claimAutoreleasedReturnValue(), v104 = objc_msgSend_length(v100, v101, v102, v103), v100, v104))
    {
      v105 = objc_alloc(MEMORY[0x1E696EA50]);
      v109 = objc_msgSend_chatGUID(v75, v106, v107, v108);
      v113 = objc_msgSend_chatDisplayName(v75, v110, v111, v112);
      v296 = objc_msgSend_initWithVocabularyIdentifier_spokenPhrase_pronunciationHint_(v105, v114, v109, v113, 0);
    }

    else
    {
      v296 = 0;
    }
  }

  v115 = objc_alloc(MEMORY[0x1E696E9E8]);
  v119 = objc_msgSend_messagePlainBody(v96, v116, v117, v118);
  v123 = objc_msgSend_chatGUID(v96, v120, v121, v122);
  v127 = objc_msgSend_serviceName(v96, v124, v125, v126);
  v129 = objc_msgSend_initWithRecipients_content_speakableGroupName_conversationIdentifier_serviceName_sender_(v115, v128, v297, v119, v296, v123, v127, v21);

  v133 = objc_msgSend_chatIdentifier(v96, v130, v131, v132);
  objc_msgSend_setNotificationThreadIdentifier_(v129, v134, v133, v135);

  objc_msgSend__setLaunchId_(v129, v136, @"com.apple.MobileSMS", v137);
  v141 = objc_msgSend_sharedInstance(IMDGroupPhotoDonationManager, v138, v139, v140);
  v145 = objc_msgSend_groupPhotoGuid(v96, v142, v143, v144);
  v149 = objc_msgSend_chatGUID(v96, v146, v147, v148);
  v153 = objc_msgSend_groupPhotoInternalFilePath(v96, v150, v151, v152);
  objc_msgSend_copyGroupPhotoToExternalPathIfNecessary_chatGUID_attachmentFilepath_(v141, v154, v145, v149, v153);

  v158 = objc_msgSend_groupPhotoInternalFilePath(v96, v155, v156, v157);
  v162 = objc_msgSend_im_lastPathComponent(v158, v159, v160, v161);

  v166 = objc_msgSend_chatGUID(v96, v163, v164, v165);
  v292 = v162;
  v167 = IMSharedHelperExternalLocationForFile();

  if (objc_msgSend_length(v167, v168, v169, v170))
  {
    v291 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v171, v167, v173);
    v177 = objc_msgSend_imageWithURL_(MEMORY[0x1E696E868], v174, v291, v175);
    if (v177)
    {
      objc_msgSend_setImage_forParameterNamed_(v129, v176, v177, @"speakableGroupName");
    }
  }

  else
  {
    v291 = 0;
  }

  v178 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v171, v172, v173);
  isTranscriptSharingEnabled = objc_msgSend_isTranscriptSharingEnabled(v178, v179, v180, v181);

  if (isTranscriptSharingEnabled)
  {
    v186 = objc_msgSend_chatIdentifier(v96, v183, v184, v185);
    hasPrefix = objc_msgSend_hasPrefix_(v186, v187, *MEMORY[0x1E69A7DB0], v188);

    if (hasPrefix)
    {
      v194 = objc_msgSend__createSOSImage(self, v190, v191, v192);
      if (v194)
      {
        objc_msgSend_setImage_forParameterNamed_(v129, v193, v194, @"speakableGroupName");
      }
    }
  }

  v299 = v167;
  v195 = objc_alloc_init(MEMORY[0x1E696E9F0]);
  isMentionOfMe = objc_msgSend_isMentionOfMe(v96, v196, v197, v198);
  objc_msgSend_setMentionsCurrentUser_(v195, v200, isMentionOfMe, v201);
  isReplyToMe = objc_msgSend_isReplyToMe(v96, v202, v203, v204);
  objc_msgSend_setReplyToCurrentUser_(v195, v206, isReplyToMe, v207);
  isNotifyAnyway = objc_msgSend_isNotifyAnyway(v96, v208, v209, v210);
  objc_msgSend_setNotifyRecipientAnyway_(v195, v212, isNotifyAnyway, v213);
  v217 = objc_msgSend_chatParticipants(v96, v214, v215, v216);
  v221 = objc_msgSend_count(v217, v218, v219, v220);
  objc_msgSend_setRecipientCount_(v195, v222, v221, v223);

  if (objc_msgSend_isMergedBusinessThread(v96, v224, v225, v226))
  {
    objc_msgSend_setBusinessChat_(v195, v227, 1, v228);
  }

  objc_msgSend_setDonationMetadata_(v129, v227, v195, v228);
  v229 = objc_alloc(MEMORY[0x1E696E9F8]);
  v289 = objc_msgSend_initWithCode_userActivity_(v229, v230, 3, 0);
  v287 = objc_alloc(MEMORY[0x1E696E8F8]);
  v234 = objc_msgSend_messageGUID(v96, v231, v232, v233);
  v238 = objc_msgSend_chatGUID(v96, v235, v236, v237);
  v242 = objc_msgSend_messagePlainBody(v96, v239, v240, v241);
  objc_msgSend_messageDate(v96, v243, v244, v245);
  v290 = v195;
  v246 = v288 = v129;
  v250 = objc_msgSend_serviceName(v96, v247, v248, v249);
  v252 = objc_msgSend_initWithIdentifier_conversationIdentifier_content_dateSent_sender_recipients_groupName_messageType_serviceName_(v287, v251, v234, v238, v242, v246, v21, v297, v296, 1, v250);

  v310 = v252;
  v254 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v253, &v310, 1);
  objc_msgSend_setSentMessages_(v289, v255, v254, v256);

  v257 = objc_alloc(MEMORY[0x1E696E8B8]);
  v259 = objc_msgSend_initWithIntent_response_(v257, v258, v288, v289);
  v263 = objc_msgSend_messageGUID(v96, v260, v261, v262);
  objc_msgSend_setIdentifier_(v259, v264, v263, v265);

  v269 = objc_msgSend_chatGUID(v96, v266, v267, v268);
  objc_msgSend_setGroupIdentifier_(v259, v270, v269, v271);

  objc_msgSend_setDirection_(v259, v272, 2, v273);
  v274 = objc_alloc(MEMORY[0x1E696AB80]);
  v278 = objc_msgSend_messageDate(v96, v275, v276, v277);
  started = objc_msgSend_initWithStartDate_duration_(v274, v279, v278, v280, 0.0);
  objc_msgSend_setDateInterval_(v259, v282, started, v283);

  objc_msgSend_setIntentHandlingStatus_(v259, v284, 3, v285);

  return v259;
}

- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection
{
  contextCopy = context;
  v6 = [IMDINInteractionMessageDonationJob alloc];
  v9 = objc_msgSend_initWithContext_(v6, v7, contextCopy, v8);

  return v9;
}

@end