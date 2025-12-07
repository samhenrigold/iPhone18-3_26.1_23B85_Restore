@interface TSCEBinaryBooleanOperatorNode
+ (id)checkType:(id)type right:(id)right context:(id)context;
@end

@implementation TSCEBinaryBooleanOperatorNode

+ (id)checkType:(id)type right:(id)right context:(id)context
{
  typeCopy = type;
  rightCopy = right;
  contextCopy = context;
  v12 = objc_msgSend_deepType_(typeCopy, v10, contextCopy, v11);
  v15 = objc_msgSend_deepType_(rightCopy, v13, contextCopy, v14);
  v19 = v15;
  if (v12 == 2 && v15 != 2)
  {
    objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v16, 2, v15);
    v20 = LABEL_7:;
    goto LABEL_8;
  }

  if (v15 == 2 && v12 != 2)
  {
    objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v16, v12, 2);
    goto LABEL_7;
  }

  if (v15 == 5 && v12 == 3)
  {
    v22 = objc_msgSend_number(rightCopy, v16, v17, v18);
    if (objc_msgSend_hasUnits(v22, v23, v24, v25) && !objc_msgSend_dimension(v22, v26, v27, v28))
    {
      objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v26, 3, 4);
    }

    else
    {
      objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v26, 3, 5);
    }

    v20 = LABEL_21:;

    goto LABEL_8;
  }

  if (v12 == 5 && v15 == 3)
  {
    v22 = objc_msgSend_number(typeCopy, v16, v17, v18);
    if (objc_msgSend_hasUnits(v22, v29, v30, v31) && !objc_msgSend_dimension(v22, v32, v33, v34))
    {
      objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v32, 4, 3);
    }

    else
    {
      objc_msgSend_comparisonTypeErrorForLeftType_rightType_(TSCEError, v32, 5, 3);
    }

    goto LABEL_21;
  }

  if (v12 == v15 || objc_msgSend_valueIsEmptyWithContext_(typeCopy, v16, contextCopy, v18) && (v19 | 2) == 7 || objc_msgSend_valueIsEmptyWithContext_(rightCopy, v35, contextCopy, v36) && (v12 | 2) == 7)
  {
    goto LABEL_30;
  }

  v20 = 0;
  if (v19 != 9 && v12 != 9)
  {
    objc_msgSend_reportComparisonWarningInContext_leftType_rightType_(TSCEWarning, v37, contextCopy, v12, v19);
LABEL_30:
    v20 = 0;
  }

LABEL_8:

  return v20;
}

@end