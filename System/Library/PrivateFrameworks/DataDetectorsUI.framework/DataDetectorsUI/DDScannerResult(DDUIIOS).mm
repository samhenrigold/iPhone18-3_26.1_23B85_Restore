@interface DDScannerResult(DDUIIOS)
- (uint64_t)ddui_isEquivalentToResult:()DDUIIOS;
@end

@implementation DDScannerResult(DDUIIOS)

- (uint64_t)ddui_isEquivalentToResult:()DDUIIOS
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    type = [self type];
    type2 = [v4 type];
    v7 = [type isEqualToString:type2];

    if (!v7)
    {
      v13 = 0;
      goto LABEL_19;
    }

    value = [self value];
    lowercaseString = [value lowercaseString];
    value2 = [v4 value];
    lowercaseString2 = [value2 lowercaseString];
    v12 = [lowercaseString isEqual:lowercaseString2];

    if (v12)
    {
      v13 = 1;
LABEL_19:

      goto LABEL_20;
    }

    [self coreResult];
    if (DDResultHasType())
    {
      v25 = 0;
      v26 = 0.0;
      if (DDResultCurrencyExtraction())
      {
        v23 = 0;
        v24 = 0.0;
        [v4 coreResult];
        if (DDResultCurrencyExtraction())
        {
          if (v26 == v24)
          {
            v13 = [v25 isEqualToString:{v23, v26}];
            v14 = 0;
LABEL_18:

            goto LABEL_19;
          }
        }
      }
    }

    else
    {
      if (!DDResultHasType())
      {
        v22 = 0;
        v13 = [self getPhoneValue:&v22 label:0];
        v14 = v22;
        if (v13)
        {
          v21 = 0;
          v16 = [v4 getPhoneValue:&v21 label:0];
          v17 = v21;
          v18 = v17;
          v13 = 0;
          if (v16 && v17)
          {
            if (v14 == v17)
            {
              v13 = 1;
            }

            else if ([v14 containsString:@"@"])
            {
              lowercaseString3 = [v14 lowercaseString];
              lowercaseString4 = [v18 lowercaseString];
              v13 = [lowercaseString3 isEqualToString:lowercaseString4];
            }

            else
            {
              v13 = [DDContactUtils phoneNumber:v14 isEqualToPhoneNumber:v18];
            }
          }
        }

        goto LABEL_18;
      }

      v25 = 0;
      v26 = 0.0;
      if (DDResultPhysicalUnitsExtraction())
      {
        v23 = 0;
        v24 = 0.0;
        [v4 coreResult];
        if (DDResultPhysicalUnitsExtraction())
        {
          if (v26 == v24)
          {
            v13 = [v25 isEqualToArray:{v23, v26}];
            v14 = 0;
            goto LABEL_18;
          }
        }
      }
    }

    v13 = 0;
    v14 = 0;
    goto LABEL_18;
  }

  v13 = 0;
LABEL_20:

  return v13;
}

@end