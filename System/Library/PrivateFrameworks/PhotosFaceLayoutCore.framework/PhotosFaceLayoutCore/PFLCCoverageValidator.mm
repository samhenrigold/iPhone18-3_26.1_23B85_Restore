@interface PFLCCoverageValidator
- (PFLCCoverageValidator)initWithMaskImage:(CGImage *)image orientation:(unsigned int)orientation;
- (double)coverageOfTimeLabel:(CGRect)label;
- (void)dealloc;
@end

@implementation PFLCCoverageValidator

- (PFLCCoverageValidator)initWithMaskImage:(CGImage *)image orientation:(unsigned int)orientation
{
  v56 = *MEMORY[0x277D85DE8];
  v52.receiver = self;
  v52.super_class = PFLCCoverageValidator;
  v6 = [(PFLCCoverageValidator *)&v52 init];
  if (v6)
  {
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    context = objc_autoreleasePoolPush();
    memset(&v51, 0, sizeof(v51));
    makePresentationTransform(orientation, Width, Height, &v51);
    buf = v51;
    v9 = rint(makePresentationSize(&buf, Width, Height) * 0.25);
    v11 = rint(v10 * 0.25);
    v6->_width = v9;
    v6->_height = v11;
    v49 = v6;
    v50 = v51;
    v13 = pflc_layout_log(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.a) = 134218240;
      *(&buf.a + 4) = v9;
      WORD2(buf.b) = 2048;
      *(&buf.b + 6) = v11;
      _os_log_impl(&dword_22D126000, v13, OS_LOG_TYPE_DEFAULT, "createScaledInputData: scale input data to == %ldx%ld", &buf, 0x16u);
    }

    v14 = (v11 + 1) * (v9 + 1);
    v15 = [MEMORY[0x277CBEB28] dataWithLength:v14];
    v16 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF498]);
    v17 = v15;
    v18 = CGColorSpaceGetNumberOfComponents(v16) & 0x1FFFFFFFFFFFFFFFLL;
    mutableBytes = [v17 mutableBytes];

    v20 = CGBitmapContextCreate(mutableBytes, v9 + 1, v11 + 1, 8uLL, v18 * (v9 + 1), v16, 0);
    CGColorSpaceRelease(v16);
    memset(&buf, 0, sizeof(buf));
    v54 = v50;
    uprightCTM(image, &v54, &buf);
    transform = buf;
    memset(&v54, 0, sizeof(v54));
    CGAffineTransformInvert(&v54, &transform);
    transform = buf;
    CGContextConcatCTM(v20, &transform);
    transform = v54;
    v57.origin.x = 1.0;
    v57.origin.y = 0.0;
    v57.size.width = v9;
    v57.size.height = v11;
    v58 = CGRectApplyAffineTransform(v57, &transform);
    CGContextDrawImage(v20, v58, image);
    CGContextRelease(v20);
    for (i = [v17 mutableBytes]; v14; --v14)
    {
      v22 = *i;
      if (v22 <= 0xC8)
      {
        LOBYTE(v22) = 0;
      }

      *i++ = v22;
    }

    v23 = v49->_width;
    v24 = v49->_height;
    v25 = v17;
    v26 = v23 + 1;
    v27 = malloc_type_malloc(4 * (v23 + 1) * (v24 + 1), 0x100004052888210uLL);
    bytes = [v25 bytes];
    v29 = v23;
    if (v23 != -1)
    {
      bzero(v27, v29 * 4 + 4);
    }

    v6 = v49;
    if (v24 != -1)
    {
      v30 = vdupq_n_s64(v24);
      v31 = (v24 & 0xFFFFFFFFFFFFFFFCLL) + 4;
      v32 = xmmword_22D12D670;
      v33 = xmmword_22D12D680;
      v34 = vdupq_n_s64(4uLL);
      v35 = v27;
      do
      {
        v36 = vmovn_s64(vcgeq_u64(v30, v33));
        if (vuzp1_s16(v36, *v30.i8).u8[0])
        {
          *v35 = 0;
        }

        if (vuzp1_s16(v36, *&v30).i8[2])
        {
          v35[v29 + 1] = 0;
        }

        if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, *&v32))).i32[1])
        {
          v35[2 * v23 + 2] = 0;
          v35[3 * v23 + 3] = 0;
        }

        v32 = vaddq_s64(v32, v34);
        v33 = vaddq_s64(v33, v34);
        v35 += 4 * v23 + 4;
        v31 -= 4;
      }

      while (v31);
      if (v24)
      {
        v37 = &v27[4 * v26];
        v38 = (bytes + v23 + 2);
        v39 = 1;
        v40 = v27;
        v41 = v27;
        v42 = &v27[4 * v23 + 8];
        do
        {
          v41 += 4;
          if (v26 >= 2)
          {
            v43 = 0;
            v44 = v23;
            do
            {
              v45 = *v38++;
              *&v42[v43] = *&v37[v43] + v45 + *&v41[v43] - *&v40[v43];
              v43 += 4;
              --v44;
            }

            while (v44);
            v41 += v43;
            v40 += v43;
            v37 += v43;
            v42 += v43;
          }

          ++v38;
          v42 += 4;
          v37 += 4;
          v40 += 4;
        }

        while (v39++ != v24);
      }
    }

    v49->_cumulativeData = v27;
    objc_autoreleasePoolPop(context);
  }

  return v6;
}

- (void)dealloc
{
  cumulativeData = self->_cumulativeData;
  if (cumulativeData)
  {
    free(cumulativeData);
  }

  v4.receiver = self;
  v4.super_class = PFLCCoverageValidator;
  [(PFLCCoverageValidator *)&v4 dealloc];
}

- (double)coverageOfTimeLabel:(CGRect)label
{
  height = label.size.height;
  width = label.size.width;
  y = label.origin.y;
  x = label.origin.x;
  IsEmpty = CGRectIsEmpty(label);
  result = 0.0;
  if (!IsEmpty)
  {
    v10 = self->_width;
    v11 = v10;
    v12 = self->_height;
    CGAffineTransformMakeScale(&v18, v10, v12);
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v20 = CGRectApplyAffineTransform(v19, &v18);
    if (v20.origin.x < 0.0)
    {
      v20.origin.x = 0.0;
    }

    if (v20.origin.y < 0.0)
    {
      v20.origin.y = 0.0;
    }

    if (v20.size.width > v11 - v20.origin.x)
    {
      v20.size.width = v11 - v20.origin.x;
    }

    v13 = rint(v20.origin.x + 1.0);
    if (v20.size.height > v12 - v20.origin.y)
    {
      v20.size.height = v12 - v20.origin.y;
    }

    v14 = rint(v20.origin.x + v20.size.width + -1.0 + 1.0);
    cumulativeData = self->_cumulativeData;
    v16 = &cumulativeData[rint(v20.origin.y + v20.size.height + -1.0 + 1.0) * (v10 + 1)];
    v17 = &cumulativeData[(rint(v20.origin.y + 1.0) - 1) * (v10 + 1)];
    return (v16[v14] - (v16[v13 - 1] + v17[v14]) + v17[v13 - 1]) / (v20.size.width * v20.size.height * 255.0);
  }

  return result;
}

@end