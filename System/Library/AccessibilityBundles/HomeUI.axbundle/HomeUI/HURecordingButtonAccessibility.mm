@interface HURecordingButtonAccessibility
- (id)accessibilityAttributedLabel;
- (id)accessibilityLabel;
- (id)accessibilityUserInputLabels;
@end

@implementation HURecordingButtonAccessibility

- (id)accessibilityAttributedLabel
{
  v13[1] = *MEMORY[0x29EDCA608];
  v2 = [(HURecordingButtonAccessibility *)self safeSwiftValueForKey:@"currentRecordingState"];
  safeSwiftEnumCase = [v2 safeSwiftEnumCase];

  if ([safeSwiftEnumCase isEqualToString:@"recording"])
  {
    v4 = objc_alloc(MEMORY[0x29EDBA038]);
    v5 = accessibilityHomeUILocalizedString(@"record.button");
    v6 = [v4 initWithString:v5];

    preferredLanguages = [MEMORY[0x29EDB8DE0] preferredLanguages];
    firstObject = [preferredLanguages firstObject];
    v9 = [firstObject hasPrefix:@"en"];

    if (v9)
    {
      v12 = *MEMORY[0x29EDC7F28];
      v13[0] = @"ɻɪ.ˈkwɔɻd";
      v10 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [v6 setAttributes:v10 range:{0, objc_msgSend(v6, "length")}];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)accessibilityUserInputLabels
{
  v10[3] = *MEMORY[0x29EDCA608];
  v2 = [(HURecordingButtonAccessibility *)self safeSwiftValueForKey:@"currentRecordingState"];
  safeSwiftEnumCase = [v2 safeSwiftEnumCase];

  if ([safeSwiftEnumCase isEqualToString:@"recording"])
  {
    v4 = accessibilityHomeUILocalizedString(@"record.button");
    v10[0] = v4;
    v5 = accessibilityHomeUILocalizedString(@"record.alternative.start");
    v10[1] = v5;
    v6 = accessibilityHomeUILocalizedString(@"record.alternative.announce");
    v10[2] = v6;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v10 count:3];

LABEL_5:
    goto LABEL_7;
  }

  if ([safeSwiftEnumCase isEqualToString:@"stopped"])
  {
    v4 = accessibilityHomeUILocalizedString(@"stop.button");
    v9[0] = v4;
    v5 = accessibilityHomeUILocalizedString(@"stop.alternative.done");
    v9[1] = v5;
    v7 = [MEMORY[0x29EDB8D80] arrayWithObjects:v9 count:2];
    goto LABEL_5;
  }

  v7 = MEMORY[0x29EDB8E90];
LABEL_7:

  return v7;
}

- (id)accessibilityLabel
{
  v2 = [(HURecordingButtonAccessibility *)self safeSwiftValueForKey:@"currentRecordingState"];
  safeSwiftEnumCase = [v2 safeSwiftEnumCase];

  if ([safeSwiftEnumCase isEqualToString:@"recording"])
  {
    v4 = @"record.button";
LABEL_5:
    v5 = accessibilityHomeUILocalizedString(v4);
    goto LABEL_7;
  }

  if ([safeSwiftEnumCase isEqualToString:@"stopped"])
  {
    v4 = @"stop.button";
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

@end