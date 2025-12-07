@interface TSPDocumentResourceRegistry
+ (id)sharedRegistry;
+ (void)setSharedRegistryMetadataURL:(id)l;
- (TSPDocumentResourceRegistry)init;
- (TSPDocumentResourceRegistry)initWithMetadataDictionary:(id)dictionary;
- (TSPDocumentResourceRegistry)initWithMetadataURL:(id)l;
- (id)documentResourceInfoForDigestString:(id)string locator:(id)locator;
- (id)documentResourceInfosForTags:(id)tags;
- (id)localStrategyProviderForDocumentResourceInfos:(id)infos;
@end

@implementation TSPDocumentResourceRegistry

+ (void)setSharedRegistryMetadataURL:(id)l
{
  if (qword_280A529E8 != l)
  {
    v3 = objc_msgSend_copy(l, a2, l);
    v4 = qword_280A529E8;
    qword_280A529E8 = v3;
  }

  qword_280A530B8 = 0;
}

+ (id)sharedRegistry
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276B01540;
  block[3] = &unk_27A6E4768;
  block[4] = self;
  if (qword_280A530B8 != -1)
  {
    dispatch_once(&qword_280A530B8, block);
  }

  v2 = qword_280A52B28;

  return v2;
}

- (TSPDocumentResourceRegistry)init
{
  v2 = MEMORY[0x277D81150];
  v3 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPDocumentResourceRegistry init]");
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v2, v6, v3, v5, 57, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v7, v8);
  v9 = MEMORY[0x277CBEAD8];
  v10 = *MEMORY[0x277CBE658];
  v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v11, @"%s: %s", "Do not call method", "[TSPDocumentResourceRegistry init]");
  v14 = objc_msgSend_exceptionWithName_reason_userInfo_(v9, v13, v10, v12, 0);
  v15 = v14;

  objc_exception_throw(v14);
}

- (TSPDocumentResourceRegistry)initWithMetadataURL:(id)l
{
  v8 = 0;
  v5 = objc_msgSend_tsu_propertyListWithContentsOfURL_options_error_(MEMORY[0x277CCAC58], a2, l, 0, &v8);
  if (v8)
  {
    if (UnsafePointer != -1)
    {
      sub_276BD7064();
    }

    selfCopy = 0;
  }

  else
  {
    self = objc_msgSend_initWithMetadataDictionary_(self, v4, v5);
    selfCopy = self;
  }

  return selfCopy;
}

- (TSPDocumentResourceRegistry)initWithMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (objc_msgSend_count(dictionaryCopy, v5, v6))
  {
    v14.receiver = self;
    v14.super_class = TSPDocumentResourceRegistry;
    v9 = [(TSPDocumentResourceRegistry *)&v14 init];
    if (v9)
    {
      v10 = objc_msgSend_copy(dictionaryCopy, v7, v8);
      metadataDictionary = v9->_metadataDictionary;
      v9->_metadataDictionary = v10;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)documentResourceInfoForDigestString:(id)string locator:(id)locator
{
  v180 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  locatorCopy = locator;
  objc_opt_class();
  v9 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v8, @"Locators");
  v10 = TSUDynamicCast();

  if (!v10)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v21, v18, v20, 92, 0, "Invalid digest to locator dictionary");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23);
    v24 = 0;
    goto LABEL_83;
  }

  v13 = stringCopy;
  if (v13)
  {
    v14 = objc_msgSend_objectForKeyedSubscript_(v10, v12, v13);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v14;
    }

    else
    {
      if (v14)
      {
        v25 = MEMORY[0x277D81150];
        v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v29, v26, v28, 107, 0, "Invalid locator value for digest string %{public}@: Locator must be a string", v13);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31);
      }

      v16 = 0;
    }

    if (!locatorCopy)
    {
LABEL_27:
      v24 = 0;
      if (!v16 || !v13)
      {
        goto LABEL_82;
      }

      objc_opt_class();
      v67 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v66, @"Properties");
      v68 = TSUDynamicCast();

      if (!v68)
      {
        v78 = MEMORY[0x277D81150];
        v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
        v81 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v82, v79, v81, 151, 0, "Invalid digest to properties dictionary");

        v68 = 0;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v83, v84);
        v24 = 0;
LABEL_81:

        goto LABEL_82;
      }

      v70 = *MEMORY[0x277CBF3A8];
      v71 = *(MEMORY[0x277CBF3A8] + 8);
      v72 = objc_msgSend_objectForKeyedSubscript_(v68, v69, v13);
      objc_opt_class();
      v166 = v16;
      v167 = v72;
      v173 = locatorCopy;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v72)
        {
          v85 = v13;
          v86 = MEMORY[0x277D81150];
          v87 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
          v89 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v86, v90, v87, v89, 213, 0, "Invalid properties value for digest string %{public}@: Properties must be an array", v85);

          v13 = v85;
          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v91, v92);
          v93 = 0;
          v72 = 0;
          goto LABEL_79;
        }

        v174 = v13;
        v121 = 0;
        v93 = 0;
        v94 = 0;
LABEL_76:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v148 = [TSPDocumentResourceInfo alloc];
          v13 = v174;
          v24 = objc_msgSend_initWithDigestString_locator_fileExtension_fileSize_tags_pixelSize_fallbackColor_(v148, v149, v174, v16, v72, v94, v93, v121, v70, v71);

LABEL_80:
          locatorCopy = v173;
          goto LABEL_81;
        }

        v150 = MEMORY[0x277D81150];
        v151 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v147, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
        objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v152, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
        v154 = v153 = v72;
        v13 = v174;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v150, v155, v151, v154, 218, 0, "Invalid file extension for digest string %{public}@: File extension must be a string", v174);

        v72 = v153;
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v156, v157);

LABEL_79:
        v24 = 0;
        v16 = v166;
        goto LABEL_80;
      }

      v76 = objc_msgSend_count(v72, v73, v74);
      v165 = v76;
      if (v76)
      {
        v164 = objc_msgSend_objectAtIndexedSubscript_(v72, v75, 0);
        if (v76 != 1)
        {
          objc_opt_class();
          v123 = objc_msgSend_objectAtIndexedSubscript_(v72, v122, 1);
          v124 = TSUDynamicCast();

          if (v124)
          {
            v94 = objc_msgSend_unsignedLongLongValue(v124, v125, v126);
          }

          else
          {
            v94 = 0;
          }

          v76 = v165;
          if (v165 < 3)
          {
            v77 = 0;
            v95 = objc_msgSend_conformsToProtocol_(0, v159, &unk_2885F09F8);
          }

          else
          {
            v77 = objc_msgSend_objectAtIndexedSubscript_(v72, v159, 2);
            v95 = objc_msgSend_conformsToProtocol_(v77, v160, &unk_2885F09F8);
          }

          goto LABEL_39;
        }

        v77 = 0;
      }

      else
      {
        v77 = 0;
        v164 = 0;
      }

      v94 = 0;
      v95 = objc_msgSend_conformsToProtocol_(0, v75, &unk_2885F09F8);
LABEL_39:
      v174 = v13;
      v163 = v77;
      if (v95)
      {
        v161 = v94;
        v169 = stringCopy;
        v171 = v10;
        v177 = 0u;
        v178 = 0u;
        v175 = 0u;
        v176 = 0u;
        v97 = v77;
        v99 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v98, &v175, v179, 16);
        if (v99)
        {
          v100 = v99;
          v93 = 0;
          v101 = *v176;
          do
          {
            for (i = 0; i != v100; ++i)
            {
              if (*v176 != v101)
              {
                objc_enumerationMutation(v97);
              }

              v103 = *(*(&v175 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (v93)
                {
                  objc_msgSend_addObject_(v93, v104, v103);
                }

                else
                {
                  v93 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v104, v103);
                }
              }

              else if (v103)
              {
                v105 = MEMORY[0x277D81150];
                v106 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v104, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
                v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v105, v109, v106, v108, 188, 0, "Invalid tag value for digest string %{public}@: Tag must be a string", v174);

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v110, v111);
              }
            }

            v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v97, v104, &v175, v179, 16);
          }

          while (v100);
        }

        else
        {
          v93 = 0;
        }

        stringCopy = v169;
        v10 = v171;
        v94 = v161;
        v72 = v167;
        v76 = v165;
        v77 = v163;
      }

      else
      {
        if (v77)
        {
          v112 = MEMORY[0x277D81150];
          v113 = v77;
          v114 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v96, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
          v116 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v115, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
          v117 = v112;
          v76 = v165;
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v117, v118, v114, v116, 192, 0, "Invalid tags value for digest string %{public}@: Tags must be an enumerable", v174);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v119, v120);
          v77 = v113;
        }

        v93 = 0;
      }

      if (v76 < 4)
      {
        v121 = 0;
        v72 = v164;
      }

      else
      {
        objc_opt_class();
        v128 = objc_msgSend_objectAtIndexedSubscript_(v72, v127, 3);
        v129 = TSUDynamicCast();

        if (v129 && objc_msgSend_count(v129, v130, v131) == 2)
        {
          v162 = v94;
          v132 = v68;
          objc_opt_class();
          v134 = objc_msgSend_objectAtIndexedSubscript_(v129, v133, 0);
          v135 = TSUDynamicCast();

          objc_opt_class();
          v137 = objc_msgSend_objectAtIndexedSubscript_(v129, v136, 1);
          v138 = TSUDynamicCast();

          if (v135 && v138)
          {
            v70 = objc_msgSend_intValue(v135, v139, v140);
            v71 = objc_msgSend_intValue(v138, v141, v142);
          }

          v68 = v132;
          v72 = v167;
          v94 = v162;
        }

        if (v165 == 4 || (objc_opt_class(), objc_msgSend_objectAtIndexedSubscript_(v72, v143, 4), v144 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v145 = objc_claimAutoreleasedReturnValue(), v144, !v145))
        {
          v121 = 0;
        }

        else
        {
          v121 = objc_msgSend_colorWithHexString_(MEMORY[0x277D81180], v146, v145);
        }

        v77 = v163;
        v72 = v164;
      }

      goto LABEL_76;
    }
  }

  else
  {
    v16 = 0;
    if (!locatorCopy)
    {
      goto LABEL_27;
    }
  }

  if (v16)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  v33 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v32, @"Digest");
  v24 = TSUDynamicCast();

  if (v24)
  {
    v168 = stringCopy;
    v170 = v10;
    v172 = locatorCopy;
    v36 = objc_msgSend_lowercaseString(locatorCopy, v34, v35);
    v38 = objc_msgSend_objectForKeyedSubscript_(v24, v37, v36);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (v38)
      {
        v52 = MEMORY[0x277D81150];
        v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v39, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v56, v53, v55, 143, 0, "Invalid digest value for locator %{public}@: Digest must be a string", locatorCopy);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58);
        v40 = v13;
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v40 = v13;
      }

      goto LABEL_26;
    }

    v40 = v38;

    v42 = objc_msgSend_objectForKeyedSubscript_(v170, v41, v40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v42;
      if (v44)
      {
LABEL_24:

        locatorCopy = v172;
        v16 = v44;
LABEL_26:

        v13 = v40;
        stringCopy = v168;
        v10 = v170;
        goto LABEL_27;
      }
    }

    else if (v42)
    {
      v59 = MEMORY[0x277D81150];
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v59, v63, v60, v62, 135, 0, "Invalid locator value for digest string %{public}@: Locator must be a string", v40);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65);
    }

    v44 = v36;
    goto LABEL_24;
  }

  v45 = MEMORY[0x277D81150];
  v46 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSPDocumentResourceRegistry documentResourceInfoForDigestString:locator:]");
  v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v45, v49, v46, v48, 117, 0, "Invalid locator to digest dictionary");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51);
  v16 = 0;
LABEL_82:

LABEL_83:

  return v24;
}

- (id)documentResourceInfosForTags:(id)tags
{
  v120 = *MEMORY[0x277D85DE8];
  tagsCopy = tags;
  if (objc_msgSend_count(tagsCopy, v5, v6))
  {
    objc_opt_class();
    selfCopy = self;
    v8 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v7, @"Tags");
    v9 = TSUDynamicCast();

    v11 = v9;
    if (v9)
    {
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      v92 = tagsCopy;
      v12 = tagsCopy;
      v96 = v9;
      v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v113, v119, 16);
      v15 = 0;
      if (v100)
      {
        v16 = 0x277CBE000uLL;
        v99 = *v114;
        v93 = v12;
        do
        {
          for (i = 0; i != v100; ++i)
          {
            if (*v114 != v99)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v113 + 1) + 8 * i);
            v19 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v18);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = objc_msgSend_lastObject(v19, v20, v21);
              if (objc_msgSend_conformsToProtocol_(v22, v23, &unk_2885F09F8))
              {
                obj = v19;
                v95 = i;
                v111 = 0u;
                v112 = 0u;
                v109 = 0u;
                v110 = 0u;
                v97 = v22;
                v25 = v22;
                v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v109, v118, 16);
                if (v27)
                {
                  v28 = v27;
                  v29 = *v110;
                  do
                  {
                    for (j = 0; j != v28; ++j)
                    {
                      if (*v110 != v29)
                      {
                        objc_enumerationMutation(v25);
                      }

                      v31 = *(*(&v109 + 1) + 8 * j);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        if (v15)
                        {
                          objc_msgSend_addObject_(v15, v32, v31);
                        }

                        else
                        {
                          v15 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v32, v31);
                        }
                      }

                      else if (v31)
                      {
                        v33 = MEMORY[0x277D81150];
                        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
                        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
                        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v37, v34, v36, 259, 0, "Invalid locator value for tag %{public}@: Locator must be a string", v18);

                        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39);
                      }
                    }

                    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v32, &v109, v118, 16);
                  }

                  while (v28);
                }

                i = v95;
                v11 = v96;
                v12 = v93;
                v16 = 0x277CBE000;
                v19 = obj;
                v22 = v97;
              }

              else if (v22)
              {
                v98 = v22;
                v51 = v11;
                v52 = i;
                v53 = MEMORY[0x277D81150];
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
                v54 = objc = v19;
                objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v55, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
                v57 = v56 = v12;
                v58 = v53;
                i = v52;
                v11 = v51;
                v22 = v98;
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v59, v54, v57, 263, 0, "Invalid locators value for tag %{public}@: Locators must be an array", v18);

                v12 = v56;
                v16 = 0x277CBE000;

                v19 = objc;
                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61);
              }
            }

            else if (v19)
            {
              v40 = i;
              v41 = MEMORY[0x277D81150];
              objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
              v42 = objb = v19;
              objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
              v44 = v16;
              v46 = v45 = v12;
              v47 = v41;
              i = v40;
              v11 = v96;
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v48, v42, v46, 266, 0, "Invalid properties value for tag %{public}@: Properties must be an array", v18);

              v12 = v45;
              v16 = v44;

              v19 = objb;
              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v49, v50);
            }
          }

          v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v14, &v113, v119, 16);
        }

        while (v100);
      }

      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      obja = v15;
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v62, &v105, v117, 16);
      if (v63)
      {
        v65 = v63;
        v66 = 0;
        v67 = *v106;
        v68 = selfCopy;
        do
        {
          for (k = 0; k != v65; ++k)
          {
            if (*v106 != v67)
            {
              objc_enumerationMutation(obja);
            }

            v70 = *(*(&v105 + 1) + 8 * k);
            v72 = objc_msgSend_documentResourceInfoForDigestString_locator_(v68, v64, 0, v70);
            if (v72)
            {
              if (v66)
              {
                objc_msgSend_addObject_(v66, v71, v72);
              }

              else
              {
                v66 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB58], v71, v72);
              }
            }

            else
            {
              v73 = MEMORY[0x277D81150];
              v74 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v71, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
              v76 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v75, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
              v77 = v73;
              v68 = selfCopy;
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v77, v78, v74, v76, 281, 0, "Invalid locator %{public}@", v70);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v79, v80);
            }
          }

          v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v64, &v105, v117, 16);
        }

        while (v65);
      }

      else
      {
        v66 = 0;
      }

      v81 = objc_msgSend_copy(v66, v89, v90);
      tagsCopy = v92;
      v11 = v96;
    }

    else
    {
      v82 = MEMORY[0x277D81150];
      v83 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSPDocumentResourceRegistry documentResourceInfosForTags:]");
      v85 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v84, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPDocumentResourceRegistry.m");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v82, v86, v83, v85, 238, 0, "Invalid tag to properties dictionary");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v87, v88);
      v81 = 0;
    }
  }

  else
  {
    v81 = 0;
  }

  return v81;
}

- (id)localStrategyProviderForDocumentResourceInfos:(id)infos
{
  v57 = *MEMORY[0x277D85DE8];
  infosCopy = infos;
  v7 = objc_msgSend_count(infosCopy, v5, v6);
  if (v7)
  {
    v43 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], v8, v7);
    v10 = objc_msgSend_objectForKeyedSubscript_(self->_metadataDictionary, v9, @"Tags");
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v40 = infosCopy;
    obj = infosCopy;
    v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v51, v56, 16);
    if (v44)
    {
      v42 = *v52;
      do
      {
        v14 = 0;
        do
        {
          if (*v52 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v51 + 1) + 8 * v14);
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v45 = v15;
          v16 = objc_msgSend_tags(v15, v12, v13);
          v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v47, v55, 16);
          v46 = v14;
          if (v18)
          {
            v19 = v18;
            v20 = 0;
            v21 = *v48;
LABEL_9:
            v22 = 0;
            while (1)
            {
              if (*v48 != v21)
              {
                objc_enumerationMutation(v16);
              }

              v23 = *(*(&v47 + 1) + 8 * v22);
              objc_opt_class();
              v25 = objc_msgSend_objectForKeyedSubscript_(v10, v24, v23);
              v28 = objc_msgSend_firstObject(v25, v26, v27);
              v29 = TSUDynamicCast();

              v20 |= objc_msgSend_integerValue(v29, v30, v31);
              if (v20 == 3)
              {
                break;
              }

              if (v19 == ++v22)
              {
                v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v32, &v47, v55, 16);
                if (v19)
                {
                  goto LABEL_9;
                }

                break;
              }
            }
          }

          else
          {
            v20 = 0;
          }

          v34 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v33, v20);
          objc_msgSend_setObject_forKeyedSubscript_(v43, v35, v34, v45);

          v14 = v46 + 1;
        }

        while (v46 + 1 != v44);
        v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v12, &v51, v56, 16);
      }

      while (v44);
    }

    v38 = objc_msgSend_copy(v43, v36, v37);
    infosCopy = v40;
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

@end