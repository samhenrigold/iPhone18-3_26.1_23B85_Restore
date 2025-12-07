@interface IHKHarmonizationRequest
- (IHKHarmonizationRequest)initWithForeground:(CGImage *)foreground background:(CGImage *)background forceHarmonization:(BOOL)harmonization;
- (IHKHarmonizationRequest)initWithForeground:(CGImage *)foreground background:(CGImage *)background forceHarmonization:(BOOL)harmonization harmonizationStrength:(float)strength;
- (void)dealloc;
@end

@implementation IHKHarmonizationRequest

- (IHKHarmonizationRequest)initWithForeground:(CGImage *)foreground background:(CGImage *)background forceHarmonization:(BOOL)harmonization
{
  v8 = objc_msgSend_standardUserDefaults(MEMORY[0x277CBEBD0], a2, foreground, background, harmonization);
  objc_msgSend_floatForKey_(v8, v9, @"com.apple.ImageHarmonizationKit.harmonizationStrength", v10, v11);
  v13 = v12;

  LODWORD(v15) = 1.0;
  if (v13 != 0.0)
  {
    *&v15 = v13;
    if (v13 < 0.0)
    {
      v15 = 0.0;
    }
  }

  return objc_msgSend_initWithForeground_background_forceHarmonization_harmonizationStrength_(self, v14, foreground, background, 0, v15);
}

- (IHKHarmonizationRequest)initWithForeground:(CGImage *)foreground background:(CGImage *)background forceHarmonization:(BOOL)harmonization harmonizationStrength:(float)strength
{
  v14.receiver = self;
  v14.super_class = IHKHarmonizationRequest;
  v10 = [(IHKHarmonizationRequest *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_forceHarmonization = harmonization;
    v10->_fg = CGImageRetain(foreground);
    v11->_bg = CGImageRetain(background);
    v11->_harmonizationStrength = strength;
    v12 = v11;
  }

  return v11;
}

- (void)dealloc
{
  CGImageRelease(self->_fg);
  CGImageRelease(self->_bg);
  v3.receiver = self;
  v3.super_class = IHKHarmonizationRequest;
  [(IHKHarmonizationRequest *)&v3 dealloc];
}

@end