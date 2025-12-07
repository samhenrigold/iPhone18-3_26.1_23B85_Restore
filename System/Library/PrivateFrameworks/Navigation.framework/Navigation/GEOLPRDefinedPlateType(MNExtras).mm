@interface GEOLPRDefinedPlateType(MNExtras)
- (uint64_t)hasDefinedPlateConditionsForVehicle:()MNExtras error:;
@end

@implementation GEOLPRDefinedPlateType(MNExtras)

- (uint64_t)hasDefinedPlateConditionsForVehicle:()MNExtras error:
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  conditions = [self conditions];
  v8 = [conditions countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(conditions);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v18 = 0;
        v13 = [v6 matchesDefinedPlateCondition:v12 error:&v18];
        v14 = v18;
        v15 = v14;
        if (v13)
        {
          goto LABEL_13;
        }

        if (v14)
        {
          if (a4)
          {
            v16 = v14;
            *a4 = v15;
          }

LABEL_13:

          conditions = v15;
          goto LABEL_14;
        }
      }

      v9 = [conditions countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

@end