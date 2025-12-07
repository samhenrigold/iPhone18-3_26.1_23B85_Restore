@interface TTSAssetBase
- (TTSAssetBase)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TTSAssetBase

- (void)encodeWithCoder:(id)coder
{
  bundleIdentifier = self->_bundleIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:bundleIdentifier forKey:@"_bundleIdentifier"];
  [coderCopy encodeObject:self->_compatibilityVersion forKey:@"_compatibilityVersion"];
  [coderCopy encodeObject:self->_contentVersion forKey:@"_contentVersion"];
  [coderCopy encodeObject:self->_masteredVersion forKey:@"_masteredVersion"];
}

- (TTSAssetBase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = TTSAssetBase;
  v5 = [(TTSAssetBase *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_compatibilityVersion"];
    compatibilityVersion = v5->_compatibilityVersion;
    v5->_compatibilityVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contentVersion"];
    contentVersion = v5->_contentVersion;
    v5->_contentVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_masteredVersion"];
    masteredVersion = v5->_masteredVersion;
    v5->_masteredVersion = v12;
  }

  return v5;
}

@end