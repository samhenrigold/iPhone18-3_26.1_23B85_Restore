@interface TSCEFunction_CRITBINOM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CRITBINOM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v71 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v71);
  v11 = v71;
  v15 = objc_msgSend_trunc(v10, v12, v13, v14);

  objc_msgSend_doubleRepresentation(v15, v16, v17, v18);
  if (v11)
  {
    v22 = objc_msgSend_raiseErrorOrConvert_(context, v19, v11, v20);
    goto LABEL_25;
  }

  v23 = v21;
  v24 = *(*arguments + 8);
  v70 = 0;
  v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v25, context, spec, 1, &v70);
  v11 = v70;
  objc_msgSend_doubleRepresentation(v26, v27, v28, v29);
  if (v11)
  {
    v22 = objc_msgSend_raiseErrorOrConvert_(context, v30, v11, v31);
    goto LABEL_24;
  }

  v33 = v32;
  v34 = *(*arguments + 16);
  v69 = 0;
  v36 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v35, context, spec, 2, &v69);
  v11 = v69;
  objc_msgSend_doubleRepresentation(v36, v37, v38, v39);
  if (v11)
  {
    v43 = objc_msgSend_raiseErrorOrConvert_(context, v40, v11, v41);
    goto LABEL_23;
  }

  v44 = v42;
  v64 = v36;
  v65 = v34;
  v66 = v24;
  pthread_mutex_lock(&stru_27CFB4098);
  if (v23 < 1)
  {
    v49 = 0;
    v48 = v23;
    goto LABEL_17;
  }

  v45 = 0;
  v46 = v23;
  while (1)
  {
    v47 = v46 - v45;
    v48 = v45 + (v46 - v45) / 2;
    if (sub_22168AAA0(v48, v23, v33) >= v44)
    {
      break;
    }

    v45 = v48 + 1;
LABEL_13:
    v48 = v46;
    v49 = v45;
    if (v46 <= v45)
    {
      goto LABEL_17;
    }
  }

  if (v47 >= 2)
  {
    v46 = v48 - 1;
    v49 = v45 + v47 / 2;
    if (sub_22168AAA0(v48 - 1, v23, v33) < v44)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v49 = v45 + v47 / 2;
LABEL_17:
  pthread_mutex_unlock(&stru_27CFB4098);
  if (v49 != v48)
  {
    v52 = MEMORY[0x277D81150];
    v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "+[TSCEFunction_CRITBINOM evaluateForArgsWithContext:functionSpec:arguments:]", v51);
    v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEStatisticalFunctions.mm", v55);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v52, v57, v53, v56, 1956, 0, "CRITBINOM binary search has a bug.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v58, v59, v60);
  }

  TSUDecimal::operator=();
  v34 = v65;
  v24 = v66;
  v36 = v64;
  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v61, context, v62);
  }

  else
  {
    memset(v67, 0, sizeof(v67));
  }

  v43 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v61, v68, v67);
LABEL_23:
  v22 = v43;

LABEL_24:
LABEL_25:

  return v22;
}

@end