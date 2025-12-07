@interface NCDigestSummaryPlatterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityCustomActions;
- (id)accessibilityLabel;
@end

@implementation NCDigestSummaryPlatterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceMethod:@"heading" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceMethod:@"date" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceMethod:@"count" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceMethod:@"featuredNotificationContentProviders" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCDigestFeaturedNotificationContentProvider" hasInstanceMethod:@"defaultActionBlock" withFullSignature:{"@?", 0}];
  [validationsCopy validateClass:@"NCDigestFeaturedNotificationContentProvider" isKindOfClass:@"NCNotificationRequestContentProvider"];
  [validationsCopy validateClass:@"NCNotificationRequestContentProvider" hasInstanceMethod:@"notificationRequest" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRequest" hasInstanceMethod:@"content" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationRequest" hasInstanceMethod:@"options" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationContent" hasInstanceMethod:@"defaultHeader" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationContent" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationContent" hasInstanceMethod:@"message" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCNotificationContent" hasInstanceMethod:@"attachmentImage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"NCDigestSummaryPlatterView" hasInstanceVariable:@"_summaryView" withType:"NCDigestSummaryView"];
  [validationsCopy validateClass:@"NCDigestSummaryView" hasInstanceVariable:@"_timeStampLabel" withType:"UILabel<BSUIDateLabel>"];
  [validationsCopy validateClass:@"NCDigestSummaryView" hasInstanceVariable:@"_headingLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NCNotificationOptions" hasInstanceMethod:@"suppressesTitleWhenLocked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NCNotificationOptions" hasInstanceMethod:@"suppressesSubtitleWhenLocked" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"NCNotificationOptions" hasInstanceMethod:@"suppressesBodyWhenLocked" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  v35 = *MEMORY[0x29EDCA608];
  v3 = [(NCDigestSummaryPlatterViewAccessibility *)self safeStringForKey:@"heading"];
  v4 = [(NCDigestSummaryPlatterViewAccessibility *)self safeValueForKeyPath:@"_summaryView._timeStampLabel"];
  if ([(NCDigestSummaryPlatterViewAccessibility *)self safeUnsignedIntegerForKey:@"count"])
  {
    v5 = MEMORY[0x29EDBA0F8];
    v6 = accessibilityLocalizedString(@"digest.notification.count");
    v7 = [v5 localizedStringWithFormat:v6, -[NCDigestSummaryPlatterViewAccessibility safeUnsignedIntegerForKey:](self, "safeUnsignedIntegerForKey:", @"count"];

    v8 = [(NCDigestSummaryPlatterViewAccessibility *)self safeArrayForKey:@"featuredNotificationContentProviders"];
    if ([v8 count])
    {
      v24 = v7;
      array = [MEMORY[0x29EDB8DE8] array];
      v25 = v4;
      v26 = v3;
      v10 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v3, v4}];
      [array axSafelyAddObjectsFromArray:v10];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v23 = v8;
      obj = v8;
      v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v29)
      {
        v28 = *v31;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v31 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v30 + 1) + 8 * i);
            v13 = [v12 safeValueForKeyPath:@"notificationRequest.content"];
            v14 = [v12 safeValueForKeyPath:@"notificationRequest.options"];
            v15 = [v13 safeStringForKey:@"defaultHeader"];
            v16 = [v13 safeStringForKey:@"title"];
            v17 = [v13 safeStringForKey:@"subtitle"];
            v18 = [v13 safeStringForKey:@"message"];
            v19 = [v13 safeValueForKey:@"attachmentImage"];
            if (v19)
            {
              v20 = accessibilityLocalizedString(@"attachment.label");
            }

            else
            {
              v20 = 0;
            }

            [array axSafelyAddObject:v15];
            if (!_isDevicePasscodeLocked() || ([v14 safeBoolForKey:@"suppressesTitleWhenLocked"] & 1) == 0)
            {
              [array axSafelyAddObject:v16];
            }

            if (!_isDevicePasscodeLocked() || ([v14 safeBoolForKey:@"suppressesSubtitleWhenLocked"] & 1) == 0)
            {
              [array axSafelyAddObject:v17];
            }

            if (!_isDevicePasscodeLocked() || ([v14 safeBoolForKey:@"suppressesBodyWhenLocked"] & 1) == 0)
            {
              [array axSafelyAddObject:v18];
              [array axSafelyAddObject:v20];
            }
          }

          v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
        }

        while (v29);
      }

      v21 = MEMORY[0x29ED3E8D0](array);

      v4 = v25;
      v3 = v26;
      v8 = v23;
      v7 = v24;
    }

    else
    {
      v21 = __UIAXStringForVariables();
    }
  }

  else
  {
    v21 = __UIAXStringForVariables();
  }

  return v21;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(NCDigestSummaryPlatterViewAccessibility *)self safeValueForKeyPath:@"_summaryView._headingLabel"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (id)accessibilityCustomActions
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = [(NCDigestSummaryPlatterViewAccessibility *)self safeArrayForKey:@"featuredNotificationContentProviders"];
  array = [MEMORY[0x29EDB8DE8] array];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v2;
  v19 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v19)
  {
    v17 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v24 + 1) + 8 * i);
        v5 = [v4 safeValueForKeyPath:@"notificationRequest.content"];
        v20 = [v5 safeStringForKey:@"defaultHeader"];
        v6 = [v5 safeStringForKey:@"title"];
        v7 = [v5 safeStringForKey:@"message"];
        v8 = [v5 safeValueForKey:@"attachmentImage"];
        if (v8)
        {
          v9 = accessibilityLocalizedString(@"attachment.label");
        }

        else
        {
          v9 = 0;
        }

        v10 = [MEMORY[0x29EDB8DE8] axArrayByIgnoringNilElementsWithCount:{1, v20}];
        v11 = [v4 safeValueForKeyPath:@"notificationRequest.options"];
        if (!_isDevicePasscodeLocked() || ([v11 safeBoolForKey:@"suppressesTitleWhenLocked"] & 1) == 0)
        {
          [v10 axSafelyAddObject:v6];
        }

        if (!_isDevicePasscodeLocked() || ([v11 safeBoolForKey:@"suppressesBodyWhenLocked"] & 1) == 0)
        {
          [v10 axSafelyAddObject:v7];
          [v10 axSafelyAddObject:v9];
        }

        v12 = MEMORY[0x29ED3E8D0](v10);
        objc_initWeak(&location, v4);
        v13 = objc_alloc(MEMORY[0x29EDC78E0]);
        v21[0] = MEMORY[0x29EDCA5F8];
        v21[1] = 3221225472;
        v21[2] = __69__NCDigestSummaryPlatterViewAccessibility_accessibilityCustomActions__block_invoke;
        v21[3] = &unk_29F316FB0;
        objc_copyWeak(&v22, &location);
        v14 = [v13 initWithName:v12 actionHandler:v21];
        [array axSafelyAddObject:v14];

        objc_destroyWeak(&v22);
        objc_destroyWeak(&location);
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  return array;
}

uint64_t __69__NCDigestSummaryPlatterViewAccessibility_accessibilityCustomActions__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeValueForKey:@"defaultActionBlock"];

  if (v2)
  {
    v2[2](v2);
  }

  return 1;
}

@end