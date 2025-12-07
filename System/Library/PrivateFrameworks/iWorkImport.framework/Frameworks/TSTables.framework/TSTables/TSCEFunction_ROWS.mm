@interface TSCEFunction_ROWS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ROWS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = *arguments;
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    v16 = 0;
  }

  else
  {
    v9 = v7[1];
    if ((objc_msgSend_isTokenOrEmptyArg(v9, v10, v11, v12) & 1) != 0 || objc_msgSend_deepType_(v9, v13, context, v14) == 10)
    {
      v16 = 0;
    }

    else
    {
      v121 = 0;
      v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v9, v15, context, spec, 1, &v121);
      v27 = v121;
      if (v27)
      {
        v36 = objc_msgSend_raiseErrorOrConvert_(context, v37, v27, v39);
        goto LABEL_43;
      }

      v16 = objc_msgSend_integer(v23, v37, v38, v39) == 1;
    }

    v7 = *arguments;
  }

  v9 = *v7;
  v20 = objc_msgSend_nativeType(v9, v17, v18, v19);
  if (v20 == 9)
  {
    v23 = objc_msgSend_errorWithContext_(v9, v21, context, v22);
    if (v23)
    {
      v31 = objc_msgSend_raiseErrorOrConvert_(context, v28, v23, v30);
      v27 = 0;
      goto LABEL_44;
    }

    v27 = 0;
    goto LABEL_42;
  }

  if (v20 == 6)
  {
    v120 = 0;
    v23 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v9, v21, context, spec, 0, &v120);
    v27 = v120;
    if (v23)
    {
      objc_msgSend_rangeRef(v23, v24, v25, v26);
    }

    else
    {
      memset(&v119, 0, sizeof(v119));
    }

    v40 = objc_msgSend_calcEngine(context, v24, v25, v26);
    IsWithinTable = objc_msgSend_rangeIsWithinTable_(v40, v41, &v119, v42);

    if (IsWithinTable)
    {
      v47 = [TSCECellTractRef alloc];
      v51 = objc_msgSend_tractRef(v23, v48, v49, v50);
      v54 = objc_msgSend_initWithCppCellTractRef_(v47, v52, v51, v53);
      v58 = v54;
      if (v16)
      {
        v59 = objc_msgSend_calcEngine(context, v55, v56, v57);
        objc_msgSend_rowHeightInBodyOfTable_(v59, v60, v58, v61);
      }

      else
      {
        if (!objc_msgSend_spansAllRows(v54, v55, v56, v57))
        {
          objc_msgSend_numRows(v58, v70, v71, v72);
LABEL_40:

          goto LABEL_41;
        }

        v73 = objc_msgSend_calcEngine(context, v70, v71, v72);
        v118[0] = objc_msgSend_tableUID(v58, v74, v75, v76);
        v118[1] = v77;
        v59 = objc_msgSend_tableResolverForTableUID_(v73, v77, v118, v78);

        if (v59)
        {
          objc_msgSend_tableRangeCoordinate(v59, v79, v80, v81);
        }
      }

      goto LABEL_40;
    }

    v62 = objc_msgSend_invalidReferenceError(TSCEError, v44, v45, v46);
    v65 = objc_msgSend_raiseErrorOrConvert_(context, v63, v62, v64);
    goto LABEL_22;
  }

  v117 = 0;
  v23 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v21, context, spec, 0, 0, &v117);
  v32 = v117;
  if (!v32)
  {
    v66 = objc_msgSend_gridKind(v23, v33, v34, v35);
    if (v66 == 2)
    {
      v116 = 0;
      v62 = objc_msgSend_asReference_functionSpec_argumentIndex_outError_(v23, v67, context, spec, 0, &v116);
      v27 = v116;
      if (v27)
      {
        v65 = objc_msgSend_raiseErrorOrConvert_(context, v82, v27, v84);
LABEL_22:
        v31 = v65;
LABEL_23:

        goto LABEL_44;
      }

      if (v62)
      {
        objc_msgSend_rangeRef(v62, v82, v83, v84);
      }

      else
      {
        memset(&v119, 0, sizeof(v119));
      }

      v92 = objc_msgSend_calcEngine(context, v82, v83, v84);
      v95 = objc_msgSend_rangeIsWithinTable_(v92, v93, &v119, v94);

      if (v95)
      {
        if (v16)
        {
          v99 = [TSCECellTractRef alloc];
          v103 = objc_msgSend_tractRef(v62, v100, v101, v102);
          v106 = objc_msgSend_initWithCppCellTractRef_(v99, v104, v103, v105);
          v110 = objc_msgSend_calcEngine(context, v107, v108, v109);
          objc_msgSend_rowHeightInBodyOfTable_(v110, v111, v106, v112);
        }

        else
        {
          objc_msgSend_dimensions(v23, v96, v97, v98);
        }

        v27 = 0;
        goto LABEL_41;
      }

      v113 = objc_msgSend_invalidReferenceError(TSCEError, v96, v97, v98);
      v31 = objc_msgSend_raiseErrorOrConvert_(context, v114, v113, v115);
    }

    else
    {
      if (v66 != 1 || objc_msgSend_count(v23, v67, v68, v69) == 1)
      {
        v27 = 0;
        objc_msgSend_dimensions(v23, v67, v68, v69);
LABEL_41:

LABEL_42:
        v87 = MEMORY[0x277D80680];
        v88 = objc_msgSend_locale(context, v28, v29, v30);
        v23 = objc_msgSend_defaultFormatWithFormatType_locale_(v87, v89, 256, v88);

        TSUDecimal::operator=();
        TSCEFormat::TSCEFormat(&v119, v23, 0);
        v36 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v90, v118, &v119);
        goto LABEL_43;
      }

      v62 = objc_msgSend_argumentSetUsedOutOfContextError(TSCEError, v67, v68, v69);
      v31 = objc_msgSend_raiseErrorOrConvert_(context, v85, v62, v86);
    }

    v27 = 0;
    goto LABEL_23;
  }

  v27 = v32;
  v36 = objc_msgSend_raiseErrorOrConvert_(context, v33, v32, v35);
LABEL_43:
  v31 = v36;
LABEL_44:

  return v31;
}

@end