@interface CRLSubselectionAccessibility
+ (id)crlaxCastFrom:(id)from;
- (NSSet)crlaxInfos;
- (NSSet)crlaxUnlockedInfos;
@end

@implementation CRLSubselectionAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (NSSet)crlaxInfos
{
  v3 = NSProtocolFromString(@"CRLCanvasSelection");
  v4 = [(CRLSubselectionAccessibility *)self conformsToProtocol:v3];

  if (v4)
  {
    v20 = 0;
    v7 = [(CRLSubselectionAccessibility *)self crlaxValueForKey:@"infos"];
    v8 = objc_opt_class();
    v9 = __CRLAccessibilityCastAsClass(v8, v7, 1, &v20);
    if (v20 != 1)
    {
      v10 = v9;

      goto LABEL_7;
    }

LABEL_10:
    abort();
  }

  ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks(v5, v6);
  if (ShouldPerformValidationChecks)
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(ShouldPerformValidationChecks);
    v13 = objc_opt_class();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"%@ does not implement CRLCanvasSelection protocol, we should not be asking it for infos", v14, v15, v16, v17, v18, v13))
    {
      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (NSSet)crlaxUnlockedInfos
{
  v3 = NSProtocolFromString(@"CRLCanvasSelection");
  v4 = [(CRLSubselectionAccessibility *)self conformsToProtocol:v3];

  if (v4)
  {
    v20 = 0;
    v7 = [(CRLSubselectionAccessibility *)self crlaxValueForKey:@"unlockedInfos"];
    v8 = objc_opt_class();
    v9 = __CRLAccessibilityCastAsClass(v8, v7, 1, &v20);
    if (v20 != 1)
    {
      v10 = v9;

      goto LABEL_7;
    }

LABEL_10:
    abort();
  }

  ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks(v5, v6);
  if (ShouldPerformValidationChecks)
  {
    ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(ShouldPerformValidationChecks);
    v13 = objc_opt_class();
    if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"%@ does not implement CRLCanvasSelection protocol, we should not be asking it for infos", v14, v15, v16, v17, v18, v13))
    {
      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_7:

  return v10;
}

@end