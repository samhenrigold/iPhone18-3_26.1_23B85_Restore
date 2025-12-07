@interface TSCEFunction_op_GE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_GE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v10 = *(*arguments + 8);
  v14 = objc_msgSend_checkType_right_context_(self, v11, v9, v10, context);
  if (!v14)
  {
    if (objc_msgSend_deepType_(v9, v12, context, v13) == 7 && objc_msgSend_deepType_(v10, v16, context, v17) == 7)
    {
      v31 = 0;
      v18 = objc_msgSend_asString_outError_(v9, v16, context, &v31);
      v19 = v31;
      v30 = v19;
      v21 = objc_msgSend_asString_outError_(v10, v20, context, &v30);
      v14 = v30;

      v24 = objc_msgSend_caseInsensitiveCompare_(v18, v22, v21, v23);
      if (!v14)
      {
LABEL_6:
        v27 = objc_msgSend_BOOLValue_(TSCEBooleanValue, v25, v24 != -1, v26);
        goto LABEL_10;
      }
    }

    else
    {
      v29 = 0;
      v24 = objc_msgSend_compareValuesWithContextLeft_right_context_functionSpec_outError_(TSCEValue, v16, v9, v10, context, spec, &v29);
      v14 = v29;
      if (!v14)
      {
        goto LABEL_6;
      }
    }

    v15 = objc_msgSend_raiseErrorOrConvert_(context, v25, v14, v26);
    goto LABEL_9;
  }

  v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v14, v13);
LABEL_9:
  v27 = v15;

LABEL_10:

  return v27;
}

@end