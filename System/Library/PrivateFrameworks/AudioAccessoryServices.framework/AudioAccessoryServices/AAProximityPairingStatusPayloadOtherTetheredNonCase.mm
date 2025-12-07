@interface AAProximityPairingStatusPayloadOtherTetheredNonCase
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadOtherTetheredNonCase

- (id)describeProperties
{
  v24.receiver = self;
  v24.super_class = AAProximityPairingStatusPayloadOtherTetheredNonCase;
  describeProperties = [(AAProximityPairingStatusPayloadGeneral *)&v24 describeProperties];
  v23 = describeProperties;
  primaryLocation = [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self primaryLocation];
  if (primaryLocation > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_278CDE210[primaryLocation];
  }

  NSAppendPrintF_safe(&v23, ", Loc: %s", v5);
  v6 = v23;

  v22 = v6;
  if ([(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self outOfBoxMode])
  {
    v7 = "yes";
  }

  else
  {
    v7 = "no";
  }

  NSAppendPrintF_safe(&v22, ", Out of Box: %s", v7);
  v8 = v22;

  v21 = v8;
  NSAppendPrintF_safe(&v21, ", lid open count: %d", [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self lidOpenCount]);
  v9 = v21;

  v20 = v9;
  if ([(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self showProxStatus])
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  NSAppendPrintF_safe(&v20, ", show prox: %s", v10);
  v11 = v20;

  v19 = v11;
  NSAppendPrintF_safe(&v19, ", color: %d", [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self color]);
  v12 = v19;

  if ([(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self mainBatteryValid])
  {
    [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self mainBatteryCharging];
    v18 = v12;
    [(AAProximityPairingStatusPayloadOtherTetheredNonCase *)self mainBatteryLevel];
    v13 = &v18;
    NSAppendPrintF_safe(&v18, ", M Batt: %s%d%%");
  }

  else
  {
    v17 = v12;
    v13 = &v17;
    NSAppendPrintF_safe(&v17, ", M Batt: invalid");
  }

  v14 = *v13;
  v15 = v14;

  return v14;
}

@end