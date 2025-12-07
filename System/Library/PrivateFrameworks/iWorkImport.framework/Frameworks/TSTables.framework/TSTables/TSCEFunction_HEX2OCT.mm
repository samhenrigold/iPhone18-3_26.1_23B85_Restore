@interface TSCEFunction_HEX2OCT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_HEX2OCT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v37 = 0;
  v10 = objc_msgSend_asString_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v37);
  v11 = v37;
  if (v11)
  {
    v14 = v11;
    v15 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v13);
  }

  else
  {
    if (*(arguments + 1) - *arguments < 9uLL)
    {
      v21 = 0;
    }

    else
    {
      v16 = *(*arguments + 8);
      if (objc_msgSend_isTokenOrEmptyArg(v16, v17, v18, v19))
      {
        v21 = 0;
      }

      else
      {
        v36 = 0;
        v22 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v16, v20, context, spec, 1, &v36);
        v14 = v36;
        v26 = objc_msgSend_trunc(v22, v23, v24, v25);

        if (v14)
        {
          v30 = objc_msgSend_raiseErrorOrConvert_(context, v27, v14, v29);

          goto LABEL_13;
        }

        v35._decimal.w[0] = objc_msgSend_decimalRepresentation(v26, v27, v28, v29);
        v35._decimal.w[1] = v31;
        v21 = TSUDecimal::truncateWithRounding(&v35);
      }
    }

    v32 = objc_alloc(MEMORY[0x277D80620]);
    v14 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v32, v33, 8, v21, 0);
    v15 = sub_2211F78B4(context, spec, v10, 16, 1, v14);
  }

  v30 = v15;
LABEL_13:

  return v30;
}

@end