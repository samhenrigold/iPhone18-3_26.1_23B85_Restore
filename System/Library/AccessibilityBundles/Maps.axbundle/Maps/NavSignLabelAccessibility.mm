@interface NavSignLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityAttributedLabel;
- (id)accessibilityAttributedUserInputLabels;
@end

@implementation NavSignLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NavSignLabel" hasInstanceMethod:@"textAlternatives" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKServerFormattedString" hasInstanceMethod:@"multiPartAttributedStringWithAttributes:" withFullSignature:{"@", "@", 0}];
  [validationsCopy validateClass:@"MKMultiPartAttributedString" hasInstanceMethod:@"attributedString" withFullSignature:{"@", 0}];
}

- (id)accessibilityAttributedLabel
{
  v2 = [(NavSignLabelAccessibility *)self safeArrayForKey:@"textAlternatives"];
  LOBYTE(v9) = 0;
  firstObject = [v2 firstObject];
  v4 = __UIAccessibilitySafeClass();

  v15 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v5 = v4;
  AXPerformSafeBlock();
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);
  v7 = __UIAccessibilitySafeClass();

  if (v15 == 1)
  {
    abort();
  }

  return v7;
}

void __57__NavSignLabelAccessibility_accessibilityAttributedLabel__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) multiPartAttributedStringWithAttributes:MEMORY[0x29EDB8EA0]];
  v2 = [v5 attributedString];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)accessibilityAttributedUserInputLabels
{
  v25 = *MEMORY[0x29EDCA608];
  v12 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  [(NavSignLabelAccessibility *)self safeArrayForKey:@"textAlternatives"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v3)
  {
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        LOBYTE(v13) = 0;
        v6 = __UIAccessibilitySafeClass();
        if (v13 == 1 || (v19 = 0, v13 = 0, v14 = &v13, v15 = 0x3032000000, v16 = __Block_byref_object_copy_, v17 = __Block_byref_object_dispose_, v18 = 0, v7 = v6, AXPerformSafeBlock(), v8 = v14[5], v7, _Block_object_dispose(&v13, 8), v18, __UIAccessibilitySafeClass(), v9 = objc_claimAutoreleasedReturnValue(), v8, v19 == 1))
        {
          abort();
        }

        [v12 axSafelyAddObject:v9];
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v3);
  }

  return v12;
}

void __67__NavSignLabelAccessibility_accessibilityAttributedUserInputLabels__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) multiPartAttributedStringWithAttributes:MEMORY[0x29EDB8EA0]];
  v2 = [v5 attributedString];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end