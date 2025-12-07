@interface SIRawImage
- (BOOL)printAsMIMEAttachment:(id)attachment;
- (BOOL)printPGMAsMIMEAttachment:(id)attachment;
- (BOOL)savePGMToURL:(id)l asBinary:(BOOL)binary;
- (BOOL)saveToDataURL:(id)l metadataURL:(id)rL;
- (BOOL)saveToURL:(id)l;
- (SIRawImage)initWithInfo:(id)info data:(id)data;
- (SIRawImage)initWithInfo:(id)info mutableData:(id)data;
- (__CVBuffer)createPixelBufferWithAttributes:(id)attributes zeroCopy:(BOOL)copy;
- (id)ToPGMImageAsBinary:(BOOL)binary;
- (id)asByteArray;
- (id)createSurfaceWithAllocator:(id)allocator;
- (id)createSurfaceWithAllocator:(id)allocator stride:(unint64_t)stride;
- (id)debugQuickLookObject;
- (id)initFromCVPixelBuffer:(__CVBuffer *)buffer;
- (id)initFromDataURL:(id)l metadataURL:(id)rL;
- (id)initFromSurface:(id)surface;
- (id)metadataAsJson;
- (id)reshapeWithWidth:(unint64_t)width height:(unint64_t)height;
- (id)toPixelFormat:(unsigned int)format bytesPerRow:(unint64_t)row;
- (unint64_t)bytesPerElement;
- (unint64_t)bytesPerRow;
- (unint64_t)height;
- (unint64_t)width;
- (unsigned)pixelFormat;
- (void)getMutableBytesWithHandler:(id)handler;
@end

@implementation SIRawImage

- (id)initFromSurface:(id)surface
{
  v21 = *MEMORY[0x277D85DE8];
  surfaceCopy = surface;
  v5 = surfaceCopy;
  if (surfaceCopy)
  {
    planes = [surfaceCopy planes];
    if (planes < 2)
    {
      v9 = objc_opt_new();
      width = [v5 width];
      *[v9 width] = width;
      height = [v5 height];
      *[v9 height] = height;
      bytesPerElement = [v5 bytesPerElement];
      *[v9 bytesPerPixel] = bytesPerElement;
      bytesPerRow = [v5 bytesPerRow];
      *[v9 bytesPerRow] = bytesPerRow;
      allocationSize = [v5 allocationSize];
      *[v9 size] = allocationSize;
      [v9 setPlanes:{objc_msgSend(v5, "planes")}];
      [v9 setPixelFormat:objc_msgSend(v5, "pixelFormat")];
      [v9 setChannels:0];
      copyData = [v5 copyData];
      self = [(SIRawImage *)self initWithInfo:v9 data:copyData];

      selfCopy = self;
      goto LABEL_10;
    }

    v7 = __SceneIntelligenceLogSharedInstance(planes);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = 136380931;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v19 = 1025;
      v20 = 431;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Multiplanar images not yet supported ***", &v17, 0x12u);
    }
  }

  else
  {
    v7 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = 136380931;
      v18 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v19 = 1025;
      v20 = 427;
      _os_log_impl(&dword_21DE0D000, v7, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** initializing Raw image from nil surface ***", &v17, 0x12u);
    }
  }

  selfCopy = 0;
LABEL_10:

  return selfCopy;
}

- (SIRawImage)initWithInfo:(id)info mutableData:(id)data
{
  infoCopy = info;
  dataCopy = data;
  v12.receiver = self;
  v12.super_class = SIRawImage;
  v8 = [(SIRawImage *)&v12 init];
  v9 = v8;
  if (v8)
  {
    if (!infoCopy)
    {
      __assert_rtn("[SIRawImage initWithInfo:mutableData:]", "SIIOUtility.mm", 453, "info");
    }

    [(SIRawImage *)v8 setInfo:infoCopy];
    [(SIRawImage *)v9 setData:dataCopy];
    v10 = v9;
  }

  return v9;
}

- (SIRawImage)initWithInfo:(id)info data:(id)data
{
  infoCopy = info;
  v7 = [data mutableCopy];
  v8 = [(SIRawImage *)self initWithInfo:infoCopy mutableData:v7];

  return v8;
}

- (id)initFromCVPixelBuffer:(__CVBuffer *)buffer
{
  v18.receiver = self;
  v18.super_class = SIRawImage;
  v4 = [(SIRawImage *)&v18 init];
  v5 = [SIIOUtility_private ImageInfoFromCVPixelBuffer:buffer];
  if (![v5 planes])
  {
    v16 = "info.planes > 0";
    v17 = 470;
    goto LABEL_17;
  }

  if ([v5 planes] == 1)
  {
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(buffer);
    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:BaseAddress length:{*objc_msgSend(v5, "size")}];
  }

  else
  {
    v8 = 0;
    for (i = 0; i < [v5 planes]; ++i)
    {
      v8 += *([v5 size] + 8 * i);
    }

    v7 = [MEMORY[0x277CBEB28] dataWithLength:v8];
    mutableBytes = [v7 mutableBytes];
    CVPixelBufferLockBaseAddress(buffer, 1uLL);
    for (j = 0; j < [v5 planes]; ++j)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(buffer, j);
      v13 = *([v5 size] + 8 * j);
      if (v13)
      {
        memmove(mutableBytes, BaseAddressOfPlane, v13);
      }

      mutableBytes += *([v5 size] + 8 * j);
    }

    CVPixelBufferUnlockBaseAddress(buffer, 1uLL);
  }

  if (!v7)
  {
    v16 = "data";
    v17 = 495;
LABEL_17:
    __assert_rtn("[SIRawImage initFromCVPixelBuffer:]", "SIIOUtility.mm", v17, v16);
  }

  v14 = [(SIRawImage *)v4 initWithInfo:v5 data:v7];

  return v14;
}

- (id)initFromDataURL:(id)l metadataURL:(id)rL
{
  v28 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:rLCopy];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v8 options:0 error:0];
    v10 = v9;
    if (!v9)
    {
      v11 = __SceneIntelligenceLogSharedInstance(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v22 = 136381187;
        v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v24 = 1025;
        v25 = 510;
        v26 = 2112;
        v27 = rLCopy;
        _os_log_impl(&dword_21DE0D000, v11, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not decode image metadata at '%@' ***", &v22, 0x1Cu);
      }

      selfCopy = 0;
      goto LABEL_23;
    }

    v11 = [v9 objectForKeyedSubscript:@"ImageInfo"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      __assert_rtn("[SIRawImage initFromDataURL:metadataURL:]", "SIIOUtility.mm", 515, "[ imageInfoDictionary isKindOfClass:NSDictionary.class]");
    }

    v12 = [SIIOUtility_private ImageInfoFromDictionary:v11];
    if ([v12 planes] > 2)
    {
      __assert_rtn("[SIRawImage initFromDataURL:metadataURL:]", "SIIOUtility.mm", 518, "imageInfo.planes < kSIRawImageInfoMaxPlanes && Excessive plane count.");
    }

    v13 = 0;
    for (i = 0; i < [v12 planes]; ++i)
    {
      v13 += *([v12 size] + 8 * i);
    }

    if (!v13)
    {
      __assert_rtn("[SIRawImage initFromDataURL:metadataURL:]", "SIIOUtility.mm", 524, "totalSize > 0 && Image size must be positive.");
    }

    v15 = [MEMORY[0x277CBEB28] dataWithContentsOfURL:lCopy];
    v16 = v15;
    if (v15)
    {
      if (v13 == [v15 length])
      {
        if ([v12 pixelFormat])
        {
          self = [(SIRawImage *)self initWithInfo:v12 data:v16];
          selfCopy = self;
LABEL_22:

LABEL_23:
          goto LABEL_24;
        }

        v20 = "imageInfo.pixelFormat";
        v21 = 533;
      }

      else
      {
        v20 = "totalSize == imageData.length && Size from metadata does not match data size.  Invalid info file?";
        v21 = 532;
      }

      __assert_rtn("[SIRawImage initFromDataURL:metadataURL:]", "SIIOUtility.mm", v21, v20);
    }

    v18 = __SceneIntelligenceLogSharedInstance(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = 136381187;
      v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v24 = 1025;
      v25 = 529;
      v26 = 2113;
      v27 = lCopy;
      _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not load image data '%{private}@' ***", &v22, 0x1Cu);
    }

    selfCopy = 0;
    goto LABEL_22;
  }

  v10 = __SceneIntelligenceLogSharedInstance(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v22 = 136381187;
    v23 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    v24 = 1025;
    v25 = 504;
    v26 = 2112;
    v27 = rLCopy;
    _os_log_impl(&dword_21DE0D000, v10, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Could not load image metadata '%@' ***", &v22, 0x1Cu);
  }

  selfCopy = 0;
LABEL_24:

  return selfCopy;
}

- (__CVBuffer)createPixelBufferWithAttributes:(id)attributes zeroCopy:(BOOL)copy
{
  copyCopy = copy;
  v81[3] = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  v6 = MEMORY[0x277CBEB38];
  v80[0] = *MEMORY[0x277CC4E30];
  v7 = MEMORY[0x277CCABB0];
  info = [(SIRawImage *)self info];
  v9 = [v7 numberWithUnsignedInt:{objc_msgSend(info, "pixelFormat")}];
  v81[0] = v9;
  v80[1] = *MEMORY[0x277CC4EC8];
  v10 = MEMORY[0x277CCABB0];
  info2 = [(SIRawImage *)self info];
  v12 = [v10 numberWithUnsignedLong:{*objc_msgSend(info2, "width")}];
  v81[1] = v12;
  v80[2] = *MEMORY[0x277CC4DD8];
  v13 = MEMORY[0x277CCABB0];
  info3 = [(SIRawImage *)self info];
  v15 = [v13 numberWithUnsignedLong:{*objc_msgSend(info3, "height")}];
  v81[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:3];
  pixelBufferAttributes = [v6 dictionaryWithDictionary:v16];

  [(__CFDictionary *)pixelBufferAttributes addEntriesFromDictionary:attributesCopy];
  if (!copyCopy)
  {
    texture = 0;
    info4 = [(SIRawImage *)self info];
    v32 = *[info4 width];
    info5 = [(SIRawImage *)self info];
    v34 = *[info5 height];
    info6 = [(SIRawImage *)self info];
    pixelFormat = [info6 pixelFormat];
    v37 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v32, v34, pixelFormat, pixelBufferAttributes, &texture);

    if (v37)
    {
      v39 = __SceneIntelligenceLogSharedInstance(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 136381187;
        v75 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v76 = 1025;
        v77 = 576;
        v78 = 1024;
        v79 = v37;
        _os_log_impl(&dword_21DE0D000, v39, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed call to CVPixelBufferCreate. Result was: %d ***", buf, 0x18u);
      }

      CVPixelBufferRelease(texture);
      goto LABEL_10;
    }

    if (!texture)
    {
      __assert_rtn("[SIRawImage createPixelBufferWithAttributes:zeroCopy:]", "SIIOUtility.mm", 580, "buffer");
    }

    data = [(SIRawImage *)self data];
    v42 = data;
    bytes = [data bytes];

    CVPixelBufferLockBaseAddress(texture, 0);
    info7 = [(SIRawImage *)self info];
    v45 = [info7 planes] == 1;

    if (v45)
    {
      BytesPerRow = CVPixelBufferGetBytesPerRow(texture);
      info8 = [(SIRawImage *)self info];
      v48 = *[info8 bytesPerRow];

      Width = CVPixelBufferGetWidth(texture);
      info9 = [(SIRawImage *)self info];
      v51 = *[info9 width];

      Height = CVPixelBufferGetHeight(texture);
      info10 = [(SIRawImage *)self info];
      v54 = *[info10 height];

      BaseAddress = CVPixelBufferGetBaseAddress(texture);
      SIStridedCopy(bytes, v51, v54, v48, BaseAddress, Width, Height, BytesPerRow);
    }

    else
    {
      for (i = 0; ; ++i)
      {
        info11 = [(SIRawImage *)self info];
        v59 = i < [info11 planes];

        if (!v59)
        {
          break;
        }

        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(texture, i);
        info12 = [(SIRawImage *)self info];
        v62 = *([info12 bytesPerRow] + 8 * i);

        WidthOfPlane = CVPixelBufferGetWidthOfPlane(texture, i);
        info13 = [(SIRawImage *)self info];
        v65 = *([info13 width] + 8 * i);

        HeightOfPlane = CVPixelBufferGetHeightOfPlane(texture, i);
        info14 = [(SIRawImage *)self info];
        v68 = *([info14 height] + 8 * i);

        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(texture, i);
        SIStridedCopy(bytes, v65, v68, v62, BaseAddressOfPlane, WidthOfPlane, HeightOfPlane, BytesPerRowOfPlane);
        bytes += v68 * v62;
      }
    }

    CVPixelBufferUnlockBaseAddress(texture, 0);
LABEL_15:
    v40 = texture;
    goto LABEL_16;
  }

  data2 = [(SIRawImage *)self data];
  texture = 0;
  info15 = [(SIRawImage *)self info];
  v18 = *[info15 width];
  info16 = [(SIRawImage *)self info];
  v20 = *[info16 height];
  info17 = [(SIRawImage *)self info];
  pixelFormat2 = [info17 pixelFormat];
  data3 = [(SIRawImage *)self data];
  v24 = data3;
  bytes2 = [data3 bytes];
  info18 = [(SIRawImage *)self info];
  bytesPerRow = [info18 bytesPerRow];
  v28 = CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], v18, v20, pixelFormat2, bytes2, *bytesPerRow, [SIRawImage createPixelBufferWithAttributes:zeroCopy:]::$_1::__invoke, data2, pixelBufferAttributes, &texture);

  if (!v28)
  {
    goto LABEL_15;
  }

  v30 = __SceneIntelligenceLogSharedInstance(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 136381187;
    v75 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    v76 = 1025;
    v77 = 565;
    v78 = 1024;
    v79 = v28;
    _os_log_impl(&dword_21DE0D000, v30, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed call to CVPixelBufferCreateWithBytes. Result was: %d ***", buf, 0x18u);
  }

  CVPixelBufferRelease(texture);
LABEL_10:
  v40 = 0;
LABEL_16:

  return v40;
}

- (id)createSurfaceWithAllocator:(id)allocator
{
  v3 = [(SIRawImage *)self createSurfaceWithAllocator:allocator stride:0];

  return v3;
}

- (id)createSurfaceWithAllocator:(id)allocator stride:(unint64_t)stride
{
  allocatorCopy = allocator;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  info = [(SIRawImage *)self info];
  v8 = *[info width];
  info2 = [(SIRawImage *)self info];
  v10 = *[info2 height];
  info3 = [(SIRawImage *)self info];
  stride = [allocatorCopy allocateWithWidth:v8 height:v10 pixelFormat:objc_msgSend(info3 stride:"pixelFormat"), stride];

  info4 = [(SIRawImage *)self info];
  planes = [info4 planes];

  if (planes == 1)
  {
    v14 = v37[5];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __48__SIRawImage_createSurfaceWithAllocator_stride___block_invoke;
    v35[3] = &unk_27833C218;
    v35[4] = self;
    v35[5] = &v36;
    [v14 getMutableBytesWithHandler:v35];
  }

  else
  {
    v34[0] = 0;
    v34[1] = v34;
    v34[2] = 0x2020000000;
    data = [(SIRawImage *)self data];
    v32 = allocatorCopy;
    bytes = [data bytes];

    v17 = 0;
    v34[3] = bytes;
    while (1)
    {
      info5 = [(SIRawImage *)self info];
      planes2 = [info5 planes];

      if (v17 >= planes2)
      {
        break;
      }

      v20 = [v37[5] bytesPerRowOfPlane:v17];
      info6 = [(SIRawImage *)self info];
      v22 = *([info6 bytesPerRow] + 8 * v17);

      v23 = [v37[5] widthOfPlane:v17];
      info7 = [(SIRawImage *)self info];
      v25 = *([info7 width] + 8 * v17);

      v26 = [v37[5] heightOfPlane:v17];
      info8 = [(SIRawImage *)self info];
      v28 = *([info8 height] + 8 * v17);

      v29 = v37[5];
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __48__SIRawImage_createSurfaceWithAllocator_stride___block_invoke_2;
      v33[3] = &unk_27833C240;
      v33[4] = v34;
      v33[5] = v25;
      v33[6] = v28;
      v33[7] = v22;
      v33[8] = v23;
      v33[9] = v26;
      v33[10] = v20;
      [v29 getMutableBytesOfPlane:v17++ withHandler:v33];
    }

    _Block_object_dispose(v34, 8);
    allocatorCopy = v32;
  }

  v30 = v37[5];
  _Block_object_dispose(&v36, 8);

  return v30;
}

void __48__SIRawImage_createSurfaceWithAllocator_stride___block_invoke(uint64_t a1, unsigned __int8 *a2)
{
  v9 = [*(a1 + 32) data];
  v4 = [v9 bytes];

  v10 = [*(a1 + 32) info];
  v5 = *[v10 width];
  v6 = [*(a1 + 32) info];
  v7 = *[v6 height];
  v8 = [*(a1 + 32) info];
  SIStridedCopy(v4, v5, v7, *[v8 bytesPerRow], a2, objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "width"), objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "height"), objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "bytesPerRow"));
}

char *__48__SIRawImage_createSurfaceWithAllocator_stride___block_invoke_2(void *a1, unsigned __int8 *__dst)
{
  result = SIStridedCopy(*(*(a1[4] + 8) + 24), a1[5], a1[6], a1[7], __dst, a1[8], a1[9], a1[10]);
  *(*(a1[4] + 8) + 24) += a1[7] * a1[6];
  return result;
}

- (id)metadataAsJson
{
  v8[1] = *MEMORY[0x277D85DE8];
  info = [(SIRawImage *)self info];
  v3 = [SIIOUtility_private DictionaryFromImageInfo:info];

  v7 = @"ImageInfo";
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v4 options:0 error:0];

  return v5;
}

- (BOOL)saveToDataURL:(id)l metadataURL:(id)rL
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  rLCopy = rL;
  data = [(SIRawImage *)self data];
  v9 = data;
  if (!data)
  {
    __assert_rtn("[SIRawImage saveToDataURL:metadataURL:]", "SIIOUtility.mm", 661, "data");
  }

  v10 = [data writeToURL:lCopy atomically:0];
  if ((v10 & 1) == 0)
  {
    v15 = __SceneIntelligenceLogSharedInstance(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136381187;
      v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v20 = 1025;
      v21 = 663;
      v22 = 2112;
      v23 = lCopy;
      v16 = " %{private}s:%{private}d *** Error saving raw image: %@ ***";
LABEL_9:
      _os_log_impl(&dword_21DE0D000, v15, OS_LOG_TYPE_ERROR, v16, &v18, 0x1Cu);
    }

LABEL_10:

    v14 = 0;
    goto LABEL_11;
  }

  metadataAsJson = [(SIRawImage *)self metadataAsJson];
  v12 = [metadataAsJson writeToURL:rLCopy atomically:0];

  if ((v12 & 1) == 0)
  {
    v15 = __SceneIntelligenceLogSharedInstance(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = 136381187;
      v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v20 = 1025;
      v21 = 668;
      v22 = 2112;
      v23 = rLCopy;
      v16 = " %{private}s:%{private}d *** Error saving image matadata: %@ ***";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v14 = 1;
LABEL_11:

  return v14;
}

- (BOOL)saveToURL:(id)l
{
  lCopy = l;
  v5 = [lCopy URLByAppendingPathExtension:@"json"];
  LOBYTE(self) = [(SIRawImage *)self saveToDataURL:lCopy metadataURL:v5];

  return self;
}

- (BOOL)printAsMIMEAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = [attachmentCopy stringByAppendingPathExtension:@"json"];
  data = [(SIRawImage *)self data];
  PrintMIMEAttachment(data, attachmentCopy, &cfstr_ApplicationOct.isa);

  metadataAsJson = [(SIRawImage *)self metadataAsJson];
  PrintMIMEAttachment(metadataAsJson, v5, &cfstr_ApplicationJso.isa);

  return 1;
}

- (BOOL)printPGMAsMIMEAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = [(SIRawImage *)self ToPGMImageAsBinary:1];
  PrintMIMEAttachment(v5, attachmentCopy, &cfstr_ApplicationOct.isa);

  return 1;
}

- (id)debugQuickLookObject
{
  v3 = SISurfaceGetDebugQuickLookObject(self, 0);
  if (!v3)
  {
    v4 = objc_alloc_init(SIIOSurfaceAllocator);
    v5 = MEMORY[0x277CBF758];
    v6 = [(SIRawImage *)self createSurfaceWithAllocator:v4];
    v3 = [v5 imageWithIOSurface:{objc_msgSend(v6, "ioSurface")}];
  }

  return v3;
}

- (id)ToPGMImageAsBinary:(BOOL)binary
{
  binaryCopy = binary;
  v88 = *MEMORY[0x277D85DE8];
  info = [(SIRawImage *)self info];
  pixelFormat = [info pixelFormat];

  if (pixelFormat <= 1278226535)
  {
    if (pixelFormat > 1278226487)
    {
      if (pixelFormat != 1278226488)
      {
        if (pixelFormat == 1278226534)
        {
          info2 = [(SIRawImage *)self info];
          v10 = 0;
          v11 = 0;
          v71 = *[info2 bytesPerRow];
          v77 = 4;
          v12 = 1;
          v13 = 16;
          v14 = 6;
          v79 = 0xFFFFLL;
          v73 = 1;
          v16 = 4;
          goto LABEL_26;
        }

        goto LABEL_76;
      }

      info2 = [(SIRawImage *)self info];
      v10 = 0;
      v11 = 0;
      v71 = *[info2 bytesPerRow];
      v77 = 1;
      v13 = 8;
      v14 = 4;
      v12 = 1;
      v73 = 1;
    }

    else
    {
      if (pixelFormat != 24)
      {
        if (pixelFormat != 1111970369)
        {
          goto LABEL_76;
        }

        info2 = [(SIRawImage *)self info];
        v73 = 0;
        v71 = *[info2 bytesPerRow];
        v10 = 1;
        v13 = 8;
        v12 = 3;
        v77 = 4;
        v16 = 1;
        v11 = 1;
LABEL_22:
        v79 = 1;
        v14 = 4;
        goto LABEL_26;
      }

      info2 = [(SIRawImage *)self info];
      v73 = 0;
      v11 = 0;
      v71 = *[info2 bytesPerRow];
      v10 = 1;
      v13 = 8;
      v14 = 4;
      v77 = 3;
      v12 = 3;
    }

    v16 = 1;
LABEL_20:
    v79 = 1;
    goto LABEL_26;
  }

  if (pixelFormat <= 1380401728)
  {
    if (pixelFormat == 1278226536)
    {
      info2 = [(SIRawImage *)self info];
      v10 = 0;
      v11 = 0;
      v71 = *[info2 bytesPerRow];
      v16 = 3;
      v12 = 1;
      v13 = 16;
      v14 = 6;
      v79 = 0xFFFFLL;
      v77 = 2;
      v73 = 1;
      goto LABEL_26;
    }

    if (pixelFormat != 1278226742)
    {
      goto LABEL_76;
    }

    info2 = [(SIRawImage *)self info];
    v10 = 0;
    v11 = 0;
    v71 = *[info2 bytesPerRow];
    v77 = 2;
    v12 = 1;
    v13 = 16;
    v14 = 6;
    v73 = 1;
    v16 = 2;
    goto LABEL_20;
  }

  switch(pixelFormat)
  {
    case 1380401729:
      info2 = [(SIRawImage *)self info];
      v73 = 0;
      v11 = 0;
      v71 = *[info2 bytesPerRow];
      v10 = 1;
      v13 = 8;
      v12 = 3;
      v77 = 4;
      v16 = 1;
      goto LABEL_22;
    case 1380411457:
      info2 = [(SIRawImage *)self info];
      v73 = 0;
      v11 = 0;
      v71 = *[info2 bytesPerRow];
      v12 = 3;
      v13 = 16;
      v14 = 6;
      v79 = 0xFFFFLL;
      v10 = 2;
      v15 = 8;
      goto LABEL_25;
    case 1919365992:
      info3 = [(SIRawImage *)self info];
      v71 = *[info3 bytesPerRow];

      info2 = [(SIRawImage *)self info];
      v8 = *[info2 bytesPerRow];
      info4 = [(SIRawImage *)self info];
      v10 = *[info4 height] * v8;

      v73 = 0;
      v11 = 0;
      v12 = 3;
      v13 = 16;
      v14 = 6;
      v79 = 0xFFFFLL;
      v15 = 2;
LABEL_25:
      v77 = v15;
      v16 = 3;
LABEL_26:

      v82[0] = MEMORY[0x277D85DD0];
      v82[1] = 3221225472;
      v82[2] = __33__SIRawImage_ToPGMImageAsBinary___block_invoke;
      v82[3] = &__block_descriptor_41_e15___NSString_8__0l;
      v82[4] = v12;
      v83 = binaryCopy;
      v69 = __33__SIRawImage_ToPGMImageAsBinary___block_invoke(v82);
      if (!v69)
      {
        v46 = __SceneIntelligenceLogSharedInstance(0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v85 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
          v86 = 1025;
          v87 = 868;
          _os_log_impl(&dword_21DE0D000, v46, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unknown error magic bytes for PGM. ***", buf, 0x12u);
        }

        v24 = 0;
LABEL_72:

        v64 = v69;
        goto LABEL_73;
      }

      if (v71)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          v81[4] = v13;
          v81[5] = MEMORY[0x277D85DD0];
          v81[6] = 3221225472;
          v81[7] = __33__SIRawImage_ToPGMImageAsBinary___block_invoke_135;
          v81[8] = &__block_descriptor_40_e5_i8__0l;
          v81[9] = v13;
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __33__SIRawImage_ToPGMImageAsBinary___block_invoke_2;
          v81[3] = &__block_descriptor_40_e5_i8__0l;
          v18 = __33__SIRawImage_ToPGMImageAsBinary___block_invoke_2(v81, v17);
          info5 = [(SIRawImage *)self info];
          v20 = *[info5 width];

          info6 = [(SIRawImage *)self info];
          v22 = *[info6 height];

          if (binaryCopy)
          {
            v14 = 1;
          }

          v68 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n%ld %ld\n%ld\n", v69, v20, v22, v18];
          v23 = ((v13 * v14) >> 3) * v12 * v20 * v22 + 32;
          if (binaryCopy)
          {
            v24 = [MEMORY[0x277CBEB28] dataWithCapacity:v23];
            v25 = [v68 dataUsingEncoding:4];
            [v24 appendData:v25];

            data = [(SIRawImage *)self data];
            v27 = data;
            bytes = [data bytes];

            v28 = 0;
            v74 = v73 & v11;
            v29 = v79;
            v30 = v13 >> 3;
            while (1)
            {
              info7 = [(SIRawImage *)self info];
              v72 = v28;
              v32 = v28 < *[info7 height];

              if (!v32)
              {
                break;
              }

              for (i = 0; ; ++i)
              {
                info8 = [(SIRawImage *)self info];
                v35 = i < *[info8 width];

                if (!v35)
                {
                  break;
                }

                if (v74)
                {
                  __assert_rtn("[SIRawImage ToPGMImageAsBinary:]", "SIIOUtility.mm", 921, "channels == 3");
                }

                v36 = 0;
                v37 = 2;
                do
                {
                  if (v11)
                  {
                    v38 = v37;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  v39 = (bytes + v72 * v71 + i * v77 + v38 * v10);
                  if (v16 == 1)
                  {
                    [v24 appendBytes:v39 length:v30];
                  }

                  else if (v16 == 2)
                  {
                    *buf = bswap32(*v39 * v79) >> 16;
                    [v24 appendBytes:buf length:v30];
                  }

                  else
                  {
                    if (v16 == 3)
                    {
                      _H0 = *v39;
                      __asm { FCVT            S0, H0 }

                      *buf = __rev16((v29 * _S0));
                    }

                    else
                    {
                      *buf = __rev16((*v39 * v29));
                    }

                    [v24 appendBytes:buf length:v30];
                  }

                  ++v36;
                  --v37;
                }

                while (v12 != v36);
              }

              v28 = v72 + 1;
            }

LABEL_71:
            v46 = v68;
            goto LABEL_72;
          }

          v47 = [MEMORY[0x277CCAB68] stringWithCapacity:v23];
          [v47 appendString:v68];
          data2 = [(SIRawImage *)self data];
          v49 = data2;
          bytes2 = [data2 bytes];

          v50 = 0;
          v51 = v79;
          while (1)
          {
            info9 = [(SIRawImage *)self info];
            v80 = v50;
            v53 = v50 < *[info9 height];

            if (!v53)
            {
              v24 = [v47 dataUsingEncoding:4];

              goto LABEL_71;
            }

            v54 = 0;
            v55 = bytes2;
LABEL_58:
            info10 = [(SIRawImage *)self info];
            v57 = v54 < *[info10 width];

            v58 = v55;
            v59 = v12;
            if (v57)
            {
              break;
            }

            [v47 appendFormat:@"\n "];
            v50 = v80 + 1;
            bytes2 += v71;
          }

          while (v16 != 3)
          {
            if (v16 == 2)
            {
              v60 = *v58;
            }

            else
            {
              if (v16 != 1)
              {
                v63 = *v58 * v51;
                goto LABEL_66;
              }

              v60 = *v58;
            }

LABEL_67:
            [v47 appendFormat:@"%d ", v60];
            v58 = (v58 + v10);
            if (!--v59)
            {
              [v47 appendFormat:@" "];
              ++v54;
              v55 = (v55 + v77);
              goto LABEL_58;
            }
          }

          _H0 = *v58;
          __asm { FCVT            S0, H0 }

          v63 = v51 * _S0;
LABEL_66:
          v60 = v63;
          goto LABEL_67;
        }

        v66 = "channelStride > -1";
        v67 = 875;
      }

      else
      {
        v66 = "rowStride > 0";
        v67 = 873;
      }

      __assert_rtn("[SIRawImage ToPGMImageAsBinary:]", "SIIOUtility.mm", v67, v66);
  }

LABEL_76:
  v64 = __SceneIntelligenceLogSharedInstance(v5);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    *buf = 136380931;
    v85 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    v86 = 1025;
    v87 = 830;
    _os_log_impl(&dword_21DE0D000, v64, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unsupported pixel format for converting to PGM. ***", buf, 0x12u);
  }

  v24 = 0;
LABEL_73:

  return v24;
}

__CFString *__33__SIRawImage_ToPGMImageAsBinary___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    v3 = *(a1 + 40);
    v4 = @"P3";
    v5 = @"P6";
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 40);
    v4 = @"P2";
    v5 = @"P5";
LABEL_5:
    if (v3)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;

    return v7;
  }

  v7 = 0;

  return v7;
}

uint64_t __33__SIRawImage_ToPGMImageAsBinary___block_invoke_135(uint64_t a1)
{
  if (*(a1 + 32) == 8)
  {
    return 4;
  }

  else
  {
    return 6;
  }
}

uint64_t __33__SIRawImage_ToPGMImageAsBinary___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 == 8)
  {
    return 255;
  }

  if (v2 == 16)
  {
    return 0xFFFFLL;
  }

  v4 = __SceneIntelligenceLogSharedInstance(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 136380931;
    v6 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
    v7 = 1025;
    v8 = 896;
    _os_log_impl(&dword_21DE0D000, v4, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Unknown bitDepth, cannot determine maximum value ***", &v5, 0x12u);
  }

  return 0;
}

- (BOOL)savePGMToURL:(id)l asBinary:(BOOL)binary
{
  binaryCopy = binary;
  lCopy = l;
  v7 = [(SIRawImage *)self ToPGMImageAsBinary:binaryCopy];
  LOBYTE(self) = [v7 writeToURL:lCopy atomically:0];

  return self;
}

- (id)asByteArray
{
  v22 = *MEMORY[0x277D85DE8];
  info = [(SIRawImage *)self info];
  planes = [info planes];

  if (planes < 2)
  {
    v8 = objc_opt_new();
    info2 = [(SIRawImage *)self info];
    v10 = *[info2 height];
    info3 = [(SIRawImage *)self info];
    v12 = *[info3 bytesPerRow];
    *[v8 width] = v12 * v10;

    v13 = *[v8 width];
    *[v8 size] = v13;
    *[v8 height] = 1;
    [v8 setPlanes:1];
    [v8 setChannels:1];
    *[v8 bytesPerPixel] = 1;
    v14 = *[v8 width];
    *[v8 bytesPerRow] = v14;
    v15 = [SIRawImage alloc];
    data = [(SIRawImage *)self data];
    v7 = [(SIRawImage *)v15 initWithInfo:v8 data:data];
  }

  else
  {
    v6 = __SceneIntelligenceLogSharedInstance(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v18 = 136380931;
      v19 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v20 = 1025;
      v21 = 991;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Representing multiplanar images as byte array is not supported, ***", &v18, 0x12u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)toPixelFormat:(unsigned int)format bytesPerRow:(unint64_t)row
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = [(SIRawImage *)self pixelFormat:*&format];
  if (format == 1278226536 && v6 == 1278226534)
  {
    v10 = MEMORY[0x277CBEB28];
    data = [(SIRawImage *)self data];
    v12 = [v10 dataWithLength:{objc_msgSend(data, "length") >> 1}];

    data2 = [(SIRawImage *)self data];
    bytes = [data2 bytes];

    mutableBytes = [v12 mutableBytes];
    data3 = [(SIRawImage *)self data];
    v17 = [data3 length];
    if (v17 >= 4)
    {
      v18 = 4 * (v17 >> 2);
      do
      {
        v19 = *bytes++;
        _S0 = v19;
        __asm { FCVT            H0, S0 }

        *mutableBytes++ = _S0;
        v18 -= 4;
      }

      while (v18);
    }

    v24 = [SIRawImageInfo alloc];
    info = [(SIRawImage *)self info];
    v26 = [(SIRawImageInfo *)v24 initWithInfo:info];

    [(SIRawImageInfo *)v26 setPixelFormat:1278226536];
    *[(SIRawImageInfo *)v26 bytesPerPixel]= 2;
    info2 = [(SIRawImage *)self info];
    v28 = *[info2 bytesPerRow];
    *[(SIRawImageInfo *)v26 bytesPerRow]= v28 >> 1;

    v9 = [[SIRawImage alloc] initWithInfo:v26 data:v12];
  }

  else
  {
    v8 = __SceneIntelligenceLogSharedInstance(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v30 = 136380931;
      v31 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v32 = 1025;
      v33 = 1013;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Currently only conversions from gray-float to gray-half-float are supported. ***", &v30, 0x12u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)reshapeWithWidth:(unint64_t)width height:(unint64_t)height
{
  v41 = *MEMORY[0x277D85DE8];
  info = [(SIRawImage *)self info];
  planes = [info planes];

  if (planes == 1)
  {
    info2 = [(SIRawImage *)self info];
    v11 = *[info2 width];
    info3 = [(SIRawImage *)self info];
    v13 = *[info3 bytesPerPixel];
    info4 = [(SIRawImage *)self info];
    v15 = v13 * v11;
    v16 = *[info4 bytesPerRow];

    if (v15 == v16)
    {
      width = [(SIRawImage *)self width];
      height = [(SIRawImage *)self height];
      if (height * width == height * width)
      {
        v20 = [SIRawImageInfo alloc];
        info5 = [(SIRawImage *)self info];
        v22 = [(SIRawImageInfo *)v20 initWithInfo:info5];

        *[(SIRawImageInfo *)v22 width]= width;
        *[(SIRawImageInfo *)v22 height]= height;
        v23 = *[(SIRawImageInfo *)v22 bytesPerPixel];
        *[(SIRawImageInfo *)v22 bytesPerRow]= v23 * width;
        v24 = [SIRawImage alloc];
        data = [(SIRawImage *)self data];
        v26 = [(SIRawImage *)v24 initWithInfo:v22 mutableData:data];

        goto LABEL_14;
      }

      v27 = __SceneIntelligenceLogSharedInstance(height);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = 136381955;
        v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v31 = 1025;
        v32 = 1039;
        v33 = 2048;
        width2 = [(SIRawImage *)self width];
        v35 = 2048;
        height2 = [(SIRawImage *)self height];
        v37 = 2048;
        widthCopy = width;
        v39 = 2048;
        heightCopy = height;
        _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Incompatible reshape dimensions.  Source: (%ld, %ld). Destination: (%ld, %ld) ***", &v29, 0x3Au);
      }
    }

    else
    {
      v27 = __SceneIntelligenceLogSharedInstance(v17);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v29 = 136380931;
        v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
        v31 = 1025;
        v32 = 1033;
        _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** To reshape, data must be packed (no excess stride) ***", &v29, 0x12u);
      }
    }
  }

  else
  {
    v27 = __SceneIntelligenceLogSharedInstance(v9);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = 136380931;
      v30 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIIOUtility.mm";
      v31 = 1025;
      v32 = 1029;
      _os_log_impl(&dword_21DE0D000, v27, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Only single-planar images supported. ***", &v29, 0x12u);
    }
  }

  v26 = 0;
LABEL_14:

  return v26;
}

- (unsigned)pixelFormat
{
  info = [(SIRawImage *)self info];
  pixelFormat = [info pixelFormat];

  return pixelFormat;
}

- (unint64_t)width
{
  info = [(SIRawImage *)self info];
  v3 = *[info width];

  return v3;
}

- (unint64_t)height
{
  info = [(SIRawImage *)self info];
  v3 = *[info height];

  return v3;
}

- (unint64_t)bytesPerRow
{
  info = [(SIRawImage *)self info];
  v3 = *[info bytesPerRow];

  return v3;
}

- (unint64_t)bytesPerElement
{
  info = [(SIRawImage *)self info];
  v3 = *[info bytesPerPixel];

  return v3;
}

- (void)getMutableBytesWithHandler:(id)handler
{
  handlerCopy = handler;
  data = [(SIRawImage *)self data];
  handlerCopy[2](handlerCopy, [data mutableBytes]);
}

@end