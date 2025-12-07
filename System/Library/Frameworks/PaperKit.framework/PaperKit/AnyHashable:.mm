@interface AnyHashable:
- (double)Any;
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
    v7 = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSItemProviderWriting?, @unowned NSError?) -> ();
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

  outlined consume of (@escaping @callee_guaranteed () -> ())?(v7, v8);

  return result;
}

@end