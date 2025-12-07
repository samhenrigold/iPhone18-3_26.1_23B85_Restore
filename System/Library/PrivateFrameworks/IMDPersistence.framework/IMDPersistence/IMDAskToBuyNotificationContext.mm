@interface IMDAskToBuyNotificationContext
- (BOOL)canPopulateUserInfoForMessageBalloonBundleID:(id)d;
- (NSArray)actions;
- (id)notificationCategories;
- (void)populateUserInfoForNotificationContent:(id)content messageBalloonBundleID:(id)d payloadData:(id)data;
@end

@implementation IMDAskToBuyNotificationContext

- (NSArray)actions
{
  v13[1] = *MEMORY[0x1E69E9840];
  actions = self->_actions;
  if (!actions)
  {
    v4 = MEMORY[0x1E6983250];
    v5 = *MEMORY[0x1E69A68B0];
    v6 = objc_msgSend_localizedUserNotificationStringForKey_arguments_(MEMORY[0x1E696AEC0], a2, @"VIEW_ATB_OPTIONS", 0);
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
  v63 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  dataCopy = data;
  if (objc_msgSend_canPopulateUserInfoForMessageBalloonBundleID_(self, v10, d, v11))
  {
    objc_msgSend_setCategoryIdentifier_(contentCopy, v12, *MEMORY[0x1E69A7818], v13);
    v57 = IMDictionaryFromPayloadData();
    v56 = IMSanitizedURLForIMExtensionPayloadURLKey();
    objc_msgSend_componentsWithURL_resolvingAgainstBaseURL_(MEMORY[0x1E696AF20], v14, v56, 0);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v55 = v61 = 0u;
    v18 = objc_msgSend_queryItems(v55, v15, v16, v17);
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v58, v62, 16);
    if (v20)
    {
      v24 = v20;
      v25 = *v59;
LABEL_4:
      v26 = 0;
      while (1)
      {
        if (*v59 != v25)
        {
          objc_enumerationMutation(v18);
        }

        v27 = *(*(&v58 + 1) + 8 * v26);
        v28 = objc_msgSend_name(v27, v21, v22, v23);
        isEqualToString = objc_msgSend_isEqualToString_(v28, v29, @"notificationCaption", v30);

        if (isEqualToString)
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v58, v62, 16);
          if (v24)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v33 = objc_msgSend_value(v27, v21, v22, v23);

      v32 = v57;
      if (v33)
      {
        goto LABEL_13;
      }
    }

    else
    {
LABEL_10:

      v32 = v57;
    }

    v33 = IMSanitizedCaptionForIMExtensionPayloadUserInfoKey();
LABEL_13:
    if (objc_msgSend_length(v33, v34, v35, v36))
    {
      objc_msgSend_setBody_(contentCopy, v37, v33, v39);
    }

    v40 = objc_msgSend_userInfo(contentCopy, v37, v38, v39);
    Mutable = objc_msgSend_mutableCopy(v40, v41, v42, v43);

    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    v48 = objc_msgSend_absoluteString(v56, v45, v46, v47);
    objc_msgSend_setObject_forKey_(Mutable, v49, v48, *MEMORY[0x1E69A7820]);

    objc_msgSend_setObject_forKey_(Mutable, v50, MEMORY[0x1E695E118], *MEMORY[0x1E69A7830]);
    objc_msgSend_setUserInfo_(contentCopy, v51, Mutable, v52);
    objc_msgSend_setInterruptionLevel_(contentCopy, v53, 2, v54);
  }
}

- (id)notificationCategories
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6983218];
  v5 = *MEMORY[0x1E69A7818];
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