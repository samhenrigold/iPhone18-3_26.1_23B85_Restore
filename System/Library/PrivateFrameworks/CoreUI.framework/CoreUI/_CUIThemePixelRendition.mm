@interface _CUIThemePixelRendition
- (BOOL)isTiled;
- (CGImage)unslicedImage;
- (CGSize)unslicedSize;
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (id)copySharedBlockDataWithPixelFormat:(int)format;
- (id)imageForSliceIndex:(int64_t)index;
- (id)maskForSliceIndex:(int64_t)index;
- (id)metrics;
- (uint64_t)newImageFromCSIDataSlice:(unint64_t)slice ofBitmap:(uint64_t)bitmap usingColorspace:(CGColorSpace *)colorspace;
- (void)dealloc;
- (void)setSharedBlockData:(id)data;
@end

@implementation _CUIThemePixelRendition

- (id)metrics
{
  v2 = self->_renditionMetrics;

  return v2;
}

- (CGImage)unslicedImage
{
  result = self->_unslicedImage;
  if (result)
  {
    CFRetain(result);
    CFAutorelease(self->_unslicedImage);
    return self->_unslicedImage;
  }

  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_unslicedImage);
  self->_unslicedImage = 0;
  if (self->_nimages)
  {
    v3 = 0;
    image = self->_image;
    do
    {
      CGImageRelease(image[v3]);
      image[v3++] = 0;
    }

    while (v3 < self->_nimages);
  }

  self->_cachedBlockDataBGRX = 0;
  self->_cachedBlockDataRGBX = 0;

  self->_cachedBlockDataGray = 0;
  self->_renditionMetrics = 0;

  self->_sliceInformation = 0;
  v5.receiver = self;
  v5.super_class = _CUIThemePixelRendition;
  [(CUIThemeRendition *)&v5 dealloc];
}

- (CGSize)unslicedSize
{
  [(CUIThemeRendition *)self originalUncroppedSize];
  if (width == 0.0 || height == 0.0)
  {
    width = self->_unslicedSize.width;
    height = self->_unslicedSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  headerCopy = header;
  v111.receiver = self;
  v111.super_class = _CUIThemePixelRendition;
  v5 = [(CUIThemeRendition *)&v111 _initWithCSIHeader:header version:*&version];
  var0 = headerCopy->var11.var0;
  if (!var0)
  {
    return v5;
  }

  v7 = 0;
  aSize_8 = headerCopy->var11.var1;
  v8 = &headerCopy->var11.var1[var0 + 1] + headerCopy->var10;
  v9 = 1;
  height = NSZeroSize.height;
  v99 = v8;
  p_var0 = &headerCopy->var0;
  do
  {
    v11 = (v8 + aSize_8[v7]);
    if (*v11 != 1128614989 && *v11 != 1296844099)
    {
      [_CUIThemePixelRendition _initWithCSIHeader:v5 version:?];
      goto LABEL_127;
    }

    v13 = v11[1];
    renditionFlags = [v5 renditionFlags];
    *renditionFlags = *renditionFlags & 0xFFFFFFFD | (2 * ((v13 >> 1) & 1));
    if ((v9 & 1) == 0)
    {
      _CUILog(4, "Warning: Ignoring extra images found in CSI");
      return v5;
    }

    v98 = v11;
    var10 = headerCopy->var10;
    if (!var10)
    {
      goto LABEL_127;
    }

    v16 = 0;
    v17 = 0;
    v18 = (v8 - var10);
    do
    {
      v19 = *v18;
      if (*v18 <= 1005)
      {
        if (v19 == 1001)
        {
          v16 = v18 + 2;
          v25 = v18[2];
          *(v5 + 54) = v25;
          if (v25 >= 0x11)
          {
            [_CUIThemePixelRendition _initWithCSIHeader:version:];
          }
        }

        else if (v19 == 1003)
        {
          v17 = (v18 + 2);
        }
      }

      else
      {
        switch(v19)
        {
          case 1006:
            [v5 setExifOrientation:v18[2]];
            break;
          case 1007:
            *(v5 + 50) = v18[2];
            break;
          case 1012:
            *(v5 + 51) = [[NSMutableArray alloc] initWithCapacity:v18[2]];
            if (v18[2])
            {
              v20 = 0;
              v21 = (v18 + 4);
              do
              {
                v22 = objc_alloc_init(CUIRenditionLayerReference);
                *&v23 = v21[3];
                *&v24 = v21[4];
                [(CUIRenditionLayerReference *)v22 setFrame:*(v21 + 1), *(v21 + 2), v23, v24];
                [(CUIRenditionLayerReference *)v22 setOpacity:v21[6]];
                [(CUIRenditionLayerReference *)v22 setBlendMode:*(v21 + 5)];
                [(CUIRenditionLayerReference *)v22 setFixedFrame:*v21 & 1];
                v115 = 0;
                memset(v116, 0, 28);
                v113 = 0;
                v114 = 0;
                v112 = 0;
                __memcpy_chk();
                [(CUIRenditionLayerReference *)v22 setReferenceKey:[[CUIRenditionKey alloc] initWithKeyList:&v112]];
                [*(v5 + 51) addObject:v22];

                v21 = (v21 + *(v21 + 7) + 32);
                ++v20;
              }

              while (v20 < v18[2]);
              v8 = v99;
            }

            break;
        }
      }

      v18 = (v18 + v18[1] + 8);
    }

    while (v18 < v8);
    if (!v16)
    {
      goto LABEL_127;
    }

    v109 = 0.0;
    v110 = 0.0;
    Width = CGImageGetWidth(*(v5 + 44));
    v27 = CGImageGetHeight(*(v5 + 44));
    v109 = Width;
    v110 = v27;
    v107 = NSZeroSize;
    v108 = v107;
    v105 = v107;
    v106 = v107;
    v104 = 0xBFF0000000000000;
    v102 = v107;
    v103 = v107;
    v100 = v107;
    v101 = v107;
    if (v17)
    {
      _extractMetrics(v17, &v109, &v108.width, &v107.width, &v106.width, &v105, &v104, &v103.width, &v102, &v101.width, &v100);
      Width = v109;
      v27 = v110;
    }

    v28 = p_var0[6];
    if (v28 > 1195456543)
    {
      switch(v28)
      {
        case 1195456544:
          v35 = kCGColorSpaceGenericGrayGamma2_2;
          break;
        case 1380401717:
          v36 = &kCGColorSpaceSRGB;
          if ((p_var0[7] & 0xF) <= 3)
          {
            v36 = qword_1E72514D8[p_var0[7] & 0xF];
          }

          v37 = *v36;
          DeviceRGB = CGColorSpaceCreateWithName(*v36);
          if (DeviceRGB)
          {
            goto LABEL_61;
          }

          _CUILog(1, "Can't find %@ colorspace Defaulting to sRGB colorspace", v37);
          v35 = kCGColorSpaceSRGB;
          break;
        case 1380401751:
          v29 = (p_var0[7] & 0xF) - 3;
          v30 = &kCGColorSpaceSRGB;
          if (v29 <= 2)
          {
            v30 = qword_1E72514C0[v29];
          }

          if (*(v98 + 8) == 5)
          {
            v30 = &kCGColorSpaceDisplayP3;
          }

          v31 = *v30;
          DeviceRGB = CGColorSpaceCreateWithName(*v30);
          if (!DeviceRGB)
          {
            _CUILog(1, "Can't find %@ colorspace Defaulting to sRGB colorspace", v31);
LABEL_60:
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            goto LABEL_61;
          }

          goto LABEL_61;
        default:
          goto LABEL_79;
      }

      DeviceRGB = CGColorSpaceCreateWithName(v35);
      goto LABEL_61;
    }

    if (v28 == 1095911234)
    {
      v38 = &kCGColorSpaceSRGB;
      if ((p_var0[7] & 0xF) <= 3)
      {
        v38 = qword_1E72514D8[p_var0[7] & 0xF];
      }

      DeviceRGB = CGColorSpaceCreateWithName(*v38);
      if (DeviceRGB)
      {
        goto LABEL_61;
      }

      _CUILog(1, "Defaulting to sRGB colorspace", v90);
      goto LABEL_60;
    }

    if (v28 != 1195454774)
    {
LABEL_79:
      v53 = +[NSAssertionHandler currentHandler];
      v54 = objc_opt_class();
      v55 = NSStringFromClass(v54);
      [(NSAssertionHandler *)v53 handleFailureInMethod:a2 object:v5 file:@"CUIThemeRendition.m" lineNumber:3908 description:@"CoreUI: [%@ %@] unknown pixel format %d", v55, NSStringFromSelector(a2), p_var0[6]];
      v39 = 0;
      goto LABEL_62;
    }

    v33 = kCGColorSpaceGenericGrayGamma2_2;
    if ((p_var0[7] & 0xF) == 6)
    {
      v33 = kCGColorSpaceExtendedGray;
    }

    if (*(v98 + 8) == 5)
    {
      v34 = kCGColorSpaceDisplayP3;
    }

    else
    {
      v34 = v33;
    }

    DeviceRGB = CGColorSpaceCreateWithName(v34);
    if (!DeviceRGB)
    {
      _CUILog(1, "Can't find %@ colorspace Defaulting to Device Gray colorspace", v34);
      DeviceRGB = CGColorSpaceCreateDeviceGray();
    }

LABEL_61:
    v39 = DeviceRGB;
LABEL_62:
    v40 = p_var0[3];
    v41 = p_var0[4];
    *(v5 + 52) = v40;
    *(v5 + 53) = v41;
    v42 = [(_CUIThemePixelRendition *)v5 newImageFromCSIDataSlice:v40 | (v41 << 32) ofBitmap:v98 usingColorspace:v39];
    *(v5 + 44) = v42;
    if (!v42)
    {
      CGColorSpaceRelease(v39);
      +[CUIRenditionKey renditionKeyWithKeyList:](CUIRenditionKey, "renditionKeyWithKeyList:", [v5 key]);
      CGImageSetProperty();
      v88 = p_var0[6];
      if (v88 == 1195454774 || v88 == 1380401751 || (*[v5 renditionFlags] & 0x3C) == 0x1C || (*objc_msgSend(v5, "renditionFlags") & 0x3C) == 0x30)
      {
        return v5;
      }

      _CUILog(4, "Unable to create unsliced image from csi bitmap data.", v90, v91, v92, v93, v94);
LABEL_127:

      return 0;
    }

    origin = CGRectZero.origin;
    size = CGRectZero.size;
    v112 = origin;
    v113 = size;
    v114 = origin;
    v115 = size;
    *v116 = origin;
    *&v116[16] = size;
    v117 = origin;
    v118 = size;
    v119 = origin;
    v120 = size;
    v121 = origin;
    v122 = size;
    v123 = origin;
    v124 = size;
    v125 = origin;
    v126 = size;
    v127 = origin;
    v128[0] = size;
    v128[1] = origin;
    v128[2] = size;
    v128[3] = origin;
    v128[4] = size;
    v128[5] = origin;
    v128[6] = size;
    v128[7] = origin;
    v128[8] = size;
    v128[9] = origin;
    v128[10] = size;
    v128[11] = origin;
    v128[12] = size;
    v128[13] = origin;
    v128[14] = size;
    v45 = *v16;
    if (!v45)
    {
      goto LABEL_81;
    }

    v46 = 0;
    v47 = v16 + 2;
    v48 = &v113;
    while (1)
    {
      v49 = v47[1];
      v50 = v47[2];
      if (v49)
      {
        v51 = v50 == 0;
      }

      else
      {
        v51 = 1;
      }

      if (v51)
      {
        *(v5 + v46 + 28) = 0;
        goto LABEL_73;
      }

      LODWORD(origin.x) = *(v47 - 1);
      v131.origin.x = *&origin.x;
      v131.origin.y = (v41 - (v50 + *v47));
      v131.size.width = v49;
      v131.size.height = v50;
      *(v48 - 2) = v131.origin.x;
      *(v48 - 1) = v131.origin.y;
      *v48 = v49;
      v48[1] = v50;
      v52 = CGImageCreateWithImageInRect(*(v5 + 44), v131);
      *(v5 + v46 + 28) = v52;
      if (!v52)
      {
        break;
      }

      v45 = *v16;
LABEL_73:
      if (v46 <= 0xE)
      {
        ++v46;
        v47 += 4;
        v48 += 4;
        if (v46 < v45)
        {
          continue;
        }
      }

      goto LABEL_81;
    }

    if (*(v5 + 44) && [v5 type] == 3)
    {
      _CUILog(4, "CoreUI: CUIThemeRendition invalid slicing information assuming its a OnePart image");
      [v5 setType:0];
      [v5 setSubtype:12];
      goto LABEL_81;
    }

    if ([v5 type])
    {
      CGColorSpaceRelease(v39);
      _CUILog(4, "Unable to create sliced image from csi bitmap data %@ type is %d slices count %d rect is {%d,%d}.", *(v5 + 44), [v5 type], *v16, v49, v50);
      goto LABEL_127;
    }

LABEL_81:
    CGColorSpaceRelease(v39);
    if ([v5 type] == 3)
    {
      v56 = CGImageGetWidth(*(v5 + 28));
      v57 = CGImageGetWidth(*(v5 + 30));
      v58 = CGImageGetHeight(*(v5 + 28));
      v59 = CGImageGetHeight(*(v5 + 34));
      [v5 scale];
      Width = v56 + v57 + v60;
      [v5 scale];
      v27 = v61 + v58 + v59;
      v8 = v99;
    }

    else
    {
      v8 = v99;
      if ([v5 type] == 2)
      {
        v62 = CGImageGetHeight(*(v5 + 28));
        v63 = v62 + CGImageGetHeight(*(v5 + 30));
        [v5 scale];
        v27 = v64 + v63;
      }

      else if ([v5 type] == 1)
      {
        v65 = CGImageGetWidth(*(v5 + 28));
        v66 = v65 + CGImageGetWidth(*(v5 + 30));
        [v5 scale];
        Width = v67 + v66;
      }
    }

    v129.width = NSZeroSize.width;
    v129.height = height;
    v130.width = Width;
    v130.height = v27;
    if (!NSEqualSizes(v129, v130))
    {
      v68 = [CUIRenditionMetrics alloc];
      v69 = v104;
      v70 = [v5 type] == 2 || objc_msgSend(v5, "type") == 3;
      v71 = [v5 type] == 1 || objc_msgSend(v5, "type") == 3;
      [v5 scale];
      *(v5 + 45) = [(CUIRenditionMetrics *)v68 initWithImageSize:v70 defaultImageSize:v71 edgeBottomLeft:Width edgeTopRight:v27 contentBottomLeft:v109 contentTopRight:v110 baseline:v108.width auxiliary1BottomLeft:v108.height auxiliary1TopRight:v107.width auxiliary2BottomLeft:v107.height auxiliary2TopRight:v72 scalesVertically:v73 scalesHorizontally:v74 scale:v75, v76, *&v106.width, *&v106.height, *&v105.width, *&v105.height, v69, *&v103.width, *&v103.height, *&v102.width, *&v102.height, *&v101.width, *&v101.height, *&v100.width, *&v100.height, v77];
    }

    type = [v5 type];
    v80 = v113.height;
    v79 = v113.width;
    v81 = *&v116[16];
    if (type == 3)
    {
      v82 = *v128;
    }

    else
    {
      v82 = *&v116[16];
    }

    v83 = v128 + 1;
    if (type != 3)
    {
      v83 = &v116[24];
    }

    v84 = *v83;
    if ([v5 type] == 3)
    {
      v85 = v124.width;
      if (v118.width > v124.width)
      {
        v85 = v118.width;
      }

      if (v79 == 0.0)
      {
        v79 = v85;
      }

      v86 = v115.height;
      if (v115.height <= *&v116[24])
      {
        v86 = *&v116[24];
      }

      if (v80 == 0.0)
      {
        v80 = v86;
      }

      if (v81 <= v122.width)
      {
        v87 = v122.width;
      }

      else
      {
        v87 = v81;
      }

      if (v82 == 0.0)
      {
        v82 = v87;
      }

      if (v84 == 0.0)
      {
        if (v124.height <= v126.height)
        {
          v84 = v126.height;
        }

        else
        {
          v84 = v124.height;
        }
      }
    }

    v9 = 0;
    *(v5 + 46) = -[CUIRenditionSliceInformation initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:]([CUIRenditionSliceInformation alloc], "initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:", [v5 type], 0.0, 0.0, Width, v27, v79, v80, v82, v84);
    headerCopy = p_var0;
    v7 = 1;
  }

  while (p_var0[43] > 1);
  return v5;
}

- (id)copySharedBlockDataWithPixelFormat:(int)format
{
  if (format > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->super.super.isa + *off_1E72514F8[format]);
  }
}

- (void)setSharedBlockData:(id)data
{
  if (!data)
  {
LABEL_5:
    cachedBlockDataBGRX = self->_cachedBlockDataBGRX;
    if (cachedBlockDataBGRX == data)
    {
      return;
    }

    v4 = 0;
    self->_cachedBlockDataBGRX = data;
    goto LABEL_12;
  }

  v4 = *(data + 3);
  switch(v4)
  {
    case 2:
      cachedBlockDataBGRX = self->_cachedBlockDataGray;
      if (cachedBlockDataBGRX == data)
      {
        return;
      }

      self->_cachedBlockDataGray = data;
      v4 = 2;
      break;
    case 1:
      cachedBlockDataBGRX = self->_cachedBlockDataRGBX;
      if (cachedBlockDataBGRX == data)
      {
        return;
      }

      self->_cachedBlockDataRGBX = data;
      v4 = 1;
      break;
    case 0:
      goto LABEL_5;
    default:
      cachedBlockDataBGRX = 0;
      break;
  }

LABEL_12:

  v6 = CUIGetThemeCleanupQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46___CUIThemePixelRendition_setSharedBlockData___block_invoke;
  v7[3] = &unk_1E72514A0;
  v8 = v4;
  v7[4] = self;
  dispatch_async(v6, v7);
}

- (id)imageForSliceIndex:(int64_t)index
{
  if (index < 0 || self->_nimages <= index)
  {
    _CUILog(4, "Invalid slice index %ld for rendition", index);
    return 0;
  }

  else
  {
    v4 = self->_image[index];

    return [CUIImage imageWithCGImage:v4];
  }
}

- (id)maskForSliceIndex:(int64_t)index
{
  if (index < 0 || self->_nimages <= index)
  {
    _CUILog(4, "Invalid slice index %ld for rendition", index);
    return 0;
  }

  else
  {
    v3 = self->_image[index];
    *decode = xmmword_18E021C10;
    Width = CGImageGetWidth(v3);
    Height = CGImageGetHeight(v3);
    BitsPerComponent = CGImageGetBitsPerComponent(v3);
    BitsPerPixel = CGImageGetBitsPerPixel(v3);
    BytesPerRow = CGImageGetBytesPerRow(v3);
    DataProvider = CGImageGetDataProvider(v3);
    ShouldInterpolate = CGImageGetShouldInterpolate(v3);
    v11 = CGImageMaskCreate(Width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, decode, ShouldInterpolate);
    v12 = [CUIImage imageWithCGImage:v11];
    CGImageRelease(v11);
  }

  return v12;
}

- (BOOL)isTiled
{
  if ([(CUIThemeRendition *)self type]== 3 || ![(CUIThemeRendition *)self type]|| [(CUIThemeRendition *)self type]== 5 || [(CUIThemeRendition *)self type]== 8)
  {
    return [(CUIThemeRendition *)self subtype]== 30 || [(CUIThemeRendition *)self subtype]== 11;
  }

  _CUILog(1, "WARNING: -isTiled called on rendition named: %@, which is not a one-part or nine-part image, but the method is only meaningful for one-part and nine-part images. Returning NO.", [(CUIThemeRendition *)self name]);
  return 0;
}

- (uint64_t)newImageFromCSIDataSlice:(unint64_t)slice ofBitmap:(uint64_t)bitmap usingColorspace:(CGColorSpace *)colorspace
{
  if (!self)
  {
    return 0;
  }

  v9 = [objc_msgSend(self "srcData")];
  v11 = v9[3];
  v10 = v9[4];
  v12 = 4;
  v48 = 4;
  LODWORD(bitsPerComponent) = 8;
  v13 = HIDWORD(slice);
  v47 = 1;
  v14 = v9[6];
  if (v14 == 1095911234)
  {
    goto LABEL_9;
  }

  if (v14 != 1380401751)
  {
    if (v14 == 1195456544)
    {
      v12 = 2;
      v48 = 2;
      LODWORD(bitsPerComponent) = 8;
      v16 = 12291;
      goto LABEL_22;
    }

    if (v14 == 1380401717)
    {
      LODWORD(bitsPerComponent) = 5;
      v47 = 0;
      v12 = 2;
      v16 = 4102;
      goto LABEL_22;
    }

    if (v14 != 1195454774)
    {
      bitmapInfoa = +[NSAssertionHandler currentHandler];
      v18 = objc_opt_class();
      decode = NSStringFromClass(v18);
      [(NSAssertionHandler *)bitmapInfoa handleFailureInMethod:sel_newImageFromCSIDataSlice_ofBitmap_usingColorspace_ object:self file:@"CUIThemeRendition.m" lineNumber:3530 description:@"CoreUI: [%@ %@] unknown pixel format %d", decode, NSStringFromSelector(sel_newImageFromCSIDataSlice_ofBitmap_usingColorspace_), v9[6]];
      v16 = 0;
      v12 = 4;
      goto LABEL_22;
    }
  }

  v15 = *(bitmap + 8);
  if (v15 <= 0xC && ((1 << v15) & 0x10A0) != 0)
  {
LABEL_9:
    v48 = 4;
    LODWORD(bitsPerComponent) = 8;
    if ((*(bitmap + 4) & 2) != 0)
    {
      v16 = 8198;
    }

    else
    {
      v16 = 8194;
    }
  }

  else if (v14 == 1195454774)
  {
    v48 = 2;
    LODWORD(bitsPerComponent) = 16;
    OUTLINED_FUNCTION_2_2();
    if (v34)
    {
      v16 = 4097;
    }

    else
    {
      v16 = v41;
    }

    if ((v9[7] & 0xF) == 6)
    {
      v16 |= 0x100u;
      v47 = 5;
    }
  }

  else
  {
    v48 = 4;
    LODWORD(bitsPerComponent) = 16;
    OUTLINED_FUNCTION_2_2();
    if (v34)
    {
      v16 = 4097;
    }

    else
    {
      v16 = v17;
    }

    if ((v9[7] & 0xE) == 4)
    {
      v16 |= 0x100u;
      v47 = 5;
    }

    v12 = 8;
  }

LABEL_22:
  if (!v13 || !slice)
  {
    _CUILog(4, "CoreUI: degenerate slice geometry");
    return 0;
  }

  bitmapInfo = v16;
  v19 = v11;
  v20 = *(bitmap + 8);
  renditionFlags = [self renditionFlags];
  *renditionFlags = *renditionFlags & 0xFFFFFFC3 | (4 * (v20 & 0xF));
  v22 = *(bitmap + 8);
  if (v22 > 0xC)
  {
    _CUILog(4, "[CUIThemeRendition newImageFromCSIDataSlice:ofBitmap:] Unsupported pixel format in CSI got %d", *(bitmap + 8));
    v30 = 0;
    goto LABEL_53;
  }

  v23 = v10 - (HIDWORD(a2) + HIDWORD(slice));
  v24 = 1 << v22;
  if ((v24 & 0xF7E) != 0)
  {
    goto LABEL_26;
  }

  if ((v24 & 0x1080) != 0)
  {
    CUIUpdateImageProviderForATECompressedData(v9[6], &bitsPerComponent, &v48, &v47);
    v12 = (v48 * bitsPerComponent) >> 3;
LABEL_26:
    v25 = objc_alloc_init(CSIHelper);
    *&v25->slice.x = a2;
    *&v25->slice.width = slice;
    v25->slice.y = v23;
    v25->csiData = [self srcData];
    v25->bmp = bitmap;
    v25->renditionLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v25->rendition, self);
    v25->blockDataCacheKeyRGBX = 0;
    v25->blockDataCacheKeyGray = 0;
    v25->blockDataCacheKeyBGRX = 0;
    objc_storeWeak(&v25->sharedBlockDataBGRX, 0);
    objc_storeWeak(&v25->sharedBlockDataRGBX, 0);
    objc_storeWeak(&v25->sharedBlockDataGray, 0);
    v25->sourceRowbytes = [self sourceRowbytes];
    v26 = *(v25 + 120) & 0xFE;
    if (*(bitmap + 8) != 1)
    {
      ++v26;
    }

    *(v25 + 120) = v26;
    if (v47)
    {
      if (qword_1ED4EC010 != -1)
      {
        dispatch_once(&qword_1ED4EC010, &__block_literal_global_428);
      }

      if ((*(bitmap + 4) & 2) != 0)
      {
        v27 = &qword_1ED4EC018;
      }

      else
      {
        v27 = &qword_1ED4EC020;
      }

      v28 = *v27;
      if (CGImageProviderCreate())
      {
        ImageAtIndex = CGImageCreateWithImageProvider();
        v30 = 0;
        goto LABEL_54;
      }

      _CUILog(4, "CoreUI: failed to create image provider for %d %d componentType %d colorSpace %@ options %@", slice, v13, v47, colorspace, v28);
      v30 = 0;
      goto LABEL_53;
    }

    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    *(v25 + 120) |= 2u;
    Direct = CGDataProviderCreateDirect(v25, AlignedBytesPerRow * v13, &csiCompressDataProviderCallbacks);
    goto LABEL_39;
  }

  v37 = bitmap + v12 * (a2 + v19 * v23);
  if ([self sourceRowbytes])
  {
    sourceRowbytes = [self sourceRowbytes];
LABEL_64:
    AlignedBytesPerRow = sourceRowbytes;
    goto LABEL_65;
  }

  AlignedBytesPerRow = v12 * v19;
  if (v9[6] == 1195456544)
  {
    sourceRowbytes = CGBitmapGetAlignedBytesPerRow();
    goto LABEL_64;
  }

LABEL_65:
  v42 = [[NSData alloc] initWithBytes:v37 + 16 length:AlignedBytesPerRow * v13];
  __CFSetLastAllocationEventName();
  Direct = CGDataProviderCreateWithData(v42, [v42 bytes], objc_msgSend(v42, "length"), __releaseData);
LABEL_39:
  v30 = Direct;
  if (Direct)
  {
    v33 = *(bitmap + 8);
    v34 = v33 == 12 || v33 == 7;
    if (!v34)
    {
      ImageAtIndex = CGImageCreate(slice, v13, bitsPerComponent, 8 * v12, AlignedBytesPerRow, colorspace, bitmapInfo, Direct, 0, 1, kCGRenderingIntentDefault);
      goto LABEL_54;
    }

    v35 = CGImageSourceCreateWithDataProvider(Direct, 0);
    if (v35)
    {
      v36 = v35;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v35, 0, 0);
      CFRelease(v36);
      goto LABEL_54;
    }
  }

LABEL_53:
  ImageAtIndex = 0;
LABEL_54:
  CGDataProviderRelease(v30);
  CGImageProviderRelease();
  if (!ImageAtIndex)
  {
    v39 = CUIConvertCompressionTypeToString(*(bitmap + 8));
    _CUILog(4, "CoreUI: failed to create an image because of a bad pixel format or failure to create an appropriate image provider for encoding '%s'", v39);
  }

  return ImageAtIndex;
}

@end