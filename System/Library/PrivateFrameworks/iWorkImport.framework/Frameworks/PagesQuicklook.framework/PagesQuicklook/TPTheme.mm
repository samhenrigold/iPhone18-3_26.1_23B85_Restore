@interface TPTheme
+ (TPTheme)themeWithContext:(id)context alternate:(unint64_t)alternate withStylesheet:(id)stylesheet;
- (BOOL)isBasicTheme;
- (BOOL)isBookPortraitTemplateTheme;
- (NSDictionary)headerAndFooterStyles;
- (TSWPParagraphStyle)bodyStyle;
- (TSWPParagraphStyle)footnoteStyle;
- (TSWPParagraphStyle)headerAndFooterStyle;
- (id)_paragraphStylePresetWithName:(id)name orContentTag:(id)tag;
- (id)localizedBodyStyleName;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
@end

@implementation TPTheme

+ (TPTheme)themeWithContext:(id)context alternate:(unint64_t)alternate withStylesheet:(id)stylesheet
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___TPTheme;
  v5 = objc_msgSendSuper2(&v7, sel_themeWithContext_alternate_withStylesheet_, context, alternate, stylesheet);

  return v5;
}

- (id)_paragraphStylePresetWithName:(id)name orContentTag:(id)tag
{
  v102 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  tagCopy = tag;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v15 = objc_msgSend_presetsOfKind_(self, v8, 0, v12, v13, v14, *MEMORY[0x277D80B70], v9, v10, v11);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, v18, v19, v20, v21, &v97, v101, 16, v17);
  if (v27)
  {
    v32 = *v98;
LABEL_3:
    v33 = 0;
    while (1)
    {
      if (*v98 != v32)
      {
        objc_enumerationMutation(v15);
      }

      v34 = *(*(&v97 + 1) + 8 * v33);
      v35 = objc_msgSend_name(v34, v22, v28, v29, v30, v31, v23, v24, v25, v26);
      isEqualToString = objc_msgSend_isEqualToString_(v35, v36, v40, v41, v42, v43, nameCopy, v37, v38, v39);

      if (isEqualToString)
      {
        break;
      }

      if (v27 == ++v33)
      {
        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v22, v28, v29, v30, v31, &v97, v101, 16, v26);
        if (v27)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v53 = v34;

    if (v53)
    {
      goto LABEL_14;
    }
  }

  else
  {
LABEL_9:
  }

  v53 = objc_msgSend_paragraphStyleWithContentTag_(self, v45, v49, v50, v51, v52, tagCopy, v46, v47, v48);
  if (!v53)
  {
    v53 = objc_msgSend_defaultParagraphStyle(self, v54, v59, v60, v61, v62, v55, v56, v57, v58);
    if (!v53)
    {
      v71 = MEMORY[0x277D81150];
      v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, v67, v68, v69, v70, "[TPTheme _paragraphStylePresetWithName:orContentTag:]", v64, v65, v66);
      v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, v77, v78, v79, v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPTheme.mm", v74, v75, v76);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v82, v83, v84, v85, v86, v72, v81, 67, 0, "invalid nil value for '%{public}s'", "style");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v92, v93, v94, v95, v88, v89, v90, v91);
      v53 = 0;
    }
  }

LABEL_14:

  return v53;
}

- (TSWPParagraphStyle)bodyStyle
{
  v11 = objc_msgSend_localizedBodyStyleName(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v19 = objc_msgSend__paragraphStylePresetWithName_orContentTag_(self, v12, v15, v16, v17, v18, v11, *MEMORY[0x277D81030], v13, v14);

  return v19;
}

- (TSWPParagraphStyle)headerAndFooterStyle
{
  v11 = objc_msgSend_context(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v31 = objc_msgSend_documentLocale(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  v38 = objc_msgSend_localizedStringForKey_value_table_(v31, v32, v34, v35, v36, v37, @"Header & Footer", &stru_288501738, @"Pages", v33);
  v46 = objc_msgSend__paragraphStylePresetWithName_orContentTag_(self, v39, v42, v43, v44, v45, v38, @"Header & Footer", v40, v41);

  return v46;
}

- (NSDictionary)headerAndFooterStyles
{
  v10 = objc_msgSend_paragraphStylesWithContentTag_(self, a2, v5, v6, v7, v8, @"Header", v2, v3, v4);
  v19 = objc_msgSend_paragraphStylesWithContentTag_(self, v11, v15, v16, v17, v18, @"Footer", v12, v13, v14);
  v29 = objc_msgSend_headerAndFooterStyle(self, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  v39 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v30, v35, v36, v37, v38, v31, v32, v33, v34);
  if (objc_msgSend_count(v10, v40, v45, v46, v47, v48, v41, v42, v43, v44))
  {
    v58 = objc_msgSend_firstObject(v10, v49, v54, v55, v56, v57, v50, v51, v52, v53);
    objc_msgSend_setObject_forKeyedSubscript_(v39, v59, v62, v63, v64, v65, v58, @"Header", v60, v61);
  }

  if (objc_msgSend_count(v19, v49, v54, v55, v56, v57, v50, v51, v52, v53))
  {
    v75 = objc_msgSend_firstObject(v19, v66, v71, v72, v73, v74, v67, v68, v69, v70);
    objc_msgSend_setObject_forKeyedSubscript_(v39, v76, v79, v80, v81, v82, v75, @"Footer", v77, v78);
  }

  if (v29)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v39, v66, v71, v72, v73, v74, v29, @"Header & Footer", v69, v70);
  }

  v83 = objc_msgSend_copy(v39, v66, v71, v72, v73, v74, v67, v68, v69, v70);

  return v83;
}

- (TSWPParagraphStyle)footnoteStyle
{
  v11 = objc_msgSend_context(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_documentRoot(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v31 = objc_msgSend_documentLocale(v21, v22, v27, v28, v29, v30, v23, v24, v25, v26);
  v38 = objc_msgSend_localizedStringForKey_value_table_(v31, v32, v34, v35, v36, v37, @"Footnote Text", &stru_288501738, @"Pages", v33);
  v46 = objc_msgSend__paragraphStylePresetWithName_orContentTag_(self, v39, v42, v43, v44, v45, v38, @"Footnote Text", v40, v41);

  return v46;
}

- (BOOL)isBasicTheme
{
  v10 = objc_msgSend_themeIdentifier(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (objc_msgSend_isEqualToString_(v10, v11, v15, v16, v17, v18, @"00V_Vertical_Blank_Portrait", v12, v13, v14) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v19, v23, v24, v25, v26, @"20_Blank_Black", v20, v21, v22) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v27, v31, v32, v33, v34, @"21_Blank_Layout", v28, v29, v30) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v35, v39, v40, v41, v42, @"21_Note-taking", v36, v37, v38) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v43, v47, v48, v49, v50, @"Blank", v44, v45, v46))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v10, v51, v55, v56, v57, v58, @"BlankLandscape", v52, v53, v54);
  }

  return isEqualToString;
}

- (BOOL)isBookPortraitTemplateTheme
{
  v10 = objc_msgSend_themeIdentifier(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (objc_msgSend_isEqualToString_(v10, v11, v15, v16, v17, v18, @"08B_Basic_Portrait", v12, v13, v14) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v19, v23, v24, v25, v26, @"00B_Blank_Portrait", v20, v21, v22) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v27, v31, v32, v33, v34, @"00C_Textbook_Portrait", v28, v29, v30) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v35, v39, v40, v41, v42, @"11B_Novel_Portrait", v36, v37, v38) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v43, v47, v48, v49, v50, @"11B_Novel_Modern", v44, v45, v46) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v51, v55, v56, v57, v58, @"11B_Novel_Traditional", v52, v53, v54) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v59, v63, v64, v65, v66, @"25_EdgyNovel", v60, v61, v62) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v67, v71, v72, v73, v74, @"25_Instructional", v68, v69, v70) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v75, v79, v80, v81, v82, @"26_PersonalNovel", v76, v77, v78) & 1) != 0 || (objc_msgSend_isEqualToString_(v10, v83, v87, v88, v89, v90, @"26_Professional", v84, v85, v86) & 1) != 0 || (objc_msgSend_hasPrefix_(v10, v91, v95, v96, v97, v98, @"27_ContemporaryNovel", v92, v93, v94))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v10, v99, v103, v104, v105, v106, @"29_ElegantNovel", v100, v101, v102);
  }

  return isEqualToString;
}

- (id)localizedBodyStyleName
{
  v10 = objc_msgSend_context(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_documentRoot(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_documentLocale(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);
  v37 = objc_msgSend_localizedStringForKey_value_table_(v30, v31, v33, v34, v35, v36, @"Body", &stru_288501738, @"Pages", v32);

  return v37;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v13 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v9, v10, v11, v12, off_2812F85B8[2], v6, v7, v8);

  if (*(v13 + 24))
  {
    v14 = *(v13 + 24);
  }

  else
  {
    v14 = MEMORY[0x277D80BD8];
  }

  v15.receiver = self;
  v15.super_class = TPTheme;
  [(TSATheme *)&v15 loadFromArchive:v14 unarchiver:unarchiverCopy];
}

- (void)p_saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_276014698;
  v14[3] = &unk_27A6A84B8;
  selfCopy = self;
  archiveCopy = archive;
  v15 = archiverCopy;
  v7 = archiverCopy;
  objc_msgSend_pushScopeForField_message_usingBlock_(v7, v8, v10, v11, v12, v13, 1, archive, v14, v9);
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v11 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, v7, v8, v9, v10, sub_2760147DC, off_2812F85B8[2], v5, v6);

  objc_msgSend_p_saveToArchive_archiver_(self, v12, v15, v16, v17, v18, v11, archiverCopy, v13, v14);
}

@end