@interface CIPortraitToothMask
- (id)outputImage;
@end

@implementation CIPortraitToothMask

- (id)outputImage
{
  inputImage = self->_inputImage;
  inputFaceLandmarks = self->_inputFaceLandmarks;
  if (inputFaceLandmarks)
  {
    v5 = inputImage == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  result = [(NSDictionary *)inputFaceLandmarks count];
  if (result)
  {
    [(CIImage *)self->_inputImage extent];
    if (v7 != 0.0 || (v11 = v8, v8 != 0.0))
    {
      sub_4AA50();
    }

    v12 = v7;
    v13 = v9;
    v14 = v10;
    [-[NSDictionary objectForKeyedSubscript:](self->_inputFaceLandmarks objectForKeyedSubscript:{@"orientation", "intValue"}];
    memset(&v52, 0, sizeof(v52));
    v15 = self->_inputImage;
    if (v15)
    {
      objc_msgSend_imageTransformForOrientation_(v15);
    }

    v50 = v52;
    memset(&v51, 0, sizeof(v51));
    CGAffineTransformInvert(&v51, &v50);
    v50 = v52;
    v58.origin.x = v12;
    v58.origin.y = v11;
    v42 = v14;
    v43 = v13;
    v58.size.width = v13;
    v58.size.height = v14;
    v59 = CGRectApplyAffineTransform(v58, &v50);
    x = v59.origin.x;
    y = v59.origin.y;
    height = v59.size.height;
    width = v59.size.width;
    memset(&v50, 0, 32);
    sub_27994([(NSDictionary *)self->_inputFaceLandmarks objectForKeyedSubscript:@"faceBoundingBox"], &v50);
    v18.f64[0] = width;
    v50.a = x + v50.a * width;
    v50.b = y + v50.b * height;
    v18.f64[1] = height;
    *&v50.c = vmulq_f64(v18, *&v50.c);
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v19 = [(NSDictionary *)self->_inputFaceLandmarks objectForKeyedSubscript:@"outerLips"];
    v20 = [v19 countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v47;
      v23 = 1.17549435e-38;
      v24 = 3.40282347e38;
      v25 = 3.40282347e38;
      v26 = 1.17549435e-38;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v47 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v28 = *(*(&v46 + 1) + 8 * i);
          v44 = 0.0;
          v45 = 0.0;
          sub_27A78(v28, &v44, v50.a, v50.b, v50.c, v50.d);
          v29 = v51.tx + v45 * v51.c + v51.a * v44;
          v30 = v51.ty + v45 * v51.d + v51.b * v44;
          v24 = fmin(v24, v29);
          v25 = fmin(v25, v30);
          v23 = fmax(v23, v29);
          v26 = fmax(v26, v30);
        }

        v21 = [v19 countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v21);
    }

    else
    {
      v23 = 1.17549435e-38;
      v24 = 3.40282347e38;
      v25 = 3.40282347e38;
      v26 = 1.17549435e-38;
    }

    v31 = floor(v24);
    v32 = floor(v25);
    v33 = ceil(v23 - v24 + 1.0);
    v34 = ceil(v26 - v25 + 1.0);
    v35 = sub_3C4B0(self->_inputFaceLandmarks);
    v55[0] = @"teethROI";
    v56[0] = [CIVector vectorWithCGRect:v31, v32, v33, v34];
    v56[1] = v35;
    v55[1] = @"faceLandmarks";
    v55[2] = @"inputImageExtent";
    v56[2] = [CIVector vectorWithCGRect:v12, v11, v43, v42];
    v55[3] = @"inputImageTransformN1";
    v56[3] = [NSData dataWithBytes:&v52 length:48];
    v55[4] = @"inputImageTransform1N";
    v36 = [NSData dataWithBytes:&v51 length:48];
    v55[5] = @"useMetal";
    v56[4] = v36;
    v56[5] = &__kCFBooleanTrue;
    v37 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:6];
    v38 = [NSMutableDictionary dictionaryWithDictionary:v37];
    [(NSMutableDictionary *)v38 setObject:&__kCFBooleanFalse forKeyedSubscript:@"useMetal"];
    v44 = 0.0;
    v54 = inputImage;
    v39 = [CIPortraitToothMaskProcessor applyWithExtent:[NSArray arrayWithObjects:&v54 count:1] inputs:v37 arguments:&v44 error:v31, v32, v33, v34];
    v53 = inputImage;
    return [CIImage imageForRenderingWithMetal:v39 orNonMetal:[CIPortraitToothMaskProcessor applyWithExtent:[NSArray arrayWithObjects:&v53 count:1] inputs:v38 arguments:&v44 error:v31, v32, v33, v34]];
  }

  return result;
}

@end