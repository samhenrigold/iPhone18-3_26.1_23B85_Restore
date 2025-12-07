@interface TabCustomizationID:
- (uint64_t)TabCustomizationEntry;
- (uint64_t)TabSectionCustomizationEntry;
- (void)TabCustomizationEntry;
- (void)TabSectionCustomizationEntry;
@end

@implementation TabCustomizationID:

- (void)TabCustomizationEntry
{
  if (!lazy cache variable for type metadata for [TabCustomizationID : TabCustomizationEntry])
  {
    lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [TabCustomizationID : TabCustomizationEntry]);
    }
  }
}

- (void)TabSectionCustomizationEntry
{
  if (!lazy cache variable for type metadata for [TabCustomizationID : TabSectionCustomizationEntry])
  {
    lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID();
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [TabCustomizationID : TabSectionCustomizationEntry]);
    }
  }
}

- (uint64_t)TabCustomizationEntry
{
  result = *self;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID();
    v7[1] = a3();
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v6, v7);
    atomic_store(result, self);
  }

  return result;
}

- (uint64_t)TabSectionCustomizationEntry
{
  result = *self;
  if (!result)
  {
    v6 = a2(255);
    v7[0] = lazy protocol witness table accessor for type TabCustomizationID and conformance TabCustomizationID();
    v7[1] = a3();
    result = swift_getWitnessTable(MEMORY[0x1E69E5E58], v6, v7);
    atomic_store(result, self);
  }

  return result;
}

@end