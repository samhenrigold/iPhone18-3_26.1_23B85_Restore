@interface String:
- (uint64_t)Any;
- (uint64_t)String;
- (void)String;
- (void)Swift.AnyObject;
@end

@implementation String:

- (uint64_t)String
{
  result = *self;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    result = swift_getWitnessTable();
    atomic_store(result, self);
  }

  return result;
}

- (void)String
{
  if (!*a2)
  {
    v4 = type metadata accessor for Dictionary();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

- (uint64_t)Any
{
  v3 = a3;
  v5 = *(self + 32);
  if (!a2)
  {
    memset(v10, 0, sizeof(v10));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v8 = a2;
  outlined init with take of Any(&v8, v10);
  if (v3)
  {
LABEL_3:
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  outlined destroy of NSObject?(v10, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (void)Swift.AnyObject
{
  if (!lazy cache variable for type metadata for [String : Swift.AnyObject])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : Swift.AnyObject]);
    }
  }
}

@end