@interface IMDScreenTimeAskNotificationContext
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d;
- (NSArray)actions;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data;
@end

@implementation IMDScreenTimeAskNotificationContext

- (NSArray)actions
{
  v31[4] = *MEMORY[0x1E69E9840];
  actions = self->_actions;
  if (!actions)
  {
    v4 = MEMORY[0x1E6983250];
    v5 = *MEMORY[0x1E69A78D0];
    v6 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], a2, @"APPROVE_FOR_15_MINUTES", 0);
    v8 = objc_msgSend_actionWithIdentifier_title_options_(v4, v7, v5, v6, 1);

    v9 = MEMORY[0x1E6983250];
    v10 = *MEMORY[0x1E69A78E0];
    v12 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v11, @"APPROVE_FOR_AN_HOUR", 0);
    v14 = objc_msgSend_actionWithIdentifier_title_options_(v9, v13, v10, v12, 1);

    v15 = MEMORY[0x1E6983250];
    v16 = *MEMORY[0x1E69A78C8];
    v18 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v17, @"APPROVE_ALL_DAY", 0);
    v20 = objc_msgSend_actionWithIdentifier_title_options_(v15, v19, v16, v18, 1);

    v21 = MEMORY[0x1E6983250];
    v22 = *MEMORY[0x1E69A78D8];
    v24 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v23, @"DONT_APPROVE", 0);
    v26 = objc_msgSend_actionWithIdentifier_title_options_(v21, v25, v22, v24, 3);

    v31[0] = v8;
    v31[1] = v14;
    v31[2] = v20;
    v31[3] = v26;
    v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v27, v31, 4);
    v29 = self->_actions;
    self->_actions = v28;

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
  v81 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dCopy = d;
  dataCopy = data;
  if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v11, dCopy, v12))
  {
    objc_msgSend_setCategoryIdentifier_(contentCopy, v13, *MEMORY[0x1E69A7848], v14);
    v70 = dataCopy;
    v72 = IMDictionaryFromPayloadData();
    v73 = IMSanitizedURLForIMExtensionPayloadURLKey();
    v15 = [IMDAskToParser alloc];
    v71 = objc_msgSend_initWithUrl_(v15, v16, v73, v17);
    v24 = objc_msgSend_questionIdentifier(v71, v18, v19, v20);
    if (!v24)
    {
      if (IMOSLoggingEnabled())
      {
        v26 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "Could not find request identifier using AskTo bits. Looking in URL for request identifier instead.", buf, 2u);
        }
      }

      v69 = objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v25, v73, 0);
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v30 = objc_msgSend_queryItems(v69, v27, v28, v29);
      v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v74, v80, 16);
      if (v35)
      {
        v36 = *v75;
        while (2)
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v75 != v36)
            {
              objc_enumerationMutation(v30);
            }

            v38 = *(*(&v74 + 1) + 8 * i);
            v39 = objc_msgSend_name(v38, v32, v33, v34);
            isEqualToString = objc_msgSend_isEqualToString_(v39, v40, @"requestID", v41);

            if (isEqualToString)
            {
              v24 = objc_msgSend_value(v38, v32, v33, v34);
              goto LABEL_17;
            }
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v32, &v74, v80, 16);
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      v24 = 0;
LABEL_17:
    }

    v43 = objc_msgSend_userInfo(contentCopy, v21, v22, v23);
    Mutable = objc_msgSend_mutableCopy(v43, v44, v45, v46);

    if (Mutable)
    {
      if (v24)
      {
LABEL_20:
        if (IMOSLoggingEnabled())
        {
          v49 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v79 = v24;
            _os_log_impl(&dword_1B7AD5000, v49, OS_LOG_TYPE_INFO, "Adding request identifier to notification context: %@", buf, 0xCu);
          }
        }

        objc_msgSend_setObject_forKey_(Mutable, v48, v24, *MEMORY[0x1E69A7828]);
LABEL_35:
        objc_msgSend_setObject_forKey_(Mutable, v50, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
        objc_msgSend_setUserInfo_(contentCopy, v65, Mutable, v66);
        objc_msgSend_setInterruptionLevel_(contentCopy, v67, 2, v68);

        dataCopy = v70;
        goto LABEL_36;
      }
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v24)
      {
        goto LABEL_20;
      }
    }

    if (v73)
    {
      if (IMOSLoggingEnabled())
      {
        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v58 = objc_msgSend_absoluteString(v73, v55, v56, v57);
          v61 = objc_msgSend_lengthOfBytesUsingEncoding_(v58, v59, 4, v60);
          *buf = 134217984;
          v79 = v61;
          _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_INFO, "Couldn't find request identifier in URL. Attaching URL itself instead. url size is %zd", buf, 0xCu);
        }
      }

      v62 = objc_msgSend_absoluteString(v73, v51, v52, v53);
      objc_msgSend_setObject_forKey_(Mutable, v63, v62, *MEMORY[0x1E69A7820]);
    }

    else
    {
      v64 = IMLogHandleForCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF51F8(v64);
      }
    }

    goto LABEL_35;
  }

LABEL_36:
}

- (id)notificationCategories
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6983218];
  v5 = *MEMORY[0x1E69A7848];
  v6 = objc_msgSend_actions(self, a2, v2, v3);
  v8 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v7, @"MADRID_MESSAGE_FORMAT", 0);
  v10 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v9, @"SINGLE_SUMMARY_FORMAT", 0);
  v11 = MEMORY[0x1E695E0F0];
  v13 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v4, v12, v5, v6, MEMORY[0x1E695E0F0], v8, v10, 14);

  if (v13)
  {
    v16[0] = v13;
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v14, v16, 1);
  }

  return v11;
}

@end