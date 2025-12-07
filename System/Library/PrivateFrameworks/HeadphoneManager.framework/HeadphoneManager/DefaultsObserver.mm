@interface DefaultsObserver
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation DefaultsObserver

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  MEMORY[0x1E69E5928](path);
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](change);
  MEMORY[0x1E69E5928](self);
  if (path)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v6;
    MEMORY[0x1E69E5920](path);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (object)
  {
    _bridgeAnyObjectToAny(_:)();
    outlined init with take of Any(v18, v19);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  if (change)
  {
    type metadata accessor for NSKeyValueChangeKey(0);
    lazy protocol witness table accessor for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey();
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    MEMORY[0x1E69E5920](change);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  DefaultsObserver.observeValue(forKeyPath:of:change:context:)(v11, v12, v19, v8, context);

  outlined destroy of Any?(v19);

  MEMORY[0x1E69E5920](self);
}

@end