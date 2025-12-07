@interface TSCEFunction_MINIFS
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_MINIFS

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v9 = **arguments;
  v24 = 0;
  v10 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v9, a2, context, spec, 0, 1, &v24);
  v11 = v24;
  if (v11)
  {
    v15 = v11;
    v16 = objc_msgSend_raiseErrorOrConvert_(context, v12, v11, v14);
  }

  else
  {
    v17 = objc_msgSend_dimensions(v10, v12, v13, v14);
    v23 = 0;
    v19 = objc_msgSend_vectorCriterionPairsWithContext_functionSpec_arguments_dimensions_skipFirst_skipLast_outError_(self, v18, context, spec, arguments, v17, 1, 0, &v23);
    v15 = v23;
    if (v15)
    {
      objc_msgSend_raiseErrorOrConvert_(context, v20, v15, v21);
    }

    else
    {
      objc_msgSend_extremumIfs_functionSpec_maxVector_criteria_isMax_(TSCEFunction_MAXIFS, v20, context, spec, v10, v19, 0);
    }
    v16 = ;
  }

  return v16;
}

@end