@interface AutoCropper
- (AutoCropper)init;
- (CGRect)computeClippingWithinSize:(CGSize)size andImportantRect:(CGRect)rect;
- (CGRect)computeClippingWithinSize:(CGSize)size andImportantRects:(id)rects;
- (CGRect)computeClippingWithinSize:(CGSize)size forImportantRect:(CGRect)rect andType:(int)type restrictRect:(CGRect)restrictRect;
- (CGRect)computeClippingWithinSize:(CGSize)size forMultipleRects:(id)rects;
- (CGRect)expandRect:(CGRect)result toContainRect:(CGRect)rect;
- (CGRect)rectContainingRect:(CGRect)result andOtherRect:(CGRect)rect;
- (CGRect)rectWithSize:(CGSize)size andPoint:(CGPoint)point inPosition:(int)position fromOriginalSize:(CGSize)originalSize;
- (CGRect)scaleRect:(CGRect)rect byScale:(double)scale;
- (CGRect)scaleRect:(CGRect)rect toFitSize:(CGSize)size withAnchorPoint:(CGPoint)point;
- (CGSize)originalImageSize;
- (id)clusterRects:(id)rects;
- (int)determineBestPositionWithinSize:(CGSize)size forImportantRect:(CGRect)rect restrictRect:(CGRect)restrictRect;
- (int)getRatioOfSize:(CGSize)size;
@end

@implementation AutoCropper

- (AutoCropper)init
{
  v5.receiver = self;
  v5.super_class = AutoCropper;
  v2 = [(AutoCropper *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AutoCropper *)v2 setShouldFavorTop:0];
    [(AutoCropper *)v3 setShouldFavorBottom:0];
    v3->originalImageSize.width = 0.0;
    v3->originalImageSize.height = 0.0;
  }

  return v3;
}

- (CGRect)scaleRect:(CGRect)rect byScale:(double)scale
{
  v4 = rect.origin.x + rect.size.width * 0.5;
  v5 = rect.origin.y + rect.size.height * 0.5;
  v6 = rect.size.height * scale;
  v7 = rect.size.width * scale;
  v8 = v4 - v7 * 0.5;
  v9 = v5 - v6 * 0.5;
  result.size.height = v6;
  result.size.width = v7;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)expandRect:(CGRect)result toContainRect:(CGRect)rect
{
  v4 = rect.origin.y + rect.size.height;
  v5 = rect.origin.x + rect.size.width;
  if (result.origin.y + result.size.height < v4)
  {
    result.size.height = v4 - result.origin.y;
  }

  if (result.origin.x + result.size.width < v5)
  {
    result.size.width = v5 - result.origin.x;
  }

  if (result.origin.y > rect.origin.y)
  {
    result.size.height = result.origin.y - rect.origin.y + result.size.height;
    result.origin.y = rect.origin.y;
  }

  if (result.origin.x > rect.origin.x)
  {
    result.size.width = result.origin.x - rect.origin.x + result.size.width;
    result.origin.x = rect.origin.x;
  }

  return result;
}

- (CGRect)computeClippingWithinSize:(CGSize)size andImportantRect:(CGRect)rect
{
  height = size.height;
  v5 = rect.origin.x + rect.size.width * 0.5;
  v6 = rect.origin.y + rect.size.height * 0.5;
  if (v6 >= height * 0.5)
  {
    if (v6 > (height + height) / 3.0)
    {
      if (!self->shouldFavorBottom)
      {
        v11 = (height - v6) * 3.0;
        v10 = height - v11;
        height = v11;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    shouldFavorTop = self->shouldFavorTop;
    v7 = 1.5;
LABEL_11:
    v13 = v6 * v7;
    if (!shouldFavorTop)
    {
      height = v13;
    }

LABEL_13:
    v10 = 0.0;
    goto LABEL_14;
  }

  v7 = 3.0;
  if (v6 <= height / 3.0)
  {
    shouldFavorTop = self->shouldFavorTop;
    goto LABEL_11;
  }

  v8 = (height - v6) * 1.5;
  v9 = height - v8;
  if (self->shouldFavorBottom)
  {
    v10 = 0.0;
  }

  else
  {
    height = v8;
    v10 = v9;
  }

LABEL_14:
  if (v5 >= size.width * 0.5)
  {
    v15 = 3.0;
    if (v5 > (size.width + size.width) / 3.0)
    {
      v14 = size.width - v5;
      goto LABEL_19;
    }

    v16 = v5 * 1.5;
LABEL_22:
    v17 = 0.0;
    goto LABEL_23;
  }

  if (v5 <= size.width / 3.0)
  {
    v16 = v5 * 3.0;
    goto LABEL_22;
  }

  v14 = size.width - v5;
  v15 = 1.5;
LABEL_19:
  v16 = v14 * v15;
  v17 = size.width - v16;
LABEL_23:
  v18 = height;
  result.size.height = v18;
  result.size.width = v16;
  result.origin.y = v10;
  result.origin.x = v17;
  return result;
}

- (int)getRatioOfSize:(CGSize)size
{
  if (size.height * 4.0 == size.width * 3.0)
  {
    return 1;
  }

  if (size.height * 3.0 == size.width + size.width)
  {
    return 2;
  }

  if (size.height * 16.0 == size.width * 9.0)
  {
    return 3;
  }

  if (size.height == size.width)
  {
    return 4;
  }

  v4 = size.height * 5.0;
  if (v4 == size.width * 3.0)
  {
    return 5;
  }

  if (v4 == size.width * 4.0)
  {
    return 6;
  }

  return 7;
}

- (CGRect)scaleRect:(CGRect)rect toFitSize:(CGSize)size withAnchorPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  height = size.height;
  width = size.width;
  v15 = rect.size.height;
  v16 = rect.size.width;
  v17 = rect.origin.y;
  v18 = rect.origin.x;
  acLog("scaleRect:inner=(%.3f,%.3f,%.3f,%.3f), size=(%.3f,%.3f), anchor=(%.3f,%.3f)\n", a2, v5, v6, v7, v8, v9, v10, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, *&size.width, *&size.height, *&point.x, *&point.y);
  v26 = v18 + v16;
  v27 = v17 + v16;
  if (v17 <= y && v27 >= y && v26 >= x && v18 <= x)
  {
    v31 = v15 - (y - v17);
    v32 = x - v18;
    v33 = v16 - (x - v18);
    v34 = y / (y - v17);
    if ((height - y) / v31 < v34)
    {
      v34 = (height - y) / v31;
    }

    if (x / v32 < v34)
    {
      v34 = x / v32;
    }

    if ((width - x) / v33 < v34)
    {
      v34 = (width - x) / v33;
    }

    v35 = (y - v17) * v34;
    v36 = v32 * v34;
    v18 = x - v36;
    v17 = y - v35;
    v16 = v36 + v33 * v34;
    v15 = v35 + v31 * v34;
  }

  else
  {
    acLog("ERROR <AutoCropper>: Point should be within rect", v19, v20, v21, v22, v23, v24, v25, v26, v27);
  }

  v37 = v18;
  v38 = v17;
  v39 = v16;
  v40 = v15;
  result.size.height = v40;
  result.size.width = v39;
  result.origin.y = v38;
  result.origin.x = v37;
  return result;
}

- (CGRect)rectWithSize:(CGSize)size andPoint:(CGPoint)point inPosition:(int)position fromOriginalSize:(CGSize)originalSize
{
  x = point.x;
  height = size.height;
  width = size.width;
  v9 = 0.0;
  if (position > 0xD)
  {
    v10 = 0.0;
    goto LABEL_15;
  }

  if (((1 << position) & 0x854) != 0)
  {
    v12 = (size.width - x) * 0.5;
    if (x < v12)
    {
      v12 = x;
    }

    v10 = x - v12;
    goto LABEL_14;
  }

  if (((1 << position) & 0x10A8) != 0)
  {
    v12 = size.width - x;
    if (size.width - x >= x * 0.5)
    {
      v12 = x * 0.5;
    }

    v10 = x + v12 * -2.0;
LABEL_14:
    width = v12 * 3.0;
    goto LABEL_15;
  }

  v10 = 0.0;
  if (((1 << position) & 0x2700) != 0)
  {
    v11 = size.width - x;
    if (x < size.width - x)
    {
      v11 = x;
    }

    v10 = x - v11;
    width = v11 + v11;
  }

LABEL_15:
  if (position > 0xE)
  {
    v13 = height;
    goto LABEL_31;
  }

  if (((1 << position) & 0x231) != 0)
  {
    if (point.y >= (height - point.y) * 0.5)
    {
      y = (height - point.y) * 0.5;
    }

    else
    {
      y = point.y;
    }

    v9 = point.y - y;
LABEL_30:
    v13 = y * 3.0;
    goto LABEL_31;
  }

  if (((1 << position) & 0x4C2) != 0)
  {
    y = point.y * 0.5;
    if (height - point.y < point.y * 0.5)
    {
      y = height - point.y;
    }

    v9 = point.y + y * -2.0;
    goto LABEL_30;
  }

  v13 = height;
  if (((1 << position) & 0x5900) != 0)
  {
    if (point.y >= height - point.y)
    {
      v14 = height - point.y;
    }

    else
    {
      v14 = point.y;
    }

    v9 = point.y - v14;
    v13 = v14 + v14;
  }

LABEL_31:
  v16 = height / size.width;
  if (v13 / width >= v16)
  {
    if (v13 / width > v16)
    {
      v18 = -(point.y - v9) / v13;
      v13 = v16 * width;
      v9 = point.y + v18 * (v16 * width);
    }
  }

  else
  {
    v17 = v13 / v16;
    v10 = x + -(x - v10) / width * v17;
    width = v17;
  }

  v19 = v10;
  v20 = v13;
  result.size.height = v20;
  result.size.width = width;
  result.origin.y = v9;
  result.origin.x = v19;
  return result;
}

- (CGRect)rectContainingRect:(CGRect)result andOtherRect:(CGRect)rect
{
  v4 = result.origin.x + result.size.width;
  v5 = rect.origin.x + rect.size.width;
  if (v4 <= v5)
  {
    v4 = v5;
  }

  v6 = result.origin.y + result.size.height;
  if (v6 <= rect.origin.y + rect.size.height)
  {
    v6 = rect.origin.y + rect.size.height;
  }

  if (result.origin.x >= rect.origin.x)
  {
    result.origin.x = rect.origin.x;
  }

  v7 = v4 - result.origin.x;
  if (result.origin.y >= rect.origin.y)
  {
    result.origin.y = rect.origin.y;
  }

  v8 = v6 - result.origin.y;
  result.size.height = v8;
  result.size.width = v7;
  return result;
}

- (id)clusterRects:(id)rects
{
  rectsCopy = rects;
  if ([rects count] != 1)
  {
    rectsCopy = [MEMORY[0x1E695DF70] arrayWithArray:rectsCopy];
    if ([rectsCopy count] != 1)
    {
      while (2)
      {
        v5 = [rectsCopy count];
        v19 = 0u;
        v20 = 0u;
        if (v5 >= 2)
        {
          v6 = 0;
          v7 = (v5 - 1);
          v8 = v5 & 0x7FFFFFFF;
          v9 = 1;
LABEL_5:
          memset(&v18, 0, sizeof(v18));
          [objc_msgSend(rectsCopy objectAtIndex:{v6), "getValue:", &v18}];
          v10 = v6 + 1;
          v11 = v9;
          while (1)
          {
            [objc_msgSend(rectsCopy objectAtIndex:{v11, 0, 0, 0, 0), "getValue:", &v17}];
            if (CGRectIntersectsRect(v18, v17))
            {
              break;
            }

            if (v8 == ++v11)
            {
              ++v9;
              ++v6;
              if (v10 != v7)
              {
                goto LABEL_5;
              }

              return rectsCopy;
            }
          }

          [(AutoCropper *)self rectContainingRect:*&v17.origin andOtherRect:*&v17.size, *&v18.origin, *&v18.size];
          *&v19 = v12;
          *(&v19 + 1) = v13;
          *&v20 = v14;
          *(&v20 + 1) = v15;
          [rectsCopy replaceObjectAtIndex:v6 withObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithBytes:objCType:", &v19, "{CGRect={CGPoint=dd}{CGSize=dd}}")}];
          [rectsCopy removeObjectAtIndex:v11];
          if ([rectsCopy count] != 1)
          {
            continue;
          }
        }

        break;
      }
    }
  }

  return rectsCopy;
}

- (CGRect)computeClippingWithinSize:(CGSize)size andImportantRects:(id)rects
{
  v86 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [objc_msgSend(standardUserDefaults valueForKey:{@"AspectRatioCutoff", "floatValue"}];
  v75 = v7;
  [objc_msgSend(standardUserDefaults valueForKey:{@"MinimumCroppedArea", "floatValue"}];
  v9 = v8;
  [objc_msgSend(standardUserDefaults valueForKey:{@"ProximityToCenter", "floatValue"}];
  v11 = v10;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v12 = [rects countByEnumeratingWithState:&v81 objects:v85 count:16];
  if (v12)
  {
    v20 = v12;
    v21 = *v82;
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v82 != v21)
        {
          objc_enumerationMutation(rects);
        }

        v27 = *(*(&v81 + 1) + 8 * i);
        v79 = 0u;
        v80 = 0u;
        [v27 getValue:&v79];
        if (*(&v80 + 1) * *&v80 > v22 * v23)
        {
          v24 = *(&v79 + 1);
          v25 = *&v79;
          v22 = *(&v80 + 1);
          v23 = *&v80;
        }
      }

      v20 = [rects countByEnumeratingWithState:&v81 objects:v85 count:{16, *(&v80 + 1), *&v80, *(&v80 + 1) * *&v80}];
    }

    while (v20);
  }

  else
  {
    v22 = 0.0;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 0.0;
  }

  v28 = v23 * 0.5 + v25;
  v29 = v22 * 0.5 + v24;
  v30 = v22 * v23;
  acLog("Face area is %f, Total is %f\n", v13, v14, v15, v16, v17, v18, v19, *&v30, size.width * size.height);
  v77 = size.width * size.height;
  if (v30 * 1.1 < size.width * size.height / 9.0 || (acLog("Large Face!\n", v31, v32, v33, v34, v35, v36, v37), v38 = 0.0, (size.height * size.height + size.width * size.width) * v11 <= (v29 - size.height * 0.5) * (v29 - size.height * 0.5) + (v28 - size.width * 0.5) * (v28 - size.width * 0.5)))
  {
    v40 = 0;
    v72 = *(MEMORY[0x1E695F058] + 8);
    v73 = *MEMORY[0x1E695F058];
    v41 = size.width * size.height;
    v42 = v75 + 1.0;
    v74 = *(MEMORY[0x1E695F058] + 16);
    v76 = *(MEMORY[0x1E695F058] + 24);
    v43 = v42;
    v44 = 7;
    do
    {
      height = 9.0;
      if (v40 == 5)
      {
        v46 = 9.0;
      }

      else
      {
        v46 = 12.0;
      }

      v47 = 48.0;
      if (v40 != 3)
      {
        v47 = 20.0;
      }

      v48 = 27.0;
      if (v40 != 3)
      {
        v48 = 20.0;
      }

      if (v40 <= 4)
      {
        v46 = v48;
      }

      else
      {
        v47 = 15.0;
      }

      if (v40 == 1)
      {
        width = 12.0;
      }

      else
      {
        width = 9.0;
      }

      if (v40 != 1)
      {
        height = 6.0;
      }

      if (!v40)
      {
        width = size.width;
        height = size.height;
      }

      if (v40 <= 2)
      {
        v50 = width;
      }

      else
      {
        v50 = v47;
      }

      if (v40 <= 2)
      {
        v51 = height;
      }

      else
      {
        v51 = v46;
      }

      v52 = 4;
      do
      {
        [(AutoCropper *)self rectWithSize:v52 andPoint:v50 inPosition:v51 fromOriginalSize:v28, v29, size.width, size.height];
        [AutoCropper scaleRect:"scaleRect:toFitSize:withAnchorPoint:" toFitSize:? withAnchorPoint:?];
        if ((v77 - v62 * v63) * v43 < v41 || v44 == 7)
        {
          v41 = v77 - v62 * v63;
          v74 = v62;
          v76 = v63;
          v44 = v40;
          v72 = v61;
          v73 = v60;
        }

        v52 = (v52 + 1);
      }

      while (v52 != 8);
      ++v40;
    }

    while (v40 != 7);
    v66 = v74;
    v65 = v76;
    if (v76 * v74 < v77 * v9)
    {
      v38 = 0.0;
      v67 = "No Crop. Reduces area too much\n";
      v39 = 0.0;
      v66 = size.width;
      v65 = size.height;
LABEL_50:
      acLog(v67, v53, v54, v55, v56, v57, v58, v59, v76 * v74);
      size.width = v66;
      size.height = v65;
      goto LABEL_51;
    }

    if (v44 <= 2)
    {
      v39 = v72;
      v38 = v73;
      switch(v44)
      {
        case 0:
          v67 = "Clipping to original aspect ratio\n";
          goto LABEL_50;
        case 1:
          v67 = "Clipping to aspect ratio 4:3\n";
          goto LABEL_50;
        case 2:
          v67 = "Clipping to aspect ratio 3:2\n";
          goto LABEL_50;
      }
    }

    else
    {
      v39 = v72;
      v38 = v73;
      if (v44 <= 4)
      {
        if (v44 == 3)
        {
          v67 = "Clipping to aspect ratio 16:9\n";
        }

        else
        {
          v67 = "Clipping to square\n";
        }

        goto LABEL_50;
      }

      if (v44 == 5)
      {
        v67 = "Clipping to aspect ratio 5:3\n";
        goto LABEL_50;
      }

      if (v44 == 6)
      {
        v67 = "Clipping to aspect ratio 5:4\n";
        goto LABEL_50;
      }
    }

    v67 = "ERROR <AutoCropper>: unrecognized aspect ratio\n";
    goto LABEL_50;
  }

  v39 = 0.0;
LABEL_51:
  v68 = v38;
  v69 = v39;
  v70 = size.width;
  v71 = size.height;
  result.size.height = v71;
  result.size.width = v70;
  result.origin.y = v69;
  result.origin.x = v68;
  return result;
}

- (int)determineBestPositionWithinSize:(CGSize)size forImportantRect:(CGRect)rect restrictRect:(CGRect)restrictRect
{
  height = size.height;
  width = size.width;
  v75 = *MEMORY[0x1E69E9840];
  v8 = rect.origin.x + rect.size.width * 0.5;
  v9 = rect.origin.y + rect.size.height * 0.5;
  v10 = (getCFPreferenceNumber(@"MinCropPercentage", @"com.apple.mobileslideshow", 75) / 100.0);
  acLog("determineBestPositionWithinSize:size=%.3f,%.3f, center=%.3f,%.3f, minPercentage=%.3f, restrict=%.3f,%.3f,%.3f,%.3f\n", v11, v12, v13, v14, v15, v16, v17, *&width, *&height, *&v8, *&v9, *&v10, *&restrictRect.origin.x, *&restrictRect.origin.y, *&restrictRect.size.width, *&restrictRect.size.height);
  if (self->originalImageSize.height * self->originalImageSize.width == 0.0)
  {
    v25 = height * width;
  }

  else
  {
    v25 = self->originalImageSize.height * self->originalImageSize.width;
  }

  acLog("originalArea = %.2f\n", v18, v19, v20, v21, v22, v23, v24, *&v25);
  v26 = 0;
  v27 = 0.0;
  v28 = 15;
  do
  {
    [(AutoCropper *)self rectWithSize:v26 andPoint:width inPosition:height fromOriginalSize:v8, v9, width, height];
    v31 = v30 * v29;
    acLog("pos = %d, rect=(%.2f,%.2f,%.2f,%.2f), area=%.2f\n", v32, v33, v34, v35, v36, v37, v38, v26, v39, v40, *&v29, *&v30, v30 * v29);
    v65[v26] = v31;
    if (v31 > v27)
    {
      v27 = v31;
      v28 = v26;
    }

    ++v26;
  }

  while (v26 != 15);
  if (v27 / v25 < v10)
  {
    return 15;
  }

  v49 = v25 * v10;
  if (v28 <= 2)
  {
    if (v28)
    {
      if (v28 != 1)
      {
        if (v28 != 2)
        {
          return v28;
        }

        v50 = v68;
        v51 = v66;
        v52 = v73;
        if (v68 > v66)
        {
          if (v68 <= v73)
          {
LABEL_55:
            acLog("    leftcenter=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v73 / v25);
            if (v52 <= v49)
            {
              return v28;
            }

            return 11;
          }

          goto LABEL_35;
        }

        if (v66 <= v73)
        {
          goto LABEL_55;
        }

        acLog("    topleft=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v66 / v25);
        if (v51 <= v49)
        {
          return v28;
        }

        return 4;
      }

      v50 = v68;
      v61 = v69;
      v62 = v72;
      if (v68 > v69)
      {
        if (v68 > v72)
        {
LABEL_35:
          acLog("    bottomleft=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v50 / v25);
          if (v50 > v49)
          {
            return 6;
          }

          return v28;
        }

        goto LABEL_65;
      }

      if (v69 <= v72)
      {
LABEL_65:
        acLog("    bottomcenter=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v72 / v25);
        if (v62 <= v49)
        {
          return v28;
        }

        return 10;
      }

      acLog("    bottomright=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v69 / v25);
      if (v61 <= v49)
      {
        return v28;
      }

      return 7;
    }

    v56 = v66;
    v57 = v67;
    v58 = v71;
    if (v66 > v67)
    {
      if (v66 > v71)
      {
        acLog("    topleft=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v66 / v25);
        if (v56 <= v49)
        {
          return v28;
        }

        return 4;
      }

      goto LABEL_42;
    }

    if (v67 <= v71)
    {
LABEL_42:
      acLog("    topcenter=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v71 / v25);
      if (v58 <= v49)
      {
        return v28;
      }

      return 9;
    }

    goto LABEL_45;
  }

  if (v28 == 3)
  {
    v59 = v69;
    v57 = v67;
    v60 = v74;
    if (v69 <= v67)
    {
      if (v67 > v74)
      {
LABEL_45:
        acLog("    topright=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v57 / v25);
        if (v57 > v49)
        {
          return 5;
        }

        return v28;
      }
    }

    else if (v69 > v74)
    {
      acLog("    bottomright=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v69 / v25);
      if (v59 <= v49)
      {
        return v28;
      }

      return 7;
    }

    acLog("    rightcenter=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v74 / v25);
    if (v60 <= v49)
    {
      return v28;
    }

    return 12;
  }

  if (v28 == 13)
  {
    v64 = v71;
    v63 = v72;
    v55 = v70;
    if (v72 <= v71)
    {
      if (v71 > v70)
      {
        acLog("    topcenter=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v71 / v25);
        if (v64 <= v49)
        {
          return v28;
        }

        return 9;
      }
    }

    else if (v72 > v70)
    {
      acLog("    bottomcenter=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v72 / v25);
      if (v63 <= v49)
      {
        return v28;
      }

      return 10;
    }

    goto LABEL_63;
  }

  if (v28 != 14)
  {
    return v28;
  }

  v54 = v73;
  v53 = v74;
  v55 = v70;
  if (v73 > v74)
  {
    if (v73 > v70)
    {
      acLog("    leftcenter=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v73 / v25);
      if (v54 <= v49)
      {
        return v28;
      }

      return 11;
    }

    goto LABEL_63;
  }

  if (v74 > v70)
  {
    acLog("    rightcenter=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v74 / v25);
    if (v53 <= v49)
    {
      return v28;
    }

    return 12;
  }

LABEL_63:
  acLog("    center=%.2f\n", v41, v42, v43, v44, v45, v46, v47, v55 / v25);
  if (v55 > v49)
  {
    return 8;
  }

  return v28;
}

- (CGRect)computeClippingWithinSize:(CGSize)size forImportantRect:(CGRect)rect andType:(int)type restrictRect:(CGRect)restrictRect
{
  height = size.height;
  width = size.width;
  v9 = rect.origin.x + rect.size.width * 0.5;
  v10 = rect.origin.y + rect.size.height * 0.5;
  v11 = [(AutoCropper *)self determineBestPositionWithinSize:*&type forImportantRect:size.width restrictRect:size.height, *&restrictRect.origin.x, *&restrictRect.origin.y, *&restrictRect.size.width, *&restrictRect.size.height];
  acLog("Best is %d\n", v12, v13, v14, v15, v16, v17, v18, v11);
  [(AutoCropper *)self rectWithSize:v11 andPoint:width inPosition:height fromOriginalSize:v9, v10, width, height];

  [AutoCropper scaleRect:"scaleRect:toFitSize:withAnchorPoint:" toFitSize:? withAnchorPoint:?];
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGRect)computeClippingWithinSize:(CGSize)size forMultipleRects:(id)rects
{
  height = size.height;
  width = size.width;
  v44 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v7 = size.height;
  v41 = 0u;
  v42 = 0u;
  v8 = [rects countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v16 = v8;
    v17 = *v40;
    v18 = 0.0;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v40 != v17)
        {
          objc_enumerationMutation(rects);
        }

        v20 = *(*(&v39 + 1) + 8 * i);
        v37 = 0u;
        v38 = 0u;
        [v20 getValue:&v37];
        if (*(&v37 + 1) < v7)
        {
          v7 = *(&v37 + 1);
        }

        if (*(&v37 + 1) + *(&v38 + 1) > v18)
        {
          v18 = *(&v37 + 1) + *(&v38 + 1);
        }
      }

      v16 = [rects countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v16);
  }

  else
  {
    v18 = 0.0;
  }

  if (v18 <= v7)
  {
    v28 = 0.0;
    goto LABEL_24;
  }

  v21 = height / 3.0;
  v22 = height * 0.5;
  v24 = (v7 + v18) * 0.5;
  v25 = vabds_f32(v21, v24);
  v26 = vabds_f32(v22, v24);
  v27 = vabds_f32(v21 + v21, v24);
  v28 = 0.0;
  if (v25 >= v26)
  {
    if (v26 < v27)
    {
LABEL_22:
      v32 = 0.0;
      v33 = width;
      v31 = height;
      goto LABEL_23;
    }

LABEL_21:
    acLog("Want bottom\n", v9, v10, v11, v12, v13, v14, v15, 0.0);
    v28 = 0.0;
    goto LABEL_22;
  }

  if (v25 >= v27)
  {
    goto LABEL_21;
  }

  v29 = width / height;
  if (v24 <= v21)
  {
    v36 = v24 * 3.0;
    v33 = ((v24 * 3.0) * v29);
    v31 = v36;
    v28 = 0.0;
    v32 = 0.0;
  }

  else
  {
    v30 = (height - v24) * 3.0 * 0.5;
    v31 = v30;
    v32 = height - v30;
    v33 = (v29 * v30);
    v28 = 0.0;
  }

LABEL_23:
  v23 = width * height;
  if (v33 * v31 / v23 >= 0.8)
  {
    height = v31;
    width = v33;
    goto LABEL_26;
  }

LABEL_24:
  v32 = 0.0;
LABEL_26:
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v32;
  result.origin.x = v28;
  return result;
}

- (CGSize)originalImageSize
{
  width = self->originalImageSize.width;
  height = self->originalImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end