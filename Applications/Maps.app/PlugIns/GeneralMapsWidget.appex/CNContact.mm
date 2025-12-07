@interface CNContact
- (CGImage)imageForCustomImageKey:(unint64_t)key suggestedSize:(CGSize)size contentScale:(float)scale;
- (id)avatarImageWithSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left;
@end

@implementation CNContact

- (id)avatarImageWithSize:(CGSize)size scale:(double)scale rightToLeft:(BOOL)left
{
  leftCopy = left;
  height = size.height;
  width = size.width;
  if (+[CNContact _maps_addressBookAllowed])
  {
    scale = [CNAvatarImageRenderingScope scopeWithPointSize:leftCopy scale:0 rightToLeft:width style:height, scale];
    placeholderImageProvider = objc_alloc_init(CNAvatarImageRenderer);
    selfCopy = self;
    v12 = [NSArray arrayWithObjects:&selfCopy count:1];
    v13 = [placeholderImageProvider avatarImageForContacts:v12 scope:scale];
  }

  else
  {
    scale = objc_alloc_init(CNAvatarImageRenderer);
    placeholderImageProvider = [scale placeholderImageProvider];
    v13 = [placeholderImageProvider imageForSize:width scale:{height, scale}];
  }

  return v13;
}

- (CGImage)imageForCustomImageKey:(unint64_t)key suggestedSize:(CGSize)size contentScale:(float)scale
{
  scale = [(CNContact *)self avatarImageWithSize:0 scale:size.width rightToLeft:size.height, scale];
  cGImage = [scale CGImage];

  return cGImage;
}

@end