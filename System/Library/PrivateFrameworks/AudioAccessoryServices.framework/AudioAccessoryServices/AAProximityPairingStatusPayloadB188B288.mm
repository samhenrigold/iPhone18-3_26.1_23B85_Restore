@interface AAProximityPairingStatusPayloadB188B288
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadB188B288

- (id)describeProperties
{
  v26.receiver = self;
  v26.super_class = AAProximityPairingStatusPayloadB188B288;
  describeProperties = [(AAProximityPairingStatusPayloadUntethered *)&v26 describeProperties];
  v25 = describeProperties;
  NSAppendPrintF_safe(&v25, ", lid open count: %d", [(AAProximityPairingStatusPayloadB188B288 *)self lidOpenCount]);
  v4 = v25;

  v24 = v4;
  lidClosed = [(AAProximityPairingStatusPayloadB188B288 *)self lidClosed];
  v6 = "no";
  if (lidClosed)
  {
    v6 = "yes";
  }

  NSAppendPrintF_safe(&v24, ", lid closed: %s", v6);
  v7 = v24;

  v23 = v7;
  caseVersion = [(AAProximityPairingStatusPayloadB188B288 *)self caseVersion];
  v9 = "B435";
  if (caseVersion != 1)
  {
    v9 = "?";
  }

  if (!caseVersion)
  {
    v9 = "B235";
  }

  NSAppendPrintF_safe(&v23, ", case ver: %s", v9);
  v10 = v23;

  v22 = v10;
  caseLedColor = [(AAProximityPairingStatusPayloadB188B288 *)self caseLedColor];
  v12 = "?";
  if (caseLedColor <= 3)
  {
    v12 = off_278CDE1F0[caseLedColor];
  }

  NSAppendPrintF_safe(&v22, ", case led col: %s", v12);
  v13 = v22;

  v21 = v13;
  caseLedStatus = [(AAProximityPairingStatusPayloadB188B288 *)self caseLedStatus];
  v15 = "Blinking";
  if (caseLedStatus != 1)
  {
    v15 = "?";
  }

  if (!caseLedStatus)
  {
    v15 = "Solid";
  }

  NSAppendPrintF_safe(&v21, ", case led status: %s", v15);
  v16 = v21;

  v20 = v16;
  NSAppendPrintF_safe(&v20, ", color: %d", [(AAProximityPairingStatusPayloadB188B288 *)self color]);
  v17 = v20;
  v18 = v20;

  return v17;
}

@end