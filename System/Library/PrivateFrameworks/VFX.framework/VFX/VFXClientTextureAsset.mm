@interface VFXClientTextureAsset
- (CGImage)CGImage;
- (MTLTexture)texture;
- (NSString)clientIdentifier;
- (void)setCGImage:(CGImage *)image;
- (void)setClientIdentifier:(id)identifier;
- (void)setTexture:(id)texture;
@end

@implementation VFXClientTextureAsset

- (MTLTexture)texture
{
  v3 = objc_msgSend_entityObject(self, a2, v2);
  v6 = objc_msgSend_properties(v3, v4, v5);

  return MEMORY[0x1EEE66B58](v6, sel_clientTexture, v7);
}

- (void)setTexture:(id)texture
{
  v4 = objc_msgSend_entityObject(self, a2, texture);
  v7 = objc_msgSend_properties(v4, v5, v6);

  MEMORY[0x1EEE66B58](v7, sel_setClientTexture_, texture);
}

- (CGImage)CGImage
{
  v3 = objc_msgSend_entityObject(self, a2, v2);
  v6 = objc_msgSend_properties(v3, v4, v5);

  return MEMORY[0x1EEE66B58](v6, sel_clientCGImage, v7);
}

- (void)setCGImage:(CGImage *)image
{
  v4 = objc_msgSend_entityObject(self, a2, image);
  v7 = objc_msgSend_properties(v4, v5, v6);

  MEMORY[0x1EEE66B58](v7, sel_setClientCGImage_, image);
}

- (NSString)clientIdentifier
{
  v3 = objc_msgSend_entityObject(self, a2, v2);
  v6 = objc_msgSend_properties(v3, v4, v5);

  return MEMORY[0x1EEE66B58](v6, sel_clientTextureIdentifier, v7);
}

- (void)setClientIdentifier:(id)identifier
{
  v4 = objc_msgSend_entityObject(self, a2, identifier);
  v7 = objc_msgSend_properties(v4, v5, v6);

  MEMORY[0x1EEE66B58](v7, sel_setClientTextureIdentifier_, identifier);
}

@end