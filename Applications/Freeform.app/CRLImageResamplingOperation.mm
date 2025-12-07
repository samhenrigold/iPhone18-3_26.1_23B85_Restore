@interface CRLImageResamplingOperation
- (CGSize)desiredAlternateSizeIfConvertedToPNG;
- (CGSize)desiredSize;
- (CRLImageResamplingOperation)init;
- (CRLImageResamplingOperation)initWithImageProvider:(id)provider desiredSize:(CGSize)size assetOwner:(id)owner;
- (id)performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions;
- (void)setDesiredAlternateSizeIfConvertedToPNG:(CGSize)g;
@end

@implementation CRLImageResamplingOperation

- (CRLImageResamplingOperation)initWithImageProvider:(id)provider desiredSize:(CGSize)size assetOwner:(id)owner
{
  height = size.height;
  width = size.width;
  providerCopy = provider;
  ownerCopy = owner;
  if (!providerCopy)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013443DC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013443F0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10134448C();
    }

    v12 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v12);
    }

    v13 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation initWithImageProvider:desiredSize:assetOwner:]"];
    v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
    [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:41 isFatal:0 description:"Invalid parameter not satisfying: %{public}s", "imageProvider != nil"];
  }

  v24.receiver = self;
  v24.super_class = CRLImageResamplingOperation;
  v15 = [(CRLImageResamplingOperation *)&v24 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->mImageProvider, provider);
    v16->mDesiredSize.width = width;
    v16->mDesiredSize.height = height;
    objc_storeStrong(&v16->mAssetOwner, owner);
    if (CRLWPShapeLayout.columnsAreLeftToRight.getter())
    {
      if (width * height > sub_10050CF30())
      {
        v17 = +[CRLAssertionHandler _atomicIncrementAssertCount];
        if (qword_101AD5A10 != -1)
        {
          sub_1013444B4();
        }

        v18 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_1013444DC(v18, v17, width, height);
        }

        if (qword_101AD5A10 != -1)
        {
          sub_1013445DC();
        }

        v19 = off_1019EDA68;
        if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
        {
          sub_10130DA10(v19);
        }

        v20 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation initWithImageProvider:desiredSize:assetOwner:]"];
        v21 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
        v25.width = width;
        v25.height = height;
        v22 = NSStringFromCGSize(v25);
        [CRLAssertionHandler handleFailureInFunction:v20 file:v21 lineNumber:47 isFatal:0 description:"Should not be resampling an image to this size %{public}@ on a platform with memory limits!", v22];
      }
    }
  }

  return v16;
}

- (CRLImageResamplingOperation)init
{
  v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101850018);
  }

  v3 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    v13 = v2;
    v14 = 2082;
    v15 = "[CRLImageResamplingOperation init]";
    v16 = 2082;
    v17 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m";
    v18 = 1024;
    v19 = 55;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Do not call method", buf, 0x22u);
  }

  if (qword_101AD5A10 != -1)
  {
    dispatch_once(&qword_101AD5A10, &stru_101850038);
  }

  v4 = off_1019EDA68;
  if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = +[CRLAssertionHandler packedBacktraceString];
    *buf = 67109378;
    v13 = v2;
    v14 = 2114;
    v15 = v6;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
  }

  v7 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation init]"];
  v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
  [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:55 isFatal:0 description:"Do not call method"];

  v9 = [NSString stringWithFormat:@"%s: %s", "Do not call method", "[CRLImageResamplingOperation init]"];
  v10 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setDesiredAlternateSizeIfConvertedToPNG:(CGSize)g
{
  height = g.height;
  width = g.width;
  [(CRLImageResamplingOperation *)self desiredSize];
  if (width <= v6 && ([(CRLImageResamplingOperation *)self desiredSize], height <= v7))
  {
    self->mDesiredAlternateSizeIfConvertedToPNG.width = width;
    self->mDesiredAlternateSizeIfConvertedToPNG.height = height;
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344604();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344618();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013446A8();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation setDesiredAlternateSizeIfConvertedToPNG:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:66 isFatal:0 description:"Should not provide a size that is larger than our default size!"];
  }
}

- (id)performResampleOperationWithResampleOptions:(unint64_t)options bitmapContextOptions:(unint64_t)contextOptions
{
  contextOptionsCopy = contextOptions;
  optionsCopy = options;
  imageProvider = [(CRLImageResamplingOperation *)self imageProvider];
  [imageProvider naturalSize];
  v8 = v7;
  v10 = v9;

  if ((optionsCopy & 8) != 0)
  {
    [(CRLImageResamplingOperation *)self desiredAlternateSizeIfConvertedToPNG];
    if (v12 != CGSizeZero.width || v11 != CGSizeZero.height)
    {
      v14 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_1013446D0();
      }

      v15 = off_1019EDA68;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_1013446E4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101344774();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10134479C(v14);
      }

      v17 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:81 isFatal:0 description:"Should not specify an alternate size if a precise size is required!"];
    }
  }

  v19 = optionsCopy & 1;
  [(CRLImageResamplingOperation *)self desiredSize];
  v23 = sub_10011FBF0(v20, v21, 1.0);
  v24 = v22;
  if ((optionsCopy & 8) == 0)
  {
    v23 = sub_100121EF4(0, v8, v10, v23, v22);
    v24 = v25;
  }

  if (optionsCopy)
  {
    v26 = 0.5;
  }

  else
  {
    v26 = 0.699999988;
  }

  v27 = objc_opt_class();
  imageProvider2 = [(CRLImageResamplingOperation *)self imageProvider];
  v29 = sub_100014370(v27, imageProvider2);

  if ((optionsCopy & 2) == 0 && !v29)
  {
    v30 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    imageProvider3 = [(CRLImageResamplingOperation *)self imageProvider];
    imageData = [(__CFString *)imageProvider3 imageData];
    v33 = [(CRLPreinsertionAssetWrapper *)v30 initWithAlreadyInsertedAsset:imageData owner:self->mAssetOwner];
    goto LABEL_141;
  }

  cGImageSource = [v29 CGImageSource];
  isrc = cGImageSource;
  if (cGImageSource && (v35 = cGImageSource, CGImageSourceGetStatus(cGImageSource) == kCGImageStatusComplete))
  {
    v107 = CGImageSourceCopyPropertiesAtIndex(v35, 0, 0);
    if (v107)
    {
      cf = v107;
      v135 = 1;
      v137 = CFDictionaryGetValue(v107, kCGImagePropertyHasAlpha) == kCFBooleanTrue;
      goto LABEL_27;
    }

    v135 = 1;
  }

  else
  {
    v135 = 0;
  }

  cf = 0;
  v137 = [v29 isOpaque] ^ 1;
LABEL_27:
  displayName = [(CRLImageResamplingOperation *)self displayName];
  imageProvider3 = [displayName stringByDeletingPathExtension];

  if (!imageProvider3 || ![(__CFString *)imageProvider3 length])
  {
    imageProvider4 = [(CRLImageResamplingOperation *)self imageProvider];
    imageData2 = [imageProvider4 imageData];
    filename = [imageData2 filename];
    stringByDeletingPathExtension = [filename stringByDeletingPathExtension];

    if (stringByDeletingPathExtension && [(__CFString *)stringByDeletingPathExtension length])
    {
      imageProvider3 = stringByDeletingPathExtension;
    }

    else
    {

      imageProvider3 = @"image";
    }
  }

  v133 = v29;
  displayName2 = [(CRLImageResamplingOperation *)self displayName];
  imageData = [displayName2 pathExtension];

  if (!imageData || ![imageData length])
  {
    imageProvider5 = [(CRLImageResamplingOperation *)self imageProvider];
    imageData3 = [imageProvider5 imageData];
    filename2 = [imageData3 filename];
    pathExtension = [filename2 pathExtension];

    imageData = pathExtension;
  }

  v46 = [UTType typeWithTag:imageData tagClass:UTTagClassFilenameExtension conformingToType:0];
  v130 = v46;
  if (!v46)
  {
    v47 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344844();
    }

    v48 = off_1019EDA68;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_10134486C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101344908();
    }

    v49 = off_1019EDA68;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_10134479C(v47);
    }

    v50 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
    v51 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
    [CRLAssertionHandler handleFailureInFunction:v50 file:v51 lineNumber:129 isFatal:0 description:"invalid nil value for '%{public}s'", "utTypeForOriginalFile"];

    v46 = 0;
  }

  if ([v46 conformsToType:UTTypeJPEG])
  {
    LOBYTE(v52) = 0;
  }

  else
  {
    v53 = +[CRLIngestionTypes highEfficiencyImageUTTypes];
    if ([v46 crl_conformsToAnyUTType:v53])
    {
      LOBYTE(v52) = 0;
    }

    else
    {
      v52 = [v46 conformsToType:UTTypeWebP] ^ 1;
    }
  }

  if ((v137 | v52))
  {
    v54 = UTTypePNG;
  }

  else
  {
    v54 = UTTypeJPEG;
  }

  v55 = v54;
  if ([(UTType *)v55 isEqual:UTTypePNG])
  {
    [(CRLImageResamplingOperation *)self desiredAlternateSizeIfConvertedToPNG];
    if (v57 != CGSizeZero.width || v56 != CGSizeZero.height)
    {
      [(CRLImageResamplingOperation *)self desiredAlternateSizeIfConvertedToPNG];
      v23 = sub_100121EF4(0, v8, v10, v58, v59);
      v24 = v60;
    }
  }

  preferredFilenameExtension = [(UTType *)v55 preferredFilenameExtension];
  v129 = [(__CFString *)imageProvider3 stringByAppendingPathExtension:preferredFilenameExtension];
  v62 = v135 ^ 1;
  if ((optionsCopy & 0x18) != 0)
  {
    v62 = 1;
  }

  v131 = v55;
  v127 = preferredFilenameExtension;
  if ((v62 & 1) == 0 && v23 < v8 && v24 < v10)
  {
    v146[0] = kCGImageSourceCreateThumbnailFromImageAlways;
    v146[1] = kCGImageSourceCreateThumbnailWithTransform;
    v147[0] = &__kCFBooleanTrue;
    v147[1] = &__kCFBooleanTrue;
    v146[2] = kCGImageSourceThumbnailMaxPixelSize;
    v63 = v23 >= v24 ? v23 : v24;
    v64 = [NSNumber numberWithDouble:v63];
    v147[2] = v64;
    v65 = [NSDictionary dictionaryWithObjects:v147 forKeys:v146 count:3];

    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(isrc, 0, v65);
    if (ThumbnailAtIndex)
    {
      goto LABEL_95;
    }
  }

  v67 = contextOptionsCopy | 2;
  if (!v137)
  {
    v67 = contextOptionsCopy;
  }

  v68 = v67 | (4 * v19);
  v69 = sub_10012211C(v23);
  v71 = v70;
  if ((v135 & 1) != 0 && (-[CRLImageResamplingOperation imageProvider](self, "imageProvider"), v72 = objc_claimAutoreleasedReturnValue(), [v72 imageData], v73 = objc_claimAutoreleasedReturnValue(), v74 = objc_msgSend(v73, "newCGImage"), v73, v72, v75 = sub_10050E434(v74, v68, v69, v71), v76 = v74, v55 = v131, CGImageRelease(v76), v75))
  {
    v77 = isrc;
  }

  else
  {
    imageProvider6 = [(CRLImageResamplingOperation *)self imageProvider];
    imageGamut = [imageProvider6 imageGamut];

    if (imageGamut == 2)
    {
      v80 = v68;
    }

    else
    {
      v80 = v68 | 0x20;
    }

    v81 = sub_10050DF80(v80, v69, v71);
    v77 = isrc;
    if (!v81)
    {
LABEL_105:
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101344B24();
      }

      v100 = v129;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101344B4C();
      }

      v29 = v133;
      if (qword_101AD5A10 != -1)
      {
        sub_101344BE8();
      }

      v101 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v101);
      }

      v90 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
      v102 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
      [CRLAssertionHandler handleFailureInFunction:v90 file:v102 lineNumber:239 isFatal:0 description:"invalid nil value for '%{public}s'", "resampledImage", v127];

      v33 = 0;
      v103 = v131;
      goto LABEL_138;
    }

    v75 = v81;
  }

  if (v19)
  {
    v82 = kCGInterpolationNone;
  }

  else
  {
    v82 = kCGInterpolationLow;
  }

  CGContextSetInterpolationQuality(v75, v82);
  if (!v137)
  {
    v24 = v71;
    v23 = v69;
  }

  if (v77 && ((Type = CGImageSourceGetType(v77), v8 / v23 >= v10 / v24) ? (v84 = v8 / v23) : (v84 = v10 / v24), [v133 isValid] && (objc_msgSend(UTTypeJPEG, "identifier"), v85 = objc_claimAutoreleasedReturnValue(), v86 = CFEqual(Type, v85), v85, v86) && v84 >= 2.0))
  {
    if (v84 >= 8.0)
    {
      v88 = 8;
      v87 = v133;
    }

    else
    {
      v87 = v133;
      if (v84 >= 4.0)
      {
        v88 = 4;
      }

      else
      {
        v88 = 2;
      }
    }

    v144 = @"kCGImageSourceSubsampleFactor";
    v116 = [NSNumber numberWithInt:v88];
    v145 = v116;
    imageProvider7 = [NSDictionary dictionaryWithObjects:&v145 forKeys:&v144 count:1];

    ImageAtIndex = CGImageSourceCreateImageAtIndex(isrc, 0, imageProvider7);
    v118 = sub_10011ECB4();
    v120 = v119;
    v122 = v121;
    v124 = v123;
    CGContextSaveGState(v75);
    v148.origin.x = v118;
    v148.origin.y = v120;
    v148.size.width = v122;
    v148.size.height = v124;
    MinY = CGRectGetMinY(v148);
    v149.origin.x = v118;
    v149.origin.y = v120;
    v149.size.width = v122;
    v149.size.height = v124;
    MaxY = CGRectGetMaxY(v149);
    CGContextTranslateCTM(v75, 0.0, MinY + MaxY);
    CGContextScaleCTM(v75, 1.0, -1.0);
    sub_1004F3D84([v87 orientation], 1, &transform, v118, v120, v122, v124);
    CGContextConcatCTM(v75, &transform);
    v150.origin.x = v118;
    v150.origin.y = v120;
    v150.size.width = v122;
    v150.size.height = v124;
    CGContextDrawImage(v75, v150, ImageAtIndex);
    if (ImageAtIndex)
    {
      CFRelease(ImageAtIndex);
    }

    CGContextRestoreGState(v75);
    v55 = v131;
  }

  else
  {
    imageProvider7 = [(CRLImageResamplingOperation *)self imageProvider];
    [(__CFDictionary *)imageProvider7 drawImageInContext:v75 rect:sub_10011ECB4()];
  }

  ThumbnailAtIndex = CGBitmapContextCreateImage(v75);
  CGContextRelease(v75);
  if (!ThumbnailAtIndex)
  {
    goto LABEL_105;
  }

LABEL_95:
  v90 = objc_alloc_init(NSMutableData);
  identifier = [(UTType *)v55 identifier];
  v92 = CGImageDestinationCreateWithData(v90, identifier, 1uLL, 0);

  if (v92)
  {
    v142 = kCGImageDestinationLossyCompressionQuality;
    v93 = [NSNumber numberWithDouble:v26];
    v143 = v93;
    v94 = [NSDictionary dictionaryWithObjects:&v143 forKeys:&v142 count:1];

    v95 = v94;
    CGImageDestinationSetProperties(v92, v94);
    if (v135)
    {
      v138 = v94;
      Mutable = CFDictionaryCreateMutable(0, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionaryAddValue(Mutable, kCGImageDestinationLossyCompressionQuality, [NSNumber numberWithDouble:v26]);
      v97 = CGImageSourceCopyPropertiesAtIndex(isrc, 0, 0);
      if (CFDictionaryContainsKey(v97, kCGImagePropertyDPIWidth))
      {
        Value = CFDictionaryGetValue(v97, kCGImagePropertyDPIWidth);
        CFDictionaryAddValue(Mutable, kCGImagePropertyDPIWidth, Value);
      }

      if (CFDictionaryContainsKey(v97, kCGImagePropertyDPIHeight))
      {
        v99 = CFDictionaryGetValue(v97, kCGImagePropertyDPIHeight);
        CFDictionaryAddValue(Mutable, kCGImagePropertyDPIHeight, v99);
      }

      CGImageDestinationAddImage(v92, ThumbnailAtIndex, Mutable);
      v29 = v133;
      if (v97)
      {
        CFRelease(v97);
      }

      v95 = v138;
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      CGImageDestinationAddImage(v92, ThumbnailAtIndex, 0);
      v29 = v133;
    }

    CGImageDestinationFinalize(v92);
    CFRelease(v92);
    v108 = [_TtC8Freeform27CRLPreinsertionAssetWrapper alloc];
    mAssetOwner = self->mAssetOwner;
    v140 = 0;
    v100 = v129;
    v33 = [(CRLPreinsertionAssetWrapper *)v108 initWithData:v90 filename:v129 owner:mAssetOwner error:&v140];
    v106 = v140;
    if (v33)
    {
      v103 = v131;
    }

    else
    {
      v139 = v95;
      v136 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101344930();
      }

      v110 = off_1019EDA68;
      if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
      {
        sub_101344958(v106, v136);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101344A10();
      }

      v111 = off_1019EDA68;
      if (os_log_type_enabled(v111, OS_LOG_TYPE_ERROR))
      {
        sub_10134479C(v136);
      }

      v112 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
      v113 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
      [CRLAssertionHandler handleFailureInFunction:v112 file:v113 lineNumber:282 isFatal:0 description:"Error %@ creating pre-insertion asset wrapper for data.", v106, v127];

      v29 = v133;
      v103 = v131;
      v100 = v129;
      v95 = v139;
    }
  }

  else
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101344A38();
    }

    v100 = v129;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101344A60();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101344AFC();
    }

    v103 = v131;
    v104 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v104);
    }

    v105 = [NSString stringWithUTF8String:"[CRLImageResamplingOperation performResampleOperationWithResampleOptions:bitmapContextOptions:]"];
    v106 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLImageResamplingOperation.m"];
    v95 = v105;
    [CRLAssertionHandler handleFailureInFunction:v105 file:v106 lineNumber:244 isFatal:0 description:"invalid nil value for '%{public}s'", "destination", v127];
    v33 = 0;
    v29 = v133;
  }

  CFRelease(ThumbnailAtIndex);
LABEL_138:

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_141:
  v114 = v33;

  return v33;
}

- (CGSize)desiredSize
{
  width = self->mDesiredSize.width;
  height = self->mDesiredSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)desiredAlternateSizeIfConvertedToPNG
{
  width = self->mDesiredAlternateSizeIfConvertedToPNG.width;
  height = self->mDesiredAlternateSizeIfConvertedToPNG.height;
  result.height = height;
  result.width = width;
  return result;
}

@end