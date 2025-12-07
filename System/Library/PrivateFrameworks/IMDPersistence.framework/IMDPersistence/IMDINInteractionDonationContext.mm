@interface IMDINInteractionDonationContext
- (IMDINInteractionDonationContext)initWithIndexableChatDictionary:(id)dictionary messageDictionary:(id)messageDictionary;
@end

@implementation IMDINInteractionDonationContext

- (IMDINInteractionDonationContext)initWithIndexableChatDictionary:(id)dictionary messageDictionary:(id)messageDictionary
{
  v162 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  messageDictionaryCopy = messageDictionary;
  v160.receiver = self;
  v160.super_class = IMDINInteractionDonationContext;
  v10 = [(IMDINInteractionDonationContext *)&v160 init];
  if (v10)
  {
    v11 = objc_msgSend_objectForKey_(messageDictionaryCopy, v8, @"guid", v9);
    messageGUID = v10->_messageGUID;
    v10->_messageGUID = v11;

    v15 = objc_msgSend_objectForKey_(messageDictionaryCopy, v13, @"plainBody", v14);
    messagePlainBody = v10->_messagePlainBody;
    v10->_messagePlainBody = v15;

    v19 = objc_msgSend_objectForKey_(messageDictionaryCopy, v17, @"time", v18);
    messageDate = v10->_messageDate;
    v10->_messageDate = v19;

    v23 = objc_msgSend_objectForKey_(messageDictionaryCopy, v21, @"service", v22);
    serviceName = v10->_serviceName;
    v10->_serviceName = v23;

    v27 = objc_msgSend_objectForKey_(dictionaryCopy, v25, @"lalh", v26);
    v31 = objc_msgSend__stripFZIDPrefix(v27, v28, v29, v30);

    v34 = objc_msgSend_objectForKey_(messageDictionaryCopy, v32, @"flags", v33);
    v38 = objc_msgSend_unsignedLongLongValue(v34, v35, v36, v37);

    v153 = v31;
    if ((v38 & 4) != 0)
    {
      v51 = v31;
      senderHandleID = v10->_senderHandleID;
      v10->_senderHandleID = v51;
    }

    else
    {
      senderHandleID = objc_msgSend_objectForKey_(messageDictionaryCopy, v39, @"handle", v40, v31);
      v45 = objc_msgSend__stripFZIDPrefix(senderHandleID, v42, v43, v44);
      v49 = objc_msgSend_im_stripCategoryLabel(v45, v46, v47, v48);
      v50 = v10->_senderHandleID;
      v10->_senderHandleID = v49;
    }

    v154 = messageDictionaryCopy;
    v54 = objc_msgSend_objectForKey_(messageDictionaryCopy, v52, @"uncanonicalizedHandle", v53);
    uncanonicalizedSenderHandleID = v10->_uncanonicalizedSenderHandleID;
    v10->_uncanonicalizedSenderHandleID = v54;

    v58 = objc_msgSend_objectForKey_(dictionaryCopy, v56, @"guid", v57);
    chatGUID = v10->_chatGUID;
    v10->_chatGUID = v58;

    v62 = objc_msgSend_objectForKey_(dictionaryCopy, v60, @"chatIdentifier", v61);
    chatIdentifier = v10->_chatIdentifier;
    v10->_chatIdentifier = v62;

    v66 = objc_msgSend_objectForKey_(dictionaryCopy, v64, @"groupName", v65);
    chatDisplayName = v10->_chatDisplayName;
    v10->_chatDisplayName = v66;

    v70 = objc_msgSend_objectForKey_(dictionaryCopy, v68, @"style", v69);
    v10->_chatStyle = objc_msgSend_intValue(v70, v71, v72, v73);

    v10->_isFilteredValue = objc_msgSend_integerValueForKey_withDefault_(dictionaryCopy, v74, @"isFiltered", 0);
    v77 = objc_msgSend_objectForKey_(dictionaryCopy, v75, @"participants", v76);
    v78 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v79 = v77;
    v81 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v80, &v156, v161, 16);
    v155 = v10;
    if (v81)
    {
      v82 = v81;
      v83 = *v157;
      do
      {
        for (i = 0; i != v82; ++i)
        {
          if (*v157 != v83)
          {
            objc_enumerationMutation(v79);
          }

          v85 = *(*(&v156 + 1) + 8 * i);
          v86 = _IMDCoreSpotlightCNContactForAddress(v85);
          v87 = v85;
          v91 = objc_msgSend_senderHandleID(v10, v88, v89, v90);
          isEqualToString = objc_msgSend_isEqualToString_(v91, v92, v87, v93);

          v10 = v155;
          v95 = [IMDCoreSpotlightChatParticipant alloc];
          isSender = objc_msgSend_initWithHandleID_contact_isSender_(v95, v96, v87, v86, isEqualToString);

          objc_msgSend_addObject_(v78, v98, isSender, v99);
        }

        v82 = objc_msgSend_countByEnumeratingWithState_objects_count_(v79, v100, &v156, v161, 16);
      }

      while (v82);
    }

    v104 = objc_msgSend_copy(v78, v101, v102, v103);
    chatParticipants = v10->_chatParticipants;
    v10->_chatParticipants = v104;

    v108 = objc_msgSend_objectForKey_(dictionaryCopy, v106, @"lalh", v107);
    v112 = objc_msgSend__stripFZIDPrefix(v108, v109, v110, v111);
    chatLastAddressedLocaleHandle = v10->_chatLastAddressedLocaleHandle;
    v10->_chatLastAddressedLocaleHandle = v112;

    v116 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v114, @"groupPhotoGUID", v115);
    groupPhotoGuid = v10->_groupPhotoGuid;
    v10->_groupPhotoGuid = v116;

    v120 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v118, @"groupPhotoPath", v119);
    groupPhotoInternalFilePath = v10->_groupPhotoInternalFilePath;
    v10->_groupPhotoInternalFilePath = v120;

    messageDictionaryCopy = v154;
    v124 = objc_msgSend_objectForKey_(v154, v122, @"attributedBody", v123);
    v127 = objc_msgSend_objectForKey_(v154, v125, @"destinationCallerID", v126);
    v10->_isMentionOfMe = _IMDCoreSpotlightMessageMentionsMe(v124, v127);
    v130 = objc_msgSend_objectForKey_(v154, v128, @"threadOriginator", v129);
    v133 = objc_msgSend_objectForKey_(v130, v131, @"flags", v132);
    v155->_isReplyToMe = (objc_msgSend_unsignedLongLongValue(v133, v134, v135, v136) & 4) != 0;

    v139 = objc_msgSend_objectForKey_(v154, v137, @"flags", v138);
    v155->_isNotifyAnyway = (objc_msgSend_unsignedLongLongValue(v139, v140, v141, v142) & 0x800000000) != 0;

    v145 = objc_msgSend_objectForKey_(dictionaryCopy, v143, @"properties", v144);
    v148 = objc_msgSend_objectForKey_(v145, v146, *MEMORY[0x1E69A6BC8], v147);
    v155->_isMergedBusinessThread = objc_msgSend_BOOLValue(v148, v149, v150, v151);

    v10 = v155;
  }

  return v10;
}

@end