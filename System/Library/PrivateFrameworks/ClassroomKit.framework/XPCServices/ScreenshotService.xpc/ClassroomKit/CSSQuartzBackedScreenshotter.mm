@interface CSSQuartzBackedScreenshotter
- (CATransform3D)transformForFinalScreenshotSize:(SEL)size;
- (CGImage)makeRawQuartzCGImageScreenshotWithIsSecure:(BOOL)secure size:(id)size error:(id *)error;
- (CSSQuartzBackedScreenshotter)init;
- (CSSQuartzBackedScreenshotter)initWithDisplay:(id)display;
- (double)displayScale;
- (id)displaySize;
- (id)makeRawQuartzScreenshotWithSize:(id)size error:(id *)error;
- (id)screenshotWithMaximumSizeInPixels:(CGSize)pixels error:(id *)error;
@end

@implementation CSSQuartzBackedScreenshotter

- (CSSQuartzBackedScreenshotter)init
{
  v3 = +[CADisplay mainDisplay];
  v4 = [(CSSQuartzBackedScreenshotter *)self initWithDisplay:v3];

  return v4;
}

- (CSSQuartzBackedScreenshotter)initWithDisplay:(id)display
{
  displayCopy = display;
  v9.receiver = self;
  v9.super_class = CSSQuartzBackedScreenshotter;
  v6 = [(CSSQuartzBackedScreenshotter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_display, display);
  }

  return v7;
}

- (id)screenshotWithMaximumSizeInPixels:(CGSize)pixels error:(id *)error
{
  height = pixels.height;
  width = pixels.width;
  v8 = objc_opt_new();
  displaySize = [(CSSQuartzBackedScreenshotter *)self displaySize];
  v10 = [v8 screenshotSizeWithMaximumSize:displaySize displaySize:{width, height}];

  v11 = [(CSSQuartzBackedScreenshotter *)self makeRawQuartzScreenshotWithSize:v10 error:error];

  return v11;
}

- (id)displaySize
{
  display = [(CSSQuartzBackedScreenshotter *)self display];
  [display css_sizeInCurrentOrientation];
  v4 = v3;
  v6 = v5;

  v7 = [[CSSIntegralSize alloc] initWithFloatingPointSize:v4, v6];

  return v7;
}

- (double)displayScale
{
  display = [(CSSQuartzBackedScreenshotter *)self display];
  currentMode = [display currentMode];
  preferredScale = [currentMode preferredScale];

  return preferredScale;
}

- (id)makeRawQuartzScreenshotWithSize:(id)size error:(id *)error
{
  v4 = [(CSSQuartzBackedScreenshotter *)self makeRawQuartzCGImageScreenshotWithIsSecure:1 size:size error:error];
  if (v4)
  {
    v5 = v4;
    v6 = [UIImage imageWithCGImage:v4 scale:0 orientation:1.0];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGImage)makeRawQuartzCGImageScreenshotWithIsSecure:(BOOL)secure size:(id)size error:(id *)error
{
  secureCopy = secure;
  sizeCopy = size;
  display = [(CSSQuartzBackedScreenshotter *)self display];
  v10 = display;
  if (!display)
  {
    v34 = sub_100003634(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      sub_100005EF8(v34, v35, v36, v37, v38, v39, v40, v41);
    }

    if (error)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v64 = secureCopy;
  v66 = display;
  height = [sizeCopy height];
  width = [sizeCopy width];
  v13 = (4 * width + 63) & 0xFFFFFFFFFFFFFFC0;
  v14 = vm_page_mask;
  v15 = vm_page_mask + v13 * height;
  v78[0] = kIOSurfaceWidth;
  v60 = width;
  v16 = [NSNumber numberWithUnsignedLong:?];
  v79[0] = v16;
  v78[1] = kIOSurfaceHeight;
  height = height;
  v17 = [NSNumber numberWithUnsignedLong:height];
  v79[1] = v17;
  v78[2] = kIOSurfacePixelFormat;
  v18 = [NSNumber numberWithInt:1111970369];
  v79[2] = v18;
  v79[3] = &off_10000CBB8;
  v78[3] = kIOSurfaceBytesPerElement;
  v78[4] = kIOSurfaceBytesPerRow;
  v61 = v13;
  v19 = [NSNumber numberWithUnsignedLong:v13];
  v79[4] = v19;
  v78[5] = kIOSurfaceAllocSize;
  v65 = v15;
  v63 = v14;
  v20 = [NSNumber numberWithUnsignedLong:v15 & ~v14];
  v78[6] = kIOSurfaceCacheMode;
  v79[5] = v20;
  v79[6] = &off_10000CBD0;
  [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:7];
  v22 = v21 = sizeCopy;
  v23 = IOSurfaceCreate(v22);

  if (!v23)
  {
    v42 = sub_100003634(v24);
    v10 = v66;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      sub_100005EC0(v42, v43, v44, v45, v46, v47, v48, v49);
    }

    sizeCopy = v21;
LABEL_15:
    if (error)
    {
LABEL_16:
      CRKErrorWithCodeAndUserInfo();
      *error = v33 = 0;
      goto LABEL_17;
    }

LABEL_8:
    v33 = 0;
    goto LABEL_17;
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  objc_msgSend_transformForFinalScreenshotSize_(self);
  v76[0] = kCASnapshotMode;
  v76[1] = kCASnapshotDestination;
  v77[0] = kCASnapshotModeDisplay;
  v77[1] = v23;
  v76[2] = kCASnapshotDisplayName;
  v10 = v66;
  name = [v66 name];
  v77[2] = name;
  v77[3] = &off_10000CBE8;
  v76[3] = kCASnapshotOriginX;
  v76[4] = kCASnapshotOriginY;
  v77[4] = &off_10000CBE8;
  v76[5] = kCASnapshotEnforceSecureMode;
  v26 = [NSNumber numberWithBool:v64];
  v77[5] = v26;
  v76[6] = kCASnapshotTransform;
  v67[4] = v72;
  v67[5] = v73;
  v67[6] = v74;
  v67[7] = v75;
  v67[0] = v68;
  v67[1] = v69;
  v67[2] = v70;
  v67[3] = v71;
  v27 = [NSValue valueWithCATransform3D:v67];
  v77[6] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:7];
  CARenderServerSnapshot();

  IOSurfaceLock(v23, 1u, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v23);
  v30 = CGDataProviderCreateWithData(v23, BaseAddress, v65 & ~v63, sub_100003678);
  sizeCopy = v21;
  if (!v30)
  {
    IOSurfaceUnlock(v23, 1u, 0);
    CFRelease(v23);
    v51 = sub_100003634(v50);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      sub_100005E88(v51, v52, v53, v54, v55, v56, v57, v58);
    }

    goto LABEL_15;
  }

  v31 = v30;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v33 = CGImageCreate(v60, height, 8uLL, 0x20uLL, v61, DeviceRGB, 0x2002u, v31, 0, 1, kCGRenderingIntentDefault);
  CGColorSpaceRelease(DeviceRGB);
  CGDataProviderRelease(v31);
LABEL_17:

  return v33;
}

- (CATransform3D)transformForFinalScreenshotSize:(SEL)size
{
  v6 = a4;
  v7 = objc_opt_new();
  [(CSSQuartzBackedScreenshotter *)self displayScale];
  v9 = v8;
  displaySize = [(CSSQuartzBackedScreenshotter *)self displaySize];
  CGAffineTransformMakeScale(&v16, v9 / fmin([displaySize height], objc_msgSend(displaySize, "width")), v9 / fmax(objc_msgSend(displaySize, "height"), objc_msgSend(displaySize, "width")));
  [v7 appendTransform:&v16];
  CGAffineTransformMakeTranslation(&v16, -0.5, -0.5);
  [v7 appendTransform:&v16];
  display = [(CSSQuartzBackedScreenshotter *)self display];
  css_interfaceOrientation = [display css_interfaceOrientation];

  if ((css_interfaceOrientation - 2) <= 2)
  {
    CGAffineTransformMakeRotation(&v16, dbl_100008738[(css_interfaceOrientation - 2)]);
    [v7 appendTransform:&v16];
  }

  CGAffineTransformMakeTranslation(&v16, 0.5, 0.5);
  [v7 appendTransform:&v16];
  width = [v6 width];
  height = [v6 height];

  CGAffineTransformMakeScale(&v16, width, height);
  [v7 appendTransform:&v16];
  if (v7)
  {
    objc_msgSend_composedTransform(v7);
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  CATransform3DMakeAffineTransform(retstr, &v16);

  return result;
}

@end