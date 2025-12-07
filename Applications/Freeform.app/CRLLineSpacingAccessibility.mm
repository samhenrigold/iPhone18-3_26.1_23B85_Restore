@interface CRLLineSpacingAccessibility
+ (id)crlaxCastFrom:(id)from;
- (NSString)crlaxLineSpacingDescription;
- (double)crlaxAmount;
- (int64_t)crlaxMode;
@end

@implementation CRLLineSpacingAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (int64_t)crlaxMode
{
  crlaxTarget = [(CRLLineSpacingAccessibility *)self crlaxTarget];
  mode = [crlaxTarget mode];

  return mode;
}

- (double)crlaxAmount
{
  crlaxTarget = [(CRLLineSpacingAccessibility *)self crlaxTarget];
  [crlaxTarget amount];
  v4 = v3;

  return v4;
}

- (NSString)crlaxLineSpacingDescription
{
  crlaxMode = [(CRLLineSpacingAccessibility *)self crlaxMode];
  if (crlaxMode >= 5)
  {
    ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks(crlaxMode, v4);
    if (ShouldPerformValidationChecks)
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(ShouldPerformValidationChecks);
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Unknown line spacing, treat as relative format multiplier.", v8, v9, v10, v11, v12, v17))
      {
        abort();
      }
    }

    v5 = @"line.spacing.relative";
  }

  else
  {
    v5 = *(&off_1018713C0 + crlaxMode);
  }

  v13 = CRLAccessibilityStringsDictKey(v5);
  if (v13)
  {
    [(CRLLineSpacingAccessibility *)self crlaxAmount];
    v15 = [NSString stringWithFormat:v13, v14];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

@end