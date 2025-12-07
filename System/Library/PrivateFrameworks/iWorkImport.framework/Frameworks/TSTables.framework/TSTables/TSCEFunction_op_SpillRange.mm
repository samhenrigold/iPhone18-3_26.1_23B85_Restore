@interface TSCEFunction_op_SpillRange
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_SpillRange

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  tableUID = 0;
  v50 = 0x7FFF7FFFFFFFLL;
  v7 = **arguments;
  v49 = 0;
  v9 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v49);
  v13 = v49;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
    goto LABEL_19;
  }

  if (v9)
  {
    objc_msgSend_rangeRef(v9, v10, v11, v12);
  }

  else
  {
    memset(&v48, 0, sizeof(v48));
  }

  if (TSCERangeRef::isSingleCell(&v48))
  {
    topLeft = v48.range._topLeft;
    tableUID = v48._tableUID;
    v50 = v48.range._topLeft;
  }

  else
  {
    topLeft = v50;
  }

  if (topLeft.row != 0x7FFFFFFF && (*&topLeft & 0xFFFF00000000) != 0x7FFF00000000 && tableUID != 0uLL)
  {
    v19 = objc_msgSend_calcEngine(context, v15, v16, v17);
    if (objc_msgSend_isArrayFormulaCell_(v19, v20, &v50, v21))
    {
      v47 = tableUID;
      if (tableUID == 0uLL)
      {
        v47 = *objc_msgSend_containingTable(context, v22, v23, v24);
      }

      *v40 = v50;
      objc_msgSend_spillChangedPrecedentForTableUID_spillOrigin_(TSCESpillOwner, v22, &v47, v40);
      *v40 = 0;
      TSCERangeRef::TSCERangeRef(&v52, &v46);
      *&v40[8] = v52;
      v41 = 0;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      objc_msgSend_addCalculatedPrecedent_(context, v25, v40, v26);

      v52.range._topLeft = objc_msgSend_spillingRangeForFormulaAt_(v19, v27, &v50, v28);
      v52.range._bottomRight = v29;
      v39 = tableUID;
      TSCERangeRef::TSCERangeRef(v40, &v52, &v39);
      v48 = *v40;
      *v40 = 1;
      *&v40[8] = v48;
      v41 = 0;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      objc_msgSend_addCalculatedPrecedent_(context, v30, v40, v31);

      v32 = [TSCEReferenceValue alloc];
      v40[0] = 0;
      v14 = objc_msgSend_initWithContext_rangeRef_preserveFlags_(v32, v33, context, &v48, v40);
      objc_msgSend_setPermitsAccessInsideMergeRegions_(v14, v34, 1, v35);
      goto LABEL_18;
    }
  }

  v19 = objc_msgSend_invalidReferenceError(TSCEError, v15, v16, v17);
  v14 = objc_msgSend_raiseErrorOrConvert_(context, v36, v19, v37);
LABEL_18:

LABEL_19:

  return v14;
}

@end