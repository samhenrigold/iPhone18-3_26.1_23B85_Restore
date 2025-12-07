@interface TSCEFunction_TRIM
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_TRIM

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v11 = v7;
  v41 = 0;
  if (v7)
  {
    objc_msgSend_asRichTextStorage_functionSpec_argumentIndex_outError_(v7, v8, context, spec, 0, &v41);
    v12 = v41;
    if (v12)
    {
      v13 = v12;
      v14 = objc_msgSend_raiseErrorOrConvert_(context, v8, v12, v10);
      goto LABEL_30;
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
  }

  if (sub_221078910(&v42, v8, v9, v10))
  {
    v40 = 0;
    v21 = sub_221078910(&v42, v15, v16, v17);
    v38 = 0;
    v39 = 0;
      ;
    }

    v23 = v21 - 1;
    do
    {
      v24 = v23;
      if ((v23 & 0x8000000000000000) != 0)
      {
        break;
      }

      v36 = v23;
      v25 = sub_22107897C(&v42, &v36, v19, v20);
      v23 = v24 - 1;
    }

    while (v25 == 32);
    v26 = v40;
    v36 = 0;
    v37[0] = 0;
    *(v37 + 7) = 0;
    if (v40 <= v24)
    {
      v27 = 0;
      v28 = 0;
      v29 = v40;
      do
      {
        v34 = v26;
        ++v28;
        if (sub_22107897C(&v42, &v34, v19, v20) == 32)
        {
          for (j = v26 + 1; ; ++j)
          {
            v34 = j;
            v31 = sub_22107897C(&v42, &v34, v19, v20);
            if (v31 != 32)
            {
              break;
            }

            if ((v27 & 1) == 0)
            {
              v38 = v29;
              v39 = v28;
              sub_2210780F0(&v42, &v38, &v34, v19, v20);
              sub_221077424(&v36, &v34, context);

              v28 = 0;
            }

            v29 = v26 + 2;
            ++v26;
            v27 = 1;
          }

          if (v31)
          {
            ++v28;
            v27 = 0;
          }
        }

        else
        {
          j = v26;
        }

        v26 = j + 1;
      }

      while (j < v24);
      if (v28)
      {
        v33[0] = v29;
        v33[1] = v28;
        sub_2210780F0(&v42, v33, &v34, v19, v20);
        sub_221077424(&v36, &v34, context);
      }
    }

    v14 = sub_2210789F4(&v36, v18, v19, v20);
  }

  else
  {
    v14 = sub_2210789F4(&v42, v15, v16, v17);
  }

  v13 = 0;
LABEL_30:

  return v14;
}

@end