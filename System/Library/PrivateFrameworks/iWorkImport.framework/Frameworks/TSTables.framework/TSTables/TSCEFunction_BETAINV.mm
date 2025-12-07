@interface TSCEFunction_BETAINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_BETAINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v85[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v85);
  v11 = v85[0];
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
    goto LABEL_25;
  }

  v19 = v17;
  v20 = *(*arguments + 8);
  v84 = 0;
  v78 = v20;
  v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v20, v21, context, spec, 1, &v84);
  v23 = v84;
  objc_msgSend_doubleRepresentation(v22, v24, v25, v26);
  v28 = v27;
  v29 = *(*arguments + 16);
  v83 = v23;
  v31 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v29, v30, context, spec, 2, &v83);
  v11 = v83;

  objc_msgSend_doubleRepresentation(v31, v32, v33, v34);
  if (!v11)
  {
    v38 = v37;
    if (*(arguments + 1) - *arguments < 0x19uLL)
    {
      goto LABEL_19;
    }

    v39 = *(*arguments + 24);
    v44 = 0.0;
    if ((objc_msgSend_isTokenOrEmptyArg(v39, v40, v41, v42) & 1) == 0)
    {
      v77 = v22;
      v82 = 0;
      v45 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v43, context, spec, 3, &v82);
      v11 = v82;
      v76 = v45;
      v46 = v45;
      v22 = v77;
      objc_msgSend_doubleRepresentation(v46, v47, v48, v49);
      if (v11)
      {
        v18 = objc_msgSend_raiseErrorOrConvert_(context, v50, v11, v51);

LABEL_15:
        goto LABEL_24;
      }

      v44 = v52;
    }

    v56 = 1.0;
    if (*(arguments + 1) - *arguments >= 0x21uLL)
    {
      v39 = *(*arguments + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v39, v57, v58, v59) & 1) == 0)
      {
        v81 = 0;
        v61 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v39, v60, context, spec, 4, &v81);
        v11 = v81;
        objc_msgSend_doubleRepresentation(v61, v62, v63, v64);
        if (v11)
        {
          v18 = objc_msgSend_raiseErrorOrConvert_(context, v65, v11, v66);

          goto LABEL_15;
        }

        v56 = v67;
      }
    }

    if (v44 >= v56)
    {
      v71 = objc_msgSend_functionName(spec, v53, v54, v55);
      v73 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v72, v71, 4, 5, 1, 0);
      v18 = objc_msgSend_raiseErrorOrConvert_(context, v74, v73, v75);
    }

    else
    {
LABEL_19:
      pthread_mutex_lock(&stru_27CFB4098);
      sub_221125004(v28, v38, v19);
      pthread_mutex_unlock(&stru_27CFB4098);
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v68, context, v69);
      }

      else
      {
        memset(v79, 0, sizeof(v79));
      }

      v18 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v68, v80, v79);
    }

    v11 = 0;
    goto LABEL_24;
  }

  v18 = objc_msgSend_raiseErrorOrConvert_(context, v35, v11, v36);
LABEL_24:

LABEL_25:

  return v18;
}

@end