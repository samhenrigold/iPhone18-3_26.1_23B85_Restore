@interface TSCEFunction_COUNTIFS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_COUNTIFS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v69[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, context, spec, 0, 1, v69);
  v11 = v69[0];
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
    goto LABEL_28;
  }

  v17 = objc_msgSend_dimensions(v10, v12, v13, v14);
  if (objc_msgSend_gridKind(v10, v18, v19, v20) != 2)
  {
    goto LABEL_11;
  }

  v68 = 0;
  v22 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v10, v21, context, spec, 0, &v68);
  v15 = v68;
  if (!v15)
  {
    v29 = objc_msgSend_calcEngine(context, v23, v24, v25);
    if (v22)
    {
      objc_msgSend_rangeRef(v22, v26, v27, v28);
    }

    else
    {
      v61 = 0u;
      *v62 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v29, v26, &v61, v28);

    if ((IsWithinTable & 1) == 0)
    {
      v51 = objc_msgSend_invalidReferenceError(TSCEError, v31, v32, v33);
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v52, v51, v53);

      goto LABEL_27;
    }

LABEL_11:
    v67 = 0;
    v34 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v21, context, spec, arguments, v17, 0, 0, &v67);
    v15 = v67;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v35, v15, v36);
      v22 = v34;
    }

    else
    {
      v22 = objc_msgSend_sortCriteriaByCost_(TSCEGridValue, v35, v34, v36);

      contextCopy = context;
      v39 = contextCopy;
      *&v61 = contextCopy;
      *(&v61 + 1) = spec;
      *v62 = 0;
      *&v62[8] = 0;
      v62[12] = 1;
      *&v62[13] = 0;
      v63 = 0;
      v64 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v65 = 0;
      v66 = 0;
      v40 = 0.0;
      v57 = HIDWORD(v17);
      if (HIDWORD(v17))
      {
        v55 = contextCopy;
        v43 = 0;
        v44 = 0;
        v45 = 0;
        v56 = v17;
        while (1)
        {
          v46 = v56;
          v47 = v43;
          if (v56)
          {
            break;
          }

LABEL_20:
          ++v44;
          v43 += 0x100000000;
          if (v44 == v57)
          {
            v39 = v55;
            goto LABEL_14;
          }
        }

        while (1)
        {
          v60 = 0;
          v48 = objc_msgSend_valueAtGridCoordPassesCriteria_coord_criteria_outError_(TSCEGridValue, v38, &v61, v47, v22, &v60, v40);
          v49 = v60;
          if (v49)
          {
            break;
          }

          v45 += v48;
          ++v47;
          if (!--v46)
          {
            goto LABEL_20;
          }
        }

        v15 = v49;
        v16 = objc_msgSend_raiseErrorOrConvert_(v55, v38, v49, v50);
      }

      else
      {
LABEL_14:
        TSUDecimal::operator=();
        if (v10)
        {
          objc_msgSend_formatWithContext_(v10, v41, v39, v42);
        }

        else
        {
          memset(v58, 0, sizeof(v58));
        }

        v16 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v41, v59, v58);
        v15 = 0;
      }
    }

    goto LABEL_27;
  }

  v16 = objc_msgSend_raiseErrorOrConvert_(context, v23, v15, v25);
LABEL_27:

LABEL_28:

  return v16;
}

@end