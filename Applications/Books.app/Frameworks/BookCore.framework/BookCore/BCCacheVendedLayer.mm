@interface BCCacheVendedLayer
- (BCCacheVendedLayer)initWithDebugLayout:(BOOL)layout;
- (void)_setDescribedImage:(id)image;
- (void)dealloc;
- (void)setDescribedImage:(id)image;
@end

@implementation BCCacheVendedLayer

- (BCCacheVendedLayer)initWithDebugLayout:(BOOL)layout
{
  layoutCopy = layout;
  v16.receiver = self;
  v16.super_class = BCCacheVendedLayer;
  v4 = [(BCCacheVendedLayer *)&v16 init];
  if (v4)
  {
    v5 = +[CALayer layer];
    [(BCCacheVendedLayer *)v4 addSublayer:v5];
    v4->_imageLayer = v5;
    y = CGPointZero.y;
    [(CALayer *)v5 setAnchorPoint:CGPointZero.x, y];
    [(BCCacheVendedLayer *)v4 setMasksToBounds:0];
    if (layoutCopy)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v20[0] = xmmword_2A4650;
      v20[1] = unk_2A4660;
      v19[0] = xmmword_2A4670;
      v19[1] = unk_2A4680;
      *components = xmmword_2A4690;
      v18 = unk_2A46A0;
      [(BCCacheVendedLayer *)v4 setBorderWidth:0.5];
      sub_174634(v4, DeviceRGB, v19);
      [(CALayer *)v4->_imageLayer setBorderWidth:0.5];
      sub_174634(v4->_imageLayer, DeviceRGB, v20);
      v8 = +[CAShapeLayer layer];
      [(CAShapeLayer *)v8 setAnchorPoint:CGPointZero.x, y];
      [(CALayer *)v4->_imageLayer addSublayer:v8];
      v4->_stackLayer = v8;
      [(CAShapeLayer *)v8 setFillColor:0];
      [(CAShapeLayer *)v4->_stackLayer setLineWidth:0.5];
      v9 = v4->_stackLayer;
      v10 = CGColorCreate(DeviceRGB, components);
      [(CAShapeLayer *)v9 setStrokeColor:v10];

      CGColorRelease(v10);
      [(CAShapeLayer *)v4->_stackLayer setZPosition:100.0];
      v11 = +[CATextLayer layer];
      [(CATextLayer *)v11 setAnchorPoint:0.0, 0.0];
      [(CATextLayer *)v11 setFontSize:12.0];
      v12 = +[UIColor redColor];
      -[CATextLayer setForegroundColor:](v11, "setForegroundColor:", [v12 CGColor]);

      [(CATextLayer *)v11 setBounds:0.0, 0.0, 250.0, 20.0];
      [(CALayer *)v4->_imageLayer addSublayer:v11];
      descriptionLayer = v4->_descriptionLayer;
      v4->_descriptionLayer = v11;
      v14 = v11;

      [(CATextLayer *)v4->_descriptionLayer setZPosition:200.0];
      CFRelease(DeviceRGB);
    }
  }

  return v4;
}

- (void)dealloc
{
  [(BICDescribedImage *)self->_describedImageRequested setPriority:1];
  v3 = BCImageCacheLog([BICCacheStats logOperation:BICCacheStatsOperationCancelled[0] forRequest:self->_describedImageRequested]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    describedImageRequested = self->_describedImageRequested;
    *buf = 138412290;
    v7 = describedImageRequested;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "BCCacheVendedLayer: Lowering priority of %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = BCCacheVendedLayer;
  [(BCCacheVendedLayer *)&v5 dealloc];
}

- (void)setDescribedImage:(id)image
{
  imageCopy = image;
  [(BCCacheVendedLayer *)self setDescribedImageShown:imageCopy];
  if (+[NSThread isMainThread])
  {
    [(BCCacheVendedLayer *)self _setDescribedImage:imageCopy];
  }

  else
  {
    objc_initWeak(&location, self);
    v5 = [imageCopy copy];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1748B4;
    block[3] = &unk_2C8188;
    objc_copyWeak(&v9, &location);
    v8 = v5;
    v6 = v5;
    dispatch_async(&_dispatch_main_q, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_setDescribedImage:(id)image
{
  imageCopy = image;
  +[CATransaction begin];
  [CATransaction setDisableActions:1];
  image = [imageCopy image];
  cGImage = [image CGImage];

  imageLayer = [(BCCacheVendedLayer *)self imageLayer];
  [imageLayer setContents:cGImage];

  v9 = mainScreenScaleFactor(v7, v8);
  v10 = CGImageGetWidth(cGImage) / v9;
  v11 = CGImageGetHeight(cGImage) / v9;
  [imageCopy nonShadowArea];
  v32.origin.x = CGRectZero.origin.x;
  v32.origin.y = CGRectZero.origin.y;
  v32.size.width = CGRectZero.size.width;
  v32.size.height = CGRectZero.size.height;
  v12 = 0.0;
  v13 = v11;
  v14 = v10;
  v15 = 0.0;
  if (!CGRectEqualToRect(v31, v32))
  {
    [imageCopy nonShadowArea];
    v15 = v16;
    v12 = v17;
    v14 = v18;
    v13 = v19;
  }

  imageLayer2 = [(BCCacheVendedLayer *)self imageLayer];
  [imageLayer2 setBounds:{0.0, 0.0, v10, v11}];

  imageLayer3 = [(BCCacheVendedLayer *)self imageLayer];
  [imageLayer3 setPosition:{-v15, -v12}];

  [(BCCacheVendedLayer *)self setBounds:CGPointZero.x, CGPointZero.y, v14, v13];
  stackLayer = [(BCCacheVendedLayer *)self stackLayer];

  if (stackLayer)
  {
    stackOutline = [imageCopy stackOutline];
    stackLayer2 = [(BCCacheVendedLayer *)self stackLayer];
    [stackLayer2 setPath:stackOutline];
  }

  descriptionLayer = [(BCCacheVendedLayer *)self descriptionLayer];

  if (descriptionLayer)
  {
    identifier = [imageCopy identifier];
    descriptionLayer2 = [(BCCacheVendedLayer *)self descriptionLayer];
    [descriptionLayer2 setString:identifier];
  }

  +[CATransaction commit];
  vendedLayerDelegate = [(BCCacheVendedLayer *)self vendedLayerDelegate];
  [vendedLayerDelegate vendedLayerDidUpdate:self];
}

@end