@interface AAProximityPairingStatusPayloadB444
- (id)describeProperties;
- (unsigned)colorBest;
@end

@implementation AAProximityPairingStatusPayloadB444

- (id)describeProperties
{
  v12.receiver = self;
  v12.super_class = AAProximityPairingStatusPayloadB444;
  describeProperties = [(AAProximityPairingStatusPayloadBeatsUntethered *)&v12 describeProperties];
  v11 = describeProperties;
  NSAppendPrintF_safe(&v11, ", L col: %d", [(AAProximityPairingStatusPayloadB444 *)self leftColor]);
  v4 = v11;

  v10 = v4;
  NSAppendPrintF_safe(&v10, ", R col: %d", [(AAProximityPairingStatusPayloadB444 *)self rightColor]);
  v5 = v10;

  v9 = v5;
  NSAppendPrintF_safe(&v9, ", C col: %d", [(AAProximityPairingStatusPayloadB444 *)self caseColor]);
  v6 = v9;
  v7 = v9;

  return v6;
}

- (unsigned)colorBest
{
  if ([(AAProximityPairingPayload *)self pid]== 8209)
  {
    return 1;
  }

  if ([(AAProximityPairingStatusPayloadB444 *)self leftColor]== 15)
  {
    if ([(AAProximityPairingStatusPayloadB444 *)self rightColor]== 15)
    {
      return 1;
    }

    return [(AAProximityPairingStatusPayloadB444 *)self rightColor];
  }

  else
  {

    return [(AAProximityPairingStatusPayloadB444 *)self leftColor];
  }
}

@end