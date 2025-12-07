@interface OpaqueDataService
+ (id)serializedHPKEWithData:(id)data publicKey:(id)key scheme:(id)scheme error:(id *)error;
- (_TtC24AppletTranslationLibrary17OpaqueDataService)init;
@end

@implementation OpaqueDataService

+ (id)serializedHPKEWithData:(id)data publicKey:(id)key scheme:(id)scheme error:(id *)error
{
  dataCopy = data;
  keyCopy = key;
  schemeCopy = scheme;
  v11 = sub_22EFB61DC();
  v13 = v12;

  v14 = sub_22EFB61DC();
  v16 = v15;

  if (schemeCopy)
  {
    sub_22EFB648C();
  }

  v18 = sub_22EFAC288(v11, v13, v14, v16, v17);
  v20 = v19;

  sub_22EF708C8(v14, v16);
  sub_22EF708C8(v11, v13);
  v21 = sub_22EFB61BC();
  sub_22EF708C8(v18, v20);

  return v21;
}

- (_TtC24AppletTranslationLibrary17OpaqueDataService)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for OpaqueDataService(self, a2);
  return [(OpaqueDataService *)&v3 init];
}

@end