@interface IMDCoreSpotlightMessageBalloonPluginIndexer
+ (id)_newSummaryTextForPayloadData:(id)data item:(id)item;
+ (id)_pluginPayloadAttachmentPathsForItem:(id)item;
+ (id)_richLinkMetadataForItem:(id)item attachmentPaths:(id)paths originalURL:(id)l;
+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler;
@end

@implementation IMDCoreSpotlightMessageBalloonPluginIndexer

+ (void)indexItem:(id)item withChat:(id)chat context:(id)context metadataToUpdate:(id)update timingProfiler:(id)profiler
{
  v145 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  chatCopy = chat;
  contextCopy = context;
  updateCopy = update;
  profilerCopy = profiler;
  v15 = objc_msgSend_objectForKey_(itemCopy, v13, @"balloonBundleID", v14);
  v18 = objc_msgSend_objectForKey_(itemCopy, v16, @"payloadData", v17);
  v21 = objc_msgSend_objectForKey_(itemCopy, v19, @"flags", v20);
  LOBYTE(update) = objc_msgSend_unsignedLongLongValue(v21, v22, v23, v24);

  if ((update & 4) != 0)
  {
    IsKnownContact = 1;
  }

  else
  {
    v28 = objc_msgSend_objectForKeyedSubscript_(itemCopy, v25, @"handle", v27);
    IsKnownContact = _IMDCoreSpotlightIsKnownContact(v28);
  }

  if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v25, v26, v27) && IMOSLoggingEnabled())
  {
    v32 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = @"NO";
      if (IsKnownContact)
      {
        v33 = @"YES";
      }

      *buf = 138412290;
      *&buf[4] = v33;
      _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "known sender: %@", buf, 0xCu);
    }
  }

  if (v15)
  {
    v34 = IsKnownContact;
  }

  else
  {
    v34 = 0;
  }

  if (v34 == 1)
  {
    if (v18)
    {
      v35 = *MEMORY[0x1E69A6A18];
      if ((objc_msgSend_isEqualToString_(v15, v30, *MEMORY[0x1E69A6A18], v31) & 1) != 0 || objc_msgSend_isEqualToString_(v15, v30, *MEMORY[0x1E69A69F0], v31))
      {
        if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v30, v36, v31) && IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            *&buf[4] = v15;
            _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "Indexing balloon with bundle ID %@", buf, 0xCu);
          }
        }

        if (objc_msgSend_isEqualToString_(v15, v37, v35, v38))
        {
          if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v40, v41, v42) && IMOSLoggingEnabled())
          {
            v45 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B7AD5000, v45, OS_LOG_TYPE_INFO, "Found a rich link to index", buf, 2u);
            }
          }

          v138 = objc_msgSend_objectForKey_(itemCopy, v43, @"attributedBody", v44);
          v46 = IMDCoreSpotlightURLFromAttributedMessageBody(v138);
          v50 = objc_msgSend_absoluteString(v46, v47, v48, v49);

          v52 = objc_msgSend__newSummaryTextForPayloadData_item_(self, v51, v18, itemCopy);
          if (!objc_msgSend_length(v52, v53, v54, v55) && v50)
          {
            v56 = v50;

            v52 = v56;
          }

          v57 = _IMDCoreSpotlightStrippedBody(itemCopy, @"plainBody", v50);
          v60 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v58, v57, v59);
          v63 = objc_msgSend__pluginPayloadAttachmentPathsForItem_(self, v61, itemCopy, v62);
          v65 = objc_msgSend__richLinkMetadataForItem_attachmentPaths_originalURL_(self, v64, itemCopy, v63, v60);
          v68 = objc_msgSend_indexerForMetadata_(IMDCoreSpotlightRichLinkIndexer, v66, v65, v67);
          objc_msgSend_mapPropertiesFromMetadata_text_originalURL_attachmentPaths_toAttributes_(v68, v69, v65, v52, v60, v63, updateCopy);

          goto LABEL_54;
        }

LABEL_53:
        objc_msgSend_setMessageType_(updateCopy, v40, @"op", v42);
        goto LABEL_54;
      }
    }
  }

  v70 = objc_msgSend_objectForKey_(itemCopy, v30, @"service", v31);
  isEqualToString = objc_msgSend_isEqualToString_(v70, v71, *MEMORY[0x1E69A7AE0], v72);

  v76 = objc_msgSend_objectForKey_(itemCopy, v74, @"attributedBody", v75);
  v80 = v76;
  if (isEqualToString)
  {
    v81 = objc_msgSend_length(v76, v77, v78, v79);
    if (v80 && (v83 = v81, v84 = *MEMORY[0x1E69A5FB0], objc_msgSend_attribute_existsInRange_(v80, v82, *MEMORY[0x1E69A5FB0], 0, v81)))
    {
      *buf = 0uLL;
      v86 = objc_msgSend_attribute_atIndex_longestEffectiveRange_inRange_(v80, v85, v84, 0, buf, 0, v83);
      objc_opt_class();
      isDataDetectedLinkAllowedForSWY = 0;
      if ((objc_opt_isKindOfClass() & 1) != 0 && *buf == __PAIR128__(v83, 0))
      {
        v91 = objc_msgSend_sharedManager(MEMORY[0x1E69A8288], v87, v88, v89);
        isDataDetectedLinkAllowedForSWY = objc_msgSend_isDataDetectedLinkAllowedForSWY_(v91, v92, v86, v93);

        if (isDataDetectedLinkAllowedForSWY)
        {
          if (objc_msgSend_verboseLoggingEnabled(MEMORY[0x1E69A7FF8], v94, v95, v96) && IMOSLoggingEnabled())
          {
            v100 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
            {
              *v143 = 0;
              _os_log_impl(&dword_1B7AD5000, v100, OS_LOG_TYPE_INFO, "Found a non-rich SMS link to index", v143, 2u);
            }
          }

          v101 = MEMORY[0x1E695DFF8];
          v102 = objc_msgSend_absoluteString(v86, v97, v98, v99);
          v105 = objc_msgSend_URLWithString_(v101, v103, v102, v104);
          objc_msgSend_setURL_(updateCopy, v106, v105, v107);

          objc_msgSend_setMessageType_(updateCopy, v108, @"lnk", v109);
          v112 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v110, 0, v111);
          v116 = objc_msgSend_lpHasRichMediaCustomKey(IMDCoreSpotlightRichLinkIndexer, v113, v114, v115);
          objc_msgSend_setValue_forCustomKey_(updateCopy, v117, v112, v116);

          isDataDetectedLinkAllowedForSWY = 1;
        }
      }
    }

    else
    {
      isDataDetectedLinkAllowedForSWY = 0;
    }
  }

  else
  {
    v121 = IMDCoreSpotlightURLFromAttributedMessageBody(v76);
    if (v121 && (objc_msgSend_sharedManager(MEMORY[0x1E69A8288], v118, v119, v120), v122 = objc_claimAutoreleasedReturnValue(), v125 = objc_msgSend_isDataDetectedLinkAllowedForSWY_(v122, v123, v121, v124), v122, v125))
    {
      objc_msgSend_setURL_(updateCopy, v126, v121, v127);
      objc_msgSend_setMessageType_(updateCopy, v128, @"lnk", v129);
      v132 = objc_msgSend_numberWithBool_(MEMORY[0x1E696AD98], v130, 0, v131);
      v136 = objc_msgSend_lpHasRichMediaCustomKey(IMDCoreSpotlightRichLinkIndexer, v133, v134, v135);
      objc_msgSend_setValue_forCustomKey_(updateCopy, v137, v132, v136);

      isDataDetectedLinkAllowedForSWY = 1;
    }

    else
    {
      isDataDetectedLinkAllowedForSWY = 0;
    }
  }

  if (((isDataDetectedLinkAllowedForSWY ^ 1) & (v15 != 0)) == 1)
  {
    goto LABEL_53;
  }

LABEL_54:
}

+ (id)_newSummaryTextForPayloadData:(id)data item:(id)item
{
  v5 = MEMORY[0x1E69A8010];
  itemCopy = item;
  dataCopy = data;
  v8 = objc_alloc_init(v5);
  objc_msgSend_setData_(v8, v9, dataCopy, v10);

  v13 = objc_msgSend_objectForKey_(itemCopy, v11, @"guid", v12);
  objc_msgSend_setMessageGUID_(v8, v14, v13, v15);
  v18 = objc_msgSend_objectForKey_(itemCopy, v16, @"flags", v17);

  v22 = (objc_msgSend_unsignedLongLongValue(v18, v19, v20, v21) >> 2) & 1;
  objc_msgSend_setIsFromMe_(v8, v23, v22, v24);
  v27 = objc_msgSend_previewSummaryWithPluginPayload_(MEMORY[0x1E69A8278], v25, v8, v26);
  v31 = objc_msgSend_copy(v27, v28, v29, v30);

  return v31;
}

+ (id)_pluginPayloadAttachmentPathsForItem:(id)item
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_objectForKeyedSubscript_(item, a2, @"attachments", v3);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v16 = objc_msgSend_objectForKeyedSubscript_(*(*(&v18 + 1) + 8 * i), v9, @"path", v10, v18);
        if (v16)
        {
          objc_msgSend_addObject_(v5, v14, v16, v15);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v18, v22, 16);
    }

    while (v11);
  }

  return v5;
}

+ (id)_richLinkMetadataForItem:(id)item attachmentPaths:(id)paths originalURL:(id)l
{
  v62 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  pathsCopy = paths;
  lCopy = l;
  v12 = objc_msgSend_objectForKey_(itemCopy, v10, @"payloadData", v11);
  v13 = objc_alloc_init(MEMORY[0x1E69A8010]);
  v56 = v12;
  objc_msgSend_setData_(v13, v14, v12, v15);
  v18 = objc_msgSend_objectForKey_(itemCopy, v16, @"guid", v17);
  objc_msgSend_setMessageGUID_(v13, v19, v18, v20);
  v23 = objc_msgSend_objectForKey_(itemCopy, v21, @"flags", v22);
  v27 = (objc_msgSend_unsignedLongLongValue(v23, v24, v25, v26) >> 2) & 1;

  objc_msgSend_setIsFromMe_(v13, v28, v27, v29);
  objc_msgSend_setUrl_(v13, v30, lCopy, v31);
  v35 = objc_msgSend_array(MEMORY[0x1E695DF70], v32, v33, v34);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v36 = pathsCopy;
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v57, v61, 16);
  if (v38)
  {
    v41 = v38;
    v42 = *v58;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v58 != v42)
        {
          objc_enumerationMutation(v36);
        }

        v44 = objc_msgSend_fileURLWithPath_(MEMORY[0x1E695DFF8], v39, *(*(&v57 + 1) + 8 * i), v40);
        v45 = v44;
        if (v35 && v44)
        {
          CFArrayAppendValue(v35, v44);
        }
      }

      v41 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v57, v61, 16);
    }

    while (v41);
  }

  objc_msgSend_setAttachments_(v13, v46, v35, v47);
  v50 = objc_msgSend_linkMetadataForPluginPayload_(MEMORY[0x1E69A8278], v48, v13, v49);
  v54 = objc_msgSend_copy(v50, v51, v52, v53);

  return v54;
}

@end