@interface TSCEFunction_SPILL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SPILL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  tableUID = 0;
  v70 = 0x7FFF7FFFFFFFLL;
  if (*(arguments + 1) != *arguments)
  {
    v7 = **arguments;
    if (objc_msgSend_isReferenceValue(v7, v8, v9, v10))
    {
      v69 = 0;
      v12 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v7, v11, context, spec, 0, &v69);
      v16 = v69;
      if (!v16)
      {
        if (v12)
        {
          objc_msgSend_rangeRef(v12, v13, v14, v15);
        }

        else
        {
          memset(&v68, 0, sizeof(v68));
        }

        if (TSCERangeRef::isSingleCell(&v68))
        {
          tableUID = v68._tableUID;
          v70 = *&v68.range._topLeft & 0xFFFFFFFFFFFFLL;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    if (context)
    {
      goto LABEL_14;
    }

LABEL_7:
    topLeft = 0;
    memset(&v68, 0, 24);
    goto LABEL_15;
  }

  v17 = 0;
  if (!context)
  {
    goto LABEL_7;
  }

LABEL_14:
  objc_msgSend_containingCellRef(context, a2, context, spec);
  topLeft = v68.range._topLeft;
LABEL_15:
  v20 = v70 == topLeft.row;
  v19 = (*&topLeft ^ v70) & 0x101FFFF00000000;
  v20 = v20 && v19 == 0;
  if (v20 && tableUID == *&v68.range._bottomRight.row)
  {
    tableUID = 0;
    v70 = 0x7FFF7FFFFFFFLL;
  }

  else if (v70 != 0x7FFFFFFF && (v70 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v21 = tableUID;
    if (tableUID != 0uLL && v21 == *objc_msgSend_containingTable(context, a2, context, spec))
    {
      v22 = objc_msgSend_calcEngine(context, a2, context, spec);
      v67.origin = 0;
      v67.size = 0;
      v66 = 0;
      v24 = objc_msgSend_cachedSpillRangeForSpillingOriginCellRef_outError_(v22, v23, &v70, &v66);
      v26 = v25;
      v27 = v66;
      v67.origin = v24;
      v67.size = v26;
      v31 = objc_msgSend_calcEngine(context, v28, v29, v30);
      v38 = objc_msgSend_dependencyTracker(v31, v32, v33, v34);
      if (context)
      {
        objc_msgSend_containingCellRef(context, v35, v36, v37);
      }

      else
      {
        memset(&v68, 0, 24);
      }

      HasThisCellPrecedent_precedent = objc_msgSend_cellHasThisCellPrecedent_precedent_(v38, v35, &v68, &v70);

      v43 = *objc_msgSend_containingCell(context, v40, v41, v42);
      if (TSUCellRect::contains(&v67, v43) & HasThisCellPrecedent_precedent)
      {
        if (v27 && objc_msgSend_errorType(v27, v44, v45, v46) == 7)
        {
          v47 = v27;
        }

        else
        {
          v47 = objc_msgSend_spillFunctionPreserveContentError(TSCEError, v44, v45, v46);

          if (context)
          {
            objc_msgSend_containingCellRef(context, v50, v51, v52);
          }

          else
          {
            memset(&v68, 0, 24);
          }

          v17 = objc_msgSend_errorForCell_(v22, v50, &v68, v52);
          if (objc_msgSend_isCircularReferenceError(v17, v53, v54, v55))
          {
            if (context)
            {
              objc_msgSend_containingCellRef(context, v56, v57, v58);
            }

            else
            {
              memset(&v68, 0, 24);
            }

            if ((objc_msgSend_cellIsInACycle_(v22, v56, &v68, v58) & 1) == 0)
            {
              if (context)
              {
                objc_msgSend_containingCellRef(context, v59, v60, v61);
              }

              else
              {
                memset(&v68, 0, 24);
              }

              objc_msgSend_clearErrorAndWarningsForCell_(v22, v59, &v68, v61);
              objc_msgSend_markCellRefAsDirty_(v22, v62, &v70, v63);
            }
          }
        }
      }

      else
      {
        v47 = objc_msgSend_spillFunctionDeleteFormulaError(TSCEError, v44, v45, v46);

        if ((HasThisCellPrecedent_precedent & 1) == 0)
        {
          objc_msgSend_markCellRefAsDirty_(v22, v48, &v70, v49);
        }
      }

      v17 = v47;
    }
  }

  if (!v17)
  {
    v17 = objc_msgSend_spillFunctionDeleteFormulaError(TSCEError, a2, context, spec);
  }

  v64 = objc_msgSend_errorValue_(TSCEErrorValue, a2, v17, spec);

  return v64;
}

@end