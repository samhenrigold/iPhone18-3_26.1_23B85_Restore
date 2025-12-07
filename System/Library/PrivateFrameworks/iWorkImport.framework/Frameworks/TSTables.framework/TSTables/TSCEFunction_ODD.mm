@interface TSCEFunction_ODD
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_ODD

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v25 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v25);
  v12 = v25;
  if (v12)
  {
    v13 = objc_msgSend_raiseErrorOrConvert_(context, v10, v12, v11);
  }

  else
  {
    TSUDecimal::operator=();
    TSUDecimal::operator=();
    v23._decimal.w[0] = objc_msgSend_decimalRepresentation(v9, v14, v15, v16);
    v23._decimal.w[1] = v17;
    if (TSUDecimal::isNegative(&v23))
    {
      TSUDecimal::floor(&v23);
      TSUDecimal::negate(&v23);
      TSUDecimal::operator=();
      TSUDecimal::mod(&v23, &v24, v22);
      TSUDecimal::negate(&v23);
      if ((TSUDecimal::operator==() & 1) == 0)
      {
        TSUDecimal::operator-=();
      }
    }

    else
    {
      TSUDecimal::ceiling(&v23);
      TSUDecimal::operator=();
      TSUDecimal::mod(&v23, &v24, v22);
      if ((TSUDecimal::operator==() & 1) == 0)
      {
        TSUDecimal::operator+=();
      }
    }

    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v18, context, v19);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    v13 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v18, &v23, v22);
  }

  v20 = v13;

  return v20;
}

@end