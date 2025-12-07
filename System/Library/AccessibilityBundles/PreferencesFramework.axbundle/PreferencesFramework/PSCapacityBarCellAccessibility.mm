@interface PSCapacityBarCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation PSCapacityBarCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PSCapacityBarCell" isKindOfClass:@"PSTableCell"];
  [validationsCopy validateClass:@"PSCapacityBarCell" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PSCapacityBarCell" hasInstanceVariable:@"_sizeLabel" withType:"UILabel"];
}

- (id)accessibilityValue
{
  v28 = *MEMORY[0x29EDCA608];
  v26 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  specifier = [v2 specifier];
  v4 = [specifier propertyForKey:*MEMORY[0x29EDC62A8]];

  if (v4)
  {
    capacity = [v4 capacity];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    categories = [v4 categories];
    v7 = [categories countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = *v23;
      v11 = capacity;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v10)
          {
            objc_enumerationMutation(categories);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 bytes] / v11;
          if (v14 >= 0.01)
          {
            title = [v13 title];
            v16 = v14;
            v20 = MEMORY[0x29C2E8BB0](0, v16);
            v21 = @"__AXStringForVariablesSentinel";
            v19 = title;
            v17 = __UIAXStringForVariables();

            v9 = v17;
          }
        }

        v8 = [categories countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end