@interface IMDSpotlightLinkDataProvider
+ (id)attachmentPathsFromMessageRecord:(id)record;
- (id)dataForGUID:(id)d error:(id *)error;
@end

@implementation IMDSpotlightLinkDataProvider

+ (id)attachmentPathsFromMessageRecord:(id)record
{
  v49 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v4 = objc_autoreleasePoolPush();
  v8 = objc_msgSend_attachmentRecords(recordCopy, v5, v6, v7);
  if (v8)
  {
    v43 = v4;
    v9 = objc_alloc(MEMORY[0x1E695DF70]);
    v13 = objc_msgSend_count(v8, v10, v11, v12);
    v16 = objc_msgSend_initWithCapacity_(v9, v14, v13, v15);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v42 = v8;
    v17 = v8;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v44, v48, 16);
    if (v19)
    {
      v23 = v19;
      v24 = *v45;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v17);
          }

          v29 = objc_msgSend_path(*(*(&v44 + 1) + 8 * i), v20, v21, v22);
          if (v29)
          {
            v30 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v26, v29, 0);
            objc_msgSend_absoluteString(v30, v31, v32, v33);
          }

          else
          {
            v30 = 0;
            objc_msgSend_absoluteString(0, v26, v27, v28);
          }
          v34 = ;
          v38 = objc_msgSend_length(v34, v35, v36, v37);

          if (v38)
          {
            objc_msgSend_addObject_(v16, v39, v30, v40);
          }
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v44, v48, 16);
      }

      while (v23);
    }

    v4 = v43;
    v8 = v42;
  }

  else
  {
    v16 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v16;
}

- (id)dataForGUID:(id)d error:(id *)error
{
  v42[2] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v6 = IMDMessageRecordCopyMessageForGUID(dCopy);
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v37 = 138412290;
      v38 = v6;
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "Found message for data: %@", &v37, 0xCu);
    }
  }

  if (objc_msgSend_cacheHasAttachments(v6, v7, v8, v9))
  {
    v14 = objc_opt_class();
    v17 = objc_msgSend_attachmentPathsFromMessageRecord_(v14, v15, v6, v16);
  }

  else
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  v18 = objc_msgSend_iMessageAppBundleID(v6, v11, v12, v13);
  v22 = objc_msgSend_iMessageAppData(v6, v19, v20, v21);
  isEqual = objc_msgSend_isEqual_(*MEMORY[0x1E69A6A18], v23, v18, v24);
  if (v22)
  {
    v27 = isEqual;
  }

  else
  {
    v27 = 0;
  }

  if (v27 != 1 || v17 == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v37 = 138412546;
        v38 = v18;
        v39 = 2112;
        v40 = v22;
        _os_log_impl(&dword_1B7AD5000, v29, OS_LOG_TYPE_INFO, "Failed to find data for spotlight because either bundleID was wrong (%@) or data was nil (%@)", &v37, 0x16u);
      }
    }

    v32 = 0;
  }

  else
  {
    v41[0] = @"attachmentPaths";
    v41[1] = @"payloadData";
    v42[0] = v17;
    v42[1] = v22;
    v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, v42, v41, 2);
    v32 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v31, v30, 0, error);
    if (IMOSLoggingEnabled())
    {
      v34 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        if (error)
        {
          v35 = *error;
        }

        else
        {
          v35 = 0;
        }

        v37 = 138412546;
        v38 = v32;
        v39 = 2112;
        v40 = v35;
        _os_log_impl(&dword_1B7AD5000, v34, OS_LOG_TYPE_INFO, "Returning data %@ to spotlight with error %@", &v37, 0x16u);
      }
    }
  }

  return v32;
}

@end