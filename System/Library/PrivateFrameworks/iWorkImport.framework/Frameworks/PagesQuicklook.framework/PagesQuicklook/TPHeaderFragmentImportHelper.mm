@interface TPHeaderFragmentImportHelper
- (BOOL)p_storageIsEffectivelyEmpty:(id)empty;
- (TPHeaderFragmentImportHelper)initWithFragments:(id *)fragments storageContext:(id)context objectsContext:(id)objectsContext;
- (unint64_t)countOfWhitespaceRunsInString:(id)string ranges:(_NSRange)ranges[2];
- (void)p_splitStorageInThree:(int64_t)three withRanges:(_NSRange)ranges[2];
- (void)p_splitStorageInTwo:(int64_t)two withRanges:(_NSRange)ranges[2] firstTarget:(int64_t)target secondTarget:(int64_t)secondTarget;
- (void)processFragmentsForSpaceFormatting;
@end

@implementation TPHeaderFragmentImportHelper

- (TPHeaderFragmentImportHelper)initWithFragments:(id *)fragments storageContext:(id)context objectsContext:(id)objectsContext
{
  contextCopy = context;
  objectsContextCopy = objectsContext;
  v36.receiver = self;
  v36.super_class = TPHeaderFragmentImportHelper;
  v11 = [(TPHeaderFragmentImportHelper *)&v36 init];
  v12 = v11;
  if (v11)
  {
    v11->_fragments = fragments;
    objc_storeStrong(&v11->_storageContext, context);
    objc_storeStrong(&v12->_objectsContext, objectsContext);
    v22 = objc_msgSend_whitespaceCharacterSet(MEMORY[0x277CCA900], v13, v18, v19, v20, v21, v14, v15, v16, v17);
    whitespaceCharacterSet = v12->_whitespaceCharacterSet;
    v12->_whitespaceCharacterSet = v22;

    v33 = objc_msgSend_invertedSet(v12->_whitespaceCharacterSet, v24, v29, v30, v31, v32, v25, v26, v27, v28);
    nonWhitespaceCharacterSet = v12->_nonWhitespaceCharacterSet;
    v12->_nonWhitespaceCharacterSet = v33;
  }

  return v12;
}

- (BOOL)p_storageIsEffectivelyEmpty:(id)empty
{
  emptyCopy = empty;
  v14 = emptyCopy;
  if (emptyCopy)
  {
    v15 = objc_msgSend_string(emptyCopy, v5, v10, v11, v12, v13, v6, v7, v8, v9);
    nonWhitespaceCharacterSet = self->_nonWhitespaceCharacterSet;
    v26 = objc_msgSend_range(v14, v17, v22, v23, v24, v25, v18, v19, v20, v21);
    v32 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v15, v27, v28, v29, v30, v31, nonWhitespaceCharacterSet, 2, v26, v27);

    v33 = v32 == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v33 = 1;
  }

  return v33;
}

- (unint64_t)countOfWhitespaceRunsInString:(id)string ranges:(_NSRange)ranges[2]
{
  stringCopy = string;
  *ranges = xmmword_27605FD20;
  ranges[1] = xmmword_27605FD20;
  v7 = ranges + 1;
  v15 = objc_msgSend_scannerWithString_(MEMORY[0x277CCAC80], v8, xmmword_27605FD20, v12, v13, v14, stringCopy, v9, v10, v11);
  objc_msgSend_setCharactersToBeSkipped_(v15, v16, v20, v21, v22, v23, 0, v17, v18, v19);
  v33 = 0;
  while ((objc_msgSend_isAtEnd(v15, v24, v29, v30, v31, v32, v25, v26, v27, v28) & 1) == 0)
  {
    objc_msgSend_scanUpToCharactersFromSet_intoString_(v15, v34, v37, v38, v39, v40, self->_whitespaceCharacterSet, 0, v35, v36);
    if (objc_msgSend_isAtEnd(v15, v41, v46, v47, v48, v49, v42, v43, v44, v45))
    {
      v59 = 0;
    }

    else
    {
      v60 = objc_msgSend_scanLocation(v15, v50, v55, v56, v57, v58, v51, v52, v53, v54);
      whitespaceCharacterSet = self->_whitespaceCharacterSet;
      v91[0] = 0;
      objc_msgSend_scanCharactersFromSet_intoString_(v15, v62, v65, v66, v67, v68, whitespaceCharacterSet, v91, v63, v64);
      v59 = v91[0];
      if (objc_msgSend_length(v59, v69, v74, v75, v76, v77, v70, v71, v72, v73) >= 5)
      {
        v87 = objc_msgSend_length(v59, v78, v83, v84, v85, v86, v79, v80, v81, v82);
        v88 = &ranges[ranges->length > ranges[1].length];
        if (v87 > v88->length)
        {
          if (v33 != 2)
          {
            ++v33;
          }

          v88->location = v60;
          v88->length = v87;
          if (ranges->location > ranges[1].location)
          {
            v89 = *ranges;
            *ranges = *v7;
            *v7 = v89;
          }
        }
      }
    }
  }

  return v33;
}

- (void)p_splitStorageInTwo:(int64_t)two withRanges:(_NSRange)ranges[2] firstTarget:(int64_t)target secondTarget:(int64_t)secondTarget
{
  v10 = self->_fragments[two];
  v11 = &ranges[ranges->length <= ranges[1].length];
  location = v11->location;
  length = v11->length;
  v41 = v10;
  v23 = objc_msgSend_length(v10, v14, v19, v20, v21, v22, v15, v16, v17, v18);
  v29 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v41, v24, v25, v26, v27, v28, 0, location, self->_storageContext, self->_objectsContext, 1);
  v35 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v41, v30, v31, v32, v33, v34, length + location, v23 - (length + location), self->_storageContext, self->_objectsContext, 1);
  fragments = self->_fragments;
  v37 = fragments[target];
  fragments[target] = v29;
  v38 = v29;

  v39 = self->_fragments;
  v40 = v39[secondTarget];
  v39[secondTarget] = v35;
}

- (void)p_splitStorageInThree:(int64_t)three withRanges:(_NSRange)ranges[2]
{
  v6 = self->_fragments[three];
  location = ranges->location;
  length = ranges->length;
  v9 = ranges[1].location;
  v10 = ranges[1].length;
  v49 = v6;
  v20 = objc_msgSend_length(v6, v11, v16, v17, v18, v19, v12, v13, v14, v15);
  v21 = ranges[1].location;
  v22 = ranges[1].length;
  v28 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v49, v23, v24, v25, v26, v27, 0, location, self->_storageContext, self->_objectsContext, 1);
  v34 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v49, v29, v30, v31, v32, v33, length + location, v9 - (length + location), self->_storageContext, self->_objectsContext, 1);
  v40 = objc_msgSend_newSubstorageWithRange_storageContext_objectsContext_flags_(v49, v35, v36, v37, v38, v39, v10 + v9, v20 - (v21 + v22), self->_storageContext, self->_objectsContext, 1);
  fragments = self->_fragments;
  v42 = *fragments;
  *fragments = v28;
  v43 = v28;

  v44 = self->_fragments;
  v45 = v44[1];
  v44[1] = v34;
  v46 = v34;

  v47 = self->_fragments;
  v48 = v47[2];
  v47[2] = v40;
}

- (void)processFragmentsForSpaceFormatting
{
  v97 = *MEMORY[0x277D85DE8];
  IsEffectivelyEmpty = objc_msgSend_p_storageIsEffectivelyEmpty_(self, a2, v5, v6, v7, v8, *self->_fragments, v2, v3, v4);
  v19 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v11, v15, v16, v17, v18, *(self->_fragments + 1), v12, v13, v14);
  v33 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v20, v24, v25, v26, v27, *(self->_fragments + 2), v21, v22, v23);
  if ((IsEffectivelyEmpty & 1) != 0 || (objc_msgSend_string(*self->_fragments, v28, v34, v35, v36, v37, v29, v30, v31, v32), v38 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend_countOfWhitespaceRunsInString_ranges_(self, v39, v42, v43, v44, v45, v38, v96, v40, v41), v38, v46 < 1))
  {
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_8:
    v47 = 1;
    goto LABEL_19;
  }

  if ((v19 & v33) == 1)
  {
    if (v46 == 1)
    {
      objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v28, v34, v35, v36, v37, 0, v96, 0, 2);
    }

    else if (v46 == 2)
    {
      objc_msgSend_p_splitStorageInThree_withRanges_(self, v28, v34, v35, v36, v37, 0, v96, v31, v32);
    }
  }

  else if (v19)
  {
    objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v28, v34, v35, v36, v37, 0, v96, 0, 1);
  }

  IsEffectivelyEmpty = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v28, v34, v35, v36, v37, *self->_fragments, v30, v31, v32);
  v56 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v48, v52, v53, v54, v55, *(self->_fragments + 1), v49, v50, v51);
  v33 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v57, v61, v62, v63, v64, *(self->_fragments + 2), v58, v59, v60);
  if (v56)
  {
    goto LABEL_8;
  }

LABEL_13:
  v65 = objc_msgSend_string(self->_fragments[1], v28, v34, v35, v36, v37, v29, v30, v31, v32);
  v73 = objc_msgSend_countOfWhitespaceRunsInString_ranges_(self, v66, v69, v70, v71, v72, v65, v96, v67, v68);

  if (v73 < 1)
  {
    v47 = 0;
LABEL_19:
    if (v33)
    {
      return;
    }

    goto LABEL_27;
  }

  if ((IsEffectivelyEmpty & v33) == 1)
  {
    if (v73 == 1)
    {
      objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v28, v34, v35, v36, v37, 1, v96, 0, 2);
    }

    else if (v73 == 2)
    {
      objc_msgSend_p_splitStorageInThree_withRanges_(self, v28, v34, v35, v36, v37, 1, v96, v31, v32);
    }
  }

  else if (IsEffectivelyEmpty)
  {
    objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v28, v34, v35, v36, v37, 1, v96, 0, 1);
  }

  else if (v33)
  {
    objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v28, v34, v35, v36, v37, 1, v96, 1, 2);
  }

  v47 = objc_msgSend_p_storageIsEffectivelyEmpty_(self, v28, v34, v35, v36, v37, *(self->_fragments + 1), v30, v31, v32);
  if ((objc_msgSend_p_storageIsEffectivelyEmpty_(self, v74, v78, v79, v80, v81, *(self->_fragments + 2), v75, v76, v77) & 1) == 0)
  {
LABEL_27:
    v82 = objc_msgSend_string(self->_fragments[2], v28, v34, v35, v36, v37, v29, v30, v31, v32);
    v90 = objc_msgSend_countOfWhitespaceRunsInString_ranges_(self, v83, v86, v87, v88, v89, v82, v96, v84, v85);

    if (((v90 > 0) & v47) != 0)
    {
      objc_msgSend_p_splitStorageInTwo_withRanges_firstTarget_secondTarget_(self, v91, v92, v93, v94, v95, 2, v96, 1, 2);
    }
  }
}

@end