@interface EncodingGraph.Key:
- (unint64_t)EncodingGraph.Value;
@end

@implementation EncodingGraph.Key:

- (unint64_t)EncodingGraph.Value
{
  result = lazy protocol witness table cache variable for type [EncodingGraph.Key : EncodingGraph.Value].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [EncodingGraph.Key : EncodingGraph.Value].Keys and conformance [A : B].Keys)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSD4KeysVy3XPC13EncodingGraphO3KeyOAE5ValueO_GMd, &_sSD4KeysVy3XPC13EncodingGraphO3KeyOAE5ValueO_GMR);
    result = swift_getWitnessTable(MEMORY[0x1E69E5D90], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [EncodingGraph.Key : EncodingGraph.Value].Keys and conformance [A : B].Keys);
  }

  return result;
}

@end