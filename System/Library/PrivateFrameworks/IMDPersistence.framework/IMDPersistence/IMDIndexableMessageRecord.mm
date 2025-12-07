@interface IMDIndexableMessageRecord
- (BOOL)isKnownSender;
- (IMDIndexableMessageRecord)initWithDictionaryRepresentation:(id)representation;
- (IMDIndexableMessageRecord)initWithMessageRecord:(id)record;
- (id)dictionaryRepresentation;
- (id)formattedGUIDWithPart:(id)part;
- (id)messageDescriptor;
@end

@implementation IMDIndexableMessageRecord

- (IMDIndexableMessageRecord)initWithMessageRecord:(id)record
{
  v185 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v183.receiver = self;
  v183.super_class = IMDIndexableMessageRecord;
  v8 = [(IMDIndexableMessageRecord *)&v183 init];
  if (v8)
  {
    v8->_rowID = objc_msgSend_rowID(recordCopy, v5, v6, v7);
    v12 = objc_msgSend_date(recordCopy, v9, v10, v11);
    v16 = v12;
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = objc_msgSend_date(MEMORY[0x1E695DF00], v13, v14, v15);
    }

    time = v8->_time;
    v8->_time = v17;

    v22 = objc_msgSend_dateRead(recordCopy, v19, v20, v21);
    timeRead = v8->_timeRead;
    v8->_timeRead = v22;

    v27 = objc_msgSend_guid(recordCopy, v24, v25, v26);
    guid = v8->_guid;
    v8->_guid = v27;

    v32 = objc_msgSend_text(recordCopy, v29, v30, v31);
    plainBody = v8->_plainBody;
    v8->_plainBody = v32;

    v37 = objc_msgSend_attributedBodyText(recordCopy, v34, v35, v36);
    attributedBody = v8->_attributedBody;
    v8->_attributedBody = v37;

    v42 = objc_msgSend_subject(recordCopy, v39, v40, v41);
    subject = v8->_subject;
    v8->_subject = v42;

    v47 = objc_msgSend_serviceName(recordCopy, v44, v45, v46);
    service = v8->_service;
    v8->_service = v47;

    v8->_flags = objc_msgSend_flags(recordCopy, v49, v50, v51);
    v8->_hasAttachments = objc_msgSend_cacheHasAttachments(recordCopy, v52, v53, v54);
    v8->_type = objc_msgSend_itemType(recordCopy, v55, v56, v57);
    v61 = objc_msgSend_balloonBundleID(recordCopy, v58, v59, v60);
    balloonBundleID = v8->_balloonBundleID;
    v8->_balloonBundleID = v61;

    v66 = objc_msgSend_payloadData(recordCopy, v63, v64, v65);
    payloadData = v8->_payloadData;
    v8->_payloadData = v66;

    v71 = objc_msgSend_expressiveSendStyleID(recordCopy, v68, v69, v70);
    expressiveSendStyleID = v8->_expressiveSendStyleID;
    v8->_expressiveSendStyleID = v71;

    v8->_associatedMessageType = objc_msgSend_associatedMessageType(recordCopy, v73, v74, v75);
    v79 = objc_msgSend_associatedMessageGUID(recordCopy, v76, v77, v78);
    associatedMessageGUID = v8->_associatedMessageGUID;
    v8->_associatedMessageGUID = v79;

    v84 = objc_msgSend_syndicationRanges(recordCopy, v81, v82, v83);
    syndicationRanges = v8->_syndicationRanges;
    v8->_syndicationRanges = v84;

    v89 = objc_msgSend_destinationCallerID(recordCopy, v86, v87, v88);
    destinationCallerID = v8->_destinationCallerID;
    v8->_destinationCallerID = v89;

    v94 = objc_msgSend_threadOriginatorGUID(recordCopy, v91, v92, v93);
    if (objc_msgSend_length(v94, v95, v96, v97))
    {
      v101 = IMDMessageRecordCopyMessageForGUID(v94);
      if (v101)
      {
        v102 = [IMDIndexableMessageRecord alloc];
        v105 = objc_msgSend_initWithMessageRecord_(v102, v103, v101, v104);
        threadOriginator = v8->_threadOriginator;
        v8->_threadOriginator = v105;

        v110 = objc_msgSend_threadOriginator(v8, v107, v108, v109);
        v114 = objc_msgSend_threadOriginatorPart(recordCopy, v111, v112, v113);
        v117 = objc_msgSend_formattedGUIDWithPart_(v110, v115, v114, v116);
        threadOriginatorFormattedGUID = v8->_threadOriginatorFormattedGUID;
        v8->_threadOriginatorFormattedGUID = v117;
      }
    }

    v119 = objc_msgSend_biaReferenceID(recordCopy, v98, v99, v100);
    biaReferenceID = v8->_biaReferenceID;
    v8->_biaReferenceID = v119;

    v124 = objc_msgSend_associatedMessageEmoji(recordCopy, v121, v122, v123);
    associatedEmoji = v8->_associatedEmoji;
    v8->_associatedEmoji = v124;

    v129 = objc_msgSend_messageSummaryInfo(recordCopy, v126, v127, v128);
    messageSummaryInfo = v8->_messageSummaryInfo;
    v8->_messageSummaryInfo = v129;

    v134 = objc_msgSend_handleRecord(recordCopy, v131, v132, v133);
    v138 = v134;
    if (v134)
    {
      v139 = _IMDCoreSpotlightHandleID(v134);
      handle = v8->_handle;
      v8->_handle = v139;

      v144 = objc_msgSend_uncanonicalizedURIString(v138, v141, v142, v143);
      uncanonicalizedHandle = v8->_uncanonicalizedHandle;
      v8->_uncanonicalizedHandle = v144;
    }

    if (objc_msgSend_cacheHasAttachments(recordCopy, v135, v136, v137))
    {
      v178 = v94;
      v149 = objc_msgSend_attachmentRecords(recordCopy, v146, v147, v148);
      v150 = MEMORY[0x1E695DF70];
      v154 = objc_msgSend_count(v149, v151, v152, v153);
      v157 = objc_msgSend_arrayWithCapacity_(v150, v155, v154, v156);
      v179 = 0u;
      v180 = 0u;
      v181 = 0u;
      v182 = 0u;
      v158 = v149;
      v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v159, &v179, v184, 16);
      if (v160)
      {
        v161 = v160;
        v162 = *v180;
        do
        {
          for (i = 0; i != v161; ++i)
          {
            if (*v180 != v162)
            {
              objc_enumerationMutation(v158);
            }

            v164 = *(*(&v179 + 1) + 8 * i);
            v165 = [IMDIndexableAttachmentRecord alloc];
            v168 = objc_msgSend_initWithAttachmentRecord_(v165, v166, v164, v167);
            objc_msgSend_addObject_(v157, v169, v168, v170);
          }

          v161 = objc_msgSend_countByEnumeratingWithState_objects_count_(v158, v171, &v179, v184, 16);
        }

        while (v161);
      }

      v175 = objc_msgSend_copy(v157, v172, v173, v174);
      attachments = v8->_attachments;
      v8->_attachments = v175;

      v94 = v178;
    }
  }

  return v8;
}

- (IMDIndexableMessageRecord)initWithDictionaryRepresentation:(id)representation
{
  v156 = *MEMORY[0x1E69E9840];
  representationCopy = representation;
  v154.receiver = self;
  v154.super_class = IMDIndexableMessageRecord;
  v7 = [(IMDIndexableMessageRecord *)&v154 init];
  if (v7)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v5, @"rowID", v6);
    v7->_rowID = objc_msgSend_integerValue(v8, v9, v10, v11);

    v14 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v12, @"time", v13);
    time = v7->_time;
    v7->_time = v14;

    v18 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v16, @"timeRead", v17);
    timeRead = v7->_timeRead;
    v7->_timeRead = v18;

    v22 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v20, @"guid", v21);
    guid = v7->_guid;
    v7->_guid = v22;

    v26 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v24, @"plainBody", v25);
    plainBody = v7->_plainBody;
    v7->_plainBody = v26;

    v30 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v28, @"attributedBody", v29);
    attributedBody = v7->_attributedBody;
    v7->_attributedBody = v30;

    v34 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v32, @"subject", v33);
    subject = v7->_subject;
    v7->_subject = v34;

    v38 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v36, @"service", v37);
    service = v7->_service;
    v7->_service = v38;

    v42 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v40, @"flags", v41);
    v7->_flags = objc_msgSend_integerValue(v42, v43, v44, v45);

    v48 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v46, @"hasAttachments", v47);
    v7->_hasAttachments = objc_msgSend_BOOLValue(v48, v49, v50, v51);

    v54 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v52, @"type", v53);
    v7->_type = objc_msgSend_integerValue(v54, v55, v56, v57);

    v60 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v58, @"balloonBundleID", v59);
    balloonBundleID = v7->_balloonBundleID;
    v7->_balloonBundleID = v60;

    v64 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v62, @"payloadData", v63);
    payloadData = v7->_payloadData;
    v7->_payloadData = v64;

    v68 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v66, @"expressiveSendStyleID", v67);
    expressiveSendStyleID = v7->_expressiveSendStyleID;
    v7->_expressiveSendStyleID = v68;

    v72 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v70, @"associatedMessageType", v71);
    v7->_associatedMessageType = objc_msgSend_integerValue(v72, v73, v74, v75);

    v78 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v76, @"associatedMessageGUID", v77);
    associatedMessageGUID = v7->_associatedMessageGUID;
    v7->_associatedMessageGUID = v78;

    v82 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v80, @"syndicationRanges", v81);
    syndicationRanges = v7->_syndicationRanges;
    v7->_syndicationRanges = v82;

    v86 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v84, @"destinationCallerID", v85);
    destinationCallerID = v7->_destinationCallerID;
    v7->_destinationCallerID = v86;

    v90 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v88, @"threadOriginator", v89);
    threadOriginator = v7->_threadOriginator;
    v7->_threadOriginator = v90;

    v94 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v92, @"threadOriginatorFormattedGUID", v93);
    threadOriginatorFormattedGUID = v7->_threadOriginatorFormattedGUID;
    v7->_threadOriginatorFormattedGUID = v94;

    v98 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v96, @"biaReferenceID", v97);
    biaReferenceID = v7->_biaReferenceID;
    v7->_biaReferenceID = v98;

    v102 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v100, @"associatedMessageEmoji", v101);
    associatedEmoji = v7->_associatedEmoji;
    v7->_associatedEmoji = v102;

    v106 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v104, @"messageSummaryInfo", v105);
    messageSummaryInfo = v7->_messageSummaryInfo;
    v7->_messageSummaryInfo = v106;

    v110 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v108, @"uncanonicalizedHandle", v109);
    uncanonicalizedHandle = v7->_uncanonicalizedHandle;
    v7->_uncanonicalizedHandle = v110;

    v114 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v112, @"handle", v113);
    handle = v7->_handle;
    v7->_handle = v114;

    v118 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v116, @"attachments", v117);
    if (objc_msgSend_count(v118, v119, v120, v121))
    {
      v125 = MEMORY[0x1E695DF70];
      v126 = objc_msgSend_count(v118, v122, v123, v124);
      v129 = objc_msgSend_arrayWithCapacity_(v125, v127, v126, v128);
      v150 = 0u;
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v130 = v118;
      v132 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v131, &v150, v155, 16);
      if (v132)
      {
        v133 = v132;
        v134 = *v151;
        do
        {
          v135 = 0;
          do
          {
            if (*v151 != v134)
            {
              objc_enumerationMutation(v130);
            }

            v136 = *(*(&v150 + 1) + 8 * v135);
            v137 = [IMDIndexableAttachmentRecord alloc];
            v140 = objc_msgSend_initWithDictionaryRepresentation_(v137, v138, v136, v139, v150);
            objc_msgSend_addObject_(v129, v141, v140, v142);

            ++v135;
          }

          while (v133 != v135);
          v133 = objc_msgSend_countByEnumeratingWithState_objects_count_(v130, v143, &v150, v155, 16);
        }

        while (v133);
      }

      v147 = objc_msgSend_copy(v129, v144, v145, v146);
      attachments = v7->_attachments;
      v7->_attachments = v147;
    }
  }

  return v7;
}

- (id)messageDescriptor
{
  v3 = objc_alloc(MEMORY[0x1E69A8118]);
  v7 = objc_msgSend_attributedBody(self, v4, v5, v6);
  v11 = objc_msgSend_guid(self, v8, v9, v10);
  v13 = objc_msgSend_initWithMessageBody_messageGUID_(v3, v12, v7, v11);

  return v13;
}

- (id)formattedGUIDWithPart:(id)part
{
  partCopy = part;
  v8 = objc_msgSend_messageDescriptor(self, v5, v6, v7);
  v12 = v8;
  if (partCopy && (objc_msgSend_messageParts(v8, v9, v10, v11), v13 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_count(v13, v14, v15, v16), v13, v17 >= 2))
  {
    v18 = objc_msgSend_guid(self, v9, v10, v11);
    ThreadIdentifierWithComponents = IMMessageCreateThreadIdentifierWithComponents();

    AssociatedMessageGUIDFromThreadIdentifier = IMMessageCreateAssociatedMessageGUIDFromThreadIdentifier();
  }

  else
  {
    AssociatedMessageGUIDFromThreadIdentifier = objc_msgSend_guid(self, v9, v10, v11);
  }

  return AssociatedMessageGUIDFromThreadIdentifier;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = MEMORY[0x1E696AD98];
  v8 = objc_msgSend_rowID(self, v5, v6, v7);
  v11 = objc_msgSend_numberWithInteger_(v4, v9, v8, v10);
  if (v11)
  {
    CFDictionarySetValue(v3, @"rowID", v11);
  }

  v15 = objc_msgSend_time(self, v12, v13, v14);
  if (v15)
  {
    CFDictionarySetValue(v3, @"time", v15);
  }

  v19 = objc_msgSend_timeRead(self, v16, v17, v18);
  if (v19)
  {
    CFDictionarySetValue(v3, @"timeRead", v19);
  }

  v23 = objc_msgSend_guid(self, v20, v21, v22);
  if (v23)
  {
    CFDictionarySetValue(v3, @"guid", v23);
  }

  v27 = objc_msgSend_plainBody(self, v24, v25, v26);
  if (v27)
  {
    CFDictionarySetValue(v3, @"plainBody", v27);
  }

  v31 = objc_msgSend_attributedBody(self, v28, v29, v30);
  if (v31)
  {
    CFDictionarySetValue(v3, @"attributedBody", v31);
  }

  v35 = objc_msgSend_subject(self, v32, v33, v34);
  if (v35)
  {
    CFDictionarySetValue(v3, @"subject", v35);
  }

  v39 = objc_msgSend_service(self, v36, v37, v38);
  if (v39)
  {
    CFDictionarySetValue(v3, @"service", v39);
  }

  v40 = MEMORY[0x1E696AD98];
  v44 = objc_msgSend_flags(self, v41, v42, v43);
  v47 = objc_msgSend_numberWithUnsignedLongLong_(v40, v45, v44, v46);
  if (v47)
  {
    CFDictionarySetValue(v3, @"flags", v47);
  }

  v48 = MEMORY[0x1E696AD98];
  hasAttachments = objc_msgSend_hasAttachments(self, v49, v50, v51);
  v55 = objc_msgSend_numberWithBool_(v48, v53, hasAttachments, v54);
  if (v55)
  {
    CFDictionarySetValue(v3, @"hasAttachments", v55);
  }

  v56 = MEMORY[0x1E696AD98];
  v60 = objc_msgSend_type(self, v57, v58, v59);
  v63 = objc_msgSend_numberWithLongLong_(v56, v61, v60, v62);
  if (v63)
  {
    CFDictionarySetValue(v3, @"type", v63);
  }

  v67 = objc_msgSend_balloonBundleID(self, v64, v65, v66);
  if (v67)
  {
    CFDictionarySetValue(v3, @"balloonBundleID", v67);
  }

  v71 = objc_msgSend_payloadData(self, v68, v69, v70);
  if (v71)
  {
    CFDictionarySetValue(v3, @"payloadData", v71);
  }

  v75 = objc_msgSend_expressiveSendStyleID(self, v72, v73, v74);
  if (v75)
  {
    CFDictionarySetValue(v3, @"expressiveSendStyleID", v75);
  }

  v76 = MEMORY[0x1E696AD98];
  v80 = objc_msgSend_associatedMessageType(self, v77, v78, v79);
  v83 = objc_msgSend_numberWithLongLong_(v76, v81, v80, v82);
  if (v83)
  {
    CFDictionarySetValue(v3, @"associatedMessageType", v83);
  }

  v87 = objc_msgSend_associatedMessageGUID(self, v84, v85, v86);
  if (v87)
  {
    CFDictionarySetValue(v3, @"associatedMessageGUID", v87);
  }

  v91 = objc_msgSend_syndicationRanges(self, v88, v89, v90);
  if (v91)
  {
    CFDictionarySetValue(v3, @"syndicationRanges", v91);
  }

  v95 = objc_msgSend_destinationCallerID(self, v92, v93, v94);
  if (v95)
  {
    CFDictionarySetValue(v3, @"destinationCallerID", v95);
  }

  v99 = objc_msgSend_threadOriginator(self, v96, v97, v98);
  v103 = objc_msgSend_dictionaryRepresentation(v99, v100, v101, v102);

  if (v103)
  {
    CFDictionarySetValue(v3, @"threadOriginator", v103);
  }

  v107 = objc_msgSend_threadOriginatorFormattedGUID(self, v104, v105, v106);
  if (v107)
  {
    CFDictionarySetValue(v3, @"threadOriginatorFormattedGUID", v107);
  }

  v111 = objc_msgSend_biaReferenceID(self, v108, v109, v110);
  if (v111)
  {
    CFDictionarySetValue(v3, @"biaReferenceID", v111);
  }

  v115 = objc_msgSend_associatedEmoji(self, v112, v113, v114);
  if (v115)
  {
    CFDictionarySetValue(v3, @"associatedMessageEmoji", v115);
  }

  return v3;
}

- (BOOL)isKnownSender
{
  if (objc_msgSend_isFromMe(self, a2, v2, v3))
  {
    return 1;
  }

  v9 = objc_msgSend_handle(self, v5, v6, v7);
  IsKnownContact = _IMDCoreSpotlightIsKnownContact(v9);

  return IsKnownContact;
}

@end