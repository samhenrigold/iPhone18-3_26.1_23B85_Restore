@interface A:
- (uint64_t)B;
- (unint64_t)B;
@end

@implementation A:

- (uint64_t)B
{
  WitnessTable = swift_getWitnessTable();

  return CVarArg<>._cVarArgEncoding.getter(self, a2, WitnessTable);
}

- (unint64_t)B
{
  result = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(self, a2[2], a2[3], a2[4]);
  *a3 = result;
  return result;
}

@end