@interface TSCEFunction_op_ExplicitIntersection
+ (BOOL)hasValidNontrivialIntersection:(const TSCERangeRef *)intersection containingCellRef:(TSCECellRef *)ref calcEngine:(id)engine;
+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments;
@end

@implementation TSCEFunction_op_ExplicitIntersection

+ (id)evaluateForArgsWithContext:(id)context functionSpec:(id)spec arguments:(const void *)arguments
{
  v7 = **arguments;
  v11 = objc_msgSend_intersectionRangeContext(context, v8, v9, v10);
  v15 = objc_msgSend_nativeType(v7, v12, v13, v14);
  if (v15 == 1)
  {
    v29 = objc_msgSend_asGridValue(v7, v16, v17, v18);
    if (objc_msgSend_gridKind(v29, v30, v31, v32) == 2)
    {
      v36 = objc_msgSend_abstractBackingGrid(v29, v33, v34, v35);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v42 = objc_msgSend_apparentReference_(v36, v37, context, v38);
        if (context)
        {
          objc_msgSend_containingCellRef(context, v39, v40, v41);
        }

        else
        {
          contextCopy = 0;
          specCopy = 0;
          v49 = 0;
        }

        v25 = objc_msgSend_intersectionWithHostCellRef_rangeContext_evaluationContext_(v42, v39, &contextCopy, v11, context);

        v7 = v25;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      contextCopy = context;
      specCopy = spec;
      v49 = 0;
      v50[0] = 0;
      *(v50 + 7) = 0;
      v51 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      v52 = 0;
      v53 = 0;
      v25 = objc_msgSend_valueAtIndex_accessContext_(v29, v43, 0, &contextCopy);

      v7 = v25;
    }

    if (!v25)
    {
      goto LABEL_23;
    }

LABEL_22:
    objc_msgSend_addDynamicPrecedent_(context, v44, v25, v45);
    goto LABEL_23;
  }

  if (v15 == 6)
  {
    v19 = objc_msgSend_asReferenceValue(v7, v16, v17, v18);
    if (context)
    {
      objc_msgSend_containingCellRef(context, v26, v27, v28);
    }

    else
    {
      contextCopy = 0;
      specCopy = 0;
      v49 = 0;
    }

    v25 = objc_msgSend_intersectionWithHostCellRef_rangeContext_evaluationContext_(v19, v26, &contextCopy, v11, context);
  }

  else
  {
    if (v15 != 16)
    {
      v25 = 0;
      goto LABEL_23;
    }

    v19 = objc_msgSend_asValueGridValue(v7, v16, v17, v18);
    v23 = objc_msgSend_valueGrid(v19, v20, v21, v22);
    v25 = objc_msgSend_intersectionWithEvalContext_rangeContext_(v23, v24, context, v11);
  }

  v7 = v25;
  if (v25)
  {
    goto LABEL_22;
  }

LABEL_23:

  return v7;
}

+ (BOOL)hasValidNontrivialIntersection:(const TSCERangeRef *)intersection containingCellRef:(TSCECellRef *)ref calcEngine:(id)engine
{
  engineCopy = engine;
  v10 = objc_msgSend_tableResolverWrapperForTableUID_(engineCopy, v8, &intersection->_tableUID, v9);
  if (v10 && (TSCERangeRef::isSingleCell(intersection) & 1) == 0)
  {
    v12 = [TSCEEvalRef alloc];
    topLeft = intersection->range._topLeft;
    bottomRight = intersection->range._bottomRight;
    v21 = topLeft;
    v19 = 15;
    v15 = objc_msgSend_initWithTableResolver_topLeft_bottomRight_preserveFlags_(v12, v14, v10, &v21, &bottomRight, &v19);
    v17 = objc_msgSend_intersectionWithHostCellRef_rangeContext_(v15, v16, ref, 1);
    v11 = v17 != 0;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end