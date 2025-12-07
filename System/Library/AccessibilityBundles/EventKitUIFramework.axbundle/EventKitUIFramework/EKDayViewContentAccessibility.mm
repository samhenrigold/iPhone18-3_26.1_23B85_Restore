@interface EKDayViewContentAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)applyLoadedOccurrencesWithBatching:(BOOL)batching animated:(BOOL)animated reverse:(BOOL)reverse completion:(id)completion;
@end

@implementation EKDayViewContentAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"EKDayViewContent" hasInstanceMethod:@"applyLoadedOccurrencesWithBatching:animated:reverse:completion:" withFullSignature:{"v", "B", "B", "B", "@?", 0}];
  [validationsCopy validateClass:@"EKDayViewContent" hasInstanceVariable:@"_itemsByDay" withType:"NSMutableArray"];
  [validationsCopy validateClass:@"EKDayViewContent" hasInstanceVariable:@"_grid" withType:"EKDayGridView"];
}

- (void)applyLoadedOccurrencesWithBatching:(BOOL)batching animated:(BOOL)animated reverse:(BOOL)reverse completion:(id)completion
{
  reverseCopy = reverse;
  animatedCopy = animated;
  batchingCopy = batching;
  completionCopy = completion;
  v11 = [(EKDayViewContentAccessibility *)self safeValueForKey:@"_grid"];
  [v11 _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];

  v12.receiver = self;
  v12.super_class = EKDayViewContentAccessibility;
  [(EKDayViewContentAccessibility *)&v12 applyLoadedOccurrencesWithBatching:batchingCopy animated:animatedCopy reverse:reverseCopy completion:completionCopy];

  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v25 = *MEMORY[0x29EDCA608];
  v22.receiver = self;
  v22.super_class = EKDayViewContentAccessibility;
  [(EKDayViewContentAccessibility *)&v22 _accessibilityLoadAccessibilityInformation];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(EKDayViewContentAccessibility *)self safeValueForKey:@"_itemsByDay"];
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = v8;
        v10 = [v9 countByEnumeratingWithState:&v14 objects:v23 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v15;
          do
          {
            v13 = 0;
            do
            {
              if (*v15 != v12)
              {
                objc_enumerationMutation(v9);
              }

              [*(*(&v14 + 1) + 8 * v13++) _accessibilityLoadAccessibilityInformation];
            }

            while (v11 != v13);
            v11 = [v9 countByEnumeratingWithState:&v14 objects:v23 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v5);
  }
}

@end