@interface TPLayoutState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutState:(id)state;
- (TPLayoutState)init;
- (TPLayoutState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (id)archivedLayoutStateInContext:(id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)reset;
- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context;
@end

@implementation TPLayoutState

- (TPLayoutState)init
{
  v14.receiver = self;
  v14.super_class = TPLayoutState;
  v2 = [(TPLayoutState *)&v14 init];
  v12 = v2;
  if (v2)
  {
    objc_msgSend_reset(v2, v3, v8, v9, v10, v11, v4, v5, v6, v7);
  }

  return v12;
}

- (void)reset
{
  sectionHints = self->_sectionHints;
  self->_sectionHints = 0;

  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v5 = vnegq_f64(v4);
  *&self->_sectionIndex = v5;
  *&self->_documentPageIndex = v5;
  missingFonts = self->_missingFonts;
  self->_bodyLength = 0x7FFFFFFFFFFFFFFFLL;
  self->_missingFonts = 0;
}

- (BOOL)isEqualToLayoutState:(id)state
{
  stateCopy = state;
  v5 = *(stateCopy + 5);
  v6 = self->_sectionHints;
  v7 = v5;
  if ((!(v6 | v7) || (v16 = v7, isEqual = objc_msgSend_isEqual_(v6, v8, v12, v13, v14, v15, v7, v9, v10, v11), v16, v6, isEqual)) && self->_lastPageCount == *(stateCopy + 4) && self->_sectionIndex == *(stateCopy + 1) && self->_sectionPageIndex == *(stateCopy + 2) && self->_documentPageIndex == *(stateCopy + 3) && self->_bodyLength == *(stateCopy + 6))
  {
    v18 = sub_2760047FC(self->_missingFonts, *(stateCopy + 7));
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)archivedLayoutStateInContext:(id)context
{
  contextCopy = context;
  v5 = [TPArchivedLayoutState alloc];
  v13 = objc_msgSend_initWithContext_layoutState_(v5, v6, v9, v10, v11, v12, contextCopy, self, v7, v8);

  return v13;
}

- (TPLayoutState)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v20 = objc_msgSend_init(self, v6, v11, v12, v13, v14, v7, v8, v9, v10);
  if (v20 && objc_msgSend_documentHasCurrentFileFormatVersion(unarchiverCopy, v15, v21, v22, v23, v24, v16, v17, v18, v19))
  {
    v25 = unarchiverCopy;
    google::protobuf::internal::AssignDescriptors();
    v34 = objc_msgSend_messageWithDescriptor_(v25, v26, v30, v31, v32, v33, off_2812F85B8[50], v27, v28, v29);

    v35 = v34[4];
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v35 & 1) != 0 && v34[18] != 0x7FFFFFFF)
    {
      v36 = v34[18];
    }

    v20->_sectionIndex = v36;
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v35 & 2) != 0 && v34[19] != 0x7FFFFFFF)
    {
      v37 = v34[19];
    }

    v20->_sectionPageIndex = v37;
    v38 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v35 & 4) != 0 && v34[20] != 0x7FFFFFFF)
    {
      v38 = v34[20];
    }

    v20->_documentPageIndex = v38;
    v39 = 0x7FFFFFFFFFFFFFFFLL;
    if ((v35 & 8) != 0 && v34[21] != 0x7FFFFFFF)
    {
      v39 = v34[21];
    }

    v20->_lastPageCount = v39;
    v40 = v34[8];
    v41 = objc_alloc(MEMORY[0x277CBEB18]);
    v50 = objc_msgSend_initWithCapacity_(v41, v42, v46, v47, v48, v49, v40, v43, v44, v45);
    sectionHints = v20->_sectionHints;
    v20->_sectionHints = v50;

    objc_msgSend_reset(v20, v52, v57, v58, v59, v60, v53, v54, v55, v56);
  }

  return v20;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver context:(id)context
{
  archiverCopy = archiver;
  contextCopy = context;
  v226 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v16 = objc_msgSend_messageWithNewFunction_descriptor_(v226, v9, v12, v13, v14, v15, sub_2760055B4, off_2812F85B8[50], v10, v11);

  sectionIndex = self->_sectionIndex;
  if (sectionIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(sectionIndex))
    {
      v101 = MEMORY[0x277D81150];
      v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "[TPLayoutState saveToArchive:archiver:context:]", v18, v19, v20);
      v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v103, v107, v108, v109, v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm", v104, v105, v106);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v101, v112, v113, v114, v115, v116, v102, v111, 133, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v117, v122, v123, v124, v125, v118, v119, v120, v121);
      LODWORD(sectionIndex) = -1;
    }

    v16[4] |= 1u;
    v16[18] = sectionIndex;
  }

  sectionPageIndex = self->_sectionPageIndex;
  if (sectionPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(sectionPageIndex))
    {
      v126 = MEMORY[0x277D81150];
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "[TPLayoutState saveToArchive:archiver:context:]", v18, v19, v20);
      v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v128, v132, v133, v134, v135, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm", v129, v130, v131);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v126, v137, v138, v139, v140, v141, v127, v136, 137, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v142, v147, v148, v149, v150, v143, v144, v145, v146);
      LODWORD(sectionPageIndex) = -1;
    }

    v16[4] |= 2u;
    v16[19] = sectionPageIndex;
  }

  documentPageIndex = self->_documentPageIndex;
  if (documentPageIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(documentPageIndex))
    {
      v151 = MEMORY[0x277D81150];
      v152 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "[TPLayoutState saveToArchive:archiver:context:]", v18, v19, v20);
      v161 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v153, v157, v158, v159, v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm", v154, v155, v156);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v151, v162, v163, v164, v165, v166, v152, v161, 141, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v167, v172, v173, v174, v175, v168, v169, v170, v171);
      LODWORD(documentPageIndex) = -1;
    }

    v16[4] |= 4u;
    v16[20] = documentPageIndex;
  }

  lastPageCount = self->_lastPageCount;
  if (lastPageCount != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(lastPageCount))
    {
      v176 = MEMORY[0x277D81150];
      v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, v21, v22, v23, v24, "[TPLayoutState saveToArchive:archiver:context:]", v18, v19, v20);
      v186 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v178, v182, v183, v184, v185, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm", v179, v180, v181);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v176, v187, v188, v189, v190, v191, v177, v186, 145, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v192, v197, v198, v199, v200, v193, v194, v195, v196);
      LODWORD(lastPageCount) = -1;
    }

    v16[4] |= 8u;
    v16[21] = lastPageCount;
  }

  v29 = TSUSystemVersionNumber();
  if (v29 >= 0x80000000)
  {
    v51 = MEMORY[0x277D81150];
    v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v35, v36, v37, v38, "[TPLayoutState saveToArchive:archiver:context:]", v32, v33, v34);
    v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm", v54, v55, v56);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v62, v63, v64, v65, v66, v52, v61, 150, 0, "Out-of-bounds type assignment was clamped to max");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v72, v73, v74, v75, v68, v69, v70, v71);
    LODWORD(v29) = 0x7FFFFFFF;
  }

  else if (v29 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    v76 = MEMORY[0x277D81150];
    v77 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v35, v36, v37, v38, "[TPLayoutState saveToArchive:archiver:context:]", v32, v33, v34);
    v86 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v78, v82, v83, v84, v85, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm", v79, v80, v81);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v76, v87, v88, v89, v90, v91, v77, v86, 150, 0, "Out-of-bounds type assignment was clamped to min");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v92, v97, v98, v99, v100, v93, v94, v95, v96);
    LODWORD(v29) = 0x80000000;
  }

  v39 = v16[4] | 0x20;
  v16[4] = v39;
  v16[23] = v29;
  bodyLength = self->_bodyLength;
  if (bodyLength != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (HIDWORD(bodyLength))
    {
      v201 = MEMORY[0x277D81150];
      v202 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, v35, v36, v37, v38, "[TPLayoutState saveToArchive:archiver:context:]", v32, v33, v34);
      v211 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v203, v207, v208, v209, v210, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/pages/Classes/TPLayoutState.mm", v204, v205, v206);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v201, v212, v213, v214, v215, v216, v202, v211, 168, 0, "Out-of-bounds type assignment was clamped to max");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v217, v222, v223, v224, v225, v218, v219, v220, v221);
      v39 = v16[4];
      LODWORD(bodyLength) = -1;
    }

    v16[4] = v39 | 0x10;
    v16[22] = bodyLength;
  }

  v41 = objc_msgSend_allObjects(self->_missingFonts, v30, v35, v36, v37, v38, v31, v32, v33, v34);
  v50 = v41;
  if (v41)
  {
    objc_msgSend_tsp_saveToProtobufStringArray_(v41, v42, v46, v47, v48, v49, (v16 + 12), v43, v44, v45);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    isEqualToLayoutState = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      isEqualToLayoutState = objc_msgSend_isEqualToLayoutState_(self, v5, v9, v10, v11, v12, equalCopy, v6, v7, v8);
    }

    else
    {
      isEqualToLayoutState = 0;
    }
  }

  return isEqualToLayoutState;
}

- (unint64_t)hash
{
  objc_msgSend_hash(self->_sectionHints, a2, v6, v7, v8, v9, v2, v3, v4, v5);
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  TSUHashWithSeed();
  v11 = TSUHashWithSeed();
  return objc_msgSend_hash(self->_missingFonts, v12, v17, v18, v19, v20, v13, v14, v15, v16) ^ v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v11 = objc_msgSend_allocWithZone_(TPLayoutState, a2, v6, v7, v8, v9, zone, v3, v4, v5);
  v21 = objc_msgSend_init(v11, v12, v17, v18, v19, v20, v13, v14, v15, v16);
  v22 = v21;
  if (v21)
  {
    *(v21 + 8) = self->_sectionIndex;
    *(v21 + 16) = self->_sectionPageIndex;
    *(v21 + 24) = self->_documentPageIndex;
    *(v21 + 32) = self->_lastPageCount;
    objc_storeStrong((v21 + 40), self->_sectionHints);
    *(v22 + 48) = self->_bodyLength;
    objc_storeStrong((v22 + 56), self->_missingFonts);
  }

  return v22;
}

@end