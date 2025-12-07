@interface PFArtworkFormatter
+ (id)formatArtworkUrlWithString:(id)string for:(CGSize)for cropCode:(id)code fileExtension:(id)extension;
+ (id)formatArtworkUrlWithUrl:(id)url for:(CGSize)for cropCode:(id)code fileExtension:(id)extension;
- (PFArtworkFormatter)init;
@end

@implementation PFArtworkFormatter

+ (id)formatArtworkUrlWithString:(id)string for:(CGSize)for cropCode:(id)code fileExtension:(id)extension
{
  height = for.height;
  width = for.width;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_1D917820C();
  v14 = v13;
  if (code)
  {
    v15 = sub_1D917820C();
    code = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = sub_1D917820C();
  static ArtworkFormatter.formatArtworkUrl(string:for:cropCode:fileExtension:)(v12, v14, v15, code, v17, v18, v11, width, height);

  v19 = sub_1D9176C2C();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v11, 1, v19);
  v22 = 0;
  if (v21 != 1)
  {
    v23 = sub_1D9176B1C();
    (*(v20 + 8))(v11, v19);
    v22 = v23;
  }

  return v22;
}

+ (id)formatArtworkUrlWithUrl:(id)url for:(CGSize)for cropCode:(id)code fileExtension:(id)extension
{
  height = for.height;
  width = for.width;
  v9 = sub_1D9176C2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  sub_1D9176B9C();
  if (code)
  {
    v16 = sub_1D917820C();
    code = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = sub_1D917820C();
  static ArtworkFormatter.formatArtworkUrl(url:for:cropCode:fileExtension:)(v16, code, v18, v19, v15, width, height);

  v20 = *(v10 + 8);
  v20(v12, v9);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    v21 = 0;
  }

  else
  {
    v22 = sub_1D9176B1C();
    v20(v15, v9);
    v21 = v22;
  }

  return v21;
}

- (PFArtworkFormatter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ArtworkFormatter();
  return [(PFArtworkFormatter *)&v3 init];
}

@end