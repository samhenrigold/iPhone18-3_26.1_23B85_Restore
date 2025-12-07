@interface MaskToRoi
- (MaskToRoi)initWithMetalToolBox:(id)box;
- (id)convertInternalBBoxes:(int64_t)boxes;
- (id)convertInternalBBoxesToROI:(int64_t)i;
- (id)getBBoxesUsingGraphTraversalFrom:(__CVBuffer *)from pixValThreshold:(float)threshold bboxSizeThreshold:(float)sizeThreshold scaleFactor:(int)factor roi:(BOOL)roi returnAsDetectedROI:;
- (int64_t)extractRoiByGraphTraversalInput:(__CVBuffer *)input bboxSizeThreshold:(float)threshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:;
- (int64_t)getLSBBoxesUsingGraphTraversalFrom:(__CVBuffer *)from roi:(CGRect)roi pixValThreshold:(float)threshold bboxSizeThreshold:(float)sizeThreshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:;
- (void)convertPackedMaskToRegular:(__CVBuffer *)regular output:(__CVBuffer *)output;
- (void)dealloc;
@end

@implementation MaskToRoi

- (MaskToRoi)initWithMetalToolBox:(id)box
{
  boxCopy = box;
  v12.receiver = self;
  v12.super_class = MaskToRoi;
  v5 = [(MaskToRoi *)&v12 init];
  if (!v5)
  {
    [MaskToRoi initWithMetalToolBox:];
LABEL_12:
    v10 = 0;
    goto LABEL_8;
  }

  if (boxCopy)
  {
    v6 = boxCopy;
  }

  else
  {
    v6 = objc_alloc_init(GGMMetalToolBox);
  }

  metalToolbox = v5->_metalToolbox;
  v5->_metalToolbox = v6;

  *v5->_neighbors = -1;
  *&v5->_neighbors[8] = 0xFFFFFFFFLL;
  *&v5->_neighbors[16] = 0xFFFFFFFF00000000;
  *&v5->_neighbors[24] = 1;
  *&v5->_neighbors[32] = 0x100000000;
  *&v5->_neighbors[40] = 0x100000001;
  *&v5->_neighbors[48] = 0x1FFFFFFFFLL;
  *&v5->_neighbors[56] = 0xFFFFFFFF00000001;
  *&v5->_width = xmmword_437D0;
  v8 = malloc_type_malloc(0x1CF3400uLL, 0x100004000313F17uLL);
  *v5->_connectedPixelsQueue = v8;
  if (!v8)
  {
    [MaskToRoi initWithMetalToolBox:];
    goto LABEL_12;
  }

  v9 = malloc_type_malloc(0x4000uLL, 0x1000040451B5BE8uLL);
  *v5->_bboxList = v9;
  if (!v9)
  {
    [MaskToRoi initWithMetalToolBox:];
    goto LABEL_12;
  }

  v10 = v5;
LABEL_8:

  return v10;
}

- (void)dealloc
{
  integralSumPixelBuffer = self->_integralSumPixelBuffer;
  if (integralSumPixelBuffer)
  {
    CFRelease(integralSumPixelBuffer);
  }

  free(*self->_connectedPixelsQueue);
  free(*self->_bboxList);
  v4.receiver = self;
  v4.super_class = MaskToRoi;
  [(MaskToRoi *)&v4 dealloc];
}

- (id)getBBoxesUsingGraphTraversalFrom:(__CVBuffer *)from pixValThreshold:(float)threshold bboxSizeThreshold:(float)sizeThreshold scaleFactor:(int)factor roi:(BOOL)roi returnAsDetectedROI:
{
  v54 = v7;
  v14 = [[PixelMemory alloc] initWithCvPixelBuffer:from skipClamp:0 readOnly:0];
  Width = CVPixelBufferGetWidth(from);
  Height = CVPixelBufferGetHeight(from);
  stride = [(PixelMemory *)v14 stride];
  bytePerPixel = [(PixelMemory *)v14 bytePerPixel];
  pMemory = [(PixelMemory *)v14 pMemory];
  if (v54.i32[0] <= v54.i32[2])
  {
    v21 = 0;
    v22.i64[0] = Width;
    v22.i64[1] = Height;
    *v22.i8 = vcvt_f32_f64(vcvtq_f64_u64(v22));
    __asm { FMOV            V3.2S, #-1.0 }

    v28 = vadd_f32(*v22.i8, _D3);
    v29 = vadd_f32(vmul_n_f32(*v22.i8, factor), _D3);
    v30 = v54.i32[0];
    v31 = vextq_s8(v54, v54, 8uLL).u64[0];
    do
    {
      if (v54.i32[1] <= v54.i32[3])
      {
        v32 = &pMemory[v30 * bytePerPixel];
        v33 = v30 - 1;
        v34 = v30++;
        v35 = v33;
        v36 = v54.i32[1];
        do
        {
          v20.i8[0] = v32[v36 * stride];
          *v20.i32 = v20.u32[0];
          if (*v20.i32 <= threshold)
          {
            ++v36;
          }

          else
          {
            v37 = 0;
            v38 = v36;
            **self->_connectedPixelsQueue = __PAIR64__(v36, v34);
            v32[v36 * stride] = 0;
            ++v36;
            v39.i32[0] = v35;
            v39.i32[1] = v38 - 1;
            v40 = __PAIR64__(v36, v30);
            v41 = 1;
            do
            {
              v42 = 0;
              v43 = *(*self->_connectedPixelsQueue + 8 * v37);
              v39 = vbsl_s8(vcgt_s32(v43, v39), v39, vadd_s32(v43, -1));
              v44 = vadd_s32(v43, 0x100000001);
              do
              {
                v45 = vadd_s32(*&self->_neighbors[v42], v43);
                *v46.i8 = v45;
                v46.u64[1] = v28;
                v47 = vmovn_s32(vcgtq_s32(vzip1q_s32(v54, v46), vzip2q_s32(vextq_s8(v46, v46, 8uLL), v54)));
                v47.i16[0] = vmaxv_u16(v47);
                if ((v47.i8[0] & 1) == 0)
                {
                  v48 = &pMemory[v45.i32[0] * bytePerPixel];
                  v47.i8[0] = v48[v45.i32[1] * stride];
                  if (v47.u32[0] > threshold)
                  {
                    *(*self->_connectedPixelsQueue + 8 * v41++) = v45;
                    v48[v45.i32[1] * stride] = 0;
                  }
                }

                v42 += 8;
              }

              while (v42 != 64);
              ++v37;
              v40 = vbsl_s8(vcgt_s32(v40, v43), v40, v44);
            }

            while (v41 > v37);
            *v20.i8 = vcvt_s32_f32(vmul_f32(v29, vdiv_f32(vcvt_f32_s32(vcvt_s32_f32(vadd_f32(vcvt_f32_s32(vmax_s32(*v54.i8, v39)), 0x3F0000003F000000))), v28)));
            v49 = vsub_s32(vcvt_s32_f32(vmul_f32(v29, vdiv_f32(vcvt_f32_s32(vcvt_s32_f32(vadd_f32(vcvt_f32_s32(vmin_s32(v31, v40)), 0x3F0000003F000000))), v28))), *v20.i8);
            v50 = vcvt_f32_s32(v49);
            v51 = v50.f32[0] <= sizeThreshold || v50.f32[1] <= sizeThreshold;
            if (!v51 && v21 <= 1023)
            {
              v20.u64[1] = v49;
              v20 = vcvtq_f32_s32(v20);
              *(*self->_bboxList + 16 * v21++) = v20;
            }
          }
        }

        while (v36 != v54.i32[3] + 1);
      }

      else
      {
        ++v30;
      }
    }

    while (v30 != v54.i32[2] + 1);
  }

  else
  {
    v21 = 0;
  }

  if (roi)
  {
    [(MaskToRoi *)self convertInternalBBoxes:v21];
  }

  else
  {
    [(MaskToRoi *)self convertInternalBBoxesToROI:v21];
  }
  v52 = ;

  return v52;
}

- (id)convertInternalBBoxesToROI:(int64_t)i
{
  v5 = +[NSMutableArray array];
  if (i >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [[ROI alloc] initWithBbox:*(*self->_bboxList + 16 * v6)];
      [v5 addObject:v7];

      ++v6;
    }

    while (i != v6);
  }

  return v5;
}

- (id)convertInternalBBoxes:(int64_t)boxes
{
  v5 = +[NSMutableArray array];
  if (boxes >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [[DetectedROI alloc] initWithTrackId:0 trackedCnt:10 andRoi:COERCE_FLOAT(*(*self->_bboxList + 16 * v6)), COERCE_FLOAT(HIDWORD(*(*self->_bboxList + 16 * v6))), COERCE_FLOAT(*(*self->_bboxList + 16 * v6 + 8)), COERCE_FLOAT(HIDWORD(*(*self->_bboxList + 16 * v6)))];
      [v5 addObject:v7];

      ++v6;
    }

    while (boxes != v6);
  }

  return v5;
}

- (int64_t)getLSBBoxesUsingGraphTraversalFrom:(__CVBuffer *)from roi:(CGRect)roi pixValThreshold:(float)threshold bboxSizeThreshold:(float)sizeThreshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:
{
  v10 = v9;
  v48 = *&sizeThreshold;
  Width = CVPixelBufferGetWidth(from);
  Height = CVPixelBufferGetHeight(from);
  BytesPerRow = CVPixelBufferGetBytesPerRow(from);
  if (CVPixelBufferLockBaseAddress(from, 0))
  {
    [MaskToRoi getLSBBoxesUsingGraphTraversalFrom:roi:pixValThreshold:bboxSizeThreshold:scaleFactorInv:validWidth:validHeight:lightSourceBBox:];
    return 0;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(from);
  if (!BaseAddress)
  {
    [MaskToRoi getLSBBoxesUsingGraphTraversalFrom:roi:pixValThreshold:bboxSizeThreshold:scaleFactorInv:validWidth:validHeight:lightSourceBBox:];
    return 0;
  }

  v20 = vmin_s32(__PAIR64__(Height, Width), __PAIR64__(height, width));
  if (v20.i32[0] < 1)
  {
    v21 = 0;
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v23 = vdup_lane_s32(v48, 0);
    v24 = vadd_s32(v20, -1);
    do
    {
      if (v20.i32[1] >= 1)
      {
        v25 = 0;
        v26 = &BaseAddress[v22 >> 3];
        v27 = 1 << (v22 & 7);
        do
        {
          v28 = v26[v25 * BytesPerRow];
          if ((v27 & v28) != 0)
          {
            v29 = 0;
            **self->_connectedPixelsQueue = __PAIR64__(v25, v22);
            v26[v25 * BytesPerRow] = v28 & ~v27;
            v30 = vadd_s32(__PAIR64__(v25, v22), -1);
            v31 = vadd_s32(__PAIR64__(v25, v22), 0x100000001);
            v32 = 1;
            do
            {
              v33 = 0;
              v34 = *(*self->_connectedPixelsQueue + 8 * v29);
              v35 = vadd_s32(v34, -1);
              v36 = vadd_s32(v34, 0x100000001);
              do
              {
                v37 = vadd_s32(*&self->_neighbors[v33], v34);
                v38 = vcgez_s32(v37);
                if ((vpmin_u32(v38, v38).u32[0] & 0x80000000) != 0)
                {
                  v39 = vcgt_s32(v20, v37);
                  if ((vpmin_u32(v39, v39).u32[0] & 0x80000000) != 0)
                  {
                    v40 = &BaseAddress[v37.i32[0] >> 3];
                    v41 = v40[v37.i32[1] * BytesPerRow];
                    v42 = 1 << (v37.i8[0] & 7);
                    if ((v42 & v41) != 0)
                    {
                      *(*self->_connectedPixelsQueue + 8 * v32++) = v37;
                      v40[v37.i32[1] * BytesPerRow] = v41 & ~v42;
                    }
                  }
                }

                v33 += 8;
              }

              while (v33 != 64);
              ++v29;
              v30 = vmin_s32(v35, v30);
              v31 = vmax_s32(v36, v31);
            }

            while (v32 > v29);
            v43 = vcvt_s32_f32(vmla_f32(*(inv + 2), *inv, vadd_f32(vcvt_f32_s32(vmin_s32(v24, v31)), 0x3F0000003F000000)));
            *&v44 = vcvt_f32_s32(vcvt_s32_f32(vmla_f32(*(inv + 2), *inv, vadd_f32(vcvt_f32_s32(vmax_s32(v30, 0)), 0x3F0000003F000000))));
            v45 = vsub_f32(vcvt_f32_s32(v43), *&v44);
            v46 = vcgt_f32(v45, v23);
            if ((vpmax_u32(v46, v46).u32[0] & 0x80000000) != 0 && v21 <= 1023)
            {
              *(&v44 + 1) = v45;
              *(v10 + 16 * v21++) = v44;
            }
          }

          ++v25;
        }

        while (v25 != v20.u32[1]);
      }

      ++v22;
    }

    while (v22 != v20.i32[0]);
  }

  CVPixelBufferUnlockBaseAddress(from, 0);
  return v21;
}

- (int64_t)extractRoiByGraphTraversalInput:(__CVBuffer *)input bboxSizeThreshold:(float)threshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:
{
  v8 = v7;
  v9 = *&height;
  v10 = *&width;
  Width = CVPixelBufferGetWidth(input);
  Height = CVPixelBufferGetHeight(input);
  if (!v8)
  {
    [MaskToRoi extractRoiByGraphTraversalInput:? bboxSizeThreshold:? scaleFactorInv:? validWidth:? validHeight:? lightSourceBBox:?];
    return 0;
  }

  v19 = Height;
  if (Width != self->_width || Height != self->_height)
  {
    self->_width = Width;
    self->_height = Height;
    free(*self->_connectedPixelsQueue);
    v20 = malloc_type_malloc(8 * Width * v19, 0x100004000313F17uLL);
    *self->_connectedPixelsQueue = v20;
    if (!v20)
    {
      [MaskToRoi extractRoiByGraphTraversalInput:bboxSizeThreshold:scaleFactorInv:validWidth:validHeight:lightSourceBBox:];
      return 0;
    }
  }

  y = CGRectZero.origin.y;
  v22 = CGRectZero.size.width;
  v23 = CGRectZero.size.height;
  LODWORD(v17) = 1008981770;
  *&v18 = threshold;

  return [(MaskToRoi *)self getLSBBoxesUsingGraphTraversalFrom:input roi:inv pixValThreshold:v10 bboxSizeThreshold:v9 scaleFactorInv:v8 validWidth:CGRectZero.origin.x validHeight:y lightSourceBBox:v22, v23, v17, v18];
}

- (void)convertPackedMaskToRegular:(__CVBuffer *)regular output:(__CVBuffer *)output
{
  v22 = [[PixelMemory alloc] initWithCvPixelBuffer:regular skipClamp:0 readOnly:1];
  v5 = [[PixelMemory alloc] initWithCvPixelBuffer:output];
  pMemory = [(PixelMemory *)v5 pMemory];
  pMemory2 = [(PixelMemory *)v22 pMemory];
  width = [(PixelMemory *)v5 width];
  width2 = [(PixelMemory *)v5 width];
  if ([(PixelMemory *)v5 height]>= 1)
  {
    v10 = 0;
    v11 = width >> 3;
    v21 = width2 & 7;
    do
    {
      v12 = [(PixelMemory *)v5 stride]* v10;
      if (v11 < 1)
      {
        v18 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        do
        {
          stride = [(PixelMemory *)v22 stride];
          v16 = v14 + 8;
          v17 = vdupq_n_s32(pMemory2[v13 + v10 * stride]);
          *&pMemory[v12 + v14] = vmovn_s16(vmvnq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v17, xmmword_437E0)), vceqzq_s32(vandq_s8(v17, xmmword_437F0)))));
          ++v13;
          v14 += 8;
        }

        while (v11 != v13);
        v18 = v16;
      }

      if (v21)
      {
        v19 = 0;
        v20 = &pMemory[v18 + v12];
        do
        {
          v20[v19] = pMemory2[v11] >> v19 << 31 >> 31;
          ++v19;
        }

        while (v21 != v19);
      }

      ++v10;
    }

    while (v10 < [(PixelMemory *)v5 height]);
  }
}

@end