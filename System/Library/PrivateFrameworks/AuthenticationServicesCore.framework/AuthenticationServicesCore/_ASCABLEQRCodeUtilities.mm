@interface _ASCABLEQRCodeUtilities
+ (BOOL)isPasskeyRegistrationURL:(id)l;
+ (BOOL)isPasskeyURL:(id)l;
+ (int64_t)passkeyURLTypeFromURL:(id)l;
- (_TtC26AuthenticationServicesCore23_ASCABLEQRCodeUtilities)init;
@end

@implementation _ASCABLEQRCodeUtilities

- (_TtC26AuthenticationServicesCore23_ASCABLEQRCodeUtilities)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(_ASCABLEQRCodeUtilities *)&v3 init];
}

+ (BOOL)isPasskeyURL:(id)l
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C216FFD4();
  sub_1C2170004();
  if (v7)
  {
    v8 = sub_1C2170984();
    v10 = v9;

    if (v8 == 1868851558 && v10 == 0xE400000000000000)
    {

      v12 = 1;
    }

    else
    {
      v12 = sub_1C2171324();
    }
  }

  else
  {
    v12 = 0;
  }

  (*(v4 + 8))(v6, v3);
  return v12 & 1;
}

+ (BOOL)isPasskeyRegistrationURL:(id)l
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C216FFD4();
  v7 = _s26AuthenticationServicesCore23_ASCABLEQRCodeUtilitiesC14passkeyURLType4fromSo010_ASPasskeyG0V10Foundation3URLV_tFZ_0(v6);
  (*(v4 + 8))(v6, v3);
  return v7 == 2;
}

+ (int64_t)passkeyURLTypeFromURL:(id)l
{
  v3 = sub_1C2170024();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C216FFD4();
  v7 = _s26AuthenticationServicesCore23_ASCABLEQRCodeUtilitiesC14passkeyURLType4fromSo010_ASPasskeyG0V10Foundation3URLV_tFZ_0(v6);
  (*(v4 + 8))(v6, v3);
  return v7;
}

@end