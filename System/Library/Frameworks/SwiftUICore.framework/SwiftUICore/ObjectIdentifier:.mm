@interface ObjectIdentifier:
- (void)DynamicPropertyCache.Fields;
- (void)ScrollStateRequest;
@end

@implementation ObjectIdentifier:

- (void)DynamicPropertyCache.Fields
{
  if (!lazy cache variable for type metadata for MutableBox<[ObjectIdentifier : DynamicPropertyCache.Fields]>)
  {
    type metadata accessor for [Int : CGFloat](255, &lazy cache variable for type metadata for [ObjectIdentifier : DynamicPropertyCache.Fields], MEMORY[0x1E69E5FE0], &type metadata for DynamicPropertyCache.Fields, MEMORY[0x1E69E5FE8]);
    v5 = type metadata accessor for MutableBox(self, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for MutableBox<[ObjectIdentifier : DynamicPropertyCache.Fields]>);
    }
  }
}

- (void)ScrollStateRequest
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(self, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

@end