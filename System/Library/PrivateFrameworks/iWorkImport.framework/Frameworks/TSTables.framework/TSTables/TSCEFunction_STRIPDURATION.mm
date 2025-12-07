@interface TSCEFunction_STRIPDURATION
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_STRIPDURATION

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  if (objc_msgSend_deepType_(v7, v8, context, v9) == 5 || objc_msgSend_deepType_(v7, v10, context, v11) == 7)
  {
    v26 = 0;
    v12 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v10, context, spec, 0, &v26);
    v16 = v26;
    if (!v16 && objc_msgSend_isDuration(v12, v13, v14, v15))
    {
      objc_msgSend_rawTimeIntervalValue(v12, v17, v18, v19);
      TSUDecimal::operator=();
      if (v7)
      {
        objc_msgSend_formatWithContext_(v7, v20, context, v21);
      }

      else
      {
        memset(v24, 0, sizeof(v24));
      }

      v22 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v20, v25, v24);
      goto LABEL_10;
    }
  }

  else
  {
    v16 = 0;
  }

  v22 = v7;
  v12 = v16;
LABEL_10:

  return v22;
}

@end