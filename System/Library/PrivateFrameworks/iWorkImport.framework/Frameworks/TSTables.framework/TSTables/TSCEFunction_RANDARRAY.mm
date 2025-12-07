@interface TSCEFunction_RANDARRAY
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RANDARRAY

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = *arguments;
  v9 = *(arguments + 1);
  if (v9 != *arguments)
  {
    v10 = *v8;
    if (objc_msgSend_isTokenOrEmptyArg(v10, v11, v12, v13))
    {
      v15 = 1;
LABEL_4:

      v8 = *arguments;
      v9 = *(arguments + 1);
      goto LABEL_6;
    }

    v114 = 0;
    v35 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v10, v14, context, spec, 0, &v114);
    v32 = v114;
    if (v32)
    {
      v39 = objc_msgSend_raiseErrorOrConvert_(context, v36, v32, v38);
    }

    else
    {
      v113._decimal.w[0] = objc_msgSend_decimalRepresentation(v35, v36, v37, v38);
      v113._decimal.w[1] = v43;
      v44 = TSUDecimal::truncatedIntegerValue(&v113);
      v15 = v44;
      if (v44 > 0)
      {

        goto LABEL_4;
      }

      v53 = objc_msgSend_emptyArrayError(TSCEError, v45, v46, v47);
      v39 = objc_msgSend_raiseErrorOrConvert_(context, v54, v53, v55);
    }

    goto LABEL_53;
  }

  v15 = 1;
LABEL_6:
  v16 = 0.0;
  v17 = 1.0;
  if ((v9 - v8) < 9)
  {
    v34 = 0;
    v23 = 1;
    goto LABEL_46;
  }

  v18 = v8[1];
  if (objc_msgSend_isTokenOrEmptyArg(v18, v19, v20, v21))
  {
    v23 = 1;
  }

  else
  {
    v112 = 0;
    v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v22, context, spec, 1, &v112);
    v32 = v112;
    if (v32)
    {
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v40, v32, v42);
      goto LABEL_19;
    }

    v113._decimal.w[0] = objc_msgSend_decimalRepresentation(v28, v40, v41, v42);
    v113._decimal.w[1] = v48;
    v49 = TSUDecimal::truncatedIntegerValue(&v113);
    v23 = v49;
    if (v49 <= 0)
    {
      v56 = objc_msgSend_emptyArrayError(TSCEError, v50, v51, v52);
      v39 = objc_msgSend_raiseErrorOrConvert_(context, v57, v56, v58);

      goto LABEL_20;
    }
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    goto LABEL_45;
  }

  v18 = *(*arguments + 16);
  if ((objc_msgSend_isTokenOrEmptyArg(v18, v24, v25, v26) & 1) == 0)
  {
    v111 = 0;
    v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v27, context, spec, 2, &v111);
    v32 = v111;
    if (v32)
    {
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v29, v32, v31);
LABEL_19:
      v39 = v33;
LABEL_20:

      goto LABEL_53;
    }

    v113._decimal.w[0] = objc_msgSend_decimalRepresentation(v28, v29, v30, v31);
    v113._decimal.w[1] = v59;
    TSUDecimal::doubleValue(&v113);
    v16 = v60;
  }

  if (*(arguments + 1) - *arguments >= 0x19uLL)
  {
    v18 = *(*arguments + 24);
    if ((objc_msgSend_isTokenOrEmptyArg(v18, v64, v65, v66) & 1) == 0)
    {
      v110 = 0;
      v28 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v67, context, spec, 3, &v110);
      v32 = v110;
      if (v32)
      {
        v33 = objc_msgSend_raiseErrorOrConvert_(context, v68, v32, v70);
        goto LABEL_19;
      }

      v113._decimal.w[0] = objc_msgSend_decimalRepresentation(v28, v68, v69, v70);
      v113._decimal.w[1] = v71;
      TSUDecimal::doubleValue(&v113);
      v17 = v72;
    }

    if (*(arguments + 1) - *arguments >= 0x21uLL)
    {
      v73 = *(*arguments + 32);
      if ((objc_msgSend_isTokenOrEmptyArg(v73, v74, v75, v76) & 1) == 0)
      {
        v109 = 0;
        v78 = objc_msgSend_asBoolean_functionSpec_argumentIndex_outError_(v73, v77, context, spec, 4, &v109);
        v79 = v109;
        if (v79)
        {
          v32 = v79;
          v39 = objc_msgSend_raiseErrorOrConvert_(context, v80, v79, v81);

          goto LABEL_53;
        }

        if (v16 > v17)
        {
          goto LABEL_44;
        }

        if (v78)
        {
          if (v16 != v17 && trunc(v16) == trunc(v17))
          {
            goto LABEL_44;
          }

          TSUDecimal::operator=();
          TSUDecimal::ceiling(&v113);
          TSUDecimal::doubleValue(&v113);
          v16 = v105;
          TSUDecimal::operator=();
          TSUDecimal::floor(&v113);
          TSUDecimal::doubleValue(&v113);
          v17 = v106;
          v34 = 1;
LABEL_46:
          v32 = objc_opt_new();
          v90 = objc_msgSend_randGenerator(context, v87, v88, v89, 0, __PAIR64__(v15, v23));
          do
          {
            TSCERandGenerator::randWithMinMax(v90, v16, v17);
            TSUDecimal::operator=();
            v93 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v91, &v113, v92);
            v97 = v93;
            if (v34)
            {
              v98 = objc_msgSend_floor(v93, v94, v95, v96);

              v97 = v98;
            }

            objc_msgSend_setValue_atCoord_(v32, v94, v97, &v107);
            v107 = TSCEGridDimensions::nextCoordRowMajorOrder(&v108, &v107);
          }

          while (v107 != 0x7FFFFFFF && HIDWORD(v107) != 0x7FFFFFFF);
          v99 = [TSCEDenseGrid alloc];
          v83 = objc_msgSend_initWithValueGrid_(v99, v100, v32, v101);
          v86 = objc_msgSend_gridValue_(TSCEGridValue, v102, v83, v103);
          goto LABEL_52;
        }

LABEL_45:
        v34 = 0;
        goto LABEL_46;
      }
    }
  }

  if (v16 <= v17)
  {
    goto LABEL_45;
  }

LABEL_44:
  v32 = objc_msgSend_functionName(spec, v61, v62, v63);
  v83 = objc_msgSend_invalidArgumentRelationshipErrorForFunctionName_argIndex1_argIndex2_argsAscending_equalityPermitted_(TSCEError, v82, v32, 3, 4, 1, 0);
  v86 = objc_msgSend_raiseErrorOrConvert_(context, v84, v83, v85);
LABEL_52:
  v39 = v86;

LABEL_53:

  return v39;
}

@end