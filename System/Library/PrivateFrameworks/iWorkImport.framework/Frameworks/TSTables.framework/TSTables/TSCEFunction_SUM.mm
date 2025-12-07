@interface TSCEFunction_SUM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index;
@end

@implementation TSCEFunction_SUM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v20 = 0;
  v8 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, a2, context, spec, 0, 1, &v20);
  v11 = v20;
  if (v11)
  {
    v12 = objc_msgSend_raiseErrorOrConvert_(context, v9, v11, v10);
  }

  else
  {
    v12 = objc_msgSend_getResultWithVector_context_functionSpec_index_(TSCEFunction_SUM, v9, v8, context, spec, 0);
    if (v8)
    {
      objc_msgSend_formatWithContext_(v8, v13, context, v14);
    }

    else
    {
      memset(&v18, 0, sizeof(v18));
    }

    TSCEFormat::TSCEFormat(&v19, &v18);
    objc_msgSend_setFormat_(v12, v15, &v19, v16);
  }

  return v12;
}

+ (id)getResultWithVector:(id)vector context:(id)context functionSpec:(id)spec index:(int)index
{
  vectorCopy = vector;
  contextCopy = context;
  v10 = objc_alloc_init(TSCESumAccumulator);
  v14 = objc_msgSend_count(vectorCopy, v11, v12, v13);
  v15 = contextCopy;
  v80[0] = v15;
  v80[1] = spec;
  v81 = 0;
  indexCopy = index;
  indexCopy2 = index;
  *v83 = 0;
  v84 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v85 = 0;
  v86 = 0;
  v21 = objc_msgSend_hidingActionMask(v15, v16, v17, v18);
  *&v83[3] = v21 != 0;
  v79[0] = 0;
  v79[1] = 0;
  v78 = v79;
  if (!v14)
  {
LABEL_29:
    v65 = objc_msgSend_resultForFunction_(v10, v19, spec, v20);
    v66 = 0;
    goto LABEL_30;
  }

  v22 = 0;
  while (1)
  {
    v23 = objc_msgSend_valueAtIndex_accessContext_(vectorCopy, v19, v22, v80);
    v27 = v23;
    if (!v21)
    {
      goto LABEL_25;
    }

    if ((v83[6] & v21) == 0)
    {
      break;
    }

LABEL_26:

    if (++v22 == v14)
    {
      goto LABEL_29;
    }
  }

  if (v21 & 0x40) == 0 || (objc_msgSend_isNil(v23, v24, v25, v26))
  {
    goto LABEL_25;
  }

  if (objc_msgSend_isThunk(v27, v24, v28, v29))
  {
    v33 = objc_msgSend_unwrapThunk_(v15, v30, v27, v32);

    v27 = v33;
  }

  if (!objc_msgSend_isReferenceValue(v27, v30, v31, v32))
  {
LABEL_25:
    objc_msgSend_addValue_evaluationContext_functionSpec_(v10, v24, v27, v15, spec);
    goto LABEL_26;
  }

  v77 = 0;
  v34 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v27, v24, v15, spec, indexCopy, &v77);
  v35 = v77;
  if (!v35)
  {
    *&v70 = objc_msgSend_tableUID(v34, v36, v37, v38);
    *(&v70 + 1) = v39;
    objc_msgSend_subtotalPrecedentForTableUID_(TSCEHauntedOwner, v39, &v70, v40);
    v75._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v75._coordsForOwnerUid.__tree_.__size_ = 0;
    v75._coordsForOwnerUid.__tree_.__begin_node_ = &v75._coordsForOwnerUid.__tree_.__end_node_;
    v44 = objc_msgSend_tableUID(v34, v41, v42, v43);
    for (i = v79[0]; i; i = *i)
    {
      if (__PAIR128__(v45, v44) >= *(i + 2))
      {
        if (i[5] >= v45 && i[4] >= v44)
        {
          *&v70 = objc_msgSend_tableUID(v34, v45, v46, v47);
          *(&v70 + 1) = v63;
          v64 = sub_22121D288(&v78, &v70);
          TSCECellRefSet::operator=(&v75, v64);
          goto LABEL_21;
        }

        ++i;
      }
    }

    v49 = objc_msgSend_calcEngine(v15, v45, v46, v47);
    v52 = v49;
    if (v49)
    {
      objc_msgSend_cellDependentsOfCell_(v49, v50, v76, v51);
    }

    else
    {
      v70 = 0uLL;
      *v71 = 0;
    }

    TSCECellRefSet::operator=(&v75, &v70);
    sub_22107C800(&v70, *(&v70 + 1));

    *&v70 = objc_msgSend_tableUID(v34, v53, v54, v55);
    *(&v70 + 1) = v56;
    TSCECellRefSet::TSCECellRefSet(v71, &v75);
    sub_22121E5E0(&v78, &v70, &v70);
    sub_22107C800(v71, *&v71[8]);
LABEL_21:
    if (v34)
    {
      objc_msgSend_anyRef(v34, v57, v58, v59);
      v60 = *(&v70 + 1);
      v61 = *(&v73 + 1);
    }

    else
    {
      v61 = 0;
      v60 = 0;
      v72 = 0u;
      v73 = 0u;
      memset(v71, 0, sizeof(v71));
      v70 = 0u;
    }

    v74.coordinate = v60;
    v74._tableUID = *&v71[8];

    v62 = TSCECellRefSet::containsCellRef(&v75, &v74);
    sub_22107C800(&v75, v75._coordsForOwnerUid.__tree_.__end_node_.__left_);

    if (v62)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v66 = v35;
  v65 = objc_msgSend_raiseErrorOrConvert_(v15, v36, v35, v38);

LABEL_30:
  sub_22121E580(&v78, v79[0]);

  return v65;
}

@end