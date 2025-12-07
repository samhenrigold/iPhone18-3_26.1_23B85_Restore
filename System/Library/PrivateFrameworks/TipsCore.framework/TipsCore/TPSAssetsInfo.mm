@interface TPSAssetsInfo
- (NSString)description;
- (TPSAssetsInfo)init;
- (TPSAssetsInfo)initWithCoder:(id)coder;
- (TPSAssetsInfo)initWithVideoIdentifier:(id)identifier videoURL:(id)l imageIdentifier:(id)imageIdentifier imageURL:(id)rL;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPSAssetsInfo

- (TPSAssetsInfo)initWithVideoIdentifier:(id)identifier videoURL:(id)l imageIdentifier:(id)imageIdentifier imageURL:(id)rL
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE06970, &qword_1C0156340);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  if (identifier)
  {
    identifier = sub_1C014C230();
    v17 = v16;
    if (l)
    {
LABEL_3:
      sub_1C014BBC0();
      v18 = sub_1C014BC50();
      (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (l)
    {
      goto LABEL_3;
    }
  }

  v19 = sub_1C014BC50();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
LABEL_6:
  if (!imageIdentifier)
  {
    v21 = 0;
    rLCopy2 = rL;
    if (rLCopy2)
    {
      goto LABEL_8;
    }

LABEL_10:
    v24 = 1;
    goto LABEL_11;
  }

  imageIdentifier = sub_1C014C230();
  v21 = v20;
  rLCopy2 = rL;
  if (!rLCopy2)
  {
    goto LABEL_10;
  }

LABEL_8:
  v23 = rLCopy2;
  sub_1C014BBC0();

  v24 = 0;
LABEL_11:
  v25 = sub_1C014BC50();
  (*(*(v25 - 8) + 56))(v13, v24, 1, v25);
  return TPSAssetsInfo.init(videoIdentifier:videoURL:imageIdentifier:imageURL:)(identifier, v17, v15, imageIdentifier, v21, v13);
}

- (TPSAssetsInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TPSAssetsInfo.encode(with:)(coderCopy);
}

- (TPSAssetsInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_1C0128960();

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  TPSAssetsInfo.description.getter();

  v3 = sub_1C014C200();

  return v3;
}

@end