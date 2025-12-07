@interface UIImage
- (id)applyBlurWithRadius:(double)radius tintColor:(id)color saturationDeltaFactor:(double)factor maskImage:(id)image;
- (id)applyDarkEffect;
- (id)applyExtraLightEffect;
- (id)applyLightEffect;
- (id)applyTintEffectWithColor:(id)color;
@end

@implementation UIImage

- (id)applyLightEffect
{
  v3 = [UIColor colorWithWhite:1.0 alpha:0.300000012];
  v4 = [(UIImage *)self applyBlurWithRadius:v3 tintColor:0 saturationDeltaFactor:30.0 maskImage:1.79999995];

  return v4;
}

- (id)applyExtraLightEffect
{
  v3 = [UIColor colorWithWhite:0.970000029 alpha:0.819999993];
  v4 = [(UIImage *)self applyBlurWithRadius:v3 tintColor:0 saturationDeltaFactor:20.0 maskImage:1.79999995];

  return v4;
}

- (id)applyDarkEffect
{
  v3 = [UIColor colorWithWhite:0.109999999 alpha:0.730000019];
  v4 = [(UIImage *)self applyBlurWithRadius:v3 tintColor:0 saturationDeltaFactor:20.0 maskImage:1.79999995];

  return v4;
}

- (id)applyTintEffectWithColor:(id)color
{
  colorCopy = color;
  if (CGColorGetNumberOfComponents([colorCopy CGColor]) == 2)
  {
    v11 = 0.0;
    v5 = colorCopy;
    if (![colorCopy getWhite:&v11 alpha:0])
    {
      goto LABEL_7;
    }

    v6 = [UIColor colorWithWhite:v11 alpha:0.600000024];
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    v9 = 0.0;
    v5 = colorCopy;
    if (![colorCopy getRed:&v11 green:&v10 blue:&v9 alpha:0])
    {
      goto LABEL_7;
    }

    v6 = [UIColor colorWithRed:v11 green:v10 blue:v9 alpha:0.600000024];
  }

  v5 = v6;

LABEL_7:
  v7 = [(UIImage *)self applyBlurWithRadius:v5 tintColor:0 saturationDeltaFactor:10.0 maskImage:-1.0];

  return v7;
}

- (id)applyBlurWithRadius:(double)radius tintColor:(id)color saturationDeltaFactor:(double)factor maskImage:(id)image
{
  *v67 = *&factor;
  colorCopy = color;
  imageCopy = image;
  [(UIImage *)self size];
  if (v11 < 1.0 || ([(UIImage *)self size], v12 < 1.0))
  {
    [(UIImage *)self size];
    v14 = v13;
    [(UIImage *)self size];
    NSLog(@"*** error: invalid size: (%.2f x %.2f). Both dimensions must be >= 1: %@", v14, v15, self);
LABEL_4:
    v16 = 0;
    goto LABEL_5;
  }

  if (![(UIImage *)self CGImage])
  {
    NSLog(@"*** error: image must be backed by a CGImage: %@", self);
    goto LABEL_4;
  }

  if (imageCopy && ![imageCopy CGImage])
  {
    NSLog(@"*** error: maskImage must be backed by a CGImage: %@", imageCopy);
    goto LABEL_4;
  }

  y = CGPointZero.y;
  [(UIImage *)self size];
  v20 = v19;
  v22 = v21;
  selfCopy = self;
  v24 = selfCopy;
  v25 = fabs(v67[0] + -1.0);
  if (radius > 0.00000011920929 || v25 > 0.00000011920929)
  {
    [(UIImage *)selfCopy size];
    v28 = v27;
    v30 = v29;
    v31 = +[UIScreen mainScreen];
    [v31 scale];
    v33 = v32;
    v83.width = v28;
    v83.height = v30;
    UIGraphicsBeginImageContextWithOptions(v83, 0, v33);

    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    [(UIImage *)v24 size];
    CGContextTranslateCTM(CurrentContext, 0.0, -v35);
    cGImage = [(UIImage *)v24 CGImage];
    v86.origin.x = CGPointZero.x;
    v86.origin.y = y;
    v86.size.width = v20;
    v86.size.height = v22;
    CGContextDrawImage(CurrentContext, v86, cGImage);
    src.data = CGBitmapContextGetData(CurrentContext);
    src.width = CGBitmapContextGetWidth(CurrentContext);
    src.height = CGBitmapContextGetHeight(CurrentContext);
    src.rowBytes = CGBitmapContextGetBytesPerRow(CurrentContext);
    [(UIImage *)v24 size];
    v38 = v37;
    v40 = v39;
    v41 = +[UIScreen mainScreen];
    [v41 scale];
    v43 = v42;
    v84.width = v38;
    v84.height = v40;
    UIGraphicsBeginImageContextWithOptions(v84, 0, v43);

    v44 = UIGraphicsGetCurrentContext();
    dest.data = CGBitmapContextGetData(v44);
    dest.width = CGBitmapContextGetWidth(v44);
    dest.height = CGBitmapContextGetHeight(v44);
    dest.rowBytes = CGBitmapContextGetBytesPerRow(v44);
    if (radius > 0.00000011920929)
    {
      v45 = +[UIScreen mainScreen];
      [v45 scale];
      v47 = v46 * radius;

      LODWORD(v45) = vcvtmd_u64_f64(v47 * 3.0 * 2.50662827 * 0.25 + 0.5);
      vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, v45 | 1, v45 | 1, 0, 8u);
      vImageBoxConvolve_ARGB8888(&dest, &src, 0, 0, 0, v45 | 1, v45 | 1, 0, 8u);
      vImageBoxConvolve_ARGB8888(&src, &dest, 0, 0, 0, v45 | 1, v45 | 1, 0, 8u);
    }

    if (v25 > 0.00000011920929)
    {
      v70 = v67[0] * 0.9278 + 0.0722000003;
      v71 = v67[0] * -0.0722000003 + 0.0722000003;
      v72 = v71;
      v74 = vmlaq_n_f64(vdupq_n_s64(0x3FE6E2EB20000000uLL), xmmword_100005220, v67[0]);
      v75 = v74.f64[0];
      v73 = 0;
      v76 = 0;
      v48 = vmlaq_n_f64(vdupq_n_s64(0x3FCB367A00000000uLL), xmmword_100005230, v67[0]);
      v77 = v48.f64[0];
      v78 = v48;
      v79 = 0u;
      v80 = 0u;
      v81 = 0x3FF0000000000000;
      v49 = 0;
      v50 = &v70;
      v51 = vdupq_n_s32(0x43800000u);
      do
      {
        v53 = *v50;
        v52 = *(v50 + 2);
        v50 += 4;
        *(v67 + v49 + 16) = vmovn_s32(vcvtq_s32_f32(vrndaq_f32(vmulq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(v53), v52), v51))));
        v49 += 8;
      }

      while (v49 != 32);
      if (radius > 0.00000011920929)
      {
        vImageMatrixMultiply_ARGB8888(&dest, &src, &v66, 256, 0, 0, 0);
        UIGraphicsEndImageContext();
        v26 = UIGraphicsGetImageFromCurrentImageContext();

LABEL_26:
        UIGraphicsEndImageContext();
        goto LABEL_27;
      }

      vImageMatrixMultiply_ARGB8888(&src, &dest, &v66, 256, 0, 0, 0);
    }

    v26 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    goto LABEL_26;
  }

  v26 = selfCopy;
LABEL_27:
  [(UIImage *)v24 size];
  v55 = v54;
  v57 = v56;
  v58 = +[UIScreen mainScreen];
  [v58 scale];
  v60 = v59;
  v85.width = v55;
  v85.height = v57;
  UIGraphicsBeginImageContextWithOptions(v85, 0, v60);

  v61 = UIGraphicsGetCurrentContext();
  CGContextScaleCTM(v61, 1.0, -1.0);
  [(UIImage *)v24 size];
  CGContextTranslateCTM(v61, 0.0, -v62);
  cGImage2 = [(UIImage *)v24 CGImage];
  v87.origin.x = CGPointZero.x;
  v87.origin.y = y;
  v87.size.width = v20;
  v87.size.height = v22;
  CGContextDrawImage(v61, v87, cGImage2);
  if (radius > 0.00000011920929)
  {
    CGContextSaveGState(v61);
    if (imageCopy)
    {
      cGImage3 = [imageCopy CGImage];
      v88.origin.x = CGPointZero.x;
      v88.origin.y = y;
      v88.size.width = v20;
      v88.size.height = v22;
      CGContextClipToMask(v61, v88, cGImage3);
    }

    cGImage4 = [v26 CGImage];
    v89.origin.x = CGPointZero.x;
    v89.origin.y = y;
    v89.size.width = v20;
    v89.size.height = v22;
    CGContextDrawImage(v61, v89, cGImage4);
    CGContextRestoreGState(v61);
  }

  if (colorCopy)
  {
    CGContextSaveGState(v61);
    CGContextSetFillColorWithColor(v61, [colorCopy CGColor]);
    v90.origin.x = CGPointZero.x;
    v90.origin.y = y;
    v90.size.width = v20;
    v90.size.height = v22;
    CGContextFillRect(v61, v90);
    CGContextRestoreGState(v61);
  }

  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

LABEL_5:

  return v16;
}

@end