@interface TPSectionHint
+ (BOOL)verifyHints:(id)hints withBodyStorage:(id)storage upToPageIndex:(unint64_t)index;
- (BOOL)hasEndOfTextLayoutBeforePageIndex:(unint64_t)index;
- (BOOL)hasPageHintOfKind:(int64_t)kind atPageIndex:(unint64_t)index;
- (BOOL)hasPageHintOfKind:(int64_t)kind beforePageIndex:(unint64_t)index;
- (TPSectionHint)init;
- (TPSectionHint)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (_NSRange)documentPageRange;
- (id)copyForArchiving;
- (id)copyForCaching;
- (id)pageHintForPageIndex:(unint64_t)index;
- (unint64_t)lastPageIndex;
- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context shouldArchiveHintBlock:(id)block;
- (void)setPageHints:(id)hints;
@end

@implementation TPSectionHint

- (TPSectionHint)init
{
  v6.receiver = self;
  v6.super_class = TPSectionHint;
  v2 = [(TPSectionHint *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    pageHints = v2->_pageHints;
    v2->_pageHints = v3;
  }

  return v2;
}

- (id)copyForArchiving
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(objc_opt_class());
  v12 = v3;
  if (v3)
  {
    v3[2] = self->_documentStartPageIndex;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v13 = self->_pageHints;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v67, v71, 16, v15);
    if (v25)
    {
      v30 = *v68;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v68 != v30)
          {
            objc_enumerationMutation(v13);
          }

          v32 = objc_msgSend_copyForArchiving(*(*(&v67 + 1) + 8 * i), v20, v26, v27, v28, v29, v21, v22, v23, v24);
          objc_msgSend_addObject_(v12[1], v33, v37, v38, v39, v40, v32, v34, v35, v36);
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v26, v27, v28, v29, &v67, v71, 16, v24);
      }

      while (v25);
    }
  }

  else
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v8, v9, v10, v11, "[TPSectionHint copyForArchiving]", v5, v6, v7);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v44, v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v52, v53, v54, v55, v56, v42, v51, 45, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v62, v63, v64, v65, v58, v59, v60, v61);
  }

  return v12;
}

- (id)copyForCaching
{
  v72 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(objc_opt_class());
  v12 = v3;
  if (v3)
  {
    v3[2] = self->_documentStartPageIndex;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v13 = self->_pageHints;
    v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v16, v17, v18, v19, &v67, v71, 16, v15);
    if (v25)
    {
      v30 = *v68;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v68 != v30)
          {
            objc_enumerationMutation(v13);
          }

          v32 = objc_msgSend_copyForCaching(*(*(&v67 + 1) + 8 * i), v20, v26, v27, v28, v29, v21, v22, v23, v24);
          objc_msgSend_addObject_(v12[1], v33, v37, v38, v39, v40, v32, v34, v35, v36);
        }

        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, v26, v27, v28, v29, &v67, v71, 16, v24);
      }

      while (v25);
    }
  }

  else
  {
    v41 = MEMORY[0x277D81150];
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, v8, v9, v10, v11, "[TPSectionHint copyForCaching]", v5, v6, v7);
    v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v43, v47, v48, v49, v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v44, v45, v46);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v41, v52, v53, v54, v55, v56, v42, v51, 61, 0, "invalid nil value for '%{public}s'", "copy");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v62, v63, v64, v65, v58, v59, v60, v61);
  }

  return v12;
}

- (unint64_t)lastPageIndex
{
  v10 = objc_msgSend_pageCount(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  if (v10)
  {
    return v10 - 1;
  }

  else
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }
}

- (_NSRange)documentPageRange
{
  documentStartPageIndex = self->_documentStartPageIndex;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  if (documentStartPageIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = objc_msgSend_pageCount(self, a2, v6, v7, v8, v9, v2, v3, v4, v5);
    v12 = documentStartPageIndex;
  }

  result.length = v13;
  result.location = v12;
  return result;
}

- (id)pageHintForPageIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_pageHints, a2, v6, v7, v8, v9, index, v3, v4, v5) < index)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, v17, v18, v19, v20, "[TPSectionHint pageHintForPageIndex:]", v14, v15, v16);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v27, v28, v29, v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v24, v25, v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v32, v33, v34, v35, v36, v22, v31, 100, 0, "Requesting page hint past the end of the section");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v42, v43, v44, v45, v38, v39, v40, v41);
  }

  v51 = objc_msgSend_count(self->_pageHints, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  pageHints = self->_pageHints;
  if (v51 <= index)
  {
    if (objc_msgSend_count(pageHints, v46, v52, v53, v54, v55, v47, v48, v49, v50) == index)
    {
      v57 = objc_alloc_init(TPPageHint);
      objc_msgSend_addObject_(self->_pageHints, v58, v62, v63, v64, v65, v57, v59, v60, v61);
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = objc_msgSend_objectAtIndexedSubscript_(pageHints, v46, v52, v53, v54, v55, index, v48, v49, v50);
  }

  return v57;
}

- (BOOL)hasPageHintOfKind:(int64_t)kind atPageIndex:(unint64_t)index
{
  v11 = objc_msgSend_firstObject(self->_pageHints, a2, v6, v7, v8, v9, kind, index, v4, v5);
  v21 = v11;
  if (v11)
  {
    v22 = objc_msgSend_pageKind(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16) == kind;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (BOOL)hasPageHintOfKind:(int64_t)kind beforePageIndex:(unint64_t)index
{
  if (objc_msgSend_count(self->_pageHints, a2, v6, v7, v8, v9, kind, index, v4, v5) < index)
  {
    return 0;
  }

  v22 = index - 1;
  do
  {
    v21 = v22 != -1;
    if (v22 == -1)
    {
      break;
    }

    v23 = objc_msgSend_objectAtIndexedSubscript_(self->_pageHints, v13, v17, v18, v19, v20, v22, v14, v15, v16);
    v33 = objc_msgSend_pageKind(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28);

    --v22;
  }

  while (v33 != kind);
  return v21;
}

- (BOOL)hasEndOfTextLayoutBeforePageIndex:(unint64_t)index
{
  v12 = objc_msgSend_count(self->_pageHints, a2, v6, v7, v8, v9, index, v3, v4, v5);
  if (v12 >= index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v12;
  }

  if (!indexCopy)
  {
    return 0;
  }

  v22 = indexCopy - 1;
  while (1)
  {
    v23 = objc_msgSend_objectAtIndexedSubscript_(self->_pageHints, v13, v17, v18, v19, v20, v22, v14, v15, v16);
    if (objc_msgSend_pageKind(v23, v24, v29, v30, v31, v32, v25, v26, v27, v28) == 1)
    {
      break;
    }

    if (--v22 == -1)
    {
      return 0;
    }
  }

  v43 = objc_msgSend_hints(v23, v33, v38, v39, v40, v41, v34, v35, v36, v37);
  v53 = objc_msgSend_lastObject(v43, v44, v49, v50, v51, v52, v45, v46, v47, v48);

  v42 = objc_msgSend_endOfLayout(v53, v54, v59, v60, v61, v62, v55, v56, v57, v58);
  return v42;
}

- (void)setPageHints:(id)hints
{
  hintsCopy = hints;
  objc_msgSend_removeAllObjects(self->_pageHints, v4, v9, v10, v11, v12, v5, v6, v7, v8);
  objc_msgSend_addObjectsFromArray_(self->_pageHints, v13, v17, v18, v19, v20, hintsCopy, v14, v15, v16);
}

+ (BOOL)verifyHints:(id)hints withBodyStorage:(id)storage upToPageIndex:(unint64_t)index
{
  sub_275FFC9D0(v211, hints);
  v14 = 0;
  v208 = 0;
  v209 = 0;
  v15 = 1;
  while (1)
  {
    v16 = sub_275FFD320(v211, v5, v6, v7, v8, v9, v10, v11, v12, v13);
    v17 = (v16 != 0) & v15;

    if ((v17 & 1) == 0)
    {
      break;
    }

    if (sub_275FFD698(v211) >= index || sub_275FFD3B8(v211, v18, v19, v20, v21, v22, v23, v24, v25, v26) == 5)
    {
      v15 = 1;
      break;
    }

    v14 |= sub_275FFD3B8(v211, v27, v28, v29, v30, v31, v32, v33, v34, v35) == 3;
    if (sub_275FFD3B8(v211, v36, v37, v38, v39, v40, v41, v42, v43, v44) == 1)
    {
      if (v14)
      {
        v54 = MEMORY[0x277D81150];
        v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v50, v51, v52, v53, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]", v47, v48, v49);
        v64 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, v60, v61, v62, v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v57, v58, v59);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v65, v66, v67, v68, v69, v55, v64, 231, 0, "Should not have text hints after an orphan hint");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v70, v75, v76, v77, v78, v71, v72, v73, v74);
        v15 = 0;
      }

      else
      {
        v79 = sub_275FFD410(v211, v45, v46, v47, v48, v49, v50, v51, v52, v53);
        v81 = v80;
        v90 = sub_275FFD47C(v211, v80, v82, v83, v84, v85, v86, v87, v88, v89);
        v91 = v45;
        if (v79 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v92 = MEMORY[0x277D81150];
          v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v50, v51, v52, v53, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]", v47, v48, v49);
          v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v94, v98, v99, v100, v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v95, v96, v97);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v103, v104, v105, v106, v107, v93, v102, 242, 0, "page has bogus text range");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v108, v113, v114, v115, v116, v109, v110, v111, v112);
        }

        if (v90 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v117 = MEMORY[0x277D81150];
          v118 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v50, v51, v52, v53, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]", v47, v48, v49);
          v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v119, v123, v124, v125, v126, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v120, v121, v122);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v117, v128, v129, v130, v131, v132, v118, v127, 243, 0, "page has bogus anchored range");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v133, v138, v139, v140, v141, v134, v135, v136, v137);
        }

        v142 = v79 == v208 && v90 == v209;
        v143 = v142;
        if (!v142)
        {
          v144 = MEMORY[0x277D81150];
          v145 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v45, v50, v51, v52, v53, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]", v47, v48, v49);
          v154 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v146, v150, v151, v152, v153, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v147, v148, v149);
          v155 = sub_275FFD698(v211);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v144, v156, v157, v158, v159, v160, v145, v154, 246, 0, "page hint #%lu is incongruous with previous hint", v155 + 1);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v166, v167, v168, v169, v162, v163, v164, v165);
        }

        v208 = &v81[v79];
        v209 = &v91[v90];
        if (v79 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0;
        }

        else
        {
          v15 = (v90 != 0x7FFFFFFFFFFFFFFFLL) & v143;
        }
      }
    }

    else
    {
      v15 = 1;
    }

    if (sub_275FFD3B8(v211, v45, v46, v47, v48, v49, v50, v51, v52, v53) == 4)
    {
      v179 = sub_275FFD554(v211, v170, v171, v172, v173, v174, v175, v176, v177, v178);
      if (v170)
      {
        v15 = 1;
      }

      else
      {
        v180 = v179;
        v181 = MEMORY[0x277D81150];
        v182 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, v175, v176, v177, v178, "+[TPSectionHint verifyHints:withBodyStorage:upToPageIndex:]", v172, v173, v174);
        v191 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v183, v187, v188, v189, v190, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v184, v185, v186);
        v212.location = v180;
        v212.length = 0;
        v192 = NSStringFromRange(v212);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v181, v193, v194, v195, v196, v197, v182, v191, 258, 0, "Endnote page should always have at least one footnote, %{public}@", v192);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v198, v203, v204, v205, v206, v199, v200, v201, v202);
        v15 = 0;
      }
    }

    sub_275FFCF2C(v211, v170, v171, v172, v173, v174, v175, v176, v177, v178);
  }

  sub_275FFD2D0(v211);
  return v15 & 1;
}

- (TPSectionHint)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v42.receiver = self;
  v42.super_class = TPSectionHint;
  v7 = [(TPSectionHint *)&v42 init];
  if (!v7)
  {
LABEL_12:
    v40 = v7;
    goto LABEL_13;
  }

  v8 = *(archive + 8);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v18 = objc_msgSend_initWithCapacity_(v9, v10, v14, v15, v16, v17, v8, v11, v12, v13);
  pageHints = v7->_pageHints;
  v7->_pageHints = v18;

  if (v8 < 1)
  {
LABEL_6:
    v38 = *(archive + 12) == 0x7FFFFFFF || (*(archive + 4) & 1) == 0;
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v38)
    {
      v39 = *(archive + 12);
    }

    v7->_documentStartPageIndex = v39;
    goto LABEL_12;
  }

  v20 = 8;
  while (1)
  {
    v21 = [TPPageHint alloc];
    v33 = objc_msgSend_initWithArchive_unarchiver_(v21, v22, v25, v26, v27, v28, *(*(archive + 5) + v20), unarchiverCopy, v23, v24);
    if (!v33)
    {
      break;
    }

    objc_msgSend_addObject_(v7->_pageHints, v29, v34, v35, v36, v37, v33, v30, v31, v32);

    v20 += 8;
    if (!--v8)
    {
      goto LABEL_6;
    }
  }

  v40 = 0;
LABEL_13:

  return v40;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context shouldArchiveHintBlock:(id)block
{
  v112 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  contextCopy = context;
  blockCopy = block;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  selfCopy = self;
  obj = self->_pageHints;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, v13, v14, v15, v16, &v107, v111, 16, v12);
  if (v22)
  {
    v27 = *v108;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v108 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v107 + 1) + 8 * i);
        if (!objc_msgSend_pageKind(v29, v17, v23, v24, v25, v26, v18, v19, v20, v21, selfCopy))
        {
          v38 = MEMORY[0x277D81150];
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v34, v35, v36, v37, "[TPSectionHint saveToArchive:archiver:context:shouldArchiveHintBlock:]", v31, v32, v33);
          v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, v44, v45, v46, v47, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v41, v42, v43);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v49, v50, v51, v52, v53, v39, v48, 290, 0, "shouldn't be trying to archive an uninitialized page hint");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v59, v60, v61, v62, v55, v56, v57, v58);
        }

        v63 = *(archive + 5);
        if (!v63)
        {
          goto LABEL_13;
        }

        v64 = *(archive + 8);
        v65 = *v63;
        if (v64 < *v63)
        {
          *(archive + 8) = v64 + 1;
          v66 = *&v63[2 * v64 + 2];
          goto LABEL_15;
        }

        if (v65 == *(archive + 9))
        {
LABEL_13:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
          v63 = *(archive + 5);
          v65 = *v63;
        }

        *v63 = v65 + 1;
        v66 = sub_275FAF7F8(*(archive + 3));
        v67 = *(archive + 8);
        v68 = *(archive + 5) + 8 * v67;
        *(archive + 8) = v67 + 1;
        *(v68 + 8) = v66;
LABEL_15:
        v66[4] |= 0x40u;
        v66[59] = 53;
        if (blockCopy[2](blockCopy, v29))
        {
          objc_msgSend_saveToArchive_archiver_context_(v29, v17, v23, v24, v25, v26, v66, archiverCopy, contextCopy, v21);
        }

        else
        {
          v66[4] |= 0x20u;
          v66[58] = 5;
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, v23, v24, v25, v26, &v107, v111, 16, v21);
    }

    while (v22);
  }

  documentStartPageIndex = selfCopy->_documentStartPageIndex;
  if (documentStartPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(documentStartPageIndex))
    {
      v78 = MEMORY[0x277D81150];
      v79 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, v73, v74, v75, v76, "[TPSectionHint saveToArchive:archiver:context:shouldArchiveHintBlock:]", v70, v71, v72);
      v88 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v80, v84, v85, v86, v87, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPSectionHint.mm", v81, v82, v83);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v78, v89, v90, v91, v92, v93, v79, v88, 303, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v94, v99, v100, v101, v102, v95, v96, v97, v98);
      LODWORD(documentStartPageIndex) = -1;
    }

    *(archive + 4) |= 1u;
    *(archive + 12) = documentStartPageIndex;
  }
}

@end