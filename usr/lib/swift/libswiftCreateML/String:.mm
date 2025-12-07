@interface String:
- (id)NSObject;
- (uint64_t)Double;
@end

@implementation String:

- (id)NSObject
{
  v2 = *(self + 32);
  v3 = *(self + 40);

  v4 = v2(v3, a2);

  if (!v4)
  {
    return 0;
  }

  type metadata accessor for NSObject();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v4;
  return isa;
}

- (uint64_t)Double
{
  result = *self;
  if (!*self)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstract(a2);
    result = swift_getWitnessTable(a4, v6);
    *self = result;
  }

  return result;
}

@end