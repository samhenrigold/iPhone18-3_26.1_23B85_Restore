@interface UTType(SHShazamAdditions)
+ (id)SHCustomCatalogContentType;
+ (id)SHSignatureContentType;
@end

@implementation UTType(SHShazamAdditions)

+ (id)SHSignatureContentType
{
  if (SHSignatureContentType_onceToken != -1)
  {
    +[UTType(SHShazamAdditions) SHSignatureContentType];
  }

  v2 = SHSignatureContentType_signatureType;

  return v2;
}

+ (id)SHCustomCatalogContentType
{
  if (SHCustomCatalogContentType_onceToken != -1)
  {
    +[UTType(SHShazamAdditions) SHCustomCatalogContentType];
  }

  v2 = SHCustomCatalogContentType_catalogType;

  return v2;
}

@end