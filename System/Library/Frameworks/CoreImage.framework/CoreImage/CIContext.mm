@interface CIContext
+ (BOOL)loadArchive:(id)archive;
+ (BOOL)loadArchiveWithName:(id)name fromURL:(id)l;
+ (BOOL)loadArchiveWithURL:(id)l;
+ (CGColorSpace)defaultGrayColorSpace;
+ (CGColorSpace)defaultRGBColorSpace;
+ (CGColorSpace)defaultWorkingColorSpace;
+ (CIContext)contextWithCGContext:(CGContextRef)cgctx options:(NSDictionary *)options;
+ (CIContext)contextWithEAGLContext:(EAGLContext *)eaglContext;
+ (CIContext)contextWithEAGLContext:(EAGLContext *)eaglContext options:(NSDictionary *)options;
+ (CIContext)contextWithMTLCommandQueue:(id)commandQueue options:(NSDictionary *)options;
+ (CIContext)contextWithMTLDevice:(id)device;
+ (CIContext)contextWithMTLDevice:(id)device options:(NSDictionary *)options;
+ (CIContext)contextWithOptions:(NSDictionary *)options;
+ (id)_cachedContext:(id)context options:(id)options;
+ (id)_namedCache;
+ (id)_singletonContext;
+ (int)_crashed_because_nonaddressable_memory_was_passed_to_render:(id)_crashed_because_nonaddressable_memory_was_passed_to_render toBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format colorSpace:(CGColorSpace *)space;
+ (void)clearArchives;
+ (void)internalContextWithEAGLContext:(id)context options:(id)options;
+ (void)internalContextWithMTLCommandQueue:(id)queue options:(id)options;
+ (void)internalContextWithMTLDevice:(id)device options:(id)options;
+ (void)internalSWContextWithOptions:(id)options;
+ (void)purgeArchive:(id)archive;
- (BOOL)_isCGBackedContext;
- (BOOL)_isGLBackedContext;
- (BOOL)isMetalBased;
- (BOOL)isOpenCLBased;
- (BOOL)isOpenGLBased;
- (BOOL)loadArchive:(id)archive;
- (BOOL)loadArchiveWithName:(id)name fromURL:(id)l;
- (BOOL)loadArchiveWithURL:(id)l;
- (BOOL)measureRequirementsOf:(id)of query:(int)query :(id *)a5 results:(CGRect *)results;
- (BOOL)prepareRender:(CIImage *)image fromRect:(CGRect)fromRect toDestination:(CIRenderDestination *)destination atPoint:(CGPoint)atPoint error:(NSError *)error;
- (BOOL)writeHEIF10RepresentationOfImage:(CIImage *)image toURL:(NSURL *)url colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writeHEIFRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writeJPEGRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writeOpenEXRRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writePNGRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (BOOL)writeTIFFRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (CGAffineTransform)CTM;
- (CGColorSpace)_outputColorSpace;
- (CGColorSpaceRef)workingColorSpace;
- (CGImage)_createCGImage:(id)image fromRect:(CGRect)rect format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space deferred:(Trilean)deferred renderCallback:(id)callback;
- (CGImage)calculateHDRStatsForCGImage:(CGImage *)image;
- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format;
- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format colorSpace:(CGColorSpace *)space deferred:(BOOL)deferred calculateHDRStats:(BOOL)stats;
- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space deferred:(BOOL)deferred renderCallback:(id)callback;
- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect;
- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace;
- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace deferred:(BOOL)deferred;
- (CGLayerRef)createCGLayerWithSize:(CGSize)size info:(CFDictionaryRef)info;
- (CGRect)bounds;
- (CGSize)inputImageMaximumSize;
- (CGSize)outputImageMaximumSize;
- (CIContext)initWithCGContext:(CGContext *)context options:(id)options;
- (CIContext)initWithEAGLContext:(id)context options:(id)options;
- (CIContext)initWithMTLCommandQueue:(id)queue options:(id)options;
- (CIContext)initWithMTLDevice:(id)device options:(id)options;
- (CIContext)initWithOptions:(NSDictionary *)options;
- (CIFilter)depthBlurEffectFilterForImage:(CIImage *)image disparityImage:(CIImage *)disparityImage portraitEffectsMatte:(CIImage *)portraitEffectsMatte hairSemanticSegmentation:(CIImage *)hairSemanticSegmentation glassesMatte:(CIImage *)glassesMatte gainMap:(CIImage *)gainMap orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options;
- (CIFilter)depthBlurEffectFilterForImageData:(NSData *)data options:(NSDictionary *)options;
- (CIFilter)depthBlurEffectFilterForImageURL:(NSURL *)url options:(NSDictionary *)options;
- (CIFormat)workingFormat;
- (CIRenderTask)startTaskToClear:(CIRenderDestination *)destination error:(NSError *)error;
- (CIRenderTask)startTaskToRender:(CIImage *)image fromRect:(CGRect)fromRect toDestination:(CIRenderDestination *)destination atPoint:(CGPoint)atPoint error:(NSError *)error;
- (NSData)HEIF10RepresentationOfImage:(CIImage *)image colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr;
- (NSData)OpenEXRRepresentationOfImage:(CIImage *)image options:(NSDictionary *)options error:(NSError *)errorPtr;
- (__IOSurface)createIOSurface:(id)surface;
- (__IOSurface)createIOSurface:(id)surface fromRect:(CGRect)rect;
- (id)_CMPhotoRepresentationOfImage:(id)image depth:(int)depth allowAlpha:(BOOL)alpha containerFormat:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_HEIFRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_JPEGRepresentationOfImage:(id)image colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_PNGRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_TIFFRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error;
- (id)_createClone;
- (id)_dataRepresentationOfImage:(id)image UTIType:(id)type format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space options:(id)options addAuxData:(BOOL)data keysToMerge:(id)self0 error:(id *)self1;
- (id)_initWithInternalRepresentation:(void *)representation;
- (id)_startTaskToRender:(id)render toDestination:(id)destination forPrepareRender:(BOOL)prepareRender forClear:(BOOL)clear error:(id *)error;
- (id)addAuxOptionsForSDR:(id)r HDR:(id)dR colorSpace:(CGColorSpace *)space rgbGainmap:(BOOL)gainmap;
- (id)calculateHDRStatsForImage:(id)image;
- (id)clientCommandQueue;
- (id)createColorCubeDataForFilters:(id)filters dimension:(int)dimension colorSpace:(CGColorSpace *)space;
- (id)description;
- (id)device;
- (id)flatten:(id)flatten fromRect:(CGRect)rect format:(int)format colorSpace:(CGColorSpace *)space;
- (id)gainMapImageForSDR:(id)r HDR:(id)dR colorSpace:(CGColorSpace *)space rgbGainmap:(BOOL)gainmap;
- (id)internalCommandQueue;
- (id)objectForKey:(id)key;
- (unint64_t)identifier;
- (unint64_t)maximumInputImageSize;
- (unint64_t)maximumOutputImageSize;
- (void)_addDepthMap:(id)map session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options;
- (void)_addGainMap:(id)map session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle containerFormat:(int)format options:(id)options orientation:(id)orientation;
- (void)_addPortraitMatte:(id)matte session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options;
- (void)_addSemanticImages:(id)images session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options;
- (void)_gpuContextCheck;
- (void)_insertEventMarker:(const char *)marker;
- (void)_internalContext;
- (void)_performFaceDetection:(id)detection image:(id)image orientation:(int)orientation filter:(id)filter;
- (void)abort;
- (void)calculateHDRStatsForCVPixelBuffer:(__CVBuffer *)buffer;
- (void)calculateHDRStatsForIOSurface:(__IOSurface *)surface;
- (void)clearCaches;
- (void)dealloc;
- (void)drawImage:(CIImage *)image atPoint:(CGPoint)atPoint fromRect:(CGRect)fromRect;
- (void)drawImage:(CIImage *)image inRect:(CGRect)inRect fromRect:(CGRect)fromRect;
- (void)lock;
- (void)render:(CIImage *)image toBitmap:(void *)data rowBytes:(ptrdiff_t)rowBytes bounds:(CGRect)bounds format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace;
- (void)render:(CIImage *)image toCVPixelBuffer:(CVPixelBufferRef)buffer;
- (void)render:(CIImage *)image toCVPixelBuffer:(CVPixelBufferRef)buffer bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace;
- (void)render:(CIImage *)image toIOSurface:(IOSurfaceRef)surface bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace;
- (void)render:(CIImage *)image toMTLTexture:(id)texture commandBuffer:(id)commandBuffer bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace;
- (void)render:(id)render;
- (void)render:(id)render toTexture:(unsigned int)texture target:(unsigned int)target bounds:(CGRect)bounds colorSpace:(CGColorSpace *)space;
- (void)setBounds:(CGRect)bounds;
- (void)setCTM:(CGAffineTransform *)m;
- (void)setObject:(id)object forKey:(id)key;
- (void)unlock;
@end

@implementation CIContext

- (void)calculateHDRStatsForIOSurface:(__IOSurface *)surface
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"kCIImageApplyCleanAperture";
  v8[0] = MEMORY[0x1E695E118];
  v4 = -[CIContext calculateHDRStatsForImage:](self, "calculateHDRStatsForImage:", +[CIImage imageWithIOSurface:options:](CIImage, "imageWithIOSurface:options:", surface, [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1]));
  [v4 contentHeadroom];
  [v4 contentAverageLightLevel];
  IOSurfaceSetBulkAttachments2();
  v5 = *MEMORY[0x1E696CEF0];
  v6 = MEMORY[0x1E696AD98];
  [v4 contentHeadroom];
  IOSurfaceSetValue(surface, v5, [v6 numberWithFloat:?]);
}

- (void)calculateHDRStatsForCVPixelBuffer:(__CVBuffer *)buffer
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"kCIImageApplyCleanAperture";
  v12[0] = MEMORY[0x1E695E118];
  v4 = -[CIContext calculateHDRStatsForImage:](self, "calculateHDRStatsForImage:", +[CIImage imageWithCVPixelBuffer:options:](CIImage, "imageWithCVPixelBuffer:options:", buffer, [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1]));
  [v4 contentHeadroom];
  v6 = fminf((v5 * 203.0) + 0.5, 65535.0);
  [v4 contentAverageLightLevel];
  *bytes = __rev16(v6);
  v10 = __rev16(fminf((v7 * 203.0) + 0.5, 65535.0));
  v8 = CFDataCreate(0, bytes, 4);
  CVBufferSetAttachment(buffer, *MEMORY[0x1E6965DE0], v8, kCVAttachmentMode_ShouldPropagate);
  CFRelease(v8);
}

- (CGImage)calculateHDRStatsForCGImage:(CGImage *)image
{
  [-[CIContext calculateHDRStatsForImage:](self calculateHDRStatsForImage:{+[CIImage imageWithCGImage:](CIImage, "imageWithCGImage:")), "contentHeadroom"}];

  return MEMORY[0x1EEDBA020](image);
}

- (id)calculateHDRStatsForImage:(id)image
{
  v44 = *MEMORY[0x1E69E9840];
  [image extent];
  x = v45.origin.x;
  y = v45.origin.y;
  width = v45.size.width;
  height = v45.size.height;
  IsEmpty = CGRectIsEmpty(v45);
  if (IsEmpty || (v46.origin.x = x, v46.origin.y = y, v46.size.width = width, v46.size.height = height, IsEmpty = CGRectIsInfinite(v46)))
  {
    v11 = ci_logger_api(IsEmpty, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CalculateHDRStats) calculateHDRStatsForImage:v11];
    }

    return 0;
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F100]);
    v15 = [image imageByColorMatchingWorkingSpaceToColorSpace:v14];
    CGColorSpaceRelease(v14);
    v16 = [v15 imageByApplyingFilter:@"CIMaximumComponent"];
    memset(&v43, 0, sizeof(v43));
    CGAffineTransformMakeScale(&v43, 0.125, 0.125);
    v40 = v43;
    [objc_msgSend(v16 imageByApplyingTransform:{&v40), "extent"}];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    imageByClampingToExtent = [v16 imageByClampingToExtent];
    v40 = v43;
    v26 = [objc_msgSend(imageByClampingToExtent imageByApplyingTransform:&v40 highQualityDownsample:{1), "imageByCroppingToRect:", v18, v20, v22, v24}];
    v41 = @"inputExtent";
    [v26 extent];
    v42 = [CIVector vectorWithCGRect:?];
    v27 = [v26 imageByApplyingFilter:@"CIAreaAverageMaximumRed" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v42, &v41, 1)}];
    v43.a = 0.0;
    v43.b = 0.0;
    v28 = [[CIRenderDestination alloc] initWithBitmapData:&v43 width:1 height:1 bytesPerRow:16 format:2056];
    v29 = v28;
    [(CIRenderDestination *)v28 setColorSpace:0];
    [(CIRenderTask *)[(CIContext *)self startTaskToRender:v27 fromRect:v28 toDestination:0 atPoint:0.0 error:0.0 waitUntilCompletedAndReturnError:1.0, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)], "waitUntilCompletedAndReturnError:", 0];
    _H0 = LOWORD(v43.a);
    __asm { FCVT            D0, H0 }

    *&v18 = fmax(_D0, 1.0);
    LOWORD(_D0) = WORD1(v43.a);
    __asm { FCVT            D0, H0 }

    *&v20 = fmax(_D0, 0.0);
    objc_autoreleasePoolPop(v13);
    LODWORD(v37) = LODWORD(v18);
    v38 = [image imageBySettingContentHeadroom:v37];
    LODWORD(v39) = LODWORD(v20);
    return [v38 imageBySettingContentAverageLightLevel:v39];
  }
}

- (void)dealloc
{
  if (self->_priv)
  {
    _internalContext = [(CIContext *)self _internalContext];
    if (_internalContext)
    {
      CI::Object::unref(_internalContext);
    }

    pthread_mutex_destroy((self->_priv + 8));
    free(self->_priv);
    self->_priv = 0;
  }

  v4.receiver = self;
  v4.super_class = CIContext;
  [(CIContext *)&v4 dealloc];
}

- (id)device
{
  _internalContext = [(CIContext *)self _internalContext];
  if ((*(*_internalContext + 2))(_internalContext) != 85)
  {
    return 0;
  }

  return CI::MetalContext::device(_internalContext);
}

- (id)internalCommandQueue
{
  _internalContext = [(CIContext *)self _internalContext];
  if ((*(*_internalContext + 16))(_internalContext) != 85)
  {
    return 0;
  }

  return CI::MetalContext::queue(_internalContext);
}

- (id)clientCommandQueue
{
  if (*(self->_priv + 72) == 1)
  {
    return [(CIContext *)self internalCommandQueue];
  }

  else
  {
    return 0;
  }
}

- (unint64_t)identifier
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    return (*(*result + 280))(result);
  }

  return result;
}

- (void)lock
{
  v13 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((self->_priv + 8));
  _internalContext = [(CIContext *)self _internalContext];
  v4 = _internalContext[19] + 1;
  v5 = CI_KDEBUG();
  if (v5)
  {
    (*(*_internalContext + 280))(_internalContext);
    v5 = kdebug_trace();
  }

  v7 = ci_signpost_log_render(v5, v6);
  v8 = (*(*_internalContext + 280))(_internalContext);
  v10 = v8 << 32;
  if (((v8 << 32) - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = os_signpost_enabled(v7);
    if (v8)
    {
      v11 = 134217984;
      v12 = v4;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v10, "render_lock", "frame %lu", &v11, 0xCu);
    }
  }

  if (CI_PRINT_TIME(v8, v9) >= 2)
  {
    _internalContext[41] = 0;
    *(_internalContext + 42) = CFAbsoluteTimeGetCurrent();
  }

  if (CI_ENABLE_METAL_CAPTURE())
  {
    [objc_msgSend(objc_msgSend(MEMORY[0x1E6974000] "sharedCaptureManager")];
  }
}

- (void)unlock
{
  v11 = *MEMORY[0x1E69E9840];
  _internalContext = [(CIContext *)self _internalContext];
  v4 = CI_KDEBUG();
  if (v4)
  {
    (*(*_internalContext + 280))(_internalContext);
    v4 = kdebug_trace();
  }

  v6 = ci_signpost_log_render(v4, v5);
  v7 = (*(*_internalContext + 280))(_internalContext) << 32;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v8 = _internalContext[19];
    v9 = 134217984;
    v10 = v8;
    _os_signpost_emit_with_name_impl(&dword_19CC36000, v6, OS_SIGNPOST_INTERVAL_END, v7, "render_lock", "frame %lu", &v9, 0xCu);
  }

  CI::Context::endFrame(_internalContext);
  if (CI_ENABLE_METAL_CAPTURE())
  {
    [objc_msgSend(objc_msgSend(MEMORY[0x1E6974000] "sharedCaptureManager")];
  }

  pthread_mutex_unlock((self->_priv + 8));
}

- (BOOL)loadArchiveWithURL:(id)l
{
  _internalContext = [(CIContext *)self _internalContext];
  if ((*_internalContext)[2](_internalContext) == 85)
  {
    v5 = [CIContext loadArchiveWithURL:l];
    if (v5)
    {
      CI::MetalContext::add_archive(_internalContext, [objc_msgSend(objc_msgSend(l "absoluteString")]);
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)loadArchiveWithName:(id)name fromURL:(id)l
{
  if (l)
  {
    _internalContext = [(CIContext *)self _internalContext];
    if ((*_internalContext)[2](_internalContext) == 85)
    {
      v7 = [CIContext loadArchiveWithName:name fromURL:l];
      if (v7)
      {
        CI::MetalContext::add_archive(_internalContext, [name stringByAppendingString:@"_bin"]);
        LOBYTE(v7) = 1;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)loadArchive:(id)archive
{
  _internalContext = [(CIContext *)self _internalContext];
  if ((*_internalContext)[2](_internalContext) == 85)
  {
    v5 = [CIContext loadArchive:archive];
    if (v5)
    {
      CI::MetalContext::add_archive(_internalContext, [archive stringByAppendingString:@"_bin"]);
      LOBYTE(v5) = 1;
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)loadArchiveWithURL:(id)l
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = CI_ARCHIVE_USAGE_MODE();
  if (v4)
  {
    if ((CI_DISABLE_LOADING_ARCHIVES() & 1) == 0)
    {
      v5 = [objc_msgSend(objc_msgSend(l "absoluteString")];
      v7 = CI_DISABLE_LOADING_ARCHIVES_BY_NAME(v5, v6);
      if (!v7 || (v7 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithCString:CI_DISABLE_LOADING_ARCHIVES_BY_NAME(v7 encoding:{v8), 1), "containsString:", v5}], (v7 & 1) == 0))
      {
        v9 = CI::MetalContext::binaryArchiveCache(v7);
        objc_sync_enter(v9);
        v10 = [v9 objectForKey:v5];
        if (!v10)
        {
          v11 = CILoadBinaryArchive(l);
          if (!v11)
          {
            v16 = ci_logger_api(0, v12);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              +[CIContext loadArchiveWithURL:];
            }

            [v9 setObject:MEMORY[0x1E695E0F8] forKey:v5];
            objc_sync_exit(v9);
            goto LABEL_14;
          }

          v22 = @"bin";
          v23[0] = v11;
          v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
          v13 = [v9 setObject:v10 forKey:v5];
          v15 = ci_logger_api(v13, v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v18 = 136446466;
            v19 = "+[CIContext loadArchiveWithURL:]";
            v20 = 2114;
            lCopy = l;
            _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_INFO, "%{public}s Loaded CoreImage stitched libraries binary archive from url %{public}@", &v18, 0x16u);
          }
        }

        objc_sync_exit(v9);
        if (v10)
        {
          LOBYTE(v4) = [v10 count] != 0;
          return v4;
        }
      }
    }

LABEL_14:
    LOBYTE(v4) = 0;
  }

  return v4;
}

+ (BOOL)loadArchiveWithName:(id)name fromURL:(id)l
{
  if (!l)
  {
    return 0;
  }

  v6 = CI_DISABLE_LOADING_ARCHIVES_BY_NAME(self, a2);
  if (v6)
  {
    if ([objc_msgSend(MEMORY[0x1E696AEC0] stringWithCString:CI_DISABLE_LOADING_ARCHIVES_BY_NAME(v6 encoding:{v7), 1), "containsString:", name}])
    {
      return 0;
    }
  }

  v9 = [l URLByAppendingPathComponent:{objc_msgSend(name, "stringByAppendingString:", @"_bin.metallib"}];

  return [CIContext loadArchiveWithURL:v9];
}

+ (BOOL)loadArchive:(id)archive
{
  v4 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "bundleURL"}];
  if (([archive isEqualToString:@"portrait_filters_archive"] & 1) != 0 || objc_msgSend(archive, "isEqualToString:", @"portrait_filters_fullsize_archive"))
  {
    [CIFilter filterWithName:@"CIPortraitEffectLightV2"];
    v4 = [objc_msgSend(MEMORY[0x1E696AAE8] bundleForClass:{objc_opt_class()), "bundleURL"}];
  }

  return [CIContext loadArchiveWithName:archive fromURL:v4];
}

+ (void)clearArchives
{
  v2 = CI::MetalContext::binaryArchiveCache(self);
  objc_sync_enter(v2);
  [v2 removeAllObjects];

  objc_sync_exit(v2);
}

+ (void)purgeArchive:(id)archive
{
  v4 = CI::MetalContext::binaryArchiveCache(self);
  objc_sync_enter(v4);
  [v4 removeObjectForKey:archive];

  objc_sync_exit(v4);
}

+ (id)_singletonContext
{
  v4[2] = *MEMORY[0x1E69E9840];
  {
    v3[0] = @"kCIContextName";
    v3[1] = @"kCIContextCacheIntermediates";
    v4[0] = @"CISingletonContext";
    v4[1] = MEMORY[0x1E695E110];
    +[CIContext _singletonContext]::context = +[CIContext contextWithOptions:](CIContext, "contextWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:2]);
  }

  return +[CIContext _singletonContext]::context;
}

- (void)setObject:(id)object forKey:(id)key
{
  _internalContext = [(CIContext *)self _internalContext];
  if (!_internalContext)
  {
    return;
  }

  v7 = _internalContext;
  (*(*_internalContext + 336))(_internalContext);
  if ([key isEqual:@"output_color_space"])
  {
    is_RGB_or_Gray_and_supports_output = CI::ColorSpace_is_RGB_or_Gray_and_supports_output(object, v8);
    if (is_RGB_or_Gray_and_supports_output)
    {

      CI::Context::updateColorSpace(v7, object);
      return;
    }

    v14 = ci_logger_api(is_RGB_or_Gray_and_supports_output, v10);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      return;
    }

LABEL_26:
    [CIContext setObject:forKey:];
    return;
  }

  if ([key isEqual:@"working_color_space"])
  {
    v12 = CI::ColorSpace_is_RGB_or_Gray_and_supports_output(object, v11);
    if (!v12)
    {
      v17 = ci_logger_api(v12, v13);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_26;
    }

    CI::Context::updateWorkingSpace(v7, object);
    return;
  }

  if ([key isEqual:@"kCIContextName"])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v19 = ci_logger_api(isKindOfClass, v16);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_26;
    }

    CI::Context::set_client_name(v7, key);
    return;
  }

  if ([key isEqual:@"quality"])
  {
    [object floatValue];
    v18 = *(*v7 + 200);

    v18(v7);
    return;
  }

  if ([key isEqual:@"high_quality_downsample"])
  {
    if (object == MEMORY[0x1E695E118])
    {
      v20 = *(*v7 + 216);
      v21 = v7;
      v22 = 1;
    }

    else
    {
      if (object != MEMORY[0x1E695E110])
      {
        return;
      }

      v20 = *(*v7 + 216);
      v21 = v7;
      v22 = 0;
    }

    goto LABEL_62;
  }

  if ([key isEqual:@"kCIContextAllowClampToAlpha"])
  {
    if (object == MEMORY[0x1E695E118])
    {
      *(v7 + 41) = 1;
    }

    else if (object == MEMORY[0x1E695E110])
    {
      *(v7 + 41) = 0;
    }

    return;
  }

  if (![key isEqual:@"kCIContextHLGOpticalScale"])
  {
    v27 = [key isEqual:@"kCIContextLossyCompressedIntermediates"];
    if (!v27)
    {
      v30 = ci_logger_api(v27, v28);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [CIContext setObject:forKey:];
      }

      return;
    }

    if (object == MEMORY[0x1E695E118])
    {
      v20 = *(*v7 + 168);
      v21 = v7;
      v22 = 1;
    }

    else
    {
      if (object != MEMORY[0x1E695E110])
      {
        v29 = ci_logger_api(v27, v28);
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        goto LABEL_26;
      }

      v20 = *(*v7 + 168);
      v21 = v7;
      v22 = 0;
    }

LABEL_62:
    v20(v21, v22);
    return;
  }

  if (key)
  {
    objc_opt_class();
    v24 = objc_opt_isKindOfClass();
    if ((v24 & 1) == 0)
    {
      v31 = ci_logger_api(v24, v25);
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      goto LABEL_26;
    }

    [key floatValue];
    v26 = *(*v7 + 152);
  }

  else
  {
    v26 = *(*v7 + 152);
    v23.n128_u64[0] = 0;
  }

  v26(v7, v23);
}

- (id)objectForKey:(id)key
{
  result = [(CIContext *)self _internalContext];
  if (!result)
  {
    return result;
  }

  v5 = result;
  if ([key isEqual:@"output_color_space"])
  {
    v6 = *(v5 + 2);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_10:
    v8 = MEMORY[0x1E695DFB0];

    return [v8 null];
  }

  if ([key isEqual:@"working_color_space"])
  {
    v6 = *(v5 + 3);
    if (v6)
    {
LABEL_4:
      v7 = dyld_program_sdk_at_least();
      result = CGColorSpaceRetain(v6);
      if (v7)
      {

        return result;
      }

      return result;
    }

    goto LABEL_10;
  }

  if ([key isEqual:@"quality"])
  {
    if ((*(*v5 + 208))(v5) == 0.0)
    {
      return &unk_1F1083138;
    }

    v9 = MEMORY[0x1E696AD98];
    goto LABEL_28;
  }

  if ([key isEqual:@"high_quality_downsample"])
  {
    if ((*(*v5 + 224))(v5))
    {
      return MEMORY[0x1E695E118];
    }

    else
    {
      return MEMORY[0x1E695E110];
    }
  }

  if ([key isEqual:@"kCIContextAllowClampToAlpha"])
  {
    if (*(v5 + 41))
    {
      return MEMORY[0x1E695E118];
    }

    else
    {
      return MEMORY[0x1E695E110];
    }
  }

  if ([key isEqual:@"kCIContextHLGOpticalScale"])
  {
    v10 = MEMORY[0x1E696AD98];
    (*(*v5 + 160))(v5);
    v9 = v10;
LABEL_28:

    return [v9 numberWithFloat:?];
  }

  v11 = [key isEqual:@"kCIContextLossyCompressedIntermediates"];
  if (v11)
  {
    v13 = MEMORY[0x1E696AD98];
    v14 = (*(*v5 + 176))(v5);

    return [v13 numberWithBool:v14];
  }

  else
  {
    v15 = ci_logger_api(v11, v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CIContext objectForKey:];
    }

    return 0;
  }
}

- (void)abort
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = *(*_internalContext + 248);

    v3();
  }
}

+ (CIContext)contextWithOptions:(NSDictionary *)options
{
  v3 = [[CIContext alloc] initWithOptions:options];

  return v3;
}

- (CIContext)initWithOptions:(NSDictionary *)options
{
  v5 = objc_autoreleasePoolPush();
  v40.receiver = self;
  v40.super_class = CIContext;
  v6 = [(CIContext *)&v40 init];
  if (!v6)
  {
    goto LABEL_55;
  }

  [-[NSDictionary valueForKey:](options valueForKey:{@"CoreUI", "BOOLValue"}];
  v7 = [-[NSDictionary objectForKey:](options objectForKey:{@"software_renderer", "intValue"}];
  v8 = v7;
  v10 = isWidget(v7, v9);
  if ((v10 & 1) == 0 && v8 != 2)
  {
    if (can_use_metal(v10, v11) & 1) != 0 || (v12 = +[CIContext isOpenCLAvailable], (v12) || (v13 = CIGLIsUsable(v12), !v13) || (v15 = can_use_metal(v13, v14), (v15))
    {
      if (options)
      {
        v17 = [(NSDictionary *)options objectForKey:@"software_renderer"];
      }

      else
      {
        v17 = 0;
      }

      v20 = MEMORY[0x1E695E118];
      v21 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
      [v21 removeObjectForKey:@"software_renderer"];
      if (v17 == v20 || v17 == &unk_1F10819B0)
      {
        [v21 setValue:MEMORY[0x1E695E118] forKey:@"priority_request_low"];
      }

      bOOLValue = [(NSDictionary *)options objectForKeyedSubscript:@"kCIContextUseMetalRenderer"];
      if (bOOLValue)
      {
        bOOLValue = [bOOLValue BOOLValue];
        v24 = bOOLValue ^ 1;
        v25 = bOOLValue ^ 1;
      }

      else
      {
        v25 = 0;
        v24 = 1;
      }

      v26 = CI_ENABLE_METAL_GPU(bOOLValue, v23);
      v27 = 0;
      if ((v25 & 1) == 0 && v26)
      {
        if (options)
        {
          v28 = [(NSDictionary *)options objectForKey:@"kCIContextAllowLowPower"];
        }

        else
        {
          v28 = 0;
        }

        v30 = v28 == v20 || v28 == &unk_1F10819B0;
        v31 = CIMetalCopyDefaultDevice(v30, 0);
        if (v31)
        {
          v33 = v31;
          if (CIMetalDeviceIsSupported(v31, v32))
          {
            v27 = [CIContext internalContextWithMTLDevice:v33 options:v21];
          }

          else
          {
            v27 = 0;
          }

          CFRelease(v33);
        }

        else
        {
          v27 = 0;
        }
      }

      if (v27)
      {
        v34 = 1;
      }

      else
      {
        v34 = v24;
      }

      if ((v34 & 1) != 0 && (v27 || (v27 = [CIContext internalGLContextWithOptions:v21]) != 0))
      {
        v39[0] = MEMORY[0x1E69E9820];
        v39[1] = 3221225472;
        v39[2] = __29__CIContext_initWithOptions___block_invoke;
        v39[3] = &__block_descriptor_40_e8_v12__0B8l;
        v39[4] = v27;
        OptionIsTrueOrFalse(options, @"kCIContextEnableBlending", v39);
        v6 = [(CIContext *)v6 _initWithInternalRepresentation:v27];
        if (CI_ENABLE_METAL_GPU(v6, v35))
        {
          v36 = v25;
        }

        else
        {
          v36 = 1;
        }

        if ((v36 & 1) == 0 && [-[NSDictionary valueForKey:](options valueForKey:{@"CoreUI", "BOOLValue"}])
        {
          [(CIContext *)v6 loadArchive:@"coreui_archive"];
        }

        v19 = v27;
        goto LABEL_49;
      }
    }

    else
    {
      v37 = ci_logger_api(v15, v16);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [CIContext initWithOptions:];
      }
    }

    v6 = 0;
    goto LABEL_55;
  }

  v18 = [CIContext internalSWContextWithOptions:options];
  v6 = [(CIContext *)v6 _initWithInternalRepresentation:v18];
  if (!v18)
  {
    goto LABEL_50;
  }

  v19 = v18;
LABEL_49:
  CI::Object::unref(v19);
LABEL_50:
  if (v6)
  {
    CoreAnalytics(&cfstr_Initwithoption.isa, v6);
  }

LABEL_55:
  objc_autoreleasePoolPop(v5);
  return v6;
}

+ (CIContext)contextWithCGContext:(CGContextRef)cgctx options:(NSDictionary *)options
{
  v4 = [[CIContext alloc] initWithCGContext:cgctx options:options];

  return v4;
}

- (CIContext)initWithCGContext:(CGContext *)context options:(id)options
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  if (!context)
  {
    v10 = [(CIContext *)self initWithOptions:options];
    goto LABEL_20;
  }

  Type = CGContextGetType();
  switch(Type)
  {
    case 10:
      ColorSpace = CGMetalContextGetColorSpace();
      break;
    case 8:
      ColorSpace = CGIOSurfaceContextGetColorSpace();
      break;
    case 4:
      ColorSpace = CGBitmapContextGetColorSpace(context);
      break;
    default:
      goto LABEL_10;
  }

  Property = ColorSpace;
  if (ColorSpace)
  {
    goto LABEL_11;
  }

LABEL_10:
  Property = CGContextGetProperty();
  if (Property)
  {
LABEL_11:
    if (options)
    {
      if (![options objectForKey:@"output_color_space"])
      {
        options = [MEMORY[0x1E695DF90] dictionaryWithDictionary:options];
        [options setValue:Property forKey:@"output_color_space"];
      }
    }

    else
    {
      v18 = @"output_color_space";
      v19[0] = Property;
      options = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    }
  }

  [options objectForKey:@"default_CGImage_format"];
  v12 = [(CIContext *)self initWithOptions:options];
  v10 = v12;
  if (v12)
  {
    _internalContext = [(CIContext *)v12 _internalContext];
    if (_internalContext)
    {
      v14 = _internalContext;
      CI::Context::set_cgcontext(_internalContext, context);
      if (CGContextGetType() == 4)
      {
        Width = CGBitmapContextGetWidth(context);
        Height = CGBitmapContextGetHeight(context);
        (*(*v14 + 184))(v14, 0.0, 0.0, Width, Height);
      }
    }

    CoreAnalytics(&cfstr_Contextwithcgc.isa, v10);
  }

LABEL_20:
  objc_autoreleasePoolPop(v7);
  return v10;
}

+ (CIContext)contextWithEAGLContext:(EAGLContext *)eaglContext
{
  v3 = [[CIContext alloc] initWithEAGLContext:eaglContext];

  return v3;
}

+ (CIContext)contextWithEAGLContext:(EAGLContext *)eaglContext options:(NSDictionary *)options
{
  v4 = [[CIContext alloc] initWithEAGLContext:eaglContext options:options];

  return v4;
}

- (CIContext)initWithEAGLContext:(id)context options:(id)options
{
  v7 = objc_autoreleasePoolPush();
  API = CIEAGLContextGetAPI(context);
  if ((API - 4) <= 0xFFFFFFFD)
  {
    v10 = ci_logger_api(API, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CIContext initWithEAGLContext:options:];
    }

    goto LABEL_10;
  }

  v16.receiver = self;
  v16.super_class = CIContext;
  v11 = [(CIContext *)&v16 init];
  if (!v11)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_11;
  }

  v12 = v11;
  v13 = [CIContext internalContextWithEAGLContext:context options:options];
  v14 = [(CIContext *)v12 _initWithInternalRepresentation:v13];
  if (v13)
  {
    CI::Object::unref(v13);
  }

  if (v14)
  {
    CoreAnalytics(&cfstr_Contextwitheag.isa, v14);
  }

LABEL_11:
  objc_autoreleasePoolPop(v7);
  return v14;
}

+ (CIContext)contextWithMTLDevice:(id)device
{
  v3 = [[CIContext alloc] initWithMTLDevice:device options:0];

  return v3;
}

+ (CIContext)contextWithMTLDevice:(id)device options:(NSDictionary *)options
{
  v4 = [[CIContext alloc] initWithMTLDevice:device options:options];

  return v4;
}

- (CIContext)initWithMTLDevice:(id)device options:(id)options
{
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = CIContext;
  v8 = [(CIContext *)&v13 init];
  if (v8)
  {
    v9 = v8;
    v10 = [CIContext internalContextWithMTLDevice:device options:options];
    v11 = [(CIContext *)v9 _initWithInternalRepresentation:v10];
    if (v10)
    {
      CI::Object::unref(v10);
    }

    if (v11)
    {
      CoreAnalytics(&cfstr_Contextwithmtl.isa, v11);
    }
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

- (CIContext)initWithMTLCommandQueue:(id)queue options:(id)options
{
  v7 = objc_autoreleasePoolPush();
  v13.receiver = self;
  v13.super_class = CIContext;
  v8 = [(CIContext *)&v13 init];
  if (v8)
  {
    v9 = v8;
    v10 = [CIContext internalContextWithMTLCommandQueue:queue options:options];
    v11 = [(CIContext *)v9 _initWithInternalRepresentation:v10];
    if (v10)
    {
      CI::Object::unref(v10);
    }

    *(v9->_priv + 72) = 1;
    *(v9->_priv + 10) = [objc_msgSend(options objectForKeyedSubscript:{@"kCIContextIOSurfaceMemoryPoolID", "unsignedIntValue"}];
    if (v11)
    {
      CoreAnalytics(&cfstr_Contextwithmtl_0.isa, v11);
    }
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v7);
  return v11;
}

+ (CIContext)contextWithMTLCommandQueue:(id)commandQueue options:(NSDictionary *)options
{
  v4 = [[CIContext alloc] initWithMTLCommandQueue:commandQueue options:options];

  return v4;
}

+ (int)_crashed_because_nonaddressable_memory_was_passed_to_render:(id)_crashed_because_nonaddressable_memory_was_passed_to_render toBitmap:(void *)bitmap rowBytes:(int64_t)bytes bounds:(CGRect)bounds format:(int)format colorSpace:(CGColorSpace *)space
{
  height = bounds.size.height;
  width = bounds.size.width;
  v12 = CI::format_bits_per_pixel(format);
  bytesCopy2 = (v12 * vcvtmd_u64_f64(width)) >> 3;
  if (v12 == 12)
  {
    bytesCopy2 = bytes;
  }

  if (!v12)
  {
    bytesCopy2 = bytes;
  }

  return *(bitmap + (vcvtmd_u64_f64(height) - 1) * bytes + bytesCopy2 - 1) + *bitmap;
}

- (void)render:(CIImage *)image toBitmap:(void *)data rowBytes:(ptrdiff_t)rowBytes bounds:(CGRect)bounds format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace
{
  v9 = *&format;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v18 = objc_autoreleasePoolPush();
  [(CIContext *)self _gpuContextCheck];
  _internalContext = [(CIContext *)self _internalContext];
  if (!data)
  {
    goto LABEL_43;
  }

  if (!image)
  {
    goto LABEL_43;
  }

  v20 = _internalContext;
  if (!_internalContext)
  {
    goto LABEL_43;
  }

  [(CIImage *)image extent];
  v80.origin.x = v21;
  v80.origin.y = v22;
  v80.size.width = v23;
  v80.size.height = v24;
  v72.origin.x = x;
  v72.origin.y = y;
  v72.size.width = width;
  v72.size.height = height;
  v73 = CGRectIntersection(v72, v80);
  if (CGRectIsEmpty(v73))
  {
    goto LABEL_43;
  }

  v26 = CI::format_modernize(v9, "[CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:]", v25);
  if (v26 == 258)
  {
    v27 = 259;
  }

  else
  {
    v27 = v26;
  }

  if (v27 == 1794)
  {
    v28 = 1795;
  }

  else
  {
    v28 = v27;
  }

  if ((*(*v20 + 16))(v20) == 84)
  {
    is_not_supported_as_destination_on_gles = CI::format_is_not_supported_as_destination_on_gles(v28);
    if (is_not_supported_as_destination_on_gles)
    {
      v31 = ci_logger_api(is_not_supported_as_destination_on_gles, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [CIContext render:v28 toBitmap:? rowBytes:? bounds:? format:? colorSpace:?];
      }

      goto LABEL_43;
    }
  }

  is_supported_render_to_bitmap = CI::format_is_supported_render_to_bitmap(v28);
  if (is_supported_render_to_bitmap)
  {
    if (!colorSpace)
    {
      goto LABEL_26;
    }

    TypeID = CGColorSpaceGetTypeID();
    Model = CFGetTypeID(colorSpace);
    if (TypeID == Model)
    {
      Model = CGColorSpaceSupportsOutput(colorSpace);
      if (Model)
      {
        is_luminance = CI::format_is_luminance(v28);
        Model = CGColorSpaceGetModel(colorSpace);
        if (is_luminance)
        {
          if (Model)
          {
            goto LABEL_21;
          }

          goto LABEL_26;
        }

        if (Model == 1)
        {
LABEL_26:
          v40 = CI::format_destination_rowbytes_requirement(v28);
          if (rowBytes % v40)
          {
            v42 = ci_logger_api(v40, v41);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              [CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:];
            }
          }

          else
          {
            v74.origin.x = x;
            v74.origin.y = y;
            v74.size.width = width;
            v74.size.height = height;
            v75 = CGRectStandardize(v74);
            v43 = v75.size.width;
            v44 = v75.size.height;
            v45 = floor(v75.origin.x);
            v46 = floor(v75.origin.y);
            v47 = floor(v75.size.width);
            v48 = floor(v75.size.height);
            [CIContext _crashed_because_nonaddressable_memory_was_passed_to_render:image toBitmap:data rowBytes:rowBytes bounds:v28 format:colorSpace colorSpace:v45, v46, v47, v48];
            v49 = vcvtmd_u64_f64(v43);
            v50 = vcvtmd_u64_f64(v44);
            if (rowBytes >= 0)
            {
              v51 = rowBytes;
            }

            else
            {
              v51 = -rowBytes;
            }

            v70 = v51;
            v71 = v49;
            if (rowBytes < 0)
            {
              v52 = (v50 - 1) * rowBytes;
            }

            else
            {
              v52 = 0;
            }

            v53 = [[CIRenderDestination alloc] initWithBitmapData:data + v52 width:v49 height:v50 bytesPerRow:v51 format:v28];
            [(CIRenderDestination *)v53 setColorSpace:colorSpace];
            [(CIRenderDestination *)v53 setFlipped:rowBytes >= 0];
            if ((v20[40] & 1) == 0)
            {
              [(CIRenderDestination *)v53 setAlphaMode:2];
            }

            if ((v20[41] & 1) == 0)
            {
              [(CIRenderDestination *)v53 setClamped:0];
            }

            [(CIImage *)image extent:v70];
            v81.origin.x = v54;
            v81.origin.y = v55;
            v81.size.width = v56;
            v81.size.height = v57;
            v76.origin.x = v45;
            v76.origin.y = v46;
            v76.size.width = v47;
            v76.size.height = v48;
            v77 = CGRectUnion(v76, v81);
            v58 = v77.origin.x;
            v59 = v77.origin.y;
            v60 = v77.size.width;
            v61 = v77.size.height;
            [(CIImage *)image extent];
            v82.origin.x = v62;
            v82.origin.y = v63;
            v82.size.width = v64;
            v82.size.height = v65;
            v78.origin.x = v58;
            v78.origin.y = v59;
            v78.size.width = v60;
            v78.size.height = v61;
            if (CGRectContainsRect(v78, v82))
            {
              [(CIImage *)image extent];
              v83.origin.x = v66;
              v83.origin.y = v67;
              v83.size.width = v68;
              v83.size.height = v69;
              v79.origin.x = v58;
              v79.origin.y = v59;
              v79.size.width = v60;
              v79.size.height = v61;
              if (!CGRectEqualToRect(v79, v83))
              {
                image = [(CIImage *)image imageByCompositingOverImage:+[CIImage clearImage]];
              }
            }

            [(CIRenderTask *)[(CIContext *)self startTaskToRender:image fromRect:v53 toDestination:0 atPoint:v45 error:v46 waitUntilCompletedAndReturnError:v47, v48, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)], "waitUntilCompletedAndReturnError:", 0];
          }

          goto LABEL_43;
        }
      }
    }

LABEL_21:
    v38 = ci_logger_api(Model, v36);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:];
    }

    goto LABEL_43;
  }

  v39 = ci_logger_api(is_supported_render_to_bitmap, v33);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    [CIContext render:v28 toBitmap:? rowBytes:? bounds:? format:? colorSpace:?];
  }

LABEL_43:
  objc_autoreleasePoolPop(v18);
}

- (void)render:(CIImage *)image toCVPixelBuffer:(CVPixelBufferRef)buffer
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  v9 = CVImageBufferCopyColorSpace(buffer);
  [(CIContext *)self render:image toCVPixelBuffer:buffer bounds:v9 colorSpace:0.0, 0.0, Width, Height];

  CGColorSpaceRelease(v9);
}

- (void)render:(CIImage *)image toCVPixelBuffer:(CVPixelBufferRef)buffer bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14 = objc_autoreleasePoolPush();
  [(CIContext *)self _gpuContextCheck];
  _internalContext = [(CIContext *)self _internalContext];
  if (image)
  {
    if (buffer)
    {
      v16 = _internalContext;
      if (_internalContext)
      {
        v17 = [[CIRenderDestination alloc] initWithPixelBuffer:buffer];
        [(CIRenderDestination *)v17 setColorSpace:colorSpace];
        if ((v16[40] & 1) == 0)
        {
          [(CIRenderDestination *)v17 setAlphaMode:2];
        }

        if ((v16[41] & 1) == 0)
        {
          [(CIRenderDestination *)v17 setClamped:0];
        }

        v18 = [(CIContext *)self startTaskToRender:image fromRect:v17 toDestination:0 atPoint:x error:y, width, height, x, y];

        if (v18)
        {
          [(CIRenderTask *)v18 waitUntilCompletedAndReturnError:0];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v14);
}

- (BOOL)isMetalBased
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LOBYTE(_internalContext) = (*(*_internalContext + 16))(_internalContext) == 85;
  }

  return _internalContext;
}

- (BOOL)isOpenGLBased
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LOBYTE(_internalContext) = (*(*_internalContext + 16))(_internalContext) == 84;
  }

  return _internalContext;
}

- (BOOL)isOpenCLBased
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LOBYTE(_internalContext) = (*(*_internalContext + 16))(_internalContext) == 82;
  }

  return _internalContext;
}

- (BOOL)_isGLBackedContext
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = _internalContext;
    LOBYTE(_internalContext) = (*(*_internalContext + 16))(_internalContext) == 84 && v3[50] != 0;
  }

  return _internalContext;
}

- (BOOL)_isCGBackedContext
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LOBYTE(_internalContext) = _internalContext[6] != 0;
  }

  return _internalContext;
}

- (void)_insertEventMarker:(const char *)marker
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v5 = _internalContext;
    if ((*(*_internalContext + 2))(_internalContext) == 84)
    {

      CI::GLContext::insert_event_marker(v5, marker);
    }
  }
}

- (void)render:(id)render
{
  v5 = objc_autoreleasePoolPush();
  if (!render)
  {
    goto LABEL_10;
  }

  [render extent];
  if (CGRectIsEmpty(v35))
  {
    goto LABEL_10;
  }

  [(CIContext *)self bounds];
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  if (!CGRectIsInfinite(v36))
  {
    selfCopy2 = self;
    renderCopy2 = render;
    v15 = x;
    v16 = y;
    v17 = width;
    v18 = height;
    v19 = x;
    v20 = y;
    v21 = width;
    v22 = height;
LABEL_9:
    [(CIContext *)selfCopy2 drawImage:renderCopy2 inRect:v15 fromRect:v16, v17, v18, v19, v20, v21, v22];
    goto LABEL_10;
  }

  [render extent];
  IsInfinite = CGRectIsInfinite(v37);
  if (!IsInfinite)
  {
    [render extent];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    [render extent];
    v19 = v31;
    v20 = v32;
    v21 = v33;
    v22 = v34;
    selfCopy2 = self;
    renderCopy2 = render;
    v15 = v24;
    v16 = v26;
    v17 = v28;
    v18 = v30;
    goto LABEL_9;
  }

  v12 = ci_logger_api(IsInfinite, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [CIContext render:];
  }

LABEL_10:
  objc_autoreleasePoolPop(v5);
}

- (void)drawImage:(CIImage *)image atPoint:(CGPoint)atPoint fromRect:(CGRect)fromRect
{
  if (image)
  {
    height = fromRect.size.height;
    width = fromRect.size.width;
    y = fromRect.origin.y;
    x = fromRect.origin.x;
    v9 = atPoint.y;
    v10 = atPoint.x;
    [(CIImage *)image extent];
    if (!CGRectIsEmpty(v14))
    {
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      v16 = CGRectStandardize(v15);

      [(CIContext *)self drawImage:image inRect:v10 fromRect:v9, v16.size.width, v16.size.height, v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
    }
  }
}

- (void)drawImage:(CIImage *)image inRect:(CGRect)inRect fromRect:(CGRect)fromRect
{
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v9 = inRect.size.height;
  v10 = inRect.size.width;
  v11 = inRect.origin.y;
  v12 = inRect.origin.x;
  v15 = objc_autoreleasePoolPush();
  if ([(CIContext *)self _isGLBackedContext]|| (v16 = [(CIContext *)self _isCGBackedContext], (v16 & 1) != 0))
  {
    [(CIContext *)self _gpuContextCheck];
    _internalContext = [(CIContext *)self _internalContext];
    v54.origin.x = x;
    v54.origin.y = y;
    v54.size.width = width;
    v54.size.height = height;
    v55 = CGRectStandardize(v54);
    v19 = v55.origin.x;
    v20 = v55.origin.y;
    v21 = v55.size.width;
    v22 = v55.size.height;
    v55.origin.x = v12;
    v55.origin.y = v11;
    v55.size.width = v10;
    v55.size.height = v9;
    v56 = CGRectStandardize(v55);
    if (image)
    {
      if (_internalContext)
      {
        v23 = v56.origin.x;
        v24 = v56.origin.y;
        v25 = v56.size.width;
        v26 = v56.size.height;
        if (!CGRectIsEmpty(v56))
        {
          [(CIImage *)image extent];
          v61.origin.x = v27;
          v61.origin.y = v28;
          v61.size.width = v29;
          v61.size.height = v30;
          v57.origin.x = v19;
          v57.origin.y = v20;
          v57.size.width = v21;
          v57.size.height = v22;
          v58 = CGRectIntersection(v57, v61);
          if (!CGRectIsEmpty(v58))
          {
            v59.origin.x = v19;
            v59.origin.y = v20;
            v59.size.width = v21;
            v59.size.height = v22;
            IsInfinite = CGRectIsInfinite(v59);
            if (IsInfinite || (v60.origin.x = v23, v60.origin.y = v24, v60.size.width = v25, v60.size.height = v26, IsInfinite = CGRectIsInfinite(v60)))
            {
              v33 = ci_logger_api(IsInfinite, v32);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                [CIContext drawImage:inRect:fromRect:];
              }
            }

            else if ([(CIContext *)self _isCGBackedContext])
            {
              v35 = *(_internalContext + 6);
              if (CGContextGetType() == 4 && CGBitmapContextGetColorSpace(v35))
              {
                ColorSpace = CGBitmapContextGetColorSpace(v35);
                BitsPerComponent = CGBitmapContextGetBitsPerComponent(v35);
                BitmapInfo = CGBitmapContextGetBitmapInfo(v35);
                if ((BitmapInfo & 0x100) != 0)
                {
                  if ((BitmapInfo & 0x7000) == 0x1000)
                  {
                    v46 = &kCIFormatRGBAh;
                  }

                  else
                  {
                    v46 = &kCIFormatRGBAf;
                  }

                  Model = CGColorSpaceGetModel(ColorSpace);
                  v39 = &kCIFormatLAf;
                  if (Model)
                  {
                    v39 = v46;
                  }
                }

                else if (CGColorSpaceGetModel(ColorSpace))
                {
                  v39 = &kCIFormatRGBA8;
                }

                else
                {
                  v39 = &kCIFormatLA16;
                  if (BitsPerComponent <= 8)
                  {
                    v39 = &kCIFormatLA8;
                  }
                }
              }

              else
              {
                colorSpace = [(CIImage *)image colorSpace];
                if (!colorSpace || (ColorSpace = colorSpace, CGColorSpaceGetModel(colorSpace) != kCGColorSpaceModelRGB) || !CGColorSpaceSupportsOutput(ColorSpace))
                {
                  ColorSpace = [(CIContext *)self _outputColorSpace];
                }

                v44 = CGColorSpaceUsesExtendedRange(ColorSpace);
                if (CGColorSpaceUsesITUR_2100TF(ColorSpace) || v44)
                {
                  v39 = &kCIFormatRGBAh;
                }

                else
                {
                  v39 = &kCIFormatRGBA8;
                }
              }

              v45 = [(CIContext *)self createCGImage:image fromRect:*v39 format:ColorSpace colorSpace:v19, v20, v21, v22];
              CGContextDrawImageFromRect();
              CGImageRelease(v45);
            }

            else
            {
              v48 = v25 / v21;
              v49 = v25 / v21 * 0.0;
              v50 = v26 / v22 * 0.0;
              v51 = v26 / v22;
              v52 = v23 - v25 / v21 * v19 - v50 * v20;
              v53 = v24 - v49 * v19 - v26 / v22 * v20;
              v40 = [(CIImage *)image imageByApplyingTransform:&v48];
              v41 = *(_internalContext + 2);
              if ((*(*_internalContext + 16))(_internalContext) == 84 && CI::GLContext::is_user_destination_srgb(_internalContext))
              {
                v41 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1B0]);
                CFAutorelease(v41);
              }

              _internalRepresentation = [[(CIImage *)v40 imageByColorMatchingWorkingSpaceToColorSpace:v41] _internalRepresentation];
              [(CIContext *)self lock];
              ++*(_internalContext + 19);
              *(_internalContext + 24) = 0;
              *(_internalContext + 20) = v23;
              *(_internalContext + 21) = v24;
              *(_internalContext + 22) = v25;
              *(_internalContext + 23) = v26;
              (*(*_internalContext + 248))(_internalContext, 0);
              CI::image_render_to_display(_internalContext, _internalRepresentation, 264, v23, v24, v25, v26);
              [(CIContext *)self unlock];
            }
          }
        }
      }
    }
  }

  else
  {
    v34 = ci_logger_api(v16, v17);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [CIContext drawImage:inRect:fromRect:];
    }
  }

  objc_autoreleasePoolPop(v15);
}

- (void)render:(id)render toTexture:(unsigned int)texture target:(unsigned int)target bounds:(CGRect)bounds colorSpace:(CGColorSpace *)space
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v13 = *&texture;
  v16 = objc_autoreleasePoolPush();
  v18 = v16;
  if (target == 3553)
  {
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v34 = CGRectStandardize(v33);
    if (render)
    {
      v19 = v34.origin.x;
      v20 = v34.origin.y;
      v21 = v34.size.width;
      v22 = v34.size.height;
      if ([(CIContext *)self _internalContext])
      {
        [render extent];
        v37.origin.x = v23;
        v37.origin.y = v24;
        v37.size.width = v25;
        v37.size.height = v26;
        v35.origin.x = v19;
        v35.origin.y = v20;
        v35.size.width = v21;
        v35.size.height = v22;
        v36 = CGRectIntersection(v35, v37);
        if (!CGRectIsEmpty(v36))
        {
          [(CIContext *)self _gpuContextCheck];
          _internalContext = [(CIContext *)self _internalContext];
          if ((*(*_internalContext + 16))(_internalContext) == 84 || (v28 = (*(*_internalContext + 16))(_internalContext), v28 == 82))
          {
            v30 = [[CIRenderDestination alloc] initWithGLTexture:v13 target:3553 width:v21 height:v22];
            [(CIRenderDestination *)v30 setColorSpace:space];
            [(CIRenderDestination *)v30 setFlipped:0];
            if ((_internalContext[40] & 1) == 0)
            {
              [(CIRenderDestination *)v30 setAlphaMode:2];
            }

            if ((_internalContext[41] & 1) == 0)
            {
              [(CIRenderDestination *)v30 setClamped:0];
            }

            [(CIContext *)self startTaskToRender:render fromRect:v30 toDestination:0 atPoint:v19 error:v20, v21, v22, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
          }

          else
          {
            v32 = ci_logger_api(v28, v29);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [CIContext render:toTexture:target:bounds:colorSpace:];
            }
          }
        }
      }
    }
  }

  else
  {
    v31 = ci_logger_api(v16, v17);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CIContext render:toTexture:target:bounds:colorSpace:];
    }
  }

  objc_autoreleasePoolPop(v18);
}

- (void)render:(CIImage *)image toMTLTexture:(id)texture commandBuffer:(id)commandBuffer bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v16 = objc_autoreleasePoolPush();
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v34 = CGRectStandardize(v33);
  if (image)
  {
    v17 = v34.origin.x;
    v18 = v34.origin.y;
    v19 = v34.size.width;
    v20 = v34.size.height;
    if ([(CIContext *)self _internalContext])
    {
      [(CIImage *)image extent];
      v37.origin.x = v21;
      v37.origin.y = v22;
      v37.size.width = v23;
      v37.size.height = v24;
      v35.origin.x = v17;
      v35.origin.y = v18;
      v35.size.width = v19;
      v35.size.height = v20;
      v36 = CGRectIntersection(v35, v37);
      if (!CGRectIsEmpty(v36))
      {
        _internalContext = [(CIContext *)self _internalContext];
        textureType = [texture textureType];
        if (textureType == 2)
        {
          v28 = (*(*_internalContext + 16))(_internalContext);
          if (v28 == 85)
          {
            v30 = [[CIRenderDestination alloc] initWithMTLTexture:texture commandBuffer:commandBuffer];
            [(CIRenderDestination *)v30 setColorSpace:colorSpace];
            if ((_internalContext[40] & 1) == 0)
            {
              [(CIRenderDestination *)v30 setAlphaMode:2];
            }

            if ((_internalContext[41] & 1) == 0)
            {
              [(CIRenderDestination *)v30 setClamped:0];
            }

            if ((dyld_program_sdk_at_least() & 1) == 0 && (dyld_program_sdk_at_least() & 1) == 0)
            {
              [(CIRenderDestination *)v30 setFlipped:0];
            }

            [(CIContext *)self startTaskToRender:image fromRect:v30 toDestination:0 atPoint:v17 error:v18, v19, v20, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
          }

          else if (commandBuffer || (v28 = [texture iosurface]) == 0)
          {
            v32 = ci_logger_api(v28, v29);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              [CIContext render:toMTLTexture:commandBuffer:bounds:colorSpace:];
            }
          }

          else
          {
            [(CIContext *)self render:image toIOSurface:v28 bounds:colorSpace colorSpace:v17, v18, v19, v20];
          }
        }

        else
        {
          v31 = ci_logger_api(textureType, v27);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            [CIContext render:toMTLTexture:commandBuffer:bounds:colorSpace:];
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v16);
}

- (__IOSurface)createIOSurface:(id)surface
{
  [surface extent];

  return [(CIContext *)self createIOSurface:surface fromRect:?];
}

- (__IOSurface)createIOSurface:(id)surface fromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v10 = objc_autoreleasePoolPush();
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v24 = CGRectStandardize(v23);
  if (surface && (v11 = v24.origin.x, v12 = v24.origin.y, v13 = v24.size.width, v14 = v24.size.height, -[CIContext _internalContext](self, "_internalContext")) && (v25.origin.x = v11, v25.origin.y = v12, v25.size.width = v13, v25.size.height = v14, !CGRectIsInfinite(v25)) && ([surface extent], v27.origin.x = v15, v27.origin.y = v16, v27.size.width = v17, v27.size.height = v18, v26.origin.x = v11, v26.origin.y = v12, v26.size.width = v13, v26.size.height = v14, CGRectIntersectsRect(v26, v27)))
  {
    _internalContext = [(CIContext *)self _internalContext];
    v20 = (*(*_internalContext + 552))(_internalContext, 266);
    Surface = CreateSurface(vcvtpd_u64_f64(v13), vcvtpd_u64_f64(v14), v20, 1111970369, 1);
    if (Surface)
    {
      [(CIContext *)self render:surface toIOSurface:Surface bounds:[(CIContext *)self _outputColorSpace] colorSpace:v11, v12, v13, v14];
    }
  }

  else
  {
    Surface = 0;
  }

  objc_autoreleasePoolPop(v10);
  return Surface;
}

- (void)render:(CIImage *)image toIOSurface:(IOSurfaceRef)surface bounds:(CGRect)bounds colorSpace:(CGColorSpaceRef)colorSpace
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v14 = objc_autoreleasePoolPush();
  [(CIContext *)self _gpuContextCheck];
  _internalContext = [(CIContext *)self _internalContext];
  if (image)
  {
    if (surface)
    {
      v16 = _internalContext;
      if (_internalContext)
      {
        v17 = [[CIRenderDestination alloc] initWithIOSurface:surface];
        [(CIRenderDestination *)v17 setColorSpace:colorSpace];
        if ((v16[40] & 1) == 0)
        {
          [(CIRenderDestination *)v17 setAlphaMode:2];
        }

        if ((v16[41] & 1) == 0)
        {
          [(CIRenderDestination *)v17 setClamped:0];
        }

        v18 = [(CIContext *)self startTaskToRender:image fromRect:v17 toDestination:0 atPoint:x error:y, width, height, x, y];

        if (v18)
        {
          [(CIRenderTask *)v18 waitUntilCompletedAndReturnError:0];
        }
      }
    }
  }

  objc_autoreleasePoolPop(v14);
}

- (CGLayerRef)createCGLayerWithSize:(CGSize)size info:(CFDictionaryRef)info
{
  height = size.height;
  width = size.width;
  v7 = CGColorSpaceRetain([(CIContext *)self workingColorSpace]);
  if (!v7)
  {
    v7 = +[CIContext defaultRGBColorSpace];
  }

  v8 = CGBitmapContextCreate(0, 1uLL, 1uLL, 8uLL, 0, v7, 2u);
  CGColorSpaceRelease(v7);
  if (!v8)
  {
    return 0;
  }

  v11.width = width;
  v11.height = height;
  v9 = CGLayerCreateWithContext(v8, v11, info);
  CGContextRelease(v8);
  return v9;
}

- (unint64_t)maximumInputImageSize
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    v3 = *(*result + 456);

    return v3();
  }

  return result;
}

- (unint64_t)maximumOutputImageSize
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    v3 = *(*result + 464);

    return v3();
  }

  return result;
}

- (CGSize)inputImageMaximumSize
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = (*(*_internalContext + 456))(_internalContext);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)outputImageMaximumSize
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = (*(*_internalContext + 464))(_internalContext);
  }

  else
  {
    v3 = 0.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGColorSpace)_outputColorSpace
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    return *(result + 2);
  }

  return result;
}

- (CGColorSpaceRef)workingColorSpace
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    return *(result + 3);
  }

  return result;
}

- (CIFormat)workingFormat
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    LODWORD(_internalContext) = _internalContext[8];
  }

  return _internalContext;
}

+ (CGColorSpace)defaultWorkingColorSpace
{
  v2 = CI::Context::defaultWorkingSpace(self);

  return CGColorSpaceRetain(v2);
}

+ (CGColorSpace)defaultRGBColorSpace
{
  {
    if (v4)
    {
      +[CIContext defaultRGBColorSpace]::space = CI::Context::defaultOutputRGBSpace(v4);
    }
  }

  v2 = +[CIContext defaultRGBColorSpace]::space;

  return CGColorSpaceRetain(v2);
}

+ (CGColorSpace)defaultGrayColorSpace
{
  {
    if (v4)
    {
      +[CIContext defaultGrayColorSpace]::space = CI::Context::defaultOutputGraySpace(v4);
    }
  }

  v2 = +[CIContext defaultGrayColorSpace]::space;

  return CGColorSpaceRetain(v2);
}

- (void)clearCaches
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v3 = *(*_internalContext + 616);

    v3();
  }
}

- (id)flatten:(id)flatten fromRect:(CGRect)rect format:(int)format colorSpace:(CGColorSpace *)space
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = ci_logger_api(self, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = 136446210;
    v10 = "[CIContext flatten:fromRect:format:colorSpace:]";
    _os_log_impl(&dword_19CC36000, v7, OS_LOG_TYPE_INFO, "%{public}s was called but ignored.", &v9, 0xCu);
  }

  return flatten;
}

- (BOOL)measureRequirementsOf:(id)of query:(int)query :(id *)a5 results:(CGRect *)results
{
  if (of)
  {
    v6 = query == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || results == 0 || a5 == 0;
  v9 = !v8;
  if (!v8)
  {
    v11 = a5;
    LODWORD(v12) = query;
    [(CIContext *)self bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    memset(&v35, 0, sizeof(v35));
    if (self)
    {
      objc_msgSend_CTM(self);
    }

    else
    {
      memset(&v34, 0, sizeof(v34));
    }

    CGAffineTransformInvert(&v35, &v34);
    v34 = v35;
    v36.origin.x = v16;
    v36.origin.y = v18;
    v36.size.width = v20;
    v36.size.height = v22;
    v37 = CGRectApplyAffineTransform(v36, &v34);
    if (v12 >= 1)
    {
      x = v37.origin.x;
      y = v37.origin.y;
      width = v37.size.width;
      height = v37.size.height;
      v12 = v12;
      p_size = &results->size;
      do
      {
        v28 = *v11++;
        [of regionOfInterestForImage:v28 inRect:{x, y, width, height}];
        p_size[-1].width = v29;
        p_size[-1].height = v30;
        p_size->width = v31;
        p_size->height = v32;
        p_size += 2;
        --v12;
      }

      while (v12);
    }
  }

  return v9;
}

- (void)setCTM:(CGAffineTransform *)m
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v5 = *&m->c;
    v6[0] = *&m->a;
    v6[1] = v5;
    v6[2] = *&m->tx;
    (*(*_internalContext + 136))(_internalContext, v6);
  }
}

- (CGAffineTransform)CTM
{
  result = [(CIContext *)self _internalContext];
  if (result)
  {
    v5 = *(*&result->a + 144);

    return v5();
  }

  else
  {
    v6 = MEMORY[0x1E695EFD0];
    v7 = *(MEMORY[0x1E695EFD0] + 16);
    *&retstr->a = *MEMORY[0x1E695EFD0];
    *&retstr->c = v7;
    *&retstr->tx = *(v6 + 32);
  }

  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v12 = *(*_internalContext + 184);
    v8.n128_f64[0] = x;
    v9.n128_f64[0] = y;
    v10.n128_f64[0] = width;
    v11.n128_f64[0] = height;

    v12(v8, v9, v10, v11);
  }
}

- (CGRect)bounds
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    (*(*_internalContext + 192))(_internalContext);
  }

  else
  {
    v3 = *MEMORY[0x1E695F050];
    v4 = *(MEMORY[0x1E695F050] + 8);
    v5 = *(MEMORY[0x1E695F050] + 16);
    v6 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)description
{
  _internalContext = [(CIContext *)self _internalContext];
  if (_internalContext)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __24__CIContext_description__block_invoke;
    v5[3] = &unk_1E75C20D0;
    v5[4] = self;
    v5[5] = _internalContext;
    return stream_to_string(v5);
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CIContext;
    return [(CIContext *)&v6 description];
  }
}

uint64_t __24__CIContext_description__block_invoke(uint64_t a1, FILE *a2)
{
  v4 = [objc_msgSend(objc_opt_class() "description")];
  fprintf(a2, "<%s: %p", v4, *(a1 + 32));
  v5 = (*(**(a1 + 40) + 312))();
  v6 = (*(**(a1 + 40) + 280))();
  fprintf(a2, " (%s %d)", v5, v6);
  if ([*(a1 + 32) isMetalBased])
  {
    v7 = CI::MetalContext::device(*(a1 + 40));
    fprintf(a2, " MTLDevice=%p", v7);
  }

  [*(a1 + 32) bounds];
  x = v24.origin.x;
  y = v24.origin.y;
  width = v24.size.width;
  height = v24.size.height;
  if (!CGRectIsInfinite(v24))
  {
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    if (CGRectIsEmpty(v25))
    {
      fwrite(" bounds=[empty]", 0xFuLL, 1uLL, a2);
    }

    else
    {
      fprintf(a2, " bounds=[%g %g %g %g]", x, y, width, height);
    }
  }

  fwrite(">\n", 2uLL, 1uLL, a2);
  v12 = [*(a1 + 32) clientCommandQueue];
  if (v12)
  {
    fprintf(a2, "    withMTLCommandQueue: %p\n", v12);
  }

  if ([*(a1 + 32) _isCGBackedContext])
  {
    fprintf(a2, "    withCGContext: %p\n", *(*(a1 + 40) + 48));
  }

  if ([*(a1 + 32) _isGLBackedContext])
  {
    fprintf(a2, "    withGLContext: %p\n", *(*(a1 + 40) + 392));
  }

  v13 = *(a1 + 40);
  if (v13[236])
  {
    fprintf(a2, "    name: %s\n", v13 + 236);
    v13 = *(a1 + 40);
  }

  v14 = (*(*v13 + 240))(v13);
  v15 = "yes";
  if (v14 == -1)
  {
    v15 = "no";
  }

  fprintf(a2, "    cacheIntermediates: %s\n", v15);
  v16 = (*(**(a1 + 40) + 272))();
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = "    priority: media\n";
      v18 = 20;
    }

    else
    {
      if (v16 != 3)
      {
        goto LABEL_27;
      }

      v17 = "    priority: high\n";
      v18 = 19;
    }
  }

  else if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_27;
    }

    v17 = "    priority: low\n";
    v18 = 18;
  }

  else
  {
    v17 = "    priority: default\n";
    v18 = 22;
  }

  fwrite(v17, v18, 1uLL, a2);
LABEL_27:
  fwrite("    workingSpace: ", 0x12uLL, 1uLL, a2);
  CI::fprintf_cs(a2, *(*(a1 + 40) + 24), 1);
  fputc(10, a2);
  v19 = CI::name_for_format(*(*(a1 + 40) + 32));
  fprintf(a2, "    workingFormat: %s\n", v19);
  if ((*(**(a1 + 40) + 176))(*(a1 + 40)))
  {
    fwrite("    lossyIntermediates: true\n", 0x1DuLL, 1uLL, a2);
  }

  v20 = (*(**(a1 + 40) + 224))(*(a1 + 40));
  v21 = "Low";
  if (v20)
  {
    v21 = "High";
  }

  fprintf(a2, "    downsampleQuality: %s\n", v21);
  v22 = (*(**(a1 + 40) + 496))();
  result = fprintf(a2, "    maxRenderLoad: %ld MB", v22 >> 20);
  if (*(*(a1 + 40) + 368))
  {
    return fprintf(a2, "    memoryLimit: %ld MB", *(*(a1 + 40) + 368));
  }

  return result;
}

- (id)createColorCubeDataForFilters:(id)filters dimension:(int)dimension colorSpace:(CGColorSpace *)space
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = 4 * dimension;
  v10 = dimension * dimension;
  v11 = dimension * dimension * 4 * dimension;
  v12 = [MEMORY[0x1E695DF88] dataWithLength:v11];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  mutableBytes = [v12 mutableBytes];
  if (dimension >= 1)
  {
    v15 = 0;
    v16 = (dimension - 1);
    do
    {
      v17 = 0;
      do
      {
        v18 = 0;
        do
        {
          *mutableBytes = (v18 * 255.0 / v16);
          mutableBytes[1] = (v17 * 255.0 / v16);
          mutableBytes[2] = (v15 * 255.0 / v16);
          mutableBytes[3] = -1;
          mutableBytes += 4;
          ++v18;
        }

        while (dimension != v18);
        ++v17;
      }

      while (v17 != dimension);
      ++v15;
    }

    while (v15 != dimension);
  }

  selfCopy = self;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v20 = DeviceRGB;
  if (space)
  {
    spaceCopy = space;
  }

  else
  {
    spaceCopy = DeviceRGB;
  }

  dimensionCopy = dimension;
  v23 = v10;
  v35 = spaceCopy;
  outputImage = [CIImage imageWithBitmapData:v13 bytesPerRow:dimension size:v10 format:v9 colorSpace:?];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = [filters countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v38;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(filters);
        }

        v29 = *(*(&v37 + 1) + 8 * i);
        v30 = [v29 valueForKey:@"inputImage"];
        [v29 setValue:outputImage forKey:@"inputImage"];
        outputImage = [v29 outputImage];
        [v29 setValue:v30 forKey:@"inputImage"];
      }

      v26 = [filters countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v26);
  }

  v31 = [MEMORY[0x1E695DF88] dataWithLength:v11];
  v32 = v31;
  if (v31)
  {
    -[CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:](selfCopy, "render:toBitmap:rowBytes:bounds:format:colorSpace:", outputImage, [v31 mutableBytes], v34, 264, v35, 0.0, 0.0, dimensionCopy, v23);
  }

  CGColorSpaceRelease(v20);
  return v32;
}

- (void)_internalContext
{
  priv = self->_priv;
  if (priv)
  {
    return *priv;
  }

  else
  {
    return 0;
  }
}

+ (void)internalContextWithEAGLContext:(id)context options:(id)options
{
  if (CIGLIsUsable(self) && (!context || ContextIsUsable(context)))
  {
    v18 = 0;
    GetOutputColorSpaceFromOptions(options, &v18);
    if (v18)
    {
      GetWorkingColorSpaceFromOptions(options, &v18);
      if (v18)
      {
        v6 = [options valueForKey:@"working_format"];
        v8 = v6;
        if (v6)
        {
          intValue = [v6 intValue];
        }

        else
        {
          intValue = 0;
        }

        v11 = CI::format_modernize(intValue, "+[CIContext(Internal) internalContextWithEAGLContext:options:]", v7);
        if (v8 && v11 != 266 && v11 != 264 && v11 != 2056)
        {
          v12 = CI::name_for_format(v11);
          v14 = ci_logger_api(v12, v13);
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
          if (v12)
          {
            if (v15)
            {
              +[CIContext(Internal) internalContextWithEAGLContext:options:];
              if (!options)
              {
LABEL_22:
                v16 = [options objectForKey:@"kCIContextIntermediateMemoryTarget"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v16 intValue];
                }

                else if (defaultIntermediateMemoryTarget(void)::onceToken != -1)
                {
                  +[CIContext(Internal) internalContextWithEAGLContext:options:];
                }

                v17 = [options objectForKey:@"kCIContextMemoryLimit"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v17 intValue];
                }

                [options valueForKey:@"CoreUI"];
                operator new();
              }

LABEL_20:
              [options objectForKey:@"output_premultiplied"];
              goto LABEL_22;
            }
          }

          else if (v15)
          {
            +[CIContext(Internal) internalContextWithEAGLContext:options:];
            if (!options)
            {
              goto LABEL_22;
            }

            goto LABEL_20;
          }
        }

        if (!options)
        {
          goto LABEL_22;
        }

        goto LABEL_20;
      }
    }
  }

  return 0;
}

+ (void)internalContextWithMTLDevice:(id)device options:(id)options
{
  if (!device)
  {
    return 0;
  }

  v6 = [options valueForKey:@"CoreUI"] ? "com.apple.CoreImage-Internal" : "com.apple.CoreImage";
  v7 = CIMetalCommandQueueCreate(v6, device);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  CFAutorelease(v7);

  return [CIContext internalContextWithMTLCommandQueue:v8 options:options];
}

+ (void)internalContextWithMTLCommandQueue:(id)queue options:(id)options
{
  if (queue)
  {
    v25[0] = 0;
    GetOutputColorSpaceFromOptions(options, v25);
    if (v25[0])
    {
      GetWorkingColorSpaceFromOptions(options, v25);
      if (v25[0])
      {
        v5 = [options valueForKey:@"working_format"];
        v7 = v5;
        if (v5)
        {
          intValue = [v5 intValue];
        }

        else
        {
          intValue = 0;
        }

        v10 = CI::format_modernize(intValue, "+[CIContext(Internal) internalContextWithMTLCommandQueue:options:]", v6);
        if (v7)
        {
          v11 = v10 == 266 || v10 == 264;
          v12 = v11 || v10 == 2056;
          if (!v12 && v10 != 2312)
          {
            v14 = CI::name_for_format(v10);
            v16 = ci_logger_api(v14, v15);
            v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
            if (v14)
            {
              if (v17)
              {
                +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
              }
            }

            else if (v17)
            {
              +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
            }
          }
        }

        if (options)
        {
          [options objectForKey:@"output_premultiplied"];
          [options objectForKey:@"kCIContextAllowHalfPrecision"];
        }

        v18 = [options objectForKey:@"kCIContextIntermediateMemoryTarget"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v18 intValue];
        }

        else if (defaultIntermediateMemoryTarget(void)::onceToken != -1)
        {
          +[CIContext(Internal) internalContextWithEAGLContext:options:];
        }

        v19 = [options objectForKey:@"kCIContextMemoryLimit"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v19 intValue];
        }

        [objc_msgSend(options objectForKeyedSubscript:{@"kCIContextIOSurfaceMemoryPoolID", "unsignedIntValue"}];
        [options objectForKeyedSubscript:@"kCIContextIntermediateAllocator"];
        v20 = [options objectForKeyedSubscript:@"kCIContextCVMetalTextureCache"];
        if (v20)
        {
          v21 = CFGetTypeID(v20);
          TypeID = CVMetalTextureCacheGetTypeID();
          if (v21 != TypeID)
          {
            v24 = ci_logger_api(TypeID, v23);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
            }
          }
        }

        operator new();
      }
    }
  }

  return 0;
}

uint64_t __66__CIContext_Internal__internalContextWithMTLCommandQueue_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) newCaptureScopeWithDevice:{objc_msgSend(*(a1 + 40), "device")}];
  [v2 setLabel:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CoreImage <%@>", objc_msgSend(objc_msgSend(*(a1 + 40), "device"), "name"))}];
  v3 = *(a1 + 32);

  return [v3 setDefaultCaptureScope:v2];
}

+ (void)internalSWContextWithOptions:(id)options
{
  v19 = 0;
  GetOutputColorSpaceFromOptions(options, &v19);
  if (v19)
  {
    GetWorkingColorSpaceFromOptions(options, &v19);
    if (v19)
    {
      v4 = [options valueForKey:@"working_format"];
      v6 = v4;
      if (v4)
      {
        intValue = [v4 intValue];
      }

      else
      {
        intValue = 0;
      }

      v8 = CI::format_modernize(intValue, "+[CIContext(Internal) internalSWContextWithOptions:]", v5);
      if (v6)
      {
        v9 = v8 == 266 || v8 == 264;
        v10 = v9 || v8 == 2056;
        if (!v10 && v8 != 2312)
        {
          v12 = CI::name_for_format(v8);
          v14 = ci_logger_api(v12, v13);
          v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
          if (v12)
          {
            if (v15)
            {
              +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
              if (!options)
              {
LABEL_26:
                v16 = [options objectForKey:@"kCIContextIntermediateMemoryTarget"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v16 intValue];
                }

                else if (defaultIntermediateMemoryTarget(void)::onceToken != -1)
                {
                  +[CIContext(Internal) internalContextWithEAGLContext:options:];
                }

                v17 = [options objectForKey:@"kCIContextMemoryLimit"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v17 intValue];
                }

                operator new();
              }

LABEL_24:
              [options objectForKey:@"output_premultiplied"];
              goto LABEL_26;
            }
          }

          else if (v15)
          {
            +[CIContext(Internal) internalContextWithMTLCommandQueue:options:];
            if (!options)
            {
              goto LABEL_26;
            }

            goto LABEL_24;
          }
        }
      }

      if (!options)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  return 0;
}

- (id)_initWithInternalRepresentation:(void *)representation
{
  v42 = *MEMORY[0x1E69E9840];
  if (representation)
  {
    v28.receiver = self;
    v28.super_class = CIContext;
    v4 = [(CIContext *)&v28 init];
    if (v4)
    {
      if (v4->_priv = malloc_type_calloc(1uLL, 0x58uLL, 0x1020040347FB3B5uLL), *v4->_priv = CI::Object::ref(representation), v5 = pthread_mutex_init((v4->_priv + 8), 0), dli_fname = CI_PRINT_TREE(v5, v6), dli_fname) && (v9 = (*(*representation + 280))(representation), dli_fname = CI_PRINT_TREE_context(v9, representation + 236), (dli_fname) || CI_PRINT_TIME(dli_fname, v8) && (v10 = (*(*representation + 280))(representation), dli_fname = CI_PRINT_TIME_context(v10, representation + 236), dli_fname))
      {
        {
          if (dli_fname)
          {
            log_context_creation(CI::Context *)::isInternalBuild = os_variant_has_internal_content();
          }
        }

        if (log_context_creation(CI::Context *)::isInternalBuild == 1)
        {
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
          memset(buf, 0, sizeof(buf));
          v11 = backtrace(buf, 32);
          dli_fname = dladdr(*buf, &v29);
          if (dli_fname)
          {
            dli_fbase = v29.dli_fbase;
          }

          else
          {
            dli_fbase = 0;
          }

          if (v11 >= 2)
          {
            v13 = 8 * v11;
            for (i = 8; v13 != i; i += 8)
            {
              dli_fname = dladdr(*&buf[i], &v29);
              if (!dli_fname)
              {
                break;
              }

              if (v29.dli_fbase != dli_fbase)
              {
                dli_fname = v29.dli_fname;
                if (v29.dli_fname)
                {
                  dli_fname = strrchr(v29.dli_fname, 47);
                  v15 = dli_fname;
                }

                else
                {
                  v15 = 0;
                }

                if (v29.dli_sname)
                {
                  dli_sname = v29.dli_sname;
                }

                else
                {
                  dli_sname = "";
                }

                v17 = "from";
                goto LABEL_20;
              }
            }
          }

          v15 = 0;
          dli_sname = "";
          v17 = "";
        }

        else
        {
          v15 = 0;
          dli_sname = "";
          v17 = "";
        }

LABEL_20:
        v18 = ci_logger_api(dli_fname, v8);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = (*(*representation + 312))(representation);
          v20 = (*(*representation + 280))(representation);
          v22 = *(representation + 236);
          v21 = representation + 236;
          v23 = v22 == 0;
          *buf = 136447746;
          if (v22)
          {
            v24 = ":";
          }

          else
          {
            v24 = "";
          }

          if (v23)
          {
            v25 = "";
          }

          else
          {
            v25 = v21;
          }

          *&buf[4] = v19;
          *&buf[12] = 1026;
          if (v15)
          {
            v26 = (v15 + 1);
          }

          else
          {
            v26 = "";
          }

          *&buf[14] = v20;
          *&buf[18] = 2082;
          *&buf[20] = v24;
          *&buf[28] = 2082;
          *&buf[30] = v25;
          *&buf[38] = 2082;
          *&buf[40] = v17;
          *&buf[48] = 2082;
          *&buf[50] = v26;
          *&buf[58] = 2082;
          *&buf[60] = dli_sname;
          _os_log_impl(&dword_19CC36000, v18, OS_LOG_TYPE_INFO, "Created CIContext (%{public}s context %{public}d%{public}s%{public}s) %{public}s %{public}s %{public}s", buf, 0x44u);
        }
      }
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (void)_gpuContextCheck
{
  v2 = *self->_priv;
  if (v2)
  {
    (*(*v2 + 16))();
  }
}

- (id)_createClone
{
  _internalContext = [(CIContext *)self _internalContext];
  v3 = (*(*_internalContext + 16))(_internalContext);
  switch(v3)
  {
    case 'S':
      operator new();
    case 'U':
      operator new();
    case 'T':
      operator new();
  }

  return 0;
}

+ (id)_namedCache
{
  if (+[CIContext(_createCached) _namedCache]::onceToken != -1)
  {
    +[CIContext(_createCached) _namedCache];
  }

  return +[CIContext(_createCached) _namedCache]::cache;
}

uint64_t __39__CIContext__createCached___namedCache__block_invoke()
{
  +[CIContext(_createCached) _namedCache]::cache = objc_alloc_init(MEMORY[0x1E695DEE0]);
  [+[CIContext(_createCached) _namedCache]::cache setName:@"com.apple.coreimage.nscache.CIContext"];
  [+[CIContext(_createCached) _namedCache]::cache setCountLimit:256];
  v0 = +[CIContext(_createCached) _namedCache]::cache;

  return [v0 setEvictsObjectsWhenApplicationEntersBackground:1];
}

+ (id)_cachedContext:(id)context options:(id)options
{
  _namedCache = [self _namedCache];
  v7 = [_namedCache objectForKey:context];
  if (v7)
  {
    v8 = v7;

    return v8;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary addEntriesFromDictionary:options];
    [dictionary setObject:context forKeyedSubscript:@"kCIContextName"];
    [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:@"kCIContextCacheIntermediates"];
    v11 = [CIContext contextWithOptions:dictionary];
    [_namedCache setObject:v11 forKey:context];
    return v11;
  }
}

- (CGImage)_createCGImage:(id)image fromRect:(CGRect)rect format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space deferred:(Trilean)deferred renderCallback:(id)callback
{
  premultipliedCopy = premultiplied;
  v13 = *&format;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v196 = *MEMORY[0x1E69E9840];
  v20 = objc_autoreleasePoolPush();
  imageCopy = image;
  imageCopy2 = image;
  [(CIContext *)self _gpuContextCheck];
  v197.origin.x = x;
  v197.origin.y = y;
  v197.size.width = width;
  v197.size.height = height;
  v198 = CGRectStandardize(v197);
  if (!image || (v23 = v198.origin.x, v24 = v198.origin.y, v25 = v198.size.width, v26 = v198.size.height, CGRectIsInfinite(v198)) || ([image extent], v215.origin.x = v27, v215.origin.y = v28, v215.size.width = v29, v215.size.height = v30, v199.origin.x = v23, v199.origin.y = v24, v199.size.width = v25, v199.size.height = v26, v200 = CGRectIntersection(v199, v215), CGRectIsEmpty(v200)))
  {
LABEL_4:
    v32 = 0;
    goto LABEL_5;
  }

  v34 = CI::format_modernize(v13, "[CIContext(_createCGImageInternal) _createCGImage:fromRect:format:premultiplied:colorSpace:deferred:renderCallback:]", v31);
  v35 = CI::format_CGBitmapInfo(v34, 1);
  if (v35 == -1)
  {
    v37 = ci_logger_api(v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [CIContext(_createCGImageInternal) _createCGImage:v34 fromRect:? format:? premultiplied:? colorSpace:? deferred:? renderCallback:?];
    }

    goto LABEL_4;
  }

  _internalContext = [(CIContext *)self _internalContext];
  if ((*(*_internalContext + 16))(_internalContext) == 84)
  {
    is_not_supported_as_destination_on_gles = CI::format_is_not_supported_as_destination_on_gles(v34);
    if (is_not_supported_as_destination_on_gles)
    {
      v41 = ci_logger_api(is_not_supported_as_destination_on_gles, v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [CIContext(_createCGImageInternal) _createCGImage:v34 fromRect:? format:? premultiplied:? colorSpace:? deferred:? renderCallback:?];
      }

      goto LABEL_4;
    }
  }

  v175 = v34;
  if (!space)
  {
    goto LABEL_21;
  }

  TypeID = CGColorSpaceGetTypeID();
  Model = CFGetTypeID(space);
  if (TypeID != Model || (Model = CGColorSpaceSupportsOutput(space), !Model))
  {
LABEL_18:
    v46 = ci_logger_api(Model, v44);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(_createCGImageInternal) *)v46 _createCGImage:v47 fromRect:v48 format:v49 premultiplied:v50 colorSpace:v51 deferred:v52 renderCallback:v53];
    }

    goto LABEL_4;
  }

  is_luminance = CI::format_is_luminance(v34);
  Model = CGColorSpaceGetModel(space);
  if (!is_luminance)
  {
    if (Model == 1)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (Model)
  {
    goto LABEL_18;
  }

LABEL_21:
  v201.origin.x = v23;
  v201.origin.y = v24;
  v201.size.width = v25;
  v201.size.height = v26;
  MidY = CGRectGetMidY(v201);
  *&buf[8] = 0;
  *v181 = 0;
  *buf = 0x3FF0000000000000;
  *&v181[8] = xmmword_19CF25100;
  *&v181[24] = MidY + MidY;
  v174 = [image imageByApplyingTransform:buf];
  _internalContext2 = [(CIContext *)self _internalContext];
  v56 = _internalContext2;
  callbackCopy = &__block_literal_global_15;
  if (callback)
  {
    callbackCopy = callback;
  }

  v168 = callbackCopy;
  if ((*(*_internalContext2 + 560))(_internalContext2))
  {
    var0 = deferred.var0;
  }

  else
  {
    var0 = -1;
  }

  if (v34 == 784 || v34 == 785)
  {
    v60 = -1;
  }

  else
  {
    v60 = var0;
  }

  v191 = 0;
  v192 = &v191;
  v193 = 0x2020000000;
  v194 = 0;
  v202.origin.x = v23;
  v202.origin.y = v24;
  v202.size.width = v25;
  v202.size.height = v26;
  v170 = v60;
  if (CGRectIsNull(v202))
  {
    v61 = 0;
    v62 = 0;
    v63 = 0x7FFFFFFF;
    v64 = 0x7FFFFFFF;
  }

  else
  {
    v203.origin.x = v23;
    v203.origin.y = v24;
    v203.size.width = v25;
    v203.size.height = v26;
    if (CGRectIsInfinite(v203))
    {
      v63 = -2147483647;
      v61 = 0xFFFFFFFFLL;
      v64 = -2147483647;
      v62 = 0xFFFFFFFFLL;
    }

    else
    {
      v204.origin.x = v23;
      v204.origin.y = v24;
      v204.size.width = v25;
      v204.size.height = v26;
      v205 = CGRectInset(v204, 0.000001, 0.000001);
      v206 = CGRectIntegral(v205);
      v63 = v206.origin.x;
      v64 = v206.origin.y;
      v61 = v206.size.width;
      v62 = v206.size.height;
    }
  }

  _internalRepresentation = [v174 _internalRepresentation];
  if ((*(*_internalRepresentation + 128))(_internalRepresentation))
  {
    [v174 extent];
    v216.origin.x = v23;
    v216.origin.y = v24;
    v216.size.width = v25;
    v216.size.height = v26;
    if (CGRectContainsRect(v207, v216))
    {
      if (v175 == 264)
      {
        v66 = 268;
      }

      else
      {
        v66 = v175;
      }

      if (v66 == 266)
      {
        v66 = 270;
      }

      if (v66 == 265)
      {
        v66 = 269;
      }

      if (v66 == 267)
      {
        v66 = 271;
      }

      if (v66 == 784)
      {
        v66 = 775;
      }

      if (v66 == 1800)
      {
        v66 = 1804;
      }

      if (v66 == 2056)
      {
        v66 = 2060;
      }

      if (v66 == 2312)
      {
        v66 = 2316;
      }

      if (v66 == 260)
      {
        v66 = 259;
      }

      if (v66 == 1796)
      {
        v66 = 1795;
      }

      if (v66 == 2052)
      {
        v66 = 2051;
      }

      if (v66 == 2308)
      {
        v66 = 2307;
      }

      v175 = v66;
    }
  }

  if (premultipliedCopy)
  {
    v67 = 1;
  }

  else
  {
    v67 = 2;
  }

  if (CI::format_has_unpremul_alpha(v175))
  {
    v68 = 2;
  }

  else if (CI::format_has_alpha(v175))
  {
    v68 = v67;
  }

  else
  {
    v68 = 0;
  }

  v169 = v68;
  *buf = v63;
  *&buf[4] = v64;
  *&buf[8] = v61;
  *v181 = v62;
  v69 = v175;
  CI::Context::swizzler_for_output(v56, v175, buf, 0, v190);
  v172 = vcvtpd_u64_f64(v26);
  v173 = vcvtpd_u64_f64(v25);
  v189[0] = 0x3FF0000000000000;
  v189[1] = 0;
  v189[2] = 0;
  v189[3] = 0x3FF0000000000000;
  *&v189[4] = -v23;
  *&v189[5] = -v24;
  v187 = v190[0];
  v188 = 0;
  v70 = strcmp(v56 + 236, "CoreUI");
  if (*(_internalRepresentation + 113))
  {
    v71 = v70;
    [(CIContext *)self lock];
    ++v56[19];
    v56[24] = 0;
    *(v56 + 20) = v23;
    *(v56 + 21) = v24;
    *(v56 + 22) = v25;
    *(v56 + 23) = v26;
    (*(*v56 + 248))(v56, 0);
    v208.origin.x = (*(*_internalRepresentation + 88))(_internalRepresentation);
    v209 = CGRectIntegral(v208);
    v217.origin.x = v23;
    v217.origin.y = v24;
    v217.size.width = v25;
    v217.size.height = v26;
    v72 = CGRectContainsRect(v209, v217);
    if (!v72)
    {
LABEL_86:
      [(CIContext *)self unlock];
      goto LABEL_87;
    }

    v74 = ci_signpost_log_render(v72, v73);
    v75 = (*(*v56 + 280))(v56) << 32;
    if (v75 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v74))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v74, OS_SIGNPOST_INTERVAL_BEGIN, v75, "create_cgimage_check", &unk_19CFBCBAE, buf, 2u);
    }

    v76 = (*(*v56 + 280))(v56);
    TimerBase::TimerBase(v195, v76, 0, "create_cgimage_check", 0);
    v210.origin.x = v23;
    v210.origin.y = v24;
    v210.size.width = v173;
    v210.size.height = v172;
    v77 = CI::Affine::applyToRect(v189, v210);
    v166 = v78;
    v167 = v79;
    v80 = v77;
    v82 = v81;
    *buf = v190[0];
    *v181 = v190[1];
    *&v181[16] = v190[2];
    v83 = CI::prepare_initial_graph(v56, "create_cgimage_check", _internalRepresentation, 0, space, v175, buf, v189, v23, v24, v173, v172, 1u, &v187);
    v85 = v83;
    if (!v71 && v170 == -1)
    {
LABEL_80:
      v86 = v192[3];
      if (v86)
      {
        CGImageGetColorSpace(v86);
        if ((CGColorSpaceEqualToColorSpace() & 1) == 0)
        {
          CFAutorelease(v192[3]);
          CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v192[3], space);
          v192[3] = CopyWithColorSpace;
        }
      }

      CI::traverse_releasing_resources(v85, v84);
      if (v85)
      {
        CI::Object::unref(v85);
      }

      CI::create_cgimage(CIContext *,CIImage *,CGRect,CGColorSpace *,int,BOOL,CI::Trilean,void({block_pointer})(CGRect,NSError *))::SignpostTimer::~SignpostTimer(v195, v88);
      goto LABEL_86;
    }

    if ((*(*v83 + 16))(v83) == 34)
    {
      if (v85[7] != 1.0 || v85[8] != 0.0 || v85[9] != 0.0 || v85[10] != 1.0 || vabdd_f64(v85[11], round(v85[11])) >= 1.0e-10 || vabdd_f64(v85[12], round(v85[12])) >= 1.0e-10)
      {
        goto LABEL_80;
      }

      CI::Affine::inverse(buf, (v85 + 7));
      v211.origin.x = v80;
      v211.origin.y = v82;
      v211.size.width = v166;
      v211.size.height = v167;
      v100 = CI::Affine::applyToRect(buf, v211);
      v166 = v101;
      v167 = v102;
      v80 = v100;
      v82 = v103;
      v104 = (*(*v85 + 48))(v85, 0);
      v69 = v175;
    }

    else
    {
      v104 = v85;
    }

    if ((*(*v104 + 16))(v104) == 37 || (*(*v104 + 16))(v104) == 38)
    {
      v104 = (*(*v104 + 48))(v104, 0);
    }

    if ((*(*v104 + 16))(v104) == 55)
    {
      v110 = (*(*v104 + 424))(v104);
      if (v110 > 0xF || ((1 << v110) & 0xFC2B) == 0)
      {
        goto LABEL_80;
      }

      v104 = (*(*v104 + 48))(v104, 0);
    }

    if ((*(*v104 + 16))(v104) == 35)
    {
      v111 = *(v104 + 13);
      v112 = (*(*v104 + 176))(v104);
      v177 = v113;
      rect1 = v114;
      v115 = v112;
      v117 = v116;
      v119 = CI::format_from_CGImage(v111, v118);
      if (CI::format_has_alpha(v119))
      {
        has_alpha = CI::format_has_alpha(v69);
      }

      else
      {
        has_alpha = 1;
      }

      if (CI::format_is_rgb(v119) && (CI::format_is_rgb(v69) & 1) != 0)
      {
        v165 = 1;
      }

      else if (CI::format_is_luminance(v119))
      {
        v165 = CI::format_is_luminance(v69);
      }

      else
      {
        v165 = 0;
      }

      v132 = CI::format_bits_per_component(v119);
      v133 = CI::format_bits_per_component(v69);
      if (CGImageGetProperty() != *MEMORY[0x1E695E4D0] || v170 != -1)
      {
        v212.origin.x = v115;
        v212.origin.y = v117;
        v212.size.width = v177;
        v212.size.height = rect1;
        v218.origin.x = v80;
        v218.origin.y = v82;
        v218.size.width = v166;
        v218.size.height = v167;
        if ((CGRectContainsRect(v212, v218) & has_alpha & v165) == 1 && v132 == v133)
        {
          v213.origin.x = v80;
          v213.origin.y = v82;
          v213.size.width = v166;
          v213.size.height = v167;
          v134 = CGImageCreateWithImageInRect(v111, v213);
          v192[3] = v134;
        }
      }
    }

    else if ((*(*v104 + 16))(v104) == 54)
    {
      v164 = *(v104 + 7);
      v121 = (*(*v104 + 176))(v104);
      v162 = v123;
      v163 = v122;
      v124 = v121;
      v126 = v125;
      v157 = (*(*v104 + 432))(v104) != 2;
      v128 = CI::format_from_IOSurface(v164, v127);
      v158 = CI::format_CGBitmapInfo(v128, v157);
      v178 = v128;
      v129 = CI::format_has_alpha(v128) ? CI::format_has_alpha(v69) : 1;
      v161 = v129;
      if (CI::format_is_rgb(v178) && (CI::format_is_rgb(v69) & 1) != 0)
      {
        v160 = 1;
      }

      else
      {
        v160 = CI::format_is_luminance(v178) ? CI::format_is_luminance(v69) : 0;
      }

      v159 = CI::format_bits_per_component(v178);
      v147 = CI::format_bits_per_component(v69);
      v214.origin.x = v124;
      v214.origin.y = v126;
      v214.size.height = v162;
      v214.size.width = v163;
      v219.origin.x = v80;
      v219.origin.y = v82;
      v219.size.width = v166;
      v219.size.height = v167;
      if ((CGRectEqualToRect(v214, v219) & v161 & v160) == 1 && v159 == v147 && v158 != -1)
      {
        if (((*(*v104 + 432))(v104) || (CI::format_has_alpha(v69) & 1) == 0) && (CI::format_has_alpha(v178) & 1) != 0 || (v148 = CGImageCreateFromIOSurface(), (v192[3] = v148) == 0))
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *v181 = ___ZN2CIL14create_cgimageEP9CIContextP7CIImage6CGRectP12CGColorSpaceibNS_7TrileanEU13block_pointerFvS4_P7NSErrorE_block_invoke;
          *&v181[8] = &unk_1E75C2168;
          v184 = v178;
          v185 = v69;
          v186 = v157;
          v182 = v56;
          spaceCopy = space;
          *&v181[16] = &v191;
          *&v181[24] = v104;
          OnlyBlock = SurfaceApplyPlaneReadOnlyBlock(v164, buf);
          if (OnlyBlock)
          {
            v150 = ci_logger_render(OnlyBlock, v84);
            if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
            {
              [(CIContext(_createCGImageInternal) *)v150 _createCGImage:v84 fromRect:v151 format:v152 premultiplied:v153 colorSpace:v154 deferred:v155 renderCallback:v156];
            }
          }
        }
      }
    }

    goto LABEL_80;
  }

LABEL_87:
  if (v170 != 1)
  {
    v89 = v172;
    if (v173 > v172)
    {
      v89 = v173;
    }

    if (v170 == -1 || v89 <= 0x1000)
    {
      if (v192[3])
      {
        if (!CGImageGetImageProvider())
        {
          goto LABEL_227;
        }

        CGImageRelease(v192[3]);
      }

      valuePtr = 0;
      _internalContext3 = [(CIContext *)self _internalContext];
      v97 = CI_IOSURFACE_WRAPPING(2u);
      v98 = *_internalContext3;
      if (v97)
      {
        v99 = (v98 + 552);
      }

      else
      {
        v99 = (v98 + 536);
      }

      (*v99)(_internalContext3, v69);
      v105 = CI::format_bytes_per_pixel(v69);
      v107 = ci_signpost_log_render(v105, v106);
      v108 = (*(*_internalContext3 + 280))(_internalContext3) << 32;
      if (v108 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v107))
      {
        *v195 = 134218240;
        *&v195[4] = v173;
        *&v195[12] = 2048;
        *&v195[14] = v172;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v107, OS_SIGNPOST_INTERVAL_BEGIN, v108, "new_bitmap", "[%zu %zu]", v195, 0x16u);
      }

      v109 = (*(*_internalContext3 + 280))(_internalContext3);
      TimerBase::TimerBase(v195, v109, 0, "new_bitmap", 0);
      operator new();
    }
  }

  if (v192[3])
  {
    goto LABEL_227;
  }

  _createClone = [(CIContext *)self _createClone];
  _internalContext4 = [_createClone _internalContext];
  v176 = _internalContext4;
  v93 = 0;
  if (v69 > 1799)
  {
    if (v69 > 2059)
    {
      v95 = v69;
      if (v69 <= 2311)
      {
        if (v69 <= 2307)
        {
          if (v69 == 2060)
          {
            goto LABEL_199;
          }

          if (v69 != 2307)
          {
            goto LABEL_183;
          }

          goto LABEL_166;
        }

        if (v69 == 2308)
        {
          goto LABEL_199;
        }

        if (v69 != 2311)
        {
          goto LABEL_183;
        }
      }

      else
      {
        if (v69 <= 2315)
        {
          if (v69 == 2312)
          {
            goto LABEL_199;
          }

          if (v69 == 2313)
          {
            v93 = 0;
            v95 = 2312;
            goto LABEL_199;
          }

          goto LABEL_183;
        }

        if (v69 == 2316)
        {
          goto LABEL_199;
        }

        if (v69 != 2317)
        {
          if (v69 != 3331)
          {
            goto LABEL_183;
          }

          goto LABEL_165;
        }
      }

      v93 = 0;
      v95 = 2316;
      goto LABEL_199;
    }

    if (v69 > 2050)
    {
      if (v69 > 2054)
      {
        if (v69 == 2055)
        {
          v93 = 0;
          v95 = 2060;
          goto LABEL_199;
        }

        v95 = v69;
        if (v69 != 2056)
        {
          goto LABEL_183;
        }

        goto LABEL_199;
      }

      if (v69 != 2051)
      {
        v95 = v69;
        if (v69 != 2052)
        {
          goto LABEL_183;
        }

        goto LABEL_199;
      }

      goto LABEL_166;
    }

    v95 = v69;
    if (v69 <= 1803)
    {
      if (v69 != 1800)
      {
        if (v69 != 1801)
        {
          goto LABEL_183;
        }

        v93 = 0;
        v95 = 1800;
      }

      goto LABEL_199;
    }

    if (v69 == 1804)
    {
      goto LABEL_199;
    }

    if (v69 != 1805)
    {
      goto LABEL_183;
    }

    goto LABEL_180;
  }

  if (v69 > 770)
  {
    if (v69 <= 784)
    {
      if (v69 != 771)
      {
        if (v69 != 775)
        {
          v95 = v69;
          if (v69 != 784)
          {
            goto LABEL_183;
          }

          goto LABEL_199;
        }

LABEL_167:
        v95 = v69;
        goto LABEL_199;
      }

LABEL_165:
      v95 = 1795;
      v93 = 1;
      goto LABEL_199;
    }

    if (v69 <= 1795)
    {
      if (v69 == 785)
      {
        v93 = 0;
        v95 = 784;
        goto LABEL_199;
      }

      if (v69 != 1795)
      {
        goto LABEL_183;
      }

      goto LABEL_165;
    }

    v95 = v69;
    if (v69 == 1796)
    {
      goto LABEL_199;
    }

    if (v69 != 1799)
    {
      goto LABEL_183;
    }

LABEL_180:
    v93 = 0;
    v95 = 1804;
    goto LABEL_199;
  }

  if (v69 > 263)
  {
    if ((v69 - 264) <= 7)
    {
      v94 = 1 << (v69 - 8);
      if ((v94 & 0xE) != 0)
      {
        v93 = 0;
        v95 = 264;
        goto LABEL_199;
      }

      v95 = v69;
      if ((v94 & 0xE0) == 0)
      {
        goto LABEL_199;
      }

      goto LABEL_164;
    }

    goto LABEL_183;
  }

  if (v69 == 259)
  {
LABEL_166:
    v93 = 1;
    goto LABEL_167;
  }

  v95 = v69;
  if (v69 != 260)
  {
    if (v69 == 263)
    {
LABEL_164:
      v93 = 0;
      v95 = 268;
      goto LABEL_199;
    }

LABEL_183:
    v130 = ci_logger_render(_internalContext4, v92);
    if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
    {
      v131 = CI::name_for_format(v69);
      [CIContext(_createCGImageInternal) _createCGImage:v131 fromRect:v195 format:v130 premultiplied:? colorSpace:? deferred:? renderCallback:?];
    }

    goto LABEL_225;
  }

LABEL_199:
  if ((CI::format_is_half_float(v69) & 1) == 0 && (CI::format_is_full_float(v69) & 1) == 0 && v95 != 775 && v95 != 784)
  {
    CI::format_is_deep(v69);
  }

  Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (CI::format_has_alpha(v69))
  {
    if (v169 == 1)
    {
      v137 = MEMORY[0x1E695F2C8];
      goto LABEL_211;
    }

    if (v169 == 2)
    {
      v137 = MEMORY[0x1E695F2B8];
LABEL_211:
      __CFDictionary::setValue(Mutable, *v137, 1, v136);
    }
  }

  else if ((v93 & 1) == 0)
  {
    v137 = MEMORY[0x1E695F2C0];
    goto LABEL_211;
  }

  *v195 = xmmword_1F10308D0;
  *&v195[16] = *&off_1F10308E0;
  v138 = malloc_type_calloc(1uLL, 0x50uLL, 0x108004010BCB57AuLL);
  *v138 = _createClone;
  v138[1] = v174;
  *(v138 + 4) = v95;
  v138[3] = v169;
  *(v138 + 4) = v23;
  *(v138 + 5) = v24;
  *(v138 + 6) = v25;
  *(v138 + 7) = v26;
  v138[9] = _Block_copy(v168);
  v139 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v138[8] = dispatch_queue_create("CI_CGImageProviderCallbackQueue", v139);
  if (CGImageProviderCreate())
  {
    CGImageProviderSetProperty();
    v141 = CI::format_bytes_per_row(v69, v173);
    if (v141)
    {
      v142 = (*(*v176 + 496))(v176) / (2 * v141);
      if (v142 >= (0x4000000 / v141))
      {
        LODWORD(v142) = 0x4000000 / v141;
      }

      if (v142 >= v172)
      {
        LODWORD(v142) = v172;
      }

      LODWORD(valuePtr) = v142;
      v143 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      CGImageProviderSetProperty();
      if (v143)
      {
        CFRelease(v143);
      }
    }

    v144 = CGImageCreateWithImageProvider();
    CGImageProviderRelease();
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v144)
    {
      CGImageSetProperty();
    }

    goto LABEL_226;
  }

  CI::_providerInfoReleaseCallback(v138, v140);
LABEL_225:
  v144 = 0;
LABEL_226:
  v192[3] = v144;

LABEL_227:
  [v174 contentHeadroom];
  v146 = v145;
  if (!CGColorSpaceIsPQBased(space) && !CGColorSpaceUsesITUR_2100TF(space) && CGColorSpaceUsesExtendedRange(space))
  {
    CI::format_is_float(v69);
  }

  if (v146 >= 1.0)
  {
    CGImageSetHeadroom();
  }

  v32 = v192[3];
  _Block_object_dispose(&v191, 8);
LABEL_5:
  objc_autoreleasePoolPop(v20);
  return v32;
}

- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space deferred:(BOOL)deferred renderCallback:(id)callback
{
  deferredCopy = deferred;
  premultipliedCopy = premultiplied;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = CI::format_modernize(*&format, "[CIContext(createCGImageInternal) createCGImage:fromRect:format:premultiplied:colorSpace:deferred:renderCallback:]", image);
  if (deferredCopy)
  {
    v20 = 1;
  }

  else
  {
    v20 = 255;
  }

  return [(CIContext *)self _createCGImage:image fromRect:v19 format:premultipliedCopy premultiplied:space colorSpace:v20 deferred:callback renderCallback:x, y, width, height];
}

- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect
{
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v10 = CGColorSpaceRetain([(CIContext *)self _outputColorSpace]);
  v11 = v10;
  if (!v10)
  {
    goto LABEL_5;
  }

  Model = CGColorSpaceGetModel(v10);
  if (Model != kCGColorSpaceModelRGB)
  {
    if (Model == kCGColorSpaceModelMonochrome)
    {
      v13 = &kCIFormatLA8;
      goto LABEL_9;
    }

LABEL_5:
    CGColorSpaceRelease(v11);
    v11 = +[CIContext defaultRGBColorSpace];
    v13 = &kCIFormatRGBA8;
    goto LABEL_9;
  }

  v14 = CGColorSpaceUsesExtendedRange(v11);
  if (CGColorSpaceUsesITUR_2100TF(v11) || v14)
  {
    v13 = &kCIFormatRGBAh;
  }

  else
  {
    v13 = &kCIFormatRGBA8;
  }

LABEL_9:
  height = [(CIContext *)self createCGImage:image fromRect:*v13 format:v11 colorSpace:x, y, width, height];
  CGColorSpaceRelease(v11);
  return height;
}

- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format
{
  v5 = *&format;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  _outputColorSpace = [(CIContext *)self _outputColorSpace];
  v14 = CI::format_modernize(v5, "[CIContext(createCGImage) createCGImage:fromRect:format:]", v13);
  TypeID = CGColorSpaceGetTypeID();
  if (TypeID == CFGetTypeID(_outputColorSpace) && CGColorSpaceSupportsOutput(_outputColorSpace))
  {
    is_luminance = CI::format_is_luminance(v14);
    Model = CGColorSpaceGetModel(_outputColorSpace);
    if (is_luminance)
    {
      if (Model)
      {
        goto LABEL_5;
      }
    }

    else if (Model != kCGColorSpaceModelRGB)
    {
      goto LABEL_5;
    }

    CGColorSpaceRetain(_outputColorSpace);
    goto LABEL_9;
  }

LABEL_5:
  if (CI::format_is_luminance(v14))
  {
    v18 = +[CIContext defaultGrayColorSpace];
  }

  else
  {
    v18 = +[CIContext defaultRGBColorSpace];
  }

  _outputColorSpace = v18;
LABEL_9:
  height = [(CIContext *)self createCGImage:image fromRect:v14 format:_outputColorSpace colorSpace:x, y, width, height];
  CGColorSpaceRelease(_outputColorSpace);
  return height;
}

- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace
{
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v13 = CI::format_modernize(*&format, "[CIContext(createCGImage) createCGImage:fromRect:format:colorSpace:]", image);
  v14 = *([(CIContext *)self _internalContext]+ 40);

  return [(CIContext *)self _createCGImage:image fromRect:v13 format:v14 premultiplied:colorSpace colorSpace:0 deferred:0 renderCallback:x, y, width, height];
}

- (CGImageRef)createCGImage:(CIImage *)image fromRect:(CGRect)fromRect format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace deferred:(BOOL)deferred
{
  v7 = deferred;
  height = fromRect.size.height;
  width = fromRect.size.width;
  y = fromRect.origin.y;
  x = fromRect.origin.x;
  v15 = CI::format_modernize(*&format, "[CIContext(createCGImage) createCGImage:fromRect:format:colorSpace:deferred:]", image);
  v16 = *([(CIContext *)self _internalContext]+ 40);
  if (v7)
  {
    v17 = 1;
  }

  else
  {
    v17 = 255;
  }

  return [(CIContext *)self _createCGImage:image fromRect:v15 format:v16 premultiplied:colorSpace colorSpace:v17 deferred:0 renderCallback:x, y, width, height];
}

- (CGImage)createCGImage:(id)image fromRect:(CGRect)rect format:(int)format colorSpace:(CGColorSpace *)space deferred:(BOOL)deferred calculateHDRStats:(BOOL)stats
{
  statsCopy = stats;
  result = [(CIContext *)self createCGImage:image fromRect:*&format format:space colorSpace:deferred deferred:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v11 = result;
  if (statsCopy)
  {
    if (result)
    {
      v12 = [(CIContext *)self calculateHDRStatsForCGImage:result];
      CGImageRelease(v11);
      return v12;
    }
  }

  return result;
}

- (id)gainMapImageForSDR:(id)r HDR:(id)dR colorSpace:(CGColorSpace *)space rgbGainmap:(BOOL)gainmap
{
  v119 = *MEMORY[0x1E69E9840];
  if (!dR)
  {
    return 0;
  }

  gainmapCopy = gainmap;
  [dR extent];
  if (CGRectIsEmpty(v120))
  {
    return 0;
  }

  [dR extent];
  if (CGRectIsInfinite(v121))
  {
    return 0;
  }

  [dR contentHeadroom];
  v12 = v11;
  ExtendedLinearized = CGColorSpaceCreateExtendedLinearized(space);
  if (!ExtendedLinearized)
  {
    ExtendedLinearized = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  }

  v14 = [r imageByColorMatchingWorkingSpaceToColorSpace:ExtendedLinearized];
  v15 = [dR imageByColorMatchingWorkingSpaceToColorSpace:ExtendedLinearized];
  CGColorSpaceRelease(ExtendedLinearized);
  _imageByClampingAlpha = [v14 _imageByClampingAlpha];
  [v15 extent];
  v18 = -v17;
  [v15 extent];
  CGAffineTransformMakeTranslation(&v103, v18, -v19);
  v118 = v103;
  v20 = [v15 imageByApplyingTransform:&v118 highQualityDownsample:0];
  [_imageByClampingAlpha extent];
  v22 = -v21;
  [_imageByClampingAlpha extent];
  CGAffineTransformMakeTranslation(&v118, v22, -v23);
  v103 = v118;
  v24 = [_imageByClampingAlpha imageByApplyingTransform:&v118 highQualityDownsample:0];
  [(CIImage *)v24 extent];
  v26 = v25;
  [(CIImage *)v20 extent];
  *&v26 = v26 / v27;
  [(CIImage *)v24 extent];
  v29 = v28;
  [(CIImage *)v20 extent];
  v31 = v29 / v30;
  v32 = downScale(v20, *&v26, v31);
  [(CIImage *)v32 extent];
  v34 = v33;
  [(CIImage *)v24 extent];
  *&v34 = v34 / v35;
  [(CIImage *)v32 extent];
  v37 = v36;
  [(CIImage *)v24 extent];
  v39 = v37 / v38;
  v40 = downScale(v24, *&v34, v39);
  v118.a = 0.0;
  v118.b = 0.0;
  v41 = [[CIRenderDestination alloc] initWithBitmapData:&v118 width:1 height:1 bytesPerRow:16 format:?];
  v42 = v41;
  [(CIRenderDestination *)v41 setColorSpace:0];
  v43 = MEMORY[0x1E695EFF8];
  if (v12 == 0.0)
  {
    v44 = downScale([(CIImage *)v32 imageByApplyingFilter:@"CIMaximumComponent"], 0.125, 0.125);
    v116 = @"inputExtent";
    [(CIImage *)v44 extent];
    v117 = [CIVector vectorWithCGRect:?];
    -[CIRenderTask waitUntilCompletedAndReturnError:](-[CIContext startTaskToRender:fromRect:toDestination:atPoint:error:](self, "startTaskToRender:fromRect:toDestination:atPoint:error:", -[CIImage imageByApplyingFilter:withInputParameters:](v44, "imageByApplyingFilter:withInputParameters:", @"CIAreaMaximum", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1]), v41, 0, 0.0, 0.0, 1.0, 1.0, *v43, v43[1]), "waitUntilCompletedAndReturnError:", 0);
    _H0 = LOWORD(v118.a);
    __asm { FCVT            D0, H0 }

    v51 = fmax(_D0, 1.0);
  }

  else
  {
    v51 = v12;
  }

  v52 = v51;
  v53 = log2f(v52);
  if (v51 <= 1.0)
  {
    return 0;
  }

  v54 = v53;
  v55 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_flexMapLinGain];
  v102 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_flexMapLinGainRGB];
  [(CIImage *)v32 extent];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v115[0] = v32;
  v115[1] = v40;
  v115[2] = &unk_1F10852A8;
  v115[3] = &unk_1F10852A8;
  v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:v115 count:4];
  v113 = @"kCIKernelOutputFormat";
  v114 = [MEMORY[0x1E696AD98] numberWithInt:2053];
  v65 = -[CIColorKernel applyWithExtent:arguments:options:](v55, "applyWithExtent:arguments:options:", v64, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1], v57, v59, v61, v63);
  [(CIImage *)v32 extent];
  _D9 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v112[0] = v32;
  v112[1] = v40;
  v112[2] = &unk_1F10852A8;
  v112[3] = &unk_1F10852A8;
  v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:4];
  v110 = @"kCIKernelOutputFormat";
  v111 = [MEMORY[0x1E696AD98] numberWithInt:2056];
  v75 = -[CIColorKernel applyWithExtent:arguments:options:](v102, "applyWithExtent:arguments:options:", v74, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1], _D9, v69, v71, v73);
  v76 = downScale([v65 imageByApplyingFilter:@"CIMedianFilter"], 0.125, 0.125);
  v108 = @"inputExtent";
  [(CIImage *)v76 extent];
  v109 = [CIVector vectorWithCGRect:?];
  v77 = -[CIImage imageByApplyingFilter:withInputParameters:](v76, "imageByApplyingFilter:withInputParameters:", @"CIAreaMinMaxRed", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1]);
  [(CIRenderTask *)[(CIContext *)self startTaskToRender:v77 fromRect:v41 toDestination:0 atPoint:0.0 error:0.0 waitUntilCompletedAndReturnError:1.0, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)], "waitUntilCompletedAndReturnError:", 0];
  _H0 = LOWORD(v118.a);
  __asm { FCVT            S0, H0; float }

  _H1 = WORD1(v118.a);
  __asm { FCVT            S9, H1 }

  v81 = log2f(_S0);
  v82 = log2f(*&_D9);
  if (v81 > -0.01 && v81 <= 0.0)
  {
    v81 = 0.0;
  }

  if (gainmapCopy)
  {
    v84 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_flexMapImageRGB];
    [v75 extent];
    v86 = v85;
    v88 = v87;
    v90 = v89;
    v92 = v91;
    v107 = v75;
    v93 = &v107;
  }

  else
  {
    v84 = [(CIKernel *)CIColorKernel kernelWithInternalRepresentation:&CI::_flexMapImage];
    [v65 extent];
    v86 = v85;
    v88 = v95;
    v90 = v96;
    v92 = v97;
    v106 = v65;
    v93 = &v106;
  }

  *&v85 = v81;
  v93[1] = [MEMORY[0x1E696AD98] numberWithFloat:v85];
  *&v98 = v82;
  v93[2] = [MEMORY[0x1E696AD98] numberWithFloat:v98];
  v99 = -[CIColorKernel applyWithExtent:arguments:](v84, "applyWithExtent:arguments:", [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3], v86, v88, v90, v92);
  v104[0] = @"kCIImageRepresentationISOGainMapAlternateHeadroom";
  v105[0] = [MEMORY[0x1E696AD98] numberWithDouble:v54];
  v105[1] = &unk_1F1083148;
  v104[1] = @"kCIImageRepresentationISOGainMapBaseHeadroom";
  v104[2] = @"kCIImageRepresentationISOGainMapMin";
  *&v100 = v81;
  v105[2] = [MEMORY[0x1E696AD98] numberWithFloat:v100];
  v104[3] = @"kCIImageRepresentationISOGainMapMax";
  *&v101 = v82;
  v105[3] = [MEMORY[0x1E696AD98] numberWithFloat:v101];
  v105[4] = &unk_1F10852A8;
  v104[4] = @"kCIImageRepresentationISOGainMapOffset";
  v104[5] = @"kCIImageRepresentationISOGainMapGamma";
  v105[5] = &unk_1F1083158;
  v104[6] = @"kCIImageRepresentationHDRGainMapAsRGB";
  v105[6] = [MEMORY[0x1E696AD98] numberWithBool:gainmapCopy];
  return -[CIImage imageBySettingProperties:](v99, "imageBySettingProperties:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:7]);
}

- (id)addAuxOptionsForSDR:(id)r HDR:(id)dR colorSpace:(CGColorSpace *)space rgbGainmap:(BOOL)gainmap
{
  v10[8] = *MEMORY[0x1E69E9840];
  result = [(CIContext *)self gainMapImageForSDR:r HDR:dR colorSpace:space rgbGainmap:gainmap];
  if (result)
  {
    v7 = result;
    result = [result properties];
    if (result)
    {
      v8 = result;
      v9[0] = @"kCIImageRepresentationISOGainMapAlternateHeadroom";
      v10[0] = [result objectForKeyedSubscript:?];
      v9[1] = @"kCIImageRepresentationISOGainMapBaseHeadroom";
      v10[1] = [v8 objectForKeyedSubscript:?];
      v9[2] = @"kCIImageRepresentationISOGainMapMin";
      v10[2] = [v8 objectForKeyedSubscript:?];
      v9[3] = @"kCIImageRepresentationISOGainMapMax";
      v10[3] = [v8 objectForKeyedSubscript:?];
      v9[4] = @"kCIImageRepresentationISOGainMapOffset";
      v10[4] = [v8 objectForKeyedSubscript:?];
      v9[5] = @"kCIImageRepresentationISOGainMapGamma";
      v10[5] = [v8 objectForKeyedSubscript:?];
      v9[6] = @"kCIImageRepresentationHDRGainMapAsRGB";
      v9[7] = @"kCIImageRepresentationISOGainMapImage";
      v10[6] = [v8 objectForKeyedSubscript:?];
      v10[7] = v7;
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:8];
    }
  }

  return result;
}

- (id)_dataRepresentationOfImage:(id)image UTIType:(id)type format:(int)format premultiplied:(BOOL)premultiplied colorSpace:(CGColorSpace *)space options:(id)options addAuxData:(BOOL)data keysToMerge:(id)self0 error:(id *)self1
{
  premultipliedCopy = premultiplied;
  v13 = *&format;
  v238 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v205 = 0;
  v206 = &v205;
  v207 = 0x5012000000;
  v208 = __Block_byref_object_copy__1;
  v209 = __Block_byref_object_dispose__1;
  v210 = &unk_19D0E11CF;
  v17 = *(MEMORY[0x1E695F050] + 16);
  v211 = *MEMORY[0x1E695F050];
  v212 = v17;
  v199 = 0;
  v200 = &v199;
  v201 = 0x3052000000;
  v202 = __Block_byref_object_copy__58;
  v203 = __Block_byref_object_dispose__59;
  v204 = 0;
  if (([type isEqual:@"public.jpeg"] & 1) == 0)
  {
    [type isEqual:@"public.heic"];
  }

  [image extent];
  v198[0] = MEMORY[0x1E69E9820];
  v198[1] = 3221225472;
  v198[2] = __138__CIContext_ImageRepresentation___dataRepresentationOfImage_UTIType_format_premultiplied_colorSpace_options_addAuxData_keysToMerge_error___block_invoke;
  v198[3] = &unk_1E75C2238;
  v198[4] = &v205;
  v198[5] = &v199;
  v18 = [(CIContext *)self createCGImage:image fromRect:v13 format:premultipliedCopy premultiplied:space colorSpace:1 deferred:v198 renderCallback:?];
  v19 = v18;
  if (!v18)
  {
    *&v220 = @"CINonLocalizedDescriptionKey";
    *&buf = @"failed to create data representation.";
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v220 count:1];
    v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v34];
    v36 = v35;
LABEL_183:
    data = 0;
    goto LABEL_184;
  }

  CFAutorelease(v18);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary addEntriesFromDictionary:{objc_msgSend(image, "properties")}];
  v21 = *MEMORY[0x1E696DD50];
  v216[0] = *MEMORY[0x1E696D890];
  v216[1] = v21;
  v22 = *MEMORY[0x1E696DEF0];
  v216[2] = *MEMORY[0x1E696D448];
  v216[3] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v216 count:4];
  selfCopy = self;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v194 objects:v215 count:16];
  if (v24)
  {
    v25 = *v195;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v195 != v25)
        {
          objc_enumerationMutation(v23);
        }

        [dictionary removeObjectForKey:*(*(&v194 + 1) + 8 * i)];
      }

      v24 = [v23 countByEnumeratingWithState:&v194 objects:v215 count:16];
    }

    while (v24);
  }

  imageCopy = image;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v27 = [merge countByEnumeratingWithState:&v190 objects:v214 count:16];
  if (v27)
  {
    v28 = *v191;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v191 != v28)
        {
          objc_enumerationMutation(merge);
        }

        v30 = *(*(&v190 + 1) + 8 * j);
        if ([options objectForKey:v30])
        {
          [dictionary setObject:objc_msgSend(options forKey:{"objectForKey:", v30), v30}];
        }
      }

      v27 = [merge countByEnumeratingWithState:&v190 objects:v214 count:16];
    }

    while (v27);
  }

  v31 = imageCopy;
  if ([type isEqual:@"public.tiff"])
  {
    v32 = *MEMORY[0x1E696DF28];
    dictionary2 = [objc_msgSend(dictionary objectForKey:{*MEMORY[0x1E696DF28]), "mutableCopy"}];
    if (!dictionary2)
    {
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    }

    if (CI::format_is_deep(v13))
    {
      [dictionary2 removeObjectForKey:*MEMORY[0x1E696DF10]];
    }

    else
    {
      [dictionary2 setObject:&unk_1F10819C8 forKey:*MEMORY[0x1E696DF10]];
    }

    [dictionary setObject:dictionary2 forKeyedSubscript:v32];
  }

  data = objc_alloc_init(MEMORY[0x1E695DF88]);
  v37 = CGImageDestinationCreateWithData(data, type, 1uLL, 0);
  v38 = v37;
  if (!v37)
  {

    *&v220 = @"CINonLocalizedDescriptionKey";
    *&buf = @"failed to create data representation.";
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v220 count:1];
    v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v45];
    v46 = v35;
    goto LABEL_183;
  }

  CFAutorelease(v37);
  CGImageDestinationAddImage(v38, v19, dictionary);
  if (!data)
  {
    goto LABEL_174;
  }

  v39 = -[CIContext addAuxOptionsForSDR:HDR:colorSpace:rgbGainmap:](selfCopy, "addAuxOptionsForSDR:HDR:colorSpace:rgbGainmap:", imageCopy, [options objectForKeyedSubscript:@"kCIImageRepresentationHDRImage"], space, objc_msgSend(objc_msgSend(options, "objectForKeyedSubscript:", @"kCIImageRepresentationHDRGainMapAsRGB"), "BOOLValue"));
  if (v39)
  {
    optionsCopy = v39;
  }

  else
  {
    optionsCopy = options;
  }

  v41 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationHDRGainMapImage"];
  v42 = v41;
  if (v41)
  {
    v43 = *MEMORY[0x1E696D270];
    v44 = v41;
  }

  else
  {
    v44 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapImage"];
    if (!v44)
    {
      goto LABEL_89;
    }

    v43 = @"kCGImageAuxiliaryDataTypeISOGainMap";
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v44 extent];
    x = v239.origin.x;
    y = v239.origin.y;
    width = v239.size.width;
    height = v239.size.height;
    IsInfinite = CGRectIsInfinite(v239);
    if (IsInfinite || (v240.origin.x = x, v240.origin.y = y, v240.size.width = width, v240.size.height = height, IsInfinite = CGRectIsEmpty(v240)))
    {
      v55 = ci_logger_api(IsInfinite, v54);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        [CIContext(ImageRepresentation) _dataRepresentationOfImage:UTIType:format:premultiplied:colorSpace:options:addAuxData:keysToMerge:error:];
      }

      goto LABEL_89;
    }

    metadataa = CGImageMetadataCreateMutable();
    if (!v42)
    {
      v59 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapBaseHeadroom"];
      v60 = &unk_1F1083148;
      if (v59)
      {
        v60 = v59;
      }

      v181 = v60;
      v61 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapAlternateHeadroom"];
      v62 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapMin"];
      if (v62)
      {
        v63 = v62;
      }

      else
      {
        v63 = v181;
      }

      v64 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapMax"];
      if (v64)
      {
        v65 = v64;
      }

      else
      {
        v65 = v61;
      }

      v66 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapOffset"];
      if (v66)
      {
        v67 = v66;
      }

      else
      {
        v67 = &unk_1F1083168;
      }

      v68 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapGamma"];
      if (v68)
      {
        v69 = v68;
      }

      else
      {
        v69 = &unk_1F1083158;
      }

      v70 = [objc_msgSend(optionsCopy objectForKeyedSubscript:{@"kCIImageRepresentationHDRGainMapAsRGB", "BOOLValue"}];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & (v61 != 0)) == 1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [(__CFString *)v181 floatValue];
                v72 = v71;
                [v61 floatValue];
                v74 = v73;
                CGImageMetadataRegisterNamespaceForPrefix(metadataa, @"http://ns.apple.com/HDRToneMap/1.0/", @"HDRToneMap", 0);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:Version", @"1");
                LODWORD(v75) = v72;
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:BaseHeadroom", [MEMORY[0x1E696AD98] numberWithFloat:v75]);
                LODWORD(v76) = v74;
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:AlternateHeadroom", [MEMORY[0x1E696AD98] numberWithFloat:v76]);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:BaseColorIsWorkingColor", @"True");
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].BaseOffset", v67);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].AlternateOffset", v67);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].GainMapMin", v63);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].GainMapMax", v65);
                CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRToneMap:ChannelMetadata[0].Gamma", v69);
              }
            }
          }
        }
      }

      if (v70)
      {
        v77 = 1;
        v78 = 1380401729;
        v79 = 2;
      }

      else
      {
        v77 = 0;
        v79 = 0;
        v78 = 1278226488;
      }

      goto LABEL_85;
    }

    v57 = CGImageMetadataCopyTagWithPath([objc_msgSend(v44 "properties")], 0, @"HDRGainMap:HDRGainMapHeadroom");
    if (v57)
    {
      v58 = 0.0;
      CFRelease(v57);
    }

    else
    {
      [imageCopy _makernoteMeteorHeadroom];
      v58 = v80;
    }

    v81 = [optionsCopy objectForKeyedSubscript:@"kCIImageRepresentationHDRGainMapHeadroom"];
    if (v81 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v81 floatValue];
      v58 = v82;
    }

    else if (v58 <= 0.0)
    {
      goto LABEL_81;
    }

    if (v58 > 0.0)
    {
      if (v58 <= 1.0)
      {
        v83 = 0x10000;
      }

      else
      {
        v83 = 0x20000;
      }

      MetadataAddVersion(metadataa, @"HDRGainMap", @"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMapVersion", v83);
      v78 = 1278226488;
      if (v58 > 1.0)
      {
        *&v84 = v58;
        CGImageMetadataSetValueWithPath(metadataa, 0, @"HDRGainMap:HDRGainMapHeadroom", [MEMORY[0x1E696AD98] numberWithFloat:v84]);
      }

      goto LABEL_83;
    }

LABEL_81:
    v85 = [objc_msgSend(v44 "properties")];
    v78 = 1278226488;
    if (v85)
    {
      CFRelease(metadataa);
      v86 = v85;
      v77 = 0;
      v79 = 0;
      metadataa = v85;
LABEL_85:
      v87 = vcvtmd_u64_f64(width);
      v88 = vcvtmd_u64_f64(height);
      v89 = ((v87 << v79) + 15) & 0xFFFFFFFFFFFFFFF0;
      v90 = [MEMORY[0x1E695DF88] dataWithLength:v89 * v88];
      mutableBytes = [(__CFString *)v90 mutableBytes];
      v92 = &kCIFormatRGBX8;
      if (!v77)
      {
        v92 = &kCIFormatL8;
      }

      [(CIContext *)selfCopy render:v44 toBitmap:mutableBytes rowBytes:v89 bounds:*v92 format:0 colorSpace:0.0, 0.0, v87, v88];
      v93 = *MEMORY[0x1E696D228];
      v228 = *MEMORY[0x1E696D218];
      v229 = v93;
      v233 = v90;
      v234 = metadataa;
      v230 = *MEMORY[0x1E696D220];
      *&v220 = @"BytesPerRow";
      *&buf = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v89];
      *(&v220 + 1) = @"Height";
      *(&buf + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v88];
      *&v221 = @"Width";
      v218 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v87];
      *(&v221 + 1) = @"PixelFormat";
      v219 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v78];
      v235 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v220 count:4];
      v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v228 count:3];
      CFRelease(metadataa);
      if (v94)
      {
        CGImageDestinationAddAuxiliaryDataInfo(v38, v43, v94);
      }

      goto LABEL_89;
    }

LABEL_83:
    v77 = 0;
    v79 = 0;
    goto LABEL_85;
  }

  v56 = ci_logger_api(isKindOfClass, v48);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    [CIContext(ImageRepresentation) _dataRepresentationOfImage:UTIType:format:premultiplied:colorSpace:options:addAuxData:keysToMerge:error:];
  }

LABEL_89:
  v95 = [options objectForKey:@"kCIImageRepresentationAVPortraitEffectsMatte"];
  v96 = [options objectForKey:@"kCIImageRepresentationPortraitEffectsMatteImage"];
  auxiliaryImageDataType[0] = *MEMORY[0x1E696D288];
  if (v96)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v96 = 0;
    }
  }

  [v96 extent];
  v97 = v241.origin.x;
  v98 = v241.origin.y;
  v99 = v241.size.width;
  v100 = v241.size.height;
  if (CGRectIsInfinite(v241) || (v242.origin.x = v97, v242.origin.y = v98, v242.size.width = v99, v242.size.height = v100, CGRectIsEmpty(v242)))
  {
    v96 = 0;
  }

  if (isKind_AVPortraitEffectsMatteClass(v95))
  {
    v101 = v95;
  }

  else
  {
    v101 = 0;
  }

  if (v96 || !v101)
  {
    if (!v96)
    {
      goto LABEL_106;
    }

    v103 = vcvtmd_u64_f64(v99);
    v104 = vcvtmd_u64_f64(v100);
    v104 = [MEMORY[0x1E695DF88] dataWithLength:((v103 + 15) & 0xFFFFFFFFFFFFFFF0) * v104];
    [(CIContext *)selfCopy render:v96 toBitmap:[(__CFString *)v104 mutableBytes] rowBytes:(v103 + 15) & 0xFFFFFFFFFFFFFFF0 bounds:259 format:0 colorSpace:0.0, 0.0, v103, v104];
    Mutable = CGImageMetadataCreateMutable();
    MetadataAddVersion(Mutable, @"portraitEffectsMatte", @"http://ns.apple.com/portraitEffectsMatte/1.0/", @"PortraitEffectsMatteVersion", 0x10000);
    v233 = v104;
    v228 = @"kCGImageAuxiliaryDataInfoData";
    v229 = @"kCGImageAuxiliaryDataInfoDataDescription";
    *&v220 = @"BytesPerRow";
    *&buf = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(v103 + 15) & 0xFFFFFFFFFFFFFFF0];
    *(&v220 + 1) = @"Height";
    *(&buf + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v104];
    *&v221 = @"Width";
    v218 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v103];
    *(&v221 + 1) = @"PixelFormat";
    v219 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1278226488];
    v107 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v220 count:4];
    v230 = @"kCGImageAuxiliaryDataInfoMetadata";
    v234 = v107;
    v235 = Mutable;
    v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v228 count:3];
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v102 = AVPortraitEffectsMatteDictionaryRepresentation(v101, auxiliaryImageDataType);
  }

  if (v102)
  {
    CGImageDestinationAddAuxiliaryDataInfo(v38, auxiliaryImageDataType[0], v102);
  }

LABEL_106:
  v233 = @"kCIImageRepresentationSemanticSegmentationSkinMatteImage";
  v234 = @"kCIImageRepresentationSemanticSegmentationHairMatteImage";
  v235 = @"kCIImageRepresentationSemanticSegmentationTeethMatteImage";
  v236 = @"kCIImageRepresentationSemanticSegmentationGlassesMatteImage";
  v237 = @"kCIImageRepresentationSemanticSegmentationSkyMatteImage";
  v108 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v233 count:5];
  v109 = *MEMORY[0x1E696D298];
  v228 = *MEMORY[0x1E696D2A0];
  v229 = v109;
  v110 = *MEMORY[0x1E696D290];
  v230 = *MEMORY[0x1E696D2B0];
  v231 = v110;
  v232 = *MEMORY[0x1E696D2A8];
  metadatab = [MEMORY[0x1E695DEC8] arrayWithObjects:&v228 count:5];
  if ([v108 count])
  {
    v112 = 0;
    v180 = *MEMORY[0x1E696D218];
    v178 = *MEMORY[0x1E696D220];
    v179 = *MEMORY[0x1E696D228];
    *&v111 = 138543362;
    v177 = v111;
    do
    {
      v113 = [v108 objectAtIndexedSubscript:{v112, v177}];
      v114 = [options objectForKey:v113];
      if (v114)
      {
        objc_opt_class();
        v115 = objc_opt_isKindOfClass();
        if (v115)
        {
          [v114 extent];
          v117 = v243.origin.x;
          v118 = v243.origin.y;
          v119 = v243.size.width;
          v120 = v243.size.height;
          IsEmpty = CGRectIsInfinite(v243);
          if (!IsEmpty)
          {
            v244.origin.x = v117;
            v244.origin.y = v118;
            v244.size.width = v119;
            v244.size.height = v120;
            IsEmpty = CGRectIsEmpty(v244);
            if (!IsEmpty)
            {
              v182 = [(CGImageMetadata *)metadatab objectAtIndexedSubscript:v112];
              v127 = CGImageMetadataCreateMutable();
              MetadataAddVersion(v127, @"semanticSegmentationMatte", @"http://ns.apple.com/semanticSegmentationMatte/1.0/", @"SemanticSegmentationMatteVersion", 0x10000);
              v128 = vcvtmd_u64_f64(v119);
              v129 = vcvtmd_u64_f64(v120);
              v129 = [MEMORY[0x1E695DF88] dataWithLength:((v128 + 15) & 0xFFFFFFFFFFFFFFF0) * v129];
              -[CIContext render:toBitmap:rowBytes:bounds:format:colorSpace:](selfCopy, "render:toBitmap:rowBytes:bounds:format:colorSpace:", v114, [v129 mutableBytes], (v128 + 15) & 0xFFFFFFFFFFFFFFF0, 259, 0, 0.0, 0.0, v128, v129);
              v226[0] = v180;
              v226[1] = v179;
              v227[0] = v129;
              v227[1] = v127;
              v226[2] = v178;
              v224[0] = @"BytesPerRow";
              auxiliaryImageDataType[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:(v128 + 15) & 0xFFFFFFFFFFFFFFF0];
              v224[1] = @"Height";
              auxiliaryImageDataType[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v129];
              v224[2] = @"Width";
              auxiliaryImageDataType[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v128];
              v224[3] = @"PixelFormat";
              auxiliaryImageDataType[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1278226488];
              v227[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:auxiliaryImageDataType forKeys:v224 count:4];
              v131 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v227 forKeys:v226 count:3];
              CFRelease(v127);
              if (v131)
              {
                CGImageDestinationAddAuxiliaryDataInfo(v38, v182, v131);
              }

              goto LABEL_115;
            }
          }

          v123 = ci_logger_api(IsEmpty, v122);
          if (os_log_type_enabled(v123, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = v177;
            *(&buf + 4) = v113;
            v124 = v123;
            v125 = "Saving %{public}@ option requires an image with a finite non-empty extent.";
LABEL_120:
            _os_log_error_impl(&dword_19CC36000, v124, OS_LOG_TYPE_ERROR, v125, &buf, 0xCu);
          }
        }

        else
        {
          v126 = ci_logger_api(v115, v116);
          if (os_log_type_enabled(v126, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = v177;
            *(&buf + 4) = v113;
            v124 = v126;
            v125 = "Saving %{public}@ option requires a CIImage object.";
            goto LABEL_120;
          }
        }
      }

LABEL_115:
      ++v112;
    }

    while ([v108 count] > v112);
  }

  v132 = [options objectForKey:@"kCIImageRepresentationAVSemanticSegmentationMattes"];
  if (v132)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      v133 = [v132 countByEnumeratingWithState:&v220 objects:&buf count:16];
      if (v133)
      {
        v134 = *v221;
        do
        {
          for (k = 0; k != v133; ++k)
          {
            if (*v221 != v134)
            {
              objc_enumerationMutation(v132);
            }

            v136 = *(*(&v220 + 1) + 8 * k);
            if (isKind_AVSemanticSegmentationMatteClass(v136))
            {
              v213 = 0;
              v137 = AVSemanticSegmentationMatteDictionaryRepresentationForAuxiliaryType(v136, &v213);
              if (v137)
              {
                CGImageDestinationAddAuxiliaryDataInfo(v38, v213, v137);
              }
            }
          }

          v133 = [v132 countByEnumeratingWithState:&v220 objects:&buf count:16];
        }

        while (v133);
      }
    }
  }

  v138 = [options objectForKey:@"kCIImageRepresentationAVDepthData"];
  v139 = [options objectForKey:@"kCIImageRepresentationDepthImage"];
  v140 = [options objectForKey:@"kCIImageRepresentationDisparityImage"];
  v141 = v140;
  if (v140)
  {
    v142 = v140;
  }

  else
  {
    v142 = v139;
  }

  depthData = [v142 depthData];
  auxiliaryImageDataType[0] = 0;
  if (v142)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v144 = v142;
    }

    else
    {
      v144 = 0;
    }
  }

  else
  {
    v144 = 0;
  }

  [v144 extent];
  v145 = v245.origin.x;
  v146 = v245.origin.y;
  v147 = v245.size.width;
  v148 = v245.size.height;
  if (CGRectIsInfinite(v245) || (v246.origin.x = v145, v246.origin.y = v146, v246.size.width = v147, v246.size.height = v148, CGRectIsEmpty(v246)))
  {
    v144 = 0;
  }

  if (isKind_AVDepthDataClass(v138))
  {
    v149 = v138;
  }

  else
  {
    v149 = 0;
  }

  if (!v144 && v149)
  {
    v150 = AVFDepthDataDictionaryRepresentation(v149, auxiliaryImageDataType);
LABEL_171:
    if (v150)
    {
      CGImageDestinationAddAuxiliaryDataInfo(v38, auxiliaryImageDataType[0], v150);
    }

    goto LABEL_173;
  }

  v151 = vcvtmd_u64_f64(v147);
  v152 = vcvtmd_u64_f64(v148);
  if (v144 && depthData)
  {
    v153 = MEMORY[0x1E696D260];
    if (!v141)
    {
      v153 = MEMORY[0x1E696D258];
    }

    auxiliaryImageDataType[0] = *v153;
    *&buf = 0;
    v233 = *MEMORY[0x1E69660D8];
    *&v220 = MEMORY[0x1E695E0F8];
    v154 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v233 count:1];
    if (v141)
    {
      v155 = 1751411059;
    }

    else
    {
      v155 = 1751410032;
    }

    CVPixelBufferCreate(0, v151, v152, v155, v154, &buf);
    if (buf)
    {
      [(CIContext *)selfCopy render:v144 toCVPixelBuffer:buf bounds:0 colorSpace:v145, v146, v147, v148];
      v156 = AVFDepthDataByReplacingDepthDataMapWithPixelBuffer(depthData, buf);
      v150 = AVFDepthDataDictionaryRepresentation(v156, auxiliaryImageDataType);
      CFRelease(buf);
    }

    else
    {
      v150 = 0;
    }

    goto LABEL_171;
  }

  if (v144)
  {
    v157 = MEMORY[0x1E696D260];
    if (!v141)
    {
      v157 = MEMORY[0x1E696D258];
    }

    auxiliaryImageDataType[0] = *v157;
    if (v141)
    {
      v158 = 1751411059;
    }

    else
    {
      v158 = 1717856627;
    }

    v152 = [MEMORY[0x1E695DF88] dataWithLength:2 * v151 * v152];
    [(CIContext *)selfCopy render:v142 toBitmap:[(__CFString *)v152 mutableBytes] rowBytes:2 * v151 bounds:2051 format:0 colorSpace:0.0, 0.0, v151, v152];
    if ([v142 properties])
    {
      properties = [v142 properties];
      v161 = [properties objectForKeyedSubscript:*MEMORY[0x1E696D228]];
    }

    else
    {
      v161 = 0;
    }

    v233 = v152;
    v228 = @"kCGImageAuxiliaryDataInfoData";
    v229 = @"kCGImageAuxiliaryDataInfoDataDescription";
    *&v220 = @"BytesPerRow";
    *&buf = [MEMORY[0x1E696AD98] numberWithUnsignedLong:2 * v151];
    *(&v220 + 1) = @"Height";
    *(&buf + 1) = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v152];
    *&v221 = @"Width";
    v218 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v151];
    *(&v221 + 1) = @"PixelFormat";
    v219 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v158];
    v234 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v220 count:4];
    v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v228 count:2];
    if (v161)
    {
      v150 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v150];
      [(__CFDictionary *)v150 setObject:v161 forKeyedSubscript:*MEMORY[0x1E696D228]];
    }

    goto LABEL_171;
  }

LABEL_173:
  v31 = imageCopy;
LABEL_174:
  v162 = CGImageDestinationFinalize(v38);
  if (v200[5])
  {
    v163 = v206[6];
    v164 = v206[7];
    v165 = v206[8];
    v166 = v206[9];
    [v31 extent];
    v248.origin.x = v167;
    v248.origin.y = v168;
    v248.size.width = v169;
    v248.size.height = v170;
    v247.origin.x = v163;
    v247.origin.y = v164;
    v247.size.width = v165;
    v247.size.height = v166;
    v171 = CGRectContainsRect(v247, v248);
  }

  else
  {
    v171 = 1;
  }

  if (!v162 || !v171)
  {

    v172 = v200[5];
    if (v172)
    {
      *&v220 = *MEMORY[0x1E696AA08];
      *(&v220 + 1) = @"CINonLocalizedDescriptionKey";
      *&buf = v172;
      *(&buf + 1) = @"failed to create data representation.";
      v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v220 count:2];
    }

    else
    {
      *&v220 = @"CINonLocalizedDescriptionKey";
      *&buf = @"failed to create data representation.";
      v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:&v220 count:1];
    }

    v35 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v173];
    v174 = v35;
    goto LABEL_183;
  }

  v35 = 0;
LABEL_184:
  _Block_object_dispose(&v199, 8);
  _Block_object_dispose(&v205, 8);
  objc_autoreleasePoolPop(context);
  if (error && v35)
  {
    *error = v35;
  }

  v175 = v35;
  return data;
}

void __138__CIContext_ImageRepresentation___dataRepresentationOfImage_UTIType_format_premultiplied_colorSpace_options_addAuxData_keysToMerge_error___block_invoke(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (a2)
  {

    *(*(*(a1 + 40) + 8) + 40) = a2;
  }

  else
  {
    v8.size.height = a6;
    v8.size.width = a5;
    v8.origin.y = a4;
    v8.origin.x = a3;
    *(*(*(a1 + 32) + 8) + 48) = CGRectUnion(*(*(*(a1 + 32) + 8) + 48), v8);
  }
}

- (id)_TIFFRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  v12 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) _TIFFRepresentationOfImage:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, space, v12, error))
  {
    return 0;
  }

  LOBYTE(v14) = 0;
  return [(CIContext *)self _dataRepresentationOfImage:image UTIType:@"public.tiff" format:v12 premultiplied:1 colorSpace:space options:options addAuxData:v14 keysToMerge:0 error:error];
}

- (id)_PNGRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  v12 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) _PNGRepresentationOfImage:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, space, v12, error))
  {
    return 0;
  }

  LOBYTE(v14) = 0;
  return [(CIContext *)self _dataRepresentationOfImage:image UTIType:@"public.png" format:v12 premultiplied:0 colorSpace:space options:options addAuxData:v14 keysToMerge:0 error:error];
}

- (void)_addSemanticImages:(id)images session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options
{
  v95 = *MEMORY[0x1E69E9840];
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  *&v86 = 0;
  *(&v86 + 1) = &v86;
  *&v87 = 0x2020000000;
  v7 = getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLoc(void)::ptr;
  *(&v87 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLoc(void)::ptr)
  {
    *&v92 = MEMORY[0x1E69E9820];
    *(&v92 + 1) = 3221225472;
    *&v93 = ___ZL59getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLocv_block_invoke;
    *(&v93 + 1) = &unk_1E75C1E10;
    v94 = &v86;
    v8 = CMPhotoLibrary();
    v9 = dlsym(v8, "kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte");
    *(*(v94 + 1) + 24) = v9;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatteSymbolLoc(void)::ptr = *(*(v94 + 1) + 24);
    v7 = *(*(&v86 + 1) + 24);
  }

  _Block_object_dispose(&v86, 8);
  if (!v7)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  *&v89 = *v7;
  *&v86 = 0;
  *(&v86 + 1) = &v86;
  *&v87 = 0x2020000000;
  v10 = getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLoc(void)::ptr;
  *(&v87 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLoc(void)::ptr)
  {
    *&v92 = MEMORY[0x1E69E9820];
    *(&v92 + 1) = 3221225472;
    *&v93 = ___ZL59getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLocv_block_invoke;
    *(&v93 + 1) = &unk_1E75C1E10;
    v94 = &v86;
    v11 = CMPhotoLibrary();
    v12 = dlsym(v11, "kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte");
    *(*(v94 + 1) + 24) = v12;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticHairMatteSymbolLoc(void)::ptr = *(*(v94 + 1) + 24);
    v10 = *(*(&v86 + 1) + 24);
  }

  _Block_object_dispose(&v86, 8);
  if (!v10)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  *(&v89 + 1) = *v10;
  *&v86 = 0;
  *(&v86 + 1) = &v86;
  *&v87 = 0x2020000000;
  v13 = getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLoc(void)::ptr;
  *(&v87 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLoc(void)::ptr)
  {
    *&v92 = MEMORY[0x1E69E9820];
    *(&v92 + 1) = 3221225472;
    *&v93 = ___ZL60getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLocv_block_invoke;
    *(&v93 + 1) = &unk_1E75C1E10;
    v94 = &v86;
    v14 = CMPhotoLibrary();
    v15 = dlsym(v14, "kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte");
    *(*(v94 + 1) + 24) = v15;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatteSymbolLoc(void)::ptr = *(*(v94 + 1) + 24);
    v13 = *(*(&v86 + 1) + 24);
  }

  _Block_object_dispose(&v86, 8);
  if (!v13)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  *&v90 = *v13;
  *&v86 = 0;
  *(&v86 + 1) = &v86;
  *&v87 = 0x2020000000;
  v16 = getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLoc(void)::ptr;
  *(&v87 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLoc(void)::ptr)
  {
    *&v92 = MEMORY[0x1E69E9820];
    *(&v92 + 1) = 3221225472;
    *&v93 = ___ZL62getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLocv_block_invoke;
    *(&v93 + 1) = &unk_1E75C1E10;
    v94 = &v86;
    v17 = CMPhotoLibrary();
    v18 = dlsym(v17, "kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte");
    *(*(v94 + 1) + 24) = v18;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatteSymbolLoc(void)::ptr = *(*(v94 + 1) + 24);
    v16 = *(*(&v86 + 1) + 24);
  }

  _Block_object_dispose(&v86, 8);
  if (!v16)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  *(&v90 + 1) = *v16;
  *&v86 = 0;
  *(&v86 + 1) = &v86;
  *&v87 = 0x2020000000;
  v19 = getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLoc(void)::ptr;
  *(&v87 + 1) = getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLoc(void)::ptr;
  if (!getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLoc(void)::ptr)
  {
    *&v92 = MEMORY[0x1E69E9820];
    *(&v92 + 1) = 3221225472;
    *&v93 = ___ZL58getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLocv_block_invoke;
    *(&v93 + 1) = &unk_1E75C1E10;
    v94 = &v86;
    v20 = CMPhotoLibrary();
    v21 = dlsym(v20, "kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte");
    *(*(v94 + 1) + 24) = v21;
    getkCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatteSymbolLoc(void)::ptr = *(*(v94 + 1) + 24);
    v19 = *(*(&v86 + 1) + 24);
  }

  _Block_object_dispose(&v86, 8);
  if (!v19)
  {
    [CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:];
  }

  v22 = 0;
  v91 = *v19;
  v94 = 0;
  v92 = 0u;
  v93 = 0u;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  v64 = 0x8420102uLL;
  do
  {
    v23 = off_1E75C22B0[v22];
    v24 = [options objectForKeyedSubscript:{v23, v64}];
    if (!v24)
    {
      goto LABEL_26;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [v24 extent];
      IsInfinite = CGRectIsInfinite(v96);
      if (!IsInfinite)
      {
        [v24 extent];
        IsInfinite = CGRectIsEmpty(v97);
        if (!IsInfinite)
        {
          goto LABEL_25;
        }
      }

      v29 = ci_logger_api(IsInfinite, v28);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = v64;
        *&buf[4] = v23;
        v30 = v29;
        v31 = "Saving %{public}@ option requires an image with a finite non-empty extent.";
LABEL_29:
        _os_log_error_impl(&dword_19CC36000, v30, OS_LOG_TYPE_ERROR, v31, buf, 0xCu);
      }
    }

    else
    {
      v32 = ci_logger_api(isKindOfClass, v26);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = v64;
        *&buf[4] = v23;
        v30 = v32;
        v31 = "Saving %{public}@ option requires a CIImage object.";
        goto LABEL_29;
      }
    }

    v24 = 0;
LABEL_25:
    *(&v92 + v22 * 8) = v24;
LABEL_26:
    ++v22;
  }

  while (v22 != 5);
  v33 = [options objectForKeyedSubscript:@"kCIImageRepresentationAVSemanticSegmentationMattes"];
  objc_opt_class();
  v34 = objc_opt_isKindOfClass();
  if (v34)
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v35 = [v33 countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v35)
    {
      v36 = *v70;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v70 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v38 = *(*(&v69 + 1) + 8 * i);
          if (isKind_AVSemanticSegmentationMatteClass(v38))
          {
            *buf = 0;
            v39 = AVSemanticSegmentationMatteDictionaryRepresentationForAuxiliaryType(v38, buf);
            if ([*buf hasSuffix:@"SkinMatte"])
            {
              v41 = &v86;
              v42 = &v83;
LABEL_43:
              *v41 = AVSemanticSegmentationMatteImage(v38, v40);
              *v42 = [v39 objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"];
              continue;
            }

            v42 = (&v83 + 8);
            v41 = &v86 + 1;
            if ([*buf hasSuffix:@"HairMatte"])
            {
              goto LABEL_43;
            }

            v41 = &v87;
            v42 = &v84;
            if ([*buf hasSuffix:@"TeethMatte"])
            {
              goto LABEL_43;
            }

            v41 = &v87 + 1;
            v42 = (&v84 + 8);
            if ([*buf hasSuffix:@"GlassesMatte"])
            {
              goto LABEL_43;
            }

            v41 = &v88;
            v42 = &v85;
            if ([*buf hasSuffix:@"SkyMatte"])
            {
              goto LABEL_43;
            }
          }
        }

        v35 = [v33 countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (v35);
    }
  }

  v43 = 0;
  v68 = *MEMORY[0x1E69660D8];
  while (2)
  {
    v44 = getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN();
    v45 = *(&v89 + v43);
    v80 = v44;
    v81 = v45;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v47 = *(&v86 + v43);
    if (v47)
    {
      v48 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, 4, *(&v83 + v43), v46, v47);
      v50 = v48;
      goto LABEL_49;
    }

    v54 = *(&v92 + v43);
    if (v54)
    {
      [*(&v92 + v43) extent];
      v56 = v55;
      v58 = v57;
      v59 = [objc_msgSend(v54 "properties")];
      Mutable = CGImageMetadataCreateMutable();
      MetadataAddVersion(Mutable, @"semanticSegmentationMatte", @"http://ns.apple.com/semanticSegmentationMatte/1.0/", @"SemanticSegmentationMatteVersion", 0x10000);
      *buf = 0;
      v78 = v68;
      v79 = MEMORY[0x1E695E0F8];
      v61 = vcvtmd_u64_f64(v56);
      v62 = vcvtmd_u64_f64(v58);
      v48 = CVPixelBufferCreate(0, v61, v62, 0x4C303038u, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1], buf);
      v50 = v48;
      if (!v48)
      {
        [(CIContext *)self render:v54 toCVPixelBuffer:*buf bounds:0 colorSpace:0.0, 0.0, v61, v62];
        if (v59)
        {
          v63 = v59;
        }

        else
        {
          v63 = Mutable;
        }

        v50 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, 4, v63, v46, *buf);
        CFRelease(*buf);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

LABEL_49:
      if (v50)
      {
        v51 = ci_logger_api(v48, v49);
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          v52 = off_1E75C22B0[v43 / 8];
          v53 = FigErrorString(v50);
          *buf = 136446722;
          *&buf[4] = "[CIContext(ImageRepresentation) _addSemanticImages:session:imageHandle:options:]";
          v74 = 2114;
          v75 = v52;
          v76 = 2082;
          v77 = v53;
          _os_log_error_impl(&dword_19CC36000, v51, OS_LOG_TYPE_ERROR, "%{public}s failed to add %{public}@ to the PhotoCompressionSession. (%{public}s)", buf, 0x20u);
        }
      }
    }

    v43 += 8;
    if (v43 != 40)
    {
      continue;
    }

    break;
  }
}

- (void)_addPortraitMatte:(id)matte session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options
{
  v49[1] = *MEMORY[0x1E69E9840];
  v10 = [options objectForKeyedSubscript:@"kCIImageRepresentationPortraitEffectsMatteImage"];
  if (v10)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v13 = ci_logger_api(isKindOfClass, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CIContext(ImageRepresentation) *)v13 _addPortraitMatte:v14 session:v15 imageHandle:v16 options:v17, v18, v19, v20];
      }

      v10 = 0;
    }

    [v10 extent];
    IsInfinite = CGRectIsInfinite(v50);
    if (IsInfinite || ([v10 extent], IsInfinite = CGRectIsEmpty(v51)))
    {
      v23 = ci_logger_api(IsInfinite, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(CIContext(ImageRepresentation) *)v23 _addPortraitMatte:v24 session:v25 imageHandle:v26 options:v27, v28, v29, v30];
      }

      v10 = 0;
    }
  }

  v31 = [options objectForKeyedSubscript:@"kCIImageRepresentationAVPortraitEffectsMatte"];
  if (isKind_AVPortraitEffectsMatteClass(v31) && (cf = 0, v32 = AVPortraitEffectsMatteDictionaryRepresentation(v31, &cf), v34 = AVFPortraitEffectsMatteImage(v31, v33), v35 = [v32 objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"], v34))
  {
    v36 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, 5, v35, 0, v34);
    v38 = v36;
  }

  else
  {
    if (!v10)
    {
      return;
    }

    v39 = [objc_msgSend(v10 "properties")];
    [v10 extent];
    v41 = vcvtmd_u64_f64(v40);
    [v10 extent];
    v43 = vcvtmd_u64_f64(v42);
    Mutable = CGImageMetadataCreateMutable();
    MetadataAddVersion(Mutable, @"portraitEffectsMatte", @"http://ns.apple.com/portraitEffectsMatte/1.0/", @"PortraitEffectsMatteVersion", 0x10000);
    cf = 0;
    v48 = *MEMORY[0x1E69660D8];
    v49[0] = MEMORY[0x1E695E0F8];
    v36 = CVPixelBufferCreate(0, v41, v43, 0x4C303038u, [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1], &cf);
    v38 = v36;
    if (!v36)
    {
      [(CIContext *)self render:v10 toCVPixelBuffer:cf bounds:0 colorSpace:0.0, 0.0, v41, v43];
      if (v39)
      {
        v45 = v39;
      }

      else
      {
        v45 = Mutable;
      }

      v38 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, 5, v45, 0, cf);
      CFRelease(cf);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (v38)
  {
    v46 = ci_logger_api(v36, v37);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _addPortraitMatte:v38 session:? imageHandle:? options:?];
    }
  }
}

- (void)_addGainMap:(id)map session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle containerFormat:(int)format options:(id)options orientation:(id)orientation
{
  v138[1] = *MEMORY[0x1E69E9840];
  v15 = @"kCIImageRepresentationHDRGainMapImage";
  v16 = [options objectForKeyedSubscript:@"kCIImageRepresentationHDRGainMapImage"];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v15 = @"kCIImageRepresentationISOGainMapImage";
    v19 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapImage"];
    if (!v19)
    {
      return;
    }

    v18 = v19;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v18 extent];
    x = v139.origin.x;
    y = v139.origin.y;
    width = v139.size.width;
    height = v139.size.height;
    IsInfinite = CGRectIsInfinite(v139);
    if (IsInfinite || (v140.origin.x = x, v140.origin.y = y, v140.size.width = width, v140.size.height = height, IsInfinite = CGRectIsEmpty(v140)))
    {
      v28 = ci_logger_api(IsInfinite, v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [CIContext(ImageRepresentation) _dataRepresentationOfImage:UTIType:format:premultiplied:colorSpace:options:addAuxData:keysToMerge:error:];
      }
    }

    else
    {
      handleCopy = handle;
      v30 = v17 == 0;
      v31 = [objc_msgSend(v18 "properties")];
      v137 = *MEMORY[0x1E69660D8];
      v138[0] = MEMORY[0x1E695E0F8];
      pixelBufferAttributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:v138 forKeys:&v137 count:1];
      v86 = vcvtmd_u64_f64(width);
      pixelBufferOut[0] = 0;
      v85 = vcvtmd_u64_f64(height);
      if (v30)
      {
        v42 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapBaseHeadroom"];
        if (v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = &unk_1F1083148;
        }

        v44 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapAlternateHeadroom"];
        v45 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapMin"];
        if (v45)
        {
          v46 = v45;
        }

        else
        {
          v46 = v43;
        }

        v81 = v46;
        v47 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapMax"];
        if (v47)
        {
          v48 = v47;
        }

        else
        {
          v48 = v44;
        }

        v79 = v48;
        v49 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapOffset"];
        v50 = &unk_1F1083168;
        if (v49)
        {
          v50 = v49;
        }

        v80 = v50;
        v51 = [options objectForKeyedSubscript:@"kCIImageRepresentationISOGainMapGamma"];
        v52 = &unk_1F1083158;
        if (v51)
        {
          v52 = v51;
        }

        v78 = v52;
        v82 = [objc_msgSend(options objectForKeyedSubscript:{@"kCIImageRepresentationHDRGainMapAsRGB", "BOOLValue"}];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & (v44 != 0)) == 1 && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), (objc_opt_isKindOfClass()) && (objc_opt_class(), v53 = objc_opt_isKindOfClass(), (v53))
        {
          v132 = &unk_1F10819E0;
          v131[0] = @"TonemapVersion";
          v131[1] = @"TonemapBaseHDRHeadroom";
          v133 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v53, v43);
          v131[2] = @"TonemapAlternateHDRHeadroom";
          v134 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v133, v44);
          v135 = MEMORY[0x1E695E118];
          v131[3] = @"TonemapBaseColorIsWorkingColor";
          v131[4] = @"TonemapChannelMetadata";
          v124[0] = @"BaseOffset";
          v125 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v134, v80);
          v124[1] = @"AlternateOffset";
          v126 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v125, v80);
          v124[2] = @"GainMapMin";
          v127 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v126, v81);
          v124[3] = @"GainMapMax";
          v128 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v127, v79);
          v124[4] = @"Gamma";
          v129 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v128, v78);
          v130 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:v124 count:5];
          v136 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v130 count:1];
          v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v132 forKeys:v131 count:5];
          v55 = v54;
          if (v82)
          {
            v119 = &unk_1F10819E0;
            v118[0] = @"TonemapVersion";
            v118[1] = @"TonemapBaseHDRHeadroom";
            v120 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v54, v43);
            v118[2] = @"TonemapAlternateHDRHeadroom";
            v121 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v120, v44);
            v122 = MEMORY[0x1E695E118];
            v118[3] = @"TonemapBaseColorIsWorkingColor";
            v118[4] = @"TonemapChannelMetadata";
            v109[0] = @"BaseOffset";
            v110 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v121, v80);
            v109[1] = @"AlternateOffset";
            v111 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v110, v80);
            v109[2] = @"GainMapMin";
            v112 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v111, v81);
            v109[3] = @"GainMapMax";
            v113 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v112, v79);
            v109[4] = @"Gamma";
            v114 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v113, v78);
            v115 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:v109 count:5];
            v103[0] = @"BaseOffset";
            v104 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v115, v80);
            v103[1] = @"AlternateOffset";
            v105 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v104, v80);
            v103[2] = @"GainMapMin";
            v106 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v105, v81);
            v103[3] = @"GainMapMax";
            v107 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v106, v79);
            v103[4] = @"Gamma";
            v108 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v107, v78);
            v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:v103 count:5];
            v97[0] = @"BaseOffset";
            v98 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v116, v80);
            v97[1] = @"AlternateOffset";
            v99 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v98, v80);
            v97[2] = @"GainMapMin";
            v100 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v99, v81);
            v97[3] = @"GainMapMax";
            v101 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v100, v79);
            v97[4] = @"Gamma";
            v102 = kCIImageRepresentationSemanticSegmentationSkyMatteImage_block_invoke(v101, v78);
            v117 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:v97 count:5];
            v123 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v115 count:3];
            v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:v118 count:5];
          }
        }

        else
        {
          v55 = 0;
        }

        if (v82)
        {
          v56 = 1111970369;
        }

        else
        {
          v56 = 1278226488;
        }

        v58 = CVPixelBufferCreate(0, v86, v85, v56, pixelBufferAttributes, pixelBufferOut);
        if (!v58)
        {
          [(CIContext *)self render:v18 toCVPixelBuffer:pixelBufferOut[0] bounds:0 colorSpace:0.0, 0.0, v86, v85];
          if (format)
          {
            v59 = 0;
          }

          else
          {
            v59 = 1752589105;
          }

          if (format == 1)
          {
            v60 = 1785750887;
          }

          else
          {
            v60 = v59;
          }

          v61 = [options objectForKeyedSubscript:*MEMORY[0x1E696D338]];
          objc_opt_class();
          v62 = objc_opt_isKindOfClass();
          v63 = 0.0;
          if (v62)
          {
            [v61 floatValue];
          }

          v64 = fminf(fmaxf(v63, 0.9), 1.0);
          if (v64 > 0.9944)
          {
            v65 = 1;
          }

          else
          {
            v65 = 5;
          }

          if (v82)
          {
            v66 = v65;
          }

          else
          {
            v66 = 6;
          }

          dictionary = [MEMORY[0x1E695DF90] dictionary];
          [dictionary setObject:MEMORY[0x1E695E110] forKeyedSubscript:getkCMPhotoCompressionOption_ApplyTransform()];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v60), getkCMPhotoCompressionOption_CodecType()}];
          [dictionary setObject:&unk_1F10819F8 forKeyedSubscript:getkCMPhotoCompressionOption_QualityControllerType()];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v66), getkCMPhotoCompressionOption_Subsampling()}];
          [dictionary setObject:&unk_1F1081A10 forKeyedSubscript:getkCMPhotoCompressionOption_BitDepth()];
          v95 = getkCMPhotoQualityControllerParameter_QualityValue();
          *&v68 = v64;
          v96 = [MEMORY[0x1E696AD98] numberWithFloat:v68];
          [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v96, &v95, 1), getkCMPhotoCompressionOption_QualityControllerParameters()}];
          if (!format)
          {
            if (orientation)
            {
              orientationCopy = orientation;
            }

            else
            {
              orientationCopy = &unk_1F1081A28;
            }

            [dictionary setObject:orientationCopy forKeyedSubscript:getkCMPhotoCompressionOption_ImageOrientation()];
          }

          v70 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F178]);
          v93 = getkCMPhotoCompressionOption_ColorSpace();
          v94 = v70;
          v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          CGColorSpaceRelease(v70);
          v58 = soft_CMPhotoCompressionSessionAddTmapImageOneShot(session, handleCopy, dictionary, v71, pixelBufferOut[0], v55, v72, v73, v77);
        }
      }

      else
      {
        v32 = v31;
        selfCopy = self;
        sessionCopy = session;
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v89 = 0;
        v90 = &v89;
        v91 = 0x2020000000;
        v36 = getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLoc(void)::ptr;
        v92 = getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLoc(void)::ptr;
        if (!getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLoc(void)::ptr)
        {
          pixelBufferOut[1] = MEMORY[0x1E69E9820];
          pixelBufferOut[2] = 3221225472;
          pixelBufferOut[3] = ___ZL52getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLocv_block_invoke;
          pixelBufferOut[4] = &unk_1E75C1E10;
          v88 = &v89;
          v37 = CMPhotoLibrary();
          v90[3] = dlsym(v37, "kCMPhotoAuxiliaryImageTypeURN_HDRGainMap");
          getkCMPhotoAuxiliaryImageTypeURN_HDRGainMapSymbolLoc(void)::ptr = *(v88[1] + 24);
          v36 = v90[3];
        }

        _Block_object_dispose(&v89, 8);
        if (!v36)
        {
          [CIContext(ImageRepresentation) _addGainMap:session:imageHandle:containerFormat:options:orientation:];
        }

        [dictionary2 setObject:*v36 forKeyedSubscript:getkCMPhotoCompressionOption_AuxiliaryImageCustomTypeURN()];
        Mutable = CGImageMetadataCreateMutable();
        MetadataAddVersion(Mutable, @"HDRGainMap", @"http://ns.apple.com/HDRGainMap/1.0/", @"HDRGainMapVersion", 0x20000);
        v39 = [options objectForKeyedSubscript:@"kCIImageRepresentationHDRGainMapHeadroom"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v39 floatValue], v40 > 1.0))
        {
          v41 = MEMORY[0x1E696AD98];
          [v39 floatValue];
          CGImageMetadataSetValueWithPath(Mutable, 0, @"HDRGainMap:HDRGainMapHeadroom", [v41 numberWithFloat:?]);
        }

        else if (v32)
        {
          CFRelease(Mutable);
          CFRetain(v32);
          Mutable = v32;
        }

        else
        {
          [map _makernoteMeteorHeadroom];
          if (v74 > 1.0)
          {
            CGImageMetadataSetValueWithPath(Mutable, 0, @"HDRGainMap:HDRGainMapHeadroom", [MEMORY[0x1E696AD98] numberWithFloat:?]);
          }
        }

        v58 = CVPixelBufferCreate(0, v86, v85, 0x4C303038u, pixelBufferAttributes, pixelBufferOut);
        if (!v58)
        {
          [(CIContext *)selfCopy render:v18 toCVPixelBuffer:pixelBufferOut[0] bounds:0 colorSpace:0.0, 0.0, v86, v85];
          v58 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(sessionCopy, handleCopy, 4, Mutable, dictionary2, pixelBufferOut[0]);
        }

        CFRelease(Mutable);
      }

      v75 = pixelBufferOut[0];
      if (pixelBufferOut[0])
      {
        CFRelease(pixelBufferOut[0]);
      }

      if (v58)
      {
        v76 = ci_logger_api(v75, v57);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          [CIContext(ImageRepresentation) _addGainMap:v15 session:v58 imageHandle:? containerFormat:? options:? orientation:?];
        }
      }
    }
  }

  else
  {
    v29 = ci_logger_api(isKindOfClass, v21);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _dataRepresentationOfImage:UTIType:format:premultiplied:colorSpace:options:addAuxData:keysToMerge:error:];
    }
  }
}

- (void)_addDepthMap:(id)map session:(CMPhotoCompressionSession *)session imageHandle:(int64_t)handle options:(id)options
{
  v48[1] = *MEMORY[0x1E69E9840];
  v10 = [options objectForKeyedSubscript:@"kCIImageRepresentationAVDepthData"];
  v11 = [options objectForKeyedSubscript:@"kCIImageRepresentationDepthImage"];
  v12 = [options objectForKeyedSubscript:@"kCIImageRepresentationDisparityImage"];
  v13 = v12;
  pixelBufferOut = 0;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v11;
  }

  depthData = [v14 depthData];
  v43 = 0;
  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v14;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  [v16 extent];
  x = v49.origin.x;
  y = v49.origin.y;
  width = v49.size.width;
  height = v49.size.height;
  if (CGRectIsInfinite(v49) || (v50.origin.x = x, v50.origin.y = y, v50.size.width = width, v50.size.height = height, CGRectIsEmpty(v50)))
  {
    v16 = 0;
  }

  if (!isKind_AVDepthDataClass(v10))
  {
    v10 = 0;
  }

  if (v16 || !v10)
  {
    v28 = vcvtmd_u64_f64(width);
    v29 = vcvtmd_u64_f64(height);
    if (v16 && depthData)
    {
      v30 = MEMORY[0x1E696D260];
      if (!v13)
      {
        v30 = MEMORY[0x1E696D258];
      }

      v43 = *v30;
      if (v13)
      {
        v31 = 1751411059;
      }

      else
      {
        v31 = 1751410032;
      }

      v47 = *MEMORY[0x1E69660D8];
      v48[0] = MEMORY[0x1E695E0F8];
      CVPixelBufferCreate(0, v28, v29, v31, [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1], &pixelBufferOut);
      if (!pixelBufferOut)
      {
        goto LABEL_52;
      }

      if (v13)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      [(CIContext *)self render:v16 toCVPixelBuffer:x bounds:y colorSpace:width, height];
      v32 = AVFDepthDataByReplacingDepthDataMapWithPixelBuffer(depthData, pixelBufferOut);
      properties = AVFDepthDataDictionaryRepresentation(v32, &v43);
    }

    else
    {
      if (!v16)
      {
        goto LABEL_52;
      }

      v34 = MEMORY[0x1E696D260];
      v35 = v13 == 0;
      if (!v13)
      {
        v34 = MEMORY[0x1E696D258];
      }

      v43 = *v34;
      if (v13)
      {
        v27 = 1;
      }

      else
      {
        v27 = 2;
      }

      if (v35)
      {
        v36 = 1751410032;
      }

      else
      {
        v36 = 1751411059;
      }

      v45 = *MEMORY[0x1E69660D8];
      v46 = MEMORY[0x1E695E0F8];
      CVPixelBufferCreate(0, v28, v29, v36, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1], &pixelBufferOut);
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __75__CIContext_ImageRepresentation___addDepthMap_session_imageHandle_options___block_invoke;
      v42[3] = &unk_1E75C22E0;
      v42[4] = self;
      v42[5] = v14;
      PixelBufferApplyPlaneBlock(pixelBufferOut, v42);
      properties = [v14 properties];
    }

    v23 = [properties objectForKeyedSubscript:@"kCGImageAuxiliaryDataInfoMetadata"];
  }

  else
  {
    v22 = AVFDepthDataMap(v10, v21);
    pixelBufferOut = v22;
    if (v22)
    {
      CFRetain(v22);
    }

    v23 = [AVFDepthDataDictionaryRepresentation(v10 &v43)];
    v25 = AVFDepthDataType(v10, v24);
    if (v25 == 1717856627 || v25 == 1751411059)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }
  }

  v37 = pixelBufferOut;
  if (!pixelBufferOut || !v23)
  {
    goto LABEL_53;
  }

  v38 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(session, handle, v27, v23, 0, pixelBufferOut);
  if (v38)
  {
    v40 = v38;
    v41 = ci_logger_api(v38, v39);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _addDepthMap:v40 session:? imageHandle:? options:?];
    }
  }

LABEL_52:
  v37 = pixelBufferOut;
LABEL_53:
  if (v37)
  {
    CFRelease(v37);
  }
}

- (id)_CMPhotoRepresentationOfImage:(id)image depth:(int)depth allowAlpha:(BOOL)alpha containerFormat:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  v11 = *&format;
  alphaCopy = alpha;
  v206 = *MEMORY[0x1E69E9840];
  v190 = 0;
  v16 = objc_autoreleasePoolPush();
  [image extent];
  v208 = CGRectInset(v207, 0.00100000005, 0.00100000005);
  v209 = CGRectIntegral(v208);
  x = v209.origin.x;
  y = v209.origin.y;
  width = v209.size.width;
  height = v209.size.height;
  IsEmpty = CGRectIsEmpty(v209);
  if ((IsEmpty & 1) != 0 || (v210.origin.x = x, v210.origin.y = y, v210.size.width = width, v210.size.height = height, IsEmpty = CGRectIsInfinite(v210), IsEmpty))
  {
    v23 = ci_logger_api(IsEmpty, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(ImageRepresentation) *)v23 _CMPhotoRepresentationOfImage:v24 depth:v25 allowAlpha:v26 containerFormat:v27 colorSpace:v28 options:v29 error:v30];
    }

    v202 = @"CINonLocalizedDescriptionKey";
    *bytes = @"requires an image with a finite non-empty extent.";
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:bytes forKeys:&v202 count:1];
    v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:4 userInfo:v31];
LABEL_17:
    v46 = v32;
    v47 = v32;
    goto LABEL_18;
  }

  if (!space || (TypeID = CGColorSpaceGetTypeID(), IsEmpty = CFGetTypeID(space), TypeID != IsEmpty) || (IsEmpty = CGColorSpaceSupportsOutput(space), !IsEmpty) || CGColorSpaceGetModel(space) && (IsEmpty = CGColorSpaceGetModel(space), IsEmpty != 1))
  {
    v37 = ci_logger_api(IsEmpty, v22);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(ImageRepresentation) *)v37 _CMPhotoRepresentationOfImage:v38 depth:v39 allowAlpha:v40 containerFormat:v41 colorSpace:v42 options:v43 error:v44];
    }

    v202 = @"CINonLocalizedDescriptionKey";
    *bytes = @"unsupported colorspace.";
    v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:bytes forKeys:&v202 count:1];
    v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:5 userInfo:v45];
    goto LABEL_17;
  }

  pixelBufferOut = 0;
  Model = CGColorSpaceGetModel(space);
  isOpaque = [image isOpaque];
  cGImage = [image CGImage];
  if (cGImage && (v36 = cGImage, ![image _originalIOSurface]))
  {
    CGImageGetColorSpace(v36);
    if (CGColorSpaceEqualToColorSpace())
    {
      v50 = v36;
    }

    else
    {
      v50 = 0;
    }

    v183 = v50;
  }

  else
  {
    v183 = 0;
  }

  v195 = *MEMORY[0x1E69660D8];
  v196 = MEMORY[0x1E695E0F8];
  pixelBufferAttributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v196 forKeys:&v195 count:1];
  v177 = alphaCopy & (isOpaque ^ 1);
  if (v183)
  {
    v51 = 1;
  }

  else
  {
    v51 = alphaCopy & (isOpaque ^ 1);
  }

  if (depth == 8)
  {
    if (Model)
    {
      v52 = 875704422;
    }

    else
    {
      v52 = 1278226488;
    }

    v53 = 1279340600;
    if (Model)
    {
      v53 = 1111970369;
    }
  }

  else
  {
    v52 = 1278226736;
    if (Model)
    {
      v52 = 2019963440;
      v53 = 1815491698;
    }

    else
    {
      v53 = 1279340854;
    }
  }

  if (v51)
  {
    v54 = v53;
  }

  else
  {
    v54 = v52;
  }

  v179 = v54;
  v181 = [options objectForKeyedSubscript:*MEMORY[0x1E696D338]];
  v55 = [options objectForKeyedSubscript:*MEMORY[0x1E696DE20]];
  v56 = *MEMORY[0x1E696DE10];
  v57 = [options objectForKeyedSubscript:*MEMORY[0x1E696DE10]];
  if (!v57)
  {
    v57 = [v55 objectForKeyedSubscript:v56];
  }

  v58 = *MEMORY[0x1E696DE18];
  v59 = [options objectForKeyedSubscript:*MEMORY[0x1E696DE18]];
  if (!v59)
  {
    v59 = [v55 objectForKeyedSubscript:v58];
  }

  if ([v57 intValue] >= 1 && objc_msgSend(v57, "intValue") > 1)
  {
    intValue = 2;
  }

  else if ([v57 intValue] < 1)
  {
    intValue = 0;
  }

  else
  {
    intValue = [v57 intValue];
  }

  if ([v59 intValue] >= 1 && objc_msgSend(v59, "intValue") > 1)
  {
    intValue2 = 2;
  }

  else if ([v59 intValue] < 1)
  {
    intValue2 = 0;
  }

  else
  {
    intValue2 = [v59 intValue];
  }

  [v181 floatValue];
  v63 = v11 == 1 && v62 > 0.9944;
  if (v63)
  {
    v64 = 1;
  }

  else
  {
    v64 = 2;
  }

  if (intValue)
  {
    v64 = intValue;
  }

  if (intValue2)
  {
    v63 = intValue2 == 1;
  }

  if (v64 == 1 && v63)
  {
    v65 = 1;
  }

  else
  {
    v65 = 5;
  }

  v66 = v64 == 2 && v63;
  if (v66)
  {
    v67 = 3;
  }

  else
  {
    v67 = v65;
  }

  v68 = v179 != 1278226488;
  if (v179 == 1278226488)
  {
    v67 = 6;
  }

  v176 = v67;
  v69 = v67 == 1;
  if (v67 == 1)
  {
    v70 = 875836518;
  }

  else
  {
    v70 = 875704422;
  }

  if (v69)
  {
    v71 = 2019963956;
  }

  else
  {
    v71 = 2019963440;
  }

  v72 = (v68 & v66) == 0;
  if ((v68 & v66) != 0)
  {
    v73 = 875704934;
  }

  else
  {
    v73 = v70;
  }

  v74 = 2019963442;
  if (v72)
  {
    v74 = v71;
  }

  if (v179 != 875704422)
  {
    v73 = v179;
  }

  if (v73 == 2019963440)
  {
    v75 = v74;
  }

  else
  {
    v75 = v73;
  }

  [image extent];
  v77 = v76;
  [image extent];
  v79 = CVPixelBufferCreate(0, v77, v78, v75, pixelBufferAttributes, &pixelBufferOut);
  if (v79 || (v79 = pixelBufferOut) == 0)
  {
    v84 = ci_logger_api(v79, v80);
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(ImageRepresentation) *)v84 _CMPhotoRepresentationOfImage:v85 depth:v86 allowAlpha:v87 containerFormat:v88 colorSpace:v89 options:v90 error:v91];
    }

    v202 = @"CINonLocalizedDescriptionKey";
    *bytes = @"failed to create a CVPixelBuffer.";
    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:bytes forKeys:&v202 count:1];
    v46 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:6 userInfo:v92];
    v93 = v46;
    goto LABEL_18;
  }

  CFAutorelease(pixelBufferOut);
  IsHLGBased = CGColorSpaceIsHLGBased(space);
  IsPQBased = CGColorSpaceIsPQBased(space);
  v83 = -[CIContext addAuxOptionsForSDR:HDR:colorSpace:rgbGainmap:](self, "addAuxOptionsForSDR:HDR:colorSpace:rgbGainmap:", image, [options objectForKeyedSubscript:@"kCIImageRepresentationHDRImage"], space, objc_msgSend(objc_msgSend(options, "objectForKeyedSubscript:", @"kCIImageRepresentationHDRGainMapAsRGB"), "BOOLValue"));
  if (v83)
  {
    optionsCopy = [MEMORY[0x1E695DF90] dictionary];
    [optionsCopy addEntriesFromDictionary:options];
    [optionsCopy addEntriesFromDictionary:v83];
  }

  else
  {
    optionsCopy = options;
  }

  v94 = equivalent_uncompressed_format(v75);
  v95 = equivalent_uncompressed_format(v94);
  if (v95 > 1936077359)
  {
    if (v95 > 1953903151)
    {
      if (v95 <= 2016686641)
      {
        if (v95 <= 1953903667)
        {
          if (v95 == 1953903152)
          {
            goto LABEL_152;
          }

          v96 = 1953903154;
          goto LABEL_151;
        }

        if (v95 == 1953903668)
        {
          goto LABEL_152;
        }

        v100 = 12848;
      }

      else
      {
        if (v95 > 2019963439)
        {
          if (v95 == 2019963440 || v95 == 2019963956)
          {
            goto LABEL_152;
          }

          v96 = 2019963442;
          goto LABEL_151;
        }

        if (v95 == 2016686642)
        {
          goto LABEL_152;
        }

        v100 = 13364;
      }

      v96 = v100 | 0x78340000;
      goto LABEL_151;
    }

    if (v95 <= 1937125937)
    {
      if (v95 <= 1936077875)
      {
        if (v95 == 1936077360)
        {
          goto LABEL_152;
        }

        v96 = 1936077362;
        goto LABEL_151;
      }

      if (v95 == 1936077876)
      {
        goto LABEL_152;
      }

      v98 = 12848;
    }

    else
    {
      if (v95 > 1952854575)
      {
        if (v95 == 1952854576 || v95 == 1952854578)
        {
          goto LABEL_152;
        }

        v96 = 1952855092;
        goto LABEL_151;
      }

      if (v95 == 1937125938)
      {
        goto LABEL_152;
      }

      v98 = 13364;
    }

    v96 = v98 | 0x73760000;
    goto LABEL_151;
  }

  if (v95 > 1751527983)
  {
    if (v95 <= 1882468913)
    {
      if (v95 <= 1751528499)
      {
        if (v95 == 1751527984)
        {
          goto LABEL_152;
        }

        v96 = 1751527986;
        goto LABEL_151;
      }

      if (v95 == 1751528500)
      {
        goto LABEL_152;
      }

      v99 = 12848;
    }

    else
    {
      if (v95 > 1885745711)
      {
        if (v95 == 1885745712 || v95 == 1885745714)
        {
          goto LABEL_152;
        }

        v96 = 1885746228;
        goto LABEL_151;
      }

      if (v95 == 1882468914)
      {
        goto LABEL_152;
      }

      v99 = 13364;
    }

    v96 = v99 | 0x70340000;
    goto LABEL_151;
  }

  if (v95 <= 875836517)
  {
    if (v95 > 875704933)
    {
      if (v95 == 875704934)
      {
        goto LABEL_152;
      }

      v97 = 12918;
    }

    else
    {
      if (v95 == 875704422)
      {
        goto LABEL_152;
      }

      v97 = 12406;
    }

    v96 = v97 | 0x34320000;
LABEL_151:
    if (v95 != v96)
    {
      goto LABEL_159;
    }

    goto LABEL_152;
  }

  if (v95 <= 1647534391)
  {
    if (v95 == 875836518)
    {
      goto LABEL_152;
    }

    v96 = 875836534;
    goto LABEL_151;
  }

  if (v95 != 1647534392 && v95 != 1667838776)
  {
    v96 = 1714643256;
    goto LABEL_151;
  }

LABEL_152:
  v101 = *MEMORY[0x1E6965FC8];
  if (Model == kCGColorSpaceModelMonochrome)
  {
    v101 = 0;
  }

  if (IsHLGBased || IsPQBased)
  {
    v102 = *MEMORY[0x1E6965FB0];
  }

  else
  {
    v102 = v101;
  }

  if (v102)
  {
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965F98], v102, kCVAttachmentMode_ShouldPropagate);
  }

LABEL_159:
  ColorAttributesForColorSpace = CreateColorAttributesForColorSpace(space);
  if (ColorAttributesForColorSpace)
  {
    CVBufferSetAttachments(pixelBufferOut, ColorAttributesForColorSpace, kCVAttachmentMode_ShouldPropagate);
    CFRelease(ColorAttributesForColorSpace);
  }

  CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965CE8], space, kCVAttachmentMode_ShouldPropagate);
  if (v177)
  {
    v104 = MEMORY[0x1E6965CD0];
    if (v183)
    {
      v104 = MEMORY[0x1E6965CC8];
    }

    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965CC0], *v104, kCVAttachmentMode_ShouldPropagate);
  }

  [image contentHeadroom];
  if (v105 > 1.0)
  {
    *bytes = __rev16(fminf((v105 * 203.0) + 0.5, 65535.0));
    [image contentAverageLightLevel];
    if (v106 != 0.0)
    {
      *&bytes[2] = __rev16(fminf((v106 * 203.0) + 0.5, 65535.0));
    }

    v107 = CFDataCreate(0, bytes, 4);
    CVBufferSetAttachment(pixelBufferOut, *MEMORY[0x1E6965DE0], v107, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v107);
  }

  if (!v183)
  {
    *bytes = 0;
    v133 = [CIRenderDestination alloc];
    v134 = [(CIRenderDestination *)v133 initWithPixelBuffer:pixelBufferOut];
    [(CIRenderDestination *)v134 setColorSpace:space];
    v135 = [(CIContext *)self startTaskToRender:image fromRect:v134 toDestination:bytes atPoint:x error:y, width, height, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)];
    if (v135)
    {
      if ([(CIRenderTask *)v135 waitUntilCompletedAndReturnError:bytes])
      {
        goto LABEL_171;
      }

      v138 = ci_logger_api(0, v137);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_212;
      }
    }

    else
    {
      v138 = ci_logger_api(0, v136);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
      {
LABEL_212:
        [(CIContext(ImageRepresentation) *)v138 _CMPhotoRepresentationOfImage:v139 depth:v140 allowAlpha:v141 containerFormat:v142 colorSpace:v143 options:v144 error:v145];
      }
    }

    v46 = imageRepError(7, &cfstr_FailedToRender.isa, *bytes);
    v164 = v46;
    goto LABEL_18;
  }

  v187[0] = MEMORY[0x1E69E9820];
  v187[1] = 3221225472;
  v187[2] = __122__CIContext_ImageRepresentation___CMPhotoRepresentationOfImage_depth_allowAlpha_containerFormat_colorSpace_options_error___block_invoke;
  v187[3] = &__block_descriptor_52_e21_v48__0_v8Q16Q24Q32Q40l;
  v188 = v75;
  v187[4] = space;
  v187[5] = v183;
  PixelBufferApplyPlaneBlock(pixelBufferOut, v187);
LABEL_171:
  arg = 0;
  v202 = 0;
  v203 = &v202;
  v204 = 0x2020000000;
  v108 = getCMPhotoCompressionSessionCreateSymbolLoc(void)::ptr;
  v205 = getCMPhotoCompressionSessionCreateSymbolLoc(void)::ptr;
  if (!getCMPhotoCompressionSessionCreateSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v198 = 3221225472;
    v199 = ___ZL43getCMPhotoCompressionSessionCreateSymbolLocv_block_invoke;
    v200 = &unk_1E75C1E10;
    v201 = &v202;
    v109 = CMPhotoLibrary();
    v110 = dlsym(v109, "CMPhotoCompressionSessionCreate");
    *(v201[1] + 24) = v110;
    getCMPhotoCompressionSessionCreateSymbolLoc(void)::ptr = *(v201[1] + 24);
    v108 = v203[3];
  }

  _Block_object_dispose(&v202, 8);
  if (!v108)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  (v108)(0, 0, &arg);
  v111 = CFAutorelease(arg);
  if (!arg)
  {
    v146 = ci_logger_api(v111, v112);
    if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(ImageRepresentation) *)v146 _CMPhotoRepresentationOfImage:v147 depth:v148 allowAlpha:v149 containerFormat:v150 colorSpace:v151 options:v152 error:v153];
    }

    v132 = imageRepError(8, &cfstr_FailedToCreate_1.isa);
    goto LABEL_198;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary addEntriesFromDictionary:{objc_msgSend(image, "properties")}];
  v202 = 0;
  v203 = &v202;
  v204 = 0x2020000000;
  v114 = getkCMPhotoCompressionContainerOption_FormatSymbolLoc(void)::ptr;
  v205 = getkCMPhotoCompressionContainerOption_FormatSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionContainerOption_FormatSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v198 = 3221225472;
    v199 = ___ZL53getkCMPhotoCompressionContainerOption_FormatSymbolLocv_block_invoke;
    v200 = &unk_1E75C1E10;
    v201 = &v202;
    v115 = CMPhotoLibrary();
    v116 = dlsym(v115, "kCMPhotoCompressionContainerOption_Format");
    *(v201[1] + 24) = v116;
    getkCMPhotoCompressionContainerOption_FormatSymbolLoc(void)::ptr = *(v201[1] + 24);
    v114 = v203[3];
  }

  _Block_object_dispose(&v202, 8);
  if (!v114)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  v193[0] = *v114;
  v194[0] = [MEMORY[0x1E696AD98] numberWithInt:v11];
  v202 = 0;
  v203 = &v202;
  v204 = 0x2020000000;
  v117 = getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLoc(void)::ptr;
  v205 = getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v198 = 3221225472;
    v199 = ___ZL61getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLocv_block_invoke;
    v200 = &unk_1E75C1E10;
    v201 = &v202;
    v118 = CMPhotoLibrary();
    v119 = dlsym(v118, "kCMPhotoCompressionContainerOption_ImageCountHint");
    *(v201[1] + 24) = v119;
    getkCMPhotoCompressionContainerOption_ImageCountHintSymbolLoc(void)::ptr = *(v201[1] + 24);
    v117 = v203[3];
  }

  _Block_object_dispose(&v202, 8);
  if (!v117)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  v193[1] = *v117;
  v194[1] = &unk_1F1081A28;
  v202 = 0;
  v203 = &v202;
  v204 = 0x2020000000;
  v120 = getkCMPhotoCompressionContainerOption_BackingTypeSymbolLoc(void)::ptr;
  v205 = getkCMPhotoCompressionContainerOption_BackingTypeSymbolLoc(void)::ptr;
  if (!getkCMPhotoCompressionContainerOption_BackingTypeSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v198 = 3221225472;
    v199 = ___ZL58getkCMPhotoCompressionContainerOption_BackingTypeSymbolLocv_block_invoke;
    v200 = &unk_1E75C1E10;
    v201 = &v202;
    v121 = CMPhotoLibrary();
    v122 = dlsym(v121, "kCMPhotoCompressionContainerOption_BackingType");
    *(v201[1] + 24) = v122;
    getkCMPhotoCompressionContainerOption_BackingTypeSymbolLoc(void)::ptr = *(v201[1] + 24);
    v120 = v203[3];
  }

  _Block_object_dispose(&v202, 8);
  if (!v120)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  v193[2] = *v120;
  v194[2] = &unk_1F1081A40;
  v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v194 forKeys:v193 count:3];
  v124 = arg;
  v202 = 0;
  v203 = &v202;
  v204 = 0x2020000000;
  v125 = getCMPhotoCompressionSessionOpenEmptyContainerSymbolLoc(void)::ptr;
  v205 = getCMPhotoCompressionSessionOpenEmptyContainerSymbolLoc(void)::ptr;
  if (!getCMPhotoCompressionSessionOpenEmptyContainerSymbolLoc(void)::ptr)
  {
    *bytes = MEMORY[0x1E69E9820];
    v198 = 3221225472;
    v199 = ___ZL55getCMPhotoCompressionSessionOpenEmptyContainerSymbolLocv_block_invoke;
    v200 = &unk_1E75C1E10;
    v201 = &v202;
    v126 = CMPhotoLibrary();
    v127 = dlsym(v126, "CMPhotoCompressionSessionOpenEmptyContainer");
    *(v201[1] + 24) = v127;
    getCMPhotoCompressionSessionOpenEmptyContainerSymbolLoc(void)::ptr = *(v201[1] + 24);
    v125 = v203[3];
  }

  _Block_object_dispose(&v202, 8);
  if (!v125)
  {
    [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:];
  }

  v128 = v125(v124, v123);
  v130 = v128;
  if (v128)
  {
    v131 = ci_logger_api(v128, v129);
    if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:v130 depth:? allowAlpha:? containerFormat:? colorSpace:? options:? error:?];
    }

    v132 = imageRepError(9, &cfstr_FailedToOpenTh.isa);
LABEL_198:
    v46 = v132;
    v154 = v132;
    goto LABEL_18;
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v156 = [dictionary objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
  v157 = v156;
  if (!v11 && v156)
  {
    [dictionary2 setObject:v156 forKeyedSubscript:getkCMPhotoCompressionOption_ImageOrientation()];
  }

  [dictionary2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v176), getkCMPhotoCompressionOption_Subsampling()}];
  if (v181)
  {
    [dictionary2 setObject:&unk_1F10819F8 forKeyedSubscript:getkCMPhotoCompressionOption_QualityControllerType()];
    v191 = getkCMPhotoQualityControllerParameter_QualityValue();
    v192 = v181;
    [dictionary2 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v192, &v191, 1), getkCMPhotoCompressionOption_QualityControllerParameters()}];
  }

  v202 = 0;
  if (pixelBufferOut)
  {
    v158 = pixelBufferOut;
  }

  else
  {
    v158 = v183;
  }

  v159 = soft_CMPhotoCompressionSessionAddImage(arg, dictionary2, v158, &v202);
  v161 = v159;
  if (v159)
  {
    v162 = ci_logger_api(v159, v160);
    if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:v161 depth:? allowAlpha:? containerFormat:? colorSpace:? options:? error:?];
    }

    v163 = imageRepError(10, &cfstr_FailedToAddIma.isa);
LABEL_229:
    v46 = v163;
    v175 = v163;
    goto LABEL_18;
  }

  if (pixelBufferOut)
  {
    v165 = v177;
  }

  else
  {
    v165 = 0;
  }

  if (v165 == 1)
  {
    *bytes = 0;
    v198 = bytes;
    v199 = 0x2020000000;
    LOBYTE(v200) = 1;
    v184[0] = MEMORY[0x1E69E9820];
    v184[1] = 3221225472;
    v184[2] = __122__CIContext_ImageRepresentation___CMPhotoRepresentationOfImage_depth_allowAlpha_containerFormat_colorSpace_options_error___block_invoke_228;
    v184[3] = &unk_1E75C2328;
    v185 = v75;
    v184[4] = bytes;
    PixelBufferApplyPlaneReadOnlyBlock(pixelBufferOut, v184);
    if ((*(v198 + 24) & 1) == 0)
    {
      v166 = soft_CMPhotoCompressionSessionAddAuxiliaryImage(arg, v202, 3, 0, 0, pixelBufferOut);
      v168 = v166;
      if (v166)
      {
        v169 = ci_logger_api(v166, v167);
        if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
        {
          [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:v168 depth:? allowAlpha:? containerFormat:? colorSpace:? options:? error:?];
        }
      }
    }

    _Block_object_dispose(bytes, 8);
  }

  [(CIContext *)self _addSemanticImages:image session:arg imageHandle:v202 options:optionsCopy];
  [(CIContext *)self _addPortraitMatte:image session:arg imageHandle:v202 options:optionsCopy];
  [(CIContext *)self _addGainMap:image session:arg imageHandle:v202 containerFormat:v11 options:optionsCopy orientation:v157];
  [(CIContext *)self _addDepthMap:image session:arg imageHandle:v202 options:optionsCopy];
  if (dictionary)
  {
    soft_CMPhotoCompressionSessionAddMetadataFromImageProperties(arg, v202, dictionary, v170);
  }

  v171 = soft_CMPhotoCompressionSessionCloseContainerAndCopyBacking(arg, &v190);
  v173 = v171;
  if (v171)
  {
    v174 = ci_logger_api(v171, v172);
    if (os_log_type_enabled(v174, OS_LOG_TYPE_ERROR))
    {
      [CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:v173 depth:? allowAlpha:? containerFormat:? colorSpace:? options:? error:?];
    }

    v163 = imageRepError(11, &cfstr_FailedToCloseT.isa);
    goto LABEL_229;
  }

  v46 = 0;
LABEL_18:
  objc_autoreleasePoolPop(v16);
  v48 = v46;
  if (error)
  {
    *error = v46;
  }

  return v190;
}

void __122__CIContext_ImageRepresentation___CMPhotoRepresentationOfImage_depth_allowAlpha_containerFormat_colorSpace_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, size_t a4, size_t a5, size_t a6)
{
  v11 = *(a1 + 48);
  if (v11 == 1111970369 || v11 == 1279340600)
  {
    v13 = 8;
  }

  else
  {
    v13 = 16;
  }

  v14 = CI::format_from_PixelFormatType(v11);
  v15 = CI::format_CGBitmapInfo(v14, 1);
  v16 = CGBitmapContextCreate(a2, a4, a5, v13, a6, *(a1 + 32), v15);
  v18.size.width = a4;
  v18.size.height = a5;
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  CGContextDrawImage(v16, v18, *(a1 + 40));

  CGContextRelease(v16);
}

uint64_t __122__CIContext_ImageRepresentation___CMPhotoRepresentationOfImage_depth_allowAlpha_containerFormat_colorSpace_options_error___block_invoke_228(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v6 = 0;
    v7 = *(result + 40);
    if (v7 == 1380401729 || v7 == 1815491698)
    {
      v9 = 4;
    }

    else
    {
      v9 = 2;
    }

    do
    {
      if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
      {
        break;
      }

      if (v7 == 1279340854 || v7 == 1815491698)
      {
        if (a4)
        {
          v10 = (4 * (((v9 - 2) >> 1) & 0x7FFFFFFF)) | 2;
          v11 = a4;
          do
          {
            v12 = *(*(result + 32) + 8);
            if (*(v12 + 24) != 1)
            {
              break;
            }

            if (*(a2 + v10) != -1)
            {
              *(v12 + 24) = 0;
            }

            v10 += 2 * v9;
            --v11;
          }

          while (v11);
        }
      }

      else
      {
        v13 = (v9 - 1);
        for (i = a4; i; --i)
        {
          v15 = *(*(result + 32) + 8);
          if (*(v15 + 24) != 1)
          {
            break;
          }

          if (*(a2 + v13) != 255)
          {
            *(v15 + 24) = 0;
          }

          v13 += v9;
        }
      }

      ++v6;
      a2 += a6;
    }

    while (v6 != a5);
  }

  return result;
}

- (id)_JPEGRepresentationOfImage:(id)image colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  if (canCreateDataRepresentation(image, space, error))
  {
    return [(CIContext *)self _CMPhotoRepresentationOfImage:image depth:8 allowAlpha:0 containerFormat:1 colorSpace:space options:options error:error];
  }

  else
  {
    return 0;
  }
}

- (NSData)OpenEXRRepresentationOfImage:(CIImage *)image options:(NSDictionary *)options error:(NSError *)errorPtr
{
  if (!canCreateDataRepresentation(image, errorPtr))
  {
    return 0;
  }

  v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  CFAutorelease(v9);
  LOBYTE(v11) = 0;
  return [(CIContext *)self _dataRepresentationOfImage:image UTIType:@"com.ilm.openexr-image" format:2056 premultiplied:0 colorSpace:v9 options:options addAuxData:v11 keysToMerge:0 error:errorPtr];
}

- (id)_HEIFRepresentationOfImage:(id)image format:(int)format colorSpace:(CGColorSpace *)space options:(id)options error:(id *)error
{
  v12 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) _HEIFRepresentationOfImage:format:colorSpace:options:error:]", image);
  v13 = v12;
  if (canCreateDataRepresentation(image, space, v12, error))
  {
    return [(CIContext *)self _CMPhotoRepresentationOfImage:image depth:8 allowAlpha:CI::format_has_alpha(v13) containerFormat:0 colorSpace:space options:options error:error];
  }

  else
  {
    return 0;
  }
}

- (NSData)HEIF10RepresentationOfImage:(CIImage *)image colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  if (canCreateDataRepresentation(image, colorSpace, errorPtr))
  {
    return [(CIContext *)self _CMPhotoRepresentationOfImage:image depth:10 allowAlpha:1 containerFormat:0 colorSpace:colorSpace options:options error:errorPtr];
  }

  else
  {
    return 0;
  }
}

- (BOOL)writeTIFFRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v23[2] = *MEMORY[0x1E69E9840];
  v14 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) writeTIFFRepresentationOfImage:toURL:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, colorSpace, v14, errorPtr))
  {
    return 0;
  }

  v21 = 0;
  v15 = [(CIContext *)self _TIFFRepresentationOfImage:image format:v14 colorSpace:colorSpace options:options error:&v21];
  if (v15)
  {
    v16 = [v15 writeToURL:url options:1 error:&v21];
    if (!errorPtr)
    {
      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (!errorPtr)
    {
      return v16;
    }
  }

  if ((v16 & 1) == 0)
  {
    if (v21)
    {
      v22[0] = *MEMORY[0x1E696AA08];
      v22[1] = @"CINonLocalizedDescriptionKey";
      v23[0] = v21;
      v23[1] = @"failed to write TIFF data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 2;
    }

    else
    {
      v22[0] = @"CINonLocalizedDescriptionKey";
      v23[0] = @"failed to write TIFF data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 1;
    }

    v19 = [v17 dictionaryWithObjects:v23 forKeys:v22 count:v18];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v19];
  }

  return v16;
}

- (BOOL)writePNGRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v23[2] = *MEMORY[0x1E69E9840];
  v14 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) writePNGRepresentationOfImage:toURL:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, colorSpace, v14, errorPtr))
  {
    return 0;
  }

  v21 = 0;
  v15 = [(CIContext *)self _PNGRepresentationOfImage:image format:v14 colorSpace:colorSpace options:options error:&v21];
  if (v15)
  {
    v16 = [v15 writeToURL:url options:1 error:&v21];
    if (!errorPtr)
    {
      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (!errorPtr)
    {
      return v16;
    }
  }

  if ((v16 & 1) == 0)
  {
    if (v21)
    {
      v22[0] = *MEMORY[0x1E696AA08];
      v22[1] = @"CINonLocalizedDescriptionKey";
      v23[0] = v21;
      v23[1] = @"failed to write PNG data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 2;
    }

    else
    {
      v22[0] = @"CINonLocalizedDescriptionKey";
      v23[0] = @"failed to write PNG data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 1;
    }

    v19 = [v17 dictionaryWithObjects:v23 forKeys:v22 count:v18];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v19];
  }

  return v16;
}

- (BOOL)writeJPEGRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (!canCreateDataRepresentation(image, colorSpace, errorPtr))
  {
    return 0;
  }

  v19 = 0;
  v13 = [(CIContext *)self _JPEGRepresentationOfImage:image colorSpace:colorSpace options:options error:&v19];
  if (v13)
  {
    v14 = [v13 writeToURL:url options:1 error:&v19];
    if (!errorPtr)
    {
      return v14;
    }
  }

  else
  {
    v14 = 0;
    if (!errorPtr)
    {
      return v14;
    }
  }

  if ((v14 & 1) == 0)
  {
    if (v19)
    {
      v20[0] = *MEMORY[0x1E696AA08];
      v20[1] = @"CINonLocalizedDescriptionKey";
      v21[0] = v19;
      v21[1] = @"failed to write JPEG data to file.";
      v15 = MEMORY[0x1E695DF20];
      v16 = 2;
    }

    else
    {
      v20[0] = @"CINonLocalizedDescriptionKey";
      v21[0] = @"failed to write JPEG data to file.";
      v15 = MEMORY[0x1E695DF20];
      v16 = 1;
    }

    v17 = [v15 dictionaryWithObjects:v21 forKeys:v20 count:v16];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v17];
  }

  return v14;
}

- (BOOL)writeHEIFRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url format:(CIFormat)format colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v23[2] = *MEMORY[0x1E69E9840];
  v14 = CI::format_modernize(*&format, "[CIContext(ImageRepresentation) writeHEIFRepresentationOfImage:toURL:format:colorSpace:options:error:]", image);
  if (!canCreateDataRepresentation(image, colorSpace, v14, errorPtr))
  {
    return 0;
  }

  v21 = 0;
  v15 = [(CIContext *)self _HEIFRepresentationOfImage:image format:v14 colorSpace:colorSpace options:options error:&v21];
  if (v15)
  {
    v16 = [v15 writeToURL:url options:1 error:&v21];
    if (!errorPtr)
    {
      return v16;
    }
  }

  else
  {
    v16 = 0;
    if (!errorPtr)
    {
      return v16;
    }
  }

  if ((v16 & 1) == 0)
  {
    if (v21)
    {
      v22[0] = *MEMORY[0x1E696AA08];
      v22[1] = @"CINonLocalizedDescriptionKey";
      v23[0] = v21;
      v23[1] = @"failed to write HEIC data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 2;
    }

    else
    {
      v22[0] = @"CINonLocalizedDescriptionKey";
      v23[0] = @"failed to write HEIC data to file.";
      v17 = MEMORY[0x1E695DF20];
      v18 = 1;
    }

    v19 = [v17 dictionaryWithObjects:v23 forKeys:v22 count:v18];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v19];
  }

  return v16;
}

- (BOOL)writeHEIF10RepresentationOfImage:(CIImage *)image toURL:(NSURL *)url colorSpace:(CGColorSpaceRef)colorSpace options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (!canCreateDataRepresentation(image, colorSpace, errorPtr))
  {
    return 0;
  }

  v19 = 0;
  v13 = [(CIContext *)self HEIF10RepresentationOfImage:image colorSpace:colorSpace options:options error:&v19];
  if (v13)
  {
    v14 = [(NSData *)v13 writeToURL:url options:1 error:&v19];
    if (!errorPtr)
    {
      return v14;
    }
  }

  else
  {
    v14 = 0;
    if (!errorPtr)
    {
      return v14;
    }
  }

  if (!v14)
  {
    if (v19)
    {
      v20[0] = *MEMORY[0x1E696AA08];
      v20[1] = @"CINonLocalizedDescriptionKey";
      v21[0] = v19;
      v21[1] = @"failed to write HEIC data to file.";
      v15 = MEMORY[0x1E695DF20];
      v16 = 2;
    }

    else
    {
      v20[0] = @"CINonLocalizedDescriptionKey";
      v21[0] = @"failed to write HEIC data to file.";
      v15 = MEMORY[0x1E695DF20];
      v16 = 1;
    }

    v17 = [v15 dictionaryWithObjects:v21 forKeys:v20 count:v16];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v17];
  }

  return v14;
}

- (BOOL)writeOpenEXRRepresentationOfImage:(CIImage *)image toURL:(NSURL *)url options:(NSDictionary *)options error:(NSError *)errorPtr
{
  v19[2] = *MEMORY[0x1E69E9840];
  if (!canCreateDataRepresentation(image, errorPtr))
  {
    return 0;
  }

  v17 = 0;
  v11 = [(CIContext *)self OpenEXRRepresentationOfImage:image options:options error:&v17];
  if (v11)
  {
    v12 = [(NSData *)v11 writeToURL:url options:1 error:&v17];
    if (!errorPtr)
    {
      return v12;
    }
  }

  else
  {
    v12 = 0;
    if (!errorPtr)
    {
      return v12;
    }
  }

  if (!v12)
  {
    if (v17)
    {
      v18[0] = *MEMORY[0x1E696AA08];
      v18[1] = @"CINonLocalizedDescriptionKey";
      v19[0] = v17;
      v19[1] = @"failed to write OpenEXR data to file.";
      v13 = MEMORY[0x1E695DF20];
      v14 = 2;
    }

    else
    {
      v18[0] = @"CINonLocalizedDescriptionKey";
      v19[0] = @"failed to write OpenEXR data to file.";
      v13 = MEMORY[0x1E695DF20];
      v14 = 1;
    }

    v15 = [v13 dictionaryWithObjects:v19 forKeys:v18 count:v14];
    *errorPtr = [MEMORY[0x1E696ABC0] errorWithDomain:@"CINonLocalizedDescriptionKey" code:3 userInfo:v15];
  }

  return v12;
}

- (CIFilter)depthBlurEffectFilterForImageData:(NSData *)data options:(NSDictionary *)options
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = [CIImage imageWithData:?];
  v44 = @"kCIImageAuxiliaryDisparity";
  v45[0] = &unk_1F1081A58;
  v7 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1]);
  v42 = @"kCIImageAuxiliaryPortraitEffectsMatte";
  v43 = &unk_1F1081A58;
  v8 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1]);
  v40 = @"kCIImageAuxiliarySemanticSegmentationHairMatte";
  v41 = &unk_1F1081A58;
  v9 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1]);
  v38 = @"kCIImageAuxiliarySemanticSegmentationGlassesMatte";
  v39 = &unk_1F1081A58;
  v10 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1]);
  v36 = @"kCIImageAuxiliaryHDRGainMap";
  v37 = &unk_1F1081A58;
  v11 = +[CIImage imageWithData:options:](CIImage, "imageWithData:options:", data, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1]);
  if (!v6)
  {
    v17 = ci_logger_api(v11, v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIDepthBlurEffect) *)v17 depthBlurEffectFilterForImageData:v18 options:v19, v20, v21, v22, v23, v24];
    }

    return 0;
  }

  if (!v7)
  {
    v25 = ci_logger_api(v11, v12);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIDepthBlurEffect) *)v25 depthBlurEffectFilterForImageData:v26 options:v27, v28, v29, v30, v31, v32];
    }

    return 0;
  }

  v13 = v11;
  properties = [(CIImage *)v6 properties];
  if (properties)
  {
    v15 = [-[NSDictionary objectForKey:](properties objectForKey:{@"Orientation", "intValue"}];
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 8)
    {
      v16 = 8;
    }
  }

  else
  {
    v16 = 1;
  }

  LODWORD(v34) = v16;
  return [(CIContext *)self depthBlurEffectFilterForImage:v6 disparityImage:v7 portraitEffectsMatte:v8 hairSemanticSegmentation:v9 glassesMatte:v10 gainMap:v13 orientation:v34 options:options];
}

- (CIFilter)depthBlurEffectFilterForImageURL:(NSURL *)url options:(NSDictionary *)options
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = [CIImage imageWithContentsOfURL:?];
  v44 = @"kCIImageAuxiliaryDisparity";
  v45[0] = &unk_1F1081A58;
  v7 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1]);
  v42 = @"kCIImageAuxiliaryPortraitEffectsMatte";
  v43 = &unk_1F1081A58;
  v8 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1]);
  v40 = @"kCIImageAuxiliarySemanticSegmentationHairMatte";
  v41 = &unk_1F1081A58;
  v9 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1]);
  v38 = @"kCIImageAuxiliarySemanticSegmentationGlassesMatte";
  v39 = &unk_1F1081A58;
  v10 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1]);
  v36 = @"kCIImageAuxiliaryHDRGainMap";
  v37 = &unk_1F1081A58;
  v11 = +[CIImage imageWithContentsOfURL:options:](CIImage, "imageWithContentsOfURL:options:", url, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1]);
  if (!v6)
  {
    v17 = ci_logger_api(v11, v12);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIDepthBlurEffect) *)v17 depthBlurEffectFilterForImageURL:v18 options:v19, v20, v21, v22, v23, v24];
    }

    return 0;
  }

  if (!v7)
  {
    v25 = ci_logger_api(v11, v12);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIDepthBlurEffect) *)v25 depthBlurEffectFilterForImageURL:v26 options:v27, v28, v29, v30, v31, v32];
    }

    return 0;
  }

  v13 = v11;
  properties = [(CIImage *)v6 properties];
  if (properties)
  {
    v15 = [-[NSDictionary objectForKey:](properties objectForKey:{@"Orientation", "intValue"}];
    if (v15 <= 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = v15;
    }

    if (v16 >= 8)
    {
      v16 = 8;
    }
  }

  else
  {
    v16 = 1;
  }

  LODWORD(v34) = v16;
  return [(CIContext *)self depthBlurEffectFilterForImage:v6 disparityImage:v7 portraitEffectsMatte:v8 hairSemanticSegmentation:v9 glassesMatte:v10 gainMap:v13 orientation:v34 options:options];
}

- (void)_performFaceDetection:(id)detection image:(id)image orientation:(int)orientation filter:(id)filter
{
  v7 = *&orientation;
  v87[1] = *MEMORY[0x1E69E9840];
  v9 = [CIDetector detectorOfType:@"CIDetectorTypeFace" context:self options:MEMORY[0x1E695E0F8]];
  CGAffineTransformMakeScale(&v84, 0.25, 0.25);
  v10 = [image imageByApplyingTransform:&v84 highQualityDownsample:0];
  [v10 extent];
  if (v11 < 1024.0 || ([v10 extent], v12 < 1024.0))
  {
    [image extent];
    v74 = v13;
    [image extent];
    v14.f64[0] = v74;
    v14.f64[1] = v15;
    v16 = vcvtq_f64_f32(vcvt_f32_f64(vmulq_f64(v14, vdupq_n_s64(0x3F50000000000000uLL))));
    __asm { FMOV            V1.2D, #1.0 }

    v21 = vdivq_f64(_Q1, v16);
    if (v21.f64[0] >= v21.f64[1])
    {
      v21.f64[0] = v21.f64[1];
    }

    v22 = v21.f64[0];
    CGAffineTransformMakeScale(&v84, v22, v22);
    v10 = [image imageByApplyingTransform:&v84 highQualityDownsample:0];
  }

  v86 = @"CIDetectorImageOrientation";
  v87[0] = [MEMORY[0x1E696AD98] numberWithInt:v7];
  v23 = -[CIDetector featuresInImage:options:](v9, "featuresInImage:options:", v10, [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1]);
  if (v23)
  {
    v24 = v23;
    if ([(NSArray *)v23 count]<= 4)
    {
      v25 = [(NSArray *)v24 count];
      if (!v25)
      {
        return;
      }
    }

    else
    {
      v25 = 4;
    }

    v26 = malloc_type_calloc(8 * v25, 8uLL, 0x100004000313F17uLL);
    if (v26)
    {
      v27 = v26;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v28 = [(NSArray *)v24 countByEnumeratingWithState:&v76 objects:v85 count:16];
      if (v28)
      {
        v29 = v28;
        v73 = v10;
        v30 = 0;
        v70 = &v27[2 * v25];
        v71 = &v27[4 * v25];
        v72 = &v27[6 * v25];
        v31 = *v77;
        v75 = v27;
LABEL_13:
        v32 = 0;
        while (1)
        {
          if (*v77 != v31)
          {
            objc_enumerationMutation(v24);
          }

          if (v30 > 3)
          {
            break;
          }

          v33 = *(*(&v76 + 1) + 8 * v32);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v33 hasLeftEyePosition])
            {
              if ([v33 hasRightEyePosition])
              {
                landmarks = [v33 landmarks];
                if (landmarks)
                {
                  v35 = landmarks;
                  if ([landmarks objectForKeyedSubscript:@"nose"])
                  {
                    v36 = [v35 objectForKeyedSubscript:@"faceContour"];
                    v37 = 0.0;
                    if ([v33 hasFaceAngle])
                    {
                      [v33 faceAngle];
                      v37 = v38 * 3.14159265;
                    }

                    if (v36 && [v36 count])
                    {
                      [objc_msgSend(v36 objectAtIndexedSubscript:{0), "CGPointValue"}];
                      v40 = v39;
                      memset(&v84, 0, sizeof(v84));
                      if (v73)
                      {
                        objc_msgSend_imageTransformForOrientation_(v73);
                      }

                      filterCopy = filter;
                      memset(&v83, 0, sizeof(v83));
                      CGAffineTransformMakeRotation(&v83, v37 / 180.0);
                      t1 = v84;
                      memset(&v82, 0, sizeof(v82));
                      t2 = v83;
                      CGAffineTransformConcat(&v82, &t1, &t2);
                      v41 = 0;
                      if ([v36 count])
                      {
                        v42 = 0;
                        do
                        {
                          [objc_msgSend(v36 objectAtIndexedSubscript:{v42), "CGPointValue"}];
                          v45 = v82.ty + v43 * v82.d + v82.b * v44;
                          if (v45 < v40 || v42 == 0)
                          {
                            v41 = v42;
                            v40 = v45;
                          }

                          ++v42;
                        }

                        while (v42 < [v36 count]);
                      }

                      [objc_msgSend(v36 objectAtIndexedSubscript:{v41), "CGPointValue"}];
                      v48 = v47;
                      v50 = v49;
                      v51 = *MEMORY[0x1E695EFF8];
                      v52 = *(MEMORY[0x1E695EFF8] + 8);
                      filter = filterCopy;
                    }

                    else
                    {
                      v51 = *MEMORY[0x1E695EFF8];
                      v52 = *(MEMORY[0x1E695EFF8] + 8);
                      v48 = *MEMORY[0x1E695EFF8];
                      v50 = v52;
                    }

                    v53 = v48 == v51 && v50 == v52;
                    v27 = v75;
                    if (!v53)
                    {
                      v54 = CIVNAverage([v35 objectForKeyedSubscript:@"nose"]);
                      v56 = v55;
                      [v33 leftEyePosition];
                      v75[2 * v30] = v57;
                      [v33 leftEyePosition];
                      v58 = (16 * v30) | 8;
                      *(v75 + v58) = v59;
                      [v33 rightEyePosition];
                      v70[2 * v30] = v60;
                      [v33 rightEyePosition];
                      *(v70 + v58) = v61;
                      v27 = v75;
                      v72[2 * v30] = v48;
                      *(v72 + v58) = v50;
                      v71[2 * v30++] = v54;
                      *(v71 + v58) = v56;
                    }
                  }
                }
              }
            }
          }

          if (++v32 == v29)
          {
            v29 = [(NSArray *)v24 countByEnumeratingWithState:&v76 objects:v85 count:16];
            if (v29)
            {
              goto LABEL_13;
            }

            break;
          }
        }

        if (v30 >= 5)
        {
          [CIContext(CIDepthBlurEffect) _performFaceDetection:image:orientation:filter:];
        }

        if (v30)
        {
          [v73 extent];
          v69 = v62;
          [v73 extent];
          v63 = 4 * v30;
          v64 = vdupq_lane_s64(v69, 0);
          v66 = vdupq_lane_s64(v65, 0);
          v67 = v27;
          do
          {
            v88 = vld2q_f64(v67);
            v89.val[0] = vdivq_f64(v88.val[0], v64);
            v89.val[1] = vdivq_f64(v88.val[1], v66);
            vst2q_f64(v67, v89);
            v67 += 4;
            v63 -= 2;
          }

          while (v63);
          [filter setValue:+[CIVector vectorWithValues:count:](CIVector forKey:{"vectorWithValues:count:", v27, 2 * v30), @"inputLeftEyePositions"}];
          [filter setValue:+[CIVector vectorWithValues:count:](CIVector forKey:{"vectorWithValues:count:", v70, 2 * v30), @"inputRightEyePositions"}];
          [filter setValue:+[CIVector vectorWithValues:count:](CIVector forKey:{"vectorWithValues:count:", v71, 2 * v30), @"inputNosePositions"}];
          [filter setValue:+[CIVector vectorWithValues:count:](CIVector forKey:{"vectorWithValues:count:", v72, 2 * v30), @"inputChinPositions"}];
        }
      }

      free(v27);
    }
  }
}

- (CIFilter)depthBlurEffectFilterForImage:(CIImage *)image disparityImage:(CIImage *)disparityImage portraitEffectsMatte:(CIImage *)portraitEffectsMatte hairSemanticSegmentation:(CIImage *)hairSemanticSegmentation glassesMatte:(CIImage *)glassesMatte gainMap:(CIImage *)gainMap orientation:(CGImagePropertyOrientation)orientation options:(NSDictionary *)options
{
  v82 = *MEMORY[0x1E69E9840];
  if (!image || !disparityImage)
  {
    v31 = ci_logger_api(self, a2);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImage:v31 disparityImage:v32 portraitEffectsMatte:v33 hairSemanticSegmentation:v34 glassesMatte:v35 gainMap:v36 orientation:v37 options:v38];
    }

    return 0;
  }

  [(CIImage *)image extent];
  x = v83.origin.x;
  y = v83.origin.y;
  width = v83.size.width;
  height = v83.size.height;
  IsEmpty = CGRectIsEmpty(v83);
  if (IsEmpty || (v84.origin.x = x, v84.origin.y = y, v84.size.width = width, v84.size.height = height, IsEmpty = CGRectIsInfinite(v84)))
  {
    v23 = ci_logger_api(IsEmpty, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImage:v23 disparityImage:v24 portraitEffectsMatte:v25 hairSemanticSegmentation:v26 glassesMatte:v27 gainMap:v28 orientation:v29 options:v30];
    }

    return 0;
  }

  v41 = orientation;
  if (orientation - 9 <= 0xFFFFFFF7)
  {
    v42 = ci_logger_api(IsEmpty, v22);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImage:v42 disparityImage:v43 portraitEffectsMatte:v44 hairSemanticSegmentation:v45 glassesMatte:v46 gainMap:v47 orientation:v48 options:v49];
    }

    return 0;
  }

  v39 = [CIFilter filterWithName:@"CIDepthBlurEffect"];
  [(CIFilter *)v39 setDefaults];
  [(CIFilter *)v39 setValue:image forKey:@"inputImage"];
  [(CIFilter *)v39 setValue:disparityImage forKey:@"inputDisparityImage"];
  if (portraitEffectsMatte)
  {
    [(CIFilter *)v39 setValue:portraitEffectsMatte forKey:@"inputMatteImage"];
  }

  if (hairSemanticSegmentation)
  {
    [(CIFilter *)v39 setValue:hairSemanticSegmentation forKey:@"inputHairImage"];
  }

  if (glassesMatte)
  {
    [(CIFilter *)v39 setValue:glassesMatte forKey:@"inputGlassesImage"];
  }

  if (gainMap)
  {
    [(CIFilter *)v39 setValue:gainMap forKey:@"inputGainMap"];
  }

  properties = [(CIImage *)disparityImage properties];
  if (properties)
  {
    v51 = [(NSDictionary *)properties objectForKeyedSubscript:*MEMORY[0x1E696D228]];
    if (v51)
    {
      v52 = v51;
      [(CIFilter *)v39 setValue:v51 forKey:@"inputAuxDataMetadata"];
      v53 = CGImageMetadataCopyTagWithPath(v52, 0, @"depthBlurEffect:SimulatedAperture");
      if (v53)
      {
        v54 = v53;
        [CGImageMetadataTagCopyValue(v53) floatValue];
        -[CIFilter setValue:forKey:](v39, "setValue:forKey:", [MEMORY[0x1E696AD98] numberWithFloat:?], @"inputAperture");
        CFRelease(v54);
      }
    }
  }

  depthData = [(CIImage *)disparityImage depthData];
  v57 = AVFDepthCameraCalibrationData(depthData, v56);
  if (v57)
  {
    [(CIFilter *)v39 setValue:v57 forKey:@"inputCalibrationData"];
  }

  v58 = options;
  if ([(CIImage *)image properties])
  {
    properties2 = [(CIImage *)image properties];
    Value = CFDictionaryGetValue(properties2, *MEMORY[0x1E696DE30]);
    if (Value)
    {
      v61 = CFDictionaryGetValue(Value, @"29");
      if (v61)
      {
        [(CIFilter *)v39 setValue:v61 forKey:@"inputLumaNoiseScale"];
      }
    }
  }

  properties3 = [(CIImage *)image properties];
  if (properties3)
  {
    v63 = [(NSDictionary *)properties3 objectForKey:*MEMORY[0x1E696D8B0]];
    if (v63)
    {
      v64 = [v63 objectForKey:@"Regions"];
      if (v64)
      {
        v65 = [v64 objectForKey:*MEMORY[0x1E696D930]];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v66 = [v65 countByEnumeratingWithState:&v77 objects:v81 count:16];
        if (v66)
        {
          v67 = v66;
          v68 = *v78;
          v69 = *MEMORY[0x1E696D938];
          v70 = *MEMORY[0x1E696D920];
          v75 = options;
          while (2)
          {
            for (i = 0; i != v67; ++i)
            {
              if (*v78 != v68)
              {
                objc_enumerationMutation(v65);
              }

              v72 = *(*(&v77 + 1) + 8 * i);
              v73 = [v72 objectForKey:{v69, v75}];
              if (v73 && [v73 isEqualToString:v70] && CGRectMakeWithDictionaryRepresentation(v72, &rect))
              {
                rect.origin.x = rect.origin.x - rect.size.width * 0.5;
                rect.origin.y = 1.0 - rect.origin.y - rect.size.height * 0.5;
                v74 = [CIVector vectorWithCGRect:?];
                v41 = orientation;
                v58 = v75;
                if (v74)
                {
                  [(CIFilter *)v39 setValue:v74 forKey:@"inputFocusRect"];
                }

                goto LABEL_48;
              }
            }

            v67 = [v65 countByEnumeratingWithState:&v77 objects:v81 count:16];
            v41 = orientation;
            v58 = v75;
            if (v67)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

LABEL_48:
  [(CIContext *)self _performFaceDetection:v58 image:image orientation:v41 filter:v39];
  return v39;
}

- (CIRenderTask)startTaskToRender:(CIImage *)image fromRect:(CGRect)fromRect toDestination:(CIRenderDestination *)destination atPoint:(CGPoint)atPoint error:(NSError *)error
{
  y = atPoint.y;
  x = atPoint.x;
  v11 = fromRect.origin.y;
  v12 = fromRect.origin.x;
  v14 = [(CIImage *)image imageByCroppingToRect:fromRect.origin.x, fromRect.origin.y, fromRect.size.width, fromRect.size.height];
  CGAffineTransformMakeTranslation(&v16, x - v12, y - v11);
  return [(CIContext *)self startTaskToRender:[(CIImage *)v14 imageByApplyingTransform:&v16] toDestination:destination error:error];
}

- (id)_startTaskToRender:(id)render toDestination:(id)destination forPrepareRender:(BOOL)prepareRender forClear:(BOOL)clear error:(id *)error
{
  prepareRenderCopy = prepareRender;
  v150[4] = *MEMORY[0x1E69E9840];
  [(CIContext *)self _gpuContextCheck];
  _internalContext = [(CIContext *)self _internalContext];
  if (!_internalContext)
  {
    if (error)
    {
      _internalContext = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:1 userInfo:&unk_1F1082640];
      *error = _internalContext;
    }

    v37 = ci_logger_api(_internalContext, v14);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)v37 _startTaskToRender:v38 toDestination:v39 forPrepareRender:v40 forClear:v41 error:v42, v43, v44];
    }

    return 0;
  }

  if (!destination)
  {
    if (error)
    {
      _internalContext = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:2 userInfo:&unk_1F1082668];
      *error = _internalContext;
    }

    v53 = ci_logger_api(_internalContext, v14);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)v53 _startTaskToRender:v54 toDestination:v55 forPrepareRender:v56 forClear:v57 error:v58, v59, v60];
    }

    return 0;
  }

  v15 = _internalContext;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 || (isKindOfClass = [destination _internalRepresentation]) == 0)
  {
    if (error)
    {
      isKindOfClass = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:3 userInfo:&unk_1F1082690];
      *error = isKindOfClass;
    }

    v45 = ci_logger_api(isKindOfClass, v17);
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)v45 _startTaskToRender:v46 toDestination:v47 forPrepareRender:v48 forClear:v49 error:v50, v51, v52];
    }

    return 0;
  }

  [render extent];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  width = [destination width];
  v153.size.height = [destination height];
  v153.origin.x = 0.0;
  v153.origin.y = 0.0;
  v151.origin.x = v19;
  v151.origin.y = v21;
  v151.size.width = v23;
  v151.size.height = v25;
  v153.size.width = width;
  v152 = CGRectIntersection(v151, v153);
  IsEmpty = CGRectIsEmpty(v152);
  if (IsEmpty)
  {
    if (error)
    {
      IsEmpty = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:4 userInfo:&unk_1F10826B8];
      *error = IsEmpty;
    }

    v29 = ci_logger_api(IsEmpty, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(CIContext(CIRenderDestination) *)v29 _startTaskToRender:v30 toDestination:v31 forPrepareRender:v32 forClear:v33 error:v34, v35, v36];
    }

    return 0;
  }

  format = [destination format];
  _internalContext2 = [(CIContext *)self _internalContext];
  if ((*(*_internalContext2 + 16))(_internalContext2) == 84)
  {
    is_not_supported_as_destination_on_gles = CI::format_is_not_supported_as_destination_on_gles(format);
    if (is_not_supported_as_destination_on_gles)
    {
      if (error)
      {
        is_not_supported_as_destination_on_gles = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:5 userInfo:&unk_1F10826E0];
        *error = is_not_supported_as_destination_on_gles;
      }

      v66 = ci_logger_api(is_not_supported_as_destination_on_gles, v65);
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [CIContext(CIRenderDestination) _startTaskToRender:format toDestination:? forPrepareRender:? forClear:? error:?];
      }

      return 0;
    }
  }

  if ([destination blendKernel])
  {
    alphaMode = [destination alphaMode];
    if (alphaMode == 3)
    {
      if (error)
      {
        alphaMode = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextStartTask" code:6 userInfo:&unk_1F1082708];
        *error = alphaMode;
      }

      v69 = ci_logger_api(alphaMode, v68);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        [(CIContext(CIRenderDestination) *)v69 _startTaskToRender:v70 toDestination:v71 forPrepareRender:v72 forClear:v73 error:v74, v75, v76];
      }

      return 0;
    }
  }

  colorSpace = [destination colorSpace];
  alphaMode2 = [destination alphaMode];
  format2 = [destination format];
  if (!CI_NO_CM() && CI::format_only_alpha(format2))
  {
    colorSpace = 0;
  }

  context = objc_autoreleasePoolPush();
  if (!CI_NO_CM())
  {
    baseColorSpace = [render baseColorSpace];
    if (CI::ColorSpace_is_HDR(baseColorSpace, v115))
    {
      if (colorSpace && (CI::ColorSpace_is_HDR(colorSpace, v116) & 1) == 0 && !CGColorSpaceUsesExtendedRange(colorSpace))
      {
        render = [objc_msgSend(render imageByColorMatchingWorkingSpaceToColorSpace:{baseColorSpace), "imageByToneMappingColorSpaceToWorkingSpace:", baseColorSpace}];
      }
    }
  }

  if ([destination blendKernel] && (v80 = objc_msgSend(destination, "imageRepresentation")) != 0)
  {
    v81 = v80;
    if ([objc_msgSend(destination "blendKernel")])
    {
      [render extent];
      v81 = [v81 imageByCroppingToRect:?];
    }

    if ((*(*v15 + 16))(v15) == 84 || [destination isCompressed])
    {
      v81 = [v81 imageByInsertingIntermediate:0];
    }

    v82 = [destination blendsInDestinationColorSpace] ^ 1;
    if ((v82 & 1) == 0 && colorSpace && !CI_NO_CM())
    {
      render = [render imageByColorMatchingWorkingSpaceToRGBorGrayColorSpace:colorSpace];
      v81 = [v81 imageByColorMatchingWorkingSpaceToRGBorGrayColorSpace:colorSpace];
    }

    render = [objc_msgSend(destination "blendKernel")];
  }

  else
  {
    v82 = 1;
  }

  if (v82 && colorSpace && !CI_NO_CM())
  {
    render = [render imageByColorMatchingWorkingSpaceToRGBorGrayColorSpace:colorSpace];
  }

  v83 = [render imageByCroppingToRect:{0.0, 0.0, objc_msgSend(destination, "width"), objc_msgSend(destination, "height")}];
  _imageByClampingAlpha = v83;
  if (!alphaMode2)
  {
    [(CIImage *)v83 extent];
    _imageByClampingAlpha = [(CIImage *)_imageByClampingAlpha imageBySettingAlphaOneInExtent:?];
  }

  if ([destination isClamped])
  {
    _imageByClampingAlpha = [(CIImage *)_imageByClampingAlpha _imageByClampingAlpha];
  }

  _internalRepresentation = [destination _internalRepresentation];
  if (*(_internalRepresentation + 28))
  {
    v86 = *(_internalRepresentation + 32);
    v87 = *(_internalRepresentation + 40);
    v88 = *(_internalRepresentation + 48);
    v89 = *(_internalRepresentation + 56);
    v90 = *(_internalRepresentation + 64);
    v91 = *(_internalRepresentation + 72);
    v92 = *(_internalRepresentation + 80);
    v93 = *(_internalRepresentation + 88);
    v94 = *(_internalRepresentation + 96);
    v95 = *(_internalRepresentation + 104);
    v96 = *(_internalRepresentation + 112);
    v149[0] = @"inputRVector";
    v150[0] = [CIVector vectorWithX:v86 Y:v87 Z:v88];
    v149[1] = @"inputGVector";
    v150[1] = [CIVector vectorWithX:v89 Y:v90 Z:v91];
    v149[2] = @"inputBVector";
    v150[2] = [CIVector vectorWithX:v92 Y:v93 Z:v94];
    v149[3] = @"inputBiasVector";
    v150[3] = [CIVector vectorWithX:v95 Y:v96 Z:v96];
    _imageByClampingAlpha = -[CIImage imageByApplyingFilter:withInputParameters:](_imageByClampingAlpha, "imageByApplyingFilter:withInputParameters:", @"CIColorMatrix", [MEMORY[0x1E695DF20] dictionaryWithObjects:v150 forKeys:v149 count:4]);
  }

  if ([destination isDithered])
  {
    _imageByClampingAlpha = ditherImage(_imageByClampingAlpha, [destination ditherDepth], objc_msgSend(destination, "colorSpace"));
  }

  if (alphaMode2 == 2)
  {
    _imageByClampingAlpha = [(CIImage *)_imageByClampingAlpha imageByUnpremultiplyingAlpha];
  }

  if ([destination isFlipped])
  {
    v146 = 0;
    buf = 0x3FF0000000000000uLL;
    v147 = xmmword_19CF25100;
    height = [destination height];
    _imageByClampingAlpha = [(CIImage *)_imageByClampingAlpha imageByApplyingTransform:&buf];
  }

  captureTraceURL = [destination captureTraceURL];
  v98 = 0;
  if (clear)
  {
    v100 = 0;
    mEMORY[0x1E6974000] = 0;
    goto LABEL_90;
  }

  v99 = captureTraceURL;
  v100 = 0;
  mEMORY[0x1E6974000] = 0;
  if (!captureTraceURL)
  {
    goto LABEL_90;
  }

  if (![(CIContext *)self device])
  {
    goto LABEL_89;
  }

  isFileURL = [v99 isFileURL];
  if (!isFileURL || (isFileURL = [objc_msgSend(v99 "path")], !isFileURL))
  {
    v117 = ci_logger_api(isFileURL, v103);
    if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:];
    }

LABEL_89:
    v98 = 0;
    v100 = 0;
    mEMORY[0x1E6974000] = 0;
    goto LABEL_90;
  }

  v142 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager fileExistsAtPath:objc_msgSend(v99 isDirectory:{"path"), 0}])
  {
    v105 = [defaultManager removeItemAtPath:objc_msgSend(v99 error:{"path"), &v142}];
    if ((v105 & 1) == 0)
    {
      v107 = ci_logger_api(v105, v106);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
      {
        [CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:];
      }
    }
  }

  mEMORY[0x1E6974000] = [MEMORY[0x1E6974000] sharedCaptureManager];
  v100 = objc_alloc_init(MEMORY[0x1E6973FF8]);
  [v100 setCaptureObject:{-[CIContext internalCommandQueue](self, "internalCommandQueue")}];
  [v100 setDestination:2];
  [v100 setOutputURL:v99];
  v98 = [mEMORY[0x1E6974000] newCaptureScopeWithDevice:{-[CIContext device](self, "device")}];
  [v98 setLabel:@"Capture Scope"];
  v108 = [mEMORY[0x1E6974000] startCaptureWithDescriptor:v100 error:&v142];
  v109 = v108;
  v111 = ci_logger_render(v108, v110);
  if (v109)
  {
    v112 = v111;
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      v113 = [objc_msgSend(v100 "outputURL")];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v113;
      _os_log_impl(&dword_19CC36000, v112, OS_LOG_TYPE_INFO, "CIRenderDestination.captureTraceURL: %{public}@\n", &buf, 0xCu);
    }

    [v98 beginScope];
  }

  else
  {
    v130 = v111;
    v131 = os_log_type_enabled(v111, OS_LOG_TYPE_ERROR);
    if (v131)
    {
      [(CIContext(CIRenderDestination) *)&v142 _startTaskToRender:v130 toDestination:v133 forPrepareRender:v134 forClear:v135 error:v136, v137, v138];
    }

    v139 = ci_logger_render(v131, v132);
    if (os_log_type_enabled(v139, OS_LOG_TYPE_ERROR))
    {
      [CIContext(CIRenderDestination) _startTaskToRender:toDestination:forPrepareRender:forClear:error:];
    }
  }

LABEL_90:
  [(CIContext *)self lock];
  _internalContext3 = [(CIContext *)self _internalContext];
  v119 = _internalContext3;
  if (prepareRenderCopy)
  {
    _internalContext3[86] = 1;
  }

  if ([destination blendKernel] || clear)
  {
    v121 = (*(*v119 + 296))(v119);
    (*(*v119 + 288))(v119, 0);
    v120 = [destination _render:_imageByClampingAlpha withContext:self];
    if (v121)
    {
      (*(*v119 + 288))(v119, 1);
    }
  }

  else
  {
    v120 = [destination _render:_imageByClampingAlpha withContext:self];
  }

  if (prepareRenderCopy)
  {
    v119[86] = 0;
  }

  if (![(CIContext *)self clientCommandQueue])
  {
    CI::RenderTask::waitUntilScheduled(v120);
  }

  [(CIContext *)self unlock];
  [v98 endScope];
  [mEMORY[0x1E6974000] stopCapture];

  v122 = *(v120 + 128);
  if (v122)
  {
    v123 = CFRetain(v122);
    if (v123)
    {
      v124 = v123;
      CI::Object::unref(v120);
      objc_autoreleasePoolPop(contexta);
      v127 = ci_logger_api(v125, v126);
      if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
      {
        [CIContext(CIRenderDestination) _startTaskToRender:v124 toDestination:? forPrepareRender:? forClear:? error:?];
        if (error)
        {
          goto LABEL_105;
        }
      }

      else if (error)
      {
LABEL_105:
        v143 = @"CINonLocalizedDescriptionKey";
        v144 = v124;
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CIContextRenderDestination" code:5 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v144, &v143, 1)}];
LABEL_113:
        CFRelease(v124);
        return 0;
      }

      CI::Context::AbortIfUnhandledError(v124, v128);
      goto LABEL_113;
    }
  }

  v129 = [[CIRenderTask alloc] initWithInternalTask:v120];
  CI::Object::unref(v120);
  objc_autoreleasePoolPop(contexta);
  return v129;
}

- (BOOL)prepareRender:(CIImage *)image fromRect:(CGRect)fromRect toDestination:(CIRenderDestination *)destination atPoint:(CGPoint)atPoint error:(NSError *)error
{
  y = atPoint.y;
  x = atPoint.x;
  v11 = fromRect.origin.y;
  v12 = fromRect.origin.x;
  v14 = [(CIImage *)image imageByCroppingToRect:fromRect.origin.x, fromRect.origin.y, fromRect.size.width, fromRect.size.height];
  CGAffineTransformMakeTranslation(&v16, x - v12, y - v11);
  return [(CIContext *)self _startTaskToRender:[(CIImage *)v14 imageByApplyingTransform:&v16] toDestination:destination forPrepareRender:1 forClear:0 error:error]!= 0;
}

- (CIRenderTask)startTaskToClear:(CIRenderDestination *)destination error:(NSError *)error
{
  blendKernel = [(CIRenderDestination *)destination blendKernel];
  v8 = blendKernel;
  if (blendKernel)
  {
    v9 = blendKernel;
    [(CIRenderDestination *)destination setBlendKernel:0];
  }

  error = [(CIContext *)self _startTaskToRender:+[CIImage imageWithColor:](CIImage toDestination:"imageWithColor:" forPrepareRender:+[CIColor forClear:"clearColor"]) error:destination, 0, 1, error];
  if (v8)
  {
    [(CIRenderDestination *)destination setBlendKernel:v8];
  }

  return error;
}

+ (void)loadArchiveWithURL:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setObject:forKey:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)setObject:forKey:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)objectForKey:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)render:(int)a1 toBitmap:rowBytes:bounds:format:colorSpace:.cold.1(int a1)
{
  CI::name_for_format(a1);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s format %{public}s is unsupported.", v3, v4, v5, v6, v7);
}

- (void)render:(int)a1 toBitmap:rowBytes:bounds:format:colorSpace:.cold.4(int a1)
{
  CI::name_for_format(a1);
  v7 = 136446466;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0(&dword_19CC36000, v1, v2, "%{public}s format %{public}s is not supported on GLES.", v3, v4, v5, v6, v7);
}

@end