@interface TSCEFunction_NORMINV
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_NORMINV

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v8 = **arguments;
  v67 = 0;
  v10 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v8, v9, context, spec, 0, &v67);
  v11 = v67;
  objc_msgSend_doubleRepresentation(v10, v12, v13, v14);
  if (v11)
  {
    v19 = objc_msgSend_raiseErrorOrConvert_(context, v15, v11, v17);
  }

  else
  {
    v20 = v18;
    if (objc_msgSend_hasUnits(v10, v15, v16, v17))
    {
      v24 = objc_msgSend_functionName(spec, v21, v22, v23);
      v26 = objc_msgSend_unitsNotAllowedErrorForFunctionName_argumentNumber_(TSCEError, v25, v24, 1);
      v19 = objc_msgSend_raiseErrorOrConvert_(context, v27, v26, v28);
      v11 = 0;
    }

    else
    {
      v24 = *(*arguments + 8);
      v66 = 0;
      v26 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v24, v29, context, spec, 1, &v66);
      v30 = v66;
      if (v30)
      {
        v11 = v30;
        v19 = objc_msgSend_raiseErrorOrConvert_(context, v31, v30, v32);
      }

      else
      {
        v33 = *(*arguments + 16);
        v65 = 0;
        v35 = objc_msgSend_asNumber_functionSpec_argumentIndex_outError_(v33, v34, context, spec, 2, &v65);
        v11 = v65;
        if (v11)
        {
          v19 = objc_msgSend_raiseErrorOrConvert_(context, v36, v11, v37);
        }

        else
        {
          matched = objc_msgSend_dimensionsMatchModuloCurrency_(v26, v36, v35, v37);
          if (matched)
          {
            pthread_mutex_lock(&stru_27CFB4098);
            sub_2214A7870(v20);
            TSUDecimal::operator=();
            v61 = objc_msgSend_numberWithDecimal_(TSCENumberValue, v39, &v63, v40);
            pthread_mutex_unlock(&stru_27CFB4098);
            v42 = objc_msgSend_multiply_context_(v61, v41, v35, context);
            v64 = 0;
            v44 = objc_msgSend_add_functionSpec_outError_(v42, v43, v26, spec, &v64);
            v11 = v64;

            if (v11)
            {
              v47 = v61;
              v48 = objc_msgSend_raiseErrorOrConvert_(context, v45, v11, v46);
            }

            else
            {
              v47 = v61;
              if (v24)
              {
                objc_msgSend_formatWithContext_(v24, v45, context, v46);
              }

              else
              {
                memset(&v62, 0, sizeof(v62));
              }

              TSCEFormat::TSCEFormat(&v63, &v62);
              objc_msgSend_setFormat_(v44, v58, &v63, v59);
              v48 = v44;
            }

            v19 = v48;
          }

          else
          {
            v49 = sub_2212F6DF8(matched);
            v47 = objc_msgSend_localizedStringForKey_value_table_(v49, v50, @"2 and 3", &stru_2834BADA0, @"TSCalculationEngine");

            v44 = objc_msgSend_functionName(spec, v51, v52, v53);
            v55 = objc_msgSend_mismatchedUnitsErrorForFunctionName_argumentNumberString_(TSCEError, v54, v44, v47);
            v19 = objc_msgSend_raiseErrorOrConvert_(context, v56, v55, v57);

            v11 = 0;
          }
        }
      }
    }
  }

  return v19;
}

@end