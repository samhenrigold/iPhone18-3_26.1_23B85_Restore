@interface CRLUISegmentedControlAccessibility
+ (id)crlaxCastFrom:(id)from;
- (void)crlaxSetSegmentDescriptions:(id)descriptions;
@end

@implementation CRLUISegmentedControlAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)crlaxSetSegmentDescriptions:(id)descriptions
{
  descriptionsCopy = descriptions;
  selfCopy = self;
  v6 = [(CRLUISegmentedControlAccessibility *)selfCopy valueForKey:@"_segments"];
  v7 = [v6 count];
  v8 = [descriptionsCopy count];
  if (v8 == v7)
  {
    if (v7)
    {
      v10 = 0;
      while (1)
      {
        v28 = 0;
        v11 = [v6 objectAtIndex:v10];
        v12 = objc_opt_class();
        v13 = __CRLAccessibilityCastAsClass(v12, v11, 1, &v28);
        if (v28 == 1)
        {
          break;
        }

        v14 = v13;

        v27 = 0;
        v15 = [descriptionsCopy objectAtIndex:v10];
        v16 = objc_opt_class();
        v17 = __CRLAccessibilityCastAsClass(v16, v15, 1, &v27);
        if (v27 == 1)
        {
          break;
        }

        v18 = v17;

        [v14 setAccessibilityLabel:v18];
        if (v7 == ++v10)
        {
          goto LABEL_10;
        }
      }

LABEL_11:
      abort();
    }
  }

  else
  {
    v19 = v8;
    ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks(v8, v9);
    if (ShouldPerformValidationChecks)
    {
      ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(ShouldPerformValidationChecks);
      if (__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Number of segments have changed from %lu to %lu", v22, v23, v24, v25, v26, v19))
      {
        goto LABEL_11;
      }
    }
  }

LABEL_10:
}

@end