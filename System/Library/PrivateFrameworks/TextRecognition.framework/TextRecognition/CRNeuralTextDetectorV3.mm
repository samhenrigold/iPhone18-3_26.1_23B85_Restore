@interface CRNeuralTextDetectorV3
+ (BOOL)computeClassCount:(void *)count classProbabiity:(void *)probabiity fromSingleTextFeature:(id)feature map:(const void *)map backgroundClass:(int)class;
+ (CGSize)scaledImageSizeForConfiguration:(id)configuration imageSize:(CGSize)size;
+ (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)height originalImageSize:(CGSize)size configuration:(id)configuration;
+ (double)scaledImageSizeForMaxSize:(double)size minSize:(double)minSize inputLengthLimit:(double)limit imageSize:(double)imageSize scale:(double)scale;
+ (float64x2_t)calculateTargetOutputSize:(double *)size adjustedInputScale:(float64x2_t *)scale paddedSize:(double)paddedSize imageSize:(double)imageSize maximumSize:(double)maximumSize minimumSize:(double)minimumSize inputLengthLimit:(double)limit;
+ (id)supportedTextType;
+ (uint64_t)numSupportedTextType;
+ (void)computeOrientationFromSingleTextFeature:(uint64_t)feature map:;
+ (void)computeScriptCategoryFromSingleTextFeature:(uint64_t *)feature map:(void *)map scriptRatioThresholds:;
+ (void)computeTextTypeFromSingleTextFeature:(uint64_t)feature map:;
+ (void)createImageMap:(void *)map targetSize:(double)size;
+ (void)createMultiChannelImageMaps:(void *)maps size:(int64_t)size channels:(CGFloat)channels;
- (BOOL)preheatWithError:(id *)error;
- (CRNeuralTextDetectorV3)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error;
- (double)getBorderPoints:(char *)points sourceImageSize:(uint64_t)size outP1:(char)p1 outP2:(__n128)p2 isHorizontal:;
- (id)detectInImage:(id)image delegate:(id)delegate error:(id *)error;
- (id)detectInImage:(id)image trackingSession:(id)session delegate:(id)delegate error:(id *)error;
- (id)enumerateTilesForImage:(id)image cachedSurface:(__IOSurface *)surface guidedByScoreMapFullTile:(void *)tile delegate:(id)delegate block:(id)block;
- (id)processFineScaleMaps:(uint64_t *)maps adjustedSize:(CRIntermediateDetectorResult *)size fullTileMaps:(int64x2_t *)tileMaps adjustedFullTileSize:(void *)tileSize targetSize:(void *)targetSize targetSizeFullTile:(double)tile intermediateResults:(double)results withScaleIds:(double)self0 sourceImageSize:(double)self1 tileRects:(float64_t)self2 trackingSession:(float64_t)self3;
- (void)addIntermediateResults:(uint64_t)results idxLog:(uint64_t)log adjustedSize:(uint64_t)size quadFeatures:(double)features nmsOutputScale:(double)scale;
- (void)computeClassificationType:(void *)type fromTextFeatures:(uint64_t *)features fineScaleMap:(uint64_t *)map fullTileMap:(void *)tileMap withScaleIds:;
- (void)getBorderPoints:(float64x2_t *)points sourceImageSize:(char)size outP1:(float64_t)p1 outP2:(float64_t)p2 isHorizontal:;
- (void)runFullTileInferenceOnImage:(id)image cachedSurface:(__IOSurface *)surface outputMaps:(void *)maps inputSize:(CGSize *)size outputSize:(CGSize *)outputSize modelContext:(id)context delegate:(id)delegate error:(id *)self0;
- (void)runNMSForDirection:(void *)direction adjustedSize:(uint64_t *)size fullTileMaps:(uint64_t *)maps adjustedFullTileSize:(void *)tileSize targetSize:(void *)targetSize targetSizeFullTile:(void *)tile intermediateResults:(int)results withScaleIds:(id *)ids sourceImageSize:(double)imageSize tileRects:(double)direction0 isHorizontal:(double)direction1 resultTextFeatures:(double)direction2 quadFeatures:(unint64_t *)direction3 isFineScaleVerticalLinkActive:(unsigned __int8)direction4 isFullTileVerticalLinkActive:(unsigned __int8)direction5 idxLog:(uint64_t *)direction6;
- (void)updateNMS:(uint64_t *)s andQuadFeatures:(uint64_t *)features inMaps:(void *)maps tileRects:(uint64_t)rects intermediateResult:(int)result isFullTile:(float)tile isHorizontal:adjustedSize:randomPrefix:;
@end

@implementation CRNeuralTextDetectorV3

+ (void)computeScriptCategoryFromSingleTextFeature:(uint64_t *)feature map:(void *)map scriptRatioThresholds:
{
  v120[16] = *MEMORY[0x1E69E9840];
  v99 = a2;
  mapCopy = map;
  objc_opt_self();
  v6 = +[CRScriptCategoryV1 supportedCategories];
  v7 = [v6 count];

  v120[0] = 0;
  std::vector<double>::vector[abi:ne200100](v114, v7, v120);
  v120[0] = 0;
  std::vector<long>::vector[abi:ne200100](&v112, v7, v120);
  [objc_opt_class() computeClassCount:&v112 classProbabiity:v114 fromSingleTextFeature:v99 map:feature backgroundClass:0];
  v100 = mapCopy;
  v97 = mapCopy;
  objc_opt_self();
  v8 = v112;
  if (v112 == v113)
  {
    v10 = v112;
  }

  else
  {
    v9 = v112 + 8;
    v10 = v112;
    if (v112 + 8 != v113)
    {
      v11 = *v112;
      v10 = v112;
      v12 = v112 + 8;
      do
      {
        v14 = *v12;
        v12 += 8;
        v13 = v14;
        v15 = v11 < v14;
        if (v11 <= v14)
        {
          v11 = v13;
        }

        if (v15)
        {
          v10 = v9;
        }

        v9 = v12;
      }

      while (v12 != v113);
    }
  }

  v16 = +[CRScriptCategoryV1 supportedCategories];
  v101 = (v10 - v8) >> 3;
  v17 = [v16 objectAtIndexedSubscript:?];

  v18 = +[CRScriptCategoryV1 supportedCategories];
  v19 = +[CRScriptCategoryV1 latinCyrillic];
  obj = [v18 indexOfObject:v19];

  v20 = +[CRScriptCategoryV1 supportedCategories];
  v21 = +[CRScriptCategoryV1 chinese];
  v22 = [v20 indexOfObject:v21];

  v23 = +[CRScriptCategoryV1 supportedCategories];
  v24 = +[CRScriptCategoryV1 common];
  v25 = [v23 indexOfObject:v24];

  v26 = +[CRScriptCategoryV1 supportedCategories];
  v27 = +[CRScriptCategoryV1 korean];
  v28 = [v26 indexOfObject:v27];

  v29 = +[CRScriptCategoryV1 supportedCategories];
  v30 = +[CRScriptCategoryV1 japanese];
  v31 = [v29 indexOfObject:v30];

  v32 = +[CRScriptCategoryV1 supportedCategories];
  v33 = +[CRScriptCategoryV1 thai];
  v34 = [v32 indexOfObject:v33];

  v35 = +[CRScriptCategoryV1 supportedCategories];
  v36 = +[CRScriptCategoryV1 arabic];
  v37 = [v35 indexOfObject:v36];

  if (*(v112 + v28) <= *(v112 + v22))
  {
    v38 = v22;
  }

  else
  {
    v38 = v28;
  }

  if (*(v112 + v38) <= *(v112 + v31))
  {
    v38 = v31;
  }

  if (*(v112 + v38) <= *(v112 + v34))
  {
    v38 = v34;
  }

  if (*(v112 + v38) <= *(v112 + v37))
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  v40 = +[CRScriptCategoryV1 unknown];
  v41 = v17 == v40;

  if (!v41)
  {
    v42 = *(v112 + v25) + *(v112 + obj);
    if (v42 < 1 || ([v100 objectForKeyedSubscript:@"CRScriptThresholdPreferredLatinCJK"], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "floatValue"), v45 = (v44 * *(v112 + v39)) < v42, v43, v101 = obj, !v45))
    {
      v46 = +[CRScriptCategoryV1 japanese];
      if (v17 == v46)
      {

        v101 = v31;
        goto LABEL_53;
      }

      v47 = *(v112 + v31);
      if (v47 < 1)
      {
      }

      else
      {
        v48 = *(v112 + v39) == v47;

        v101 = v31;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      v49 = +[CRScriptCategoryV1 korean];
      if (v17 == v49)
      {

        v101 = v28;
        goto LABEL_53;
      }

      v50 = *(v112 + v28);
      if (v50 < 1)
      {
      }

      else
      {
        v51 = *(v112 + v39) == v50;

        v101 = v28;
        if (v51)
        {
          goto LABEL_53;
        }
      }

      v52 = +[CRScriptCategoryV1 chinese];
      if (v17 == v52)
      {

        v101 = v22;
        goto LABEL_53;
      }

      v53 = *(v112 + v22);
      if (v53 < 1)
      {
      }

      else
      {
        v54 = *(v112 + v39) == v53;

        v101 = v22;
        if (v54)
        {
          goto LABEL_53;
        }
      }

      v55 = +[CRScriptCategoryV1 thai];
      if (v17 == v55)
      {

        v101 = v34;
        goto LABEL_53;
      }

      v56 = *(v112 + v34);
      if (v56 < 1)
      {
      }

      else
      {
        v57 = *(v112 + v39) == v56;

        v101 = v34;
        if (v57)
        {
          goto LABEL_53;
        }
      }

      v58 = +[CRScriptCategoryV1 arabic];
      if (v17 == v58)
      {

        v101 = v37;
      }

      else
      {
        v59 = *(v112 + v37) > 0;

        v60 = obj;
        if (v59)
        {
          v60 = v37;
        }

        v101 = v60;
      }
    }
  }

LABEL_53:

  __p = 0;
  v110 = 0;
  v111 = 0;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(&__p, v112, v113, (v113 - v112) >> 3);
  v102 = v99;
  objc_opt_self();
  array = [MEMORY[0x1E695DF70] array];
  v62 = objc_opt_new();
  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v63 = +[CRScriptCategoryV1 supportedCategories];
  obja = v63;
  v64 = [v63 countByEnumeratingWithState:&v115 objects:v120 count:16];
  if (v64)
  {
    LODWORD(v65) = 0;
    v66 = *v116;
    do
    {
      v67 = 0;
      v65 = v65;
      do
      {
        if (*v116 != v66)
        {
          objc_enumerationMutation(obja);
        }

        v68 = *(*(&v115 + 1) + 8 * v67);
        v69 = [CRScriptCategoryResult alloc];
        v70 = *(v114[0] + v65);
        *&v70 = v70;
        v71 = [(CRScriptCategoryResult *)v69 initWithScriptCategory:v68 probability:v70];
        [array addObject:v71];

        v72 = [MEMORY[0x1E696AD98] numberWithLong:*(__p + v65)];
        [v62 setObject:v72 forKeyedSubscript:v68];

        ++v65;
        ++v67;
      }

      while (v64 != v67);
      v63 = obja;
      v64 = [obja countByEnumeratingWithState:&v115 objects:v120 count:16];
    }

    while (v64);
  }

  [v102 setScriptCategoryResults:array];
  v73 = +[CRScriptCategoryV1 supportedCategories];
  v74 = [v73 objectAtIndexedSubscript:v101];
  [v102 setSelectedScriptCategory:v74];

  [v102 setScriptCounts:v62];
  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  v75 = **feature;
  v77 = *(v75 + 8);
  v76 = *(v75 + 16);
  v78 = v102;
  objc_opt_self();
  v79 = +[CRScriptCategoryV1 supportedCategories];
  v80 = +[CRScriptCategoryV1 common];
  v81 = [v79 indexOfObject:v80];

  selectedScriptCategory = [v78 selectedScriptCategory];
  v83 = +[CRScriptCategoryV1 common];
  if ([selectedScriptCategory isEqual:v83])
  {
    v84 = *(v114[0] + v81);
  }

  else
  {
    v84 = *(v114[0] + v101) + *(v114[0] + v81);
  }

  [v78 sizeForImageSize:{v76, v77}];
  v87 = v84;
  if (v87 <= 0.79)
  {
    if (fmin(v86, v85) / fmax(v86, v85) < 0.150000006 || v87 < 0.79)
    {
      goto LABEL_71;
    }

LABEL_70:
    v88 = 0;
    goto LABEL_72;
  }

  if (v87 >= 0.79)
  {
    goto LABEL_70;
  }

LABEL_71:
  v88 = 1;
LABEL_72:
  [v78 setUseSequenceScriptLocale:v88];

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  subFeatures = [v78 subFeatures];
  v90 = [subFeatures countByEnumeratingWithState:&v105 objects:v119 count:16];
  if (v90)
  {
    v91 = *v106;
    do
    {
      for (i = 0; i != v90; ++i)
      {
        if (*v106 != v91)
        {
          objc_enumerationMutation(subFeatures);
        }

        v93 = *(*(&v105 + 1) + 8 * i);
        scriptCategoryResults = [v78 scriptCategoryResults];
        [v93 setScriptCategoryResults:scriptCategoryResults];

        selectedScriptCategory2 = [v78 selectedScriptCategory];
        [v93 setSelectedScriptCategory:selectedScriptCategory2];

        scriptCounts = [v78 scriptCounts];
        [v93 setScriptCounts:scriptCounts];

        [v93 setUseSequenceScriptLocale:{objc_msgSend(v78, "useSequenceScriptLocale")}];
      }

      v90 = [subFeatures countByEnumeratingWithState:&v105 objects:v119 count:16];
    }

    while (v90);
  }

  if (v112)
  {
    v113 = v112;
    operator delete(v112);
  }

  if (v114[0])
  {
    v114[1] = v114[0];
    operator delete(v114[0]);
  }
}

+ (uint64_t)numSupportedTextType
{
  objc_opt_self();
  v1 = +[CRNeuralTextDetectorV3 supportedTextType];
  v2 = [v1 count];

  return v2;
}

+ (id)supportedTextType
{
  objc_opt_self();
  if (_MergedGlobals_34 != -1)
  {
    dispatch_once(&_MergedGlobals_34, &__block_literal_global_29);
  }

  v1 = qword_1ED960250;

  return v1;
}

void __63__CRNeuralTextDetectorV3_CRDetectorTextType__supportedTextType__block_invoke()
{
  v0 = qword_1ED960250;
  qword_1ED960250 = &unk_1F2BFB188;
}

+ (void)computeTextTypeFromSingleTextFeature:(uint64_t)feature map:
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  v5 = objc_opt_class();
  v6 = +[(CRNeuralTextDetectorV3 *)v5];
  __p = 0;
  std::vector<double>::vector[abi:ne200100](&v38, v6, &__p);
  v35 = 0;
  std::vector<long>::vector[abi:ne200100](&__p, v6, &v35);
  v7 = [objc_opt_class() computeClassCount:&__p classProbabiity:&v38 fromSingleTextFeature:v4 map:feature backgroundClass:0];
  v8 = __p;
  if (v7)
  {
    if (__p == v37)
    {
      v10 = __p;
    }

    else
    {
      v9 = __p + 8;
      v10 = __p;
      if (__p + 8 != v37)
      {
        v11 = *__p;
        v10 = __p;
        v12 = __p + 8;
        do
        {
          v14 = *v12;
          v12 += 8;
          v13 = v14;
          v15 = v11 < v14;
          if (v11 <= v14)
          {
            v11 = v13;
          }

          if (v15)
          {
            v10 = v9;
          }

          v9 = v12;
        }

        while (v12 != v37);
      }
    }

    v16 = v38;
    v17 = (v38 + 8);
    if (v38 != v39 && v17 != v39)
    {
      v19 = *v38;
      v20 = (v38 + 8);
      do
      {
        v21 = *v20++;
        v22 = v21;
        if (v19 < v21)
        {
          v19 = v22;
          v16 = v17;
        }

        v17 = v20;
      }

      while (v20 != v39);
    }

    if (*v16 > 0.5)
    {
      v23 = objc_opt_class();
      v24 = +[(CRNeuralTextDetectorV3 *)v23];
      v25 = [v24 objectAtIndex:((v10 - v8) >> 3)];
      unsignedIntegerValue = [v25 unsignedIntegerValue];

      [v4 setTextType:unsignedIntegerValue];
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      subFeatures = [v4 subFeatures];
      v28 = [subFeatures countByEnumeratingWithState:&v31 objects:v40 count:16];
      if (v28)
      {
        v29 = *v32;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v32 != v29)
            {
              objc_enumerationMutation(subFeatures);
            }

            [*(*(&v31 + 1) + 8 * i) setTextType:{objc_msgSend(v4, "textType")}];
          }

          v28 = [subFeatures countByEnumeratingWithState:&v31 objects:v40 count:16];
        }

        while (v28);
      }

      v8 = __p;
    }
  }

  if (v8)
  {
    v37 = v8;
    operator delete(v8);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }
}

- (CRNeuralTextDetectorV3)initWithConfiguration:(id)configuration owner:(id)owner error:(id *)error
{
  configurationCopy = configuration;
  ownerCopy = owner;
  v18.receiver = self;
  v18.super_class = CRNeuralTextDetectorV3;
  v10 = [(CRNeuralTextDetector *)&v18 init];
  if (!v10)
  {
    goto LABEL_9;
  }

  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v11 = [[CRTextDetectorModelV3E5ML alloc] initWithConfiguration:configurationCopy owner:ownerCopy error:error];
    [(CRNeuralTextDetectorV3 *)v10 setModelE5:v11];
  }

  else
  {
    v11 = [[CRTextDetectorModelV3CoreML alloc] initWithConfiguration:configurationCopy owner:ownerCopy error:error];
    [(CRNeuralTextDetectorV3 *)v10 setModelEIR:v11];
  }

  modelE5 = [(CRNeuralTextDetectorV3 *)v10 modelE5];
  if (modelE5)
  {

LABEL_8:
    [(CRNeuralTextDetector *)v10 setConfiguration:configurationCopy];
LABEL_9:
    v14 = v10;
    goto LABEL_10;
  }

  modelEIR = [(CRNeuralTextDetectorV3 *)v10 modelEIR];

  if (modelEIR)
  {
    goto LABEL_8;
  }

  v16 = CROSLogForCategory(2);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_impl(&dword_1B40D2000, v16, OS_LOG_TYPE_ERROR, "Could not initialize V3 detector model", v17, 2u);
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (BOOL)preheatWithError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v22 = *MEMORY[0x1E69660D8];
    v23[0] = MEMORY[0x1E695E0F8];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    texture = 0;
    configuration = [(CRNeuralTextDetector *)self configuration];
    [configuration tileSize];
    v8 = v7;
    configuration2 = [(CRNeuralTextDetector *)self configuration];
    [configuration2 tileSize];
    CVPixelBufferCreate(*MEMORY[0x1E695E480], v8, v10, 0x42475241u, v5, &texture);

    modelE5 = [(CRNeuralTextDetectorV3 *)self modelE5];
    createExecutionContext = [modelE5 createExecutionContext];

    v13 = [createExecutionContext predictionFromImage:texture error:error];
    CVPixelBufferRelease(texture);
  }

  else
  {
    texture = 0;
    configuration3 = [(CRNeuralTextDetector *)self configuration];
    [configuration3 tileSize];
    v16 = v15;
    configuration4 = [(CRNeuralTextDetector *)self configuration];
    [configuration4 tileSize];
    CVPixelBufferCreate(*MEMORY[0x1E695E480], v16, v18, 0x42475241u, MEMORY[0x1E695E0F8], &texture);

    modelEIR = [(CRNeuralTextDetectorV3 *)self modelEIR];
    v13 = [modelEIR predictionFromImage:texture error:error];

    CVPixelBufferRelease(texture);
  }

  return v13 != 0;
}

+ (CGSize)smallestImageSizeForTextWithRelativeHeight:(double)height originalImageSize:(CGSize)size configuration:(id)configuration
{
  height = size.height;
  width = size.width;
  prioritization = [configuration prioritization];
  v9 = [prioritization isEqualToString:@"CRImageReaderPrioritizationPerformance"];

  v10 = 4032.0;
  if (v9)
  {
    v10 = 2800.0;
  }

  if (width <= height)
  {
    heightCopy = height;
  }

  else
  {
    heightCopy = width;
  }

  v12 = v10 / heightCopy;
  if (height <= 0.0)
  {
    v19 = 1.0;
    v18 = v12 <= 1.0;
  }

  else
  {
    if (width >= height)
    {
      heightCopy2 = height;
    }

    else
    {
      heightCopy2 = width;
    }

    v14 = 480.0 / heightCopy2;
    v15 = v12;
    if (30.0 / (height * height) < v15)
    {
      v15 = 30.0 / (height * height);
    }

    v16 = v14;
    v17 = v15 <= v14;
    if (v15 > v14)
    {
      v16 = v15;
    }

    v12 = v15;
    if (v17)
    {
      v12 = v14;
    }

    v18 = v16 <= 1.0;
    v19 = 1.0;
  }

  if (!v18)
  {
    v12 = v19;
  }

  v20 = v12;
  v21 = width * v12;
  v22 = llroundf(v21);
  *&v20 = height * v20;
  v23 = llroundf(*&v20);
  result.height = v23;
  result.width = v22;
  return result;
}

+ (double)scaledImageSizeForMaxSize:(double)size minSize:(double)minSize inputLengthLimit:(double)limit imageSize:(double)imageSize scale:(double)scale
{
  objc_opt_self();
  if (limit >= a8)
  {
    limitCopy = a8;
  }

  else
  {
    limitCopy = limit;
  }

  if (imageSize >= a9)
  {
    imageSizeCopy = a9;
  }

  else
  {
    imageSizeCopy = imageSize;
  }

  v19 = limitCopy / a8;
  v20 = imageSizeCopy / a9;
  if (v19 <= v20)
  {
    v19 = v20;
  }

  v21 = v19;
  v22 = 0.0;
  if (v21 < 1.0)
  {
    v23 = a8 <= a9 ? a9 : a8;
    v22 = scale / v23;
    if (v21 < v22)
    {
      v22 = v21;
    }
  }

  v24 = size / a8;
  if (size / a8 >= minSize / a9)
  {
    v24 = minSize / a9;
  }

  if (v24 > 1.0)
  {
    v24 = 1.0;
  }

  v25 = v24;
  if (v22 < v25)
  {
    v22 = v25;
  }

  *a2 = v22;
  return (a8 * v22 + 0.5);
}

+ (float64x2_t)calculateTargetOutputSize:(double *)size adjustedInputScale:(float64x2_t *)scale paddedSize:(double)paddedSize imageSize:(double)imageSize maximumSize:(double)maximumSize minimumSize:(double)minimumSize inputLengthLimit:(double)limit
{
  v21 = objc_opt_self();
  v22.f64[0] = [(CRNeuralTextDetectorV3 *)v21 scaledImageSizeForMaxSize:size minSize:maximumSize inputLengthLimit:minimumSize imageSize:limit scale:a10, a11, paddedSize, imageSize];
  v22.f64[1] = v23;
  v24 = vcvt_s32_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(v22, vdupq_n_s64(0x3FA0000000000000uLL)))));
  v25 = vcgt_s32(0xF0000000FLL, v24);
  v26.i64[0] = v25.i32[0];
  v26.i64[1] = v25.i32[1];
  v27 = vbslq_s8(v26, vdupq_n_s64(0x407E000000000000uLL), vcvtq_f64_f32(vcvt_f32_s32(vshl_n_s32(v24, 5uLL))));
  *scale = v27;
  v28 = vaddq_f64(v27, vsubq_f64(v22, v27));
  __asm { FMOV            V1.2D, #0.5 }

  result = vcvtq_f64_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(v28, _Q1))));
  *a2 = result;
  return result;
}

- (id)enumerateTilesForImage:(id)image cachedSurface:(__IOSurface *)surface guidedByScoreMapFullTile:(void *)tile delegate:(id)delegate block:(id)block
{
  imageCopy = image;
  delegateCopy = delegate;
  blockCopy = block;
  if (blockCopy)
  {
    configuration = [(CRNeuralTextDetector *)self configuration];
    [configuration tileOverlap];
    v13 = v12;

    configuration2 = [(CRNeuralTextDetector *)self configuration];
    [configuration2 tileSize];
    v91 = v16;
    v92 = v15;

    width = [imageCopy width];
    height = [imageCopy height];
    v19 = v92 - v13;
    v20 = (width - v13) / (v92 - v13);
    v21 = vcvtps_s32_f32(v20);
    v83 = v91 - v13;
    v22 = (height - v13) / (v91 - v13);
    v95 = v21;
    v85 = vcvtps_s32_f32(v22);
    v23 = v85 * v21;
    v90 = [MEMORY[0x1E695DF70] arrayWithCapacity:v85 * v21];
    LODWORD(__p[0]) = 0;
    std::vector<float>::vector[abi:ne200100](v106, v23, __p);
    std::vector<CGRect>::vector[abi:ne200100](__p, v23);
    v104 = 0.0;
    v94 = 1.0;
    if (*tile && (-[CRNeuralTextDetector configuration](self, "configuration"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 useScaleTraversal], v24, v25))
    {
      v96 = 0;
      v26 = (v92 / [imageCopy width] * *(*tile + 16));
      v27 = (v91 / [imageCopy height] * *(*tile + 8));
      v28 = (v26 * v27) / v92 / v91;
      *&v28 = v28 + v28 + v28 + v28;
      v94 = *&v28;
    }

    else
    {
      v27 = 0;
      v26 = 0;
      v96 = 1;
    }

    v103 = 0;
    if (v85 < 1)
    {
      v54 = 0;
    }

    else
    {
      v87 = 0;
      v88 = 0;
      v84 = v27;
      do
      {
        if (v95 >= 1)
        {
          v29 = 0;
          v93 = v87 * v95;
          do
          {
            x = v19 * v29;
            if (x >= 0.0)
            {
              height = v91;
              width = v92;
              y = v83 * v87;
            }

            else
            {
              v108.origin.x = v19 * v29;
              v108.origin.y = v83 * v87;
              v108.size.height = v91;
              v108.size.width = v92;
              v109 = CGRectOffset(v108, -x, 0.0);
              x = v109.origin.x;
              y = v109.origin.y;
              width = v109.size.width;
              height = v109.size.height;
            }

            if (width + x >= [imageCopy width])
            {
              width2 = [imageCopy width];
              v110.origin.x = x;
              v110.origin.y = y;
              v110.size.width = width;
              v110.size.height = height;
              v111 = CGRectOffset(v110, width2 - (width + x), 0.0);
              x = v111.origin.x;
              y = v111.origin.y;
              width = v111.size.width;
              height = v111.size.height;
            }

            if (y < 0.0)
            {
              v112.origin.x = x;
              v112.origin.y = y;
              v112.size.width = width;
              v112.size.height = height;
              v113 = CGRectOffset(v112, 0.0, -y);
              x = v113.origin.x;
              y = v113.origin.y;
              width = v113.size.width;
              height = v113.size.height;
            }

            if (height + y >= [imageCopy height])
            {
              height2 = [imageCopy height];
              v114.origin.x = x;
              v114.origin.y = y;
              v114.size.width = width;
              v114.size.height = height;
              v115 = CGRectOffset(v114, 0.0, height2 - (height + y));
              x = v115.origin.x;
              y = v115.origin.y;
              width = v115.size.width;
              height = v115.size.height;
            }

            v36 = v29 + v93;
            v37 = (__p[0] + 32 * v29 + 32 * v93);
            *v37 = x;
            v37[1] = y;
            v37[2] = width;
            v37[3] = height;
            if (!delegateCopy || ([imageCopy size], objc_msgSend(delegateCopy, "shouldRunTileForRect:imageSize:", x, y, width, height, v38, v39)))
            {
              width3 = [imageCopy width];
              height3 = [imageCopy height];
              width4 = [imageCopy width];
              height4 = [imageCopy height];
              v44 = x / width3;
              v45 = [MEMORY[0x1E696B098] valueWithRect:{v44, y / height3, width / width4, height / height4}];
              [v90 addObject:v45];

              if (v96)
              {
                v96 = 1;
              }

              else
              {
                if (v27)
                {
                  v46 = (y / height3 * *(*tile + 8));
                  v47 = (v44 * *(*tile + 16));
                  do
                  {
                    __C = 0.2;
                    __B = 0.0;
                    v48 = malloc_type_calloc(v26, 4uLL, 0x100004052888210uLL);
                    __NHigh = 0;
                    __NLow = 0;
                    vDSP_vclipc((**tile + 4 * *(*tile + 16) * v46 + 4 * v47), 1, &__B, &__C, v48, 1, v26, &__NLow, &__NHigh);
                    free(v48);
                    v49 = v106[0];
                    *(v106[0] + v36) = *(v106[0] + v36) + __NHigh;
                    ++v46;
                    --v27;
                  }

                  while (v27);
                  v27 = v84;
                }

                else
                {
                  v49 = v106[0];
                }

                if (v49[v36] <= 0.0)
                {
                  v96 = 0;
                }

                else
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [imageCopy imageByCroppingRectangle:surface toSurface:{x, y, width, height}];
                  }

                  else
                  {
                    [imageCopy imageByCroppingRectangle:{x, y, width, height}];
                  }
                  v50 = ;
                  pixelBuffer = [v50 pixelBuffer];
                  v104 = 0.0;
                  blockCopy[2](blockCopy, pixelBuffer, &v104, &v103, x, y, width, height);
                  v96 = (v94 * v104) > *(v106[0] + v36);
                  ++v88;
                }
              }

              if ((v103 & 1) != 0 || [(CRNeuralTextDetector *)self shouldCancel])
              {
                break;
              }
            }

            ++v29;
          }

          while (v29 != v95);
        }

        if (v103)
        {
          break;
        }

        shouldCancel = [(CRNeuralTextDetector *)self shouldCancel];
        v53 = ++v87 == v85 || shouldCancel;
      }

      while ((v53 & 1) == 0);
      v54 = v88 != 0;
    }

    if (v96 || v54 || (v56 = v85 / 2 * v95 + v95 / 2, v57 = (__p[0] + 32 * v56), v59 = *v57, v58 = v57[1], v61 = v57[2], v60 = v57[3], delegateCopy) && ([imageCopy size], (objc_msgSend(delegateCopy, "shouldRunTileForRect:imageSize:", v59, v58, v61, v60, v62, v63) & 1) == 0))
    {
      if (v85 >= 1 && v96)
      {
        goto LABEL_56;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [imageCopy imageByCroppingRectangle:surface toSurface:{v59, v58, v61, v60}];
      }

      else
      {
        [imageCopy imageByCroppingRectangle:{v59, v58, v61, v60}];
      }
      v64 = ;
      pixelBuffer2 = [v64 pixelBuffer];
      v104 = 0.0;
      blockCopy[2](blockCopy, pixelBuffer2, &v104, &v103, *(__p[0] + 4 * v56), *(__p[0] + 4 * v56 + 1), *(__p[0] + 4 * v56 + 2), *(__p[0] + 4 * v56 + 3));
      if (v104 <= 0.0)
      {
      }

      else
      {
        *(v106[0] + v56) = fmaxf(v94 * v104, 1.0);

        if (v85 > 0)
        {
LABEL_56:
          v66 = 0;
          while (v95 < 1)
          {
LABEL_73:
            if ((v103 & 1) == 0)
            {
              shouldCancel2 = [(CRNeuralTextDetector *)self shouldCancel];
              v81 = ++v66 == v85 || shouldCancel2;
              if ((v81 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_80;
          }

          v67 = 0;
          v68 = v66 * v95;
          while (1)
          {
            while (*(v106[0] + v67 + v68) >= v94)
            {
LABEL_66:
              if ((v103 & 1) == 0)
              {
                shouldCancel3 = [(CRNeuralTextDetector *)self shouldCancel];
                v79 = ++v67 == v95 || shouldCancel3;
                if ((v79 & 1) == 0)
                {
                  continue;
                }
              }

              goto LABEL_73;
            }

            v69 = (__p[0] + 32 * v67 + 32 * v68);
            v70 = *v69;
            v71 = v69[1];
            v72 = v69[2];
            v73 = v69[3];
            if (!delegateCopy || ([imageCopy size], (objc_msgSend(delegateCopy, "shouldRunTileForRect:imageSize:", v70, v71, v72, v73, v74, v75) & 1) != 0))
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [imageCopy imageByCroppingRectangle:surface toSurface:{v70, v71, v72, v73}];
              }

              else
              {
                [imageCopy imageByCroppingRectangle:{v70, v71, v72, v73}];
              }
              v76 = ;
              pixelBuffer3 = [v76 pixelBuffer];
              v104 = 1.0;
              blockCopy[2](blockCopy, pixelBuffer3, &v104, &v103, v70, v71, v72, v73);

              goto LABEL_66;
            }

            if (++v67 == v95)
            {
              goto LABEL_73;
            }
          }
        }
      }
    }

LABEL_80:
    v55 = v90;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v106[0])
    {
      v106[1] = v106[0];
      operator delete(v106[0]);
    }
  }

  else
  {
    v55 = MEMORY[0x1E695E0F0];
  }

  return v55;
}

+ (void)createImageMap:(void *)map targetSize:(double)size
{
  mapCopy = map;
  objc_opt_self();
  shape = [mapCopy shape];
  v6 = [shape objectAtIndexedSubscript:0];
  [v6 integerValue];

  operator new();
}

+ (void)createMultiChannelImageMaps:(void *)maps size:(int64_t)size channels:(CGFloat)channels
{
  mapsCopy = maps;
  objc_opt_self();
  strides = [mapsCopy strides];
  v10 = [strides objectAtIndexedSubscript:0];
  integerValue = [v10 integerValue];

  strides2 = [mapsCopy strides];
  v13 = [strides2 objectAtIndexedSubscript:1];
  integerValue2 = [v13 integerValue];

  v28.width = channels;
  v28.height = a6;
  CRDetectorOutputMaps::createMaps(self, size, v28);
  dataPointer = [mapsCopy dataPointer];
  if (size >= 1)
  {
    v16 = dataPointer;
    v17 = 0;
    v18 = vcvtd_n_u64_f64(channels, 2uLL);
    v19 = 4 * integerValue;
    v20 = 4 * integerValue2;
    do
    {
      if (a6 > 0.0)
      {
        v21 = **(*self + 8 * v17);
        v22 = 1;
        v23 = v16;
        do
        {
          memcpy(v21, v23, v18);
          v24 = v22++;
          v23 += v20;
          v21 += 4 * channels;
        }

        while (a6 > v24);
      }

      ++v17;
      v16 += v19;
    }

    while (v17 != size);
  }
}

- (id)detectInImage:(id)image delegate:(id)delegate error:(id *)error
{
  v5 = [(CRNeuralTextDetectorV3 *)self detectInImage:image trackingSession:0 delegate:delegate error:error];

  return v5;
}

- (id)detectInImage:(id)image trackingSession:(id)session delegate:(id)delegate error:(id *)error
{
  v135 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  sessionCopy = session;
  delegateCopy = delegate;
  v129[0] = 0;
  v129[1] = v129;
  v129[2] = 0x9812000000;
  v129[3] = __Block_byref_object_copy__14;
  v129[4] = __Block_byref_object_dispose__14;
  v129[5] = &unk_1B4305E9E;
  memset(&v129[6], 0, 32);
  v130 = 0u;
  memset(v131, 0, sizeof(v131));
  v132 = 0u;
  v133 = 0;
  v124[0] = 0;
  v124[1] = v124;
  v124[2] = 0x9812000000;
  v124[3] = __Block_byref_object_copy__14;
  v124[4] = __Block_byref_object_dispose__14;
  v124[5] = &unk_1B4305E9E;
  memset(&v124[6], 0, 32);
  v125 = 0u;
  memset(v126, 0, sizeof(v126));
  v127 = 0u;
  v128 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__9;
  v122 = __Block_byref_object_dispose__10;
  v123 = 0;
  v117[0] = 0;
  v117[1] = v117;
  v117[2] = 0x4012000000;
  v117[3] = __Block_byref_object_copy__11;
  v117[4] = __Block_byref_object_dispose__12;
  v117[5] = &unk_1B4305E9E;
  v116[0] = 0;
  v116[1] = v116;
  v116[2] = 0x4012000000;
  v116[3] = __Block_byref_object_copy__11;
  v116[4] = __Block_byref_object_dispose__12;
  v116[5] = &unk_1B4305E9E;
  v115[0] = 0;
  v115[1] = v115;
  v115[2] = 0x4012000000;
  v115[3] = __Block_byref_object_copy__11;
  v115[4] = __Block_byref_object_dispose__12;
  v115[5] = &unk_1B4305E9E;
  v114[0] = 0;
  v114[1] = v114;
  v114[2] = 0x4012000000;
  v114[3] = __Block_byref_object_copy__11;
  v114[4] = __Block_byref_object_dispose__12;
  v114[5] = &unk_1B4305E9E;
  configuration = [(CRNeuralTextDetector *)self configuration];
  disableScriptDetection = [configuration disableScriptDetection];

  configuration2 = [(CRNeuralTextDetector *)self configuration];
  disableTextTypeDetection = [configuration2 disableTextTypeDetection];

  if (delegateCopy)
  {
    detectTables = [delegateCopy detectTables];
    if (sessionCopy)
    {
      v15 = 0;
    }

    else
    {
      v15 = detectTables;
    }
  }

  else
  {
    configuration3 = [(CRNeuralTextDetector *)self configuration];
    detectTables2 = [configuration3 detectTables];
    if (sessionCopy)
    {
      v15 = 0;
    }

    else
    {
      v15 = detectTables2;
    }
  }

  v112[0] = 0;
  v112[1] = v112;
  v112[2] = 0x3032000000;
  v112[3] = __Block_byref_object_copy__9;
  v112[4] = __Block_byref_object_dispose__10;
  v113 = 0;
  detectorStats = [(CRNeuralTextDetector *)self detectorStats];
  v19 = disableScriptDetection ^ 1;
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke;
  v99[3] = &unk_1E7BC3400;
  v99[4] = self;
  v102 = v116;
  v59 = imageCopy;
  v100 = v59;
  v103 = &v118;
  v104 = v117;
  v105 = v124;
  v106 = v115;
  v107 = v114;
  v57 = delegateCopy;
  v101 = v57;
  v108 = v129;
  v110 = disableScriptDetection ^ 1;
  v111 = disableTextTypeDetection ^ 1;
  v109 = v112;
  [detectorStats measureBlock:v99];

  v20 = v119[5];
  if (v20)
  {
    v21 = 0;
    if (error)
    {
      *error = v20;
    }
  }

  else
  {
    v97[0] = 0;
    v97[1] = v97;
    v97[2] = 0x6012000000;
    v97[3] = __Block_byref_object_copy__21;
    v97[4] = __Block_byref_object_dispose__22;
    v97[5] = &unk_1B4305E9E;
    memset(v98, 0, sizeof(v98));
    v91 = 0;
    v92 = &v91;
    v93 = 0x3032000000;
    v94 = __Block_byref_object_copy__9;
    v95 = __Block_byref_object_dispose__10;
    v96 = 0;
    v89[0] = 0;
    v89[1] = v89;
    v89[2] = 0x4812000000;
    v89[3] = __Block_byref_object_copy__24;
    v89[4] = __Block_byref_object_dispose__25;
    v89[5] = &unk_1B4305E9E;
    memset(v90, 0, sizeof(v90));
    v83 = 0;
    v84 = &v83;
    v85 = 0x3032000000;
    v86 = __Block_byref_object_copy__9;
    v87 = __Block_byref_object_dispose__10;
    v88 = 0;
    postProcStats = [(CRNeuralTextDetector *)self postProcStats];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_27;
    v66[3] = &unk_1E7BC3428;
    v66[4] = self;
    v69 = &v91;
    v70 = v129;
    v71 = v117;
    v72 = v124;
    v73 = v115;
    v74 = v116;
    v75 = v114;
    v76 = &v83;
    v77 = v97;
    v23 = v59;
    v67 = v23;
    v78 = v112;
    v80 = v19;
    v81 = v15;
    v68 = sessionCopy;
    v79 = v89;
    v82 = disableTextTypeDetection ^ 1;
    [postProcStats measureBlock:v66];

    v24 = objc_opt_new();
    configuration4 = [(CRNeuralTextDetector *)self configuration];
    skipVerticalText = [configuration4 skipVerticalText];

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v27 = v92[5];
    v28 = [v27 countByEnumeratingWithState:&v62 objects:v134 count:16];
    if (v28)
    {
      v29 = *v63;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v63 != v29)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v62 + 1) + 8 * i);
          if (!skipVerticalText || ([*(*(&v62 + 1) + 8 * i) isVerticalLayout] & 1) == 0)
          {
            v32 = objc_opt_class();
            [v23 size];
            v33 = [v32 _lineRegionFromLineTextFeature:v31 imageSize:?];
            [v24 addObject:v33];
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v62 objects:v134 count:16];
      }

      while (v28);
    }

    CRLogger = CRLogger::getCRLogger(v34);
    if (*CRLogger == 1 && (CRLogger[8] & 1) != 0)
    {
      v36 = [objc_alloc(MEMORY[0x1E695F658]) initWithCVImageBuffer:{objc_msgSend(v23, "pixelBuffer")}];
      v37 = [CRTextFeature overlayFeaturesQuadVertices:v92[5] onImage:v36 showSubFeatures:0];
      v38 = rand();
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%f_quad.png", *&v38];
      v40 = [[CRImage alloc] initWithCIImage:v37 toColorSpace:1];
      [(CRImage *)v40 writeToFile:v39];
      v41 = [CRTextFeature overlayFeaturesPolygonVertices:v92[5] onImage:v36 showSubFeatures:0];
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"/tmp/%f_polygon.png", *&v38];
      v43 = [[CRImage alloc] initWithCIImage:v41 toColorSpace:1];
      [(CRImage *)v43 writeToFile:v42];
    }

    v21 = [[CRDetectionResult alloc] initWithLines:v24];
    pyramidPreIntraScaleNMSTextFeatures = [v84[5] pyramidPreIntraScaleNMSTextFeatures];
    [(CRDetectionResult *)v21 setPyramidPreIntraScaleNMSTextFeatures:pyramidPreIntraScaleNMSTextFeatures];

    pyramidScaleSize = [v84[5] pyramidScaleSize];
    [(CRDetectionResult *)v21 setPyramidScaleSize:pyramidScaleSize];

    pyramidScaleName = [v84[5] pyramidScaleName];
    [(CRDetectionResult *)v21 setPyramidScaleName:pyramidScaleName];

    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    [(CRDetectionResult *)v21 setTableRegions:v47];

    _Block_object_dispose(&v83, 8);
    _Block_object_dispose(v89, 8);
    v83 = v90;
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&v83);
    _Block_object_dispose(&v91, 8);

    _Block_object_dispose(v97, 8);
    std::deque<unsigned char>::~deque[abi:ne200100](v98);
  }

  _Block_object_dispose(v112, 8);
  _Block_object_dispose(v114, 8);
  _Block_object_dispose(v115, 8);
  _Block_object_dispose(v116, 8);
  _Block_object_dispose(v117, 8);
  _Block_object_dispose(&v118, 8);

  _Block_object_dispose(v124, 8);
  v97[0] = &v127;
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v97);
  v97[0] = &v126[1];
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v97);
  v48 = v126[0];
  v126[0] = 0;
  if (v48)
  {
    if (*v48)
    {
      free(*v48);
    }

    MEMORY[0x1B8C73EF0](v48, 0x1080C40ABB4582ELL);
  }

  v49 = *(&v125 + 1);
  *(&v125 + 1) = 0;
  if (v49)
  {
    if (*v49)
    {
      free(*v49);
    }

    MEMORY[0x1B8C73EF0](v49, 0x1080C40ABB4582ELL);
  }

  v50 = v125;
  *&v125 = 0;
  if (v50)
  {
    if (*v50)
    {
      free(*v50);
    }

    MEMORY[0x1B8C73EF0](v50, 0x1080C40ABB4582ELL);
  }

  v97[0] = &v124[7];
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v97);
  v51 = v124[6];
  v124[6] = 0;
  if (v51)
  {
    if (*v51)
    {
      free(*v51);
    }

    MEMORY[0x1B8C73EF0](v51, 0x1080C40ABB4582ELL);
  }

  _Block_object_dispose(v129, 8);
  v124[0] = &v132;
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v124);
  v124[0] = v131 + 1;
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v124);
  v52 = *&v131[0];
  *&v131[0] = 0;
  if (v52)
  {
    if (*v52)
    {
      free(*v52);
    }

    MEMORY[0x1B8C73EF0](v52, 0x1080C40ABB4582ELL);
  }

  v53 = *(&v130 + 1);
  *(&v130 + 1) = 0;
  if (v53)
  {
    if (*v53)
    {
      free(*v53);
    }

    MEMORY[0x1B8C73EF0](v53, 0x1080C40ABB4582ELL);
  }

  v54 = v130;
  *&v130 = 0;
  if (v54)
  {
    if (*v54)
    {
      free(*v54);
    }

    MEMORY[0x1B8C73EF0](v54, 0x1080C40ABB4582ELL);
  }

  v124[0] = &v129[7];
  std::vector<std::unique_ptr<CRImageBuffer>>::__destroy_vector::operator()[abi:ne200100](v124);
  v55 = v129[6];
  v129[6] = 0;
  if (v55)
  {
    if (*v55)
    {
      free(*v55);
    }

    MEMORY[0x1B8C73EF0](v55, 0x1080C40ABB4582ELL);
  }

  return v21;
}

void __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke(uint64_t a1)
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v2 = CRSignpostLog_signPostOSLog;
  v3 = os_signpost_id_generate(v2);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v4 = CRSignpostLog_signPostOSLog;
  v5 = v4;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRDetectorTime", "", buf, 2u);
  }

  *buf = 0;
  v75 = buf;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__9;
  v78 = __Block_byref_object_dispose__10;
  v79 = 0;
  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v7 = [*(a1 + 32) modelE5];
    v8 = [v7 createExecutionContext];
    v9 = *(v75 + 5);
    *(v75 + 5) = v8;
  }

  v73 = 0.0;
  v10 = *(*(a1 + 56) + 8);
  [*(a1 + 40) size];
  v12 = v11;
  v14 = v13;
  v15 = [*(a1 + 32) configuration];
  [v15 maximumInputSize];
  v17 = v16;
  v19 = v18;
  v20 = [*(a1 + 32) configuration];
  [v20 tileSize];
  v22 = v21;
  v24 = v23;
  v25 = [*(a1 + 32) configuration];
  [v25 inputLengthLimit];
  [CRNeuralTextDetectorV3 calculateTargetOutputSize:&v73 adjustedInputScale:&v72 paddedSize:v12 imageSize:v14 maximumSize:v17 minimumSize:v19 inputLengthLimit:v22, v24, v26];

  v27 = *(*(a1 + 56) + 8);
  if (*(v27 + 48) > 4.0 && *(v27 + 56) > 4.0)
  {
    if ([*(a1 + 32) shouldCancel])
    {
      v28 = [CRImageReader errorWithErrorCode:-3];
      v29 = *(*(a1 + 64) + 8);
      v30 = *(v29 + 40);
      *(v29 + 40) = v28;

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v31 = CRSignpostLog_signPostOSLog;
      p_super = v31;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
      {
        *v71 = 0;
LABEL_23:
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, p_super, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorTime", "", v71, 2u);
        goto LABEL_83;
      }

      goto LABEL_83;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = *(a1 + 40);
    }

    else
    {
      v34 = -[CRImage_PixelBuffer initWithCVPixelBuffer:]([CRImage_PixelBuffer alloc], "initWithCVPixelBuffer:", [*(a1 + 40) pixelBuffer]);
    }

    p_super = &v34->super.super;
    v35 = [(CRImage_PixelBuffer *)v34 pixelBufferWithScale:*(*(a1 + 72) + 8) + 48 paddedToSize:1 adjustedToSize:1111970369 paddingMode:+[CRNeuralTextDetectorV3 format:"useE5Detector"]hardwareAcceleration:1 iosurfaceBacking:v73, v72.f64[0], v72.f64[1]];
    if (!v35)
    {
      v38 = CROSLogForCategory(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
      {
        *v71 = 0;
        _os_log_impl(&dword_1B40D2000, v38, OS_LOG_TYPE_FAULT, "NULL scaledBuffer during detection.", v71, 2u);
      }

      v39 = [CRImageReader errorWithErrorCode:-5];
      v40 = *(*(a1 + 64) + 8);
      v41 = *(v40 + 40);
      *(v40 + 40) = v39;

      if (CRSignpostLog_onceToken != -1)
      {
        dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
      }

      v42 = CRSignpostLog_signPostOSLog;
      v36 = v42;
      if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *v71 = 0;
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, &v36->super.super, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorTime", "", v71, 2u);
      }

      goto LABEL_82;
    }

    v36 = [[CRImage_PixelBuffer alloc] initWithCVPixelBuffer:v35];
    CVPixelBufferRelease(v35);
    v37 = [*(a1 + 32) configuration];
    if ([v37 useScaleTraversal])
    {
      v66 = 1;
    }

    else
    {
      v43 = [*(a1 + 32) configuration];
      v66 = [v43 runFullTile];
    }

    v44 = [*(a1 + 32) configuration];
    v45 = [v44 useScaleTraversal];
    if ((v45 & 1) != 0 || ([*(a1 + 32) configuration], v65 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v65, "runFineScale")))
    {
      v67 = v44;
      v68 = v36;
      v46 = [*(a1 + 40) width];
      v47 = [*(a1 + 32) configuration];
      [v47 tileSize];
      if (v48 >= v46)
      {
        v50 = [*(a1 + 40) height];
        v51 = [*(a1 + 32) configuration];
        [v51 tileSize];
        v49 = v52 < v50;
      }

      else
      {
        v49 = 1;
      }

      v44 = v67;
      v36 = v68;
      if (v45)
      {
LABEL_47:

        if ([*(a1 + 32) shouldCancel])
        {
          v53 = [CRImageReader errorWithErrorCode:-3];
          v54 = *(*(a1 + 64) + 8);
          v55 = *(v54 + 40);
          *(v54 + 40) = v53;

          if (CRSignpostLog_onceToken != -1)
          {
            dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
          }

          v56 = CRSignpostLog_signPostOSLog;
          v57 = v56;
          if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v56))
          {
            goto LABEL_81;
          }

          *v71 = 0;
          v58 = v71;
LABEL_80:
          _os_signpost_emit_with_name_impl(&dword_1B40D2000, v57, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorTime", "", v58, 2u);
LABEL_81:

LABEL_82:
          goto LABEL_83;
        }

        *v71 = 0;
        if (v66)
        {
          obj[0] = 0;
          [*(a1 + 32) runFullTileInferenceOnImage:*(a1 + 40) cachedSurface:v71 outputMaps:*(*(a1 + 80) + 8) + 48 inputSize:*(*(a1 + 88) + 8) + 48 outputSize:*(*(a1 + 96) + 8) + 48 modelContext:*(v75 + 5) delegate:*(a1 + 48) error:obj];
          objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj[0]);
          if ([*(a1 + 32) shouldCancel])
          {
            v59 = [CRImageReader errorWithErrorCode:-3];
            v60 = *(*(a1 + 64) + 8);
            v61 = *(v60 + 40);
            *(v60 + 40) = v59;
          }

          if (*(*(*(a1 + 64) + 8) + 40))
          {
            if (+[CRNeuralTextDetectorV3 useE5Detector])
            {
              [*(v75 + 5) unbindPreboundInputImageSurface];
            }

            if (*v71)
            {
              CFRelease(*v71);
            }

            if (CRSignpostLog_onceToken != -1)
            {
              dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
            }

            v62 = CRSignpostLog_signPostOSLog;
            v63 = v62;
            if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v62))
            {
              *v69 = 0;
              _os_signpost_emit_with_name_impl(&dword_1B40D2000, v63, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorTime", "", v69, 2u);
            }

            goto LABEL_82;
          }

          if (!v49 || !*(*(*(a1 + 80) + 8) + 48))
          {
            goto LABEL_71;
          }
        }

        else if (!v49)
        {
LABEL_71:
          if (+[CRNeuralTextDetectorV3 useE5Detector])
          {
            [*(v75 + 5) unbindPreboundInputImageSurface];
          }

          if (*v71)
          {
            CFRelease(*v71);
          }

          if (CRSignpostLog_onceToken != -1)
          {
            dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
          }

          v64 = CRSignpostLog_signPostOSLog;
          v57 = v64;
          if (v6 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v64))
          {
            goto LABEL_81;
          }

          LOWORD(obj[0]) = 0;
          v58 = obj;
          goto LABEL_80;
        }

        CRDetectorOutputMaps::init((*(*(a1 + 104) + 8) + 48), *(*(*(a1 + 56) + 8) + 48), *(*(*(a1 + 56) + 8) + 56), *(a1 + 120), *(a1 + 121));
      }
    }

    else
    {
      v49 = 0;
    }

    goto LABEL_47;
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v33 = CRSignpostLog_signPostOSLog;
  p_super = v33;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
  {
    *v71 = 0;
    goto LABEL_23;
  }

LABEL_83:

  _Block_object_dispose(buf, 8);
}

void __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_18(uint64_t a1, uint64_t a2, float *a3, _BYTE *a4, float64_t a5, double a6, double a7, double a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v14 = objc_autoreleasePoolPush();
  if ([*(a1 + 32) shouldCancel])
  {
LABEL_2:
    *a4 = 1;
    goto LABEL_19;
  }

  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v15 = *(*(*(a1 + 40) + 8) + 40);
    v16 = *(a1 + 72);
    v17 = *(*(a1 + 48) + 8);
    obj = *(v17 + 40);
    v18 = [v15 prebindInputImageSurface:v16 error:&obj];
    objc_storeStrong((v17 + 40), obj);
    if ((v18 & 1) == 0)
    {
      v39 = CROSLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
      {
        v40 = [*(*(*(a1 + 48) + 8) + 40) description];
        LODWORD(v52) = 138412290;
        *(&v52 + 4) = v40;
        _os_log_impl(&dword_1B40D2000, v39, OS_LOG_TYPE_FAULT, "Failed to prebind input image surface: %@", &v52, 0xCu);
      }

      goto LABEL_2;
    }
  }

  *&v52 = 0;
  *(&v52 + 1) = &v52;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__9;
  v55 = __Block_byref_object_dispose__10;
  v56 = 0;
  v19 = [*(a1 + 32) inferenceStats];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_19;
  v47[3] = &unk_1E7BC33B0;
  v48 = *(a1 + 40);
  v47[4] = *(a1 + 32);
  v47[5] = &v52;
  v49 = a2;
  [v19 measureBlock:v47];

  v46 = vdupq_n_s64(0x406E000000000000uLL);
  v20 = a6;
  v21 = *(*(a1 + 56) + 8);
  v22 = *(v21 + 56);
  if ((a6 + a8) * 0.5 <= v22)
  {
    v23 = 240.0;
  }

  else
  {
    v23 = 240.0 - -(v22 - (a6 + a8) * 0.5);
    v46.height = v23;
  }

  v24.f64[0] = a5;
  v25 = *(v21 + 48);
  if ((a5 + a7) * 0.5 <= v25)
  {
    v26 = 240.0;
  }

  else
  {
    v26 = 240.0 - -(v25 - (a5 + a7) * 0.5);
    v46.width = v26;
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v29 = *(*(&v52 + 1) + 40);
    if (v29)
    {
      if (*a3 < 1.0)
      {
        __C = 0.2;
        __B = 0.0;
        v30 = (v23 * v26);
        v31 = malloc_type_calloc(v30, 4uLL, 0x100004052888210uLL);
        *buf = 0;
        __NHigh = 0;
        v32 = [*(*(&v52 + 1) + 40) region_score];
        v33 = v32;
        vDSP_vclipc([v32 dataPointer], 1, &__B, &__C, v31, 1, v30, buf, &__NHigh);

        free(v31);
        *a3 = __NHigh;
        v29 = *(*(&v52 + 1) + 40);
        v24.f64[0] = a5;
        v20 = a6;
      }

      v24.f64[1] = v20;
      __asm { FMOV            V0.2D, #0.5 }

      *buf = vmulq_f64(v24, _Q0);
      CRDetectorOutputMaps::aggregateMaps((*(*(a1 + 64) + 8) + 48), v29, &v46, buf);
    }
  }

  v27 = CROSLogForCategory(0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
  {
    v28 = [*(*(*(a1 + 48) + 8) + 40) localizedDescription];
    *buf = 138412290;
    *&buf[4] = v28;
    _os_log_impl(&dword_1B40D2000, v27, OS_LOG_TYPE_FAULT, "Model prediction error: %@", buf, 0xCu);
  }

  _Block_object_dispose(&v52, 8);
LABEL_19:
  objc_autoreleasePoolPop(v14);
}

void __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_19(uint64_t a1)
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v2 = CRSignpostLog_signPostOSLog;
  v3 = os_signpost_id_generate(v2);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v4 = CRSignpostLog_signPostOSLog;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRDetectorInferenceTime", "", buf, 2u);
  }

  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    v7 = *(*(a1 + 56) + 8);
    obj = *(v7 + 40);
    v8 = [v6 predictionFromPreboundInputsWithError:&obj];
    objc_storeStrong((v7 + 40), obj);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  else
  {
    v10 = [*(a1 + 32) modelEIR];
    v11 = *(a1 + 64);
    v12 = *(*(a1 + 56) + 8);
    v18 = *(v12 + 40);
    v13 = [v10 predictionFromImage:v11 error:&v18];
    objc_storeStrong((v12 + 40), v18);
    v14 = *(*(a1 + 40) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v16 = CRSignpostLog_signPostOSLog;
  v17 = v16;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v17, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorInferenceTime", "", buf, 2u);
  }
}

void __71__CRNeuralTextDetectorV3_detectInImage_trackingSession_delegate_error___block_invoke_27(uint64_t a1)
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v2 = CRSignpostLog_signPostOSLog;
  v3 = os_signpost_id_generate(v2);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v4 = CRSignpostLog_signPostOSLog;
  v5 = v4;
  spid = v3;
  v6 = v3 - 1;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRPostProcessingTime", "", buf, 2u);
  }

  v7 = *(a1 + 32);
  v8 = *(*(a1 + 64) + 8);
  v9 = *(*(a1 + 72) + 8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  v12 = *(*(a1 + 80) + 8);
  v13 = *(*(a1 + 88) + 8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 56);
  v16 = *(*(a1 + 96) + 8);
  v17 = *(v16 + 48);
  v18 = *(v16 + 56);
  v19 = [v7 configuration];
  v20 = [v19 logIntermediateResults];
  if (v20)
  {
    v21 = *(*(a1 + 112) + 8);
    v23 = *(v21 + 40);
    v22 = (v21 + 40);
    obj = v23;
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
    v22 = 0;
  }

  v25 = *(*(a1 + 120) + 8);
  [*(a1 + 40) size];
  v28 = [(CRNeuralTextDetectorV3 *)v7 processFineScaleMaps:(v12 + 48) adjustedSize:p_obj fullTileMaps:v25 + 3 adjustedFullTileSize:*(*(*(a1 + 128) + 8) + 40) targetSize:*(a1 + 48) targetSizeFullTile:v10 intermediateResults:v11 withScaleIds:v14 sourceImageSize:v15 tileRects:v17 trackingSession:v18, v26, v27];
  if (v20)
  {
    objc_storeStrong(v22, obj);
  }

  v29 = *(*(a1 + 56) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  [(CRNeuralTextDetectorV3 *)*(a1 + 32) computeClassificationType:*(*(*(a1 + 56) + 8) + 40) fromTextFeatures:(*(*(a1 + 64) + 8) + 104) fineScaleMap:(*(*(a1 + 80) + 8) + 104) fullTileMap:(*(*(a1 + 120) + 8) + 48) withScaleIds:?];
  if (*(a1 + 144) == 1)
  {
    [(CRNeuralTextDetectorV3 *)*(a1 + 32) computeClassificationType:*(*(*(a1 + 56) + 8) + 40) fromTextFeatures:(*(*(a1 + 64) + 8) + 56) fineScaleMap:(*(*(a1 + 80) + 8) + 56) fullTileMap:(*(*(a1 + 120) + 8) + 48) withScaleIds:?];
  }

  if (*(a1 + 145) == 1)
  {
    v31 = *(a1 + 32);
    v32 = *(*(a1 + 80) + 8);
    v33 = [v31 configuration];
    v34 = [v33 logIntermediateResults];
    if (v34)
    {
      v35 = *(*(a1 + 112) + 8);
      v37 = *(v35 + 40);
      v36 = (v35 + 40);
      v22 = v37;
    }

    else
    {
      v36 = 0;
    }

    v38 = *(*(*(a1 + 56) + 8) + 40);
    [*(a1 + 40) size];
    v39 = v38;
    if (v31)
    {
      v40 = *(v32 + 96);
      v41 = [v31 configuration];
      [v41 tableMinDetectableArea];
      CRDetectorPostProcessV3::extractTableBoxes(v40, v39, buf);
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v52 = 0;
    }

    if (v34)
    {
      objc_storeStrong(v36, v22);
    }

    v42 = *(*(a1 + 136) + 8);
    v43 = (v42 + 6);
    v44 = v42[6];
    if (v44)
    {
      v45 = v42[7];
      v46 = v42[6];
      if (v45 != v44)
      {
        do
        {
          v47 = *(v45 - 8);
          v45 -= 8;
        }

        while (v45 != v44);
        v46 = *v43;
      }

      v42[7] = v44;
      operator delete(v46);
      *v43 = 0;
      v42[7] = 0;
      v42[8] = 0;
    }

    *(v42 + 3) = *buf;
    v42[8] = v52;
    v52 = 0;
    memset(buf, 0, sizeof(buf));
    v54 = buf;
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__destroy_vector::operator()[abi:ne200100](&v54);
  }

  if (*(a1 + 146) == 1)
  {
    [(CRNeuralTextDetectorV3 *)*(a1 + 32) computeClassificationType:*(*(*(a1 + 56) + 8) + 40) fromTextFeatures:(*(*(a1 + 64) + 8) + 128) fineScaleMap:(*(*(a1 + 80) + 8) + 128) fullTileMap:(*(*(a1 + 120) + 8) + 48) withScaleIds:?];
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v48 = CRSignpostLog_signPostOSLog;
  v49 = v48;
  if (v6 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v49, OS_SIGNPOST_INTERVAL_END, spid, "OCRPostProcessingTime", "", buf, 2u);
  }
}

- (id)processFineScaleMaps:(uint64_t *)maps adjustedSize:(CRIntermediateDetectorResult *)size fullTileMaps:(int64x2_t *)tileMaps adjustedFullTileSize:(void *)tileSize targetSize:(void *)targetSize targetSizeFullTile:(double)tile intermediateResults:(double)results withScaleIds:(double)self0 sourceImageSize:(double)self1 tileRects:(float64_t)self2 trackingSession:(float64_t)self3
{
  v536 = *MEMORY[0x1E69E9840];
  tileSizeCopy = tileSize;
  targetSizeCopy = targetSize;
  if (!self)
  {
    goto LABEL_407;
  }

  sizeCopy = size;
  if (size)
  {
    v450 = [[CRIntermediateDetectorResult alloc] initWithNumberOfScales:4];
  }

  else
  {
    v450 = 0;
  }

  v22 = a2;
  v23 = 0;
  v513 = 0u;
  v514 = 0u;
  v512 = 0u;
  v511 = 0uLL;
  v510 = 0;
  v509 = 0;
  v24 = 1;
  if (*maps && *a2)
  {
    v26 = a2[4];
    v25 = a2[5];
    v28 = maps[4];
    v27 = maps[5];
    memset(&__dst, 0, sizeof(__dst));
    CRDetectorUtils::erodeImageMap(v28, &__dst);
    memset(v533, 0, 32);
    CRDetectorUtils::dilateImageMap(&__dst, v533);
    free(__dst.data);
    memset(&v523, 0, sizeof(v523));
    CRDetectorUtils::erodeImageMap(v27, &v523);
    memset(&v520, 0, sizeof(v520));
    CRDetectorUtils::dilateImageMap(&v523, &v520);
    free(v523.data);
    v29 = v26[1];
    data = v533[0].data;
    v24 = 0;
    v31 = 0;
    if (v29)
    {
      v32 = 0;
      height = v28->height;
      width = v28->width;
      v35 = v26[2];
      v36 = v29 / height;
      v37 = width;
      v38 = *v26;
      v39 = *v25;
      v40 = v520.data;
      v41 = v27->data;
      v42 = width * height;
      v43 = 4 * v35;
      v22 = a2;
      do
      {
        if (v35)
        {
          v44 = 0;
          v45 = roundf(v32 / v36);
          do
          {
            v46 = (roundf(v44 / (v35 / v37)) + (v45 * v37));
            if (v42 > v46)
            {
              v47 = v41[v46] >= 0.3;
              v48 = *(v39 + 4 * v44) >= 0.3;
              v49 = data[v46];
              if (v49 > 0.7)
              {
                v50 = fmin((v49 + *(v38 + 4 * v44)), 1.0);
                *(v38 + 4 * v44) = v50;
              }

              v24 |= v47;
              v31 |= v48;
              v51 = v40[v46];
              if (v51 > 0.7)
              {
                v52 = fmin((v51 + *(v39 + 4 * v44)), 1.0);
                *(v39 + 4 * v44) = v52;
              }
            }

            ++v44;
          }

          while (v35 != v44);
        }

        ++v32;
        v38 += v43;
        v39 += v43;
      }

      while (v32 != v29);
    }

    else
    {
      v22 = a2;
    }

    v53 = v31;
    free(data);
    free(v520.data);
    v23 = v53;
  }

  v508 = 0;
  v446 = v23;
  [CRNeuralTextDetectorV3 runNMSForDirection:self adjustedSize:v22 fullTileMaps:maps adjustedFullTileSize:v450 targetSize:&v512 targetSizeFullTile:tileSizeCopy intermediateResults:1 withScaleIds:&v508 sourceImageSize:tile tileRects:results isHorizontal:ids resultTextFeatures:imageSize quadFeatures:&v510 isFineScaleVerticalLinkActive:v23 & 1 isFullTileVerticalLinkActive:v24 & 1 idxLog:&v509];
  v447 = v508;
  if (&v512 != tileMaps)
  {
    v54 = (v514 >> 9) & 0x7FFFFFFFFFFFF8;
    v55 = (*(&v512 + 1) + v54);
    if (v513 == *(&v512 + 1))
    {
      v57 = 0;
      v65 = 0;
    }

    else
    {
      v56 = v514 & 0xFFF;
      v57 = *v55 + v56;
      v58 = ((*(&v514 + 1) + v514) >> 9) & 0x7FFFFFFFFFFFF8;
      if ((*(*(&v512 + 1) + v58) + ((WORD4(v514) + v514) & 0xFFF)) != v57)
      {
        v59 = ((WORD4(v514) + v514) & 0xFFF) - v56 + ((v58 - v54) << 9);
        v61 = &tileMaps[2].i64[1];
        v60 = tileMaps[2].u64[1];
        if (v60 < v59)
        {
          v62 = *v55 + (v514 & 0xFFF);
          v63 = v55;
          if (v60)
          {
            v64 = v60 + v56;
            if (v64 < 1)
            {
              v84 = 4095 - v64;
              v63 = &v55[-(v84 >> 12)];
              v62 = *v63 + (~v84 & 0xFFF);
            }

            else
            {
              v63 = &v55[v64 >> 12];
              v62 = *v63 + (v64 & 0xFFF);
            }
          }

          v85 = tileMaps->i64[1];
          if (tileMaps[1].i64[0] == v85)
          {
            v86 = 0;
          }

          else
          {
            v86 = *(v85 + 8 * (tileMaps[2].i64[0] >> 12)) + (tileMaps[2].i64[0] & 0xFFF);
          }

          __dst.data = (v85 + 8 * (tileMaps[2].i64[0] >> 12));
          __dst.height = v86;
          std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>>(v55, v57, v63, v62, &__dst);
          v87 = tileMaps->i64[1];
          v88 = tileMaps[1].i64[0];
          v89 = ((v88 - v87) << 9) - 1;
          if (v88 == v87)
          {
            v89 = 0;
          }

          v90 = tileMaps[2].i64[1];
          v91 = tileMaps[2].i64[0] + v90;
          v92 = v89 - v91;
          if (v59 - v90 <= v92)
          {
            v93 = tileMaps[2].i64[1];
          }

          else
          {
            std::deque<unsigned char>::__add_back_capacity(tileMaps, v59 - v90 - v92);
            v93 = tileMaps[2].i64[1];
            v87 = tileMaps->i64[1];
            v88 = tileMaps[1].i64[0];
            v91 = tileMaps[2].i64[0] + v93;
          }

          v94 = (v87 + 8 * (v91 >> 12));
          if (v88 == v87)
          {
            v95 = 0;
            v96 = 0;
          }

          else
          {
            v95 = (*v94 + (v91 & 0xFFF));
            v96 = v95;
          }

          v97 = v94;
          if (v59 != v90)
          {
            v98 = v96 - *v94 + v59 - v90;
            if (v98 < 1)
            {
              v99 = 4095 - v98;
              v97 = &v94[-(v99 >> 12)];
              v96 = *v97 + (~v99 & 0xFFF);
            }

            else
            {
              v97 = &v94[v98 >> 12];
              v96 = *v97 + (v98 & 0xFFF);
            }
          }

          while (v95 != v96)
          {
            v100 = v96;
            if (v94 != v97)
            {
              v100 = *v94 + 4096;
            }

            if (v95 == v100)
            {
              v100 = v95;
            }

            else
            {
              v101 = v95;
              do
              {
                v102 = *v62++;
                *v101++ = v102;
                if (v62 - *v63 == 4096)
                {
                  v103 = v63[1];
                  ++v63;
                  v62 = v103;
                }
              }

              while (v101 != v100);
              v93 = *v61;
            }

            v93 += v100 - v95;
            *v61 = v93;
            if (v94 == v97)
            {
              break;
            }

            v104 = v94[1];
            ++v94;
            v95 = v104;
          }

          goto LABEL_81;
        }

        v65 = *v55 + (v514 & 0xFFF);
        tileMapsCopy2 = tileMaps;
LABEL_32:
        v67 = tileMapsCopy2->i64[1];
        v68 = (v67 + 8 * (tileMapsCopy2[2].i64[0] >> 12));
        if (tileMapsCopy2[1].i64[0] == v67)
        {
          v69 = 0;
          if (v59)
          {
LABEL_34:
            v70 = v65 - *v55 + v59;
            if (v70 < 1)
            {
              v72 = 4095 - v70;
              v71 = &v55[-(v72 >> 12)];
              v65 = *v71 + (~v72 & 0xFFF);
            }

            else
            {
              v71 = &v55[v70 >> 12];
              v65 = *v71 + (v70 & 0xFFF);
            }

            goto LABEL_39;
          }
        }

        else
        {
          v69 = *v68 + (tileMapsCopy2[2].i64[0] & 0xFFF);
          if (v59)
          {
            goto LABEL_34;
          }
        }

        v71 = v55;
LABEL_39:
        __dst.data = v68;
        __dst.height = v69;
        std::__for_each_segment[abi:ne200100]<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>>(v55, v57, v71, v65, &__dst);
        v73 = tileMaps[2].i64[0];
        v74 = tileMaps[2].i64[1];
        v76 = tileMaps->i64[1];
        v75 = tileMaps[1].i64[0];
        v77 = (v76 + 8 * ((v73 + v74) >> 12));
        if (v75 == v76)
        {
          v78 = 0;
        }

        else
        {
          v78 = *v77 + ((v73 + v74) & 0xFFF);
        }

        if (v78 != __dst.height)
        {
          v79 = v78 + ((v77 - __dst.data) << 9) - __dst.height - *v77 + *__dst.data;
          if (v79 >= 1)
          {
            v80 = v75 == v76 ? 0 : ((v75 - v76) << 9) - 1;
            v81 = v74 - v79;
            *v61 = v81;
            if ((v80 - v73 - v81) >= 0x2000)
            {
              do
              {
                operator delete(*(v75 - 8));
                v82 = tileMaps->i64[1];
                v75 = tileMaps[1].i64[0] - 8;
                tileMaps[1].i64[0] = v75;
                if (v75 == v82)
                {
                  v83 = 0;
                }

                else
                {
                  v83 = ((v75 - v82) << 9) - 1;
                }
              }

              while ((v83 - (tileMaps[2].i64[1] + tileMaps[2].i64[0])) >> 13);
            }
          }
        }

        goto LABEL_81;
      }

      v65 = *v55 + (v514 & 0xFFF);
    }

    v59 = 0;
    tileMapsCopy2 = tileMaps;
    v61 = &tileMaps[2].i64[1];
    goto LABEL_32;
  }

LABEL_81:
  if ((v24 | v446))
  {
    v506 = 0u;
    v507 = 0u;
    v505 = 0u;
    v502 = 0;
    v503 = 0;
    v504 = 0;
    v501 = 0;
    [CRNeuralTextDetectorV3 runNMSForDirection:self adjustedSize:a2 fullTileMaps:maps adjustedFullTileSize:v450 targetSize:&v505 targetSizeFullTile:tileSizeCopy intermediateResults:0 withScaleIds:&v501 sourceImageSize:tile tileRects:results isHorizontal:ids resultTextFeatures:imageSize quadFeatures:&v502 isFineScaleVerticalLinkActive:v446 & 1 isFullTileVerticalLinkActive:v24 & 1 idxLog:&v509];
    v105 = v501;
    v445 = v447;
    v452 = v105;
    v106 = v502;
    if (v503 != v502)
    {
      v107 = 0;
      v108 = 140;
      do
      {
        *(v106 + v108) += 1022611261 * ((v511 - v510) >> 3);
        v109 = [v452 objectAtIndexedSubscript:v107];
        [v109 setFeatureID:{objc_msgSend(v109, "featureID") + 1022611261 * ((v511 - v510) >> 3)}];

        ++v107;
        v106 = v502;
        v108 += 168;
      }

      while (v107 < 0xCF3CF3CF3CF3CF3DLL * ((v503 - v502) >> 3));
    }

    v458 = [v445 count];
    v110 = [v452 count];
    LOBYTE(__dst.data) = 1;
    std::vector<BOOL>::vector(&v519, v458, &__dst);
    LOBYTE(__dst.data) = 1;
    std::vector<BOOL>::vector(&__p, v110, &__dst);
    v111 = v445;
    v455 = v452;
    CRDetectorPostProcessV3::Graph::Graph(&v516, [v455 count] + objc_msgSend(v111, "count"));
    v524 = 0u;
    v525 = 0u;
    memset(&v523, 0, sizeof(v523));
    obj = v111;
    v112 = [obj countByEnumeratingWithState:&v523 objects:&__dst count:16];
    if (v112)
    {
      v459 = 0;
      v453 = *v523.width;
      do
      {
        v457 = 0;
        v454 = v112;
        do
        {
          if (*v523.width != v453)
          {
            objc_enumerationMutation(obj);
          }

          v113 = *(v523.height + 8 * v457);
          memset(&v520, 0, sizeof(v520));
          v521 = 0u;
          v522 = 0u;
          v461 = v455;
          v114 = [v461 countByEnumeratingWithState:&v520 objects:v533 count:16];
          if (v114)
          {
            v115 = 0;
            v116 = *v520.width;
            do
            {
              for (i = 0; i != v114; ++i)
              {
                if (*v520.width != v116)
                {
                  objc_enumerationMutation(v461);
                }

                v118 = *(v520.height + 8 * i);
                v119 = v113;
                v120 = v118;
                [(CRNeuralTextDetectorV3 *)v119 getBorderPoints:&v530 sourceImageSize:1 outP1:rects outP2:session isHorizontal:?];
                [(CRNeuralTextDetectorV3 *)v120 getBorderPoints:&v528 sourceImageSize:0 outP1:rects outP2:session isHorizontal:?];
                v121 = v515;
                v122 = v530;
                v123 = v529;
                v124 = v528;
                LODWORD(v118) = [CRGeometryUtilities checkIntersectionForLineThroughPoint:v527 andPoint:v515.f64[0] andSegmentStartingAt:v515.f64[1] andEndingAt:v530.f64[0] intersectAt:v530.f64[1], v529.f64[0], v529.f64[1], v528.f64[0], v528.f64[1]];
                v125 = [CRGeometryUtilities checkIntersectionForLineThroughPoint:v526 andPoint:*&v123 andSegmentStartingAt:*&v124 andEndingAt:*&v121 intersectAt:*&v122];

                v126 = v119;
                v127 = v120;
                [v126 topLeft];
                __srcc = v128;
                [v126 bottomLeft];
                v485 = v129;
                [v126 topLeft];
                v481 = v130;
                [v126 bottomLeft];
                v477 = v131;
                [v126 topRight];
                v473 = v132;
                [v126 bottomRight];
                v470 = v133;
                [v126 topRight];
                v468 = v134;
                [v126 bottomRight];
                v136 = v135;
                [v127 topLeft];
                v138 = v137;
                [v127 bottomLeft];
                v140 = v139;
                [v127 topLeft];
                v142 = v141;
                [v127 bottomLeft];
                v144 = v143;
                [v127 topRight];
                v146 = v145;
                [v127 bottomRight];
                v148 = v147;
                [v127 topRight];
                v150 = v149;
                [v127 bottomRight];
                v152 = v118 & v125;
                v153 = (*&__srcc + *&v485) * 0.5;
                v154 = (v481 + v477) * 0.5;
                v155 = (v473 + *&v470) * 0.5;
                v156 = (v138 + v140) * 0.5;
                v157 = (v146 + v148) * 0.5;
                v486 = v155;
                __src = (v468 + v136) * 0.5;
                v478 = v153;
                v482 = v154;
                v158 = (__src - v154) / (v155 - v153);
                if (v153 == v155)
                {
                  v158 = 3.40282347e38;
                }

                v466 = v158;
                v467 = (v138 + v140) * 0.5;
                v471 = (v146 + v148) * 0.5;
                v474 = (v150 + v151) * 0.5;
                v469 = (v142 + v144) * 0.5;
                if (v156 == v157)
                {
                  v159 = 3.40282347e38;
                }

                else
                {
                  v159 = ((v150 + v151) * 0.5 - (v142 + v144) * 0.5) / (v157 - v156);
                }

                [v126 topLeft];
                v161 = v160;
                [v126 bottomLeft];
                v163 = v162;
                [v126 topLeft];
                v165 = v164;
                [v126 bottomLeft];
                v167 = v166;
                [v127 topLeft];
                v169 = v168;
                [v127 bottomLeft];
                v171 = v170;
                [v127 topLeft];
                v173 = v172;
                [v127 bottomLeft];
                v174 = vabdd_f64(v466, v159);
                v175 = v161 - v163;
                v176 = v165 - v167;
                v177 = (v175 * v175) + (v176 * v176);
                v178 = v169 - v171;
                *&v179 = v173 - v179;
                v180 = fminf(v177, (v178 * v178) + (*&v179 * *&v179)) * 0.349999994 * 0.349999994;
                v181 = v478 - v467;
                v182 = v482 - v469;
                v183 = v180 >= ((v181 * v181) + (v182 * v182));
                v184 = v486 - v471;
                v185 = __src - v474;
                if (v180 < ((v184 * v184) + (v185 * v185)))
                {
                  v183 = 0;
                }

                v186 = v174 < 0.100000001 && v183;

                if ((v152 | v186))
                {
                  CRDetectorPostProcessV3::Graph::addEdge(&v516, v459, v115 + [obj count]);
                }

                ++v115;
              }

              v114 = [v461 countByEnumeratingWithState:&v520 objects:v533 count:16];
            }

            while (v114);
          }

          ++v459;
          ++v457;
        }

        while (v457 != v454);
        v112 = [obj countByEnumeratingWithState:&v523 objects:&__dst count:16];
      }

      while (v112);
    }

    CRDetectorPostProcessV3::Graph::connectedComponents(&v515, &v516);
    v187 = v515.f64[0];
    if (*&v515.f64[1] != *&v515.f64[0])
    {
      v188 = 0;
      do
      {
        v189 = *(*&v187 + 24 * v188);
        if (*(*&v187 + 24 * v188 + 8) != v189)
        {
          v190 = 0;
          v191 = 0.0;
          v192 = 0.0;
          do
          {
            v193 = v189[v190];
            if ([obj count] <= v193)
            {
              v192 = v192 + *(v502 + 168 * (v193 - v458) + 112) * *(v502 + 168 * (v193 - v458) + 120) * *(v502 + 168 * (v193 - v458) + 128);
            }

            else
            {
              v191 = v191 + v510[21 * v193 + 14] * v510[21 * v193 + 15] * v510[21 * v193 + 16];
            }

            ++v190;
            v187 = v515.f64[0];
            v189 = *(*&v515.f64[0] + 24 * v188);
            v194 = (*(*&v515.f64[0] + 24 * v188 + 8) - v189) >> 2;
          }

          while (v194 > v190);
          if (v194)
          {
            v195 = v519;
            v196 = __p;
            do
            {
              v198 = *v189++;
              v197 = v198;
              if (v198 < v458 && v191 < v192)
              {
                *&v195[(v197 >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << v197);
              }

              if (v197 >= v458 && v192 <= v191)
              {
                *&v196[((v197 - v458) >> 3) & 0x1FFFFFFFFFFFFFF8] &= ~(1 << (v197 - v458));
              }

              --v194;
            }

            while (v194);
          }
        }

        ++v188;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*&v515.f64[1] - *&v187) >> 3) > v188);
    }

    v201 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v202 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v524 = 0u;
    v525 = 0u;
    memset(&v523, 0, sizeof(v523));
    v203 = obj;
    v204 = [v203 countByEnumeratingWithState:&v523 objects:&__dst count:16];
    if (v204)
    {
      v205 = 0;
      v206 = *v523.width;
      do
      {
        v207 = 0;
        v208 = v205;
        v205 += v204;
        do
        {
          if (*v523.width != v206)
          {
            objc_enumerationMutation(v203);
          }

          if ((*(v519 + ((v208 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v208))
          {
            v209 = v201;
          }

          else
          {
            v209 = v202;
          }

          [v209 addObject:*(v523.height + 8 * v207)];
          ++v208;
          ++v207;
        }

        while (v204 != v207);
        v204 = [v203 countByEnumeratingWithState:&v523 objects:&__dst count:16];
      }

      while (v204);
    }

    v521 = 0u;
    v522 = 0u;
    memset(&v520, 0, sizeof(v520));
    v210 = v455;
    v211 = [v210 countByEnumeratingWithState:&v520 objects:v533 count:16];
    if (v211)
    {
      v212 = 0;
      v213 = *v520.width;
      do
      {
        v214 = 0;
        v215 = v212;
        v212 += v211;
        do
        {
          if (*v520.width != v213)
          {
            objc_enumerationMutation(v210);
          }

          if ((*(__p + ((v215 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v215))
          {
            v216 = v201;
          }

          else
          {
            v216 = v202;
          }

          [v216 addObject:*(v520.height + 8 * v214)];
          ++v215;
          ++v214;
        }

        while (v211 != v214);
        v211 = [v210 countByEnumeratingWithState:&v520 objects:v533 count:16];
      }

      while (v211);
    }

    if ([v202 count])
    {
      v217 = objc_alloc_init(MEMORY[0x1E695DF70]);
      mapsCopy = maps;
      if (v446)
      {
        mapsCopy = a2;
      }

      CRDetectorPostProcessV3::getSplitComponents(v201, v202, *mapsCopy, v217);
    }

    *&v530.f64[0] = &v515;
    std::vector<std::vector<PixelPosition>>::__destroy_vector::operator()[abi:ne200100](&v530);
    *&v515.f64[0] = &v517;
    std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&v515);
    if (__p)
    {
      operator delete(__p);
    }

    if (v519)
    {
      operator delete(v519);
    }

    v220 = v502;
    v219 = v503;
    v221 = v503 - v502;
    if ((v503 - v502) >= 1)
    {
      v222 = v511;
      if (*(&v511 + 1) - v511 >= v221)
      {
        v533[0].data = v511;
        v523.data = v511;
        __dst.data = &v510;
        __dst.height = &v523;
        __dst.width = v533;
        LOBYTE(__dst.rowBytes) = 0;
        if (v502 != v503)
        {
          v227 = v511;
          do
          {
            v228 = *v220;
            v229 = *(v220 + 16);
            v230 = *(v220 + 48);
            *(v227 + 2) = *(v220 + 32);
            *(v227 + 3) = v230;
            *v227 = v228;
            *(v227 + 1) = v229;
            *(v227 + 8) = 0;
            *(v227 + 9) = 0;
            *(v227 + 10) = 0;
            std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v227 + 8, *(v220 + 64), *(v220 + 72), (*(v220 + 72) - *(v220 + 64)) >> 4);
            v231 = *(v220 + 88);
            v232 = *(v220 + 104);
            v233 = *(v220 + 120);
            v234 = *(v220 + 136);
            *(v227 + 18) = 0;
            *(v227 + 17) = v234;
            *(v227 + 120) = v233;
            *(v227 + 104) = v232;
            *(v227 + 88) = v231;
            *(v227 + 19) = 0;
            *(v227 + 20) = 0;
            std::vector<CRDetectorUtils::CRTextDetectorQuad>::__init_with_size[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>(v227 + 18, *(v220 + 144), *(v220 + 152), 0x8E38E38E38E38E39 * ((*(v220 + 152) - *(v220 + 144)) >> 4));
            v220 += 168;
            v227 = v533[0].data + 168;
            v533[0].data = v533[0].data + 168;
          }

          while (v220 != v219);
          v222 = v227;
        }

        LOBYTE(__dst.rowBytes) = 1;
        std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>>::~__exception_guard_exceptions[abi:ne200100](&__dst);
        *&v511 = v222;
      }

      else
      {
        v223 = 0xCF3CF3CF3CF3CF3DLL * ((v511 - v510) >> 3);
        v224 = v223 - 0x30C30C30C30C30C3 * (v221 >> 3);
        if (v224 > 0x186186186186186)
        {
          std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
        }

        v225 = 0x9E79E79E79E79E7ALL * ((*(&v511 + 1) - v510) >> 3);
        if (v225 <= v224)
        {
          v225 = v223 - 0x30C30C30C30C30C3 * (v221 >> 3);
        }

        if (0xCF3CF3CF3CF3CF3DLL * ((*(&v511 + 1) - v510) >> 3) >= 0xC30C30C30C30C3)
        {
          v226 = 0x186186186186186;
        }

        else
        {
          v226 = v225;
        }

        tileMapsCopy3 = &v510;
        if (v226)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>>(&v510, v226);
        }

        v235 = 0;
        v236 = 8 * ((v511 - v510) >> 3);
        __dst.data = 0;
        __dst.height = v236;
        *&__dst.width = v236;
        do
        {
          v237 = v236 + v235;
          v238 = *(v220 + v235);
          v239 = *(v220 + v235 + 16);
          v240 = *(v220 + v235 + 48);
          *(v237 + 32) = *(v220 + v235 + 32);
          *(v237 + 48) = v240;
          *v237 = v238;
          *(v237 + 16) = v239;
          *(v237 + 72) = 0;
          *(v237 + 80) = 0;
          *(v236 + v235 + 64) = 0;
          std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>((v236 + v235 + 64), *(v220 + v235 + 64), *(v220 + v235 + 72), (*(v220 + v235 + 72) - *(v220 + v235 + 64)) >> 4);
          v241 = *(v220 + v235 + 88);
          v242 = *(v220 + v235 + 104);
          v243 = *(v220 + v235 + 120);
          v244 = *(v220 + v235 + 136);
          *(v237 + 144) = 0;
          v245 = (v236 + v235 + 144);
          *(v245 - 1) = v244;
          *(v245 - 3) = v243;
          *(v245 - 5) = v242;
          *(v245 - 7) = v241;
          v245[1] = 0;
          v245[2] = 0;
          std::vector<CRDetectorUtils::CRTextDetectorQuad>::__init_with_size[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>(v245, *(v220 + v235 + 144), *(v220 + v235 + 152), 0x8E38E38E38E38E39 * ((*(v220 + v235 + 152) - *(v220 + v235 + 144)) >> 4));
          v235 += 168;
        }

        while (v221 != v235);
        __dst.width = 168 * v223 + v221;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>(&v510, v222, v511, __dst.width);
        __dst.width += v511 - v222;
        *&v511 = v222;
        v246 = (__dst.height + v510 - v222);
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>,CRDetectorUtils::CRTextDetectorQuadFeature*>(&v510, v510, v222, v246);
        v247 = v510;
        v248 = *(&v511 + 1);
        v510 = v246;
        v511 = *&__dst.width;
        __dst.width = v247;
        __dst.rowBytes = v248;
        __dst.height = v247;
        __dst.data = v247;
        std::__split_buffer<CRDetectorUtils::CRTextDetectorQuadFeature>::~__split_buffer(&__dst.data);
      }
    }

    v250 = tileMaps[2].u64[0];
    v249 = tileMaps[2].i64[1];
    v251 = v250 + v249;
    v252 = ((v250 + v249) >> 9) & 0x7FFFFFFFFFFFF8;
    v253 = tileMaps->i64[1];
    v254 = tileMaps[1].i64[0];
    if (v254 == v253)
    {
      v255 = 0;
    }

    else
    {
      v255 = *(v253 + v252) + (v251 & 0xFFF);
    }

    v256 = (v507 >> 9) & 0x7FFFFFFFFFFFF8;
    v257 = (*(&v505 + 1) + v256);
    v483 = (*(&v505 + 1) + v256);
    if (v506 == *(&v505 + 1))
    {
      v261 = 0;
      __srca = 0;
      v262 = 0;
      v260 = *(&v505 + 1) + 8 * ((*(&v507 + 1) + v507) >> 12);
    }

    else
    {
      v258 = (*v257 + (v507 & 0xFFF));
      v259 = ((*(&v507 + 1) + v507) >> 9) & 0x7FFFFFFFFFFFF8;
      v260 = *(&v505 + 1) + v259;
      v261 = (*(*(&v505 + 1) + v259) + ((WORD4(v507) + v507) & 0xFFF));
      __srca = v258;
      if (v261 == v258)
      {
        v262 = 0;
      }

      else
      {
        v262 = ((WORD4(v507) + v507) & 0xFFF) + ((v259 - v256) << 9) - v258 + *v257;
      }
    }

    v263 = v250 >> 12;
    v264 = 8 * (v250 >> 12);
    v265 = v254 - v253;
    if (v254 == v253)
    {
      v266 = 0;
    }

    else
    {
      v266 = *(v253 + v264) + (tileMaps[2].i64[0] & 0xFFF);
    }

    v487 = v260;
    if (v255 == v266)
    {
      v267 = 0;
    }

    else
    {
      v267 = v255 + ((v252 - v264) << 9) - v266 - *(v253 + v252) + *(v253 + v264);
    }

    if (v267 < v249 - v267)
    {
      v268 = v262 - v250;
      if (v262 > v250)
      {
        v269 = (v265 << 9) - 1;
        v270 = v254 - v253;
        if (v254 == v253)
        {
          v269 = 0;
          ++v268;
        }

        if ((v268 & 0xFFF) != 0)
        {
          v271 = (v268 >> 12) + 1;
        }

        else
        {
          v271 = v268 >> 12;
        }

        v272 = v269 - v251;
        v273 = (v269 - v251) >> 12;
        if (v271 >= v272 >> 12)
        {
          v274 = v273;
        }

        else
        {
          v274 = v271;
        }

        if (v271 <= v272 >> 12)
        {
          for (tileMaps[2].i64[0] = v250 + (v274 << 12); v274; --v274)
          {
            v288 = tileMaps[1].i64[0];
            __dst.data = *(v288 - 8);
            tileMaps[1].i64[0] = v288 - 8;
            std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(tileMaps, &__dst);
          }
        }

        else
        {
          v275 = v271 - v274;
          v276 = tileMaps[1].i64[1] - tileMaps->i64[0];
          if (v271 - v274 > (v276 >> 3) - (v270 >> 3))
          {
            v277 = v275 + (v270 >> 3);
            if (v276 >> 2 <= v277)
            {
              v278 = v277;
            }

            else
            {
              v278 = v276 >> 2;
            }

            tileMapsCopy3 = tileMaps;
            if (v278)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long *>>(tileMaps, v278);
            }

            memset(&__dst, 0, sizeof(__dst));
            operator new();
          }

          if (v275)
          {
            if (v253 != tileMaps->i64[0])
            {
              operator new();
            }

            operator new();
          }

          for (tileMaps[2].i64[0] = v250 + (v274 << 12); v274; --v274)
          {
            v316 = tileMaps[1].i64[0];
            __dst.data = *(v316 - 8);
            tileMaps[1].i64[0] = v316 - 8;
            std::__split_buffer<unsigned long *>::emplace_front<unsigned long *>(tileMaps, &__dst);
          }
        }

        v250 = tileMaps[2].u64[0];
        v253 = tileMaps->i64[1];
        v254 = tileMaps[1].i64[0];
        v263 = v250 >> 12;
      }

      v317 = (v253 + 8 * v263);
      if (v254 == v253)
      {
        v318 = 0;
      }

      else
      {
        v318 = *v317 + (v250 & 0xFFF);
      }

      if (v262 <= v267)
      {
        v322 = v318;
        v323 = v317;
LABEL_316:
        if (v262)
        {
          v333 = v318 - *v317 + v262;
          if (v333 < 1)
          {
            v336 = 4095 - v333;
            v334 = &v317[-(v336 >> 12)];
            v335 = (*v334 + (~v336 & 0xFFF));
          }

          else
          {
            v334 = &v317[v333 >> 12];
            v335 = (*v334 + (v333 & 0xFFF));
          }

          if (v335 != v318)
          {
            v337 = v334;
            v338 = v335;
            do
            {
              if (v322 == *v323)
              {
                v339 = *--v323;
                v322 = v339 + 4096;
              }

              if (v338 == *v337)
              {
                v340 = *--v337;
                v338 = (v340 + 4096);
              }

              v341 = *--v338;
              *--v322 = v341;
              tileMaps[2] = vaddq_s64(tileMaps[2], xmmword_1B42AF9D0);
            }

            while (v338 != v318);
          }

          if (v262 >= v267)
          {
            v343 = __srca;
            v344 = v483;
          }

          else
          {
            v479 = v261;
            v342 = v318 - *v317 + v267;
            v343 = __srca;
            v344 = v483;
            if (v342 < 1)
            {
              v347 = 4095 - v342;
              v345 = &v317[-(v347 >> 12)];
              v346 = (*v345 + (~v347 & 0xFFF));
            }

            else
            {
              v345 = &v317[v342 >> 12];
              v346 = (*v345 + (v342 & 0xFFF));
            }

            __dst.data = v317;
            __dst.height = v318;
            v533[0].data = &__dst;
            if (v334 != v345)
            {
              v475 = v346;
              v349 = *v334;
              v348 = v334 + 1;
              std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](v533, v335, (v349 + 4096));
              if (v348 != v345)
              {
                v350 = __dst.data;
                v351 = __dst.height;
                do
                {
                  v352 = 0;
                  v353 = *v348;
                  v355 = *v350++;
                  v354 = v355;
                  while (1)
                  {
                    v356 = v354 - v351 + 4096;
                    if (4096 - v352 >= v356)
                    {
                      v357 = v356;
                    }

                    else
                    {
                      v357 = 4096 - v352;
                    }

                    if (v357)
                    {
                      memmove(v351, &v353[v352], v357);
                    }

                    v352 += v357;
                    if (v352 == 4096)
                    {
                      break;
                    }

                    v358 = *v350++;
                    v354 = v358;
                    v351 = v358;
                  }

                  v351 += v357;
                  if (*(v350 - 1) + 4096 == v351)
                  {
                    v351 = *v350;
                  }

                  else
                  {
                    --v350;
                  }

                  __dst.data = v350;
                  __dst.height = v351;
                  ++v348;
                }

                while (v348 != v345);
              }

              v335 = *v348;
              v343 = __srca;
              v344 = v483;
              v346 = v475;
            }

            std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](v533, v335, v346);
            v317 = __dst.data;
            v318 = __dst.height;
            v261 = v479;
          }

          __dst.data = v317;
          __dst.height = v318;
          v533[0].data = &__dst;
          if (v344 != v487)
          {
            v360 = *v344;
            v359 = v344 + 1;
            std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](v533, v343, (v360 + 4096));
            if (v359 != v487)
            {
              v361 = __dst.data;
              v362 = __dst.height;
              do
              {
                v363 = 0;
                v364 = v359;
                v365 = *v359;
                v367 = *v361++;
                v366 = v367;
                while (1)
                {
                  v368 = v366 - v362 + 4096;
                  if (4096 - v363 >= v368)
                  {
                    v369 = v368;
                  }

                  else
                  {
                    v369 = 4096 - v363;
                  }

                  if (v369)
                  {
                    memmove(v362, &v365[v363], v369);
                  }

                  v363 += v369;
                  if (v363 == 4096)
                  {
                    break;
                  }

                  v370 = *v361++;
                  v366 = v370;
                  v362 = v370;
                }

                v362 += v369;
                if (*(v361 - 1) + 4096 == v362)
                {
                  v362 = *v361;
                }

                else
                {
                  --v361;
                }

                __dst.data = v361;
                __dst.height = v362;
                v359 = v364 + 1;
              }

              while (v364 + 1 != v487);
            }

            v343 = *v359;
          }

          std::__copy_impl::_CopySegment<std::__deque_iterator<unsigned char,unsigned char const*,unsigned char const&,unsigned char const* const*,long,4096l>,std::__deque_iterator<unsigned char,unsigned char *,unsigned char &,unsigned char **,long,4096l>>::operator()[abi:ne200100](v533, v343, v261);
        }

        goto LABEL_410;
      }

      if (v267 >= v262 >> 1)
      {
        v319 = __srca;
        v320 = &__srca[v262 - v267 - *v483];
        if (v320 >= 1)
        {
          v321 = &v483[v320 >> 12];
          goto LABEL_301;
        }

        v325 = 4095 - v320;
        v326 = ~v325;
        v321 = &v483[-(v325 >> 12)];
      }

      else
      {
        v319 = __srca;
        if (!v267)
        {
          v321 = v487;
          v324 = v261;
          goto LABEL_306;
        }

        v320 = &v261[-v267 - *v487];
        if (v320 >= 1)
        {
          v321 = &v487[v320 >> 12];
LABEL_301:
          v324 = (*v321 + (v320 & 0xFFF));
LABEL_306:
          v483 = v321;
          if (v324 == v319)
          {
            v322 = v318;
            v323 = v317;
          }

          else
          {
            v328 = v321;
            v329 = v324;
            v323 = v317;
            v322 = v318;
            do
            {
              if (v322 == *v323)
              {
                v330 = *--v323;
                v322 = v330 + 4096;
              }

              if (v329 == *v328)
              {
                v331 = *--v328;
                v329 = (v331 + 4096);
              }

              v332 = *--v329;
              *--v322 = v332;
              tileMaps[2] = vaddq_s64(tileMaps[2], xmmword_1B42AF9D0);
            }

            while (v329 != v319);
          }

          __srca = v324;
          v262 = v267;
          goto LABEL_316;
        }

        v327 = 4095 - v320;
        v326 = ~v327;
        v321 = &v487[-(v327 >> 12)];
      }

      v324 = (*v321 + (v326 & 0xFFF));
      goto LABEL_306;
    }

    v279 = (v265 << 9) - 1;
    if (v254 == v253)
    {
      v279 = 0;
    }

    v280 = v279 - v251;
    if (v262 > v280)
    {
      std::deque<unsigned char>::__add_back_capacity(tileMaps, v262 - v280);
      v249 = tileMaps[2].i64[1];
      v253 = tileMaps->i64[1];
      v254 = tileMaps[1].i64[0];
      v251 = tileMaps[2].i64[0] + v249;
    }

    v281 = (v253 + 8 * (v251 >> 12));
    if (v254 == v253)
    {
      v282 = 0;
    }

    else
    {
      v282 = (*v281 + (v251 & 0xFFF));
    }

    v283 = v249 - v267;
    if (v283 >= v262)
    {
      v286 = v282;
      v287 = (v253 + 8 * (v251 >> 12));
      goto LABEL_250;
    }

    if (v283 >= v262 >> 1)
    {
      v284 = &v261[v283 - v262 - *v487];
      if (v284 >= 1)
      {
        v285 = &v487[v284 >> 12];
        goto LABEL_232;
      }

      v290 = 4095 - v284;
      v291 = ~v290;
      v285 = &v487[-(v290 >> 12)];
    }

    else
    {
      if (!v283)
      {
        v285 = v483;
        v289 = __srca;
        goto LABEL_240;
      }

      v284 = &__srca[v283 - *v483];
      if (v284 >= 1)
      {
        v285 = &v483[v284 >> 12];
LABEL_232:
        v289 = (*v285 + (v284 & 0xFFF));
LABEL_240:
        v487 = v285;
        if (v289 == v261)
        {
          v286 = v282;
          v287 = v281;
        }

        else
        {
          v293 = v285;
          v294 = v289;
          v287 = v281;
          v286 = v282;
          do
          {
            *v286++ = *v294;
            if (&v286[-*v287] == 4096)
            {
              v295 = v287[1];
              ++v287;
              v286 = v295;
            }

            if (&(++v294)[-*v293] == 4096)
            {
              v296 = v293[1];
              ++v293;
              v294 = v296;
            }

            ++tileMaps[2].i64[1];
          }

          while (v294 != v261);
        }

        v261 = v289;
        v262 = v283;
LABEL_250:
        if (!v262)
        {
LABEL_410:
          __dst.data = &v502;
          std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](&__dst);
          std::deque<unsigned char>::~deque[abi:ne200100](&v505);

          goto LABEL_367;
        }

        v297 = &v282[-v262 - *v281];
        if (v297 < 1)
        {
          v300 = 4095 - v297;
          v298 = &v281[-(v300 >> 12)];
          v299 = (*v298 + (~v300 & 0xFFF));
        }

        else
        {
          v298 = &v281[v297 >> 12];
          v299 = (*v298 + (v297 & 0xFFF));
        }

        if (v299 != v282)
        {
          v301 = v298;
          v302 = v299;
          do
          {
            *v286++ = *v302;
            if (&v286[-*v287] == 4096)
            {
              v303 = v287[1];
              ++v287;
              v286 = v303;
            }

            if (&(++v302)[-*v301] == 4096)
            {
              v304 = v301[1];
              ++v301;
              v302 = v304;
            }

            ++tileMaps[2].i64[1];
          }

          while (v302 != v282);
        }

        if (v262 < v283)
        {
          v305 = *v281;
          v306 = &v282[-v283 - *v281];
          if (v306 < 1)
          {
            v309 = 4095 - v306;
            v307 = &v281[-(v309 >> 12)];
            v308 = (*v307 + (~v309 & 0xFFF));
          }

          else
          {
            v307 = &v281[v306 >> 12];
            v308 = (*v307 + (v306 & 0xFFF));
          }

          if (v307 != v298)
          {
            v310 = *v298;
            if (*v298 == v299)
            {
              goto LABEL_456;
            }

            while (1)
            {
              if (v299 - v310 >= v282 - v305)
              {
                v311 = v282 - v305;
              }

              else
              {
                v311 = v299 - v310;
              }

              v299 -= v311;
              v282 -= v311;
              if (v311)
              {
                memmove(v282, v299, v311);
              }

              if (v299 == v310)
              {
                break;
              }

              v312 = *--v281;
              v305 = v312;
              v282 = v312 + 4096;
            }

            while (1)
            {
              v305 = *v281;
              if ((*v281 + 4096) == v282)
              {
                v433 = v281[1];
                ++v281;
                v305 = v433;
                v282 = v433;
              }

LABEL_456:
              if (--v298 == v307)
              {
                break;
              }

              v434 = *v298;
              v435 = (*v298 + 4096);
              while (1)
              {
                if (v435 - v434 >= v282 - v305)
                {
                  v436 = v282 - v305;
                }

                else
                {
                  v436 = v435 - v434;
                }

                v435 -= v436;
                v282 -= v436;
                if (v436)
                {
                  memmove(v282, v435, v436);
                }

                if (v435 == v434)
                {
                  break;
                }

                v437 = *--v281;
                v305 = v437;
                v282 = v437 + 4096;
              }
            }

            v438 = (*v298 + 4096);
            if (v438 == v308)
            {
              goto LABEL_411;
            }

            v439 = *v281;
            while (1)
            {
              v440 = &v282[-v439];
              if (v438 - v308 >= v440)
              {
                v441 = v440;
              }

              else
              {
                v441 = v438 - v308;
              }

              v438 -= v441;
              v282 -= v441;
              if (v441)
              {
                memmove(v282, v438, v441);
              }

              if (v438 == v308)
              {
                break;
              }

              v442 = *--v281;
              v439 = v442;
              v282 = (v442 + 4096);
            }

            goto LABEL_283;
          }

          if (v308 != v299)
          {
            while (1)
            {
              if (v299 - v308 >= v282 - v305)
              {
                v314 = v282 - v305;
              }

              else
              {
                v314 = v299 - v308;
              }

              v299 -= v314;
              v282 -= v314;
              if (v314)
              {
                memmove(v282, v299, v314);
              }

              if (v299 == v308)
              {
                break;
              }

              v313 = *--v281;
              v305 = v313;
              v282 = v313 + 4096;
            }

LABEL_283:
            if ((*v281 + 4096) == v282)
            {
              v315 = v281[1];
              ++v281;
              v282 = v315;
            }
          }
        }

LABEL_411:
        if (v487 == v483)
        {
          if (__srca != v261)
          {
            v408 = *v281;
            v407 = v281 - 1;
            v406 = v408;
            while (1)
            {
              v409 = &v282[-v406];
              if (v261 - __srca >= v409)
              {
                v410 = v409;
              }

              else
              {
                v410 = v261 - __srca;
              }

              v261 -= v410;
              if (v410)
              {
                memmove(&v282[-v410], v261, v410);
              }

              if (v261 == __srca)
              {
                break;
              }

              v411 = *v407--;
              v406 = v411;
              v282 = (v411 + 4096);
            }
          }
        }

        else
        {
          v412 = *v487;
          if (*v487 != v261)
          {
            v413 = *v281;
            while (1)
            {
              v414 = &v282[-v413];
              if (v261 - v412 >= v414)
              {
                v415 = v414;
              }

              else
              {
                v415 = v261 - v412;
              }

              v261 -= v415;
              v282 -= v415;
              if (v415)
              {
                memmove(v282, v261, v415);
              }

              if (v261 == v412)
              {
                break;
              }

              v416 = *--v281;
              v413 = v416;
              v282 = (v416 + 4096);
            }

            if ((*v281 + 4096) == v282)
            {
              v417 = v281[1];
              ++v281;
              v282 = v417;
            }
          }

          v418 = v487 - 1;
          if (v487 - 1 != v483)
          {
            v419 = *v281;
            do
            {
              v420 = *v418;
              v421 = (*v418 + 4096);
              while (1)
              {
                v422 = (v282 - v419);
                if (v421 - v420 >= v422)
                {
                  v423 = v422;
                }

                else
                {
                  v423 = v421 - v420;
                }

                v421 -= v423;
                v282 -= v423;
                if (v423)
                {
                  memmove(v282, v421, v423);
                }

                if (v421 == v420)
                {
                  break;
                }

                v424 = *--v281;
                v419 = v424;
                v282 = v424 + 4096;
              }

              v419 = *v281;
              if ((*v281 + 4096) == v282)
              {
                v425 = v281[1];
                ++v281;
                v419 = v425;
                v282 = v425;
              }

              --v418;
            }

            while (v418 != v483);
          }

          v426 = (*v418 + 4096);
          if (v426 != __srca)
          {
            v429 = *v281;
            v428 = v281 - 1;
            v427 = v429;
            while (1)
            {
              v430 = &v282[-v427];
              if (v426 - __srca >= v430)
              {
                v431 = v430;
              }

              else
              {
                v431 = v426 - __srca;
              }

              v426 -= v431;
              if (v431)
              {
                memmove(&v282[-v431], v426, v431);
              }

              if (v426 == __srca)
              {
                break;
              }

              v432 = *v428--;
              v427 = v432;
              v282 = (v432 + 4096);
            }
          }
        }

        goto LABEL_410;
      }

      v292 = 4095 - v284;
      v291 = ~v292;
      v285 = &v483[-(v292 >> 12)];
    }

    v289 = (*v285 + (v291 & 0xFFF));
    goto LABEL_240;
  }

  v201 = v447;
LABEL_367:
  v499 = 0u;
  v500 = 0u;
  v497 = 0u;
  v498 = 0u;
  v472 = v201;
  v480 = [v472 countByEnumeratingWithState:&v497 objects:v532 count:16];
  if (v480)
  {
    LODWORD(v371) = 0;
    v476 = *v498;
    do
    {
      v484 = 0;
      v371 = v371;
      do
      {
        if (*v498 != v476)
        {
          objc_enumerationMutation(v472);
        }

        v372 = tileMaps[2].u64[1];
        if (v372)
        {
          if (v372 <= v371)
          {
            v373 = 1;
          }

          else if (*(*(tileMaps->i64[1] + (((tileMaps[2].i64[0] + v371) >> 9) & 0x7FFFFFFFFFFFF8)) + ((tileMaps[2].i64[0] + v371) & 0xFFF)))
          {
            v373 = 2;
          }

          else
          {
            v373 = 1;
          }
        }

        else
        {
          v373 = 2;
        }

        v374 = *(*(&v497 + 1) + 8 * v484);
        [v374 setNmsOutputScale:v373];
        featureID = [v374 featureID];
        v376 = *&v510[21 * featureID + 9] - *&v510[21 * featureID + 8];
        if ((v376 >> 4) < 1)
        {
          [v374 setPolygon:0];
        }

        else
        {
          v377 = (v376 >> 4) & 0x7FFFFFFF;
          std::vector<CGPoint>::vector[abi:ne200100](&__dst, v377);
          v378 = 0;
          v379 = v377;
          do
          {
            featureID2 = [v374 featureID];
            v381 = *(*&v510[21 * featureID2 + 8] + v378);
            featureID3 = [v374 featureID];
            v383 = *(*&v510[21 * featureID3 + 8] + v378 + 8);
            v384 = __dst.data + v378;
            *v384 = v381;
            v384[1] = v383;
            v378 += 16;
            --v379;
          }

          while (v379);
          v385 = [CRNormalizedPolyline alloc];
          v386 = [(CRNormalizedPolyline *)v385 initWithNormalizedPoints:__dst.data count:v377 size:a14, a15];
          [v374 setPolygon:v386];

          if (__dst.data)
          {
            __dst.height = __dst.data;
            operator delete(__dst.data);
          }
        }

        v495 = 0u;
        v496 = 0u;
        v493 = 0u;
        v494 = 0u;
        subFeatures = [v374 subFeatures];
        v387 = [subFeatures countByEnumeratingWithState:&v493 objects:v531 count:16];
        if (v387)
        {
          __srcb = *v494;
          do
          {
            for (j = 0; j != v387; ++j)
            {
              if (*v494 != __srcb)
              {
                objc_enumerationMutation(subFeatures);
              }

              v389 = *(*(&v493 + 1) + 8 * j);
              featureID4 = [v374 featureID];
              v391 = *&v510[21 * featureID4 + 9] - *&v510[21 * featureID4 + 8];
              if ((v391 >> 4) < 1)
              {
                [v389 setPolygon:0];
              }

              else
              {
                v392 = (v391 >> 4) & 0x7FFFFFFF;
                std::vector<CGPoint>::vector[abi:ne200100](&__dst, v392);
                v393 = 0;
                v394 = v392;
                do
                {
                  featureID5 = [v374 featureID];
                  v396 = *(*&v510[21 * featureID5 + 8] + v393);
                  featureID6 = [v374 featureID];
                  v398 = *(*&v510[21 * featureID6 + 8] + v393 + 8);
                  v399 = __dst.data + v393;
                  *v399 = v396;
                  v399[1] = v398;
                  v393 += 16;
                  --v394;
                }

                while (v394);
                v400 = [CRNormalizedPolyline alloc];
                v401 = [(CRNormalizedPolyline *)v400 initWithNormalizedPoints:__dst.data count:v392 size:a14, a15];
                [v389 setPolygon:v401];

                if (__dst.data)
                {
                  __dst.height = __dst.data;
                  operator delete(__dst.data);
                }
              }

              [v389 setNmsOutputScale:v373];
            }

            v387 = [subFeatures countByEnumeratingWithState:&v493 objects:v531 count:16];
          }

          while (v387);
        }

        ++v371;
        ++v484;
      }

      while (v484 != v480);
      v480 = [v472 countByEnumeratingWithState:&v497 objects:v532 count:16];
    }

    while (v480);
  }

  v402 = v511;
  v403 = v510;
  while (v402 != v403)
  {
    v402 -= 168;
    std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](&v510, v402);
  }

  *&v511 = v403;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::shrink_to_fit(&v510);
  if (sizeCopy && v450)
  {
    v404 = v450;
    *sizeCopy = v450;
  }

  __dst.data = &v510;
  self = v472;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](&__dst);
  std::deque<unsigned char>::~deque[abi:ne200100](&v512);

LABEL_407:

  return self;
}

- (void)computeClassificationType:(void *)type fromTextFeatures:(uint64_t *)features fineScaleMap:(uint64_t *)map fullTileMap:(void *)tileMap withScaleIds:
{
  v33 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  selfCopy = self;
  if (self)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v22 = typeCopy;
    obj = typeCopy;
    v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      LODWORD(v12) = 0;
      v26 = *v29;
      do
      {
        v27 = v11;
        v13 = 0;
        v12 = v12;
        do
        {
          if (*v29 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v14 = features[1];
          v15 = v14 == *features;
          v16 = v14 == *features || map[1] == *map;
          v17 = (map[1] == *map) ^ v16;
          if (!v15)
          {
            v17 = 0;
          }

          if (v17)
          {
            featuresCopy3 = map;
          }

          else
          {
            featuresCopy3 = features;
          }

          if (!v16)
          {
            featuresCopy3 = features;
            if (tileMap[5] > v12)
            {
              if (*(*(tileMap[1] + (((v12 + tileMap[4]) >> 9) & 0x7FFFFFFFFFFFF8)) + ((v12 + tileMap[4]) & 0xFFF)))
              {
                featuresCopy3 = map;
              }

              else
              {
                featuresCopy3 = features;
              }
            }
          }

          v19 = *(*(&v28 + 1) + 8 * v13);
          if (a2)
          {
            if (a2 == 1)
            {
              [CRNeuralTextDetectorV3 computeOrientationFromSingleTextFeature:featuresCopy3 map:?];
            }

            else
            {
              [CRNeuralTextDetectorV3 computeTextTypeFromSingleTextFeature:featuresCopy3 map:?];
            }
          }

          else
          {
            configuration = [selfCopy configuration];
            scriptRatioThresholds = [configuration scriptRatioThresholds];
            [CRNeuralTextDetectorV3 computeScriptCategoryFromSingleTextFeature:v19 map:featuresCopy3 scriptRatioThresholds:scriptRatioThresholds];
          }

          ++v12;
          ++v13;
        }

        while (v27 != v13);
        v11 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    typeCopy = v22;
  }
}

- (void)runFullTileInferenceOnImage:(id)image cachedSurface:(__IOSurface *)surface outputMaps:(void *)maps inputSize:(CGSize *)size outputSize:(CGSize *)outputSize modelContext:(id)context delegate:(id)delegate error:(id *)self0
{
  v55 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  contextCopy = context;
  delegateCopy = delegate;
  v16 = objc_autoreleasePoolPush();
  configuration = [(CRNeuralTextDetector *)self configuration];
  [configuration disableScriptDetection];

  configuration2 = [(CRNeuralTextDetector *)self configuration];
  [configuration2 disableTextTypeDetection];

  v52 = 0.0;
  [imageCopy size];
  v20 = v19;
  v22 = v21;
  configuration3 = [(CRNeuralTextDetector *)self configuration];
  [configuration3 tileSize];
  [CRNeuralTextDetectorV3 calculateTargetOutputSize:outputSize adjustedInputScale:&v52 paddedSize:&v51 imageSize:v20 maximumSize:v22 minimumSize:v24 inputLengthLimit:v25, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), 0.0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = imageCopy;
  }

  else
  {
    v26 = -[CRImage_PixelBuffer initWithCVPixelBuffer:]([CRImage_PixelBuffer alloc], "initWithCVPixelBuffer:", [imageCopy pixelBuffer]);
  }

  v27 = v26;
  v28 = [(CRImage_PixelBuffer *)v26 pixelBufferWithScale:size paddedToSize:1 adjustedToSize:1111970369 paddingMode:+[CRNeuralTextDetectorV3 format:"useE5Detector"]hardwareAcceleration:surface toSurface:v52, v51.f64[0], v51.f64[1]];
  if (v28)
  {
    if (+[CRNeuralTextDetectorV3 useE5Detector])
    {
      [contextCopy prebindInputImageSurface:*surface error:0];
    }

    *v45 = 0;
    v46 = v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__9;
    v49 = __Block_byref_object_dispose__10;
    v50 = 0;
    inferenceStats = [(CRNeuralTextDetector *)self inferenceStats];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __128__CRNeuralTextDetectorV3_runFullTileInferenceOnImage_cachedSurface_outputMaps_inputSize_outputSize_modelContext_delegate_error___block_invoke;
    v39[3] = &unk_1E7BC3450;
    v42 = v45;
    v40 = contextCopy;
    selfCopy = self;
    v43 = v28;
    errorCopy = error;
    [inferenceStats measureBlock:v39];

    CVPixelBufferRelease(v28);
    if (error)
    {
      if (*error || !*(v46 + 5))
      {
        v30 = CROSLogForCategory(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
        {
          localizedDescription = [*error localizedDescription];
          buf = 138412290;
          *buf_4 = localizedDescription;
          _os_log_impl(&dword_1B40D2000, v30, OS_LOG_TYPE_FAULT, "Model prediction error for full tile: %@", &buf, 0xCu);
        }

        goto LABEL_22;
      }
    }

    else if (!*(v46 + 5))
    {
      v30 = CROSLogForCategory(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1B40D2000, v30, OS_LOG_TYPE_FAULT, "Model prediction error for full tile with error == nullptr.", &buf, 2u);
      }

      goto LABEL_22;
    }

    if (![(CRNeuralTextDetector *)self shouldCancel])
    {
      region_score = [*(v46 + 5) region_score];
      [(CRNeuralTextDetectorV3 *)&buf createImageMap:region_score targetSize:outputSize->width, outputSize->height];
    }

    if (!error)
    {
      goto LABEL_24;
    }

    v35 = [CRImageReader errorWithErrorCode:-3];
    v30 = *error;
    *error = v35;
LABEL_22:

LABEL_24:
    _Block_object_dispose(v45, 8);

    goto LABEL_25;
  }

  v32 = CROSLogForCategory(0);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
  {
    *v45 = 0;
    _os_log_impl(&dword_1B40D2000, v32, OS_LOG_TYPE_FAULT, "NULL when creating fullTilePixelBuffer.", v45, 2u);
  }

  if (error)
  {
    v33 = [CRImageReader errorWithErrorCode:-5];
    v34 = *error;
    *error = v33;
  }

LABEL_25:

  objc_autoreleasePoolPop(v16);
}

void __128__CRNeuralTextDetectorV3_runFullTileInferenceOnImage_cachedSurface_outputMaps_inputSize_outputSize_modelContext_delegate_error___block_invoke(uint64_t a1)
{
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v2 = CRSignpostLog_signPostOSLog;
  v3 = os_signpost_id_generate(v2);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v4 = CRSignpostLog_signPostOSLog;
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "OCRDetectorInferenceTime", "", buf, 2u);
  }

  if (+[CRNeuralTextDetectorV3 useE5Detector])
  {
    v6 = *(a1 + 32);
    v19 = 0;
    v7 = [v6 predictionFromPreboundInputsWithError:&v19];
    v8 = v19;
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v7;
  }

  else
  {
    v10 = [*(a1 + 40) modelEIR];
    v11 = *(a1 + 56);
    v18 = 0;
    v12 = [v10 predictionFromImage:v11 error:&v18];
    v8 = v18;
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  if (v8)
  {
    v15 = *(a1 + 64);
    if (v15)
    {
      objc_storeStrong(v15, v8);
    }
  }

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v16 = CRSignpostLog_signPostOSLog;
  v17 = v16;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v17, OS_SIGNPOST_INTERVAL_END, v3, "OCRDetectorInferenceTime", "", buf, 2u);
  }
}

- (void)addIntermediateResults:(uint64_t)results idxLog:(uint64_t)log adjustedSize:(uint64_t)size quadFeatures:(double)features nmsOutputScale:(double)scale
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = a2;
  pyramidScaleSize = [v12 pyramidScaleSize];
  v14 = [MEMORY[0x1E696B098] valueWithSize:{features, scale}];
  [pyramidScaleSize insertObject:v14 atIndex:results];

  pyramidScaleName = [v12 pyramidScaleName];
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  [pyramidScaleName insertObject:v16 atIndex:results];

  pyramidPreIntraScaleNMSTextFeatures = [v12 pyramidPreIntraScaleNMSTextFeatures];
  v18 = [pyramidPreIntraScaleNMSTextFeatures objectAtIndexedSubscript:results];
  v19 = [objc_opt_class() textFeaturesFromPolygons:log withScale:&v20 withNMSOutputScale:0];
  [v18 addObjectsFromArray:v19];
}

- (void)updateNMS:(uint64_t *)s andQuadFeatures:(uint64_t *)features inMaps:(void *)maps tileRects:(uint64_t)rects intermediateResult:(int)result isFullTile:(float)tile isHorizontal:adjustedSize:randomPrefix:
{
  rectsCopy = rects;
  a2;
  mapsCopy = maps;
  v14 = *features;
  if (result)
  {
    v15 = features[4];
  }

  else
  {
    v15 = features[5];
  }

  if (result)
  {
    v16 = features[5];
  }

  else
  {
    v16 = features[4];
  }

  configuration = [self configuration];
  [configuration scoreMapScaleFactor];

  v18 = malloc_type_calloc(*(v14 + 8) * *(v14 + 16), 4uLL, 0x100004052888210uLL);
  v19 = *(v14 + 8);
  v20 = *(v14 + 16);
  v31[0] = v18;
  v31[1] = v19;
  v31[2] = v20;
  v31[3] = (4 * v20);
  if (result)
  {
    v21 = @"hor";
  }

  else
  {
    v21 = @"ver";
  }

  mapsCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f_%@", tile, v21, mapsCopy];
  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v22 = CRSignpostLog_signPostOSLog;
  v23 = os_signpost_id_generate(v22);

  if (CRSignpostLog_onceToken != -1)
  {
    dispatch_once(&CRSignpostLog_onceToken, &__block_literal_global_12);
  }

  v24 = CRSignpostLog_signPostOSLog;
  v25 = v24;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B40D2000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "OCRDetectorPostprocessingExtractTextBoxes", "", buf, 2u);
  }

  [self configuration];
  extractPolygons = [objc_claimAutoreleasedReturnValue() extractPolygons];
  CRDetectorPostProcessV3::extractTextBoxes(v14, v15, v16, s, v31, rectsCopy, extractPolygons, mapsCopy, result);
}

- (void)runNMSForDirection:(void *)direction adjustedSize:(uint64_t *)size fullTileMaps:(uint64_t *)maps adjustedFullTileSize:(void *)tileSize targetSize:(void *)targetSize targetSizeFullTile:(void *)tile intermediateResults:(int)results withScaleIds:(id *)ids sourceImageSize:(double)imageSize tileRects:(double)direction0 isHorizontal:(double)direction1 resultTextFeatures:(double)direction2 quadFeatures:(unint64_t *)direction3 isFineScaleVerticalLinkActive:(unsigned __int8)direction4 isFullTileVerticalLinkActive:(unsigned __int8)direction5 idxLog:(uint64_t *)direction6
{
  v81 = *MEMORY[0x1E69E9840];
  tileSizeCopy = tileSize;
  tileCopy = tile;
  v52 = tileCopy;
  v54 = 0;
  v23 = *maps != 0;
  if (*size)
  {
    activeCopy = active;
  }

  else
  {
    activeCopy = 0;
  }

  if (*maps)
  {
    linkActiveCopy = linkActive;
  }

  else
  {
    linkActiveCopy = 0;
  }

  if (results)
  {
    v26 = *size != 0;
  }

  else
  {
    v26 = activeCopy;
  }

  v67 = 0;
  v68 = 0;
  if (results)
  {
    linkActiveCopy = v23;
  }

  v69 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  v56 = linkActiveCopy;
  v59 = linkActiveCopy & v26;
  if ((linkActiveCopy & v26) == 1)
  {
    tileCopy = [[CRNMS alloc] initForRevision:3, tileCopy, tileSizeCopy, 0];
    v54 = tileCopy;
  }

  CRLogger = CRLogger::getCRLogger(tileCopy);
  if (*CRLogger == 1 && (CRLogger[8] & 1) != 0)
  {
    v28 = rand();
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  if (v26)
  {
    [CRNeuralTextDetectorV3 updateNMS:direction andQuadFeatures:v54 inMaps:&v64 tileRects:size intermediateResult:0 isFullTile:0 isHorizontal:results adjustedSize:v29 randomPrefix:?];
  }

  if (v56)
  {
    [CRNeuralTextDetectorV3 updateNMS:direction andQuadFeatures:v54 inMaps:&v67 tileRects:maps intermediateResult:v52 isFullTile:1 isHorizontal:results adjustedSize:v29 randomPrefix:?];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = *ids;
  v30 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (v30)
  {
    v31 = 0;
    v55 = 0;
    v32 = *v61;
    do
    {
      v33 = 0;
      v34 = v55;
      v55 += v30;
      do
      {
        if (*v61 != v32)
        {
          objc_enumerationMutation(obj);
        }

        if (v59 && ((v35 = targetSize[5]) == 0 || v35 > v34 && *(*(targetSize[1] + (((v34 + targetSize[4]) >> 9) & 0x7FFFFFFFFFFFF8)) + ((v34 + targetSize[4]) & 0xFFF))))
        {
          v36 = 1;
          v37 = 2;
        }

        else
        {
          v36 = 0;
          v37 = 1;
        }

        v38 = *(*(&v60 + 1) + 8 * v33);
        [v38 setNmsOutputScale:{v37, v52}];
        featureID = [v38 featureID];
        if (v36)
        {
          v40 = v67;
        }

        else
        {
          v40 = v64;
        }

        v41 = &v40[168 * featureID];
        v42 = *v41;
        v43 = *(v41 + 1);
        v44 = *(v41 + 3);
        v71[2] = *(v41 + 2);
        v71[3] = v44;
        v71[0] = v42;
        v71[1] = v43;
        v73 = 0;
        v74 = 0;
        __p = 0;
        std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint*,CGPoint*>(&__p, *(v41 + 8), *(v41 + 9), (*(v41 + 9) - *(v41 + 8)) >> 4);
        v45 = *(v41 + 88);
        v46 = *(v41 + 104);
        v47 = *(v41 + 120);
        v78 = *(v41 + 17);
        v77 = v47;
        v76 = v46;
        v75 = v45;
        memset(v79, 0, 24);
        std::vector<CRDetectorUtils::CRTextDetectorQuad>::__init_with_size[abi:ne200100]<CRDetectorUtils::CRTextDetectorQuad*,CRDetectorUtils::CRTextDetectorQuad*>(v79, *(v41 + 18), *(v41 + 19), 0x8E38E38E38E38E39 * ((*(v41 + 19) - *(v41 + 18)) >> 4));
        [v38 setFeatureID:v31];
        HIDWORD(v78) = v31;
        std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::push_back[abi:ne200100](quadFeatures, v71);
        v70 = v79;
        std::vector<CRDetectorUtils::CRTextDetectorQuad>::__destroy_vector::operator()[abi:ne200100](&v70);
        if (__p)
        {
          v73 = __p;
          operator delete(__p);
        }

        ++v33;
        ++v34;
        v31 = (v31 + 1);
      }

      while (v30 != v33);
      v30 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
    }

    while (v30);
  }

  v48 = v67;
  for (i = v68; i != v48; std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](&v67, i))
  {
    i -= 168;
  }

  v68 = v48;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::shrink_to_fit(&v67);
  v50 = v64;
  for (j = v65; j != v50; std::allocator<CRDetectorUtils::CRTextDetectorQuadFeature>::destroy[abi:ne200100](&v64, j))
  {
    j -= 168;
  }

  v65 = v50;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::shrink_to_fit(&v64);

  *&v71[0] = &v64;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](v71);
  *&v71[0] = &v67;
  std::vector<CRDetectorUtils::CRTextDetectorQuadFeature>::__destroy_vector::operator()[abi:ne200100](v71);
}

- (void)getBorderPoints:(float64x2_t *)points sourceImageSize:(char)size outP1:(float64_t)p1 outP2:(float64_t)p2 isHorizontal:
{
  *&v40 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  [selfCopy topLeft];
  *&v33 = v10;
  *(&v33 + 1) = v11;
  [selfCopy topRight];
  v34 = v12;
  v35 = v13;
  [selfCopy bottomRight];
  v36 = v14;
  v37 = v15;
  [selfCopy bottomLeft];
  v38 = v16;
  v39 = v17;
  v31 = 0;
  v32 = 0;
  __p = 0;
  std::vector<CGPoint>::__init_with_size[abi:ne200100]<CGPoint const*,CGPoint const*>(&__p, &v33, &v40, 4uLL);
  v19 = 126 - 2 * __clz((v31 - __p) >> 4);
  LOBYTE(v33) = size;
  if (v31 == __p)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,false>(__p, v31, &v33, v20, 1, v18);
  v21 = __p;
  v22.f64[0] = p1;
  v22.f64[1] = p2;
  __asm { FMOV            V1.2D, #0.5 }

  *a2 = vmulq_f64(vmulq_f64(v22, vaddq_f64(*__p, *(__p + 1))), _Q1);
  *points = vmulq_f64(vmulq_f64(v22, vaddq_f64(v21[2], v21[3])), _Q1);
  v31 = v21;
  operator delete(v21);
}

+ (CGSize)scaledImageSizeForConfiguration:(id)configuration imageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  configurationCopy = configuration;
  [configurationCopy maximumInputSize];
  v9 = v8;
  v11 = v10;
  [configurationCopy tileSize];
  v13 = v12;
  v15 = v14;
  [configurationCopy inputLengthLimit];
  height = [(CRNeuralTextDetectorV3 *)self scaledImageSizeForMaxSize:v9 minSize:v11 inputLengthLimit:v13 imageSize:v15 scale:v16, width, height];
  v19 = v18;

  v20 = height;
  v21 = v19;
  result.height = v21;
  result.width = v20;
  return result;
}

+ (BOOL)computeClassCount:(void *)count classProbabiity:(void *)probabiity fromSingleTextFeature:(id)feature map:(const void *)map backgroundClass:(int)class
{
  v100[8] = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  countCopy = count;
  countCopy2 = count;
  v12 = *count;
  v11 = countCopy2[1];
  v14 = **map;
  v16 = *(v14 + 8);
  v15 = *(v14 + 16);
  [featureCopy topLeft];
  v18 = v17;
  [featureCopy topLeft];
  v100[0] = v18 * v15;
  v100[1] = v19 * v16;
  [featureCopy topRight];
  v21 = v20;
  [featureCopy topRight];
  v100[2] = v21 * v15;
  v100[3] = v22 * v16;
  [featureCopy bottomRight];
  v24 = v23;
  [featureCopy bottomRight];
  v100[4] = v24 * v15;
  v100[5] = v25 * v16;
  [featureCopy bottomLeft];
  v27 = v26;
  [featureCopy bottomLeft];
  v100[6] = v27 * v15;
  v100[7] = v28 * v16;
  CenterPoint = CRDetectorUtils::makeCenterPoint(v100, v29);
  v98.x = CenterPoint;
  v98.y = v31;
  v95 = v31;
  [featureCopy baselineAngle];
  v32 = v11 - v12;
  CRDetectorUtils::rotatePolygon(v100, &v98, &v99, v33, v34);
  CRDetectorUtils::convertPointToRect(&v99, v35);
  v40 = v39;
  v41 = (v32 >> 3);
  v91 = v16;
  if (v32 << 29)
  {
    if (!(v41 >> 61))
    {
      operator new();
    }

    std::vector<unsigned long>::__throw_length_error[abi:ne200100]();
  }

  v42 = v32 >> 3;
  v43 = (v32 >> 3) & 0x7FFFFFFF;
  if ((v32 >> 3) >= 1)
  {
    v44 = *map;
    v45 = 0;
    v46 = (v32 >> 3) & 0x7FFFFFFF;
    do
    {
      v47 = *v44++;
      *v45++ = *v47;
      --v46;
    }

    while (v46);
  }

  v48 = v36;
  v49 = v36;
  v93 = v36 + v38;
  if (v36 + v38 <= v49)
  {
    goto LABEL_42;
  }

  v50 = 0;
  v51 = v40;
  v52 = v40 + v37;
  v90 = v51;
  v53 = v51;
  v54 = (v91 - 1);
  v92 = v51;
  do
  {
    if (v52 > v53)
    {
      v55 = v49 - v95;
      v56 = -(v49 - v95);
      v57 = v90;
      do
      {
        [featureCopy baselineAngle];
        v59 = __sincosf_stret(v58);
        v60 = -v59.__sinval;
        v61 = CenterPoint + v56 * v60 + (v53 - CenterPoint) * v59.__cosval;
        v62 = v95 + v55 * v59.__cosval + (v53 - CenterPoint) * v60;
        v63 = fmax(v61, 0.0);
        if (v63 >= (v15 - 1))
        {
          v64 = (v15 - 1);
        }

        else
        {
          v64 = v63;
        }

        v65 = fmax(v62, 0.0);
        if (v65 >= v54)
        {
          v66 = v54;
        }

        else
        {
          v66 = v65;
        }

        std::vector<double>::vector[abi:ne200100](&__p, v41);
        v67 = v15 * v66 + v64;
        v68 = *probabiity;
        v69 = __p;
        v70 = *(probabiity + 1) - *probabiity;
        if (v70)
        {
          v71 = v70 >> 3;
          if (v71 <= 1)
          {
            v71 = 1;
          }

          v72 = 0;
          v73 = __p;
          do
          {
            v74 = *v72++;
            *v73++ = *(v74 + 4 * v67);
            --v71;
          }

          while (v71);
        }

        v75 = v69 + 1;
        v76 = v69 == v97 || v75 == v97;
        v77 = v69;
        if (!v76)
        {
          v78 = *v69;
          v77 = v69;
          v79 = v69 + 1;
          do
          {
            v80 = *v79++;
            v81 = v80;
            if (v78 < v80)
            {
              v78 = v81;
              v77 = v75;
            }

            v75 = v79;
          }

          while (v79 != v97);
        }

        v82 = v77 - v69;
        if (((v77 - v69) & 0x7FFFFFFF8) != 0)
        {
          v83 = 0;
          v84 = v43;
          if (v42 >= 1)
          {
            do
            {
              v85 = *v83++;
              *v68 = *v68 + *(v85 + 4 * v67);
              ++v68;
              --v84;
            }

            while (v84);
          }

          ++*(*countCopy + (v82 << 29 >> 29));
          ++v50;
        }

        if (v69)
        {
          v97 = v69;
          operator delete(v69);
        }

        v53 = ++v57;
      }

      while (v52 > v57);
    }

    v49 = ++v48;
    v53 = v92;
  }

  while (v93 > v48);
  if (v50 <= 0)
  {
LABEL_42:
    v88 = 0;
  }

  else
  {
    v86 = *probabiity;
    v87 = *(probabiity + 1);
    if (*probabiity != v87)
    {
      do
      {
        *v86 = *v86 / v50;
        ++v86;
      }

      while (v86 != v87);
    }

    v88 = 1;
  }

  return v88;
}

- (double)getBorderPoints:(char *)points sourceImageSize:(uint64_t)size outP1:(char)p1 outP2:(__n128)p2 isHorizontal:
{
LABEL_1:
  v10 = a2 - 1;
  v193 = a2 - 3;
  v194 = a2 - 2;
  v196 = &a2[-1].n128_u64[1];
  selfCopy = self;
  while (1)
  {
    self = selfCopy;
    v12 = a2 - selfCopy;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return p2.n128_f64[0];
      }

      if (v12 == 2)
      {
        v118 = 1;
        if (*points)
        {
          v118 = 0;
        }

        v119 = (a2 - 8);
        if (*points)
        {
          v119 = a2 - 1;
        }

        p2.n128_u64[0] = v119->n128_u64[0];
        if (v119->n128_f64[0] >= selfCopy->n128_f64[v118])
        {
          return p2.n128_f64[0];
        }

LABEL_239:
        v217 = *selfCopy;
        *selfCopy = *v10;
        p2 = v217;
LABEL_240:
        *v10 = p2;
        return p2.n128_f64[0];
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      p2.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,0>(selfCopy, selfCopy + 1, selfCopy + 2, a2 - 1, points, p2).n128_u64[0];
      return p2.n128_f64[0];
    }

    if (v12 == 5)
    {
      v104 = selfCopy + 1;
      v105 = selfCopy + 2;
      v106 = selfCopy + 3;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,0>(selfCopy, selfCopy + 1, selfCopy + 2, selfCopy + 3, points, p2);
      v107 = 1;
      if (*points)
      {
        v107 = 0;
      }

      v108 = v196;
      if (*points)
      {
        v108 = v10;
      }

      p2.n128_u64[0] = *v108;
      if (*v108 < v106->n128_f64[v107])
      {
        v109 = *v106;
        *v106 = *v10;
        *v10 = v109;
        n128_u64 = &selfCopy[3].n128_u64[1];
        v111 = 1;
        if (*points)
        {
          v111 = 0;
          n128_u64 = selfCopy[3].n128_u64;
        }

        p2.n128_u64[0] = *n128_u64;
        if (*n128_u64 < v105->n128_f64[v111])
        {
          v112 = *v105;
          *v105 = *v106;
          *v106 = v112;
          v113 = &selfCopy[2].n128_u64[1];
          v114 = 1;
          if (*points)
          {
            v114 = 0;
            v113 = selfCopy[2].n128_u64;
          }

          p2.n128_u64[0] = *v113;
          if (*v113 < v104->n128_f64[v114])
          {
            v115 = *v104;
            *v104 = *v105;
            *v105 = v115;
            v116 = &selfCopy[1].n128_u64[1];
            v117 = 1;
            if (*points)
            {
              v117 = 0;
              v116 = selfCopy[1].n128_u64;
            }

            p2.n128_u64[0] = *v116;
            if (*v116 < selfCopy->n128_f64[v117])
            {
              v216 = *selfCopy;
              *selfCopy = *v104;
              p2.n128_u64[0] = v216.n128_u64[0];
              *v104 = v216;
            }
          }
        }
      }

      return p2.n128_f64[0];
    }

LABEL_9:
    if (v12 <= 23)
    {
      v126 = selfCopy + 1;
      v128 = selfCopy == a2 || v126 == a2;
      if (p1)
      {
        if (!v128)
        {
          v129 = 0;
          v130 = selfCopy;
          do
          {
            v131 = v130[1].n128_f64[0];
            p2.n128_u64[0] = v130[1].n128_u64[1];
            if (*points)
            {
              v132 = 0;
            }

            else
            {
              v132 = 1;
            }

            v133 = v130->n128_f64[v132];
            v130 = v126;
            if (*points)
            {
              v134 = v131;
            }

            else
            {
              v134 = p2.n128_f64[0];
            }

            if (v134 < v133)
            {
              v135 = v129;
              while (1)
              {
                *(selfCopy + v135 + 16) = *(selfCopy + v135);
                if (!v135)
                {
                  break;
                }

                if (*points)
                {
                  v136 = 0;
                }

                else
                {
                  v136 = 8;
                }

                if (*points)
                {
                  v137 = v131;
                }

                else
                {
                  v137 = p2.n128_f64[0];
                }

                v138 = *(selfCopy[-1].n128_f64 + v135 + v136);
                v135 -= 16;
                if (v137 >= v138)
                {
                  v139 = &selfCopy[1] + v135;
                  goto LABEL_271;
                }
              }

              v139 = selfCopy;
LABEL_271:
              *v139 = v131;
              *(v139 + 8) = p2.n128_u64[0];
            }

            v126 = v130 + 1;
            v129 += 16;
          }

          while (&v130[1] != a2);
        }
      }

      else if (!v128)
      {
        v180 = *points;
        v181 = selfCopy - 1;
        do
        {
          v182 = self[1].n128_f64[0];
          p2.n128_u64[0] = self[1].n128_u64[1];
          v183 = (v180 & 1) == 0;
          v184 = self->n128_f64[v183];
          self = v126;
          if (v180)
          {
            v185 = v182;
          }

          else
          {
            v185 = p2.n128_f64[0];
          }

          if (v185 < v184)
          {
            v186 = v181;
            do
            {
              v186[2] = v186[1];
              v180 = *points;
              if (*points)
              {
                v187 = 0;
              }

              else
              {
                v187 = 1;
              }

              if (*points)
              {
                v188 = v182;
              }

              else
              {
                v188 = p2.n128_f64[0];
              }

              v189 = v186->n128_f64[v187];
              --v186;
            }

            while (v188 < v189);
            v186[2].n128_f64[0] = v182;
            v186[2].n128_u64[1] = p2.n128_u64[0];
          }

          v126 = self + 1;
          ++v181;
        }

        while (&self[1] != a2);
      }

      return p2.n128_f64[0];
    }

    if (!size)
    {
      if (selfCopy != a2)
      {
        v140 = (v12 - 2) >> 1;
        v141 = v140;
        do
        {
          v142 = v141;
          if (v140 >= v141)
          {
            v143 = (2 * v141) | 1;
            v144 = &selfCopy[v143];
            if (2 * v142 + 2 >= v12)
            {
              v146 = (*points & 1) == 0;
            }

            else
            {
              n128_f64 = &v144->n128_f64[1];
              v146 = (*points & 1) == 0;
              if (*points)
              {
                n128_f64 = selfCopy[v143].n128_f64;
              }

              if (*n128_f64 < v144[1].n128_f64[v146])
              {
                ++v144;
                v143 = 2 * v142 + 2;
              }
            }

            v147 = &selfCopy[v142];
            if (*points)
            {
              v148 = v144;
            }

            else
            {
              v148 = &v144->n128_f64[1];
            }

            if (*v148 >= v147->n128_f64[v146])
            {
              v149 = *v147;
              v150 = v147->n128_f64[1];
              do
              {
                v151 = v147;
                v147 = v144;
                *v151 = *v144;
                if (v140 < v143)
                {
                  break;
                }

                v152 = 2 * v143;
                v143 = (2 * v143) | 1;
                v144 = &selfCopy[v143];
                if (v152 + 2 < v12)
                {
                  v153 = &v144->n128_f64[1];
                  v154 = (*points & 1) == 0;
                  if (*points)
                  {
                    v153 = selfCopy[v143].n128_f64;
                  }

                  if (*v153 < v144[1].n128_f64[v154])
                  {
                    ++v144;
                    v143 = v152 + 2;
                  }
                }

                v155 = (*points & 1) != 0 ? v144 : &v144->n128_i8[8];
                v156 = (*points & 1) != 0 ? v149.n128_f64[0] : v150;
              }

              while (*v155 >= v156);
              *v147 = v149;
            }
          }

          v141 = v142 - 1;
        }

        while (v142);
        do
        {
          v157 = 0;
          v218 = *selfCopy;
          v158 = selfCopy;
          do
          {
            v159 = v158;
            v160 = &v158[v157];
            v158 = v160 + 1;
            v161 = 2 * v157;
            v157 = (2 * v157) | 1;
            v162 = v161 + 2;
            if (v162 < v12)
            {
              v163 = v160 + 2;
              v164 = &v160[1].n128_f64[1];
              if (*points)
              {
                v165 = 0;
              }

              else
              {
                v165 = 1;
              }

              if (*points)
              {
                v164 = v158;
              }

              if (*v164 < v163->n128_f64[v165])
              {
                v158 = v163;
                v157 = v162;
              }
            }

            *v159 = *v158;
          }

          while (v157 <= ((v12 - 2) >> 1));
          if (v158 == --a2)
          {
            p2.n128_u64[0] = v218.n128_u64[0];
            *v158 = v218;
          }

          else
          {
            *v158 = *a2;
            p2.n128_u64[0] = v218.n128_u64[0];
            *a2 = v218;
            v166 = (v158 - selfCopy + 16) >> 4;
            v167 = v166 < 2;
            v168 = v166 - 2;
            if (!v167)
            {
              v169 = v168 >> 1;
              v170 = &selfCopy[v169];
              v171 = &v170->n128_u64[1];
              if (*points)
              {
                v172 = 0;
              }

              else
              {
                v172 = 1;
              }

              if (*points)
              {
                v171 = selfCopy[v169].n128_u64;
              }

              p2.n128_u64[0] = *v171;
              if (*v171 < v158->n128_f64[v172])
              {
                p2.n128_u64[0] = v158->n128_u64[0];
                v173 = v158->n128_f64[1];
                do
                {
                  v174 = v158;
                  v158 = v170;
                  *v174 = *v170;
                  if (!v169)
                  {
                    break;
                  }

                  v169 = (v169 - 1) >> 1;
                  v170 = &selfCopy[v169];
                  v175 = *points ? &selfCopy[v169] : &v170->n128_i8[8];
                  v176 = *points ? p2.n128_f64[0] : v173;
                }

                while (*v175 < v176);
                v158->n128_u64[0] = p2.n128_u64[0];
                v158->n128_f64[1] = v173;
              }
            }
          }

          v167 = v12-- <= 2;
        }

        while (!v167);
      }

      return p2.n128_f64[0];
    }

    v13 = &selfCopy[v12 >> 1];
    if (*points)
    {
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = (a2 - 8);
    if (*points)
    {
      v15 = a2 - 1;
    }

    v16 = v15->n128_f64[0];
    if (v12 >= 0x81)
    {
      v17 = &v13->n128_f64[1];
      if (*points)
      {
        v17 = v13;
      }

      v18 = v13->n128_f64[v14];
      if (*v17 >= selfCopy->n128_f64[v14])
      {
        if (v16 < v18)
        {
          v199 = *v13;
          *v13 = *v10;
          *v10 = v199;
          v21 = &v13->n128_f64[1];
          if (*points)
          {
            v22 = 0;
          }

          else
          {
            v22 = 1;
          }

          if (*points)
          {
            v21 = v13;
          }

          if (*v21 < selfCopy->n128_f64[v22])
          {
            v200 = *selfCopy;
            *selfCopy = *v13;
            *v13 = v200;
          }
        }
      }

      else
      {
        if (v16 < v18)
        {
          v197 = *selfCopy;
          *selfCopy = *v10;
          goto LABEL_50;
        }

        v203 = *selfCopy;
        *selfCopy = *v13;
        *v13 = v203;
        if (*points)
        {
          v25 = 0;
        }

        else
        {
          v25 = 1;
        }

        v26 = (a2 - 8);
        if (*points)
        {
          v26 = a2 - 1;
        }

        if (v26->n128_f64[0] < v13->n128_f64[v25])
        {
          v197 = *v13;
          *v13 = *v10;
LABEL_50:
          *v10 = v197;
        }
      }

      v27 = selfCopy + 1;
      v28 = v13 - 1;
      v29 = &v13[-1].n128_f64[1];
      v30 = (a2 - 24);
      if (*points)
      {
        v31 = 0;
      }

      else
      {
        v31 = 1;
      }

      if (*points)
      {
        v29 = v13[-1].n128_f64;
      }

      v32 = *v29;
      v33 = a2 - 2;
      if (!*points)
      {
        v33 = (a2 - 24);
      }

      v34 = v33->n128_f64[0];
      v35 = v28->n128_f64[v31];
      if (v32 >= v27->n128_f64[v31])
      {
        if (v34 < v35)
        {
          v204 = *v28;
          *v28 = *v194;
          *v194 = v204;
          v37 = &v13[-1].n128_f64[1];
          if (*points)
          {
            v38 = 0;
          }

          else
          {
            v38 = 1;
          }

          if (*points)
          {
            v37 = v13[-1].n128_f64;
          }

          if (*v37 < v27->n128_f64[v38])
          {
            v39 = *v27;
            *v27 = *v28;
            *v28 = v39;
          }
        }
      }

      else if (v34 >= v35)
      {
        v42 = *v27;
        *v27 = *v28;
        *v28 = v42;
        if (*points)
        {
          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        if (*points)
        {
          v30 = a2 - 2;
        }

        if (v30->n128_f64[0] < v28->n128_f64[v43])
        {
          v206 = *v28;
          *v28 = *v194;
          *v194 = v206;
        }
      }

      else
      {
        v36 = *v27;
        *v27 = *v194;
        *v194 = v36;
      }

      v44 = selfCopy + 2;
      v45 = v13 + 1;
      v46 = &v13[1].n128_f64[1];
      v47 = (a2 - 40);
      if (*points)
      {
        v48 = 0;
      }

      else
      {
        v48 = 1;
      }

      if (*points)
      {
        v46 = v13[1].n128_f64;
      }

      v49 = *v46;
      v50 = a2 - 3;
      if (!*points)
      {
        v50 = (a2 - 40);
      }

      v51 = v50->n128_f64[0];
      v52 = v45->n128_f64[v48];
      if (v49 >= v44->n128_f64[v48])
      {
        if (v51 < v52)
        {
          v207 = *v45;
          *v45 = *v193;
          *v193 = v207;
          v54 = &v13[1].n128_f64[1];
          if (*points)
          {
            v55 = 0;
          }

          else
          {
            v55 = 1;
          }

          if (*points)
          {
            v54 = v13[1].n128_f64;
          }

          if (*v54 < v44->n128_f64[v55])
          {
            v56 = *v44;
            *v44 = *v45;
            *v45 = v56;
          }
        }
      }

      else if (v51 >= v52)
      {
        v57 = *v44;
        *v44 = *v45;
        *v45 = v57;
        if (*points)
        {
          v58 = 0;
        }

        else
        {
          v58 = 1;
        }

        if (*points)
        {
          v47 = a2 - 3;
        }

        if (v47->n128_f64[0] < v45->n128_f64[v58])
        {
          v208 = *v45;
          *v45 = *v193;
          *v193 = v208;
        }
      }

      else
      {
        v53 = *v44;
        *v44 = *v193;
        *v193 = v53;
      }

      v59 = &v13->n128_f64[1];
      if (*points)
      {
        v60 = 0;
      }

      else
      {
        v60 = 1;
      }

      if (*points)
      {
        v59 = v13;
      }

      v61 = *v59;
      v62 = &v13[1].n128_f64[1];
      if (*points)
      {
        v62 = v13[1].n128_f64;
      }

      v63 = *v62;
      v64 = v13->n128_f64[v60];
      if (v61 >= v28->n128_f64[v60])
      {
        if (v63 < v64)
        {
          v210 = *v13;
          *v13 = *v45;
          *v45 = v210;
          v65 = &v13->n128_f64[1];
          if (*points)
          {
            v66 = 0;
          }

          else
          {
            v66 = 1;
          }

          if (*points)
          {
            v65 = v13;
          }

          if (*v65 < v28->n128_f64[v66])
          {
            v211 = *v28;
            *v28 = *v13;
            *v13 = v211;
          }
        }
      }

      else
      {
        if (v63 < v64)
        {
          v209 = *v28;
          *v28 = *v45;
          goto LABEL_134;
        }

        v212 = *v28;
        *v28 = *v13;
        *v13 = v212;
        v67 = &v13[1].n128_f64[1];
        if (*points)
        {
          v68 = 0;
        }

        else
        {
          v68 = 1;
        }

        if (*points)
        {
          v67 = v13[1].n128_f64;
        }

        if (*v67 < v13->n128_f64[v68])
        {
          v209 = *v13;
          *v13 = *v45;
LABEL_134:
          *v45 = v209;
        }
      }

      v213 = *selfCopy;
      *selfCopy = *v13;
      p2.n128_u64[1] = v213.n128_u64[1];
      *v13 = v213;
      goto LABEL_136;
    }

    v19 = &selfCopy->n128_f64[1];
    if (*points)
    {
      v19 = selfCopy;
    }

    v20 = selfCopy->n128_f64[v14];
    if (*v19 >= v13->n128_f64[v14])
    {
      if (v16 < v20)
      {
        v201 = *selfCopy;
        *selfCopy = *v10;
        p2.n128_u64[1] = v201.n128_u64[1];
        *v10 = v201;
        v23 = &selfCopy->n128_f64[1];
        if (*points)
        {
          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        if (*points)
        {
          v23 = selfCopy;
        }

        if (*v23 < v13->n128_f64[v24])
        {
          v202 = *v13;
          *v13 = *selfCopy;
          p2.n128_u64[1] = v202.n128_u64[1];
          *selfCopy = v202;
        }
      }
    }

    else
    {
      if (v16 < v20)
      {
        v198 = *v13;
        *v13 = *v10;
LABEL_76:
        p2.n128_u64[1] = v198.n128_u64[1];
        *v10 = v198;
        goto LABEL_136;
      }

      v205 = *v13;
      *v13 = *selfCopy;
      p2.n128_u64[1] = v205.n128_u64[1];
      *selfCopy = v205;
      if (*points)
      {
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }

      v41 = (a2 - 8);
      if (*points)
      {
        v41 = a2 - 1;
      }

      if (v41->n128_f64[0] < selfCopy->n128_f64[v40])
      {
        v198 = *selfCopy;
        *selfCopy = *v10;
        goto LABEL_76;
      }
    }

LABEL_136:
    --size;
    if (p1)
    {
      p2.n128_u64[0] = selfCopy->n128_u64[0];
      goto LABEL_144;
    }

    v69 = selfCopy[-1].n128_f64;
    v70 = (*points & 1) == 0;
    if ((*points & 1) == 0)
    {
      v69 = &selfCopy[-1].n128_f64[1];
    }

    p2.n128_u64[0] = selfCopy->n128_u64[0];
    if (*v69 >= selfCopy->n128_f64[v70])
    {
      v89 = selfCopy->n128_f64[1];
      if (*points)
      {
        v90 = selfCopy->n128_f64[0];
      }

      else
      {
        v90 = selfCopy->n128_f64[1];
      }

      if (v90 >= v10->n128_f64[v70])
      {
        v93 = selfCopy[1].n128_u64;
        do
        {
          selfCopy = v93;
          if (v93 >= a2)
          {
            break;
          }

          v94 = *(v93 + v70 * 8);
          v93 += 16;
        }

        while (v90 >= v94);
      }

      else
      {
        v91 = selfCopy;
        do
        {
          selfCopy = v91 + 1;
          v92 = *(v91->n128_f64 + ((v70 * 8) | 0x10));
          ++v91;
        }

        while (v90 >= v92);
      }

      v95 = a2;
      if (selfCopy < a2)
      {
        v96 = (v70 * 8) | 0xFFFFFFFFFFFFFFF0;
        v97 = a2;
        do
        {
          v95 = v97 - 1;
          v98 = *(v97->n128_f64 + v96);
          --v97;
        }

        while (v90 < v98);
      }

      while (selfCopy < v95)
      {
        v215 = *selfCopy;
        *selfCopy = *v95;
        *v95 = v215;
        if (*points)
        {
          v99 = 0;
        }

        else
        {
          v99 = 8;
        }

        if (*points)
        {
          v100 = p2.n128_f64[0];
        }

        else
        {
          v100 = v89;
        }

        do
        {
          v101 = *(selfCopy->n128_f64 + (v99 | 0x10));
          ++selfCopy;
        }

        while (v100 >= v101);
        v102 = v99 | 0xFFFFFFFFFFFFFFF0;
        do
        {
          v103 = *(v95->n128_f64 + v102);
          --v95;
        }

        while (v100 < v103);
      }

      if (&selfCopy[-1] != self)
      {
        *self = selfCopy[-1];
      }

      p1 = 0;
      selfCopy[-1].n128_u64[0] = p2.n128_u64[0];
      selfCopy[-1].n128_f64[1] = v89;
    }

    else
    {
LABEL_144:
      v71 = 0;
      v72 = selfCopy->n128_f64[1];
      if (*points)
      {
        v73 = p2.n128_f64[0];
      }

      else
      {
        v73 = selfCopy->n128_f64[1];
      }

      do
      {
        if (*points)
        {
          v74 = 2;
        }

        else
        {
          v74 = 3;
        }

        v75 = selfCopy[v71++].n128_f64[v74];
      }

      while (v75 < v73);
      v76 = &selfCopy[v71];
      v77 = a2;
      if (v71 == 1)
      {
        v81 = a2;
        while (v76 < v81)
        {
          v78 = v81 - 1;
          v82 = &v81[-1].n128_f64[1];
          if (*points)
          {
            v82 = v78;
          }

          v80 = *v82 < v73;
          v81 = v78;
          if (v80)
          {
            goto LABEL_165;
          }
        }

        v78 = v81;
      }

      else
      {
        do
        {
          v78 = v77 - 1;
          v79 = &v77[-1].n128_f64[1];
          if (*points)
          {
            v79 = v78;
          }

          v80 = *v79 < v73;
          v77 = v78;
        }

        while (!v80);
      }

LABEL_165:
      selfCopy = v76;
      if (v76 < v78)
      {
        v83 = v78;
        do
        {
          v214 = *selfCopy;
          *selfCopy = *v83;
          *v83 = v214;
          if (*points)
          {
            v84 = p2.n128_f64[0];
          }

          else
          {
            v84 = v72;
          }

          do
          {
            v85 = &selfCopy[1].n128_f64[1];
            ++selfCopy;
            if (*points)
            {
              v85 = selfCopy;
            }
          }

          while (*v85 < v84);
          do
          {
            v86 = &v83[-1].n128_f64[1];
            --v83;
            if (*points)
            {
              v86 = v83;
            }
          }

          while (*v86 >= v84);
        }

        while (selfCopy < v83);
      }

      if (&selfCopy[-1] != self)
      {
        *self = selfCopy[-1];
      }

      selfCopy[-1].n128_u64[0] = p2.n128_u64[0];
      selfCopy[-1].n128_f64[1] = v72;
      if (v76 < v78)
      {
        goto LABEL_182;
      }

      v87 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *>(self, selfCopy - 1, points, p2);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,-[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *>(selfCopy, a2, points, v88))
      {
        a2 = selfCopy - 1;
        if (!v87)
        {
          goto LABEL_1;
        }

        return p2.n128_f64[0];
      }

      if (!v87)
      {
LABEL_182:
        p2.n128_f64[0] = std::__introsort<std::_ClassicAlgPolicy,[CRNeuralTextDetectorV3 getBorderPoints:sourceImageSize:outP1:outP2:isHorizontal:]::$_0 &,CGPoint *,false>(self, selfCopy - 1, points, size, p1 & 1, p2);
        p1 = 0;
      }
    }
  }

  v120 = selfCopy + 1;
  v121 = &selfCopy[1].n128_f64[1];
  v122 = 1;
  if (*points)
  {
    v122 = 0;
    v121 = selfCopy[1].n128_f64;
  }

  v123 = *v121;
  v124 = (a2 - 8);
  if (*points)
  {
    v124 = a2 - 1;
  }

  p2.n128_u64[0] = v124->n128_u64[0];
  v125 = v120->n128_f64[v122];
  if (v123 >= selfCopy->n128_f64[v122])
  {
    if (p2.n128_f64[0] < v125)
    {
      v177 = *v120;
      *v120 = *v10;
      *v10 = v177;
      v178 = &selfCopy[1].n128_u64[1];
      v179 = 1;
      if (*points)
      {
        v179 = 0;
        v178 = selfCopy[1].n128_u64;
      }

      p2.n128_u64[0] = *v178;
      if (*v178 < selfCopy->n128_f64[v179])
      {
        v219 = *selfCopy;
        *selfCopy = *v120;
        p2.n128_u64[0] = v219.n128_u64[0];
        *v120 = v219;
      }
    }
  }

  else
  {
    if (p2.n128_f64[0] < v125)
    {
      goto LABEL_239;
    }

    v220 = *selfCopy;
    *selfCopy = *v120;
    *v120 = v220;
    v190 = 1;
    if (*points)
    {
      v190 = 0;
    }

    v191 = (a2 - 8);
    if (*points)
    {
      v191 = a2 - 1;
    }

    p2.n128_u64[0] = v191->n128_u64[0];
    if (v191->n128_f64[0] < v120->n128_f64[v190])
    {
      p2 = *v120;
      *v120 = *v10;
      goto LABEL_240;
    }
  }

  return p2.n128_f64[0];
}

+ (void)computeOrientationFromSingleTextFeature:(uint64_t)feature map:
{
  v66[16] = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_opt_self();
  objc_opt_class();
  objc_opt_self();
  v66[0] = 0;
  std::vector<double>::vector[abi:ne200100](&v59, 9uLL, v66);
  v66[0] = 0;
  std::vector<long>::vector[abi:ne200100](&__p, 9uLL, v66);
  if ([objc_opt_class() computeClassCount:&__p classProbabiity:&v59 fromSingleTextFeature:v4 map:feature backgroundClass:0])
  {
    v5 = v4;
    objc_opt_self();
    v6 = __p;
    if (__p == v58)
    {
      v8 = __p;
    }

    else
    {
      v7 = __p + 8;
      v8 = __p;
      if (__p + 8 != v58)
      {
        v9 = *__p;
        v8 = __p;
        v10 = __p + 8;
        do
        {
          v12 = *v10;
          v10 += 8;
          v11 = v12;
          v13 = v9 < v12;
          if (v9 <= v12)
          {
            v9 = v11;
          }

          if (v13)
          {
            v8 = v7;
          }

          v7 = v10;
        }

        while (v10 != v58);
      }
    }

    v18 = v59;
    v19 = (v59 + 8);
    if (v59 != v60 && v19 != v60)
    {
      v21 = *v59;
      v22 = (v59 + 8);
      do
      {
        v23 = *v22++;
        v24 = v23;
        if (v21 < v23)
        {
          v21 = v24;
          v18 = v19;
        }

        v19 = v22;
      }

      while (v22 != v60);
    }

    v25 = *v18;
    [v5 baselineAngle];
    v27 = v26;
    objc_opt_self();
    objc_opt_class();
    objc_opt_self();
    objc_opt_class();
    objc_opt_self();
    v28 = ((((v8 - v6) >> 3) - 1) * 0.7854) + -0.3926991;
    if (v28 <= 3.14159265)
    {
      if (v28 > -3.14159265)
      {
        goto LABEL_33;
      }

      v29 = 6.28318531;
    }

    else
    {
      v29 = -6.28318531;
    }

    v28 = v28 + v29;
LABEL_33:
    v30 = v28;
    v31 = (v30 + 0.7854);
    if (v31 <= 3.14159265)
    {
      if (v31 > -3.14159265)
      {
        goto LABEL_38;
      }

      v32 = 6.28318531;
    }

    else
    {
      v32 = -6.28318531;
    }

    v31 = v31 + v32;
LABEL_38:
    v33 = v31;
    v34 = (v27 - v30);
    if (v34 <= 3.14159265)
    {
      if (v34 > -3.14159265)
      {
        goto LABEL_43;
      }

      v35 = 6.28318531;
    }

    else
    {
      v35 = -6.28318531;
    }

    v34 = v34 + v35;
LABEL_43:
    v36 = (v27 - v33);
    if (v36 <= 3.14159265)
    {
      if (v36 > -3.14159265)
      {
LABEL_48:
        v38 = v34;
        v39 = v36;
        v40 = fabsf(v38);
        v41 = fabsf(v39);
        v42 = fminf(v40, v41);
        v43 = fmaxf(v40, v41);
        v44 = v43 > 1.5708 && v42 < 1.5708;
        if (!v44 || (v45 = 0.75, v27 >= 0.0))
        {
          v45 = 0.55;
          if ((v43 <= 0.7854 || v42 >= 2.3562) && v27 < 1.57079633)
          {
            if (v27 <= -1.57079633)
            {
              v45 = 0.55;
            }

            else
            {
              v45 = 0.75;
            }
          }
        }

        [v5 setUseSequenceOrientation:1];
        if (v44)
        {
          [v5 setIsVerticalLayout:1];
          v44 = v41 < v40;
        }

        if (v42 >= 2.3562 && v25 > v45)
        {
          [v5 setShouldRotate180:1];
          if (v25 > 0.9)
          {
            [v5 setUseSequenceOrientation:0];
          }
        }

        if (v44 && v25 > v45)
        {
          [v5 setShouldRotate180:1];
          if (v25 > 0.9)
          {
            [v5 setUseSequenceOrientation:0];
          }
        }

        [v5 setShouldRotate180DetectorOrientationFallBack:0];
        v47 = !v44;
        if (v42 >= 2.3562)
        {
          v47 = 0;
        }

        if (!v47)
        {
          [v5 setShouldRotate180DetectorOrientationFallBack:{objc_msgSend(v5, "shouldRotate180") ^ 1}];
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        subFeatures = [v5 subFeatures];
        v49 = [subFeatures countByEnumeratingWithState:&v61 objects:v66 count:16];
        if (v49)
        {
          v50 = *v62;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v62 != v50)
              {
                objc_enumerationMutation(subFeatures);
              }

              v52 = *(*(&v61 + 1) + 8 * i);
              [v52 setShouldRotate180:{objc_msgSend(v5, "shouldRotate180")}];
              [v52 setShouldRotate180DetectorOrientationFallBack:{objc_msgSend(v5, "shouldRotate180DetectorOrientationFallBack")}];
              [v52 setIsVerticalLayout:{objc_msgSend(v5, "isVerticalLayout")}];
              [v52 setUseSequenceOrientation:{objc_msgSend(v5, "useSequenceOrientation")}];
            }

            v49 = [subFeatures countByEnumeratingWithState:&v61 objects:v66 count:16];
          }

          while (v49);
        }

        goto LABEL_83;
      }

      v37 = 6.28318531;
    }

    else
    {
      v37 = -6.28318531;
    }

    v36 = v36 + v37;
    goto LABEL_48;
  }

  [v4 setUseSequenceOrientation:1];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  subFeatures2 = [v4 subFeatures];
  v15 = [subFeatures2 countByEnumeratingWithState:&v53 objects:v65 count:16];
  if (v15)
  {
    v16 = *v54;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v54 != v16)
        {
          objc_enumerationMutation(subFeatures2);
        }

        [*(*(&v53 + 1) + 8 * j) setUseSequenceOrientation:{objc_msgSend(v4, "useSequenceOrientation")}];
      }

      v15 = [subFeatures2 countByEnumeratingWithState:&v53 objects:v65 count:16];
    }

    while (v15);
  }

LABEL_83:
  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }
}

@end