@interface CRLFindReplaceControllerAccessibility
+ (id)crlaxCastFrom:(id)from;
- (CGPoint)crlaxActiveTextFindResultPoint;
- (CRLWPSelectionAccessibility)crlaxActiveTextFindResultSelection;
- (id)crlaxDecoratedStringForAnnouncement:(id)announcement selectionRange:(_NSRange)range excerptRange:(_NSRange)excerptRange;
- (id)crlaxPrimaryFindResultSearchReference;
- (void)crlaxDidChangePrimaryFindResultInInteractiveCanvasController:(id)controller window:(id)window;
@end

@implementation CRLFindReplaceControllerAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (id)crlaxPrimaryFindResultSearchReference
{
  crlaxTarget = [(CRLFindReplaceControllerAccessibility *)self crlaxTarget];
  primaryFindResultSearchReference = [crlaxTarget primaryFindResultSearchReference];

  return primaryFindResultSearchReference;
}

- (CGPoint)crlaxActiveTextFindResultPoint
{
  crlaxPrimaryFindResultSearchReference = [(CRLFindReplaceControllerAccessibility *)self crlaxPrimaryFindResultSearchReference];
  [crlaxPrimaryFindResultSearchReference searchReferencePoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (CRLWPSelectionAccessibility)crlaxActiveTextFindResultSelection
{
  v3 = objc_opt_class();
  crlaxPrimaryFindResultSearchReference = [(CRLFindReplaceControllerAccessibility *)self crlaxPrimaryFindResultSearchReference];
  v5 = __CRLAccessibilityCastAsSafeCategory(v3, crlaxPrimaryFindResultSearchReference, 0, 0);

  crlaxSelection = [v5 crlaxSelection];

  return crlaxSelection;
}

- (void)crlaxDidChangePrimaryFindResultInInteractiveCanvasController:(id)controller window:(id)window
{
  controllerCopy = controller;
  windowCopy = window;
  v8 = +[CRLAccessibility sharedInstance];
  needsAccessibilityAnnouncements = [v8 needsAccessibilityAnnouncements];

  if (needsAccessibilityAnnouncements)
  {
    crlaxPrimaryFindResultSearchReference = [(CRLFindReplaceControllerAccessibility *)self crlaxPrimaryFindResultSearchReference];
    NSClassFromString(@"CRLWPSearchReference");
    if (objc_opt_isKindOfClass())
    {
      v43 = 0;
      v11 = [crlaxPrimaryFindResultSearchReference crlaxValueForKey:@"selection"];
      v12 = objc_opt_class();
      v13 = __CRLAccessibilityCastAsSafeCategory(v12, v11, 1, &v43);
      if (v43 == 1)
      {
        goto LABEL_22;
      }

      v14 = v13;

      v43 = 0;
      v15 = [crlaxPrimaryFindResultSearchReference crlaxValueForKey:@"storage"];
      v16 = objc_opt_class();
      v17 = __CRLAccessibilityCastAsSafeCategory(v16, v15, 1, &v43);
      if (v43 == 1)
      {
        goto LABEL_22;
      }

      v18 = v17;

      v19.location = [v14 crlaxRange];
      if (!v19.length || (location = v19.location, length = v19.length, --v19.length, v44.location = v19.location, v44.length = length, v22 = NSUnionRange(v19, v44), v45.location = [v18 crlaxRange], v45.length = v23, v24 = NSIntersectionRange(v22, v45), v22.location != v24.location) || v22.length != v24.length)
      {
LABEL_19:

        goto LABEL_20;
      }

      v39 = v22.length;
      [v18 crlaxSubstringWithRange:{v22.location, v22.length}];
      v26 = v25 = v14;

      if (v26)
      {
        v27 = v26;
        v29 = v27;
        if (location >= v22.location)
        {
          v27 = [v27 length];
          v30 = length + location - v22.location <= v27;
        }

        else
        {
          v30 = 0;
        }

        ShouldPerformValidationChecks = CRLAccessibilityShouldPerformValidationChecks(v27, v28);
        if (!ShouldPerformValidationChecks || v30 || (ShouldCrashOnValidationErrorAfterLaunch = CRLAccessibilityShouldCrashOnValidationErrorAfterLaunch(ShouldPerformValidationChecks), !__CRLAccessibilityHandleValidationErrorWithDescription(ShouldCrashOnValidationErrorAfterLaunch, 0, @"Something is wrong with selectionRange or excerptRange.", v33, v34, v35, v36, v37, v22.length)))
        {
          v38 = v29;
          if (v30 && [(CRLFindReplaceControllerAccessibility *)self crlaxRespondsToSelector:"crlaxDecoratedStringForAnnouncement:selectionRange:excerptRange:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLFindReplaceControllerAccessibilityExtras])
          {
            v29 = [(CRLFindReplaceControllerAccessibility *)self crlaxDecoratedStringForAnnouncement:v29 selectionRange:location excerptRange:length, v22.location, v39];
          }

          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_10030BAAC;
          v40[3] = &unk_10183AE28;
          v41 = windowCopy;
          v42 = v29;
          v18 = v29;
          CRLAccessibilityPerformBlockOnMainThreadAfterDelay(v40, 0.5);

          v14 = v38;
          goto LABEL_19;
        }

LABEL_22:
        abort();
      }
    }

LABEL_20:
  }
}

- (id)crlaxDecoratedStringForAnnouncement:(id)announcement selectionRange:(_NSRange)range excerptRange:(_NSRange)excerptRange
{
  location = excerptRange.location;
  length = range.length;
  v7 = range.location;
  announcementCopy = announcement;
  v9 = [[NSMutableAttributedString alloc] initWithString:announcementCopy];

  v10 = [NSNumber numberWithBool:1];
  [v9 addAttribute:@"UIAccessibilityTokenLowPitch" value:v10 range:{v7 - location, length}];

  return v9;
}

@end