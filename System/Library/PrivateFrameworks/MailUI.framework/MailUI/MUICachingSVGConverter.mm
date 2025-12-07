@interface MUICachingSVGConverter
+ (id)_keyForData:(double)data size:(double)size scale:(double)scale;
- (MUICachingSVGConverter)init;
- (void)imageForSVGData:(id)data size:(CGSize)size scale:(double)scale completionHandler:(id)handler;
@end

@implementation MUICachingSVGConverter

- (MUICachingSVGConverter)init
{
  v6.receiver = self;
  v6.super_class = MUICachingSVGConverter;
  v2 = [(MUICachingSVGConverter *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (void)imageForSVGData:(id)data size:(CGSize)size scale:(double)scale completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  dataCopy = data;
  handlerCopy = handler;
  scale = [MUICachingSVGConverter _keyForData:dataCopy size:width scale:height, scale];
  cache = [(MUICachingSVGConverter *)self cache];
  v15 = [cache objectForKey:scale];

  if (v15)
  {
    uIImage = [v15 UIImage];
    handlerCopy[2](handlerCopy, uIImage);
  }

  else
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    temporaryDirectory = [defaultManager temporaryDirectory];
    uIImage = [temporaryDirectory URLByAppendingPathComponent:@"MailBrandIndicators"];

    path = [uIImage path];
    v20 = [defaultManager fileExistsAtPath:path];

    if ((v20 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager2 createDirectoryAtURL:uIImage withIntermediateDirectories:1 attributes:0 error:0];
    }

    ef_UUID = [MEMORY[0x277CCACA8] ef_UUID];
    v23 = [uIImage URLByAppendingPathComponent:ef_UUID];
    v24 = [v23 URLByAppendingPathExtension:@"svg"];

    [dataCopy writeToURL:v24 atomically:0];
    mEMORY[0x277CDAAE0] = [MEMORY[0x277CDAAE0] sharedGenerator];
    v26 = [objc_alloc(MEMORY[0x277CDAAD8]) initWithFileAtURL:v24 size:4 scale:width representationTypes:{height, scale}];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __71__MUICachingSVGConverter_imageForSVGData_size_scale_completionHandler___block_invoke;
    v29[3] = &unk_27818A4B0;
    v30 = defaultManager;
    v31 = v24;
    selfCopy = self;
    v33 = scale;
    v34 = handlerCopy;
    v27 = v24;
    v28 = defaultManager;
    [mEMORY[0x277CDAAE0] generateBestRepresentationForRequest:v26 completionHandler:v29];
  }
}

+ (id)_keyForData:(double)data size:(double)size scale:(double)scale
{
  v8 = a2;
  objc_opt_self();
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  ef_md5Digest = [v8 ef_md5Digest];

  ef_hexString = [ef_md5Digest ef_hexString];
  v12 = [v9 initWithFormat:@"%@.%f.%f.%f", ef_hexString, *&size, *&data, *&scale];

  return v12;
}

void __71__MUICachingSVGConverter_imageForSVGData_size_scale_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  [*(a1 + 32) removeItemAtURL:*(a1 + 40) error:0];
  if (v6)
  {
    v3 = [*(a1 + 48) cache];
    [v3 setObject:v6 forKey:*(a1 + 56)];
  }

  v4 = *(a1 + 64);
  v5 = [v6 UIImage];
  (*(v4 + 16))(v4, v5);
}

@end