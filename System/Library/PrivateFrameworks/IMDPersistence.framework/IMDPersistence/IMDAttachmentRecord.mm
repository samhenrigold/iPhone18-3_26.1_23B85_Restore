@interface IMDAttachmentRecord
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)keyPathsToColumns;
- (BOOL)isAdaptiveImageGlyph;
- (IMDAttachmentRecord)initWithRecordRef:(_IMDAttachmentRecordStruct *)ref;
- (IMDMessageRecord)messageRecord;
- (NSDictionary)attributionInfo;
- (NSDictionary)stickerUserInfo;
- (NSDictionary)transferUserInfo;
- (NSString)emojiImageContentIdentifier;
- (NSString)emojiImageShortDescription;
- (NSString)path;
- (NSString)utiString;
- (_IMDAttachmentRecordStruct)cfAttachmentRecord;
- (void)_copyUpdatedRecord;
- (void)_write;
- (void)_writeIfNeededForPreviewGenerationStateMigration;
@end

@implementation IMDAttachmentRecord

- (IMDAttachmentRecord)initWithRecordRef:(_IMDAttachmentRecordStruct *)ref
{
  refCopy = ref;

  return refCopy;
}

+ (id)allocWithZone:(_NSZone *)zone
{
  IMDAttachmentRecordGetTypeID();

  return _CFRuntimeCreateInstance();
}

- (_IMDAttachmentRecordStruct)cfAttachmentRecord
{
  v3 = CFGetTypeID(self);
  if (v3 == IMDAttachmentRecordGetTypeID())
  {
    return self;
  }

  else
  {
    return 0;
  }
}

- (void)_copyUpdatedRecord
{
  v4 = objc_msgSend_rowID(self, a2, v2, v3);

  return IMDAttachmentRecordCopyAttachmentRecordUnlocked(v4);
}

- (NSString)path
{
  v4 = objc_msgSend_filename(self, a2, v2, v3);
  v8 = objc_msgSend_stringByExpandingTildeInPath(v4, v5, v6, v7);
  v12 = objc_msgSend___im_apfsCompatibleFilename(v8, v9, v10, v11);

  return v12;
}

- (NSString)utiString
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 4);

  return v2;
}

- (BOOL)isAdaptiveImageGlyph
{
  v4 = objc_msgSend_emojiImageContentIdentifier(self, a2, v2, v3);
  v8 = objc_msgSend_length(v4, v5, v6, v7) != 0;

  return v8;
}

- (NSString)emojiImageContentIdentifier
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 20);

  return v2;
}

- (NSString)emojiImageShortDescription
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 21);

  return v2;
}

- (NSDictionary)transferUserInfo
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 8);
  if (objc_msgSend_length(v2, v3, v4, v5))
  {
    v6 = JWDecodeDictionary();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)stickerUserInfo
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 12);
  if (objc_msgSend_length(v2, v3, v4, v5))
  {
    v6 = JWDecodeDictionary();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSDictionary)attributionInfo
{
  v2 = IMDBridgedRecordCopyPropertyValue(self, 13);
  if (objc_msgSend_length(v2, v3, v4, v5))
  {
    v6 = JWDecodeDictionary();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IMDMessageRecord)messageRecord
{
  v4 = objc_msgSend_guid(self, a2, v2, v3);
  v5 = IMDAttachmentRecordCopyMessageForAttachmentGUID(v4);

  return v5;
}

- (void)_write
{
  v103 = objc_msgSend_guid(self, a2, v2, v3);
  v102 = objc_msgSend_createdDate(self, v5, v6, v7);
  objc_msgSend_timeIntervalSinceReferenceDate(v102, v8, v9, v10);
  v100 = v11;
  v101 = objc_msgSend_startDate(self, v12, v13, v14);
  objc_msgSend_timeIntervalSinceReferenceDate(v101, v15, v16, v17);
  v99 = v18;
  v98 = objc_msgSend_transferName(self, v19, v20, v21);
  v97 = objc_msgSend_filename(self, v22, v23, v24);
  v96 = objc_msgSend_utiString(self, v25, v26, v27);
  v95 = objc_msgSend_mimeType(self, v28, v29, v30);
  v94 = objc_msgSend_transferState(self, v31, v32, v33);
  isOutgoing = objc_msgSend_isOutgoing(self, v34, v35, v36);
  v92 = objc_msgSend_totalBytes(self, v37, v38, v39);
  v91 = objc_msgSend_transferUserInfo(self, v40, v41, v42);
  isSticker = objc_msgSend_isSticker(self, v43, v44, v45);
  v88 = objc_msgSend_stickerUserInfo(self, v46, v47, v48);
  v52 = objc_msgSend_attributionInfo(self, v49, v50, v51);
  isHidden = objc_msgSend_isHidden(self, v53, v54, v55);
  v59 = objc_msgSend_cloudSyncState(self, v56, v57, v58);
  v87 = objc_msgSend_cloudServerChangeToken(self, v60, v61, v62);
  v66 = objc_msgSend_cloudRecordID(self, v63, v64, v65);
  v70 = objc_msgSend_originalGUID(self, v67, v68, v69);
  isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(self, v71, v72, v73);
  v78 = objc_msgSend_emojiImageContentIdentifier(self, v75, v76, v77);
  v82 = objc_msgSend_emojiImageShortDescription(self, v79, v80, v81);
  v86 = objc_msgSend_previewGenerationState(self, v83, v84, v85);
  IMDAttachmentRecordBulkUpdate(self, v103, v100, v99, v98, v97, v96, v95, v94, isOutgoing, v92, v91, isSticker, v88, v52, isHidden, v59, v87, v66, v70, isCommSafetySensitive, v78, v82, v86);
}

- (void)_writeIfNeededForPreviewGenerationStateMigration
{
  v27 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_previewGenerationState(self, a2, v2, v3) == 3)
  {
    v8 = objc_msgSend_utiString(self, v5, v6, v7);
    v9 = IMIsSupportedUTIType();

    if (v9)
    {
      v13 = objc_msgSend_attributionInfo(self, v10, v11, v12);
      v16 = objc_msgSend_objectForKeyedSubscript_(v13, v14, *MEMORY[0x1E69A6FE0], v15);

      if (v16)
      {
        v17 = IMDatabaseLogHandle();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v21 = objc_msgSend_guid(self, v18, v19, v20);
          v25 = 138412290;
          v26 = v21;
          _os_log_impl(&dword_1B7AD5000, v17, OS_LOG_TYPE_DEFAULT, "Migrating attachment GUID %@ to new preview generation state", &v25, 0xCu);
        }

        objc_msgSend__write(self, v22, v23, v24);
      }
    }
  }
}

+ (id)keyPathsToColumns
{
  if (qword_1EDBE5B08 != -1)
  {
    sub_1B7CF7E98();
  }

  v3 = qword_1EDBE5B30;

  return v3;
}

@end