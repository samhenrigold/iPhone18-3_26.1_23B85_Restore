@interface IMDCustomPluginNotificationContext
+ (id)logger;
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d;
- (id)logger;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data;
@end

@implementation IMDCustomPluginNotificationContext

+ (id)logger
{
  if (qword_1EBA53EF8 != -1)
  {
    sub_1B7CEE230();
  }

  v3 = qword_1EBA53EF0;

  return v3;
}

- (id)logger
{
  v2 = objc_opt_class();

  return objc_msgSend_logger(v2, v3, v4, v5);
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
  contentCopy = content;
  dataCopy = data;
  if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v9, d, v10))
  {
    objc_msgSend_setCategoryIdentifier_(contentCopy, v11, *MEMORY[0x1E69A7838], v12);
    v16 = objc_msgSend_userInfo(contentCopy, v13, v14, v15);
    Mutable = objc_msgSend_mutableCopy(v16, v17, v18, v19);

    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v21 = IMDictionaryFromPayloadData();
    v22 = IMSanitizedURLForIMExtensionPayloadURLKey();
    v26 = v22;
    if (v22)
    {
      v27 = objc_msgSend_absoluteString(v22, v23, v24, v25);
      objc_msgSend_setObject_forKey_(Mutable, v28, v27, *MEMORY[0x1E69A7820]);
    }

    objc_msgSend_setObject_forKey_(Mutable, v23, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
    objc_msgSend_setUserInfo_(contentCopy, v29, Mutable, v30);
    objc_msgSend_setInterruptionLevel_(contentCopy, v31, 2, v32);
  }
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

@end