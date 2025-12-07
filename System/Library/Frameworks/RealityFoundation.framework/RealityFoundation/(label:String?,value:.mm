@interface (label:String?,value:
- (unint64_t)Any);
@end

@implementation (label:String?,value:

- (unint64_t)Any)
{
  result = lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A];
  if (!lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSSg5label_yp5valuetGMd, &_sSaySSSg5label_yp5valuetGMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A]);
  }

  return result;
}

@end