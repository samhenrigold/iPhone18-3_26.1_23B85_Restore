@interface MaskToRoi
- (MaskToRoi)initWithMetalToolBox:(id)box;
- (int64_t)extractRoiByGraphTraversalInput:(__CVBuffer *)input bboxSizeThreshold:(float)threshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:;
- (int64_t)getLSBBoxesUsingGraphTraversalFrom:(__CVBuffer *)from roi:(CGRect)roi pixValThreshold:(float)threshold bboxSizeThreshold:(float)sizeThreshold scaleFactorInv:(float)inv[4] validWidth:(int)width validHeight:(int)height lightSourceBBox:;
- (void)dealloc;
@end

@implementation MaskToRoi

- (MaskToRoi)initWithMetalToolBox:(id)box
{
  boxCopy = box;
  v11.receiver = self;
  v11.super_class = MaskToRoi;
  v5 = [(MaskToRoi *)&v11 init];
  if (!v5)
  {
    sub_24A64();
LABEL_10:
    v9 = 0;
    goto LABEL_7;
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
  *&v5->_width = xmmword_2EAE0;
  v8 = malloc_type_malloc(0x185D00uLL, 0x100004000313F17uLL);
  *v5->_connectedPixelsQueue = v8;
  if (!v8)
  {
    sub_249EC();
    goto LABEL_10;
  }

  v9 = v5;
LABEL_7:

  return v9;
}

- (void)dealloc
{
  integralSumPixelBuffer = self->_integralSumPixelBuffer;
  if (integralSumPixelBuffer)
  {
    CFRelease(integralSumPixelBuffer);
  }

  free(*self->_connectedPixelsQueue);
  v4.receiver = self;
  v4.super_class = MaskToRoi;
  [(MaskToRoi *)&v4 dealloc];
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
    sub_24ADC();
    return 0;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(from);
  if (!BaseAddress)
  {
    sub_24B68();
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
            if ((vpmin_u32(v46, v46).u32[0] & 0x80000000) != 0)
            {
              if (v21 <= 1023)
              {
                *(&v44 + 1) = v45;
                *(v10 + 16 * v21) = v44;
              }

              ++v21;
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
    sub_24C58(Height);
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
      sub_24BE0();
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

@end