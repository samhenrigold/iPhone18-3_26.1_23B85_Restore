@interface TSDSwatchCache
+ (id)swatchCache;
- (CGImage)p_newImageWithConnectionLineKnobsForShape:(id)shape atScale:(double)scale ofSize:(CGSize)size overImage:(CGImage *)image;
- (CGSize)imageSizeForPreset:(id)preset swatchSize:(CGSize)size;
- (CGSize)shapeSwatchInset;
- (TSDSwatchCache)init;
- (id)imageForImagePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale imageInfo:(id)info shouldClipVertically:(BOOL)vertically documentRoot:(id)root;
- (id)imageForImagePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame imageInfo:(id)info shouldClipVertically:(BOOL)vertically documentRoot:(id)root;
- (id)imageForMoviePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale movieInfo:(id)info shouldClipVertically:(BOOL)vertically documentRoot:(id)root;
- (id)imageForMoviePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame movieInfo:(id)info shouldClipVertically:(BOOL)vertically documentRoot:(id)root;
- (id)imageForShapePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale shapeType:(int)type angle:(double)angle documentRoot:(id)root;
- (id)imageForShapePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame shapeType:(int)type angle:(double)angle documentRoot:(id)root;
- (id)p_maskInfoForMovieInfo:(id)info context:(id)context;
- (id)p_thumbnailImageDataForImageData:(id)data;
- (void)applyFakeShadowForWhitePresetsIfNecessary:(id)necessary documentRoot:(id)root;
- (void)dealloc;
- (void)warmStyle:(id)style withFillProperty:(int)property documentRoot:(id)root;
@end

@implementation TSDSwatchCache

+ (id)swatchCache
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__TSDSwatchCache_swatchCache__block_invoke;
  block[3] = &unk_279D46770;
  block[4] = self;
  if (swatchCache_sSwatchCacheOnce != -1)
  {
    dispatch_once(&swatchCache_sSwatchCacheOnce, block);
  }

  return swatchCache_sSwatchCache;
}

id __29__TSDSwatchCache_swatchCache__block_invoke(uint64_t a1)
{
  result = objc_alloc_init(*(a1 + 32));
  swatchCache_sSwatchCache = result;
  return result;
}

- (TSDSwatchCache)init
{
  v4.receiver = self;
  v4.super_class = TSDSwatchCache;
  v2 = [(TSDSwatchCache *)&v4 init];
  if (v2)
  {
    v2->mOperationQueue = objc_alloc_init(MEMORY[0x277CCABD8]);
  }

  return v2;
}

- (void)dealloc
{
  [(NSOperationQueue *)self->mOperationQueue cancelAllOperations];

  v3.receiver = self;
  v3.super_class = TSDSwatchCache;
  [(TSDSwatchCache *)&v3 dealloc];
}

- (void)warmStyle:(id)style withFillProperty:(int)property documentRoot:(id)root
{
  v6 = -[TSDStyleWarmingOperation initWithStyle:property:accessController:]([TSDStyleWarmingOperation alloc], "initWithStyle:property:accessController:", style, *&property, [root accessController]);
  [(NSOperationQueue *)self->mOperationQueue addOperation:v6];
}

- (CGSize)shapeSwatchInset
{
  if (!TSUPhoneUI() || (v2 = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x277D75128] "sharedApplication")], v3 = 4.0, (v2 - 5) <= 0xFFFFFFFFFFFFFFFDLL))
  {
    v3 = 8.0;
  }

  v4 = v3;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)applyFakeShadowForWhitePresetsIfNecessary:(id)necessary documentRoot:(id)root
{
  if (([objc_msgSend(necessary "fill")] && (objc_msgSend(objc_msgSend(necessary, "stroke"), "isNullStroke") & 1) != 0 || objc_msgSend(necessary, "stroke") && objc_msgSend(objc_msgSend(necessary, "stroke"), "isNearlyWhite")) && (!objc_msgSend(necessary, "shadow") || (objc_msgSend(objc_msgSend(necessary, "shadow"), "isEnabled") & 1) == 0))
  {
    v6 = [objc_msgSend(necessary "style")];
    [v6 setBoxedValue:+[TSDShadow shadowWithAngle:offset:radius:opacity:color:enabled:](TSDShadow forProperty:{"shadowWithAngle:offset:radius:opacity:color:enabled:", objc_msgSend(objc_msgSend(MEMORY[0x277D6C2A8], "blackColor"), "CGColor"), 1, 0.0, 0.0, 4.0, 0.45), 520}];

    [necessary setStyle:v6];
  }
}

- (id)imageForShapePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale shapeType:(int)type angle:(double)angle documentRoot:(id)root
{
  v10 = *&type;
  height = size.height;
  width = size.width;
  objc_opt_class();
  v14 = [TSUDynamicCast() copyWithContext:{objc_msgSend(root, "context")}];
  [(TSDSwatchCache *)self shapeSwatchInset];
  v16 = v15;
  v18 = v17;
  v19 = [v14 boxedValueForProperty:520];
  if (!v19 || v19 == [MEMORY[0x277CBEB68] null])
  {
    v20 = 0;
  }

  else
  {
    [v14 constrainShadowForSwatchGeneration];
    v20 = 1;
  }

  v21 = [v14 boxedValueForProperty:517];
  if (!v21 || v21 == [MEMORY[0x277CBEB68] null])
  {
    v22 = 0;
  }

  else
  {
    [v14 constrainStrokeForSwatchGeneration];
    v22 = 1;
  }

  v23 = [v14 boxedObjectForProperty:519];
  if (v23 && v23 != [MEMORY[0x277CBEB68] null])
  {
    [v14 fadeReflectionForSwatchGeneration];
  }

  if ((v20 & 1) != 0 || v10 <= 0x13 && ((1 << v10) & 0xC0004) != 0)
  {
    v16 = v16 + 3.0;
    v18 = v18 + 3.0;
  }

  v24 = width - v16 * 2.0;
  v25 = height - v18 * 2.0;
  v26 = 1.0;
  if (v22 && [v21 isFrame])
  {
    v27 = [v14 boxedValueForProperty:517];
    [v27 coverageRect:TSDRectWithSize()];
    v30 = v29 - width <= v16 + v16 && v28 - height <= v18 + v18;
    if (!v30 || ([v27 coverageRect:TSDRectWithSize()], (objc_msgSend(v27, "shouldRenderForSizeIncludingCoverage:", v53, v54) & 1) == 0))
    {
      v26 = 2.0;
      v24 = TSDMultiplySizeScalar(width - v16 * 2.0, height - v18 * 2.0, 2.0);
      v25 = v31;
      v16 = TSDMultiplySizeScalar(v16, v18, 2.0);
      v18 = v32;
    }
  }

  [v14 fixImageFillTechniqueForSwatchOfSize:{v24, v25}];
  if (v10 > 0x13)
  {
    goto LABEL_33;
  }

  if (((1 << v10) & 0xD8006) == 0)
  {
    if (v10 == 9)
    {
      v37 = 0.0;
      if (v20)
      {
        v37 = 3.0;
      }

      v24 = v24 + 8.0;
      v33 = v25 + v37 * -2.0;
      v16 = v16 + -4.0;
      v18 = v37 + v18;
      goto LABEL_48;
    }

LABEL_33:
    v38 = v10 - 13;
    v39 = 7.0;
    if (v20)
    {
      v39 = 9.0;
    }

    v40 = v24 - v39;
    v41 = v25 + 0.0;
    v42 = v39 + v16;
    if (v10 != 12)
    {
      v40 = v24;
      v41 = v25;
      v42 = v16;
    }

    v43 = 4.0;
    if (v20)
    {
      v43 = 2.0;
    }

    v44 = v24 + v43 * 2.0;
    v45 = v25 + v43 * 2.0;
    v46 = v16 - v43;
    if (v38 <= 1)
    {
      v24 = v44;
    }

    else
    {
      v24 = v40;
    }

    if (v38 <= 1)
    {
      v33 = v45;
    }

    else
    {
      v33 = v41;
    }

    if (v38 <= 1)
    {
      v16 = v46;
    }

    else
    {
      v16 = v42;
    }

    goto LABEL_48;
  }

  v18 = v25 * 0.5 + v18;
  if (angle != 0.0)
  {
    v24 = hypot(v24, v25);
    v16 = 0.0;
  }

  v33 = 0.0;
  angle = [[TSDInfoGeometry alloc] initWithPosition:v16 size:v18 angle:v24, 0.0, angle];
  if (angle)
  {
    v35 = angle;
    scaleCopy2 = scale;
    goto LABEL_49;
  }

LABEL_48:
  scaleCopy2 = scale;
  v35 = [[TSDInfoGeometry alloc] initWithPosition:v16 size:v18, v24, v33];
LABEL_49:
  v47 = [objc_alloc(objc_opt_class()) initWithContext:objc_msgSend(root geometry:"context") style:v35 pathSource:{v14, +[TSDPathSource pathSourceForShapeType:naturalSize:](TSDPathSource, "pathSourceForShapeType:naturalSize:", v10, v24, v33)}];
  if (v10 == 15)
  {
    [v47 setHeadLineEnd:{+[TSDLineEnd openArrow](TSDLineEnd, "openArrow")}];
    [v47 setTailLineEnd:{+[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow")}];
  }

  else if (v10 == 16)
  {
    [v47 setHeadLineEnd:{+[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow")}];
  }

  [(TSDSwatchCache *)self applyFakeShadowForWhitePresetsIfNecessary:v47 documentRoot:root];
  v48 = [[TSDImager alloc] initWithDocumentRoot:root];
  [(TSDImager *)v48 setScaledImageSize:TSDMultiplySizeScalar(width, height, scaleCopy2)];
  TSDMultiplySizeScalar(width, height, v26);
  [(TSDImager *)v48 setUnscaledClipRect:TSDRectWithSize()];
  -[TSDImager setInfos:](v48, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v47]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  newImage = [(TSDImager *)v48 newImage];
  if (v10 <= 0x13 && ((1 << v10) & 0xC0004) != 0)
  {
    objc_opt_class();
    height = [(TSDSwatchCache *)self p_newImageWithConnectionLineKnobsForShape:TSUDynamicCast() atScale:newImage ofSize:scaleCopy2 overImage:width, height];
    CGImageRelease(newImage);
    newImage = height;
  }

  v51 = [MEMORY[0x277D6C2F8] imageWithCGImage:newImage scale:0 orientation:scaleCopy2];
  CGImageRelease(newImage);
  [MEMORY[0x277CD9FF0] commit];

  return v51;
}

- (id)imageForImagePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale imageInfo:(id)info shouldClipVertically:(BOOL)vertically documentRoot:(id)root
{
  height = size.height;
  width = size.width;
  v14 = TSUPhoneUI();
  if (v14)
  {
    v15 = 3.0;
  }

  else
  {
    v15 = 2.0;
  }

  v16 = 30.0;
  if (v14)
  {
    v16 = 8.0;
  }

  v17 = v16 + (width - width) * 0.5;
  if (v14)
  {
    v18 = (v16 + (height - height) * 0.25) * 3.0;
  }

  else
  {
    v18 = v16 + (height - height) * 0.25;
  }

  v19 = v15 * (width - v16);
  v125 = v15;
  v20 = v15 * (height - v16);
  objc_opt_class();
  v21 = [TSUDynamicCast() copyWithContext:{objc_msgSend(root, "context")}];
  [objc_msgSend(info "geometry")];
  v23 = v22;
  v25 = v24;
  objc_opt_class();
  [v21 valueForProperty:517];
  v26 = TSUDynamicCast();
  if (v26)
  {
    [v26 coverageRect:{v17, v18, v19, v20}];
    v29 = v28 < 0.0;
    *&v28 = v28;
    v30 = roundf(*&v28);
    v31 = v18 - v30;
    v32 = v20 + v30;
    if (v29)
    {
      v20 = v32;
    }

    if (v29)
    {
      v18 = v31;
    }

    v33 = v27 < 0.0;
    v34 = v27;
    v35 = roundf(v34);
    v36 = v17 - v35;
    v37 = v19 + v35;
    if (v33)
    {
      v19 = v37;
    }

    if (v33)
    {
      v17 = v36;
    }
  }

  objc_opt_class();
  [v21 valueForProperty:520];
  if (TSUDynamicCast())
  {
    [v21 constrainShadowForSwatchGeneration];
    objc_opt_class();
    [v21 valueForProperty:520];
    v38 = TSUDynamicCast();
    if ([v38 isDropShadow])
    {
      [v38 shadowBoundsForRect:{v17, v18, v19, v20}];
      v41 = v40 < 0.0;
      *&v40 = v40;
      v42 = roundf(*&v40);
      v43 = v18 - v42;
      v44 = v20 + v42;
      if (v41)
      {
        v20 = v44;
      }

      if (v41)
      {
        v18 = v43;
      }

      v45 = v39 < 0.0;
      v46 = v39;
      v47 = roundf(v46);
      v48 = v17 - v47;
      v49 = v19 + v47;
      if (v45)
      {
        v19 = v49;
      }

      if (v45)
      {
        v17 = v48;
      }
    }
  }

  maskInfo = [info maskInfo];
  v51 = maskInfo;
  v126 = height;
  v123 = v25;
  v124 = v23;
  if (maskInfo)
  {
    if (vertically)
    {
      goto LABEL_38;
    }
  }

  else
  {
    maskInfo = [info instantAlphaPath];
    if (!maskInfo)
    {
      if (vertically)
      {
        goto LABEL_45;
      }

      v51 = 0;
      goto LABEL_49;
    }

    maskInfo = [info defaultMaskInfoWithContext:{objc_msgSend(root, "context")}];
    v51 = maskInfo;
    if (vertically)
    {
LABEL_38:
      if (v51)
      {
        geometry = [(TSDDrawableInfo *)v51 geometry];
        [(TSDInfoGeometry *)geometry size];
        v55 = TSDScaleSizeWithinSize(v19, v20, v53, v54);
        v57 = v56;
        [(TSDInfoGeometry *)geometry center];
        v59 = v58;
        v121 = v17;
        v60 = width;
        v62 = v61;
        v63 = [TSDScalarPathSource rectangleWithNaturalSize:v55, v57];
        v64 = [TSDInfoGeometry alloc];
        v65 = v59;
        v66 = v62;
        width = v60;
        v17 = v121;
        v67 = v55;
        v68 = v57;
        goto LABEL_46;
      }

LABEL_45:
      v71 = TSDScaleSizeWithinSize(v19, v20, v23, v25);
      v72 = v25;
      v74 = v73;
      v122 = v17;
      v75 = width;
      v76 = v23 * 0.5;
      v77 = v72 * 0.5;
      v63 = [TSDScalarPathSource rectangleWithNaturalSize:v71];
      v64 = [TSDInfoGeometry alloc];
      v65 = v76;
      width = v75;
      v17 = v122;
      v66 = v77;
      v67 = v71;
      v68 = v74;
LABEL_46:
      v78 = [(TSDInfoGeometry *)v64 initWithCenter:v65 size:v66, v67, v68];
      v51 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [root context], v78, v63);

      if (!v51)
      {
        goto LABEL_63;
      }

      goto LABEL_54;
    }
  }

  if (v51)
  {
    maskInfo = [(TSDInfoGeometry *)[(TSDDrawableInfo *)v51 geometry] size];
    goto LABEL_50;
  }

LABEL_49:
  v70 = v25;
  v69 = v23;
LABEL_50:
  v79 = v69 / v70;
  if (v79 <= width / height)
  {
    v81 = v20 * v79;
    v17 = v17 + (v19 - v81) * 0.5;
    v19 = v81;
    if (!v51)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v80 = v19 / v79;
    v18 = v18 + (v20 - v80) * 0.5;
    v20 = v80;
    if (!v51)
    {
      goto LABEL_63;
    }
  }

LABEL_54:
  geometry2 = [(TSDDrawableInfo *)v51 geometry];
  [(TSDInfoGeometry *)geometry2 size];
  v85 = v19 / v84;
  v86 = v84 <= 0.0;
  v87 = 1.0;
  if (v86)
  {
    v85 = 1.0;
  }

  if (v83 > 0.0)
  {
    v87 = v20 / v83;
  }

  if (v85 <= v87)
  {
    v88 = v87;
  }

  else
  {
    v88 = v85;
  }

  [(TSDInfoGeometry *)geometry2 position];
  v91 = TSDMultiplyPointScalar(v89, v90, v88);
  v92 = width;
  v94 = v93;
  v95 = [TSDScalarPathSource rectangleWithNaturalSize:v19, v20];
  v96 = [[TSDInfoGeometry alloc] initWithPosition:v91 size:v94, v19, v20];
  v51 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [root context], v96, v95);

  v19 = v124 * v88;
  v20 = v123 * v88;
  v17 = v17 - v91;
  v18 = v18 - v94;
  width = v92;
LABEL_63:
  v97 = TSDRoundedSize(maskInfo, v19, v20);
  v99 = v98;
  v101 = TSDRoundedPoint(v100, v17, v18);
  v103 = v102;
  v104 = [v21 boxedObjectForProperty:519];
  if (v104 && v104 != [MEMORY[0x277CBEB68] null])
  {
    [v21 fadeReflectionForSwatchGeneration];
  }

  v105 = [[TSDInfoGeometry alloc] initWithPosition:v101 size:v103, v97, v99];
  thumbnailImageData = [info thumbnailImageData];
  if (!thumbnailImageData)
  {
    thumbnailImageData = -[TSDSwatchCache p_thumbnailImageDataForImageData:](self, "p_thumbnailImageDataForImageData:", [info imageData]);
  }

  v107 = -[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]([TSDImageInfo alloc], "initWithContext:geometry:style:imageData:originalImageData:", [root context], v105, v21, thumbnailImageData, 0);
  [(TSDImageInfo *)v107 setMaskInfo:v51];
  if ([info instantAlphaPath])
  {
    [objc_msgSend(+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
    v109 = v108;
    v111 = v110;
    [info naturalSize];
    v113 = v109 / v112;
    v115 = v111 / v114;
    v116 = [objc_msgSend(info "instantAlphaPath")];
    CGAffineTransformMakeScale(&v128, v113, v115);
    [v116 transformUsingAffineTransform:&v128];
    [(TSDImageInfo *)v107 setInstantAlphaPath:v116];
  }

  v117 = [[TSDImager alloc] initWithDocumentRoot:root];
  [(TSDImager *)v117 setScaledImageSize:TSDMultiplySizeScalar(width, v126, scale)];
  TSDMultiplySizeScalar(width, v126, v125);
  TSDRectWithOriginAndSize();
  [(TSDImager *)v117 setUnscaledClipRect:?];
  -[TSDImager setInfos:](v117, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v107]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  newImage = [(TSDImager *)v117 newImage];
  v119 = [MEMORY[0x277D6C2F8] imageWithCGImage:newImage scale:0 orientation:scale];
  CGImageRelease(newImage);
  [MEMORY[0x277CD9FF0] commit];

  return v119;
}

- (id)imageForShapePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame shapeType:(int)type angle:(double)angle documentRoot:(id)root
{
  v10 = *&type;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v16 = size.height;
  v17 = size.width;
  objc_opt_class();
  v19 = [TSUDynamicCast() copyWithContext:{objc_msgSend(root, "context")}];
  v20 = [v19 boxedValueForProperty:520];
  if (v20)
  {
    if (v20 == [MEMORY[0x277CBEB68] null])
    {
      LODWORD(v20) = 0;
    }

    else
    {
      [v19 constrainShadowForSwatchGeneration];
      LODWORD(v20) = 1;
    }
  }

  [v19 fixImageFillTechniqueForSwatchOfSize:{width, height}];
  v21 = (v10 & 0xFFFFFFEF) == 2 || v10 == 19;
  if (v10 > 0x13)
  {
    goto LABEL_41;
  }

  if (((1 << v10) & 0x18002) != 0)
  {
    v28 = hypot(width, height);
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    y = CGRectGetMidY(v81);
    v82.origin.x = x;
    v82.origin.y = y;
    v82.size.width = width;
    v82.size.height = height;
    x = CGRectGetMidX(v82) + v28 * -0.5;
    height = 0.0;
    width = v28;
    goto LABEL_15;
  }

  if (((1 << v10) & 0xC0004) != 0)
  {
    v22 = 6.0;
    v23 = 6.0;
LABEL_12:
    v24 = x;
    v25 = y;
    v26 = width;
LABEL_13:
    v27 = height;
    v80 = CGRectInset(*&v24, v22, v23);
    x = v80.origin.x;
    y = v80.origin.y;
    width = v80.size.width;
    height = v80.size.height;
    goto LABEL_15;
  }

  if (v10 == 9)
  {
    x = 0.0;
    if (v20)
    {
      v24 = 0.0;
      v22 = 4.0;
      v23 = 0.0;
      v25 = y;
      v26 = v17;
      goto LABEL_13;
    }

    width = v17;
  }

  else
  {
LABEL_41:
    if ((v10 - 13) > 1)
    {
      if (v10 == 12)
      {
        [objc_msgSend(+[TSDPathSource pathSourceForShapeType:naturalSize:](TSDPathSource pathSourceForShapeType:12 naturalSize:{width, height), "bezierPath"), "bounds"}];
        v71 = v52;
        v54 = x + v53;
        v72 = x + v53;
        v73 = v55;
        v74 = y + v56;
        v70 = TSDRectWithSize();
        v77 = v58;
        v78 = v57;
        rect = v59;
        v83.origin.x = v54;
        v83.size.width = v73;
        v83.origin.y = v74;
        v83.size.height = v71;
        MinX = CGRectGetMinX(v83);
        v84.origin.x = v70;
        v84.size.width = v77;
        v84.origin.y = v78;
        v84.size.height = rect;
        v69 = MinX - CGRectGetMinX(v84);
        v85.origin.x = v72;
        v85.size.width = v73;
        v85.origin.y = v74;
        v85.size.height = v71;
        MaxX = CGRectGetMaxX(v85);
        v86.origin.x = v70;
        v86.size.width = v77;
        v86.origin.y = v78;
        v86.size.height = rect;
        v67 = MaxX - CGRectGetMaxX(v86);
        v87.origin.x = v72;
        v87.size.width = v73;
        v87.origin.y = v74;
        v87.size.height = v71;
        MinY = CGRectGetMinY(v87);
        v88.origin.x = v70;
        v88.size.width = v77;
        v88.origin.y = v78;
        v88.size.height = rect;
        v60 = MinY - CGRectGetMinY(v88);
        v89.origin.x = v72;
        v89.size.width = v73;
        v89.origin.y = v74;
        v89.size.height = v71;
        MaxY = CGRectGetMaxY(v89);
        v90.origin.x = v70;
        v90.size.width = v77;
        v90.origin.y = v78;
        v90.size.height = rect;
        v61 = MaxY - CGRectGetMaxY(v90);
        v62 = x - v69;
        v63 = width + v69;
        if (v69 >= 0.0)
        {
          v62 = x;
          v63 = width;
        }

        if (v67 > 0.0)
        {
          v63 = v63 - v67;
        }

        if (v60 >= 0.0)
        {
          v64 = height;
        }

        else
        {
          y = y - v60;
          v64 = height + v60;
        }

        if (v61 <= 0.0)
        {
          height = v64;
        }

        else
        {
          height = v64 - v61;
        }

        if (v20)
        {
          x = v62 + 4.0;
        }

        else
        {
          x = v62;
        }

        if (v20)
        {
          width = v63 + -4.0;
        }

        else
        {
          width = v63;
        }
      }
    }

    else
    {
      x = TSDRectWithSize();
      y = v49;
      width = v50;
      height = v51;
      if (v20)
      {
        v22 = 4.0;
        v23 = 4.0;
        goto LABEL_12;
      }
    }
  }

LABEL_15:
  objc_opt_class();
  [v19 valueForProperty:517];
  width = TSUDynamicCast();
  if (width)
  {
    if (v10 > 0x13 || (v30 = 2.0, ((1 << v10) & 0xD8006) == 0))
    {
      width = [width width];
    }

    if (v30 >= width)
    {
      v31 = width;
    }

    else
    {
      v31 = v30;
    }

    if (v30 >= height)
    {
      v30 = height;
    }

    x = x + v31;
    width = width - v31 * 2.0;
    y = y + v30;
    height = height - v30 * 2.0;
  }

  v32 = TSDRoundedRect(width, x, y, width, height);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = [v19 boxedObjectForProperty:519];
  if (v39 && v39 != [MEMORY[0x277CBEB68] null])
  {
    [v19 fadeReflectionForSwatchGeneration];
  }

  if (v21)
  {
    angleCopy = 0.0;
  }

  else
  {
    angleCopy = angle;
  }

  angleCopy = [(TSDInfoGeometry *)[TSDMutableInfoGeometry alloc] initWithPosition:v32 size:v34 angle:v36, v38, angleCopy];
  [(TSDInfoGeometry *)angleCopy size];
  v42 = [TSDPathSource pathSourceForShapeType:v10 naturalSize:?];
  [v42 naturalSize];
  [(TSDMutableInfoGeometry *)angleCopy setSize:?];
  v43 = [objc_alloc(objc_opt_class()) initWithContext:objc_msgSend(root geometry:"context") style:angleCopy pathSource:{v19, v42}];
  if (v10 == 15)
  {
    [v43 setHeadLineEnd:{+[TSDLineEnd openArrow](TSDLineEnd, "openArrow")}];
    [v43 setTailLineEnd:{+[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow")}];
  }

  else if (v10 == 16)
  {
    [v43 setHeadLineEnd:{+[TSDLineEnd simpleArrow](TSDLineEnd, "simpleArrow")}];
  }

  [(TSDSwatchCache *)self applyFakeShadowForWhitePresetsIfNecessary:v43 documentRoot:root, *&MinY];
  v44 = [[TSDImager alloc] initWithDocumentRoot:root];
  [(TSDImager *)v44 setScaledImageSize:TSDMultiplySizeScalar(v17, v16, scale)];
  [(TSDImager *)v44 setUnscaledClipRect:0.0, 0.0, v17, v16];
  -[TSDImager setInfos:](v44, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v43]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  newImage = [(TSDImager *)v44 newImage];
  if (v10 <= 0x13 && ((1 << v10) & 0xC0004) != 0)
  {
    objc_opt_class();
    v46 = [(TSDSwatchCache *)self p_newImageWithConnectionLineKnobsForShape:TSUDynamicCast() atScale:newImage ofSize:scale overImage:v17, v16];
    CGImageRelease(newImage);
    newImage = v46;
  }

  v47 = [MEMORY[0x277D6C2F8] imageWithCGImage:newImage scale:0 orientation:scale];
  CGImageRelease(newImage);
  [MEMORY[0x277CD9FF0] commit];

  return v47;
}

- (CGImage)p_newImageWithConnectionLineKnobsForShape:(id)shape atScale:(double)scale ofSize:(CGSize)size overImage:(CGImage *)image
{
  v9 = TSDMultiplySizeScalar(size.width, size.height, scale);
  v11 = v10;
  v12 = TSDBitmapContextCreate(3, v9);
  v14 = [MEMORY[0x277D6C2F8] imageNamed:@"sf-ios-canvas-knob-blue" inBundle:{TSDBundle(v12, v13)}];
  v16 = [MEMORY[0x277D6C2F8] imageNamed:@"sf-ios-canvas-knob-green" inBundle:{TSDBundle(v14, v15)}];
  [v14 size];
  v18 = v17;
  v20 = v19;
  v80 = 0;
  v81 = &v80;
  v82 = 0x3010000000;
  v83 = &unk_26CAC6BB9;
  v84 = *MEMORY[0x277CBF348];
  v75 = 0;
  v76 = &v75;
  v77 = 0x3010000000;
  v78 = &unk_26CAC6BB9;
  v79 = v84;
  v70 = 0;
  v71 = &v70;
  v72 = 0x3010000000;
  v73 = &unk_26CAC6BB9;
  v74 = v84;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __85__TSDSwatchCache_p_newImageWithConnectionLineKnobsForShape_atScale_ofSize_overImage___block_invoke;
  v69[3] = &unk_279D48D00;
  v69[4] = &v80;
  v69[5] = &v75;
  v69[6] = &v70;
  *&v69[7] = scale;
  *&v69[8] = v9;
  v69[9] = v11;
  [shape performBlockWithTemporaryLayout:v69];
  v21 = TSDRectWithSize();
  v67 = v22;
  v68 = v21;
  v65 = v24;
  v66 = v23;
  v25 = TSDMultiplySizeScalar(v18, v20, scale);
  v26 = TSDRectWithCenterAndSize(v76[4], v76[5], v25);
  v28 = v27;
  v62 = v30;
  v63 = v29;
  v31 = TSDRectWithCenterAndSize(v81[4], v81[5], v25);
  v33 = v32;
  v60 = v35;
  v61 = v34;
  v36 = TSDRectWithCenterAndSize(v71[4], v71[5], v25);
  scaleCopy = scale;
  v39 = v38;
  v41 = v40;
  rect = v42;
  v44 = TSDRoundedPoint(v43, v26, v28);
  v46 = v45;
  v48 = TSDRoundedPoint(v47, v31, v33);
  v59 = v49;
  v51 = TSDRoundedPoint(v50, v36, v39);
  v53 = v52;
  v85.origin.y = v67;
  v85.origin.x = v68;
  v85.size.height = v65;
  v85.size.width = v66;
  CGContextDrawImage(v12, v85, image);
  v54 = [v14 CGImageForContentsScale:scaleCopy];
  v86.origin.x = v51;
  v86.origin.y = v53;
  v86.size.width = v41;
  v86.size.height = rect;
  CGContextDrawImage(v12, v86, v54);
  v55 = [v16 CGImageForContentsScale:scaleCopy];
  v87.origin.x = v44;
  v87.origin.y = v46;
  v87.size.height = v62;
  v87.size.width = v63;
  CGContextDrawImage(v12, v87, v55);
  v56 = [v14 CGImageForContentsScale:scaleCopy];
  v88.origin.x = v48;
  v88.origin.y = v59;
  v88.size.height = v60;
  v88.size.width = v61;
  CGContextDrawImage(v12, v88, v56);
  Image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  _Block_object_dispose(&v70, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v80, 8);
  return Image;
}

float64x2_t __85__TSDSwatchCache_p_newImageWithConnectionLineKnobsForShape_atScale_ofSize_overImage___block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = TSUDynamicCast();
  [v3 tailPoint];
  v4 = *(*(a1 + 32) + 8);
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  [v3 getControlKnobPosition:12];
  v7 = *(*(a1 + 40) + 8);
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  [v3 headPoint];
  v10 = *(*(a1 + 48) + 8);
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  memset(&v24, 0, sizeof(v24));
  if (v3)
  {
    objc_msgSend_transformInRoot(v3);
  }

  CGAffineTransformMakeScale(&t2, *(a1 + 56), *(a1 + 56));
  v21 = v24;
  CGAffineTransformConcat(&v23, &v21, &t2);
  v24 = v23;
  v13 = TSDRectWithSize();
  TSDAffineTransformForFlips(0, 1, &t2, v13, v14, v15, v16);
  v21 = v24;
  CGAffineTransformConcat(&v23, &v21, &t2);
  v24 = v23;
  v17 = *&v23.a;
  v18 = *&v23.c;
  *(*(*(a1 + 32) + 8) + 32) = vaddq_f64(*&v23.tx, vmlaq_n_f64(vmulq_n_f64(*&v23.c, *(*(*(a1 + 32) + 8) + 40)), *&v23.a, *(*(*(a1 + 32) + 8) + 32)));
  *(*(*(a1 + 40) + 8) + 32) = vaddq_f64(*&v24.tx, vmlaq_n_f64(vmulq_n_f64(v18, *(*(*(a1 + 40) + 8) + 40)), v17, *(*(*(a1 + 40) + 8) + 32)));
  v19 = *(*(a1 + 48) + 8);
  result = vaddq_f64(*&v24.tx, vmlaq_n_f64(vmulq_n_f64(v18, *(v19 + 40)), v17, *(v19 + 32)));
  *(v19 + 32) = result;
  return result;
}

- (id)imageForImagePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame imageInfo:(id)info shouldClipVertically:(BOOL)vertically documentRoot:(id)root
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15 = size.height;
  v78 = size.width;
  if (size.width < CGRectGetMaxX(frame) || (v82.origin.x = x, v82.origin.y = y, v82.size.width = width, v82.size.height = height, v15 < CGRectGetMaxY(v82)))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSwatchCache imageForImagePreset:imageSize:imageScale:swatchFrame:imageInfo:shouldClipVertically:documentRoot:]"];
    [currentHandler handleFailureInFunction:v17 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSwatchCache.m"), 1059, @"imageSize must enclose swatchFrame"}];
  }

  v18 = TSDMultiplyRectScalar(x, y, width, height, 2.0);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  objc_opt_class();
  v25 = [TSUDynamicCast() copyWithContext:{objc_msgSend(root, "context")}];
  [objc_msgSend(info "geometry")];
  v76 = v27;
  v77 = v26;
  v28 = [v25 boxedValueForProperty:520];
  if (v28 && v28 != [MEMORY[0x277CBEB68] null])
  {
    [v25 constrainShadowForSwatchGeneration];
  }

  v79 = v15;
  maskInfo = [info maskInfo];
  if (!maskInfo)
  {
    maskInfo = [info defaultMaskInfoWithContext:{objc_msgSend(root, "context")}];
  }

  geometry = [maskInfo geometry];
  [geometry size];
  v33 = TSDScaleSizeWithinSize(v22, v24, v31, v32);
  v35 = v34;
  [geometry center];
  v38 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [root context], -[TSDInfoGeometry initWithCenter:size:]([TSDInfoGeometry alloc], "initWithCenter:size:", v36, v37, v33, v35), +[TSDScalarPathSource rectangleWithNaturalSize:](TSDScalarPathSource, "rectangleWithNaturalSize:", v33, v35));
  if (v38)
  {
    geometry2 = [(TSDDrawableInfo *)v38 geometry];
    [(TSDInfoGeometry *)geometry2 size];
    v41 = v22 / v40;
    v43 = v24 / v42;
    if (v41 <= v43)
    {
      v44 = v43;
    }

    else
    {
      v44 = v41;
    }

    [(TSDInfoGeometry *)geometry2 position];
    v47 = TSDMultiplyPointScalar(v45, v46, v44);
    v49 = v48;
    v38 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [root context], -[TSDInfoGeometry initWithPosition:size:]([TSDInfoGeometry alloc], "initWithPosition:size:", v47, v48, v22, v24), +[TSDScalarPathSource rectangleWithNaturalSize:](TSDScalarPathSource, "rectangleWithNaturalSize:", v22, v24));
    v50 = v38;
    v22 = v77 * v44;
    v24 = v76 * v44;
    v18 = v18 - v47;
    v20 = v20 - v49;
  }

  else
  {
    v50 = 0;
  }

  v51 = TSDRoundedRect(v38, v18, v20, v22, v24);
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = [v25 boxedObjectForProperty:519];
  if (v58 && v58 != [MEMORY[0x277CBEB68] null])
  {
    [v25 fadeReflectionForSwatchGeneration];
  }

  v59 = [[TSDInfoGeometry alloc] initWithPosition:v51 size:v53, v55, v57];
  thumbnailImageData = [info thumbnailImageData];
  if (!thumbnailImageData)
  {
    thumbnailImageData = -[TSDSwatchCache p_thumbnailImageDataForImageData:](self, "p_thumbnailImageDataForImageData:", [info imageData]);
  }

  v61 = -[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]([TSDImageInfo alloc], "initWithContext:geometry:style:imageData:originalImageData:", [root context], v59, v25, thumbnailImageData, 0);
  [(TSDImageInfo *)v61 setMaskInfo:v50];
  if ([info instantAlphaPath])
  {
    [objc_msgSend(+[TSDImageProviderPool sharedPool](TSDImageProviderPool "sharedPool")];
    v63 = v62;
    v65 = v64;
    [info naturalSize];
    v67 = v63 / v66;
    v69 = v65 / v68;
    v70 = [objc_msgSend(info "instantAlphaPath")];
    CGAffineTransformMakeScale(&v81, v67, v69);
    [v70 transformUsingAffineTransform:&v81];
    [(TSDImageInfo *)v61 setInstantAlphaPath:v70];
  }

  v71 = [[TSDImager alloc] initWithDocumentRoot:root];
  [(TSDImager *)v71 setScaledImageSize:TSDMultiplySizeScalar(v78, v79, scale)];
  TSDMultiplySizeScalar(v78, v79, 2.0);
  TSDRectWithOriginAndSize();
  [(TSDImager *)v71 setUnscaledClipRect:?];
  -[TSDImager setInfos:](v71, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v61]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  newImage = [(TSDImager *)v71 newImage];
  v73 = [MEMORY[0x277D6C2F8] imageWithCGImage:newImage scale:0 orientation:scale];
  CGImageRelease(newImage);
  [MEMORY[0x277CD9FF0] commit];

  return v73;
}

- (CGSize)imageSizeForPreset:(id)preset swatchSize:(CGSize)size
{
  v4 = TSDRectWithSize();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  objc_opt_class();
  v11 = TSUDynamicCast();
  v12 = [v11 copyWithContext:{objc_msgSend(v11, "context")}];
  if (v12)
  {
    v13 = v12;
    v14 = TSDMultiplyRectScalar(v4, v6, v8, v10, 2.0);
    v16 = v15;
    v18 = v17;
    v20 = v19;
    objc_opt_class();
    [v13 valueForProperty:517];
    v21 = TSUDynamicCast();
    if (v21)
    {
      v22 = v21;
      if (([objc_msgSend(objc_msgSend(v21 "frameSpec")] & 1) == 0)
      {
        [v22 coverageRect:{v14, v16, v18, v20}];
        v14 = v23;
        v16 = v24;
        v18 = v25;
        v20 = v26;
      }
    }

    objc_opt_class();
    [v13 valueForProperty:519];
    TSUDynamicCast();
    objc_opt_class();
    [v13 valueForProperty:520];
    if (TSUDynamicCast())
    {
      [v13 constrainShadowForSwatchGeneration];
      objc_opt_class();
      [v13 valueForProperty:520];
      [TSUDynamicCast() shadowBoundsForRect:{v14, v16, v18, v20}];
      v14 = v27;
      v16 = v28;
      v18 = v29;
      v20 = v30;
    }

    TSDMultiplyRectScalar(v14, v16, v18, v20, 0.5);
    v8 = v31;
    v10 = v32;
  }

  v33 = v8;
  v34 = v10;
  result.height = v34;
  result.width = v33;
  return result;
}

- (id)p_maskInfoForMovieInfo:(id)info context:(id)context
{
  geometry = [info geometry];
  [geometry center];
  v7 = v6;
  v9 = v8;
  [geometry position];
  v11 = TSDSubtractPoints(v7, v9, v10);
  v13 = v12;
  [geometry size];
  v15 = v14;
  v17 = v16;
  v18 = [TSDScalarPathSource rectangleWithNaturalSize:?];
  v19 = [[TSDInfoGeometry alloc] initWithCenter:v11 size:v13, v15, v17];
  v20 = [[TSDMaskInfo alloc] initWithContext:context geometry:v19 pathSource:v18];

  return v20;
}

- (id)p_thumbnailImageDataForImageData:(id)data
{
  if (p_thumbnailImageDataForImageData__sOnce != -1)
  {
    [TSDSwatchCache p_thumbnailImageDataForImageData:];
  }

  v4 = p_thumbnailImageDataForImageData__sCache;
  objc_sync_enter(p_thumbnailImageDataForImageData__sCache);
  v5 = [p_thumbnailImageDataForImageData__sCache objectForKey:data];
  objc_sync_exit(v4);
  if (data && !v5)
  {
    v5 = TSDResampleImageData(data, 0, 0, 256.0, 256.0);
  }

  if (!v5 || v5 == data)
  {
    return data;
  }

  v6 = p_thumbnailImageDataForImageData__sCache;
  objc_sync_enter(p_thumbnailImageDataForImageData__sCache);
  [p_thumbnailImageDataForImageData__sCache setObject:v5 forKey:data];
  objc_sync_exit(v6);
  return v5;
}

void *__51__TSDSwatchCache_p_thumbnailImageDataForImageData___block_invoke()
{
  result = [objc_alloc(MEMORY[0x277D6C308]) initWithMaxSize:1];
  p_thumbnailImageDataForImageData__sCache = result;
  return result;
}

- (id)imageForMoviePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale swatchFrame:(CGRect)frame movieInfo:(id)info shouldClipVertically:(BOOL)vertically documentRoot:(id)root
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15 = size.height;
  v61 = size.width;
  if (size.width < CGRectGetMaxX(frame) || (v64.origin.x = x, v64.origin.y = y, v64.size.width = width, v64.size.height = height, v15 < CGRectGetMaxY(v64)))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSDSwatchCache imageForMoviePreset:imageSize:imageScale:swatchFrame:movieInfo:shouldClipVertically:documentRoot:]"];
    [currentHandler handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDSwatchCache.m"), 1392, @"imageSize must enclose swatchFrame"}];
  }

  v19 = TSDMultiplyRectScalar(x, y, width, height, 2.0);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  objc_opt_class();
  v26 = [TSUDynamicCast() copyWithContext:{objc_msgSend(root, "context")}];
  [objc_msgSend(info "geometry")];
  v28 = v27;
  v30 = v29;
  v31 = [v26 boxedValueForProperty:520];
  if (v31 && v31 != [MEMORY[0x277CBEB68] null])
  {
    [v26 constrainShadowForSwatchGeneration];
  }

  v62 = v15;
  v32 = -[TSDSwatchCache p_maskInfoForMovieInfo:context:](self, "p_maskInfoForMovieInfo:context:", info, [root context]);
  if (v32)
  {
    geometry = [v32 geometry];
    [geometry size];
    v35 = v23 / v34;
    v37 = v25 / v36;
    if (v35 <= v37)
    {
      v38 = v37;
    }

    else
    {
      v38 = v35;
    }

    [geometry position];
    v60 = v19;
    v41 = v21;
    v42 = v28;
    v43 = TSDMultiplyPointScalar(v39, v40, v38);
    v45 = v44;
    v46 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [root context], -[TSDInfoGeometry initWithPosition:size:]([TSDInfoGeometry alloc], "initWithPosition:size:", v43, v44, v23, v25), +[TSDScalarPathSource rectangleWithNaturalSize:](TSDScalarPathSource, "rectangleWithNaturalSize:", v23, v25));
    v23 = v42 * v38;
    v47 = v41;
    v25 = v30 * v38;
    v19 = v60 - v43;
    v21 = v47 - v45;
  }

  else
  {
    v46 = 0;
  }

  null = [v26 boxedObjectForProperty:519];
  if (null)
  {
    v49 = null;
    null = [MEMORY[0x277CBEB68] null];
    if (v49 != null)
    {
      null = [v26 fadeReflectionForSwatchGeneration];
    }
  }

  v50 = TSDRoundedRect(null, v19, v21, v23, v25);
  v54 = [[TSDInfoGeometry alloc] initWithPosition:v50 size:v51, v52, v53];
  v55 = -[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]([TSDImageInfo alloc], "initWithContext:geometry:style:imageData:originalImageData:", [root context], v54, v26, -[TSDSwatchCache p_thumbnailImageDataForImageData:](self, "p_thumbnailImageDataForImageData:", objc_msgSend(info, "posterImageData")), 0);
  [(TSDImageInfo *)v55 setMaskInfo:v46];
  v56 = [[TSDImager alloc] initWithDocumentRoot:root];
  [(TSDImager *)v56 setScaledImageSize:TSDMultiplySizeScalar(v61, v62, scale)];
  TSDMultiplySizeScalar(v61, v62, 2.0);
  TSDRectWithOriginAndSize();
  [(TSDImager *)v56 setUnscaledClipRect:?];
  -[TSDImager setInfos:](v56, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v55]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  newImage = [(TSDImager *)v56 newImage];
  v58 = [MEMORY[0x277D6C2F8] imageWithCGImage:newImage scale:0 orientation:scale];
  CGImageRelease(newImage);
  [MEMORY[0x277CD9FF0] commit];

  return v58;
}

- (id)imageForMoviePreset:(id)preset imageSize:(CGSize)size imageScale:(double)scale movieInfo:(id)info shouldClipVertically:(BOOL)vertically documentRoot:(id)root
{
  height = size.height;
  width = size.width;
  v14 = TSUPhoneUI();
  if (v14)
  {
    v15 = 3.0;
  }

  else
  {
    v15 = 2.0;
  }

  v16 = 30.0;
  if (v14)
  {
    v16 = 8.0;
  }

  v17 = v16 + (width - width) * 0.5;
  if (v14)
  {
    v18 = (v16 + (height - height) * 0.25) * 3.0;
  }

  else
  {
    v18 = v16 + (height - height) * 0.25;
  }

  v19 = v15 * (width - v16);
  v87 = v15;
  v20 = v15 * (height - v16);
  objc_opt_class();
  v21 = [TSUDynamicCast() copyWithContext:{objc_msgSend(root, "context")}];
  [objc_msgSend(info "geometry")];
  v23 = v22;
  v25 = v24;
  objc_opt_class();
  [v21 valueForProperty:517];
  v26 = TSUDynamicCast();
  if (v26)
  {
    [v26 coverageRect:{v17, v18, v19, v20}];
    v29 = v28 < 0.0;
    *&v28 = v28;
    v30 = roundf(*&v28);
    v31 = v18 - v30;
    v32 = v20 + v30;
    if (v29)
    {
      v20 = v32;
    }

    if (v29)
    {
      v18 = v31;
    }

    v33 = v27 < 0.0;
    v34 = v27;
    v35 = roundf(v34);
    v36 = v17 - v35;
    v37 = v19 + v35;
    if (v33)
    {
      v19 = v37;
    }

    if (v33)
    {
      v17 = v36;
    }
  }

  objc_opt_class();
  [v21 valueForProperty:520];
  if (TSUDynamicCast())
  {
    [v21 constrainShadowForSwatchGeneration];
    objc_opt_class();
    [v21 valueForProperty:520];
    v38 = TSUDynamicCast();
    if ([v38 isDropShadow])
    {
      [v38 shadowBoundsForRect:{v17, v18, v19, v20}];
      if (v40 < 0.0)
      {
        v41 = v40;
        v42 = roundf(v41);
        v18 = v18 - v42;
        v20 = v20 + v42;
      }

      if (v39 < 0.0)
      {
        v43 = v39;
        v44 = roundf(v43);
        v17 = v17 - v44;
        v19 = v19 + v44;
      }
    }
  }

  v88 = width;
  v89 = height;
  if (vertically)
  {
    v45 = TSDScaleSizeWithinSize(v19, v20, v23, v25);
    v46 = v25;
    v48 = v47;
    v49 = v23 * 0.5;
    v85 = v23;
    v86 = v46;
    v50 = v46 * 0.5;
    v51 = [TSDScalarPathSource rectangleWithNaturalSize:v45];
    v52 = [[TSDInfoGeometry alloc] initWithCenter:v49 size:v50, v45, v48];
    v53 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [root context], v52, v51);

    if (v53)
    {
      geometry = [(TSDDrawableInfo *)v53 geometry];
      [(TSDInfoGeometry *)geometry size];
      v56 = v19 / v55;
      v58 = v20 / v57;
      if (v56 <= v58)
      {
        v59 = v58;
      }

      else
      {
        v59 = v56;
      }

      [(TSDInfoGeometry *)geometry position];
      v62 = TSDMultiplyPointScalar(v60, v61, v59);
      v64 = v63;
      v65 = [TSDScalarPathSource rectangleWithNaturalSize:v19, v20];
      v66 = [[TSDInfoGeometry alloc] initWithPosition:v62 size:v64, v19, v20];
      v67 = -[TSDMaskInfo initWithContext:geometry:pathSource:]([TSDMaskInfo alloc], "initWithContext:geometry:pathSource:", [root context], v66, v65);

      v19 = v85 * v59;
      v20 = v86 * v59;
      v17 = v17 - v62;
      v18 = v18 - v64;
    }

    else
    {
      v67 = 0;
    }
  }

  else
  {
    v68 = v23 / v25;
    v67 = 0;
    if (v23 / v25 <= width / height)
    {
      v70 = v68 * v20;
      v17 = v17 + (v19 - v70) * 0.5;
      v19 = v70;
    }

    else
    {
      v69 = v19 / v68;
      v18 = v18 + (v20 - v69) * 0.5;
      v20 = v69;
    }
  }

  null = [v21 boxedObjectForProperty:519];
  if (null)
  {
    v72 = null;
    null = [MEMORY[0x277CBEB68] null];
    if (v72 != null)
    {
      null = [v21 fadeReflectionForSwatchGeneration];
    }
  }

  v73 = TSDRoundedPoint(null, v17, v18);
  v75 = v74;
  v77 = TSDRoundedSize(v76, v19, v20);
  v79 = [[TSDInfoGeometry alloc] initWithPosition:v73 size:v75, v77, v78];
  v80 = -[TSDImageInfo initWithContext:geometry:style:imageData:originalImageData:]([TSDImageInfo alloc], "initWithContext:geometry:style:imageData:originalImageData:", [root context], v79, v21, -[TSDSwatchCache p_thumbnailImageDataForImageData:](self, "p_thumbnailImageDataForImageData:", objc_msgSend(info, "posterImageData")), 0);
  [(TSDImageInfo *)v80 setMaskInfo:v67];
  v81 = [[TSDImager alloc] initWithDocumentRoot:root];
  [(TSDImager *)v81 setScaledImageSize:TSDMultiplySizeScalar(v88, v89, scale)];
  TSDMultiplySizeScalar(v88, v89, v87);
  TSDRectWithOriginAndSize();
  [(TSDImager *)v81 setUnscaledClipRect:?];
  -[TSDImager setInfos:](v81, "setInfos:", [MEMORY[0x277CBEA60] arrayWithObject:v80]);
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  newImage = [(TSDImager *)v81 newImage];
  v83 = [MEMORY[0x277D6C2F8] imageWithCGImage:newImage scale:0 orientation:scale];
  CGImageRelease(newImage);
  [MEMORY[0x277CD9FF0] commit];

  return v83;
}

@end