@interface TXRDeferredMipmapInfo
- (TXRDeferredMipmapInfo)initWithArrayLength:(unint64_t)length cubemap:(BOOL)cubemap;
@end

@implementation TXRDeferredMipmapInfo

- (TXRDeferredMipmapInfo)initWithArrayLength:(unint64_t)length cubemap:(BOOL)cubemap
{
  cubemapCopy = cubemap;
  v12.receiver = self;
  v12.super_class = TXRDeferredMipmapInfo;
  v6 = [(TXRDeferredMipmapInfo *)&v12 init];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:length];
    elements = v6->_elements;
    v6->_elements = v7;

    if (length)
    {
      v9 = 0;
      do
      {
        v10 = v9;
        v9 = [[TXRDeferredElementInfo alloc] initAsCubemap:cubemapCopy];

        [(NSMutableArray *)v6->_elements addObject:v9];
        --length;
      }

      while (length);
    }
  }

  return v6;
}

@end