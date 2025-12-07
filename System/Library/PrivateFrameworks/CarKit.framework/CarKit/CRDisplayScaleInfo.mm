@interface CRDisplayScaleInfo
+ (id)displayScaleInfoWithDictionary:(id)dictionary screenType:(unint64_t)type zoomFactor:(id)factor error:(id *)error;
- (BOOL)allowsSmartZoom;
- (CGSize)_heuristicPixelSize;
- (CGSize)_minHeightDisplaySize;
- (CGSize)_minWidthDisplaySize;
- (CGSize)_pixelSizeByClampingToMinSize:(CGSize)size pointScale:(unint64_t)scale;
- (CGSize)canvasPixelSizeForDisplayScaleMode:(int64_t)mode;
- (CGSize)physicalSize;
- (CGSize)pixelSize;
- (CGSize)squaredPixelSize;
- (CRDisplayScaleInfo)initWithPhysicalSize:(CGSize)size pixelSize:(CGSize)pixelSize viewAreas:(id)areas screenType:(unint64_t)type zoomFactor:(id)factor;
- (CRDisplayScaleInfo)initWithScreenInfo:(id)info;
- (double)_optimalScaleFactorWithPointScale:(unint64_t)scale;
- (id)_allowedScaleModes;
- (id)description;
- (id)displayScaleModesForCanvasPixelSize:(CGSize)size;
- (int64_t)_scaleMode;
- (int64_t)defaultDisplayMode;
- (unint64_t)optimizedPointScale;
- (unint64_t)originalPointScale;
- (unint64_t)preferredPointScale;
@end

@implementation CRDisplayScaleInfo

+ (id)displayScaleInfoWithDictionary:(id)dictionary screenType:(unint64_t)type zoomFactor:(id)factor error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  factorCopy = factor;
  v38.width = 0.0;
  v38.height = 0.0;
  v11 = CRSizeFromAirPlayDictionaryForKey(dictionaryCopy, *MEMORY[0x1E6962438], &v38);
  if ((v11 & 1) == 0)
  {
    v15 = CarDisplayScaleLogging(v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(CRDisplayScaleInfo *)dictionaryCopy displayScaleInfoWithDictionary:v15 screenType:v16 zoomFactor:v17 error:v18, v19, v20, v21];
    }

    if (error)
    {
      v22 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v42[0] = @"Unable to parse display physical size";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      *error = [v22 errorWithDomain:@"com.apple.carkit" code:-10001 userInfo:v23];
    }

    goto LABEL_14;
  }

  v37.width = 0.0;
  v37.height = 0.0;
  v12 = CRSizeFromAirPlayDictionaryForKey(dictionaryCopy, *MEMORY[0x1E6962440], &v37);
  if (v12)
  {
    objc_opt_class();
    v13 = [dictionaryCopy objectForKey:@"ViewAreas"];
    if (v13 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v33 = [v14 bs_map:&__block_literal_global];
    if (!factorCopy)
    {
      objc_opt_class();
      v34 = [dictionaryCopy objectForKeyedSubscript:@"ZoomFactor"];
      if (v34 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        factorCopy = v34;
      }

      else
      {
        factorCopy = 0;
      }
    }

    v35 = [CRDisplayScaleInfo alloc];
    v32 = [(CRDisplayScaleInfo *)v35 initWithPhysicalSize:v33 pixelSize:type viewAreas:factorCopy screenType:v38.width zoomFactor:v38.height, v37.width, v37.height];

    goto LABEL_23;
  }

  v24 = CarDisplayScaleLogging(v12);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    [(CRDisplayScaleInfo *)dictionaryCopy displayScaleInfoWithDictionary:v24 screenType:v25 zoomFactor:v26 error:v27, v28, v29, v30];
  }

  if (!error)
  {
LABEL_14:
    v32 = 0;
    goto LABEL_24;
  }

  v31 = MEMORY[0x1E696ABC0];
  v39 = *MEMORY[0x1E696A578];
  v40 = @"Unable to parse display pixel size";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
  [v31 errorWithDomain:@"com.apple.carkit" code:-10001 userInfo:v14];
  *error = v32 = 0;
LABEL_23:

LABEL_24:

  return v32;
}

CRViewArea *__81__CRDisplayScaleInfo_displayScaleInfoWithDictionary_screenType_zoomFactor_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[CRViewArea alloc] initWithAirPlayDictionary:v2];

  return v3;
}

- (CRDisplayScaleInfo)initWithScreenInfo:(id)info
{
  v4 = MEMORY[0x1E695DF70];
  infoCopy = info;
  array = [v4 array];
  viewAreas = [infoCopy viewAreas];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __41__CRDisplayScaleInfo_initWithScreenInfo___block_invoke;
  v21[3] = &unk_1E82FBDE8;
  v22 = array;
  v8 = array;
  [viewAreas enumerateObjectsUsingBlock:v21];

  [infoCopy physicalSize];
  v10 = v9;
  v12 = v11;
  [infoCopy pixelSize];
  v14 = v13;
  v16 = v15;
  screenType = [infoCopy screenType];
  zoomFactor = [infoCopy zoomFactor];

  v19 = [(CRDisplayScaleInfo *)self initWithPhysicalSize:v8 pixelSize:screenType viewAreas:zoomFactor screenType:v10 zoomFactor:v12, v14, v16];
  return v19;
}

void __41__CRDisplayScaleInfo_initWithScreenInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CRViewArea alloc];
  [v3 visibleFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v3 unadjustedSafeFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v21 = [(CRViewArea *)v4 initWithVisiblePixelFrame:v6 safeAreaPixelFrame:v8, v10, v12, v14, v16, v18, v20];
  [v2 addObject:v21];
}

- (CRDisplayScaleInfo)initWithPhysicalSize:(CGSize)size pixelSize:(CGSize)pixelSize viewAreas:(id)areas screenType:(unint64_t)type zoomFactor:(id)factor
{
  height = pixelSize.height;
  width = pixelSize.width;
  v11 = size.height;
  v12 = size.width;
  v63 = *MEMORY[0x1E69E9840];
  areasCopy = areas;
  factorCopy = factor;
  v56.receiver = self;
  v56.super_class = CRDisplayScaleInfo;
  v16 = [(CRDisplayScaleInfo *)&v56 init];
  if (!v16)
  {
    goto LABEL_51;
  }

  v17 = areasCopy;
  v18 = v17;
  v19 = v12 - *MEMORY[0x1E695F060];
  v20 = -v19;
  if (v19 >= 0.0)
  {
    v20 = v12 - *MEMORY[0x1E695F060];
  }

  if (v20 > 1.0)
  {
    goto LABEL_9;
  }

  v21 = v11 - *(MEMORY[0x1E695F060] + 8);
  if (v21 < 0.0)
  {
    v21 = -v21;
  }

  if (v21 > 1.0)
  {
LABEL_9:
    if (v12 < 1.0 || v11 < 1.0)
    {
      v22 = CarDisplayScaleLogging(v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C81FC000, v22, OS_LOG_TYPE_DEFAULT, "Physical size is zero, pixel density is not valid", buf, 2u);
      }
    }

    else
    {
      if (width / v12 < 2.0)
      {
        v22 = CarDisplayScaleLogging(v17);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_21;
        }

        v23 = BSNSStringFromCGSize();
        v24 = BSNSStringFromCGSize();
        *buf = 138412546;
        v58 = v23;
        v59 = 2114;
        v60 = v24;
        v25 = "Horizontal density is too low: pixelSize:%{publiic}@; physicalSize:%{public}@";
        goto LABEL_20;
      }

      if (height / v11 >= 2.0)
      {
        goto LABEL_25;
      }

      v22 = CarDisplayScaleLogging(v17);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = BSNSStringFromCGSize();
        v24 = BSNSStringFromCGSize();
        *buf = 138412546;
        v58 = v23;
        v59 = 2114;
        v60 = v24;
        v25 = "Vertical density is too low: pixelSize:%{publiic}@; physicalSize:%{public}@";
LABEL_20:
        _os_log_impl(&dword_1C81FC000, v22, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
      }
    }

LABEL_21:

    v32 = CGSizeSquaredPixelSizeWithPhysicalSize(width, height, v12, v11);
    v34 = v33;
    v35 = CRPointScaleWithSize(type, v18, width, height, v12, v11);
    v36 = 1.0 / v35;
    v12 = v32 * v36 * 0.376647834;
    v11 = v34 * v36 * 0.376647834;
    v28 = CarDisplayScaleLogging(v35);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = BSNSStringFromCGSize();
      v30 = BSNSStringFromCGSize();
      *buf = 138543874;
      v58 = v29;
      v59 = 2114;
      v60 = v30;
      v61 = 2114;
      v62 = &unk_1F47F2718;
      v31 = "Physical size is not valid, applying default size Result(%{public}@) = PointSize(%{public}@)/CROptimalPointsPerMM(%{public}@)";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v26 = CRPointScaleWithSize(type, v17, width, height, v12, v11);
  v27 = 1.0 / v26;
  v12 = width * v27 * 0.376647834;
  v11 = height * v27 * 0.376647834;
  v28 = CarDisplayScaleLogging(v26);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = BSNSStringFromCGSize();
    v30 = BSNSStringFromCGSize();
    *buf = 138543874;
    v58 = v29;
    v59 = 2114;
    v60 = v30;
    v61 = 2114;
    v62 = &unk_1F47F2718;
    v31 = "Physical size is zero, applying default size Result(%{public}@) = PointSize(%{public}@)/CROptimalPointsPerMM(%{public}@)";
LABEL_23:
    _os_log_impl(&dword_1C81FC000, v28, OS_LOG_TYPE_DEFAULT, v31, buf, 0x20u);
  }

LABEL_24:

LABEL_25:
  v16->_physicalSize.width = v12;
  v16->_physicalSize.height = v11;
  v16->_pixelSize.width = width;
  v16->_pixelSize.height = height;
  v16->_squaredPixelSize.width = CGSizeSquaredPixelSizeWithPhysicalSize(width, height, v12, v11);
  v16->_squaredPixelSize.height = v37;
  v38 = [v18 copy];
  viewAreas = v16->_viewAreas;
  v16->_viewAreas = v38;

  v16->_screenType = type;
  objc_opt_class();
  v40 = +[CARPrototypePref zoomFactor];
  internalSettingsValue = [v40 internalSettingsValue];
  if (internalSettingsValue && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v42 = internalSettingsValue;
  }

  else
  {
    v42 = 0;
  }

  floatValue = [v42 floatValue];
  v45 = v44;
  if (v44 >= 0.001)
  {
    v47 = CarDisplayScaleLogging(floatValue);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [MEMORY[0x1E696AD98] numberWithDouble:v45];
      *buf = 138543362;
      v58 = v48;
      _os_log_impl(&dword_1C81FC000, v47, OS_LOG_TYPE_DEFAULT, "Internal settings zoom factor specified: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    [factorCopy floatValue];
    v45 = v46;
  }

  v49 = v45 / 100.0;
  if (v45 / 100.0 > 5.0 || v49 < 0.1)
  {
    v49 = 1.0;
  }

  v51 = 0.7;
  v52 = v49 <= 0.7;
  v53 = v49 < 1.5 || v49 <= 0.7;
  if (v49 >= 1.5)
  {
    v52 = 1;
  }

  if (!v53)
  {
    v51 = 1.5;
  }

  if (v52)
  {
    v49 = v51;
  }

  v16->_zoomFactor = v49;
  if (![(CRDisplayScaleInfo *)v16 _customZoomEnabled])
  {
    [_TtC6CarKit14DisplayScaling zoomFactorHeuristicsWithScreenType:type physicalSize:v12 pixelSize:v11, width, height];
    v16->_zoomFactor = v54;
  }

LABEL_51:
  return v16;
}

- (CGSize)canvasPixelSizeForDisplayScaleMode:(int64_t)mode
{
  v67 = *MEMORY[0x1E69E9840];
  screenType = [(CRDisplayScaleInfo *)self screenType];
  if (screenType != 1)
  {
    if (screenType)
    {
      v27 = *MEMORY[0x1E695F060];
      v29 = *(MEMORY[0x1E695F060] + 8);
      goto LABEL_30;
    }

    if (!mode)
    {
      mode = [(CRDisplayScaleInfo *)self defaultDisplayMode];
    }

    if (mode == 2)
    {
      if ([(CRDisplayScaleInfo *)self _customZoomEnabled])
      {
        [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
        v40 = v39;
        [(CRDisplayScaleInfo *)self zoomFactor];
        v42 = v40 / v41;
        squaredPixelSize = [(CRDisplayScaleInfo *)self squaredPixelSize];
        v12 = (((v42 * v44) + 1) & 0xFFFFFFFE);
        v13 = (((v42 * v45) + 1) & 0xFFFFFFFE);
        v14 = CarDisplayScaleLogging(squaredPixelSize);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = BSNSStringFromCGSize();
          [(CRDisplayScaleInfo *)self squaredPixelSize];
          v16 = BSNSStringFromCGSize();
          v18 = [MEMORY[0x1E696AD98] numberWithDouble:v42];
          v46 = MEMORY[0x1E696AD98];
          [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
          v19 = [v46 numberWithDouble:?];
          v47 = MEMORY[0x1E696AD98];
          [(CRDisplayScaleInfo *)self zoomFactor];
          v48 = [v47 numberWithDouble:?];
          *v64 = 138544642;
          *&v64[4] = v15;
          *&v64[12] = 2114;
          *&v64[14] = v16;
          *&v64[22] = 2114;
          v65 = v18;
          *v66 = 2114;
          *&v66[2] = v19;
          *&v66[10] = 2114;
          *&v66[12] = v48;
          *&v66[20] = 2114;
          *&v66[22] = self;
          _os_log_impl(&dword_1C81FC000, v14, OS_LOG_TYPE_DEFAULT, "Optimal[with ZoomFactor] primary display scale canvas size calculated: Result(%{public}@) = SquaredPixelSize(%{public}@) x AdjustedScale(%{public}@); AdjustedScale=PreferredToOriginalScaleRatio(%{public}@)/zoomFactor(%{public}@)\nDisplayInfo: %{public}@", v64, 0x3Eu);

LABEL_20:
        }
      }

      else
      {
        [(CRDisplayScaleInfo *)self _optimalScaleFactorWithPointScale:[(CRDisplayScaleInfo *)self preferredPointScale]];
        v50 = v49;
        squaredPixelSize2 = [(CRDisplayScaleInfo *)self squaredPixelSize];
        v12 = (((v50 * v52) + 1) & 0xFFFFFFFE);
        v13 = (((v50 * v53) + 1) & 0xFFFFFFFE);
        v14 = CarDisplayScaleLogging(squaredPixelSize2);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = BSNSStringFromCGSize();
          [(CRDisplayScaleInfo *)self squaredPixelSize];
          v16 = BSNSStringFromCGSize();
          v18 = [MEMORY[0x1E696AD98] numberWithDouble:v50];
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRDisplayScaleInfo preferredPointScale](self, "preferredPointScale")}];
          *v64 = 138544386;
          *&v64[4] = v15;
          *&v64[12] = 2114;
          *&v64[14] = v16;
          *&v64[22] = 2114;
          v65 = v18;
          *v66 = 2114;
          *&v66[2] = v19;
          *&v66[10] = 2114;
          *&v66[12] = self;
          v20 = "Optimal[no ZoomFactor] primary display scale canvas size calculated: Result(%{public}@) = PixelSize(%{public}@) x OptimalScaleFactor(%{public}@) at PointScale(%{public}@)\nDisplayInfo: %{public}@";
          goto LABEL_19;
        }
      }
    }

    else
    {
      if (mode != 1)
      {
        v12 = *MEMORY[0x1E695F060];
        v13 = *(MEMORY[0x1E695F060] + 8);
        goto LABEL_22;
      }

      [(CRDisplayScaleInfo *)self squaredPixelSize];
      v7 = v6;
      v9 = v8;
      preferredToOriginalScaleRatio = [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
      v12 = v7 * v11;
      v13 = v9 * v11;
      v14 = CarDisplayScaleLogging(preferredToOriginalScaleRatio);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = BSNSStringFromCGSize();
        [(CRDisplayScaleInfo *)self squaredPixelSize];
        v16 = BSNSStringFromCGSize();
        v17 = MEMORY[0x1E696AD98];
        [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
        v18 = [v17 numberWithDouble:?];
        v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRDisplayScaleInfo preferredPointScale](self, "preferredPointScale")}];
        *v64 = 138544386;
        *&v64[4] = v15;
        *&v64[12] = 2114;
        *&v64[14] = v16;
        *&v64[22] = 2114;
        v65 = v18;
        *v66 = 2114;
        *&v66[2] = v19;
        *&v66[10] = 2114;
        *&v66[12] = self;
        v20 = "Default primary display scale canvas size calculated: Result(%{public}@)=SquaredPixelSize(%{public}@) x PreferredToOriginalRatio(%{public}@) at PointScale(%{public}@)\nDisplayInfo: %{public}@";
LABEL_19:
        _os_log_impl(&dword_1C81FC000, v14, OS_LOG_TYPE_DEFAULT, v20, v64, 0x34u);
        goto LABEL_20;
      }
    }

LABEL_22:
    v54 = [(CRDisplayScaleInfo *)self _pixelSizeByClampingToMinSize:[(CRDisplayScaleInfo *)self preferredPointScale:*v64] pointScale:v12, v13];
    v27 = v56;
    v29 = v55;
    if (v12 < v56 || v13 < v55)
    {
      v58 = CarDisplayScaleLogging(v54);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = BSNSStringFromCGSize();
        v60 = BSNSStringFromCGSize();
        v61 = BSNSStringFromCGSize();
        *v64 = 138543874;
        *&v64[4] = v59;
        *&v64[12] = 2114;
        *&v64[14] = v60;
        *&v64[22] = 2114;
        v65 = v61;
        _os_log_impl(&dword_1C81FC000, v58, OS_LOG_TYPE_DEFAULT, "Primary display size is less than minimum: Size(%{public}@) < Min(%{public}@); Returning minimal size;\n minSize(%{public}@)", v64, 0x20u);
      }
    }

    goto LABEL_30;
  }

  [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
  v22 = v21;
  [(CRDisplayScaleInfo *)self zoomFactor];
  v24 = v22 / v23;
  squaredPixelSize3 = [(CRDisplayScaleInfo *)self squaredPixelSize];
  v27 = v24 * v26;
  v29 = v24 * v28;
  v30 = CarDisplayScaleLogging(squaredPixelSize3);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = BSNSStringFromCGSize();
    [(CRDisplayScaleInfo *)self squaredPixelSize];
    v32 = BSNSStringFromCGSize();
    v33 = [MEMORY[0x1E696AD98] numberWithDouble:v24];
    v34 = MEMORY[0x1E696AD98];
    [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
    v35 = [v34 numberWithDouble:?];
    v36 = MEMORY[0x1E696AD98];
    [(CRDisplayScaleInfo *)self zoomFactor];
    v37 = [v36 numberWithDouble:?];
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRDisplayScaleInfo preferredPointScale](self, "preferredPointScale")}];
    *v64 = 138544642;
    *&v64[4] = v31;
    *&v64[12] = 2114;
    *&v64[14] = v32;
    *&v64[22] = 2114;
    v65 = v33;
    *v66 = 2114;
    *&v66[2] = v35;
    *&v66[10] = 2114;
    *&v66[12] = v37;
    *&v66[20] = 2114;
    *&v66[22] = v38;
    _os_log_impl(&dword_1C81FC000, v30, OS_LOG_TYPE_DEFAULT, "Secondary display size after scaling: Size(%{public}@) = SquaredPixelSize(%{public}@) x Scale(%{public}@); Scale = PreferredToOriginalScaleRatio(%{public}@)/ZoomFactor(%{public}@) at PointScale(%{public}@)", v64, 0x3Eu);
  }

LABEL_30:
  v62 = v27;
  v63 = v29;
  result.height = v63;
  result.width = v62;
  return result;
}

- (id)displayScaleModesForCanvasPixelSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [MEMORY[0x1E695DFA8] set];
  v7 = floor(width);
  v8 = floor(height);
  for (i = 1; i != 3; ++i)
  {
    [(CRDisplayScaleInfo *)self canvasPixelSizeForDisplayScaleMode:i];
    v11 = v10;
    v13 = v12;
    v14 = 1.0 / [(CRDisplayScaleInfo *)self preferredPointScale];
    v15 = floor(v11 * v14);
    v16 = floor(v13 * v14);
    if (v15 == v7 && v16 == v8)
    {
      v18 = [MEMORY[0x1E696AD98] numberWithInteger:{i, v16}];
      [v6 addObject:v18];
    }
  }

  return v6;
}

- (id)_allowedScaleModes
{
  v26 = *MEMORY[0x1E69E9840];
  [(CRDisplayScaleInfo *)self canvasPixelSizeForDisplayScaleMode:1];
  v4 = v3;
  v6 = v5;
  v7 = [(CRDisplayScaleInfo *)self canvasPixelSizeForDisplayScaleMode:2];
  v10 = v9;
  v11 = v4 - v8;
  if (v4 - v8 < 0.0)
  {
    v11 = -(v4 - v8);
  }

  if (v11 <= v4 * 0.05)
  {
    v13 = v6 - v9;
    if (v6 - v10 < 0.0)
    {
      v13 = -(v6 - v10);
    }

    v12 = v13 <= v6 * 0.05;
  }

  else
  {
    v12 = 0;
  }

  v14 = CarDisplayScaleLogging(v7);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = BSStringFromCGSize();
    v16 = BSStringFromCGSize();
    v17 = NSStringFromBOOL();
    v20 = 138543874;
    v21 = v15;
    v22 = 2114;
    v23 = v16;
    v24 = 2114;
    v25 = v17;
    _os_log_impl(&dword_1C81FC000, v14, OS_LOG_TYPE_DEFAULT, "Allowed scale modes: defaultSize:%{public}@, optimizedSize:%{public}@; Original equals to default?: %{public}@", &v20, 0x20u);
  }

  if (v12)
  {
    v18 = &unk_1F47F26D0;
  }

  else
  {
    v18 = &unk_1F47F26E8;
  }

  return v18;
}

- (BOOL)allowsSmartZoom
{
  _allowedScaleModes = [(CRDisplayScaleInfo *)self _allowedScaleModes];
  v3 = [_allowedScaleModes count] > 1;

  return v3;
}

- (unint64_t)optimizedPointScale
{
  v39 = *MEMORY[0x1E69E9840];
  [(CRDisplayScaleInfo *)self _optimalScaleFactorWithPointScale:[(CRDisplayScaleInfo *)self originalPointScale]];
  v4 = v3;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v7 = v4 * v6;
  v8 = (((v4 * v5) + 1) & 0xFFFFFFFE);
  v9 = ((v7 + 1) & 0xFFFFFFFE);
  [(CRDisplayScaleInfo *)self _pixelSizeByClampingToMinSize:[(CRDisplayScaleInfo *)self originalPointScale] pointScale:v8, v9];
  v11 = v10;
  v13 = v12;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v15 = v11 / v14;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v17 = v13 / v16;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  if (v15 >= v17)
  {
    v20 = v13 / v19;
  }

  else
  {
    v20 = v11 / v18;
  }

  if ([(CRDisplayScaleInfo *)self originalPointScale]== 2 && v20 < 0.96)
  {
    v21 = CarDisplayScaleLogging(2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      [(CRDisplayScaleInfo *)self squaredPixelSize];
      v22 = BSStringFromCGSize();
      v23 = BSStringFromCGSize();
      v24 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
      v33 = 138412802;
      v34 = v22;
      v35 = 2114;
      v36 = v23;
      v37 = 2114;
      v38 = v24;
      _os_log_impl(&dword_1C81FC000, v21, OS_LOG_TYPE_DEFAULT, "Jumping to 3x scale: squaredPixelSize:%{self.squaredPixelSize}@, minSize:%{public}@; ratio: %{public}@", &v33, 0x20u);
    }

    return 3;
  }

  else
  {
    [(CRDisplayScaleInfo *)self physicalSize];
    v27 = v26;
    v29 = v28;
    screenType = [(CRDisplayScaleInfo *)self screenType];
    viewAreas = [(CRDisplayScaleInfo *)self viewAreas];
    v32 = CRPointScaleWithSize(screenType, viewAreas, v8, v9, v27, v29);

    return v32;
  }
}

- (unint64_t)preferredPointScale
{
  optimizedPointScale = [(CRDisplayScaleInfo *)self optimizedPointScale];
  if (optimizedPointScale <= [(CRDisplayScaleInfo *)self originalPointScale])
  {

    return [(CRDisplayScaleInfo *)self originalPointScale];
  }

  else
  {

    return [(CRDisplayScaleInfo *)self optimizedPointScale];
  }
}

- (int64_t)defaultDisplayMode
{
  if ([(CRDisplayScaleInfo *)self isHeuristicScalable])
  {
    return 2;
  }

  if ([(CRDisplayScaleInfo *)self _customZoomEnabled])
  {
    return 2;
  }

  return 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  [(CRDisplayScaleInfo *)self physicalSize];
  v4 = BSStringFromCGSize();
  [(CRDisplayScaleInfo *)self pixelSize];
  v5 = BSStringFromCGSize();
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v6 = BSStringFromCGSize();
  viewAreas = [(CRDisplayScaleInfo *)self viewAreas];
  screenType = [(CRDisplayScaleInfo *)self screenType];
  v9 = @"Unknown";
  if (screenType == 1)
  {
    v9 = @"Secondary";
  }

  if (!screenType)
  {
    v9 = @"Primary";
  }

  v10 = MEMORY[0x1E696AD98];
  v11 = v9;
  [(CRDisplayScaleInfo *)self preferredToOriginalScaleRatio];
  v12 = [v10 numberWithDouble:?];
  v13 = MEMORY[0x1E696AD98];
  [(CRDisplayScaleInfo *)self zoomFactor];
  v14 = [v13 numberWithDouble:?];
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[CRDisplayScaleInfo preferredPointScale](self, "preferredPointScale")}];
  v16 = [v3 stringWithFormat:@"DisplayInfo: physicalSize: %@ pixelSize: %@; squaredPixelSize: %@; viewAreas: %@; screenType: %@; Scale Information = PreferredToOriginalScaleRatio(%@)/ZoomFactor(%@) at PointScale(%@);", v4, v5, v6, viewAreas, v11, v12, v14, v15];;

  return v16;
}

- (double)_optimalScaleFactorWithPointScale:(unint64_t)scale
{
  [(CRDisplayScaleInfo *)self pixelSize];
  v5 = 1.0 / scale;
  v7 = v5 * v6;
  v9 = v5 * v8;
  [(CRDisplayScaleInfo *)self physicalSize];
  v11 = v10;
  [(CRDisplayScaleInfo *)self physicalSize];
  v13 = v9 / v7 * (v11 / v12);
  [(CRDisplayScaleInfo *)self physicalSize];
  if (v13 <= 1.01)
  {
    v16 = v7 / v14;
  }

  else
  {
    v16 = v9 / v15;
  }

  return 2.655 / v16;
}

- (unint64_t)originalPointScale
{
  screenType = [(CRDisplayScaleInfo *)self screenType];
  if (screenType == 1)
  {
    goto LABEL_8;
  }

  if (screenType)
  {
    return 1;
  }

  _scaleMode = [(CRDisplayScaleInfo *)self _scaleMode];
  if ((_scaleMode - 1) >= 3)
  {
    if (!_scaleMode)
    {
      [(CRDisplayScaleInfo *)self squaredPixelSize];
      v7 = v6;
      v9 = v8;
      [(CRDisplayScaleInfo *)self physicalSize];
      v11 = v10;
      v13 = v12;
      screenType2 = [(CRDisplayScaleInfo *)self screenType];
      viewAreas = [(CRDisplayScaleInfo *)self viewAreas];
      v5 = CRPointScaleWithSize(screenType2, viewAreas, v7, v9, v11, v13);
      goto LABEL_12;
    }

LABEL_8:
    screenType3 = [(CRDisplayScaleInfo *)self screenType];
    [(CRDisplayScaleInfo *)self physicalSize];
    v18 = v17;
    v20 = v19;
    [(CRDisplayScaleInfo *)self pixelSize];
    v5 = [_TtC6CarKit14DisplayScaling exceptionPointScaleWithScreenType:screenType3 physicalSize:v18 pixelSize:v20, v21, v22];
    if (v5 > 0)
    {
      return v5;
    }

    viewAreas = +[CARPrototypePref force3xCluster];
    if ([viewAreas valueBool])
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

LABEL_12:

    return v5;
  }

  return 3;
}

- (CGSize)_pixelSizeByClampingToMinSize:(CGSize)size pointScale:(unint64_t)scale
{
  height = size.height;
  width = size.width;
  [(CRDisplayScaleInfo *)self _minHeightDisplaySize];
  v10 = (((v8 * scale) + 1) & 0xFFFFFFFE);
  v11 = (((v9 * scale) + 1) & 0xFFFFFFFE);
  [(CRDisplayScaleInfo *)self _minWidthDisplaySize];
  v14 = (((v12 * scale) + 1) & 0xFFFFFFFE);
  v15 = (((v13 * scale) + 1) & 0xFFFFFFFE);
  if (v10 >= v14 && v11 >= v15)
  {
    v14 = v10;
    v15 = v11;
  }

  if (width >= v14 && height >= v15)
  {
    v14 = width;
    v15 = height;
  }

  result.height = v15;
  result.width = v14;
  return result;
}

- (CGSize)_minHeightDisplaySize
{
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v4 = v3;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v6 = v5;
  v8 = v7;
  viewAreas = [(CRDisplayScaleInfo *)self viewAreas];
  CRMinViewAreaPixelSize(viewAreas, v6, v8);
  v11 = v4 / v10;

  v12 = v11 * 240.0;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v14 = v12 * v13;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v16 = v14 / v15;
  v17 = v12;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)_minWidthDisplaySize
{
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v4 = v3;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v6 = v5;
  v8 = v7;
  viewAreas = [(CRDisplayScaleInfo *)self viewAreas];
  v10 = v4 / CRMinViewAreaPixelSize(viewAreas, v6, v8);

  v11 = v10 * 355.0;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v13 = v11 * v12;
  [(CRDisplayScaleInfo *)self squaredPixelSize];
  v15 = v13 / v14;
  v16 = v11;
  result.height = v15;
  result.width = v16;
  return result;
}

- (CGSize)_heuristicPixelSize
{
  _scaleMode = [(CRDisplayScaleInfo *)self _scaleMode];
  if (_scaleMode > 1)
  {
    if (_scaleMode == 2)
    {
      [(CRDisplayScaleInfo *)self physicalSize];
      v8 = v10;
      v5 = 1380.0;
      goto LABEL_10;
    }

    if (_scaleMode == 3)
    {
      [(CRDisplayScaleInfo *)self physicalSize];
      v8 = v9;
      v5 = 774.0;
      goto LABEL_10;
    }
  }

  else if (_scaleMode)
  {
    if (_scaleMode == 1)
    {
      [(CRDisplayScaleInfo *)self physicalSize];
      v8 = v7;
      v5 = 720.0;
LABEL_10:
      v4 = v6 * v5 / v8;
    }
  }

  else
  {
    [(CRDisplayScaleInfo *)self squaredPixelSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (int64_t)_scaleMode
{
  v29 = *MEMORY[0x1E69E9840];
  [(CRDisplayScaleInfo *)self physicalSize];
  v4 = v3;
  [(CRDisplayScaleInfo *)self physicalSize];
  v6 = v4 / v5;
  [(CRDisplayScaleInfo *)self physicalSize];
  if (v7 <= 80.0)
  {
    [(CRDisplayScaleInfo *)self pixelSize];
    if (v8 >= 600.0)
    {
      [(CRDisplayScaleInfo *)self pixelSize];
      if (v21 < 684.0 && v6 >= 1.6)
      {
        return 1;
      }
    }
  }

  [(CRDisplayScaleInfo *)self physicalSize];
  if (fabs(v9 + -156.0) < 0.00001)
  {
    [(CRDisplayScaleInfo *)self pixelSize];
    if (fabs(v10 + -1172.0) < 0.00001 && v6 <= 1.0)
    {
      return 2;
    }
  }

  [(CRDisplayScaleInfo *)self physicalSize];
  if (fabs(v12 + -91.0) >= 0.00001)
  {
    return 0;
  }

  [(CRDisplayScaleInfo *)self pixelSize];
  v22 = 0;
  if (fabs(v13 + -720.0) < 0.00001 && v6 >= 2.4)
  {
    [(CRDisplayScaleInfo *)self viewAreas];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v14 = v27 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v25;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v25 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v24 + 1) + 8 * i) visiblePixelFrame];
          if (v20 == 1760.0 && v19 == 660.0)
          {

            v22 = 3;
            goto LABEL_27;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v22 = 0;
LABEL_27:
  }

  return v22;
}

- (CGSize)physicalSize
{
  width = self->_physicalSize.width;
  height = self->_physicalSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)pixelSize
{
  width = self->_pixelSize.width;
  height = self->_pixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)squaredPixelSize
{
  width = self->_squaredPixelSize.width;
  height = self->_squaredPixelSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (void)displayScaleInfoWithDictionary:(uint64_t)a3 screenType:(uint64_t)a4 zoomFactor:(uint64_t)a5 error:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1C81FC000, a2, a3, "Unable to parse display physical size: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)displayScaleInfoWithDictionary:(uint64_t)a3 screenType:(uint64_t)a4 zoomFactor:(uint64_t)a5 error:(uint64_t)a6 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_1C81FC000, a2, a3, "Unable to parse display pixel size: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end