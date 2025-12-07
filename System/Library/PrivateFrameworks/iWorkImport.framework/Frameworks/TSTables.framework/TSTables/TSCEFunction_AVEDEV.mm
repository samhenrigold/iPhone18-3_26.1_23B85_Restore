@interface TSCEFunction_AVEDEV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AVEDEV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v79[0] = 0;
  v62 = v7;
  v9 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v7, v8, context, spec, 0, 1, v79);
  v10 = v79[0];
  v64 = v9;
  if (v10)
  {
    v13 = v10;
    v14 = objc_msgSend_raiseErrorOrConvert_(context, v11, v10, v12);
  }

  else
  {
    v63 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_(TSCEFunction_AVERAGE, v11, context, spec, v9, 0);
    v18 = objc_msgSend_count(v9, v15, v16, v17);
    v67 = objc_msgSend_zero(TSCENumberValue, v19, v20, v21);
    contextCopy = context;
    v73[0] = contextCopy;
    v73[1] = spec;
    v74 = 0;
    v75[0] = 0;
    *(v75 + 7) = 0;
    v76 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
    v77 = 0;
    v78 = 0;
    if (v18)
    {
      v24 = 0;
      v66 = 0;
      v25 = 0;
      do
      {
        v26 = objc_msgSend_valueAtIndex_accessContext_(v9, v22, v24, v73);
        if (objc_msgSend_isError(v26, v27, v28, v29))
        {
          v61 = objc_msgSend_errorWithContext_(v26, v30, contextCopy, v32);
          v14 = objc_msgSend_raiseErrorOrConvert_(contextCopy, v56, v61, v57);
          v13 = 0;
          goto LABEL_23;
        }

        if ((objc_msgSend_isNil(v26, v30, v31, v32) & 1) == 0)
        {
          v34 = objc_msgSend_computeSubtraction_functionSpec_left_leftArgumentIndex_right_rightArgumentIndex_(TSCEFunction_op_Subtract, v33, contextCopy, spec, v26, 0, v63, 0);
          v72 = 0;
          v65 = v34;
          v35 = contextCopy;
          v37 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v34, v36, contextCopy, spec, 0, &v72);
          v38 = v72;
          if (v38)
          {
            v13 = v38;
            v14 = objc_msgSend_raiseErrorOrConvert_(v35, v39, v38, v41);

            v61 = v65;
            goto LABEL_23;
          }

          v42 = objc_msgSend_abs(v37, v39, v40, v41);
          v44 = v42;
          if (v25)
          {
            v71 = 0;
            v45 = objc_msgSend_add_functionSpec_outError_(v67, v43, v42, spec, &v71);
            v46 = v71;

            if (v46)
            {
              v14 = objc_msgSend_raiseErrorOrConvert_(v35, v47, v46, v48);

              v67 = v45;
              v9 = v64;
              v61 = v65;
              v13 = v46;
              goto LABEL_23;
            }
          }

          else
          {
            v45 = v42;
          }

          ++v66;

          v25 = 1;
          v67 = v45;
          v9 = v64;
          contextCopy = v35;
        }

        ++v24;
      }

      while (v18 != v24);
    }

    TSUDecimal::operator=();
    v26 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v49, &v69, v50);
    v70 = 0;
    v61 = objc_msgSend_divide_outError_(v67, v51, v26, &v70);
    v52 = contextCopy;
    v13 = v70;
    if (v13)
    {
      v55 = objc_msgSend_raiseErrorOrConvert_(v52, v53, v13, v54);
    }

    else
    {
      if (v9)
      {
        objc_msgSend_formatWithContext_(v9, v53, v52, v54);
      }

      else
      {
        memset(&v68, 0, sizeof(v68));
      }

      TSCEFormat::TSCEFormat(&v69, &v68);
      objc_msgSend_setFormat_(v61, v58, &v69, v59);
      v55 = v61;
      v61 = v55;
    }

    v14 = v55;
LABEL_23:
  }

  return v14;
}

@end