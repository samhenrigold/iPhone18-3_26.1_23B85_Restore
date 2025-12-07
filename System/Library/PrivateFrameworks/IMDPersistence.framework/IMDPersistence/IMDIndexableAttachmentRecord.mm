@interface IMDIndexableAttachmentRecord
- (IMDIndexableAttachmentRecord)initWithAttachmentRecord:(id)record;
- (IMDIndexableAttachmentRecord)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
@end

@implementation IMDIndexableAttachmentRecord

- (IMDIndexableAttachmentRecord)initWithAttachmentRecord:(id)record
{
  recordCopy = record;
  v44.receiver = self;
  v44.super_class = IMDIndexableAttachmentRecord;
  v8 = [(IMDIndexableAttachmentRecord *)&v44 init];
  if (v8)
  {
    objc_msgSend__writeIfNeededForPreviewGenerationStateMigration(recordCopy, v5, v6, v7);
    v12 = objc_msgSend_guid(recordCopy, v9, v10, v11);
    guid = v8->_guid;
    v8->_guid = v12;

    v17 = objc_msgSend_path(recordCopy, v14, v15, v16);
    path = v8->_path;
    v8->_path = v17;

    v22 = objc_msgSend_transferName(recordCopy, v19, v20, v21);
    name = v8->_name;
    v8->_name = v22;

    v27 = objc_msgSend_attributionInfo(recordCopy, v24, v25, v26);
    attributionInfo = v8->_attributionInfo;
    v8->_attributionInfo = v27;

    v8->_commSafetySensitive = objc_msgSend_isCommSafetySensitive(recordCopy, v29, v30, v31);
    v8->_sticker = objc_msgSend_isSticker(recordCopy, v32, v33, v34);
    v38 = objc_msgSend_utiString(recordCopy, v35, v36, v37);
    uti = v8->_uti;
    v8->_uti = v38;

    v8->_previewGenerationState = objc_msgSend_previewGenerationState(recordCopy, v40, v41, v42);
  }

  return v8;
}

- (IMDIndexableAttachmentRecord)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v45.receiver = self;
  v45.super_class = IMDIndexableAttachmentRecord;
  v7 = [(IMDIndexableAttachmentRecord *)&v45 init];
  if (v7)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v5, @"guid", v6);
    guid = v7->_guid;
    v7->_guid = v8;

    v12 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v10, @"path", v11);
    path = v7->_path;
    v7->_path = v12;

    v16 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v14, @"name", v15);
    name = v7->_name;
    v7->_name = v16;

    v20 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v18, @"attributionInfo", v19);
    attributionInfo = v7->_attributionInfo;
    v7->_attributionInfo = v20;

    v24 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v22, @"isCommSafetySensitive", v23);
    v7->_commSafetySensitive = objc_msgSend_BOOLValue(v24, v25, v26, v27);

    v30 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v28, @"isSticker", v29);
    v7->_sticker = objc_msgSend_BOOLValue(v30, v31, v32, v33);

    v36 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v34, @"uti", v35);
    uti = v7->_uti;
    v7->_uti = v36;

    v40 = objc_msgSend_objectForKeyedSubscript_(representationCopy, v38, @"previewGenerationState", v39);
    v7->_previewGenerationState = objc_msgSend_integerValue(v40, v41, v42, v43);
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

  v11 = objc_msgSend_path(self, v8, v9, v10);
  if (v11)
  {
    CFDictionarySetValue(v3, @"path", v11);
  }

  v15 = objc_msgSend_name(self, v12, v13, v14);
  if (v15)
  {
    CFDictionarySetValue(v3, @"name", v15);
  }

  v19 = objc_msgSend_attributionInfo(self, v16, v17, v18);
  if (v19)
  {
    CFDictionarySetValue(v3, @"attributionInfo", v19);
  }

  v20 = MEMORY[0x1E696AD98];
  isCommSafetySensitive = objc_msgSend_isCommSafetySensitive(self, v21, v22, v23);
  v27 = objc_msgSend_numberWithBool_(v20, v25, isCommSafetySensitive, v26);
  if (v27)
  {
    CFDictionarySetValue(v3, @"isCommSafetySensitive", v27);
  }

  v28 = MEMORY[0x1E696AD98];
  isSticker = objc_msgSend_isSticker(self, v29, v30, v31);
  v35 = objc_msgSend_numberWithBool_(v28, v33, isSticker, v34);
  if (v35)
  {
    CFDictionarySetValue(v3, @"isSticker", v35);
  }

  v39 = objc_msgSend_uti(self, v36, v37, v38);
  if (v39)
  {
    CFDictionarySetValue(v3, @"uti", v39);
  }

  v40 = MEMORY[0x1E696AD98];
  v44 = objc_msgSend_previewGenerationState(self, v41, v42, v43);
  v47 = objc_msgSend_numberWithInteger_(v40, v45, v44, v46);
  if (v47)
  {
    CFDictionarySetValue(v3, @"previewGenerationState", v47);
  }

  return v3;
}

@end