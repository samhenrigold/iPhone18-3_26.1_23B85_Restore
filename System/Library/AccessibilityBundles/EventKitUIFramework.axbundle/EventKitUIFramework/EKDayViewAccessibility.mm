@interface EKDayViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (EKDayViewAccessibility)initWithFrame:(CGRect)frame sizeClass:(int64_t)class orientation:(int64_t)orientation displayDate:(id)date backgroundColor:(id)color opaque:(BOOL)opaque scrollbarShowsInside:(BOOL)inside isMiniPreviewInEventDetail:(BOOL)self0 rightClickDelegate:(id)self1;
- (id)accessibilityCustomRotors;
- (id)accessibilityScrollView;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateScroller;
@end

@implementation EKDayViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDayView" hasInstanceVariable:@"_scroller" withType:"UIScrollView"];
  [validationsCopy validateClass:@"EKDayView" hasInstanceVariable:@"_allDayView" withType:"EKDayAllDayView"];
  [validationsCopy validateClass:@"EKDayView" hasInstanceVariable:@"_dayContent" withType:"EKDayViewContent"];
  [validationsCopy validateClass:@"EKDayView" hasInstanceMethod:@"initWithFrame:sizeClass:orientation:displayDate:backgroundColor:opaque:scrollbarShowsInside:isMiniPreviewInEventDetail:rightClickDelegate:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", "q", "q", "@", "@", "B", "B", "B", "@", 0}];
  [validationsCopy validateClass:@"EKDayViewContent" hasInstanceMethod:@"occurrenceViews" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"EKDayAllDayView" hasInstanceMethod:@"occurrenceViews" withFullSignature:{"@", 0}];
}

- (id)accessibilityScrollView
{
  v2 = *[(EKDayViewAccessibility *)self safeIvarForKey:@"_scroller"];

  return v2;
}

- (void)_axAnnotateScroller
{
  objc_opt_class();
  accessibilityScrollView = [(EKDayViewAccessibility *)self accessibilityScrollView];
  v4 = __UIAccessibilityCastAsSafeCategory();

  [v4 setAccessibilityIsDayGridScroller:1];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = EKDayViewAccessibility;
  [(EKDayViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(EKDayViewAccessibility *)self _axAnnotateScroller];
}

- (EKDayViewAccessibility)initWithFrame:(CGRect)frame sizeClass:(int64_t)class orientation:(int64_t)orientation displayDate:(id)date backgroundColor:(id)color opaque:(BOOL)opaque scrollbarShowsInside:(BOOL)inside isMiniPreviewInEventDetail:(BOOL)self0 rightClickDelegate:(id)self1
{
  v15.receiver = self;
  v15.super_class = EKDayViewAccessibility;
  delegate = [(EKDayViewAccessibility *)&v15 initWithFrame:class sizeClass:orientation orientation:date displayDate:color backgroundColor:opaque opaque:inside scrollbarShowsInside:frame.origin.x isMiniPreviewInEventDetail:frame.origin.y rightClickDelegate:frame.size.width, frame.size.height, detail, delegate];
  v12 = delegate;
  if (delegate)
  {
    [(EKDayViewAccessibility *)delegate _axAnnotateScroller];
  }

  return v12;
}

- (id)accessibilityCustomRotors
{
  v14[1] = *MEMORY[0x29EDCA608];
  v3 = [(EKDayViewAccessibility *)self _accessibilityValueForKey:@"AXCustomRotor"];
  if (!v3)
  {
    objc_initWeak(&location, self);
    v4 = objc_alloc(MEMORY[0x29EDC78E8]);
    v5 = accessibilityLocalizedString(@"rotor.events");
    v8 = MEMORY[0x29EDCA5F8];
    v9 = 3221225472;
    v10 = __51__EKDayViewAccessibility_accessibilityCustomRotors__block_invoke;
    v11 = &unk_29F2BCA78;
    objc_copyWeak(&v12, &location);
    v3 = [v4 initWithName:v5 itemSearchBlock:&v8];

    [(EKDayViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:@"AXCustomRotor", v8, v9, v10, v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  v14[0] = v3;
  v6 = [MEMORY[0x29EDB8D80] arrayWithObjects:v14 count:1];

  return v6;
}

id __51__EKDayViewAccessibility_accessibilityCustomRotors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained safeValueForKey:@"_allDayView"];
  v6 = [v5 safeValueForKey:@"occurrenceViews"];
  v7 = v6;
  v8 = MEMORY[0x29EDB8E90];
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 safeValueForKey:@"_dayContent"];
  v12 = [v11 safeValueForKey:@"occurrenceViews"];

  v13 = [v9 arrayByAddingObjectsFromArray:v12];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 _accessibilityCustomRotorResultHelper:v3 array:v13];

  return v15;
}

@end