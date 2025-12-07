@interface AAProximityPairingStatusPayloadB463
- (id)describeProperties;
@end

@implementation AAProximityPairingStatusPayloadB463

- (id)describeProperties
{
  v8.receiver = self;
  v8.super_class = AAProximityPairingStatusPayloadB463;
  describeProperties = [(AAProximityPairingStatusPayloadBeatsUntethered *)&v8 describeProperties];
  v7 = describeProperties;
  NSAppendPrintF_safe(&v7, ", col: %d", [(AAProximityPairingStatusPayloadB463 *)self color]);
  v4 = v7;
  v5 = v7;

  return v4;
}

@end