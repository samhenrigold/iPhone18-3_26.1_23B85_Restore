@interface AnyHashable:
- (double)Any;
- (uint64_t)Any;
@end

@implementation AnyHashable:

- (double)Any
{
  v6 = *(self + 32);
  v7 = _Block_copy(aBlock);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSSecureCoding?, @unowned NSError?) -> ();
    if (!ObjCClassMetadata)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (ObjCClassMetadata)
  {
LABEL_3:
    ObjCClassMetadata = swift_getObjCClassMetadata();
  }

LABEL_4:
  if (a4)
  {
    a4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6(v7, v8, ObjCClassMetadata, a4);

  outlined consume of (@escaping @callee_guaranteed @Sendable (@guaranteed NSSecureCoding?, @guaranteed Error?) -> ())?(v7, v8);

  return result;
}

- (uint64_t)Any
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = *(self + 32);
  if (a2)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  if (a3)
  {
    a3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v9(v8, a3);

  return outlined destroy of TaskPriority?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

@end