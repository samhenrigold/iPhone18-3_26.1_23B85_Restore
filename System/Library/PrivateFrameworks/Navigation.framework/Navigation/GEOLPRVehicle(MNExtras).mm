@interface GEOLPRVehicle(MNExtras)
- (BOOL)_matchesPower:()MNExtras andVehicle:;
- (uint64_t)matchesDefinedPlateCondition:()MNExtras error:;
- (uint64_t)matchesLicensePlateRegion:()MNExtras;
- (uint64_t)matchesPlateInfo:()MNExtras;
@end

@implementation GEOLPRVehicle(MNExtras)

- (uint64_t)matchesDefinedPlateCondition:()MNExtras error:
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  licensePlate = [self licensePlate];
  if (![licensePlate length])
  {

    goto LABEL_29;
  }

  powerTypeKey = [self powerTypeKey];
  if (powerTypeKey)
  {
  }

  else
  {
    vehicleTypeKey = [self vehicleTypeKey];

    if (!vehicleTypeKey)
    {
      goto LABEL_30;
    }
  }

  powerTypeKeys = [v6 powerTypeKeys];
  vehicleTypeKeys = [v6 vehicleTypeKeys];
  v12 = [self _matchesPower:powerTypeKeys andVehicle:vehicleTypeKeys];

  if (!v12)
  {
LABEL_29:
    vehicleTypeKey = 0;
    goto LABEL_30;
  }

  licensePlate2 = [self licensePlate];
  v14 = [licensePlate2 length];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  plateMatchConditions = [v6 plateMatchConditions];
  v40 = [plateMatchConditions countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (!v40)
  {
LABEL_28:

    goto LABEL_29;
  }

  v16 = *v50;
  v42 = plateMatchConditions;
  v43 = v6;
  v38 = *v50;
  v39 = a4;
  while (1)
  {
    v17 = 0;
LABEL_10:
    if (*v50 != v16)
    {
      objc_enumerationMutation(plateMatchConditions);
    }

    v18 = *(*(&v49 + 1) + 8 * v17);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    patterns = [v18 patterns];
    v20 = [patterns countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (!v20)
    {
      break;
    }

    v21 = v20;
    v41 = v17;
    v22 = *v46;
LABEL_14:
    v23 = 0;
    while (1)
    {
      if (*v46 != v22)
      {
        objc_enumerationMutation(patterns);
      }

      v24 = *(*(&v45 + 1) + 8 * v23);
      v25 = objc_alloc(MEMORY[0x1E696AE70]);
      v44 = 0;
      v26 = [v25 initWithPattern:v24 options:3 error:&v44];
      v27 = v44;
      if (v26)
      {
        v32 = v27 == 0;
      }

      else
      {
        v32 = 0;
      }

      if (!v32)
      {
        v37 = v27;
        _mnLPRWrappedError(v39, -100, v27, @"Invalid regular expression: %@", v28, v29, v30, v31, v24);
        [MEMORY[0x1E69A1598] captureUserAction:2191 target:0 value:@"InvalidRegEx"];

        vehicleTypeKey = 0;
LABEL_31:
        plateMatchConditions = v42;
        v6 = v43;
        goto LABEL_32;
      }

      licensePlate3 = [self licensePlate];
      [v26 rangeOfFirstMatchInString:licensePlate3 options:0 range:{0, v14}];
      v35 = v34;

      if (!v35)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [patterns countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v21)
        {
          goto LABEL_14;
        }

        vehicleTypeKey = 1;
        goto LABEL_31;
      }
    }

    v17 = v41 + 1;
    plateMatchConditions = v42;
    v6 = v43;
    v16 = v38;
    if (v41 + 1 != v40)
    {
      goto LABEL_10;
    }

    v40 = [v42 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (!v40)
    {
      goto LABEL_28;
    }
  }

  vehicleTypeKey = 1;
LABEL_32:

LABEL_30:
  return vehicleTypeKey;
}

- (uint64_t)matchesLicensePlateRegion:()MNExtras
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 licensePlateInfosCount])
  {
    powerTypeKey = [self powerTypeKey];
    if (powerTypeKey)
    {
    }

    else
    {
      vehicleTypeKey = [self vehicleTypeKey];

      if (!vehicleTypeKey)
      {
        v6 = 0;
        goto LABEL_17;
      }
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    licensePlateInfos = [v4 licensePlateInfos];
    v9 = [licensePlateInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(licensePlateInfos);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          powerTypeKeys = [v13 powerTypeKeys];
          vehicleTypeKeys = [v13 vehicleTypeKeys];
          v16 = [self _matchesPower:powerTypeKeys andVehicle:vehicleTypeKeys];

          if (v16)
          {
            v6 = 1;
            goto LABEL_16;
          }
        }

        v10 = [licensePlateInfos countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_16:
  }

  else
  {
    v6 = 1;
  }

LABEL_17:

  return v6;
}

- (uint64_t)matchesPlateInfo:()MNExtras
{
  v4 = a3;
  powerTypeKeys = [v4 powerTypeKeys];
  vehicleTypeKeys = [v4 vehicleTypeKeys];

  v7 = [self _matchesPower:powerTypeKeys andVehicle:vehicleTypeKeys];
  return v7;
}

- (BOOL)_matchesPower:()MNExtras andVehicle:
{
  v6 = a3;
  v7 = a4;
  powerTypeKey = [self powerTypeKey];
  v18 = 0;
  if (!powerTypeKey || (v9 = powerTypeKey, v10 = [v6 count], v9, !v10) || (objc_msgSend(self, "powerTypeKey"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v6, "containsObject:", v11), v11, v12))
  {
    vehicleTypeKey = [self vehicleTypeKey];
    if (!vehicleTypeKey || (v14 = vehicleTypeKey, v15 = [v7 count], v14, !v15) || (objc_msgSend(self, "vehicleTypeKey"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v7, "containsObject:", v16), v16, v17))
    {
      v18 = 1;
    }
  }

  return v18;
}

@end