@interface TableColumnCustomizationID:
- (uint64_t)TableColumnCustomizationEntry;
- (void)TableColumnCustomizationEntry;
@end

@implementation TableColumnCustomizationID:

- (void)TableColumnCustomizationEntry
{
  if (!lazy cache variable for type metadata for [TableColumnCustomizationID : TableColumnCustomizationEntry])
  {
    lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [TableColumnCustomizationID : TableColumnCustomizationEntry]);
    }
  }
}

- (uint64_t)TableColumnCustomizationEntry
{
  result = *self;
  if (!result)
  {
    type metadata accessor for [TableColumnCustomizationID : TableColumnCustomizationEntry](255);
    v10 = v9;
    v11[0] = a2();
    v11[1] = a3();
    result = swift_getWitnessTable(a4, v10, v11);
    atomic_store(result, self);
  }

  return result;
}

@end