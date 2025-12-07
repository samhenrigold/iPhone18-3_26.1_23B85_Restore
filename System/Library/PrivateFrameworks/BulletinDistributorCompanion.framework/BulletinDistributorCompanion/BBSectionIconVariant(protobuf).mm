@interface BBSectionIconVariant(protobuf)
+ (id)sectionIconVariantFromProtobuf:()protobuf;
- (id)blt_ProtobufWithScale:()protobuf;
@end

@implementation BBSectionIconVariant(protobuf)

+ (id)sectionIconVariantFromProtobuf:()protobuf
{
  v3 = MEMORY[0x277CF3560];
  v4 = a3;
  format = [v4 format];
  imageData = [v4 imageData];
  v7 = [v3 variantWithFormat:format imageData:imageData];

  systemImageName = [v4 systemImageName];
  [v7 setSystemImageName:systemImageName];

  v9 = [v4 uti];
  [v7 setUti:v9];

  precomposed = [v4 precomposed];
  [v7 setPrecomposed:precomposed];

  return v7;
}

- (id)blt_ProtobufWithScale:()protobuf
{
  v5 = objc_opt_new();
  [v5 setPrecomposed:{objc_msgSend(self, "isPrecomposed")}];
  [v5 setFormat:objc_msgSend(self, "format")];
  v6 = [self uti];

  if (v6)
  {
    systemImageName2 = [self uti];
    [v5 setUti:systemImageName2];
LABEL_8:

    goto LABEL_9;
  }

  imageData = [self imageData];

  if (imageData)
  {
    imageData2 = [self imageData];
LABEL_5:
    systemImageName2 = imageData2;
    [v5 setImageData:imageData2];
    goto LABEL_8;
  }

  systemImageName = [self systemImageName];

  if (systemImageName)
  {
    systemImageName2 = [self systemImageName];
    [v5 setSystemImageName:systemImageName2];
    goto LABEL_8;
  }

  bundlePath = [self bundlePath];
  if (bundlePath)
  {
    v13 = bundlePath;
    imageName = [self imageName];

    if (imageName)
    {
      imageData2 = BLTPBDataForSectionIconVariant(self, a3);
      goto LABEL_5;
    }
  }

  imagePath = [self imagePath];

  if (imagePath)
  {
    v16 = MEMORY[0x277CBEA90];
    systemImageName2 = [self imagePath];
    v17 = [v16 dataWithContentsOfFile:systemImageName2];
    [v5 setImageData:v17];

    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

@end