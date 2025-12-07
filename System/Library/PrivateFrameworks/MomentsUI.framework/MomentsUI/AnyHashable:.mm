@interface AnyHashable:
- (double)Any;
- (void)Any;
@end

@implementation AnyHashable:

- (void)Any
{
  if (!lazy cache variable for type metadata for [AnyHashable : Any]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [AnyHashable : Any]?);
    }
  }
}

- (double)Any
{
  v4 = *(self + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);

  return result;
}

@end