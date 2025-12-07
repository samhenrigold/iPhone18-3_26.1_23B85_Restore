@interface CPSMapsImageLoader
- (CPSMapsImageLoader)initWithImageDownloader:(id)downloader;
- (void)_loadImageForGEOFeatureStyleAttributes:(id)attributes completionHandler:(id)handler;
- (void)loadImageForGEOStyleAttributes:(id)attributes completionHandler:(id)handler;
- (void)loadImageForMapItemMUID:(unint64_t)d completionHandler:(id)handler;
@end

@implementation CPSMapsImageLoader

- (CPSMapsImageLoader)initWithImageDownloader:(id)downloader
{
  downloaderCopy = downloader;
  v14.receiver = self;
  v14.super_class = CPSMapsImageLoader;
  v6 = [(CPSMapsImageLoader *)&v14 init];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.ClipServices.%@.%p", objc_opt_class(), v6];
    uTF8String = [v7 UTF8String];
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v10 = dispatch_queue_create(uTF8String, v9);
    queue = v6->_queue;
    v6->_queue = v10;

    objc_storeStrong(&v6->_imageDownloader, downloader);
    v12 = v6;
  }

  return v6;
}

- (void)loadImageForGEOStyleAttributes:(id)attributes completionHandler:(id)handler
{
  attributesCopy = attributes;
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__CPSMapsImageLoader_loadImageForGEOStyleAttributes_completionHandler___block_invoke;
  block[3] = &unk_278DCDCF8;
  v12 = attributesCopy;
  selfCopy = self;
  v14 = handlerCopy;
  v9 = handlerCopy;
  v10 = attributesCopy;
  dispatch_async(queue, block);
}

void __71__CPSMapsImageLoader_loadImageForGEOStyleAttributes_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277D0EB18]) initWithPlaceStyleAttributes:*(a1 + 32)];
  [*(a1 + 40) _loadImageForGEOFeatureStyleAttributes:v2 completionHandler:*(a1 + 48)];
}

- (void)loadImageForMapItemMUID:(unint64_t)d completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke;
  block[3] = &unk_278DCF328;
  v10 = handlerCopy;
  dCopy = d;
  block[4] = self;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D0EBA8]) initWithMUID:a1[6] coordinate:{-180.0, -180.0}];
  v3 = [MEMORY[0x277D0EBD0] sharedService];
  v4 = [v3 defaultTraits];

  [v4 setWantsBrandIcon:1];
  v5 = [MEMORY[0x277D0EBD0] sharedService];
  v11[0] = v2;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v7 = [v5 ticketForIdentifiers:v6 resultProviderID:0 contentProvider:0 traits:v4];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_2;
  v9[3] = &unk_278DCF300;
  v8 = a1[5];
  v9[4] = a1[4];
  v10 = v8;
  [v7 submitWithHandler:v9 networkActivity:0];
}

void __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 firstObject];
  v7 = [v6 _bestAvatarBrandIconURLForSize:1 allowSmaller:{500.0, 500.0}];
  v8 = [v6 _styleAttributes];
  v10 = v8;
  if (v7)
  {
    [*(*(a1 + 32) + 16) downloadImageWithURL:v7 completionHandler:*(a1 + 40)];
  }

  else if (v8)
  {
    v11 = *(a1 + 32);
    v12 = *(v11 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_3;
    block[3] = &unk_278DCDCF8;
    block[4] = v11;
    v24 = v8;
    v25 = *(a1 + 40);
    dispatch_async(v12, block);
  }

  else
  {
    v13 = CPS_LOG_CHANNEL_PREFIXClipServices(0, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __64__CPSMapsImageLoader_loadImageForMapItemMUID_completionHandler___block_invoke_2_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    v21 = *(a1 + 40);
    if (v5)
    {
      (*(v21 + 16))(v21, 0, v5);
    }

    else
    {
      v22 = [MEMORY[0x277CCA9B8] cps_errorWithCode:1];
      (*(v21 + 16))(v21, 0, v22);
    }
  }
}

- (void)_loadImageForGEOFeatureStyleAttributes:(id)attributes completionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  attributesCopy = attributes;
  dispatch_assert_queue_V2(queue);
  v9 = objc_alloc_init(MEMORY[0x277D78198]);
  [v9 setGlyphOnly:1];
  mEMORY[0x277D78190] = [MEMORY[0x277D78190] sharedManager];
  v12 = _CPSScreenScale(mEMORY[0x277D78190], v11);
  *&v12 = v12;
  v13 = [mEMORY[0x277D78190] imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:9 sizeGroup:v9 modifiers:v12];

  mEMORY[0x277D78190]2 = [MEMORY[0x277D78190] sharedManager];
  v16 = _CPSScreenScale(mEMORY[0x277D78190]2, v15);
  *&v16 = v16;
  v17 = [mEMORY[0x277D78190]2 imageForStyleAttributes:attributesCopy withStylesheetName:@"default-search" contentScale:9 sizeGroup:0 modifiers:v16];

  image = [v13 image];
  if (v13 && v17)
  {
    v20 = image;
    imageSize = [v17 imageSize];
    v23 = v22;
    v25 = v24;
    v27 = _CPSScreenScale(imageSize, v26);
    [v17 imageSize];
    v29 = v28;
    [v17 imageSize];
    v31 = CPSCreateImageFromImageAndBackgroundColor(v20, [v17 fillColor], v23, v25, v27, 0.0, 0.0, v29, v30);
    v32 = CPSImagePNGRepresentation(v31);
    v34 = v32;
    if (v31)
    {
      CGImageRelease(v31);
    }

    if (v34)
    {
      handlerCopy[2](handlerCopy, v34, 0);
    }

    else
    {
      v43 = CPS_LOG_CHANNEL_PREFIXClipServices(v32, v33);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        [(CPSMapsImageLoader *)v43 _loadImageForGEOFeatureStyleAttributes:v44 completionHandler:v45, v46, v47, v48, v49, v50];
      }

      v51 = [MEMORY[0x277CCA9B8] cps_errorWithCode:7];
      (handlerCopy)[2](handlerCopy, 0, v51);
    }
  }

  else
  {
    v35 = CPS_LOG_CHANNEL_PREFIXClipServices(image, v19);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [(CPSMapsImageLoader *)v35 _loadImageForGEOFeatureStyleAttributes:v36 completionHandler:v37, v38, v39, v40, v41, v42];
    }

    v34 = [MEMORY[0x277CCA9B8] cps_errorWithCode:7];
    (handlerCopy)[2](handlerCopy, 0, v34);
  }
}

@end