@interface TCCDIconGenerator
+ (BOOL)createDirectoryIfNeeded:(id)needed;
+ (BOOL)shouldOverrideCachedIcons;
+ (CGImage)_createCGImageIconWithBadge:(id)badge forService:(id)service withDescriptor:(id)descriptor;
+ (CGImage)_createCGImageRefByOverlay:(CGImage *)overlay ontoImage:(CGImage *)image;
+ (id)_iconForService:(id)service;
+ (id)_writeCGImage:(CGImage *)image toTempURL:(id)l;
+ (id)_writeIcon:(id)icon withDescriptor:(id)descriptor toTempURL:(id)l;
+ (id)checkAndGetAppropriateBundleIdentifier:(id)identifier;
+ (id)createIconForTCCService:(id)service withTempDirectory:(id)directory;
@end

@implementation TCCDIconGenerator

+ (BOOL)createDirectoryIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[NSFileManager defaultManager];
  v5 = 1;
  v6 = [NSURL fileURLWithPath:neededCopy isDirectory:1];
  v12 = 0;
  v7 = [v4 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v12];
  v8 = v12;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    if (v8 && (v8 = [v8 code], v8 == 516))
    {
      v10 = tcc_access_log(516);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_100037884(neededCopy, v10);
      }
    }

    else
    {
      v10 = tcc_access_log(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1000378FC(neededCopy, v9, v10);
      }

      v5 = 0;
    }
  }

  return v5;
}

+ (BOOL)shouldOverrideCachedIcons
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"TCC.IconGenerator.OverrideCachedIcons"];

  return v3;
}

+ (id)createIconForTCCService:(id)service withTempDirectory:(id)directory
{
  serviceCopy = service;
  directoryCopy = directory;
  if (![TCCDIconGenerator createDirectoryIfNeeded:directoryCopy])
  {
    v21 = 0;
    goto LABEL_23;
  }

  if (qword_1000C1150 != -1)
  {
    sub_100037984();
  }

  [NSString stringWithFormat:@"%@@%dx.png", serviceCopy, *&qword_1000C1158];
  v29 = v28 = directoryCopy;
  v23 = v29;
  v7 = [NSArray arrayWithObjects:&v28 count:2];
  v8 = [NSURL fileURLWithPathComponents:v7];

  v9 = +[NSFileManager defaultManager];
  v10 = +[TCCDIconGenerator shouldOverrideCachedIcons];
  path = [v8 path];
  v12 = [v9 fileExistsAtPath:path];

  if (v12)
  {
    v14 = tcc_access_log(v13);
    v15 = v14;
    if (!v10)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        sub_100037998(serviceCopy, v8, v15);
      }

      v21 = v8;
      goto LABEL_22;
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      path2 = [v8 path];
      *buf = 138412546;
      v25 = serviceCopy;
      v26 = 2112;
      v27 = path2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#tccIcon overriding cached icon for %@ at %@", buf, 0x16u);
    }

    [v9 removeItemAtURL:v8 error:0];
  }

  v17 = [TCCDIconGenerator _iconForService:serviceCopy];
  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if (qword_1000C1150 != -1)
    {
      sub_100037A44();
    }

    v18 = [[ISImageDescriptor alloc] initWithSize:29.0 scale:{29.0, *&qword_1000C1158}];
    [v18 setDrawBorder:1];
    v19 = [[ISIcon alloc] initWithType:@"com.apple.graphic-icon.privacy"];
    v20 = [TCCDIconGenerator _createCGImageIconWithBadge:v19 forService:serviceCopy withDescriptor:v18];
    v21 = [TCCDIconGenerator _writeCGImage:v20 toTempURL:v8];
    if (v20)
    {
      CGImageRelease(v20);
    }
  }

  else
  {
    v18 = [ISImageDescriptor imageDescriptorNamed:kISImageDescriptorHomeScreen];
    v21 = [TCCDIconGenerator _writeIcon:v17 withDescriptor:v18 toTempURL:v8];
  }

LABEL_22:
LABEL_23:

  return v21;
}

+ (id)_iconForService:(id)service
{
  serviceCopy = service;
  v4 = serviceCopy;
  if ([serviceCopy containsString:@"kTCCService"])
  {
    v4 = [serviceCopy substringFromIndex:{objc_msgSend(@"kTCCService", "length")}];
  }

  v5 = [&off_1000AF528 objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = [ISIcon alloc];
    v7 = [@"com.apple." stringByAppendingString:v5];
    v8 = [v6 initWithBundleIdentifier:v7];
  }

  else
  {
    v9 = tcc_access_log(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "+[TCCDIconGenerator _iconForService:]";
      v13 = 2112;
      v14 = serviceCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#tccIcon %s: No icon found for TCC service=%@", &v11, 0x16u);
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_writeIcon:(id)icon withDescriptor:(id)descriptor toTempURL:(id)l
{
  iconCopy = icon;
  descriptorCopy = descriptor;
  lCopy = l;
  v10 = [iconCopy imageForDescriptor:descriptorCopy];
  placeholder = [v10 placeholder];
  if (placeholder)
  {
    v12 = [iconCopy prepareImageForDescriptor:descriptorCopy];

    v10 = v12;
  }

  v13 = tcc_access_log(placeholder);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v18 = 136315394;
    v19 = "+[TCCDIconGenerator _writeIcon:withDescriptor:toTempURL:]";
    v20 = 2112;
    v21 = lCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#tccIcon %s: Attempting to write icon to %@", &v18, 0x16u);
  }

  v14 = [v10 writeToURL:lCopy];
  if (v14)
  {
    v15 = lCopy;
  }

  else
  {
    v16 = tcc_access_log(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100037A6C();
    }

    v15 = 0;
  }

  return v15;
}

+ (CGImage)_createCGImageIconWithBadge:(id)badge forService:(id)service withDescriptor:(id)descriptor
{
  badgeCopy = badge;
  serviceCopy = service;
  descriptorCopy = descriptor;
  v10 = [NSSet setWithArray:&off_1000B0220];
  v11 = serviceCopy;
  v12 = v11;
  if ([v11 containsString:@"kTCCService"])
  {
    v12 = [v11 substringFromIndex:{objc_msgSend(@"kTCCService", "length")}];
  }

  v13 = [&off_1000AF550 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [&off_1000AF578 objectForKeyedSubscript:v12];
    v15 = [@"com.apple." stringByAppendingString:v14];
    v16 = [TCCDIconGenerator checkAndGetAppropriateBundleIdentifier:v15];

    v17 = [[ISIcon alloc] initWithBundleIdentifier:v16];
    goto LABEL_5;
  }

  v37 = [&off_1000AF5A0 objectForKeyedSubscript:v12];

  if (v37)
  {
    v14 = [&off_1000AF5C8 objectForKeyedSubscript:v12];
    v39 = [&off_1000B0238 containsObject:v12];
    v40 = [ISIcon alloc];
    v41 = v40;
    if (v39)
    {
      v18 = [v40 initWithType:v14];
      goto LABEL_6;
    }

    v16 = [@"com.apple." stringByAppendingString:v14];
    v17 = [v41 initWithType:v16];
LABEL_5:
    v18 = v17;

LABEL_6:
    if (qword_1000C1150 != -1)
    {
      sub_100037984();
    }

    v20 = *&qword_1000C1158;
    v21 = tcc_access_log(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v45 = "+[TCCDIconGenerator _createCGImageIconWithBadge:forService:withDescriptor:]";
      v46 = 2048;
      v47 = v20;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "#tccIcon %s: Setting display scale to %lf", buf, 0x16u);
    }

    v22 = [[ISImageDescriptor alloc] initWithSize:64.0 scale:{64.0, v20}];
    v23 = [v18 imageForDescriptor:v22];
    if ([v23 placeholder])
    {
      v24 = [v18 prepareImageForDescriptor:v22];

      v23 = v24;
    }

    v25 = [v10 containsObject:v12];
    if (v25)
    {
      v26 = [badgeCopy imageForDescriptor:descriptorCopy];
      placeholder = [v26 placeholder];
      v42 = v10;
      v43 = descriptorCopy;
      if (placeholder)
      {
        v28 = [badgeCopy prepareImageForDescriptor:descriptorCopy];

        v26 = v28;
      }

      v29 = badgeCopy;
      v30 = tcc_access_log(placeholder);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v18 description];
        v32 = [badgeCopy description];
        *buf = 138412802;
        v45 = v11;
        v46 = 2112;
        v47 = *&v31;
        v48 = 2112;
        v49 = v32;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#tccIcon Service: %@, icon:%@, badge icon: %@", buf, 0x20u);
      }

      cGImage = +[TCCDIconGenerator _createCGImageRefByOverlay:ontoImage:](TCCDIconGenerator, "_createCGImageRefByOverlay:ontoImage:", [v26 CGImage], objc_msgSend(v23, "CGImage"));
      badgeCopy = v29;
      v10 = v42;
      descriptorCopy = v43;
    }

    else
    {
      v34 = tcc_access_log(v25);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v23 description];
        *buf = 138412546;
        v45 = v11;
        v46 = 2112;
        v47 = *&v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#tccIcon Service: %@, icon:%@, ", buf, 0x16u);
      }

      CFRetain([v23 CGImage]);
      cGImage = [v23 CGImage];
    }

    goto LABEL_22;
  }

  v18 = tcc_access_log(v38);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100037AF0();
  }

  cGImage = 0;
LABEL_22:

  return cGImage;
}

+ (id)checkAndGetAppropriateBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![identifierCopy isEqualToString:@"com.apple.Passbook"])
  {
    goto LABEL_6;
  }

  if (qword_1000C1168 != -1)
  {
    sub_100037B74();
  }

  if (byte_1000C1160)
  {
    v4 = @"com.apple.PassbookStub";
  }

  else
  {
LABEL_6:
    v4 = identifierCopy;
  }

  return v4;
}

+ (id)_writeCGImage:(CGImage *)image toTempURL:(id)l
{
  lCopy = l;
  v6 = lCopy;
  if (!image)
  {
LABEL_9:
    v16 = 0;
    goto LABEL_14;
  }

  v7 = CGImageDestinationCreateWithURL(lCopy, kUTTypePNG, 1uLL, 0);
  if (!v7)
  {
    v15 = tcc_access_log(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "#tccIcon Failed to create image destination", &v18, 2u);
    }

    goto LABEL_9;
  }

  v8 = v7;
  CGImageDestinationAddImage(v7, image, 0);
  v9 = CGImageDestinationFinalize(v8);
  v10 = v9;
  v11 = tcc_access_log(v9);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v12)
    {
      path = [(__CFURL *)v6 path];
      v18 = 138412290;
      v19 = path;
      v14 = "#tccIcon Image saved to %@";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v14, &v18, 0xCu);
    }
  }

  else if (v12)
  {
    path = [(__CFURL *)v6 path];
    v18 = 138412290;
    v19 = path;
    v14 = "#tccIcon Failed to write image to %@";
    goto LABEL_12;
  }

  CFRelease(v8);
  v16 = v6;
LABEL_14:

  return v16;
}

+ (CGImage)_createCGImageRefByOverlay:(CGImage *)overlay ontoImage:(CGImage *)image
{
  if (qword_1000C1150 != -1)
  {
    sub_100037984();
  }

  v6 = *&qword_1000C1158;
  v7 = tcc_access_log(self);
  v8 = v7;
  if (!overlay || !image)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_100037C10(image == 0, overlay == 0, v8);
    }

    return 0;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v33 = 136316418;
    v34 = "+[TCCDIconGenerator _createCGImageRefByOverlay:ontoImage:]";
    v35 = 2048;
    Width = CGImageGetWidth(image);
    v37 = 2048;
    Height = CGImageGetHeight(image);
    v39 = 2048;
    v40 = CGImageGetWidth(overlay);
    v41 = 2048;
    v42 = CGImageGetHeight(overlay);
    v43 = 2048;
    v44 = v6;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#tccIcon %s: baseImageSize: (%zu, %zu) overlayImageSize: (%zu, %zu) both scale: %f", &v33, 0x3Eu);
  }

  ColorSpace = CGImageGetColorSpace(image);
  if (ColorSpace)
  {
    v10 = ColorSpace;
    CGColorSpaceRetain(ColorSpace);
  }

  else
  {
    v11 = tcc_access_log(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#tccIcon CGImageGetColorSpace returned NULL for baseImage. Defaulting to ExtendedSRGB colorspace", &v33, 2u);
    }

    v10 = CGColorSpaceCreateWithName(kCGColorSpaceExtendedSRGB);
    if (!v10)
    {
      v27 = tcc_access_log(0);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        sub_100037BCC(v27);
      }

      goto LABEL_26;
    }
  }

  v12 = (v6 << 6) | 0xF;
  v13 = CGBitmapContextCreate(0, v12, v12, 0x10uLL, 8 * v12, v10, 0x1101u);
  if (!v13)
  {
    v27 = tcc_access_log(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_100037B88(v27);
    }

LABEL_26:

    return 0;
  }

  v14 = v13;
  v45.size.width = v12;
  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.height = v12;
  CGContextClearRect(v13, v45);
  v15 = +[NSLocale currentLocale];
  v16 = [v15 objectForKey:NSLocaleLanguageCode];
  v17 = [NSLocale characterDirectionForLanguage:v16];
  v18 = tcc_access_log(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412546;
    v34 = v16;
    v35 = 1024;
    LODWORD(Width) = v17 == NSLocaleLanguageDirectionRightToLeft;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#tccIcon Language code is %@ isRTLLanguage: %d", &v33, 0x12u);
  }

  v19 = CGImageGetWidth(image);
  v20 = CGImageGetHeight(image);
  if (v17 == NSLocaleLanguageDirectionRightToLeft)
  {
    v21 = 15.0;
    v22 = 15.0;
    v23 = v19;
    CGContextDrawImage(v14, *(&v20 - 3), image);
    v24 = CGImageGetWidth(overlay);
    v25 = CGImageGetHeight(overlay);
    v26 = 0.0;
  }

  else
  {
    v28 = 0;
    v29 = 15.0;
    v30 = v19;
    CGContextDrawImage(v14, *(&v20 - 3), image);
    v26 = (v12 - CGImageGetWidth(overlay));
    v24 = CGImageGetWidth(overlay);
    v25 = CGImageGetHeight(overlay);
  }

  v46.size.height = v25;
  v46.size.width = v24;
  v46.origin.x = v26;
  v46.origin.y = 0.0;
  CGContextDrawImage(v14, v46, overlay);
  Image = CGBitmapContextCreateImage(v14);
  CGContextRelease(v14);
  CGColorSpaceRelease(v10);
  return Image;
}

@end