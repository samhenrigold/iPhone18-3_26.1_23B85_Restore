@interface CIGaussianBlur
+ (id)customAttributes;
- (id)outputImage;
@end

@implementation CIGaussianBlur

+ (id)customAttributes
{
  v7[4] = *MEMORY[0x1E69E9840];
  v6[0] = @"CIAttributeFilterCategories";
  v5[0] = @"CICategoryBlur";
  v5[1] = @"CICategoryStillImage";
  v5[2] = @"CICategoryVideo";
  v5[3] = @"CICategoryBuiltIn";
  v7[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:4];
  v7[1] = @"6";
  v6[1] = @"CIAttributeFilterAvailable_iOS";
  v6[2] = @"CIAttributeFilterAvailable_Mac";
  v7[2] = @"10.4";
  v6[3] = @"inputRadius";
  v3[0] = @"CIAttributeMin";
  v3[1] = @"CIAttributeSliderMin";
  v3[2] = @"CIAttributeSliderMax";
  v3[3] = @"CIAttributeDefault";
  v4[2] = &unk_1F1083B88;
  v4[3] = &unk_1F1083B98;
  v3[4] = @"CIAttributeIdentity";
  v3[5] = @"CIAttributeType";
  v4[0] = &unk_1F1083B78;
  v4[1] = &unk_1F1083B78;
  v4[4] = &unk_1F1083B78;
  v4[5] = @"CIAttributeTypeScalar";
  v7[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:6];
  return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
}

- (id)outputImage
{
  v56 = *MEMORY[0x1E69E9840];
  if (!self->inputImage)
  {
    return 0;
  }

  if ([(CIGaussianBlur *)self _isIdentity])
  {
    v3 = self->inputImage;

    return v3;
  }

  else
  {
    [(NSNumber *)self->inputRadius doubleValue];
    v7 = v6;
    if (v6 <= 1.12)
    {
      v9 = 0;
      v10 = &v51.f64[1];
      if (v6 <= 0.7)
      {
        v11 = 3;
      }

      else
      {
        v11 = 4;
      }

      v12 = 0.707106781 / v6;
      do
      {
        v13 = v12 * v9;
        v14 = v13 + v12 * 0.5;
        v15 = v13 + v12 * -0.5;
        if (v13 <= 2.0)
        {
          v18 = erf(v14);
          v17 = (v18 - erf(v15)) * 0.5;
        }

        else
        {
          v16 = erfc(v14);
          v17 = (v16 - erfc(v15)) * -0.5;
        }

        v53.f64[v9++] = v17;
      }

      while (v9 != 4);
      if (v7 <= 0.4)
      {
        v19 = 2;
      }

      else
      {
        v19 = v11;
      }

      v51 = 0u;
      v52 = 0u;
      v20.f64[0] = vmuld_lane_f64(-2.0, v53, 1);
      if (v19 == 2)
      {
        v30 = v20.f64[0] + v53.f64[0] * 2.0 + 1.0;
        v29 = 0.333333333;
        v51.f64[0] = v30 * 0.333333333;
        v28 = v53.f64[1] - v53.f64[0];
      }

      else
      {
        v20.f64[1] = -v53.f64[0];
        if (v19 == 3)
        {
          __asm { FMOV            V4.2D, #-2.0 }

          v26 = vmlaq_n_f64(vmlaq_f64(v20, xmmword_19CF26A00, v53), _Q4, v54);
          __asm { FMOV            V4.2D, #1.0 }

          v51 = vmulq_f64(vaddq_f64(v26, _Q4), vdupq_n_s64(0x3FC999999999999AuLL));
          v28 = v54 * 3.0 - (v53.f64[0] - v53.f64[1] * -2.0);
          v29 = 0.2;
          v10 = &v52;
        }

        else
        {
          __asm { FMOV            V5.2D, #-2.0 }

          v32 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_f64(v20, xmmword_19CF269F0, v53), _Q5, v54), _Q5, v55);
          __asm { FMOV            V5.2D, #1.0 }

          v51 = vmulq_f64(vaddq_f64(v32, _Q5), vdupq_n_s64(0x3FC2492492492492uLL));
          v29 = 0.142857143;
          *&v52 = (v54 * 5.0 - (v53.f64[0] - v53.f64[1] * -2.0) + v55 * -2.0 + 1.0) * 0.142857143;
          v28 = v54 * -2.0 - (v53.f64[0] - v53.f64[1] * -2.0) + v55 * 5.0;
          v10 = &v52 + 1;
        }
      }

      v34 = 0;
      v35 = (2 * v19 - 1);
      *v10 = (v28 + 1.0) * v29;
      v36 = v50;
      do
      {
        if (v34 - v19 >= -1)
        {
          v37 = v34 - v19 + 1;
        }

        else
        {
          v37 = v19 + ~v34;
        }

        v38 = v51.f64[v37];
        v39 = (2 * v19 - 1);
        v40 = -v19;
        v41 = 1 - v19;
        v42 = v36;
        v43 = v19 - 1;
        do
        {
          if (v40 >= -1)
          {
            v44 = v41;
          }

          else
          {
            v44 = v43;
          }

          *v42++ = v51.f64[v44] * v38;
          --v43;
          ++v41;
          ++v40;
          --v39;
        }

        while (v39);
        ++v34;
        v36 = (v36 + ((16 * (((2 * v19 - 2) >> 1) & 0x7FFFFFFF)) | 8));
      }

      while (v34 != v35);
      v45 = [CIVector vectorWithValues:v50 count:(v35 * v35)];
      v46 = off_1E75C2C80[v19 - 2];
      inputImage = self->inputImage;
      v48[0] = @"inputWeights";
      v48[1] = @"inputBias";
      v49[0] = v45;
      v49[1] = &unk_1F1083B78;
      return -[CIImage imageByApplyingFilter:withInputParameters:](inputImage, "imageByApplyingFilter:withInputParameters:", v46, [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2]);
    }

    else
    {
      v8 = self->inputImage;

      return blurImage(v8, v6, v6, v5);
    }
  }
}

@end