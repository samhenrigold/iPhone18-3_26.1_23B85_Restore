@interface MockWorkoutDomainAccessor
- (BOOL)BOOLForKey:(id)key;
- (id)dataForPerGizmoDomainAndKey:(id)key;
- (void)writeBoolPerGizmoDomainAndKey:(id)key value:(BOOL)value;
- (void)writeDataPerGizmoDomainAndKey:(id)key data:(id)data;
@end

@implementation MockWorkoutDomainAccessor

- (BOOL)BOOLForKey:(id)key
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  LOBYTE(v3) = MockWorkoutDomainAccessor.BOOL(forKey:)(v6);

  return v3 & 1;
}

- (id)dataForPerGizmoDomainAndKey:(id)key
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = MockWorkoutDomainAccessor.data(forPerGizmoDomainAndKey:)(v3, v5);
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v6, v8);
    v9 = isa;
  }

  return v9;
}

- (void)writeDataPerGizmoDomainAndKey:(id)key data:(id)data
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  dataCopy = data;

  v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  swift_beginAccess();
  outlined copy of Data._Representation(v10, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *&self->dataDictionary[4];
  *&self->dataDictionary[4] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v12, v6, v8, isUniquelyReferenced_nonNull_native);

  *&self->dataDictionary[4] = v14;
  swift_endAccess();

  outlined consume of Data._Representation(v10, v12);
}

- (void)writeBoolPerGizmoDomainAndKey:(id)key value:(BOOL)value
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *&self->BOOLDictionary[4];
  *&self->BOOLDictionary[4] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(value, v6, v8, isUniquelyReferenced_nonNull_native);
  *&self->BOOLDictionary[4] = v10;
  swift_endAccess();
}

@end