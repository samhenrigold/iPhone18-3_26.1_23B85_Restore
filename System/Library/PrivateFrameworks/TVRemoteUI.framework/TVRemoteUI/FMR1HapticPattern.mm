@interface FMR1HapticPattern
- (_TtC10TVRemoteUI17FMR1HapticPattern)initWithContentsOfURL:(id)l error:(id *)error;
- (_TtC10TVRemoteUI17FMR1HapticPattern)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation FMR1HapticPattern

- (_TtC10TVRemoteUI17FMR1HapticPattern)initWithDictionary:(id)dictionary error:(id *)error
{
  type metadata accessor for CHHapticPatternKey(0);
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type CHHapticPatternKey and conformance CHHapticPatternKey, type metadata accessor for CHHapticPatternKey, &protocol conformance descriptor for CHHapticPatternKey);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  return FMR1HapticPattern.init(dictionary:)(v4);
}

- (_TtC10TVRemoteUI17FMR1HapticPattern)initWithContentsOfURL:(id)l error:(id *)error
{
  v4 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  return FMR1HapticPattern.init(contentsOf:)(v6);
}

@end