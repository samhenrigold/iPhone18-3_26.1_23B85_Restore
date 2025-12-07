@interface AppDefaultsManager
+ (const)kSKUserDefaultsIdentifier;
+ (id)databaseEncryptionKeyForIdentifier:(id)identifier;
+ (void)deleteDatabaseEncryptionKeyForIdentifier:(id)identifier;
+ (void)setDatabaseEncryptionKey:(id)key forIdentifier:(id)identifier;
@end

@implementation AppDefaultsManager

+ (const)kSKUserDefaultsIdentifier
{
  v2 = sub_100020D00();

  return v2;
}

+ (id)databaseEncryptionKeyForIdentifier:(id)identifier
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_100020DEC(v3, v4);
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100019064(v5, v7);
  }

  return isa;
}

+ (void)setDatabaseEncryptionKey:(id)key forIdentifier:(id)identifier
{
  keyCopy = key;
  identifierCopy = identifier;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  sub_100020F5C(v7, v9, v10, v12);

  sub_100018DF0(v7, v9);
}

+ (void)deleteDatabaseEncryptionKeyForIdentifier:(id)identifier
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000210D8(v3, v4);
}

@end