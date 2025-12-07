@interface IMGridViewCellAccessibility
- (unint64_t)accessibilityTraits;
- (void)accessibilityScrollToVisible;
@end

@implementation IMGridViewCellAccessibility

- (void)accessibilityScrollToVisible
{
  v53 = [(IMGridViewCellAccessibility *)self imaxValueForKey:@"gridView"];
  NSClassFromString(@"IMGridView");
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 && IMAccessibilityShouldPerformValidationChecks(isKindOfClass, v4))
  {
    v5 = [NSString stringWithFormat:@"AX: expected superview of %@ to be IMGridView. was: %@", self, v53];
    v6 = [NSException exceptionWithName:@"AX Error" reason:v5 userInfo:0];
  }

  [(IMGridViewCellAccessibility *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [v53 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  rect = v21;
  v22 = v14 * 0.5;
  if (v10 < v14)
  {
    v22 = 10.0;
  }

  v47 = v22;
  window = [v53 window];
  windowScene = [window windowScene];
  statusBarManager = [windowScene statusBarManager];

  [v53 contentInset];
  v46 = v26;
  [statusBarManager statusBarHeight];
  v45 = v27;
  [v53 contentOffset];
  v51 = v28;
  v55.origin.x = v8;
  v55.origin.y = v10;
  v55.size.width = v12;
  v55.size.height = v14;
  MinY = CGRectGetMinY(v55);
  v29 = v8;
  v56.origin.x = v8;
  v49 = v10;
  v56.origin.y = v10;
  v56.size.width = v12;
  v56.size.height = v14;
  MaxX = CGRectGetMaxX(v56);
  v31 = v16;
  v57.origin.x = v16;
  v32 = v18;
  v57.origin.y = v18;
  v33 = v20;
  v57.size.width = v20;
  v57.size.height = rect;
  v34 = rect;
  if (MaxX >= CGRectGetMaxX(v57))
  {
    v61.origin.x = v29;
    v36 = v49;
    v61.origin.y = v49;
    v61.size.width = v12;
    v61.size.height = v14;
    v52 = CGRectGetMaxX(v61);
    v62.origin.x = v31;
    v62.origin.y = v32;
    v62.size.width = v33;
    v62.size.height = rect;
    v51 = v52 - CGRectGetWidth(v62) + 10.0;
  }

  else
  {
    v58.origin.x = v29;
    v58.origin.y = v49;
    v58.size.width = v12;
    v58.size.height = v14;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v31;
    v59.origin.y = v32;
    v59.size.width = v33;
    v59.size.height = rect;
    if (MinX >= CGRectGetMinX(v59))
    {
      v36 = v49;
    }

    else
    {
      v60.origin.x = v29;
      v36 = v49;
      v60.origin.y = v49;
      v60.size.width = v12;
      v60.size.height = v14;
      v51 = CGRectGetMinX(v60) + -10.0;
    }

    v34 = rect;
  }

  v48 = v12;
  v63.origin.x = v29;
  v63.origin.y = v36;
  v63.size.width = v12;
  v63.size.height = v14;
  v37 = v36;
  MaxY = CGRectGetMaxY(v63);
  v64.origin.x = v31;
  v64.origin.y = v32;
  v64.size.width = v33;
  v64.size.height = v34;
  if (MaxY >= CGRectGetMaxY(v64))
  {
    v68.origin.x = v29;
    v68.origin.y = v37;
    v68.size.width = v48;
    v68.size.height = v14;
    v42 = CGRectGetMaxY(v68);
    v69.origin.x = v31;
    v69.origin.y = v32;
    v69.size.width = v33;
    v69.size.height = v34;
    v40 = v42 - CGRectGetHeight(v69);
    v41 = 10.0;
    goto LABEL_16;
  }

  v65.origin.x = v29;
  v65.origin.y = v37;
  v65.size.width = v48;
  v65.size.height = v14;
  v39 = CGRectGetMinY(v65);
  v66.origin.x = v31;
  v66.origin.y = v32;
  v66.size.width = v33;
  v66.size.height = v34;
  if (v39 < CGRectGetMinY(v66))
  {
    v67.origin.x = v29;
    v67.origin.y = v37;
    v67.size.width = v48;
    v67.size.height = v14;
    v40 = CGRectGetMinY(v67);
    v41 = -10.0;
LABEL_16:
    v43 = v40 + v41;
    goto LABEL_18;
  }

  v43 = MinY - v47 - (v46 + v45);
LABEL_18:
  [v53 setContentOffset:0 animated:{v51, v43}];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (unint64_t)accessibilityTraits
{
  v8.receiver = self;
  v8.super_class = IMGridViewCellAccessibility;
  accessibilityTraits = [(IMGridViewCellAccessibility *)&v8 accessibilityTraits];
  v4 = [(IMGridViewCellAccessibility *)self imaxValueForKey:@"isSelected"];
  bOOLValue = [v4 BOOLValue];

  v6 = UIAccessibilityTraitSelected;
  if (!bOOLValue)
  {
    v6 = 0;
  }

  return v6 | accessibilityTraits;
}

@end