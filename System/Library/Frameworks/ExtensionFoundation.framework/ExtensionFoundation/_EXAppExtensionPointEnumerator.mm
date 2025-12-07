@interface _EXAppExtensionPointEnumerator
- (_EXAppExtensionPointEnumerator)init;
- (_EXAppExtensionPointEnumerator)initWithBundleIdentifier:(id)identifier sdkDictionary:(id)dictionary entitlements:(id)entitlements;
- (id)nextObject;
@end

@implementation _EXAppExtensionPointEnumerator

- (_EXAppExtensionPointEnumerator)initWithBundleIdentifier:(id)identifier sdkDictionary:(id)dictionary entitlements:(id)entitlements
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  specialized _dictionaryDownCast<A, B, C, D>(_:)(v9);
  v12 = v11;

  specialized AppExtensionPointEnumerator.init(bundleIdentifier:sdkDictionary:entitlements:)(v6, v8, v12, v10, &v22);
  v13 = self + OBJC_IVAR____EXAppExtensionPointEnumerator_inner;
  v14 = v22;
  v15 = v23;
  v16 = v24;
  v27 = *(&v23 + 1);
  v17 = v23;
  *v13 = v22;
  *(v13 + 1) = v17;
  *(v13 + 4) = v16;

  outlined init with copy of UUID?(&v27, v25, &_sSDySSypGMd, &_sSDySSypGMR);
  specialized AppExtensionPointEnumerator.Iterator.init(_:)(v14, *(&v14 + 1), v15, *(&v15 + 1), v16, v25);
  outlined destroy of NSObject?(&v27, &_sSDySSypGMd, &_sSDySSypGMR);
  v18 = self + OBJC_IVAR____EXAppExtensionPointEnumerator_iterator;
  v19 = v25[1];
  *v18 = v25[0];
  *(v18 + 1) = v19;
  *(v18 + 2) = v25[2];
  *(v18 + 6) = v26;
  v21.receiver = self;
  v21.super_class = _EXAppExtensionPointEnumerator;
  return [(_EXAppExtensionPointEnumerator *)&v21 init];
}

- (id)nextObject
{
  swift_beginAccess();
  selfCopy = self;
  AppExtensionPointEnumerator.Iterator.next()(v4);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_endAccess();
  if (v8)
  {
    v13 = type metadata accessor for _EXAppExtensionPointEnumerator.ExtensionPoint();
    v14 = objc_allocWithZone(v13);
    v15 = &v14[OBJC_IVAR____TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint_inner];
    *v15 = v6;
    *(v15 + 1) = v8;
    *(v15 + 2) = v10;
    v15[24] = v12;
    v15[25] = HIBYTE(v12) & 1;
    v24.receiver = v14;
    v24.super_class = v13;
    v16 = [(_EXAppExtensionPointEnumerator *)&v24 init];
    v25[3] = v13;
    v25[0] = v16;

    if (v13)
    {
      v17 = __swift_project_boxed_opaque_existential_1(v25, v13);
      v18 = *(v13 - 1);
      MEMORY[0x1EEE9AC00](v17);
      v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      v21 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v18 + 8))(v20, v13);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      v22 = v21;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v22 = 0;
LABEL_6:

  return v22;
}

- (_EXAppExtensionPointEnumerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end