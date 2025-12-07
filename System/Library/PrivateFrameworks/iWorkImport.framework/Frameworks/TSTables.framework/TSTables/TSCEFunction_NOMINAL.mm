@interface TSCEFunction_NOMINAL
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NOMINAL

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v43 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v43);
  v11 = v43;
  v42[1] = objc_msgSend_decimalRepresentation(v10, v12, v13, v14);
  v42[2] = v15;
  if (v11)
  {
    v17 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v16);
  }

  else
  {
    v18 = *(*arguments + 8);
    v42[0] = 0;
    v20 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v18, v19, context, spec, 1, v42);
    v11 = v42[0];
    v24 = objc_msgSend_trunc(v20, v21, v22, v23);

    *&v41 = objc_msgSend_decimalRepresentation(v24, v25, v26, v27);
    *(&v41 + 1) = v28;
    if (v11)
    {
      v30 = objc_msgSend_raiseErrorOrConvert_(context, v28, v11, v29);
    }

    else
    {
      TSUDecimal::operator=();
      TSUDecimal::operator+=();
      v37 = v36;
      TSUDecimal::doubleValue(&v37);
      log(v31);
      TSUDecimal::operator=();
      TSUDecimal::operator/=();
      v38 = v36;
      TSUDecimal::doubleValue(&v38);
      exp(v32);
      TSUDecimal::operator=();
      TSUDecimal::operator=();
      TSUDecimal::operator-=();
      v39 = v36;
      v35[0] = v41;
      TSUDecimal::operator*=();
      v40 = v35[0];
      TSCEFormat::TSCEFormat(v35, 258);
      v30 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v33, &v40, v35);
    }

    v17 = v30;
  }

  return v17;
}

@end