@interface TPAppPropertiesProvider
- (NSArray)rtfDocumentTypes;
- (NSArray)textDocumentTypes;
- (NSArray)wordDocumentTypes;
- (id)appChartPropertyOverrides;
- (id)applicationDisplayName;
- (id)applicationTemplateVariantsForLocale:(id)locale;
- (id)documentTypeDisplayName;
- (id)documentTypeDisplayNameForSharingInvitation;
- (id)importableDocumentTypes;
- (id)strokeWidthsForFreehandDrawingToolType:(unint64_t)type;
- (id)templateTypeDisplayName;
@end

@implementation TPAppPropertiesProvider

- (id)applicationDisplayName
{
  v11 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_objectForInfoDictionaryKey_(v11, v12, v16, v17, v18, v19, @"CFBundleDisplayName", v13, v14, v15);
  v30 = v20;
  if (v20)
  {
    v31 = v20;
  }

  else
  {
    v31 = objc_msgSend_applicationName(self, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  }

  v32 = v31;

  return v32;
}

- (id)documentTypeDisplayName
{
  v2 = sub_275FFFC3C(self);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v5, v6, v7, v8, @"Document", &stru_288501738, @"Pages", v4);

  return v9;
}

- (id)documentTypeDisplayNameForSharingInvitation
{
  v2 = sub_275FFFC3C(self);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v5, v6, v7, v8, @"document", &stru_288501738, @"Pages", v4);

  return v9;
}

- (id)templateTypeDisplayName
{
  v2 = sub_275FFFC3C(self);
  v9 = objc_msgSend_localizedStringForKey_value_table_(v2, v3, v5, v6, v7, v8, @"Template", &stru_288501738, @"Pages", v4);

  return v9;
}

- (id)importableDocumentTypes
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = objc_msgSend_wordDocumentTypes(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  objc_msgSend_addObjectsFromArray_(v3, v14, v18, v19, v20, v21, v13, v15, v16, v17);

  v31 = objc_msgSend_textDocumentTypes(self, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  objc_msgSend_addObjectsFromArray_(v3, v32, v36, v37, v38, v39, v31, v33, v34, v35);

  v49 = objc_msgSend_rtfDocumentTypes(self, v40, v45, v46, v47, v48, v41, v42, v43, v44);
  objc_msgSend_addObjectsFromArray_(v3, v50, v54, v55, v56, v57, v49, v51, v52, v53);

  return v3;
}

- (NSArray)wordDocumentTypes
{
  v10[6] = *MEMORY[0x277D85DE8];
  v10[0] = @"com.microsoft.word.doc";
  v10[1] = @"org.openxmlformats.wordprocessingml.document";
  v10[2] = @"com.microsoft.word.dot";
  v10[3] = @"org.openxmlformats.wordprocessingml.template";
  v10[4] = @"org.openxmlformats.wordprocessingml.document.macroenabled";
  v10[5] = @"org.openxmlformats.wordprocessingml.template.macroenabled";
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v4, v5, v6, v7, v10, 6, v2, v3);

  return v8;
}

- (NSArray)textDocumentTypes
{
  v20[1] = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_identifier(*MEMORY[0x277CE1E20], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20[0] = v10;
  v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v14, v15, v16, v17, v20, 1, v12, v13);

  return v18;
}

- (NSArray)rtfDocumentTypes
{
  v30[2] = *MEMORY[0x277D85DE8];
  v10 = objc_msgSend_identifier(*MEMORY[0x277CE1E50], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v30[0] = v10;
  v20 = objc_msgSend_identifier(*MEMORY[0x277CE1E58], v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30[1] = v20;
  v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v24, v25, v26, v27, v30, 2, v22, v23);

  return v28;
}

- (id)strokeWidthsForFreehandDrawingToolType:(unint64_t)type
{
  result = MEMORY[0x277CBEBF8];
  if (type > 2)
  {
    if (type != 3)
    {
      if (type == 4)
      {
        return &unk_28850DC88;
      }

      if (type != 5)
      {
        return result;
      }
    }

    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPAppPropertiesProvider strokeWidthsForFreehandDrawingToolType:]", v3, v4, v5);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPAppPropertiesProvider.m", v16, v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v25, v26, v27, v28, v14, v23, 223, 0, "Unknown tool type %lu when generating stroke widths for freehand drawing.", type);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v29, v34, v35, v36, v37, v30, v31, v32, v33);
    return MEMORY[0x277CBEBF8];
  }

  v12 = &unk_28850DC70;
  if (type != 2)
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  if (type >= 2)
  {
    return v12;
  }

  else
  {
    return &unk_28850DC58;
  }
}

- (id)applicationTemplateVariantsForLocale:(id)locale
{
  v15[1] = *MEMORY[0x277D85DE8];
  v3 = @"Traditional";
  if (locale && TSUIsLocaleISO())
  {
    v3 = @"ISO";
  }

  v15[0] = v3;
  v4 = MEMORY[0x277CBEA60];
  v5 = v3;
  v13 = objc_msgSend_arrayWithObjects_count_(v4, v6, v9, v10, v11, v12, v15, 1, v7, v8);

  return v13;
}

- (id)appChartPropertyOverrides
{
  if (qword_280A404C8 != -1)
  {
    sub_27603823C();
  }

  v3 = qword_280A404C0;

  return v3;
}

@end