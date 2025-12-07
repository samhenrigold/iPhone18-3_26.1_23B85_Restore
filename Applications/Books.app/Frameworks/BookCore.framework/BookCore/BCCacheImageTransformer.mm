@interface BCCacheImageTransformer
- (BCCacheImageTransformer)init;
- (CGImage)doRestrictedProcessing:(CGImage *)processing;
- (id)_bookFilter:(id)filter;
- (unint64_t)coverEffectStyleForImage:(id)image;
- (unint64_t)coverEffectsContentForImage:(id)image;
- (void)_applyBookFilter:(id)filter toImage:(CGImage *)image size:(CGSize)size completion:(id)completion;
- (void)transformSource:(id)source to:(id)to completion:(id)completion;
@end

@implementation BCCacheImageTransformer

- (BCCacheImageTransformer)init
{
  v6.receiver = self;
  v6.super_class = BCCacheImageTransformer;
  v2 = [(BCCacheImageTransformer *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    renderOperations = v2->_renderOperations;
    v2->_renderOperations = v3;

    v2->_accessLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (id)_bookFilter:(id)filter
{
  filterCopy = filter;
  v4 = filterCopy;
  if (qword_3422D8 == -1)
  {
    if (filterCopy)
    {
LABEL_3:
      v5 = [qword_3422D0 objectForKeyedSubscript:v4];
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E677C();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:

  return v5;
}

- (CGImage)doRestrictedProcessing:(CGImage *)processing
{
  if (!processing)
  {
    return 0;
  }

  Width = CGImageGetWidth(processing);
  Height = CGImageGetHeight(processing);

  return [BCUCoverEffects restrictedImageFrom:processing size:Width, Height];
}

- (void)transformSource:(id)source to:(id)to completion:(id)completion
{
  sourceCopy = source;
  toCopy = to;
  completionCopy = completion;
  quality = [sourceCopy quality];
  v12 = quality;
  v13 = BCImageCacheLog(quality);
  v14 = v13;
  if (v12 == 1)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1E6790(sourceCopy, toCopy, v14);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v72 = sourceCopy;
    v73 = 2112;
    v74 = toCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "BCCacheImageTransformer: \nTransforming:\n %@ \ninto:\n %@", buf, 0x16u);
  }

  processingOptions = [toCopy processingOptions];
  v16 = [toCopy copy];
  if (processingOptions)
  {
    image = [sourceCopy image];
    [v16 setImage:image];

    [v16 setQuality:{+[BICDescribedImage transformedQualityFrom:](BICDescribedImage, "transformedQualityFrom:", objc_msgSend(sourceCopy, "quality"))}];
    image2 = [sourceCopy image];

    if (image2)
    {
      v21 = mainScreenScaleFactor(v19, v20);
      v22 = +[BCCoverEffects effectIdentifierWithRTL:style:content:nightMode:](BCCoverEffects, "effectIdentifierWithRTL:style:content:nightMode:", ([toCopy processingOptions] >> 7) & 1, -[BCCacheImageTransformer coverEffectStyleForImage:](self, "coverEffectStyleForImage:", toCopy), -[BCCacheImageTransformer coverEffectsContentForImage:](self, "coverEffectsContentForImage:", toCopy), (objc_msgSend(toCopy, "processingOptions") >> 6) & 1);
      [toCopy imageSize];
      v24 = v23;
      v26 = v25;
      [sourceCopy imageSize];
      v28 = v27;
      [toCopy imageSize];
      if (v28 < v29)
      {
        [sourceCopy imageSize];
        v31 = v30;
        [toCopy imageSize];
        if (v31 < v32 && [v16 quality] != 2)
        {
          [v16 setQuality:101];
        }
      }

      v33 = v24 / v21;
      v34 = v26 / v21;
      processingOptions2 = [toCopy processingOptions];
      image3 = [sourceCopy image];
      cGImage = [image3 CGImage];
      if ((processingOptions2 & 0x400) != 0)
      {
        cGImage = [(BCCacheImageTransformer *)self doRestrictedProcessing:cGImage];
      }

      v65[0] = _NSConcreteStackBlock;
      v65[1] = 3221225472;
      v65[2] = sub_67CEC;
      v65[3] = &unk_2CA1C0;
      v70 = v21;
      v66 = v16;
      v67 = toCopy;
      v68 = sourceCopy;
      v69 = completionCopy;
      [(BCCacheImageTransformer *)self _applyBookFilter:v22 toImage:cGImage size:v65 completion:v33, v34];

      goto LABEL_29;
    }

    v60 = objc_retainBlock(completionCopy);
    v22 = v60;
    if (!v60)
    {
      goto LABEL_29;
    }

    v61 = v60[2];
LABEL_28:
    v61();
    goto LABEL_29;
  }

  [v16 setQuality:{+[BICDescribedImage transformedQualityFrom:](BICDescribedImage, "transformedQualityFrom:", objc_msgSend(sourceCopy, "quality"))}];
  image4 = [sourceCopy image];
  cGImage2 = [image4 CGImage];

  if (cGImage2)
  {
    Width = CGImageGetWidth(cGImage2);
    Height = CGImageGetHeight(cGImage2);
    [toCopy imageSize];
    v43 = v42;
    [toCopy imageSize];
    v45 = v44;
    [sourceCopy imageSize];
    v47 = v45 * v46;
    imageSize = [sourceCopy imageSize];
    v50 = round(v47 / v49);
    v51 = BCImageCacheLog(imageSize);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      identifier = [sourceCopy identifier];
      [sourceCopy imageSize];
      NSStringFromCGSize(v79);
      v53 = v64 = Height;
      [toCopy imageSize];
      v54 = NSStringFromCGSize(v80);
      v81.width = v43;
      v81.height = v50;
      v55 = NSStringFromCGSize(v81);
      *buf = 138413058;
      v72 = identifier;
      v73 = 2112;
      v74 = v53;
      v75 = 2112;
      v76 = v54;
      v77 = 2112;
      v78 = v55;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_INFO, "BCCacheImageTransformer: image:%@, src %@, dest %@ -> final %@", buf, 0x2Au);

      Height = v64;
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v57 = CGBitmapContextCreate(0, v43, v50, 8uLL, 0, DeviceRGB, 6u);
    CGContextSetInterpolationQuality(v57, kCGInterpolationHigh);
    v82.origin.x = 0.0;
    v82.origin.y = 0.0;
    v82.size.width = v43;
    v82.size.height = v50;
    CGContextDrawImage(v57, v82, cGImage2);
    Image = CGBitmapContextCreateImage(v57);
    CGContextRelease(v57);
    CGColorSpaceRelease(DeviceRGB);
    v59 = [BICImage imageWithCGImage:Image];
    [v16 setImage:v59];

    if (Width < v43 && Height < v50 && [v16 quality] != 2)
    {
      [v16 setQuality:101];
    }

    CGImageRelease(Image);
  }

  else
  {
    image5 = [sourceCopy image];
    [v16 setImage:image5];
  }

  [v16 setUnknownAspectRatio:0];
  [BICCacheStats logDescribedImage:v16 withComment:@"CacheTransformWithProcessingOptionNone"];
  v63 = objc_retainBlock(completionCopy);
  v22 = v63;
  if (v63)
  {
    v61 = v63[2];
    goto LABEL_28;
  }

LABEL_29:
}

- (void)_applyBookFilter:(id)filter toImage:(CGImage *)image size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  v12 = [(BCCacheImageTransformer *)self _bookFilter:filter];
  v14 = v12;
  if (image && v12)
  {
    v15 = mainScreenScaleFactor(v12, v13);
    v16 = TUIPriorityDefault;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_68028;
    v24[3] = &unk_2CA1E8;
    v24[4] = self;
    v25 = completionCopy;
    LODWORD(v17) = v16;
    v18 = [v14 newOperationWithImage:image size:0 contentsScale:1 priority:0 options:v24 waitForCPUSynchronization:width logKey:height completion:{v15, v17}];
    [v18 start];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_681A4;
    v22[3] = &unk_2C7BE8;
    v22[4] = self;
    v23 = v18;
    v19 = v18;
    os_unfair_lock_lock(&self->_accessLock);
    sub_681A4(v22);
    os_unfair_lock_unlock(&self->_accessLock);
  }

  else
  {
    v20 = objc_retainBlock(completionCopy);
    v21 = v20;
    if (v20)
    {
      (*(v20 + 2))(v20, image, 0, UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right);
    }
  }
}

- (unint64_t)coverEffectStyleForImage:(id)image
{
  imageCopy = image;
  if (([imageCopy processingOptions] & 2) != 0)
  {
    v4 = 1;
  }

  else if (([imageCopy processingOptions] & 4) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = ([imageCopy processingOptions] >> 2) & 2;
  }

  return v4;
}

- (unint64_t)coverEffectsContentForImage:(id)image
{
  imageCopy = image;
  if (([imageCopy processingOptions] & 0x10) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = ([imageCopy processingOptions] & 0x100) == 0;
  }

  return v4;
}

@end