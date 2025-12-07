@interface InkBehavior.InkProperty
- (unint64_t):;
@end

@implementation InkBehavior.InkProperty

- (unint64_t):
{
  result = lazy protocol witness table cache variable for type [InkBehavior.InkProperty : [InkFunction]] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [InkBehavior.InkProperty : [InkFunction]] and conformance <> [A : B])
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDy9PencilKit11InkBehaviorV0C8PropertyOSayAA0C8FunctionVGGMd, &_sSDy9PencilKit11InkBehaviorV0C8PropertyOSayAA0C8FunctionVGGMR);
    lazy protocol witness table accessor for type InkBehavior.InkProperty and conformance InkBehavior.InkProperty(v1, v2, v3);
    lazy protocol witness table accessor for type [InkFunction] and conformance <A> [A](&lazy protocol witness table cache variable for type [InkFunction] and conformance <A> [A], &lazy protocol witness table cache variable for type InkFunction and conformance InkFunction, &protocol conformance descriptor for InkFunction, MEMORY[0x1E69E6330]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [InkBehavior.InkProperty : [InkFunction]] and conformance <> [A : B]);
  }

  return result;
}

@end