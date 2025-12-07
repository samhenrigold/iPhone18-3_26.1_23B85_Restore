@interface TSCEFunction_CONFIDENCE
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_CONFIDENCE

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v69 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v69);
  v11 = v69;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  v16 = v15;

  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v17, v11, v18);
  }

  else
  {
    v20 = (1.0 - v16) * 0.886226925;
    v21 = pow(v20, 5.0) * 7.0 / 30.0 + v20 + v20 * (v20 * v20) / 3.0;
    v22 = pow(v20, 7.0) * 127.0 / 630.0 + v21;
    v23 = pow(v20, 9.0) * 4369.0 / 22680.0 + v22;
    v24 = pow(v20, 11.0) * 243649.0 / 1247400.0 + v23;
    v25 = pow(v20, 13.0) * 20036983.0 / 97297200.0 + v24;
    v26 = v25 + pow(v20, 15.0) * 0.223209757;
    v27 = v26 + pow(v20, 17.0) * 0.246970233;
    v28 = v27 + pow(v20, 19.0) * 0.277653826;
    v29 = v28 + pow(v20, 21.0) * 0.316142624;
    v30 = v29 + pow(v20, 23.0) * 0.363717587;
    v31 = v30 + pow(v20, 25.0) * 0.422072081;
    v32 = v31 + pow(v20, 27.0) * 0.493363266;
    if (v20 > 0.1)
    {
      do
      {
        v33 = -(v32 * v32);
        v34 = 1.0;
        v35 = 1;
        v36 = 3;
        v37 = v32;
        v38 = v32;
        do
        {
          v37 = v33 * v37;
          v34 = v34 * v35;
          v39 = v37 / (v34 * v36);
          v38 = v38 + v39;
          ++v35;
          v36 += 2;
        }

        while (fabs(v39) > 1.0e-16);
        v40 = v20 - v38;
        v32 = v32 + (v20 - v38) / exp(v33);
      }

      while (v40 > 1.0e-16);
    }

    v41 = *(*arguments + 8);
    v42 = *(*arguments + 16);
    v68 = 0;
    v44 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v41, v43, context, spec, 1, &v68);
    v45 = v68;
    objc_msgSend_doubleRepresentation(v44, v46, v47, v48);

    v67 = v45;
    v50 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v42, v49, context, spec, 2, &v67);
    v11 = v67;

    objc_msgSend_doubleRepresentation(v50, v51, v52, v53);
    if (v11)
    {
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v54, v11, v55);
    }

    else
    {
      sub_2212B7230(__p, 3uLL);
      if (v8)
      {
        objc_msgSend_formatWithContext_(v8, v56, context, v57);
      }

      else
      {
        memset(&v65, 0, sizeof(v65));
      }

      sub_22114F414(__p, &v65);
      if (v41)
      {
        objc_msgSend_formatWithContext_(v41, v58, context, v59);
      }

      else
      {
        memset(&v65, 0, sizeof(v65));
      }

      sub_22114F414(__p, &v65);
      if (v42)
      {
        objc_msgSend_formatWithContext_(v42, v60, context, v61);
      }

      else
      {
        memset(&v65, 0, sizeof(v65));
      }

      sub_22114F414(__p, &v65);
      TSUDecimal::operator=();
      sub_221256020(__p, &v65);
      v19 = objc_msgSend_numberWithDecimal_format_(TSCENumberValue, v62, &v64, &v65);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return v19;
}

@end