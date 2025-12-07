@interface LAUIHorizontalArrowView(PKAdditions)
+ (uint64_t)pkui_cameraEdgeForScreen:()PKAdditions;
- (uint64_t)pkui_updateFrame;
@end

@implementation LAUIHorizontalArrowView(PKAdditions)

+ (uint64_t)pkui_cameraEdgeForScreen:()PKAdditions
{
  mainScreen = a3;
  if (!mainScreen)
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  }

  v17 = 0;
  v4 = PKUIFrontCameraCurrentPosition(mainScreen, &v17);
  v6 = v5;
  [v17 bounds];
  if (v4 <= v7)
  {
    v15 = 0;
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    if (v4 >= CGRectGetMaxX(*&v7))
    {
      v15 = 2;
    }

    else if (v6 <= v12)
    {
      v15 = 1;
    }

    else
    {
      v18.origin.x = v11;
      v18.origin.y = v12;
      v18.size.width = v13;
      v18.size.height = v14;
      if (v6 >= CGRectGetMaxY(v18))
      {
        v15 = 3;
      }

      else
      {
        v15 = 1;
      }
    }
  }

  return v15;
}

- (uint64_t)pkui_updateFrame
{
  superview = [self superview];
  v3 = superview;
  if (superview)
  {
    window = [superview window];
    screen = [window screen];
    if (screen)
    {
      mainScreen = screen;
    }

    else
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];

      if (!mainScreen)
      {
        goto LABEL_7;
      }
    }

    v8 = [objc_opt_class() pkui_cameraEdgeForScreen:mainScreen];
    if ((v8 & 0xFFFFFFFD) != 1)
    {
      v9 = v8;
      [self frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      coordinateSpace = [mainScreen coordinateSpace];
      [coordinateSpace bounds];
      v20 = v19;
      memset(&v39, 0, sizeof(v39));
      [v3 convertRect:coordinateSpace fromCoordinateSpace:?];
      remainder = v41;
      CGRectDivide(v41, &v39, &remainder, 80.0, v9);
      CGRectDivide(remainder, &v39, &remainder, v15, v9);
      [self setDirection:v9 != CGRectMinXEdge];
      v21.n128_u64[0] = 0xC054000000000000;
      v22.n128_f64[0] = -80.0 - (v15 - v20 * 0.5);
      PKFloatRoundToPixel(v22, v21);
      [self setDisplacement:?];
      v24.n128_u64[0] = *&v39.origin.y;
      v23.n128_u64[0] = *&v39.origin.x;
      v26.n128_u64[0] = *&v39.size.height;
      v25.n128_u64[0] = *&v39.size.width;
      v27.n128_f64[0] = v15;
      v28.n128_f64[0] = v17;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v27, v28, v23, v24, v25, v26, v29);
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v42.origin.x = v11;
      v42.origin.y = v13;
      v42.size.width = v15;
      v42.size.height = v17;
      v43.origin.x = v31;
      v43.origin.y = v33;
      v43.size.width = v35;
      v43.size.height = v37;
      if (!CGRectEqualToRect(v42, v43))
      {
        [self setFrame:{v31, v33, v35, v37}];
      }

      v7 = 1;
      goto LABEL_11;
    }

LABEL_7:
    v7 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

@end