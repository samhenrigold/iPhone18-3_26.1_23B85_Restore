@interface TSCH3DTSPImageData
+ (id)dataWithTSPImageData:(id)data;
- (BOOL)canLoadCachedDataForDataCache:(id)cache;
- (BOOL)hasCompleteData;
- (CGImage)newCGImage;
- (TSCH3DTSPImageData)initWithTSPImageData:(id)data;
- (id)databufferForDataCache:(id)cache;
- (id)p_decodeCachedData:(id)data imageSize:(void *)size;
- (id)p_encodeImageSize:(void *)size andMipmapData:(id)data;
- (id)p_generateMipmapsBuffer;
- (id)uniqueFilename;
- (void)setParent:(id)parent;
@end

@implementation TSCH3DTSPImageData

+ (id)dataWithTSPImageData:(id)data
{
  dataCopy = data;
  v5 = [self alloc];
  v10 = objc_msgSend_initWithTSPImageData_(v5, v6, v7, v8, v9, dataCopy);

  return v10;
}

- (TSCH3DTSPImageData)initWithTSPImageData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = TSCH3DTSPImageData;
  v6 = [(TSCH3DTSPImageData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (void)setParent:(id)parent
{
  obj = parent;
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  if (WeakRetained)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DTSPImageData setParent:]");
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, v12, v13, v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v16, v17, v18, v19, v10, v15, 127, 0, "expected nil value for '%{public}s'", "_parent");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22, v23);
  }

  if (!obj)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, v6, v7, v8, "[TSCH3DTSPImageData setParent:]");
    v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, v27, v28, v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v31, v32, v33, v34, v25, v30, 128, 0, "invalid nil value for '%{public}s'", "p");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37, v38);
  }

  objc_storeWeak(&self->_parent, obj);
}

- (BOOL)hasCompleteData
{
  data = self->_data;
  if (data)
  {
    LOBYTE(data) = objc_msgSend_needsDownload(data, a2, v2, v3, v4) ^ 1;
  }

  return data;
}

- (CGImage)newCGImage
{
  if (!self->_data)
  {
    return 0;
  }

  v6 = objc_msgSend_sharedPool(MEMORY[0x277D802D0], a2, v2, v3, v4);
  objc_msgSend_addInterestInProviderForData_(v6, v7, v8, v9, v10, self->_data);
  v11 = objc_alloc(MEMORY[0x277D802D8]);
  v15 = objc_msgSend_initWithContentsScale_wantsHDR_(v11, v12, 1.0, v13, v14, 0);
  v20 = objc_msgSend_CGImageForImageData_renderingConfiguration_(MEMORY[0x277D801D0], v16, v17, v18, v19, self->_data, v15);
  v25 = v20;
  if (v20)
  {
    CGImageRetain(v20);
  }

  objc_msgSend_removeInterestInProviderForData_(v6, v21, v22, v23, v24, self->_data);

  if (v25)
  {
    Width = CGImageGetWidth(v25);
    Height = CGImageGetHeight(v25);
    if (Width >= 0)
    {
      v31 = Width;
    }

    else
    {
      v31 = -Width;
    }

    v32 = Width;
    if ((v31 & (v31 - 1)) != 0)
    {
      if (Width)
      {
        v33 = Width;
        do
        {
          v32 = v33;
          v34 = v33 & -v33;
          v33 ^= v34;
        }

        while (v34 != v32);
      }

      else
      {
        v32 = 0;
      }

      if (2 * v32 - Width < Width - v32)
      {
        v32 *= 2;
      }
    }

    if (Height >= 0)
    {
      v35 = Height;
    }

    else
    {
      v35 = -Height;
    }

    v36 = Height;
    if ((v35 & (v35 - 1)) != 0)
    {
      if (Height)
      {
        v37 = Height;
        do
        {
          v36 = v37;
          v38 = v37 & -v37;
          v37 ^= v38;
        }

        while (v38 != v36);
      }

      else
      {
        v36 = 0;
      }

      if (2 * v36 - Height < Height - v36)
      {
        v36 *= 2;
      }
    }

    v41[0] = v32;
    v41[1] = v36;
    if (v32 != Width || v36 != Height)
    {
      v39 = sub_2761D7ED0(v25, v41, v28, v29, v30);
      CGImageRelease(v25);
      return v39;
    }
  }

  return v25;
}

- (id)p_encodeImageSize:(void *)size andMipmapData:(id)data
{
  dataCopy = data;
  v6 = MEMORY[0x277CBEB28];
  v11 = objc_msgSend_length(dataCopy, v7, v8, v9, v10);
  v16 = objc_msgSend_dataWithCapacity_(v6, v12, v13, v14, v15, v11 + 16);
  objc_msgSend_appendData_(v16, v17, v18, v19, v20, dataCopy);
  objc_msgSend_appendBytes_length_(v16, v21, v22, v23, v24, size, 16);

  return v16;
}

- (id)p_decodeCachedData:(id)data imageSize:(void *)size
{
  dataCopy = data;
  v6 = dataCopy;
  v11 = objc_msgSend_bytes(v6, v7, v8, v9, v10);
  v17 = objc_msgSend_length(dataCopy, v12, v13, v14, v15);
  if (v17 <= 0xF)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, v18, v19, v20, "[TSCH3DTSPImageData p_decodeCachedData:imageSize:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v24, v25, v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v28, v29, v30, v31, v22, v27, 172, 0, "too few bytes in cached data");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34, v35);
  }

  *size = *(v11 + v17 - 16);

  return dataCopy;
}

- (id)p_generateMipmapsBuffer
{
  v6 = objc_msgSend_newCGImage(self, a2, v2, v3, v4);
  v47 = objc_opt_class();
  v48 = 0;
  if (v6)
  {
    v10 = sub_2761D44DC(&v47, v6, v7, v8, v9);
    CGImageRelease(v6);
    v15 = objc_msgSend_sharedInstance(TSCH3DChartPlatformSettings, v11, v12, v13, v14);
    MipmapLevel = objc_msgSend_skipFirstMipmapLevel(v15, v16, v17, v18, v19);

    v25 = objc_msgSend_mipmapsWithBuffer_skipFirstLevel_(TSCH3DTextureMipmapper, v21, v22, v23, v24, v10, MipmapLevel);
    if (v25)
    {
      objc_opt_class();
      v26 = TSUCheckedDynamicCast();
      v31 = v26;
      if (v26)
      {
        objc_msgSend_dimension(v26, v28, v29, v30);
        v32 = v44;
        v33 = v45;
      }

      else
      {
        v33 = 0;
        v44 = 0.0;
        v45 = 0;
        v32 = 0.0;
        v46 = 0;
      }

      v41 = v32;
      v42 = v33;
      v43 = 1;
      v35 = objc_msgSend_NSData(v31, v27, v32, v29, v30);
      v34 = objc_msgSend_p_encodeImageSize_andMipmapData_(self, v36, v37, v38, v39, &v41, v35);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (BOOL)canLoadCachedDataForDataCache:(id)cache
{
  cacheCopy = cache;
  v10 = objc_msgSend_uniqueFilename(self, v5, v6, v7, v8);
  if (v10)
  {
    v14 = objc_msgSend_dataFromCache_forFile_group_generateBlock_(TSCH3DDocumentDataCache, v9, v11, v12, v13, cacheCopy, v10, @"TSCH3DMipmapsBackHeader", &unk_28851D188);
    v15 = v14 != 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)databufferForDataCache:(id)cache
{
  cacheCopy = cache;
  v9 = objc_msgSend_uniqueFilename(self, v5, v6, v7, v8);
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = objc_autoreleasePoolPush();
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = sub_2761D4A8C;
  v101[3] = &unk_27A6B68D0;
  v101[4] = self;
  v15 = objc_msgSend_dataFromCache_forFile_group_generateBlock_(TSCH3DDocumentDataCache, v11, COERCE_DOUBLE(3221225472), v12, v13, cacheCopy, v9, @"TSCH3DMipmapsBackHeader", v101);
  if (v15)
  {
    v99 = 0;
    v100 = 0;
    v96 = objc_msgSend_p_decodeCachedData_imageSize_(self, v14, v16, v17, v18, v15, &v99);
    v95 = v10;
    v23 = HIDWORD(v100);
    v24 = v100;
    v26 = v99;
    v25 = HIDWORD(v99);
    v97[0] = v99;
    v97[1] = v100;
    v98 = HIDWORD(v100) != 0;
    if ((v100 - 5) > 0xFFFFFFFB)
    {
      v49 = objc_msgSend_length(v96, v19, v20, v21, v22);
      v54 = 0;
      v55 = 0;
      do
      {
        v56 = v25 * v26;
        if (v55)
        {
          if (!v23)
          {
            break;
          }

          v56 = (v25 >> v55) * (v26 >> v55);
        }

        v54 += v24 * v56;
        if (v55 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        ++v55;
      }

      while (v24 * v56);
      if (v49 != v54 + 16)
      {
        v92 = MEMORY[0x277D81150];
        v93 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, v51, v52, v53, "[TSCH3DTSPImageData databufferForDataCache:]");
        v94 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, v58, v59, v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
        v65 = objc_msgSend_length(v96, v61, v62, v63, v64);
        v70 = 0;
        v71 = 0;
        do
        {
          v72 = v25 * v26;
          if (v71)
          {
            if (!v23)
            {
              break;
            }

            v72 = (v25 >> v71) * (v26 >> v71);
          }

          v70 += v24 * v72;
          if (v71 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          ++v71;
        }

        while (v24 * v72);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v92, v66, v67, v68, v69, v93, v94, 241, 0, "size mismatch between data and image size %lu, %lu", v65, v70);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75, v76);
      }

      v77 = [TSCH3DNSData2DDataBuffer alloc];
      v48 = objc_msgSend_initWithCapacityDimension_data_(v77, v78, v79, v80, v81, v97, v96);
    }

    else
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, v20, v21, v22, "[TSCH3DTSPImageData databufferForDataCache:]");
      v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, v30, v31, v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/charts/Classes/TSCH3DTSPImageData.mm");
      v34 = MEMORY[0x277CCACA8];
      sub_276152FD4(&v102, "ivec4(%d, %d, %d, %d)", v99, 0, HIDWORD(v99), 0);
      if (v104 >= 0)
      {
        objc_msgSend_stringWithUTF8String_(v34, v35, v36, v37, v38, &v102);
      }

      else
      {
        objc_msgSend_stringWithUTF8String_(v34, v35, v36, v37, v38, v102);
      }
      v40 = ;
      if (v104 < 0)
      {
        operator delete(v102);
      }

      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v39, v41, v42, v43, v28, v33, 235, 0, "Invalid component count %lu and image size %@. Will not create a new TSCH3DNSData2DDataBuffer from the mipmapData", v24, v40);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46, v47);
      v48 = 0;
    }

    v10 = v95;
  }

  else
  {
    v48 = 0;
  }

  objc_autoreleasePoolPop(v10);
  if (!v48)
  {
LABEL_28:
    v102 = objc_opt_class();
    v103 = 0;
    v86 = objc_msgSend_newCGImage(self, v82, v83, v84, v85);
    if (v86)
    {
      v48 = sub_2761D44DC(&v102, v86, v87, v88, v89);
      CGImageRelease(v86);
    }

    else
    {
      data = self->_data;
      v97[0] = 0x10000000100;
      v48 = sub_2761D4A94(&v102, data, v97, 4);
    }
  }

  return v48;
}

- (id)uniqueFilename
{
  data = self->_data;
  if (data && (objc_msgSend_digestString(data, a2, v2, v3, v4), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v12 = MEMORY[0x277CCAB68];
    v13 = objc_msgSend_digestString(self->_data, v8, v9, v10, v11);
    v18 = objc_msgSend_stringWithString_(v12, v14, v15, v16, v17, v13);

    v23 = objc_msgSend_filename(self->_data, v19, v20, v21, v22);
    v28 = objc_msgSend_pathExtension(v23, v24, v25, v26, v27);

    if (objc_msgSend_length(v28, v29, v30, v31, v32))
    {
      objc_msgSend_appendFormat_(v18, v33, v34, v35, v36, @".%@", v28);
    }

    v37 = objc_msgSend_copy(v18, v33, v34, v35, v36);
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

@end