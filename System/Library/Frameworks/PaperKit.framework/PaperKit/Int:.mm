@interface Int:
- (unint64_t)AnyCRValue;
- (void)AnyCRValue;
@end

@implementation Int:

- (void)AnyCRValue
{
  if (!lazy cache variable for type metadata for [Int : AnyCRValue])
  {
    type metadata accessor for AnyCRValue();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Int : AnyCRValue]);
    }
  }
}

- (unint64_t)AnyCRValue
{
  result = lazy protocol witness table cache variable for type [Int : AnyCRValue] and conformance <> [A : B];
  if (!lazy protocol witness table cache variable for type [Int : AnyCRValue] and conformance <> [A : B])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDySi9Coherence10AnyCRValueVGMd, &_sSDySi9Coherence10AnyCRValueVGMR);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AnyCRValue and conformance AnyCRValue, MEMORY[0x1E6995030], MEMORY[0x1E6995038]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Int : AnyCRValue] and conformance <> [A : B]);
  }

  return result;
}

@end