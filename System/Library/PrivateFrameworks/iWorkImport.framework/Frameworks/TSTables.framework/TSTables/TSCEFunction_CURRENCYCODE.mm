@interface TSCEFunction_CURRENCYCODE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CURRENCYCODE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  if (*(arguments + 1) == *arguments || (objc_msgSend_isTokenOrEmptyArg(**arguments, a2, context, spec) & 1) != 0)
  {
    v8 = objc_msgSend_nilValue(TSCENilValue, a2, context, spec);
    v9 = sub_22119E890(context, v8);

    objc_msgSend_stringValue_(TSCEStringValue, v10, v9, v11);
    v12 = LABEL_4:;
    goto LABEL_5;
  }

  v14 = **arguments;
  v22 = 0;
  v16 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v14, v15, context, spec, 0, &v22);
  v9 = v22;
  if (!v9)
  {
    v19 = sub_22119E890(context, v16);

    v9 = v19;
    objc_msgSend_stringValue_(TSCEStringValue, v20, v19, v21);
    goto LABEL_4;
  }

  v12 = objc_msgSend_raiseErrorOrConvert_(context, v17, v9, v18);

LABEL_5:

  return v12;
}

@end