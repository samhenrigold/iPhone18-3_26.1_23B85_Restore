@interface PFCropUtilities
+ (BOOL)_rectIsValid:(CGRect)valid;
+ (CGFloat)_interpolationV2ScoreForFocusRegion:(double)region insideCropRect:(double)rect withImportantRect:(double)importantRect;
+ (CGPoint)_translationToIncludeRect:(CGRect)rect insideRect:(CGRect)insideRect;
+ (CGRect)_faceAreaRectWithPadding:(CGRect)padding;
+ (CGRect)bestCropRectV2ForAspectRatio:(double)ratio sourcePixelWidth:(unint64_t)width sourcePixelHeight:(unint64_t)height sourceEssentialAreaRect:(CGRect)rect sourceSecondaryEssentialAreaRect:(CGRect)areaRect;
+ (CGRect)bestCropRectV2ForAspectRatio:(double)ratio sourcePixelWidth:(unint64_t)width sourcePixelHeight:(unint64_t)height sourceEssentialAreaRect:(CGRect)rect sourceSecondaryEssentialAreaRect:(CGRect)areaRect outputCropScore:(double *)score;
+ (CGRect)bestCropRectV2ForAspectRatio:(double)ratio zoom:(double)zoom sourcePixelWidth:(unint64_t)width sourcePixelHeight:(unint64_t)height sourceEssentialAreaRect:(CGRect)rect sourceSecondaryEssentialAreaRect:(CGRect)areaRect outputCropScore:(double *)score;
+ (CGSize)_interpolationCropSizeForRatio:(double)ratio andZoom:(double)zoom forImageSize:(CGSize)size;
+ (PFCropUtilitiesPosterOutputData)bestAdaptiveCropRectForPosterClassification:(double)classification layoutConfiguration:(double)configuration sourcePixelWidth:(double)width sourcePixelHeight:(double)height sourcePreferredCropRectNormalized:(double)normalized sourceAcceptableCropRectNormalized:(double)rectNormalized sourceFaceAreaRectNormalized:(uint64_t)areaRectNormalized headroomFeasible:(uint64_t)self0;
+ (double)_interpolationCropToSize:(double)size withinRect:(double)rect withPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect outputScore:(uint64_t)score;
+ (double)_interpolationFactorFor:(double)for between:(double)between and:(double)and;
+ (double)_interpolationV2AdjustedCrop:(double)crop toFocusRegion:(double)region withFullsizeRect:(double)rect andImportantRect:(double)importantRect;
+ (double)_interpolationV2CropForAspectRatio:(double)ratio withFocusRegion:(double)region andAcceptableRect:(double)rect andPreferredRect:(uint64_t)preferredRect andImageRect:(uint64_t)imageRect outputCropScore:(double *)score;
+ (double)_rectDimensionOffset:(CGRect)offset insideRect:(CGRect)rect forEdge:(unsigned int)edge;
+ (double)_rectDimensionSize:(CGRect)size forEdge:(unsigned int)edge;
+ (double)bestCropRectV2ForPosterClassification:(uint64_t)classification layoutConfiguration:(uint64_t)configuration sourcePixelWidth:(uint64_t)width sourcePixelHeight:(uint64_t)height sourcePreferredCropRectNormalized:(void *)normalized sourceAcceptableCropRectNormalized:(void *)rectNormalized sourceFaceAreaRectNormalized:(__int128)areaRectNormalized outputCropScore:(uint64_t)self0 outputLayoutScore:(uint64_t)self1 outputClockOverlapAcceptable:(_BYTE *)self2;
+ (void)_interpolationCropForAspectRatio:(uint64_t)ratio andZoom:(uint64_t)zoom acceptableRect:(uint64_t)rect andPreferredRect:(double)preferredRect andImageRect:(double)imageRect outputCropScore:(double)score;
+ (void)_interpolationV2MaxCropSizeForAspectRatio:(double)ratio andZoom:(double)zoom withFocusRegion:(double)region forImageSize:(double)size withImportantRect:(double)rect;
+ (void)_interpolationV2ScoreAlongEdge:(double)edge forCrop:(double)crop withFullsizeRect:(double)rect andPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect;
+ (void)_interpolationV2ScoreForCrop:(double)crop withFullsizeRect:(double)rect andPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect;
+ (void)bestCropRectV2ForAspectRatio:(CGFloat)ratio withFocusRegion:(CGFloat)region sourcePixelWidth:(CGFloat)width sourcePixelHeight:(CGFloat)height sourcePreferredCropRectNormalized:(uint64_t)normalized sourceAcceptableCropRectNormalized:(unint64_t)rectNormalized sourceFaceAreaRectNormalized:(unint64_t)areaRectNormalized outputCropScore:(double *)self0;
@end

@implementation PFCropUtilities

+ (CGRect)_faceAreaRectWithPadding:(CGRect)padding
{
  if (padding.size.width >= padding.size.height)
  {
    height = padding.size.height;
  }

  else
  {
    height = padding.size.width;
  }

  v4 = padding.origin.x + height * -0.1;
  v5 = padding.origin.y + height * -0.25;
  v6 = padding.size.width + height * 0.2;
  v7 = padding.size.height + height * 0.75;
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGPoint)_translationToIncludeRect:(CGRect)rect insideRect:(CGRect)insideRect
{
  height = insideRect.size.height;
  width = insideRect.size.width;
  y = insideRect.origin.y;
  x = insideRect.origin.x;
  v8 = rect.size.height;
  v9 = rect.size.width;
  v10 = rect.origin.y;
  v11 = rect.origin.x;
  [PFCropUtilities _rectDimensionOffset:"_rectDimensionOffset:insideRect:forEdge:" insideRect:0 forEdge:?];
  v20 = v12;
  [PFCropUtilities _rectDimensionOffset:2 insideRect:v11 forEdge:v10, v9, v8, x, y, width, height];
  v19 = v13;
  [PFCropUtilities _rectDimensionOffset:1 insideRect:v11 forEdge:v10, v9, v8, x, y, width, height];
  v18 = v14;
  [PFCropUtilities _rectDimensionOffset:3 insideRect:v11 forEdge:v10, v9, v8, x, y, width, height];
  v16 = fmin(v15, 0.0) - fmin(v18, 0.0);
  v17 = fmin(v19, 0.0) - fmin(v20, 0.0);
  result.y = v16;
  result.x = v17;
  return result;
}

+ (double)_rectDimensionOffset:(CGRect)offset insideRect:(CGRect)rect forEdge:(unsigned int)edge
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = offset.size.height;
  v10 = offset.size.width;
  v11 = offset.origin.y;
  v12 = offset.origin.x;
  if (edge > 1)
  {
    if (edge == 2)
    {
      MaxX = CGRectGetMaxX(rect);
      v21.origin.x = v12;
      v21.origin.y = v11;
      v21.size.width = v10;
      v21.size.height = v9;
      MaxY = CGRectGetMaxX(v21);
    }

    else
    {
      if (edge != 3)
      {
        return offset.origin.x;
      }

      MaxX = CGRectGetMaxY(rect);
      v19.origin.x = v12;
      v19.origin.y = v11;
      v19.size.width = v10;
      v19.size.height = v9;
      MaxY = CGRectGetMaxY(v19);
    }

    offset.origin.x = MaxX - MaxY;
    return offset.origin.x;
  }

  if (!edge)
  {
    MinX = CGRectGetMinX(offset);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    MinY = CGRectGetMinX(v20);
    goto LABEL_9;
  }

  if (edge == 1)
  {
    MinX = CGRectGetMinY(offset);
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    MinY = CGRectGetMinY(v18);
LABEL_9:
    offset.origin.x = MinX - MinY;
  }

  return offset.origin.x;
}

+ (double)_rectDimensionSize:(CGRect)size forEdge:(unsigned int)edge
{
  result = size.size.width;
  if (edge > 1)
  {
    if (edge != 3)
    {
      return result;
    }

    return size.size.height;
  }

  if (edge == 1)
  {
    return size.size.height;
  }

  return result;
}

+ (BOOL)_rectIsValid:(CGRect)valid
{
  height = valid.size.height;
  width = valid.size.width;
  y = valid.origin.y;
  x = valid.origin.x;
  if (CGRectIsNull(valid))
  {
    return 0;
  }

  v7 = height > 0.0;
  if (width <= 0.0)
  {
    v7 = 0;
  }

  if (y < 0.0)
  {
    v7 = 0;
  }

  return x >= 0.0 && v7;
}

+ (void)_interpolationV2ScoreAlongEdge:(double)edge forCrop:(double)crop withFullsizeRect:(double)rect andPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect
{
  [PFCropUtilities _rectDimensionOffset:self insideRect:a2 forEdge:edge, crop, rect];
  v31 = v24;
  [PFCropUtilities _rectDimensionOffset:a11 insideRect:a12 forEdge:a13, a14, a15, rect, preferredRect, acceptableRect, a8];
  v30 = v25;
  [PFCropUtilities _rectDimensionOffset:a11 insideRect:a16 forEdge:a17, a18, a19, rect, preferredRect, acceptableRect, a8];
  v27 = v26;
  result = [PFCropUtilities _rectDimensionSize:a11 forEdge:a16, a17, a18, a19];
  if (v31 > 0.0)
  {
    if (v31 <= v30)
    {
      [PFCropUtilities _interpolationFactorFor:v31 between:0.0 and:?];
    }

    else if (v31 <= v27)
    {
      [PFCropUtilities _interpolationFactorFor:v31 between:v30 and:v27];
    }

    else
    {
      if (v31 > v27 + v29)
      {
        return result;
      }

      [PFCropUtilities _interpolationFactorFor:v31 between:v27 and:?];
    }

    return [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
  }

  return result;
}

+ (CGFloat)_interpolationV2ScoreForFocusRegion:(double)region insideCropRect:(double)rect withImportantRect:(double)importantRect
{
  v15.origin.x = importantRect + self * a7;
  v15.origin.y = a6 + a2 * a8;
  v15.size.width = region * a7;
  v15.size.height = rect * a8;
  v13.origin.x = a9;
  v13.origin.y = a10;
  v13.size.width = a11;
  v13.size.height = a12;
  v14 = CGRectIntersection(v13, v15);
  return v14.size.width * v14.size.height / (a11 * a12);
}

+ (void)_interpolationV2ScoreForCrop:(double)crop withFullsizeRect:(double)rect andPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect
{
  [PFCropUtilities _interpolationV2ScoreAlongEdge:0 forCrop:a12 withFullsizeRect:a13 andPreferredRect:a14 andAcceptableRect:a15, a16, a17, a18, a19, a20, a21, a22, a23, a24];
  [PFCropUtilities _interpolationV2ScoreAlongEdge:2 forCrop:self withFullsizeRect:a2 andPreferredRect:crop andAcceptableRect:rect, preferredRect, acceptableRect, a7, a8, a17, a18, a19, a20, a21, a22, a23, a24];
  [PFCropUtilities _interpolationV2ScoreAlongEdge:1 forCrop:self withFullsizeRect:a2 andPreferredRect:crop andAcceptableRect:rect, preferredRect, acceptableRect, a7, a8, a17, a18, a19, a20, a21, a22, a23, a24];
  return [PFCropUtilities _interpolationV2ScoreAlongEdge:3 forCrop:self withFullsizeRect:a2 andPreferredRect:crop andAcceptableRect:rect, preferredRect, acceptableRect, a7, a8, a17, a18, a19, a20, a21, a22, a23, a24];
}

+ (double)_interpolationV2AdjustedCrop:(double)crop toFocusRegion:(double)region withFullsizeRect:(double)rect andImportantRect:(double)importantRect
{
  [PFCropUtilities _translationToIncludeRect:a13 insideRect:a14, a15, a16, self + rect * crop, a2 + importantRect * region, crop * a7, region * a8];
  v21 = self - v20;
  [PFCropUtilities _translationToIncludeRect:v21 insideRect:a2 - v22, crop, region, a9, a10, a11, a12];
  return v21 + v23;
}

+ (void)_interpolationV2MaxCropSizeForAspectRatio:(double)ratio andZoom:(double)zoom withFocusRegion:(double)region forImageSize:(double)size withImportantRect:(double)rect
{
  v15 = *MEMORY[0x1E695EFF8];
  v14 = *(MEMORY[0x1E695EFF8] + 8);
  [PFCropUtilities _rectDimensionSize:0 forEdge:a9, a10, a11, a12];
  [PFCropUtilities _rectDimensionSize:1 forEdge:a9, a10, a11, a12];
  [PFCropUtilities _rectDimensionOffset:0 insideRect:a9 forEdge:a10, a11, a12, v15, v14, rect, a8];
  [PFCropUtilities _rectDimensionOffset:2 insideRect:a9 forEdge:a10, a11, a12, v15, v14, rect, a8];
  [PFCropUtilities _rectDimensionOffset:1 insideRect:a9 forEdge:a10, a11, a12, v15, v14, rect, a8];
  [PFCropUtilities _rectDimensionOffset:3 insideRect:a9 forEdge:a10, a11, a12, v15, v14, rect, a8];
  [PFCropUtilities _rectDimensionSize:0 forEdge:ratio, zoom, region, size];
  [PFCropUtilities _rectDimensionSize:1 forEdge:ratio, zoom, region, size];
  [PFCropUtilities _rectDimensionOffset:0 insideRect:ratio forEdge:zoom, region, size, 0.0, 0.0, 1.0, 1.0];
  [PFCropUtilities _rectDimensionOffset:2 insideRect:ratio forEdge:zoom, region, size, 0.0, 0.0, 1.0, 1.0];
  [PFCropUtilities _rectDimensionOffset:1 insideRect:ratio forEdge:zoom, region, size, 0.0, 0.0, 1.0, 1.0];
  return [PFCropUtilities _rectDimensionOffset:3 insideRect:ratio forEdge:zoom, region, size, 0.0, 0.0, 1.0, 1.0];
}

+ (double)_interpolationV2CropForAspectRatio:(double)ratio withFocusRegion:(double)region andAcceptableRect:(double)rect andPreferredRect:(uint64_t)preferredRect andImageRect:(uint64_t)imageRect outputCropScore:(double *)score
{
  [PFCropUtilities _interpolationV2MaxCropSizeForAspectRatio:score andZoom:a12 withFocusRegion:a13 forImageSize:a14 withImportantRect:a15, a16, self, 1.0, a2, ratio, region, rect, a27, a28, a17, a18, a19, a20];
  [PFCropUtilities _interpolationCropToSize:score withinRect:a21 withPreferredRect:a22 andAcceptableRect:a23 outputScore:a24, a17, a18, a19, a20];
  [PFCropUtilities _interpolationV2AdjustedCrop:*&a25 toFocusRegion:*&a26 withFullsizeRect:*&a27 andImportantRect:*&a28, a17, a18, a19, a20];
  v33 = v29;
  v34 = v30;
  v35 = v31;
  v36 = v32;
  if (score)
  {
    [PFCropUtilities _interpolationV2ScoreForCrop:v29 withFullsizeRect:v30 andPreferredRect:v31 andAcceptableRect:v32, a25, a26, a27, a28, a21, a22, a23, a24, a17, a18, a19, a20];
    v40 = v37;
    [PFCropUtilities _interpolationV2ScoreForFocusRegion:a2 insideCropRect:ratio withImportantRect:region, rect, v33, v34, v35, v36, a17, a18, a19, a20];
    *score = v40 * v38;
  }

  return v33;
}

+ (double)_interpolationFactorFor:(double)for between:(double)between and:(double)and
{
  v6 = and - between;
  result = 0.5;
  if (v6 > 0.0)
  {
    return (for - between) / v6;
  }

  return result;
}

+ (CGSize)_interpolationCropSizeForRatio:(double)ratio andZoom:(double)zoom forImageSize:(CGSize)size
{
  width = size.height * ratio;
  if (size.width < size.height * ratio)
  {
    width = size.width;
  }

  v6 = width / zoom;
  height = size.width / ratio;
  if (size.height < height)
  {
    height = size.height;
  }

  v8 = height / zoom;
  v9 = v6;
  result.height = v8;
  result.width = v9;
  return result;
}

+ (double)_interpolationCropToSize:(double)size withinRect:(double)rect withPreferredRect:(double)preferredRect andAcceptableRect:(double)acceptableRect outputScore:(uint64_t)score
{
  v63 = *MEMORY[0x1E69E9840];
  if (![PFCropUtilities _rectIsValid:a16]|| ![PFCropUtilities _rectIsValid:?])
  {
    v25 = fmax(preferredRect - self, 0.0) * 0.5;
    if (a9)
    {
      v26 = 0.5005;
LABEL_45:
      *a9 = v26;
      return v25;
    }

    return v25;
  }

  if (self == 0.0 || a2 == 0.0 || (self == *MEMORY[0x1E69BDDB0] ? (v24 = a2 == *(MEMORY[0x1E69BDDB0] + 8)) : (v24 = 0), v24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      selfCopy = self;
      v59 = 2048;
      v60 = a2;
      v61 = 2048;
      v62 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }
  }

  PFSizeWithAspectRatioFittingSize();
  v53 = v28;
  v55 = v27;
  v29 = [PFCropUtilities _rectIsValid:a16, a17, a18, a19];
  v30 = [PFCropUtilities _rectIsValid:a12, a13, a14, a15];
  v32 = v30;
  v33 = a12;
  v34 = a14;
  v35 = a15;
  if (!v30)
  {
    v33 = size + preferredRect * 0.5 + v55 * -0.5;
    v31 = v53;
    v34 = v55;
    v35 = v53;
  }

  v36 = MEMORY[0x1E695EFF8];
  v37 = self < a18 && v29;
  v54 = v35;
  if (v37)
  {
    v64.origin.x = a16;
    v64.origin.y = a17;
    v64.size.width = a18;
    v64.size.height = a19;
    [PFCropUtilities _interpolationWithFactor:self / a18 between:CGRectGetMidX(v64) and:a16];
    v25 = v38;
    v39 = 2.0 - self / a18;
  }

  else
  {
    if (v29 && v30 && self < a14)
    {
      [PFCropUtilities _interpolationFactorFor:self between:a18 and:a14, v31, v33];
      v41 = v40;
      [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
      v25 = v42;
      v43 = 2.0;
    }

    else
    {
      if (self >= preferredRect)
      {
        v39 = *MEMORY[0x1E695EFF8];
        v25 = *MEMORY[0x1E695EFF8];
        goto LABEL_28;
      }

      [PFCropUtilities _interpolationFactorFor:self between:v34 and:preferredRect];
      v41 = v44;
      [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
      v25 = v45;
      v43 = 1.0;
    }

    v39 = (v43 - v41) * 0.5;
  }

LABEL_28:
  if (a2 < a19 && v29)
  {
    v65.origin.x = a16;
    v65.origin.y = a17;
    v65.size.width = a18;
    v65.size.height = a19;
    [PFCropUtilities _interpolationWithFactor:a2 / a19 between:CGRectGetMidY(v65) and:a17];
    v47 = 2.0 - a2 / a19;
    if (!a9)
    {
      return v25;
    }

    goto LABEL_42;
  }

  if (v29 && v32 && a2 < a15)
  {
    [PFCropUtilities _interpolationFactorFor:a2 between:a19 and:a15];
    v49 = v48;
    [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
    v50 = 2.0;
    goto LABEL_39;
  }

  if (a2 < acceptableRect)
  {
    [PFCropUtilities _interpolationFactorFor:a2 between:v54 and:?];
    v49 = v51;
    [PFCropUtilities _interpolationWithFactor:"_interpolationWithFactor:between:and:" between:? and:?];
    v50 = 1.0;
LABEL_39:
    v47 = (v50 - v49) * 0.5;
    if (!a9)
    {
      return v25;
    }

    goto LABEL_42;
  }

  v47 = *(v36 + 8);
  if (a9)
  {
LABEL_42:
    if (v39 >= v47)
    {
      v47 = v39;
    }

    v26 = (2.0 - v47) * 0.5;
    goto LABEL_45;
  }

  return v25;
}

+ (void)_interpolationCropForAspectRatio:(uint64_t)ratio andZoom:(uint64_t)zoom acceptableRect:(uint64_t)rect andPreferredRect:(double)preferredRect andImageRect:(double)imageRect outputCropScore:(double)score
{
  [PFCropUtilities _interpolationCropSizeForRatio:self andZoom:a2 forImageSize:a18, a19, score, a9, a10, a11];

  return [PFCropUtilities _interpolationCropToSize:"_interpolationCropToSize:withinRect:withPreferredRect:andAcceptableRect:outputScore:" withinRect:rect withPreferredRect:? andAcceptableRect:? outputScore:?];
}

+ (double)bestCropRectV2ForPosterClassification:(uint64_t)classification layoutConfiguration:(uint64_t)configuration sourcePixelWidth:(uint64_t)width sourcePixelHeight:(uint64_t)height sourcePreferredCropRectNormalized:(void *)normalized sourceAcceptableCropRectNormalized:(void *)rectNormalized sourceFaceAreaRectNormalized:(__int128)areaRectNormalized outputCropScore:(uint64_t)self0 outputLayoutScore:(uint64_t)self1 outputClockOverlapAcceptable:(_BYTE *)self2
{
  v14 = [self bestAdaptiveCropRectForPosterClassification:classification layoutConfiguration:configuration sourcePixelWidth:width sourcePixelHeight:height sourcePreferredCropRectNormalized:areaRectNormalized sourceAcceptableCropRectNormalized:score sourceFaceAreaRectNormalized:layoutScore];
  v15 = v14;
  if (normalized)
  {
    [v14 cropScore];
    *normalized = v16;
  }

  if (rectNormalized)
  {
    [v15 layoutScore];
    *rectNormalized = v17;
  }

  if (acceptable)
  {
    *acceptable = [v15 clockOverlapAcceptable];
  }

  [v15 visibleRect];
  v19 = v18;

  return v19;
}

+ (PFCropUtilitiesPosterOutputData)bestAdaptiveCropRectForPosterClassification:(double)classification layoutConfiguration:(double)configuration sourcePixelWidth:(double)width sourcePixelHeight:(double)height sourcePreferredCropRectNormalized:(double)normalized sourceAcceptableCropRectNormalized:(double)rectNormalized sourceFaceAreaRectNormalized:(uint64_t)areaRectNormalized headroomFeasible:(uint64_t)self0
{
  v24 = a18;
  v23 = a19;
  v25 = a16;
  v135 = *MEMORY[0x1E69E9840];
  v26 = a12;
  [v26 screenSize];
  v29 = v27;
  v30 = v28;
  if (v27 == 0.0 || v28 == 0.0 || (v27 == *MEMORY[0x1E69BDDB0] ? (v31 = v28 == *(MEMORY[0x1E69BDDB0] + 8)) : (v31 = 0), v31))
  {
    v100 = 1.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      *&buf[4] = v29;
      v131 = 2048;
      v132 = v30;
      v133 = 2048;
      v134 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }
  }

  else
  {
    v100 = fabs(v27 / v28);
  }

  *buf = 0;
  if ([PFCropUtilities _rectIsValid:a16, a17, a18, a19])
  {
    v32 = 1.0 - (a17 + a19);
    v33 = *MEMORY[0x1E695F050];
    v34 = *(MEMORY[0x1E695F050] + 8);
    v35 = *(MEMORY[0x1E695F050] + 16);
    v36 = *(MEMORY[0x1E695F050] + 24);
  }

  else
  {
    v33 = *MEMORY[0x1E695F050];
    v34 = *(MEMORY[0x1E695F050] + 8);
    v35 = *(MEMORY[0x1E695F050] + 16);
    v36 = *(MEMORY[0x1E695F050] + 24);
    v23 = v36;
    v24 = v35;
    v32 = v34;
    v25 = *MEMORY[0x1E695F050];
  }

  v101 = v32;
  v117 = a13;
  v119 = a14;
  v116 = v36;
  v115 = v35;
  v112 = v34;
  v120 = v33;
  [PFParallaxLayoutUtilities effectiveAcceptableRectForClassification:a11 havePetFaces:0 sourcePreferredCropRectNormalized:self sourceAcceptableCropRectNormalized:a2 sourceFaceAreaRectNormalized:classification sourceGazeAreaRectNormalized:configuration, width, height, normalized, rectNormalized, *&v25, *&v32, *&v24, *&v23, *&v33, *&v34, *&v35, *&v36];
  v126 = v37;
  v128 = v38;
  v122 = v40;
  v124 = v39;
  [PFParallaxLayoutUtilities effectivePreferredRectForClassification:a11 havePetFaces:0 sourcePreferredCropRectNormalized:self sourceAcceptableCropRectNormalized:a2 sourceFaceAreaRectNormalized:classification, configuration, width, height, normalized, rectNormalized, *&v25, *&v101, *&v24, *&v23];
  v114 = v42;
  v109 = v44;
  v111 = v43;
  v107 = v41;
  if (a11 > 5)
  {
    v52 = 0.0;
    v51 = 0.0;
    v50 = 0.0;
    v49 = 0.0;
  }

  else
  {
    if (((1 << a11) & 0x39) != 0)
    {
      v45 = v120;
      v46 = v112;
      v47 = v115;
      v48 = v116;
      [PFCropUtilities bestCropRectV2ForAspectRatio:a13 withFocusRegion:a14 sourcePixelWidth:buf sourcePixelHeight:v100 sourcePreferredCropRectNormalized:v120 sourceAcceptableCropRectNormalized:v112 sourceFaceAreaRectNormalized:v115 outputCropScore:v116, v41, v42, v43, v44, *&v126, *&v128, *&v124, *&v122, *&a16, *&a17, *&a18, *&a19];
      goto LABEL_19;
    }

    v129 = 0;
    [PFCropUtilities bestCropRectV2ForAspectRatio:a13 sourcePixelWidth:a14 sourcePixelHeight:&v129 sourceEssentialAreaRect:v100 sourceSecondaryEssentialAreaRect:v126 outputCropScore:v128, v124, v122, v41, v42, v43, v44];
    *buf = v129;
  }

  v45 = v120;
  v46 = v112;
  v47 = v115;
  v48 = v116;
LABEL_19:
  v53 = [[PFParallaxLayoutHelper alloc] initWithPosterClassification:a11 initialRect:a15 imageSize:0 effectiveAcceptableRect:0 effectivePreferredRect:[PFParallaxLayoutUtilities layoutTypeFromLayoutConfiguration:?]hasTopEdgeContact:3 computeSpatial:v49 * v117 + 0.0 spatialPadding:v50 * v119 + 0.0 layoutType:v51 * v117 allowedLayoutStrategies:v52 * v119 layoutConfiguration:v117, v119, *&v126, *&v128, *&v124, *&v122, v107, v114, v111, v109, *&v45, *&v46, *&v47, *&v48, 0, v26];
  v54 = [PFParallaxLayoutUtilities computeLayoutWithHelper:v53];
  [v54 visibleRect];
  v59 = v55;
  v60 = v56;
  if (a13)
  {
    v59 = v55 / v117;
    v61 = v57 / v117;
  }

  else
  {
    v61 = 0.0;
  }

  v127 = v61;
  v62 = 0.0;
  if (a14)
  {
    v60 = v56 / v119;
    v62 = v58 / v119;
  }

  [v54 adaptiveVisibleRect];
  v67 = v66 / v117;
  if (a13)
  {
    v63 = v63 / v117;
  }

  else
  {
    v67 = 0.0;
  }

  v123 = v63;
  v125 = v67;
  v68 = v65 / v119;
  if (!a14)
  {
    v68 = 0.0;
  }

  v121 = v68;
  v69 = v64 / v119;
  if (!a14)
  {
    v69 = v64;
  }

  v118 = v69;
  v70 = [v54 clockOverlapAcceptableForLayoutConfiguration:v26];
  if ([v54 overlapStrategy] == 5)
  {
    [v54 maxClockShift];
    if (v71 > 0.0)
    {
      v70 = 1;
    }
  }

  [v54 adaptiveVisibleRect];
  v73 = v72;
  [v54 visibleRect];
  v75 = vabdd_f64(v73, v74);
  adaptiveStrategy = [v54 adaptiveStrategy];
  v77 = [v54 headroomStrategy] == 2;
  v79 = v75 > 0.00000999999975 && adaptiveStrategy == 2 || v77;
  v80 = v79 | v70;
  [v54 adaptiveVisibleRect];
  v82 = v81;
  [v54 visibleRect];
  v84 = v82 - v83;
  [v54 visibleRect];
  v85 = 1.0 - (v62 + v60);
  v87 = v84 / v86;
  [v54 adaptiveVisibleRect];
  v89 = v128 * v119 + 0.0 - v88;
  [v54 visibleRect];
  if (v89 / v90 >= 0.0)
  {
    v91 = v89 / v90;
  }

  else
  {
    v91 = 0.0;
  }

  v92 = [PFCropUtilitiesPosterOutputData alloc];
  [v54 cropScore];
  v94 = v93;
  [v54 layoutScore];
  v96 = v95;
  [v54 maxClockShift];
  v98 = -[PFCropUtilitiesPosterOutputData initWithVisibleRect:adaptiveVisibleRect:cropScore:layoutScore:clockOverlapAcceptable:headroomEngaged:adaptiveHeadroom:maxClockShift:layoutVariant:notificationRoom:](v92, "initWithVisibleRect:adaptiveVisibleRect:cropScore:layoutScore:clockOverlapAcceptable:headroomEngaged:adaptiveHeadroom:maxClockShift:layoutVariant:notificationRoom:", v80 & 1, v77, [v54 layoutVariant], v59, v85, v127, v62, v123, v118, v125, v121, v94, v96, *&v87, v97, *&v91);

  return v98;
}

+ (CGRect)bestCropRectV2ForAspectRatio:(double)ratio sourcePixelWidth:(unint64_t)width sourcePixelHeight:(unint64_t)height sourceEssentialAreaRect:(CGRect)rect sourceSecondaryEssentialAreaRect:(CGRect)areaRect outputCropScore:(double *)score
{
  [self bestCropRectV2ForAspectRatio:width zoom:height sourcePixelWidth:score sourcePixelHeight:ratio sourceEssentialAreaRect:1.0 sourceSecondaryEssentialAreaRect:rect.origin.x outputCropScore:{rect.origin.y, rect.size.width, rect.size.height}];
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

+ (CGRect)bestCropRectV2ForAspectRatio:(double)ratio zoom:(double)zoom sourcePixelWidth:(unint64_t)width sourcePixelHeight:(unint64_t)height sourceEssentialAreaRect:(CGRect)rect sourceSecondaryEssentialAreaRect:(CGRect)areaRect outputCropScore:(double *)score
{
  widthCopy = width;
  heightCopy = height;
  v14 = rect.origin.x * width + 0.0;
  v15 = rect.origin.y * height + 0.0;
  v16 = rect.size.width * width;
  v17 = rect.size.height * height;
  v33 = areaRect.origin.x * width + 0.0;
  v31 = areaRect.origin.y * height + 0.0;
  v18 = areaRect.size.width * width;
  v19 = areaRect.size.height * height;
  if ([PFCropUtilities _rectIsValid:v14, v15, v16, v17])
  {
    v42.origin.x = 0.0;
    v42.origin.y = 0.0;
    v37.origin.x = v14;
    v37.origin.y = v15;
    v37.size.width = v16;
    v37.size.height = v17;
    v42.size.width = widthCopy;
    v42.size.height = heightCopy;
    v38 = CGRectIntersection(v37, v42);
    x = v38.origin.x;
    y = v38.origin.y;
    width = v38.size.width;
    height = v38.size.height;
  }

  else
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    width = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
  }

  if ([PFCropUtilities _rectIsValid:v33, v31, v18, v19])
  {
    v43.origin.x = 0.0;
    v43.origin.y = 0.0;
    v39.origin.x = v33;
    v39.origin.y = v31;
    v39.size.width = v18;
    v39.size.height = v19;
    v43.size.width = widthCopy;
    v43.size.height = heightCopy;
    v40 = CGRectIntersection(v39, v43);
  }

  else
  {
    v40.origin.y = 0.0;
    v40.size.height = heightCopy;
    v40.size.width = widthCopy;
    v40.origin.x = 0.0;
  }

  v36 = 0;
  [PFCropUtilities _interpolationCropForAspectRatio:&v36 andZoom:ratio acceptableRect:zoom andPreferredRect:x andImageRect:y outputCropScore:width, height, *&v40.origin.x, *&v40.origin.y, *&v40.size.width, *&v40.size.height, 0, 0, *&widthCopy, *&heightCopy];
  v26 = v25;
  if (score)
  {
    *score = v36;
  }

  v27 = 0.0;
  if (!width)
  {
    v28 = 0.0;
    if (!height)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v22 = v22 / widthCopy;
  v28 = v24 / widthCopy;
  if (height)
  {
LABEL_11:
    v23 = v23 / heightCopy;
    v27 = v26 / heightCopy;
  }

LABEL_12:
  v29 = 1.0 - (v27 + v23);
  result.size.height = v27;
  result.size.width = v28;
  result.origin.y = v29;
  result.origin.x = v22;
  return result;
}

+ (CGRect)bestCropRectV2ForAspectRatio:(double)ratio sourcePixelWidth:(unint64_t)width sourcePixelHeight:(unint64_t)height sourceEssentialAreaRect:(CGRect)rect sourceSecondaryEssentialAreaRect:(CGRect)areaRect
{
  [PFCropUtilities bestCropRectV2ForAspectRatio:width sourcePixelWidth:height sourcePixelHeight:0 sourceEssentialAreaRect:ratio sourceSecondaryEssentialAreaRect:rect.origin.x outputCropScore:rect.origin.y, rect.size.width, rect.size.height];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

+ (void)bestCropRectV2ForAspectRatio:(CGFloat)ratio withFocusRegion:(CGFloat)region sourcePixelWidth:(CGFloat)width sourcePixelHeight:(CGFloat)height sourcePreferredCropRectNormalized:(uint64_t)normalized sourceAcceptableCropRectNormalized:(unint64_t)rectNormalized sourceFaceAreaRectNormalized:(unint64_t)areaRectNormalized outputCropScore:(double *)self0
{
  rectNormalizedCopy = rectNormalized;
  areaRectNormalizedCopy = areaRectNormalized;
  v68 = a15 * areaRectNormalized + 0.0;
  v69 = a16 * rectNormalized;
  r1 = a14 * rectNormalized + 0.0;
  v62 = a17 * areaRectNormalized;
  r1_24 = a19 * areaRectNormalized + 0.0;
  v74 = a18 * rectNormalized + 0.0;
  r1_8 = a20 * rectNormalized;
  height = a21 * areaRectNormalized;
  v31 = *MEMORY[0x1E695F050];
  v30 = *(MEMORY[0x1E695F050] + 8);
  v33 = *(MEMORY[0x1E695F050] + 16);
  v32 = *(MEMORY[0x1E695F050] + 24);
  v34 = [PFCropUtilities _rectIsValid:?];
  v79 = rectNormalizedCopy;
  heightCopy = height;
  v77 = v30;
  v78 = v31;
  v75 = v32;
  v76 = v33;
  if (!v34)
  {
    *&v61[16] = v33;
    *&v61[24] = v32;
    *v61 = v31;
    *&v61[8] = v30;
    width = r1_8;
    y = r1_24;
    x = v74;
    v39 = rectNormalizedCopy;
LABEL_9:
    v38 = v62;
    goto LABEL_10;
  }

  x = a22 * rectNormalizedCopy + 0.0;
  y = (1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0;
  width = a24 * rectNormalizedCopy;
  height = a25 * areaRectNormalizedCopy;
  *&v61[16] = a24 * rectNormalizedCopy;
  *&v61[24] = a25 * areaRectNormalizedCopy;
  *v61 = x;
  *&v61[8] = y;
  if (![PFCropUtilities _rectIsValid:x, y, a24 * rectNormalizedCopy, a25 * areaRectNormalizedCopy])
  {
    height = heightCopy;
    width = r1_8;
    y = r1_24;
    x = v74;
    v39 = rectNormalizedCopy;
    goto LABEL_9;
  }

  if ([PFCropUtilities _rectIsValid:v74, r1_24, r1_8, heightCopy])
  {
    v81.origin.x = v74;
    v81.origin.y = r1_24;
    v81.size.width = r1_8;
    v81.size.height = heightCopy;
    v92.origin.x = a22 * rectNormalizedCopy + 0.0;
    v92.origin.y = (1.0 - (a23 + a25)) * areaRectNormalizedCopy + 0.0;
    v92.size.width = a24 * rectNormalizedCopy;
    v92.size.height = a25 * areaRectNormalizedCopy;
    v82 = CGRectUnion(v81, v92);
    x = v82.origin.x;
    y = v82.origin.y;
    width = v82.size.width;
    height = v82.size.height;
  }

  v38 = v62;
  v39 = rectNormalizedCopy;
  if ([PFCropUtilities _rectIsValid:r1, v68, v69, v62])
  {
    [self _faceAreaRectWithPadding:{*v61, *&v61[8], *&v61[16], *&v61[24]}];
    v93.origin.x = 0.0;
    v93.origin.y = 0.0;
    v93.size.width = rectNormalizedCopy;
    v93.size.height = areaRectNormalizedCopy;
    v94 = CGRectIntersection(v83, v93);
    v84.origin.x = r1;
    v84.origin.y = v68;
    v84.size.width = v69;
    v84.size.height = v62;
    v85 = CGRectUnion(v84, v94);
    v69 = v85.size.width;
    r1 = v85.origin.x;
    v68 = v85.origin.y;
    v38 = v85.size.height;
  }

LABEL_10:
  if ([PFCropUtilities _rectIsValid:x, y, width, height])
  {
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v86.origin.x = x;
    v86.origin.y = y;
    v86.size.width = width;
    v86.size.height = height;
    v95.size.width = v39;
    v95.size.height = areaRectNormalizedCopy;
    v87 = CGRectIntersection(v86, v95);
    v77 = v87.origin.y;
    v78 = v87.origin.x;
    v75 = v87.size.height;
    v76 = v87.size.width;
  }

  if ([PFCropUtilities _rectIsValid:r1, v68, v69, v38])
  {
    v88.origin.x = r1;
    v88.origin.y = v68;
    v88.size.width = v69;
    v88.size.height = v38;
    v96.origin.y = v77;
    v96.origin.x = v78;
    v96.size.height = v75;
    v96.size.width = v76;
    v89 = CGRectUnion(v88, v96);
    v97.origin.x = 0.0;
    v97.origin.y = 0.0;
    v97.size.width = v39;
    v97.size.height = areaRectNormalizedCopy;
    v90 = CGRectIntersection(v89, v97);
    v40 = v90.origin.x;
    v41 = v90.origin.y;
    v42 = v90.size.width;
    v43 = v90.size.height;
  }

  else
  {
    v42 = v39;
    v41 = 0.0;
    v43 = areaRectNormalizedCopy;
    v40 = 0.0;
  }

  v80 = 0.0;
  if (![self _rectIsValid:{ratio, region, width, height}] || (v98.origin.x = 0.0, v98.origin.y = 0.0, v98.size.width = 1.0, v98.size.height = 1.0, v91.origin.x = ratio, v91.origin.y = region, v91.size.width = width, v91.size.height = height, CGRectEqualToRect(v91, v98)) || !objc_msgSend(self, "_rectIsValid:", v78, v77, v76, v75) || !objc_msgSend(self, "_rectIsValid:", v40, v41, v42, v43))
  {
    v57 = v43;
    v56 = v42;
    v55 = v40;
    v46 = v77;
    v47 = v78;
    v44 = v75;
    v45 = v76;
    result = [PFCropUtilities _interpolationCropForAspectRatio:&v80 acceptableRect:a2 andPreferredRect:v78 andImageRect:v77 outputCropScore:v76, v75, *&v55, *&v41, *&v56, *&v57, 0, 0, *&v79, *&areaRectNormalizedCopy];
    if (!score)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v60 = v43;
  v59 = v42;
  v58 = v40;
  v44 = v75;
  v45 = v76;
  v46 = v77;
  v47 = v78;
  result = [PFCropUtilities _interpolationV2CropForAspectRatio:&v80 withFocusRegion:a2 andAcceptableRect:ratio andPreferredRect:1.0 - (region + height) andImageRect:width outputCropScore:height, *&v78, *&v77, *&v76, *&v75, *&v58, *&v41, *&v59, *&v60, 0, 0, *&v79, *&areaRectNormalizedCopy];
  if (score)
  {
LABEL_22:
    *score = v80;
  }

LABEL_23:
  if (v80 < 0.5 && v34)
  {
    v99.origin.x = v47;
    v99.origin.y = v46;
    v99.size.width = v45;
    v99.size.height = v44;
    v50 = CGRectEqualToRect(*v61, v99);
    if (v50)
    {
      v51 = v74;
    }

    else
    {
      v51 = *v61;
    }

    if (v50)
    {
      v52 = r1_24;
    }

    else
    {
      v52 = *&v61[8];
    }

    if (v50)
    {
      v53 = r1_8;
    }

    else
    {
      v53 = *&v61[16];
    }

    if (v50)
    {
      v54 = heightCopy;
    }

    else
    {
      v54 = *&v61[24];
    }

    return [PFCropUtilities _interpolationCropForAspectRatio:0 acceptableRect:a2 andPreferredRect:v51 andImageRect:v52 outputCropScore:v53, v54, *&v47, *&v46, *&v45, *&v44, 0, 0, *&v79, *&areaRectNormalizedCopy];
  }

  return result;
}

@end