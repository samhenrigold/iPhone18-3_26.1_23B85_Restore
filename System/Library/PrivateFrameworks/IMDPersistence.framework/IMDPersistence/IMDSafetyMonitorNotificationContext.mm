@interface IMDSafetyMonitorNotificationContext
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data chatIdentifier:(id)identifier isUrgentMessageTrigger:(BOOL *)trigger shouldSuppressNotification:(BOOL *)notification;
@end

@implementation IMDSafetyMonitorNotificationContext

- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d
{
  dCopy = d;
  v4 = IMBalloonExtensionIDWithSuffix();
  isEqualToString = objc_msgSend_isEqualToString_(dCopy, v5, v4, v6);

  return isEqualToString;
}

- (id)notificationCategories
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6983218];
  v3 = *MEMORY[0x1E69A7838];
  v4 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], a2, @"MADRID_MESSAGE_FORMAT", 0);
  v6 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], v5, @"SINGLE_SUMMARY_FORMAT", 0);
  v7 = MEMORY[0x1E695E0F0];
  v9 = objc_msgSend_categoryWithIdentifier_actions_intentIdentifiers_hiddenPreviewsBodyPlaceholder_categorySummaryFormat_options_(v2, v8, v3, MEMORY[0x1E695E0F0], MEMORY[0x1E695E0F0], v4, v6, 14);

  if (v9)
  {
    v12[0] = v9;
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v10, v12, 1);
  }

  return v7;
}

- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data chatIdentifier:(id)identifier isUrgentMessageTrigger:(BOOL *)trigger shouldSuppressNotification:(BOOL *)notification
{
  v48 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dCopy = d;
  dataCopy = data;
  identifierCopy = identifier;
  if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v18, dCopy, v19))
  {
    v20 = IMDictionaryFromPayloadData();
    v24 = IMSanitizedURLForIMExtensionPayloadURLKey();
    if (v24)
    {
      v25 = objc_msgSend_sharedCoordinator(MEMORY[0x1E69A8218], v21, v22, v23);
      v27 = objc_msgSend_notificationContentForInitiator_messageURL_content_(v25, v26, identifierCopy, v24, contentCopy);

      if (v27 != 2)
      {
        if (v27 == 1)
        {
          *trigger = 1;
        }

        v31 = objc_msgSend_userInfo(contentCopy, v28, v29, v30);
        Mutable = objc_msgSend_mutableCopy(v31, v32, v33, v34);

        if (!Mutable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        v39 = objc_msgSend_absoluteString(v24, v36, v37, v38);
        objc_msgSend_setObject_forKey_(Mutable, v40, v39, *MEMORY[0x1E69A7820]);

        objc_msgSend_setObject_forKey_(Mutable, v41, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
        objc_msgSend_setUserInfo_(contentCopy, v42, Mutable, v43);

LABEL_18:
        goto LABEL_19;
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        LOWORD(v46) = 0;
        _os_log_impl(&dword_1B7AD5000, v44, OS_LOG_TYPE_INFO, "Unable to extract URL from Message, supressing the notification", &v46, 2u);
      }
    }

    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = 138412290;
        v47 = v24;
        _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "Supressing the notification for %@", &v46, 0xCu);
      }
    }

    *notification = 1;
    goto LABEL_18;
  }

LABEL_19:
}

@end