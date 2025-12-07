@interface String:
- (uint64_t)Any;
- (uint64_t)String;
- (unint64_t)Any;
- (void)Any;
- (void)Encodable;
@end

@implementation String:

- (void)Encodable
{
  if (!lazy cache variable for type metadata for [String : Encodable])
  {
    type metadata accessor for CVarArg(255, &lazy cache variable for type metadata for Encodable, MEMORY[0x1E69E5E78]);
    v1 = type metadata accessor for Dictionary();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [String : Encodable]);
    }
  }
}

- (void)Any
{
  if (!lazy cache variable for type metadata for [String : Any])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : Any]);
    }
  }
}

- (unint64_t)Any
{
  result = lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys;
  if (!lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys)
  {
    type metadata accessor for [String : Any](255, &lazy cache variable for type metadata for [String : Any].Keys, MEMORY[0x1E69E5D88]);
    result = swift_getWitnessTable(MEMORY[0x1E69E5D90], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [String : Any].Keys and conformance [A : B].Keys);
  }

  return result;
}

- (uint64_t)Any
{
  v4 = *(self + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

- (uint64_t)String
{
  result = *self;
  if (!result)
  {
    _sSDySSypGMaTm_0(255, &lazy cache variable for type metadata for [String : String], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    v8[0] = a2;
    v8[1] = a2;
    result = swift_getWitnessTable(a3, v7, v8);
    atomic_store(result, self);
  }

  return result;
}

@end