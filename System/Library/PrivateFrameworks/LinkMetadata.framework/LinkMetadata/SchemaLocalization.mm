@interface SchemaLocalization
+ (NSURL)bundleURL;
+ (id)tableForLibraryKey:(id)key;
@end

@implementation SchemaLocalization

+ (NSURL)bundleURL
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  static SchemaLocalization.bundleURL.getter(&v8 - v3);
  v5 = sub_18F0932BC();
  v6 = 0;
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
  {
    v6 = sub_18F09324C();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  return v6;
}

+ (id)tableForLibraryKey:(id)key
{
  v3 = sub_18F093B8C();
  static SchemaLocalization.tableForLibraryKey(_:)(v3, v4);

  v5 = sub_18F093B5C();

  return v5;
}

@end