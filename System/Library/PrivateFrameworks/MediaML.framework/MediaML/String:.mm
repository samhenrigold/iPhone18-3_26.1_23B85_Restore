@interface String:
- (unint64_t)Any;
@end

@implementation String:

- (unint64_t)Any
{
  v2 = lazy protocol witness table cache variable for type [String : Any] and conformance [A : B];
  if (!lazy protocol witness table cache variable for type [String : Any] and conformance [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySSypGMd, &_sSDySSypGMR);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &lazy protocol witness table cache variable for type [String : Any] and conformance [A : B]);
    return WitnessTable;
  }

  return v2;
}

@end