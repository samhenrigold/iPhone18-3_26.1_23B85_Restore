@interface TSCEFunction_AVERAGEIFS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_AVERAGEIFS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v31 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, context, spec, 0, 1, &v31);
  v11 = v31;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
  }

  else
  {
    v17 = objc_msgSend_dimensions(v10, v12, v13, v14);
    v30 = 0;
    v19 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v18, context, spec, arguments, v17, 1, 0, &v30);
    v15 = v30;
    if (v15)
    {
      v16 = objc_msgSend_raiseErrorOrConvert_(context, v20, v15, v21);
    }

    else
    {
      LOBYTE(v27) = 0;
      v16 = objc_msgSend_averageOfVector_functionSpec_argVector_argumentIndex_criteria_criteriaVectorIndex_ignoreError_(TSCEFunction_AVERAGE, v20, context, spec, v10, 0, v19, 2, v27);
      if (v10)
      {
        objc_msgSend_formatWithContext_(v10, v22, context, v23);
      }

      else
      {
        memset(&v28, 0, sizeof(v28));
      }

      TSCEFormat::TSCEFormat(&v29, &v28);
      objc_msgSend_setFormat_(v16, v24, &v29, v25);
    }
  }

  return v16;
}

@end