@interface IMTranscoderImageCMPhotoSizeEstimator
- (IMTranscoderImageCMPhotoSizeEstimator)initWithURL:(id)l uti:(id)uti imageSource:(CGImageSource *)source;
- (unint64_t)estimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality;
- (unint64_t)optimizedEstimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality;
- (void)dealloc;
@end

@implementation IMTranscoderImageCMPhotoSizeEstimator

- (IMTranscoderImageCMPhotoSizeEstimator)initWithURL:(id)l uti:(id)uti imageSource:(CGImageSource *)source
{
  v8.receiver = self;
  v8.super_class = IMTranscoderImageCMPhotoSizeEstimator;
  v5 = [(IMTranscoderImageSizeEstimator *)&v8 initWithUTI:uti imageSource:source];
  if (CMPhotoDecompressionSessionCreate() || (Container = CMPhotoDecompressionSessionCreateContainer(), CFRelease(0), Container))
  {

    return 0;
  }

  else
  {
    v5->_container = 0;
  }

  return v5;
}

- (void)dealloc
{
  container = self->_container;
  if (container)
  {
    CFRelease(container);
  }

  v4.receiver = self;
  v4.super_class = IMTranscoderImageCMPhotoSizeEstimator;
  [(IMTranscoderImageCMPhotoSizeEstimator *)&v4 dealloc];
}

- (unint64_t)optimizedEstimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality
{
  v25[4] = *MEMORY[0x277D85DE8];
  if (UTTypeConformsTo(i, *MEMORY[0x277CC20C8]))
  {
    v9 = 1785750887;
  }

  else
  {
    v9 = 1752589105;
  }

  v24[0] = *MEMORY[0x277CF6DA0];
  v25[0] = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v7, dimension, v8, 0);
  v24[1] = *MEMORY[0x277CF6CF0];
  v12 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v10, v9, v11);
  v13 = *MEMORY[0x277CF6D38];
  v25[1] = v12;
  v25[2] = &unk_28669CC30;
  v14 = *MEMORY[0x277CF6D30];
  v24[2] = v13;
  v24[3] = v14;
  v22 = *MEMORY[0x277CF6DD8];
  v23 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v15, v16, v17, quality);
  v25[3] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v18, &v23, &v22, 1);
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v25, v24, 4);
  if (CMPhotoDecompressionContainerPredictTranscodedSize())
  {
    return 0;
  }

  else
  {
    return v21;
  }
}

- (unint64_t)estimatedSizeForOutputUTI:(id)i maximumDimension:(int64_t)dimension quality:(double)quality
{
  if (!UTTypeConformsTo(i, *MEMORY[0x277CC20C8]) && !UTTypeConformsTo(i, @"public.heif-standard") || (result = objc_msgSend_optimizedEstimatedSizeForOutputUTI_maximumDimension_quality_(self, v9, i, dimension, quality)) == 0)
  {
    v11.receiver = self;
    v11.super_class = IMTranscoderImageCMPhotoSizeEstimator;
    return [(IMTranscoderImageSizeEstimator *)&v11 estimatedSizeForOutputUTI:i maximumDimension:dimension quality:quality];
  }

  return result;
}

@end