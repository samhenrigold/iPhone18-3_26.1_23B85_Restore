@interface TPPageTemplate
+ (BOOL)isUserDefinedTag:(id)tag;
- (BOOL)containsModelObject:(id)object;
- (BOOL)isUniqueTag:(id)tag;
- (NSArray)childInfos;
- (NSString)description;
- (TPPageTemplate)initWithContext:(id)context name:(id)name placeholderDrawables:(id)drawables placeholderTagsInZOrder:(id)order sectionTemplateDrawables:(id)templateDrawables;
- (id)boxedObjectForProperty:(int)property;
- (id)childEnumerator;
- (id)objectForProperty:(int)property;
- (id)tagForDrawable:(id)drawable;
- (id)topLevelParentInfoForInfo:(id)info;
- (id)userDefinedTagForDrawable:(id)drawable;
- (int)intValueForProperty:(int)property;
- (unint64_t)numberOfDerivedPagesInDocument;
- (unint64_t)templateIndex;
- (unint64_t)templatePreviewPageIndex;
- (void)addPlaceholderDrawable:(id)drawable afterDrawable:(id)afterDrawable;
- (void)applyTag:(id)tag toPlaceholder:(id)placeholder;
- (void)enumeratePlaceholderDrawablesWithBlock:(id)block;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setBackgroundFill:(id)fill;
- (void)setGeometry:(id)geometry;
- (void)setName:(id)name;
- (void)setParentInfo:(id)info;
- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)wasRemovedFromDocumentRoot:(id)root;
- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context;
- (void)willBeRemovedFromDocumentRoot:(id)root;
@end

@implementation TPPageTemplate

- (TPPageTemplate)initWithContext:(id)context name:(id)name placeholderDrawables:(id)drawables placeholderTagsInZOrder:(id)order sectionTemplateDrawables:(id)templateDrawables
{
  contextCopy = context;
  nameCopy = name;
  drawablesCopy = drawables;
  orderCopy = order;
  v177 = contextCopy;
  templateDrawablesCopy = templateDrawables;
  v180.receiver = self;
  v180.super_class = TPPageTemplate;
  v19 = [(TPPageTemplate *)&v180 initWithContext:contextCopy];
  if (v19)
  {
    if (templateDrawablesCopy)
    {
      objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v15, v20, v21, v22, v23, templateDrawablesCopy, v16, v17, v18);
    }

    else
    {
      objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v15, v20, v21, v22, v23, MEMORY[0x277CBEBF8], v16, v17, v18);
    }
    v24 = ;
    sectionTemplateDrawables = v19->_sectionTemplateDrawables;
    v19->_sectionTemplateDrawables = v24;

    v34 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x277CBEB38], v26, v30, v31, v32, v33, drawablesCopy, v27, v28, v29);
    placeholderDrawables = v19->_placeholderDrawables;
    v19->_placeholderDrawables = v34;

    v36 = [TPDrawablesZOrder alloc];
    v45 = objc_msgSend_initWithContext_(v36, v37, v41, v42, v43, v44, contextCopy, v38, v39, v40);
    drawablesZOrder = v19->_drawablesZOrder;
    v19->_drawablesZOrder = v45;

    objc_storeStrong(&v19->_name, name);
    v56 = 0;
    v19->_headersFootersMatchPreviousPage = 1;
    v19->_hideHeadersFooters = 0;
    v57 = 0x277D81000uLL;
    v179 = drawablesCopy;
    while (v56 < objc_msgSend_count(orderCopy, v47, v52, v53, v54, v55, v48, v49, v50, v51))
    {
      v67 = objc_msgSend_objectAtIndexedSubscript_(orderCopy, v58, v63, v64, v65, v66, v56, v60, v61, v62);
      v80 = objc_msgSend_objectForKeyedSubscript_(drawablesCopy, v68, v72, v73, v74, v75, v67, v69, v70, v71);
      if (v80)
      {
        objc_msgSend_insertDrawable_atZOrder_(v19->_drawablesZOrder, v76, v81, v82, v83, v84, v80, v56, v78, v79);
      }

      else
      {
        v85 = *(v57 + 336);
        v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v76, v81, v82, v83, v84, "[TPPageTemplate initWithContext:name:placeholderDrawables:placeholderTagsInZOrder:sectionTemplateDrawables:]", v77, v78, v79);
        v87 = v57;
        v96 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v88, v92, v93, v94, v95, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm", v89, v90, v91);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v85, v97, v98, v99, v100, v101, v86, v96, 106, 0, "invalid nil value for '%{public}s'", "drawable");

        v57 = v87;
        v102 = *(v87 + 336);
        drawablesCopy = v179;
        objc_msgSend_logBacktraceThrottled(v102, v103, v108, v109, v110, v111, v104, v105, v106, v107);
      }

      ++v56;
    }

    v112 = objc_msgSend_drawableCount(v19->_drawablesZOrder, v58, v63, v64, v65, v66, v59, v60, v61, v62);
    if (v112 != objc_msgSend_count(v19->_placeholderDrawables, v113, v118, v119, v120, v121, v114, v115, v116, v117))
    {
      v130 = *(v57 + 336);
      v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v122, v126, v127, v128, v129, "[TPPageTemplate initWithContext:name:placeholderDrawables:placeholderTagsInZOrder:sectionTemplateDrawables:]", v123, v124, v125);
      v140 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v132, v136, v137, v138, v139, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm", v133, v134, v135);
      v150 = objc_msgSend_count(v19->_placeholderDrawables, v141, v146, v147, v148, v149, v142, v143, v144, v145);
      v160 = objc_msgSend_drawableCount(v19->_drawablesZOrder, v151, v156, v157, v158, v159, v152, v153, v154, v155);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v130, v161, v162, v163, v164, v165, v131, v140, 111, 0, "The count of placeholders (%lu) doesn't match the count of z-orders (%lu)", v150, v160);

      objc_msgSend_logBacktraceThrottled(*(v57 + 336), v166, v171, v172, v173, v174, v167, v168, v169, v170);
    }
  }

  return v19;
}

- (void)setBackgroundFill:(id)fill
{
  fillCopy = fill;
  if (self->_backgroundFill != fillCopy)
  {
    objc_msgSend_willModify(self, v4, v9, v10, v11, v12, v5, v6, v7, v8);
    v22 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v18, v19, v20, v21, v14, v15, v16, v17);

    if (v22 == fillCopy)
    {
      v23 = 0;
    }

    else
    {
      v23 = fillCopy;
    }

    backgroundFill = self->_backgroundFill;
    self->_backgroundFill = v23;
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  objc_msgSend_willModify(self, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  name = self->_name;
  self->_name = nameCopy;
}

- (BOOL)isUniqueTag:(id)tag
{
  v10 = objc_msgSend_objectForKey_(self->_placeholderDrawables, a2, v6, v7, v8, v9, tag, v3, v4, v5);
  v11 = v10 == 0;

  return v11;
}

- (id)userDefinedTagForDrawable:(id)drawable
{
  v10 = objc_msgSend_tagForDrawable_(self, a2, v6, v7, v8, v9, drawable, v3, v4, v5);
  v11 = objc_opt_class();
  if (objc_msgSend_isUserDefinedTag_(v11, v12, v16, v17, v18, v19, v10, v13, v14, v15))
  {
    v20 = v10;
  }

  else
  {
    v20 = &stru_288501738;
  }

  v21 = v20;

  return v20;
}

- (id)tagForDrawable:(id)drawable
{
  drawableCopy = drawable;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_275FF1A38;
  v24 = sub_275FF1A48;
  v25 = 0;
  placeholderDrawables = self->_placeholderDrawables;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_275FF1A50;
  v17[3] = &unk_27A6A89C8;
  v18 = drawableCopy;
  v19 = &v20;
  v6 = drawableCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(placeholderDrawables, v7, v11, v12, v13, v14, v17, v8, v9, v10);
  v15 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v15;
}

- (void)enumeratePlaceholderDrawablesWithBlock:(id)block
{
  blockCopy = block;
  placeholderDrawables = self->_placeholderDrawables;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_275FF1B88;
  v15[3] = &unk_27A6A89F0;
  v15[4] = self;
  v16 = blockCopy;
  v6 = blockCopy;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(placeholderDrawables, v7, v11, v12, v13, v14, v15, v8, v9, v10);
}

- (void)applyTag:(id)tag toPlaceholder:(id)placeholder
{
  tagCopy = tag;
  placeholderCopy = placeholder;
  objc_msgSend_willModify(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v28 = objc_msgSend_tagForDrawable_(self, v16, v20, v21, v22, v23, placeholderCopy, v17, v18, v19);
  if (v28)
  {
    objc_msgSend_removeObjectForKey_(self->_placeholderDrawables, v24, v29, v30, v31, v32, v28, v25, v26, v27);
  }

  objc_msgSend_setObject_forKey_(self->_placeholderDrawables, v24, v29, v30, v31, v32, placeholderCopy, tagCopy, v26, v27);
}

- (unint64_t)templateIndex
{
  objc_opt_class();
  v12 = objc_msgSend_context(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v22 = objc_msgSend_documentRoot(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = TSUDynamicCast();

  if (v23)
  {
    v33 = objc_msgSend_pageTemplates(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);
    v42 = objc_msgSend_indexOfObject_(v33, v34, v38, v39, v40, v41, self, v35, v36, v37);
  }

  else
  {
    v42 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v42;
}

- (unint64_t)templatePreviewPageIndex
{
  if (objc_msgSend_templateIndex(self, a2, v6, v7, v8, v9, v2, v3, v4, v5) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return MEMORY[0x2821F9670](TPPageInfo, sel_pageIndexFromPageTemplateIndex_, v10, v11, v12, v13);
}

- (unint64_t)numberOfDerivedPagesInDocument
{
  v60 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v12 = objc_msgSend_context(self, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  v22 = objc_msgSend_documentRoot(v12, v13, v18, v19, v20, v21, v14, v15, v16, v17);
  v23 = TSUDynamicCast();

  if (v23)
  {
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v32 = objc_msgSend_sections(v23, v24, 0, v29, v30, v31, v25, v26, v27, v28, 0);
    v39 = 0;
    v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, v35, v36, v37, v38, &v55, v59, 16, v34);
    if (v45)
    {
      v50 = *v56;
      do
      {
        v51 = 0;
        do
        {
          if (*v56 != v50)
          {
            objc_enumerationMutation(v32);
          }

          v52 = objc_msgSend_pageTemplate(*(*(&v55 + 1) + 8 * v51), v40, v46, v47, v48, v49, v41, v42, v43, v44);
          v53 = v52 == self;

          v39 += v53;
          ++v51;
        }

        while (v45 != v51);
        v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v40, v46, v47, v48, v49, &v55, v59, 16, v44);
      }

      while (v45);
    }
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (void)addPlaceholderDrawable:(id)drawable afterDrawable:(id)afterDrawable
{
  drawableCopy = drawable;
  afterDrawableCopy = afterDrawable;
  objc_msgSend_setParentInfo_(drawableCopy, v7, v11, v12, v13, v14, self, v8, v9, v10);
  v24 = objc_msgSend_objectUUID(drawableCopy, v15, v20, v21, v22, v23, v16, v17, v18, v19);
  v34 = objc_msgSend_UUIDString(v24, v25, v30, v31, v32, v33, v26, v27, v28, v29);

  v43 = objc_msgSend_objectForKey_(self->_placeholderDrawables, v35, v39, v40, v41, v42, v34, v36, v37, v38);

  if (v43)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, v48, v49, v50, v51, "[TPPageTemplate addPlaceholderDrawable:afterDrawable:]", v45, v46, v47);
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, v58, v59, v60, v61, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm", v55, v56, v57);
    v72 = objc_msgSend_name(self, v63, v68, v69, v70, v71, v64, v65, v66, v67);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v73, v74, v75, v76, v77, v53, v62, 227, 0, "Adding a placeholder drawable into a page template when that placeholder is already in the page template. Page Template: %@, Drawable Tag: %@", v72, v34);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v78, v83, v84, v85, v86, v79, v80, v81, v82);
  }

  objc_msgSend_setObject_forKey_(self->_placeholderDrawables, v44, v48, v49, v50, v51, drawableCopy, v34, v46, v47);
  if (afterDrawableCopy)
  {
    v95 = objc_msgSend_zOrderOfDrawable_(self->_drawablesZOrder, v87, v91, v92, v93, v94, afterDrawableCopy, v88, v89, v90);
    if (v95 == 0x7FFFFFFFFFFFFFFFLL)
    {
      objc_msgSend_insertDrawable_atZOrder_(self->_drawablesZOrder, v96, v99, v100, v101, v102, drawableCopy, 0x7FFFFFFFFFFFFFFFLL, v97, v98);
    }

    else
    {
      objc_msgSend_insertDrawable_atZOrder_(self->_drawablesZOrder, v96, v99, v100, v101, v102, drawableCopy, v95 + 1, v97, v98);
    }
  }

  else
  {
    objc_msgSend_insertDrawable_atZOrder_(self->_drawablesZOrder, v87, v91, v92, v93, v94, drawableCopy, 0, v89, v90);
  }
}

- (id)childEnumerator
{
  v11 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v21 = objc_msgSend_allValues(self->_placeholderDrawables, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  objc_msgSend_addObjectsFromArray_(v11, v22, v26, v27, v28, v29, v21, v23, v24, v25);

  objc_msgSend_addObjectsFromArray_(v11, v30, v34, v35, v36, v37, self->_sectionTemplateDrawables, v31, v32, v33);
  v47 = objc_msgSend_objectEnumerator(v11, v38, v43, v44, v45, v46, v39, v40, v41, v42);

  return v47;
}

- (void)willBeAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v69 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v16 = objc_msgSend_allValues(self->_placeholderDrawables, v8, 0, v13, v14, v15, v9, v10, v11, v12);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, v19, v20, v21, v22, &v63, v68, 16, v18);
  if (v27)
  {
    v32 = *v64;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v64 != v32)
        {
          objc_enumerationMutation(v16);
        }

        v34 = *(*(&v63 + 1) + 8 * i);
        objc_msgSend_setParentInfo_(v34, v23, v28, v29, v30, v31, self, v24, v25, v26);
        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v34, v35, v38, v39, v40, v41, rootCopy, contextCopy, v36, v37);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v23, v28, v29, v30, v31, &v63, v68, 16, v26);
    }

    while (v27);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v42 = self->_sectionTemplateDrawables;
  v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v43, v45, v46, v47, v48, &v59, v67, 16, v44);
  if (v52)
  {
    v57 = *v60;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v60 != v57)
        {
          objc_enumerationMutation(v42);
        }

        objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(*(*(&v59 + 1) + 8 * j), v49, v53, v54, v55, v56, rootCopy, contextCopy, v50, v51, v59);
      }

      v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v42, v49, v53, v54, v55, v56, &v59, v67, 16, v51);
    }

    while (v52);
  }
}

- (void)wasAddedToDocumentRoot:(id)root dolcContext:(id)context
{
  v78 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  contextCopy = context;
  v17 = objc_msgSend_context(rootCopy, v8, v13, v14, v15, v16, v9, v10, v11, v12);
  objc_msgSend_wasAddedToDocumentWithContext_(self, v18, v22, v23, v24, v25, v17, v19, v20, v21);

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v34 = objc_msgSend_allValues(self->_placeholderDrawables, v26, 0, v31, v32, v33, v27, v28, v29, v30);
  v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, v37, v38, v39, v40, &v72, v77, 16, v36);
  if (v44)
  {
    v49 = *v73;
    do
    {
      v50 = 0;
      do
      {
        if (*v73 != v49)
        {
          objc_enumerationMutation(v34);
        }

        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v72 + 1) + 8 * v50++), v41, v45, v46, v47, v48, rootCopy, contextCopy, v42, v43);
      }

      while (v44 != v50);
      v44 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v41, v45, v46, v47, v48, &v72, v77, 16, v43);
    }

    while (v44);
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v51 = self->_sectionTemplateDrawables;
  v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v52, v54, v55, v56, v57, &v68, v76, 16, v53);
  if (v61)
  {
    v66 = *v69;
    do
    {
      v67 = 0;
      do
      {
        if (*v69 != v66)
        {
          objc_enumerationMutation(v51);
        }

        objc_msgSend_wasAddedToDocumentRoot_dolcContext_(*(*(&v68 + 1) + 8 * v67++), v58, v62, v63, v64, v65, rootCopy, contextCopy, v59, v60, v68);
      }

      while (v61 != v67);
      v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(v51, v58, v62, v63, v64, v65, &v68, v76, 16, v60);
    }

    while (v61);
  }
}

- (void)willBeRemovedFromDocumentRoot:(id)root
{
  v77 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v13 = objc_msgSend_allValues(self->_placeholderDrawables, v5, 0, v10, v11, v12, v6, v7, v8, v9);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v71, v76, 16, v15);
  if (v24)
  {
    v29 = *v72;
    do
    {
      v30 = 0;
      do
      {
        if (*v72 != v29)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v71 + 1) + 8 * v30++), v20, v25, v26, v27, v28, rootCopy, v21, v22, v23);
      }

      while (v24 != v30);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v25, v26, v27, v28, &v71, v76, 16, v23);
    }

    while (v24);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v31 = self->_sectionTemplateDrawables;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, v34, v35, v36, v37, &v67, v75, 16, v33);
  if (v42)
  {
    v47 = *v68;
    do
    {
      v48 = 0;
      do
      {
        if (*v68 != v47)
        {
          objc_enumerationMutation(v31);
        }

        objc_msgSend_willBeRemovedFromDocumentRoot_(*(*(&v67 + 1) + 8 * v48++), v38, v43, v44, v45, v46, rootCopy, v39, v40, v41, v67);
      }

      while (v42 != v48);
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v38, v43, v44, v45, v46, &v67, v75, 16, v41);
    }

    while (v42);
  }

  v58 = objc_msgSend_context(rootCopy, v49, v54, v55, v56, v57, v50, v51, v52, v53);
  objc_msgSend_willBeRemovedFromDocumentWithContext_(self, v59, v63, v64, v65, v66, v58, v60, v61, v62);
}

- (void)wasRemovedFromDocumentRoot:(id)root
{
  v59 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = objc_msgSend_allValues(self->_placeholderDrawables, v5, 0, v10, v11, v12, v6, v7, v8, v9);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v53, v58, 16, v15);
  if (v24)
  {
    v29 = *v54;
    do
    {
      v30 = 0;
      do
      {
        if (*v54 != v29)
        {
          objc_enumerationMutation(v13);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v53 + 1) + 8 * v30++), v20, v25, v26, v27, v28, rootCopy, v21, v22, v23);
      }

      while (v24 != v30);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v25, v26, v27, v28, &v53, v58, 16, v23);
    }

    while (v24);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v31 = self->_sectionTemplateDrawables;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, v34, v35, v36, v37, &v49, v57, 16, v33);
  if (v42)
  {
    v47 = *v50;
    do
    {
      v48 = 0;
      do
      {
        if (*v50 != v47)
        {
          objc_enumerationMutation(v31);
        }

        objc_msgSend_wasRemovedFromDocumentRoot_(*(*(&v49 + 1) + 8 * v48++), v38, v43, v44, v45, v46, rootCopy, v39, v40, v41, v49);
      }

      while (v42 != v48);
      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v38, v43, v44, v45, v46, &v49, v57, 16, v41);
    }

    while (v42);
  }
}

- (void)saveToArchiver:(id)archiver
{
  v185 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v176 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v3, v6, v7, v8, v9, sub_275FF4608, off_2812F85B8[24], v4, v5);

  v19 = objc_msgSend_UTF8String(self->_name, v10, v15, v16, v17, v18, v11, v12, v13, v14);
  *(v176 + 16) |= 1u;
  sub_275FBA9EC(__p, v19);
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v183 < 0)
  {
    operator delete(__p[0]);
  }

  v27 = v176;
  headersFootersMatchPreviousPage = self->_headersFootersMatchPreviousPage;
  v29 = *(v176 + 16) | 8;
  *(v176 + 16) = v29;
  *(v176 + 96) = headersFootersMatchPreviousPage;
  if (self->_backgroundFill)
  {
    objc_msgSend_setIgnoreAndPreserveRuleForField_message_(archiverCopy, v20, v23, v24, v25, v26, 6, v176, v21, v22);
    backgroundFill = self->_backgroundFill;
    *(v176 + 16) |= 2u;
    v38 = *(v176 + 80);
    if (!v38)
    {
      v39 = *(v176 + 8);
      if (v39)
      {
        v39 = *(v39 & 0xFFFFFFFFFFFFFFFELL);
      }

      v38 = MEMORY[0x277C92CE0](v39);
      *(v176 + 80) = v38;
    }

    objc_msgSend_saveToArchive_archiver_(backgroundFill, v30, v33, v34, v35, v36, v38, archiverCopy, v31, v32);
    v27 = v176;
    v29 = *(v176 + 16);
  }

  hideHeadersFooters = self->_hideHeadersFooters;
  *(v27 + 16) = v29 | 0x10;
  *(v27 + 97) = hideHeadersFooters;
  objc_msgSend_setStrongReferenceArray_message_(archiverCopy, v20, v23, v24, v25, v26, self->_sectionTemplateDrawables, v27 + 24, v21, v22);
  v50 = objc_msgSend_allKeys(self->_placeholderDrawables, v41, v46, v47, v48, v49, v42, v43, v44, v45);
  v59 = objc_msgSend_sortedArrayUsingComparator_(v50, v51, v55, v56, v57, v58, &unk_2885011F8, v52, v53, v54);

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  obj = v59;
  v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, v62, v63, v64, v65, &v178, v184, 16, v61);
  if (v66)
  {
    v173 = *v179;
    do
    {
      v175 = v66;
      for (i = 0; i != v175; ++i)
      {
        if (*v179 != v173)
        {
          objc_enumerationMutation(obj);
        }

        v76 = *(*(&v178 + 1) + 8 * i);
        v77 = objc_msgSend_objectForKeyedSubscript_(self->_placeholderDrawables, v67, v71, v72, v73, v74, v76, v68, v69, v70);
        v78 = v176;
        v79 = *(v176 + 64);
        if (!v79)
        {
          goto LABEL_19;
        }

        v80 = *(v176 + 56);
        v81 = *v79;
        if (v80 < *v79)
        {
          *(v176 + 56) = v80 + 1;
          v82 = *&v79[2 * v80 + 2];
          goto LABEL_21;
        }

        if (v81 == *(v176 + 60))
        {
LABEL_19:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v176 + 48));
          v78 = v176;
          v79 = *(v176 + 64);
          v81 = *v79;
        }

        *v79 = v81 + 1;
        v82 = sub_275FAF3BC(*(v78 + 48));
        v83 = *(v176 + 56);
        v84 = *(v176 + 64) + 8 * v83;
        *(v176 + 56) = v83 + 1;
        *(v84 + 8) = v82;
LABEL_21:
        v85 = v76;
        v95 = objc_msgSend_UTF8String(v76, v86, v91, v92, v93, v94, v87, v88, v89, v90);
        *(v82 + 16) |= 1u;
        sub_275FBA9EC(__p, v95);
        google::protobuf::internal::ArenaStringPtr::Set();
        if (v183 < 0)
        {
          operator delete(__p[0]);
        }

        v104 = objc_msgSend_zOrderOfDrawable_(self->_drawablesZOrder, v96, v100, v101, v102, v103, v77, v97, v98, v99);
        v113 = v104;
        if (v104 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v114 = MEMORY[0x277D81150];
          v115 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v105, v109, v110, v111, v112, "[TPPageTemplate saveToArchiver:]", v106, v107, v108);
          v124 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v116, v120, v121, v122, v123, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm", v117, v118, v119);
          v134 = objc_msgSend_objectUUID(v77, v125, v130, v131, v132, v133, v126, v127, v128, v129);
          v144 = objc_msgSend_UUIDString(v134, v135, v140, v141, v142, v143, v136, v137, v138, v139);
          v154 = objc_msgSend_name(self, v145, v150, v151, v152, v153, v146, v147, v148, v149);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v114, v155, v156, v157, v158, v159, v115, v124, 335, 0, "Drawable %@ is not in _drawablesZOrder in page template %@.", v144, v154);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v160, v165, v166, v167, v168, v161, v162, v163, v164);
        }

        v169 = *(v82 + 16);
        *(v82 + 40) = v113;
        *(v82 + 16) = v169 | 6;
        v170 = *(v82 + 32);
        if (!v170)
        {
          v171 = *(v82 + 8);
          if (v171)
          {
            v171 = *(v171 & 0xFFFFFFFFFFFFFFFELL);
          }

          v170 = MEMORY[0x277C92D60](v171);
          *(v82 + 32) = v170;
        }

        objc_msgSend_setStrongReference_message_(archiverCopy, v105, v109, v110, v111, v112, v77, v170, v107, v108);
      }

      v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v67, v71, v72, v73, v74, &v178, v184, 16, v70);
    }

    while (v66);
  }
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v12 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, v8, v9, v10, v11, off_2812F85B8[24], v5, v6, v7);

  v20 = *(v12 + 16);
  if (v20)
  {
    v21 = objc_alloc(MEMORY[0x277CCACA8]);
    v30 = objc_msgSend_tsp_initWithProtobufString_(v21, v22, v26, v27, v28, v29, *(v12 + 72) & 0xFFFFFFFFFFFFFFFELL, v23, v24, v25);
    if (objc_msgSend_fileFormatVersion(unarchiverCopy, v31, v36, v37, v38, v39, v32, v33, v34, v35) < *MEMORY[0x277D809A8])
    {
      v49 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v40, v45, v46, v47, v48, v41, v42, v43, v44);
      v57 = objc_msgSend_tsu_stringByReplacingInstancesOfCharactersInSet_withString_(v30, v50, v53, v54, v55, v56, v49, @" ", v51, v52);

      if ((objc_msgSend_isEqualToString_(v30, v58, v62, v63, v64, v65, v57, v59, v60, v61) & 1) == 0)
      {
        v66 = v57;

        v30 = v66;
        objc_msgSend_willModifyForUpgrade(self, v67, v72, v73, v74, v75, v68, v69, v70, v71);
      }
    }

    name = self->_name;
    self->_name = v30;

    v20 = *(v12 + 16);
  }

  if ((v20 & 8) != 0)
  {
    self->_headersFootersMatchPreviousPage = *(v12 + 96);
  }

  if ((v20 & 2) != 0)
  {
    v77 = objc_msgSend_instanceWithArchive_unarchiver_(MEMORY[0x277D80248], v13, v16, v17, v18, v19, *(v12 + 80), unarchiverCopy, v14, v15);
    backgroundFill = self->_backgroundFill;
    self->_backgroundFill = v77;

    v20 = *(v12 + 16);
  }

  if ((v20 & 0x10) != 0)
  {
    self->_hideHeadersFooters = *(v12 + 97);
  }

  v181[0] = MEMORY[0x277D85DD0];
  v181[1] = 3221225472;
  v181[2] = sub_275FF364C;
  v181[3] = &unk_27A6A8508;
  v181[4] = self;
  v79 = unarchiverCopy;
  v80 = objc_opt_class();
  objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v79, v81, v82, v83, v84, v85, v12 + 24, v80, 0, v181);

  v86 = *(v12 + 56);
  v96 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v87, v92, v93, v94, v95, v88, v89, v90, v91);
  placeholderDrawables = self->_placeholderDrawables;
  self->_placeholderDrawables = v96;

  v98 = [TPDrawablesZOrder alloc];
  v108 = objc_msgSend_context(v79, v99, v104, v105, v106, v107, v100, v101, v102, v103);
  v117 = objc_msgSend_initWithContext_(v98, v109, v113, v114, v115, v116, v108, v110, v111, v112);
  drawablesZOrder = self->_drawablesZOrder;
  self->_drawablesZOrder = v117;

  v175 = 0;
  v176 = &v175;
  v119.n128_u64[0] = 0x3032000000;
  v177 = 0x3032000000;
  v178 = sub_275FF1A38;
  v179 = sub_275FF1A48;
  v180 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v120, v119, v124, v125, v126, v86, v121, v122, v123);
  if (v86)
  {
    for (i = 0; i != v86; ++i)
    {
      v137 = objc_msgSend_null(MEMORY[0x277CBEB68], v127, v132, v133, v134, v135, v128, v129, v130, v131);
      objc_msgSend_setObject_atIndexedSubscript_(v176[5], v138, v141, v142, v143, v144, v137, i, v139, v140);
    }

    v171 = 0;
    v172 = &v171;
    v173 = 0x2020000000;
    v174 = 0;
    v145 = 0;
    v146 = v86;
    do
    {
      v147 = v12;
      v148 = *(*(v12 + 64) + (v145 >> 29) + 8);
      v149 = objc_alloc(MEMORY[0x277CCACA8]);
      v158 = objc_msgSend_tsp_initWithProtobufString_(v149, v150, v154, v155, v156, v157, *(v148 + 24) & 0xFFFFFFFFFFFFFFFELL, v151, v152, v153);
      v159 = *(v148 + 40);
      v160 = *(v148 + 32);
      v170[0] = MEMORY[0x277D85DD0];
      v170[1] = 3221225472;
      v170[2] = sub_275FF3660;
      v170[3] = &unk_27A6A8A38;
      v170[4] = self;
      v170[5] = v158;
      v170[6] = &v175;
      v170[7] = &v171;
      v170[8] = v159;
      v170[9] = v86;
      v161 = v79;
      v163 = objc_opt_class();
      if (v160)
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v161, v162, v164, v165, v166, v167, v160, v163, 0, v170);
      }

      else
      {
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v161, v162, v164, v165, v166, v167, MEMORY[0x277D80A18], v163, 0, v170);
      }

      v145 += 0x100000000;
      --v146;
      v12 = v147;
    }

    while (v146);
  }

  else
  {
    v171 = 0;
    v172 = &v171;
    v132.n128_u64[0] = 0x2020000000;
    v173 = 0x2020000000;
    v174 = 0;
  }

  v169[0] = MEMORY[0x277D85DD0];
  v169[1] = 3221225472;
  v169[2] = sub_275FF3830;
  v169[3] = &unk_27A6A8768;
  v169[4] = self;
  objc_msgSend_addFinalizeHandler_(v79, v127, v132, v133, v134, v135, v169, v129, v130, v131);
  _Block_object_dispose(&v171, 8);
  _Block_object_dispose(&v175, 8);
}

- (NSString)description
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  name = self->_name;
  v16 = objc_msgSend_objectUUID(self, v7, v12, v13, v14, v15, v8, v9, v10, v11);
  v17 = MEMORY[0x277CCABB0];
  matched = objc_msgSend_headersFootersMatchPreviousPage(self, v18, v23, v24, v25, v26, v19, v20, v21, v22);
  v36 = objc_msgSend_numberWithBool_(v17, v28, v32, v33, v34, v35, matched, v29, v30, v31);
  v45 = objc_msgSend_stringWithFormat_(v3, v37, v41, v42, v43, v44, @"(%@*)%p Name=%@ UUID=%@ HeadersFootersMatchPrevious=%@ backgroundFill=%@ Placeholders=", v38, v39, v40, v5, self, name, v16, v36, self->_backgroundFill);

  placeholderDrawables = self->_placeholderDrawables;
  v87[0] = MEMORY[0x277D85DD0];
  v47.n128_u64[0] = 3221225472;
  v87[1] = 3221225472;
  v87[2] = sub_275FF3CCC;
  v87[3] = &unk_27A6A8A88;
  v87[4] = v45;
  v87[5] = self;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(placeholderDrawables, v48, v47, v52, v53, v54, v87, v49, v50, v51);
  objc_msgSend_appendString_(v45, v55, v59, v60, v61, v62, @" Master Drawables=", v56, v57, v58);
  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v63 = self->_sectionTemplateDrawables;
  v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, v66, v67, v68, v69, &v83, v88, 16, v65);
  if (v74)
  {
    v79 = *v84;
    do
    {
      v80 = 0;
      do
      {
        if (*v84 != v79)
        {
          objc_enumerationMutation(v63);
        }

        objc_msgSend_appendFormat_(v45, v70, v75, v76, v77, v78, @" {%@}", v71, v72, v73, *(*(&v83 + 1) + 8 * v80++));
      }

      while (v74 != v80);
      v74 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v70, v75, v76, v77, v78, &v83, v88, 16, v73);
    }

    while (v74);
  }

  v81 = v45;
  return v45;
}

- (void)setGeometry:(id)geometry
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageTemplate setGeometry:]", v3, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 486, 0, "can't set geometry on a page template");

  v35 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v35, v26, v31, v32, v33, v34, v27, v28, v29, v30);
}

- (void)setParentInfo:(id)info
{
  v10 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, v6, v7, v8, v9, "[TPPageTemplate setParentInfo:]", v3, v4, v5);
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPPageTemplate.mm", v13, v14, v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v21, v22, v23, v24, v25, v11, v20, 494, 0, "Page templates do not have parent infos");

  v35 = MEMORY[0x277D81150];

  objc_msgSend_logBacktraceThrottled(v35, v26, v31, v32, v33, v34, v27, v28, v29, v30);
}

- (NSArray)childInfos
{
  drawablesZOrder = self->_drawablesZOrder;
  v11 = objc_msgSend_allValues(self->_placeholderDrawables, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  v20 = objc_msgSend_orderedDrawables_(drawablesZOrder, v12, v16, v17, v18, v19, v11, v13, v14, v15);
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  v23 = v22;

  return v22;
}

- (id)boxedObjectForProperty:(int)property
{
  v3 = *&property;
  v9 = String();
  v14 = 0;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      objc_msgSend_floatValueForProperty_(self, v5, v10, v11, v12, v13, v3, v6, v7, v8);
      v41.n128_u32[0] = 2139095040;
      if (v38.n128_f32[0] != INFINITY)
      {
        v14 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], v33, v38, v41, v39, v40, v34, v35, v36, v37);
        goto LABEL_14;
      }
    }

    else
    {
      if (v9 != 3)
      {
        goto LABEL_14;
      }

      objc_msgSend_doubleValueForProperty_(self, v5, v10, v11, v12, v13, v3, v6, v7, v8);
      v32.n128_u64[0] = 0x7FF0000000000000;
      if (v29.n128_f64[0] != INFINITY)
      {
        v14 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v29, v32, v30, v31, v25, v26, v27, v28);
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (!v9)
    {
      v14 = objc_msgSend_objectForProperty_(self, v5, v10, v11, v12, v13, v3, v6, v7, v8);
      goto LABEL_14;
    }

    if (v9 != 1)
    {
      goto LABEL_14;
    }

    v15 = objc_msgSend_intValueForProperty_(self, v5, v10, v11, v12, v13, v3, v6, v7, v8);
    if (v15 != 0x80000000)
    {
      v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v16, v20, v21, v22, v23, v15, v17, v18, v19);
      goto LABEL_14;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (id)objectForProperty:(int)property
{
  switch(property)
  {
    case 225:
      v11 = 104;
      goto LABEL_7;
    case 4215:
      v11 = 80;
LABEL_7:
      v10 = *(&self->super.super.isa + v11);
      break;
    case 4214:
      v10 = objc_msgSend_childInfos(self, a2, v6, v7, v8, v9, *&property, v3, v4, v5);
      break;
    default:
      v10 = 0;
      break;
  }

  return v10;
}

- (int)intValueForProperty:(int)property
{
  switch(property)
  {
    case 4216:
      return 0;
    case 226:
      return objc_msgSend_hideHeadersFooters(self, a2, v6, v7, v8, v9, *&property, v3, v4, v5);
    case 224:
      return objc_msgSend_headersFootersMatchPreviousPage(self, a2, v6, v7, v8, v9, *&property, v3, v4, v5);
  }

  return 0x80000000;
}

+ (BOOL)isUserDefinedTag:(id)tag
{
  tagCopy = tag;
  if (tagCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v13 = objc_msgSend_initWithUUIDString_(v4, v5, v9, v10, v11, v12, tagCopy, v6, v7, v8);
    v14 = v13 == 0;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)topLevelParentInfoForInfo:(id)info
{
  infoCopy = info;
  v4 = infoCopy;
  objc_msgSend_parentInfo(infoCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
  while (1)
    v19 = {;
    if (!v19)
    {
      break;
    }

    v24 = objc_msgSend_parentInfo(v4, v14, v20, v21, v22, v23, v15, v16, v17, v18);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      break;
    }

    v35 = objc_msgSend_parentInfo(v4, v26, v31, v32, v33, v34, v27, v28, v29, v30);

    v4 = v35;
    objc_msgSend_parentInfo(v35, v36, v41, v42, v43, v44, v37, v38, v39, v40);
  }

  return v4;
}

- (BOOL)containsModelObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  v5 = TSUClassAndProtocolCast();
  if (v5)
  {
    objc_opt_class();
    v14 = objc_msgSend_topLevelParentInfoForInfo_(self, v6, v10, v11, v12, v13, v5, v7, v8, v9, &unk_2885108A0);
    v15 = TSUDynamicCast();

    if (objc_msgSend_containsObject_(self->_sectionTemplateDrawables, v16, v20, v21, v22, v23, v15, v17, v18, v19))
    {
      v32 = 1;
    }

    else
    {
      v33 = objc_msgSend_tagForDrawable_(self, v24, v28, v29, v30, v31, v15, v25, v26, v27);
      v32 = v33 != 0;
    }
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

@end