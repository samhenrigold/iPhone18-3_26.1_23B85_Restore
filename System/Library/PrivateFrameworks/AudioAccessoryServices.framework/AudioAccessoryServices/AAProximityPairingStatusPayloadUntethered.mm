@interface AAProximityPairingStatusPayloadUntethered
- (BOOL)leftBatteryCharging;
- (BOOL)leftBatteryValid;
- (BOOL)rightBatteryCharging;
- (BOOL)rightBatteryValid;
- (id)describeProperties;
- (unsigned)leftBatteryLevel;
- (unsigned)rightBatteryLevel;
@end

@implementation AAProximityPairingStatusPayloadUntethered

- (id)describeProperties
{
  v33.receiver = self;
  v33.super_class = AAProximityPairingStatusPayloadUntethered;
  describeProperties = [(AAProximityPairingStatusPayloadGeneral *)&v33 describeProperties];
  v32 = describeProperties;
  if ([(AAProximityPairingStatusPayloadUntethered *)self utpConnected])
  {
    v4 = "yes";
  }

  else
  {
    v4 = "no";
  }

  NSAppendPrintF_safe(&v32, ", UTP: %s", v4);
  v5 = v32;

  v31 = v5;
  budRole = [(AAProximityPairingStatusPayloadUntethered *)self budRole];
  budSide = [(AAProximityPairingStatusPayloadUntethered *)self budSide];
  primaryLocation = [(AAProximityPairingStatusPayloadUntethered *)self primaryLocation];
  secondaryLocation = [(AAProximityPairingStatusPayloadUntethered *)self secondaryLocation];
  if (budRole)
  {
    v10 = secondaryLocation;
  }

  else
  {
    v10 = primaryLocation;
  }

  if (budRole)
  {
    v11 = primaryLocation;
  }

  else
  {
    v11 = secondaryLocation;
  }

  v34 = 0;
  if (v10 > 3)
  {
    v12 = "?";
  }

  else
  {
    v12 = off_278CDE210[v10];
  }

  v13 = "?";
  if (v11 <= 3)
  {
    v13 = off_278CDE210[v11];
  }

  v14 = "Secondary";
  if (budRole != 1)
  {
    v14 = "?";
  }

  if (!budRole)
  {
    v14 = "Primary";
  }

  v15 = "Left";
  if (budSide != 1)
  {
    v15 = "?";
  }

  if (!budSide)
  {
    v15 = "Right";
  }

  NSAppendPrintF_safe(&v34, "This: %s - %s - %s, Other: %s", v15, v14, v12, v13);
  v16 = v34;
  NSAppendPrintF_safe(&v31, ", %@", v16);
  v17 = v31;

  v30 = v17;
  if ([(AAProximityPairingStatusPayloadUntethered *)self outOfBoxMode])
  {
    v18 = "yes";
  }

  else
  {
    v18 = "no";
  }

  NSAppendPrintF_safe(&v30, ", Out of Box: %s", v18);
  v19 = v30;

  if ([(AAProximityPairingStatusPayloadUntethered *)self leftBatteryValid])
  {
    [(AAProximityPairingStatusPayloadUntethered *)self leftBatteryCharging];
    v29 = v19;
    [(AAProximityPairingStatusPayloadUntethered *)self leftBatteryLevel];
    v20 = &v29;
    NSAppendPrintF_safe(&v29, ", L Batt: %s%d%%");
  }

  else
  {
    v28 = v19;
    v20 = &v28;
    NSAppendPrintF_safe(&v28, ", L Batt: invalid");
  }

  v21 = *v20;

  if ([(AAProximityPairingStatusPayloadUntethered *)self rightBatteryValid])
  {
    [(AAProximityPairingStatusPayloadUntethered *)self rightBatteryCharging];
    v27 = v21;
    [(AAProximityPairingStatusPayloadUntethered *)self rightBatteryLevel];
    v22 = &v27;
    NSAppendPrintF_safe(&v27, ", R Batt: %s%d%%");
  }

  else
  {
    v26 = v21;
    v22 = &v26;
    NSAppendPrintF_safe(&v26, ", R Batt: invalid");
  }

  v23 = *v22;
  v24 = v23;

  return v23;
}

- (BOOL)leftBatteryValid
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide]== 1)
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryValid];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryValid];
  }
}

- (unsigned)leftBatteryLevel
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide]== 1)
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryLevel];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryLevel];
  }
}

- (BOOL)leftBatteryCharging
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide]== 1)
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryCharging];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryCharging];
  }
}

- (BOOL)rightBatteryValid
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide])
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryValid];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryValid];
  }
}

- (unsigned)rightBatteryLevel
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide])
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryLevel];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryLevel];
  }
}

- (BOOL)rightBatteryCharging
{
  if ([(AAProximityPairingStatusPayloadUntethered *)self budSide])
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self otherBatteryCharging];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadGeneral *)self myBatteryCharging];
  }
}

@end