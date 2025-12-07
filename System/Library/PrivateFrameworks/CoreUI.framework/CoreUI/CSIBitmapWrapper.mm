@interface CSIBitmapWrapper
- (CGContext)bitmapContext;
- (CGImageRef)destImage;
- (CSIBitmapWrapper)initWithCGImage:(CGImage *)image width:(unsigned int)width height:(unsigned int)height texturePixelFormat:(int64_t)format;
- (CSIBitmapWrapper)initWithPixelWidth:(unsigned int)width pixelHeight:(unsigned int)height;
- (id)bitmapContext;
- (id)compressedData:(BOOL)data usedEncoding:(int *)encoding andRowChunkSize:(unsigned int *)size;
- (id)pixelData;
- (void)dealloc;
- (void)setAllowsCompactCompression:(BOOL)compression;
- (void)setAllowsMultiPassEncoding:(BOOL)encoding;
- (void)setAllowsOptimalRowbytesPacking:(BOOL)packing;
- (void)setPixelData:(id)data;
@end

@implementation CSIBitmapWrapper

- (CGContext)bitmapContext
{
  if (self->_sourceImage)
  {
    [CSIBitmapWrapper bitmapContext];
  }

  result = self->_bitmapContext;
  if (!result)
  {
    v5 = (self->_imageAlpha < 7) & (0x61u >> self->_imageAlpha);
    pixelFormat = self->_pixelFormat;
    if (pixelFormat > 1195456543)
    {
      if (pixelFormat != 1195456544)
      {
        if (pixelFormat == 1380401751)
        {
          colorSpaceID = self->_colorSpaceID;
          if (v5)
          {
            v13 = 4101;
          }

          else
          {
            v13 = 4097;
          }

          v7 = colorSpaceID == 4;
          v8 = v13 | ((colorSpaceID == 4) << 8);
          goto LABEL_32;
        }

LABEL_21:
        _CUILog(4, "Unsupported CSIGenerator pixel format: %d", self->_pixelFormat);
        return 0;
      }

      if (v5)
      {
        v8 = 0;
        v10 = kCGColorSpaceGenericGrayGamma2_2;
        v11 = 1;
LABEL_40:
        v16 = 8;
        goto LABEL_41;
      }

      v10 = kCGColorSpaceSRGB;
      v8 = 8194;
    }

    else
    {
      if (pixelFormat != 1095911234)
      {
        if (pixelFormat == 1195454774)
        {
          v7 = self->_colorSpaceID == 6;
          if (v5)
          {
            if (self->_colorSpaceID == 6)
            {
              v8 = 4352;
            }

            else
            {
              v8 = 4096;
            }

            v9 = &kCGColorSpaceExtendedGray;
            if (self->_colorSpaceID != 6)
            {
              v9 = &kCGColorSpaceGenericGrayGamma2_2;
            }

            v10 = *v9;
            v11 = 2;
LABEL_35:
            v16 = 16;
LABEL_41:
            v17 = CGColorSpaceCreateWithName(v10);
            allowsOptimalRowbytesPacking = [(CSIBitmapWrapper *)self allowsOptimalRowbytesPacking];
            width = self->_width;
            AlignedBytesPerRow = width * v11;
            if (allowsOptimalRowbytesPacking)
            {
              AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
              width = self->_width;
            }

            v21 = CGBitmapContextCreate(0, width, self->_height, v16, AlignedBytesPerRow, v17, v8);
            self->_bitmapContext = v21;
            if (!v21)
            {
              [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CSIGenerator.m" description:2437, @"CoreUI: Unable to create bitmap context for distill output target with _width %d _height %d PixelFormat: %d, ColorSpace: %@, BitsPerComponent: %d, bitmapInfo: %d", self->_width, self->_height, self->_pixelFormat, v17, v16, v8];
            }

            CGColorSpaceRelease(v17);
            flipped = [(CSIBitmapWrapper *)self flipped];
            result = self->_bitmapContext;
            if (flipped)
            {
              LODWORD(v23) = self->_height;
              CGContextTranslateCTM(result, 0.0, v23);
              CGContextScaleCTM(self->_bitmapContext, 1.0, -1.0);
              return self->_bitmapContext;
            }

            return result;
          }

          if (self->_colorSpaceID == 6)
          {
            v8 = 4353;
          }

          else
          {
            v8 = 4097;
          }

LABEL_32:
          v15 = &kCGColorSpaceExtendedSRGB;
          if (!v7)
          {
            v15 = &kCGColorSpaceDisplayP3;
          }

          v10 = *v15;
          v11 = 8;
          goto LABEL_35;
        }

        goto LABEL_21;
      }

      if ((v5 & [(CSIBitmapWrapper *)self allowsMultiPassEncoding]) != 0)
      {
        v8 = 8198;
      }

      else
      {
        v8 = 8194;
      }

      if (self->_colorSpaceID == 3)
      {
        v14 = &kCGColorSpaceDisplayP3;
      }

      else
      {
        v14 = &kCGColorSpaceSRGB;
      }

      v10 = *v14;
    }

    v11 = 4;
    goto LABEL_40;
  }

  return result;
}

- (id)pixelData
{
  if (self->_pixelData)
  {
    return self->_pixelData;
  }

  sourceImage = self->_sourceImage;
  if (sourceImage)
  {
    LODWORD(v2) = self->_width;
    LODWORD(v3) = self->_height;
    self->_pixelData = CUIConvertImageToPixelFormat(sourceImage, self->_flipped, self->_exifOrientation, self->_textureInterpretation, self->_texturePixelFormat, &self->_rowbytes, v2, v3);
    return self->_pixelData;
  }

  bitmapContext = [(CSIBitmapWrapper *)self bitmapContext];
  if (!bitmapContext)
  {
    return self->_pixelData;
  }

  v8 = bitmapContext;
  pixelFormat = self->_pixelFormat;
  if (pixelFormat != 1195456544 && pixelFormat != 1195454774)
  {
    BytesPerRow = CGBitmapContextGetBytesPerRow(bitmapContext);
    v24 = CGBitmapContextGetHeight(v8) * BytesPerRow;
    self->_pixelData = [[NSData alloc] initWithBytesNoCopy:CGBitmapContextGetData(v8) length:v24 freeWhenDone:0];
    self->_rowbytes = CGBitmapContextGetBytesPerRow(v8);
    return self->_pixelData;
  }

  v27.data = 0;
  Image = CGBitmapContextCreateImage(bitmapContext);
  BitmapInfo = CGImageGetBitmapInfo(Image);
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  v13 = &kCGColorSpaceExtendedGray;
  v14 = BitmapInfo & 0x100;
  if ((BitmapInfo & 0x100) == 0)
  {
    v13 = &kCGColorSpaceGenericGrayGamma2_2;
  }

  v15 = CGColorSpaceCreateWithName(*v13);
  v16 = BitsPerComponent > 8;
  if (BitsPerComponent <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = 16;
  }

  if (v16)
  {
    v18 = 32;
  }

  else
  {
    v18 = 16;
  }

  if (v16)
  {
    v19 = 4097;
  }

  else
  {
    v19 = 12289;
  }

  v20 = v19 | v14;
  v27.height = CGImageGetHeight(Image);
  v27.width = CGImageGetWidth(Image);
  v27.rowBytes = CGBitmapGetAlignedBytesPerRow();
  ColorSpace = CGBitmapContextGetColorSpace(v8);
  v26.bitsPerComponent = v17;
  v26.bitsPerPixel = v18;
  v26.colorSpace = v15;
  v26.bitmapInfo = v20;
  memset(&v26.version, 0, 20);
  v22 = CUIConvertCGImageFormat(Image, ColorSpace, &v26, &v27);
  CGColorSpaceRelease(v15);
  self->_rowbytes = v27.rowBytes;
  CFRelease(Image);
  if (!v22)
  {
    v25 = [NSData alloc];
    self->_pixelData = [v25 initWithBytes:v27.data length:v27.height * v27.rowBytes];
    if (v27.data)
    {
      CGBitmapFreeData();
    }

    return self->_pixelData;
  }

  _CUILog(4, "CoreUI: Unable to create convert image to 16 Gray scale .");
  return 0;
}

- (CGImageRef)destImage
{
  if (result)
  {
    v1 = result;
    result = *(result + 8);
    if (!result)
    {
      result = *(v1 + 7);
      if (!result)
      {
        result = CGBitmapContextCreateImage([(CGImage *)v1 bitmapContext]);
      }

      *(v1 + 8) = result;
    }
  }

  return result;
}

- (void)dealloc
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CFRelease(bitmapContext);
  }

  sourceImage = self->_sourceImage;
  if (sourceImage)
  {
    CFRelease(sourceImage);
  }

  destImage = self->_destImage;
  if (destImage && destImage != self->_sourceImage)
  {
    CFRelease(destImage);
  }

  v6.receiver = self;
  v6.super_class = CSIBitmapWrapper;
  [(CSIBitmapWrapper *)&v6 dealloc];
}

- (CSIBitmapWrapper)initWithPixelWidth:(unsigned int)width pixelHeight:(unsigned int)height
{
  v7.receiver = self;
  v7.super_class = CSIBitmapWrapper;
  result = [(CSIBitmapWrapper *)&v7 init];
  if (result)
  {
    result->_colorSpaceID = 1;
    result->_pixelFormat = 1095911234;
    result->_width = width;
    result->_height = height;
    *&result->_allowsMultiPassEncoding = 257;
    *&result->_allowsPaletteImageCompression = 0;
    result->_imageAlpha = 2;
  }

  return result;
}

- (CSIBitmapWrapper)initWithCGImage:(CGImage *)image width:(unsigned int)width height:(unsigned int)height texturePixelFormat:(int64_t)format
{
  v14.receiver = self;
  v14.super_class = CSIBitmapWrapper;
  v10 = [(CSIBitmapWrapper *)&v14 init];
  v11 = v10;
  if (v10)
  {
    *(v10 + 7) = width;
    *(v10 + 8) = height;
    *(v10 + 24) = 257;
    *(v10 + 51) = 0;
    v12 = CGImageRetain(image);
    v11->_sourceImage = v12;
    v11->_destImage = 0;
    v11->_texturePixelFormat = format;
    v11->_imageAlpha = CGImageGetAlphaInfo(v12);
  }

  return v11;
}

- (void)setPixelData:(id)data
{
  pixelData = self->_pixelData;
  if (pixelData != data)
  {

    self->_pixelData = data;
  }
}

- (void)setAllowsMultiPassEncoding:(BOOL)encoding
{
  self->_allowsMultiPassEncoding = encoding;
  if (__coreThemeLoggingEnabled == 1)
  {
    _CUILog(1, "CoreUI(DEBUG) setting allowsMultiPassEncoding to %d", encoding);
  }
}

- (void)setAllowsOptimalRowbytesPacking:(BOOL)packing
{
  self->_allowsOptimalRowbytesPacking = packing;
  if (__coreThemeLoggingEnabled == 1)
  {
    _CUILog(1, "CoreUI(DEBUG) setting allowsOptimalRowbytesPacking to %d", packing);
  }
}

- (void)setAllowsCompactCompression:(BOOL)compression
{
  self->_allowsCompactCompression = compression;
  if (__coreThemeLoggingEnabled == 1)
  {
    _CUILog(1, "CoreUI(DEBUG) setting allowsCompactCompression to %d", compression);
  }
}

- (id)compressedData:(BOOL)data usedEncoding:(int *)encoding andRowChunkSize:(unsigned int *)size
{
  if ([(CSIBitmapWrapper *)self width]|| [(CSIBitmapWrapper *)self width]|| ![(CSIBitmapWrapper *)self pixelData]|| [(CSIBitmapWrapper *)self pixelFormat]!= 1346651680)
  {
    pixelData = [(CSIBitmapWrapper *)self pixelData];
    v106 = [(NSData *)pixelData length];
    height = [(CSIBitmapWrapper *)self height];
    width = [(CSIBitmapWrapper *)self width];
    v12 = [(NSData *)pixelData length];
    Data = [(NSData *)pixelData bytes];
    rowbytes = self->_rowbytes;
    if (!rowbytes)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CSIGenerator.m" description:2643, @"Row Bytes MUST be set"];
      rowbytes = self->_rowbytes;
    }

    v14 = height;
    v15 = width;
    if (!data)
    {
      [(CSIBitmapWrapper *)self setCompressionType:1];
    }

    v118 = 0;
    v117 = 0;
    v116 = 0;
    v115 = 0;
    compressionType = [(CSIBitmapWrapper *)self compressionType];
    v17 = 0;
    if (compressionType <= 2)
    {
      if (!compressionType)
      {
        goto LABEL_21;
      }

      if (compressionType != 1)
      {
        v18 = 0;
        if (compressionType != 2)
        {
          goto LABEL_112;
        }

LABEL_21:
        if (![(CSIBitmapWrapper *)self allowsPaletteImageCompression]|| [(CSIBitmapWrapper *)self allowsDeepmap2ImageCompression]|| [(CSIBitmapWrapper *)self colorSpaceID]== 2 || [(CSIBitmapWrapper *)self colorSpaceID]== 6 || [(CSIBitmapWrapper *)self compressionType]== 7)
        {
          goto LABEL_26;
        }

        v118 = 8;
        destImage = [(CSIBitmapWrapper *)self destImage];
        if (destImage && (v88 = destImage, CGImageGetWidth(destImage)) && CGImageGetHeight(v88))
        {
          memset(v119, 0, 40);
          v114.data = 0;
          v114.height = CGImageGetHeight(v88);
          *&v114.width = CGImageGetWidth(v88);
          pixelData = self->_pixelData;
          v108 = v12;
          if (pixelData)
          {
            bytes = [(NSData *)pixelData bytes];
            v91 = self->_rowbytes;
            v114.data = bytes;
            v114.rowBytes = v91;
LABEL_165:
            v113 = v114;
            v94 = CUIImageCompressedWithColorQuantization(v88, &v113, 0, &v116, &v117, &v115);
            if (!v94)
            {
              if (!pixelData)
              {
                CUIDeallocateRGBAImageBuffer(v119, &v114.data);
              }

              goto LABEL_26;
            }

            v95 = v94;
            [(CSIBitmapWrapper *)self setPixelFormat:v116];
            [(CSIBitmapWrapper *)self setColorSpaceID:v117];
            self->_rowbytes = v115;
            *size = height;
            v17 = [NSArray arrayWithObject:v95];

            if (!pixelData)
            {
              CUIDeallocateRGBAImageBuffer(v119, &v114.data);
            }

            goto LABEL_110;
          }

          v93 = CUIGetRGBAImageBuffer(v88, v119, &v114);
          if (!v93 && v114.width && v114.height)
          {
            goto LABEL_165;
          }

          if (v93)
          {
            _CUILog(4, "CoreUI: Image conversion failed vImage error %d, fallback to other lossless compression...");
          }

          else
          {
            _CUILog(4, "CoreUI: Image conversion failed vImage returned degenerate image (width=%lu, height=%lu), fallback to other lossless compression...");
          }
        }

        else
        {
          _CUILog(4, "CoreUI: Invalid image for lossless compression, fallback to Deepmap lossless compression...");
        }

LABEL_26:
        if ([(CSIBitmapWrapper *)self compressionType]== 7)
        {
LABEL_29:
          v25 = rowbytes * v14;
          v109 = v12;
          v104 = v14;
          if (rowbytes * v14 <= 0xFFF)
          {
            pixelFormat = self->_pixelFormat;
            if (pixelFormat != 1195454774 && pixelFormat != 1380401751)
            {
              v49 = v12 + 8 * v14 + 12;
              if (v49 <= 0x800)
              {
                v50 = 2048;
              }

              else
              {
                v50 = v49;
              }

              if (v49 >= 0x800)
              {
                v51 = malloc_type_malloc(v50, 0x704CA307uLL);
              }

              else
              {
                v51 = v119;
              }

              if (self->_sourceImage || self->_texturePixelFormat)
              {
                v118 = 0;
                if (v49 >= 0x800)
                {
                  free(v51);
                }

                v18 = 0;
                v14 = v104;
                v12 = v109;
                sizeCopy3 = size;
              }

              else
              {
                if (self->_pixelFormat == 1195456544)
                {
                  v83 = 3;
                }

                else
                {
                  v83 = 4;
                }

                v84 = pk_compressData(Data, v83, v15, v104, rowbytes, v51, v50);
                v18 = v84;
                if (v84 < 1 || v106 <= v84)
                {
                  v118 = 0;
                  v12 = v109;
                  sizeCopy3 = size;
                  if (v49 >= 0x800)
                  {
                    free(v51);
                  }
                }

                else
                {
                  v118 = 1;
                  v12 = v109;
                  sizeCopy3 = size;
                  if (v49 > 0x7FF)
                  {
                    v85 = [NSData dataWithBytesNoCopy:v51 length:v84 freeWhenDone:1];
                  }

                  else
                  {
                    v85 = [NSData dataWithBytes:v51 length:v84];
                  }

                  pixelData = v85;
                }

                v14 = v104;
              }

              *sizeCopy3 = height;
              v17 = [NSArray arrayWithObject:pixelData];
              goto LABEL_112;
            }
          }

          *&v119[0] = 0;
          v114.data = 0;
          if (__environmentRequestedCompression == 2)
          {
            v27 = 4;
          }

          else if (__environmentRequestedCompression == 1)
          {
            v27 = 3;
          }

          else
          {
            if (__environmentRequestedCompression)
            {
LABEL_48:
              allowsMultiPassEncoding = [(CSIBitmapWrapper *)self allowsMultiPassEncoding];
              if (v15 > 1)
              {
                v34 = allowsMultiPassEncoding;
              }

              else
              {
                v34 = 0;
              }

              if ((v15 * v14) > 0xFFF)
              {
                v35 = v34;
              }

              else
              {
                v35 = 0;
              }

              if (v35 == 1)
              {
                if (__coreThemeLoggingEnabled == 1)
                {
                  _CUILog(1, "CoreUI(DEBUG): doing multipass encoding");
                }

                if (v25 < 0x5000)
                {
                  height >>= 1;
                }

                else if (height >= 3)
                {
                  height /= 3u;
                }
              }

              v102 = v15;
              encodingCopy = encoding;
              *size = height;
              if (v12 >= 1)
              {
                v17 = 0;
                v18 = 0;
                v36 = rowbytes * height;
                propertyNamea = kCFStreamPropertyDataWritten;
                v37 = v12;
                while (1)
                {
                  v38 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
                  CFWriteStreamOpen(v38);
                  *&v119[0] = 0;
                  _StreamSys_init_write(v119, v38);
                  v114.data = 0;
                  if (v118 == 3)
                  {
                    v39 = 4;
                  }

                  else
                  {
                    v39 = 5;
                  }

                  if (v118 == 2)
                  {
                    v40 = 1;
                  }

                  else
                  {
                    v40 = v39;
                  }

                  if (_BOMFileNewFromCFWriteStreamSys(&v114, *&v119[0], v40))
                  {
                    if (v38)
                    {
                      CFRelease(v38);
                    }

                    _CUILog(4, "CoreUI: Unable to create compressed output stream.");

                    return 0;
                  }

                  v41 = 0;
                  if (v36)
                  {
                    break;
                  }

LABEL_76:
                  BOMFileClose(v114.data);
                  BomSys_free(*&v119[0]);
                  v44 = CFWriteStreamCopyProperty(v38, propertyNamea);
                  v45 = v44;
                  if (__loggingEnabled == 1)
                  {
                    v18 += CFDataGetLength(v44);
                  }

                  if (!v17)
                  {
                    v17 = objc_alloc_init(NSMutableArray);
                  }

                  Data += v41;
                  [(NSArray *)v17 addObject:v45];

                  CFRelease(v38);
                  v37 -= v41;
                  if (v37 > 0)
                  {
                    v46 = v35;
                  }

                  else
                  {
                    v46 = 0;
                  }

                  v12 = v109;
                  if ((v46 & 1) == 0)
                  {
                    goto LABEL_88;
                  }
                }

                if (v36 >= v37)
                {
                  v42 = v37;
                }

                else
                {
                  v42 = rowbytes * height;
                }

                while (1)
                {
                  v43 = BOMFileWrite(v114.data, &Data[v41], v42);
                  if (v43 < 1)
                  {
                    break;
                  }

                  v41 += v43;
                  v42 -= v43;
                  if (!v42)
                  {
                    goto LABEL_76;
                  }
                }

                BOMFileClose(v114.data);
                CFRelease(v38);
                _CUILog(4, "CoreUI: Failure to write to stream");
                v47 = v17;
                return 0;
              }

              v18 = 0;
              v17 = 0;
LABEL_88:
              v48 = v17;
              v14 = v104;
              encoding = encodingCopy;
              v15 = v102;
LABEL_112:
              if (__loggingEnabled == 1)
              {
                v56 = v18 / v12;
                v57 = v12;
                v58 = CUIConvertCompressionTypeToString(v118);
                v59 = NSLocalizedFileSizeDescription();
                _CUILog(1, "CSI: %s Compressed [%lu x %lu]\t\t%lu\trowbytes %lu\t to size %@\twith compressionFactor:\t%.2f", v58, v15, v14, v57, rowbytes, v59, *&v56);
              }

              if (encoding)
              {
                *encoding = v118;
              }

              return v17;
            }

            v27 = 2;
          }

          v118 = v27;
          goto LABEL_48;
        }

        if ([(CSIBitmapWrapper *)self allowsDeepmap2ImageCompression])
        {
          v118 = 11;
          destImage2 = [(CSIBitmapWrapper *)self destImage];
          if (!destImage2 || (v65 = destImage2, !CGImageGetWidth(destImage2)) || !CGImageGetHeight(v65))
          {
            _CUILog(4, "CoreUI: Invalid image for lossless compression with kCSICompressedDeepmap2Encoding encoding, fallback to default lossless compression...");
            goto LABEL_29;
          }

          v108 = v12;
          v103 = v15;
          v105 = v14;
          encodingCopy3 = encoding;
          bytes2 = [(NSData *)self->_pixelData bytes];
          Height = CGImageGetHeight(v65);
          Width = CGImageGetWidth(v65);
          v67 = self->_rowbytes;
          BitsPerPixel = CGImageGetBitsPerPixel(v65);
          v69 = 8 * ((BitsPerPixel >> 3) / (BitsPerPixel / CGImageGetBitsPerComponent(v65)));
          ColorSpace = CGImageGetColorSpace(v65);
          BitmapInfo = CGImageGetBitmapInfo(v65);
          v72 = self->_pixelFormat;
          *&v119[0] = __PAIR64__(BitsPerPixel, v69);
          *(&v119[0] + 1) = ColorSpace;
          LODWORD(v119[1]) = BitmapInfo;
          memset(&v119[1] + 4, 0, 20);
          v114.data = bytes2;
          v114.height = Height;
          v114.width = Width;
          v114.rowBytes = v67;
          v73 = CUIImageCompressedWithDeepmap2(v119, &v114, v72, &v116, &v117, &v115, size);
          if (v73)
          {
LABEL_129:
            v82 = v73;
            [(CSIBitmapWrapper *)self setPixelFormat:v116];
            [(CSIBitmapWrapper *)self setColorSpaceID:v117];
            self->_rowbytes = v115;
            v17 = v82;
            v18 = 0;
            encoding = encodingCopy3;
            v15 = v103;
            v14 = v105;
            goto LABEL_111;
          }

          _CUILog(4, "CoreUI: Deepmap 2.0 image compression returned nil, fallback to other lossless compression...");
        }

        else
        {
          if (![(CSIBitmapWrapper *)self allowsDeepmapImageCompression])
          {
            goto LABEL_29;
          }

          v118 = 10;
          destImage3 = [(CSIBitmapWrapper *)self destImage];
          if (!destImage3 || (v75 = destImage3, !CGImageGetWidth(destImage3)) || !CGImageGetHeight(v75))
          {
            _CUILog(4, "CoreUI: Invalid image for lossless compression with kCSICompressedDeepmapEncoding encoding, fallback to default lossless compression...");
            goto LABEL_29;
          }

          v108 = v12;
          v103 = v15;
          v105 = v14;
          encodingCopy3 = encoding;
          bytes3 = [(NSData *)self->_pixelData bytes];
          v99 = CGImageGetHeight(v75);
          v97 = CGImageGetWidth(v75);
          v76 = self->_rowbytes;
          v77 = CGImageGetBitsPerPixel(v75);
          v78 = 8 * ((v77 >> 3) / (v77 / CGImageGetBitsPerComponent(v75)));
          v79 = CGImageGetColorSpace(v75);
          v80 = CGImageGetBitmapInfo(v75);
          v81 = self->_pixelFormat;
          *&v119[0] = __PAIR64__(v77, v78);
          *(&v119[0] + 1) = v79;
          LODWORD(v119[1]) = v80;
          memset(&v119[1] + 4, 0, 20);
          v114.data = bytes3;
          v114.height = v99;
          v114.width = v97;
          v114.rowBytes = v76;
          v73 = CUIImageCompressedWithDeepmap(v119, &v114, v81, &v116, &v117, &v115, size);
          if (v73)
          {
            goto LABEL_129;
          }

          _CUILog(3, "CoreUI: Deepmap image compression returned early, fallback to other lossless compression...");
        }

        encoding = encodingCopy3;
        v15 = v103;
        v14 = v105;
LABEL_161:
        v12 = v108;
        goto LABEL_29;
      }

      sizeCopy5 = size;
      *size = height;
      v17 = [NSArray arrayWithObject:pixelData];
      goto LABEL_37;
    }

    if (compressionType > 6)
    {
      if (compressionType != 7)
      {
        v18 = 0;
        goto LABEL_112;
      }

      v108 = v12;
      if ((![(CSIBitmapWrapper *)self sourceAlphaInfo]|| [(CSIBitmapWrapper *)self sourceAlphaInfo]== 5 || [(CSIBitmapWrapper *)self sourceAlphaInfo]== 6) && self->_pixelFormat == 1095911234)
      {
        [(CSIBitmapWrapper *)self allowsCompactCompression];
        CGBitmapContextGetBitsPerPixel([(CSIBitmapWrapper *)self bitmapContext]);
        Image = CGBitmapContextCreateImage([(CSIBitmapWrapper *)self bitmapContext]);
        v21 = CGBitmapContextGetColorSpace([(CSIBitmapWrapper *)self bitmapContext]);
        v22 = CGBitmapContextCreate(0, width, height, 5uLL, 0, v21, 0x1006u);
        v121.size.width = width;
        v121.size.height = height;
        v121.origin.x = 0.0;
        v121.origin.y = 0.0;
        CGContextDrawImage(v22, v121, Image);
        CGImageRelease(Image);
        Data = CGBitmapContextGetData(v22);
        CFRelease(self->_bitmapContext);
        self->_bitmapContext = v22;
        v23 = v22;
        v15 = width;
        v14 = height;
        BytesPerRow = CGBitmapContextGetBytesPerRow(v23);
        self->_rowbytes = BytesPerRow;
        rowbytes = BytesPerRow;
        v12 = BytesPerRow * height;
        pixelData = [[NSData alloc] initWithBytesNoCopy:Data length:v12 freeWhenDone:0];
        [(CSIBitmapWrapper *)self setPixelData:pixelData];

        [(CSIBitmapWrapper *)self setPixelFormat:1380401717];
        v106 = v12;
        goto LABEL_21;
      }
    }

    else
    {
      if (compressionType == 6)
      {
        sizeCopy5 = size;
LABEL_37:
        v118 = 6;
        *&v119[0] = 0;
        v114.data = 0;
        *sizeCopy5 = height;
        if ((encodeRadiosity(v15, height, rowbytes, Data, v119, &v114, 40.0) & 0x80000000) == 0)
        {
          v28 = [NSData alloc];
          v29 = v12;
          v30 = [v28 initWithBytesNoCopy:*&v119[0] length:v114.data freeWhenDone:1];
          v17 = [NSArray arrayWithObject:v30];

          v12 = v29;
        }

        goto LABEL_39;
      }

      v108 = v12;
      if ((compressionType - 4) < 2)
      {
        destImage4 = [(CSIBitmapWrapper *)self destImage];
        v54 = CUIImageCompressedWithATECompression(destImage4, [(CSIBitmapWrapper *)self compressionType], [(CSIBitmapWrapper *)self targetPlatform], &v118, &v116, &v117);
        if (v54)
        {
          v55 = v54;
          [(CSIBitmapWrapper *)self setPixelFormat:v116];
          [(CSIBitmapWrapper *)self setColorSpaceID:v117];
          *size = height;
          v17 = [NSArray arrayWithObject:v55];

LABEL_110:
          v18 = 0;
          goto LABEL_111;
        }
      }

      else if (compressionType != 3)
      {
        v18 = 0;
LABEL_111:
        v12 = v108;
        goto LABEL_112;
      }
    }

    destImage5 = [(CSIBitmapWrapper *)self destImage];
    if ([(CSIBitmapWrapper *)self allowsHevcCompression])
    {
      [(CSIBitmapWrapper *)self compressionQuality];
      v62 = CUIImageCompressedWithHEVC(destImage5, &v116, &v117, &v115, v61);
      v12 = v108;
      if (v62)
      {
        v63 = v62;
        v118 = 9;
LABEL_156:
        [(CSIBitmapWrapper *)self setPixelFormat:v116];
        [(CSIBitmapWrapper *)self setColorSpaceID:v117];
        self->_rowbytes = v115;
        *size = height;
        v17 = [NSArray arrayWithObject:v63];

LABEL_39:
        v18 = 0;
        goto LABEL_112;
      }

      if ([(CSIBitmapWrapper *)self name])
      {
        uTF8String = [(NSString *)[(CSIBitmapWrapper *)self name] UTF8String];
      }

      else
      {
        uTF8String = "a rendition";
      }

      if ([(CSIBitmapWrapper *)self pixelFormat]== 1195456544)
      {
        _CUILog(4, "CoreUI: HEVC lossy compression failed for %s. Re-try again with default lossless fallback.", uTF8String);
        goto LABEL_161;
      }

      _CUILog(4, "CoreUI: HEVC lossy compression failed for %s. Re-try again with jpeg+lzfse fallback.", uTF8String);
    }

    [(CSIBitmapWrapper *)self compressionQuality];
    v63 = CUIImageCompressedWithJPEGandLZFSE(destImage5, &v116, &v117, &v115, v92);
    v118 = 5;
    v12 = v108;
    if (!v63)
    {
      _CUILog(4, "CoreUI: Lossy fallback compression failed. Re-try again with fallback.");
      goto LABEL_21;
    }

    goto LABEL_156;
  }

  *size = 0;
  *encoding = 0;
  pixelData2 = [(CSIBitmapWrapper *)self pixelData];

  return [NSArray arrayWithObject:pixelData2];
}

- (id)bitmapContext
{
  OUTLINED_FUNCTION_35();
  v2 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v2 handleFailureInMethod:v1 object:v0 file:@"CSIGenerator.m" lineNumber:2320 description:@"can't use a sourceImage and request a bitmapContext at the same time"];
}

@end