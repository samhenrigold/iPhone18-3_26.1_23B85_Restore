@interface TSCEFunction_BETADIST
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BETADIST

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v98[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v98);
  v11 = v98[0];
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
    goto LABEL_36;
  }

  v19 = v17;
  v20 = *(*arguments + 8);
  v97 = 0;
  v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v97);
  v11 = v97;
  objc_msgSend_doubleRepresentation(v22, v23, v24, v25);
  if (!v11)
  {
    v29 = v28;
    v30 = *(*arguments + 16);
    v96 = 0;
    v32 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v30, v31, context, spec, 2, &v96);
    v11 = v96;
    objc_msgSend_doubleRepresentation(v32, v33, v34, v35);
    if (v11)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v36, v11, v38);
LABEL_34:

      goto LABEL_35;
    }

    v40 = v39;
    if (*(arguments + 1) - *arguments < 0x19uLL || (objc_msgSend_isTokenOrEmptyArg(*(*arguments + 24), v36, v37, v38) & 1) != 0)
    {
      v41 = 0.0;
      if (v19 < 0.0)
      {
        v42 = objc_msgSend_functionName(spec, v36, v37, v38);
        v44 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_lowerBound_lowerBoundInclusive_(TSCEError, v43, 1, v42, 1, 0.0);
        v47 = objc_msgSend_raiseErrorOrConvert_(context, v45, v44, v46);
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v91 = v30;
    v48 = *(*arguments + 24);
    v95 = 0;
    v90 = v48;
    v50 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v48, v49, context, spec, 3, &v95);
    v11 = v95;
    v88 = v50;
    v51 = v50;
    v30 = v91;
    objc_msgSend_doubleRepresentation(v51, v52, v53, v54);
    if (v11)
    {
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v55, v11, v57);
    }

    else
    {
      v41 = v58;
      if (v19 >= v58)
      {

LABEL_17:
        if (*(arguments + 1) - *arguments < 0x21uLL || (objc_msgSend_isTokenOrEmptyArg(*(*arguments + 32), v36, v37, v38) & 1) != 0)
        {
          v64 = 1.0;
          if (v19 > 1.0)
          {
            v42 = objc_msgSend_functionName(spec, v36, v37, v38);
            v44 = objc_msgSend_outOfBoundsArgumentErrorForArgument_functionName_upperBound_upperBoundInclusive_(TSCEError, v65, 1, v42, 1, 1.0);
            v47 = objc_msgSend_raiseErrorOrConvert_(context, v66, v44, v67);
            goto LABEL_32;
          }

          goto LABEL_28;
        }

        v68 = *(*arguments + 32);
        v94 = 0;
        v90 = v68;
        v70 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v68, v69, context, spec, 4, &v94);
        v11 = v94;
        objc_msgSend_doubleRepresentation(v70, v71, v72, v73);
        if (v11)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v74, v11, v76);
        }

        else
        {
          v64 = v77;
          if (v19 <= v77)
          {

LABEL_28:
            if (v41 < v64)
            {
              pthread_mutex_lock(&stru_27CFB4098);
              sub_2213CD100(v29, v40, (v19 - v41) / (v64 - v41));
              pthread_mutex_unlock(&stru_27CFB4098);
              TSUDecimal::operator=();
              if (v8)
              {
                objc_msgSend_formatWithContext_(v8, v82, context, v83);
              }

              else
              {
                memset(v92, 0, sizeof(v92));
              }

              v18 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v82, v93, v92);
              goto LABEL_33;
            }

            v42 = objc_msgSend_functionName(spec, v36, v37, v38);
            v44 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v84, v42, 4, 5, 1, 0);
            v47 = objc_msgSend_raiseErrorOrConvert_(context, v85, v44, v86);
LABEL_32:
            v18 = v47;

LABEL_33:
            v11 = 0;
            goto LABEL_34;
          }

          v89 = objc_msgSend_functionName(spec, v74, v75, v76);
          v79 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v78, v89, 1, 5, 1, 1);
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v80, v79, v81);
        }

LABEL_26:
        goto LABEL_34;
      }

      v59 = objc_msgSend_functionName(spec, v55, v56, v57);
      v61 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v60, v59, 1, 4, 0, 1);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v62, v61, v63);
    }

    goto LABEL_26;
  }

  v18 = objc_msgSend_raiseErrorOrConvert_(context, v26, v11, v27);
LABEL_35:

LABEL_36:

  return v18;
}

@end