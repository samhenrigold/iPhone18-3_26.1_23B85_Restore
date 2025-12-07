@interface CRLUIPageControlAccessibility
+ (id)crlaxCastFrom:(id)from;
- (void)_accessibilityCurrentPageDidChange;
@end

@implementation CRLUIPageControlAccessibility

+ (id)crlaxCastFrom:(id)from
{
  fromCopy = from;
  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, fromCopy, 0, 0);

  return v5;
}

- (void)_accessibilityCurrentPageDidChange
{
  if ([(CRLUIPageControlAccessibility *)self crlaxPageChangeCausesLayoutChange])
  {

    CRLAccessibilityPostLayoutChangedNotification(0, v3);
  }

  else
  {
    v4.receiver = self;
    v4.super_class = CRLUIPageControlAccessibility;
    [(CRLUIPageControlAccessibility *)&v4 _accessibilityCurrentPageDidChange];
  }
}

@end