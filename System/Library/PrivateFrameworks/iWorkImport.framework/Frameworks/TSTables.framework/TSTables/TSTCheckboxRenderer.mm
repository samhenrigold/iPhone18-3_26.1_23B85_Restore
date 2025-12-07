@interface TSTCheckboxRenderer
+ (CGRect)frameWithViewScale:(double)scale contentFrame:(CGRect)frame;
+ (CGRect)frameWithViewScale:(double)scale contentFrame:(CGRect)frame checked:(BOOL)checked outCheckboxImage:(id *)image outCheckboxSize:(CGSize *)size;
+ (id)imageForScale:(double)scale checked:(BOOL)checked outDrawingScale:(double *)drawingScale;
+ (void)renderCheckbox:(BOOL)checkbox viewScale:(double)scale intoContext:(CGContext *)context rect:(CGRect)rect color:(id)color;
@end

@implementation TSTCheckboxRenderer

+ (id)imageForScale:(double)scale checked:(BOOL)checked outDrawingScale:(double *)drawingScale
{
  v7 = @"TSTiOSCheckboxUnchecked6";
  v8 = @"TSTiOSCheckboxUnchecked12";
  v9 = @"TSTiOSCheckboxUnchecked18";
  if (scale > 1.5)
  {
    v9 = @"TSTiOSCheckboxUnchecked24";
  }

  if (scale > 1.0)
  {
    v8 = v9;
  }

  if (scale > 0.5)
  {
    v7 = v8;
  }

  v10 = @"TSTiOSCheckboxChecked6";
  v11 = @"TSTiOSCheckboxChecked12";
  v12 = @"TSTiOSCheckboxChecked18";
  if (scale > 1.5)
  {
    v12 = @"TSTiOSCheckboxChecked24";
  }

  if (scale > 1.0)
  {
    v11 = v12;
  }

  if (scale > 0.5)
  {
    v10 = v11;
  }

  if (checked)
  {
    v13 = v10;
  }

  else
  {
    v13 = v7;
  }

  v14 = sub_2214453B4(v13);
  if (drawingScale)
  {
    v15 = 2.0;
    if (scale > 0.5)
    {
      v15 = 1.0;
      if (scale > 1.0)
      {
        v15 = 0.666666687;
        if (scale > 1.5)
        {
          v15 = 0.5;
        }
      }
    }

    *drawingScale = v15;
  }

  return v14;
}

+ (CGRect)frameWithViewScale:(double)scale contentFrame:(CGRect)frame
{
  objc_msgSend_frameWithViewScale_contentFrame_checked_outCheckboxImage_outCheckboxSize_(self, a2, 0, 0, 0, scale, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (CGRect)frameWithViewScale:(double)scale contentFrame:(CGRect)frame checked:(BOOL)checked outCheckboxImage:(id *)image outCheckboxSize:(CGSize *)size
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v37 = 0;
  v16 = objc_msgSend_imageForScale_checked_outDrawingScale_(self, a2, checked, &v37, scale);
  if (!v16)
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "+[TSTCheckboxRenderer frameWithViewScale:contentFrame:checked:outCheckboxImage:outCheckboxSize:]", v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCheckboxRenderer.m", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 165, 0, "No checkbox image for rendering!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  objc_msgSend_size(v16, v13, v14, v15);
  TSUMultiplySizeScalar();
  v27 = v26;
  v29 = v28;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  MidX = CGRectGetMidX(v38);
  v39.origin.x = x;
  v39.origin.y = y;
  v39.size.width = width;
  v39.size.height = height;
  MidY = CGRectGetMidY(v39);
  if (image)
  {
    v32 = v16;
    *image = v16;
  }

  if (size)
  {
    size->width = v27;
    size->height = v29;
  }

  v33 = MidX - v27 * 0.5;
  v34 = MidY - v29 * 0.5;
  v35 = v27;
  v36 = v29;
  result.size.height = v36;
  result.size.width = v35;
  result.origin.y = v34;
  result.origin.x = v33;
  return result;
}

+ (void)renderCheckbox:(BOOL)checkbox viewScale:(double)scale intoContext:(CGContext *)context rect:(CGRect)rect color:(id)color
{
  v33 = *MEMORY[0x277CBF3A8];
  v32 = 0;
  objc_msgSend_frameWithViewScale_contentFrame_checked_outCheckboxImage_outCheckboxSize_(self, a2, checkbox, &v32, &v33, scale, rect.origin.x);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memset(&v31, 0, sizeof(v31));
  v16 = v32;
  CGContextGetUserSpaceToDeviceSpaceTransform(&v31, context);
  v30 = v31;
  v34.origin.x = v9;
  v34.origin.y = v11;
  v34.size.width = v13;
  v34.size.height = v15;
  v35 = CGRectApplyAffineTransform(v34, &v30);
  v36 = CGRectIntegral(v35);
  x = v36.origin.x;
  y = v36.origin.y;
  width = v36.size.width;
  height = v36.size.height;
  v29 = v31;
  CGAffineTransformInvert(&v30, &v29);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v38 = CGRectApplyAffineTransform(v37, &v30);
  v21 = v38.origin.x;
  v22 = v38.origin.y;
  v23 = v38.size.width;
  v24 = v38.size.height;
  CGContextSaveGState(context);
  CGContextClipToRectSafe();
  v39.origin.x = v21;
  v39.origin.y = v22;
  v39.size.width = v23;
  v39.size.height = v24;
  MinX = CGRectGetMinX(v39);
  v40.origin.x = v21;
  v40.origin.y = v22;
  v40.size.width = v23;
  v40.size.height = v24;
  MaxY = CGRectGetMaxY(v40);
  CGContextTranslateCTM(context, MinX, MaxY);
  CGContextScaleCTM(context, 1.0, -1.0);
  v28 = objc_msgSend_CGImageForSize_inContext_orContentsScaleProvider_(v16, v27, context, 0, v33);

  TSURectWithSize();
  CGContextDrawImage(context, v41, v28);
  CGContextRestoreGState(context);
}

@end