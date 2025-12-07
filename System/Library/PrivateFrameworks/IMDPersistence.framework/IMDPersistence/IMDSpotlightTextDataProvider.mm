@interface IMDSpotlightTextDataProvider
- (id)dataForGUID:(id)d error:(id *)error;
@end

@implementation IMDSpotlightTextDataProvider

- (id)dataForGUID:(id)d error:(id *)error
{
  v79 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = objc_alloc(MEMORY[0x1E69A8148]);
  v8 = dCopy;
  v60 = objc_msgSend_initWithEncodedMessagePartGUID_(v5, v6, dCopy, v7);
  if (v60)
  {
    v8 = objc_msgSend_messageGUID(v60, v9, v10, v11);
  }

  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_1B7AE1A54;
  v70 = sub_1B7AE2540;
  v71 = 0;
  v12 = objc_msgSend_synchronousDatabase(IMDDatabase, v9, v10, v11);
  v65[0] = MEMORY[0x1E69E9820];
  v65[1] = 3221225472;
  v65[2] = sub_1B7B92D6C;
  v65[3] = &unk_1E7CBB6C8;
  v65[4] = &v66;
  objc_msgSend_fetchMessageRecordWithGUID_excludeRecoverableMessages_completionHandler_(v12, v13, v8, 1, v65);

  v17 = v67[5];
  if (v17)
  {
    v21 = objc_msgSend_attributedBodyText(v17, v14, v15, v16);
    if (v60)
    {
      v22 = objc_alloc(MEMORY[0x1E69A8118]);
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v58 = objc_msgSend_initWithMessageBody_messageGUID_(v22, v23, v21, v8);
      v27 = objc_msgSend_messageParts(v58, v24, v25, v26);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v61, v78, 16);
      if (v31)
      {
        v32 = *v62;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v62 != v32)
            {
              objc_enumerationMutation(v27);
            }

            v34 = *(*(&v61 + 1) + 8 * i);
            v35 = objc_msgSend_messagePartGUIDForMessageGUID_(v34, v29, v8, v30);
            v39 = objc_msgSend_encodedMessagePartGUID(v35, v36, v37, v38);

            if (objc_msgSend_isEqualToString_(v39, v40, dCopy, v41))
            {
              v45 = objc_msgSend_messagePartRange(v34, v42, v43, v44);
              v47 = objc_msgSend_attributedSubstringFromRange_(v21, v46, v45, v46);

              v21 = v47;
            }
          }

          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v29, &v61, v78, 16);
        }

        while (v31);
      }
    }

    v48 = objc_msgSend_string(v21, v18, v19, v20);
    v49 = _IMStringStrippingControlCharacters();

    v76 = @"text";
    v77 = v49;
    v51 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v50, &v77, &v76, 1);
    v53 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v52, v51, 0, error);
    if (IMOSLoggingEnabled())
    {
      v54 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        errorCopy = error;
        if (error)
        {
          errorCopy = *error;
        }

        *buf = 138412546;
        v73 = v53;
        v74 = 2112;
        v75 = errorCopy;
        _os_log_impl(&dword_1B7AD5000, v54, OS_LOG_TYPE_INFO, "Returning data %@ to spotlight with error %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v56 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v73 = dCopy;
        _os_log_impl(&dword_1B7AD5000, v56, OS_LOG_TYPE_INFO, "Failed to find plain text for spotlight because no message was found for guid %@", buf, 0xCu);
      }
    }

    v53 = 0;
  }

  _Block_object_dispose(&v66, 8);

  return v53;
}

@end