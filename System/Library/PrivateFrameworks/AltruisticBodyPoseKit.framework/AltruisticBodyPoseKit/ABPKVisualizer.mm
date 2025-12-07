@interface ABPKVisualizer
+ (void)_drawRectOfSize:(int)size posx:(int)posx posy:(int)posy pImage:(vImage_Buffer *)image red:(unsigned __int8)red green:(unsigned __int8)green blue:(unsigned __int8)blue;
- (ABPKVisualizer)init;
- (BOOL)jointInImageDimensions:(CGSize)dimensions imageDimensions:;
- (int)drawBoundingBox:(CGRect)box withColor:(__CVBuffer *)color OnImage:(__CVBuffer *)image andGenerateOverlayImage:;
- (int)drawFaceBbox:(__CVBuffer *)bbox detectedBodies2d:(id)bodies2d confidences:(id)confidences skeletonDefinition:(id)definition overlayImage:(__CVBuffer *)image color:;
- (int)drawLineFromPoint:(unint64_t)point ToPoint:(vImage_Buffer *)toPoint withThickness:withColor:OnImage:;
- (int)generateStickFigureImageFrom:(__CVBuffer *)from detectedBodies2d:(id)bodies2d confidences:(id)confidences skeletonDefinition:(id)definition overlayImage:(__CVBuffer *)image color:(BOOL)color faceOnly:;
- (void)dealloc;
- (void)drawFaceBboxEdgewithJoints:(id)joints withSkeletonDefinition:(id)definition fromPostion:(vImage_Buffer *)postion toPosition:OnImage:color:;
- (void)overlayJoints:(id)joints withSkeletonDefinition:(id)definition confidences:(id)confidences OnImage:(vImage_Buffer *)image color:(BOOL)color faceOnly:;
@end

@implementation ABPKVisualizer

- (ABPKVisualizer)init
{
  v5.receiver = self;
  v5.super_class = ABPKVisualizer;
  v2 = [(ABPKVisualizer *)&v5 init];
  if (v2)
  {
    VTPixelTransferSessionCreate(*MEMORY[0x277CBECE8], &v2->_pixelTransferSession);
    v2->_pixelBufferPoolBGRA = 0;
    *&v3 = 0xFF00000000;
    *(&v3 + 1) = 0xFF00000000;
    *v2->_highConfidenceColor = v3;
    *v2->_mediumConfidenceColor = xmmword_23EE281D0;
    *v2->_lowConfidenceColor = xmmword_23EE281B0;
  }

  return v2;
}

- (void)dealloc
{
  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    CFRelease(pixelTransferSession);
  }

  pixelBufferPoolBGRA = self->_pixelBufferPoolBGRA;
  if (pixelBufferPoolBGRA)
  {
    CVPixelBufferPoolRelease(pixelBufferPoolBGRA);
    self->_pixelBufferPoolBGRA = 0;
  }

  pixelBufferPoolYUV = self->_pixelBufferPoolYUV;
  if (pixelBufferPoolYUV)
  {
    CVPixelBufferPoolRelease(pixelBufferPoolYUV);
    self->_pixelBufferPoolYUV = 0;
  }

  v6.receiver = self;
  v6.super_class = ABPKVisualizer;
  [(ABPKVisualizer *)&v6 dealloc];
}

- (BOOL)jointInImageDimensions:(CGSize)dimensions imageDimensions:
{
  if (*&dimensions.width < 0.0 || dimensions.height <= *&dimensions.width)
  {
    return 0;
  }

  return v3 > *(&dimensions.width + 1) && *(&dimensions.width + 1) >= 0.0;
}

- (int)generateStickFigureImageFrom:(__CVBuffer *)from detectedBodies2d:(id)bodies2d confidences:(id)confidences skeletonDefinition:(id)definition overlayImage:(__CVBuffer *)image color:(BOOL)color faceOnly:
{
  colorCopy = color;
  v22 = v8;
  bodies2dCopy = bodies2d;
  confidencesCopy = confidences;
  definitionCopy = definition;
  v18 = VTPixelTransferSessionTransferImage(self->_pixelTransferSession, from, image);
  if (v18)
  {
    v19 = __ABPKLogSharedInstance(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v19, OS_LOG_TYPE_ERROR, " Could not transfer image. ", buf, 2u);
    }

    v20 = -6660;
  }

  else
  {
    CVPixelBufferLockBaseAddress(image, 0);
    *buf = CVPixelBufferGetBaseAddress(image);
    Height = CVPixelBufferGetHeight(image);
    Width = CVPixelBufferGetWidth(image);
    BytesPerRow = CVPixelBufferGetBytesPerRow(image);
    [(ABPKVisualizer *)self overlayJoints:bodies2dCopy withSkeletonDefinition:definitionCopy confidences:confidencesCopy OnImage:buf color:colorCopy faceOnly:v22];
    CVPixelBufferUnlockBaseAddress(image, 0);
    v20 = 0;
  }

  return v20;
}

- (int)drawBoundingBox:(CGRect)box withColor:(__CVBuffer *)color OnImage:(__CVBuffer *)image andGenerateOverlayImage:
{
  v26 = v5;
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v12 = VTPixelTransferSessionTransferImage(self->_pixelTransferSession, color, image);
  if (v12)
  {
    v13 = __ABPKLogSharedInstance(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v13, OS_LOG_TYPE_ERROR, " Could not transfer image. ", buf, 2u);
    }

    return -6660;
  }

  else
  {
    CVPixelBufferLockBaseAddress(image, 0);
    *buf = CVPixelBufferGetBaseAddress(image);
    v28 = CVPixelBufferGetHeight(image);
    v29 = CVPixelBufferGetWidth(image);
    BytesPerRow = CVPixelBufferGetBytesPerRow(image);
    *&v16 = x;
    *&v17 = y;
    v18 = COERCE_DOUBLE(__PAIR64__(v17, v16));
    LODWORD(v19) = v16;
    v30 = BytesPerRow;
    *&v20 = x + width;
    v22 = COERCE_DOUBLE(__PAIR64__(v17, LODWORD(v20)));
    v23 = v18;
    v21 = y + height;
    *(&v19 + 1) = v21;
    *(&v20 + 1) = v21;
    v24 = v20;
    v25 = v19;
    [(ABPKVisualizer *)self drawLineFromPoint:5 ToPoint:buf withThickness:v18 withColor:v22 OnImage:v26];
    [(ABPKVisualizer *)self drawLineFromPoint:5 ToPoint:buf withThickness:v22 withColor:v24 OnImage:v26];
    [(ABPKVisualizer *)self drawLineFromPoint:5 ToPoint:buf withThickness:v24 withColor:v25 OnImage:v26];
    [(ABPKVisualizer *)self drawLineFromPoint:5 ToPoint:buf withThickness:v25 withColor:v23 OnImage:v26];
    CVPixelBufferUnlockBaseAddress(image, 0);
    return 0;
  }
}

- (int)drawLineFromPoint:(unint64_t)point ToPoint:(vImage_Buffer *)toPoint withThickness:withColor:OnImage:
{
  v8 = v5;
  *&v7 = v4;
  v9 = vsub_f32(v4, v5);
  v21 = (point >> 1);
  if (sqrtf(vaddv_f32(vmul_f32(v9, v9))) > v21)
  {
    v12 = vsub_f32(v5, *&v7);
    v13 = vmul_f32(v12, v12);
    v13.f32[0] = sqrtf(vaddv_f32(v13));
    v14 = vmul_n_f32(vdiv_f32(v12, vdup_lane_s32(v13, 0)), v21);
    v15 = v6;
    v16 = BYTE4(v6);
    v17 = BYTE8(v6);
    do
    {
      *&v7 = vadd_f32(v14, *&v7);
      v22 = v7;
      LOBYTE(v20) = v17;
      [objc_opt_class() _drawRectOfSize:point posx:*&v7 posy:*(&v7 + 1) pImage:toPoint red:v15 green:v16 blue:v20];
      v7 = v22;
      v18 = vsub_f32(*&v22, v8);
    }

    while (sqrtf(vaddv_f32(vmul_f32(v18, v18))) > v21);
  }

  return 0;
}

- (int)drawFaceBbox:(__CVBuffer *)bbox detectedBodies2d:(id)bodies2d confidences:(id)confidences skeletonDefinition:(id)definition overlayImage:(__CVBuffer *)image color:
{
  v61 = v7;
  bodies2dCopy = bodies2d;
  definitionCopy = definition;
  v14 = VTPixelTransferSessionTransferImage(self->_pixelTransferSession, bbox, image);
  if (v14)
  {
    v15 = __ABPKLogSharedInstance(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23EDDC000, v15, OS_LOG_TYPE_ERROR, " Could not transfer image. ", buf, 2u);
    }

    v16 = -6660;
  }

  else
  {
    CVPixelBufferLockBaseAddress(image, 0);
    *buf = CVPixelBufferGetBaseAddress(image);
    Height = CVPixelBufferGetHeight(image);
    Width = CVPixelBufferGetWidth(image);
    BytesPerRow = CVPixelBufferGetBytesPerRow(image);
    v59 = Width;
    v17 = Height;
    v18 = [bodies2dCopy objectAtIndexedSubscript:0];
    v19 = [v18 objectAtIndexedSubscript:1];
    [v19 floatValue];
    v21 = Height * v20;
    v22 = v21;
    _NF = v21 < 0.0;
    v24 = 0.5;
    if (_NF)
    {
      v24 = -0.5;
    }

    v25 = (v24 + v22);

    v26 = [bodies2dCopy objectAtIndexedSubscript:17];
    v27 = [v26 objectAtIndexedSubscript:0];
    [v27 floatValue];
    v56 = v28;

    v29 = [bodies2dCopy objectAtIndexedSubscript:18];
    v30 = [v29 objectAtIndexedSubscript:0];
    [v30 floatValue];
    v31.i32[1] = v56;
    v32 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(v31), v59));
    v33 = vmvn_s8(vcgez_f32(v32));
    v34.i64[0] = v33.i32[0];
    v34.i64[1] = v33.i32[1];
    __asm
    {
      FMOV            V2.2D, #0.5
      FMOV            V3.2D, #-0.5
    }

    v57 = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vbslq_s8(v34, _Q3, _Q2), vcvtq_f64_f32(v32))));

    v40 = v57.i32[0];
    *&v41 = (v57.i32[0] - v57.i32[1]);
    v42 = v25 + *&v41 * -0.7;
    v43 = 1.0;
    v44 = 1.0;
    if (v42 > 0.0)
    {
      v44 = v25 + *&v41 * -0.7;
      if (v17 <= v42)
      {
        v44 = v17 + -1.0;
      }
    }

    v45 = v25 + *&v41 * 0.9;
    if (v45 > 0.0)
    {
      v43 = v45;
      if (v17 <= v45)
      {
        v43 = v17 + -1.0;
      }
    }

    v46 = (v59 + 7.0 + -1.0);
    if (v59 + 7.0 > v57.u32[1])
    {
      v46 = v57.i32[1];
    }

    if (v57.i32[1] >= 8)
    {
      v47 = v46;
    }

    else
    {
      v47 = 8;
    }

    *&v41 = v57.i32[0];
    if (v57.i32[0] < -6)
    {
      v40 = 8;
    }

    if (v59 + -7.0 <= *&v41)
    {
      v40 = (v59 + -7.0 + -1.0);
    }

    *&v41 = (v47 - 7);
    v48 = v41;
    *&v49 = *&v41;
    *(&v48 + 1) = v44;
    v50 = *&v48;
    v53 = v48;
    *&v51 = (v40 + 7);
    *&v48 = *&v51;
    *(&v48 + 1) = v44;
    *(&v49 + 1) = v43;
    v55 = *&v48;
    v58 = v49;
    *(&v51 + 1) = v43;
    v60 = v51;
    [(ABPKVisualizer *)self drawFaceBboxEdgewithJoints:bodies2dCopy withSkeletonDefinition:definitionCopy fromPostion:buf toPosition:v50 OnImage:*&v48 color:v61, v53];
    [(ABPKVisualizer *)self drawFaceBboxEdgewithJoints:bodies2dCopy withSkeletonDefinition:definitionCopy fromPostion:buf toPosition:v54 OnImage:v58 color:v61];
    [(ABPKVisualizer *)self drawFaceBboxEdgewithJoints:bodies2dCopy withSkeletonDefinition:definitionCopy fromPostion:buf toPosition:v58 OnImage:v60 color:v61];
    [(ABPKVisualizer *)self drawFaceBboxEdgewithJoints:bodies2dCopy withSkeletonDefinition:definitionCopy fromPostion:buf toPosition:v55 OnImage:v60 color:v61];
    CVPixelBufferUnlockBaseAddress(image, 0);
    v16 = 0;
  }

  return v16;
}

- (void)drawFaceBboxEdgewithJoints:(id)joints withSkeletonDefinition:(id)definition fromPostion:(vImage_Buffer *)postion toPosition:OnImage:color:
{
  *&v8 = v5;
  v9 = vsub_f32(v5, v6);
  if (sqrtf(vaddv_f32(vmul_f32(v9, v9))) > 2.0)
  {
    v11 = v6;
    v12 = vsub_f32(v6, *&v8);
    v13 = vmul_f32(v12, v12);
    v13.f32[0] = sqrtf(vaddv_f32(v13));
    v14 = vdiv_f32(v12, vdup_lane_s32(v13, 0));
    v15 = vadd_f32(v14, v14);
    v16 = v7;
    v17 = BYTE4(v7);
    v18 = BYTE8(v7);
    do
    {
      *&v8 = vadd_f32(v15, *&v8);
      v21 = v8;
      LOBYTE(v20) = v18;
      [objc_opt_class() _drawRectOfSize:5 posx:*&v8 posy:*(&v8 + 1) pImage:postion red:v16 green:v17 blue:v20];
      v8 = v21;
      v19 = vsub_f32(*&v21, v11);
    }

    while (sqrtf(vaddv_f32(vmul_f32(v19, v19))) > 2.0);
  }
}

- (void)overlayJoints:(id)joints withSkeletonDefinition:(id)definition confidences:(id)confidences OnImage:(vImage_Buffer *)image color:(BOOL)color faceOnly:
{
  colorCopy = color;
  v90 = v7;
  jointsCopy = joints;
  definitionCopy = definition;
  confidencesCopy = confidences;
  v14 = colorCopy;
  v85 = confidencesCopy;
  width = image->width;
  height = image->height;
  v87 = BYTE4(v90);
  v88 = v90;
  v17 = BYTE8(v90);
  if ([jointsCopy count])
  {
    v18 = 0;
    do
    {
      if (!v14 || v18 <= 0x12 && ((1 << v18) & 0x6C000) != 0)
      {
        v19 = [definitionCopy parentJoint:v18];
        if (v19 != -1)
        {
          v20 = v19;
          v21 = [jointsCopy objectAtIndexedSubscript:v18];
          v22 = [v21 objectAtIndexedSubscript:0];
          [v22 floatValue];
          v24 = width * v23;
          v25 = v24;
          v26 = v24 >= 0.0 ? 0.5 : -0.5;
          v27 = (v26 + v25);

          v28 = [jointsCopy objectAtIndexedSubscript:v18];
          v29 = [v28 objectAtIndexedSubscript:1];
          [v29 floatValue];
          v31 = height * v30;
          v32 = v31;
          v33 = v31 >= 0.0 ? 0.5 : -0.5;
          v34 = v14;
          v35 = (v33 + v32);

          *&v36 = v27;
          v37 = v35;
          v14 = v34;
          *(&v36 + 1) = v37;
          v91 = v36;
          if ([ABPKVisualizer jointInImageDimensions:"jointInImageDimensions:imageDimensions:" imageDimensions:?])
          {
            v38 = [jointsCopy objectAtIndexedSubscript:v20];
            v39 = [v38 objectAtIndexedSubscript:0];
            [v39 floatValue];
            v41 = width * v40;
            v42 = v41;
            v43 = v41 >= 0.0 ? 0.5 : -0.5;
            v44 = (v43 + v42);

            v45 = [jointsCopy objectAtIndexedSubscript:v20];
            v46 = [v45 objectAtIndexedSubscript:1];
            [v46 floatValue];
            v48 = height * v47;
            v49 = v48;
            v50 = v48 >= 0.0 ? 0.5 : -0.5;
            v51 = (v50 + v49);

            v52.f32[0] = v44;
            v14 = v34;
            v52.f32[1] = v51;
            v89 = v52;
            v53 = [ABPKVisualizer jointInImageDimensions:"jointInImageDimensions:imageDimensions:" imageDimensions:?];
            v54 = v91;
            if (v53)
            {
              v55 = vsub_f32(*&v91, v89);
              if (sqrtf(vaddv_f32(vmul_f32(v55, v55))) > 2.0)
              {
                v56 = vsub_f32(v89, *&v91);
                v57 = vmul_f32(v56, v56);
                v57.f32[0] = sqrtf(vaddv_f32(v57));
                v58 = vdiv_f32(v56, vdup_lane_s32(v57, 0));
                v59 = vadd_f32(v58, v58);
                do
                {
                  *&v54 = vadd_f32(v59, *&v54);
                  v92 = v54;
                  LOBYTE(v84) = v17;
                  [objc_opt_class() _drawRectOfSize:4 posx:*&v54 posy:*(&v54 + 1) pImage:image red:v88 green:v87 blue:v84];
                  v54 = v92;
                  v60 = vsub_f32(*&v92, v89);
                }

                while (sqrtf(vaddv_f32(vmul_f32(v60, v60))) > 2.0);
              }
            }
          }
        }
      }

      ++v18;
    }

    while (v18 < [jointsCopy count]);
  }

  if ([jointsCopy count])
  {
    v61 = 0;
    do
    {
      if (!v14 || v61 <= 0x12 && ((1 << v61) & 0x6C001) != 0)
      {
        v62 = [jointsCopy objectAtIndexedSubscript:v61];
        v63 = [v62 objectAtIndexedSubscript:0];
        [v63 floatValue];
        v65 = width * v64;
        v66 = v65;
        v67 = v65 >= 0.0 ? 0.5 : -0.5;
        v68 = (v67 + v66);

        v69 = [jointsCopy objectAtIndexedSubscript:v61];
        v70 = [v69 objectAtIndexedSubscript:1];
        [v70 floatValue];
        v72 = height * v71;
        v73 = v72;
        v74 = v72 >= 0.0 ? 0.5 : -0.5;
        v75 = (v74 + v73);

        *&v76 = v68;
        *(&v76 + 1) = v75;
        if ([(ABPKVisualizer *)self jointInImageDimensions:v76 imageDimensions:width, height])
        {
          if (v85)
          {
            v77 = [v85 objectAtIndexedSubscript:v61];
            [v77 floatValue];
            v79 = v78;

            if (v79 >= 0.2)
            {
              v80 = objc_opt_class();
              if (v79 >= 0.5)
              {
                v81 = *self->_highConfidenceColor;
              }

              else
              {
                v81 = *self->_mediumConfidenceColor;
              }
            }

            else
            {
              v80 = objc_opt_class();
              v81 = *self->_lowConfidenceColor;
            }

            LOBYTE(v84) = BYTE8(v81);
            v82 = v81;
            v83 = BYTE4(v81);
          }

          else
          {
            v80 = objc_opt_class();
            LOBYTE(v84) = v17;
            v82 = v88;
            v83 = v87;
          }

          [v80 _drawRectOfSize:8 posx:v68 posy:v75 pImage:image red:v82 green:v83 blue:v84];
        }
      }

      ++v61;
    }

    while ([jointsCopy count] > v61);
  }
}

+ (void)_drawRectOfSize:(int)size posx:(int)posx posy:(int)posy pImage:(vImage_Buffer *)image red:(unsigned __int8)red green:(unsigned __int8)green blue:(unsigned __int8)blue
{
  rowBytes = image->rowBytes;
  v12 = vmax_s32(vadd_s32(vdup_n_s32(size / -2), __PAIR64__(posx, posy)), 0);
  v13 = vdup_n_s32(size);
  v14 = vadd_s32(v12, v13);
  v15.i64[0] = -1;
  v15.i64[1] = -1;
  v16.i64[0] = v14.i32[0];
  v16.i64[1] = v14.i32[1];
  v17 = vbsl_s8(vmovn_s64(vcgtq_u64(v16, vaddq_s64(*&image->height, v15))), vadd_s32(vmovn_s64(*&image->height), vmvn_s8(v12)), v13);
  v18.data = image->data + rowBytes * v12.u32[0] + (4 * v12.i32[1]);
  v16.i64[0] = v17.i32[0];
  v16.i64[1] = v17.i32[1];
  *&v18.height = v16;
  v18.rowBytes = rowBytes;
  vImageOverwriteChannelsWithScalar_ARGB8888(0xFFu, &v18, &v18, 1u, 0x10u);
  vImageOverwriteChannelsWithScalar_ARGB8888(red, &v18, &v18, 2u, 0x10u);
  vImageOverwriteChannelsWithScalar_ARGB8888(green, &v18, &v18, 4u, 0x10u);
  vImageOverwriteChannelsWithScalar_ARGB8888(blue, &v18, &v18, 8u, 0x10u);
}

@end