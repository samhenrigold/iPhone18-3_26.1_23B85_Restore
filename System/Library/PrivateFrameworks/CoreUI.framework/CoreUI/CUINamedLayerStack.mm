@interface CUINamedLayerStack
+ (CGImage)createRadiosityImageWithImage:(CGImage *)image displayScale:(int64_t)scale;
+ (vImage_Buffer)_doRadiosityBlurOnPixelBuffer:(SEL)buffer bytesPerRow:(void *)row bitsPerPixel:(unint64_t)pixel width:(unint64_t)width height:(unint64_t)height scaleFactor:(unint64_t)factor usesGaussianBlur:(unint64_t)blur adjustedSize:(BOOL *)self0;
+ (void)radiosityImageWithImage:(CGImage *)image displayScale:(int64_t)scale completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (CUINamedLayerStack)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block;
- (id)layerImageAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation CUINamedLayerStack

- (CUINamedLayerStack)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme resolvingWithBlock:(id)block
{
  nameCopy = name;
  v40.receiver = self;
  v40.super_class = CUINamedLayerStack;
  v8 = [(CUINamedLookup *)&v40 initWithName:name usingRenditionKey:key fromTheme:?];
  _rendition = [(CUINamedLookup *)v8 _rendition];
  if ([(CUIThemeRendition *)_rendition type]== 1002)
  {
    if (!nameCopy)
    {
      [(CUINamedLookup *)v8 setName:[(CUIThemeRendition *)_rendition name]];
      nameCopy = [(CUIThemeRendition *)_rendition name];
    }

    v32 = v8;
    v34 = objc_alloc_init(NSMutableArray);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [(CUIThemeRendition *)_rendition layerReferences];
    v10 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v37;
      while (2)
      {
        v14 = nameCopy;
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v36 + 1) + 8 * i);
          v17 = (*(block + 2))(block, [v16 referenceKey]);
          if (!v17)
          {
            nameCopy = v14;
            _CUILog(4, "CoreUI: Unable to resolve layer reference for '%@' name '%@' layerRef referenceKey '%@'", v16, v14, [v16 referenceKey]);
            goto LABEL_23;
          }

          theme = [[CUINamedLayerImage alloc] initWithName:[NSString usingRenditionKey:"stringWithFormat:" fromTheme:@"%@[%ld]" stringWithFormat:v14, ++v12], v17, theme];
          if ([(CUINamedLookup *)theme _rendition])
          {
            [v16 frame];
            [(CUINamedLayerImage *)theme setFrame:?];
            [v16 opacity];
            if (v19 < 1.0)
            {
              [(CUINamedLayerImage *)theme opacity];
              if (v20 == 1.0)
              {
                [v16 opacity];
                [(CUINamedLayerImage *)theme setOpacity:?];
              }
            }

            if ([v16 blendMode] >= 1 && !-[CUINamedLayerImage blendMode](theme, "blendMode"))
            {
              -[CUINamedLayerImage setBlendMode:](theme, "setBlendMode:", [v16 blendMode]);
            }

            -[CUINamedLayerImage setFixedFrame:](theme, "setFixedFrame:", [v16 fixedFrame]);
            [(NSArray *)v34 addObject:theme];
          }
        }

        v11 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
        nameCopy = v14;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
    v21 = v32;
    v32->_layers = v34;
    v22 = objc_alloc_init(CUIRenditionKey);
    [(CUIRenditionKey *)v22 setThemeElement:[(CUIRenditionKey *)[(CUINamedLookup *)v32 key] themeElement]];
    [(CUIRenditionKey *)v22 setThemePart:208];
    [(CUIRenditionKey *)v22 setThemeIdentifier:[(CUIRenditionKey *)[(CUINamedLookup *)v32 key] themeIdentifier]];
    v23 = (*(block + 2))(block, v22);
    if (v23)
    {
      v24 = v23;
      [(CUINamedLookup *)v32 storageRef];
      v25 = _LookupStructuredThemeProvider();
      v26 = [v25 copyLookupKeySignatureForKey:{objc_msgSend(v24, "keyList")}];
      v32->_flattenedImageRendition = [v25 renditionWithKey:objc_msgSend(v24 usingKeySignature:{"keyList"), v26}];
    }

    else
    {
      _CUILog(4, "CoreUI: Unable to resolve flattened image for layer stack %@", v32);
    }

    v8 = objc_alloc_init(CUIRenditionKey);
    [(CUINamedLayerStack *)v8 setThemeElement:[(CUIRenditionKey *)[(CUINamedLookup *)v32 key] themeElement]];
    [(CUINamedLayerStack *)v8 setThemePart:209];
    [(CUINamedLayerStack *)v8 setThemeIdentifier:[(CUIRenditionKey *)[(CUINamedLookup *)v32 key] themeIdentifier]];
    v27 = (*(block + 2))(block, v8);
    if (v27)
    {
      v28 = v27;
      [(CUINamedLookup *)v32 storageRef];
      v29 = _LookupStructuredThemeProvider();
      v30 = [v29 copyLookupKeySignatureForKey:{objc_msgSend(v28, "keyList")}];
      v32->_radiosityImageRendition = [v29 renditionWithKey:objc_msgSend(v28 usingKeySignature:{"keyList"), v30}];
    }

    else
    {
      _CUILog(4, "CoreUI: Unable to resolve radiosity image for layer stack %@", nameCopy);
    }
  }

  else
  {
    _CUILog(4, "CoreUI: Attempting to create named layer stack '%@' from inappropriate rendition type: %@", nameCopy, _rendition);
    v21 = 0;
  }

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  v8.receiver = self;
  v8.super_class = CUINamedLayerStack;
  if (![(CUINamedLookup *)&v8 isEqual:?])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = -[NSArray isEqual:](-[CUINamedLayerStack layers](self, "layers"), "isEqual:", [equal layers]);
  if (v5)
  {
    type = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] type];
    if (type == [objc_msgSend(equal "_rendition")])
    {
      LOBYTE(v5) = 1;
      return v5;
    }

LABEL_6:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = CUINamedLayerStack;
  v3 = [(CUINamedLookup *)&v14 hash];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  layers = [(CUINamedLayerStack *)self layers];
  v5 = [(NSArray *)layers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(layers);
        }

        v3 *= 2654435769 * [*(*(&v10 + 1) + 8 * v8) hash];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)layers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (vImage_Buffer)_doRadiosityBlurOnPixelBuffer:(SEL)buffer bytesPerRow:(void *)row bitsPerPixel:(unint64_t)pixel width:(unint64_t)width height:(unint64_t)height scaleFactor:(unint64_t)factor usesGaussianBlur:(unint64_t)blur adjustedSize:(BOOL *)self0
{
  v18 = getenv("CoreUI_RADIOSITY_BLUR_METHOD");
  if (v18)
  {
    v19 = strncasecmp(v18, "downscale", 9uLL) != 0;
  }

  else
  {
    v19 = 1;
  }

  if (size)
  {
    *size = v19;
  }

  if (v19)
  {
    __src = row;
    if (a11)
    {
      a11->width = height;
      a11->height = factor;
    }

    heightCopy = height;
    v20 = 40 * blur;
    v21 = vcvtd_n_f64_u64(40 * blur, 1uLL);
    v22 = malloc_type_malloc((320 * blur) | 8, 0x100004000313F17uLL);
    v23 = 0;
    v24 = 1.0 / (v21 * 2.50662827);
    v62 = vdupq_n_s64(40 * blur);
    v25 = v21 * (v21 + v21);
    v26 = xmmword_18E022180;
    v64 = v22;
    do
    {
      v67 = vmovn_s64(vcgeq_u64(v62, v26));
      v68 = v26;
      kernel = exp(-(v23 * v23) / v25);
      v27 = exp(-((v23 + 1) * (v23 + 1)) / v25);
      v28.f64[0] = kernel;
      v28.f64[1] = v27;
      if (v67.i8[0])
      {
        v64[v23] = v24 * kernel;
      }

      if (v67.i8[4])
      {
        v64[v23 + 1] = vmuld_lane_f64(v24, v28, 1);
      }

      v23 += 2;
      v26 = vaddq_s64(v68, vdupq_n_s64(2uLL));
    }

    while (((40 * blur) | 2) != v23);
    v29 = *v64;
    if (v20)
    {
      v30 = v64 + 1;
      v31 = 40 * blur;
      do
      {
        v32 = *v30++;
        v29 = v29 + v32 * 2.0;
        --v31;
      }

      while (v31);
    }

    factorCopy = factor;
    v33 = width >> 3;
    v34 = 80 * blur;
    v35 = 16384.0 / v29;
    v36 = malloc_type_malloc((160 * blur) | 2, 0x1000040BDFB0063uLL);
    v36[40 * blur] = (v35 * *v64);
    if (v20)
    {
      v37 = v64 + 1;
      v38 = &v36[40 * blur + 1];
      v39 = 40 * blur;
      do
      {
        v40 = *v37++;
        v41 = (v35 * v40);
        *v38++ = v41;
        v36[--v39] = v41;
      }

      while (v39);
    }

    kernela = v36;
    v63 = 40 * blur;
    v42 = v34 + height;
    v43 = (v34 + height) * v33;
    v44 = malloc_type_malloc(v43, 0x100004077774924uLL);
    v45 = v33 * height;
    v46 = malloc_type_malloc(v33 * height * factor, 0x100004077774924uLL);
    src.data = v44;
    src.height = 1;
    src.width = v42;
    src.rowBytes = v43;
    dest.data = v46;
    dest.height = 1;
    v47 = v63 * v33;
    dest.width = heightCopy;
    dest.rowBytes = v33 * heightCopy;
    bzero(v44, v63 * v33);
    bzero(&v44[(v63 + heightCopy) * v33], v63 * v33);
    if (factor)
    {
      v48 = __src;
      v49 = (2 * v63) | 1;
      do
      {
        memcpy(&v44[v47], v48, v45);
        vImageConvolve_ARGB8888(&src, &dest, 0, v63, 0, kernela, 1u, v49, 0x4000, 0, 0x14u);
        dest.data = dest.data + v45;
        v48 += pixel;
        --factor;
      }

      while (factor);
      factor = factorCopy;
      v50 = __src;
    }

    else
    {
      v49 = (2 * v63) | 1;
      v50 = __src;
    }

    src.data = v46;
    src.height = factor;
    src.width = heightCopy;
    src.rowBytes = v45;
    dest.data = v50;
    dest.height = factor;
    dest.width = heightCopy;
    dest.rowBytes = pixel;
    vImageConvolve_ARGB8888(&src, &dest, 0, 0, 0, kernela, v49, 1u, 0x4000, 0, 0x14u);
    free(v46);
    free(v44);
    free(kernela);
    free(v64);
    *&retstr->data = 0u;
    *&retstr->width = 0u;
  }

  else
  {
    retstr->data = 0;
    src.width = height;
    src.rowBytes = pixel;
    v51 = 3;
    __asm { FMOV            V0.2D, #0.5 }

    v70 = _Q0;
    src.data = row;
    src.height = factor;
    do
    {
      v57 = vcvtq_u64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(*&src.height), v70)))));
      *&retstr->height = v57;
      retstr->rowBytes = 4 * v57.i64[1];
      retstr->data = malloc_type_malloc(4 * v57.i64[1] * v57.i64[0], 0xE771AA93uLL);
      result = vImageScale_ARGB8888(&src, retstr, 0, 0);
      if (result)
      {
        _CUILog(4, "CoreUI -- radiosity downscale vImage error: %ld", result);
      }

      *&src.height = *&retstr->height;
      src.rowBytes = retstr->rowBytes;
      if (v51 != 3)
      {
        free(src.data);
      }

      src.data = retstr->data;
      --v51;
    }

    while (v51);
    if (a11)
    {
      v59 = vcvtq_f64_u64(*&retstr->height);
      *a11 = vextq_s8(v59, v59, 8uLL);
    }
  }

  return result;
}

- (CGSize)size
{
  metrics = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] metrics];

  [metrics imageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)layerImageAtIndex:(unint64_t)index
{
  layers = [(CUINamedLayerStack *)self layers];

  return [(NSArray *)layers objectAtIndexedSubscript:index];
}

+ (CGImage)createRadiosityImageWithImage:(CGImage *)image displayScale:(int64_t)scale
{
  v6 = scale * 40.0;
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v9 = [[CSIBitmapWrapper alloc] initWithPixelWidth:(Width + v6 * 2.0) pixelHeight:(Height + v6 * 2.0)];
  ColorSpace = CGImageGetColorSpace(image);
  if (CGColorSpaceIsWideGamutRGB(ColorSpace))
  {
    v11 = 3;
  }

  else
  {
    v11 = 1;
  }

  [(CSIBitmapWrapper *)v9 setColorSpaceID:v11];
  [(CSIBitmapWrapper *)v9 setPixelFormat:1095911234];
  [(CSIBitmapWrapper *)v9 setSourceAlphaInfo:2];
  bitmapContext = [(CSIBitmapWrapper *)v9 bitmapContext];
  v27.origin.x = v6;
  v27.origin.y = v6;
  v27.size.width = Width;
  v27.size.height = Height;
  CGContextDrawImage(bitmapContext, v27, image);
  CGBitmapContextGetData(bitmapContext);
  CGBitmapContextGetBytesPerRow(bitmapContext);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(bitmapContext);
  v26 = 1;
  v25 = CGSizeZero;
  memset(v24, 0, sizeof(v24));
  if (self && (v14 = BitsPerPixel, objc_msgSend__doRadiosityBlurOnPixelBuffer_bytesPerRow_bitsPerPixel_width_height_scaleFactor_usesGaussianBlur_adjustedSize_(self, &v26, &v25), (v26 & 1) == 0))
  {
    v23 = 0;
    v18[0] = 8;
    v18[1] = v14;
    v19 = CGImageGetColorSpace(image);
    v20 = 8194;
    v22 = 0;
    v21 = 0;
    Image = MEMORY[0x193AC7550](v24, v18, 0, 0, 512, 0);
  }

  else
  {
    Image = CGBitmapContextCreateImage(bitmapContext);
  }

  v16 = Image;

  return v16;
}

+ (void)radiosityImageWithImage:(CGImage *)image displayScale:(int64_t)scale completionHandler:(id)handler
{
  if (__onceToken_0 == -1)
  {
    if (!image)
    {
      return;
    }
  }

  else
  {
    +[CUINamedLayerStack radiosityImageWithImage:displayScale:completionHandler:];
    if (!image)
    {
      return;
    }
  }

  CGImageRetain(image);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke_2;
  v9[3] = &unk_1E72515D8;
  v9[6] = image;
  v9[7] = scale;
  v9[4] = self;
  v9[5] = handler;
  dispatch_async(__dispatchQueue, v9);
}

dispatch_queue_t __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke()
{
  result = dispatch_queue_create("com.apple.CoreUI.NamedLayerStackQueue", 0);
  __dispatchQueue = result;
  return result;
}

void __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) createRadiosityImageWithImage:*(a1 + 48) displayScale:*(a1 + 56)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke_3;
  block[3] = &unk_1E72515B0;
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  block[5] = v2;
  block[6] = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  CGImageRelease(*(a1 + 40));
  v2 = *(a1 + 48);

  CGImageRelease(v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedLayerStack;
  [(CUINamedLookup *)&v3 dealloc];
}

@end