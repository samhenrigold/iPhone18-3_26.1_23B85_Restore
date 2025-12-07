@interface HealthChartsData.DescriptionKey:
- (uint64_t)Double;
- (void)Double;
@end

@implementation HealthChartsData.DescriptionKey:

- (void)Double
{
  if (!lazy cache variable for type metadata for [HealthChartsData.DescriptionKey : Double])
  {
    lazy protocol witness table accessor for type HealthChartsData.DescriptionKey and conformance HealthChartsData.DescriptionKey();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [HealthChartsData.DescriptionKey : Double]);
    }
  }
}

- (uint64_t)Double
{
  result = *self;
  if (!result)
  {
    type metadata accessor for [HealthChartsData.DescriptionKey : Double](255);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

@end