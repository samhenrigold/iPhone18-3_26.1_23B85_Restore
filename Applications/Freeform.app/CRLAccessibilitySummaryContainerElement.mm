@interface CRLAccessibilitySummaryContainerElement
- (CGRect)accessibilityFrame;
- (CRLAccessibilitySummaryContainerElement)initWithAccessibilityContainer:(id)container containedElements:(id)elements;
- (id)accessibilityLabel;
@end

@implementation CRLAccessibilitySummaryContainerElement

- (CRLAccessibilitySummaryContainerElement)initWithAccessibilityContainer:(id)container containedElements:(id)elements
{
  elementsCopy = elements;
  v20.receiver = self;
  v20.super_class = CRLAccessibilitySummaryContainerElement;
  v7 = [(CRLAccessibilitySummaryContainerElement *)&v20 initWithAccessibilityContainer:container];
  if (v7)
  {
    v8 = [elementsCopy copy];
    containedElements = v7->_containedElements;
    v7->_containedElements = v8;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v7->_containedElements;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v16 + 1) + 8 * v14) setIsAccessibilityElement:{0, v16}];
          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v12);
    }
  }

  return v7;
}

- (CGRect)accessibilityFrame
{
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  containedElements = [(CRLAccessibilitySummaryContainerElement *)self containedElements];
  accessibilityFrame = [containedElements countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (accessibilityFrame)
  {
    v8 = accessibilityFrame;
    v9 = *v40;
    v38 = CGRectZero.origin.y;
    v36 = CGRectZero.size.height;
    v37 = CGRectZero.size.width;
    v10 = height;
    v11 = width;
    v12 = y;
    x = CGRectNull.origin.x;
    do
    {
      v14 = 0;
      do
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(containedElements);
        }

        v15 = *(*(&v39 + 1) + 8 * v14);
        if (CRLAccessibilityShouldPerformValidationChecks(accessibilityFrame, v7))
        {
          [v15 accessibilityFrame];
          v48.origin.y = v38;
          v48.origin.x = CGRectZero.origin.x;
          v48.size.height = v36;
          v48.size.width = v37;
          v16 = CGRectEqualToRect(v44, v48);
          if (v16)
          {
            ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(v16);
            if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Found CGRectZero AX frame for contained element, this is probably a bug", v18, v19, v20, v21, v22, *&v36))
            {
              abort();
            }
          }
        }

        v45.origin.x = x;
        v45.origin.y = v12;
        v45.size.width = v11;
        v45.size.height = v10;
        v49.origin.x = CGRectNull.origin.x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        v23 = CGRectEqualToRect(v45, v49);
        accessibilityFrame = [v15 accessibilityFrame];
        v28 = v24;
        v29 = v25;
        v30 = v26;
        v31 = v27;
        if (!v23)
        {
          v46.origin.x = x;
          v46.origin.y = v12;
          v46.size.width = v11;
          v46.size.height = v10;
          *&v24 = CGRectUnion(v46, *&v28);
        }

        x = v24;
        v12 = v25;
        v11 = v26;
        v10 = v27;
        v14 = v14 + 1;
      }

      while (v8 != v14);
      accessibilityFrame = [containedElements countByEnumeratingWithState:&v39 objects:v43 count:16];
      v8 = accessibilityFrame;
    }

    while (accessibilityFrame);
  }

  else
  {
    v10 = height;
    v11 = width;
    v12 = y;
    x = CGRectNull.origin.x;
  }

  v32 = x;
  v33 = v12;
  v34 = v11;
  v35 = v10;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (id)accessibilityLabel
{
  v3 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  containedElements = [(CRLAccessibilitySummaryContainerElement *)self containedElements];
  v5 = [containedElements countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(containedElements);
        }

        accessibilityLabel = [*(*(&v19 + 1) + 8 * i) accessibilityLabel];
        [v3 crlaxAddObjectIfNotNil:accessibilityLabel];
      }

      v6 = [containedElements countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v17 = __CRLAccessibilityStringForArraysAndVariables(v3, v10, v11, v12, v13, v14, v15, v16, @"__CRLAccessibilityStringForArraysAndVariablesSentinel");

  return v17;
}

@end