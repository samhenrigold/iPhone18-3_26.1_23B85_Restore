@interface ConformingTuple<Pack{Float,Float,Float,
- (uint64_t)Float}>;
@end

@implementation ConformingTuple<Pack{Float,Float,Float,

- (uint64_t)Float}>
{
  result = *self;
  if (!result)
  {
    type metadata accessor for [ProxyCodable<Color>](255, &lazy cache variable for type metadata for [ConformingTuple<Pack{Float, Float, Float, Float}>], type metadata accessor for ConformingTuple<Pack{Float, Float, Float, Float}>);
    v10 = v9;
    v11 = lazy protocol witness table accessor for type ConformingTuple<Pack{Float, Float, Float, Float}> and conformance <each A> ConformingTuple<Pack{repeat A}>(a2, a3);
    result = swift_getWitnessTable(a4, v10, &v11);
    atomic_store(result, self);
  }

  return result;
}

@end