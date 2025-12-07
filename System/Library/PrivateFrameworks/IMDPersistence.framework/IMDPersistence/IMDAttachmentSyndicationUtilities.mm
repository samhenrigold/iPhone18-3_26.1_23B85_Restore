@interface IMDAttachmentSyndicationUtilities
+ (BOOL)_attachmentGUIDIsSyndicatable:(id)syndicatable syndicationIdentifier:(id)identifier attachmentUTI:(id)i attributedBody:(id)body encodedSyndicationRanges:(id)ranges isCMM:(BOOL)m verbose:(BOOL)verbose;
+ (BOOL)attachmentRecordIsSyndicatable:(id)syndicatable verbose:(BOOL)verbose;
+ (id)_syndicationIdentifierForAttachmentGUID:(id)d messageGUID:(id)iD attributedBody:(id)body verbose:(BOOL)verbose;
+ (unint64_t)_attachmentSyndicationTypeForAttachmentGUID:(id)d syndicationIdentifier:(id)identifier attachmentUTI:(id)i attributedBody:(id)body encodedSyndicationRanges:(id)ranges isCommSafetySensitive:(BOOL)sensitive verbose:(BOOL)verbose;
+ (unint64_t)syndicationTypeForAttachmentRecord:(id)record verbose:(BOOL)verbose;
+ (void)_attachmentGUIDForCMMIsSyndicatable:(id)syndicatable syndicationIdentifier:(id)identifier encodedSyndicationRanges:(id)ranges isSyndicatable:(BOOL *)isSyndicatable verbose:(BOOL)verbose;
@end

@implementation IMDAttachmentSyndicationUtilities

+ (id)_syndicationIdentifierForAttachmentGUID:(id)d messageGUID:(id)iD attributedBody:(id)body verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  bodyCopy = body;
  if (!IMFileTransferGUIDIsTemporary())
  {
    if (verboseCopy && IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v19 = 138412290;
        v20 = dCopy;
        _os_log_impl(&dword_1B7AD5000, v16, OS_LOG_TYPE_INFO, "Using existing attachment GUID for syndication identifier. attachmentGUID: %@", &v19, 0xCu);
      }
    }

    v17 = dCopy;
    goto LABEL_18;
  }

  if (verboseCopy && IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v19 = 138412290;
      v20 = dCopy;
      _os_log_impl(&dword_1B7AD5000, v13, OS_LOG_TYPE_INFO, "Deriving attachment index because attachment GUID in item dictionary is in legacy format. attachmentGUID: %@", &v19, 0xCu);
    }
  }

  if (objc_msgSend_messagePartIndexForAttachmentMessagePartWithTransferGUID_inBody_(MEMORY[0x1E69A8138], v12, dCopy, bodyCopy) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = IMFileTransferGUIDForAttachmentMessagePartAtMessageGUIDAndMessagePartIndex();
LABEL_18:
    v15 = v17;
    goto LABEL_19;
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_1B7CF3DCC(dCopy, v14);
  }

  v15 = 0;
LABEL_19:

  return v15;
}

+ (BOOL)_attachmentGUIDIsSyndicatable:(id)syndicatable syndicationIdentifier:(id)identifier attachmentUTI:(id)i attributedBody:(id)body encodedSyndicationRanges:(id)ranges isCMM:(BOOL)m verbose:(BOOL)verbose
{
  mCopy = m;
  v70 = *MEMORY[0x1E69E9840];
  syndicatableCopy = syndicatable;
  identifierCopy = identifier;
  iCopy = i;
  bodyCopy = body;
  rangesCopy = ranges;
  v64 = 1;
  if (mCopy)
  {
    objc_msgSend__attachmentGUIDForCMMIsSyndicatable_syndicationIdentifier_encodedSyndicationRanges_isSyndicatable_verbose_(self, v19, syndicatableCopy, identifierCopy, rangesCopy, &v64, verbose);
    v21 = v64;
  }

  else
  {
    v48 = iCopy;
    v58 = 0;
    v59 = &v58;
    v60 = 0x3032000000;
    v61 = sub_1B7AE19B4;
    v62 = sub_1B7AE24E8;
    v63 = 0;
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_1B7B5A65C;
    v53[3] = &unk_1E7CB9200;
    v47 = syndicatableCopy;
    v54 = v47;
    verboseCopy = verbose;
    v46 = identifierCopy;
    v55 = v46;
    v56 = &v58;
    objc_msgSend___im_visitMessageParts_(bodyCopy, v22, v53, v23);
    v29 = objc_msgSend_messagePartRange(v59[5], v24, v25, v26);
    v30 = v27;
    if (v29 | v27)
    {
      v45 = syndicatableCopy;
      objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v27, rangesCopy, v28);
      v44 = bodyCopy;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v31 = v50 = 0u;
      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v49, v69, 16);
      if (v36)
      {
        v37 = *v50;
        while (2)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v50 != v37)
            {
              objc_enumerationMutation(v31);
            }

            v39 = *(*(&v49 + 1) + 8 * i);
            if (objc_msgSend_messagePartRange(v39, v33, v34, v35) == v29 && v33 == v30)
            {
              bodyCopy = v44;
              syndicatableCopy = v45;
              iCopy = v48;
              if ((objc_msgSend_syndicationType(v39, v33, v34, v35) & 4) != 0)
              {
                v64 = 0;
                if (verbose)
                {
                  if (IMOSLoggingEnabled())
                  {
                    v41 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v66 = v47;
                      _os_log_impl(&dword_1B7AD5000, v41, OS_LOG_TYPE_INFO, "%@ not syndicatable because it was explcitly hidden", buf, 0xCu);
                    }
                  }

                  if (IMOSLoggingEnabled())
                  {
                    v42 = OSLogHandleForIMFoundationCategory();
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412546;
                      v66 = v47;
                      v67 = 2112;
                      v68 = v46;
                      _os_log_impl(&dword_1B7AD5000, v42, OS_LOG_TYPE_INFO, "Setting isSyndicatableMedia to be NO because the attachment is flagged as IMMessagePartSyndicationTypeHidden. attachmentGUID: %@ (syndicationIdentifier: %@)", buf, 0x16u);
                    }
                  }
                }
              }

              v21 = v64;
              goto LABEL_30;
            }
          }

          v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v33, &v49, v69, 16);
          if (v36)
          {
            continue;
          }

          break;
        }
      }

      bodyCopy = v44;
      syndicatableCopy = v45;
      iCopy = v48;
    }

    else
    {
      v31 = IMLogHandleForCategory();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CF3E44(v47, v46, v31);
      }
    }

    v21 = 1;
LABEL_30:

    _Block_object_dispose(&v58, 8);
  }

  return v21 & 1;
}

+ (void)_attachmentGUIDForCMMIsSyndicatable:(id)syndicatable syndicationIdentifier:(id)identifier encodedSyndicationRanges:(id)ranges isSyndicatable:(BOOL *)isSyndicatable verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  v79 = *MEMORY[0x1E69E9840];
  syndicatableCopy = syndicatable;
  identifierCopy = identifier;
  rangesCopy = ranges;
  v15 = objc_msgSend_rangesFromSerializedString_(MEMORY[0x1E69A8158], v13, rangesCopy, v14);
  v19 = v15;
  if (v15 && objc_msgSend_count(v15, v16, v17, v18))
  {
    v23 = objc_msgSend_firstObject(v19, v20, v21, v22);
    v27 = objc_msgSend_assetDescriptor(v23, v24, v25, v26);
    v31 = v27;
    v32 = syndicatableCopy;
    if (v27 && (objc_msgSend_assetSyndications(v27, v28, v29, v30), (v36 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend_assetSyndications(v31, v33, v34, v35), v37 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend_count(v37, v38, v39, v40), v37, v36, v41))
    {
      v67 = IMCMMAssetIndexFromIMFileTransferGUID();
      v45 = objc_msgSend_assetSyndications(v31, v42, v43, v44);
      syndicatableCopy = v32;
      v48 = objc_msgSend_objectForKey_(v45, v46, &unk_1F2FCA2A8, v47);

      if (v48 && objc_msgSend_count(v48, v49, v50, v51))
      {
        v54 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v52, v67, v53);
        v57 = objc_msgSend_objectForKey_(v48, v55, v54, v56);
        v58 = v54;
        v59 = v57;

        v63 = objc_msgSend_intValue(v59, v60, v61, v62);
        if (v59)
        {
          if (isSyndicatable)
          {
            *isSyndicatable = (v63 & 4) == 0;
            if (verboseCopy)
            {
              if (IMOSLoggingEnabled())
              {
                v64 = OSLogHandleForIMFoundationCategory();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
                {
                  v65 = *isSyndicatable;
                  *buf = 138412802;
                  v70 = v32;
                  v71 = 2112;
                  v72 = identifierCopy;
                  v73 = 1024;
                  LODWORD(v74) = v65;
                  _os_log_impl(&dword_1B7AD5000, v64, OS_LOG_TYPE_INFO, "attachmentGUID %@, syndicationIdentifier %@, isSyndicatable: %d", buf, 0x1Cu);
                }
              }
            }
          }
        }

        else
        {
          v66 = IMLogHandleForCategory();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            v70 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDForCMMIsSyndicatable:syndicationIdentifier:encodedSyndicationRanges:isSyndicatable:verbose:]";
            v71 = 2048;
            v72 = v67;
            v73 = 2112;
            v74 = v48;
            v75 = 2112;
            v76 = v32;
            v77 = 2112;
            v78 = identifierCopy;
            _os_log_error_impl(&dword_1B7AD5000, v66, OS_LOG_TYPE_ERROR, "%s no syndication found for asset index %li from CMM asset info %@ for attachmentGUID %@, syndicationIdentifier %@", buf, 0x34u);
          }
        }
      }

      else
      {
        v59 = IMLogHandleForCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          v70 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDForCMMIsSyndicatable:syndicationIdentifier:encodedSyndicationRanges:isSyndicatable:verbose:]";
          v71 = 2112;
          v72 = v48;
          v73 = 2112;
          v74 = v32;
          v75 = 2112;
          v76 = identifierCopy;
          _os_log_error_impl(&dword_1B7AD5000, v59, OS_LOG_TYPE_ERROR, "%s no asset info from CMM asset info %@ for attachmentGUID %@, syndicationIdentifier %@", buf, 0x2Au);
        }
      }
    }

    else
    {
      v48 = IMLogHandleForCategory();
      syndicatableCopy = v32;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v70 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDForCMMIsSyndicatable:syndicationIdentifier:encodedSyndicationRanges:isSyndicatable:verbose:]";
        v71 = 2112;
        v72 = v23;
        v73 = 2112;
        v74 = v32;
        v75 = 2112;
        v76 = identifierCopy;
        _os_log_error_impl(&dword_1B7AD5000, v48, OS_LOG_TYPE_ERROR, "%s no asset syndications from range %@ for attachmentGUID %@, syndicationIdentifier %@", buf, 0x2Au);
      }
    }
  }

  else
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v70 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDForCMMIsSyndicatable:syndicationIdentifier:encodedSyndicationRanges:isSyndicatable:verbose:]";
      v71 = 2112;
      v72 = rangesCopy;
      v73 = 2112;
      v74 = syndicatableCopy;
      v75 = 2112;
      v76 = identifierCopy;
      _os_log_error_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_ERROR, "%s no ranges deserialized from encodedSyndicationRanges %@ for attachmentGUID %@, syndicationIdentifier %@", buf, 0x2Au);
    }
  }
}

+ (unint64_t)_attachmentSyndicationTypeForAttachmentGUID:(id)d syndicationIdentifier:(id)identifier attachmentUTI:(id)i attributedBody:(id)body encodedSyndicationRanges:(id)ranges isCommSafetySensitive:(BOOL)sensitive verbose:(BOOL)verbose
{
  sensitiveCopy = sensitive;
  v32 = *MEMORY[0x1E69E9840];
  dCopy = d;
  identifierCopy = identifier;
  iCopy = i;
  bodyCopy = body;
  rangesCopy = ranges;
  if (!iCopy)
  {
LABEL_13:
    v19 = 2;
    goto LABEL_14;
  }

  if (IMUTITypeIsSupportedByPhotos())
  {
    v19 = 1;
    goto LABEL_14;
  }

  IsFileAttachment = IMUTITypeIsFileAttachment();
  if (IsFileAttachment)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  if ((IsFileAttachment & 1) == 0 && verbose)
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v26 = 138412546;
        v27 = dCopy;
        v28 = 2112;
        v29 = iCopy;
        _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "%@ not syndicatable because it was an unsupported UTI %@", &v26, 0x16u);
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  if (verbose)
  {
    if (IMOSLoggingEnabled())
    {
      v22 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v26 = 134218498;
        v27 = v19;
        v28 = 2112;
        v29 = dCopy;
        v30 = 2112;
        v31 = iCopy;
        _os_log_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_INFO, "syndicationType == %lu for attachmentGUID %@ based on UTI type %@", &v26, 0x20u);
      }
    }

    if (sensitiveCopy)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = dCopy;
          _os_log_impl(&dword_1B7AD5000, v23, OS_LOG_TYPE_INFO, "%@ not syndicatable because it was comm safety sensitive", &v26, 0xCu);
        }
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v26 = 138412290;
          v27 = dCopy;
          _os_log_impl(&dword_1B7AD5000, v24, OS_LOG_TYPE_INFO, "Setting syndicationType to be Other because the attachment is flagged as CommSafety sensitive. attachmentGUID: %@", &v26, 0xCu);
        }
      }

      v19 = 2;
    }
  }

  else if (sensitiveCopy)
  {
    v19 = 2;
  }

  return v19;
}

+ (unint64_t)syndicationTypeForAttachmentRecord:(id)record verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  recordCopy = record;
  v45 = objc_msgSend_messageRecord(recordCopy, v7, v8, v9);
  v10 = IMDCreateIMItemFromIMDMessageRecordRefWithAccountLookup(v45, 0, 0, 0);
  v14 = objc_msgSend_body(v10, v11, v12, v13);
  v15 = MEMORY[0x1E69A8158];
  v19 = objc_msgSend_syndicationRanges(v10, v16, v17, v18);
  v22 = objc_msgSend_serializedStringFromArray_(v15, v20, v19, v21);

  v26 = objc_msgSend_guid(recordCopy, v23, v24, v25);
  v30 = objc_msgSend_guid(v10, v27, v28, v29);
  v32 = objc_msgSend__syndicationIdentifierForAttachmentGUID_messageGUID_attributedBody_verbose_(self, v31, v26, v30, v14, verboseCopy);

  v36 = objc_msgSend_utiString(recordCopy, v33, v34, v35);
  isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(recordCopy, v37, v38, v39);

  v44 = verboseCopy;
  isCommSafetySensitive_verbose = objc_msgSend__attachmentSyndicationTypeForAttachmentGUID_syndicationIdentifier_attachmentUTI_attributedBody_encodedSyndicationRanges_isCommSafetySensitive_verbose_(self, v41, v26, v32, v36, v14, v22, isCommSafetySensitive, v44);

  return isCommSafetySensitive_verbose;
}

+ (BOOL)attachmentRecordIsSyndicatable:(id)syndicatable verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  syndicatableCopy = syndicatable;
  v10 = objc_msgSend_messageRecord(syndicatableCopy, v7, v8, v9);
  v11 = IMDCreateIMItemFromIMDMessageRecordRefWithAccountLookup(v10, 0, 0, 0);
  v15 = objc_msgSend_body(v11, v12, v13, v14);
  v16 = MEMORY[0x1E69A8158];
  v20 = objc_msgSend_syndicationRanges(v11, v17, v18, v19);
  v23 = objc_msgSend_serializedStringFromArray_(v16, v21, v20, v22);

  v27 = objc_msgSend_guid(syndicatableCopy, v24, v25, v26);
  v31 = objc_msgSend_guid(v11, v28, v29, v30);
  v33 = objc_msgSend__syndicationIdentifierForAttachmentGUID_messageGUID_attributedBody_verbose_(self, v32, v27, v31, v15, verboseCopy);

  v37 = objc_msgSend_utiString(syndicatableCopy, v34, v35, v36);

  v40 = verboseCopy;
  LOBYTE(verboseCopy) = objc_msgSend__attachmentGUIDIsSyndicatable_syndicationIdentifier_attachmentUTI_attributedBody_encodedSyndicationRanges_isCMM_verbose_(self, v38, v27, v33, v37, v15, v23, 0, v40);

  return verboseCopy;
}

@end