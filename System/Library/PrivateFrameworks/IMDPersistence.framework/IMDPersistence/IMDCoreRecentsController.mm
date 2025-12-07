@interface IMDCoreRecentsController
+ (id)sharedController;
- (id)_dataDetectedMessageGUIDsFromGUIDs:(id)ds;
- (id)createRecentFromMessageDictionary:(id)dictionary participantHandleID:(id)d;
- (id)createRecentsFromVCFWithPath:(id)path messageGUID:(id)d senderID:(id)iD messageDate:(id)date outAddress:(id *)address;
- (void)deleteMessageGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler;
- (void)deleteRecentsForMessageGUIDs:(id)ds completionBlock:(id)block;
- (void)deleteRecentsWithHandleIDs:(id)ds;
@end

@implementation IMDCoreRecentsController

+ (id)sharedController
{
  if (qword_1EBA53AD0 != -1)
  {
    sub_1B7CF839C();
  }

  v3 = qword_1EBA53AA0;

  return v3;
}

- (id)_dataDetectedMessageGUIDsFromGUIDs:(id)ds
{
  dsCopy = ds;
  v7 = objc_msgSend_array(MEMORY[0x1E695DF70], v4, v5, v6);
  if (objc_msgSend_count(dsCopy, v8, v9, v10))
  {
    v14 = 0;
    v15 = 0;
    do
    {
      if ((objc_msgSend_count(dsCopy, v11, v12, v13) + v14) >> 4 > 0x270)
      {
        v19 = 10000;
      }

      else
      {
        v19 = objc_msgSend_count(dsCopy, v16, v17, v18) + v14;
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = sub_1B7B83318;
      v28[3] = &unk_1E7CBB2B0;
      v20 = dsCopy;
      v29 = v20;
      v31 = v15;
      v32 = v19;
      v30 = v7;
      IMDPersistencePerformBlock(v28, 1, v21, v22);

      v15 += 10000;
      v14 -= 10000;
    }

    while (v15 < objc_msgSend_count(v20, v23, v24, v25));
  }

  v26 = objc_msgSend_copy(v7, v11, v12, v13);

  return v26;
}

- (void)deleteRecentsWithHandleIDs:(id)ds
{
  dsCopy = ds;
  if (!dsCopy && IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteCoreRecentsWithHandles bailing because we were passed no handles.", buf, 2u);
    }
  }

  if (objc_msgSend_count(dsCopy, v4, v5, v6) < 2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1B7B83648;
    v12[3] = &unk_1E7CB6AE0;
    v13 = dsCopy;
    objc_msgSend__performClientRequest_(self, v10, v12, v11);
  }

  else if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B7AD5000, v9, OS_LOG_TYPE_INFO, "IMDCoreSpotlightDeleteCoreRecentsWithHandles bailing because this is a group chat.", buf, 2u);
    }
  }
}

- (void)deleteRecentsForMessageGUIDs:(id)ds completionBlock:(id)block
{
  dsCopy = ds;
  blockCopy = block;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B7B83B6C;
  v12[3] = &unk_1E7CB7260;
  v13 = dsCopy;
  v14 = blockCopy;
  v8 = blockCopy;
  v9 = dsCopy;
  objc_msgSend__performClientRequest_(self, v10, v12, v11);
}

- (id)createRecentFromMessageDictionary:(id)dictionary participantHandleID:(id)d
{
  dCopy = d;
  dictionaryCopy = dictionary;
  v7 = _IMDCoreSpotlightCNContactForAddress(dCopy);
  v10 = objc_msgSend_objectForKey_(dictionaryCopy, v8, @"time", v9);
  v13 = objc_msgSend_objectForKey_(dictionaryCopy, v11, @"service", v12);

  v14 = _IMDCoreRecentsKindForHandleID(dCopy, v13);
  v18 = objc_msgSend_sharedInstance(IMDContactCache, v15, v16, v17);
  v21 = objc_msgSend_fullNameForContact_(v18, v19, v7, v20);

  if (!v21)
  {
    v21 = objc_msgSend_im_stripCategoryLabel(dCopy, v22, v23, v24);
  }

  if (v21)
  {
    objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(MEMORY[0x1E6998FC8], v22, dCopy, v21, v14, v10, 0, 0, 1);
  }

  else
  {
    objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(MEMORY[0x1E6998FC8], v22, dCopy, &stru_1F2FA9728, v14, v10, 0, 0, 1);
  }
  v25 = ;

  return v25;
}

- (id)createRecentsFromVCFWithPath:(id)path messageGUID:(id)d senderID:(id)iD messageDate:(id)date outAddress:(id *)address
{
  v142 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  v106 = pathCopy;
  if (pathCopy)
  {
    v107 = objc_msgSend_contactsForVCardAtPath_(IMDContactCache, v11, pathCopy, v12);
    if (objc_msgSend_count(v107, v13, v14, v15))
    {
      v118 = objc_msgSend_array(MEMORY[0x1E695DF70], v16, v17, v18);
      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      obj = v107;
      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v19, &v133, v141, 16);
      if (v105)
      {
        v102 = *v134;
        v117 = *MEMORY[0x1E6998F58];
        v20 = *MEMORY[0x1E69A6888];
        do
        {
          v21 = 0;
          do
          {
            if (*v134 != v102)
            {
              v22 = v21;
              objc_enumerationMutation(obj);
              v21 = v22;
            }

            v103 = v21;
            v23 = *(*(&v133 + 1) + 8 * v21);
            v24 = MEMORY[0x1E696AD98];
            v25 = MEMORY[0x1B8CAFAD0]("CRRecentWeightMessagesReceivedAddress", @"CoreRecents");
            v119 = objc_msgSend_numberWithDouble_(v24, v26, v27, v28, *v25);
            v30 = objc_msgSend_metadataDictionaryForMessageID_senderID_date_(MEMORY[0x1E69A7FE8], v29, dCopy, iDCopy, dateCopy);
            v131 = 0u;
            v132 = 0u;
            v129 = 0u;
            v130 = 0u;
            v34 = objc_msgSend_postalAddresses(v23, v31, v32, v33);
            v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v129, v140, 16);
            if (v39)
            {
              v40 = *v130;
              do
              {
                for (i = 0; i != v39; ++i)
                {
                  if (*v130 != v40)
                  {
                    objc_enumerationMutation(v34);
                  }

                  v42 = MEMORY[0x1E695CF68];
                  v43 = objc_msgSend_value(*(*(&v129 + 1) + 8 * i), v36, v37, v38);
                  v45 = objc_msgSend_singleLineStringFromPostalAddress_addCountryName_(v42, v44, v43, 0);

                  v47 = objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(MEMORY[0x1E6998FC8], v46, v45, 0, v117, dateCopy, v119, v30, 0);
                  objc_msgSend_addObject_(v118, v48, v47, v49);

                  if (address)
                  {
                    *address = objc_msgSend_copy(v45, v50, v51, v52);
                  }
                }

                v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v129, v140, 16);
              }

              while (v39);
            }

            v127 = 0u;
            v128 = 0u;
            v125 = 0u;
            v126 = 0u;
            v110 = objc_msgSend_urlAddresses(v23, v53, v54, v55);
            v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v56, &v125, v139, 16);
            if (v112)
            {
              v111 = *v126;
              do
              {
                v60 = 0;
                do
                {
                  if (*v126 != v111)
                  {
                    v61 = v60;
                    objc_enumerationMutation(v110);
                    v60 = v61;
                  }

                  v115 = v60;
                  v62 = *(*(&v125 + 1) + 8 * v60);
                  v63 = objc_msgSend_label(v62, v57, v58, v59);
                  isEqualToString = objc_msgSend_isEqualToString_(v63, v64, @"map url", v65);

                  if (isEqualToString)
                  {
                    v114 = objc_msgSend_value(v62, v57, v58, v59);
                    v69 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v67, v114, v68);
                    v113 = objc_msgSend_query(v69, v70, v71, v72);

                    v123 = 0u;
                    v124 = 0u;
                    v121 = 0u;
                    v122 = 0u;
                    v75 = objc_msgSend_componentsSeparatedByString_(v113, v73, @"&", v74);
                    v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v76, &v121, v138, 16);
                    if (v79)
                    {
                      v80 = *v122;
                      do
                      {
                        for (j = 0; j != v79; ++j)
                        {
                          if (*v122 != v80)
                          {
                            objc_enumerationMutation(v75);
                          }

                          v82 = objc_msgSend_componentsSeparatedByString_(*(*(&v121 + 1) + 8 * j), v77, @"=", v78);
                          v85 = objc_msgSend_objectAtIndex_(v82, v83, 0, v84);
                          v88 = objc_msgSend_objectAtIndex_(v82, v86, 1, v87);
                          if (objc_msgSend_isEqualToString_(v85, v89, v20, v90))
                          {
                            v92 = objc_msgSend_recentEventForAddress_displayName_kind_date_weight_metadata_options_(MEMORY[0x1E6998FC8], v91, v88, 0, v117, dateCopy, v119, v30, 0);
                            objc_msgSend_addObject_(v118, v93, v92, v94);
                          }
                        }

                        v79 = objc_msgSend_countByEnumeratingWithState_objects_count_(v75, v77, &v121, v138, 16);
                      }

                      while (v79);
                    }
                  }

                  v60 = v115 + 1;
                }

                while (v115 + 1 != v112);
                v112 = objc_msgSend_countByEnumeratingWithState_objects_count_(v110, v57, &v125, v139, 16);
              }

              while (v112);
            }

            v21 = v103 + 1;
          }

          while (v103 + 1 != v105);
          v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v95, &v133, v141, 16);
        }

        while (v105);
      }

      v99 = objc_msgSend_copy(v118, v96, v97, v98);
    }

    else
    {
      v99 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v100 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B7AD5000, v100, OS_LOG_TYPE_INFO, "_IMDCreateRecentEventsFromVCF() was passed a nil filePath", buf, 2u);
      }
    }

    v99 = 0;
  }

  return v99;
}

- (void)deleteMessageGUIDs:(id)ds reason:(int64_t)reason completionHandler:(id)handler
{
  handlerCopy = handler;
  v10 = objc_msgSend__dataDetectedMessageGUIDsFromGUIDs_(self, v8, ds, v9);
  if (objc_msgSend_count(v10, v11, v12, v13))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B7B84A10;
    v15[3] = &unk_1E7CBB328;
    v16 = handlerCopy;
    objc_msgSend_deleteRecentsForMessageGUIDs_completionBlock_(self, v14, v10, v15);
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

@end