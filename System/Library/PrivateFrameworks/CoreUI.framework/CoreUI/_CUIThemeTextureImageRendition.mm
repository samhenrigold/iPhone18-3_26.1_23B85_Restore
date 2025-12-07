@interface _CUIThemeTextureImageRendition
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (void)dealloc;
@end

@implementation _CUIThemeTextureImageRendition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUIThemeTextureImageRendition;
  [(CUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v29.receiver = self;
  v29.super_class = _CUIThemeTextureImageRendition;
  v6 = [(CUIThemeRendition *)&v29 _initWithCSIHeader:header version:*&version];
  v6[27] = [[NSMutableArray alloc] initWithCapacity:header->var11.var0];
  var10 = header->var10;
  v8 = &header->var11.var1[header->var11.var0];
  v9 = v8 + var10 + 4;
  v10 = 0;
  if (var10)
  {
    v11 = v8 + 1;
    do
    {
      if (*v11 == 1007)
      {
        v10 = v11 + 2;
      }

      else if (*v11 == 1006)
      {
        [v6 setExifOrientation:v11[2]];
      }

      v11 = (v11 + v11[1] + 8);
    }

    while (v11 < v9);
  }

  var6 = header->var6;
  if (var6 > 1195456543)
  {
    if (var6 == 1195456544)
    {
      goto LABEL_20;
    }

    if (var6 == 1380401751)
    {
      v15 = (*(header + 7) & 0xF) - 3;
      if (v15 > 2)
      {
        v16 = &kCGColorSpaceSRGB;
      }

      else
      {
        v16 = qword_1E72514C0[v15];
      }

      DeviceRGB = CGColorSpaceCreateWithName(*v16);
      if (!DeviceRGB)
      {
        _CUILog(1, "Defaulting to sRGB colorspace");
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
      }

      goto LABEL_28;
    }

LABEL_21:
    v17 = +[NSAssertionHandler currentHandler];
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    [(NSAssertionHandler *)v17 handleFailureInMethod:a2 object:v6 file:@"CUIThemeRendition.m" lineNumber:2907 description:@"CoreUI: [%@ %@] unknown pixel format %d", v19, NSStringFromSelector(a2), header->var6];
    v20 = 0;
    goto LABEL_29;
  }

  if (var6 == 1095911234)
  {
    v21 = &kCGColorSpaceGenericRGB;
    if ((*(header + 7) & 0xF) != 0)
    {
      v21 = &kCGColorSpaceSRGB;
    }

    DeviceRGB = CGColorSpaceCreateWithName(*v21);
    goto LABEL_28;
  }

  if (var6 != 1195454774)
  {
    goto LABEL_21;
  }

  if ((*(header + 7) & 0xF) == 6)
  {
    v13 = &kCGColorSpaceExtendedGray;
  }

  else
  {
    v13 = &kCGColorSpaceGenericGrayGamma2_2;
  }

  DeviceRGB = CGColorSpaceCreateWithName(*v13);
  if (DeviceRGB)
  {
    goto LABEL_28;
  }

  _CUILog(1, "Defaulting to Device Gray colorspace");
LABEL_20:
  DeviceRGB = CGColorSpaceCreateDeviceGray();
LABEL_28:
  v20 = DeviceRGB;
LABEL_29:
  if (header->var11.var0)
  {
    v22 = 0;
    do
    {
      v23 = (v9 + header->var11.var1[v22]);
      if (!v22)
      {
        var0 = v23->var1.var0;
        renditionFlags = [v6 renditionFlags];
        *renditionFlags = *renditionFlags & 0xFFFFFFFD | (2 * ((var0 >> 1) & 1));
      }

      v26 = objc_alloc_init(CSITextureHelper);
      v26->bmp = v23;
      v26->colorspaceHint = CGColorSpaceRetain(v20);
      if (v10)
      {
        v27 = *v10;
      }

      else
      {
        v27 = 0;
      }

      v26->sourceRowbytes = v27;
      v26->width = header->var3;
      v26->height = header->var4;
      v26->pixelFormat = header->var6;
      [v6[27] addObject:v26];

      ++v22;
    }

    while (v22 < header->var11.var0);
  }

  CGColorSpaceRelease(v20);
  return v6;
}

@end