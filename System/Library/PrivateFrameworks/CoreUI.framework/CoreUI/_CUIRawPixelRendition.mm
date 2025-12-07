@interface _CUIRawPixelRendition
- (CGSize)unslicedSize;
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (id)imageForSliceIndex:(int64_t)index;
- (id)maskForSliceIndex:(int64_t)index;
- (id)metrics;
- (void)dealloc;
@end

@implementation _CUIRawPixelRendition

- (void)dealloc
{
  CGImageRelease(self->_unslicedImage);
  if (self->_nimages)
  {
    v3 = 0;
    do
    {
      CGImageRelease(self->_image[v3++]);
    }

    while (v3 < self->_nimages);
  }

  v4.receiver = self;
  v4.super_class = _CUIRawPixelRendition;
  [(CUIThemeRendition *)&v4 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v90[0] = size;
  v90[1] = origin;
  v91 = size;
  v92 = origin;
  v93[0] = size;
  v93[1] = origin;
  v94 = size;
  v95 = origin;
  v96 = size;
  v97 = origin;
  v98 = size;
  v99 = origin;
  v100 = size;
  v101 = origin;
  v102 = size;
  v103 = origin;
  v104[0] = size;
  v104[1] = origin;
  v104[2] = size;
  v104[3] = origin;
  v104[4] = size;
  v104[5] = origin;
  v104[6] = size;
  v104[7] = origin;
  v104[8] = size;
  v104[9] = origin;
  v104[10] = size;
  v104[11] = origin;
  v104[12] = size;
  v104[13] = origin;
  v104[14] = size;
  v88.receiver = self;
  v88.super_class = _CUIRawPixelRendition;
  v7 = [(CUIThemeRendition *)&v88 _initWithCSIHeader:header version:*&version];
  if (v7)
  {
    var6 = header->var6;
    if (var6 != 1212500294 && var6 != 1246774599)
    {
      v9 = +[NSAssertionHandler currentHandler];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [(NSAssertionHandler *)v9 handleFailureInMethod:a2 object:v7 file:@"CUIThemeRendition.m" lineNumber:2022 description:@"CoreUI: [%@ %@] pixel format must be kCSIPixelFormatJPEG/kCSIPixelFormatHEIF", v11, NSStringFromSelector(a2)];
    }

    v12 = &header->var11.var1[header->var11.var0] + header->var10;
    v13 = v12 + 4;
    if (*(v12 + 2))
    {
      [_CUIRawPixelRendition _initWithCSIHeader:version:];
    }

    *(v7 + 54) = header->var6;
    v14 = *(v13 + 2);
    v15 = bswap32(v14);
    if (*v13 == 1146569042)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    v17 = -[_CUISubrangeData initWithData:range:]([_CUISubrangeData alloc], "initWithData:range:", [v7 srcData], v13 - objc_msgSend(objc_msgSend(v7, "srcData"), "bytes") + 12, v16);
    *(v7 + 28) = v17;
    if (v17)
    {
      v18 = CGImageSourceCreateWithData(v17, 0);
      if (v18)
      {
        v19 = v18;
        *(v7 + 45) = CGImageSourceCreateImageAtIndex(v18, 0, 0);
        +[CUIRenditionKey renditionKeyWithKeyList:](CUIRenditionKey, "renditionKeyWithKeyList:", [v7 key]);
        CGImageSetProperty();
        CFRelease(v19);
      }
    }

    var0 = header->var11.var0;
    if (var0)
    {
      headerCopy = header;
      var10 = header->var10;
      if (var10)
      {
        v22 = 0;
        v23 = 0;
        v24 = &header->var11.var1[var0 + 1];
        v25 = (v24 + var10);
        do
        {
          v26 = *v24;
          if (*v24 == 1006)
          {
            [v7 setExifOrientation:v24[2]];
          }

          else if (v26 == 1003)
          {
            v23 = (v24 + 2);
          }

          else if (v26 == 1001)
          {
            v22 = v24 + 2;
            *(v7 + 55) = v24[2];
          }

          v24 = (v24 + v24[1] + 8);
        }

        while (v24 < v25);
      }

      else
      {
        v23 = 0;
        v22 = 0;
      }

      v86 = 0.0;
      v87 = 0.0;
      Width = CGImageGetWidth(*(v7 + 45));
      Height = CGImageGetHeight(*(v7 + 45));
      v86 = Width;
      v87 = Height;
      v84 = NSZeroSize;
      v85 = v84;
      v82 = v84;
      v83 = v84;
      v81 = 0xBFF0000000000000;
      v79 = v84;
      v80 = v84;
      v77 = v84;
      v78 = v84;
      if (v23)
      {
        _extractMetrics(v23, &v86, &v85.width, &v84.width, &v83.width, &v82, &v81, &v80.width, &v79, &v78.width, &v77);
        Width = v86;
        Height = v87;
      }

      v29 = CGImageGetHeight(*(v7 + 45));
      if (v22)
      {
        v31 = *v22;
        if (v31)
        {
          v32 = v29;
          v33 = v22 + 2;
          v34 = v90;
          v35 = 1;
          v36 = v7;
          do
          {
            v37 = v33[1];
            v38 = v33[2];
            if (v37)
            {
              v39 = v38 == 0;
            }

            else
            {
              v39 = 1;
            }

            if (v39)
            {
              v36[29] = 0;
            }

            else
            {
              LODWORD(v30) = *(v33 - 1);
              v107.origin.x = v30;
              v107.origin.y = (v32 - (*v33 + v38));
              v107.size.width = v37;
              v107.size.height = v38;
              *(v34 - 2) = v107.origin.x;
              *(v34 - 1) = v107.origin.y;
              *v34 = v37;
              v34[1] = v38;
              v36[29] = CGImageCreateWithImageInRect(*(v7 + 45), v107);
              v31 = *v22;
            }

            if (v35 - 1 > 0xE)
            {
              break;
            }

            v33 += 4;
            ++v36;
            v34 += 4;
          }

          while (v35++ < v31);
        }
      }

      v41 = NSZeroSize.height;
      if ([v7 type] == 3)
      {
        v42 = CGImageGetWidth(*(v7 + 29));
        v43 = CGImageGetWidth(*(v7 + 31));
        v44 = CGImageGetHeight(*(v7 + 29));
        v45 = CGImageGetHeight(*(v7 + 35));
        [v7 scale];
        Width = v42 + v43 + v46;
        [v7 scale];
        Height = v47 + v44 + v45;
        v48 = headerCopy;
      }

      else
      {
        v48 = headerCopy;
        if ([v7 type] == 2)
        {
          v49 = CGImageGetHeight(*(v7 + 29));
          v50 = v49 + CGImageGetHeight(*(v7 + 31));
          [v7 scale];
          Height = v51 + v50;
        }

        else if ([v7 type] == 1)
        {
          v52 = CGImageGetWidth(*(v7 + 29));
          v53 = v52 + CGImageGetWidth(*(v7 + 31));
          [v7 scale];
          Width = v54 + v53;
        }
      }

      v105.width = NSZeroSize.width;
      v105.height = v41;
      v106.width = Width;
      v106.height = Height;
      if (!NSEqualSizes(v105, v106))
      {
        v55 = [CUIRenditionMetrics alloc];
        v56 = v81;
        v57 = [v7 type] == 2 || objc_msgSend(v7, "type") == 3;
        v58 = [v7 type] == 1 || objc_msgSend(v7, "type") == 3;
        [v7 scale];
        *(v7 + 46) = [(CUIRenditionMetrics *)v55 initWithImageSize:v57 defaultImageSize:v58 edgeBottomLeft:Width edgeTopRight:Height contentBottomLeft:v86 contentTopRight:v87 baseline:v85.width auxiliary1BottomLeft:v85.height auxiliary1TopRight:v84.width auxiliary2BottomLeft:v84.height auxiliary2TopRight:v59 scalesVertically:v60 scalesHorizontally:v61 scale:v62, v63, *&v83.width, *&v83.height, *&v82.width, *&v82.height, v56, *&v80.width, *&v80.height, *&v79.width, *&v79.height, *&v78.width, *&v78.height, *&v77.width, *&v77.height, v64];
      }

      if ([v7 type] == 3 || objc_msgSend(v7, "type") == 2 || objc_msgSend(v7, "type") == 1)
      {
        type = [v7 type];
        v67 = *(v90 + 1);
        v66 = *v90;
        v68 = *v93;
        if (type == 3)
        {
          v69 = *v104;
        }

        else
        {
          v69 = *v93;
        }

        v70 = v93 + 1;
        if (type == 3)
        {
          v70 = v104 + 1;
        }

        v71 = *v70;
        if ([v7 type] == 3)
        {
          v72 = v100.width;
          if (v94.width > v100.width)
          {
            v72 = v94.width;
          }

          if (v66 == 0.0)
          {
            v66 = v72;
          }

          v73 = v91.height;
          if (v91.height <= *(v93 + 1))
          {
            v73 = *(v93 + 1);
          }

          if (v67 == 0.0)
          {
            v67 = v73;
          }

          if (v68 <= v98.width)
          {
            v74 = v98.width;
          }

          else
          {
            v74 = v68;
          }

          if (v69 == 0.0)
          {
            v69 = v74;
          }

          if (v71 == 0.0)
          {
            if (v100.height <= v102.height)
            {
              v71 = v102.height;
            }

            else
            {
              v71 = v100.height;
            }
          }
        }

        *(v7 + 47) = -[CUIRenditionSliceInformation initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:]([CUIRenditionSliceInformation alloc], "initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:", [v7 type], 0.0, 0.0, Width, Height, v66, v67, v69, v71);
      }

      if (v48->var11.var0 > 1)
      {
        _CUILog(4, "Warning: Ignoring extra images found in CSI");
      }
    }
  }

  return v7;
}

- (CGSize)unslicedSize
{
  Width = CGImageGetWidth(self->_unslicedImage);
  Height = CGImageGetHeight(self->_unslicedImage);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
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

- (id)metrics
{
  v2 = self->_renditionMetrics;

  return v2;
}

- (id)_initWithCSIHeader:version:.cold.1()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v4 = NSStringFromSelector(v0);
  return [OUTLINED_FUNCTION_0_4() handleFailureInMethod:v2 object:v4 file:? lineNumber:? description:?];
}

@end