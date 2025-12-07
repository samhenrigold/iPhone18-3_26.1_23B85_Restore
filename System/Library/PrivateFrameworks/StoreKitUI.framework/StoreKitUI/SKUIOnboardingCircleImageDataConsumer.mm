@interface SKUIOnboardingCircleImageDataConsumer
- (CGSize)outputSize;
- (id)_saturationBackgroundImageWithSize:(CGSize)size;
- (id)imageForImage:(id)image;
@end

@implementation SKUIOnboardingCircleImageDataConsumer

- (id)imageForImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIOnboardingCircleImageDataConsumer imageForImage:];
  }

  usesSaturationFilter = [(SKUIOnboardingCircleImageDataConsumer *)self usesSaturationFilter];
  if (usesSaturationFilter)
  {
    v7 = SKUICoreImageFramework(usesSaturationFilter, v6);
    v8 = SKUIWeakLinkedClassForString(&cfstr_Cicontext.isa, v7);
    v9 = SKUIWeakLinkedClassForString(&cfstr_Ciimage.isa, v7);
    v10 = SKUIWeakLinkedClassForString(&cfstr_Cifilter.isa, v7);
    v11 = *SKUIWeakLinkedSymbolForString("kCIInputBackgroundImageKey", v7);
    v12 = *SKUIWeakLinkedSymbolForString("kCIInputImageKey", v7);
    v13 = *SKUIWeakLinkedSymbolForString("kCIOutputImageKey", v7);
    v14 = [v10 filterWithName:@"CIColorControls" keysAndValues:{@"inputSaturation", &unk_2828D3020, 0}];
    v15 = [v9 imageWithCGImage:{objc_msgSend(imageCopy, "CGImage")}];
    [v14 setValue:v15 forKey:v12];

    v16 = [v10 filterWithName:@"CIMultiplyBlendMode"];
    v17 = [v14 valueForKey:v13];
    [v16 setValue:v17 forKey:v12];

    [imageCopy size];
    v18 = [(SKUIOnboardingCircleImageDataConsumer *)self _saturationBackgroundImageWithSize:?];
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

  tintColor = [(SKUIOnboardingCircleImageDataConsumer *)self tintColor];
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

- (void)imageForImage:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIOnboardingCircleImageDataConsumer imageForImage:]";
}

@end