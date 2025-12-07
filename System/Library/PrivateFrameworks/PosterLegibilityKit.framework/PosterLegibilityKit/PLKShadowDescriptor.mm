@interface PLKShadowDescriptor
+ (id)shadowWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha;
+ (id)shadowWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha strength:(double)strength;
+ (void)classicDrawShadows:(id)shadows renderScale:(double)scale color:(id)color context:(id)context;
+ (void)drawShadows:(id)shadows forImage:(id)image contentRect:(CGRect)rect renderScale:(double)scale color:(id)color;
+ (void)drawShadows:(id)shadows renderScale:(double)scale color:(id)color context:(id)context;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShadow:(id)shadow;
- (CGSize)offset;
- (PLKShadowDescriptor)init;
- (PLKShadowDescriptor)initWithCoder:(id)coder;
- (PLKShadowDescriptor)initWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha strength:(double)strength;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLKShadowDescriptor

- (CGSize)offset
{
  width = self->_offset.width;
  height = self->_offset.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)shadowWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha strength:(double)strength
{
  v6 = [[self alloc] initWithRadius:? offset:? alpha:? strength:?];

  return v6;
}

+ (id)shadowWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha
{
  v5 = [[self alloc] initWithRadius:? offset:? alpha:? strength:?];

  return v5;
}

- (PLKShadowDescriptor)init
{
  [(PLKShadowDescriptor *)self doesNotRecognizeSelector:?];

  return 0;
}

- (PLKShadowDescriptor)initWithRadius:(double)radius offset:(CGSize)offset alpha:(double)alpha strength:(double)strength
{
  height = offset.height;
  width = offset.width;
  v12.receiver = self;
  v12.super_class = PLKShadowDescriptor;
  result = [(PLKShadowDescriptor *)&v12 init];
  if (result)
  {
    result->_offset.width = width;
    result->_offset.height = height;
    result->_radius = radius;
    result->_alpha = alpha;
    result->_strength = strength;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(PLKShadowDescriptor *)self isEqualToShadow:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualToShadow:(id)shadow
{
  shadowCopy = shadow;
  v5 = shadowCopy;
  if (self == shadowCopy)
  {
    v12 = 1;
  }

  else if (shadowCopy && ([(PLKShadowDescriptor *)shadowCopy radius], [(PLKShadowDescriptor *)self radius], BSFloatEqualToFloat()) && ([(PLKShadowDescriptor *)v5 alpha], [(PLKShadowDescriptor *)self alpha], BSFloatEqualToFloat()) && ([(PLKShadowDescriptor *)v5 strength], [(PLKShadowDescriptor *)self strength], BSFloatEqualToFloat()))
  {
    [(PLKShadowDescriptor *)v5 offset];
    v7 = v6;
    v9 = v8;
    [(PLKShadowDescriptor *)self offset];
    v12 = v9 == v11 && v7 == v10;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)drawShadows:(id)shadows renderScale:(double)scale color:(id)color context:(id)context
{
  shadowsCopy = shadows;
  colorCopy = color;
  contextCopy = context;
  v13 = contextCopy;
  if (colorCopy)
  {
    v14 = colorCopy;
  }

  else
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __61__PLKShadowDescriptor_drawShadows_renderScale_color_context___block_invoke;
    v16[3] = &unk_27835B760;
    v6 = &v17;
    v17 = contextCopy;
    v14 = __61__PLKShadowDescriptor_drawShadows_renderScale_color_context___block_invoke(v16);
  }

  currentImage = [v13 currentImage];
  [v13 contentRect];
  [self drawShadows:? forImage:? contentRect:? renderScale:? color:?];

  if (!colorCopy)
  {
  }
}

id __61__PLKShadowDescriptor_drawShadows_renderScale_color_context___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) format];
  v2 = [v1 contextType];

  if (v2 - 2 >= 3)
  {
    if (v2 <= 1)
    {
      v3 = [MEMORY[0x277D75348] blackColor];
    }
  }

  else
  {
    v3 = [MEMORY[0x277D75348] whiteColor];
  }

  return v3;
}

+ (void)drawShadows:(id)shadows forImage:(id)image contentRect:(CGRect)rect renderScale:(double)scale color:(id)color
{
  shadowsCopy = shadows;
  imageCopy = image;
  colorCopy = color;
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSaveGState(CurrentContext);
  v14 = shadowsCopy;
  if ([v14 count] == 1)
  {
  }

  else
  {
    firstObject = [v14 firstObject];
    [firstObject strength];

    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:? objects:? count:?];
    if (v17)
    {
      v18 = v17;
      v19 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v18; i = (i + 1))
        {
          if (MEMORY[0] != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(8 * i) strength];
          if (!BSFloatEqualToFloat())
          {

            goto LABEL_28;
          }
        }

        v18 = [v16 countByEnumeratingWithState:? objects:? count:?];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

  firstObject2 = [v14 firstObject];
  [firstObject2 strength];
  IsOne = BSFloatIsOne();

  if (IsOne)
  {
    v23 = v14;
    v24 = [v23 countByEnumeratingWithState:? objects:? count:?];
    if (v24)
    {
      v25 = v24;
      v26 = MEMORY[0];
      do
      {
        for (j = 0; j != v25; j = (j + 1))
        {
          if (MEMORY[0] != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(8 * j);
          [v28 offset];
          v30 = v29 * scale;
          [v28 offset];
          v32 = v31 * scale;
          [v28 radius];
          v34 = v33 * scale;
          [v28 alpha];
          v35 = [colorCopy colorWithAlphaComponent:?];
          cGColor = [v35 CGColor];
          v59.width = v30;
          v59.height = v32;
          CGContextSetShadowWithColor(CurrentContext, v59, v34, cGColor);

          CGContextBeginTransparencyLayer(CurrentContext, 0);
        }

        v25 = [v23 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v25);
    }

    [imageCopy drawInRect:?];
    v37 = v23;
    v38 = [v37 countByEnumeratingWithState:? objects:? count:?];
    if (v38)
    {
      v39 = v38;
      v40 = MEMORY[0];
      while (1)
      {
        if (MEMORY[0] != v40)
        {
          objc_enumerationMutation(v37);
        }

        CGContextEndTransparencyLayer(CurrentContext);
        v39 = (v39 - 1);
        if (!v39)
        {
          v39 = [v37 countByEnumeratingWithState:? objects:? count:?];
          if (!v39)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
LABEL_28:
    scaleCopy = scale;
    v41 = v14;
    v42 = [v41 countByEnumeratingWithState:? objects:? count:?];
    if (v42)
    {
      v43 = v42;
      v44 = MEMORY[0];
      do
      {
        for (k = 0; k != v43; k = (k + 1))
        {
          if (MEMORY[0] != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(8 * k);
          [v46 strength];
          if ((BSFloatLessThanOrEqualToFloat() & 1) == 0)
          {
            [v46 offset];
            v48 = v47 * scaleCopy;
            [v46 offset];
            v50 = v49 * scaleCopy;
            [v46 radius];
            v52 = v51 * scaleCopy;
            cGColor2 = [colorCopy CGColor];
            v60.width = v48;
            v60.height = v50;
            CGContextSetShadowWithColor(CurrentContext, v60, v52, cGColor2);
            CGContextBeginTransparencyLayer(CurrentContext, 0);
            [v46 alpha];
            v55 = v54;
            [v46 strength];
            for (m = v55 * v56; m > 0.00000011920929; m = m + -1.0)
            {
              [imageCopy drawInRect:? blendMode:? alpha:?];
            }

            CGContextEndTransparencyLayer(CurrentContext);
          }
        }

        v43 = [v41 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v43);
    }
  }

  CGContextRestoreGState(CurrentContext);
}

+ (void)classicDrawShadows:(id)shadows renderScale:(double)scale color:(id)color context:(id)context
{
  v65[17] = *MEMORY[0x277D85DE8];
  shadowsCopy = shadows;
  i = color;
  contextCopy = context;
  v11 = contextCopy;
  if (i)
  {
    v45 = i;
  }

  else
  {
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke;
    v64[3] = &unk_27835B760;
    v65[0] = contextCopy;
    v45 = __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke(v64);
    v39 = v65;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = shadowsCopy;
  v44 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v44)
  {
    v43 = *v61;
    v41 = v11;
    v42 = i;
    do
    {
      v12 = 0;
      do
      {
        if (*v61 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v60 + 1) + 8 * v12);
        [v13 strength];
        v49 = v14;
        [v13 radius];
        v51 = v15;
        [v13 alpha];
        v48 = v16;
        [v13 offset];
        currentImage = [v11 currentImage];
        [v11 contentRect];
        [currentImage size];
        v19 = v18;
        v21 = v20;
        format = [v11 format];
        if (objc_opt_respondsToSelector())
        {
          contextType = [format contextType];
        }

        else
        {
          contextType = 4;
        }

        [format scale];
        v52 = v24;
        if (objc_opt_respondsToSelector())
        {
          memoryPool = [format memoryPool];
        }

        else
        {
          memoryPool = 0;
        }

        v26 = currentImage;
        v27 = v26;
        v28 = v26;
        if (contextType == 4)
        {
          v28 = [v26 _flatImageWithColor:?];
        }

        v29 = (v19 + v51 * 2.0) * scale;
        v30 = ceilf(v29);
        v31 = (v21 + v51 * 2.0) * scale;
        v32 = ceilf(v31);
        v38 = v52;
        UIRectCenteredIntegralRectScale();
        v46 = v27;
        v47 = v12;
        if (memoryPool)
        {
          v54 = v30;
          v55 = v32;
          v56 = v52;
          v57 = contextType;
          if (([memoryPool plk_compatibleWithDescriptor:v52] & 1) == 0)
          {

            memoryPool = 0;
          }
        }

        v54 = 0.0;
        v55 = COERCE_DOUBLE(&v54);
        v56 = 0x3032000000;
        v57 = __Block_byref_object_copy_;
        v58 = __Block_byref_object_dispose_;
        v59 = 0;
        v33 = MEMORY[0x277D755B8];
        v53 = v45;
        v34 = v28;
        v35 = memoryPool;
        v36 = [v33 plk_imageFromContextWithSize:? scale:? type:? pool:? drawing:?];
        v37 = v49 * v48;
        v11 = v41;
        for (i = v42; v37 > 0.00000011920929; v37 = v37 + -1.0)
        {
          [*(*&v55 + 40) drawInRect:v38 blendMode:? alpha:?];
        }

        _Block_object_dispose(&v54, 8);
        v12 = v47 + 1;
      }

      while ((v47 + 1) != v44);
      v44 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v44);
  }

  if (!i)
  {
  }
}

id __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) format];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = [*(a1 + 32) format];
  v5 = [v4 contextType];

  if (v5 - 2 < 3)
  {
    v6 = [MEMORY[0x277D75348] whiteColor];
    goto LABEL_6;
  }

  if (v5 <= 1)
  {
LABEL_5:
    v6 = [MEMORY[0x277D75348] blackColor];
  }

LABEL_6:

  return v6;
}

void __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke_8(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextSetFillColorWithColor(CurrentContext, [*(a1 + 32) CGColor]);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextTranslateCTM(CurrentContext, 0.0, -*(a1 + 72));
  CGContextDrawImage(CurrentContext, *(a1 + 80), [*(a1 + 40) CGImage]);
  Data = CGBitmapContextGetData(CurrentContext);
  Width = CGBitmapContextGetWidth(CurrentContext);
  Height = CGBitmapContextGetHeight(CurrentContext);
  BytesPerRow = CGBitmapContextGetBytesPerRow(CurrentContext);
  v7 = *(a1 + 120);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke_2;
  v14 = &__block_descriptor_84_e5_v8__0l;
  v15 = v7;
  v16 = Data;
  v17 = Height;
  v18 = Width;
  v19 = BytesPerRow;
  v20 = *(a1 + 128);
  v21 = *(a1 + 136);
  v8 = [MEMORY[0x277D755B8] plk_imageFromContextWithSize:? scale:? type:? pool:? drawing:?];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

vImage_Error __68__PLKShadowDescriptor_classicDrawShadows_renderScale_color_context___block_invoke_2(uint64_t a1)
{
  CurrentContext = UIGraphicsGetCurrentContext();
  dest.data = CGBitmapContextGetData(CurrentContext);
  dest.width = CGBitmapContextGetWidth(CurrentContext);
  dest.height = CGBitmapContextGetHeight(CurrentContext);
  dest.rowBytes = CGBitmapContextGetBytesPerRow(CurrentContext);
  v3 = *(a1 + 72);
  v4 = *(a1 + 76);
  v5 = *(a1 + 80);
  if ((*(a1 + 32) - 3) > 1)
  {
    return vImageTentConvolve_ARGB8888((a1 + 40), &dest, 0, v3, v4, v5, v5, 0, 0x1018u);
  }

  else
  {
    return vImageTentConvolve_Planar8((a1 + 40), &dest, 0, v3, v4, v5, v5, 0, 0x1018u);
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeFloat:? forKey:?];
  [coderCopy encodeCGSize:? forKey:?];
  [coderCopy encodeFloat:? forKey:?];
  [coderCopy encodeFloat:? forKey:?];
}

- (PLKShadowDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy decodeFloatForKey:?];
  [coderCopy decodeCGSizeForKey:?];
  [coderCopy decodeFloatForKey:?];
  [coderCopy decodeFloatForKey:?];

  return [PLKShadowDescriptor initWithRadius:"initWithRadius:offset:alpha:strength:" offset:? alpha:? strength:?];
}

@end