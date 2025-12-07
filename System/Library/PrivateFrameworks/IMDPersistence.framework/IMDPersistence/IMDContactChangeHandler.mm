@interface IMDContactChangeHandler
- (void)visitAddContactEvent:(id)event;
- (void)visitDeleteContactEvent:(id)event;
- (void)visitDropEverythingEvent:(id)event;
- (void)visitUpdateContactEvent:(id)event;
@end

@implementation IMDContactChangeHandler

- (void)visitDropEverythingEvent:(id)event
{
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Handling a Drop everything change history event", v12, 2u);
    }
  }

  v8 = objc_msgSend_sharedInstance(IMDContactCache, v4, v5, v6);
  objc_msgSend_resetCache(v8, v9, v10, v11);
}

- (void)visitAddContactEvent:(id)event
{
  v31 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Handling a Add Contact change history event", buf, 2u);
    }
  }

  v8 = objc_msgSend_contact(eventCopy, v4, v5, v6);
  v11 = objc_msgSend_IDsFromCNContact_(MEMORY[0x1E69A7FD0], v9, v8, v10);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v30 = v11;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Updating contact cache for handle IDs: %@", buf, 0xCu);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v11;
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v24, v28, 16);
  if (v18)
  {
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v21 = *(*(&v24 + 1) + 8 * v20);
        v22 = objc_msgSend_sharedInstance(IMDContactCache, v15, v16, v17, v24);
        objc_msgSend_cacheContact_forKey_(v22, v23, v8, v21);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v15, &v24, v28, 16);
    }

    while (v18);
  }

  if (v13)
  {
    IMDCoreSpotlightReIndexForHandles(v13, 1015);
  }
}

- (void)visitUpdateContactEvent:(id)event
{
  v74 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Handling a Update Contact change history event", buf, 2u);
    }
  }

  v8 = objc_msgSend_contact(eventCopy, v4, v5, v6);
  v11 = objc_msgSend_IDsFromCNContact_(MEMORY[0x1E69A7FD0], v9, v8, v10);
  v15 = objc_msgSend_sharedInstance(IMDContactCache, v12, v13, v14);
  v19 = objc_msgSend_identifier(v8, v16, v17, v18);
  v22 = objc_msgSend__handlesMatchingContactIdentifier_(v15, v20, v19, v21);

  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v73 = v22;
      _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Removing entries from contact cache for handle IDs: %@", buf, 0xCu);
    }
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v73 = v11;
      _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Updating contact cache with the new CNContact for handle IDs: %@", buf, 0xCu);
    }
  }

  v28 = objc_msgSend_sharedInstance(IMDContactCache, v24, v25, v26);
  v32 = objc_msgSend_fullNameCache(v28, v29, v30, v31);
  v36 = objc_msgSend_identifier(v8, v33, v34, v35);
  objc_msgSend_removeObjectForKey_(v32, v37, v36, v38);

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v39 = v22;
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, &v66, v71, 16);
  if (v44)
  {
    v45 = *v67;
    do
    {
      v46 = 0;
      do
      {
        if (*v67 != v45)
        {
          objc_enumerationMutation(v39);
        }

        v47 = *(*(&v66 + 1) + 8 * v46);
        v48 = objc_msgSend_sharedInstance(IMDContactCache, v41, v42, v43);
        objc_msgSend_removeCachedContactForKey_(v48, v49, v47, v50);

        ++v46;
      }

      while (v44 != v46);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v41, &v66, v71, 16);
    }

    while (v44);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = v11;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, &v62, v70, 16);
  if (v56)
  {
    v57 = *v63;
    do
    {
      v58 = 0;
      do
      {
        if (*v63 != v57)
        {
          objc_enumerationMutation(v51);
        }

        v59 = *(*(&v62 + 1) + 8 * v58);
        v60 = objc_msgSend_sharedInstance(IMDContactCache, v53, v54, v55, v62);
        objc_msgSend_cacheContact_forKey_(v60, v61, v8, v59);

        ++v58;
      }

      while (v56 != v58);
      v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v53, &v62, v70, 16);
    }

    while (v56);
  }

  if (v51)
  {
    IMDCoreSpotlightReIndexForHandles(v51, 1008);
  }
}

- (void)visitDeleteContactEvent:(id)event
{
  v35 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Handling a Delete Contact change history event", &v33, 2u);
    }
  }

  v8 = objc_msgSend_contactIdentifier(eventCopy, v4, v5, v6);
  v12 = objc_msgSend_sharedInstance(IMDContactCache, v9, v10, v11);
  v15 = objc_msgSend__handlesMatchingContactIdentifier_(v12, v13, v8, v14);

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v33 = 138412290;
      v34 = v15;
      _os_log_impl(&dword_1B7AD5000, v19, OS_LOG_TYPE_INFO, "IMDContactChangeHandler: Removing entries from contact cache for handle IDs: %@", &v33, 0xCu);
    }
  }

  v20 = objc_msgSend_sharedInstance(IMDContactCache, v16, v17, v18);
  v24 = objc_msgSend_fullNameCache(v20, v21, v22, v23);
  objc_msgSend_removeObjectForKey_(v24, v25, v8, v26);

  v30 = objc_msgSend_sharedInstance(IMDContactCache, v27, v28, v29);
  objc_msgSend_removeCachedContactsForKeys_(v30, v31, v15, v32);

  if (v15)
  {
    IMDCoreSpotlightReIndexForHandles(v15, 1015);
  }
}

@end