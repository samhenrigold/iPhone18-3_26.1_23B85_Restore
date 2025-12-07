@interface CIPortraitSkinMask
- (id)outputImage;
@end

@implementation CIPortraitSkinMask

- (id)outputImage
{
  inputImage = self->_inputImage;
  inputFaceLandmarks = self->_inputFaceLandmarks;
  if (inputFaceLandmarks)
  {
    _ZF = inputImage == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF)
  {
    return 0;
  }

  result = [(NSDictionary *)inputFaceLandmarks count];
  if (result)
  {
    [(CIImage *)self->_inputImage extent];
    if (v7 != 0.0 || (v11 = v8, v8 != 0.0))
    {
      sub_4B718();
    }

    v12 = v7;
    v13 = v9;
    v14 = v10;
    [-[NSDictionary objectForKeyedSubscript:](self->_inputFaceLandmarks objectForKeyedSubscript:{@"orientation", "intValue"}];
    memset(&v63, 0, sizeof(v63));
    v15 = self->_inputImage;
    if (v15)
    {
      objc_msgSend_imageTransformForOrientation_(v15);
    }

    v61 = v63;
    memset(&v62, 0, sizeof(v62));
    CGAffineTransformInvert(&v62, &v61);
    v61 = v63;
    v69.origin.x = v12;
    v69.origin.y = v11;
    v69.size.width = v13;
    v69.size.height = v14;
    v70 = CGRectApplyAffineTransform(v69, &v61);
    x = v70.origin.x;
    y = v70.origin.y;
    height = v70.size.height;
    width = v70.size.width;
    sub_27994([(NSDictionary *)self->_inputFaceLandmarks objectForKeyedSubscript:@"faceBoundingBox"], &v61);
    v18.f64[0] = width;
    v61.a = x + v61.a * width;
    v61.b = y + v61.b * height;
    v18.f64[1] = height;
    *&v61.c = vmulq_f64(v18, *&v61.c);
    v19 = [-[NSDictionary objectForKeyedSubscript:](self->_inputFaceLandmarks objectForKeyedSubscript:{@"noseCrest", "objectAtIndex:", 0}];
    sub_27A78(v19, v60.f64, v61.a, v61.b, v61.c, v61.d);
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = vaddq_f64(*&v62.tx, vmlaq_n_f64(vmulq_n_f64(*&v62.c, v60.f64[1]), *&v62.a, v60.f64[0]));
    v20 = [(NSDictionary *)self->_inputFaceLandmarks objectForKeyedSubscript:@"faceContour"];
    v21 = [v20 countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v21)
    {
      v22 = v21;
      v52 = vdupq_n_s64(0x3810000000000000uLL);
      v54 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
      v23 = *v57;
      __asm { FMOV            V0.2D, #2.0 }

      v50 = _Q0;
      do
      {
        for (i = 0; i != v22; i = i + 1)
        {
          if (*v57 != v23)
          {
            objc_enumerationMutation(v20);
          }

          sub_27A78(*(*(&v56 + 1) + 8 * i), v55, v61.a, v61.b, v61.c, v61.d);
          v29 = vaddq_f64(*&v62.tx, vmlaq_n_f64(vmulq_n_f64(*&v62.c, v55[1]), *&v62.a, v55[0]));
          v30 = vmlaq_f64(vnegq_f64(v29), v50, v60);
          v52 = vmaxnmq_f64(vmaxnmq_f64(v52, v29), v30);
          v54 = vminnmq_f64(vminnmq_f64(v54, v29), v30);
        }

        v22 = [v20 countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v22);
      v31 = v52.f64[0];
      v32 = v54.f64[1];
      v33 = v54.f64[0];
      v34 = v52.f64[1];
    }

    else
    {
      v32 = 3.40282347e38;
      v34 = 1.17549435e-38;
      v31 = 1.17549435e-38;
      v33 = 3.40282347e38;
    }

    v35 = v31 - v33;
    v36 = v35 * 0.200000003;
    v37 = v34 - v32;
    v38 = v37 * 0.200000003;
    v39 = v36;
    v40 = floor(v33 + v39 * -0.5);
    v41 = v38;
    v42 = floor(v32 + v41 * -0.5);
    v43 = ceil(v35 + 1.0 + v39);
    v44 = ceil(v37 + 1.0 + v41);
    v45 = sub_3C4B0(self->_inputFaceLandmarks);
    v66[0] = @"faceROI";
    v67[0] = [CIVector vectorWithCGRect:v40, v42, v43, v44];
    v67[1] = v45;
    v66[1] = @"faceLandmarks";
    v66[2] = @"inputImageExtent";
    v67[2] = [CIVector vectorWithCGRect:v12, v11, v13, v14];
    v66[3] = @"inputImageTransformN1";
    v67[3] = [NSData dataWithBytes:&v63 length:48];
    v66[4] = @"inputImageTransform1N";
    v46 = [NSData dataWithBytes:&v62 length:48];
    v66[5] = @"useMetal";
    v67[4] = v46;
    v67[5] = &__kCFBooleanTrue;
    v47 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:6];
    v48 = [NSMutableDictionary dictionaryWithDictionary:v47];
    [(NSMutableDictionary *)v48 setObject:&__kCFBooleanFalse forKeyedSubscript:@"useMetal"];
    v55[0] = 0.0;
    v65 = inputImage;
    v49 = [CIPortraitSkinMaskProcessor applyWithExtent:[NSArray arrayWithObjects:&v65 count:1] inputs:v47 arguments:v55 error:v40, v42, v43, v44];
    v64 = inputImage;
    return [CIImage imageForRenderingWithMetal:v49 orNonMetal:[CIPortraitSkinMaskProcessor applyWithExtent:[NSArray arrayWithObjects:&v64 count:1] inputs:v48 arguments:v55 error:v40, v42, v43, v44]];
  }

  return result;
}

@end