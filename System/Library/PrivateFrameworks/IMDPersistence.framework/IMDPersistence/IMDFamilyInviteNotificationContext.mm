@interface IMDFamilyInviteNotificationContext
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d;
- (BOOL)inviteeIsTeen;
- (NSArray)actions;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data;
@end

@implementation IMDFamilyInviteNotificationContext

- (BOOL)inviteeIsTeen
{
  v31 = 0;
  v32 = &v31;
  v33 = 0x2050000000;
  v4 = qword_1EBA53F68;
  v34 = qword_1EBA53F68;
  if (!qword_1EBA53F68)
  {
    *buf = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = sub_1B7B79DA8;
    v29 = &unk_1E7CB6EA8;
    v30 = &v31;
    sub_1B7B79DA8(buf, a2, v2, v3);
    v4 = v32[3];
  }

  v5 = v4;
  _Block_object_dispose(&v31, 8);
  v6 = objc_alloc_init(v4);
  objc_msgSend_setCachePolicy_(v6, v7, 1, v8);
  v25 = 0;
  v11 = objc_msgSend_fetchFamilyCircleWithError_(v6, v9, &v25, v10);
  v15 = v25;
  if (v15)
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CF73C8(v15, v16);
    }

LABEL_6:

    goto LABEL_7;
  }

  if (!v11)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_7;
    }

    v16 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "FAFetchFamilyCircleRequest returned nil", buf, 2u);
    }

    goto LABEL_6;
  }

  v19 = objc_msgSend__serverResponse(v11, v12, v13, v14);
  v22 = objc_msgSend_objectForKeyedSubscript_(v19, v20, @"age-category", v21);

  LOBYTE(v19) = objc_msgSend_isEqualToString_(v22, v23, @"TEEN", v24);
  if (v19)
  {
    v17 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v17 = 0;
LABEL_8:

  return v17;
}

- (NSArray)actions
{
  v13[1] = *MEMORY[0x1E69E9840];
  actions = self->_actions;
  if (!actions)
  {
    v4 = MEMORY[0x1E6983250];
    v5 = *MEMORY[0x1E69A6F38];
    v6 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], a2, @"VIEW_INVITATION", 0);
    v8 = objc_msgSend_actionWithIdentifier_title_options_(v4, v7, v5, v6, 1);

    v13[0] = v8;
    v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v13, 1);
    v11 = self->_actions;
    self->_actions = v10;

    actions = self->_actions;
  }

  return actions;
}

- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d
{
  dCopy = d;
  v4 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(dCopy, v5, v4, v6);

  return isEqualToString;
}

- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data
{
  v92 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dCopy = d;
  dataCopy = data;
  if (!objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v11, dCopy, v12))
  {
    goto LABEL_29;
  }

  objc_msgSend_setCategoryIdentifier_(contentCopy, v13, *MEMORY[0x1E69A7840], v14);
  v15 = IMDictionaryFromPayloadData();
  v16 = IMSanitizedURLForIMExtensionPayloadURLKey();
  objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v17, v16, 0);
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = v90 = 0u;
  v21 = objc_msgSend_queryItems(v86, v18, v19, v20);
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v87, v91, 16);
  if (!v23)
  {

    v28 = 0;
    goto LABEL_31;
  }

  v27 = v23;
  v81 = v16;
  v82 = v15;
  v83 = dataCopy;
  v84 = dCopy;
  v85 = contentCopy;
  v28 = 0;
  v29 = 0;
  v30 = *v88;
  do
  {
    for (i = 0; i != v27; ++i)
    {
      if (*v88 != v30)
      {
        objc_enumerationMutation(v21);
      }

      v32 = *(*(&v87 + 1) + 8 * i);
      if (!v29)
      {
        v33 = objc_msgSend_name(*(*(&v87 + 1) + 8 * i), v24, v25, v26);
        isEqualToString = objc_msgSend_isEqualToString_(v33, v34, @"messageSubTitle", v35);

        if (isEqualToString)
        {
          v29 = objc_msgSend_value(v32, v24, v25, v26);
        }

        else
        {
          v29 = 0;
        }
      }

      v37 = objc_msgSend_name(v32, v24, v25, v26);
      if (objc_msgSend_isEqualToString_(v37, v38, @"messageSubTitleTeen", v39))
      {
        IsTeen = objc_msgSend_inviteeIsTeen(self, v40, v41, v42);

        if (!IsTeen)
        {
          goto LABEL_15;
        }

        objc_msgSend_value(v32, v44, v45, v46);
        v29 = v37 = v29;
      }

LABEL_15:
      v47 = objc_msgSend_name(v32, v44, v45, v46);
      v50 = objc_msgSend_isEqualToString_(v47, v48, @"messageTitle", v49);

      if (v50)
      {
        v51 = objc_msgSend_value(v32, v24, v25, v26);

        v28 = v51;
      }
    }

    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v24, &v87, v91, 16);
  }

  while (v27);

  dCopy = v84;
  contentCopy = v85;
  v15 = v82;
  dataCopy = v83;
  v16 = v81;
  if (v29)
  {
    if (v28)
    {
      goto LABEL_21;
    }

LABEL_32:
    v28 = IMSanitizedAppNameForIMExtensionPayloadUserInfoKey();
    v55 = objc_msgSend_length(v28, v78, v79, v80);
    goto LABEL_22;
  }

LABEL_31:
  v29 = IMSanitizedCaptionForIMExtensionPayloadUserInfoKey();
  if (!v28)
  {
    goto LABEL_32;
  }

LABEL_21:
  v55 = objc_msgSend_length(v28, v52, v53, v54);
LABEL_22:
  if (v55)
  {
    objc_msgSend_setHeader_(contentCopy, v56, v28, v58);
  }

  v59 = v15;
  if (objc_msgSend_length(v29, v56, v57, v58))
  {
    objc_msgSend_setBody_(contentCopy, v60, v29, v62);
  }

  v63 = objc_msgSend_userInfo(contentCopy, v60, v61, v62);
  Mutable = objc_msgSend_mutableCopy(v63, v64, v65, v66);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  v71 = objc_msgSend_absoluteString(v16, v68, v69, v70);
  objc_msgSend_setObject_forKey_(Mutable, v72, v71, *MEMORY[0x1E69A7820]);

  objc_msgSend_setObject_forKey_(Mutable, v73, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
  objc_msgSend_setUserInfo_(contentCopy, v74, Mutable, v75);
  objc_msgSend_setInterruptionLevel_(contentCopy, v76, 2, v77);

LABEL_29:
}

- (id)notificationCategories
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6983218];
  v5 = *MEMORY[0x1E69A7840];
  v6 = objc_msgSend_actions(self, a2, v2, v3);
  v8 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v7, @"MADRID_MESSAGE_FORMAT", 0);
  v10 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v9, @"SINGLE_SUMMARY_FORMAT", 0);
  v11 = MEMORY[0x1E695E0F0];
  v13 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v4, v12, v5, v6, MEMORY[0x1E695E0F0], v8, v10, 12);

  if (v13)
  {
    v16[0] = v13;
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v16, 1);
  }

  return v11;
}

@end