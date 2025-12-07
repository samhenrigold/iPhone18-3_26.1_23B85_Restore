@interface NSObject(UIAccessibilitySafeCategory_Private)
- (id)_safeValidatedValueForKey:()UIAccessibilitySafeCategory_Private expectedClass:possibleExpectedTypeEncodings:;
@end

@implementation NSObject(UIAccessibilitySafeCategory_Private)

- (id)_safeValidatedValueForKey:()UIAccessibilitySafeCategory_Private expectedClass:possibleExpectedTypeEncodings:
{
  v13 = a3;
  v14 = [self safeValueForKey:v13];
  if (v14)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (AXShouldReportValidationErrors())
      {
        v18 = +[AXValidationManager sharedInstance];
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        [v18 sendExceptionForSafeValueKey:v13 onTarget:v20 overrideProcessName:0];
      }

      v21 = v14;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v24 = v21;
      if (isKindOfClass)
      {
        v25 = MEMORY[0x1E696AEC0];
        v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "length")}];
        v24 = [v25 stringWithFormat:@"<redacted string. len=%@", v26];
      }
      if (!AXPerformValidationChecks(isKindOfClass, v23) || (v27 = AXShouldCrashOnValidationErrors(), v28 = objc_opt_class(), NSStringFromClass(v28), v29 = ;
      {

LABEL_18:
        v14 = 0;
        goto LABEL_19;
      }

      goto LABEL_36;
    }

    if (a5)
    {
      objCType = [v14 objCType];
      if (strcmp(objCType, a5))
      {
        v16 = 0;
        v63 = &a9;
        while (1)
        {
          v17 = v63++;
          if (!*v17)
          {
            break;
          }

          if ((v16 & 1) == 0)
          {
            v16 = 1;
          }

          if (!strcmp(objCType, *v17))
          {
            goto LABEL_19;
          }
        }

        v39 = AXShouldReportValidationErrors();
        if (v39)
        {
          v41 = +[AXValidationManager sharedInstance];
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          [v41 sendExceptionForSafeValueKey:v13 onTarget:v43 overrideProcessName:0];
        }

        if (!AXPerformValidationChecks(v39, v40))
        {
          goto LABEL_35;
        }

        if (v16)
        {
          v44 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%s", a5];
          v64 = &a10;
          for (i = a9; i; i = *v46)
          {
            [v44 appendFormat:@", %s", i];
            v46 = v64++;
          }

          [v44 UTF8String];
        }

        else
        {
          v44 = 0;
        }

        v47 = v14;
        objc_opt_class();
        v48 = objc_opt_isKindOfClass();
        if (v48)
        {
          v50 = MEMORY[0x1E696AEC0];
          v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v47, "length")}];
          v52 = [v50 stringWithFormat:@"<redacted string. len=%@", v51];

          v47 = v52;
        }
        if (!AXPerformValidationChecks(v48, v49) || (v53 = AXShouldCrashOnValidationErrors(), v54 = objc_opt_class(), NSStringFromClass(v54), v61 = ;
        {

LABEL_35:
          goto LABEL_18;
        }

LABEL_36:
        abort();
      }
    }
  }

LABEL_19:

  return v14;
}

@end