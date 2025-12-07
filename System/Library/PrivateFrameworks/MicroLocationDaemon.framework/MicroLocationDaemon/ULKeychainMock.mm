@interface ULKeychainMock
+ (id)retrieveSymmetricKey:(id)key;
@end

@implementation ULKeychainMock

+ (id)retrieveSymmetricKey:(id)key
{
  v3 = sub_259212840();
  static ULKeychainMock.retrieveSymmetricKey(_:)(v3, v4, v13);

  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_259212BF0();
    (*(v7 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end