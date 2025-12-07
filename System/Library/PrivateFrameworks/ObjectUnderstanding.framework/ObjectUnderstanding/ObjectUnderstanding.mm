BOOL float4x4FromNSArray(NSArray *a1, simd_float4x4 *a2)
{
  v3 = a1;
  v4 = [(NSArray *)v3 count];
  if (v4 == 4)
  {
    v5 = [(NSArray *)v3 objectAtIndexedSubscript:0];
    v6 = [(NSArray *)v3 objectAtIndexedSubscript:1];
    v7 = [(NSArray *)v3 objectAtIndexedSubscript:2];
    v21 = v3;
    v8 = [(NSArray *)v3 objectAtIndexedSubscript:3];
    for (i = 0; i != 4; ++i)
    {
      v10 = [v5 objectAtIndexedSubscript:i];
      [v10 floatValue];
      v24 = v11;
      v12 = [v6 objectAtIndexedSubscript:i];
      [v12 floatValue];
      v23 = v13;
      v14 = [v7 objectAtIndexedSubscript:i];
      [v14 floatValue];
      v22 = v15;
      v16 = [v8 objectAtIndexedSubscript:i];
      [v16 floatValue];
      v17.i64[0] = __PAIR64__(v23, v24);
      v17.i64[1] = __PAIR64__(v18, v22);
      a2->columns[i] = v17;
    }

    v4 = 4;
    v3 = v21;
  }

  v19 = v4 == 4;

  return v19;
}

{
  v3 = a1;
  v4 = [(NSArray *)v3 count];
  if (v4 == 4)
  {
    v5 = [(NSArray *)v3 objectAtIndexedSubscript:0];
    v6 = [(NSArray *)v3 objectAtIndexedSubscript:1];
    v7 = [(NSArray *)v3 objectAtIndexedSubscript:2];
    v21 = v3;
    v8 = [(NSArray *)v3 objectAtIndexedSubscript:3];
    for (i = 0; i != 4; ++i)
    {
      v10 = [v5 objectAtIndexedSubscript:i];
      [v10 floatValue];
      v24 = v11;
      v12 = [v6 objectAtIndexedSubscript:i];
      [v12 floatValue];
      v23 = v13;
      v14 = [v7 objectAtIndexedSubscript:i];
      [v14 floatValue];
      v22 = v15;
      v16 = [v8 objectAtIndexedSubscript:i];
      [v16 floatValue];
      v17.i64[0] = __PAIR64__(v23, v24);
      v17.i64[1] = __PAIR64__(v18, v22);
      a2->columns[i] = v17;
    }

    v4 = 4;
    v3 = v21;
  }

  v19 = v4 == 4;

  return v19;
}

void sub_25D1DD69C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _OUFrame;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

id OUFrameToDictionary(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = MEMORY[0x277CCABB0];
  [v1 timestamp];
  v4 = [v3 numberWithDouble:?];
  [v2 setObject:v4 forKeyedSubscript:@"timestamp"];

  [v1 referenceOriginTransform];
  v58.columns[0] = v5;
  v58.columns[1] = v6;
  v58.columns[2] = v7;
  v58.columns[3] = v8;
  v9 = float4x4ToNSArray(&v58, *v5.i64);
  [v2 setObject:v9 forKeyedSubscript:@"reference_origin_transform"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "deviceOrientation")}];
  [v2 setObject:v10 forKeyedSubscript:@"device_orientation"];

  v11 = [v1 camera];
  v12 = OUCameraToDictionary(v11);
  [v2 setObject:v12 forKeyedSubscript:@"camera"];

  v13 = [v1 sceneCamera];
  v14 = OUCameraToDictionary(v13);
  [v2 setObject:v14 forKeyedSubscript:@"scene_camera"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "colorBuffer"))}];
  [v2 setObject:v15 forKeyedSubscript:@"color_width"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "colorBuffer"))}];
  [v2 setObject:v16 forKeyedSubscript:@"color_height"];

  v17 = [v1 colorBuffer];
  CVPixelBufferLockBaseAddress(v17, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(v17);
  DataSize = CVPixelBufferGetDataSize(v17);
  if (BaseAddress && DataSize)
  {
    v20 = [MEMORY[0x277CBEA90] dataWithBytes:BaseAddress length:?];
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v21 = v20;
  CVPixelBufferUnlockBaseAddress(v17, 1uLL);
  [v2 setObject:v21 forKeyedSubscript:@"color_buffer"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "sceneColorBuffer"))}];
  [v2 setObject:v22 forKeyedSubscript:@"scene_color_width"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "sceneColorBuffer"))}];
  [v2 setObject:v23 forKeyedSubscript:@"scene_color_height"];

  v24 = [v1 sceneColorBuffer];
  CVPixelBufferLockBaseAddress(v24, 1uLL);
  v25 = CVPixelBufferGetBaseAddress(v24);
  v26 = CVPixelBufferGetDataSize(v24);
  if (v25 && v26)
  {
    v27 = [MEMORY[0x277CBEA90] dataWithBytes:v25 length:?];
  }

  else
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v28 = v27;
  CVPixelBufferUnlockBaseAddress(v24, 1uLL);
  [v2 setObject:v28 forKeyedSubscript:@"scene_color_buffer"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "semanticLabelBuffer"))}];
  [v2 setObject:v29 forKeyedSubscript:@"semantic_label_width"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "semanticLabelBuffer"))}];
  [v2 setObject:v30 forKeyedSubscript:@"semantic_label_height"];

  v31 = [v1 semanticLabelBuffer];
  CVPixelBufferLockBaseAddress(v31, 1uLL);
  v32 = CVPixelBufferGetBaseAddress(v31);
  v33 = CVPixelBufferGetDataSize(v31);
  if (v32 && v33)
  {
    v34 = [MEMORY[0x277CBEA90] dataWithBytes:v32 length:?];
  }

  else
  {
    v34 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v35 = v34;
  CVPixelBufferUnlockBaseAddress(v31, 1uLL);
  [v2 setObject:v35 forKeyedSubscript:@"semantic_label_buffer"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "semanticConfidenceBuffer"))}];
  [v2 setObject:v36 forKeyedSubscript:@"semantic_confidence_width"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "semanticConfidenceBuffer"))}];
  [v2 setObject:v37 forKeyedSubscript:@"semantic_confidence_height"];

  v38 = [v1 semanticConfidenceBuffer];
  CVPixelBufferLockBaseAddress(v38, 1uLL);
  v39 = CVPixelBufferGetBaseAddress(v38);
  v40 = CVPixelBufferGetDataSize(v38);
  if (v39 && v40)
  {
    v41 = [MEMORY[0x277CBEA90] dataWithBytes:v39 length:?];
  }

  else
  {
    v41 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v42 = v41;
  CVPixelBufferUnlockBaseAddress(v38, 1uLL);
  [v2 setObject:v42 forKeyedSubscript:@"semantic_confidence_buffer"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "sceneDepthBuffer"))}];
  [v2 setObject:v43 forKeyedSubscript:@"scene_depth_width"];

  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "sceneDepthBuffer"))}];
  [v2 setObject:v44 forKeyedSubscript:@"scene_depth_height"];

  v45 = [v1 sceneDepthBuffer];
  CVPixelBufferLockBaseAddress(v45, 1uLL);
  v46 = CVPixelBufferGetBaseAddress(v45);
  v47 = CVPixelBufferGetDataSize(v45);
  if (v46 && v47)
  {
    v48 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:?];
  }

  else
  {
    v48 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v49 = v48;
  CVPixelBufferUnlockBaseAddress(v45, 1uLL);
  [v2 setObject:v49 forKeyedSubscript:@"scene_depth_buffer"];

  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetWidth(objc_msgSend(v1, "sceneDepthConfidenceBuffer"))}];
  [v2 setObject:v50 forKeyedSubscript:@"scene_depth_confidence_width"];

  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{CVPixelBufferGetHeight(objc_msgSend(v1, "sceneDepthConfidenceBuffer"))}];
  [v2 setObject:v51 forKeyedSubscript:@"scene_depth_confidence_height"];

  v52 = [v1 sceneDepthConfidenceBuffer];
  CVPixelBufferLockBaseAddress(v52, 1uLL);
  v53 = CVPixelBufferGetBaseAddress(v52);
  v54 = CVPixelBufferGetDataSize(v52);
  if (v53 && v54)
  {
    v55 = [MEMORY[0x277CBEA90] dataWithBytes:v53 length:?];
  }

  else
  {
    v55 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v56 = v55;
  CVPixelBufferUnlockBaseAddress(v52, 1uLL);
  [v2 setObject:v56 forKeyedSubscript:@"scene_depth_confidence_buffer"];

  return v2;
}

id float4x4ToNSArray(const simd_float4x4 *a1, double a2)
{
  v47[4] = *MEMORY[0x277D85DE8];
  LODWORD(a2) = a1->columns[0].i32[0];
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  LODWORD(v3) = a1->columns[1].i32[0];
  v39 = v43;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  LODWORD(v4) = a1->columns[2].i32[0];
  v38 = v44;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v45 = v37;
  LODWORD(v5) = a1->columns[3].i32[0];
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v46 = v36;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:4];
  v47[0] = v35;
  LODWORD(v6) = a1->columns[0].i32[1];
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v42[0] = v34;
  LODWORD(v7) = a1->columns[1].i32[1];
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v42[1] = v33;
  LODWORD(v8) = a1->columns[2].i32[1];
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v42[2] = v32;
  LODWORD(v9) = a1->columns[3].i32[1];
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v42[3] = v31;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  v47[1] = v30;
  LODWORD(v10) = a1->columns[0].i32[2];
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v41[0] = v29;
  LODWORD(v11) = a1->columns[1].i32[2];
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v41[1] = v28;
  LODWORD(v12) = a1->columns[2].i32[2];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v41[2] = v13;
  LODWORD(v14) = a1->columns[3].i32[2];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v41[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  v47[2] = v16;
  LODWORD(v17) = a1->columns[0].i32[3];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v40[0] = v18;
  LODWORD(v19) = a1->columns[1].i32[3];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v40[1] = v20;
  LODWORD(v21) = a1->columns[2].i32[3];
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v40[2] = v22;
  LODWORD(v23) = a1->columns[3].i32[3];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v40[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  v47[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];

  return v26;
}

{
  v47[4] = *MEMORY[0x277D85DE8];
  LODWORD(a2) = a1->columns[0].i32[0];
  v43 = [MEMORY[0x277CCABB0] numberWithFloat:a2];
  LODWORD(v3) = a1->columns[1].i32[0];
  v39 = v43;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
  LODWORD(v4) = a1->columns[2].i32[0];
  v38 = v44;
  v37 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v45 = v37;
  LODWORD(v5) = a1->columns[3].i32[0];
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  v46 = v36;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:4];
  v47[0] = v35;
  LODWORD(v6) = a1->columns[0].i32[1];
  v34 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
  v42[0] = v34;
  LODWORD(v7) = a1->columns[1].i32[1];
  v33 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
  v42[1] = v33;
  LODWORD(v8) = a1->columns[2].i32[1];
  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v8];
  v42[2] = v32;
  LODWORD(v9) = a1->columns[3].i32[1];
  v31 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
  v42[3] = v31;
  v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  v47[1] = v30;
  LODWORD(v10) = a1->columns[0].i32[2];
  v29 = [MEMORY[0x277CCABB0] numberWithFloat:v10];
  v41[0] = v29;
  LODWORD(v11) = a1->columns[1].i32[2];
  v28 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
  v41[1] = v28;
  LODWORD(v12) = a1->columns[2].i32[2];
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
  v41[2] = v13;
  LODWORD(v14) = a1->columns[3].i32[2];
  v15 = [MEMORY[0x277CCABB0] numberWithFloat:v14];
  v41[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  v47[2] = v16;
  LODWORD(v17) = a1->columns[0].i32[3];
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
  v40[0] = v18;
  LODWORD(v19) = a1->columns[1].i32[3];
  v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
  v40[1] = v20;
  LODWORD(v21) = a1->columns[2].i32[3];
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
  v40[2] = v22;
  LODWORD(v23) = a1->columns[3].i32[3];
  v24 = [MEMORY[0x277CCABB0] numberWithFloat:v23];
  v40[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  v47[3] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];

  return v26;
}

_OUFrame *OUFrameFromDictionary(void *a1)
{
  v1 = a1;
  v2 = [[_OUFrame alloc] initWithDictionary:v1];

  return v2;
}

uint64_t GetDeviceOrientation(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  if (a1.n128_f32[2] < -0.6)
  {
    return 1;
  }

  if (a1.n128_f32[2] > 0.6)
  {
    return 2;
  }

  if (a2.n128_f32[2] > 0.25)
  {
    return 4;
  }

  if (a2.n128_f32[2] < -0.25)
  {
    return 3;
  }

  v5 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a3, a4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    GetDeviceOrientation_cold_1();
  }

  return 0;
}

CVPixelBufferRef LoadImageToCVPixelBuffer(NSString *a1, OSType a2)
{
  v3 = a1;
  v5 = v3;
  if (a2 != 1111970369 && a2 != 1278226742)
  {
    v30 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v3, v4);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      LoadImageToCVPixelBuffer();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, &unk_25D2878C2);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v7 = CGImageSourceCreateWithURL(v6, 0);
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, &unk_286EC2148);
  CFRelease(v7);
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(ImageAtIndex);
  v11 = MEMORY[0x277CBEAC0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  pixelBufferAttributes = [v11 dictionaryWithObjectsAndKeys:{v12, *MEMORY[0x277CC4D70], v13, *MEMORY[0x277CC4D68], 0}];

  pixelBuffer = 0;
  DataProvider = CGImageGetDataProvider(ImageAtIndex);
  v16 = CGDataProviderCopyData(DataProvider);
  BytePtr = CFDataGetBytePtr(v16);
  BytesPerRow = CGImageGetBytesPerRow(ImageAtIndex);
  if (CVPixelBufferCreateWithBytes(*MEMORY[0x277CBECE8], Width, Height, a2, BytePtr, BytesPerRow, 0, 0, pixelBufferAttributes, &pixelBuffer))
  {
    v19 = 0;
  }

  else
  {
    if (a2 == 1111970369)
    {
      CVPixelBufferLockBaseAddress(pixelBuffer, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
      v21 = CVPixelBufferGetWidth(pixelBuffer);
      v22 = CVPixelBufferGetHeight(pixelBuffer);
      v23 = CVPixelBufferGetBytesPerRow(pixelBuffer);
      if (v22)
      {
        v24 = 0;
        v25 = BaseAddress + 2;
        do
        {
          v26 = v21;
          for (i = v25; v26; --v26)
          {
            v28 = *(i - 2);
            *(i - 2) = *i;
            *i = v28;
            i += 4;
          }

          ++v24;
          v25 += v23;
        }

        while (v24 != v22);
      }

      CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
    }

    v19 = pixelBuffer;
  }

  return v19;
}

BOOL LoadRGBToDictionary(NSString *a1, NSMutableDictionary *a2)
{
  v3 = a2;
  ImageToCVPixelBuffer = LoadImageToCVPixelBuffer(a1, 0x42475241u);
  v6 = ImageToCVPixelBuffer;
  if (ImageToCVPixelBuffer)
  {
    pixelBuffer = 0;
    utils::ConvertColor32BGRATo420f(ImageToCVPixelBuffer, &pixelBuffer, v5);
    v7 = pixelBuffer != 0;
    if (pixelBuffer)
    {
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      v11 = _OULoggingGetOSLogForCategoryObjectUnderstanding(Height, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        LoadRGBToDictionary();
      }

      v12 = pixelBuffer;
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      BaseAddress = CVPixelBufferGetBaseAddress(v12);
      DataSize = CVPixelBufferGetDataSize(v12);
      if (BaseAddress && DataSize)
      {
        v15 = [MEMORY[0x277CBEA90] dataWithBytes:BaseAddress length:?];
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEA90]);
      }

      v16 = v15;
      CVPixelBufferUnlockBaseAddress(v12, 1uLL);
      [(NSMutableDictionary *)v3 setObject:v16 forKeyedSubscript:@"color_buffer"];

      v17 = [MEMORY[0x277CCABB0] numberWithInt:Width];
      [(NSMutableDictionary *)v3 setObject:v17 forKeyedSubscript:@"color_width"];

      v18 = [MEMORY[0x277CCABB0] numberWithInt:Height];
      [(NSMutableDictionary *)v3 setObject:v18 forKeyedSubscript:@"color_height"];

      v19 = [(NSMutableDictionary *)v3 objectForKeyedSubscript:@"color_buffer"];
      v20 = [v19 copy];
      [(NSMutableDictionary *)v3 setObject:v20 forKeyedSubscript:@"scene_color_buffer"];

      v21 = [MEMORY[0x277CCABB0] numberWithInt:Width];
      [(NSMutableDictionary *)v3 setObject:v21 forKeyedSubscript:@"scene_color_width"];

      v22 = [MEMORY[0x277CCABB0] numberWithInt:Height];
      [(NSMutableDictionary *)v3 setObject:v22 forKeyedSubscript:@"scene_color_height"];

      CVPixelBufferLockBaseAddress(v6, 1uLL);
      v23 = CVPixelBufferGetBaseAddress(v6);
      v24 = CVPixelBufferGetDataSize(v6);
      if (v23 && v24)
      {
        v25 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:?];
      }

      else
      {
        v25 = objc_alloc_init(MEMORY[0x277CBEA90]);
      }

      v26 = v25;
      CVPixelBufferUnlockBaseAddress(v6, 1uLL);
      [(NSMutableDictionary *)v3 setObject:v26 forKeyedSubscript:@"scene_color_buffer_bgra"];

      CVPixelBufferRelease(v6);
      CVPixelBufferRelease(pixelBuffer);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

BOOL LoadSemanticToDictionary(NSString *a1, NSMutableDictionary *a2)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ImageToCVPixelBuffer = LoadImageToCVPixelBuffer(v3, 0x42475241u);
  v6 = ImageToCVPixelBuffer;
  if (ImageToCVPixelBuffer)
  {
    Width = CVPixelBufferGetWidth(ImageToCVPixelBuffer);
    Height = CVPixelBufferGetHeight(v6);
    v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding(Height, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LoadSemanticToDictionary();
    }

    pixelBuffer = 0;
    v28 = *MEMORY[0x277CC4DE8];
    v29[0] = MEMORY[0x277CBEC10];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x4C303038u, v11, &pixelBuffer);
    CVPixelBufferLockBaseAddress(v6, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v6);
    v13 = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (Height >= 1)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = Width;
        v17 = v13;
        v18 = v14;
        if (Width >= 1)
        {
          do
          {
            *v17++ = BaseAddress[(v18 & 0xFFFFFFFC) + 2];
            v18 += 4;
            --v16;
          }

          while (v16);
        }

        ++v15;
        v14 += 4 * Width;
        v13 += Width;
      }

      while (v15 != (Height & 0x7FFFFFFF));
    }

    CVPixelBufferUnlockBaseAddress(v6, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

    v19 = pixelBuffer;
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    v20 = CVPixelBufferGetBaseAddress(v19);
    DataSize = CVPixelBufferGetDataSize(v19);
    if (v20 && DataSize)
    {
      v22 = [MEMORY[0x277CBEA90] dataWithBytes:v20 length:?];
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    v23 = v22;
    CVPixelBufferUnlockBaseAddress(v19, 1uLL);
    [(NSMutableDictionary *)v4 setObject:v23 forKeyedSubscript:@"semantic_label_buffer"];

    v24 = [MEMORY[0x277CCABB0] numberWithInt:Width];
    [(NSMutableDictionary *)v4 setObject:v24 forKeyedSubscript:@"semantic_label_width"];

    v25 = [MEMORY[0x277CCABB0] numberWithInt:Height];
    [(NSMutableDictionary *)v4 setObject:v25 forKeyedSubscript:@"semantic_label_height"];

    CVPixelBufferRelease(v6);
    CVPixelBufferRelease(pixelBuffer);
  }

  return v6 != 0;
}

BOOL LoadSemanticConfToDictionary(NSString *a1, NSMutableDictionary *a2)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ImageToCVPixelBuffer = LoadImageToCVPixelBuffer(v3, 0x42475241u);
  v6 = ImageToCVPixelBuffer;
  if (ImageToCVPixelBuffer)
  {
    Width = CVPixelBufferGetWidth(ImageToCVPixelBuffer);
    Height = CVPixelBufferGetHeight(v6);
    v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding(Height, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      LoadSemanticConfToDictionary();
    }

    pixelBuffer = 0;
    v31 = *MEMORY[0x277CC4DE8];
    v32[0] = MEMORY[0x277CBEC10];
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x4C303066u, v11, &pixelBuffer);
    CVPixelBufferLockBaseAddress(v6, 1uLL);
    CVPixelBufferLockBaseAddress(pixelBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v6);
    v13 = CVPixelBufferGetBaseAddress(pixelBuffer);
    if (Height >= 1)
    {
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = Width;
        v17 = v14;
        if (Width >= 1)
        {
          do
          {
            v18 = &BaseAddress[v17 & 0xFFFFFFFC];
            v19 = v18[2];
            v20 = v18[1] + *v18 + v19 + v18[3];
            if (v20)
            {
              v21 = v19 / v20;
            }

            else
            {
              v21 = 0.0;
            }

            *&v13[v17] = v21;
            v17 += 4;
            --v16;
          }

          while (v16);
        }

        ++v15;
        v14 += 4 * Width;
      }

      while (v15 != (Height & 0x7FFFFFFF));
    }

    CVPixelBufferUnlockBaseAddress(v6, 1uLL);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);

    v22 = pixelBuffer;
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    v23 = CVPixelBufferGetBaseAddress(v22);
    DataSize = CVPixelBufferGetDataSize(v22);
    if (v23 && DataSize)
    {
      v25 = [MEMORY[0x277CBEA90] dataWithBytes:v23 length:?];
    }

    else
    {
      v25 = objc_alloc_init(MEMORY[0x277CBEA90]);
    }

    v26 = v25;
    CVPixelBufferUnlockBaseAddress(v22, 1uLL);
    [(NSMutableDictionary *)v4 setObject:v26 forKeyedSubscript:@"semantic_confidence_buffer"];

    v27 = [MEMORY[0x277CCABB0] numberWithInt:Width];
    [(NSMutableDictionary *)v4 setObject:v27 forKeyedSubscript:@"semantic_confidence_width"];

    v28 = [MEMORY[0x277CCABB0] numberWithInt:Height];
    [(NSMutableDictionary *)v4 setObject:v28 forKeyedSubscript:@"semantic_confidence_height"];

    CVPixelBufferRelease(v6);
    CVPixelBufferRelease(pixelBuffer);
  }

  return v6 != 0;
}

uint64_t LoadDepthToDictionary(NSString *a1, NSMutableDictionary *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  ImageToCVPixelBuffer = LoadImageToCVPixelBuffer(v3, 0x4C303136u);
  Width = CVPixelBufferGetWidth(ImageToCVPixelBuffer);
  Height = CVPixelBufferGetHeight(ImageToCVPixelBuffer);
  v9 = _OULoggingGetOSLogForCategoryObjectUnderstanding(Height, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LoadDepthToDictionary();
  }

  pixelBuffer = 0;
  v27 = *MEMORY[0x277CC4DE8];
  v28[0] = MEMORY[0x277CBEC10];
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x66646570u, v10, &pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  CVPixelBufferLockBaseAddress(ImageToCVPixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v12 = CVPixelBufferGetBaseAddress(ImageToCVPixelBuffer);
  if (Height)
  {
    for (i = 0; i != Height; ++i)
    {
      v14 = Width;
      v15 = BaseAddress;
      for (j = v12; v14; --v14)
      {
        v17 = *j++;
        *v15++ = v17 / 1000.0;
      }

      v12 += Width;
      BaseAddress += Width;
    }
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  CVPixelBufferUnlockBaseAddress(ImageToCVPixelBuffer, 1uLL);
  CVPixelBufferRelease(ImageToCVPixelBuffer);

  v18 = pixelBuffer;
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  v19 = CVPixelBufferGetBaseAddress(v18);
  DataSize = CVPixelBufferGetDataSize(v18);
  if (v19 && DataSize)
  {
    v21 = [MEMORY[0x277CBEA90] dataWithBytes:v19 length:?];
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEA90]);
  }

  v22 = v21;
  CVPixelBufferUnlockBaseAddress(v18, 1uLL);
  [(NSMutableDictionary *)v4 setObject:v22 forKeyedSubscript:@"scene_depth_buffer"];

  v23 = [MEMORY[0x277CCABB0] numberWithInt:Width];
  [(NSMutableDictionary *)v4 setObject:v23 forKeyedSubscript:@"scene_depth_width"];

  v24 = [MEMORY[0x277CCABB0] numberWithInt:Height];
  [(NSMutableDictionary *)v4 setObject:v24 forKeyedSubscript:@"scene_depth_height"];

  CVPixelBufferRelease(pixelBuffer);
  return 1;
}

void FindImageFilePath(NSString *a1@<X0>, NSString *a2@<X1>, NSString *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v7 = a2;
  v8 = a3;
  v40 = v7;
  v41 = v6;
  v39 = [(NSString *)v6 stringByAppendingPathComponent:v7];
  v42.__r_.__value_.__r.__words[0] = [v39 UTF8String];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p.__pn_, &v42);
  MEMORY[0x25F894CC0](&v45, &__p, 0, 0);
  if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__pn_.__r_.__value_.__l.__data_);
  }

  v9 = v45;
  v10 = v46;
  if (v46)
  {
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = v46;
    v43.__imp_.__ptr_ = v9;
    v43.__imp_.__cntrl_ = v10;
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v43.__imp_.__ptr_ = v45;
    v43.__imp_.__cntrl_ = 0;
  }

LABEL_7:
  if (v43.__imp_.__ptr_)
  {
    v12 = std::__fs::filesystem::directory_iterator::__dereference(&v43);
    if (SHIBYTE(v12->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p.__pn_, v12->__p_.__pn_.__r_.__value_.__l.__data_, v12->__p_.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      __p.__pn_ = v12->__p_;
    }

    v13 = 0;
    while (1)
    {
      v14 = (&off_2799C3FC8)[v13];
      std::string::basic_string[abi:ne200100]<0>(&v42, "_");
      v15 = [(NSString *)v8 UTF8String];
      v16 = strlen(v15);
      std::string::append(&v42, v15, v16);
      v17 = strlen(v14);
      v18 = std::string::append(&v42, v14, v17);
      size = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__pn_.__r_.__value_.__r.__words[0];
      }

      if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__pn_.__r_.__value_.__l.__size_;
      }

      v22 = SHIBYTE(v42.__r_.__value_.__r.__words[2]);
      v23 = v42.__r_.__value_.__r.__words[0];
      v24 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v42 : v42.__r_.__value_.__r.__words[0];
      v25 = (v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v42.__r_.__value_.__r.__words[2]) : v42.__r_.__value_.__l.__size_;
      if (!v25)
      {
        break;
      }

      if (size >= v25)
      {
        v26 = p_p + size;
        v27 = v24->__r_.__value_.__s.__data_[0];
        v28 = p_p;
        do
        {
          v29 = size - v25;
          if (v29 == -1)
          {
            break;
          }

          v30 = memchr(v28, v27, v29 + 1);
          if (!v30)
          {
            break;
          }

          v31 = v30;
          v18 = memcmp(v30, v24, v25);
          if (!v18)
          {
            if (v31 == v26 || v31 - p_p == -1)
            {
              break;
            }

            goto LABEL_41;
          }

          v28 = (v31 + 1);
          size = v26 - (v31 + 1);
        }

        while (size >= v25);
      }

      if (v22 < 0)
      {
        operator delete(v23);
      }

      if (++v13 == 2)
      {
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        std::__fs::filesystem::directory_iterator::__increment(&v43, 0);
        goto LABEL_7;
      }
    }

LABEL_41:
    v32 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v18, v19);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      FindImageFilePath(p_p, v32);
    }

    v33 = MEMORY[0x277CCACA8];
    v34 = SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
    v35 = __p.__pn_.__r_.__value_.__r.__words[0];
    v36 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v34 >= 0)
    {
      v37 = &__p;
    }

    else
    {
      v37 = v35;
    }

    *a4 = [v33 stringWithCString:v37 encoding:v36];
    *(a4 + 8) = 1;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__pn_.__r_.__value_.__l.__data_);
    }

    if (v43.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43.__imp_.__cntrl_);
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }
  }

  else
  {
    if (v43.__imp_.__cntrl_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43.__imp_.__cntrl_);
    }

    if (v46)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    }

    *a4 = 0;
    *(a4 + 8) = 0;
  }
}

void sub_25D1DFDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v30 = *(v28 - 88);
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  _Unwind_Resume(a1);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  *(a1 + v5) = 0;
  return a1;
}

id GenerateOUFramesFromCvplayer(void *a1)
{
  v133[19] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v123 = 0;
  __src = 0;
  v124 = 0;
  v2 = [v1 stringByAppendingPathComponent:@"camera.txt"];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_74;
  }

  std::string::basic_string[abi:ne200100]<0>(&v125, [v2 UTF8String]);
  if (v125.columns[1].i8[7] >= 0)
  {
    v4 = &v125;
  }

  else
  {
    v4 = v125.columns[0].i64[0];
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, v4);
  std::ifstream::basic_ifstream(buf, &__p, 8);
  if (v132)
  {
    v104.columns[0].i32[0] = 0;
    while (1)
    {
      v5 = MEMORY[0x25F894C10](buf, &v104);
      if ((*(v5 + *(*v5 - 24) + 32) & 5) != 0)
      {
        break;
      }

      v6 = v123;
      if (v123 >= v124)
      {
        v8 = __src;
        v9 = v123 - __src;
        v10 = (v123 - __src) >> 2;
        v11 = v10 + 1;
        if ((v10 + 1) >> 62)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        v12 = v124 - __src;
        if ((v124 - __src) >> 1 > v11)
        {
          v11 = v12 >> 1;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v13);
        }

        *(4 * v10) = v104.columns[0].i32[0];
        v7 = 4 * v10 + 4;
        memcpy(0, v8, v9);
        v14 = __src;
        __src = 0;
        v123 = v7;
        v124 = 0;
        if (v14)
        {
          operator delete(v14);
        }
      }

      else
      {
        *v123 = v104.columns[0].i32[0];
        v7 = (v6 + 4);
      }

      v123 = v7;
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear(&buf[*(*buf - 24)], *(v130.i32 + *(*buf - 24)) | 4);
    }
  }

  *buf = *MEMORY[0x277D82808];
  *&buf[*(*buf - 24)] = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x25F894BD0](&v129);
  std::istream::~istream();
  MEMORY[0x25F894D60](v133);
  if (__p.columns[1].i8[7] < 0)
  {
    operator delete(__p.columns[0].i64[0]);
  }

  v15 = v123 - __src;
  if (v125.columns[1].i8[7] < 0)
  {
    operator delete(v125.columns[0].i64[0]);
  }

  if (v15 == 24)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = [v1 stringByAppendingPathComponent:@"image_meta.json"];
    if (v17)
    {
      v18 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v17];
      v19 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v18 options:0 error:0];
      v95 = [v19 mutableCopy];

      v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v20 = [v1 stringByAppendingPathComponent:@"pose.json"];
      if (v20)
      {
        obj = v20;
        v21 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
        v22 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v21 options:0 error:0];
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v118 objects:v127 count:16];
        if (v24)
        {
          v25 = *v119;
          while (2)
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v119 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v118 + 1) + 8 * i);
              v28 = [v95 objectForKey:v27];
              v29 = v28 == 0;

              if (v29)
              {
                v80 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v30, v31);
                if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
                {
                  GenerateOUFramesFromCvplayer_cold_1();
                }

LABEL_80:
                goto LABEL_81;
              }

              v32 = [v23 objectForKeyedSubscript:v27];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v33 = v32;
              }

              else
              {
                v33 = 0;
              }

              if (!v33)
              {
                goto LABEL_80;
              }

              [v90 setObject:v33 forKeyedSubscript:v27];
            }

            v24 = [v23 countByEnumeratingWithState:&v118 objects:v127 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v34 = [v95 count];
        v35 = [v90 count];
        if (v34 == v35)
        {
          v38 = *__src;
          v39 = *(__src + 1);
          v40 = (__src + 16);
          v37.i32[0] = *(__src + 5);
          v102 = v37;
          v41 = vld1q_dup_f32(v40);
          *v97 = v41;
          v41.i32[0] = *(__src + 2);
          v84 = *v41.i64;
          v41.i32[0] = 0;
          v41.i32[1] = *(__src + 3);
          v83 = *v41.i64;
          v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          obja = v90;
          v42 = [obja countByEnumeratingWithState:&v114 objects:v126 count:16];
          if (v42)
          {
            __asm { FMOV            V0.4S, #1.0 }

            *&v82 = vzip1q_s32(vzip2q_s32(*v97, _Q0), v102).u64[0];
            v103 = *v115;
            v48 = v38;
            v49 = v39;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v115 != v103)
                {
                  objc_enumerationMutation(obja);
                }

                v51 = *(*(&v114 + 1) + 8 * j);
                FindImageFilePath(v1, &cfstr_Color.isa, v51, &v112);
                FindImageFilePath(v1, &cfstr_Depth.isa, v51, &v110);
                FindImageFilePath(v1, &cfstr_Label.isa, v51, &v108);
                FindImageFilePath(v1, &cfstr_Vote.isa, v51, &v106);
                v52 = v113;
                if (v113 == 1 && v111 == 1 && v109 == 1 && (v107 & 1) != 0)
                {
                  v53 = [obja objectForKeyedSubscript:v51];
                  v54 = float4x4FromNSArray(v53, &__p);

                  if (v54)
                  {
                    v104.columns[0] = xmmword_25D277BA0;
                    v104.columns[1] = xmmword_25D277BB0;
                    v104.columns[2] = xmmword_25D277BC0;
                    v104.columns[3] = xmmword_25D277B90;
                    v98 = __p.columns[0];
                    v93 = __p.columns[2];
                    v94 = __p.columns[1];
                    v92 = __p.columns[3];
                    v135 = __invert_f4(*ARKit_VW_RW);
                    v57 = 0;
                    v125 = v135;
                    do
                    {
                      *&buf[v57 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_25D277BA0, COERCE_FLOAT(*&v125.columns[v57])), xmmword_25D277BB0, *v125.columns[v57].f32, 1), xmmword_25D277BC0, v125.columns[v57], 2), xmmword_25D277B90, v125.columns[v57], 3);
                      ++v57;
                    }

                    while (v57 != 4);
                    v58 = 0;
                    v59 = *buf;
                    v60 = v129;
                    v61 = v130;
                    v62 = v131;
                    v125.columns[0] = v98;
                    v125.columns[1] = v94;
                    v125.columns[2] = v93;
                    v125.columns[3] = v92;
                    do
                    {
                      *&buf[v58 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*&v125.columns[v58])), v60, *v125.columns[v58].f32, 1), v61, v125.columns[v58], 2), v62, v125.columns[v58], 3);
                      ++v58;
                    }

                    while (v58 != 4);
                    v63 = 0;
                    v64 = *buf;
                    v65 = v129;
                    v66 = v130;
                    v67 = v131;
                    v125 = *VC_RC;
                    do
                    {
                      *&buf[v63 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, COERCE_FLOAT(*&v125.columns[v63])), v65, *v125.columns[v63].f32, 1), v66, v125.columns[v63], 2), v67, v125.columns[v63], 3);
                      ++v63;
                    }

                    while (v63 != 4);
                    v88 = *v129.i64;
                    v89 = *buf;
                    v86 = *v131.i64;
                    v87 = *v130.i64;
                    DeviceOrientation = GetDeviceOrientation(v98, v94, v55, v56);
                    v91 = objc_alloc_init(_OUCamera);
                    [(_OUCamera *)v91 setImageResolution:v48, v49];
                    [(_OUCamera *)v91 setIntrinsics:v84, v83, v82];
                    [(_OUCamera *)v91 setPose:v98.n128_f64[0], v94.n128_f64[0], *v93.i64, *v92.i64];
                    [(_OUCamera *)v91 setTransform:v89, v88, v87, v86];
                    v99 = objc_alloc_init(MEMORY[0x277CBEB38]);
                    v68 = [v95 objectForKeyedSubscript:v51];
                    v69 = [v68 objectForKeyedSubscript:@"timestamp"];
                    [(NSMutableDictionary *)v99 setObject:v69 forKeyedSubscript:@"timestamp"];

                    v70 = [MEMORY[0x277CCABB0] numberWithInteger:DeviceOrientation];
                    [(NSMutableDictionary *)v99 setObject:v70 forKeyedSubscript:@"device_orientation"];

                    v71 = OUCameraToDictionary(v91);
                    [(NSMutableDictionary *)v99 setObject:v71 forKeyedSubscript:@"camera"];

                    v72 = OUCameraToDictionary(v91);
                    [(NSMutableDictionary *)v99 setObject:v72 forKeyedSubscript:@"scene_camera"];

                    v74 = float4x4ToNSArray(&v104, v73);
                    [(NSMutableDictionary *)v99 setObject:v74 forKeyedSubscript:@"reference_origin_transform"];

                    LODWORD(v74) = LoadRGBToDictionary(v112, v99);
                    LoadDepthToDictionary(v110, v99);
                    SemanticToDictionary = LoadSemanticToDictionary(v108, v99);
                    if (v74 & SemanticToDictionary & LoadSemanticConfToDictionary(v106, v99))
                    {
                      v76 = OUFrameFromDictionary(v99);
                      [v96 setObject:v76 forKey:v51];
                    }
                  }
                }

                if (v107 == 1)
                {
                }

                if (v109 == 1)
                {
                }

                if (v111 == 1)
                {
                }

                if (v52)
                {
                }
              }

              v42 = [obja countByEnumeratingWithState:&v114 objects:v126 count:16];
            }

            while (v42);
          }

          obj = _OULoggingGetOSLogForCategoryObjectUnderstanding(v77, v78);
          if (os_log_type_enabled(obj, OS_LOG_TYPE_INFO))
          {
            v79 = [v96 count];
            *buf = 134217984;
            *&buf[4] = v79;
            _os_log_impl(&dword_25D1DB000, obj, OS_LOG_TYPE_INFO, "Load cvplayer dumped data to ouframes: %zu", buf, 0xCu);
          }
        }

        else
        {
          obj = _OULoggingGetOSLogForCategoryObjectUnderstanding(v35, v36);
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            GenerateOUFramesFromCvplayer_cold_2(buf, [v95 count], objc_msgSend(v90, "count"), obj);
          }

LABEL_81:
          v96 = 0;
        }
      }

      else
      {
        v96 = 0;
      }

      v16 = v95;
    }

    else
    {
      v96 = 0;
    }
  }

  else
  {
LABEL_74:
    v96 = 0;
  }

  if (__src)
  {
    v123 = __src;
    operator delete(__src);
  }

  return v96;
}

void sub_25D1E0A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  v48 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2799C3FB0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(std::string *this, std::string **a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = *a2;
  v4 = (v3 - 1);
  do
  {
    v5 = v4->__r_.__value_.__s.__data_[1];
    v4 = (v4 + 1);
  }

  while (v5);
  std::string::append[abi:ne200100]<char const*,0>(this, v3, v4);
  return this;
}

void sub_25D1E11B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_25D1E1328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2, int a3)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x25F894BC0](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_25D1E158C(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x25F894D60](v1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x25F894BD0](a1 + 2);

  return std::istream::~istream();
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void _GLOBAL__sub_I_OUFrame_mm()
{
  v0 = objc_autoreleasePoolPush();
  RW_VW = xmmword_25D277BA0;
  unk_28155B180 = xmmword_25D277BD0;
  xmmword_28155B190 = xmmword_25D277BB0;
  unk_28155B1A0 = xmmword_25D277B90;
  *VW_RW = __invert_f4(*_PromotedConst);
  *RC_VC = xmmword_25D277BA0;
  *&RC_VC[16] = xmmword_25D277BE0;
  *&RC_VC[32] = xmmword_25D277BD0;
  *&RC_VC[48] = xmmword_25D277B90;
  *VC_RC = __invert_f4(*_PromotedConst_238);
  *ARKit_VW_RW = xmmword_25D277BE0;
  *&ARKit_VW_RW[16] = xmmword_25D277BC0;
  *&ARKit_VW_RW[32] = xmmword_25D277BF0;
  *&ARKit_VW_RW[48] = xmmword_25D277B90;
  ObjectUnderstandingTest::Bundle = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.ObjectUnderstandingTests"];

  objc_autoreleasePoolPop(v0);
}

void **std::vector<NSString * {__strong}>::~vector[abi:ne200100](void **a1)
{
  v3 = a1;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void OU3DKitchenObjectMerger::Reset(OU3DKitchenObjectMerger *this)
{
  std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](this, this->old_cabinets_.__begin_);
  std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](&this->new_cabinets_, this->new_cabinets_.__begin_);
  std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](&this->other_objects_, this->other_objects_.__begin_);
  begin = this->fused_cabinets_.__begin_;

  std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](&this->fused_cabinets_, begin);
}

float OU3DKitchenObjectMerger::ComputePlaneHeight(float a1, uint64_t a2, void *a3)
{
  v5 = a3[1] - *a3;
  std::vector<float>::vector[abi:ne200100](__p, (v5 >> 4));
  if ((v5 >> 4) >= 1)
  {
    v6 = __p[0];
    v7 = (v5 >> 4) & 0x7FFFFFFF;
    v8 = (*a3 + 8);
    do
    {
      v9 = *v8;
      v8 += 4;
      *v6++ = v9;
      --v7;
    }

    while (v7);
  }

  percentile(__p, v5 >> 4, a1);
  v11 = v10;
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v11;
}

void sub_25D1E19A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void percentile(uint64_t **a1, uint64_t a2, float a3)
{
  if (!a1 || (v3 = a1, a1 = *a1, v4 = v3[1], a1 == v4))
  {
    v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      percentile(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v5 = v4 - a1;
    if (v5 != 4)
    {
      std::__sort<std::__less<float,float> &,float *>();
    }
  }
}

BOOL OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(OU3DKitchenObjectMerger *this, float a2, float32x4_t *a3, float32x4_t *a4, uint64_t a5)
{
  if (!a3 || !a4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] Invalid input in kitchen objects merger.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  box3dIou(&v20, a3, a4, 0, a5);
  if (v21.f32[0] < 0.05)
  {
    return 0;
  }

  {
    while (a3[8].i64[0] != *v9)
    {
      if (++v9 == qword_28155AA08)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  HeadingAngle = GetHeadingAngle(a3);
  v11 = GetHeadingAngle(a4);
  v13 = fabsf(OU::AngleDifference(v12, HeadingAngle, v11));
  if (fabs(v13 + -3.14159265) >= a2)
  {
    return v13 <= a2;
  }

  box3dToCentroidSizeAngle(v28, a3);
  v14 = v28[0][3].f32[0] + 3.14159265;
  v28[0][3].f32[0] = v14;
  centroidSizeAngleToBox3d(v28, 1, &v20);
  v15 = v25;
  a3[4] = v24;
  a3[5] = v15;
  v16 = v27;
  a3[6] = v26;
  a3[7] = v16;
  v17 = v21;
  *a3 = v20;
  a3[1] = v17;
  v18 = v23;
  a3[2] = v22;
  a3[3] = v18;
  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  return 1;
}

void sub_25D1E1C6C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

BOOL OU3DKitchenObjectMerger::IsSimilarDepth(OU3DKitchenObjectMerger *this, const OUBox3d *a2, const OUBox3d *a3, float32_t a4)
{
  v4 = vsubq_f32(*&a2->var1, *&a2->var3);
  v5 = vmulq_f32(v4, v4);
  v6 = vsubq_f32(*&a3->var1, *&a3->var3);
  v7 = vmulq_f32(v6, v6);
  *v5.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v5, v5, 8uLL)), vadd_f32(vzip1_s32(*v7.i8, *v5.i8), vzip2_s32(*v7.i8, *v5.i8))));
  return vsub_f32(*v5.i8, vdup_lane_s32(*v5.i8, 1)).f32[0] < a4;
}

BOOL OU3DKitchenObjectMerger::IsSimilarHeight(OU3DKitchenObjectMerger *this, const OU3DKitchenObject *a2, const OU3DKitchenObject *a3, float a4)
{
  v4 = *(a3 + 18);
  v5 = *(a3 + 2);
  v6 = v4 - v5;
  if ((v4 - v5) <= 0.0)
  {
    v8 = _OULoggingGetOSLogForCategoryObjectUnderstanding(this, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      OU3DKitchenObjectMerger::IsSimilarHeight(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    return 0;
  }

  else
  {
    if (v4 >= *(a2 + 18))
    {
      v4 = *(a2 + 18);
    }

    if (*(a2 + 2) >= v5)
    {
      v5 = *(a2 + 2);
    }

    return (fmaxf(v4 - v5, 0.0) / v6) > a4;
  }
}

void OU3DKitchenObjectMerger::AlignInsideObject(OU3DKitchenObjectMerger *this, float32x4_t *a2, OUBox3d *a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v5 = *&a3->var7;
  v36 = *&a3->var6.var1;
  v37 = v5;
  v6 = *&a3[1].var3;
  v38 = *&a3[1].var1;
  v39 = v6;
  v7 = *&a3->var3;
  v32 = *&a3->var1;
  v33 = v7;
  v8 = *&a3->var5.var2;
  v34 = *&a3->var5.var0;
  v35 = v8;
  box3dToCentroidSizeAngle(v31, a2);
  box3dToCentroidSizeAngle(__p, &v32);
  if (vabds_f32(*(v31[0] + 6), *(__p[0] + 6)) <= 0.0001)
  {
    FindSegmentInteractWithLine(&v42, v32, v33, *a2, a2[3]);
    if (v43 == 1)
    {
      v19 = v42;
      a3->var6.var1 = v42;
      a3->var1 = v19;
      v20 = *&a3->var5.var0;
      v21 = *&a3->var5.var2;
      v22 = vsubq_f32(v20, *&a3->var1).u64[0];
      v23 = vsubq_f32(v21, v20).u64[0];
      v24 = vcvtq_f64_f32(v23);
      *&v22 = -(vmuls_lane_f32(*(&v22 + 1), v23, 1) + (*&v22 * v23.f32[0])) / vaddvq_f64(vmulq_f64(v24, v24));
      LODWORD(a3->var6.var0) = v21.i32[2];
      a3->var5.var2 = vmla_n_f32(*v20.f32, v23, *&v22);
    }

    FindSegmentInteractWithLine(&v40, v32, v33, a2[1], a2[2]);
    if (v41 == 1)
    {
      v25 = v40;
      a3->var7 = v40;
      a3->var3 = v25;
      v26 = *&a3->var5.var0;
      v27 = vsubq_f32(v26, *&a3->var3).u64[0];
      v28 = vsubq_f32(*&a3->var5.var2, v26).u64[0];
      v29 = vcvtq_f64_f32(v28);
      *&v27 = -(vmuls_lane_f32(*(&v27 + 1), v28, 1) + (*&v27 * v28.f32[0])) / vaddvq_f64(vmulq_f64(v29, v29));
      LODWORD(a3->var5.var1) = v26.i32[2];
      a3->var5.var0 = vmla_n_f32(*v26.f32, v28, *&v27);
    }
  }

  else
  {
    v11 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      OU3DKitchenObjectMerger::AlignInsideObject(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v31[0])
  {
    v31[1] = v31[0];
    operator delete(v31[0]);
  }
}

void sub_25D1E1F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void OU3DKitchenObjectMerger::AlignObjectDepth(OU3DKitchenObjectMerger *this@<X0>, const OUBox3d *a2@<X1>, const OUBox3d *a3@<X2>, OUBox3d *a4@<X8>)
{
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(__p, 4uLL);
  v7 = *&a2->var1;
  *(&v7 + 1) = a2->var3;
  v21 = v7;
  v8 = *&a3->var1;
  *(&v8 + 1) = a3->var5.var2;
  v20 = v8;
  OU::intersect(&v21, &v20, __p[0]);
  v9 = *&a2->var1;
  *(&v9 + 1) = a2->var3;
  v21 = v9;
  v10 = *&a3->var3;
  *(&v10 + 1) = a3->var5.var0;
  v20 = v10;
  OU::intersect(&v21, &v20, __p[0] + 1);
  v11 = *&a2->var5.var0;
  *(&v11 + 1) = a2->var5.var2;
  v21 = v11;
  v12 = *&a3->var3;
  *(&v12 + 1) = a3->var5.var0;
  v20 = v12;
  OU::intersect(&v21, &v20, __p[0] + 2);
  v13 = *&a2->var5.var0;
  *(&v13 + 1) = a2->var5.var2;
  v21 = v13;
  v14 = *&a3->var1;
  *(&v14 + 1) = a3->var5.var2;
  v20 = v14;
  OU::intersect(&v21, &v20, __p[0] + 3);
  OUBox3d::OUBox3d(a4, a2);
  v15 = 0;
  v16 = __p[0];
  p_var1 = &a4->var6.var1;
  do
  {
    v18 = *&v16[v15];
    *(p_var1 - 8) = v18;
    *p_var1 = v18;
    p_var1 += 2;
    v15 += 8;
  }

  while (v15 != 32);
  for (i = 0; i != 128; i += 16)
  {
    *(&a4->var2 + i) = *(&a2->var2 + i);
  }

  if (v16)
  {
    __p[1] = v16;
    operator delete(v16);
  }
}

void sub_25D1E2124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OUBox3d::~OUBox3d(OUBox3d *this)
{
  v2 = *&this[1].var8;
  if (v2)
  {
    operator delete(v2);
  }

  var1 = this[1].var6.var1;
  if (var1)
  {
    this[1].var6.var2 = var1;
    operator delete(var1);
  }
}

void OU3DKitchenObjectMerger::AlignHeadingAngle(OU3DKitchenObjectMerger *this, float32_t a2, float32x4_t *a3)
{
  box3dToCentroidSizeAngle(v10, a3);
  v10[0][3].f32[0] = a2;
  centroidSizeAngleToBox3d(v10, 1, v9);
  v5 = v9[5];
  a3[4] = v9[4];
  a3[5] = v5;
  v6 = v9[7];
  a3[6] = v9[6];
  a3[7] = v6;
  v7 = v9[1];
  *a3 = v9[0];
  a3[1] = v7;
  v8 = v9[3];
  a3[2] = v9[2];
  a3[3] = v8;
  if (v10[0])
  {
    v10[1] = v10[0];
    operator delete(v10[0]);
  }
}

void sub_25D1E2238(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    *(v1 - 48) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float OU3DKitchenObjectMerger::AlignObjectTopSurface(OU3DKitchenObjectMerger *this, const OUBox3d *a2, OUBox3d *a3)
{
  if (a3)
  {
    for (i = 0; i != 64; i += 16)
    {
      result = *(&a2->var6.var2 + i);
      *(&a3->var6.var2 + i) = result;
    }
  }

  return result;
}

void OU3DKitchenObjectMerger::AlignApplianceWithNewCabinets(OU3DKitchenObjectMerger *this)
{
  v67 = *MEMORY[0x277D85DE8];
  begin = this->new_cabinets_.__begin_;
  for (i = this->new_cabinets_.__end_; begin != i; begin = (begin + 272))
  {
    if (*(begin + 224) == 1)
    {
      HeadingAngle = GetHeadingAngle(begin);
      v5 = this->other_objects_.__begin_;
      end = this->other_objects_.__end_;
      if (v5 != end)
      {
        v6 = HeadingAngle;
        do
        {
          LODWORD(v2) = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(v2, 0.34907, v5, begin, v3);
          if (v2)
          {
            v2 = [*(v5 + 16) isEqualToString:@"Sink"];
            if ((v2 & 1) != 0 || (v7 = vsubq_f32(*v5, *(v5 + 1)), v8 = vmulq_f32(v7, v7), v9 = vsubq_f32(*begin, *(begin + 1)), v10 = vmulq_f32(v9, v9), *v8.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v10, v10, 8uLL), *&vextq_s8(v8, v8, 8uLL)), vadd_f32(vzip1_s32(*v10.i8, *v8.i8), vzip2_s32(*v10.i8, *v8.i8)))), vsub_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).f32[0] < 0.3))
            {
              OU3DKitchenObjectMerger::AlignHeadingAngle(v2, v6, v5);
              v66[0] = @"Oven";
              v11 = @"Stove";
              v66[1] = v11;
              v12 = @"Dishwasher";
              v66[2] = v12;
              v13 = @"Washer";
              v66[3] = v13;
              memset(&v50, 0, 24);
              std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v50, v66, &v67, 4uLL);
              if (v50.var1 == *&v50.var2)
              {
                v17 = 0;
              }

              else
              {
                v14 = *(v5 + 16);
                v15 = v50.var1 + 8;
                do
                {
                  v16 = *(v15 - 1);
                  v17 = v14 == v16;
                  v18 = v14 == v16 || v15 == *&v50.var2;
                  v15 += 8;
                }

                while (!v18);
              }

              v63 = &v50;
              std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v63);
              for (j = 3; j != -1; --j)
              {
              }

              if (v17)
              {
                OU3DKitchenObjectMerger::AlignObjectDepth(v20, v5, begin, &v50);
                v21 = *&v50.var1;
                v22 = *&v50.var3;
                v23 = *&v50.var5.var2;
                *(v5 + 2) = *&v50.var5.var0;
                *(v5 + 3) = v23;
                *v5 = v21;
                *(v5 + 1) = v22;
                v24 = *&v50.var6.var1;
                v25 = *&v50.var7;
                v26 = v52;
                *(v5 + 6) = v51;
                *(v5 + 7) = v26;
                *(v5 + 4) = v24;
                *(v5 + 5) = v25;
                v27 = v53;
                v53 = 0;
                v28 = *(v5 + 16);
                *(v5 + 16) = v27;

                *(v5 + 34) = v54;
                v29 = v55;
                v55 = 0;
                v30 = *(v5 + 18);
                *(v5 + 18) = v29;

                v31 = v56;
                v56 = 0;
                v32 = *(v5 + 19);
                *(v5 + 19) = v31;

                v33 = *(v5 + 20);
                if (v33)
                {
                  *(v5 + 21) = v33;
                  operator delete(v33);
                  *(v5 + 20) = 0;
                  *(v5 + 21) = 0;
                  *(v5 + 22) = 0;
                }

                v34 = *(v5 + 23);
                *(v5 + 10) = *__p;
                *(v5 + 22) = v58;
                __p[0] = 0;
                __p[1] = 0;
                v58 = 0;
                if (v34)
                {
                  operator delete(v34);
                  *(v5 + 23) = 0;
                  *(v5 + 24) = 0;
                  *(v5 + 25) = 0;
                }

                *(v5 + 23) = v59;
                *(v5 + 12) = v60;
                v59 = 0;
                v60 = 0uLL;
                v35 = v61;
                v61 = 0;
                v36 = *(v5 + 26);
                *(v5 + 26) = v35;

                *(v5 + 108) = v62;
                if (v59)
                {
                  operator delete(v59);
                }

                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }
              }

              v37 = @"Sink";
              v65 = v37;
              memset(&v50, 0, 24);
              std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v50, &v65, v66, 1uLL);
              var1 = v50.var1;
              if (v50.var1 == *&v50.var2)
              {
LABEL_32:
                v63 = &v50;
                std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v63);
              }

              else
              {
                while (*(v5 + 16) != *var1)
                {
                  if (++var1 == *&v50.var2)
                  {
                    goto LABEL_32;
                  }
                }

                v63 = &v50;
                std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v63);

                OU3DKitchenObjectMerger::AlignInsideObject(v39, begin, v5);
              }

              v64[0] = v37;
              v64[1] = v11;
              v64[2] = v12;
              v64[3] = v13;
              memset(&v50, 0, 24);
              std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v50, v64, &v65, 4uLL);
              if (v50.var1 == *&v50.var2)
              {
                v43 = 0;
              }

              else
              {
                v40 = *(v5 + 16);
                v41 = v50.var1 + 8;
                do
                {
                  v42 = *(v41 - 1);
                  v43 = v40 == v42;
                  v44 = v40 == v42 || v41 == *&v50.var2;
                  v41 += 8;
                }

                while (!v44);
              }

              v63 = &v50;
              std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v63);
              for (k = 3; k != -1; --k)
              {
              }

              if (v43)
              {
                for (m = 64; m != 128; m += 16)
                {
                  *(v5 + m + 8) = *(begin + m + 8);
                }
              }
            }
          }

          v5 = (v5 + 272);
        }

        while (v5 != end);
      }
    }
  }
}

void sub_25D1E2770(_Unwind_Exception *a1)
{
  for (i = 24; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::AlignStoveWithOven(OU3DKitchenObjectMerger *this)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = 0xF0F0F0F0F0F0F0F1 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = v1 & 0x7FFFFFFF;
    do
    {
      begin = this->other_objects_.__begin_;
      v23 = @"Stove";
      v18 = 0;
      v19 = 0;
      v17 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v17, &v23, &v24, 1uLL);
      v7 = v17;
      if (v17 == v18)
      {
LABEL_6:
        v21 = &v17;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v21);
      }

      else
      {
        while (*(begin + 34 * v4 + 16) != *v7)
        {
          if (++v7 == v18)
          {
            goto LABEL_6;
          }
        }

        v21 = &v17;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v21);

        v8 = 0;
        v9 = 0;
        do
        {
          if (v4 != v9)
          {
            v10 = this->other_objects_.__begin_;
            v22 = @"Oven";
            v18 = 0;
            v19 = 0;
            v17 = 0;
            std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v17, &v22, &v23, 1uLL);
            v11 = v17;
            if (v17 == v18)
            {
LABEL_14:
              v21 = &v17;
              std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v21);
            }

            else
            {
              while (*(v10 + 34 * v9 + 16) != *v11)
              {
                if (++v11 == v18)
                {
                  goto LABEL_14;
                }
              }

              v21 = &v17;
              std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v21);

              v12 = this->other_objects_.__begin_;
              box3dIou(&v17, v12 + 17 * v4, v12 + 17 * v9, 0, v13);
              if (v20 > 0.35 && vabds_f32(*(v12 + 68 * v4 + 2), *(v12 + 68 * v9 + 18)) < 0.4)
              {
                v14 = 0;
                v15 = (v12 + v3);
                v16 = v12 + v8;
                do
                {
                  *v15 = *v16;
                  if (v14 >= 4)
                  {
                    *(v16 + 2) = *(v15 - 14);
                  }

                  ++v14;
                  v15 += 2;
                  v16 += 16;
                }

                while (v14 != 8);
              }
            }
          }

          ++v9;
          v8 += 272;
        }

        while (v9 != v5);
      }

      ++v4;
      v3 += 272;
    }

    while (v4 != v5);
  }
}

void OU3DKitchenObjectMerger::AlignSinkWithDishwasher(OU3DKitchenObjectMerger *this)
{
  v40 = *MEMORY[0x277D85DE8];
  v1 = 0xF0F0F0F0F0F0F0F1 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  if (v1 >= 1)
  {
    v3 = 0;
    v4 = v1 & 0x7FFFFFFF;
    while (1)
    {
      begin = this->other_objects_.__begin_;
      v39 = @"Sink";
      v35 = 0;
      v36 = 0;
      v34 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v34, &v39, &v40, 1uLL);
      v6 = v34;
      if (v34 != v35)
      {
        break;
      }

LABEL_6:
      v33[0] = &v34;
      std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v33);

LABEL_7:
      if (++v3 == v4)
      {
        return;
      }
    }

    while (*(begin + 34 * v3 + 16) != *v6)
    {
      if (++v6 == v35)
      {
        goto LABEL_6;
      }
    }

    v33[0] = &v34;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v33);

    v7 = 0;
    while (1)
    {
      if (v3 == v7)
      {
        goto LABEL_15;
      }

      v8 = this->other_objects_.__begin_;
      v38 = @"Dishwasher";
      v35 = 0;
      v36 = 0;
      v34 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v34, &v38, &v39, 1uLL);
      v9 = v34;
      if (v34 == v35)
      {
LABEL_14:
        v33[0] = &v34;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v33);

        goto LABEL_15;
      }

      while (*(v8 + 34 * v7 + 16) != *v9)
      {
        if (++v9 == v35)
        {
          goto LABEL_14;
        }
      }

      v33[0] = &v34;
      std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](v33);

      v10 = this->other_objects_.__begin_;
      v11 = (v10 + 272 * v3);
      v12 = (v10 + 272 * v7);
      box3dIou(&v34, v11, v12, 0, v13);
      if (v37 <= 0.0)
      {
        goto LABEL_15;
      }

      box3dToCentroidSizeAngle(v33, v11);
      box3dToCentroidSizeAngle(__p, v12);
      if (vabds_f32(*(v33[0] + 6), *(__p[0] + 6)) <= 0.0001)
      {
        v18 = vsubq_f32(*v11, v12[3]);
        v19 = vsubq_f32(v11[3], *v12);
        if (sqrtf(vaddv_f32(*&vmulq_f32(v18, v18))) >= sqrtf(vaddv_f32(*&vmulq_f32(v19, v19))))
        {
          FindLinesIntersect(1, &v34, *v12, v12[1], v11[1], v11[2]);
          if (v36)
          {
            v17 = 0;
            v11[2].i64[0] = v34;
            v25 = v11[2];
            v26 = v11[3];
            v11[3].i32[2] = v26.i32[2];
            v27 = vsubq_f32(*v11, v25).u64[0];
            v26.i64[0] = vsubq_f32(v26, *v11).u64[0];
            v28 = vcvtq_f64_f32(*v26.f32);
            *&v27 = -(vmuls_lane_f32(*(&v27 + 1), *v26.f32, 1) + (*&v27 * v26.f32[0])) / vaddvq_f64(vmulq_f64(v28, v28));
            v29 = vmla_n_f32(*v11->f32, *v26.f32, *&v27);
            *v11[3].f32 = v29;
            v11[6].i64[0] = v25.i64[0];
            *v11[7].f32 = v29;
            goto LABEL_28;
          }
        }

        else
        {
          FindLinesIntersect(1, &v34, v12[3], v12[2], *v11, v11[3]);
          if (v36)
          {
            v17 = 0;
            v11->i64[0] = v34;
            v21 = *v11;
            v20 = v11[1];
            v11[1].i32[2] = v20.i32[2];
            v22 = vsubq_f32(v20, v21).u64[0];
            v23 = vsubq_f32(v11[2], v20).u64[0];
            v24 = vcvtq_f64_f32(v23);
            *&v22 = -(vmuls_lane_f32(*(&v22 + 1), v23, 1) + (*&v22 * v23.f32[0])) / vaddvq_f64(vmulq_f64(v24, v24));
            *v20.f32 = vmla_n_f32(*v20.f32, v23, *&v22);
            v11[1].i64[0] = v20.i64[0];
            v11[4].i64[0] = v21.i64[0];
            v11[5].i64[0] = v20.i64[0];
            goto LABEL_28;
          }
        }

        v17 = 7;
      }

      else
      {
        v16 = _OULoggingGetOSLogForCategoryObjectUnderstanding(v14, v15);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          OU3DKitchenObjectMerger::AlignSinkWithDishwasher(&buf, v31, v16);
        }

        v17 = 1;
      }

LABEL_28:
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v33[0])
      {
        v33[1] = v33[0];
        operator delete(v33[0]);
      }

      if (v17 && v17 != 7)
      {
        return;
      }

LABEL_15:
      if (++v7 == v4)
      {
        goto LABEL_7;
      }
    }
  }
}

void sub_25D1E2EB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

unint64_t OU3DKitchenObjectMerger::UpdateZ(float a1, float a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a5[5];
  if (v10 < 1)
  {
    v16 = *(a4 + 72);
    goto LABEL_24;
  }

  v11 = a5[4];
  v12 = a5[1];
  v13 = *(v12 + (((v10 + v11 - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((v10 + v11 - 1) & 0xF);
  v14 = v11 >> 4;
  if (*(a4 + 224))
  {
    v15 = *(a4 + 8);
    v16 = *(a4 + 72);
    if (a5[2] != v12)
    {
      v17 = (v12 + 8 * v14);
      v18 = *v17 + 272 * (a5[4] & 0xFLL);
      v19 = *(v12 + (((v11 + v10) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((v11 + v10) & 0xF);
      while (v18 != v19)
      {
        v36 = @"Cabinet";
        v32 = 0;
        v33 = 0;
        v31 = 0;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v31, &v36, &v37, 1uLL);
        v20 = v31;
        if (v31 == v32)
        {
LABEL_8:
          v34 = &v31;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v34);

          if (v15 < *(v18 + 72))
          {
            v15 = *(v18 + 72);
          }

          if (*(v18 + 8) < v16)
          {
            v16 = *(v18 + 8);
          }
        }

        else
        {
          while (*(v18 + 128) != *v20)
          {
            if (++v20 == v32)
            {
              goto LABEL_8;
            }
          }

          v34 = &v31;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v34);
        }

        v18 += 272;
        if (v18 - *v17 == 4352)
        {
          v21 = v17[1];
          ++v17;
          v18 = v21;
        }
      }
    }

    if (*(v13 + 224))
    {
      v22 = *(a4 + 72);
      v35 = @"Cabinet";
      v32 = 0;
      v33 = 0;
      v31 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v31, &v35, &v36, 1uLL);
      v23 = v31;
      if (v31 == v32)
      {
LABEL_21:
        v34 = &v31;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v34);
      }

      else
      {
        while (*(v13 + 128) != *v23)
        {
          if (++v23 == v32)
          {
            goto LABEL_21;
          }
        }

        v34 = &v31;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v34);

        v16 = *(v13 + 72);
        if ((v16 - *(a4 + 72)) > 0.5)
        {
          goto LABEL_44;
        }
      }

      v16 = v22;
      goto LABEL_44;
    }

LABEL_24:
    v15 = *(a4 + 8);
    goto LABEL_44;
  }

  v15 = *(v13 + 8);
  if (a5[2] != v12)
  {
    v24 = (v12 + 8 * v14);
    v25 = *v24 + 272 * (a5[4] & 0xFLL);
    v26 = *(v12 + (((v11 + v10) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((v11 + v10) & 0xF);
    while (v25 != v26)
    {
      v38 = @"Cabinet";
      v32 = 0;
      v33 = 0;
      v31 = 0;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v31, &v38, &v39, 1uLL);
      v27 = v31;
      if (v31 == v32)
      {
LABEL_30:
        v34 = &v31;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v34);

        if (v15 < *(v25 + 72))
        {
          v15 = *(v25 + 72);
        }
      }

      else
      {
        while (*(v25 + 128) != *v27)
        {
          if (++v27 == v32)
          {
            goto LABEL_30;
          }
        }

        v34 = &v31;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v34);
      }

      v25 += 272;
      if (v25 - *v24 == 4352)
      {
        v28 = v24[1];
        ++v24;
        v25 = v28;
      }
    }
  }

  if (([*(v13 + 152) isEqualToString:@"online"] & 1) == 0 || *(v13 + 224) != 1)
  {
LABEL_43:
    v16 = *(a4 + 72);
    goto LABEL_44;
  }

  v37 = @"Cabinet";
  v32 = 0;
  v33 = 0;
  v31 = 0;
  std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v31, &v37, &v38, 1uLL);
  v29 = v31;
  if (v31 == v32)
  {
LABEL_42:
    v34 = &v31;
    std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v34);

    goto LABEL_43;
  }

  while (*(v13 + 128) != *v29)
  {
    if (++v29 == v32)
    {
      goto LABEL_42;
    }
  }

  v34 = &v31;
  std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v34);

  v16 = *(v13 + 72);
LABEL_44:
  if ((a6 & 1) == 0)
  {
    if (vabds_f32(v15, a2) <= 0.1)
    {
      v15 = a2;
    }

    if (vabds_f32(v16, a1) <= 0.1)
    {
      v16 = a1;
    }
  }

  return LODWORD(v16) | (LODWORD(v15) << 32);
}

void OU3DKitchenObjectMerger::FuseAndCarve(OU3DKitchenObjectMerger *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v141 = *MEMORY[0x277D85DE8];
  v4 = 0xF0F0F0F0F0F0F0F1 * ((this->new_cabinets_.__end_ - this->new_cabinets_.__begin_) >> 4);
  if (v4 >= 1)
  {
    v5 = this;
    v6 = 0;
    v96 = v4 & 0x7FFFFFFF;
    do
    {
      v7 = v5->new_cabinets_.__begin_ + 272 * v6;
      v124 = 0;
      v125 = 0;
      v126 = 0;
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v8 = *(v7 + 16);
      v9 = *(v7 + 48);
      v10 = 0xF0F0F0F0F0F0F0F1 * ((v5->old_cabinets_.__end_ - v5->old_cabinets_.__begin_) >> 4);
      v99 = v8;
      v107 = *(v7 + 32);
      v11 = vsub_f32(*v107.f32, *v8.i8);
      if (v10 >= 1)
      {
        v12 = 0;
        v13 = v10 & 0x7FFFFFFF;
        do
        {
          begin = v5->old_cabinets_.__begin_;
          this = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, (v5->old_cabinets_.__begin_ + v12), v7, a4);
          if (this)
          {
            v101 = *(begin + v12 + 16);
            v104 = *(begin + v12 + 32);
            std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v124, (begin + v12));
            LODWORD(v127.var1) = 2;
            std::vector<int>::push_back[abi:ne200100](&v121, &v127);
            v15 = vsubq_f32(v107, v104);
            v16 = sqrtf(vaddv_f32(*&vmulq_f32(v15, v15)));
            if (vaddv_f32(vmul_f32(v11, *v15.f32)) >= 0.0)
            {
              v17 = v16;
            }

            else
            {
              v17 = -v16;
            }

            *&v127.var1 = v17;
            std::vector<float>::push_back[abi:ne200100](&v118, &v127);
            std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v124, (begin + v12));
            LODWORD(v112) = 1;
            std::vector<int>::push_back[abi:ne200100](&v121, &v112);
            v18 = vsubq_f32(v107, v101);
            v19 = sqrtf(vaddv_f32(*&vmulq_f32(v18, v18)));
            if (vaddv_f32(vmul_f32(v11, *v18.f32)) >= 0.0)
            {
              v20 = v19;
            }

            else
            {
              v20 = -v19;
            }

            *&v112 = v20;
            std::vector<float>::push_back[abi:ne200100](&v118, &v112);
          }

          v12 += 272;
          --v13;
        }

        while (v13);
      }

      v21 = 0xF0F0F0F0F0F0F0F1 * ((v5->other_objects_.__end_ - v5->other_objects_.__begin_) >> 4);
      if (v21 >= 1)
      {
        v22 = 0;
        v23 = v21 & 0x7FFFFFFF;
        do
        {
          v24 = v5->other_objects_.__begin_ + 272 * v22;
          LOBYTE(this) = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, v24, v7, a4);
          if (this)
          {
            v25 = vsubq_f32(*v24, *(v24 + 16));
            v8 = vmulq_f32(v25, v25);
            v26 = vsubq_f32(*v7, *(v7 + 16));
            v27 = vmulq_f32(v26, v26);
            *v8.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v27, v27, 8uLL), *&vextq_s8(v8, v8, 8uLL)), vadd_f32(vzip1_s32(*v27.i8, *v8.i8), vzip2_s32(*v27.i8, *v8.i8))));
            *v8.i32 = vsub_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).f32[0];
            if (*v8.i32 < 0.3)
            {
              this = std::__tree<int>::__emplace_unique_key_args<int,int const&>(v24 + 240, (v7 + 232), (v7 + 232));
              {
LABEL_21:
                v102 = *(v24 + 16);
                v105 = *(v24 + 32);
                std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v124, v24);
                LODWORD(v127.var1) = 2;
                std::vector<int>::push_back[abi:ne200100](&v121, &v127);
                v29 = vsubq_f32(v107, v105);
                v30 = sqrtf(vaddv_f32(*&vmulq_f32(v29, v29)));
                if (vaddv_f32(vmul_f32(v11, *v29.f32)) >= 0.0)
                {
                  v31 = v30;
                }

                else
                {
                  v31 = -v30;
                }

                *&v127.var1 = v31;
                std::vector<float>::push_back[abi:ne200100](&v118, &v127);
                std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v124, v24);
                LODWORD(v112) = 1;
                std::vector<int>::push_back[abi:ne200100](&v121, &v112);
                v32 = vsubq_f32(v107, v102);
                v33 = sqrtf(vaddv_f32(*&vmulq_f32(v32, v32)));
                if (vaddv_f32(vmul_f32(v11, *v32.f32)) >= 0.0)
                {
                  v34 = v33;
                }

                else
                {
                  v34 = -v33;
                }

                *&v112 = v34;
                std::vector<float>::push_back[abi:ne200100](&v118, &v112);
              }

              else
              {
                while (*(v24 + 128) != *v28)
                {
                  if (++v28 == qword_28155A9D8)
                  {
                    goto LABEL_21;
                  }
                }
              }
            }
          }

          ++v22;
        }

        while (v22 != v23);
      }

      if (v124 == v125)
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v5->fused_cabinets_, v7);
      }

      else
      {
        v116 = 0uLL;
        var3 = 0;
        OU3DKitchenObjectMerger::SortBasedOnDistance(&v118, &v124, &v121, &v127, *v8.i32);
        std::vector<OU3DKitchenObject>::__vdeallocate(&v116);
        v116 = *&v127.var1;
        var4 = v127.var4;
        var3 = v127.var3;
        memset(&v127, 0, 48);
        *&v112 = &v127;
        std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v112);
        v115 = *v107.f32;
        v106 = *(v7 + 72);
        v103 = *(v7 + 8);
        v113 = 0u;
        v114 = 0u;
        v112 = 0u;
        v35 = 0xF0F0F0F0F0F0F0F1 * ((*(&v116 + 1) - v116) >> 4);
        v36 = vsub_f32(v9, *v107.f32);
        if (v35 >= 1)
        {
          v95 = v6;
          v37 = 0;
          v98 = (v35 - 1);
          v38 = v35 & 0x7FFFFFFF;
          v39 = 1;
          while (1)
          {
            v40 = (v116 + 272 * v37);
            if (var4[v37] == 2)
            {
              IsSimilarHeight = std::deque<OU3DKitchenObject>::push_back(&v112, (v116 + 272 * v37));
              v42 = v40[4];
              v43 = v40 + 6;
            }

            else
            {
              if (v113 == *(&v112 + 1))
              {
                goto LABEL_63;
              }

              v45 = (*(&v112 + 1) + 8 * (v114 >> 4));
              v46 = *v45 + 272 * (v114 & 0xF);
              v47 = *(*(&v112 + 1) + (((*(&v114 + 1) + v114) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((DWORD2(v114) + v114) & 0xF);
              if (v46 == v47)
              {
                goto LABEL_63;
              }

              v48 = v40[29].u32[0];
              while (v48 != *(v46 + 232))
              {
                v46 += 272;
                if (v46 - *v45 == 4352)
                {
                  v49 = v45[1];
                  ++v45;
                  v46 = v49;
                }

                if (v46 == v47)
                {
                  goto LABEL_63;
                }
              }

              if (v48 != *(*(*(&v112 + 1) + (((v114 + *(&v114 + 1) - 1) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((v114 + DWORD2(v114) - 1) & 0xF) + 232))
              {
                {
LABEL_54:
                  std::deque<OU3DKitchenObject>::__move_assign(&v112, &v127);
                  std::deque<OU3DKitchenObject>::~deque[abi:ne200100](&v127);
                  goto LABEL_63;
                }

                while (*&v40[16] != *v52)
                {
                  if (++v52 == qword_28155B160)
                  {
                    goto LABEL_54;
                  }
                }
              }

              std::deque<OU3DKitchenObject>::__move_assign(&v112, &v127);
              IsSimilarHeight = std::deque<OU3DKitchenObject>::~deque[abi:ne200100](&v127);
              v42 = v40[2];
              v43 = v40;
            }

            v44 = vsub_f32(v115, v42);
            if (vaddv_f32(vmul_f32(vsub_f32(v115, *v99.i8), v44)) >= 0.000001)
            {
              v50 = *v43;
              if (sqrtf(vaddv_f32(vmul_f32(v44, v44))) >= 0.1)
              {
                goto LABEL_120;
              }

              {
                while (*&v40[16] != *v51)
                {
                  if (++v51 == qword_28155B160)
                  {
                    goto LABEL_62;
                  }
                }

                if (var4[v37] == 1)
                {
LABEL_120:
                  if (v37)
                  {
                    {
                      v54 = v116 + 272 * (v37 - 1);
                      while (*(v54 + 128) != *v53)
                      {
                        if (++v53 == qword_28155B160)
                        {
                          goto LABEL_68;
                        }
                      }

                      if (var4[v37 - 1] == 1)
                      {
                        IsSimilarHeight = OU3DKitchenObjectMerger::IsSimilarHeight(IsSimilarHeight, (v116 + 272 * (v37 - 1)), v7, 0.8);
                        if ((IsSimilarHeight & v39) == 1)
                        {
                          v127.var1 = 0;
                          *&v127.var2 = 0;
                          v127.var1 = *(v54 + 16);
                          *&v127.var2 = *v54;
                          v110 = *v107.f32;
                          v111 = v99.i64[0];
                          IsSimilarHeight = OU::intersect(&v127, &v110, &v115);
                        }
                      }
                    }
                  }

LABEL_68:
                  {
                    v59 = 0;
                  }

                  else
                  {
                    v56 = v40[16];
                    do
                    {
                      v58 = *(v57 - 8);
                      v59 = *&v56 == v58;
                      v60 = *&v56 == v58 || v57 == qword_28155B160;
                      v57 += 8;
                    }

                    while (!v60);
                  }

                  OU3DKitchenObjectMerger::UpdateZ(v106, v103, IsSimilarHeight, v7, &v112, v59);
                  v39 = v61;
                  if ((v61 & 1) == 0 && v37 != v98)
                  {
                    goto LABEL_63;
                  }

                  v110 = v42;
                  v111 = v50;
                  v109[0] = *v107.f32;
                  v109[1] = *v99.i8;
                  v108 = 0;
                  OU::intersect(&v110, v109, &v108);
                  v62 = v115;
                  v63 = v108;
                  OUBox3d::OUBox3d(&v127, v7);
                  v64 = *(v7 + 224);
                  v138 = *(v7 + 232);
                  v137 = v64;
                  v65 = std::set<int>::set[abi:ne200100](&v139, v7 + 240);
                  *&v66 = vadd_f32(v36, v63);
                  *&v67 = vadd_f32(v36, v62);
                  v68 = v66;
                  *(&v68 + 2) = v103;
                  *&v69 = v108;
                  v70 = v69;
                  *(&v70 + 2) = v103;
                  *&v127.var1 = v68;
                  *&v127.var3 = v70;
                  *&v71 = v115;
                  v72 = v71;
                  *(&v72 + 2) = v103;
                  v73 = v67;
                  *(&v73 + 2) = v103;
                  *&v127.var5.var0 = v72;
                  *&v127.var5.var2 = v73;
                  v97 = v66;
                  v74 = v66;
                  *(&v74 + 2) = v106;
                  *(&v69 + 2) = v106;
                  *&v127.var6.var1 = v74;
                  *&v127.var7 = v69;
                  *(&v71 + 2) = v106;
                  *(&v67 + 2) = v106;
                  v128 = v71;
                  v129 = v67;
                  v75 = OU3DKitchenObjectMerger::UpdateZ(v106, v103, v65, v7, &v112, v59);
                  v39 = v76;
                  if (OU3DKitchenObjectMerger::IsValidCabinet(v75, &v127, 0.15))
                  {
                    std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v5->fused_cabinets_, &v127);
                    goto LABEL_87;
                  }

                  if (*(&v114 + 1))
                  {
                    if (boxVolume(&v127) > 0.1 && vabds_f32(*&v75, *(&v75 + 1)) >= vabds_f32(v106, v103))
                    {
                      v79 = v108;
                      v115 = v108;
                      end = v5->fused_cabinets_.__end_;
                      if (v5->fused_cabinets_.__begin_ != end && *(end - 10) == v138)
                      {
                        *(end - 34) = v97;
                        *(end - 32) = v79;
                        *(end - 26) = v97;
                        *(end - 24) = v79;
                      }
                    }

                    else
                    {
                      v77 = boxVolume(&v127);
                      v78 = v59 ^ 1;
                      if (v77 >= 0.05)
                      {
                        v78 = 1;
                      }

                      if ((v78 & 1) == 0)
                      {
                        goto LABEL_87;
                      }
                    }
                  }

                  else
                  {
LABEL_87:
                    v115 = v108;
                  }

                  std::__tree<int>::destroy(&v139, v140);

                  if (__p)
                  {
                    operator delete(__p);
                  }

                  if (v133)
                  {
                    v134 = v133;
                    operator delete(v133);
                  }

                  v103 = *(&v75 + 1);
                  v106 = *&v75;
                  goto LABEL_63;
                }
              }
            }

LABEL_62:
            v55 = OU3DKitchenObjectMerger::UpdateZ(v106, v103, IsSimilarHeight, v7, &v112, 0);
            v103 = *(&v55 + 1);
            v106 = *&v55;
LABEL_63:
            if (++v37 == v38)
            {
              v81 = v115;
              v6 = v95;
              goto LABEL_98;
            }
          }
        }

        LOBYTE(v39) = 1;
        v81 = *v107.f32;
LABEL_98:
        if (vaddv_f32(vmul_f32(v11, vsub_f32(v81, *v99.i8))) >= 0.000001)
        {
          OUBox3d::OUBox3d(&v127, v7);
          v82 = *(v7 + 224);
          v138 = *(v7 + 232);
          v137 = v82;
          v83 = std::set<int>::set[abi:ne200100](&v139, v7 + 240);
          *&v85 = v115;
          *(&v86 + 1) = v99.i64[1];
          *&v86 = vadd_f32(*v99.i8, v36);
          if ((v39 & 1) != 0 || (v87 = v5->fused_cabinets_.__end_, v87 == v5->fused_cabinets_.__begin_) || *(v87 - 10) != v138)
          {
            *&v84 = vadd_f32(v36, v115);
            v88 = *(v7 + 72);
            v89 = *(v7 + 8);
            v90 = v86;
            DWORD2(v90) = v89;
            v91 = v99;
            v92 = v99;
            v92.i32[2] = v89;
            v93 = v85;
            DWORD2(v93) = v89;
            *&v127.var1 = v90;
            *&v127.var3 = v92;
            v94 = v84;
            DWORD2(v94) = v89;
            *&v127.var5.var0 = v93;
            *&v127.var5.var2 = v94;
            DWORD2(v86) = v88;
            v91.i32[2] = v88;
            *&v127.var6.var1 = v86;
            *&v127.var7 = v91;
            DWORD2(v85) = v88;
            DWORD2(v84) = v88;
            v128 = v85;
            v129 = v84;
            if (OU3DKitchenObjectMerger::IsValidCabinet(v83, &v127, 0.25))
            {
              std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v5->fused_cabinets_, &v127);
            }
          }

          else
          {
            *(v87 - 34) = v86;
            *(v87 - 32) = v99.i64[0];
            *(v87 - 26) = v86;
            *(v87 - 24) = v99.i64[0];
          }

          std::__tree<int>::destroy(&v139, v140);

          if (__p)
          {
            operator delete(__p);
          }

          if (v133)
          {
            v134 = v133;
            operator delete(v133);
          }
        }

        std::deque<OU3DKitchenObject>::~deque[abi:ne200100](&v112);
        if (var4)
        {
          operator delete(var4);
        }

        v127.var1 = &v116;
        std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v127);
      }

      if (v118)
      {
        v119 = v118;
        operator delete(v118);
      }

      if (v121)
      {
        v122 = v121;
        operator delete(v121);
      }

      v127.var1 = &v124;
      std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v127);
      ++v6;
    }

    while (v6 != v96);
  }
}

void sub_25D1E3F64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__pa, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, OUBox3d *a42, OUBox3d *a43, uint64_t a44, void *a45, void *a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t *a51)
{
  std::deque<OU3DKitchenObject>::~deque[abi:ne200100](&a31);
  operator delete(__pa);
  a51 = &a39;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a51);
  if (a42)
  {
    a43 = a42;
    operator delete(a42);
  }

  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  a51 = &a48;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a51);
  _Unwind_Resume(a1);
}

uint64_t std::vector<OU3DKitchenObject>::push_back[abi:ne200100](uint64_t *a1, OUBox3d *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OU3DKitchenObject>::__emplace_back_slow_path<OU3DKitchenObject const&>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject const&,void,0>(a1, a1[1], a2);
    result = v3 + 272;
    a1[1] = v3 + 272;
  }

  a1[1] = result;
  return result;
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

void std::vector<float>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

char **OU3DKitchenObjectMerger::SortBasedOnDistance@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>, float a5@<S0>)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a1[1] - *a1;
  if (0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 4) != v5 >> 2 || (v6 = a3, v5 != a3[1] - *a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "[3DOD] Input data size doesn't match.");
    __cxa_throw(exception, off_2799C3FC0, MEMORY[0x277D82610]);
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v7 = (v5 >> 2) & 0x7FFFFFFF;
  v30 = v5 >> 2;
  if ((v5 >> 2) < 1)
  {
    v21 = 0;
    v20 = 0;
  }

  else
  {
    v8 = a2;
    v9 = a1;
    v28 = v5;
    v10 = 0;
    do
    {
      LODWORD(v38) = *(*v9 + 4 * v10);
      v11 = *v8 + 272 * v10;
      OUBox3d::OUBox3d(&v39, v11);
      v12 = *(v11 + 224);
      v48 = *(v11 + 232);
      v47 = v12;
      std::set<int>::set[abi:ne200100](v49, v11 + 240);
      v50 = *(*v6 + 4 * v10);
      if (v36 >= v37)
      {
        v14 = 0x86BCA1AF286BCA1BLL * ((v36 - v35) >> 4) + 1;
        if (v14 > 0xD79435E50D7943)
        {
          std::vector<float>::__throw_length_error[abi:ne200100]();
        }

        if (0xD79435E50D79436 * ((v37 - v35) >> 4) > v14)
        {
          v14 = 0xD79435E50D79436 * ((v37 - v35) >> 4);
        }

        if (0x86BCA1AF286BCA1BLL * ((v37 - v35) >> 4) >= 0x6BCA1AF286BCA1)
        {
          v15 = 0xD79435E50D7943;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          if (v15 <= 0xD79435E50D7943)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v16 = 16 * ((v36 - v35) >> 4);
        std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::construct[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v16, &v38);
        v17 = v35;
        if (v36 != v35)
        {
          v18 = v35;
          v19 = (v16 + v35 - v36);
          do
          {
            std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::construct[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v19, v18);
            v18 += 304;
            v19 += 304;
          }

          while (v18 != v36);
          v8 = a2;
          v6 = a3;
          do
          {
            std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::destroy[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v17);
            v17 += 304;
          }

          while (v17 != v36);
          v17 = v35;
        }

        v13 = (v16 + 304);
        v35 = (16 * ((v36 - v35) >> 4) + v35 - v36);
        v36 = (v16 + 304);
        v37 = 0;
        if (v17)
        {
          operator delete(v17);
        }

        v9 = a1;
      }

      else
      {
        std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::construct[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v36, &v38);
        v13 = v36 + 304;
      }

      v36 = v13;
      std::__tree<int>::destroy(v49, v49[1]);

      if (__p)
      {
        operator delete(__p);
      }

      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      ++v10;
    }

    while (v10 != v7);
    v20 = v35;
    v21 = v36;
    v5 = v28;
  }

  v22 = 126 - 2 * __clz(0x86BCA1AF286BCA1BLL * ((v21 - v20) >> 4));
  if (v21 == v20)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  std::__introsort<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,false>(v20, v21, v23, 1, a5);
  v38 = 0uLL;
  v24 = (v5 >> 2);
  v39.var1 = 0;
  std::vector<OU3DKitchenObject>::reserve(&v38, v24);
  memset(&v34, 0, sizeof(v34));
  std::vector<int>::reserve(&v34, v24);
  if (v30 >= 1)
  {
    v25 = 288;
    do
    {
      std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v38, &v35[v25 - 272]);
      std::vector<int>::push_back[abi:ne200100](&v34.__begin_, &v35[v25]);
      v25 += 304;
      --v7;
    }

    while (v7);
  }

  *a4 = v38;
  *(a4 + 16) = v39.var1;
  v39.var1 = 0;
  v38 = 0uLL;
  *(a4 + 24) = v34;
  v34.__begin_ = &v38;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v34);
  return std::vector<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::~vector[abi:ne200100](&v35);
}

void sub_25D1E46B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  __p = &a21;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::vector<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::~vector[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void *std::deque<OU3DKitchenObject>::push_back(unint64_t *a1, OUBox3d *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 2 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<OU3DKitchenObject>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject const&,void,0>(a1, (*(v5 + ((v7 >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * (v7 & 0xF)), a2);
  ++a1[5];
  return result;
}

void *anonymous namespace::DequeEraseTarget@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v4 = a2[1];
  if (a2[2] != v4)
  {
    v5 = a2[4];
    v6 = (v4 + 8 * (v5 >> 4));
    v7 = *v6 + 272 * (v5 & 0xF);
    v8 = *(v4 + (((a2[5] + v5) >> 1) & 0x7FFFFFFFFFFFFFF8)) + 272 * ((*(a2 + 10) + v5) & 0xF);
    if (v7 != v8)
    {
      v9 = result;
      do
      {
        if (*(v7 + 232) != v9)
        {
          result = std::deque<OU3DKitchenObject>::push_back(a3, v7);
        }

        v7 += 272;
        if (v7 - *v6 == 4352)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
    }
  }

  return result;
}

BOOL OU3DKitchenObjectMerger::IsValidCabinet(OU3DKitchenObjectMerger *this, float32x4_t *a2, float a3)
{
  if (a2[4].f32[2] < a2->f32[2])
  {
    return 0;
  }

  v4 = vsubq_f32(*a2, a2[3]);
  v5 = vmulq_f32(v4, v4);
  if (sqrtf(v5.f32[2] + vaddv_f32(*v5.f32)) < a3)
  {
    return 0;
  }

  box3dToCentroidSizeAngle(__p, a2);
  v7 = *(__p[0] + 5);
  if (v7 >= *(__p[0] + 4))
  {
    v7 = *(__p[0] + 4);
  }

  if (v7 >= *(__p[0] + 3))
  {
    v7 = *(__p[0] + 3);
  }

  v6 = v7 >= a3;
  __p[1] = __p[0];
  operator delete(__p[0]);
  return v6;
}

void OU3DKitchenObject::~OU3DKitchenObject(OU3DKitchenObject *this)
{
  std::__tree<int>::destroy(this + 240, *(this + 31));

  v2 = *(this + 23);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }
}

uint64_t OU3DKitchenObjectMerger::AddNonIntersectingOldDetections(OU3DKitchenObjectMerger *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = this;
  v34[4] = *MEMORY[0x277D85DE8];
  v5 = -252645135 * ((this->old_cabinets_.__end_ - this->old_cabinets_.__begin_) >> 4);
  p_new_cabinets = &this->new_cabinets_;
  begin = this->new_cabinets_.__begin_;
  end = this->new_cabinets_.__end_;
  v20 = 0u;
  v21 = 0u;
  LODWORD(v22) = 1065353216;
  LODWORD(v23) = 0;
  if (v5 <= 0)
  {
    memset(&v24, 0, 24);
  }

  else
  {
    v9 = 0;
    v10 = (end - begin) >> 4;
    v11 = -252645135 * v10;
    v12 = (0xF0F0F0F0F0F0F0F1 * v10) & 0x7FFFFFFF;
    do
    {
      if (v11 < 1)
      {
LABEL_8:
        v15 = *v4 + 272 * v9;
        OUBox3d::OUBox3d(&v24, v15);
        v16 = *(v15 + 224);
        v33 = *(v15 + 232);
        v32 = v16;
        std::set<int>::set[abi:ne200100](v34, v15 + 240);
        v17 = [@"offline" copy];
        v18 = v27;
        v27 = v17;

        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](p_new_cabinets, &v24);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v20, &v23, &v23);
        std::__tree<int>::destroy(v34, v34[1]);

        if (__p)
        {
          operator delete(__p);
        }

        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }
      }

      else
      {
        v13 = 0;
        v14 = v12;
        while (1)
        {
          LOBYTE(this) = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, (*v4 + 272 * v23), (v4[3] + v13), a4);
          if (this)
          {
            break;
          }

          v13 += 272;
          if (!--v14)
          {
            v9 = v23;
            goto LABEL_8;
          }
        }
      }

      v9 = v23 + 1;
      LODWORD(v23) = v9;
    }

    while (v9 < v5);
    memset(&v24, 0, 24);
    LODWORD(v23) = 0;
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v20, &v23))
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v24, (*v4 + 272 * v23));
      }

      LODWORD(v23) = v23 + 1;
    }

    while (v23 < v5);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(v4);
  *v4 = *&v24.var1;
  v4[2] = v24.var3;
  v23 = &v24;
  memset(&v24, 0, 24);
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v23);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v20);
}

void sub_25D1E4C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, OUBox3d *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15)
{
  a14 = &a15;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<OU3DKitchenObject>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OU3DKitchenObject>::__emplace_back_slow_path<OU3DKitchenObject>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject,void,0>(a1, a1[1], a2);
    result = v3 + 272;
    a1[1] = v3 + 272;
  }

  a1[1] = result;
  return result;
}

uint64_t OU3DKitchenObjectMerger::RemoveDuplicateFusedCabinets(OU3DKitchenObjectMerger *this)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 1065353216;
  p_fused_cabinets = &this->fused_cabinets_;
  v3 = -252645135 * ((this->fused_cabinets_.__end_ - this->fused_cabinets_.__begin_) >> 4);
  LODWORD(v14) = 0;
  if (v3 < 1)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v4 = 0;
      v10 = 0;
      do
      {
        if (v14 != v4 && !std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v11, &v10))
        {
          box3dIou(&v8, (*p_fused_cabinets + 272 * v14), (*p_fused_cabinets + 272 * v10), 0, v5);
          if (*&v9 > 0.5)
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(&v11, &v14, &v14);
          }
        }

        v4 = v10 + 1;
        v10 = v4;
      }

      while (v4 < v3);
      LODWORD(v14) = v14 + 1;
    }

    while (v14 < v3);
    v6 = *(&v12 + 1);
  }

  v8 = 0uLL;
  v9 = 0;
  std::vector<OU3DKitchenObject>::reserve(&v8, v3 - v6);
  LODWORD(v14) = 0;
  if (v3 >= 1)
  {
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v11, &v14))
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v8, (*p_fused_cabinets + 272 * v14));
      }

      LODWORD(v14) = v14 + 1;
    }

    while (v14 < v3);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(p_fused_cabinets);
  *&this->fused_cabinets_.__begin_ = v8;
  this->fused_cabinets_.__cap_ = v9;
  v9 = 0;
  v8 = 0uLL;
  v14 = &v8;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v14);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v11);
}

void sub_25D1E4E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  *(v16 - 56) = &a9;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100]((v16 - 56));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<OU3DKitchenObject>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0xF0F0F0F0F0F0F1)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25D1E4F90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t OU3DKitchenObjectMerger::RemoveDuplicateTableCabinet(OU3DKitchenObjectMerger *this)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v18 = 1065353216;
  p_other_objects = &this->other_objects_;
  v3 = -252645135 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  begin = this->fused_cabinets_.__begin_;
  end = this->fused_cabinets_.__end_;
  v16 = 0;
  if (v3 <= 0)
  {
    v14 = 0uLL;
    v15 = 0;
  }

  else
  {
    v6 = 0;
    v7 = -252645135 * ((end - begin) >> 4);
    do
    {
      v8 = *p_other_objects;
      v20 = @"Table";
      v15 = 0;
      v14 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v14, &v20, &v21, 1uLL);
      v9 = v14;
      if (v14 == *(&v14 + 1))
      {
LABEL_7:
        v19 = &v14;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v19);
      }

      else
      {
        v10 = (v8 + 272 * v6);
        while (v10[8].i64[0] != *v9)
        {
          if (++v9 == *(&v14 + 1))
          {
            goto LABEL_7;
          }
        }

        v19 = &v14;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v19);

        if (v7 >= 1)
        {
          v12 = 0;
          do
          {
            box3dIou(&v14, (this->fused_cabinets_.__begin_ + v12), v10, 0, v11);
            if (*(&v14 + 3) > 0.5)
            {
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v17, &v16, &v16);
            }

            v12 += 272;
          }

          while (272 * v7 != v12);
        }
      }

      v6 = v16 + 1;
      v16 = v6;
    }

    while (v6 < v3);
    v14 = 0uLL;
    v15 = 0;
    LODWORD(v19) = 0;
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v17, &v19))
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v14, (*p_other_objects + 272 * v19));
      }

      LODWORD(v19) = v19 + 1;
    }

    while (v19 < v3);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(p_other_objects);
  *&this->other_objects_.__begin_ = v14;
  this->other_objects_.__cap_ = v15;
  v15 = 0;
  v14 = 0uLL;
  v19 = &v14;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v19);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v17);
}

void sub_25D1E5210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22)
{
  a22 = &a9;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a22);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a17);
  _Unwind_Resume(a1);
}

uint64_t OU3DKitchenObjectMerger::RemoveDuplicateWasherCabinet(OU3DKitchenObjectMerger *this)
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v15, 0, sizeof(v15));
  v16 = 1065353216;
  p_fused_cabinets = &this->fused_cabinets_;
  v3 = 0xF0F0F0F0F0F0F0F1 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  v4 = -252645135 * ((this->fused_cabinets_.__end_ - this->fused_cabinets_.__begin_) >> 4);
  if (v3 >= 1)
  {
    v5 = 0;
    v6 = v3 & 0x7FFFFFFF;
    do
    {
      begin = this->other_objects_.__begin_;
      v18 = @"Washer";
      v14 = 0;
      v13 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v13, &v18, &v19, 1uLL);
      v8 = v13;
      if (v13 == *(&v13 + 1))
      {
LABEL_7:
        v17 = &v13;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      else
      {
        v9 = (begin + 272 * v5);
        while (v9[8].i64[0] != *v8)
        {
          if (++v8 == *(&v13 + 1))
          {
            goto LABEL_7;
          }
        }

        v17 = &v13;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v17);

        LODWORD(v17) = 0;
        if (v4 > 0)
        {
          for (i = 0; i < v4; LODWORD(v17) = i)
          {
            box3dIou(&v13, v9, (*p_fused_cabinets + 272 * i), 0, v10);
            if (*&v14 > 0.5)
            {
              std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v15, &v17, &v17);
            }

            i = v17 + 1;
          }
        }
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v13 = 0uLL;
  v14 = 0;
  LODWORD(v17) = 0;
  if (v4 >= 1)
  {
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v15, &v17))
      {
        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v13, (*p_fused_cabinets + 272 * v17));
      }

      LODWORD(v17) = v17 + 1;
    }

    while (v17 < v4);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(p_fused_cabinets);
  *&this->fused_cabinets_.__begin_ = v13;
  this->fused_cabinets_.__cap_ = v14;
  v14 = 0;
  v13 = 0uLL;
  v17 = &v13;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v17);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v15);
}

void sub_25D1E54B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20)
{
  a20 = &a9;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a20);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a15);
  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::RemoveLargePotentialFPNewCabinets(OU3DKitchenObjectMerger *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0uLL;
  v13 = 0;
  begin = this->new_cabinets_.__begin_;
  end = this->new_cabinets_.__end_;
  for (i = &this->new_cabinets_; begin != end; begin = (begin + 272))
  {
    if ((*(begin + 18) - *(begin + 2)) > 1.2)
    {
      v8 = this->old_cabinets_.__begin_;
      v9 = this->old_cabinets_.__end_;
      v10 = 0.0;
      while (v8 != v9)
      {
        box3dIou(v11, v8, begin, 0, a4);
        v10 = v10 + *(v11 + 1);
        v8 = (v8 + 272);
      }

      if ((v10 / boxVolume(begin)) < 0.6)
      {
        continue;
      }
    }

    std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v12, begin);
  }

  std::vector<OU3DKitchenObject>::__vdeallocate(i);
  *&this->new_cabinets_.__begin_ = v12;
  this->new_cabinets_.__cap_ = v13;
  v13 = 0;
  v12 = 0uLL;
  v11[0] = &v12;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](v11);
}

void sub_25D1E5624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a9 = &a15;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::Merge(OU3DKitchenObjectMerger *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OU3DKitchenObjectMerger::RemoveLargePotentialFPNewCabinets(this, a2, a3, a4);
  OU3DKitchenObjectMerger::AlignNewCabinetsExtentsWithOldDetections(this, v5, v6, v7);
  OU3DKitchenObjectMerger::AlignApplianceWithNewCabinets(this);
  OU3DKitchenObjectMerger::AlignStoveWithOven(this);
  OU3DKitchenObjectMerger::AlignSinkWithDishwasher(this);
  OU3DKitchenObjectMerger::AddNonIntersectingOldDetections(this, v8, v9, v10);
  OU3DKitchenObjectMerger::FuseAndCarve(this, v11, v12, v13);
  OU3DKitchenObjectMerger::RemoveDuplicateFusedCabinets(this);
  OU3DKitchenObjectMerger::RemoveDuplicateTableCabinet(this);
  OU3DKitchenObjectMerger::RemoveDuplicateWasherCabinet(this);
  OU3DKitchenObjectMerger::UnifyHeightsAlignObjects(this, v14, v15, v16);
  OU3DKitchenObjectMerger::ComputeGroupIds(this);

  OU3DKitchenObjectMerger::AssignUUIDForFusedObjects(this);
}

void OU3DKitchenObjectMerger::AlignNewCabinetsExtentsWithOldDetections(OU3DKitchenObjectMerger *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v122[5] = *MEMORY[0x277D85DE8];
  v4 = 0xF0F0F0F0F0F0F0F1 * ((this->new_cabinets_.__end_ - this->new_cabinets_.__begin_) >> 4);
  if (v4 < 1)
  {
    return;
  }

  v5 = this;
  v6 = 0;
  v69 = v4 & 0x7FFFFFFF;
  do
  {
    v7 = v5->new_cabinets_.__begin_ + 272 * v6;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v8 = *(v7 + 32);
    v71 = *(v7 + 48);
    v72 = *(v7 + 16);
    v9 = 0xF0F0F0F0F0F0F0F1 * ((v5->old_cabinets_.__end_ - v5->old_cabinets_.__begin_) >> 4);
    v79 = v8;
    v10 = vsub_f32(*v8.i8, *v72.f32);
    if (v9 >= 1)
    {
      v11 = 0;
      v12 = v9 & 0x7FFFFFFF;
      do
      {
        begin = v5->old_cabinets_.__begin_;
        this = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, (v5->old_cabinets_.__begin_ + v11), v7, a4);
        if (this)
        {
          v73 = *(begin + v11 + 16);
          v76 = *(begin + v11 + 32);
          std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v94, (begin + v11));
          LODWORD(v112.var1) = 2;
          std::vector<int>::push_back[abi:ne200100](&v91, &v112);
          v14 = vsubq_f32(v79, v76);
          v15 = sqrtf(vaddv_f32(*&vmulq_f32(v14, v14)));
          if (vaddv_f32(vmul_f32(v10, *v14.f32)) >= 0.0)
          {
            v16 = v15;
          }

          else
          {
            v16 = -v15;
          }

          *&v112.var1 = v16;
          std::vector<float>::push_back[abi:ne200100](&v88, &v112);
          std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v94, (begin + v11));
          LODWORD(v101.var1) = 1;
          std::vector<int>::push_back[abi:ne200100](&v91, &v101);
          v17 = vsubq_f32(v79, v73);
          v18 = sqrtf(vaddv_f32(*&vmulq_f32(v17, v17)));
          if (vaddv_f32(vmul_f32(v10, *v17.f32)) >= 0.0)
          {
            v19 = v18;
          }

          else
          {
            v19 = -v18;
          }

          *&v101.var1 = v19;
          std::vector<float>::push_back[abi:ne200100](&v88, &v101);
        }

        v11 += 272;
        --v12;
      }

      while (v12);
    }

    v20 = 0xF0F0F0F0F0F0F0F1 * ((v5->other_objects_.__end_ - v5->other_objects_.__begin_) >> 4);
    if (v20 >= 1)
    {
      v21 = 0;
      v22 = v20 & 0x7FFFFFFF;
      do
      {
        v23 = v5->other_objects_.__begin_;
        LODWORD(this) = OU3DKitchenObjectMerger::IsObjectIntersectionReasonable(this, 0.34907, (v23 + v21), v7, a4);
        if (this)
        {
          v24 = vsubq_f32(*(v23 + v21), *(v23 + v21 + 16));
          v8 = vmulq_f32(v24, v24);
          v25 = vsubq_f32(*v7, *(v7 + 16));
          v26 = vmulq_f32(v25, v25);
          *v8.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v8, v8, 8uLL)), vadd_f32(vzip1_s32(*v26.i8, *v8.i8), vzip2_s32(*v26.i8, *v8.i8))));
          *v8.i32 = vsub_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).f32[0];
          if (*v8.i32 < 0.3)
          {
            v74 = *(v23 + v21 + 16);
            v77 = *(v23 + v21 + 32);
            std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v94, (v23 + v21));
            LODWORD(v112.var1) = 2;
            std::vector<int>::push_back[abi:ne200100](&v91, &v112);
            v27 = vsubq_f32(v79, v77);
            v28 = sqrtf(vaddv_f32(*&vmulq_f32(v27, v27)));
            if (vaddv_f32(vmul_f32(v10, *v27.f32)) >= 0.0)
            {
              v29 = v28;
            }

            else
            {
              v29 = -v28;
            }

            *&v112.var1 = v29;
            std::vector<float>::push_back[abi:ne200100](&v88, &v112);
            std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&v94, (v23 + v21));
            LODWORD(v101.var1) = 1;
            std::vector<int>::push_back[abi:ne200100](&v91, &v101);
            v30 = vsubq_f32(v79, v74);
            v31 = sqrtf(vaddv_f32(*&vmulq_f32(v30, v30)));
            if (vaddv_f32(vmul_f32(v10, *v30.f32)) >= 0.0)
            {
              v32 = v31;
            }

            else
            {
              v32 = -v31;
            }

            *&v101.var1 = v32;
            std::vector<float>::push_back[abi:ne200100](&v88, &v101);
          }
        }

        v21 += 272;
        --v22;
      }

      while (v22);
    }

    if (v94 == v95)
    {
      goto LABEL_76;
    }

    v86 = 0uLL;
    var3 = 0;
    OU3DKitchenObjectMerger::SortBasedOnDistance(&v88, &v94, &v91, &v112, *v8.i32);
    std::vector<OU3DKitchenObject>::__vdeallocate(&v86);
    v86 = *&v112.var1;
    var4 = v112.var4;
    var3 = v112.var3;
    memset(&v112, 0, 48);
    v101.var1 = &v112;
    std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v101);
    std::__sort<std::__less<float,float> &,float *>();
    OUBox3d::OUBox3d(&v112, v7);
    v34 = *(v7 + 224);
    v121 = *(v7 + 232);
    v120 = v34;
    std::set<int>::set[abi:ne200100](v122, v7 + 240);
    OUBox3d::OUBox3d(&v101, v7);
    v78 = v6;
    v35 = *(v7 + 224);
    v110 = *(v7 + 232);
    v109 = v35;
    std::set<int>::set[abi:ne200100](v111, v7 + 240);
    v36 = 0xF0F0F0F0F0F0F0F1 * ((*(&v86 + 1) - v86) >> 4);
    if (v36 < 1)
    {
      goto LABEL_65;
    }

    v37 = 0;
    v38 = v36 & 0x7FFFFFFF;
    v39 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
    do
    {
      v40 = v86;
      v41 = @"Cabinet";
      v100 = v41;
      v85 = 0;
      v84 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v84, &v100, &v101.var1, 1uLL);
      v42 = v40 + 272 * v37;
      v43 = v84;
      if (v84 == *(&v84 + 1))
      {
        goto LABEL_36;
      }

      while (*(v42 + 128) != *v43)
      {
        if (++v43 == *(&v84 + 1))
        {
          goto LABEL_36;
        }
      }

      if (var4[v37] != 2)
      {
LABEL_36:
        v81 = &v84;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v81);
      }

      else
      {
        v44 = *(v88 + v37) < 0.0;
        v81 = &v84;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v81);

        if (v44)
        {
          goto LABEL_47;
        }
      }

      if (*(v88 + v37) > 0.0 && var4[v37] == 2)
      {
        v99 = v41;
        v85 = 0;
        v84 = 0uLL;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v84, &v99, &v100, 1uLL);
        v45 = v84;
        if (v84 == *(&v84 + 1))
        {
LABEL_42:
          v46 = vsubq_f32(*(v42 + 16), v79);
          v47 = sqrtf(vaddv_f32(*&vmulq_f32(v46, v46))) < v39;
          v81 = &v84;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v81);

          if (!v47)
          {
            goto LABEL_46;
          }
        }

        else
        {
          while (*(v42 + 128) != *v45)
          {
            if (++v45 == *(&v84 + 1))
            {
              goto LABEL_42;
            }
          }

          v81 = &v84;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v81);
        }

        v48 = vsubq_f32(*(v42 + 32), v79);
        if (sqrtf(vaddv_f32(*&vmulq_f32(v48, v48))) < 1.0)
        {
          OUBox3d::operator=(&v112, v42);
          v67 = *(v42 + 224);
          v121 = *(v42 + 232);
          v120 = v67;
          if (&v112 != v42)
          {
            std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v122, *(v42 + 240), (v42 + 248));
          }

          goto LABEL_47;
        }
      }

LABEL_46:
      ++v37;
    }

    while (v37 != v38);
    while (1)
    {
LABEL_47:
      v49 = v38;
      v50 = v86;
      v51 = v41;
      v98 = v51;
      v85 = 0;
      v84 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v84, &v98, &v99, 1uLL);
      --v38;
      v52 = v50 + 272 * (v49 - 1);
      v53 = v84;
      if (v84 == *(&v84 + 1))
      {
        goto LABEL_54;
      }

      while (*(v52 + 128) != *v53)
      {
        if (++v53 == *(&v84 + 1))
        {
          goto LABEL_54;
        }
      }

      if (var4[v38] != 1)
      {
LABEL_54:
        v81 = &v84;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v81);
      }

      else
      {
        v54 = *(v88 + v38) > v39;
        v81 = &v84;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v81);

        if (v54)
        {
          goto LABEL_65;
        }
      }

      if (*(v88 + v38) >= v39 || var4[v38] != 1)
      {
        goto LABEL_64;
      }

      v97 = v51;
      v85 = 0;
      v84 = 0uLL;
      std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v84, &v97, &v98, 1uLL);
      v55 = v84;
      if (v84 == *(&v84 + 1))
      {
LABEL_60:
        v56 = vsubq_f32(*(v52 + 32), v72);
        v57 = sqrtf(vaddv_f32(*&vmulq_f32(v56, v56))) < v39;
        v81 = &v84;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v81);

        if (!v57)
        {
          goto LABEL_64;
        }
      }

      else
      {
        while (*(v52 + 128) != *v55)
        {
          if (++v55 == *(&v84 + 1))
          {
            goto LABEL_60;
          }
        }

        v81 = &v84;
        std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v81);
      }

      v58 = vsubq_f32(*(v52 + 16), v72);
      if (sqrtf(vaddv_f32(*&vmulq_f32(v58, v58))) < 1.0)
      {
        break;
      }

LABEL_64:
      if (v49 <= 1)
      {
        goto LABEL_65;
      }
    }

    OUBox3d::operator=(&v101, v52);
    v68 = *(v52 + 224);
    v110 = *(v52 + 232);
    v109 = v68;
    if (&v101 != v52)
    {
      std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v111, *(v52 + 240), (v52 + 248));
    }

LABEL_65:
    *&v59 = v112.var5.var0;
    v75 = v101.var3;
    var1 = v101.var1;
    v83 = 0;
    *(&v59 + 1) = v112.var5.var2;
    v84 = v59;
    v81 = v79.i64[0];
    v82 = v72.i64[0];
    OU::intersect(&v84, &v81, &v83);
    v60 = v83;
    v80 = 0;
    *&v61 = v75;
    *(&v61 + 1) = var1;
    v84 = v61;
    v81 = v79.i64[0];
    v82 = v72.i64[0];
    OU::intersect(&v84, &v81, &v80);
    v62 = vsub_f32(*&v71, *v79.f32);
    v63 = vadd_f32(v62, v60);
    v64 = v80;
    v65 = vadd_f32(v62, v80);
    v66 = v83;
    *(v7 + 32) = v83;
    *(v7 + 48) = v63;
    *(v7 + 16) = v64;
    *v7 = v65;
    *(v7 + 96) = v66;
    *(v7 + 112) = v63;
    *(v7 + 80) = v64;
    *(v7 + 64) = v65;
    std::__tree<int>::destroy(v111, v111[1]);

    if (__p)
    {
      operator delete(__p);
    }

    if (v105)
    {
      v106 = v105;
      operator delete(v105);
    }

    std::__tree<int>::destroy(v122, v122[1]);
    if (v118)
    {
      operator delete(v118);
    }

    if (v116)
    {
      v117 = v116;
      operator delete(v116);
    }

    if (var4)
    {
      operator delete(var4);
    }

    v112.var1 = &v86;
    std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v112);
    v6 = v78;
LABEL_76:
    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    if (v91)
    {
      v92 = v91;
      operator delete(v91);
    }

    v112.var1 = &v94;
    std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&v112);
    ++v6;
  }

  while (v6 != v69);
}

void sub_25D1E60A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, void *__p, void *a37, uint64_t a38, void *a39, void *a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  OU3DKitchenObject::~OU3DKitchenObject(&a49);
  OU3DKitchenObject::~OU3DKitchenObject(&STACK[0x250]);
  if (v49)
  {
    operator delete(v49);
  }

  STACK[0x250] = &a33;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  STACK[0x250] = &a42;
  std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::UnifyHeightsAlignObjects(OU3DKitchenObjectMerger *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  begin = this->fused_cabinets_.__begin_;
  for (i = this->fused_cabinets_.__end_; begin != i; begin = (begin + 272))
  {
    ground_plane_height = this->ground_plane_height_;
    if (vabds_f32(*(begin + 2), ground_plane_height) < 0.3)
    {
      *(begin + 2) = ground_plane_height;
      *(begin + 6) = ground_plane_height;
      *(begin + 10) = ground_plane_height;
      *(begin + 14) = ground_plane_height;
    }

    ceil_plane_height = this->ceil_plane_height_;
    if (*(begin + 18) > ceil_plane_height)
    {
      *(begin + 18) = ceil_plane_height;
      *(begin + 22) = ceil_plane_height;
      *(begin + 26) = ceil_plane_height;
      *(begin + 30) = ceil_plane_height;
    }
  }

  v9 = 0xF0F0F0F0F0F0F0F1 * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4);
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = v9 & 0x7FFFFFFF;
    do
    {
      v12 = (this->other_objects_.__begin_ + 272 * v10);
      v13 = v12->f32[2];
      v14 = v12[4].f32[2];
      v15 = this->fused_cabinets_.__begin_;
      end = this->fused_cabinets_.__end_;
      while (1)
      {
        if (v15 == end)
        {
          v17 = 1;
          goto LABEL_16;
        }

        box3dIou(v24, v12, v15, 0, a4);
        if (v25 > 0.1 && *(v15 + 18) <= v13)
        {
          break;
        }

        v15 = (v15 + 272);
      }

      v17 = 0;
LABEL_16:
      v18 = v11;
      v19 = 72;
      v20 = v10;
      while (1)
      {
        if (v20)
        {
          v21 = this->other_objects_.__begin_;
          box3dIou(v24, v12, (v21 + v19 - 72), 0, a4);
          if (v25 > 0.1 && *(v21 + v19) <= v13)
          {
            break;
          }
        }

        --v20;
        v19 += 272;
        if (!--v18)
        {
          if (v17)
          {
            v22 = this->ground_plane_height_;
            if (vabds_f32(v13, v22) < 0.3)
            {
              v12->f32[2] = v22;
              v12[1].f32[2] = v22;
              v12[2].f32[2] = v22;
              v12[3].f32[2] = v22;
            }
          }

          break;
        }
      }

      v23 = this->ceil_plane_height_;
      if (v14 > v23)
      {
        v12[4].f32[2] = v23;
        v12[5].f32[2] = v23;
        v12[6].f32[2] = v23;
        v12[7].f32[2] = v23;
      }

      ++v10;
    }

    while (v10 != v11);
  }
}

void OU3DKitchenObjectMerger::ComputeGroupIds(OU3DKitchenObjectMerger *this)
{
  v47[0] = 0;
  v47[1] = 0;
  v45[1] = 0;
  v46 = v47;
  v44 = v45;
  v45[0] = 0;
  begin = this->other_objects_.__begin_;
  end = this->other_objects_.__end_;
  if (begin != end)
  {
    v4 = (begin + 240);
    v5 = (begin + 248);
    do
    {
      *&v42[0] = v4 - 1;
      v6 = std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v46, v4 - 2, &std::piecewise_construct, v42) + 5;
      if (v4 != v6)
      {
        std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v6, *v4, v5);
      }

      v7 = (v4 + 4);
      v4 += 34;
      v5 += 68;
    }

    while (v7 != end);
  }

  v8 = this->fused_cabinets_.__begin_;
  for (i = this->fused_cabinets_.__end_; v8 != i; v8 = (v8 + 272))
  {
    *&v42[0] = v8 + 232;
    v10 = std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v46, v8 + 58, &std::piecewise_construct, v42);
    std::__tree<int>::__assign_unique<int const*>(v10 + 5, 0, 0);
  }

  v11 = v46;
  if (v46 != v47)
  {
    do
    {
      v12 = *(v11 + 40);
      if (v12 != (v11 + 48))
      {
        do
        {
          *&v42[0] = v12 + 7;
          v13 = std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v44, v12 + 7, &std::piecewise_construct, v42);
          std::__tree<int>::__emplace_unique_key_args<int,int const&>((v13 + 5), (v11 + 32), (v11 + 32));
          v14 = *(v12 + 1);
          if (v14)
          {
            do
            {
              v15 = v14;
              v14 = *v14;
            }

            while (v14);
          }

          else
          {
            do
            {
              v15 = *(v12 + 2);
              v16 = *v15 == v12;
              v12 = v15;
            }

            while (!v16);
          }

          v12 = v15;
        }

        while (v15 != (v11 + 48));
      }

      v17 = *(v11 + 8);
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = *(v11 + 16);
          v16 = *v18 == v11;
          v11 = v18;
        }

        while (!v16);
      }

      v11 = v18;
    }

    while (v18 != v47);
  }

  v19 = v44;
  if (v44 != v45)
  {
    do
    {
      *&v42[0] = v19 + 8;
      v20 = std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v46, v19 + 8, &std::piecewise_construct, v42);
      if (v19 != v20)
      {
        std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v20 + 5, *(v19 + 5), v19 + 12);
      }

      v21 = *(v19 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v19 + 2);
          v16 = *v22 == v19;
          v19 = v22;
        }

        while (!v16);
      }

      v19 = v22;
    }

    while (v22 != v45);
  }

  memset(v42, 0, sizeof(v42));
  v43 = 1065353216;
  v23 = v46;
  if (v46 != v47)
  {
    v24 = 0;
    do
    {
      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v42, (v23 + 32)))
      {
        v41[0] = 0;
        v41[1] = 0;
        v40 = v41;
        v25 = v40;
        if (v40 != v41)
        {
          do
          {
            std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v42, v25 + 7, v25 + 7);
            v26 = *(v25 + 1);
            if (v26)
            {
              do
              {
                v27 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v27 = *(v25 + 2);
                v16 = *v27 == v25;
                v25 = v27;
              }

              while (!v16);
            }

            v25 = v27;
          }

          while (v27 != v41);
        }

        v28 = this->fused_cabinets_.__begin_;
        v29 = this->fused_cabinets_.__end_;
        while (v28 != v29)
        {
          v30 = v41[0];
          if (v41[0])
          {
            v31 = *(v28 + 58);
            v32 = v41;
            do
            {
              if (*(v30 + 7) >= v31)
              {
                v32 = v30;
              }

              v30 = v30[*(v30 + 7) < v31];
            }

            while (v30);
            if (v32 != v41 && v31 >= *(v32 + 7))
            {
              *(v28 + 57) = v24;
              if ((v28 + 240) != &v40)
              {
                std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v28 + 30, v40, v41);
              }

              std::__tree<int>::__erase_unique<int>(v28 + 240, v28 + 58);
            }
          }

          v28 = (v28 + 272);
        }

        v33 = this->other_objects_.__begin_;
        v34 = this->other_objects_.__end_;
        while (v33 != v34)
        {
          v35 = v41[0];
          if (v41[0])
          {
            v36 = *(v33 + 58);
            v37 = v41;
            do
            {
              if (*(v35 + 7) >= v36)
              {
                v37 = v35;
              }

              v35 = v35[*(v35 + 7) < v36];
            }

            while (v35);
            if (v37 != v41 && v36 >= *(v37 + 7))
            {
              *(v33 + 57) = v24;
              if ((v33 + 240) != &v40)
              {
                std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(v33 + 30, v40, v41);
              }

              std::__tree<int>::__erase_unique<int>(v33 + 240, v33 + 58);
            }
          }

          v33 = (v33 + 272);
        }

        ++v24;
        std::__tree<int>::destroy(&v40, v41[0]);
      }

      v38 = *(v23 + 8);
      if (v38)
      {
        do
        {
          v39 = v38;
          v38 = *v38;
        }

        while (v38);
      }

      else
      {
        do
        {
          v39 = *(v23 + 16);
          v16 = *v39 == v23;
          v23 = v39;
        }

        while (!v16);
      }

      v23 = v39;
    }

    while (v39 != v47);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v42);
  std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(&v44, v45[0]);
  std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(&v46, v47[0]);
}

void sub_25D1E681C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23)
{
  std::__tree<int>::destroy(&a10, a11);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a13);
  std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<int,std::set<int>>,std::__map_value_compare<int,std::__value_type<int,std::set<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::set<int>>>>::destroy(&a22, a23);
  _Unwind_Resume(a1);
}

void OU3DKitchenObjectMerger::AssignUUIDForFusedObjects(OU3DKitchenObjectMerger *this)
{
  begin = this->fused_cabinets_.__begin_;
  for (i = this->fused_cabinets_.__end_; begin != i; begin = (begin + 272))
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = *(begin + 18);
    *(begin + 18) = v3;
  }
}

void OU3DKitchenObjectMerger::SetDetectionAndPointCloud(OU3DKitchenObjectMerger *a1, const OUBox3d **a2, const OUBox3d **a3, void *a4)
{
  v40 = *MEMORY[0x277D85DE8];
  OU3DKitchenObjectMerger::Reset(a1);
  a1->ground_plane_height_ = OU3DKitchenObjectMerger::ComputePlaneHeight(0.05, v7, a4);
  a1->ceil_plane_height_ = OU3DKitchenObjectMerger::ComputePlaneHeight(0.95, v8, a4);
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      if ([v9[1].var6.var0 isEqualToString:@"online"])
      {
        v12 = vabds_f32(v9->var2, a1->ground_plane_height_) < 0.3;
        v26[0] = 0;
        v26[1] = 0;
        v25 = v26;
        OU3DKitchenObject::OU3DKitchenObject(&v30, v9, v12, -1, v11, &v25);
        std::__tree<int>::destroy(&v25, v26[0]);
        v29 = @"Cabinet";
        v23 = 0;
        v24 = 0;
        v22 = 0;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v22, &v29, &v30.var1, 1uLL);
        v13 = v22;
        if (v22 == v23)
        {
LABEL_7:
          v27 = &v22;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v27);

          std::vector<OU3DKitchenObject>::push_back[abi:ne200100](&a1->other_objects_, &v30);
        }

        else
        {
          while (v9[1].var5.var0 != *v13)
          {
            if (++v13 == v23)
            {
              goto LABEL_7;
            }
          }

          v27 = &v22;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v27);

          std::vector<OU3DKitchenObject>::push_back[abi:ne200100](a1, &v30);
        }

        std::__tree<int>::destroy(&v38, v39);

        if (__p)
        {
          operator delete(__p);
        }

        if (v34)
        {
          v35 = v34;
          operator delete(v34);
        }

        ++v11;
      }

      v9 = (v9 + 224);
    }

    while (v9 != v10);
  }

  v14 = *a3;
  v15 = a3[1];
  if (*a3 != v15)
  {
    do
    {
      if ([v14[1].var6.var0 isEqualToString:@"offline"])
      {
        v16 = vabds_f32(v14->var2, a1->ground_plane_height_) < 0.3;
        v21[0] = 0;
        v21[1] = 0;
        v20 = v21;
        OU3DKitchenObject::OU3DKitchenObject(&v30, v14, v16, -1, v11, &v20);
        std::__tree<int>::destroy(&v20, v21[0]);
        v28 = @"Cabinet";
        v23 = 0;
        v24 = 0;
        v22 = 0;
        std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(&v22, &v28, &v29, 1uLL);
        v17 = v22;
        if (v22 == v23)
        {
LABEL_22:
          v27 = &v22;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v27);

          p_other_objects = &a1->other_objects_;
        }

        else
        {
          while (v14[1].var5.var0 != *v17)
          {
            if (++v17 == v23)
            {
              goto LABEL_22;
            }
          }

          v27 = &v22;
          std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](&v27);

          p_other_objects = &a1->new_cabinets_;
        }

        std::vector<OU3DKitchenObject>::push_back[abi:ne200100](p_other_objects, &v30);
        std::__tree<int>::destroy(&v38, v39);

        if (__p)
        {
          operator delete(__p);
        }

        if (v34)
        {
          v35 = v34;
          operator delete(v34);
        }

        ++v11;
      }

      v14 = (v14 + 224);
    }

    while (v14 != v15);
  }
}

uint64_t OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo::~SortInfo(uint64_t a1)
{
  std::__tree<int>::destroy(a1 + 256, *(a1 + 264));

  v2 = *(a1 + 200);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<int>::reserve(std::vector<int> *this, std::vector<int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(this, __n);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }
}

char **std::vector<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 304;
        std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::destroy[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t OU3DKitchenObjectMerger::GetOutput@<X0>(OU3DKitchenObjectMerger *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = std::vector<OUBox3d>::reserve(a2, 0xF0F0F0F0F0F0F0F1 * ((this->fused_cabinets_.__end_ - this->fused_cabinets_.__begin_) >> 4) - 0xF0F0F0F0F0F0F0FLL * ((this->other_objects_.__end_ - this->other_objects_.__begin_) >> 4));
  begin = this->other_objects_.__begin_;
  end = this->other_objects_.__end_;
  while (begin != end)
  {
    result = std::vector<OUBox3d>::push_back[abi:ne200100](a2, begin);
    begin = (begin + 272);
  }

  v8 = this->fused_cabinets_.__begin_;
  v7 = this->fused_cabinets_.__end_;
  while (v8 != v7)
  {
    result = std::vector<OUBox3d>::push_back[abi:ne200100](a2, v8);
    v8 = (v8 + 272);
  }

  return result;
}

void sub_25D1E6F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<OUBox3d>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<OUBox3d>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x6DB6DB6DB6DB6DB7 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x124924924924925)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<OUBox3d>>(result, a2);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25D1E6FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<OUBox3d>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<OUBox3d>::push_back[abi:ne200100](uint64_t a1, const OUBox3d *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<OUBox3d>::__emplace_back_slow_path<OUBox3d const&>(a1, a2);
  }

  else
  {
    OUBox3d::OUBox3d(*(a1 + 8), a2);
    result = v3 + 224;
    *(a1 + 8) = v3 + 224;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t *anonymous namespace::Dfs(uint64_t *result, int a2, uint64_t a3)
{
  v14 = a2;
  if (a3)
  {
    v4 = result;
    std::__tree<int>::__emplace_unique_key_args<int,int const&>(a3, &v14, &v14);
    result = std::map<int,std::set<int>>::at(v4, &v14);
    v5 = result + 1;
    v6 = *result;
    if (*result != result + 1)
    {
      v7 = (a3 + 8);
      do
      {
        v8 = *v7;
        v9 = *(v6 + 7);
        if (!*v7)
        {
          goto LABEL_11;
        }

        v10 = a3 + 8;
        do
        {
          if (*(v8 + 28) >= v9)
          {
            v10 = v8;
          }

          v8 = *(v8 + 8 * (*(v8 + 28) < v9));
        }

        while (v8);
        if (v10 == v7 || v9 < *(v10 + 28))
        {
LABEL_11:
        }

        v11 = v6[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v6[2];
            v13 = *v12 == v6;
            v6 = v12;
          }

          while (!v13);
        }

        v6 = v12;
      }

      while (v12 != v5);
    }
  }

  return result;
}

uint64_t *std::vector<NSString * {__strong}>::__init_with_size[abi:ne200100]<NSString * const {__strong}*,NSString * const {__strong}>(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<NSString * {__strong}>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void std::vector<NSString * {__strong}>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<NSString * {__strong}>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<NSString * {__strong}>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 8;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  for (i = *(result + 8); i != a2; std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(result, i))
  {
    i -= 272;
  }

  *(result + 8) = a2;
}

void std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(uint64_t a1, uint64_t a2)
{
  std::__tree<int>::destroy(a2 + 240, *(a2 + 248));

  v3 = *(a2 + 184);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a2 + 160);
  if (v4)
  {
    *(a2 + 168) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 128);
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25D1E73FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

uint64_t *_ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(a1, a2);
  }

  return a1;
}

void sub_25D1E74B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, a2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void OUBox3d::OUBox3d(OUBox3d *this, const OUBox3d *a2)
{
  v4 = *&a2->var1;
  v5 = *&a2->var3;
  v6 = *&a2->var5.var2;
  *&this->var5.var0 = *&a2->var5.var0;
  *&this->var5.var2 = v6;
  *&this->var1 = v4;
  *&this->var3 = v5;
  v7 = *&a2->var6.var1;
  v8 = *&a2->var7;
  v9 = *&a2[1].var3;
  *&this[1].var1 = *&a2[1].var1;
  *&this[1].var3 = v9;
  *&this->var6.var1 = v7;
  *&this->var7 = v8;
  this[1].var5.var0 = a2[1].var5.var0;
  LODWORD(this[1].var5.var1) = a2[1].var5.var1;
  this[1].var5.var2 = a2[1].var5.var2;
  v10 = a2[1].var6.var0;
  this[1].var6.var1 = 0;
  this[1].var6.var0 = v10;
  this[1].var6.var2 = 0;
  this[1].var7 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&this[1].var6.var1, a2[1].var6.var1, a2[1].var6.var2, (a2[1].var6.var2 - a2[1].var6.var1) >> 2);
  std::vector<BOOL>::vector(&this[1].var8, &a2[1].var8);
  this[2].var3 = a2[2].var3;
  LOWORD(this[2].var4) = a2[2].var4;
}

void sub_25D1E760C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 168) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25D1E76A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<BOOL>::vector(uint64_t *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](a1, v2);
  }

  return a1;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v2);
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>>(void *a1, void *a2, unsigned int a3, void *a4, int a5, uint64_t a6)
{
  v8 = a1[1];
  v9 = v8 + a6;
  a1[1] = v8 + a6;
  if (!v8 || ((v9 - 1) ^ (v8 - 1)) >= 0x40)
  {
    if (v9 >= 0x41)
    {
      v10 = (v9 - 1) >> 6;
    }

    else
    {
      v10 = 0;
    }

    *(*a1 + 8 * v10) = 0;
  }

  v14 = v6;
  v15 = v7;
  v11 = *a1 + 8 * (v8 >> 6);
  v12 = v8 & 0x3F;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(a2, a3, a4, a5, &v11, v13);
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,true,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a2;
  v7 = *a5;
  v8 = *(a5 + 8);
  if (a1 != a3 || a2 != a4)
  {
    do
    {
      v9 = 1 << v8;
      if ((*a1 >> a2))
      {
        v10 = *v7 | v9;
      }

      else
      {
        v10 = *v7 & ~v9;
      }

      *v7 = v10;
      v11 = v6 == 63;
      v12 = v6 == 63;
      v6 = (a2 + 1);
      if (v11)
      {
        v6 = 0;
      }

      if (v8 == 63)
      {
        v8 = 0;
        *a5 = ++v7;
      }

      else
      {
        ++v8;
      }

      a1 += v12;
      a2 = v6 | a2 & 0xFFFFFFFF00000000;
    }

    while (a1 != a3 || v6 != a4);
    *(a5 + 8) = v8;
  }

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v7;
  *(a6 + 24) = v8;
}

__n128 std::vector<float>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 std::vector<BOOL>::__move_assign(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

uint64_t std::vector<OU3DKitchenObject>::__emplace_back_slow_path<OU3DKitchenObject const&>(uint64_t *a1, OUBox3d *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject>>(a1, v6);
  }

  v13 = 0;
  v14 = 272 * v2;
  std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject const&,void,0>(a1, (272 * v2), a2);
  v15 = 272 * v2 + 272;
  v7 = a1[1];
  v8 = 272 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(&v13);
  return v12;
}

void sub_25D1E7A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject const&,void,0>(int a1, OUBox3d *this, OUBox3d *a3)
{
  OUBox3d::OUBox3d(this, a3);
  var0 = a3[2].var5.var0;
  LODWORD(this[2].var5.var1) = a3[2].var5.var1;
  this[2].var5.var0 = var0;
  return std::set<int>::set[abi:ne200100](&this[2].var5.var2, &a3[2].var5.var2);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xF0F0F0F0F0F0F1)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject,void,0>(a1, a4, v7);
      v7 += 17;
      a4 = v12 + 272;
      v12 += 272;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(a1, v5);
      v5 += 272;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject,void,0>(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[3];
  *(a2 + 32) = a3[2];
  *(a2 + 48) = v5;
  *a2 = v3;
  *(a2 + 16) = v4;
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[7];
  *(a2 + 96) = a3[6];
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  v9 = *(a3 + 16);
  *(a3 + 16) = 0;
  *(a2 + 128) = v9;
  *(a2 + 136) = *(a3 + 34);
  v10 = a3[9];
  a3[9] = 0u;
  *(a2 + 144) = v10;
  *(a2 + 160) = 0;
  *(a2 + 168) = 0u;
  *(a2 + 160) = a3[10];
  v11 = *(a3 + 23);
  *(a2 + 176) = *(a3 + 22);
  *(a3 + 22) = 0;
  a3[10] = 0u;
  *(a2 + 184) = v11;
  *(a2 + 192) = a3[12];
  *(a3 + 184) = 0u;
  v12 = *(a3 + 26);
  *(a3 + 200) = 0uLL;
  *(a2 + 208) = v12;
  *(a2 + 216) = *(a3 + 108);
  v13 = *(a3 + 28);
  *(a2 + 232) = *(a3 + 58);
  *(a2 + 224) = v13;
  *(a2 + 240) = *(a3 + 30);
  v14 = a3 + 31;
  v15 = *(a3 + 31);
  *(a2 + 248) = v15;
  v16 = a2 + 248;
  v17 = *(a3 + 32);
  *(a2 + 256) = v17;
  if (v17)
  {
    *(v15 + 16) = v16;
    *(a3 + 30) = v14;
    *v14 = 0;
    *(a3 + 32) = 0;
  }

  else
  {
    *(a2 + 240) = v16;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 272;
      std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

uint64_t std::__split_buffer<OU3DKitchenObject>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<OU3DKitchenObject>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<OU3DKitchenObject>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 272;
    std::allocator_traits<std::allocator<OU3DKitchenObject>>::destroy[abi:ne200100]<OU3DKitchenObject,void,0>(v5, v4 - 272);
  }
}

void *std::set<int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(uint64_t **a1, uint64_t *a2, int *a3, _DWORD *a4)
{
  v4 = *std::__tree<int>::__find_equal<int>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<int>::__find_equal<int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<int>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::vector<OU3DKitchenObject>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<OU3DKitchenObject>::__emplace_back_slow_path<OU3DKitchenObject>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0xF0F0F0F0F0F0F0)
  {
    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 4);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 4) >= 0x78787878787878)
  {
    v6 = 0xF0F0F0F0F0F0F0;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OU3DKitchenObject>>(a1, v6);
  }

  v13 = 0;
  v14 = 272 * v2;
  std::allocator_traits<std::allocator<OU3DKitchenObject>>::construct[abi:ne200100]<OU3DKitchenObject,OU3DKitchenObject,void,0>(a1, 272 * v2, a2);
  v15 = 272 * v2 + 272;
  v7 = a1[1];
  v8 = 272 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OU3DKitchenObject>,OU3DKitchenObject*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(&v13);
  return v12;
}

void sub_25D1E84A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<OU3DKitchenObject>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<OU3DKitchenObject>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<OU3DKitchenObject>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

OUBox3d *OU3DKitchenObject::OU3DKitchenObject(OUBox3d *a1, const OUBox3d *a2, char a3, int a4, int a5, uint64_t a6)
{
  OUBox3d::OUBox3d(a1, a2);
  *(v11 + 224) = a3;
  *(v11 + 228) = a4;
  *(v11 + 232) = a5;
  std::set<int>::set[abi:ne200100]((v11 + 240), a6);
  return a1;
}

uint64_t std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::construct[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(result + 48) = *(a2 + 48);
  *(result + 64) = v4;
  *(result + 16) = v2;
  *(result + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(result + 112) = *(a2 + 112);
  *(result + 128) = v7;
  *(result + 80) = v5;
  *(result + 96) = v6;
  v8 = *(a2 + 144);
  *(a2 + 144) = 0;
  *(result + 144) = v8;
  *(result + 152) = *(a2 + 152);
  v9 = *(a2 + 160);
  *(a2 + 160) = 0u;
  *(result + 160) = v9;
  *(result + 176) = 0;
  *(result + 184) = 0u;
  *(result + 176) = *(a2 + 176);
  v10 = *(a2 + 200);
  *(result + 192) = *(a2 + 192);
  *(a2 + 192) = 0;
  *(a2 + 176) = 0u;
  *(result + 200) = v10;
  *(result + 208) = *(a2 + 208);
  *(a2 + 200) = 0u;
  v11 = *(a2 + 224);
  *(a2 + 216) = 0;
  *(a2 + 224) = 0;
  *(result + 224) = v11;
  *(result + 232) = *(a2 + 232);
  v12 = *(a2 + 240);
  *(result + 248) = *(a2 + 248);
  *(result + 240) = v12;
  *(result + 256) = *(a2 + 256);
  v13 = result + 264;
  v14 = *(a2 + 264);
  v15 = *(a2 + 272);
  *(result + 264) = v14;
  *(result + 272) = v15;
  if (v15)
  {
    *(v14 + 16) = v13;
    *(a2 + 256) = a2 + 264;
    *(a2 + 264) = 0;
    *(a2 + 272) = 0;
  }

  else
  {
    *(result + 256) = v13;
  }

  *(result + 288) = *(a2 + 288);
  return result;
}

void std::allocator_traits<std::allocator<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo>>::destroy[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo,void,0>(uint64_t a1)
{
  std::__tree<int>::destroy(a1 + 256, *(a1 + 264));

  v2 = *(a1 + 200);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 176);
  if (v3)
  {
    *(a1 + 184) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 144);
}

float std::__introsort<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,false>(float *a1, float *a2, uint64_t a3, char a4, float result)
{
  v493 = *MEMORY[0x277D85DE8];
LABEL_2:
  v8 = (a2 - 76);
  v439 = (a2 - 228);
  v440 = (a2 - 152);
  v9 = a1;
  v444 = a2;
  while (1)
  {
    a1 = v9;
    v10 = a2 - v9;
    v11 = 0x86BCA1AF286BCA1BLL * ((a2 - v9) >> 4);
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = *v8;
        if (*v8 >= *a1)
        {
          return result;
        }

        goto LABEL_134;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      result = a1[76];
      v152 = *v8;
      if (result >= *a1)
      {
        if (v152 < result)
        {
          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1 + 76, v8);
          result = a1[76];
          if (result < *a1)
          {
            v154 = (a1 + 76);
            v153 = a1;
            goto LABEL_136;
          }
        }

        return result;
      }

      if (v152 >= result)
      {
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, a1 + 76);
        result = *v8;
        if (*v8 >= a1[76])
        {
          return result;
        }

        v153 = a1 + 76;
LABEL_135:
        v154 = v8;
LABEL_136:
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v153, v154);
        return result;
      }

LABEL_134:
      v153 = a1;
      goto LABEL_135;
    }

    if (v11 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(a1, a1 + 76, a1 + 152, v8);
      return result;
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_10:
    if (v10 <= 7295)
    {
      if (a4)
      {
        if (a1 != a2)
        {
          v157 = a1 + 76;
          if (a1 + 76 != a2)
          {
            v158 = 0;
            v159 = a1;
            do
            {
              v160 = v157;
              result = v159[76];
              if (result < *v159)
              {
                v470 = v159[76];
                v161 = *(v159 + 25);
                v475 = *(v159 + 24);
                v476 = v161;
                v162 = *(v159 + 27);
                v477 = *(v159 + 26);
                v478 = v162;
                v163 = *(v159 + 21);
                v471 = *(v159 + 20);
                v472 = v163;
                v164 = *(v159 + 23);
                v473 = *(v159 + 22);
                v474 = v164;
                v165 = *(v159 + 56);
                *(v159 + 56) = 0;
                v479 = v165;
                v480 = *(v159 + 114);
                v166 = *(v159 + 30);
                v481 = *(v159 + 29);
                *v482 = v166;
                *(v159 + 29) = 0u;
                *(v159 + 30) = 0u;
                v167 = *(v159 + 63);
                v482[2] = *(v159 + 62);
                __p = v167;
                v484 = *(v159 + 32);
                *(v159 + 31) = 0u;
                *(v159 + 32) = 0u;
                v168 = *(v159 + 66);
                *(v159 + 66) = 0;
                v485 = v168;
                v486 = *(v159 + 268);
                v169 = *(v159 + 68);
                v488 = *(v159 + 138);
                v487 = v169;
                v170 = *(v159 + 71);
                v489 = *(v159 + 70);
                v490 = v170;
                v491 = *(v159 + 72);
                if (v491)
                {
                  v170[2] = &v490;
                  *(v159 + 70) = v159 + 142;
                  *(v159 + 71) = 0;
                  *(v159 + 72) = 0;
                }

                else
                {
                  v489 = &v490;
                }

                v492 = *(v159 + 148);
                v171 = *v159;
                v172 = v158;
                while (1)
                {
                  v173 = v172;
                  v174 = (a1 + v172);
                  v174[76] = v171;
                  v175 = *(a1 + v172 + 96);
                  *(v174 + 24) = *(a1 + v172 + 80);
                  *(v174 + 25) = v175;
                  v176 = *(a1 + v172 + 128);
                  *(v174 + 26) = *(a1 + v172 + 112);
                  *(v174 + 27) = v176;
                  v177 = *(a1 + v172 + 32);
                  *(v174 + 20) = *(a1 + v172 + 16);
                  *(v174 + 21) = v177;
                  v178 = *(a1 + v172 + 64);
                  *(v174 + 22) = *(a1 + v172 + 48);
                  *(v174 + 23) = v178;
                  v179 = *(a1 + v172 + 144);
                  *(v174 + 18) = 0;
                  v180 = *(v174 + 56);
                  *(v174 + 56) = v179;

                  v174[114] = v174[38];
                  v181 = *(v174 + 20);
                  *(v174 + 20) = 0;
                  v182 = *(v174 + 58);
                  *(v174 + 58) = v181;

                  v183 = (a1 + v173);
                  v184 = *(a1 + v173 + 168);
                  v183[10].n128_u64[1] = 0;
                  v185 = *(a1 + v173 + 472);
                  v183[29].n128_u64[1] = v184;

                  std::vector<float>::__move_assign(&v183[30], v183 + 11);
                  std::vector<BOOL>::__move_assign(&v183[31].n128_i64[1], &v183[12].n128_i64[1]);
                  v186 = *(a1 + v173 + 224);
                  v183[14].n128_u64[0] = 0;
                  v187 = *(a1 + v173 + 528);
                  v183[33].n128_u64[0] = v186;

                  v188 = a1 + v173;
                  *(v188 + 268) = *(a1 + v173 + 232);
                  *(v188 + 68) = *(a1 + v173 + 240);
                  *(v188 + 138) = *(a1 + v173 + 248);
                  std::__tree<int>::__move_assign((a1 + v173 + 560), (a1 + v173 + 256));
                  *(v188 + 148) = *(v188 + 72);
                  if (!v173)
                  {
                    break;
                  }

                  v172 = v173 - 304;
                  v171 = *(a1 + v173 - 304);
                  if (v470 >= v171)
                  {
                    v189 = (a1 + v173);
                    goto LABEL_155;
                  }
                }

                v189 = a1;
LABEL_155:
                *v189 = v470;
                v190 = v471;
                v191 = v472;
                v192 = v474;
                *(v188 + 3) = v473;
                *(v188 + 4) = v192;
                *(v188 + 1) = v190;
                *(v188 + 2) = v191;
                v193 = v475;
                v194 = v476;
                v195 = v478;
                *(v188 + 7) = v477;
                *(v188 + 8) = v195;
                *(v188 + 5) = v193;
                *(v188 + 6) = v194;
                v196 = v479;
                v479 = 0;
                v197 = *(v189 + 18);
                *(v189 + 18) = v196;

                *(v189 + 38) = v480;
                v198 = v481;
                *&v481 = 0;
                v199 = *(v189 + 20);
                *(v189 + 20) = v198;

                v200 = *(&v481 + 1);
                *(&v481 + 1) = 0;
                v201 = *(v189 + 21);
                *(v189 + 21) = v200;

                v202 = a1 + v173;
                v205 = *(v202 + 22);
                v204 = v202 + 176;
                v203 = v205;
                if (v205)
                {
                  *(v189 + 23) = v203;
                  operator delete(v203);
                  *v204 = 0;
                  *(v204 + 1) = 0;
                  *(v204 + 2) = 0;
                }

                *v204 = v482[0];
                *(v189 + 46) = *&v482[1];
                memset(v482, 0, sizeof(v482));
                v206 = *(v204 + 3);
                if (v206)
                {
                  operator delete(v206);
                  *(v204 + 3) = 0;
                  *(v204 + 4) = 0;
                  *(v204 + 5) = 0;
                }

                *(v204 + 3) = __p;
                *(v189 + 13) = v484;
                __p = 0;
                v484 = 0uLL;
                v207 = v485;
                v485 = 0;
                v208 = *(v189 + 28);
                *(v189 + 28) = v207;

                *(v189 + 116) = v486;
                v209 = v487;
                *(v204 + 18) = v488;
                *(v204 + 8) = v209;
                v210 = v189 + 66;
                std::__tree<int>::destroy((v204 + 80), *(v189 + 33));
                *(v204 + 10) = v489;
                v211 = v490;
                *(v189 + 33) = v490;
                v212 = v491;
                *(v189 + 34) = v491;
                if (v212)
                {
                  v213 = 0;
                  v211[2] = v210;
                  v489 = &v490;
                  v490 = 0;
                  v491 = 0;
                }

                else
                {
                  *(v204 + 10) = v210;
                  v213 = v490;
                }

                *(v189 + 72) = v492;
                std::__tree<int>::destroy(&v489, v213);

                if (__p)
                {
                  operator delete(__p);
                }

                if (v482[0])
                {
                  v482[1] = v482[0];
                  operator delete(v482[0]);
                }

                a2 = v444;
              }

              v157 = v160 + 76;
              v158 += 304;
              v159 = v160;
            }

            while (v160 + 76 != a2);
          }
        }
      }

      else if (a1 != a2)
      {
        v391 = a1 + 76;
        if (a1 + 76 != a2)
        {
          v392 = a1 - 76;
          do
          {
            v393 = v391;
            result = a1[76];
            if (result < *a1)
            {
              v470 = a1[76];
              v394 = *(a1 + 25);
              v475 = *(a1 + 24);
              v476 = v394;
              v395 = *(a1 + 27);
              v477 = *(a1 + 26);
              v478 = v395;
              v396 = *(a1 + 21);
              v471 = *(a1 + 20);
              v472 = v396;
              v397 = *(a1 + 23);
              v473 = *(a1 + 22);
              v474 = v397;
              v398 = *(a1 + 56);
              *(a1 + 56) = 0;
              v479 = v398;
              v480 = *(a1 + 114);
              v399 = *(a1 + 30);
              v481 = *(a1 + 29);
              *v482 = v399;
              *(a1 + 29) = 0u;
              *(a1 + 30) = 0u;
              v400 = *(a1 + 63);
              v482[2] = *(a1 + 62);
              __p = v400;
              v484 = *(a1 + 32);
              *(a1 + 31) = 0u;
              *(a1 + 32) = 0u;
              v401 = *(a1 + 66);
              *(a1 + 66) = 0;
              v485 = v401;
              v486 = *(a1 + 268);
              v402 = *(a1 + 68);
              v488 = *(a1 + 138);
              v487 = v402;
              v403 = *(a1 + 71);
              v489 = *(a1 + 70);
              v490 = v403;
              v491 = *(a1 + 72);
              if (v491)
              {
                v403[2] = &v490;
                *(a1 + 70) = a1 + 142;
                *(a1 + 71) = 0;
                *(a1 + 72) = 0;
              }

              else
              {
                v489 = &v490;
              }

              v492 = *(a1 + 148);
              v404 = *a1;
              v405 = v392;
              do
              {
                v405[152] = v404;
                v406 = *(v405 + 25);
                *(v405 + 43) = *(v405 + 24);
                *(v405 + 44) = v406;
                v407 = *(v405 + 27);
                *(v405 + 45) = *(v405 + 26);
                *(v405 + 46) = v407;
                v408 = *(v405 + 21);
                *(v405 + 39) = *(v405 + 20);
                *(v405 + 40) = v408;
                v409 = *(v405 + 23);
                *(v405 + 41) = *(v405 + 22);
                *(v405 + 42) = v409;
                v410 = *(v405 + 56);
                *(v405 + 56) = 0;
                v411 = *(v405 + 94);
                *(v405 + 94) = v410;

                v405[190] = v405[114];
                v412 = *(v405 + 58);
                *(v405 + 58) = 0;
                v413 = *(v405 + 96);
                *(v405 + 96) = v412;

                v414 = *(v405 + 59);
                *(v405 + 59) = 0;
                v415 = *(v405 + 97);
                *(v405 + 97) = v414;

                std::vector<float>::__move_assign((v405 + 196), v405 + 30);
                std::vector<BOOL>::__move_assign((v405 + 202), (v405 + 126));
                v416 = *(v405 + 66);
                *(v405 + 66) = 0;
                v417 = *(v405 + 104);
                *(v405 + 104) = v416;

                *(v405 + 420) = *(v405 + 268);
                *(v405 + 106) = *(v405 + 68);
                v405[214] = v405[138];
                std::__tree<int>::__move_assign(v405 + 108, v405 + 70);
                v405[224] = v405[148];
                v404 = *v405;
                v405 -= 76;
              }

              while (v470 < v404);
              v405[152] = v470;
              v418 = v471;
              v419 = v472;
              v420 = v474;
              *(v405 + 41) = v473;
              *(v405 + 42) = v420;
              *(v405 + 39) = v418;
              *(v405 + 40) = v419;
              v421 = v475;
              v422 = v476;
              v423 = v478;
              *(v405 + 45) = v477;
              *(v405 + 46) = v423;
              *(v405 + 43) = v421;
              *(v405 + 44) = v422;
              v424 = v479;
              v479 = 0;
              v425 = *(v405 + 94);
              *(v405 + 94) = v424;

              *(v405 + 190) = v480;
              v426 = v481;
              *&v481 = 0;
              v427 = *(v405 + 96);
              *(v405 + 96) = v426;

              v428 = *(&v481 + 1);
              *(&v481 + 1) = 0;
              v429 = *(v405 + 97);
              *(v405 + 97) = v428;

              v430 = *(v405 + 98);
              if (v430)
              {
                *(v405 + 99) = v430;
                operator delete(v430);
                *(v405 + 98) = 0;
                *(v405 + 99) = 0;
                *(v405 + 100) = 0;
              }

              *(v405 + 49) = *v482;
              *(v405 + 100) = v482[2];
              memset(v482, 0, sizeof(v482));
              v431 = *(v405 + 101);
              if (v431)
              {
                operator delete(v431);
                *(v405 + 101) = 0;
                *(v405 + 102) = 0;
                *(v405 + 103) = 0;
              }

              *(v405 + 101) = __p;
              *(v405 + 51) = v484;
              __p = 0;
              v484 = 0uLL;
              v432 = v485;
              v485 = 0;
              v433 = *(v405 + 104);
              *(v405 + 104) = v432;

              *(v405 + 420) = v486;
              v434 = v487;
              *(v405 + 214) = v488;
              *(v405 + 106) = v434;
              v435 = v405 + 218;
              std::__tree<int>::destroy((v405 + 216), *(v405 + 109));
              *(v405 + 108) = v489;
              v436 = v490;
              *(v405 + 109) = v490;
              v437 = v491;
              *(v405 + 110) = v491;
              if (v437)
              {
                v438 = 0;
                v436[2] = v435;
                v489 = &v490;
                v490 = 0;
                v491 = 0;
              }

              else
              {
                *(v405 + 108) = v435;
                v438 = v490;
              }

              *(v405 + 224) = v492;
              std::__tree<int>::destroy(&v489, v438);

              if (__p)
              {
                operator delete(__p);
              }

              if (v482[0])
              {
                v482[1] = v482[0];
                operator delete(v482[0]);
              }

              a2 = v444;
            }

            v391 = v393 + 76;
            v392 += 76;
            a1 = v393;
          }

          while (v393 + 76 != a2);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (a1 != a2)
      {
        v214 = v12 >> 1;
        v215 = v12 >> 1;
        do
        {
          v216 = v215;
          if (v214 >= v215)
          {
            v217 = (2 * v215) | 1;
            v218 = &a1[76 * v217];
            if (2 * v216 + 2 < v11 && *v218 < v218[76])
            {
              v218 += 76;
              v217 = 2 * v216 + 2;
            }

            v219 = &a1[76 * v216];
            if (*v218 >= *v219)
            {
              v470 = *v219;
              v220 = *(v219 + 1);
              v221 = *(v219 + 2);
              v222 = *(v219 + 4);
              v473 = *(v219 + 3);
              v474 = v222;
              v471 = v220;
              v472 = v221;
              v223 = *(v219 + 5);
              v224 = *(v219 + 6);
              v225 = *(v219 + 8);
              v477 = *(v219 + 7);
              v478 = v225;
              v475 = v223;
              v476 = v224;
              v226 = *(v219 + 18);
              *(v219 + 18) = 0;
              v479 = v226;
              v480 = *(v219 + 38);
              v227 = *(v219 + 10);
              *(v219 + 10) = 0u;
              v481 = v227;
              *v482 = *(v219 + 11);
              v482[2] = *(v219 + 24);
              *(v219 + 24) = 0;
              *(v219 + 11) = 0u;
              __p = *(v219 + 25);
              v484 = *(v219 + 13);
              *(v219 + 50) = 0u;
              v228 = *(v219 + 28);
              *(v219 + 27) = 0;
              *(v219 + 28) = 0;
              v485 = v228;
              v486 = *(v219 + 116);
              v229 = *(v219 + 30);
              v488 = *(v219 + 62);
              v487 = v229;
              v489 = *(v219 + 32);
              v230 = *(v219 + 33);
              v490 = v230;
              v491 = *(v219 + 34);
              if (v491)
              {
                v230[2] = &v490;
                *(v219 + 32) = v219 + 66;
                *(v219 + 33) = 0;
                *(v219 + 34) = 0;
              }

              else
              {
                v489 = &v490;
              }

              v492 = *(v219 + 72);
              v231 = *v218;
              while (1)
              {
                v232 = v218;
                *v219 = v231;
                v233 = *(v218 + 1);
                v234 = *(v218 + 2);
                v235 = *(v218 + 4);
                *(v219 + 3) = *(v218 + 3);
                *(v219 + 4) = v235;
                *(v219 + 1) = v233;
                *(v219 + 2) = v234;
                v236 = *(v218 + 5);
                v237 = *(v218 + 6);
                v238 = *(v218 + 8);
                *(v219 + 7) = *(v218 + 7);
                *(v219 + 8) = v238;
                *(v219 + 5) = v236;
                *(v219 + 6) = v237;
                v239 = *(v218 + 18);
                *(v232 + 18) = 0;
                v240 = *(v219 + 18);
                *(v219 + 18) = v239;

                v219[38] = v232[38];
                v241 = *(v232 + 20);
                *(v232 + 20) = 0;
                v242 = *(v219 + 20);
                *(v219 + 20) = v241;

                v243 = *(v232 + 21);
                *(v232 + 21) = 0;
                v244 = *(v219 + 21);
                *(v219 + 21) = v243;

                std::vector<float>::__move_assign((v219 + 44), v232 + 11);
                std::vector<BOOL>::__move_assign((v219 + 50), (v232 + 50));
                v245 = *(v232 + 28);
                *(v232 + 28) = 0;
                v246 = *(v219 + 28);
                *(v219 + 28) = v245;

                *(v219 + 116) = *(v232 + 116);
                v247 = *(v232 + 30);
                v219[62] = v232[62];
                *(v219 + 30) = v247;
                std::__tree<int>::__move_assign(v219 + 32, v232 + 32);
                v219[72] = v232[72];
                if (v214 < v217)
                {
                  break;
                }

                v248 = 2 * v217;
                v217 = (2 * v217) | 1;
                v218 = &a1[76 * v217];
                v249 = v248 + 2;
                if (v249 < v11 && *v218 < v218[76])
                {
                  v218 += 76;
                  v217 = v249;
                }

                v231 = *v218;
                v250 = v470;
                v219 = v232;
                if (*v218 < v470)
                {
                  goto LABEL_187;
                }
              }

              v250 = v470;
LABEL_187:
              *v232 = v250;
              v251 = v471;
              v252 = v472;
              v253 = v474;
              *(v232 + 3) = v473;
              *(v232 + 4) = v253;
              *(v232 + 1) = v251;
              *(v232 + 2) = v252;
              v254 = v475;
              v255 = v476;
              v256 = v478;
              *(v232 + 7) = v477;
              *(v232 + 8) = v256;
              *(v232 + 5) = v254;
              *(v232 + 6) = v255;
              v257 = v479;
              v479 = 0;
              v258 = *(v232 + 18);
              *(v232 + 18) = v257;

              *(v232 + 38) = v480;
              v259 = v481;
              *&v481 = 0;
              v260 = *(v232 + 20);
              *(v232 + 20) = v259;

              v261 = *(&v481 + 1);
              *(&v481 + 1) = 0;
              v262 = *(v232 + 21);
              *(v232 + 21) = v261;

              v263 = *(v232 + 22);
              if (v263)
              {
                *(v232 + 23) = v263;
                operator delete(v263);
                *(v232 + 22) = 0;
                *(v232 + 23) = 0;
                *(v232 + 24) = 0;
              }

              *(v232 + 11) = *v482;
              *(v232 + 24) = v482[2];
              memset(v482, 0, sizeof(v482));
              v264 = *(v232 + 25);
              if (v264)
              {
                operator delete(v264);
                *(v232 + 25) = 0;
                *(v232 + 26) = 0;
                *(v232 + 27) = 0;
              }

              *(v232 + 25) = __p;
              *(v232 + 13) = v484;
              __p = 0;
              v484 = 0uLL;
              v265 = v485;
              v485 = 0;
              v266 = *(v232 + 28);
              *(v232 + 28) = v265;

              *(v232 + 116) = v486;
              v267 = v487;
              *(v232 + 62) = v488;
              *(v232 + 30) = v267;
              v268 = v232 + 66;
              std::__tree<int>::destroy((v232 + 64), *(v232 + 33));
              *(v232 + 32) = v489;
              v269 = v490;
              *(v232 + 33) = v490;
              v270 = v491;
              *(v232 + 34) = v491;
              if (v270)
              {
                v271 = 0;
                v269[2] = v268;
                v489 = &v490;
                v490 = 0;
                v491 = 0;
              }

              else
              {
                *(v232 + 32) = v268;
                v271 = v490;
              }

              *(v232 + 72) = v492;
              std::__tree<int>::destroy(&v489, v271);

              if (__p)
              {
                operator delete(__p);
              }

              if (v482[0])
              {
                v482[1] = v482[0];
                operator delete(v482[0]);
              }
            }
          }

          v215 = v216 - 1;
        }

        while (v216);
        v272 = 0x86BCA1AF286BCA1BLL * (v10 >> 4);
        v441 = a1 + 66;
        v273 = v444;
        do
        {
          v445 = v273;
          v446 = *a1;
          v449 = *(a1 + 3);
          v450 = *(a1 + 4);
          v447 = *(a1 + 1);
          v448 = *(a1 + 2);
          v453 = *(a1 + 7);
          v454 = *(a1 + 8);
          v451 = *(a1 + 5);
          v452 = *(a1 + 6);
          v274 = *(a1 + 18);
          *(a1 + 18) = 0;
          v455 = v274;
          v456 = *(a1 + 38);
          v275 = *(a1 + 10);
          v276 = *(a1 + 11);
          *(a1 + 10) = 0u;
          v457 = v275;
          *v458 = v276;
          v277 = *(a1 + 25);
          v459 = *(a1 + 24);
          *(a1 + 24) = 0;
          *(a1 + 11) = 0u;
          v460 = v277;
          v461 = *(a1 + 13);
          *(a1 + 50) = 0u;
          v278 = *(a1 + 28);
          *(a1 + 27) = 0;
          *(a1 + 28) = 0;
          v462 = v278;
          v463 = *(a1 + 116);
          v465 = *(a1 + 62);
          v464 = *(a1 + 30);
          v279 = *(a1 + 33);
          v466 = *(a1 + 32);
          v467 = v279;
          v468 = *(a1 + 34);
          if (v468)
          {
            v279[2] = &v467;
            *(a1 + 32) = v441;
            *v441 = 0;
            *(a1 + 34) = 0;
          }

          else
          {
            v466 = &v467;
          }

          v280 = 0;
          v469 = *(a1 + 72);
          v281 = a1;
          do
          {
            v282 = &v281[76 * v280];
            v283 = v282 + 76;
            if (2 * v280 + 2 >= v272)
            {
              v280 = (2 * v280) | 1;
            }

            else if (v282[76] >= v282[152])
            {
              v280 = (2 * v280) | 1;
            }

            else
            {
              v283 = v282 + 152;
              v280 = 2 * v280 + 2;
            }

            *v281 = *v283;
            v284 = *(v283 + 1);
            v285 = *(v283 + 2);
            v286 = *(v283 + 4);
            *(v281 + 3) = *(v283 + 3);
            *(v281 + 4) = v286;
            *(v281 + 1) = v284;
            *(v281 + 2) = v285;
            v287 = *(v283 + 5);
            v288 = *(v283 + 6);
            v289 = *(v283 + 8);
            *(v281 + 7) = *(v283 + 7);
            *(v281 + 8) = v289;
            *(v281 + 5) = v287;
            *(v281 + 6) = v288;
            v290 = *(v283 + 18);
            *(v283 + 18) = 0;
            v291 = *(v281 + 18);
            *(v281 + 18) = v290;

            v281[38] = v283[38];
            v292 = *(v283 + 20);
            *(v283 + 20) = 0;
            v293 = *(v281 + 20);
            *(v281 + 20) = v292;

            v294 = *(v283 + 21);
            *(v283 + 21) = 0;
            v295 = *(v281 + 21);
            *(v281 + 21) = v294;

            std::vector<float>::__move_assign((v281 + 44), v283 + 11);
            std::vector<BOOL>::__move_assign((v281 + 50), (v283 + 50));
            v296 = *(v283 + 28);
            *(v283 + 28) = 0;
            v297 = *(v281 + 28);
            *(v281 + 28) = v296;

            *(v281 + 116) = *(v283 + 116);
            v299 = (v283 + 60);
            v298 = *(v283 + 30);
            v281[62] = v283[62];
            *(v281 + 30) = v298;
            std::__tree<int>::__move_assign(v281 + 32, v283 + 32);
            v281[72] = v283[72];
            v281 = v283;
          }

          while (v280 <= ((v272 - 2) >> 1));
          if (v283 == v445 - 76)
          {
            *v283 = v446;
            *(v283 + 3) = v449;
            *(v283 + 4) = v450;
            *(v283 + 1) = v447;
            *(v283 + 2) = v448;
            *(v283 + 7) = v453;
            *(v283 + 8) = v454;
            *(v283 + 5) = v451;
            *(v283 + 6) = v452;
            v328 = *(v283 + 18);
            *(v283 + 18) = v455;

            *(v283 + 38) = v456;
            v329 = *(v283 + 20);
            *(v283 + 20) = v457;

            v330 = *(v283 + 21);
            *(v283 + 21) = *(&v457 + 1);

            v331 = *(v283 + 22);
            if (v331)
            {
              *(v283 + 23) = v331;
              operator delete(v331);
              *(v283 + 22) = 0;
              *(v283 + 23) = 0;
              *(v283 + 24) = 0;
            }

            *(v283 + 11) = *v458;
            *(v283 + 24) = v459;
            v332 = *(v283 + 25);
            if (v332)
            {
              operator delete(v332);
              *(v283 + 25) = 0;
              *(v283 + 26) = 0;
              *(v283 + 27) = 0;
            }

            *(v283 + 25) = v460;
            *(v283 + 13) = v461;
            v333 = *(v283 + 28);
            *(v283 + 28) = v462;

            *(v283 + 116) = v463;
            *(v283 + 62) = v465;
            *v299 = v464;
            v334 = v283 + 66;
            std::__tree<int>::destroy((v283 + 64), *(v283 + 33));
            *(v283 + 32) = v466;
            v335 = v467;
            *(v283 + 33) = v467;
            v336 = v468;
            *(v283 + 34) = v468;
            if (v336)
            {
              v335[2] = v334;
              v466 = &v467;
              v467 = 0;
              v468 = 0;
            }

            else
            {
              *(v283 + 32) = v334;
            }

            *(v283 + 72) = v469;
          }

          else
          {
            *v283 = *(v445 - 76);
            v300 = v445 - 72;
            v301 = *(v445 - 18);
            v302 = *(v445 - 17);
            v303 = *(v445 - 15);
            *(v283 + 3) = *(v445 - 16);
            *(v283 + 4) = v303;
            *(v283 + 1) = v301;
            *(v283 + 2) = v302;
            v304 = *(v445 - 14);
            v305 = *(v445 - 13);
            v306 = *(v445 - 11);
            *(v283 + 7) = *(v445 - 12);
            *(v283 + 8) = v306;
            *(v283 + 5) = v304;
            *(v283 + 6) = v305;
            v308 = *(v445 - 20);
            v307 = v445 - 40;
            *v307 = 0;
            v309 = *(v283 + 18);
            *(v283 + 18) = v308;

            v310 = v445 - 38;
            v283[38] = *(v445 - 38);
            v311 = *(v445 - 18);
            *(v310 + 1) = 0;
            v312 = *(v283 + 20);
            *(v283 + 20) = v311;

            v313 = *(v445 - 17);
            *(v445 - 17) = 0;
            v314 = *(v283 + 21);
            *(v283 + 21) = v313;

            std::vector<float>::__move_assign((v283 + 44), v445 - 8);
            std::vector<BOOL>::__move_assign((v283 + 50), (v445 - 26));
            v315 = *(v445 - 10);
            *(v445 - 10) = 0;
            v316 = *(v283 + 28);
            *(v283 + 28) = v315;

            *(v283 + 116) = *(v445 - 36);
            v317 = *(v445 - 8);
            v283[62] = *(v445 - 14);
            *v299 = v317;
            std::__tree<int>::__move_assign(v283 + 32, v445 - 6);
            v283[72] = *(v445 - 4);
            *(v445 - 76) = v446;
            *(v300 + 2) = v449;
            *(v300 + 3) = v450;
            *v300 = v447;
            *(v300 + 1) = v448;
            *(v300 + 6) = v453;
            *(v300 + 7) = v454;
            *(v300 + 4) = v451;
            *(v300 + 5) = v452;
            v318 = *(v445 - 20);
            *v307 = v455;

            *v310 = v456;
            v319 = *(v445 - 18);
            *(v310 + 1) = v457;

            v320 = *(v445 - 17);
            *(v445 - 17) = *(&v457 + 1);

            v321 = *(v445 - 16);
            if (v321)
            {
              *(v445 - 15) = v321;
              operator delete(v321);
            }

            *(v445 - 8) = *v458;
            *(v445 - 14) = v459;
            v322 = *(v445 - 13);
            if (v322)
            {
              operator delete(v322);
            }

            *(v445 - 13) = v460;
            *(v445 - 6) = v461;
            v323 = *(v445 - 10);
            *(v445 - 10) = v462;

            v325 = v445 - 10;
            v324 = *(v445 - 5);
            *(v445 - 36) = v463;
            *(v445 - 14) = v465;
            *(v445 - 8) = v464;
            std::__tree<int>::destroy((v445 - 12), v324);
            *(v445 - 6) = v466;
            v326 = v467;
            *v325 = v467;
            v327 = v468;
            *(v325 + 1) = v468;
            if (v327)
            {
              v326[2] = v325;
              v466 = &v467;
              v467 = 0;
              v468 = 0;
            }

            else
            {
              *(v445 - 6) = v325;
            }

            *(v445 - 4) = v469;
            v337 = (v283 + 76) - a1;
            if (v337 >= 305)
            {
              v338 = (-2 - 0x79435E50D79435E5 * (v337 >> 4)) >> 1;
              v339 = &a1[76 * v338];
              if (*v339 < *v283)
              {
                v470 = *v283;
                v340 = *(v283 + 4);
                v342 = *(v283 + 1);
                v341 = *(v283 + 2);
                v473 = *(v283 + 3);
                v474 = v340;
                v471 = v342;
                v472 = v341;
                v343 = *(v283 + 8);
                v345 = *(v283 + 5);
                v344 = *(v283 + 6);
                v477 = *(v283 + 7);
                v478 = v343;
                v475 = v345;
                v476 = v344;
                v346 = *(v283 + 18);
                *(v283 + 18) = 0;
                v479 = v346;
                v480 = *(v283 + 38);
                v347 = *(v283 + 10);
                v348 = *(v283 + 11);
                *(v283 + 10) = 0u;
                v481 = v347;
                *v482 = v348;
                v349 = *(v283 + 25);
                v482[2] = *(v283 + 24);
                *(v283 + 24) = 0;
                *(v283 + 11) = 0u;
                __p = v349;
                v484 = *(v283 + 13);
                *(v283 + 50) = 0u;
                v350 = *(v283 + 28);
                *(v283 + 27) = 0;
                *(v283 + 28) = 0;
                v485 = v350;
                v486 = *(v283 + 116);
                v351 = *v299;
                v488 = *(v283 + 62);
                v487 = v351;
                v352 = *(v283 + 33);
                v489 = *(v283 + 32);
                v490 = v352;
                v491 = *(v283 + 34);
                if (v491)
                {
                  v352[2] = &v490;
                  *(v283 + 32) = v283 + 66;
                  *(v283 + 33) = 0;
                  *(v283 + 34) = 0;
                }

                else
                {
                  v489 = &v490;
                }

                v492 = *(v283 + 72);
                v353 = *v339;
                do
                {
                  v354 = v339;
                  *v283 = v353;
                  v355 = *(v339 + 1);
                  v356 = *(v339 + 2);
                  v357 = *(v339 + 4);
                  *(v283 + 3) = *(v339 + 3);
                  *(v283 + 4) = v357;
                  *(v283 + 1) = v355;
                  *(v283 + 2) = v356;
                  v358 = *(v339 + 5);
                  v359 = *(v339 + 6);
                  v360 = *(v339 + 8);
                  *(v283 + 7) = *(v339 + 7);
                  *(v283 + 8) = v360;
                  *(v283 + 5) = v358;
                  *(v283 + 6) = v359;
                  v361 = *(v339 + 18);
                  *(v354 + 18) = 0;
                  v362 = *(v283 + 18);
                  *(v283 + 18) = v361;

                  v283[38] = v354[38];
                  v363 = *(v354 + 20);
                  *(v354 + 20) = 0;
                  v364 = *(v283 + 20);
                  *(v283 + 20) = v363;

                  v365 = *(v354 + 21);
                  *(v354 + 21) = 0;
                  v366 = *(v283 + 21);
                  *(v283 + 21) = v365;

                  std::vector<float>::__move_assign((v283 + 44), v354 + 11);
                  std::vector<BOOL>::__move_assign((v283 + 50), (v354 + 50));
                  v367 = *(v354 + 28);
                  *(v354 + 28) = 0;
                  v368 = *(v283 + 28);
                  *(v283 + 28) = v367;

                  *(v283 + 116) = *(v354 + 116);
                  v369 = *(v354 + 30);
                  v283[62] = v354[62];
                  *(v283 + 30) = v369;
                  std::__tree<int>::__move_assign(v283 + 32, v354 + 32);
                  v283[72] = v354[72];
                  if (!v338)
                  {
                    break;
                  }

                  v338 = (v338 - 1) >> 1;
                  v339 = &a1[76 * v338];
                  v353 = *v339;
                  v283 = v354;
                }

                while (*v339 < v470);
                *v354 = v470;
                v370 = v471;
                v371 = v472;
                v372 = v474;
                *(v354 + 3) = v473;
                *(v354 + 4) = v372;
                *(v354 + 1) = v370;
                *(v354 + 2) = v371;
                v373 = v475;
                v374 = v476;
                v375 = v478;
                *(v354 + 7) = v477;
                *(v354 + 8) = v375;
                *(v354 + 5) = v373;
                *(v354 + 6) = v374;
                v376 = v479;
                v479 = 0;
                v377 = *(v354 + 18);
                *(v354 + 18) = v376;

                *(v354 + 38) = v480;
                v378 = v481;
                *&v481 = 0;
                v379 = *(v354 + 20);
                *(v354 + 20) = v378;

                v380 = *(&v481 + 1);
                *(&v481 + 1) = 0;
                v381 = *(v354 + 21);
                *(v354 + 21) = v380;

                v382 = *(v354 + 22);
                if (v382)
                {
                  *(v354 + 23) = v382;
                  operator delete(v382);
                }

                *(v354 + 11) = *v482;
                *(v354 + 24) = v482[2];
                memset(v482, 0, sizeof(v482));
                v383 = *(v354 + 25);
                if (v383)
                {
                  operator delete(v383);
                }

                *(v354 + 25) = __p;
                *(v354 + 13) = v484;
                __p = 0;
                v484 = 0uLL;
                v384 = v485;
                v485 = 0;
                v385 = *(v354 + 28);
                *(v354 + 28) = v384;

                *(v354 + 116) = v486;
                v386 = v487;
                *(v354 + 62) = v488;
                *(v354 + 30) = v386;
                v387 = v354 + 66;
                std::__tree<int>::destroy((v354 + 64), *(v354 + 33));
                *(v354 + 32) = v489;
                v388 = v490;
                *(v354 + 33) = v490;
                v389 = v491;
                *(v354 + 34) = v491;
                if (v389)
                {
                  v388[2] = v387;
                  v388 = 0;
                  v489 = &v490;
                  v490 = 0;
                  v491 = 0;
                }

                else
                {
                  *(v354 + 32) = v387;
                }

                *(v354 + 72) = v492;
                std::__tree<int>::destroy(&v489, v388);

                if (__p)
                {
                  operator delete(__p);
                }

                if (v482[0])
                {
                  v482[1] = v482[0];
                  operator delete(v482[0]);
                }
              }
            }
          }

          std::__tree<int>::destroy(&v466, v467);

          v273 = v445 - 76;
        }

        while (v272-- > 2);
      }

      return result;
    }

    v13 = v11 >> 1;
    v14 = &a1[76 * (v11 >> 1)];
    v15 = *v8;
    if (v10 >= 0x9801)
    {
      v16 = *v14;
      if (*v14 >= *a1)
      {
        if (v15 >= v16 || (std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v14, v8), *v14 >= *a1))
        {
LABEL_27:
          v22 = &a1[76 * v13 - 76];
          v23 = *v22;
          v24 = *v440;
          if (*v22 >= a1[76])
          {
            if (v24 >= v23 || (std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(&a1[76 * v13 - 76], v440), *v22 >= a1[76]))
            {
LABEL_39:
              v27 = &a1[76 * v13 + 76];
              v28 = *v27;
              v29 = *v439;
              if (*v27 >= a1[152])
              {
                if (v29 >= v28 || (std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(&a1[76 * v13 + 76], v439), *v27 >= a1[152]))
                {
LABEL_48:
                  v32 = *v14;
                  v33 = *v27;
                  if (*v14 >= *v22)
                  {
                    if (v33 >= v32)
                    {
                      goto LABEL_57;
                    }

                    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v14, &a1[76 * v13 + 76]);
                    if (*v14 >= *v22)
                    {
                      goto LABEL_57;
                    }

                    v34 = &a1[76 * v13 - 76];
                    v35 = v14;
                  }

                  else
                  {
                    v34 = &a1[76 * v13 - 76];
                    if (v33 >= v32)
                    {
                      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v34, v14);
                      if (*v27 >= *v14)
                      {
LABEL_57:
                        v20 = a1;
                        v21 = v14;
                        goto LABEL_58;
                      }

                      v34 = v14;
                    }

                    v35 = &a1[76 * v13 + 76];
                  }

                  std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v34, v35);
                  goto LABEL_57;
                }

                v30 = a1 + 152;
                v31 = &a1[76 * v13 + 76];
              }

              else
              {
                v30 = a1 + 152;
                if (v29 >= v28)
                {
                  std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v30, &a1[76 * v13 + 76]);
                  if (*v439 >= *v27)
                  {
                    goto LABEL_48;
                  }

                  v30 = &a1[76 * v13 + 76];
                }

                v31 = v439;
              }

              std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v30, v31);
              goto LABEL_48;
            }

            v25 = a1 + 76;
            v26 = &a1[76 * v13 - 76];
          }

          else
          {
            v25 = a1 + 76;
            if (v24 >= v23)
            {
              std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v25, &a1[76 * v13 - 76]);
              if (*v440 >= *v22)
              {
                goto LABEL_39;
              }

              v25 = &a1[76 * v13 - 76];
            }

            v26 = v440;
          }

          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v25, v26);
          goto LABEL_39;
        }

        v17 = a1;
        v18 = v14;
      }

      else
      {
        v17 = a1;
        if (v15 >= v16)
        {
          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v14);
          if (*v8 >= *v14)
          {
            goto LABEL_27;
          }

          v17 = v14;
        }

        v18 = v8;
      }

      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v17, v18);
      goto LABEL_27;
    }

    v19 = *a1;
    if (*a1 >= *v14)
    {
      if (v15 >= v19)
      {
        goto LABEL_59;
      }

      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v8);
      if (*a1 >= *v14)
      {
        goto LABEL_59;
      }

      v20 = v14;
      v21 = a1;
    }

    else
    {
      v20 = v14;
      if (v15 >= v19)
      {
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v14, a1);
        if (*v8 >= *a1)
        {
          goto LABEL_59;
        }

        v20 = a1;
      }

      v21 = v8;
    }

LABEL_58:
    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v20, v21);
LABEL_59:
    --a3;
    v36 = *a1;
    if ((a4 & 1) != 0 || *(a1 - 76) < v36)
    {
      v470 = *a1;
      v37 = *(a1 + 4);
      v39 = *(a1 + 1);
      v38 = *(a1 + 2);
      v473 = *(a1 + 3);
      v474 = v37;
      v471 = v39;
      v472 = v38;
      v40 = *(a1 + 8);
      v42 = *(a1 + 5);
      v41 = *(a1 + 6);
      v477 = *(a1 + 7);
      v478 = v40;
      v475 = v42;
      v476 = v41;
      v43 = *(a1 + 18);
      *(a1 + 18) = 0;
      v479 = v43;
      v480 = *(a1 + 38);
      v44 = *(a1 + 10);
      *(a1 + 10) = 0u;
      v45 = *(a1 + 11);
      v481 = v44;
      *v482 = v45;
      v482[2] = *(a1 + 24);
      *(a1 + 24) = 0;
      *(a1 + 11) = 0u;
      __p = *(a1 + 25);
      v484 = *(a1 + 13);
      *(a1 + 50) = 0u;
      v46 = *(a1 + 28);
      *(a1 + 27) = 0;
      *(a1 + 28) = 0;
      v485 = v46;
      v486 = *(a1 + 116);
      v47 = *(a1 + 30);
      v488 = *(a1 + 62);
      v487 = v47;
      v48 = *(a1 + 33);
      v489 = *(a1 + 32);
      v490 = v48;
      v491 = *(a1 + 34);
      v443 = a3;
      if (v491)
      {
        v48[2] = &v490;
        *(a1 + 32) = a1 + 66;
        *(a1 + 33) = 0;
        *(a1 + 34) = 0;
      }

      else
      {
        v489 = &v490;
      }

      v49 = v8;
      v50 = 0;
      v492 = *(a1 + 72);
      do
      {
        v51 = a1[v50 + 76];
        v50 += 76;
      }

      while (v51 < v36);
      v52 = &a1[v50];
      if (v50 == 76)
      {
        a2 = v444;
        do
        {
          if (v52 >= a2)
          {
            break;
          }

          a2 -= 76;
        }

        while (*a2 >= v36);
      }

      else
      {
        do
        {
          a2 -= 76;
        }

        while (*a2 >= v36);
      }

      v9 = &a1[v50];
      if (v52 < a2)
      {
        v53 = a2;
        do
        {
          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v9, v53);
          v36 = v470;
          do
          {
            v54 = v9[76];
            v9 += 76;
          }

          while (v54 < v470);
          do
          {
            v53 -= 76;
          }

          while (*v53 >= v470);
        }

        while (v9 < v53);
      }

      v55 = v9 - 76;
      if (v9 - 76 != a1)
      {
        *a1 = *v55;
        v56 = *(v9 - 18);
        v57 = *(v9 - 17);
        v58 = *(v9 - 15);
        *(a1 + 3) = *(v9 - 16);
        *(a1 + 4) = v58;
        *(a1 + 1) = v56;
        *(a1 + 2) = v57;
        v59 = *(v9 - 14);
        v60 = *(v9 - 13);
        v61 = *(v9 - 11);
        *(a1 + 7) = *(v9 - 12);
        *(a1 + 8) = v61;
        *(a1 + 5) = v59;
        *(a1 + 6) = v60;
        v62 = *(v9 - 20);
        *(v9 - 20) = 0;
        v63 = *(a1 + 18);
        *(a1 + 18) = v62;

        a1[38] = *(v9 - 38);
        v64 = *(v9 - 18);
        *(v9 - 18) = 0;
        v65 = *(a1 + 20);
        *(a1 + 20) = v64;

        v66 = *(v9 - 17);
        *(v9 - 17) = 0;
        v67 = *(a1 + 21);
        *(a1 + 21) = v66;

        std::vector<float>::__move_assign((a1 + 44), v9 - 8);
        std::vector<BOOL>::__move_assign((a1 + 50), (v9 - 26));
        v68 = *(v9 - 10);
        *(v9 - 10) = 0;
        v69 = *(a1 + 28);
        *(a1 + 28) = v68;

        *(a1 + 116) = *(v9 - 36);
        v70 = *(v9 - 8);
        a1[62] = *(v9 - 14);
        *(a1 + 30) = v70;
        std::__tree<int>::__move_assign(a1 + 32, v9 - 6);
        a1[72] = *(v9 - 4);
        v36 = v470;
      }

      *v55 = v36;
      v71 = v9 - 72;
      v72 = v471;
      v73 = v472;
      v74 = v474;
      *(v9 - 16) = v473;
      *(v9 - 15) = v74;
      *v71 = v72;
      *(v71 + 1) = v73;
      v75 = v475;
      v76 = v476;
      v77 = v478;
      *(v9 - 12) = v477;
      *(v9 - 11) = v77;
      *(v9 - 14) = v75;
      *(v9 - 13) = v76;
      v78 = v479;
      v479 = 0;
      v79 = *(v9 - 20);
      *(v9 - 20) = v78;

      *(v9 - 38) = v480;
      v80 = v481;
      *&v481 = 0;
      v81 = *(v9 - 18);
      *(v9 - 18) = v80;

      v82 = *(&v481 + 1);
      *(&v481 + 1) = 0;
      v83 = *(v9 - 17);
      *(v9 - 17) = v82;

      v84 = *(v9 - 16);
      if (v84)
      {
        *(v9 - 15) = v84;
        operator delete(v84);
        *(v9 - 16) = 0;
        *(v9 - 15) = 0;
        *(v9 - 14) = 0;
      }

      *(v9 - 8) = *v482;
      *(v9 - 14) = v482[2];
      memset(v482, 0, sizeof(v482));
      v85 = *(v9 - 13);
      if (v85)
      {
        operator delete(v85);
        *(v9 - 13) = 0;
        *(v9 - 12) = 0;
        *(v9 - 11) = 0;
      }

      *(v9 - 13) = __p;
      *(v9 - 6) = v484;
      __p = 0;
      v484 = 0uLL;
      v86 = v485;
      v485 = 0;
      v87 = *(v9 - 10);
      *(v9 - 10) = v86;

      v89 = v9 - 10;
      v88 = *(v9 - 5);
      *(v9 - 36) = v486;
      v90 = v487;
      *(v9 - 14) = v488;
      *(v9 - 8) = v90;
      std::__tree<int>::destroy((v9 - 12), v88);
      *(v9 - 6) = v489;
      v91 = v490;
      *(v9 - 5) = v490;
      v92 = v491;
      *(v9 - 4) = v491;
      if (v92)
      {
        v93 = 0;
        v91[2] = v89;
        v489 = &v490;
        v490 = 0;
        v491 = 0;
      }

      else
      {
        *(v9 - 6) = v89;
        v93 = v490;
      }

      *(v9 - 4) = v492;
      std::__tree<int>::destroy(&v489, v93);

      if (__p)
      {
        operator delete(__p);
      }

      if (v482[0])
      {
        v482[1] = v482[0];
        operator delete(v482[0]);
      }

      v94 = v52 < a2;

      v8 = v49;
      a3 = v443;
      a2 = v444;
      if (v94)
      {
        goto LABEL_94;
      }

      v95 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v9 - 76);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v9, v444))
      {
        a2 = v9 - 76;
        if (!v95)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v95)
      {
LABEL_94:
        result = std::__introsort<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,false>(a1, v9 - 76, v443, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v470 = *a1;
      v96 = *(a1 + 4);
      v98 = *(a1 + 1);
      v97 = *(a1 + 2);
      v473 = *(a1 + 3);
      v474 = v96;
      v471 = v98;
      v472 = v97;
      v99 = *(a1 + 8);
      v101 = *(a1 + 5);
      v100 = *(a1 + 6);
      v477 = *(a1 + 7);
      v478 = v99;
      v475 = v101;
      v476 = v100;
      v102 = *(a1 + 18);
      *(a1 + 18) = 0;
      v479 = v102;
      v480 = *(a1 + 38);
      v103 = *(a1 + 10);
      *(a1 + 10) = 0u;
      v104 = *(a1 + 11);
      v481 = v103;
      *v482 = v104;
      v482[2] = *(a1 + 24);
      *(a1 + 24) = 0;
      *(a1 + 11) = 0u;
      __p = *(a1 + 25);
      v484 = *(a1 + 13);
      *(a1 + 50) = 0u;
      v105 = *(a1 + 28);
      *(a1 + 27) = 0;
      *(a1 + 28) = 0;
      v485 = v105;
      v486 = *(a1 + 116);
      v106 = *(a1 + 30);
      v488 = *(a1 + 62);
      v487 = v106;
      v107 = *(a1 + 33);
      v489 = *(a1 + 32);
      v490 = v107;
      v491 = *(a1 + 34);
      if (v491)
      {
        v107[2] = &v490;
        *(a1 + 32) = a1 + 66;
        *(a1 + 33) = 0;
        *(a1 + 34) = 0;
      }

      else
      {
        v489 = &v490;
      }

      v492 = *(a1 + 72);
      if (v36 >= *v8)
      {
        v110 = a1 + 76;
        do
        {
          v9 = v110;
          if (v110 >= v444)
          {
            break;
          }

          v110 += 76;
        }

        while (v36 >= *v9);
      }

      else
      {
        v108 = a1;
        do
        {
          v9 = v108 + 76;
          v109 = v108[76];
          v108 += 76;
        }

        while (v36 >= v109);
      }

      v111 = v444;
      if (v9 < v444)
      {
        v111 = v444;
        do
        {
          v111 -= 76;
        }

        while (v36 < *v111);
      }

      while (v9 < v111)
      {
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v9, v111);
        v36 = v470;
        do
        {
          v112 = v9[76];
          v9 += 76;
        }

        while (v470 >= v112);
        do
        {
          v111 -= 76;
        }

        while (v470 < *v111);
      }

      v113 = v9 - 76;
      if (v9 - 76 != a1)
      {
        *a1 = *v113;
        v114 = *(v9 - 18);
        v115 = *(v9 - 17);
        v116 = *(v9 - 15);
        *(a1 + 3) = *(v9 - 16);
        *(a1 + 4) = v116;
        *(a1 + 1) = v114;
        *(a1 + 2) = v115;
        v117 = *(v9 - 14);
        v118 = *(v9 - 13);
        v119 = *(v9 - 11);
        *(a1 + 7) = *(v9 - 12);
        *(a1 + 8) = v119;
        *(a1 + 5) = v117;
        *(a1 + 6) = v118;
        v120 = *(v9 - 20);
        *(v9 - 20) = 0;
        v121 = *(a1 + 18);
        *(a1 + 18) = v120;

        a1[38] = *(v9 - 38);
        v122 = *(v9 - 18);
        *(v9 - 18) = 0;
        v123 = *(a1 + 20);
        *(a1 + 20) = v122;

        v124 = *(v9 - 17);
        *(v9 - 17) = 0;
        v125 = *(a1 + 21);
        *(a1 + 21) = v124;

        std::vector<float>::__move_assign((a1 + 44), v9 - 8);
        std::vector<BOOL>::__move_assign((a1 + 50), (v9 - 26));
        v126 = *(v9 - 10);
        *(v9 - 10) = 0;
        v127 = *(a1 + 28);
        *(a1 + 28) = v126;

        *(a1 + 116) = *(v9 - 36);
        v128 = *(v9 - 8);
        a1[62] = *(v9 - 14);
        *(a1 + 30) = v128;
        std::__tree<int>::__move_assign(a1 + 32, v9 - 6);
        a1[72] = *(v9 - 4);
        v36 = v470;
      }

      *v113 = v36;
      v129 = v9 - 72;
      v130 = v471;
      v131 = v472;
      v132 = v474;
      *(v9 - 16) = v473;
      *(v9 - 15) = v132;
      *v129 = v130;
      *(v129 + 1) = v131;
      v133 = v475;
      v134 = v476;
      v135 = v478;
      *(v9 - 12) = v477;
      *(v9 - 11) = v135;
      *(v9 - 14) = v133;
      *(v9 - 13) = v134;
      v136 = v479;
      v479 = 0;
      v137 = *(v9 - 20);
      *(v9 - 20) = v136;

      *(v9 - 38) = v480;
      v138 = v481;
      *&v481 = 0;
      v139 = *(v9 - 18);
      *(v9 - 18) = v138;

      v140 = *(&v481 + 1);
      *(&v481 + 1) = 0;
      v141 = *(v9 - 17);
      *(v9 - 17) = v140;

      v142 = *(v9 - 16);
      if (v142)
      {
        *(v9 - 15) = v142;
        operator delete(v142);
        *(v9 - 16) = 0;
        *(v9 - 15) = 0;
        *(v9 - 14) = 0;
      }

      *(v9 - 8) = *v482;
      *(v9 - 14) = v482[2];
      memset(v482, 0, sizeof(v482));
      v143 = *(v9 - 13);
      if (v143)
      {
        operator delete(v143);
        *(v9 - 13) = 0;
        *(v9 - 12) = 0;
        *(v9 - 11) = 0;
      }

      *(v9 - 13) = __p;
      *(v9 - 6) = v484;
      __p = 0;
      v484 = 0uLL;
      v144 = v485;
      v485 = 0;
      v145 = *(v9 - 10);
      *(v9 - 10) = v144;

      v147 = v9 - 10;
      v146 = *(v9 - 5);
      *(v9 - 36) = v486;
      v148 = v487;
      *(v9 - 14) = v488;
      *(v9 - 8) = v148;
      std::__tree<int>::destroy((v9 - 12), v146);
      *(v9 - 6) = v489;
      v149 = v490;
      *(v9 - 5) = v490;
      v150 = v491;
      *(v9 - 4) = v491;
      if (v150)
      {
        v151 = 0;
        v149[2] = v147;
        v489 = &v490;
        v490 = 0;
        v491 = 0;
      }

      else
      {
        *(v9 - 6) = v147;
        v151 = v490;
      }

      *(v9 - 4) = v492;
      std::__tree<int>::destroy(&v489, v151);

      if (__p)
      {
        operator delete(__p);
      }

      if (v482[0])
      {
        v482[1] = v482[0];
        operator delete(v482[0]);
      }

      a4 = 0;
      a2 = v444;
    }
  }

  v155 = a1 + 152;
  v156 = a1 + 228;
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(a1, a1 + 76, a1 + 152, a1 + 228);
  result = *v8;
  if (*v8 < a1[228])
  {
    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1 + 228, v8);
    result = *v156;
    if (*v156 < *v155)
    {
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1 + 152, a1 + 228);
      result = *v155;
      if (*v155 < a1[76])
      {
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1 + 76, a1 + 152);
        result = a1[76];
        if (result < *a1)
        {
          v153 = a1;
          v154 = (a1 + 76);
          goto LABEL_136;
        }
      }
    }
  }

  return result;
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(float *result, float *a2, float *a3, float *a4)
{
  v7 = result;
  v8 = *a2;
  v9 = *a3;
  if (*a2 >= *result)
  {
    if (v9 < v8)
    {
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a2, a3);
      if (*a2 < *v7)
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(result, v10);
      goto LABEL_10;
    }

    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(result, a2);
    if (*a3 < *a2)
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*a4 < *a3)
  {
    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a3, a4);
    if (*a3 < *a2)
    {
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a2, a3);
      if (*a2 < *v7)
      {

        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(float *a1, float *a2)
{
  v3 = a1;
  v80 = *MEMORY[0x277D85DE8];
  v4 = 0x86BCA1AF286BCA1BLL * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v10 = (a2 - 76);
        v11 = a1[76];
        v12 = *(a2 - 76);
        if (v11 >= *a1)
        {
          if (v12 >= v11)
          {
            return 1;
          }

          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1 + 76, v10);
          if (v3[76] >= *v3)
          {
            return 1;
          }

          v5 = (v3 + 76);
          goto LABEL_5;
        }

        if (v12 >= v11)
        {
          std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, a1 + 76);
          if (*v10 >= v3[76])
          {
            return 1;
          }

          a1 = v3 + 76;
        }

        v5 = v10;
        goto LABEL_30;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(a1, a1 + 76, a1 + 152, a2 - 76);
        return 1;
      case 5:
        v6 = a1 + 76;
        v7 = a1 + 152;
        v8 = a1 + 228;
        v9 = (a2 - 76);
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::$_0 &,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,0>(a1, a1 + 76, a1 + 152, a1 + 228);
        if (*v9 >= v3[228])
        {
          return 1;
        }

        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v3 + 228, v9);
        if (*v8 >= *v7)
        {
          return 1;
        }

        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v3 + 152, v3 + 228);
        if (*v7 >= *v6)
        {
          return 1;
        }

        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(v3 + 76, v3 + 152);
        if (v3[76] >= *v3)
        {
          return 1;
        }

        a1 = v3;
        v5 = (v3 + 76);
        goto LABEL_30;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 76);
      if (*(a2 - 76) < *a1)
      {
LABEL_5:
        a1 = v3;
LABEL_30:
        std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v5);
      }

      return 1;
    }
  }

  v13 = a1 + 152;
  v14 = a1[76];
  v15 = a1[152];
  if (v14 < *a1)
  {
    if (v15 >= v14)
    {
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, a1 + 76);
      if (v3[152] >= v3[76])
      {
        goto LABEL_35;
      }

      a1 = v3 + 76;
    }

    v16 = (v3 + 152);
    goto LABEL_34;
  }

  if (v15 < v14)
  {
    std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1 + 76, a1 + 152);
    if (v3[76] < *v3)
    {
      v16 = (v3 + 76);
      a1 = v3;
LABEL_34:
      std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(a1, v16);
    }
  }

LABEL_35:
  v17 = v3 + 228;
  if (v3 + 228 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    if (*v17 < *v13)
    {
      v57 = *v17;
      v62 = *(v17 + 5);
      v63 = *(v17 + 6);
      v64 = *(v17 + 7);
      v65 = *(v17 + 8);
      v58 = *(v17 + 1);
      v59 = *(v17 + 2);
      v60 = *(v17 + 3);
      v61 = *(v17 + 4);
      v20 = *(v17 + 18);
      *(v17 + 18) = 0;
      v66 = v20;
      v67 = *(v17 + 38);
      v68 = *(v17 + 10);
      *v69 = *(v17 + 11);
      *(v17 + 10) = 0u;
      *(v17 + 11) = 0u;
      *&v69[16] = *(v17 + 24);
      __p = *(v17 + 25);
      v71 = *(v17 + 13);
      *(v17 + 12) = 0u;
      *(v17 + 13) = 0u;
      v21 = *(v17 + 28);
      *(v17 + 28) = 0;
      v72 = v21;
      v73 = *(v17 + 116);
      v75 = *(v17 + 62);
      v74 = *(v17 + 30);
      v22 = *(v17 + 33);
      v76 = *(v17 + 32);
      v77 = v22;
      v78 = *(v17 + 34);
      if (v78)
      {
        v22[2] = &v77;
        *(v17 + 32) = v17 + 66;
        *(v17 + 33) = 0;
        *(v17 + 34) = 0;
      }

      else
      {
        v76 = &v77;
      }

      v79 = *(v17 + 72);
      v23 = *v13;
      v24 = v18;
      while (1)
      {
        v25 = v24;
        v26 = (v3 + v24);
        v26[228] = v23;
        v27 = *(v3 + v24 + 704);
        *(v26 + 62) = *(v3 + v24 + 688);
        *(v26 + 63) = v27;
        v28 = *(v3 + v24 + 736);
        *(v26 + 64) = *(v3 + v24 + 720);
        *(v26 + 65) = v28;
        v29 = *(v3 + v24 + 640);
        *(v26 + 58) = *(v3 + v24 + 624);
        *(v26 + 59) = v29;
        v30 = *(v3 + v24 + 672);
        *(v26 + 60) = *(v3 + v24 + 656);
        *(v26 + 61) = v30;
        v31 = *(v3 + v24 + 752);
        *(v26 + 94) = 0;
        v32 = *(v26 + 132);
        *(v26 + 132) = v31;

        v26[266] = v26[190];
        v33 = *(v26 + 96);
        *(v26 + 96) = 0;
        v34 = *(v26 + 134);
        *(v26 + 134) = v33;

        v35 = *(v26 + 97);
        *(v26 + 97) = 0;
        v36 = (v3 + v25);
        v37 = *(v3 + v25 + 1080);
        *(v3 + v25 + 1080) = v35;

        std::vector<float>::__move_assign(&v36[68], v36 + 49);
        std::vector<BOOL>::__move_assign(&v36[69].n128_i64[1], &v36[50].n128_i64[1]);
        v38 = *(v3 + v25 + 832);
        v36[52].n128_u64[0] = 0;
        v39 = *(v3 + v25 + 1136);
        v36[71].n128_u64[0] = v38;

        v40 = v3 + v25;
        *(v40 + 572) = *(v3 + v25 + 840);
        *(v40 + 144) = *(v3 + v25 + 848);
        *(v40 + 290) = *(v3 + v25 + 856);
        std::__tree<int>::__move_assign((v3 + v25 + 1168), (v3 + v25 + 864));
        *(v40 + 300) = *(v40 + 224);
        if (v25 == -608)
        {
          break;
        }

        v23 = *(v40 + 76);
        v24 = v25 - 304;
        if (v57 >= v23)
        {
          v41 = v3 + v24 + 912;
          goto LABEL_46;
        }
      }

      v41 = v3;
LABEL_46:
      *v41 = v57;
      *(v40 + 45) = v64;
      *(v40 + 46) = v65;
      *(v40 + 43) = v62;
      *(v40 + 44) = v63;
      *(v40 + 39) = v58;
      *(v40 + 40) = v59;
      *(v40 + 41) = v60;
      *(v40 + 42) = v61;
      v42 = *(v41 + 144);
      *(v41 + 144) = v66;

      *(v41 + 152) = v67;
      v43 = *(v41 + 160);
      *(v41 + 160) = v68;

      v44 = *(v41 + 168);
      *(v41 + 168) = *(&v68 + 1);

      v45 = v3 + v25;
      v46 = (v3 + v25 + 784);
      v47 = *v46;
      if (*v46)
      {
        *(v41 + 184) = v47;
        operator delete(v47);
        *v46 = 0;
        *(v3 + v25 + 792) = 0;
        *(v3 + v25 + 800) = 0;
      }

      v48 = v45 + 808;
      *v46 = *v69;
      *(v41 + 184) = *&v69[8];
      v49 = *(v45 + 101);
      if (v49)
      {
        operator delete(v49);
        *v48 = 0;
        *(v45 + 102) = 0;
        *(v45 + 103) = 0;
      }

      *v48 = __p;
      *(v41 + 208) = v71;
      v50 = *(v41 + 224);
      *(v41 + 224) = v72;

      v51 = (v45 + 864);
      *(v41 + 232) = v73;
      *(v45 + 214) = v75;
      *(v45 + 106) = v74;
      v52 = v41 + 264;
      std::__tree<int>::destroy(v51, *(v41 + 264));
      v53 = v77;
      *v51 = v76;
      v54 = v78;
      *(v41 + 264) = v53;
      *(v41 + 272) = v54;
      if (v54)
      {
        v55 = 0;
        v53[2] = v52;
        v76 = &v77;
        v77 = 0;
        v78 = 0;
      }

      else
      {
        *v51 = v52;
        v55 = v77;
      }

      *(v41 + 288) = v79;
      std::__tree<int>::destroy(&v76, v55);

      ++v19;
      if (v19 == 8)
      {
        return v17 + 76 == a2;
      }
    }

    v13 = v17;
    v18 += 304;
    v17 += 76;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

void std::iter_swap[abi:ne200100]<OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *,OU3DKitchenObjectMerger::SortBasedOnDistance(std::vector<float> const&,std::vector<OU3DKitchenObject> const&,std::vector<int> const&)::SortInfo *>(int *a1, int *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v37 = *a1;
  v42 = *(a1 + 5);
  v43 = *(a1 + 6);
  v44 = *(a1 + 7);
  v45 = *(a1 + 8);
  v38 = *(a1 + 1);
  v39 = *(a1 + 2);
  v40 = *(a1 + 3);
  v41 = *(a1 + 4);
  v4 = *(a1 + 18);
  *(a1 + 18) = 0;
  v46 = v4;
  v47 = a1[38];
  v5 = *(a1 + 10);
  *(a1 + 10) = 0u;
  v6 = a1 + 44;
  v48 = v5;
  *v49 = *(a1 + 11);
  v7 = *(a1 + 24);
  *(a1 + 11) = 0u;
  v8 = a1 + 50;
  v50 = v7;
  __p = *(a1 + 25);
  v52 = *(a1 + 13);
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  v9 = *(a1 + 28);
  *(a1 + 28) = 0;
  v53 = v9;
  v54 = *(a1 + 116);
  v10 = a1 + 60;
  v56 = a1[62];
  v55 = *(a1 + 30);
  v11 = *(a1 + 33);
  v57 = *(a1 + 32);
  v58 = v11;
  v59 = *(a1 + 34);
  if (v59)
  {
    v11[2] = &v58;
    *(a1 + 32) = a1 + 66;
    *(a1 + 33) = 0;
    *(a1 + 34) = 0;
  }

  else
  {
    v57 = &v58;
  }

  v60 = a1[72];
  *a1 = *a2;
  v12 = *(a2 + 5);
  v13 = *(a2 + 6);
  v14 = *(a2 + 8);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = v14;
  *(a1 + 5) = v12;
  *(a1 + 6) = v13;
  v15 = *(a2 + 1);
  v16 = *(a2 + 2);
  v17 = *(a2 + 4);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 4) = v17;
  *(a1 + 1) = v15;
  *(a1 + 2) = v16;
  v19 = (a2 + 36);
  v18 = *(a2 + 18);
  *(a2 + 18) = 0;
  v20 = *(a1 + 18);
  *(a1 + 18) = v18;

  a1[38] = a2[38];
  v21 = *(a2 + 20);
  *(a2 + 20) = 0;
  v22 = *(a1 + 20);
  *(a1 + 20) = v21;

  v23 = *(a2 + 21);
  *(a2 + 21) = 0;
  v24 = *(a1 + 21);
  *(a1 + 21) = v23;

  std::vector<float>::__move_assign(v6, a2 + 11);
  std::vector<BOOL>::__move_assign(v8, (a2 + 50));
  v25 = *(a2 + 28);
  *(a2 + 28) = 0;
  v26 = *(a1 + 28);
  *(a1 + 28) = v25;

  *(a1 + 116) = *(a2 + 116);
  v27 = *(a2 + 30);
  v10[2] = a2[62];
  *v10 = v27;
  std::__tree<int>::__move_assign(v10 + 2, a2 + 32);
  a1[72] = a2[72];
  *a2 = v37;
  *(a2 + 5) = v42;
  *(a2 + 6) = v43;
  *(a2 + 7) = v44;
  *(a2 + 8) = v45;
  *(a2 + 1) = v38;
  *(a2 + 2) = v39;
  *(a2 + 3) = v40;
  *(a2 + 4) = v41;
  v28 = *v19;
  *v19 = v46;

  a2[38] = v47;
  v29 = *(a2 + 20);
  *(a2 + 20) = v48;

  v30 = *(a2 + 21);
  *(a2 + 21) = *(&v48 + 1);

  v31 = *(a2 + 22);
  if (v31)
  {
    *(a2 + 23) = v31;
    operator delete(v31);
  }

  *(a2 + 11) = *v49;
  *(a2 + 24) = v50;
  v32 = *(a2 + 25);
  if (v32)
  {
    operator delete(v32);
  }

  *(a2 + 25) = __p;
  *(a2 + 13) = v52;
  v33 = *(a2 + 28);
  *(a2 + 28) = v53;

  *(a2 + 116) = v54;
  *(a2 + 30) = v55;
  a2[62] = v56;
  v34 = a2 + 66;
  std::__tree<int>::destroy((a2 + 64), *(a2 + 33));
  v35 = v58;
  *(a2 + 32) = v57;
  *(a2 + 33) = v35;
  v36 = v59;
  *(a2 + 34) = v59;
  if (v36)
  {
    v35[2] = v34;
    v35 = 0;
    v57 = &v58;
    v58 = 0;
    v59 = 0;
  }

  else
  {
    *(a2 + 32) = v34;
  }

  a2[72] = v60;
  std::__tree<int>::destroy(&v57, v35);
}