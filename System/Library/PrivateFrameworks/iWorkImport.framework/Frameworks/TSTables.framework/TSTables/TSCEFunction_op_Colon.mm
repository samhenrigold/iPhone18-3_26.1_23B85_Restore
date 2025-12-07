@interface TSCEFunction_op_Colon
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
+ (id)evaluateWithContext:(id)context relativeTractRef:(id)ref;
@end

@implementation TSCEFunction_op_Colon

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v53 = 0;
  v11 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v10, context, spec, 1, &v53);
  v12 = v53;
  v52 = v12;
  v14 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v8, v13, context, spec, 0, &v52);
  v15 = v52;

  if (v15)
  {
    isOutputOfAFunction = objc_msgSend_raiseErrorOrConvert_(context, v16, v15, v18);
  }

  else
  {
    v51 = 0;
    v20 = objc_msgSend_evalRef(v14, v16, v17, v18);
    v24 = objc_msgSend_evalRef(v11, v21, v22, v23);
    v26 = objc_msgSend_mergeLeftRef_rightRef_outError_(TSCEEvalRef, v25, v20, v24, &v51);

    if (v51)
    {
      v30 = objc_msgSend_invalidReferenceError(TSCEError, v27, v28, v29);
      isOutputOfAFunction = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);
    }

    else
    {
      v33 = objc_msgSend_preserveFlags(v14, v27, v28, v29);
      v50 = objc_msgSend_preserveFlags(v11, v34, v35, v36) & 0xC | v33 & 3;
      v37 = [TSCEReferenceValue alloc];
      v41 = objc_msgSend_containingCell(context, v38, v39, v40);
      isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v37, v42, v26, v41, &v50, 0, 0);
      if ((objc_msgSend_isOutputOfAFunction(v14, v43, v44, v45) & 1) != 0 || objc_msgSend_isOutputOfAFunction(v11, v46, v47, v48))
      {
        objc_msgSend_setIsOutputOfAFunction_(isOutputOfAFunction, v46, 1, v48);
      }
    }
  }

  return isOutputOfAFunction;
}

+ (id)evaluateWithContext:(id)context relativeTractRef:(id)ref
{
  contextCopy = context;
  refCopy = ref;
  v52 = 0;
  v10 = objc_msgSend_containingCell(contextCopy, v7, v8, v9);
  v12 = objc_msgSend_absoluteCellTractRefForHostCell_offTable_(refCopy, v11, v10, &v52);
  v51 = 0uLL;
  if (objc_msgSend_hasTableUID(refCopy, v13, v14, v15))
  {
    *&v51 = objc_msgSend_tableUID(refCopy, v16, v17, v18);
    *(&v51 + 1) = v19;
  }

  else
  {
    v51 = *objc_msgSend_containingTable(contextCopy, v16, v17, v18);
  }

  if (v52)
  {
    goto LABEL_5;
  }

  v26 = objc_msgSend_calcEngine(contextCopy, v19, v20, v21);
  v29 = objc_msgSend_tableResolverWrapperForTableUID_(v26, v27, &v51, v28);

  if (v29)
  {
    v33 = [TSCEEvalRef alloc];
    if (v12)
    {
      objc_msgSend_cppCellTractRef(v12, v30, v31, v32);
    }

    else
    {
      v50 = 0;
      v49 = 0u;
      memset(&v48, 0, sizeof(v48));
      memset(&v47, 0, sizeof(v47));
    }

    v22 = objc_msgSend_initWithTableResolver_tractRefCore_(v33, v30, v29, &v47);
    TSUIndexSet::~TSUIndexSet(&v48);
    TSUIndexSet::~TSUIndexSet(&v47);
    v36 = [TSCEReferenceValue alloc];
    v40 = objc_msgSend_containingCell(contextCopy, v37, v38, v39);
    *&v47 = objc_msgSend_preserveFlags(v12, v41, v42, v43);
    isOutputOfAFunction = objc_msgSend_initWithEvalRef_hostCell_preserveFlags_permitsAccessInsideMergeRegions_isOutputOfAFunction_(v36, v44, v22, v40, &v47, 0, 0);
    goto LABEL_13;
  }

  if (v52)
  {
LABEL_5:
    v22 = objc_msgSend_invalidReferenceError(TSCEError, v19, v20, v21);
    isOutputOfAFunction = objc_msgSend_errorValue_(TSCEErrorValue, v23, v22, v24);
  }

  else
  {
    v22 = objc_msgSend_referenceToNonexistentTableError_(TSCEError, v19, v51, *(&v51 + 1));
    isOutputOfAFunction = objc_msgSend_errorValue_(TSCEErrorValue, v34, v22, v35);
  }

LABEL_13:
  v45 = isOutputOfAFunction;

  return v45;
}

@end