@interface TSCEFunction_RANK_AVG
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_RANK_AVG

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v9 = *(*arguments + 8);
  v42 = 0;
  v11 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, v10, context, spec, 1, 0, &v42);
  v12 = v42;
  if (v12)
  {
    v15 = v12;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v12, v14);
LABEL_9:
    v26 = v16;
    goto LABEL_10;
  }

  if (*(arguments + 1) - *arguments < 0x11uLL)
  {
    goto LABEL_6;
  }

  v17 = *(*arguments + 16);
  if (objc_msgSend_isTokenOrEmptyArg(v17, v18, v19, v20))
  {

LABEL_6:
    v22 = 1;
    goto LABEL_7;
  }

  v41 = 0;
  v30 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v17, v21, context, spec, 2, &v41);
  v15 = v41;
  if (!v15)
  {
    v34 = objc_msgSend_zero(TSCENumberValue, v31, v32, v33);
    v40 = 0;
    v22 = objc_msgSend_eq_outError_(v30, v35, v34, &v40);
    v15 = v40;

    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v13, v15, v36);
      goto LABEL_9;
    }

LABEL_7:
    v39 = 0;
    objc_msgSend_computeRankWithVector_functionSpec_vector_numberToRankValue_rankDescending_returnAverage_outError_(TSCEFunction_RANK, v13, context, spec, v11, v8, v22, 1, &v39);
    v23 = v39;
    if (!v23)
    {
      TSUDecimal::operator=();
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v28, context, v29);
      }

      else
      {
        memset(v37, 0, sizeof(v37));
      }

      v26 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v28, v38, v37);
      v15 = 0;
      goto LABEL_10;
    }

    v15 = v23;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v24, v23, v25);
    goto LABEL_9;
  }

  v26 = objc_msgSend_raiseErrorOrConvert_(context, v31, v15, v33);

LABEL_10:

  return v26;
}

@end