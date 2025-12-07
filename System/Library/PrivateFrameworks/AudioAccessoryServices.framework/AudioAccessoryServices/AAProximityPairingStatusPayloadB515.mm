@interface AAProximityPairingStatusPayloadB515
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadB515

- (id)describeProperties
{
  v31.receiver = self;
  v31.super_class = AAProximityPairingStatusPayloadB515;
  describeProperties = [(AAProximityPairingStatusPayloadGeneral *)&v31 describeProperties];
  v30 = describeProperties;
  primaryLocation = [(AAProximityPairingStatusPayloadB515 *)self primaryLocation];
  if (primaryLocation > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278CDE210[primaryLocation];
  }

  NSAppendPrintF_safe(&v30, ", Loc: %s", v5);
  v6 = v30;

  v29 = v6;
  if ([(AAProximityPairingStatusPayloadB515 *)self outOfBoxMode])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  NSAppendPrintF_safe(&v29, ", Out of Box: %s", v7);
  v8 = v29;

  v28 = v8;
  NSAppendPrintF_safe(&v28, ", lid open count: %d", [(AAProximityPairingStatusPayloadB515 *)self lidOpenCount]);
  v9 = v28;

  v27 = v9;
  if ([(AAProximityPairingStatusPayloadB515 *)self unsupportedAccessoryConnected])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  NSAppendPrintF_safe(&v27, ", Unsup acc conn: %s", v10);
  v11 = v27;

  v26 = v11;
  caseLedColor = [(AAProximityPairingStatusPayloadB515 *)self caseLedColor];
  if (caseLedColor > 3)
  {
    v13 = "?";
  }

  else
  {
    v13 = off_278CDE1F0[caseLedColor];
  }

  NSAppendPrintF_safe(&v26, ", led col: %s", v13);
  v14 = v26;

  v25 = v14;
  if ([(AAProximityPairingStatusPayloadB515 *)self showProxStatus])
  {
    v15 = "yes";
  }

  else
  {
    v15 = "no";
  }

  NSAppendPrintF_safe(&v25, ", show prox: %s", v15);
  v16 = v25;

  v24 = v16;
  NSAppendPrintF_safe(&v24, ", cup col: %d", [(AAProximityPairingStatusPayloadB515 *)self cupColor]);
  v17 = v24;

  if ([(AAProximityPairingStatusPayloadB515 *)self mainBatteryValid])
  {
    [(AAProximityPairingStatusPayloadB515 *)self mainBatteryCharging];
    v23 = v17;
    [(AAProximityPairingStatusPayloadB515 *)self mainBatteryLevel];
    v18 = &v23;
    NSAppendPrintF_safe(&v23, ", M Batt: %s%d%%");
  }

  else
  {
    v22 = v17;
    v18 = &v22;
    NSAppendPrintF_safe(&v22, ", M Batt: invalid");
  }

  v19 = *v18;
  v20 = v19;

  return v19;
}

@end