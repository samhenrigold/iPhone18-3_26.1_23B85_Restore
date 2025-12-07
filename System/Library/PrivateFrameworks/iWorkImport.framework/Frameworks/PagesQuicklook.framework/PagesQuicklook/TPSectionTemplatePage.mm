@interface TPSectionTemplatePage
+ (id)sectionTemplatePageForPageTemplate:(id)template withSection:(id)section;
- (BOOL)containsInfo:(id)info;
- (BOOL)containsModelObject:(id)object;
- (BOOL)p_isInDocument;
- (BOOL)usesSingleHeaderFooter;
- (NSEnumerator)headerFooterFragmentEnumerator;
- (NSString)description;
- (TPSection)section;
- (TPSectionTemplatePage)initWithSection:(id)section;
- (TSKDocumentRoot)documentRoot;
- (double)bodyWidth;
- (double)pHeightOfHeaderFooter:(int64_t)footer;
- (id)childEnumerator;
- (id)copyWithContext:(id)context;
- (id)headerFooter:(int64_t)footer fragmentAtIndex:(int64_t)index;
- (id)i_pageTemplate;
- (id)objectUUIDPath;
- (id)p_headerAndFooterStorages;
- (id)sectionTemplateDrawablesSortedByZOrder:(id)order;
- (id)topLevelParentInfoForInfo:(id)info;
- (int64_t)headerFooterTypeForStorage:(id)storage;
- (int64_t)headerFragmentIndexForStorage:(id)storage;
- (int64_t)p_headerFragmentIndexForTabIndex:(unsigned int)index paragraphStyle:(id)style bodyWidth:(double)width;
- (unint64_t)countOfSectionTemplateDrawables;
- (void)addSectionTemplateDrawable:(id)drawable atIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c;
- (void)addSectionTemplateDrawables:(id)drawables atIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c;
- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)dealloc;
- (void)i_addSectionTemplateDrawable:(id)drawable;
- (void)i_copyHeadersAndFootersFrom:(id)from dolcContext:(id)context withBlock:(id)block;
- (void)i_createHeadersFooters:(int64_t)footers stylesheet:(id)stylesheet paragraphStyle:(id)style context:(id)context mayAlreadyExist:(BOOL)exist;
- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)stylesheet paragraphStyle:(id)style context:(id)context;
- (void)i_importHeaderFooter:(id)footer headerType:(int64_t)type dolcContext:(id)context splitHeaders:(BOOL)headers;
- (void)i_setHeaderFooter:(int64_t)footer storage:(id)storage fragmentIndex:(int64_t)index;
- (void)i_setPageTemplateUUIDPath:(id)path;
- (void)i_splitHeaderFooter:(id)footer storages:(id *)storages dolcContext:(id)context bodyWidth:(double)width;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)p_makeDrawablesPerformSelector:(SEL)selector documentRoot:(id)root;
- (void)p_makeDrawablesPerformSelector:(SEL)selector documentRoot:(id)root context:(id)context;
- (void)p_makeDrawablesPerformSelector:(SEL)selector withStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)p_makeHeadersFootersPerformSelector:(SEL)selector documentRoot:(id)root;
- (void)p_makeHeadersFootersPerformSelector:(SEL)selector documentRoot:(id)root context:(id)context;
- (void)p_makeHeadersFootersPerformSelector:(SEL)selector withStylesheet:(id)stylesheet withMapper:(id)mapper;
- (void)p_splitHeaderFooterByTabs:(id)tabs storages:(id *)storages dolcContext:(id)context bodyWidth:(double)width;
- (void)removeSectionTemplateDrawable:(id)drawable suppressDOLC:(BOOL)c;
- (void)saveToArchiver:(id)archiver;
- (void)setParentStorage:(id)storage;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TPSectionTemplatePage

- (TPSectionTemplatePage)initWithSection:(id)section
{
  sectionCopy = section;
  v14 = objc_msgSend_context(sectionCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  v17.receiver = self;
  v17.super_class = TPSectionTemplatePage;
  v15 = [(TPSectionTemplatePage *)&v17 initWithContext:v14];

  if (v15)
  {
    objc_storeWeak(&v15->_section, sectionCopy);
  }

  return v15;
}

+ (id)sectionTemplatePageForPageTemplate:(id)template withSection:(id)section
{
  templateCopy = template;
  sectionCopy = section;
  v7 = [TPSectionTemplatePage alloc];
  v16 = objc_msgSend_initWithSection_(v7, v8, v12, v13, v14, v15, sectionCopy, v9, v10, v11);
  v26 = objc_msgSend_objectUUIDPath(templateCopy, v17, v22, v23, v24, v25, v18, v19, v20, v21);
  objc_msgSend_i_setPageTemplateUUIDPath_(v16, v27, v31, v32, v33, v34, v26, v28, v29, v30);

  return v16;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v13 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, v9, v10, v11, v12, off_2812F85B8[20], v6, v7, v8);

  v57 = 0;
  v58 = 0;
  v59 = 0;
  v14 = *(v13 + 32);
  if (v14 == 3)
  {
    v15 = 8;
    while (1)
    {
      v16 = v59;
      if (!v59)
      {
        goto LABEL_8;
      }

      v17 = v58;
      v18 = *v59;
      if (v58 >= *v59)
      {
        break;
      }

      LODWORD(v58) = v58 + 1;
      v19 = *&v59[2 * v17 + 2];
LABEL_10:
      TSP::Reference::CopyFrom(v19, *(*(v13 + 40) + v15));
      v15 += 8;
      if (v15 == 32)
      {
        goto LABEL_11;
      }
    }

    if (v18 == HIDWORD(v58))
    {
LABEL_8:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v57);
      v16 = v59;
      v18 = *v59;
    }

    *v16 = v18 + 1;
    v19 = MEMORY[0x277C92D60](v57);
    v20 = &v59[2 * v58];
    LODWORD(v58) = v58 + 1;
    *(v20 + 1) = v19;
    goto LABEL_10;
  }

LABEL_11:
  v21 = *(v13 + 56);
  if (v21 == 3)
  {
    v22 = 8;
    while (1)
    {
      v23 = v59;
      if (!v59)
      {
        goto LABEL_18;
      }

      v24 = v58;
      v25 = *v59;
      if (v58 >= *v59)
      {
        break;
      }

      LODWORD(v58) = v58 + 1;
      v26 = *&v59[2 * v24 + 2];
LABEL_20:
      TSP::Reference::CopyFrom(v26, *(*(v13 + 64) + v22));
      v22 += 8;
      if (v22 == 32)
      {
        goto LABEL_21;
      }
    }

    if (v25 == HIDWORD(v58))
    {
LABEL_18:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v57);
      v23 = v59;
      v25 = *v59;
    }

    *v23 = v25 + 1;
    v26 = MEMORY[0x277C92D60](v57);
    v27 = &v59[2 * v58];
    LODWORD(v58) = v58 + 1;
    *(v27 + 1) = v26;
    goto LABEL_20;
  }

LABEL_21:
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_275FEB084;
  v54[3] = &unk_27A6A8740;
  v55 = v14;
  v56 = v21;
  v54[4] = self;
  v28 = unarchiverCopy;
  v29 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v28, v30, v31, v32, v33, v34, &v57, v29, 0, v54);

  if (*(v13 + 80) >= 1)
  {
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = sub_275FEB264;
    v53[3] = &unk_27A6A8508;
    v53[4] = self;
    v43 = v28;
    v44 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v43, v45, v46, v47, v48, v49, v13 + 72, v44, 0, v53);
  }

  if (*(v13 + 16))
  {
    v50 = objc_msgSend_readWeakObjectUUIDPathReferenceMessage_(v28, v35, v39, v40, v41, v42, *(v13 + 96), v36, v37, v38);
    pageTemplateUUIDPath = self->_pageTemplateUUIDPath;
    self->_pageTemplateUUIDPath = v50;
  }

  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = sub_275FEB278;
  v52[3] = &unk_27A6A8768;
  v52[4] = self;
  objc_msgSend_addFinalizeHandler_(v28, v35, v39, v40, v41, v42, v52, v36, v37, v38);
  sub_275FB56E8(&v57);
}

- (void)dealloc
{
  v10 = 0;
  headerFooters = self->_headerFooters;
  v12 = 1;
  do
  {
    v13 = 0;
    v14 = v12;
    v15 = headerFooters[v10];
    do
    {
      objc_msgSend_setOwningAttachment_(v15[v13], a2, v5, v6, v7, v8, 0, v2, v3, v4);
      objc_msgSend_setParentInfo_(v15[v13], v16, v20, v21, v22, v23, 0, v17, v18, v19);
      v24 = v15[v13];
      v15[v13] = 0;

      ++v13;
    }

    while (v13 != 3);
    v12 = 0;
    v10 = 1;
  }

  while ((v14 & 1) != 0);
  v25.receiver = self;
  v25.super_class = TPSectionTemplatePage;
  [(TPSectionTemplatePage *)&v25 dealloc];
}

- (void)saveToArchiver:(id)archiver
{
  v157 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v5, v8, v9, v10, v11, sub_275FEFF84, off_2812F85B8[20], v6, v7);

  v21 = 0;
  selfCopy = self;
  headerFooters = self->_headerFooters;
  do
  {
    v23 = (*headerFooters)[v21];
    if (!v23)
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "[TPSectionTemplatePage saveToArchiver:]", v14, v15, v16);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm", v27, v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v35, v36, v37, v38, v39, v25, v34, 306, 0, "invalid nil value for '%{public}s'", "_headerFooters[TSWPHeaderFooterTypeHeader][i]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v45, v46, v47, v48, v41, v42, v43, v44);
      v23 = (*headerFooters)[v21];
    }

    v49 = *(v12 + 40);
    if (!v49)
    {
      goto LABEL_9;
    }

    v50 = *(v12 + 32);
    v51 = *v49;
    if (v50 < *v49)
    {
      *(v12 + 32) = v50 + 1;
      objc_msgSend_setStrongReference_message_(archiverCopy, v13, v17, v18, v19, v20, v23, *&v49[2 * v50 + 2], v15, v16);
      goto LABEL_11;
    }

    if (v51 == *(v12 + 36))
    {
LABEL_9:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v12 + 24));
      v49 = *(v12 + 40);
      v51 = *v49;
    }

    *v49 = v51 + 1;
    v52 = MEMORY[0x277C92D60](*(v12 + 24));
    v53 = *(v12 + 32);
    v54 = *(v12 + 40) + 8 * v53;
    *(v12 + 32) = v53 + 1;
    *(v54 + 8) = v52;
    objc_msgSend_setStrongReference_message_(archiverCopy, v55, v58, v59, v60, v61, v23, v52, v56, v57);
LABEL_11:
    ++v21;
  }

  while (v21 != 3);
  v62 = 0;
  v63 = self->_headerFooters[1];
  do
  {
    v64 = v63[v62];
    if (!v64)
    {
      v65 = MEMORY[0x277D81150];
      v66 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v17, v18, v19, v20, "[TPSectionTemplatePage saveToArchiver:]", v14, v15, v16);
      v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v67, v71, v72, v73, v74, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm", v68, v69, v70);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v65, v76, v77, v78, v79, v80, v66, v75, 311, 0, "invalid nil value for '%{public}s'", "_headerFooters[TSWPHeaderFooterTypeFooter][i]");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v81, v86, v87, v88, v89, v82, v83, v84, v85);
      v64 = v63[v62];
    }

    v90 = *(v12 + 64);
    if (!v90)
    {
      goto LABEL_20;
    }

    v91 = *(v12 + 56);
    v92 = *v90;
    if (v91 < *v90)
    {
      *(v12 + 56) = v91 + 1;
      objc_msgSend_setStrongReference_message_(archiverCopy, v13, v17, v18, v19, v20, v64, *&v90[2 * v91 + 2], v15, v16);
      goto LABEL_22;
    }

    if (v92 == *(v12 + 60))
    {
LABEL_20:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v12 + 48));
      v90 = *(v12 + 64);
      v92 = *v90;
    }

    *v90 = v92 + 1;
    v93 = MEMORY[0x277C92D60](*(v12 + 48));
    v94 = *(v12 + 56);
    v95 = *(v12 + 64) + 8 * v94;
    *(v12 + 56) = v94 + 1;
    *(v95 + 8) = v93;
    objc_msgSend_setStrongReference_message_(archiverCopy, v96, v99, v100, v101, v102, v64, v93, v97, v98);
LABEL_22:
    ++v62;
  }

  while (v62 != 3);
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v103 = self->_sectionTemplateDrawables;
  v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v104, v106, v107, v108, v109, &v152, v156, 16, v105);
  if (!v113)
  {
    goto LABEL_37;
  }

  v118 = *v153;
  while (2)
  {
    v119 = 0;
    while (2)
    {
      if (*v153 != v118)
      {
        objc_enumerationMutation(v103);
      }

      v120 = *(*(&v152 + 1) + 8 * v119);
      v121 = *(v12 + 88);
      if (!v121)
      {
        goto LABEL_33;
      }

      v122 = *(v12 + 80);
      v123 = *v121;
      if (v122 < *v121)
      {
        *(v12 + 80) = v122 + 1;
        objc_msgSend_setStrongReference_message_(archiverCopy, v110, v114, v115, v116, v117, v120, *&v121[2 * v122 + 2], v111, v112);
        goto LABEL_35;
      }

      if (v123 == *(v12 + 84))
      {
LABEL_33:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v12 + 72));
        v121 = *(v12 + 88);
        v123 = *v121;
      }

      *v121 = v123 + 1;
      v124 = MEMORY[0x277C92D60](*(v12 + 72));
      v125 = *(v12 + 80);
      v126 = *(v12 + 88) + 8 * v125;
      *(v12 + 80) = v125 + 1;
      *(v126 + 8) = v124;
      objc_msgSend_setStrongReference_message_(archiverCopy, v127, v130, v131, v132, v133, v120, v124, v128, v129);
LABEL_35:
      if (v113 != ++v119)
      {
        continue;
      }

      break;
    }

    v113 = objc_msgSend_countByEnumeratingWithState_objects_count_(v103, v110, v114, v115, v116, v117, &v152, v156, 16, v112);
    if (v113)
    {
      continue;
    }

    break;
  }

LABEL_37:

  if (selfCopy->_pageTemplateUUIDPath)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v134, v137, v138, v139, v140, 4, v12, v135, v136);
    pageTemplateUUIDPath = selfCopy->_pageTemplateUUIDPath;
    *(v12 + 16) |= 1u;
    v149 = *(v12 + 96);
    if (!v149)
    {
      v150 = *(v12 + 8);
      if (v150)
      {
        v150 = *(v150 & 0xFFFFFFFFFFFFFFFELL);
      }

      v149 = MEMORY[0x277C92D50](v150);
      *(v12 + 96) = v149;
    }

    objc_msgSend_setWeakReferenceToObjectUUIDPath_message_(archiverCopy, v141, v144, v145, v146, v147, pageTemplateUUIDPath, v149, v142, v143);
  }
}

- (id)copyWithContext:(id)context
{
  v100 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  v5 = objc_alloc(objc_opt_class());
  v14 = objc_msgSend_initWithContext_(v5, v6, v10, v11, v12, v13, contextCopy, v7, v8, v9);
  v15 = 0;
  v16 = 1;
  do
  {
    v17 = 0;
    v18 = v16;
    do
    {
      v19 = selfCopy->_headerFooters[v15][v17];
      v29 = v19;
      if (v19)
      {
        v30 = objc_msgSend_length(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
        v36 = objc_msgSend_newSubstorageWithRange_context_flags_(v29, v31, v32, v33, v34, v35, 0, v30, contextCopy, 1);
        objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(v14, v37, v39, v40, v41, v42, v15, v36, v17, v38);
      }

      ++v17;
    }

    while (v17 != 3);
    v16 = 0;
    v15 = 1;
  }

  while ((v18 & 1) != 0);
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v43 = selfCopy->_sectionTemplateDrawables;
  v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, v46, v47, v48, v49, &v95, v99, 16, v45);
  if (v55)
  {
    v60 = *v96;
    do
    {
      for (i = 0; i != v55; ++i)
      {
        if (*v96 != v60)
        {
          objc_enumerationMutation(v43);
        }

        v66 = objc_msgSend_replicateForReinsertion(*(*(&v95 + 1) + 8 * i), v50, v56, v57, v58, v59, v51, v52, v53, v54);
        if (v66)
        {
          v71 = *(v14 + 128);
          if (!v71)
          {
            v72 = objc_alloc(MEMORY[0x277CBEB18]);
            v82 = objc_msgSend_count(selfCopy->_sectionTemplateDrawables, v73, v78, v79, v80, v81, v74, v75, v76, v77);
            v91 = objc_msgSend_initWithCapacity_(v72, v83, v87, v88, v89, v90, v82, v84, v85, v86);
            v92 = *(v14 + 128);
            *(v14 + 128) = v91;

            v71 = *(v14 + 128);
          }

          objc_msgSend_addObject_(v71, v62, v67, v68, v69, v70, v66, v63, v64, v65);
        }
      }

      v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v50, v56, v57, v58, v59, &v95, v99, 16, v54);
    }

    while (v55);
  }

  objc_storeStrong((v14 + 136), selfCopy->_pageTemplateUUIDPath);
  return v14;
}

- (BOOL)containsModelObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v9 = TSUClassAndProtocolCast();
  if (v9)
  {
    v14 = objc_msgSend_containsInfo_(self, v5, v10, v11, v12, v13, v9, v6, v7, v8, &unk_2885108A0);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)containsInfo:(id)info
{
  v11 = objc_msgSend_topLevelParentInfoForInfo_(self, a2, v6, v7, v8, v9, info, v3, v4, v5);
  objc_opt_class();
  v12 = TSUDynamicCast();
  if (objc_msgSend_wpKind(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17) == 1)
  {
    v30 = objc_msgSend_headerFooterTypeForStorage_(self, v22, v26, v27, v28, v29, v11, v23, v24, v25);

    if (v30 != -1)
    {
      v31 = 1;
      goto LABEL_8;
    }
  }

  else
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = objc_msgSend_containsObject_(self->_sectionTemplateDrawables, v32, v36, v37, v38, v39, v11, v33, v34, v35);
  }

  else
  {
    v31 = 0;
  }

LABEL_8:

  return v31;
}

- (unint64_t)countOfSectionTemplateDrawables
{
  result = self->_sectionTemplateDrawables;
  if (result)
  {
    return objc_msgSend_count(result, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  }

  return result;
}

- (id)sectionTemplateDrawablesSortedByZOrder:(id)order
{
  v82 = *MEMORY[0x277D85DE8];
  orderCopy = order;
  if (orderCopy)
  {
    v70 = orderCopy;
    if (objc_msgSend_count(orderCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9))
    {
      v78 = 0;
      v79 = 0;
      v80 = 0;
      v23 = objc_msgSend_count(v70, v14, v19, v20, v21, v22, v15, v16, v17, v18);
      sub_275FEC284(&v78, v23);
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      obj = v70;
      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v24, v26, v27, v28, v29, &v74, v81, 16, v25);
      if (v34)
      {
        v39 = *v75;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v75 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v74 + 1) + 8 * i);
            v42 = objc_msgSend_indexOfObjectIdenticalTo_(self->_sectionTemplateDrawables, v30, v35, v36, v37, v38, v41, v31, v32, v33);
            if (v42 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v44 = v78;
              v43 = v79;
              v45 = v41;
              if (v43 != v44)
              {
                v46 = (v43 - v44) >> 4;
                do
                {
                  v47 = v46 >> 1;
                  v48 = (v44 + 16 * (v46 >> 1));
                  if (*v48 < v42 || v42 >= *v48 && v48[1] < v45)
                  {
                    v44 = (v48 + 2);
                    v47 = v46 + ~v47;
                  }

                  v46 = v47;
                }

                while (v47);
                v43 = v44;
              }

              v72 = v42;
              v49 = v45;
              v73 = v49;
              sub_275FEC340(&v78, v43, &v72);
            }
          }

          v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, v35, v36, v37, v38, &v74, v81, 16, v33);
        }

        while (v34);
      }

      if (v78 == v79)
      {
        v62 = 0;
      }

      else
      {
        v62 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v50, v54, v55, v56, v57, (v79 - v78) >> 4, v51, v52, v53);
        v67 = v78;
        v68 = v79;
        while (v67 != v68)
        {
          objc_msgSend_addObject_(v62, v58, v63, v64, v65, v66, *(v67 + 8), v59, v60, v61);
          v67 += 16;
        }
      }

      v72 = &v78;
      sub_275FEFFF0(&v72);
    }

    else
    {
      v62 = 0;
    }

    orderCopy = v70;
  }

  else
  {
    v62 = 0;
  }

  return v62;
}

- (void)addSectionTemplateDrawable:(id)drawable atIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c
{
  drawableCopy = drawable;
  contextCopy = context;
  if (!drawableCopy)
  {
    goto LABEL_14;
  }

  objc_msgSend_willModify(self, v10, v16, v17, v18, v19, v11, v12, v13, v14);
  if (!self->_sectionTemplateDrawables)
  {
    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    sectionTemplateDrawables = self->_sectionTemplateDrawables;
    self->_sectionTemplateDrawables = v29;

    if (c)
    {
      goto LABEL_8;
    }

LABEL_6:
    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

    if (WeakRetained)
    {
      v32 = objc_loadWeakRetained(&self->_documentRoot);
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(drawableCopy, v33, v36, v37, v38, v39, v32, contextCopy, v34, v35);
    }

    goto LABEL_8;
  }

  if (!c)
  {
    goto LABEL_6;
  }

LABEL_8:
  v44 = objc_msgSend_count(self->_sectionTemplateDrawables, v20, v25, v26, v27, v28, v21, v22, v23, v24);
  v49 = self->_sectionTemplateDrawables;
  if (v44 <= index)
  {
    objc_msgSend_addObject_(v49, v40, v45, v46, v47, v48, drawableCopy, v41, v42, v43);
  }

  else
  {
    objc_msgSend_insertObject_atIndex_(v49, v40, v45, v46, v47, v48, drawableCopy, index, v42, v43);
  }

  if (!c)
  {
    v50 = objc_loadWeakRetained(&self->_documentRoot);

    if (v50)
    {
      v51 = objc_loadWeakRetained(&self->_documentRoot);
      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(drawableCopy, v52, v55, v56, v57, v58, v51, contextCopy, v53, v54);
    }
  }

LABEL_14:
}

- (void)addSectionTemplateDrawables:(id)drawables atIndex:(unint64_t)index insertContext:(id)context suppressDOLC:(BOOL)c
{
  cCopy = c;
  v43 = *MEMORY[0x277D85DE8];
  drawablesCopy = drawables;
  contextCopy = context;
  if (index == 0xFFFFFFFF)
  {
    sectionTemplateDrawables = self->_sectionTemplateDrawables;
    if (sectionTemplateDrawables)
    {
      index = objc_msgSend_count(sectionTemplateDrawables, v11, v17, v18, v19, v20, v12, v13, v14, v15);
    }

    else
    {
      index = 0;
    }
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v22 = drawablesCopy;
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, v25, v26, v27, v28, &v38, v42, 16, v24);
  if (v30)
  {
    v35 = *v39;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v39 != v35)
        {
          objc_enumerationMutation(v22);
        }

        objc_msgSend_addSectionTemplateDrawable_atIndex_insertContext_suppressDOLC_(self, v29, v31, v32, v33, v34, *(*(&v38 + 1) + 8 * i), index++, contextCopy, cCopy, v38);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v29, v31, v32, v33, v34, &v38, v42, 16, v37);
    }

    while (v30);
  }
}

- (void)removeSectionTemplateDrawable:(id)drawable suppressDOLC:(BOOL)c
{
  drawableCopy = drawable;
  if (drawableCopy)
  {
    objc_msgSend_willModify(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
    if (!c)
    {
      WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

      if (WeakRetained)
      {
        v24 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeRemovedFromDocumentRoot_(drawableCopy, v25, v29, v30, v31, v32, v24, v26, v27, v28);
      }
    }

    objc_msgSend_removeObjectIdenticalTo_(self->_sectionTemplateDrawables, v15, v19, v20, v21, v22, drawableCopy, v16, v17, v18);
    if (!c)
    {
      v42 = objc_loadWeakRetained(&self->_documentRoot);

      if (v42)
      {
        v43 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasRemovedFromDocumentRoot_(drawableCopy, v44, v48, v49, v50, v51, v43, v45, v46, v47);
      }
    }

    if (!objc_msgSend_count(self->_sectionTemplateDrawables, v33, v38, v39, v40, v41, v34, v35, v36, v37))
    {
      sectionTemplateDrawables = self->_sectionTemplateDrawables;
      self->_sectionTemplateDrawables = 0;
    }
  }
}

- (id)topLevelParentInfoForInfo:(id)info
{
  infoCopy = info;
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v15 = objc_msgSend_bodyStorage(WeakRetained, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  v16 = infoCopy;
  while (1)
  {
    v17 = v16;

    v32 = objc_msgSend_parentInfo(v17, v18, v23, v24, v25, v26, v19, v20, v21, v22);
    if (!v32)
    {
      break;
    }

    v37 = objc_msgSend_parentInfo(v17, v27, v33, v34, v35, v36, v28, v29, v30, v31);

    if (v37 == v15)
    {
      break;
    }

    v16 = objc_msgSend_parentInfo(v17, v38, v43, v44, v45, v46, v39, v40, v41, v42);
    WeakRetained = v17;
  }

  return v17;
}

- (double)pHeightOfHeaderFooter:(int64_t)footer
{
  v3 = 0;
  v4 = self->_headerFooters[footer];
  v5 = 0.0;
  do
  {
    v6 = v4[v3];
    if (v6)
    {
      v7 = objc_alloc(MEMORY[0x277D80F30]);
      v16 = objc_msgSend_initWithStorage_(v7, v8, v12, v13, v14, v15, v6, v9, v10, v11);
      objc_msgSend_measuredSizeWithFlags_(v16, v17, v21, v22, v23, v24, 15, v18, v19, v20);
      if (v25 > v5)
      {
        v5 = v25;
      }
    }

    ++v3;
  }

  while (v3 != 3);
  return v5;
}

- (TSKDocumentRoot)documentRoot
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);

  return WeakRetained;
}

- (double)bodyWidth
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  objc_msgSend_bodyWidth(WeakRetained, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v13 = v12;

  return v13;
}

- (BOOL)usesSingleHeaderFooter
{
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  v12 = objc_msgSend_usesSingleHeaderFooter(WeakRetained, v3, v8, v9, v10, v11, v4, v5, v6, v7);

  return v12;
}

- (id)headerFooter:(int64_t)footer fragmentAtIndex:(int64_t)index
{
  if (index >= 3)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPSectionTemplatePage headerFooter:fragmentAtIndex:]", index, v4, v5);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v19, v20, v21, v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm", v16, v17, v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v24, v25, v26, v27, v28, v14, v23, 543, 0, "bad header index");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v34, v35, v36, v37, v30, v31, v32, v33);
  }

  v38 = self->_headerFooters[footer][index];

  return v38;
}

- (int64_t)headerFooterTypeForStorage:(id)storage
{
  storageCopy = storage;
  v5 = self->_headerFooters[0][0];
  if (v5)
  {
    v6 = v5 == storageCopy;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || ((v7 = self->_headerFooters[0][1]) != 0 ? (v8 = v7 == storageCopy) : (v8 = 0), v8 || ((v9 = self->_headerFooters[0][2]) != 0 ? (v10 = v9 == storageCopy) : (v10 = 0), v10)))
  {
    v17 = 0;
  }

  else
  {
    v11 = self->_headerFooters[1][0];
    if (v11)
    {
      v12 = v11 == storageCopy;
    }

    else
    {
      v12 = 0;
    }

    if (v12 || ((v13 = self->_headerFooters[1][1]) != 0 ? (v14 = v13 == storageCopy) : (v14 = 0), v14 || ((v15 = self->_headerFooters[1][2]) != 0 ? (v16 = v15 == storageCopy) : (v16 = 0), v16)))
    {
      v17 = 1;
    }

    else
    {
      v17 = -1;
    }
  }

  return v17;
}

- (int64_t)headerFragmentIndexForStorage:(id)storage
{
  storageCopy = storage;
  v5 = self->_headerFooters[0][0];
  if (v5)
  {
    v6 = v5 == storageCopy;
  }

  else
  {
    v6 = 0;
  }

  if (v6 || ((v7 = self->_headerFooters[1][0]) != 0 ? (v8 = v7 == storageCopy) : (v8 = 0), v8))
  {
    v17 = 0;
  }

  else
  {
    v9 = self->_headerFooters[0][1];
    if (v9)
    {
      v10 = v9 == storageCopy;
    }

    else
    {
      v10 = 0;
    }

    if (v10 || ((v11 = self->_headerFooters[1][1]) != 0 ? (v12 = v11 == storageCopy) : (v12 = 0), v12))
    {
      v17 = 1;
    }

    else
    {
      v13 = self->_headerFooters[0][2];
      if (v13)
      {
        v14 = v13 == storageCopy;
      }

      else
      {
        v14 = 0;
      }

      if (v14 || ((v15 = self->_headerFooters[1][2]) != 0 ? (v16 = v15 == storageCopy) : (v16 = 0), v16))
      {
        v17 = 2;
      }

      else
      {
        v17 = -1;
      }
    }
  }

  return v17;
}

- (NSEnumerator)headerFooterFragmentEnumerator
{
  v3 = [TPHeaderFooterFragmentEnumerator alloc];
  v12 = objc_msgSend_initWithSectionTemplatePage_(v3, v4, v8, v9, v10, v11, self, v5, v6, v7);

  return v12;
}

- (void)setParentStorage:(id)storage
{
  v4 = 0;
  headerFooters = self->_headerFooters;
  v6 = 1;
  do
  {
    v7 = 0;
    v8 = v6;
    v9 = headerFooters[v4];
    do
    {
      v10 = v9[v7];
      objc_msgSend_setParentInfo_(v10, v11, v15, v16, v17, v18, storage, v12, v13, v14);

      ++v7;
    }

    while (v7 != 3);
    v6 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
}

- (void)adoptStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  objc_msgSend_p_makeHeadersFootersPerformSelector_withStylesheet_withMapper_(self, v7, v9, v10, v11, v12, sel_adoptStylesheet_withMapper_, stylesheetCopy, mapperCopy, v8);
  objc_msgSend_p_makeDrawablesPerformSelector_withStylesheet_withMapper_(self, v13, v15, v16, v17, v18, sel_adoptStylesheet_withMapper_, stylesheetCopy, mapperCopy, v14);
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  objc_opt_class();
  v7 = TSUDynamicCast();
  objc_msgSend_i_setDocumentRoot_(self, v8, v12, v13, v14, v15, v7, v9, v10, v11);

  objc_msgSend_p_makeHeadersFootersPerformSelector_documentRoot_context_(self, v16, v18, v19, v20, v21, sel_willBeAddedToDocumentRoot_dolcContext_, rootCopy, contextCopy, v17);
  objc_msgSend_p_makeDrawablesPerformSelector_documentRoot_context_(self, v22, v24, v25, v26, v27, sel_willBeAddedToDocumentRoot_dolcContext_, rootCopy, contextCopy, v23);
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v16 = objc_msgSend_context(rootCopy, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v17, v21, v22, v23, v24, v16, v18, v19, v20);

  if (self->_headerFooters[0][0])
  {
    objc_msgSend_p_makeHeadersFootersPerformSelector_documentRoot_context_(self, v25, v30, v31, v32, v33, sel_wasAddedToDocumentRoot_dolcContext_, rootCopy, contextCopy, v29);
  }

  else
  {
    objc_msgSend_willModify(self, v25, v30, v31, v32, v33, v26, v27, v28, v29);
    WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
    v50 = objc_msgSend_stylesheet(WeakRetained, v41, v46, v47, v48, v49, v42, v43, v44, v45);
    v51 = objc_loadWeakRetained(&self->_documentRoot);
    v61 = objc_msgSend_theme(v51, v52, v57, v58, v59, v60, v53, v54, v55, v56);
    v71 = objc_msgSend_headerAndFooterStyle(v61, v62, v67, v68, v69, v70, v63, v64, v65, v66);
    objc_msgSend_i_createHeadersFooters_stylesheet_paragraphStyle_context_mayAlreadyExist_(self, v72, v73, v74, v75, v76, 0, v50, v71, contextCopy, 0);

    v77 = objc_loadWeakRetained(&self->_documentRoot);
    v87 = objc_msgSend_stylesheet(v77, v78, v83, v84, v85, v86, v79, v80, v81, v82);
    v88 = objc_loadWeakRetained(&self->_documentRoot);
    v98 = objc_msgSend_theme(v88, v89, v94, v95, v96, v97, v90, v91, v92, v93);
    v108 = objc_msgSend_headerAndFooterStyle(v98, v99, v104, v105, v106, v107, v100, v101, v102, v103);
    objc_msgSend_i_createHeadersFooters_stylesheet_paragraphStyle_context_mayAlreadyExist_(self, v109, v110, v111, v112, v113, 1, v87, v108, contextCopy, 0);
  }

  objc_msgSend_p_makeDrawablesPerformSelector_documentRoot_context_(self, v34, v36, v37, v38, v39, sel_wasAddedToDocumentRoot_dolcContext_, rootCopy, contextCopy, v35);
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  objc_msgSend_p_makeHeadersFootersPerformSelector_documentRoot_(self, v4, v7, v8, v9, v10, sel_willBeRemovedFromDocumentRoot_, rootCopy, v5, v6);
  objc_msgSend_p_makeDrawablesPerformSelector_documentRoot_(self, v11, v14, v15, v16, v17, sel_willBeRemovedFromDocumentRoot_, rootCopy, v12, v13);
  v27 = objc_msgSend_context(rootCopy, v18, v23, v24, v25, v26, v19, v20, v21, v22);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v28, v32, v33, v34, v35, v27, v29, v30, v31);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  rootCopy = root;
  objc_msgSend_p_makeHeadersFootersPerformSelector_documentRoot_(self, v4, v7, v8, v9, v10, sel_wasRemovedFromDocumentRoot_, rootCopy, v5, v6);
  objc_msgSend_p_makeDrawablesPerformSelector_documentRoot_(self, v11, v14, v15, v16, v17, sel_wasRemovedFromDocumentRoot_, rootCopy, v12, v13);
  objc_msgSend_i_setDocumentRoot_(self, v18, v22, v23, v24, v25, 0, v19, v20, v21);
}

- (id)childEnumerator
{
  v10 = objc_msgSend_aggregateEnumeratorWithObjects_(MEMORY[0x277D81148], a2, v5, v6, v7, v8, 0, v2, v3, v4);
  v20 = objc_msgSend_p_headerAndFooterStorages(self, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v30 = objc_msgSend_objectEnumerator(v20, v21, v26, v27, v28, v29, v22, v23, v24, v25);

  if (v30)
  {
    objc_msgSend_addObject_(v10, v31, v35, v36, v37, v38, v30, v32, v33, v34);
  }

  v48 = objc_msgSend_sectionTemplateDrawables(self, v39, v44, v45, v46, v47, v40, v41, v42, v43);
  v58 = objc_msgSend_objectEnumerator(v48, v49, v54, v55, v56, v57, v50, v51, v52, v53);

  if (v58)
  {
    objc_msgSend_addObject_(v10, v59, v63, v64, v65, v66, v58, v60, v61, v62);
  }

  return v10;
}

- (id)objectUUIDPath
{
  WeakRetained = objc_loadWeakRetained(&self->_section);
  v13 = objc_msgSend_objectUUIDPath(WeakRetained, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  v23 = objc_msgSend_objectUUID(self, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  v32 = objc_msgSend_UUIDPathByAppendingUUID_(v13, v24, v28, v29, v30, v31, v23, v25, v26, v27);

  return v32;
}

- (void)i_setHeaderFooter:(int64_t)footer storage:(id)storage fragmentIndex:(int64_t)index
{
  storageCopy = storage;
  if (storageCopy)
  {
    while (1)
    {
      if ((index || footer) && self->_headerFooters[0][0] == storageCopy)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, v13, v14, v15, v16, "[TPSectionTemplatePage i_setHeaderFooter:storage:fragmentIndex:]", v9, v10, v11);
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm", v20, v21, v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v28, v29, v30, v31, v32, v18, v27, 676, 0, "Setting header/footer (type=%lu, index=%lu) to already known header/footer (type=%lu, index=%lu)", footer, index, 0, 0);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v38, v39, v40, v41, v34, v35, v36, v37);
      }

      operator++();
    }
  }

  v42 = self->_headerFooters[footer];
  v43 = v42[index];
  v42[index] = storageCopy;
}

- (void)i_addSectionTemplateDrawable:(id)drawable
{
  drawableCopy = drawable;
  sectionTemplateDrawables = self->_sectionTemplateDrawables;
  v15 = drawableCopy;
  if (!sectionTemplateDrawables)
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = self->_sectionTemplateDrawables;
    self->_sectionTemplateDrawables = v13;

    sectionTemplateDrawables = self->_sectionTemplateDrawables;
    drawableCopy = v15;
  }

  objc_msgSend_addObject_(sectionTemplateDrawables, drawableCopy, v8, v9, v10, v11, drawableCopy, v5, v6, v7);
}

- (void)i_ensureHeaderFooterStoragesExistWithStylesheet:(id)stylesheet paragraphStyle:(id)style context:(id)context
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  contextCopy = context;
  v15 = 0;
  v16 = 1;
  do
  {
    v17 = v16;
    v18 = self->_headerFooters[v15];
    if (!*v18 || !v18[1] || !v18[2])
    {
      objc_msgSend_i_createHeadersFooters_stylesheet_paragraphStyle_context_mayAlreadyExist_(self, v9, v11, v12, v13, v14, v15, stylesheetCopy, styleCopy, contextCopy, 1);
    }

    v16 = 0;
    v15 = 1;
  }

  while ((v17 & 1) != 0);
}

- (void)i_splitHeaderFooter:(id)footer storages:(id *)storages dolcContext:(id)context bodyWidth:(double)width
{
  footerCopy = footer;
  contextCopy = context;
  if (footerCopy && objc_msgSend_length(footerCopy, footerCopy, v16, v17, v18, v19, v11, v12, v13, v14))
  {
    v26 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(footerCopy, footerCopy, v22, v23, v24, v25, 0, 0, v20, v21);
    v35 = objc_msgSend_intValueForProperty_(v26, v27, v31, v32, v33, v34, 86, v28, v29, v30);
    if (v35 > 2)
    {
      if ((v35 - 3) > 1)
      {
        goto LABEL_12;
      }
    }

    else if (v35)
    {
      if (v35 == 1)
      {
        v42 = 2;
        goto LABEL_11;
      }

      if (v35 == 2)
      {
        v42 = 1;
LABEL_11:
        objc_storeStrong(&storages[v42], footer);
      }

LABEL_12:

      goto LABEL_13;
    }

    v38.n128_f64[0] = width;
    objc_msgSend_p_splitHeaderFooterByTabs_storages_dolcContext_bodyWidth_(self, v36, v38, v39, v40, v41, footerCopy, storages, contextCopy, v37);
    goto LABEL_12;
  }

LABEL_13:
}

- (void)i_importHeaderFooter:(id)footer headerType:(int64_t)type dolcContext:(id)context splitHeaders:(BOOL)headers
{
  headersCopy = headers;
  v112 = *MEMORY[0x277D85DE8];
  footerCopy = footer;
  contextCopy = context;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v107 = footerCopy;
  v108 = contextCopy;
  if (headersCopy)
  {
    v15.n128_u64[0] = 0x407D400000000000;
    objc_msgSend_i_splitHeaderFooter_storages_dolcContext_bodyWidth_(self, v12, v15, v16, v17, v18, footerCopy, &v109, contextCopy, v14, footerCopy);
  }

  else if (footerCopy)
  {
    v110 = footerCopy;
  }

  v19 = 0;
  v20 = (&self->super.super.isa + 3 * type);
  do
  {
    if (*(&v109 + v19))
    {
      WeakRetained = objc_loadWeakRetained(&self->_section);
      v31 = objc_msgSend_parentStorage(WeakRetained, v22, v27, v28, v29, v30, v23, v24, v25, v26);
      objc_msgSend_setParentInfo_(*(&v109 + v19), v32, v36, v37, v38, v39, v31, v33, v34, v35);

      v40 = v20[10];
      v41 = objc_loadWeakRetained(&self->_documentRoot);
      LOBYTE(v31) = v41 == 0;

      if (v31)
      {
        objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(self, v42, v44, v45, v46, v47, type, *(&v109 + v19), v19, v43);
      }

      else
      {
        v48 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeRemovedFromDocumentRoot_(v40, v49, v53, v54, v55, v56, v48, v50, v51, v52);

        v57 = *(&v109 + v19);
        v58 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v57, v59, v62, v63, v64, v65, v58, v108, v60, v61);

        objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(self, v66, v68, v69, v70, v71, type, *(&v109 + v19), v19, v67);
        v72 = v20[10];
        v73 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v72, v74, v77, v78, v79, v80, v73, v108, v75, v76);

        v81 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasRemovedFromDocumentRoot_(v40, v82, v86, v87, v88, v89, v81, v83, v84, v85);
      }
    }

    else
    {
      v40 = objc_msgSend_headerFooter_fragmentAtIndex_(self, v12, v15, v16, v17, v18, type, v19, v13, v14);
      v99 = objc_msgSend_range(v40, v90, v95, v96, v97, v98, v91, v92, v93, v94);
      objc_msgSend_deleteRange_undoTransaction_(v40, v100, v102, v103, v104, v105, v99, v100, 0, v101);
    }

    ++v19;
    ++v20;
  }

  while (v19 != 3);
  for (i = 16; i != -8; i -= 8)
  {
  }
}

- (void)i_copyHeadersAndFootersFrom:(id)from dolcContext:(id)context withBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  v15 = 0;
  v16 = 1;
  do
  {
    v17 = 0;
    v108 = v16;
    v18 = (&self->super.super.isa + 3 * v15);
    do
    {
      v19 = objc_msgSend_headerFooter_fragmentAtIndex_(from, v7, v11, v12, v13, v14, v15, v17, v8, v9);
      v29 = objc_msgSend_length(v19, v20, v25, v26, v27, v28, v21, v22, v23, v24);
      v39 = objc_msgSend_context(self, v30, v35, v36, v37, v38, v31, v32, v33, v34);
      v45 = objc_msgSend_newSubstorageWithRange_context_flags_(v19, v40, v41, v42, v43, v44, 0, v29, v39, 3);

      WeakRetained = objc_loadWeakRetained(&self->_section);
      v56 = objc_msgSend_parentStorage(WeakRetained, v47, v52, v53, v54, v55, v48, v49, v50, v51);
      objc_msgSend_setParentInfo_(v45, v57, v61, v62, v63, v64, v56, v58, v59, v60);

      v65 = v18[10];
      v66 = objc_loadWeakRetained(&self->_documentRoot);

      if (v66)
      {
        v73 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeRemovedFromDocumentRoot_(v65, v74, v78, v79, v80, v81, v73, v75, v76, v77);

        v82 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v45, v83, v86, v87, v88, v89, v82, contextCopy, v84, v85);
      }

      objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(self, v67, v69, v70, v71, v72, v15, v45, v17, v68);
      v90 = objc_loadWeakRetained(&self->_documentRoot);

      if (v90)
      {
        v91 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v45, v92, v95, v96, v97, v98, v91, contextCopy, v93, v94);

        v99 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasRemovedFromDocumentRoot_(v65, v100, v104, v105, v106, v107, v99, v101, v102, v103);
      }

      if (blockCopy)
      {
        blockCopy[2](blockCopy, v19, v45);
      }

      ++v17;
      ++v18;
    }

    while (v17 != 3);
    v16 = 0;
    v15 = 1;
  }

  while ((v108 & 1) != 0);
}

- (BOOL)p_isInDocument
{
  v10 = objc_msgSend_section(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_tsp_isInDocument(v10, v11, v16, v17, v18, v19, v12, v13, v14, v15);

  return v20;
}

- (id)p_headerAndFooterStorages
{
  v2 = 0;
  v3 = 0;
  v21 = *MEMORY[0x277D85DE8];
  memset(v20, 0, sizeof(v20));
  headerFooters = self->_headerFooters;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = headerFooters[v2];
    do
    {
      v9 = v8[v6];
      v10 = v9;
      if (v10)
      {
        objc_storeStrong(v20 + v3++, v9);
      }

      ++v6;
    }

    while (v6 != 3);
    v5 = 0;
    v2 = 1;
  }

  while ((v7 & 1) != 0);
  if (v3)
  {
    v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v14, v15, v16, v17, v20, v3, v12, v13);
  }

  for (i = 40; i != -8; i -= 8)
  {
  }

  return v3;
}

- (void)p_splitHeaderFooterByTabs:(id)tabs storages:(id *)storages dolcContext:(id)context bodyWidth:(double)width
{
  v179 = *MEMORY[0x277D85DE8];
  tabsCopy = tabs;
  contextCopy = context;
  if (tabsCopy)
  {
    context = objc_autoreleasePoolPush();
    v19 = objc_msgSend_string(tabsCopy, v10, v15, v16, v17, v18, v11, v12, v13, v14);
    v165 = objc_msgSend_paragraphStyleAtCharIndex_effectiveRange_(tabsCopy, v20, v23, v24, v25, v26, 0, 0, v21, v22);
    selfCopy = self;
    v170 = objc_msgSend_length(tabsCopy, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    v44 = 0;
    v45 = 0;
    v166 = 0;
    v168 = 0;
    v46 = 0;
    v47 = 1;
    v48 = xmmword_27605FD10;
    while (1)
    {
      if (v47)
      {
        v166 = 0;
        v45 = 0;
        v175 = v168;
        v48 = xmmword_27605FD10;
        v176 = xmmword_27605FD10;
        v177 = xmmword_27605FD10;
        v178 = 0;
      }

      if (v46 >= v170)
      {
        break;
      }

      v49 = objc_msgSend_characterAtIndex_(v19, v36, v48, v41, v42, v43, v46, v38, v39, v40);
      v47 = 0;
      v173 = v49;
      if (v49 > 9)
      {
        if (v49 == 10 || v49 == 8232)
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (!v49)
        {
          goto LABEL_15;
        }

        if (v49 == 9)
        {
          *(&v175 + 2 * v45 + 1) = v46 - *(&v175 + 2 * v45);
          v48.n128_f64[0] = width;
          v50 = objc_msgSend_p_headerFragmentIndexForTabIndex_paragraphStyle_bodyWidth_(selfCopy, v36, v48, v41, v42, v43, v166, v165, v39, v40);
          v51 = v50 - v45;
          if (v50 > v45)
          {
            v52 = &v177 + v45;
            do
            {
              *(v52 - 1) = v46;
              *v52++ = 0;
              --v51;
            }

            while (v51);
            v45 = v50;
          }

          v47 = 0;
          ++v166;
        }
      }

LABEL_33:
      if (++v46 > v170)
      {

        objc_autoreleasePoolPop(context);
        goto LABEL_38;
      }
    }

    v173 = 0;
LABEL_15:
    v53 = 0;
    v168 = v46 + 1;
    v169 = v45;
    *(&v175 + 2 * v45 + 1) = v46 - *(&v175 + 2 * v45);
    memset(v174, 0, sizeof(v174));
    v54 = &v176;
    v55 = &v176;
    do
    {
      v57 = *v55++;
      v56 = v57;
      if (v57)
      {
        v58 = *(v54 - 1);
        if (!v44)
        {
          v59 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v36, v48, v41, v42, v43, v37, v38, v39, v40);
          v44 = objc_msgSend_invertedSet(v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);
        }

        v69 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v19, v36, v48, v41, v42, v43, v44, 2, v58, v56);
        if (v69 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v70 = v36;
          v181.location = objc_msgSend_rangeOfCharacterFromSet_options_range_(v19, v36, v48, v41, v42, v43, v44, 4, v58, v56);
          v181.length = v71;
          v180.location = v69;
          v180.length = v70;
          v72 = NSUnionRange(v180, v181);
          v81 = objc_msgSend_context(selfCopy, v72.length, v77, v78, v79, v80, v73, v74, v75, v76);
          v87 = objc_msgSend_newSubstorageWithRange_context_flags_(tabsCopy, v82, v83, v84, v85, v86, v72.location, v72.length, v81, 1);

          v88 = v174[v53];
          v174[v53] = v87;
        }
      }

      ++v53;
      v54 = v55;
    }

    while (v53 != 3);
    v89 = [TPHeaderFragmentImportHelper alloc];
    v99 = objc_msgSend_context(selfCopy, v90, v95, v96, v97, v98, v91, v92, v93, v94);
    v109 = objc_msgSend_context(selfCopy, v100, v105, v106, v107, v108, v101, v102, v103, v104);
    v116 = objc_msgSend_initWithFragments_storageContext_objectsContext_(v89, v110, v112, v113, v114, v115, v174, v99, v109, v111);

    objc_msgSend_processFragmentsForSpaceFormatting(v116, v117, v122, v123, v124, v125, v118, v119, v120, v121);
    v126 = 0;
    storagesCopy = storages;
    do
    {
      v128 = v174[v126];
      v134 = v128;
      if (v173)
      {
        v139 = objc_msgSend_stringWithCharacters_length_(MEMORY[0x277CCACA8], v129, v135, v136, v137, v138, &v173, 1, v132, v133);
        v149 = objc_msgSend_length(v134, v140, v145, v146, v147, v148, v141, v142, v143, v144);
        objc_msgSend_insertString_atCharIndex_undoTransaction_(v134, v150, v152, v153, v154, v155, v139, v149, 0, v151);
      }

      v156 = *storagesCopy;
      if (*storagesCopy)
      {
        if (v174[v126])
        {
          v157 = objc_msgSend_length(*storagesCopy, v129, v135, v136, v137, v138, v130, v131, v132, v133);
          objc_msgSend_insertStorage_atCharIndex_dolcContext_undoTransaction_(v156, v158, v159, v160, v161, v162, v134, v157, contextCopy, 0);
        }
      }

      else
      {
        objc_storeStrong(storagesCopy, v128);
      }

      ++v126;
      ++storagesCopy;
    }

    while (v126 != 3);

    for (i = 2; i != -1; --i)
    {
    }

    v47 = 1;
    v45 = v169;
    goto LABEL_33;
  }

LABEL_38:
}

- (int64_t)p_headerFragmentIndexForTabIndex:(unsigned int)index paragraphStyle:(id)style bodyWidth:(double)width
{
  styleCopy = style;
  v16 = styleCopy;
  if (styleCopy)
  {
    objc_msgSend_floatValueForProperty_(styleCopy, v8, v12, v13, v14, v15, 83, v9, v10, v11);
    v18 = v17.n128_f32[0];
    v26 = objc_msgSend_valueForProperty_(v16, v19, v17, v23, v24, v25, 84, v20, v21, v22);
    v36 = objc_msgSend_count(v26, v27, v32, v33, v34, v35, v28, v29, v30, v31);
    v45 = index - v36;
    if (index >= v36)
    {
      if (v36)
      {
        v59 = objc_msgSend_tabAtIndex_(v26, v37, v41, v42, v43, v44, (v36 - 1), v38, v39, v40);
        objc_msgSend_position(v59, v60, v65, v66, v67, v68, v61, v62, v63, v64);
        v70 = v69;
      }

      else
      {
        v70 = 0.0;
      }

      v57 = (floor(v70 / v18) + 1.0) * v18 + v45 * v18;
    }

    else
    {
      v46 = objc_msgSend_tabAtIndex_(v26, v37, v41, v42, v43, v44, index, v38, v39, v40);
      objc_msgSend_position(v46, v47, v52, v53, v54, v55, v48, v49, v50, v51);
      v57 = v56;
    }

    v71 = width / 3.0;
    if (v57 <= width / 3.0)
    {
      v58 = 0;
    }

    else if (v57 < v71 + v71 && v71 < v57)
    {
      v58 = 1;
    }

    else
    {
      v58 = 2;
    }
  }

  else
  {
    v58 = 0;
  }

  return v58;
}

- (void)i_createHeadersFooters:(int64_t)footers stylesheet:(id)stylesheet paragraphStyle:(id)style context:(id)context mayAlreadyExist:(BOOL)exist
{
  stylesheetCopy = stylesheet;
  styleCopy = style;
  contextCopy = context;
  v22 = 0;
  v23 = self->_headerFooters[footers];
  do
  {
    if (!exist && v23[v22])
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, v18, v19, v20, v21, "[TPSectionTemplatePage i_createHeadersFooters:stylesheet:paragraphStyle:context:mayAlreadyExist:]", v14, v15, v16);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v30, v31, v32, v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm", v27, v28, v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v35, v36, v37, v38, v39, v25, v34, 982, 0, "overwriting non-nil header or footer");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v45, v46, v47, v48, v41, v42, v43, v44);
    }

    if (!v23[v22])
    {
      v49 = objc_alloc(MEMORY[0x277D80F28]);
      v59 = objc_msgSend_context(self, v50, v55, v56, v57, v58, v51, v52, v53, v54);
      v69 = objc_msgSend_initialListStyle(styleCopy, v60, v65, v66, v67, v68, v61, v62, v63, v64);
      v75 = objc_msgSend_initWithContext_string_kind_stylesheet_paragraphStyle_listStyle_section_columnStyle_(v49, v70, v71, v72, v73, v74, v59, 0, 1, stylesheetCopy, styleCopy, v69, 0, 0);

      WeakRetained = objc_loadWeakRetained(&self->_section);
      v86 = objc_msgSend_parentStorage(WeakRetained, v77, v82, v83, v84, v85, v78, v79, v80, v81);
      objc_msgSend_setParentInfo_(v75, v87, v91, v92, v93, v94, v86, v88, v89, v90);

      objc_msgSend_p_filterParagraphStylesOnHeaderFooterStorage_stylesheet_(self, v95, v98, v99, v100, v101, v75, stylesheetCopy, v96, v97);
      v102 = objc_loadWeakRetained(&self->_documentRoot);

      if (v102)
      {
        v109 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v75, v110, v113, v114, v115, v116, v109, contextCopy, v111, v112);

        v117 = objc_loadWeakRetained(&self->_documentRoot);
        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v75, v118, v121, v122, v123, v124, v117, contextCopy, v119, v120);
      }

      objc_msgSend_i_setHeaderFooter_storage_fragmentIndex_(self, v103, v105, v106, v107, v108, footers, v75, v22, v104);
    }

    ++v22;
  }

  while (v22 != 3);
}

- (void)p_makeHeadersFootersPerformSelector:(SEL)selector withStylesheet:(id)stylesheet withMapper:(id)mapper
{
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v15 = 0;
  headerFooters = self->_headerFooters;
  do
  {
    objc_msgSend_performSelector_withObject_withObject_((*headerFooters)[v15 + 3], v8, v11, v12, v13, v14, selector, stylesheetCopy, mapperCopy, v9);
    ++v15;
  }

  while (v15 != 3);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_performSelector_withObject_withObject_((*headerFooters)[i], v8, v11, v12, v13, v14, selector, stylesheetCopy, mapperCopy, v9);
  }
}

- (void)p_makeHeadersFootersPerformSelector:(SEL)selector documentRoot:(id)root context:(id)context
{
  rootCopy = root;
  contextCopy = context;
  v15 = 0;
  headerFooters = self->_headerFooters;
  do
  {
    objc_msgSend_performSelector_withObject_withObject_((*headerFooters)[v15 + 3], v8, v11, v12, v13, v14, selector, rootCopy, contextCopy, v9);
    ++v15;
  }

  while (v15 != 3);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_performSelector_withObject_withObject_((*headerFooters)[i], v8, v11, v12, v13, v14, selector, rootCopy, contextCopy, v9);
  }
}

- (void)p_makeHeadersFootersPerformSelector:(SEL)selector documentRoot:(id)root
{
  rootCopy = root;
  v13 = 0;
  headerFooters = self->_headerFooters;
  do
  {
    objc_msgSend_performSelector_withObject_((*headerFooters)[v13 + 3], v6, v9, v10, v11, v12, selector, rootCopy, v7, v8);
    ++v13;
  }

  while (v13 != 3);
  for (i = 0; i != 3; ++i)
  {
    objc_msgSend_performSelector_withObject_((*headerFooters)[i], v6, v9, v10, v11, v12, selector, rootCopy, v7, v8);
  }
}

- (void)p_makeDrawablesPerformSelector:(SEL)selector documentRoot:(id)root context:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_sectionTemplateDrawables;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v13, v14, v15, v16, &v26, v30, 16, v12);
  if (v19)
  {
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_performSelector_withObject_withObject_(*(*(&v26 + 1) + 8 * v25++), v17, v20, v21, v22, v23, selector, rootCopy, contextCopy, v18, v26);
      }

      while (v19 != v25);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, v20, v21, v22, v23, &v26, v30, 16, v18);
    }

    while (v19);
  }
}

- (void)p_makeDrawablesPerformSelector:(SEL)selector documentRoot:(id)root
{
  v29 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_sectionTemplateDrawables;
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v10, v11, v12, v13, &v24, v28, 16, v9);
  if (v17)
  {
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_performSelector_withObject_(*(*(&v24 + 1) + 8 * v23++), v14, v18, v19, v20, v21, selector, rootCopy, v15, v16, v24);
      }

      while (v17 != v23);
      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, v18, v19, v20, v21, &v24, v28, 16, v16);
    }

    while (v17);
  }
}

- (void)p_makeDrawablesPerformSelector:(SEL)selector withStylesheet:(id)stylesheet withMapper:(id)mapper
{
  v31 = *MEMORY[0x277D85DE8];
  stylesheetCopy = stylesheet;
  mapperCopy = mapper;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_sectionTemplateDrawables;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v13, v14, v15, v16, &v26, v30, 16, v12);
  if (v19)
  {
    v24 = *v27;
    do
    {
      v25 = 0;
      do
      {
        if (*v27 != v24)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_performSelector_withObject_withObject_(*(*(&v26 + 1) + 8 * v25++), v17, v20, v21, v22, v23, selector, stylesheetCopy, mapperCopy, v18, v26);
      }

      while (v19 != v25);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, v20, v21, v22, v23, &v26, v30, 16, v18);
    }

    while (v19);
  }
}

- (void)i_setPageTemplateUUIDPath:(id)path
{
  pathCopy = path;
  objc_msgSend_willModify(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  objc_storeStrong(&self->_pageTemplateUUIDPath, path);
  WeakRetained = objc_loadWeakRetained(&self->_documentRoot);
  if (WeakRetained)
  {
    pageTemplateUUIDPath = self->_pageTemplateUUIDPath;

    if (pageTemplateUUIDPath)
    {
      objc_opt_class();
      v25 = objc_msgSend_documentRoot(self, v16, v21, v22, v23, v24, v17, v18, v19, v20);
      v35 = objc_msgSend_context(v25, v26, v31, v32, v33, v34, v27, v28, v29, v30);
      v44 = objc_msgSend_objectWithUUIDPath_(v35, v36, v40, v41, v42, v43, self->_pageTemplateUUIDPath, v37, v38, v39);
      v45 = TSUDynamicCast();

      if (!v45)
      {
        v54 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, v50, v51, v52, v53, "[TPSectionTemplatePage i_setPageTemplateUUIDPath:]", v47, v48, v49);
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionTemplatePage.mm", v57, v58, v59);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v65, v66, v67, v68, v69, v55, v64, 1065, 0, "invalid nil value for '%{public}s'", "pageTemplate");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v75, v76, v77, v78, v71, v72, v73, v74);
      }
    }
  }
}

- (id)i_pageTemplate
{
  objc_opt_class();
  v12 = objc_msgSend_context(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v21 = objc_msgSend_objectWithUUIDPath_(v12, v13, v17, v18, v19, v20, self->_pageTemplateUUIDPath, v14, v15, v16);
  v22 = TSUDynamicCast();

  return v22;
}

- (NSString)description
{
  v3 = MEMORY[0x277D811A8];
  v4 = objc_opt_class();
  v12 = objc_msgSend_descriptionWithObject_class_(v3, v5, v8, v9, v10, v11, self, v4, v6, v7);
  v13 = TSUObjectReferenceDescription();
  v14 = TSUObjectReferenceDescription();
  v15 = TSUObjectReferenceDescription();
  objc_msgSend_addField_format_(v12, v16, v19, v20, v21, v22, @"header", @"[ %@ %@ %@ ]", v17, v18, v13, v14, v15);

  v23 = TSUObjectReferenceDescription();
  v24 = TSUObjectReferenceDescription();
  v25 = TSUObjectReferenceDescription();
  objc_msgSend_addField_format_(v12, v26, v29, v30, v31, v32, @"footer", @"[ %@ %@ %@ ]", v27, v28, v23, v24, v25);

  pageTemplateUUIDPath = self->_pageTemplateUUIDPath;
  if (pageTemplateUUIDPath)
  {
    v43 = objc_msgSend_UUIDPathString(pageTemplateUUIDPath, v33, v38, v39, v40, v41, v34, v35, v36, v37);
    objc_msgSend_addField_value_(v12, v44, v47, v48, v49, v50, @"pageTemplateUUIDPath", v43, v45, v46);
  }

  v51 = objc_msgSend_descriptionString(v12, v33, v38, v39, v40, v41, v34, v35, v36, v37);

  return v51;
}

- (TPSection)section
{
  WeakRetained = objc_loadWeakRetained(&self->_section);

  return WeakRetained;
}

@end