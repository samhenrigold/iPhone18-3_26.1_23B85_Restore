@interface IMDCoreSpotlightMessageBodyIndexer
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageBodyIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  v50 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  v20 = objc_msgSend_objectForKey_(itemCopy, v16, @"balloonBundleID", v17);
  if (v20)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(v48) = 0;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Message is a balloon plugin type, deferring to later indexers", &v48, 2u);
      }
    }
  }

  else
  {
    v22 = objc_msgSend_objectForKey_(itemCopy, v18, @"attributedBody", v19);
    v26 = objc_msgSend_string(v22, v23, v24, v25);

    v27 = _IMDCoreSpotlightStrippedBody(itemCopy, @"plainBody", v26);
    v31 = objc_msgSend_sharedInstance(MEMORY[0x1E69A60F0], v28, v29, v30);
    if (objc_msgSend_isInternalInstall(v31, v32, v33, v34))
    {
      v35 = IMGetCachedDomainBoolForKeyWithDefaultValue();

      if (v35)
      {
        if (objc_msgSend_isEqualToString_(v27, v36, @"poison_abort", v37))
        {
          if (IMOSLoggingEnabled())
          {
            v47 = OSLogHandleForIMFoundationCategory();
            sub_1B7CFA38C(v47);
          }

          abort();
        }

        if (objc_msgSend_isEqualToString_(v27, v38, @"poison_spin", v39))
        {
          if (IMOSLoggingEnabled())
          {
            v40 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              LOWORD(v48) = 0;
              _os_log_impl(&dword_1B7AD5000, v40, OS_LOG_TYPE_INFO, "(IMDCoreSpotlightMessageBodyIndexer - Poison pill spin detected, hanging!", &v48, 2u);
            }
          }

            ;
          }
        }
      }
    }

    else
    {
    }

    objc_msgSend_setTextContent_(updateCopy, v36, v27, v37);
    objc_msgSend_setMessageType_(updateCopy, v41, @"msg", v42);
    if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v43, v44, v45) && IMOSLoggingEnabled())
    {
      v46 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v48 = 138412290;
        v49 = v27;
        _os_log_impl(&dword_1B7AD5000, v46, OS_LOG_TYPE_INFO, "setting text content %@", &v48, 0xCu);
      }
    }
  }
}

@end