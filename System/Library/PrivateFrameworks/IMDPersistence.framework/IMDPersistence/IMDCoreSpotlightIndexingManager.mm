@interface IMDCoreSpotlightIndexingManager
+ (id)handleToIdentityMapKey;
+ (id)localIdentityKey;
+ (id)localIdentityProofKey;
+ (id)resolvedURLCustomKey;
+ (id)sharedManager;
- (BOOL)_shouldIndexNextBatchForBatchSize:(unint64_t)size;
- (IMDCoreSpotlightIndexingManager)init;
- (id)_chatDictionaryForChatGUID:(id)d;
- (id)_personIdentityQueue;
- (id)filteringExtensionBundleID;
- (id)indexableIdentifiersForMessageDict:(id)dict chatDictionary:(id)dictionary context:(id)context requireIndexableAttachments:(BOOL)attachments;
- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection;
- (void)_FPProviderIDForItems:(id)items;
- (void)_deleteAllSearchableItemsWithReason:(int64_t)reason completionHandler:(id)handler;
- (void)_deleteSearchableItemsWithIdentifiers:(id)identifiers fromIndex:(id)index withReason:(int64_t)reason completionHandler:(id)handler;
- (void)_resolvedURLForItems:(id)items;
- (void)_sanitizeIndexesForCurrentVersionIfNeeded:(id)needed;
- (void)_updateItem:(id)item withFPProviderID:(id)d;
- (void)_updateItem:(id)item withIdentityMap:(id)map localIdentity:(id)identity localIdentityProof:(id)proof completionBlock:(id)block;
- (void)_updateItem:(id)item withResolvedURL:(id)l;
- (void)addChatGUIDs:(id)ds context:(id)context completionHandler:(id)handler;
- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion;
- (void)deleteAttachmentGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteChatGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteMessageGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler;
- (void)indexChatsWithReason:(int64_t)reason completion:(id)completion;
- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion;
- (void)markAttachmentWithFilePath:(id)path sender:(id)sender recipients:(id)recipients isIncoming:(BOOL)incoming completionHandler:(id)handler;
- (void)postProcessIndexingForItem:(id)item chatDictionary:(id)dictionary context:(id)context;
- (void)postProcessItemsPotentiallyNeedingAdditionalMetadata:(id)metadata;
- (void)prepareForReindexingWithReason:(int64_t)reason completion:(id)completion;
- (void)reIndexWithLocalProofOfInclusionForItemsAsync:(id)async completionHandler:(id)handler;
- (void)reindexMessagesWithCollaborationMetadata:(id)metadata collaborationMetadata:(id)collaborationMetadata reason:(int64_t)reason completionBlock:(id)block;
- (void)setNeedsMessageReindexingWithReason:(int64_t)reason completion:(id)completion;
@end

@implementation IMDCoreSpotlightIndexingManager

- (id)filteringExtensionBundleID
{
  v4 = objc_msgSend_sharedInstance(MEMORY[0x1E69A8018], a2, v2, v3);
  v6 = objc_msgSend_getValueFromDomain_forKey_(v4, v5, @"com.apple.MobileSMS", @"spamFiltrationExtensionID");

  return v6;
}

+ (id)resolvedURLCustomKey
{
  if (qword_1EBA53F80 != -1)
  {
    sub_1B7CF843C();
  }

  v3 = qword_1EBA53F78;

  return v3;
}

- (void)_updateItem:(id)item withResolvedURL:(id)l
{
  v68[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  lCopy = l;
  if ((IMDCoreSpotlightDisabled(lCopy, v8, v9, v10) & 1) == 0)
  {
    if (objc_msgSend_length(lCopy, v11, v12, v13))
    {
      v14 = objc_alloc(MEMORY[0x1E6964E90]);
      v17 = objc_msgSend_initWithItemContentType_(v14, v15, *MEMORY[0x1E6963848], v16);
      v18 = objc_opt_class();
      v22 = objc_msgSend_resolvedURLCustomKey(v18, v19, v20, v21);
      objc_msgSend_setValue_forCustomKey_(v17, v23, lCopy, v22);

      v27 = objc_msgSend_attributeSet(itemCopy, v24, v25, v26);
      v31 = objc_msgSend_bundleID(v27, v28, v29, v30);
      objc_msgSend_setBundleID_(v17, v32, v31, v33);

      v37 = objc_msgSend_attributeSet(itemCopy, v34, v35, v36);
      v41 = objc_msgSend_identifier(v37, v38, v39, v40);
      objc_msgSend_setIdentifier_(v17, v42, v41, v43);

      v44 = objc_alloc(MEMORY[0x1E6964E80]);
      v48 = objc_msgSend_uniqueIdentifier(itemCopy, v45, v46, v47);
      v52 = objc_msgSend_domainIdentifier(itemCopy, v49, v50, v51);
      v54 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v44, v53, v48, v52, v17);

      objc_msgSend_setIsUpdate_(v54, v55, 1, v56);
      v60 = objc_msgSend__collaborationIndex(self, v57, v58, v59);
      v68[0] = v54;
      v62 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v61, v68, 1);
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = sub_1B7B871FC;
      v65[3] = &unk_1E7CB6C58;
      v66 = itemCopy;
      objc_msgSend_indexSearchableItems_completionHandler_(v60, v63, v62, v65);
    }

    else if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v64, OS_LOG_TYPE_INFO, "Invalid ResolvedURL", buf, 2u);
      }
    }
  }
}

- (void)_updateItem:(id)item withFPProviderID:(id)d
{
  v86 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  dCopy = d;
  if ((IMDCoreSpotlightDisabled(dCopy, v8, v9, v10) & 1) == 0)
  {
    if (objc_msgSend_length(dCopy, v11, v12, v13))
    {
      v14 = objc_alloc(MEMORY[0x1E6964E90]);
      v17 = objc_msgSend_initWithItemContentType_(v14, v15, *MEMORY[0x1E6963848], v16);
      objc_msgSend_setFileProviderID_(v17, v18, dCopy, v19);
      v23 = objc_msgSend_attributeSet(itemCopy, v20, v21, v22);
      v27 = objc_msgSend_bundleID(v23, v24, v25, v26);
      objc_msgSend_setBundleID_(v17, v28, v27, v29);

      v33 = objc_msgSend_attributeSet(itemCopy, v30, v31, v32);
      v37 = objc_msgSend_identifier(v33, v34, v35, v36);
      objc_msgSend_setIdentifier_(v17, v38, v37, v39);

      v43 = objc_msgSend_attributeSet(itemCopy, v40, v41, v42);
      v47 = objc_msgSend_contentType(v43, v44, v45, v46);
      objc_msgSend_setContentType_(v17, v48, v47, v49);

      v53 = objc_msgSend_attributeSet(itemCopy, v50, v51, v52);
      v57 = objc_msgSend_contentTypeTree(v53, v54, v55, v56);
      objc_msgSend_setContentTypeTree_(v17, v58, v57, v59);

      v60 = objc_alloc(MEMORY[0x1E6964E80]);
      v64 = objc_msgSend_uniqueIdentifier(itemCopy, v61, v62, v63);
      v68 = objc_msgSend_domainIdentifier(itemCopy, v65, v66, v67);
      v70 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v60, v69, v64, v68, v17);

      objc_msgSend_setIsUpdate_(v70, v71, 1, v72);
      v76 = objc_msgSend__collaborationIndex(self, v73, v74, v75);
      v83 = v70;
      v78 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v77, &v83, 1);
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = sub_1B7B87614;
      v81[3] = &unk_1E7CB6C58;
      v82 = itemCopy;
      objc_msgSend_indexSearchableItems_completionHandler_(v76, v79, v78, v81);
    }

    else if (IMOSLoggingEnabled())
    {
      v80 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v85 = dCopy;
        _os_log_impl(&dword_1B7AD5000, v80, OS_LOG_TYPE_INFO, "Invalid providerID: %@", buf, 0xCu);
      }
    }
  }
}

+ (id)localIdentityProofKey
{
  if (qword_1EBA53F90 != -1)
  {
    sub_1B7CF8450();
  }

  v3 = qword_1EBA53F88;

  return v3;
}

+ (id)localIdentityKey
{
  if (qword_1EBA53FA0 != -1)
  {
    sub_1B7CF8464();
  }

  v3 = qword_1EBA53F98;

  return v3;
}

+ (id)handleToIdentityMapKey
{
  if (qword_1EBA53FB0 != -1)
  {
    sub_1B7CF8478();
  }

  v3 = qword_1EBA53FA8;

  return v3;
}

- (void)_updateItem:(id)item withIdentityMap:(id)map localIdentity:(id)identity localIdentityProof:(id)proof completionBlock:(id)block
{
  v126 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mapCopy = map;
  identityCopy = identity;
  proofCopy = proof;
  blockCopy = block;
  if (IMDCoreSpotlightDisabled(blockCopy, v17, v18, v19))
  {
    blockCopy[2](blockCopy);
  }

  else if (mapCopy && identityCopy && proofCopy)
  {
    v20 = objc_alloc(MEMORY[0x1E6964E90]);
    v23 = objc_msgSend_initWithItemContentType_(v20, v21, *MEMORY[0x1E6963848], v22);
    v118 = 0;
    v109 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v24, identityCopy, 1, &v118);
    v112 = v118;
    v117 = 0;
    v108 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v25, proofCopy, 1, &v117);
    v111 = v117;
    v116 = 0;
    v107 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v26, mapCopy, 1, &v116);
    v110 = v116;
    if (v112 || v111 || v110)
    {
      if (IMOSLoggingEnabled())
      {
        v106 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v121 = v112;
          v122 = 2112;
          v123 = v111;
          v124 = 2112;
          v125 = v110;
          _os_log_impl(&dword_1B7AD5000, v106, OS_LOG_TYPE_INFO, "Archive error for localIdentity: %@, localIdentityProof: %@ or identityMap: %@", buf, 0x20u);
        }
      }

      blockCopy[2](blockCopy);
    }

    else
    {
      v30 = objc_msgSend_attributeSet(itemCopy, v27, v28, v29);
      v34 = objc_msgSend_bundleID(v30, v31, v32, v33);
      objc_msgSend_setBundleID_(v23, v35, v34, v36);

      v40 = objc_msgSend_attributeSet(itemCopy, v37, v38, v39);
      v44 = objc_msgSend_identifier(v40, v41, v42, v43);
      objc_msgSend_setIdentifier_(v23, v45, v44, v46);

      v47 = objc_opt_class();
      v51 = objc_msgSend_localIdentityKey(v47, v48, v49, v50);
      objc_msgSend_setValue_forCustomKey_(v23, v52, v109, v51);

      v53 = objc_opt_class();
      v57 = objc_msgSend_localIdentityProofKey(v53, v54, v55, v56);
      objc_msgSend_setValue_forCustomKey_(v23, v58, v108, v57);

      v59 = objc_opt_class();
      v63 = objc_msgSend_handleToIdentityMapKey(v59, v60, v61, v62);
      objc_msgSend_setValue_forCustomKey_(v23, v64, v107, v63);

      v68 = objc_msgSend_attributeSet(itemCopy, v65, v66, v67);
      v72 = objc_msgSend_contentType(v68, v69, v70, v71);
      objc_msgSend_setContentType_(v23, v73, v72, v74);

      v78 = objc_msgSend_attributeSet(itemCopy, v75, v76, v77);
      v82 = objc_msgSend_contentTypeTree(v78, v79, v80, v81);
      objc_msgSend_setContentTypeTree_(v23, v83, v82, v84);

      v85 = objc_alloc(MEMORY[0x1E6964E80]);
      v89 = objc_msgSend_uniqueIdentifier(itemCopy, v86, v87, v88);
      v93 = objc_msgSend_domainIdentifier(itemCopy, v90, v91, v92);
      v95 = objc_msgSend_initWithUniqueIdentifier_domainIdentifier_attributeSet_(v85, v94, v89, v93, v23);

      objc_msgSend_setIsUpdate_(v95, v96, 1, v97);
      v101 = objc_msgSend__collaborationIndex(self, v98, v99, v100);
      v119 = v95;
      v103 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v102, &v119, 1);
      v113[0] = MEMORY[0x1E69E9820];
      v113[1] = 3221225472;
      v113[2] = sub_1B7B87E64;
      v113[3] = &unk_1E7CBB398;
      v114 = itemCopy;
      v115 = blockCopy;
      objc_msgSend_indexSearchableItems_completionHandler_(v101, v104, v103, v113);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v105 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v105, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v121 = identityCopy;
        v122 = 2112;
        v123 = proofCopy;
        v124 = 2112;
        v125 = mapCopy;
        _os_log_impl(&dword_1B7AD5000, v105, OS_LOG_TYPE_INFO, "Invalid localIdentity: %@, localIdentityProof: %@ or identityMap: %@", buf, 0x20u);
      }
    }

    blockCopy[2](blockCopy);
  }
}

- (void)_resolvedURLForItems:(id)items
{
  v69 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v4 = IMOSLoggingEnabled();
  if (v4)
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v65 = objc_msgSend_count(itemsCopy, v9, v10, v11);
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "Checking if we need to add resolved URLs for %lu items", buf, 0xCu);
    }
  }

  sub_1B7B88320(v4, v5, v6, v7);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v12 = itemsCopy;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v60, v68, 16);
  if (v17)
  {
    v19 = *v61;
    *&v18 = 138412546;
    v57 = v18;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v61 != v19)
        {
          objc_enumerationMutation(v12);
        }

        v21 = *(*(&v60 + 1) + 8 * i);
        v22 = objc_msgSend_attributeSet(v21, v14, v15, v16, v57);
        v26 = objc_msgSend_URL(v22, v23, v24, v25);
        isNewsURL = objc_msgSend_nr_isNewsURL(v26, v27, v28, v29);
        isWebURL = objc_msgSend_nr_isWebURL(v26, v31, v32, v33);
        v35 = IMOSLoggingEnabled();
        if (v35)
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            if (isNewsURL)
            {
              v40 = @"YES";
            }

            else
            {
              v40 = @"NO";
            }

            *buf = v57;
            v65 = v40;
            if (isWebURL)
            {
              v41 = @"YES";
            }

            else
            {
              v41 = @"NO";
            }

            v66 = 2112;
            v67 = v41;
            _os_log_impl(&dword_1B7AD5000, v39, OS_LOG_TYPE_INFO, "isNewsURL: %@ isWebURL:%@", buf, 0x16u);
          }
        }

        if ((isNewsURL | isWebURL))
        {
          v42 = sub_1B7B88414(v35, v36, v37, v38);
          v46 = objc_msgSend_sharedManager(v42, v43, v44, v45);
          v49 = v46;
          if (isNewsURL)
          {
            objc_msgSend_createResolutionOperationForNewsURL_(v46, v47, v26, v48);
          }

          else
          {
            objc_msgSend_createResolutionOperationForWebURL_(v46, v47, v26, v48);
          }
          v51 = ;

          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = sub_1B7B884F4;
          v59[3] = &unk_1E7CBB3E8;
          v59[4] = v21;
          v59[5] = self;
          objc_msgSend_setResolutionCompletion_(v51, v52, v59, v53);
          objc_msgSend_start(v51, v54, v55, v56);
        }

        else if (IMOSLoggingEnabled())
        {
          v50 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v50, OS_LOG_TYPE_INFO, "URL was not classified as either WebURL or a News URL", buf, 2u);
          }
        }
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v60, v68, 16);
    }

    while (v17);
  }
}

- (id)_personIdentityQueue
{
  if (qword_1EBA53FC0 != -1)
  {
    sub_1B7CF850C();
  }

  v3 = qword_1EBA53FB8;

  return v3;
}

- (void)_FPProviderIDForItems:(id)items
{
  selfCopy = self;
  v47 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v46 = objc_msgSend_count(itemsCopy, v5, v6, v7);
      _os_log_impl(&dword_1B7AD5000, v4, OS_LOG_TYPE_INFO, "Checking if we need to add FileProviderID for %lu items", buf, 0xCu);
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = itemsCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v40, v44, 16);
  if (v12)
  {
    v13 = *v41;
    do
    {
      v14 = 0;
      do
      {
        if (*v41 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v40 + 1) + 8 * v14);
        v16 = objc_msgSend_attributeSet(v15, v9, v10, v11, selfCopy);
        v20 = objc_msgSend_URL(v16, v17, v18, v19);
        v24 = objc_msgSend_isShared(v16, v21, v22, v23);
        v28 = objc_msgSend_BOOLValue(v24, v25, v26, v27);

        if (((v20 != 0) & v28) == 1)
        {
          if (qword_1EBA53FD0 != -1)
          {
            sub_1B7CF8520();
          }

          v29 = off_1EBA53FC8;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = sub_1B7B88B90;
          aBlock[3] = &unk_1E7CBB438;
          v30 = v20;
          v36 = v30;
          v37 = v16;
          v38 = selfCopy;
          v39 = v15;
          v31 = _Block_copy(aBlock);
          v29(v30, 0, v31);
        }

        else if (IMOSLoggingEnabled())
        {
          v32 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B7AD5000, v32, OS_LOG_TYPE_INFO, "URL was not classified as a CollaborationURL", buf, 2u);
          }
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v9, &v40, v44, 16);
    }

    while (v12);
  }
}

- (void)reIndexWithLocalProofOfInclusionForItemsAsync:(id)async completionHandler:(id)handler
{
  v146 = *MEMORY[0x1E69E9840];
  asyncCopy = async;
  block = handler;
  group = dispatch_group_create();
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = objc_msgSend_count(asyncCopy, v7, v8, v9, block);
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_INFO, "Generating and indexing local proof of inclusion for %lu items", &buf, 0xCu);
    }
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = asyncCopy;
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v10, &v127, v145, 16);
  if (v113)
  {
    v111 = *v128;
    v107 = v133;
    do
    {
      for (i = 0; i != v113; ++i)
      {
        if (*v128 != v111)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v127 + 1) + 8 * i);
        v16 = objc_msgSend_attributeSet(v15, v11, v12, v13, block, v107);
        v115 = objc_msgSend_URL(v16, v17, v18, v19);
        v23 = objc_msgSend_isShared(v16, v20, v21, v22);
        v27 = objc_msgSend_BOOLValue(v23, v24, v25, v26);

        if (((v115 != 0) & v27) == 1)
        {
          v31 = objc_msgSend_attributeSet(v15, v28, v29, v30);
          v35 = objc_msgSend_accountHandles(v31, v32, v33, v34);

          v39 = objc_msgSend_attributeSet(v15, v36, v37, v38);
          v43 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v40, v41, v42);
          v114 = objc_msgSend_valueForCustomKey_(v39, v44, v43, v45);

          v46 = MEMORY[0x1E696ACD0];
          v47 = MEMORY[0x1E695DFD8];
          v144 = objc_opt_class();
          v49 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v48, &v144, 1);
          v52 = objc_msgSend_setWithArray_(v47, v50, v49, v51);
          v126 = 0;
          v54 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v46, v53, v52, v114, &v126);
          v112 = v126;

          if (!v54)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_41;
            }

            v98 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
            {
              v102 = objc_msgSend_description(v112, v99, v100, v101);
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v102;
              _os_log_impl(&dword_1B7AD5000, v98, OS_LOG_TYPE_INFO, "Failed to unarchive Collaboration Metadata: %@. Not indexing this item.", &buf, 0xCu);
            }

LABEL_40:

            goto LABEL_41;
          }

          v58 = objc_msgSend_collaborationIdentifier(v54, v55, v56, v57);
          v59 = v58 == 0;

          if (v59)
          {
            if (!IMOSLoggingEnabled())
            {
              goto LABEL_41;
            }

            v98 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&dword_1B7AD5000, v98, OS_LOG_TYPE_INFO, "Collaboration metadata has a nil collaboration identifier, which is needed for key diversification. Not indexing this item.", &buf, 2u);
            }

            goto LABEL_40;
          }

          v63 = objc_msgSend_handleToIdentityMap(v54, v60, v61, v62);
          v64 = v63 == 0;

          if (v64)
          {
            if (IMOSLoggingEnabled())
            {
              v98 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&dword_1B7AD5000, v98, OS_LOG_TYPE_INFO, "handleToIdentityMap is required for identity proof lookup. Not indexing proof of inclusion this item. This may not be a generic 3rd party collaboration.", &buf, 2u);
              }

              goto LABEL_40;
            }

LABEL_41:

            goto LABEL_47;
          }

          *&buf = 0;
          *(&buf + 1) = &buf;
          v140 = 0x3032000000;
          v141 = sub_1B7AE1A24;
          v142 = sub_1B7AE2528;
          v143 = 0;
          v122 = 0u;
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v65 = v35;
          v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v66, &v122, v138, 16);
          if (v70)
          {
            v71 = *v123;
            do
            {
              for (j = 0; j != v70; ++j)
              {
                if (*v123 != v71)
                {
                  objc_enumerationMutation(v65);
                }

                v73 = *(*(&v122 + 1) + 8 * j);
                v74 = objc_msgSend_handleToIdentityMap(v54, v67, v68, v69);
                v77 = objc_msgSend_objectForKey_(v74, v75, v73, v76);
                v78 = *(*(&buf + 1) + 40);
                *(*(&buf + 1) + 40) = v77;
              }

              v70 = objc_msgSend_countByEnumeratingWithState_objects_count_(v65, v67, &v122, v138, 16);
            }

            while (v70);
          }

          v134 = 0;
          v135 = &v134;
          v136 = 0x2050000000;
          v82 = qword_1EBA54008;
          v137 = qword_1EBA54008;
          if (!qword_1EBA54008)
          {
            *v131 = MEMORY[0x1E69E9820];
            v132 = 3221225472;
            v133[0] = sub_1B7B8AC38;
            v133[1] = &unk_1E7CB6EA8;
            v133[2] = &v134;
            sub_1B7B8AC38(v131, v79, v80, v81);
            v82 = v135[3];
          }

          v83 = v82;
          _Block_object_dispose(&v134, 8);
          v84 = [v82 alloc];
          v88 = objc_msgSend__personIdentityQueue(self, v85, v86, v87);
          v90 = objc_msgSend_initWithTargetSerialQueue_synchronous_(v84, v89, v88, 1);

          if (v90)
          {
            dispatch_group_enter(group);
            v91 = *(*(&buf + 1) + 40);
            v95 = objc_msgSend_collaborationIdentifier(v54, v92, v93, v94);
            v116[0] = MEMORY[0x1E69E9820];
            v116[1] = 3221225472;
            v116[2] = sub_1B7B89AB8;
            v116[3] = &unk_1E7CBB460;
            v117 = group;
            selfCopy = self;
            p_buf = &buf;
            v119 = v15;
            v120 = v54;
            objc_msgSend_generateProofForIdentity_collaborationIdentifier_timeout_completion_(v90, v96, v91, v95, v116, 10.0);
          }

          else if (IMOSLoggingEnabled())
          {
            v103 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
            {
              *v131 = 0;
              _os_log_impl(&dword_1B7AD5000, v103, OS_LOG_TYPE_INFO, "Unable to create handshakeController", v131, 2u);
            }
          }

          _Block_object_dispose(&buf, 8);
        }

        else if (IMOSLoggingEnabled())
        {
          v97 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1B7AD5000, v97, OS_LOG_TYPE_INFO, "URL was not classified as a CollaborationURL", &buf, 2u);
          }
        }

LABEL_47:
      }

      v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v127, v145, 16);
    }

    while (v113);
  }

  v105 = IMDIndexingClientRequestQueue(v104);
  dispatch_group_notify(group, v105, block);
}

- (void)postProcessItemsPotentiallyNeedingAdditionalMetadata:(id)metadata
{
  v157 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  if (objc_msgSend_count(metadataCopy, v4, v5, v6))
  {
    v137 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v138 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v148 = 0u;
    v149 = 0u;
    v150 = 0u;
    v151 = 0u;
    v134 = metadataCopy;
    obj = metadataCopy;
    v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v148, v156, 16);
    if (v140)
    {
      v139 = *v149;
      do
      {
        for (i = 0; i != v140; ++i)
        {
          if (*v149 != v139)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v148 + 1) + 8 * i);
          v13 = objc_msgSend_attributeSet(v12, v8, v9, v10, v134);
          v17 = objc_msgSend_messageType(v13, v14, v15, v16);

          if (objc_msgSend_isEqualToString_(v17, v18, @"lnk", v19))
          {
            v23 = objc_msgSend_attributeSet(v12, v20, v21, v22);
            v141 = objc_msgSend_contentCreationDate(v23, v24, v25, v26);

            v30 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v27, v28, v29);
            v34 = objc_msgSend_now(MEMORY[0x1E695DF00], v31, v32, v33);
            v36 = objc_msgSend_dateByAddingUnit_value_toDate_options_(v30, v35, 16, -30, v34, 0);

            v40 = objc_msgSend_currentCalendar(MEMORY[0x1E695DEE8], v37, v38, v39);
            v43 = objc_msgSend_startOfDayForDate_(v40, v41, v36, v42);

            if (objc_msgSend_compare_(v141, v44, v43, v45) == 1)
            {
              objc_msgSend_addObject_(v138, v46, v12, v47);
            }

            else if (IMOSLoggingEnabled())
            {
              v51 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
              {
                v55 = objc_msgSend_attributeSet(v12, v52, v53, v54);
                v59 = objc_msgSend_uniqueIdentifier(v55, v56, v57, v58);
                *buf = 67109378;
                *v155 = 30;
                *&v155[4] = 2112;
                *&v155[6] = v59;
                _os_log_impl(&dword_1B7AD5000, v51, OS_LOG_TYPE_INFO, "Skipping adding resolvedURL since link is older than %d days: %@", buf, 0x12u);
              }
            }

            v60 = objc_msgSend_attributeSet(v12, v48, v49, v50);
            v64 = objc_msgSend_isShared(v60, v61, v62, v63);
            v68 = objc_msgSend_BOOLValue(v64, v65, v66, v67);

            if (v68)
            {
              v72 = objc_msgSend_attributeSet(v12, v69, v70, v71);
              v76 = objc_msgSend_collaborationMetadataKey(IMDSharedWithYouMetadataManager, v73, v74, v75);
              v79 = objc_msgSend_valueForCustomKey_(v72, v77, v76, v78);

              v80 = MEMORY[0x1E696ACD0];
              v81 = MEMORY[0x1E695DFD8];
              v153 = objc_opt_class();
              v83 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v82, &v153, 1);
              v86 = objc_msgSend_setWithArray_(v81, v84, v83, v85);
              v147 = 0;
              v88 = objc_msgSend__strictlyUnarchivedObjectOfClasses_fromData_error_(v80, v87, v86, v79, &v147);
              v89 = v147;

              v96 = objc_msgSend_collaborationIdentifier(v88, v90, v91, v92);
              if (v96)
              {
                v97 = objc_msgSend_handleToIdentityMap(v88, v93, v94, v95);
                v98 = v97 == 0;

                if (!v98)
                {
                  objc_msgSend_addObject_(v137, v99, v12, v100);
                }
              }
            }
          }
        }

        v140 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v8, &v148, v156, 16);
      }

      while (v140);
    }

    if (objc_msgSend_count(v137, v101, v102, v103))
    {
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v107 = v137;
      v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v108, &v143, v152, 16);
      if (v111)
      {
        v112 = *v144;
        do
        {
          for (j = 0; j != v111; ++j)
          {
            if (*v144 != v112)
            {
              objc_enumerationMutation(v107);
            }

            v114 = objc_msgSend_indexOfObject_(obj, v109, *(*(&v143 + 1) + 8 * j), v110, v134);
            v117 = objc_msgSend_objectAtIndex_(obj, v115, v114, v116);
            if (IMOSLoggingEnabled())
            {
              v120 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
              {
                v124 = objc_msgSend_attributeSet(v117, v121, v122, v123);
                v128 = objc_msgSend_uniqueIdentifier(v124, v125, v126, v127);
                *buf = 138412290;
                *v155 = v128;
                _os_log_impl(&dword_1B7AD5000, v120, OS_LOG_TYPE_INFO, "Setting CS Item with uniqueidentifier  %@ to be updatable", buf, 0xCu);
              }
            }

            objc_msgSend_setIsUpdate_(v117, v118, 1, v119);
          }

          v111 = objc_msgSend_countByEnumeratingWithState_objects_count_(v107, v109, &v143, v152, 16);
        }

        while (v111);
      }
    }

    if (objc_msgSend_count(v138, v104, v105, v106, v134))
    {
      objc_msgSend__resolvedURLForItems_(self, v129, v138, v130);
      objc_msgSend__FPProviderIDForItems_(self, v131, v138, v132);
      objc_msgSend_reIndexWithLocalProofOfInclusionForItemsAsync_completionHandler_(self, v133, v138, &unk_1F2FA0D30);
    }

    metadataCopy = v135;
  }
}

- (void)reindexMessagesWithCollaborationMetadata:(id)metadata collaborationMetadata:(id)collaborationMetadata reason:(int64_t)reason completionBlock:(id)block
{
  v34 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  collaborationMetadataCopy = collaborationMetadata;
  blockCopy = block;
  v15 = objc_msgSend_count(metadataCopy, v12, v13, v14);
  v16 = IMOSLoggingEnabled();
  if (!v15)
  {
    if (v16)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v25, OS_LOG_TYPE_INFO, "Trying to reindex messages with an empty guids array", buf, 2u);
      }
    }

    goto LABEL_23;
  }

  if (v16)
  {
    v20 = OSLogHandleForIMEventCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v33 = objc_msgSend_count(metadataCopy, v21, v22, v23);
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Request to re-index messages with messages count: %d", buf, 8u);
    }
  }

  if (IMDCoreSpotlightDisabled(v16, v17, v18, v19))
  {
    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Spotlight is disabled", buf, 2u);
      }
    }

LABEL_23:
    blockCopy[2](blockCopy);
    goto LABEL_24;
  }

  if (!collaborationMetadataCopy)
  {
    if (IMOSLoggingEnabled())
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v26, OS_LOG_TYPE_INFO, "No Collaboration metadata", buf, 2u);
      }
    }

    goto LABEL_23;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_1B7B8A634;
  v27[3] = &unk_1E7CBB4B0;
  reasonCopy = reason;
  v28 = metadataCopy;
  v29 = collaborationMetadataCopy;
  v30 = blockCopy;
  IMDIndexingClientRequest(v27);

LABEL_24:
}

+ (id)sharedManager
{
  if (qword_1EBA53A90 != -1)
  {
    sub_1B7CF8E1C();
  }

  v3 = qword_1EBA53A70;

  return v3;
}

- (IMDCoreSpotlightIndexingManager)init
{
  v5 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], a2, v2, v3);
  isSpotlightRefactorEnabled = objc_msgSend_isSpotlightRefactorEnabled(v5, v6, v7, v8);

  if ((isSpotlightRefactorEnabled & 1) == 0)
  {
    sub_1B7CF8E30(v10, v11, v12, v13);
  }

  v24.receiver = self;
  v24.super_class = IMDCoreSpotlightIndexingManager;
  v14 = [(IMDCoreSpotlightIndexingManager *)&v24 init];
  if (v14)
  {
    v15 = [IMDCoreSpotlightSearchableItemGenerator alloc];
    v19 = objc_msgSend_sharedController(IMDIndexingMessageScrutinyController, v16, v17, v18);
    v21 = objc_msgSend_initWithScrutinyController_delegate_(v15, v20, v19, v14);
    searchableItemGenerator = v14->_searchableItemGenerator;
    v14->_searchableItemGenerator = v21;
  }

  return v14;
}

- (void)_deleteSearchableItemsWithIdentifiers:(id)identifiers fromIndex:(id)index withReason:(int64_t)reason completionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  indexCopy = index;
  handlerCopy = handler;
  IMDIndexingAssertClientRequestQueue();
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = objc_msgSend_count(identifiersCopy, v13, v14, v15);
      v17 = NSStringFromIMCoreSpotlightIndexReason();
      *buf = 134218242;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_INFO, "Deleting %ld messages from index due to %@", buf, 0x16u);
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = sub_1B7AE1A74;
  v30 = sub_1B7AE2550;
  v31 = 0;
  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_1B7B93F78;
  v25[3] = &unk_1E7CBB600;
  v27 = buf;
  v19 = v18;
  v26 = v19;
  v21 = objc_msgSend_deleteSearchableItemsWithIdentifiers_reason_completionHandler_(indexCopy, v20, identifiersCopy, reason, v25);
  v22 = IMDIndexingClientRequestQueue(v21);
  dispatch_time(0, 60000000000);
  v23 = identifiersCopy;
  v24 = handlerCopy;
  IMDispatchGroupNotifyWithTimeout();

  _Block_object_dispose(buf, 8);
}

- (id)messageIndexingJobWithSize:(int64_t)size context:(id)context timingCollection:(id)collection
{
  collectionCopy = collection;
  contextCopy = context;
  v8 = [IMDCoreSpotlightMessageIndexingJob alloc];
  v10 = objc_msgSend_initWithContext_timing_(v8, v9, contextCopy, collectionCopy);

  return v10;
}

- (void)deleteAttachmentGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7B94288;
  v14[3] = &unk_1E7CBB4B0;
  v14[4] = self;
  v15 = dsCopy;
  v16 = handlerCopy;
  reasonCopy = reason;
  v10 = handlerCopy;
  v11 = dsCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v12, v14, v13);
}

- (void)deleteMessageGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7B943B4;
  v14[3] = &unk_1E7CBB4B0;
  v15 = dsCopy;
  selfCopy = self;
  v17 = handlerCopy;
  reasonCopy = reason;
  v10 = handlerCopy;
  v11 = dsCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v12, v14, v13);
}

- (id)_chatDictionaryForChatGUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1B7AE1A74;
  v16 = sub_1B7AE2550;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B9464C;
  v9[3] = &unk_1E7CBB6A0;
  v4 = dCopy;
  v10 = v4;
  v11 = &v12;
  IMDPersistencePerformBlock(v9, 1, v5, v6);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)deleteChatGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_1B7B94778;
  v14[3] = &unk_1E7CBB4B0;
  v15 = dsCopy;
  selfCopy = self;
  v17 = handlerCopy;
  reasonCopy = reason;
  v10 = handlerCopy;
  v11 = dsCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v12, v14, v13);
}

- (void)addChatGUIDs:(id)ds context:(id)context completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  handlerCopy = handler;
  if (IMDCoreSpotlightDisabled(handlerCopy, v11, v12, v13) || !objc_msgSend_count(dsCopy, v14, v15, v16))
  {
    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        v29 = objc_msgSend_count(dsCopy, v18, v19, v20);
        _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_INFO, "Adding %lu chats to CoreSpotlight", buf, 0xCu);
      }
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_1B7B94F80;
    v23[3] = &unk_1E7CB70F8;
    v24 = dsCopy;
    selfCopy = self;
    v26 = contextCopy;
    v27 = handlerCopy;
    objc_msgSend__performSpotlightRequestWithBlock_(self, v21, v23, v22);
  }
}

- (void)deleteAllDonationsForAppDeletionWithCompletion:(id)completion
{
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_INFO, "Deleting all spotlight data because the app is being uninstalled.", buf, 2u);
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B953C4;
  v9[3] = &unk_1E7CB7260;
  v9[4] = self;
  v10 = completionCopy;
  v6 = completionCopy;
  objc_msgSend__performSpotlightRequestWithBlock_(self, v7, v9, v8);
}

- (void)postProcessIndexingForItem:(id)item chatDictionary:(id)dictionary context:(id)context
{
  contextCopy = context;
  dictionaryCopy = dictionary;
  itemCopy = item;
  v14 = objc_msgSend_sharedController(IMDIndexingController, v10, v11, v12);
  objc_msgSend_postProcessIndexingForItem_chatDictionary_context_(v14, v13, itemCopy, dictionaryCopy, contextCopy);
}

- (void)markAttachmentWithFilePath:(id)path sender:(id)sender recipients:(id)recipients isIncoming:(BOOL)incoming completionHandler:(id)handler
{
  incomingCopy = incoming;
  handlerCopy = handler;
  recipientsCopy = recipients;
  senderCopy = sender;
  pathCopy = path;
  v15 = [_IMDMetadataItem alloc];
  v20 = objc_msgSend_initWithFilePath_(v15, v16, pathCopy, v17);

  isIncoming = objc_msgSend_markWithSender_recipients_isIncoming_(v20, v18, senderCopy, recipientsCopy, incomingCopy);
  handlerCopy[2](handlerCopy, isIncoming);
}

- (id)indexableIdentifiersForMessageDict:(id)dict chatDictionary:(id)dictionary context:(id)context requireIndexableAttachments:(BOOL)attachments
{
  attachmentsCopy = attachments;
  v86 = *MEMORY[0x1E69E9840];
  dictCopy = dict;
  dictionaryCopy = dictionary;
  contextCopy = context;
  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v16 = objc_msgSend_sharedManager(IMDCoreSpotlightIndexingManager, v13, v14, v15);
  v20 = objc_msgSend_searchableItemGenerator(v16, v17, v18, v19);
  v22 = objc_msgSend_newSearchableItemsForMessageItemDictionary_chatDictionary_context_rejectedItems_populatedChatItems_(v20, v21, dictCopy, dictionaryCopy, contextCopy, v12, 0);

  if (objc_msgSend_count(v22, v23, v24, v25))
  {
    v73 = v12;
    v74 = contextCopy;
    v75 = dictionaryCopy;
    if (attachmentsCopy)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v29 = v22;
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v80, v85, 16);
      if (v31)
      {
        v35 = v31;
        v36 = *v81;
        v37 = MEMORY[0x1E695E0F0];
        while (2)
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v81 != v36)
            {
              objc_enumerationMutation(v29);
            }

            v39 = objc_msgSend_domainIdentifier(*(*(&v80 + 1) + 8 * i), v32, v33, v34);
            isEqualToString = objc_msgSend_isEqualToString_(v39, v40, @"attachmentDomain", v41);

            if (isEqualToString)
            {

              goto LABEL_14;
            }
          }

          v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v80, v85, 16);
          if (v35)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v37 = MEMORY[0x1E695E0F0];
      }

      v12 = v73;
    }

    else
    {
LABEL_14:
      v29 = objc_msgSend_set(MEMORY[0x1E695DFA8], v26, v27, v28, dictCopy);
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v43 = v22;
      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v76, v84, 16);
      if (v45)
      {
        v49 = v45;
        v50 = *v77;
        do
        {
          for (j = 0; j != v49; ++j)
          {
            if (*v77 != v50)
            {
              objc_enumerationMutation(v43);
            }

            v52 = *(*(&v76 + 1) + 8 * j);
            v53 = objc_msgSend_domainIdentifier(v52, v46, v47, v48);
            v56 = objc_msgSend_isEqualToString_(v53, v54, @"attachmentDomain", v55);

            if ((v56 & 1) == 0)
            {
              v57 = objc_msgSend_uniqueIdentifier(v52, v46, v47, v48);
              objc_msgSend_addObject_(v29, v58, v57, v59);
            }
          }

          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v76, v84, 16);
        }

        while (v49);
      }

      v12 = v73;
      v62 = objc_msgSend_arrayByApplyingSelector_(v73, v60, sel_proposedIdentifier, v61);
      v65 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], v63, v62, v64);
      objc_msgSend_minusSet_(v29, v66, v65, v67);

      v37 = objc_msgSend_allObjects(v29, v68, v69, v70);

      dictCopy = v72;
    }

    contextCopy = v74;
    dictionaryCopy = v75;
  }

  else
  {
    v37 = MEMORY[0x1E695E0F0];
  }

  return v37;
}

- (void)_deleteAllSearchableItemsWithReason:(int64_t)reason completionHandler:(id)handler
{
  v6 = MEMORY[0x1E696AD98];
  handlerCopy = handler;
  v10 = objc_msgSend_numberWithInteger_(v6, v8, reason, v9);
  objc_msgSend__setLastIndexDeleteReason_(self, v11, v10, v12);

  v14 = IMCoreSpotlightCriticalIndex();
  objc_msgSend_deleteAllSearchableItemsWithReason_completionHandler_(v14, v13, reason, handlerCopy);
}

- (void)prepareForReindexingWithReason:(int64_t)reason completion:(id)completion
{
  v41 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v40 = "[IMDCoreSpotlightIndexingManager(Reindexing) prepareForReindexingWithReason:completion:]";
      _os_log_impl(&dword_1B7AD5000, v10, OS_LOG_TYPE_INFO, "%s starting reindex", buf, 0xCu);
    }
  }

  v11 = objc_msgSend_sharedController(IMDIndexingController, v7, v8, v9);
  v15 = objc_msgSend_maxRowID(v11, v12, v13, v14);

  v19 = objc_msgSend_sharedController(IMDIndexingController, v16, v17, v18);
  v23 = objc_msgSend_totalMessages(v19, v20, v21, v22);

  v27 = objc_msgSend_sharedController(IMDIndexingController, v24, v25, v26);
  v31 = objc_msgSend_totalChats(v27, v28, v29, v30);

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1B7B95DC8;
  v33[3] = &unk_1E7CBB7B8;
  v33[4] = self;
  v34 = completionCopy;
  reasonCopy = reason;
  v36 = v15;
  v37 = v23;
  v38 = v31;
  v32 = completionCopy;
  IMDIndexingClientRequest(v33);
}

- (void)setNeedsMessageReindexingWithReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B96138;
  v9[3] = &unk_1E7CBB830;
  v9[4] = self;
  v10 = completionCopy;
  reasonCopy = reason;
  v7 = completionCopy;
  objc_msgSend_prepareForReindexingWithReason_completion_(self, v8, reason, v9);
}

- (void)indexNextMessageBatchIfNeeded:(unint64_t)needed reason:(int64_t)reason completion:(id)completion
{
  v53 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v12 = objc_msgSend_sharedFeatureFlags(MEMORY[0x1E69A8070], v9, v10, v11);
  isSpotlightReindexRefactorEnabled = objc_msgSend_isSpotlightReindexRefactorEnabled(v12, v13, v14, v15);

  if (isSpotlightReindexRefactorEnabled)
  {
    completionCopy[2](completionCopy, 0);
    goto LABEL_32;
  }

  v17 = IMOSLoggingEnabled();
  if (v17)
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      neededCopy = needed;
      _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Indexing next batch of messages. Batch size of %lu", buf, 0xCu);
    }
  }

  if (IMDCoreSpotlightDisabled(v17, v18, v19, v20))
  {
    if (!completionCopy)
    {
      goto LABEL_32;
    }

LABEL_31:
    completionCopy[2](completionCopy, 0);
    goto LABEL_32;
  }

  if (objc_msgSend_skipIndexing(MEMORY[0x1E69A7FF8], v22, v23, v24))
  {
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v31 = objc_msgSend_skipIndexing(MEMORY[0x1E69A7FF8], v28, v29, v30);
        v32 = @"NO";
        if (v31)
        {
          v32 = @"YES";
        }

        *buf = 138412290;
        neededCopy = v32;
        _os_log_impl(&dword_1B7AD5000, v27, OS_LOG_TYPE_INFO, "Skipping indexing next batch since skipIndexing is set to %@", buf, 0xCu);
      }
    }

    if (completionCopy)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (objc_msgSend__shouldIndexNextBatchForBatchSize_(self, v25, needed, v26))
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_1B7B96878;
      v41[3] = &unk_1E7CBB858;
      reasonCopy = reason;
      neededCopy2 = needed;
      v41[4] = self;
      v42 = completionCopy;
      IMDIndexingClientRequest(v41);

      goto LABEL_32;
    }

    if (IMOSLoggingEnabled())
    {
      v33 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v37 = objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], v34, v35, v36);
        v38 = IMDSystemMigrationOccurred();
        v39 = @"NO";
        neededCopy = "[IMDCoreSpotlightIndexingManager(Reindexing) indexNextMessageBatchIfNeeded:reason:completion:]";
        v47 = 2048;
        if (v37)
        {
          v40 = @"YES";
        }

        else
        {
          v40 = @"NO";
        }

        *buf = 136315906;
        neededCopy3 = needed;
        v49 = 2112;
        if (v38)
        {
          v39 = @"YES";
        }

        v50 = v40;
        v51 = 2112;
        v52 = v39;
        _os_log_impl(&dword_1B7AD5000, v33, OS_LOG_TYPE_INFO, "%s - Not indexing. Batch size %lu needsIndexing %@ hasMigrated %@", buf, 0x2Au);
      }
    }

    if (completionCopy)
    {
      goto LABEL_31;
    }
  }

LABEL_32:
}

- (void)indexChatsWithReason:(int64_t)reason completion:(id)completion
{
  completionCopy = completion;
  if (IMDCoreSpotlightDisabled(completionCopy, v7, v8, v9))
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v10 = _IMDSpotlightIndexForIndexingReason(reason);
    if (v10)
    {
      v11 = [IMDCoreSpotlightChatReindexingJob alloc];
      v13 = objc_msgSend_initWithIndex_reason_delegate_(v11, v12, v10, reason, self);
      objc_msgSend_runWithCompletionBlock_(v13, v14, completionCopy, v15);
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *v17 = 0;
          _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, " Failed to create index!", v17, 2u);
        }
      }

      completionCopy[2](completionCopy, 0);
    }
  }
}

- (void)_sanitizeIndexesForCurrentVersionIfNeeded:(id)needed
{
  v52 = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  v8 = objc_msgSend_sharedManager(IMDSpotlightClientStateManager, v5, v6, v7);
  v47 = 0;
  v11 = objc_msgSend_currentClientStateWithError_(v8, v9, &v47, v10);
  v12 = v47;

  if (v12)
  {
    neededCopy[2](neededCopy, v12);
    goto LABEL_28;
  }

  if ((objc_msgSend_needsIndexDrop(v11, v13, v14, v15) & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v37, OS_LOG_TYPE_INFO, "Bypassing index version comparisons. **NOT** deleting indexes", buf, 2u);
      }
    }

    goto LABEL_27;
  }

  v19 = objc_msgSend_needsReindex(v11, v16, v17, v18);
  v20 = IMOSLoggingEnabled();
  if (v19)
  {
    if (v20)
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v25 = objc_msgSend_indexRevision(v11, v22, v23, v24);
        v29 = objc_msgSend__latestIndexRevision(MEMORY[0x1E69A82A8], v26, v27, v28);
        *buf = 134218240;
        v49 = v25;
        v50 = 2048;
        v51 = v29;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Current idx version is %llu, expected is %llu, deleting prior indexes", buf, 0x16u);
      }
    }

    v30 = _IMDSpotlightIndexForIndexingReason(4);
    v31 = v30 == 0;

    if (!v31)
    {
      v32 = objc_alloc_init(MEMORY[0x1E69A6170]);
      objc_msgSend_startTimingForKey_(v32, v33, @"CSDeleteAllIndexes", v34);
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = sub_1B7B96E7C;
      v44[3] = &unk_1E7CBB398;
      v45 = v32;
      v46 = neededCopy;
      v35 = v32;
      objc_msgSend__deleteAllSearchableItemsWithReason_completionHandler_(self, v36, 4, v44);

      goto LABEL_28;
    }

    if (IMOSLoggingEnabled())
    {
      v43 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v43, OS_LOG_TYPE_INFO, " Failed to create index!", buf, 2u);
      }
    }

    if (neededCopy)
    {
LABEL_27:
      neededCopy[2](neededCopy, 0);
    }
  }

  else
  {
    if (v20)
    {
      v38 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v42 = objc_msgSend_indexRevision(v11, v39, v40, v41);
        *buf = 134217984;
        v49 = v42;
        _os_log_impl(&dword_1B7AD5000, v38, OS_LOG_TYPE_INFO, "Current idx version is %llu, index does not need deletion", buf, 0xCu);
      }
    }

    if (neededCopy)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
}

- (BOOL)_shouldIndexNextBatchForBatchSize:(unint64_t)size
{
  if (!size || !objc_msgSend_needsIndexing(MEMORY[0x1E69A7FF8], a2, size, v3))
  {
    return 0;
  }

  return IMDSystemMigrationOccurred();
}

@end