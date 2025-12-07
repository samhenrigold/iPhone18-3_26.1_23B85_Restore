@interface TXRDeferredTextureInfo
- (TXRDeferredTextureInfo)initWithMipmapLevelCount:(unint64_t)count arrayLength:(unint64_t)length cubemap:(BOOL)cubemap;
@end

@implementation TXRDeferredTextureInfo

- (TXRDeferredTextureInfo)initWithMipmapLevelCount:(unint64_t)count arrayLength:(unint64_t)length cubemap:(BOOL)cubemap
{
  cubemapCopy = cubemap;
  v14.receiver = self;
  v14.super_class = TXRDeferredTextureInfo;
  v8 = [(TXRDeferredTextureInfo *)&v14 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
    mipmaps = v8->_mipmaps;
    v8->_mipmaps = v9;

    if (count)
    {
      v11 = 0;
      do
      {
        v12 = v11;
        v11 = [[TXRDeferredMipmapInfo alloc] initWithArrayLength:length cubemap:cubemapCopy];

        [(NSMutableArray *)v8->_mipmaps addObject:v11];
        --count;
      }

      while (count);
    }
  }

  return v8;
}

@end