@interface PISegmentationHelper
+ (BOOL)layoutConfigurationValidForVisibleFrame:(CGRect)frame layoutConfiguration:(id)configuration;
+ (BOOL)matteHistogramIndicatesSubjectDetected:(id)detected;
+ (BOOL)topEdgeHasNoContactWithInspectionMatte:(id)matte context:(id)context;
+ (CGRect)_computeAvoidingRect:(CGRect)rect imageSize:(CGSize)size maxYMotion:(double)motion segmentationMatte:(id)matte layoutConfiguration:(id)configuration context:(id)context;
+ (CGRect)computeCenterZoomAreaWithMidpoint:(double)midpoint visibleFrame:(CGRect)frame segmentationMatte:(id)matte layoutConfiguration:(id)configuration context:(id)context;
+ (CGRect)scaleRect:(CGRect)rect scaleFactor:(double)factor scaleCenter:(CGPoint)center;
+ (PISegmentationBimodalScore)bimodalScoreForHistogram:(id)histogram;
+ (PISegmentationClockOverlapResult)computeClockLayerOrderWithAdaptiveTimeRect:(SEL)rect visibleFrame:(CGRect)frame segmentationMatte:(CGRect)matte layoutConfiguration:(id)configuration context:(id)context interactive:(id)interactive;
+ (PISegmentationClockOverlapResult)computeClockLayerOrderWithVisibleFrame:(SEL)frame segmentationMatte:(CGRect)matte layoutConfiguration:(id)configuration context:(id)context interactive:(id)interactive;
+ (PISegmentationInactiveResult)computeInactiveFrameWithVisibleFrame:(SEL)frame imageSize:(CGRect)size canUpdateVisibleRect:(CGSize)rect considerHeadroom:(BOOL)headroom segmentationMatte:(BOOL)matte layoutConfiguration:(id)configuration context:(id)context;
+ (double)_computeHeadroomZoomFactorWithVisibleFrame:(CGRect)frame scaleCenter:(CGPoint)center initialOverlap:(PISegmentationClockOverlapResult *)overlap matte:(id)matte layoutConfiguration:(id)configuration context:(id)context;
+ (double)computeAlphaCoverageWithRect:(CGRect)rect foregroundImage:(id)image context:(id)context;
+ (double)computeAvoidOverlapYOffsetWithVisibleFrame:(CGRect)frame imageSize:(CGSize)size segmentationMatte:(id)matte layoutConfiguration:(id)configuration outputUnsafeOverlap:(double *)overlap context:(id)context;
+ (double)computeHeadroomZoomFactorWithVisibleFrame:(CGRect)frame zoomTowardsTop:(BOOL *)top matte:(id)matte layoutConfiguration:(id)configuration context:(id)context;
+ (double)computeMatteCoverageWithRect:(CGRect)rect segmentationMatte:(id)matte context:(id)context;
+ (double)computeStretchOverlapYOffsetWithVisibleFrame:(CGRect)frame imageSize:(CGSize)size segmentationMatte:(id)matte classicOverlap:(BOOL)overlap layoutConfiguration:(id)configuration context:(id)context;
+ (double)computeTargetOverlapYOffsetWithVisibleFrame:(CGRect)frame imageSize:(CGSize)size segmentationMatte:(id)matte layoutConfiguration:(id)configuration context:(id)context;
+ (float)groundedScoreForSegmentationMatte:(id)matte context:(id)context;
+ (float)localConfidenceScoreForLocalConfidenceImage:(id)image extent:(CGRect)extent context:(id)context;
+ (id)backgroundForImage:(id)image matte:(id)matte;
+ (id)backgroundForImage:(id)image matte:(id)matte infill:(id)infill;
+ (id)debugImageForColorAnalysis:(id)analysis inputImage:(id)image visibleFrame:(CGRect)frame;
+ (id)debugImageWithInputImage:(double)image finalLayout:(double)layout intermediateLayout:(double)intermediateLayout faceRects:(double)rects saliencyPreferrectRect:(double)rect saliencyAcceptableRect:(double)acceptableRect settlingEffectRect:(double)effectRect;
+ (id)debugImageWithInputImage:(double)image layout:(double)layout faceRects:(double)rects saliencyPreferrectRect:(double)rect saliencyAcceptableRect:(double)acceptableRect gazeAreaRect:(double)areaRect settlingEffectRect:(double)effectRect;
+ (id)debugImageWithInputImage:(id)image fullSize:(CGSize)size debugRects:(id)rects label:(id)label;
+ (id)debugPreviewRenderWithBackground:(id)background foreground:(id)foreground layout:(id)layout style:(id)style;
+ (id)dilateMask:(id)mask withRadius:(double)radius;
+ (id)erodeMask:(id)mask withRadius:(double)radius;
+ (id)foregroundForImage:(id)image matte:(id)matte;
+ (id)imageFromImageLayer:(id)layer;
+ (id)imageWithColor:(id)color extent:(CGRect)extent;
+ (id)infillMaskForSegmentationMatte:(id)matte;
+ (id)invertImage:(id)image;
+ (id)localConfidenceImage:(id)image;
+ (id)openMask:(id)mask withRadius:(double)radius;
+ (id)thresholdImage:(id)image withThreshold:(double)threshold;
+ (id)upsampleBackgroundImage:(id)image toSize:(CGSize)size;
+ (id)upsampleMatteImage:(id)image guideImage:(id)guideImage;
@end

@implementation PISegmentationHelper

+ (id)debugImageForColorAnalysis:(id)analysis inputImage:(id)image visibleFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v58 = *MEMORY[0x1E69E9840];
  analysisCopy = analysis;
  imageCopy = image;
  v12 = imageCopy;
  v13 = 0;
  if (analysisCopy && imageCopy)
  {
    v60.origin.x = x;
    v60.origin.y = y;
    v60.size.width = width;
    v46 = height;
    v60.size.height = height;
    v61 = CGRectInset(v60, 50.0, 50.0);
    v14 = v61.origin.x;
    v15 = floor(width / 10.0);
    v16 = round(v15 * 0.25);
    v17 = v15 + v61.origin.y;
    [analysisCopy backgroundLuminance];
    v19 = [MEMORY[0x1E695F610] colorWithRed:v18 green:v18 blue:v18];
    v20 = drawCircle(v12, v19, @"bg lum", v14, v17, v16);

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v47 = analysisCopy;
    backgroundColors = [analysisCopy backgroundColors];
    v22 = [backgroundColors countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v53;
      v25 = 1;
      v26 = v14;
      do
      {
        v27 = 0;
        v28 = v25;
        v29 = v20;
        do
        {
          if (*v53 != v24)
          {
            objc_enumerationMutation(backgroundColors);
          }

          v26 = v15 + v26;
          v30 = [MEMORY[0x1E695F610] colorWithCGColor:{objc_msgSend(*(*(&v52 + 1) + 8 * v27), "CGColor")}];
          v25 = v28 + 1;
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"bg col %ld", v28];
          v20 = drawCircle(v29, v30, v31, v26, v17, v16);

          ++v27;
          v28 = v25;
          v29 = v20;
        }

        while (v23 != v27);
        v23 = [backgroundColors countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v23);
    }

    v32 = v15 + v17;
    [v47 foregroundLuminance];
    v34 = [MEMORY[0x1E695F610] colorWithRed:v33 green:v33 blue:v33];
    v12 = drawCircle(v20, v34, @"fg lum", v14, v32, v16);

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    foregroundColors = [v47 foregroundColors];
    v36 = [foregroundColors countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v49;
      v39 = 1;
      do
      {
        v40 = 0;
        v41 = v12;
        v42 = v39;
        do
        {
          if (*v49 != v38)
          {
            objc_enumerationMutation(foregroundColors);
          }

          v14 = v15 + v14;
          v43 = [MEMORY[0x1E695F610] colorWithCGColor:{objc_msgSend(*(*(&v48 + 1) + 8 * v40), "CGColor")}];
          v39 = v42 + 1;
          v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"fg col %ld", v42];
          v12 = drawCircle(v41, v43, v44, v14, v32, v16);

          ++v40;
          v41 = v12;
          v42 = v39;
        }

        while (v37 != v40);
        v37 = [foregroundColors countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v37);
    }

    v13 = [v12 imageByCroppingToRect:{x, y, width, v46}];
    analysisCopy = v47;
  }

  return v13;
}

+ (id)debugPreviewRenderWithBackground:(id)background foreground:(id)foreground layout:(id)layout style:(id)style
{
  v115 = *MEMORY[0x1E69E9840];
  backgroundCopy = background;
  foregroundCopy = foreground;
  layoutCopy = layout;
  styleCopy = style;
  sRGBColorSpace = [MEMORY[0x1E69B3A10] sRGBColorSpace];
  cGColorSpace = [sRGBColorSpace CGColorSpace];

  v15 = foregroundCopy;
  v16 = [backgroundCopy imageByColorMatchingWorkingSpaceToColorSpace:cGColorSpace];
  v17 = [v15 imageByColorMatchingWorkingSpaceToColorSpace:cGColorSpace];

  [layoutCopy timeFrame];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [layoutCopy visibleFrame];
  v30 = v19 - v29;
  v31 = 0.0;
  v32 = 0.0;
  if (v27 != 0.0)
  {
    v30 = v30 / v27;
    v32 = v23 / v27;
  }

  v33 = v21 - v26;
  if (v28 != 0.0)
  {
    v33 = v33 / v28;
    v31 = v25 / v28;
  }

  objc_msgSend_extent(v16);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v42 = v16;
  clockLayerOrder = [layoutCopy clockLayerOrder];
  v44 = *MEMORY[0x1E69C0BA0];

  v45 = v42;
  if (clockLayerOrder == v44)
  {
    v46 = [v17 imageByCompositingOverImage:v42];
    v47 = v46;
    if (v46)
    {
      v48 = v46;
    }

    else
    {
      v48 = v42;
    }

    v45 = v48;
  }

  v49 = +[PIGlobalSettings globalSettings];
  segmentationDebugPreviewDisableClock = [v49 segmentationDebugPreviewDisableClock];

  if ((segmentationDebugPreviewDisableClock & 1) == 0)
  {
    v107 = v42;
    v108 = v17;
    v109 = cGColorSpace;
    v110 = v15;
    v111 = backgroundCopy;
    clockFont = [styleCopy clockFont];
    v52 = clockFont;
    v53 = @"SF Soft Time";
    if (clockFont)
    {
      v53 = clockFont;
    }

    v54 = v53;
    v55 = *MEMORY[0x1E6965790];
    v56 = *MEMORY[0x1E6965860];
    v113.a = *MEMORY[0x1E6965790];
    v113.b = v56;
    *&v114.a = v54;
    *&v114.b = @"Semibold";
    v57 = CTFontDescriptorCreateWithAttributes([MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:2]);
    v112 = styleCopy;
    if (!v57)
    {
      v60 = 0;
LABEL_30:
      v68 = v35 + v30 * v39;
      v69 = v37 + v33 * v41;
      v70 = v31 * v41;

      clockColor = [styleCopy clockColor];
      v72 = MEMORY[0x1E695F610];
      if (clockColor)
      {
        clockColor2 = [styleCopy clockColor];
        whiteColor = [v72 colorWithCGColor:{objc_msgSend(clockColor2, "CGColor")}];
      }

      else
      {
        whiteColor = [MEMORY[0x1E695F610] whiteColor];
      }

      v75 = v68 + v32 * v39 * 0.5;
      v76 = MEMORY[0x1E695F648];
      v77 = whiteColor;
      v78 = v60;
      textImageGeneratorFilter = [v76 textImageGeneratorFilter];
      [textImageGeneratorFilter setText:@"9:41"];
      [textImageGeneratorFilter setFontName:v78];
      LODWORD(v80) = 1121714176;
      [textImageGeneratorFilter setFontSize:v80];
      v81 = CTFontCreateWithName(v78, 110.0, 0);

      CapHeight = CTFontGetCapHeight(v81);
      CFRelease(v81);
      v83 = v70 / CapHeight;
      *&v83 = v70 / CapHeight;
      [textImageGeneratorFilter setScaleFactor:v83];
      outputImage = [textImageGeneratorFilter outputImage];
      v85 = [MEMORY[0x1E695F658] imageWithColor:v77];

      objc_msgSend_extent(outputImage);
      v86 = [v85 imageByCroppingToRect:?];

      blendWithMaskFilter = [MEMORY[0x1E695F648] blendWithMaskFilter];
      [blendWithMaskFilter setInputImage:v86];
      v88 = [outputImage imageByApplyingFilter:@"CIColorInvert"];
      [blendWithMaskFilter setMaskImage:v88];

      [blendWithMaskFilter setBackgroundImage:0];
      outputImage2 = [blendWithMaskFilter outputImage];
      objc_msgSend_extent(outputImage2);
      memset(&v114, 0, sizeof(v114));
      CGAffineTransformMakeTranslation(&v114, v75 - (v90 + v91 * 0.5), v69 + v70 * 0.5 - (v92 + v93 * 0.5));
      v113 = v114;
      v94 = [outputImage2 imageByApplyingTransform:&v113];

      v95 = [v94 imageByCompositingOverImage:v45];
      v96 = v95;
      if (v95)
      {
        v97 = v95;
      }

      else
      {
        v97 = v45;
      }

      v98 = v97;

      v45 = v98;
      backgroundCopy = v111;
      styleCopy = v112;
      cGColorSpace = v109;
      v15 = v110;
      v42 = v107;
      v17 = v108;
      goto LABEL_37;
    }

    v58 = v57;
    v59 = *MEMORY[0x1E6965808];
    v60 = CTFontDescriptorCopyAttribute(v57, *MEMORY[0x1E6965808]);
    if (!v60)
    {
      MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(v58, [MEMORY[0x1E695DFD8] setWithObject:v55]);
      if (MatchingFontDescriptors)
      {
        v62 = MatchingFontDescriptors;
        Count = CFArrayGetCount(MatchingFontDescriptors);
        if (Count)
        {
          v64 = Count;
          if (Count == 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v62, 0);
            v60 = CTFontDescriptorCopyAttribute(ValueAtIndex, v59);
LABEL_28:
            CFRelease(v62);
            goto LABEL_29;
          }

          if (Count >= 1)
          {
            v66 = 0;
            while (1)
            {
              v67 = CFArrayGetValueAtIndex(v62, v66);
              v60 = CTFontDescriptorCopyAttribute(v67, v59);
              if ([v60 rangeOfString:@"Semibold" options:391] != 0x7FFFFFFFFFFFFFFFLL)
              {
                break;
              }

              if (v64 == ++v66)
              {
                v60 = 0;
                break;
              }
            }

            styleCopy = v112;
            goto LABEL_28;
          }
        }

        v60 = 0;
        goto LABEL_28;
      }

      v60 = 0;
    }

LABEL_29:
    CFRelease(v58);
    goto LABEL_30;
  }

LABEL_37:
  clockLayerOrder2 = [layoutCopy clockLayerOrder];
  v100 = *MEMORY[0x1E69C0B98];

  if (clockLayerOrder2 == v100)
  {
    v101 = [v17 imageByCompositingOverImage:v45];
    v102 = v101;
    if (v101)
    {
      v103 = v101;
    }

    else
    {
      v103 = v45;
    }

    v104 = v103;

    v45 = v104;
  }

  v105 = [v45 imageByColorMatchingColorSpaceToWorkingSpace:cGColorSpace];

  return v105;
}

+ (id)debugImageWithInputImage:(double)image finalLayout:(double)layout intermediateLayout:(double)intermediateLayout faceRects:(double)rects saliencyPreferrectRect:(double)rect saliencyAcceptableRect:(double)acceptableRect settlingEffectRect:(double)effectRect
{
  v131 = *MEMORY[0x1E69E9840];
  v116 = a11;
  v115 = a12;
  v113 = a13;
  v21 = a14;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  obj = v21;
  v23 = [obj countByEnumeratingWithState:&v126 objects:v130 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v127;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v127 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v126 + 1) + 8 * i);
        v29 = MEMORY[0x1E69C0798];
        [v28 rectValue];
        [v29 inflatePersonFaceRect:?];
        v31 = v30;
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v38 = +[PIDebugRect inflatedFaceColor];
        v39 = [PIDebugRect debugRectWithRect:v38 color:0 label:v31, v33, v35, v37];
        [v22 addObject:v39];

        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"f%d", v25];
        [v28 rectValue];
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v48 = v47;
        v49 = +[PIDebugRect faceColor];
        v50 = [PIDebugRect debugRectWithRect:v49 color:v40 label:v42, v44, v46, v48];
        [v22 addObject:v50];

        v25 = (v25 + 1);
      }

      v24 = [obj countByEnumeratingWithState:&v126 objects:v130 count:16];
    }

    while (v24);
  }

  v51 = +[PIDebugRect saliencyPreferredColor];
  intermediateLayout = [PIDebugRect debugRectWithRect:v51 color:@"saliency preferred" label:a2, image, layout, intermediateLayout];
  [v22 addObject:intermediateLayout];

  v53 = +[PIDebugRect saliencyAcceptableColor];
  effectRect = [PIDebugRect debugRectWithRect:v53 color:@"saliency acceptable" label:rects, rect, acceptableRect, effectRect];
  [v22 addObject:effectRect];

  v133.origin.x = a15;
  v133.origin.y = a16;
  v133.size.width = a17;
  v133.size.height = a18;
  if (!CGRectIsNull(v133))
  {
    v55 = +[PIDebugRect settlingEffectColor];
    v56 = [PIDebugRect debugRectWithRect:v55 color:@"settling effect" label:a15, a16, a17, a18];
    [v22 addObject:v56];
  }

  v57 = *MEMORY[0x1E695EFF8];
  v124 = *(MEMORY[0x1E695EFF8] + 8);
  [v115 imageSize];
  v59 = v58;
  v61 = v60;
  [v113 visibleRect];
  v118 = v62;
  v120 = v63;
  v65 = v64;
  v122 = v66;
  [v115 timeFrame];
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  [v115 visibleFrame];
  v79 = v68 - v78;
  v80 = 0.0;
  v81 = 0.0;
  if (v76 != 0.0)
  {
    v79 = v79 / v76;
    v81 = v72 / v76;
  }

  v82 = v70 - v75;
  if (v77 != 0.0)
  {
    v82 = v82 / v77;
    v80 = v74 / v77;
  }

  v83 = v120 + v82 * v122;
  v84 = v118 + v79 * v65 - v57;
  v85 = 0.0;
  v86 = 0.0;
  if (v59 != 0.0)
  {
    v84 = v84 / v59;
    v86 = v65 * v81 / v59;
  }

  v87 = v83 - v124;
  if (v61 != 0.0)
  {
    v87 = v87 / v61;
    v85 = v122 * v80 / v61;
  }

  v88 = +[PIDebugRect datetimeColor];
  v89 = [PIDebugRect debugRectWithRect:v88 color:@"time" label:v84, v87, v86, v85];
  [v22 addObject:v89];

  [v113 inactiveRect];
  v94 = v93 - v57;
  v95 = 0.0;
  v96 = 0.0;
  if (v59 != 0.0)
  {
    v94 = v94 / v59;
    v96 = v91 / v59;
  }

  v97 = v90 - v124;
  if (v61 != 0.0)
  {
    v97 = v97 / v61;
    v95 = v92 / v61;
  }

  v98 = +[PIDebugRect inactiveColor];
  v99 = [PIDebugRect debugRectWithRect:v98 color:@"inactive" label:v94, v97, v96, v95];
  [v22 addObject:v99];

  v100 = v118 - v57;
  v101 = 0.0;
  v102 = 0.0;
  if (v59 != 0.0)
  {
    v100 = v100 / v59;
    v102 = v65 / v59;
  }

  v103 = v120 - v124;
  if (v61 != 0.0)
  {
    v103 = v103 / v61;
    v101 = v122 / v61;
  }

  v104 = +[PIDebugRect visibleColor];
  v101 = [PIDebugRect debugRectWithRect:v104 color:@"visible" label:v100, v103, v102, v101];
  [v22 addObject:v101];

  v106 = [v113 debugDescription];
  v107 = [self debugImageWithInputImage:v116 fullSize:v22 debugRects:v106 label:{v59, v61}];

  return v107;
}

+ (id)debugImageWithInputImage:(double)image layout:(double)layout faceRects:(double)rects saliencyPreferrectRect:(double)rect saliencyAcceptableRect:(double)acceptableRect gazeAreaRect:(double)areaRect settlingEffectRect:(double)effectRect
{
  v232 = *MEMORY[0x1E69E9840];
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = MEMORY[0x1E69C07A8];
  v216 = v26;
  objc_msgSend_extent(v26);
  v32 = v31;
  v34 = v33;
  configuration = [v27 configuration];
  [configuration screenSize];
  [v30 bestFaceRectWithImageSize:v28 deviceSize:v32 faceRegions:{v34, v36, v37}];
  v39 = v38;
  v219 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v207 = v41;
  v213 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (v41 + v45);
  v46 = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24);
  obja = v46;
  v47 = MEMORY[0x1E69C06A0];
  configuration2 = [v27 configuration];
  [v27 imageSize];
  v50 = v49;
  [v27 imageSize];
  v52 = [v47 bestAdaptiveCropRectForPosterClassification:1 layoutConfiguration:configuration2 sourcePixelWidth:v50 sourcePixelHeight:v51 sourcePreferredCropRectNormalized:a2 sourceAcceptableCropRectNormalized:image sourceFaceAreaRectNormalized:{layout, rects, rect, acceptableRect, areaRect, effectRect, *&v39, *&v213, *&v43, *&v45}];

  v212 = v52;
  [v52 visibleRect];
  v209 = v54;
  v210 = v53;
  v211 = v55;
  v208 = v46 - (v56 + v55);
  configuration3 = [v27 configuration];
  [configuration3 screenSize];
  v59 = v58;
  configuration4 = [v27 configuration];
  [configuration4 screenSize];
  v62 = v59 / v61;
  v200 = v59 / v61;

  [v27 imageSize];
  v64 = v63;
  [v27 imageSize];
  v206 = v43;
  [PIPNCropUtilitiesWrapper bestCropVariantFromSignalsWithAspectRatio:v64 sourcePixelWidth:v65 sourcePixelHeight:v62 acceptableCropRect:rect preferredCropRect:acceptableRect normalizedFaceAreaRect:areaRect gazeAreaRect:effectRect, *&a2, *&image, *&layout, *&rects, *&v219, *&v213, *&v43, *&v45, *&a14, *&a15, *&a16, *&a17];
  v204 = v67;
  v205 = v66;
  v202 = v68;
  v70 = v69;
  v71 = MEMORY[0x1E69C06A0];
  [v27 imageSize];
  v73 = v72;
  v214 = v27;
  [v27 imageSize];
  v75 = v70;
  [v71 bestCropRectV2ForAspectRatio:v73 sourcePixelWidth:v74 sourcePixelHeight:0 sourceEssentialAreaRect:v200 sourceSecondaryEssentialAreaRect:rect outputCropScore:{acceptableRect, areaRect, effectRect, *&a2, *&image, *&layout, *&rects}];
  v199 = v77;
  v201 = v76;
  v203 = obja - (v202 + v70);
  v79 = v78;
  v227 = 0u;
  v228 = 0u;
  v198 = obja - (v80 + v78);
  v229 = 0u;
  v230 = 0u;
  obj = v28;
  v81 = [obj countByEnumeratingWithState:&v227 objects:v231 count:16];
  if (v81)
  {
    v82 = v81;
    v83 = 0;
    v84 = *v228;
    do
    {
      for (i = 0; i != v82; ++i)
      {
        if (*v228 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v86 = *(*(&v227 + 1) + 8 * i);
        v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"f%d", v83];
        [v86 rectValue];
        v89 = v88;
        v91 = v90;
        v93 = v92;
        v95 = v94;
        v96 = +[PIDebugRect faceColor];
        v97 = [PIDebugRect debugRectWithRect:v96 color:v87 label:v89, v91, v93, v95];
        [v29 addObject:v97];

        v83 = (v83 + 1);
      }

      v82 = [obj countByEnumeratingWithState:&v227 objects:v231 count:16];
    }

    while (v82);
  }

  v98 = +[PIDebugRect saliencyPreferredColor];
  rects = [PIDebugRect debugRectWithRect:v98 color:@"saliency preferred" label:a2, image, layout, rects];
  [v29 addObject:rects];

  v100 = +[PIDebugRect saliencyAcceptableColor];
  effectRect = [PIDebugRect debugRectWithRect:v100 color:@"saliency acceptable" label:rect, acceptableRect, areaRect, effectRect];
  [v29 addObject:effectRect];

  v102 = +[PIDebugRect faceUnionColor];
  v103 = [PIDebugRect debugRectWithRect:v102 color:@"face union" label:v219, v207, v206, v45];
  [v29 addObject:v103];

  v104 = +[PIDebugRect gazeAreaRectColor];
  v105 = [PIDebugRect debugRectWithRect:v104 color:@"gaze area" label:a14, a15, a16, a17];
  [v29 addObject:v105];

  v106 = +[PIDebugRect v2CropColor];
  v107 = [PIDebugRect debugRectWithRect:v106 color:@"bestCropRectV2" label:v201, v198, v199, v79];
  [v29 addObject:v107];

  v108 = +[PIDebugRect smartCropColor];
  v109 = [PIDebugRect debugRectWithRect:v108 color:@"smart crop" label:v205, v203, v204, v75];
  [v29 addObject:v109];

  v110 = +[PIDebugRect metadataColor];
  v211 = [PIDebugRect debugRectWithRect:v110 color:@"metadata" label:v210, v208, v209, v211];
  [v29 addObject:v211];

  v234.origin.x = a18;
  v234.origin.y = a19;
  v234.size.width = a20;
  v234.size.height = a21;
  if (!CGRectIsNull(v234))
  {
    v112 = +[PIDebugRect settlingEffectColor];
    v113 = [PIDebugRect debugRectWithRect:v112 color:@"settling effect" label:a18, a19, a20, a21];
    [v29 addObject:v113];
  }

  v115 = *MEMORY[0x1E695EFF8];
  v114 = *(MEMORY[0x1E695EFF8] + 8);
  [v214 imageSize];
  v117 = v116;
  v119 = v118;
  [v214 inactiveFrame];
  v124 = v123 - v115;
  v125 = 0.0;
  v126 = 0.0;
  if (v117 != 0.0)
  {
    v124 = v124 / v117;
    v126 = v121 / v117;
  }

  v127 = v120 - v114;
  if (v119 != 0.0)
  {
    v127 = v127 / v119;
    v125 = v122 / v119;
  }

  v128 = +[PIDebugRect inactiveColor];
  v125 = [PIDebugRect debugRectWithRect:v128 color:@"inactive" label:v124, v127, v126, v125];
  [v29 addObject:v125];

  [v214 timeFrame];
  v134 = v133 - v115;
  v135 = 0.0;
  v136 = 0.0;
  if (v117 != 0.0)
  {
    v134 = v134 / v117;
    v136 = v131 / v117;
  }

  v137 = v130 - v114;
  if (v119 != 0.0)
  {
    v137 = v137 / v119;
    v135 = v132 / v119;
  }

  v138 = +[PIDebugRect datetimeColor];
  v135 = [PIDebugRect debugRectWithRect:v138 color:@"time" label:v134, v137, v136, v135];
  [v29 addObject:v135];

  [v214 visibleFrame];
  v144 = v143 - v115;
  v145 = 0.0;
  v146 = 0.0;
  if (v117 != 0.0)
  {
    v144 = v144 / v117;
    v146 = v141 / v117;
  }

  v147 = v140 - v114;
  if (v119 != 0.0)
  {
    v147 = v147 / v119;
    v145 = v142 / v119;
  }

  v148 = +[PIDebugRect visibleColor];
  v145 = [PIDebugRect debugRectWithRect:v148 color:@"visible" label:v144, v147, v146, v145];
  [v29 addObject:v145];

  [v214 adaptiveVisibleFrame];
  v154 = v153 - v115;
  v155 = 0.0;
  v156 = 0.0;
  if (v117 != 0.0)
  {
    v154 = v154 / v117;
    v156 = v151 / v117;
  }

  v157 = v150 - v114;
  if (v119 != 0.0)
  {
    v157 = v157 / v119;
    v155 = v152 / v119;
  }

  v158 = +[PIDebugRect adaptiveColor];
  v155 = [PIDebugRect debugRectWithRect:v158 color:@"adaptive" label:v154, v157, v156, v155];
  [v29 addObject:v155];

  [v214 adaptiveInactiveTopFrame];
  v164 = v163 - v115;
  v165 = 0.0;
  v166 = 0.0;
  if (v117 != 0.0)
  {
    v164 = v164 / v117;
    v166 = v161 / v117;
  }

  v167 = v160 - v114;
  if (v119 != 0.0)
  {
    v167 = v167 / v119;
    v165 = v162 / v119;
  }

  v168 = +[PIDebugRect inactiveColor];
  v165 = [PIDebugRect debugRectWithRect:v168 color:@"adaptive-inactive" label:v164, v167, v166, v165];
  [v29 addObject:v165];

  [v214 maxClockShift];
  v171 = v170;
  [v214 timeFrame];
  v176 = v175 - v115;
  v177 = 0.0;
  v178 = 0.0;
  if (v117 != 0.0)
  {
    v176 = v176 / v117;
    v178 = v173 / v117;
  }

  v179 = v172 - v114;
  if (v119 != 0.0)
  {
    v179 = v179 / v119;
    v177 = v174 / v119;
  }

  v180 = v179 - v171;
  v181 = v171 + v177;
  v182 = +[PIDebugRect stretchColor];
  v181 = [PIDebugRect debugRectWithRect:v182 color:@"stretched time" label:v176, v180, v178, v181];
  [v29 addObject:v181];

  layoutVariant = [v214 layoutVariant];
  if (layoutVariant > 4)
  {
    v185 = 0;
  }

  else
  {
    v185 = off_1E82AAAF8[layoutVariant];
  }

  v186 = MEMORY[0x1E696AEC0];
  [v214 maxClockShift];
  v188 = v187;
  [v212 adaptiveHeadroom];
  v190 = v189;
  [v214 deviceResolution];
  v192 = v191;
  [v214 deviceResolution];
  v193 = [v186 stringWithFormat:@"type: %@. stretch: %f. adaptive headroom: %f. Device %d x %d", v185, v188, v190, v192, v193];
  v195 = [self debugImageWithInputImage:v216 fullSize:v29 debugRects:v193 label:{v117, v119}];

  return v195;
}

+ (id)debugImageWithInputImage:(id)image fullSize:(CGSize)size debugRects:(id)rects label:(id)label
{
  height = size.height;
  width = size.width;
  v82 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  rectsCopy = rects;
  labelCopy = label;
  objc_msgSend_extent(imageCopy);
  v12 = height * *MEMORY[0x1E69C0C68];
  v14 = *MEMORY[0x1E69C0C68] * v13;
  memset(&v80, 0, sizeof(v80));
  CGAffineTransformMakeScale(&v80, width / v15, v12 / v14);
  v79 = v80;
  v71 = imageCopy;
  v16 = [imageCopy imageByApplyingTransform:&v79];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  obj = rectsCopy;
  v17 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v76;
    v20 = 0x1E82A7000uLL;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v76 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v75 + 1) + 8 * i);
        [v22 geometry];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;
        objc_msgSend_extent(v16);
        v33 = v31 + v24 * v32;
        v36 = v34 + v26 * v35;
        v37 = v28 * v32;
        v38 = v30 * v35;
        color = [v22 color];
        label = [v22 label];
        v41 = v16;
        v42 = color;
        v43 = label;
        v44 = [*(v20 + 4016) framedRectImageWithCGRect:v42 color:v33 borderWidth:{v36, v37, v38, 5.0}];
        v45 = v44;
        v16 = v41;
        if (v44)
        {
          v16 = [v44 imageByCompositingOverImage:v41];
        }

        if (v43)
        {
          v46 = createLabelImage(v43, v42, v33, v36);
          v47 = v46;
          if (v46)
          {
            v48 = [v46 imageByCompositingOverImage:v16];
            v49 = v16;
            v50 = v18;
            v51 = v19;
            v52 = v20;
            v53 = v48;

            v54 = v53;
            v20 = v52;
            v19 = v51;
            v18 = v50;
            v16 = v54;
          }
        }
      }

      v18 = [obj countByEnumeratingWithState:&v75 objects:v81 count:16];
    }

    while (v18);
  }

  v55 = +[PIDebugRect labelColor];
  v56 = *MEMORY[0x1E695EFF8];
  v57 = *(MEMORY[0x1E695EFF8] + 8);
  v58 = createLabelImage(labelCopy, v55, *MEMORY[0x1E695EFF8], v57);

  memset(&v79, 0, sizeof(v79));
  objc_msgSend_extent(v16);
  v60 = v59;
  objc_msgSend_extent(v58);
  CGAffineTransformMakeTranslation(&v79, v60 - v61, 0.0);
  v74 = v79;
  v62 = [v58 imageByApplyingTransform:&v74];

  v63 = [v62 imageByCompositingOverImage:v16];
  v64 = v63;
  if (v63)
  {
    v65 = v63;
  }

  else
  {
    v65 = v16;
  }

  v66 = v65;

  v73 = v80;
  memset(&v74, 0, sizeof(v74));
  CGAffineTransformInvert(&v74, &v73);
  v73 = v74;
  v67 = [v66 imageByApplyingTransform:&v73];

  v68 = [v67 imageByCroppingToRect:{v56, v57, width, v12}];

  return v68;
}

+ (PISegmentationInactiveResult)computeInactiveFrameWithVisibleFrame:(SEL)frame imageSize:(CGRect)size canUpdateVisibleRect:(CGSize)rect considerHeadroom:(BOOL)headroom segmentationMatte:(BOOL)matte layoutConfiguration:(id)configuration context:(id)context
{
  headroomCopy = headroom;
  height = rect.height;
  width = rect.width;
  v16 = size.size.height;
  v17 = size.size.width;
  y = size.origin.y;
  x = size.origin.x;
  configurationCopy = configuration;
  contextCopy = context;
  v23 = a10;
  v24 = v23;
  if (configurationCopy)
  {
    v25 = v23 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  v104 = *MEMORY[0x1E69C0BA8];
  retstr->var0.origin.x = x;
  retstr->var0.origin.y = y;
  retstr->var0.size.width = v17;
  retstr->var0.size.height = v16;
  retstr->var1.origin.x = x;
  retstr->var1.origin.y = y;
  retstr->var1.size.width = v17;
  retstr->var1.size.height = v16;
  v27 = *MEMORY[0x1E69C0BB0];
  memset(&v117, 0, sizeof(v117));
  CGAffineTransformMakeTranslation(&v117, -(x + v17 * 0.5), -y);
  memset(&v116, 0, sizeof(v116));
  v100 = v27;
  CGAffineTransformMakeScale(&v116, v27, v27);
  memset(&v115, 0, sizeof(v115));
  CGAffineTransformMakeTranslation(&v115, x + v17 * 0.5, y);
  memset(&v114, 0, sizeof(v114));
  t1 = v117;
  t2 = v116;
  CGAffineTransformConcat(&v113, &t1, &t2);
  t1 = v115;
  CGAffineTransformConcat(&v114, &v113, &t1);
  v118.origin.x = 0.0;
  v118.origin.y = 0.0;
  v118.size.width = width;
  v118.size.height = height;
  v128.origin.x = x;
  v128.origin.y = y;
  v128.size.width = v17;
  v128.size.height = v16;
  v28 = CGRectContainsRect(v118, v128);
  v29 = height * *MEMORY[0x1E69C0C68];
  v103 = height;
  if (v28 || !matte)
  {
    v29 = height;
  }

  v107 = x;
  rect1 = v29;
  v113 = v114;
  v119.origin.x = x;
  v119.origin.y = y;
  v119.size.width = v17;
  v119.size.height = v16;
  v120 = CGRectApplyAffineTransform(v119, &v113);
  v30 = v120.origin.x;
  v31 = v120.origin.y;
  v32 = v120.size.width;
  v33 = v120.size.height;
  if (v26 == 1)
  {
    [PISegmentationHelper _computeAvoidingRect:configurationCopy imageSize:contextCopy maxYMotion:v24 segmentationMatte:v120.origin.x layoutConfiguration:v120.origin.y context:v120.size.width, v120.size.height, width, v103, v104];
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v33 = v37;
  }

  v121.origin.x = 0.0;
  v121.origin.y = 0.0;
  v121.size.width = width;
  v121.size.height = rect1;
  v129.origin.x = v30;
  v129.origin.y = v31;
  v129.size.width = v32;
  v129.size.height = v33;
  if (!CGRectContainsRect(v121, v129))
  {
    v96 = v31;
    v97 = v30;
    v98 = v33;
    v99 = v32;
    v38 = width;
    if (headroomCopy)
    {
      memset(&v113, 0, sizeof(v113));
      CGAffineTransformMakeScale(&v113, 1.0 / v100, 1.0 / v100);
      memset(&t1, 0, sizeof(t1));
      v110 = v117;
      v109 = v113;
      CGAffineTransformConcat(&t2, &v110, &v109);
      v110 = v115;
      CGAffineTransformConcat(&t1, &t2, &v110);
      t2 = t1;
      v39 = v107;
      v122.origin.x = v107;
      v122.origin.y = y;
      v122.size.width = v17;
      v122.size.height = v16;
      v123 = CGRectApplyAffineTransform(v122, &t2);
      v93 = v123.origin.y;
      v94 = v123.origin.x;
      v91 = v123.size.width;
      v101 = v123.size.height;
      v40 = v16;
      v41 = v17;
      v42 = y;
      if (v26)
      {
        [PISegmentationHelper _computeAvoidingRect:configurationCopy imageSize:contextCopy maxYMotion:v24 segmentationMatte:v107 layoutConfiguration:y context:v17, v16, v38, v103, v104, v16];
        v39 = v43;
        v42 = v44;
        v41 = v45;
        v40 = v46;
      }

      v124.origin.x = 0.0;
      v124.origin.y = 0.0;
      v124.size.width = v38;
      v124.size.height = rect1;
      v47 = v39;
      v48 = v42;
      v49 = v41;
      v50 = v40;
      if (CGRectContainsRect(v124, *(&v42 - 1)))
      {
        retstr->var0.origin.x = v94;
        retstr->var0.origin.y = v93;
        retstr->var0.size.width = v91;
        retstr->var0.size.height = v101;
        retstr->var1.origin.x = v39;
        retstr->var1.origin.y = v48;
        retstr->var1.size.width = v49;
        retstr->var1.size.height = v50;
        goto LABEL_61;
      }
    }

    v51 = v107;
    v52 = y;
    v102 = v17;
    v95 = v16;
    if (v26)
    {
      [PISegmentationHelper _computeAvoidingRect:configurationCopy imageSize:contextCopy maxYMotion:v24 segmentationMatte:v107 layoutConfiguration:y context:v17, v16, v38, v103, v104];
      v51 = v53;
      v52 = v54;
      v56 = v55;
      v125.size.width = v38;
      v58 = v57;
      v125.origin.x = 0.0;
      v125.origin.y = 0.0;
      v105 = v125.size.width;
      v125.size.height = rect1;
      v130.origin.x = v51;
      v130.origin.y = v52;
      v130.size.width = v56;
      v130.size.height = v58;
      if (CGRectContainsRect(v125, v130))
      {
        retstr->var1.origin.x = v51;
        retstr->var1.origin.y = v52;
        retstr->var1.size.width = v56;
        goto LABEL_60;
      }

      v95 = v58;
      v102 = v56;
      v38 = v105;
    }

    v106 = v51;
    v92 = v17;
    v60 = v98;
    v59 = v99;
    v61 = v98 + v96;
    v62 = v38;
    if (v99 + v97 >= v38)
    {
      v63 = v38 + 0.0;
    }

    else
    {
      v63 = v99 + v97;
    }

    v64 = fmax(v63, 0.0);
    if (v61 >= rect1)
    {
      v65 = rect1 + 0.0;
    }

    else
    {
      v65 = v98 + v96;
    }

    v66 = v97 + v64 - (v99 + v97);
    v67 = v96 + fmax(v65, 0.0) - v61;
    if (v66 >= v38)
    {
      v66 = v38 + 0.0;
    }

    v68 = fmax(v66, 0.0);
    if (v67 >= rect1)
    {
      v69 = rect1 + 0.0;
    }

    else
    {
      v69 = v67;
    }

    v70 = fmax(v69, 0.0);
    v126.origin.x = 0.0;
    v126.origin.y = 0.0;
    v126.size.width = v38;
    v126.size.height = rect1;
    v71 = v68;
    v72 = v70;
    if (CGRectContainsRect(v126, *(&v59 - 2)) && v68 == v97)
    {
      retstr->var1.origin.x = v68;
      retstr->var1.origin.y = v70;
      retstr->var1.size.width = v99;
      retstr->var1.size.height = v98;
      goto LABEL_61;
    }

    v74 = v102;
    v75 = v52 + v95;
    if (v106 + v102 >= v38)
    {
      v76 = v38 + 0.0;
    }

    else
    {
      v76 = v106 + v102;
    }

    v77 = fmax(v76, 0.0);
    if (v75 >= rect1)
    {
      v78 = rect1 + 0.0;
    }

    else
    {
      v78 = v52 + v95;
    }

    v79 = v106 + v77 - (v106 + v102);
    v80 = v52 + fmax(v78, 0.0) - v75;
    if (v79 >= v38)
    {
      v79 = v38 + 0.0;
    }

    v81 = v102;
    v82 = fmax(v79, 0.0);
    if (v80 >= rect1)
    {
      v83 = rect1 + 0.0;
    }

    else
    {
      v83 = v80;
    }

    v58 = v95;
    v84 = fmax(v83, 0.0);
    v127.origin.x = 0.0;
    v127.origin.y = 0.0;
    v127.size.width = v62;
    v127.size.height = rect1;
    v85 = v82;
    v86 = v84;
    v87 = v95;
    if (CGRectContainsRect(v127, *(&v74 - 2)) && v82 == v106)
    {
      retstr->var1.origin.x = v82;
      retstr->var1.origin.y = v84;
    }

    else
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_275_10504);
      }

      v81 = v92;
      v58 = v16;
      v89 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v113.a) = 0;
        _os_log_debug_impl(&dword_1C7694000, v89, OS_LOG_TYPE_DEBUG, "Unable to calculate a new inactiveRect; falling back to visible frame", &v113, 2u);
      }

      retstr->var1.origin.x = v107;
      retstr->var1.origin.y = y;
    }

    retstr->var1.size.width = v81;
LABEL_60:
    retstr->var1.size.height = v58;
    goto LABEL_61;
  }

  retstr->var1.origin.x = v30;
  retstr->var1.origin.y = v31;
  retstr->var1.size.width = v32;
  retstr->var1.size.height = v33;
LABEL_61:

  return result;
}

+ (CGRect)_computeAvoidingRect:(CGRect)rect imageSize:(CGSize)size maxYMotion:(double)motion segmentationMatte:(id)matte layoutConfiguration:(id)configuration context:(id)context
{
  height = size.height;
  width = size.width;
  v13 = rect.size.height;
  v14 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v47 = *MEMORY[0x1E69E9840];
  matteCopy = matte;
  configurationCopy = configuration;
  contextCopy = context;
  if (!matteCopy)
  {
    v32 = NUAssertLogger_10509();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "segmentationMatte != nil"];
      LODWORD(v46.a) = 138543362;
      *(&v46.a + 4) = v33;
      _os_log_error_impl(&dword_1C7694000, v32, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v46, 0xCu);
    }

    v34 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v36 = NUAssertLogger_10509();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v37)
      {
        v40 = dispatch_get_specific(*v34);
        v41 = MEMORY[0x1E696AF00];
        v42 = v40;
        callStackSymbols = [v41 callStackSymbols];
        v44 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v46.a) = 138543618;
        *(&v46.a + 4) = v40;
        WORD2(v46.b) = 2114;
        *(&v46.b + 6) = v44;
        _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v46, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(v46.a) = 138543362;
      *(&v46.a + 4) = v39;
      _os_log_error_impl(&dword_1C7694000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v46, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v20 = contextCopy;
  [PISegmentationHelper computeAvoidOverlapYOffsetWithVisibleFrame:matteCopy imageSize:configurationCopy segmentationMatte:0 layoutConfiguration:contextCopy outputUnsafeOverlap:x context:y, v14, v13, width, height];
  v22 = fmin(v21, 0.0);
  memset(&v46, 0, sizeof(v46));
  if (v22 <= -motion)
  {
    motionCopy = motion;
  }

  else
  {
    motionCopy = -v22;
  }

  CGAffineTransformMakeTranslation(&v46, 0.0, motionCopy);
  v45 = v46;
  v48.origin.x = x;
  v48.origin.y = y;
  v48.size.width = v14;
  v48.size.height = v13;
  v49 = CGRectApplyAffineTransform(v48, &v45);
  v24 = v49.origin.x;
  v25 = v49.origin.y;
  v26 = v49.size.width;
  v27 = v49.size.height;

  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  result.size.height = v31;
  result.size.width = v30;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

+ (CGRect)computeCenterZoomAreaWithMidpoint:(double)midpoint visibleFrame:(CGRect)frame segmentationMatte:(id)matte layoutConfiguration:(id)configuration context:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  matteCopy = matte;
  contextCopy = context;
  columnAverageFilter = [MEMORY[0x1E695F648] columnAverageFilter];
  [columnAverageFilter setInputImage:matteCopy];
  [columnAverageFilter setExtent:{x, y, width, height}];
  outputImage = [columnAverageFilter outputImage];
  objc_msgSend_extent(outputImage);
  v18 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:(4 * vcvtpd_s64_f64(v17))];
  mutableBytes = [v18 mutableBytes];
  v20 = [v18 length];
  objc_msgSend_extent(outputImage);
  [contextCopy render:outputImage toBitmap:mutableBytes rowBytes:v20 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:?];
  v21 = [v18 copy];

  v22 = [v21 length];
  v23 = v22 / 4;
  bytes = [v21 bytes];
  v25 = vcvtmd_s64_f64(width);
  v26 = vcvtmd_s64_f64(midpoint - x);
  if (v26 < 1)
  {
LABEL_12:
    v27 = -1;
  }

  else
  {
    v27 = v26;
    while (1)
    {
      if (v23 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v23;
      }

      v29 = 0.0;
      if (v22 >= 4)
      {
        v30 = bytes;
        v31 = v28;
        do
        {
          v32 = *v30++;
          v29 = v29 + v32;
          --v31;
        }

        while (v31);
      }

      v33 = v29 / v28;
      if (v33 < 0.015)
      {
        break;
      }

      v34 = __OFSUB__(v27--, 1);
      if ((v27 < 0) ^ v34 | (v27 == 0))
      {
        goto LABEL_12;
      }
    }
  }

  if (v26 >= v25)
  {
    goto LABEL_27;
  }

  v35 = v25 >= v23 ? v22 / 4 : v25;
  v36 = v26;
  v37 = v35 - v26;
  v38 = (bytes + 4 * v26);
  while (1)
  {
    v39 = 0.0;
    if (v36 < v23)
    {
      v40 = v38;
      v41 = v37;
      do
      {
        v42 = *v40++;
        v39 = v39 + v42;
        --v41;
      }

      while (v41);
    }

    v43 = v39 / (v35 - v36);
    if (v43 < 0.015)
    {
      break;
    }

    ++v36;
    --v37;
    ++v38;
    if (v36 == v25)
    {
      goto LABEL_27;
    }
  }

  if (v27 == -1 || v36 == -1)
  {
LABEL_27:
    v44 = *MEMORY[0x1E695F050];
    v46 = *(MEMORY[0x1E695F050] + 8);
    v45 = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v44 = x + v27;
    v45 = (v36 - v27);
    v46 = 0.0;
  }

  v47 = v44;
  v48 = v46;
  v49 = v45;
  v50 = height;
  result.size.height = v50;
  result.size.width = v49;
  result.origin.y = v48;
  result.origin.x = v47;
  return result;
}

+ (double)computeHeadroomZoomFactorWithVisibleFrame:(CGRect)frame zoomTowardsTop:(BOOL *)top matte:(id)matte layoutConfiguration:(id)configuration context:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  matteCopy = matte;
  configurationCopy = configuration;
  contextCopy = context;
  memset(v35, 0, sizeof(v35));
  objc_msgSend_computeClockLayerOrderWithVisibleFrame_segmentationMatte_layoutConfiguration_context_interactive_(PISegmentationHelper, x, y, width, height);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MidX = CGRectGetMidX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MaxY = CGRectGetMaxY(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v20 = CGRectGetMidX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MinY = CGRectGetMinY(v39);
  v22 = 0;
  v32 = v22;
  v33 = *(v35 + 8);
  v34 = 0;
  if (self)
  {
    [self _computeHeadroomZoomFactorWithVisibleFrame:&v32 scaleCenter:matteCopy initialOverlap:configurationCopy matte:contextCopy layoutConfiguration:x context:{y, width, height, MidX, MaxY}];
    v24 = v23;
    v29 = *&v35[0];
    v30 = *(v35 + 8);
    v31 = *(&v35[1] + 1);
    [self _computeHeadroomZoomFactorWithVisibleFrame:&v29 scaleCenter:matteCopy initialOverlap:configurationCopy matte:contextCopy layoutConfiguration:x context:{y, width, height, v20, MinY}];
    v26 = *&v35[0];
  }

  else
  {

    v26 = *&v35[0];
    v29 = *&v35[0];
    v30 = *(v35 + 8);
    v31 = *(&v35[1] + 1);
    v24 = 0.0;
    v25 = 0.0;
  }

  *top = v24 > v25;
  if (v24 >= v25)
  {
    v27 = v24;
  }

  else
  {
    v27 = v25;
  }

  return v27;
}

+ (double)_computeHeadroomZoomFactorWithVisibleFrame:(CGRect)frame scaleCenter:(CGPoint)center initialOverlap:(PISegmentationClockOverlapResult *)overlap matte:(id)matte layoutConfiguration:(id)configuration context:(id)context
{
  overlapCopy = overlap;
  width = frame.size.width;
  height = frame.size.height;
  y = frame.origin.y;
  x = frame.origin.x;
  v49 = *MEMORY[0x1E69E9840];
  matteCopy = matte;
  configurationCopy = configuration;
  contextCopy = context;
  [MEMORY[0x1E69C0798] targetZoomFactorLimitWithLayoutType:{objc_msgSend(MEMORY[0x1E69C07A8], "layoutTypeFromLayoutConfiguration:", configurationCopy)}];
  v16 = v15;
  v17 = overlapCopy->var0;
  v18 = 0;
  v19 = v16 + -1.0;
  while (1)
  {
    v20 = v18 + 1;
    v21 = (v18 + 1) / 5.0 * v19 + 1.0;
    [self scaleRect:x scaleFactor:y scaleCenter:{width, height, 1.0 / v21, center.x, center.y, overlapCopy}];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = v17;
    memset(buf, 0, sizeof(buf));
    objc_msgSend_computeClockLayerOrderWithVisibleFrame_segmentationMatte_layoutConfiguration_context_interactive_(PISegmentationHelper, v23, v25, v27, v29);
    v17 = 0;

    if (([v30 isEqualToString:0] & 1) == 0)
    {
      break;
    }

    ++v18;
    if (v20 == 5)
    {
      v30 = 0;
      v31 = 0;
      v21 = -1.0;
      goto LABEL_22;
    }
  }

  v31 = *buf;

  v32 = v18 / 5.0 * v19 + 1.0;
  v33 = 3;
  do
  {
    [self scaleRect:x scaleFactor:y scaleCenter:{width, height, 1.0 / ((v21 + v32) * 0.5), center.x, center.y}];
    memset(buf, 0, sizeof(buf));
    objc_msgSend_computeClockLayerOrderWithVisibleFrame_segmentationMatte_layoutConfiguration_context_interactive_(PISegmentationHelper);
    v34 = [0 isEqualToString:v30];
    v35 = 0;
    if (v34)
    {
      v36 = v30;
    }

    else
    {
      v36 = v31;
    }

    if (v34)
    {
      v30 = v35;
    }

    else
    {
      v31 = v35;
    }

    if (v34)
    {
      v32 = (v21 + v32) * 0.5;
    }

    else
    {
      v21 = (v21 + v32) * 0.5;
    }

    --v33;
  }

  while (v33);
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_275_10504);
  }

  v37 = *MEMORY[0x1E69B3D80];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v39 = [MEMORY[0x1E696AD98] numberWithDouble:v32];
    v40 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
    *buf = 138413058;
    *&buf[4] = v39;
    *&buf[12] = 2112;
    *&buf[14] = v40;
    *&buf[22] = 2112;
    *&buf[24] = v30;
    v47 = 2112;
    v48 = v31;
    _os_log_debug_impl(&dword_1C7694000, v37, OS_LOG_TYPE_DEBUG, "Pixel-based headroom zoom final range %@,%@: %@,%@", buf, 0x2Au);
  }

  if ([v30 isEqualToString:*MEMORY[0x1E69C0B98]])
  {
    v21 = v32;
  }

LABEL_22:

  return v21;
}

+ (CGRect)scaleRect:(CGRect)rect scaleFactor:(double)factor scaleCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  height = rect.size.height;
  width = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, -center.x, -center.y);
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeScale(&v17, factor, factor);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeTranslation(&v16, x, y);
  memset(&v15, 0, sizeof(v15));
  t1 = v18;
  v12 = v17;
  CGAffineTransformConcat(&v14, &t1, &v12);
  t1 = v16;
  CGAffineTransformConcat(&v15, &v14, &t1);
  v14 = v15;
  v19.origin.x = v11;
  v19.origin.y = v10;
  v19.size.width = width;
  v19.size.height = height;
  return CGRectApplyAffineTransform(v19, &v14);
}

+ (double)computeStretchOverlapYOffsetWithVisibleFrame:(CGRect)frame imageSize:(CGSize)size segmentationMatte:(id)matte classicOverlap:(BOOL)overlap layoutConfiguration:(id)configuration context:(id)context
{
  overlapCopy = overlap;
  height = size.height;
  width = size.width;
  v13 = frame.size.height;
  v14 = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  matteCopy = matte;
  configurationCopy = configuration;
  contextCopy = context;
  v21 = 0.0;
  if ([self layoutConfigurationValidForVisibleFrame:configurationCopy layoutConfiguration:{x, y, v14, v13}])
  {
    v22 = [matteCopy imageByCroppingToRect:{0.0, 0.0, width, height}];

    [configurationCopy timeOverlapCheckTop];
    v24 = v23;
    v97 = v25;
    r2 = v13;
    v27 = v26;
    v29 = v28;
    [configurationCopy timeOverlapCheckBottom];
    v94 = v31;
    v95 = v30;
    v33 = v32;
    v35 = v34;
    v92 = x + v24 * v14;
    v36 = v27;
    v100 = y + v27 * r2;
    v96 = v29;
    objc_msgSend_extent(v22);
    v102.origin.y = 0.0;
    v102.origin.x = v92;
    v102.size.width = v14 * v97;
    v89 = x;
    v105.origin.x = x;
    v105.origin.y = y;
    v90 = v14;
    v105.size.width = v14;
    v105.size.height = r2;
    v103 = CGRectIntersection(v102, v105);
    v37 = imageDataOfRowAverages(contextCopy, v22, v103.origin.x, v103.origin.y, v103.size.width, v103.size.height);
    v38 = [v37 length];
    v39 = v38;
    if (v38 >= 0)
    {
      v40 = v38;
    }

    else
    {
      v40 = v38 + 3;
    }

    bytes = [v37 bytes];
    systemParameters = [MEMORY[0x1E69C07A0] systemParameters];
    [systemParameters targetBottomOverlap];
    v93 = v43;

    systemParameters2 = [MEMORY[0x1E69C07A0] systemParameters];
    [systemParameters2 maxBottomOverlap];
    v91 = v45;

    v46 = r2;
    [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:0 isInteractive:{v92, v100, v14 * v97, r2 * v29}];
    v101 = v47;
    v48 = 0;
    if (v39 < 4)
    {
      goto LABEL_39;
    }

    v49 = 0;
    v48 = 0;
    v50 = v40 >> 2;
    v98 = 1.0;
    v88 = 1.0 / r2;
    while (1)
    {
      if (overlapCopy)
      {
        v51 = v36 - v88;
        v52 = v33 - v88;
        v53 = v94;
        v54 = v95;
        v55 = v35;
      }

      else
      {
        [configurationCopy stretchedTimeOverlapCheckTop:v49 visibleFrame:{v89, y, v90, r2}];
        v51 = v56;
        v96 = v57;
        v46 = r2;
        [configurationCopy stretchedTimeOverlapCheckBottom:v49 visibleFrame:{v89, y, v90, r2}];
        v54 = v58;
        v52 = v59;
        v53 = v60;
        v55 = v61;
      }

      v62 = vcvtmd_s64_f64(v46 * v52);
      v63 = v62 + vcvtmd_s64_f64(v46 * v55);
      if (v63 >= v50)
      {
        v64 = v50;
      }

      else
      {
        v64 = v63;
      }

      v65 = 0.0;
      v66 = 0.0;
      v67 = v64 - v62;
      if (v64 > v62)
      {
        v68 = v64 - v62;
        v69 = (bytes + 4 * v62);
        do
        {
          v70 = *v69++;
          v66 = v66 + v70;
          --v68;
        }

        while (v68);
      }

      v71 = vcvtmd_s64_f64(v46 * v51);
      v72 = v71 + vcvtmd_s64_f64(v46 * v96);
      if (v72 >= v50)
      {
        v73 = v50;
      }

      else
      {
        v73 = v72;
      }

      v74 = v73 - v71;
      if (v73 > v71)
      {
        v75 = v73 - v71;
        v65 = 0.0;
        v76 = (bytes + 4 * v71);
        do
        {
          v77 = *v76++;
          v65 = v65 + v77;
          --v75;
        }

        while (v75);
      }

      v78 = v66 / v67;
      v79 = v78;
      v80 = v65 / v74;
      v81 = v80;
      v82 = vabdd_f64(v79, v93);
      v83 = v79 > 0.01;
      if (v101 <= v81)
      {
        v83 = 0;
      }

      v84 = v98;
      v85 = v82 < v98;
      if (v83 && v85)
      {
        v84 = v82;
      }

      v98 = v84;
      if (v83 && v85)
      {
        v48 = v49;
      }

      if (v93 <= v79 && v91 > v79 && v101 > v81)
      {
        break;
      }

      v104.origin.x = v54;
      v104.origin.y = v52;
      v104.size.width = v53;
      v104.size.height = v55;
      if (CGRectIsNull(v104))
      {
        goto LABEL_39;
      }

      [configurationCopy maxStrechAmountNormalized];
      if (v46 * v86 < v49 || v101 < v81)
      {
        if (v48)
        {
          v49 = v48;
        }

        break;
      }

      v35 = v55;
      v94 = v53;
      v95 = v54;
      v33 = v52;
      v36 = v51;
      if (++v49 == v50)
      {
        goto LABEL_39;
      }
    }

    if (!v49)
    {
LABEL_39:
      v49 = v48;
    }

    v21 = v49;

    matteCopy = v22;
  }

  return v21;
}

+ (double)computeAvoidOverlapYOffsetWithVisibleFrame:(CGRect)frame imageSize:(CGSize)size segmentationMatte:(id)matte layoutConfiguration:(id)configuration outputUnsafeOverlap:(double *)overlap context:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v103 = *MEMORY[0x1E69E9840];
  matteCopy = matte;
  configurationCopy = configuration;
  contextCopy = context;
  if (!matteCopy)
  {
    v86 = NUAssertLogger_10509();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      v87 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "segmentationMatte != nil"];
      *buf = 138543362;
      v100 = v87;
      _os_log_error_impl(&dword_1C7694000, v86, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v88 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v90 = NUAssertLogger_10509();
    v91 = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v91)
      {
        v94 = dispatch_get_specific(*v88);
        v95 = MEMORY[0x1E696AF00];
        v96 = v94;
        callStackSymbols = [v95 callStackSymbols];
        v98 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v100 = v94;
        v101 = 2114;
        v102 = v98;
        _os_log_error_impl(&dword_1C7694000, v90, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v91)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v93 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v100 = v93;
      _os_log_error_impl(&dword_1C7694000, v90, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v19 = contextCopy;
  v20 = 0.0;
  if ([self layoutConfigurationValidForVisibleFrame:configurationCopy layoutConfiguration:{x, y, width, height}])
  {
    [configurationCopy timeOverlapCheckBottom];
    v22 = x + v21 * width;
    v24 = width * v23;
    objc_msgSend_extent(matteCopy);
    v26 = imageDataOfRowAverages(v19, matteCopy, v22, 0.0, v24, v25);
    v27 = [v26 length];
    if (v27 >= 0)
    {
      v28 = v27;
    }

    else
    {
      v28 = v27 + 3;
    }

    v29 = v28 >> 2;
    bytes = [v26 bytes];
    v31 = vcvtmd_s64_f64(height);
    [configurationCopy unsafeRect];
    v33 = vcvtmd_s64_f64(height * v32);
    v35 = vcvtmd_s64_f64(height * v34);
    if (v28 >> 2 >= y)
    {
      v36 = y;
    }

    else
    {
      v36 = v28 >> 2;
    }

    v37 = v36 & ~(v36 >> 31);
    v38 = -1.0;
    v39 = 0;
    if ((v37 + v31) >= v28 >> 2)
    {
      v55 = 0;
      v44 = 10.0;
    }

    else
    {
      v40 = v33 + v35 + v37;
      v41 = v33 + v37;
      v42 = -v41;
      v43 = (bytes + 4 * v41);
      v44 = 10.0;
      v45 = v36 & ~(v36 >> 31);
      while (1)
      {
        if (v29 >= v40)
        {
          v46 = v40;
        }

        else
        {
          v46 = v29;
        }

        v47 = v45 + v33;
        v48 = v45 + v33 + v35;
        if (v48 >= v29)
        {
          v48 = v28 >> 2;
        }

        v49 = 0.0;
        if (v47 < v48)
        {
          v50 = v46 + v42;
          v51 = v43;
          do
          {
            v52 = *v51++;
            v49 = v49 + v52;
            --v50;
          }

          while (v50);
        }

        v53 = v49 / (v48 - v47);
        v54 = v53;
        if (v54 < 0.01)
        {
          break;
        }

        if (v44 > v54)
        {
          v39 = v45 - v37;
        }

        ++v45;
        if (v44 > v54)
        {
          v44 = v54;
        }

        ++v40;
        --v42;
        ++v43;
        if (v45 >= v29 - v31)
        {
          v55 = 0;
          goto LABEL_28;
        }
      }

      v55 = v45 - v37;
      v38 = v54;
    }

LABEL_28:
    if (v36 < 1)
    {
LABEL_43:
      v71 = 0;
      v72 = 0;
      v73 = v55 != 0;
      v69 = -1.0;
    }

    else
    {
      v56 = v33 + v35 + v37;
      v57 = v33 + v37;
      v58 = -v57;
      v59 = (bytes + 4 * v57);
      v60 = v36 & ~(v36 >> 31);
      while (1)
      {
        if (v29 >= v56)
        {
          v61 = v56;
        }

        else
        {
          v61 = v29;
        }

        v62 = v60 + v33;
        v63 = v60 + v33 + v35;
        if (v63 >= v29)
        {
          v63 = v28 >> 2;
        }

        v64 = 0.0;
        if (v62 < v63)
        {
          v65 = v61 + v58;
          v66 = v59;
          do
          {
            v67 = *v66++;
            v64 = v64 + v67;
            --v65;
          }

          while (v65);
        }

        v68 = v64 / (v63 - v62);
        v69 = v68;
        if (v69 < 0.01)
        {
          break;
        }

        if (v44 > v69)
        {
          v39 = v60 - v37;
          v44 = v69;
        }

        --v56;
        --v59;
        ++v58;
        if (v60-- <= 1)
        {
          goto LABEL_43;
        }
      }

      v72 = v60 - v37;
      v71 = v72 != 0;
      v73 = v55 != 0;
      if (v72 && v55)
      {
        if (v72 >= 0)
        {
          v84 = v72;
        }

        else
        {
          v84 = -v72;
        }

        if (v55 >= 0)
        {
          v85 = v55;
        }

        else
        {
          v85 = -v55;
        }

        if (v84 < v85)
        {
          v38 = v69;
          v55 = v72;
        }

        if (!overlap)
        {
          goto LABEL_59;
        }

LABEL_58:
        *overlap = v38;
LABEL_59:
        v20 = v55;

        goto LABEL_60;
      }
    }

    if (!v73)
    {
      v38 = v69;
      v55 = v72;
    }

    if (!v73 && !v71)
    {
      v38 = v44;
      v55 = v39;
      if (v44 >= 0.5)
      {
        v74 = v37 + v33;
        if ((v74 + v35) >= v29)
        {
          v75 = v28 >> 2;
        }

        else
        {
          v75 = v74 + v35;
        }

        v76 = 0.0;
        v77 = v75 - v74;
        if (v75 > v74)
        {
          v78 = v74 - v75;
          v79 = (bytes + 4 * v74);
          do
          {
            v80 = *v79++;
            v76 = v76 + v80;
          }

          while (!__CFADD__(v78++, 1));
        }

        v55 = 0;
        v82 = v76 / v77;
        v38 = v82;
      }
    }

    if (!overlap)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

LABEL_60:

  return v20;
}

+ (double)computeTargetOverlapYOffsetWithVisibleFrame:(CGRect)frame imageSize:(CGSize)size segmentationMatte:(id)matte layoutConfiguration:(id)configuration context:(id)context
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  matteCopy = matte;
  configurationCopy = configuration;
  contextCopy = context;
  v17 = 0.0;
  if ([self layoutConfigurationValidForVisibleFrame:configurationCopy layoutConfiguration:{x, y, width, height}])
  {
    [configurationCopy timeOverlapCheckBottom];
    v19 = v18;
    v123 = v20;
    v125 = configurationCopy;
    [configurationCopy timeOverlapCheckTop];
    v22 = v21;
    v24 = x + v23 * width;
    v124 = y + v21 * height;
    v26 = width * v25;
    v28 = height * v27;
    objc_msgSend_extent(matteCopy);
    v127 = contextCopy;
    v128 = matteCopy;
    v30 = imageDataOfRowAverages(contextCopy, matteCopy, v24, 0.0, v26, v29);
    v31 = [v30 length];
    if (v31 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 + 3;
    }

    v33 = v32 >> 2;
    v126 = v30;
    bytes = [v30 bytes];
    v35 = vcvtmd_s64_f64(height);
    v36 = vcvtmd_s64_f64(height * v19);
    v37 = vcvtmd_s64_f64(height * v123);
    v38 = vcvtmd_s64_f64(height * v22);
    v39 = vcvtmd_s64_f64(v28);
    systemParameters = [MEMORY[0x1E69C07A0] systemParameters];
    [systemParameters targetBottomOverlap];
    v42 = v41;

    systemParameters2 = [MEMORY[0x1E69C07A0] systemParameters];
    [systemParameters2 maxBottomOverlap];
    v45 = v44;

    [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:0 isInteractive:{v24, v124, v26, v28}];
    if (v32 >> 2 >= y)
    {
      v47 = y;
    }

    else
    {
      v47 = v32 >> 2;
    }

    v48 = v47 & ~(v47 >> 31);
    v49 = &qword_1C7845000;
    if (v48 + v35 >= v32 >> 2)
    {
      v84 = 0;
      v50 = 0;
      v61 = 1.0;
      v53 = v36;
      configurationCopy = v125;
    }

    else
    {
      v50 = 0;
      v51 = v36;
      v52 = v33 - v35;
      v53 = v36;
      v54 = v36 + v37 + v48;
      v55 = v36 + v48;
      v56 = -v55;
      v57 = (bytes + 4 * v55);
      v58 = v38 + v39 + v48;
      v59 = v38 + v48;
      v60 = -v59;
      v61 = 1.0;
      v62 = v47 & ~(v47 >> 31);
      v63 = (bytes + 4 * v59);
      configurationCopy = v125;
      while (1)
      {
        if (v33 >= v58)
        {
          v64 = v58;
        }

        else
        {
          v64 = v33;
        }

        if (v33 >= v54)
        {
          v65 = v54;
        }

        else
        {
          v65 = v33;
        }

        v66 = v62 + v51;
        v67 = v62 + v51 + v37;
        if (v67 >= v33)
        {
          v67 = v33;
        }

        v68 = 0.0;
        v69 = 0.0;
        if (v66 < v67)
        {
          v70 = v65 + v56;
          v71 = v57;
          do
          {
            v72 = *v71++;
            v69 = v69 + v72;
            --v70;
          }

          while (v70);
        }

        v73 = v62 + v38;
        if ((v62 + v38 + v39) >= v33)
        {
          v74 = v33;
        }

        else
        {
          v74 = v62 + v38 + v39;
        }

        if (v73 < v74)
        {
          v75 = v64 + v60;
          v68 = 0.0;
          v76 = v63;
          do
          {
            v77 = *v76++;
            v68 = v68 + v77;
            --v75;
          }

          while (v75);
        }

        v78 = v69 / (v67 - v66);
        v79 = v78;
        v80 = v68 / (v74 - v73);
        v81 = v80;
        v82 = vabdd_f64(v79, v42);
        v83 = v46 > v81 && v79 > 0.01;
        v84 = v62 - v48;
        if (v83 && v82 < v61)
        {
          v61 = v82;
          v50 = v62 - v48;
        }

        if (v42 <= v79 && v45 > v79 && v46 > v81 && v82 < 0.01)
        {
          break;
        }

        ++v62;
        ++v54;
        --v56;
        ++v57;
        ++v58;
        --v60;
        ++v63;
        if (v62 >= v52)
        {
          v84 = 0;
          break;
        }
      }

      v49 = &qword_1C7845000;
    }

    matteCopy = v128;
    if (v47 < 1)
    {
LABEL_71:
      v117 = 0;
    }

    else
    {
      v85 = v53;
      v86 = v38;
      v87 = v53 + v37 + v48;
      v88 = v53 + v48;
      v89 = -v88;
      v90 = (bytes + 4 * v88);
      v91 = v38 + v39 + v48;
      v92 = v38 + v48;
      v93 = -v92;
      v94 = *(v49 + 77);
      v95 = v48;
      v96 = (bytes + 4 * v92);
      while (1)
      {
        if (v33 >= v91)
        {
          v97 = v91;
        }

        else
        {
          v97 = v33;
        }

        if (v33 >= v87)
        {
          v98 = v87;
        }

        else
        {
          v98 = v33;
        }

        v99 = v95 + v85;
        v100 = v95 + v85 + v37;
        if (v100 >= v33)
        {
          v100 = v33;
        }

        v101 = 0.0;
        v102 = 0.0;
        if (v99 < v100)
        {
          v103 = v98 + v89;
          v104 = v90;
          do
          {
            v105 = *v104++;
            v102 = v102 + v105;
            --v103;
          }

          while (v103);
        }

        v106 = v95 + v86;
        v107 = v95 + v86 + v39;
        if (v107 >= v33)
        {
          v107 = v33;
        }

        if (v106 < v107)
        {
          v108 = v97 + v93;
          v101 = 0.0;
          v109 = v96;
          do
          {
            v110 = *v109++;
            v101 = v101 + v110;
            --v108;
          }

          while (v108);
        }

        v111 = v102 / (v100 - v99);
        v112 = v111;
        v113 = v101 / (v107 - v106);
        v114 = v113;
        v115 = vabdd_f64(v112, v42);
        v116 = v46 > v114 && v112 > v94;
        v117 = v95 - v48;
        v118 = v116 && v115 < v61;
        if (v118)
        {
          v50 = v95 - v48;
        }

        if (v42 <= v112 && v45 > v112 && v46 > v114 && v115 < v94)
        {
          break;
        }

        if (v118)
        {
          v61 = v115;
        }

        --v87;
        --v90;
        --v91;
        --v96;
        ++v89;
        ++v93;
        if (v95-- <= 1)
        {
          goto LABEL_71;
        }
      }
    }

    if (v84)
    {
      v120 = 1;
    }

    else
    {
      v120 = v117 == 0;
    }

    if (!v120)
    {
      v50 = v117;
    }

    if (v117)
    {
      v121 = 1;
    }

    else
    {
      v121 = v84 == 0;
    }

    if (!v121)
    {
      v50 = v84;
    }

    v17 = v50;

    contextCopy = v127;
  }

  return v17;
}

+ (BOOL)layoutConfigurationValidForVisibleFrame:(CGRect)frame layoutConfiguration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [configuration timeRect];
  v9 = x + v8 * width;
  v11 = y + v10 * height;
  v13 = width * v12;
  v15 = height * v14;
  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;

  return CGRectContainsRect(*&v16, *&v9);
}

+ (double)computeMatteCoverageWithRect:(CGRect)rect segmentationMatte:(id)matte context:(id)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  contextCopy = context;
  v11 = [matte imageByCroppingToRect:{x, y, width, height}];
  areaAverageFilter = [MEMORY[0x1E695F648] areaAverageFilter];
  [areaAverageFilter setInputImage:v11];
  [areaAverageFilter setExtent:{x, y, width, height}];
  v16 = 0.0;
  outputImage = [areaAverageFilter outputImage];
  [contextCopy render:outputImage toBitmap:&v16 rowBytes:4 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];

  v14 = v16;
  return v14;
}

+ (double)computeAlphaCoverageWithRect:(CGRect)rect foregroundImage:(id)image context:(id)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v11 = [image imageByCroppingToRect:{x, y, width, height}];
  areaAverageFilter = [MEMORY[0x1E695F648] areaAverageFilter];
  [areaAverageFilter setInputImage:v11];
  [areaAverageFilter setExtent:{x, y, width, height}];
  v15 = 0;
  v16 = 0;
  outputImage = [areaAverageFilter outputImage];
  [contextCopy render:outputImage toBitmap:&v15 rowBytes:16 bounds:*MEMORY[0x1E695F918] format:0 colorSpace:{0.0, 0.0, 1.0, 1.0}];

  LODWORD(height) = HIDWORD(v16);
  return *&height;
}

+ (PISegmentationClockOverlapResult)computeClockLayerOrderWithAdaptiveTimeRect:(SEL)rect visibleFrame:(CGRect)frame segmentationMatte:(CGRect)matte layoutConfiguration:(id)configuration context:(id)context interactive:(id)interactive
{
  v9 = a9;
  height = matte.size.height;
  width = matte.size.width;
  x = matte.origin.x;
  y = matte.origin.y;
  v14 = frame.size.height;
  v15 = frame.size.width;
  v16 = frame.origin.y;
  v17 = frame.origin.x;
  configurationCopy = configuration;
  interactiveCopy = interactive;
  contextCopy = context;
  [contextCopy timeOverlapCheckBottomForTimeRect:{v17, v16, v15, v14}];
  v22 = v21;
  v24 = v23;
  v61 = v26;
  v62 = v25;
  [contextCopy timeOverlapCheckTopForTimeRect:{v17, v16, v15, v14}];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = x + v22 * width;
  v36 = y + v24 * height;
  v37 = width * v62;
  v38 = x + v28 * width;
  v39 = y + v30 * height;
  v40 = width * v32;
  v41 = height * v34;
  [PISegmentationHelper computeMatteCoverageWithRect:configurationCopy segmentationMatte:interactiveCopy context:v35, v36, v37, height * v61];
  v43 = v42;
  v44 = *MEMORY[0x1E69C0B98];
  systemParameters = [MEMORY[0x1E69C07A0] systemParameters];
  [systemParameters maxBottomOverlap];
  v47 = v46;

  v48 = MEMORY[0x1E69C0BA0];
  v49 = v44;
  if (v43 > v47)
  {
    v49 = *MEMORY[0x1E69C0BA0];
  }

  [PISegmentationHelper computeMatteCoverageWithRect:configurationCopy segmentationMatte:interactiveCopy context:v38, v39, v40, v41];
  v51 = v50;
  [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:0 isInteractive:{v38, v39, v40, v41}];
  if (v51 > v52)
  {
    v53 = *v48;

    v49 = v53;
  }

  v54 = [MEMORY[0x1E69C07A8] clockIntersectionFromTopRectMatteCoverage:v51 bottomRectMatteCoverage:v43];
  [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:1 isInteractive:{v38, v39, v40, v41}];
  v56 = v55;
  v57 = v44;
  if (v51 > v56)
  {
    v58 = *v48;

    v54 = 3;
    v57 = v58;
  }

  if (v9)
  {
    v59 = v57;
  }

  else
  {
    v59 = v49;
  }

  retstr->var0 = v59;
  retstr->var1 = v54;
  retstr->var2 = v43;
  retstr->var3 = v51;

  return result;
}

+ (PISegmentationClockOverlapResult)computeClockLayerOrderWithVisibleFrame:(SEL)frame segmentationMatte:(CGRect)matte layoutConfiguration:(id)configuration context:(id)context interactive:(id)interactive
{
  v8 = a8;
  height = matte.size.height;
  width = matte.size.width;
  y = matte.origin.y;
  x = matte.origin.x;
  configurationCopy = configuration;
  interactiveCopy = interactive;
  contextCopy = context;
  [contextCopy timeOverlapCheckBottom];
  v55 = y + v19 * height;
  v56 = x + v18 * width;
  v53 = height * v21;
  v54 = width * v20;
  [contextCopy timeOverlapCheckTop];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  v30 = x + v23 * width;
  v31 = y + v25 * height;
  v32 = width * v27;
  v33 = height * v29;
  [PISegmentationHelper computeMatteCoverageWithRect:configurationCopy segmentationMatte:interactiveCopy context:v56, v55, v54, v53];
  v35 = v34;
  v36 = *MEMORY[0x1E69C0B98];
  systemParameters = [MEMORY[0x1E69C07A0] systemParameters];
  [systemParameters maxBottomOverlap];
  v39 = v38;

  v40 = MEMORY[0x1E69C0BA0];
  v41 = v36;
  if (v35 > v39)
  {
    v41 = *MEMORY[0x1E69C0BA0];
  }

  [PISegmentationHelper computeMatteCoverageWithRect:configurationCopy segmentationMatte:interactiveCopy context:v30, v31, v32, v33];
  v43 = v42;
  [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:0 isInteractive:{v30, v31, v32, v33}];
  if (v43 > v44)
  {
    v45 = *v40;

    v41 = v45;
  }

  v46 = [MEMORY[0x1E69C07A8] clockIntersectionFromTopRectMatteCoverage:v43 bottomRectMatteCoverage:v35];
  [MEMORY[0x1E69C07A8] timeOverlapCheckThresholdForTopRect:1 isInteractive:{v30, v31, v32, v33}];
  v48 = v47;
  v49 = v36;
  if (v43 > v48)
  {
    v50 = *v40;

    v46 = 3;
    v49 = v50;
  }

  if (v8)
  {
    v51 = v49;
  }

  else
  {
    v51 = v41;
  }

  retstr->var0 = v51;
  retstr->var1 = v46;
  retstr->var2 = v35;
  retstr->var3 = v43;

  return result;
}

+ (BOOL)topEdgeHasNoContactWithInspectionMatte:(id)matte context:(id)context
{
  contextCopy = context;
  matteCopy = matte;
  objc_msgSend_extent(matteCopy);
  v8 = v7;
  v10 = v9;
  v12 = v11 + -5.0;
  areaAverageFilter = [MEMORY[0x1E695F648] areaAverageFilter];
  [areaAverageFilter setInputImage:matteCopy];

  [areaAverageFilter setExtent:{v8, v12, v10, 5.0}];
  outputImage = [areaAverageFilter outputImage];
  v16 = 0.0;
  [contextCopy render:outputImage toBitmap:&v16 rowBytes:4 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:{*MEMORY[0x1E69BDDA8], *(MEMORY[0x1E69BDDA8] + 8), *(MEMORY[0x1E69BDDA8] + 16), *(MEMORY[0x1E69BDDA8] + 24)}];

  LOBYTE(contextCopy) = v16 < 0.025;
  return contextCopy;
}

+ (float)groundedScoreForSegmentationMatte:(id)matte context:(id)context
{
  contextCopy = context;
  matteCopy = matte;
  objc_msgSend_extent(matteCopy);
  v8 = v7;
  v10 = v9 + v7 * 0.0;
  v13 = v11 + v12 * 0.0;
  v14 = v12 * 0.05;
  areaAverageFilter = [MEMORY[0x1E695F648] areaAverageFilter];
  [areaAverageFilter setInputImage:matteCopy];

  [areaAverageFilter setExtent:{v10, v13, v8, v14}];
  outputImage = [areaAverageFilter outputImage];
  v18 = 0;
  [contextCopy render:outputImage toBitmap:&v18 rowBytes:4 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:{*MEMORY[0x1E69BDDA8], *(MEMORY[0x1E69BDDA8] + 8), *(MEMORY[0x1E69BDDA8] + 16), *(MEMORY[0x1E69BDDA8] + 24)}];

  LODWORD(v8) = v18;
  return *&v8;
}

+ (id)localConfidenceImage:(id)image
{
  imageCopy = image;
  v4 = [imageCopy imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&unk_1F471FF28];
  v5 = [imageCopy imageByApplyingFilter:@"CIColorThreshold" withInputParameters:&unk_1F471FF50];

  v6 = [v5 imageByApplyingFilter:@"CIColorInvert"];

  multiplyCompositingFilter = [MEMORY[0x1E695F648] multiplyCompositingFilter];
  [multiplyCompositingFilter setInputImage:v4];
  [multiplyCompositingFilter setBackgroundImage:v6];
  outputImage = [multiplyCompositingFilter outputImage];
  v9 = [PISegmentationHelper openMask:outputImage withRadius:10.0];

  return v9;
}

+ (float)localConfidenceScoreForLocalConfidenceImage:(id)image extent:(CGRect)extent context:(id)context
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v10 = MEMORY[0x1E695F648];
  contextCopy = context;
  imageCopy = image;
  areaAverageFilter = [v10 areaAverageFilter];
  [areaAverageFilter setInputImage:imageCopy];

  [areaAverageFilter setExtent:{x, y, width, height}];
  outputImage = [areaAverageFilter outputImage];
  v16 = 0.0;
  [contextCopy render:outputImage toBitmap:&v16 rowBytes:4 bounds:*MEMORY[0x1E695F8C8] format:0 colorSpace:{*MEMORY[0x1E69BDDA8], *(MEMORY[0x1E69BDDA8] + 8), *(MEMORY[0x1E69BDDA8] + 16), *(MEMORY[0x1E69BDDA8] + 24)}];

  *&height = 1.0 - v16;
  return *&height;
}

+ (PISegmentationBimodalScore)bimodalScoreForHistogram:(id)histogram
{
  if (histogram)
  {
    histogramCopy = histogram;
    [histogramCopy threshold:0.03];
    *&v4 = v4;
    v21 = 1.0 - *&v4;
    [histogramCopy threshold:0.97];
    v6 = v5;

    v7 = v21;
    v8 = v6;
    v9 = fmaxf(fminf(v8 * 4.0, 1.0), 0.0);
    v10.f32[0] = v21;
    v10.f32[1] = (v21 + v8) + -0.5;
    v11 = vmul_f32(v10, 0x4000000040800000);
    __asm { FMOV            V3.2S, #1.0 }

    v17 = vmaxnm_f32(vminnm_f32(v11, _D3), 0);
    __asm { FMOV            V5.2S, #3.0 }

    v19 = vmul_f32(vmul_f32(v17, v17), vmla_f32(_D5, 0xC0000000C0000000, v17));
    v20 = vmuls_lane_f32(((v9 * v9) * ((v9 * -2.0) + 3.0)) * v19.f32[0], v19, 1);
  }

  else
  {
    v8 = 0.0;
    v7 = 0.0;
    v20 = 0.0;
  }

  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v20;
  return result;
}

+ (BOOL)matteHistogramIndicatesSubjectDetected:(id)detected
{
  if (!detected)
  {
    return 0;
  }

  [detected threshold:0.6];
  return v3 > 0.02;
}

+ (id)upsampleBackgroundImage:(id)image toSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  if (imageCopy)
  {
    v7 = imageCopy;
    objc_msgSend_extent(imageCopy);
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, width / v8, height / v9);
    v12 = v13;
    v10 = [v7 imageByApplyingTransform:&v12 highQualityDownsample:1];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)upsampleMatteImage:(id)image guideImage:(id)guideImage
{
  v19[3] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  guideImageCopy = guideImage;
  if (imageCopy)
  {
    objc_msgSend_extent(imageCopy);
    v8 = v7;
    v10 = v9;
    objc_msgSend_extent(guideImageCopy);
    if (v8 != v12 || v10 != v11)
    {
      v18[0] = @"inputSmallImage";
      v18[1] = @"inputSpatialSigma";
      v19[0] = imageCopy;
      v19[1] = &unk_1F471F660;
      v18[2] = @"inputLumaSigma";
      v19[2] = &unk_1F471F670;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
      v15 = [guideImageCopy imageByApplyingFilter:@"CIEdgePreserveUpsampleFilter" withInputParameters:v14];

      imageByClampingToExtent = [v15 imageByClampingToExtent];
      objc_msgSend_extent(v15);
      imageCopy = [imageByClampingToExtent imageByCroppingToRect:?];
    }
  }

  return imageCopy;
}

+ (id)backgroundForImage:(id)image matte:(id)matte infill:(id)infill
{
  infillCopy = infill;
  imageCopy = image;
  v10 = [self infillMaskForSegmentationMatte:matte];
  objc_msgSend_extent(imageCopy);
  v13 = [self upsampleBackgroundImage:v10 toSize:{v11, v12}];

  objc_msgSend_extent(imageCopy);
  v16 = [self upsampleBackgroundImage:infillCopy toSize:{v14, v15}];

  blendWithMaskFilter = [MEMORY[0x1E695F648] blendWithMaskFilter];
  [blendWithMaskFilter setBackgroundImage:imageCopy];

  [blendWithMaskFilter setInputImage:v16];
  [blendWithMaskFilter setMaskImage:v13];
  outputImage = [blendWithMaskFilter outputImage];

  return outputImage;
}

+ (id)backgroundForImage:(id)image matte:(id)matte
{
  matteCopy = matte;
  imageCopy = image;
  objc_msgSend_extent(imageCopy);
  v10 = [self upsampleBackgroundImage:matteCopy toSize:{v8, v9}];

  blendWithMaskFilter = [MEMORY[0x1E695F648] blendWithMaskFilter];
  [blendWithMaskFilter setBackgroundImage:imageCopy];

  [blendWithMaskFilter setInputImage:0];
  [blendWithMaskFilter setMaskImage:v10];
  outputImage = [blendWithMaskFilter outputImage];

  return outputImage;
}

+ (id)foregroundForImage:(id)image matte:(id)matte
{
  imageCopy = image;
  v7 = [self upsampleMatteImage:matte guideImage:imageCopy];
  blendWithMaskFilter = [MEMORY[0x1E695F648] blendWithMaskFilter];
  [blendWithMaskFilter setBackgroundImage:0];
  [blendWithMaskFilter setInputImage:imageCopy];

  [blendWithMaskFilter setMaskImage:v7];
  outputImage = [blendWithMaskFilter outputImage];

  return outputImage;
}

+ (id)invertImage:(id)image
{
  v3 = MEMORY[0x1E695F648];
  imageCopy = image;
  colorInvertFilter = [v3 colorInvertFilter];
  [colorInvertFilter setInputImage:imageCopy];

  outputImage = [colorInvertFilter outputImage];

  return outputImage;
}

+ (id)openMask:(id)mask withRadius:(double)radius
{
  maskCopy = mask;
  objc_msgSend_extent(maskCopy);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  imageByClampingToExtent = [maskCopy imageByClampingToExtent];

  morphologyMinimumFilter = [MEMORY[0x1E695F648] morphologyMinimumFilter];
  *&radius = radius;
  LODWORD(v16) = LODWORD(radius);
  [morphologyMinimumFilter setRadius:v16];
  [morphologyMinimumFilter setInputImage:imageByClampingToExtent];
  morphologyMaximumFilter = [MEMORY[0x1E695F648] morphologyMaximumFilter];
  outputImage = [morphologyMinimumFilter outputImage];
  [morphologyMaximumFilter setInputImage:outputImage];

  LODWORD(v19) = LODWORD(radius);
  [morphologyMaximumFilter setRadius:v19];
  outputImage2 = [morphologyMaximumFilter outputImage];
  v21 = [outputImage2 imageByCroppingToRect:{v7, v9, v11, v13}];

  return v21;
}

+ (id)erodeMask:(id)mask withRadius:(double)radius
{
  v5 = MEMORY[0x1E695F648];
  maskCopy = mask;
  morphologyMinimumFilter = [v5 morphologyMinimumFilter];
  *&v8 = radius;
  [morphologyMinimumFilter setRadius:v8];
  [morphologyMinimumFilter setInputImage:maskCopy];
  outputImage = [morphologyMinimumFilter outputImage];
  objc_msgSend_extent(maskCopy);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [outputImage imageByCroppingToRect:{v11, v13, v15, v17}];

  return v18;
}

+ (id)dilateMask:(id)mask withRadius:(double)radius
{
  v5 = MEMORY[0x1E695F648];
  maskCopy = mask;
  morphologyMaximumFilter = [v5 morphologyMaximumFilter];
  *&v8 = radius;
  [morphologyMaximumFilter setRadius:v8];
  [morphologyMaximumFilter setInputImage:maskCopy];
  outputImage = [morphologyMaximumFilter outputImage];
  objc_msgSend_extent(maskCopy);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v18 = [outputImage imageByCroppingToRect:{v11, v13, v15, v17}];

  return v18;
}

+ (id)thresholdImage:(id)image withThreshold:(double)threshold
{
  v5 = MEMORY[0x1E695F648];
  imageCopy = image;
  colorThresholdFilter = [v5 colorThresholdFilter];
  *&v8 = threshold;
  [colorThresholdFilter setThreshold:v8];
  [colorThresholdFilter setInputImage:imageCopy];

  outputImage = [colorThresholdFilter outputImage];

  return outputImage;
}

+ (id)imageWithColor:(id)color extent:(CGRect)extent
{
  height = extent.size.height;
  width = extent.size.width;
  y = extent.origin.y;
  x = extent.origin.x;
  v8 = MEMORY[0x1E695F648];
  colorCopy = color;
  v10 = [v8 filterWithName:@"CIConstantColorGenerator"];
  [v10 setValue:colorCopy forKey:*MEMORY[0x1E695FA78]];

  outputImage = [v10 outputImage];
  v12 = [outputImage imageByCroppingToRect:{x, y, width, height}];

  return v12;
}

+ (id)infillMaskForSegmentationMatte:(id)matte
{
  matteCopy = matte;
  v4 = [PISegmentationHelper thresholdImage:matteCopy withThreshold:0.1];
  v5 = +[PIGlobalSettings globalSettings];
  [v5 segmentationInfillDilationPercent];
  v7 = v6;

  if (v7 > 0.0)
  {
    objc_msgSend_extent(matteCopy);
    if (v8 >= v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    v11 = [PISegmentationHelper dilateMask:v4 withRadius:v7 * v10];

    v4 = v11;
  }

  return v4;
}

+ (id)imageFromImageLayer:(id)layer
{
  v3 = MEMORY[0x1E695DF90];
  layerCopy = layer;
  dictionary = [v3 dictionary];
  image = [layerCopy image];

  v7 = CVBufferCopyAttachment(image, *MEMORY[0x1E6965CC0], 0);
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isEqualToString:*MEMORY[0x1E6965CD0]];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:v9 ^ 1u];
    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E695F9C8]];
  }

  v11 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:image options:dictionary];

  return v11;
}

@end