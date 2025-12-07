@interface TSCEFunction_GETPIVOTDATA
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_GETPIVOTDATA

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = objc_msgSend_calcEngine(context, a2, context, spec);
  v9 = *(*arguments + 8);
  if (!objc_msgSend_isReferenceValue(v9, v10, v11, v12))
  {
    v22 = 0;
LABEL_11:
    v89 = objc_msgSend_functionName(spec, v13, v14, v15);
    v90 = objc_msgSend_missingPivotTableErrorForFunctionName_argumentNumber_(TSCEError, v33, v89, 2);
    v36 = objc_msgSend_raiseErrorOrConvert_(context, v34, v90, v35);
LABEL_12:
    v37 = v36;
    v38 = 0;
LABEL_13:
    v39 = 0;
    goto LABEL_14;
  }

  v16 = objc_msgSend_asReferenceValue(v9, v13, v14, v15);
  v93[0] = objc_msgSend_tableUID(v16, v17, v18, v19);
  v93[1] = v20;
  v22 = objc_msgSend_tableResolverForTableUID_(v8, v20, v93, v21);

  if (!v22 || (objc_msgSend_isPivotTable(v22, v13, v14, v15) & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = *(arguments + 1) - *arguments;
  v24 = v23 >> 3;
  if ((v23 >> 3) >= 3)
  {
    v25 = (v23 >> 3) & 0x7FFFFFFF;
    while (1)
    {
      v26 = *(*arguments + 8 * v25 - 8);
      if ((objc_msgSend_isNil(v26, v27, v28, v29) & 1) == 0 && (objc_msgSend_isTokenOrEmptyArg(v26, v30, v31, v32) & 1) == 0)
      {
        break;
      }

      --v25;

      if ((v25 + 1) <= 3)
      {
        goto LABEL_18;
      }
    }

LABEL_18:
    LODWORD(v24) = v25;
  }

  if (v24)
  {
    v89 = objc_msgSend_functionName(spec, v13, v14, v15);
    v90 = objc_msgSend_invalidArgumentPairingsErrorForFunctionName_hasInitialUnrelatedArgument_(TSCEError, v46, v89, 0);
    v36 = objc_msgSend_raiseErrorOrConvert_(context, v47, v90, v48);
    goto LABEL_12;
  }

  v41 = **arguments;
  v92 = 0;
  v89 = v41;
  v90 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v41, v42, context, spec, 0, &v92);
  v43 = v92;
  if (v43)
  {
    v38 = v43;
    v37 = objc_msgSend_raiseErrorOrConvert_(context, v44, v43, v45);
    goto LABEL_13;
  }

  v84 = v22;
  v85 = v9;
  v86 = v8;
  v88 = objc_opt_new();
  objc_msgSend_setAggregateFieldName_(v88, v49, v90, v50);
  if (v24 >> 1 < 2)
  {
LABEL_29:
    v22 = v84;
    v39 = objc_msgSend_solveGetPivotData_functionSpec_context_(v84, v51, v88, spec, context);
    v9 = v85;
    v8 = v86;
    if (objc_msgSend_isError(v39, v68, v69, v70) && (MissingDataField = objc_msgSend_firstMissingDataField(v88, v71, v72, v73), v78 = MissingDataField, MissingDataField != 0x7FFFFFFFFFFFFFFFLL))
    {
      v79 = objc_msgSend_functionName(spec, v75, v76, v77);
      v81 = objc_msgSend_invalidGroupingColumnErrorForFunctionName_argumentNumber_(TSCEError, v80, v79, (2 * v78 + 3));
      v37 = objc_msgSend_raiseErrorOrConvert_(context, v82, v81, v83);

      v38 = 0;
    }

    else
    {
      v39 = v39;
      v38 = 0;
      v37 = v39;
    }
  }

  else
  {
    v52 = 0;
    v87 = 2 * (v24 >> 1) - 2;
    while (1)
    {
      v53 = *(*arguments + 8 * v52 + 16);
      v91 = 0;
      v55 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v53, v54, context, spec, (v52 + 2), &v91);
      v38 = v91;
      if (v38)
      {
        break;
      }

      v58 = *(*arguments + 8 * v52 + 24);
      if (objc_msgSend_isReferenceValue(v58, v59, v60, v61))
      {
        v65 = objc_msgSend_asReferenceValue(v58, v62, v63, v64);
        v67 = objc_msgSend_referredToValue_fetchRichTextAttributesIfPlainText_(v65, v66, context, 0);

        v58 = v67;
      }

      objc_msgSend_addDataField_withValue_(v88, v62, v55, v58);

      v52 += 2;
      if (v87 == v52)
      {
        goto LABEL_29;
      }
    }

    v37 = objc_msgSend_raiseErrorOrConvert_(context, v56, v38, v57);

    v39 = 0;
    v9 = v85;
    v8 = v86;
    v22 = v84;
  }

LABEL_14:

  return v37;
}

@end