@interface TSCEFunction_SQRT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_SQRT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v23 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v23);
  v13 = v23;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    if (objc_msgSend_isDuration(v9, v10, v11, v12))
    {
      objc_msgSend_reportLossOfUnitsWarningInContext_(TSCEWarning, v15, context, v17);
    }

    v14 = objc_msgSend_sqrt(v9, v15, v16, v17);
    v21._tskFormat = 0;
    v21._formatType = 0;
    v21._formatState = 0;
    *&v21._durationFormat = 1057;
    *(&v21._durationFormat + 2) = 1;
    *&v21._baseFormat.base = -50266102;
    v21._numberFormat = 253;
    TSCEFormat::TSCEFormat(&v22, &v21);
    objc_msgSend_setFormat_(v14, v18, &v22, v19);
  }

  return v14;
}

@end