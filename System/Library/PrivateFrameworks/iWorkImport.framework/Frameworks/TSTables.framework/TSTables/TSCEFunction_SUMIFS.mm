@interface TSCEFunction_SUMIFS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SUMIFS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v100[0] = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, context, spec, 0, 1, v100);
  v11 = v100[0];
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
    goto LABEL_38;
  }

  v16 = objc_alloc_init(TSCESumAccumulator);
  if (objc_msgSend_gridKind(v10, v17, v18, v19) != 2)
  {
    goto LABEL_11;
  }

  v99 = 0;
  v23 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v10, v20, context, spec, 0, &v99);
  v14 = v99;
  if (!v14)
  {
    v31 = objc_msgSend_calcEngine(context, v24, v25, v26);
    if (v23)
    {
      objc_msgSend_rangeRef(v23, v28, v29, v30);
    }

    else
    {
      v92 = 0u;
      *v93 = 0u;
    }

    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v31, v28, &v92, v30);

    if ((IsWithinTable & 1) == 0)
    {
      v51 = objc_msgSend_invalidReferenceError(TSCEError, v33, v34, v35);
      v15 = objc_msgSend_raiseErrorOrConvert_(context, v63, v51, v64);
LABEL_36:

      goto LABEL_37;
    }

LABEL_11:
    v36 = objc_msgSend_dimensions(v10, v20, v21, v22);
    v98 = 0;
    v23 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v37, context, spec, arguments, v36, 1, 0, &v98);
    v38 = v98;
    if (v38)
    {
      v14 = v38;
      v27 = objc_msgSend_raiseErrorOrConvert_(context, v39, v38, v40);
      goto LABEL_13;
    }

    v86 = v16;
    v87 = objc_msgSend_sortCriteriaByCost_(TSCEGridValue, v39, v23, v40);
    contextCopy = context;
    *&v92 = contextCopy;
    *(&v92 + 1) = spec;
    *v93 = 0;
    *&v93[8] = 0;
    v93[12] = 1;
    *&v93[13] = 0;
    v94 = 0;
    v95 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v96 = 0;
    v97 = 0;
    v85 = HIDWORD(v36);
    if (!HIDWORD(v36))
    {
LABEL_15:
      v16 = v86;
      if ((objc_msgSend_foundANumber(v86, v41, v42, v43) & 1) == 0)
      {
        v48 = objc_msgSend_dateAccumulator(v86, v45, v46, v47);

        if (!v48 && v85 && v36)
        {
          v68 = objc_msgSend_valueAtGridCoord_accessContext_(v10, v45, 0, &v92);
          if ((objc_msgSend_deepType_(v68, v69, contextCopy, v70) & 0xFFFFFFFE) == 4)
          {
            v90 = 0;
            v72 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v68, v71, contextCopy, spec, 0, &v90);
            v14 = v90;
            v76 = objc_msgSend_unit(v72, v73, v74, v75);

            if (v14)
            {
              v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v77, v14, v79);

LABEL_31:
              v51 = v87;
LABEL_35:

              goto LABEL_36;
            }

            v80 = objc_msgSend_numberAccumulator(v86, v77, v78, v79);
            objc_msgSend_setUnit_(v80, v81, v76, v82);
          }
        }
      }

      v15 = objc_msgSend_resultForFunction_(v86, v45, spec, v47);
      v51 = v87;
      if (v10)
      {
        objc_msgSend_formatWithContext_(v10, v49, contextCopy, v50);
      }

      else
      {
        memset(&v88, 0, sizeof(v88));
      }

      TSCEFormat::TSCEFormat(&v89, &v88);
      objc_msgSend_setFormat_(v15, v65, &v89, v66);
      v14 = 0;
      goto LABEL_35;
    }

    v52 = 0;
    v53 = 0;
    v83 = v36;
    v84 = v36;
    while (1)
    {
      v54 = v36;
      v55 = v84;
      v56 = v52;
      if (v54)
      {
        break;
      }

LABEL_28:
      ++v53;
      v52 += 0x100000000;
      LODWORD(v36) = v83;
      if (v53 == v85)
      {
        goto LABEL_15;
      }
    }

    while (1)
    {
      v91 = 0;
      v57 = objc_msgSend_valueAtGridCoordPassesCriteria_coord_criteria_outError_(TSCEGridValue, v41, &v92, v56, v87, &v91);
      v14 = v91;
      if (v57)
      {
        v58 = objc_msgSend_valueAtGridCoord_accessContext_(v10, v41, v56, &v92);
        v61 = objc_msgSend_deepType_(v58, v59, contextCopy, v60);
        if (v61 == 5 || v61 == 3)
        {
          objc_msgSend_addValue_evaluationContext_functionSpec_(v86, v62, v58, contextCopy, spec);
        }
      }

      if (v14)
      {
        break;
      }

      ++v56;
      if (!--v55)
      {
        goto LABEL_28;
      }
    }

    v15 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v41, v14, v43);
    v16 = v86;
    goto LABEL_31;
  }

  v27 = objc_msgSend_raiseErrorOrConvert_(context, v24, v14, v26);
LABEL_13:
  v15 = v27;
LABEL_37:

LABEL_38:

  return v15;
}

@end