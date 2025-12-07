@interface TSCEFunction_NORMSDIST
+ (double)probabilityWithZ:(double)z;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NORMSDIST

+ (double)probabilityWithZ:(double)z
{
  v3 = trunc(z);
  if (fabs(z) <= 1000.0)
  {
    zCopy = z;
  }

  else
  {
    zCopy = v3;
  }

  pthread_mutex_lock(&stru_27CFB4098);
  if (zCopy >= 0.0)
  {
    sub_221272900(zCopy);
    v6 = v7;
  }

  else
  {
    sub_221272900(-zCopy);
    v6 = 1.0 - v5;
  }

  pthread_mutex_unlock(&stru_27CFB4098);
  return v6;
}

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v24 = 0;
  v9 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v24);
  v13 = v24;
  if (v13)
  {
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v10, v13, v12);
  }

  else
  {
    objc_msgSend_doubleRepresentation(v9, v10, v11, v12);
    objc_msgSend_probabilityWithZ_(TSCEFunction_NORMSDIST, v15, v16, v17);
    TSUDecimal::operator=();
    if (v7)
    {
      objc_msgSend_formatWithContext_(v7, v18, context, v19);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    v14 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v18, v23, v22);
  }

  v20 = v14;

  return v20;
}

@end