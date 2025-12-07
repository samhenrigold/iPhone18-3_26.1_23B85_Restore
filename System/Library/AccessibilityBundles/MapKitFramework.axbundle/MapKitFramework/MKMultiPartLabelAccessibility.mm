@interface MKMultiPartLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MKMultiPartLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MKMultiPartLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMultiPartLabel" hasInstanceMethod:@"multiPartString" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MKMultiPartAttributedString"];
  [validationsCopy validateClass:@"MKMultiPartAttributedString" hasInstanceMethod:@"components" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v31 = *MEMORY[0x29EDCA608];
  v18 = [(MKMultiPartLabelAccessibility *)self safeValueForKey:@"multiPartString"];
  if (!v18)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  v2 = [v18 safeValueForKey:@"components"];
  v3 = __UIAccessibilityCastAsClass();

  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = &stru_2A21DAE00;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v5)
  {
    v6 = *v21;
    v7 = *MEMORY[0x29EDC7628];
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 length];
          v19[0] = MEMORY[0x29EDCA5F8];
          v19[1] = 3221225472;
          v19[2] = __51__MKMultiPartLabelAccessibility_accessibilityLabel__block_invoke;
          v19[3] = &unk_29F2CB190;
          v19[4] = &v24;
          [v9 enumerateAttribute:v7 inRange:0 options:v10 usingBlock:{0, v19}];
          string = [v9 string];
          v16 = @"__AXStringForVariablesSentinel";
          v11 = __UIAXStringForVariables();
          v12 = v25[5];
          v25[5] = v11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v5);
  }

  v13 = [v25[5] length];
  if (v13)
  {
    v5 = v25[5];
  }

  _Block_object_dispose(&v24, 8);

  if (!v13)
  {
LABEL_14:
    v5 = [(MKMultiPartLabelAccessibility *)self safeStringForKey:@"text", string, v16];
  }

  return v5;
}

void __51__MKMultiPartLabelAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  NSClassFromString(&cfstr_Nstextattachme.isa);
  if (objc_opt_isKindOfClass())
  {
    v6 = [v7 accessibilityLabel];
    v3 = __UIAXStringForVariables();
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

@end