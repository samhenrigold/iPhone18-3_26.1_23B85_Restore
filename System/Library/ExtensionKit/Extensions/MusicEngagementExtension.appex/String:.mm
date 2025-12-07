@interface String:
- (Class)NSObject;
- (double)Any;
- (void)Lyrics.LineTranslationMetadata;
- (void)String;
@end

@implementation String:

- (void)String
{
  if (!lazy cache variable for type metadata for [String : String]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [String : String]?);
    }
  }
}

- (Class)NSObject
{
  v1 = *(self + 32);

  v3 = v1(v2);

  if (v3)
  {
    type metadata accessor for NSObject();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (double)Any
{
  v2 = *(self + 32);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);

  return result;
}

- (void)Lyrics.LineTranslationMetadata
{
  if (!lazy cache variable for type metadata for [String : Lyrics.LineTranslationMetadata])
  {
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String : Lyrics.LineTranslationMetadata]);
    }
  }
}

@end