@interface SUUIOnboardingCircleImageDataConsumer
- (CGSize)outputSize;
- (id)_saturationBackgroundImageWithSize:(CGSize)size;
- (id)imageForImage:(id)image;
@end

@implementation SUUIOnboardingCircleImageDataConsumer

- (id)imageForImage:(id)image
{
  imageCopy = image;
  usesSaturationFilter = [(SUUIOnboardingCircleImageDataConsumer *)self usesSaturationFilter];
  if (usesSaturationFilter)
  {
    v7 = SUUICoreImageFramework(usesSaturationFilter, v6);
    v8 = SUUIWeakLinkedClassForString(&cfstr_Cicontext.isa, v7);
    v9 = SUUIWeakLinkedClassForString(&cfstr_Ciimage.isa, v7);
    v10 = SUUIWeakLinkedClassForString(&cfstr_Cifilter.isa, v7);
    v11 = *SUUIWeakLinkedSymbolForString("kCIInputBackgroundImageKey", v7);
    v12 = *SUUIWeakLinkedSymbolForString("kCIInputImageKey", v7);
    v13 = *SUUIWeakLinkedSymbolForString("kCIOutputImageKey", v7);
    v14 = [v10 filterWithName:@"CIColorControls" keysAndValues:{@"inputSaturation", &unk_286BBE060, 0}];
    v15 = [v9 imageWithCGImage:{objc_msgSend(imageCopy, "CGImage")}];
    [v14 setValue:v15 forKey:v12];

    v16 = [v10 filterWithName:@"CIMultiplyBlendMode"];
    v17 = [v14 valueForKey:v13];
    [v16 setValue:v17 forKey:v12];

    [imageCopy size];
    v18 = [(SUUIOnboardingCircleImageDataConsumer *)self _saturationBackgroundImageWithSize:?];
    v19 = [v9 imageWithCGImage:{objc_msgSend(v18, "CGImage")}];
    [v16 setValue:v19 forKey:v11];

    v20 = [v8 contextWithOptions:0];
    v21 = [v16 valueForKey:v13];

    [v21 extent];
    v22 = [v20 createCGImage:v21 fromRect:?];
    v23 = [MEMORY[0x277D755B8] imageWithCGImage:v22];

    CFRelease(v22);
    imageCopy = v23;
  }

  p_outputSize = &self->_outputSize;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  UIGraphicsBeginImageContextWithOptions(*p_outputSize, 0, v26);

  CurrentContext = UIGraphicsGetCurrentContext();
  width = p_outputSize->width;
  height = p_outputSize->height;
  CGContextBeginPath(CurrentContext);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = width;
  v33.size.height = height;
  CGContextAddEllipseInRect(CurrentContext, v33);
  CGContextClosePath(CurrentContext);
  CGContextClip(CurrentContext);
  [imageCopy drawInRect:{0.0, 0.0, width, height}];
  v30 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v30;
}

- (id)_saturationBackgroundImageWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v8 = v7;
  v13.width = width;
  v13.height = height;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v8);

  tintColor = [(SUUIOnboardingCircleImageDataConsumer *)self tintColor];
  [tintColor set];

  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = width;
  v14.size.height = height;
  UIRectFill(v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end