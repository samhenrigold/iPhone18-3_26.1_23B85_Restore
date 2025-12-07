@interface AAProximityPairingStatusPayloadBeatsUntethered
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadBeatsUntethered

- (id)describeProperties
{
  v24.receiver = self;
  v24.super_class = AAProximityPairingStatusPayloadBeatsUntethered;
  describeProperties = [(AAProximityPairingStatusPayloadUntethered *)&v24 describeProperties];
  v23 = describeProperties;
  NSAppendPrintF_safe(&v23, ", lid open count: %d", [(AAProximityPairingStatusPayloadBeatsUntethered *)self lidOpenCount]);
  v4 = v23;

  v22 = v4;
  lidClosed = [(AAProximityPairingStatusPayloadBeatsUntethered *)self lidClosed];
  v6 = "no";
  if (lidClosed)
  {
    v6 = "yes";
  }

  NSAppendPrintF_safe(&v22, ", lid closed: %s", v6);
  v7 = v22;

  v21 = v7;
  caseVersion = [(AAProximityPairingStatusPayloadBeatsUntethered *)self caseVersion];
  v9 = "?";
  v10 = "B435";
  if (caseVersion != 1)
  {
    v10 = "?";
  }

  if (!caseVersion)
  {
    v10 = "B235";
  }

  NSAppendPrintF_safe(&v21, ", case ver: %s", v10);
  v11 = v21;

  v20 = v11;
  caseLedColor = [(AAProximityPairingStatusPayloadBeatsUntethered *)self caseLedColor];
  if (caseLedColor <= 3)
  {
    v9 = off_278CDE1B0[caseLedColor];
  }

  NSAppendPrintF_safe(&v20, ", case led col: %s", v9);
  v13 = v20;

  v19 = v13;
  caseLedStatus = [(AAProximityPairingStatusPayloadBeatsUntethered *)self caseLedStatus];
  if (caseLedStatus > 3)
  {
    v15 = "?";
  }

  else
  {
    v15 = off_278CDE1D0[caseLedStatus];
  }

  NSAppendPrintF_safe(&v19, ", case led status: %s", v15);
  v16 = v19;
  v17 = v19;

  return v16;
}

@end