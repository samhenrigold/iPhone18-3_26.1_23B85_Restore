@interface UnifiedFieldAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityPath;
- (int64_t)_accessibilitySortPriority;
@end

@implementation UnifiedFieldAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UITextField" hasInstanceMethod:@"_accessibilityRightButtons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UnifiedField" isKindOfClass:@"UITextField"];
  [validationsCopy validateClass:@"_SFNavigationBar"];
  [validationsCopy validateClass:@"_SFNavigationBar" hasInstanceVariable:@"_URLOutline" withType:"_SFNavigationBarURLButton"];
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v22 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  _accessibilitySupplementaryFooterViews = [(UnifiedFieldAccessibility *)self _accessibilitySupplementaryFooterViews];
  v9 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(_accessibilitySupplementaryFooterViews);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 convertPoint:self fromView:{x, y}];
        v14 = [v13 _accessibilityHitTest:eventCopy withEvent:?];
        if ([v14 isAccessibilityElement])
        {

          goto LABEL_11;
        }
      }

      v10 = [_accessibilitySupplementaryFooterViews countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16.receiver = self;
  v16.super_class = UnifiedFieldAccessibility;
  v14 = [(UnifiedFieldAccessibility *)&v16 _accessibilityHitTest:eventCopy withEvent:x, y];
LABEL_11:

  return v14;
}

- (int64_t)_accessibilitySortPriority
{
  if (AXDeviceIsPhoneIdiom())
  {
    return 1000;
  }

  v4.receiver = self;
  v4.super_class = UnifiedFieldAccessibility;
  return [(UnifiedFieldAccessibility *)&v4 _accessibilitySortPriority];
}

- (id)accessibilityPath
{
  v3 = [(UnifiedFieldAccessibility *)self _accessibilityViewAncestorIsKindOf:NSClassFromString(&cfstr_Sfnavigationba_0.isa)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 safeValueForKey:@"_URLOutline"];
    accessibilityPath = [v5 accessibilityPath];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = UnifiedFieldAccessibility;
    accessibilityPath = [(UnifiedFieldAccessibility *)&v8 accessibilityPath];
  }

  return accessibilityPath;
}

@end