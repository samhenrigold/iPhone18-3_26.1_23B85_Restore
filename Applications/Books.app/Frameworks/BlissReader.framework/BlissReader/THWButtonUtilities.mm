@interface THWButtonUtilities
+ (id)navigationArrowImageWithSize:(CGSize)size direction:(int)direction color:(id)color highlighted:(BOOL)highlighted contentsScale:(double)scale;
@end

@implementation THWButtonUtilities

+ (id)navigationArrowImageWithSize:(CGSize)size direction:(int)direction color:(id)color highlighted:(BOOL)highlighted contentsScale:(double)scale
{
  highlightedCopy = highlighted;
  TSDMultiplySizeScalar();
  TSDRectWithSize();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = TSDBitmapContextCreate();
  v21 = [TSUImage imageNamed:@"ib_chevron_forward" inBundle:THBundle(v19, v20)];
  [v21 size];
  CGContextSaveGState(v19);
  if (direction == 4)
  {
    CGContextScaleCTM(v19, -1.0, 1.0);
    CGContextTranslateCTM(v19, -v16, 0.0);
  }

  TSDMultiplySizeScalar();
  TSDRectWithSize();
  TSDCenterRectOverRect();
  v23 = v22;
  v25 = v24;
  TSDRoundedPointForScale();
  v27 = v26;
  v37 = v12;
  v39 = v18;
  v29 = v28 + scale;
  v30 = v16;
  v31 = v14;
  if (highlightedCopy)
  {
    v32 = 0.5;
  }

  else
  {
    v32 = 1.0;
  }

  v33 = [v21 CGImageForContentsScale:{scale, v37, v39}];
  v41.origin.x = v29;
  v41.origin.y = v27;
  v41.size.width = v23;
  v41.size.height = v25;
  CGContextClipToMask(v19, v41, v33);
  CGContextSetBlendMode(v19, kCGBlendModeMultiply);
  CGContextSetFillColorWithColor(v19, [objc_msgSend(color colorWithAlphaComponent:{v32), "CGColor"}]);
  v42.origin.x = v29;
  v42.origin.y = v27;
  v42.size.width = v23;
  v42.size.height = v25;
  CGContextFillRect(v19, v42);
  CGContextRestoreGState(v19);
  CGContextSetStrokeColorWithColor(v19, [objc_msgSend(color colorWithAlphaComponent:{v32 * 0.4), "CGColor"}]);
  CGContextSetLineWidth(v19, scale);
  v43.origin.x = v38;
  v43.size.height = v40;
  v43.origin.y = v31;
  v43.size.width = v30;
  v44 = CGRectInset(v43, scale * 0.5, scale * 0.5);
  CGContextStrokeEllipseInRect(v19, v44);
  Image = CGBitmapContextCreateImage(v19);
  v35 = [TSUImage imageWithCGImage:Image];
  CGImageRelease(Image);
  CGContextRelease(v19);
  return v35;
}

@end