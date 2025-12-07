@interface TSCEFunction_PRODUCT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index;
@end

@implementation TSCEFunction_PRODUCT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v21 = 0;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 0, &v21);
  v12 = v21;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v10, v12, v11);
  }

  else
  {
    v13 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_PRODUCT, v10, v9, context, spec, 0);
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v14, context, v15);
    }

    else
    {
      memset(&v19, 0, sizeof(v19));
    }

    TSCEFormat::TSCEFormat(&v20, &v19);
    objc_msgSend_setFormat_(v13, v16, &v20, v17);
  }

  return v13;
}

+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index
{
  vectorCopy = vector;
  contextCopy = context;
  v13 = objc_msgSend_zero(TSCENumberValue, v10, v11, v12);
  v14 = contextCopy;
  v118[0] = v14;
  v118[1] = spec;
  v119 = 0;
  indexCopy = index;
  indexCopy2 = index;
  *v121 = 0;
  v122 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v123 = 0;
  v124 = 0;
  v21 = objc_msgSend_hidingActionMask(v14, v15, v16, v17);
  v22 = 0;
  v23 = 0;
  *&v121[3] = v21 != 0;
  v117[0] = 0;
  v117[1] = 0;
  v116 = v117;
  specCopy = spec;
  v24 = 1;
  while (1)
  {
    if (v23 >= objc_msgSend_count(vectorCopy, v18, v19, v20))
    {
      if (objc_msgSend_isFinite(v13, v25, v26, v27))
      {
        v13 = v13;
        v75 = 0;
        v86 = v13;
        goto LABEL_43;
      }

      v90 = objc_msgSend_functionName(spec, v83, v84, v85);
      v93 = objc_msgSend_numberErrorForFunctionName_(TSCEError, v91, v90, v92);
      v86 = objc_msgSend_raiseErrorOrConvert_(v14, v94, v93, v95);

      goto LABEL_38;
    }

    v28 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v25, v23, v118);
    if (objc_msgSend_isError(v28, v29, v30, v31))
    {
      v87 = objc_msgSend_errorWithContext_(v28, v32, v14, v34);
      v86 = objc_msgSend_raiseErrorOrConvert_(v14, v88, v87, v89);

LABEL_38:
      v75 = 0;
      goto LABEL_43;
    }

    if (v21)
    {
      if ((v121[6] & v21) != 0)
      {
        goto LABEL_32;
      }

      if ((v21 & 0x40) != 0 && (objc_msgSend_isNil(v28, v32, v33, v34) & 1) == 0)
      {
        if (objc_msgSend_isThunk(v28, v32, v33, v34))
        {
          v38 = objc_msgSend_unwrapThunk_(v14, v35, v28, v37);

          v28 = v38;
        }

        if (objc_msgSend_isReferenceValue(v28, v35, v36, v37))
        {
          break;
        }
      }
    }

LABEL_26:
    if ((objc_msgSend_isNil(v28, v32, v33, v34) & 1) == 0)
    {
      if (v24)
      {
        TSUDecimal::operator=();
        v71 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v69, &v108, v70);

        v13 = v71;
      }

      v107 = 0;
      v39 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v28, v68, v14, spec, indexCopy, &v107);
      v75 = v107;
      if (v75)
      {
        v96 = objc_msgSend_raiseErrorOrConvert_(v14, v72, v75, v74);
        goto LABEL_40;
      }

      isDuration = objc_msgSend_isDuration(v39, v72, v73, v74);
      if ((isDuration & v22) == 1)
      {
        v97 = objc_msgSend_functionName(specCopy, v76, v77, v78);
        v100 = objc_msgSend_multipleDurationsErrorForFunctionName_(TSCEError, v98, v97, v99);
        v86 = objc_msgSend_raiseErrorOrConvert_(v14, v101, v100, v102);

        goto LABEL_42;
      }

      v80 = objc_msgSend_multiply_context_(v13, v76, v39, v14);
      v22 |= isDuration;

      v24 = 0;
      v13 = v80;
      spec = specCopy;
    }

LABEL_32:

    ++v23;
  }

  v115 = 0;
  v39 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v28, v32, v14, spec, indexCopy, &v115);
  v40 = v115;
  if (!v40)
  {
    *&v108 = objc_msgSend_tableUID(v39, v41, v42, v43);
    *(&v108 + 1) = v44;
    objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v44, &v108, v45);
    v113._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v113._coordsForOwnerUid.__tree_.__size_ = 0;
    v113._coordsForOwnerUid.__tree_.__begin_node_ = &v113._coordsForOwnerUid.__tree_.__end_node_;
    v49 = objc_msgSend_tableUID(v39, v46, v47, v48);
    for (i = v117[0]; i; i = *i)
    {
      if (__PAIR128__(v50, v49) >= *(i + 2))
      {
        if (i[5] >= v50 && i[4] >= v49)
        {
          *&v108 = objc_msgSend_tableUID(v39, v50, v51, v52);
          *(&v108 + 1) = v81;
          v82 = sub_22121D288(&v116, &v108);
          TSCECellRefSet::operator=(&v113, v82);
          goto LABEL_22;
        }

        ++i;
      }
    }

    v54 = objc_msgSend_calcEngine(v14, v50, v51, v52);
    v57 = v54;
    if (v54)
    {
      objc_msgSend_cellDependentsOfCell_(v54, v55, v114, v56);
    }

    else
    {
      v108 = 0uLL;
      *v109 = 0;
    }

    TSCECellRefSet::operator=(&v113, &v108);
    sub_22107C800(&v108, *(&v108 + 1));

    *&v108 = objc_msgSend_tableUID(v39, v58, v59, v60);
    *(&v108 + 1) = v61;
    TSCECellRefSet::TSCECellRefSet(v109, &v113);
    sub_22121E5E0(&v116, &v108, &v108);
    sub_22107C800(v109, *&v109[8]);
LABEL_22:
    if (v39)
    {
      objc_msgSend_anyRef(v39, v62, v63, v64);
      v65 = *(&v108 + 1);
      v66 = *(&v111 + 1);
    }

    else
    {
      v66 = 0;
      v65 = 0;
      v110 = 0u;
      v111 = 0u;
      memset(v109, 0, sizeof(v109));
      v108 = 0u;
    }

    v112.coordinate = v65;
    v112._tableUID = *&v109[8];

    v67 = TSCECellRefSet::containsCellRef(&v113, &v112);
    sub_22107C800(&v113, v113._coordsForOwnerUid.__tree_.__end_node_.__left_);

    spec = specCopy;
    if (v67)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  v75 = v40;
  v96 = objc_msgSend_raiseErrorOrConvert_(v14, v41, v40, v43);
LABEL_40:
  v86 = v96;
LABEL_42:

LABEL_43:
  sub_22121E580(&v116, v117[0]);

  return v86;
}

@end