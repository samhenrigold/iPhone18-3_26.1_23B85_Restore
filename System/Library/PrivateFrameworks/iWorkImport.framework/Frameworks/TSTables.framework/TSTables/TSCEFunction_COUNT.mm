@interface TSCEFunction_COUNT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index countBehavior:(int64_t)behavior;
@end

@implementation TSCEFunction_COUNT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v18 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 0, &v18);
  v11 = v18;
  if (v11)
  {
    v12 = objc_msgSend_raiseErrorOrConvert_(context, v9, v11, v10);
  }

  else
  {
    v12 = objc_msgSend_getResultWithVector_context_functionSpec_index_countBehavior_(TSCEFunction_COUNT, v9, v8, context, spec, 0, 0);
    TSCEFormat::TSCEFormat(&v16, 256);
    TSCEFormat::TSCEFormat(&v17, &v16);
    objc_msgSend_setFormat_(v12, v13, &v17, v14);
  }

  return v12;
}

+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index countBehavior:(int64_t)behavior
{
  vectorCopy = vector;
  contextCopy = context;
  v15 = objc_msgSend_count(vectorCopy, v12, v13, v14);
  v16 = contextCopy;
  v20 = v16;
  v110 = 0;
  v111 = 0;
  v113 = 0;
  v114 = 0;
  if (behavior == 1)
  {
    specCopy = 0;
  }

  else
  {
    specCopy = spec;
  }

  if (behavior == 1)
  {
    indexCopy = -1;
  }

  else
  {
    indexCopy = index;
  }

  v106[0] = v16;
  v106[1] = specCopy;
  v107 = 0;
  v108 = indexCopy;
  v109 = 0;
  v112 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v24 = objc_msgSend_hidingActionMask(v16, v17, v18, v19);
  BYTE2(v110) = v24 != 0;
  v105[0] = 0;
  v105[1] = 0;
  v104 = v105;
  if (!v15)
  {
LABEL_62:
    TSUDecimal::operator=();
    v89 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v87, &v96, v88);
LABEL_63:
    v80 = 0;
    goto LABEL_64;
  }

  indexCopy2 = index;
  v94 = 0;
  v25 = 0;
  specCopy2 = spec;
  while (1)
  {
    v26 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v23, v25, v106);
    isError = objc_msgSend_isError(v26, v27, v28, v29);
    v34 = isError;
    if (isError)
    {
      v35 = objc_msgSend_errorWithContext_(v26, v31, v20, v33);
      v39 = v35;
      if ((behavior & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        if (behavior == 1 && (objc_msgSend_isInvalidMergeReference(v35, v36, v37, v38) & 1) != 0)
        {
LABEL_67:
          v89 = objc_msgSend_raiseErrorOrConvert_(v20, v40, v39, v41);

          goto LABEL_63;
        }
      }

      else if (objc_msgSend_isInvalidReferenceError(v35, v36, v37, v38))
      {
        goto LABEL_67;
      }
    }

    if (behavior == 1 && objc_msgSend_valueIsEmptyWithContext_(v26, v31, v20, v33))
    {
      v42 = objc_msgSend_nilValue(TSCENilValue, v31, v32, v33);

      v26 = v42;
    }

    if (v24)
    {
      if ((HIBYTE(v111) & v24) != 0)
      {
        goto LABEL_59;
      }

      if ((v24 & 0x40) != 0 && (objc_msgSend_isNil(v26, v31, v32, v33) & 1) == 0)
      {
        if (objc_msgSend_isThunk(v26, v31, v32, v33))
        {
          v46 = objc_msgSend_unwrapThunk_(v20, v43, v26, v45);

          v26 = v46;
        }

        if (objc_msgSend_isReferenceValue(v26, v43, v44, v45))
        {
          break;
        }
      }
    }

LABEL_41:
    if (behavior != 2)
    {
      if (behavior == 1)
      {
        if ((v34 & 1) != 0 || (objc_msgSend_isNil(v26, v31, v32, v33) & 1) == 0)
        {
          ++v94;
        }
      }

      else if (!behavior && (v34 & 1) == 0)
      {
        v94 += objc_msgSend_isNil(v26, v31, v32, v33) ^ 1;
      }

      goto LABEL_59;
    }

    if ((v34 & 1) == 0 && (objc_msgSend_isNil(v26, v31, v32, v33) & 1) != 0 || objc_msgSend_valueIsBlank_context_(TSCEFunction_ISBLANK, v31, v26, v20) && !objc_msgSend_isNil(v26, v31, v77, v76))
    {
      v80 = 0;
    }

    else
    {
      if (objc_msgSend_deepType_(v26, v31, v20, v76) != 7)
      {
        goto LABEL_59;
      }

      v95 = 0;
      v79 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v26, v78, v20, specCopy2, 0, &v95);
      v80 = v95;
      v84 = objc_msgSend_length(v79, v81, v82, v83);

      if (v84)
      {
        goto LABEL_58;
      }
    }

    ++v94;
LABEL_58:
    if (v80)
    {
      v89 = objc_msgSend_raiseErrorOrConvert_(v20, v31, v80, v76);
      goto LABEL_70;
    }

LABEL_59:

    if (++v25 == v15)
    {
      goto LABEL_62;
    }
  }

  v103 = 0;
  v47 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v26, v31, v20, specCopy2, indexCopy2, &v103);
  v48 = v103;
  if (!v48)
  {
    *&v96 = objc_msgSend_tableUID(v47, v49, v50, v51);
    *(&v96 + 1) = v52;
    objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v52, &v96, v53);
    v101._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v101._coordsForOwnerUid.__tree_.__size_ = 0;
    v101._coordsForOwnerUid.__tree_.__begin_node_ = &v101._coordsForOwnerUid.__tree_.__end_node_;
    v57 = objc_msgSend_tableUID(v47, v54, v55, v56);
    for (i = v105[0]; i; i = *i)
    {
      if (__PAIR128__(v58, v57) >= *(i + 2))
      {
        if (i[5] >= v58 && i[4] >= v57)
        {
          *&v96 = objc_msgSend_tableUID(v47, v58, v59, v60);
          *(&v96 + 1) = v85;
          v86 = sub_22121D288(&v104, &v96);
          TSCECellRefSet::operator=(&v101, v86);
          goto LABEL_37;
        }

        ++i;
      }
    }

    v62 = objc_msgSend_calcEngine(v20, v58, v59, v60);
    v65 = v62;
    if (v62)
    {
      objc_msgSend_cellDependentsOfCell_(v62, v63, v102, v64);
    }

    else
    {
      v96 = 0uLL;
      *v97 = 0;
    }

    TSCECellRefSet::operator=(&v101, &v96);
    sub_22107C800(&v96, *(&v96 + 1));

    *&v96 = objc_msgSend_tableUID(v47, v66, v67, v68);
    *(&v96 + 1) = v69;
    TSCECellRefSet::TSCECellRefSet(v97, &v101);
    sub_22121E5E0(&v104, &v96, &v96);
    sub_22107C800(v97, *&v97[8]);
LABEL_37:
    if (v47)
    {
      objc_msgSend_anyRef(v47, v70, v71, v72);
      v73 = *(&v96 + 1);
      v74 = *(&v99 + 1);
    }

    else
    {
      v74 = 0;
      v73 = 0;
      v98 = 0u;
      v99 = 0u;
      memset(v97, 0, sizeof(v97));
      v96 = 0u;
    }

    v100.coordinate = v73;
    v100._tableUID = *&v97[8];

    v75 = TSCECellRefSet::containsCellRef(&v101, &v100);
    sub_22107C800(&v101, v101._coordsForOwnerUid.__tree_.__end_node_.__left_);

    if (v75)
    {
      goto LABEL_59;
    }

    goto LABEL_41;
  }

  v80 = v48;
  v89 = objc_msgSend_raiseErrorOrConvert_(v20, v49, v48, v51);

LABEL_70:
LABEL_64:
  sub_22121E580(&v104, v105[0]);

  return v89;
}

@end