@interface TSCEFunction_EFFECT
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_EFFECT

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v45 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v45);
  v11 = v45;
  v15 = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v18 = objc_msgSend_raiseErrorOrConvert_(context, v16, v11, v17);
  }

  else
  {
    v19 = v15;
    v20 = v16;
    v21 = *(*arguments + 8);
    v44 = 0;
    v23 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v21, v22, context, spec, 1, &v44);
    v11 = v44;
    v27 = objc_msgSend_trunc(v23, v24, v25, v26);

    v43._decimal.w[0] = objc_msgSend_decimalRepresentation(v27, v28, v29, v30);
    v43._decimal.w[1] = v31;
    if (v11)
    {
      v33 = objc_msgSend_raiseErrorOrConvert_(context, v31, v11, v32);
    }

    else
    {
      TSUDecimal::operator=();
      *&v39[0] = v19;
      *(&v39[0] + 1) = v20;
      TSUDecimal::operator/=();
      v39[3] = v39[0];
      TSUDecimal::operator+=();
      v41 = v40;
      TSUDecimal::doubleValue(&v41);
      v35 = v34;
      TSUDecimal::doubleValue(&v43);
      pow(v35, v36);
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      v39[0] = v40;
      TSUDecimal::operator-=();
      v42 = v40;
      TSCEFormat::TSCEFormat(v39, 258);
      v33 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v37, &v42, v39);
    }

    v18 = v33;
  }

  return v18;
}

@end