@interface CRLWPSmartFieldAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CRLTextRepAccessibility)crlaxParentTextRep;
- (_NSRange)crlaxFieldRange;
- (void)crlaxSetParentInteractiveCanvasController:(id)controller;
- (void)dealloc;
@end

@implementation CRLWPSmartFieldAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)dealloc
{
  [(CRLWPSmartFieldAccessibility *)self crlaxSetParentInteractiveCanvasController:0];
  v3.receiver = self;
  v3.super_class = CRLWPSmartFieldAccessibility;
  [(CRLWPSmartFieldAccessibility *)&v3 dealloc];
}

- (_NSRange)crlaxFieldRange
{
  crlaxTarget = [(CRLWPSmartFieldAccessibility *)self crlaxTarget];
  range = [crlaxTarget range];
  v5 = v4;

  v6 = range;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)crlaxSetParentInteractiveCanvasController:(id)controller
{
  controllerCopy = controller;
  _crlaxParentInteractiveCanvasController = [(CRLWPSmartFieldAccessibility *)self _crlaxParentInteractiveCanvasController];
  v10 = 0;
  v6 = controllerCopy;
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v9 = v8;

  if (_crlaxParentInteractiveCanvasController != v9)
  {
    [_crlaxParentInteractiveCanvasController crlaxUnregisterLinkedTextElement:self];
    [(CRLWPSmartFieldAccessibility *)self _crlaxSetParentInteractiveCanvasController:v9];
    [v9 crlaxRegisterLinkedTextElement:self];
  }
}

- (CRLTextRepAccessibility)crlaxParentTextRep
{
  crlaxParentInteractiveCanvasController = [(CRLWPSmartFieldAccessibility *)self crlaxParentInteractiveCanvasController];
  ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks(crlaxParentInteractiveCanvasController, v4);
  if (ShouldPerformValidationChecks && !crlaxParentInteractiveCanvasController)
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(ShouldPerformValidationChecks);
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Can't find interactive canvas controller even though we're asked for the parent text rep of an attachment.", v7, v8, v9, v10, v11, v34))
    {
LABEL_31:
      abort();
    }

    goto LABEL_24;
  }

  if (!crlaxParentInteractiveCanvasController)
  {
LABEL_24:
    v18 = 0;
    goto LABEL_28;
  }

  v40 = 0;
  crlaxTarget = [(CRLWPSmartFieldAccessibility *)self crlaxTarget];
  parentStorage = [crlaxTarget parentStorage];

  v14 = objc_opt_class();
  v15 = __CRLAccessibilityCastAsSafeCategory(v14, parentStorage, 1, &v40);
  if (v40 == 1)
  {
    goto LABEL_31;
  }

  v16 = v15;

  crlaxFieldRange = [(CRLWPSmartFieldAccessibility *)self crlaxFieldRange];
  v18 = 0;
  if (v16)
  {
    v19 = crlaxFieldRange;
    if (crlaxFieldRange != 0x7FFFFFFFFFFFFFFFLL)
    {
      v35 = v16;
      [crlaxParentInteractiveCanvasController crlaxTextRepsForStorage:v16];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v20 = v39 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v18 = 0;
        v23 = *v37;
        do
        {
          v24 = 0;
          v25 = v18;
          do
          {
            if (*v37 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v26 = *(*(&v36 + 1) + 8 * v24);
            v40 = 0;
            v27 = v26;
            v28 = objc_opt_class();
            v29 = __CRLAccessibilityCastAsSafeCategory(v28, v27, 1, &v40);
            if (v40 == 1)
            {
              goto LABEL_31;
            }

            v18 = v29;

            if (v18)
            {
              crlaxStorageRangeOfRep = [v18 crlaxStorageRangeOfRep];
              if (v19 >= crlaxStorageRangeOfRep && v19 - crlaxStorageRangeOfRep < v31)
              {
                goto LABEL_26;
              }
            }

            v24 = v24 + 1;
            v25 = v18;
          }

          while (v22 != v24);
          v22 = [v20 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v22);
      }

      else
      {
        v18 = 0;
      }

LABEL_26:

      v16 = v35;
    }
  }

LABEL_28:

  return v18;
}

@end