@interface TSCEFunction_ERF
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ERF

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v48[0] = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, v48);
  v11 = v48[0];
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
    goto LABEL_12;
  }

  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v12, context, v14);
  }

  else
  {
    memset(&v47, 0, sizeof(v47));
  }

  v17 = objc_msgSend_erf(v10, v12, v13, v14);
  if (*(arguments + 1) - *arguments < 9uLL)
  {
    goto LABEL_9;
  }

  v18 = *(*arguments + 8);
  if (objc_msgSend_isTokenOrEmptyArg(v18, v19, v20, v21))
  {

LABEL_9:
    v23 = v17;
    goto LABEL_10;
  }

  v46 = 0;
  v27 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v22, context, spec, 1, &v46);
  v15 = v46;
  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v28, v15, v30);

    goto LABEL_11;
  }

  if (v8)
  {
    objc_msgSend_formatWithContext_(v8, v28, context, v30);
  }

  else
  {
    memset(&v44, 0, sizeof(v44));
  }

  if (v18)
  {
    objc_msgSend_formatWithContext_(v18, v28, context, v30);
  }

  else
  {
    memset(&v43, 0, sizeof(v43));
  }

  TSCEFormat::formatByMergingWithFormat(&v45, &v44, &v43, v29, v30);
  TSCEFormat::operator=(&v47, &v45);
  v34 = objc_msgSend_erf(v27, v31, v32, v33);
  v38 = objc_msgSend_erf(v10, v35, v36, v37);
  v42 = 0;
  v23 = objc_msgSend_subtract_functionSpec_outError_(v34, v39, v38, spec, &v42);
  v15 = v42;

  if (v15)
  {
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v40, v15, v41);
    v17 = v23;
    goto LABEL_11;
  }

LABEL_10:
  TSCEFormat::TSCEFormat(&v45, &v47);
  objc_msgSend_setFormat_(v23, v24, &v45, v25);
  v17 = v23;
  v15 = 0;
  v16 = v17;
LABEL_11:

LABEL_12:

  return v16;
}

@end