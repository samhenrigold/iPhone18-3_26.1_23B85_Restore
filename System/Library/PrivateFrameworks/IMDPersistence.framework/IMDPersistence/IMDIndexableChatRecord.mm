@interface IMDIndexableChatRecord
- (IMDIndexableChatRecord)initWithChatRecord:(id)record copyLastMessageDate:(BOOL)date;
- (IMDIndexableChatRecord)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation IMDIndexableChatRecord

- (IMDIndexableChatRecord)initWithChatRecord:(id)record copyLastMessageDate:(BOOL)date
{
  dateCopy = date;
  recordCopy = record;
  v105.receiver = self;
  v105.super_class = IMDIndexableChatRecord;
  v10 = [(IMDIndexableChatRecord *)&v105 init];
  if (v10)
  {
    v11 = objc_msgSend_guid(recordCopy, v7, v8, v9);
    guid = v10->_guid;
    v10->_guid = v11;

    v16 = objc_msgSend_groupName(recordCopy, v13, v14, v15);
    groupName = v10->_groupName;
    v10->_groupName = v16;

    v21 = objc_msgSend_accountLogin(recordCopy, v18, v19, v20);
    loginID = v10->_loginID;
    v10->_loginID = v21;

    v26 = objc_msgSend_accountID(recordCopy, v23, v24, v25);
    accountID = v10->_accountID;
    v10->_accountID = v26;

    v31 = objc_msgSend_properties(recordCopy, v28, v29, v30);
    properties = v10->_properties;
    v10->_properties = v31;

    v36 = objc_msgSend_chatIdentifier(recordCopy, v33, v34, v35);
    chatIdentifier = v10->_chatIdentifier;
    v10->_chatIdentifier = v36;

    v41 = objc_msgSend_groupID(recordCopy, v38, v39, v40);
    groupID = v10->_groupID;
    v10->_groupID = v41;

    v46 = objc_msgSend_originalGroupID(recordCopy, v43, v44, v45);
    originalGroupID = v10->_originalGroupID;
    v10->_originalGroupID = v46;

    v51 = objc_msgSend_lastAddressedHandle(recordCopy, v48, v49, v50);
    lastAddressedLocalHandle = v10->_lastAddressedLocalHandle;
    v10->_lastAddressedLocalHandle = v51;

    v56 = objc_msgSend_properties(v10, v53, v54, v55);
    v59 = objc_msgSend_objectForKeyedSubscript_(v56, v57, *MEMORY[0x1E69A6B80], v58);
    groupPhotoGUID = v10->_groupPhotoGUID;
    v10->_groupPhotoGUID = v59;

    v64 = objc_msgSend_groupPhotoGUID(v10, v61, v62, v63);
    v68 = objc_msgSend_length(v64, v65, v66, v67);

    if (v68)
    {
      v72 = objc_msgSend_groupPhotoGUID(v10, v69, v70, v71);
      v73 = IMDAttachmentRecordCopyAttachmentForGUID(v72);

      if (v73)
      {
        v77 = objc_msgSend_path(v73, v74, v75, v76);
        groupPhotoPath = v10->_groupPhotoPath;
        v10->_groupPhotoPath = v77;
      }
    }

    v79 = objc_msgSend_handleRecords(recordCopy, v69, v70, v71);
    v82 = objc_msgSend___imArrayByApplyingBlock_(v79, v80, &unk_1F2FA0510, v81);
    participants = v10->_participants;
    v10->_participants = v82;

    v10->_filtered = objc_msgSend_isFiltered(recordCopy, v84, v85, v86);
    v10->_blackholed = objc_msgSend_isBlackholed(recordCopy, v87, v88, v89);
    v10->_syndicationType = objc_msgSend_syndicationType(recordCopy, v90, v91, v92);
    v96 = objc_msgSend_syndicationDate(recordCopy, v93, v94, v95);
    syndicationDate = v10->_syndicationDate;
    v10->_syndicationDate = v96;

    if (dateCopy)
    {
      Message = IMDChatRecordCopyLastMessage(recordCopy);
      v102 = objc_msgSend_date(Message, v99, v100, v101);
      lastMessageDate = v10->_lastMessageDate;
      v10->_lastMessageDate = v102;
    }
  }

  return v10;
}

- (IMDIndexableChatRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v87.receiver = self;
  v87.super_class = IMDIndexableChatRecord;
  v7 = [(IMDIndexableChatRecord *)&v87 init];
  if (v7)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v5, @"guid", v6);
    guid = v7->_guid;
    v7->_guid = v8;

    v12 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v10, @"groupName", v11);
    groupName = v7->_groupName;
    v7->_groupName = v12;

    v16 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v14, @"style", v15);
    v7->_chatStyle = objc_msgSend_integerValue(v16, v17, v18, v19);

    v22 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v20, @"loginID", v21);
    loginID = v7->_loginID;
    v7->_loginID = v22;

    v26 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v24, @"properties", v25);
    properties = v7->_properties;
    v7->_properties = v26;

    v30 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v28, @"chatIdentifier", v29);
    chatIdentifier = v7->_chatIdentifier;
    v7->_chatIdentifier = v30;

    v34 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v32, @"groupID", v33);
    groupID = v7->_groupID;
    v7->_groupID = v34;

    v38 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v36, @"originalGroupID", v37);
    originalGroupID = v7->_originalGroupID;
    v7->_originalGroupID = v38;

    v42 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v40, @"accountID", v41);
    accountID = v7->_accountID;
    v7->_accountID = v42;

    v46 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v44, @"lalh", v45);
    lastAddressedLocalHandle = v7->_lastAddressedLocalHandle;
    v7->_lastAddressedLocalHandle = v46;

    v50 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v48, @"groupPhotoGUID", v49);
    groupPhotoGUID = v7->_groupPhotoGUID;
    v7->_groupPhotoGUID = v50;

    v54 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v52, @"groupPhotoPath", v53);
    groupPhotoPath = v7->_groupPhotoPath;
    v7->_groupPhotoPath = v54;

    v58 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v56, @"participants", v57);
    participants = v7->_participants;
    v7->_participants = v58;

    v62 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v60, @"isFiltered", v61);
    v7->_filtered = objc_msgSend_integerValue(v62, v63, v64, v65);

    v68 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v66, @"isBlackholed", v67);
    v7->_blackholed = objc_msgSend_integerValue(v68, v69, v70, v71) != 0;

    v74 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v72, @"syndicationType", v73);
    v7->_syndicationType = objc_msgSend_integerValue(v74, v75, v76, v77);

    v80 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v78, @"syndicationDate", v79);
    syndicationDate = v7->_syndicationDate;
    v7->_syndicationDate = v80;

    v84 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v82, @"lastMessageDate", v83);
    lastMessageDate = v7->_lastMessageDate;
    v7->_lastMessageDate = v84;
  }

  return v7;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v7 = objc_msgSend_guid(self, v4, v5, v6);
  if (v7)
  {
    CFDictionarySetValue(v3, @"guid", v7);
  }

  v11 = objc_msgSend_groupName(self, v8, v9, v10);
  if (v11)
  {
    CFDictionarySetValue(v3, @"groupName", v11);
  }

  v12 = MEMORY[0x1E696AD98];
  v16 = objc_msgSend_chatStyle(self, v13, v14, v15);
  v19 = objc_msgSend_numberWithUnsignedChar_(v12, v17, v16, v18);
  if (v19)
  {
    CFDictionarySetValue(v3, @"style", v19);
  }

  v23 = objc_msgSend_loginID(self, v20, v21, v22);
  if (v23)
  {
    CFDictionarySetValue(v3, @"loginID", v23);
  }

  v27 = objc_msgSend_properties(self, v24, v25, v26);
  if (v27)
  {
    CFDictionarySetValue(v3, @"properties", v27);
  }

  v31 = objc_msgSend_chatIdentifier(self, v28, v29, v30);
  if (v31)
  {
    CFDictionarySetValue(v3, @"chatIdentifier", v31);
  }

  v35 = objc_msgSend_groupID(self, v32, v33, v34);
  if (v35)
  {
    CFDictionarySetValue(v3, @"groupID", v35);
  }

  v39 = objc_msgSend_originalGroupID(self, v36, v37, v38);
  if (v39)
  {
    CFDictionarySetValue(v3, @"originalGroupID", v39);
  }

  v43 = objc_msgSend_accountID(self, v40, v41, v42);
  if (v43)
  {
    CFDictionarySetValue(v3, @"accountID", v43);
  }

  v47 = objc_msgSend_lastAddressedLocalHandle(self, v44, v45, v46);
  if (v47)
  {
    CFDictionarySetValue(v3, @"lalh", v47);
  }

  v51 = objc_msgSend_groupPhotoGUID(self, v48, v49, v50);
  if (v51)
  {
    CFDictionarySetValue(v3, @"groupPhotoGUID", v51);
  }

  v55 = objc_msgSend_groupPhotoPath(self, v52, v53, v54);
  if (v55)
  {
    CFDictionarySetValue(v3, @"groupPhotoPath", v55);
  }

  v59 = objc_msgSend_participants(self, v56, v57, v58);
  if (v59)
  {
    CFDictionarySetValue(v3, @"participants", v59);
  }

  v60 = MEMORY[0x1E696AD98];
  isFiltered = objc_msgSend_isFiltered(self, v61, v62, v63);
  v67 = objc_msgSend_numberWithInteger_(v60, v65, isFiltered, v66);
  if (v67)
  {
    CFDictionarySetValue(v3, @"isFiltered", v67);
  }

  v68 = MEMORY[0x1E696AD98];
  isBlackholed = objc_msgSend_isBlackholed(self, v69, v70, v71);
  v75 = objc_msgSend_numberWithBool_(v68, v73, isBlackholed, v74);
  if (v75)
  {
    CFDictionarySetValue(v3, @"isBlackholed", v75);
  }

  v76 = MEMORY[0x1E696AD98];
  v80 = objc_msgSend_syndicationType(self, v77, v78, v79);
  v83 = objc_msgSend_numberWithInteger_(v76, v81, v80, v82);
  if (v83)
  {
    CFDictionarySetValue(v3, @"syndicationType", v83);
  }

  v87 = objc_msgSend_syndicationDate(self, v84, v85, v86);
  if (v87)
  {
    CFDictionarySetValue(v3, @"syndicationDate", v87);
  }

  v91 = objc_msgSend_lastMessageDate(self, v88, v89, v90);
  if (v91)
  {
    CFDictionarySetValue(v3, @"lastMessageDate", v91);
  }

  return v3;
}

@end