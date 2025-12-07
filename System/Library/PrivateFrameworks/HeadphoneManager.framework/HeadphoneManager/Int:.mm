@interface Int:
- (unint64_t)String;
- (void)String;
@end

@implementation Int:

- (unint64_t)String
{
  v2 = lazy protocol witness table cache variable for type [Int : String] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [Int : String] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySiSSGMd, &_sSDySiSSGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [Int : String] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

- (void)String
{
  v4 = *self;

  result = a2;
  *a2 = v4;
  return result;
}

@end