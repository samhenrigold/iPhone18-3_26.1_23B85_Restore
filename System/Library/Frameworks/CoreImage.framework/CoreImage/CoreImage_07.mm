void __CIMetalRenderToImageblocks_block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (CI_KDEBUG())
  {
    kdebug_trace();
  }

  v4 = CI_VERBOSE_SIGNPOSTS();
  if (v4)
  {
    v6 = ci_signpost_log_render(v4, v5);
    v7 = *(a1 + 64) | (*(a1 + 56) << 32);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v6;
      if (os_signpost_enabled(v6))
      {
        v9 = *(a1 + 48);
        v10 = *(a1 + 40);
        v11 = 134218496;
        v12 = a2;
        v13 = 1024;
        v14 = v10;
        v15 = 1024;
        v16 = v9;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v7, "gpu_compute", "cb:%p [%u, %u]", &v11, 0x18u);
      }
    }
  }
}

void __CIMetalRenderToImageblocks_block_invoke_110(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (CI_KDEBUG())
  {
    kdebug_trace();
  }

  v4 = CI_VERBOSE_SIGNPOSTS();
  if (v4)
  {
    v6 = ci_signpost_log_render(v4, v5);
    v7 = *(a1 + 64) | (*(a1 + 56) << 32);
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v6;
      if (os_signpost_enabled(v6))
      {
        v9 = *(a1 + 48);
        v10 = *(a1 + 40);
        v11 = 134218496;
        v12 = a2;
        v13 = 1024;
        v14 = v10;
        v15 = 1024;
        v16 = v9;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v8, OS_SIGNPOST_INTERVAL_END, v7, "gpu_compute", "cb:%p [%u, %u]", &v11, 0x18u);
      }
    }
  }

  CIAbortIfICSAndUnsuccessfulCommandBufferExecution(a2);
}

void CIAbortIfICSAndUnsuccessfulCommandBufferExecution(void *a1)
{
  if ([a1 status] == 5)
  {
    if ([a1 label])
    {
      [objc_msgSend(a1 "label")];
    }

    v2 = [a1 error];
    if (v2)
    {
      v4 = ci_logger_render(v2, v3);
      v2 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
      if (v2)
      {
        CIAbortIfICSAndUnsuccessfulCommandBufferExecution_cold_1(a1);
      }
    }

    if (isImageConversionServiceProcess_onceToken != -1)
    {
      __CIMetalRenderToTextures_block_invoke_101_cold_1();
    }

    if (isImageConversionServiceProcess_isICS == 1)
    {
      v5 = ci_logger_render(v2, v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        CIAbortIfICSAndUnsuccessfulCommandBufferExecution_cold_3();
      }

      exit(1);
    }
  }
}

void *CIMetalCommandBufferAddCompletionHandler(void *result, uint64_t a2)
{
  if (a2)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __CIMetalCommandBufferAddCompletionHandler_block_invoke;
    v2[3] = &unk_1E75C35F0;
    v2[4] = a2;
    return [result addCompletedHandler:v2];
  }

  return result;
}

uint64_t __CIMetalCommandBufferAddCompletionHandler_block_invoke(uint64_t a1, void *a2)
{
  CIAbortIfICSAndUnsuccessfulCommandBufferExecution(a2);
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void *CIMetalCommandBufferCopyTexture(void *result, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a2 && result)
  {
    if (a3)
    {
      v17 = [result blitCommandEncoder];
      v20[0] = a6;
      v20[1] = a7;
      v20[2] = 0;
      v19[0] = a8;
      v19[1] = a9;
      v19[2] = 1;
      v18[0] = a4;
      v18[1] = a5;
      v18[2] = 0;
      [v17 copyFromTexture:a3 sourceSlice:0 sourceLevel:0 sourceOrigin:v20 sourceSize:v19 toTexture:a2 destinationSlice:0 destinationLevel:0 destinationOrigin:v18];
      return [v17 endEncoding];
    }
  }

  return result;
}

void CIMetalCommandBufferWaitUntilScheduled(void *a1)
{
  if ([a1 status] < 2)
  {
    NSLog(&cfstr_MetalCommandBu.isa);
  }

  else
  {

    [a1 waitUntilScheduled];
  }
}

void CIMetalCommandBufferWaitUntilCompleted(void *a1)
{
  if ([a1 status] < 2)
  {
    NSLog(&cfstr_MetalCommandBu.isa);
  }

  else
  {

    [a1 waitUntilCompleted];
  }
}

void *CIMetalCommandBufferGetGPUTime(void *a1)
{
  result = [a1 status];
  if (result >= 4)
  {
    [a1 GPUEndTime];
    return [a1 GPUStartTime];
  }

  return result;
}

void serializeBinaryArchive(void *a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [a1 serializeToURL:objc_msgSend(MEMORY[0x1E695DFF8] error:{"URLWithString:", a2), &v8}];
  v4 = v3;
  v6 = ci_logger_render(v3, v5);
  v7 = v6;
  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v10 = a2;
      _os_log_impl(&dword_19CC36000, v7, OS_LOG_TYPE_INFO, "Serialized binary archive to %{public}@\n", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    serializeBinaryArchive_cold_1(a2, &v8);
  }
}

void *__isHarvestingForThisProcess_block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithCString:*(a1 + 32) encoding:1];
  result = [MEMORY[0x1E696AE30] processInfo];
  if (result)
  {
    result = [v1 containsString:{objc_msgSend(result, "processName")}];
  }

  isHarvestingForThisProcess_isListed = result;
  return result;
}

void __ArchiveLibraryUsingDescriptor_block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (CI_PREVENT_HARVEST_DUPLICATE_ENTRIES())
  {
    v2 = [MEMORY[0x1E696AC08] defaultManager];
    v3 = [v2 temporaryDirectory];
    v5 = [objc_msgSend(v3 URLByAppendingPathComponent:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%s/ci_%016llX.txt", CI_HARVEST_BIN_ARCHIVE_FOLDER_NAME(v3, v4), *(a1 + 72))), "path"}];
    if ([v2 fileExistsAtPath:v5 isDirectory:0])
    {
      return;
    }

    v6 = [v2 createFileAtPath:v5 contents:objc_msgSend(objc_msgSend(MEMORY[0x1E696AEC0] attributes:{"stringWithFormat:", @"0x%016llX %@\n", *(a1 + 72), *(a1 + 32)), "dataUsingEncoding:", 4), 0}];
    if ((v6 & 1) == 0)
    {
      v8 = ci_logger_render(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __ArchiveLibraryUsingDescriptor_block_invoke_cold_1();
      }
    }
  }

  v28 = 0;
  v9 = *(a1 + 40);
  if (v9 && (v10 = [*(a1 + 48) addLibraryWithDescriptor:v9 error:&v28], (v10 & 1) == 0))
  {
    v19 = ci_logger_render(v10, v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      __ArchiveLibraryUsingDescriptor_block_invoke_cold_2(&v28);
    }
  }

  else
  {
    v12 = [*(a1 + 48) addComputePipelineFunctionsWithDescriptor:*(a1 + 56) error:&v28];
    v13 = v12;
    v15 = ci_logger_render(v12, v14);
    v16 = v15;
    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v18 = [*(a1 + 64) lastPathComponent];
        *buf = 138543618;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = v18;
        _os_log_impl(&dword_19CC36000, v16, OS_LOG_TYPE_INFO, "%{public}@ program added to %{public}@\n", buf, 0x16u);
      }

      if (CI_BIN_ARCHIVE_SERIALIZATION_METHOD() == 1)
      {
        serializeBinaryArchive(*(a1 + 48), *(a1 + 64));
      }

      else if (CI_BIN_ARCHIVE_SERIALIZATION_METHOD() == 2)
      {
        v20 = CIGetHarvestingBinaryArchiveDict(0);
        v21 = [v20 objectForKeyedSubscript:@"bin"];
        v22 = [v20 objectForKeyedSubscript:@"queue"];
        v23 = [v20 objectForKeyedSubscript:@"path"];
        v24 = CI_BIN_ARCHIVE_SERIALIZATION_DELAY();
        v25 = dispatch_time(0, (v24 / 1000.0 * 1000000000.0));
        if ((scheduleSerializingHarvestedBinaryArchive_serialization_pending & 1) == 0)
        {
          v26 = v25;
          scheduleSerializingHarvestedBinaryArchive_serialization_pending = 1;
          global_queue = dispatch_get_global_queue(0, 0);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __scheduleSerializingHarvestedBinaryArchive_block_invoke;
          v30 = &unk_1E75C3640;
          v31 = v22;
          v32 = v21;
          v33 = v23;
          dispatch_after(v26, global_queue, buf);
        }
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __ArchiveLibraryUsingDescriptor_block_invoke_cold_3(&v28);
    }
  }
}

void __scheduleSerializingHarvestedBinaryArchive_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __scheduleSerializingHarvestedBinaryArchive_block_invoke_2;
  v2[3] = &unk_1E75C20F8;
  v3 = *(a1 + 40);
  dispatch_sync(v1, v2);
}

uint64_t __CreateFunctionFromDefaultLibrary_block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] arrayWithArray:{objc_msgSend(MEMORY[0x1E696AAE8], "allBundles")}];
  CreateFunctionFromDefaultLibrary_bundles = v0;
  v1 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreImage"];

  return [v0 addObject:v1];
}

uint64_t (**__configureQueue_block_invoke(uint64_t (**result)(void), void *a2, void *a3, unint64_t a4))(void)
{
  if (a4)
  {
    v6 = result;
    v7 = [a3 bytes];
    v8 = 0;
    v9 = 0;
    v10 = v6[4];
    v11 = 2 * v10;
    v12 = v7 + 8 * v10;
    v13 = 0.0;
    do
    {
      v14 = (v7 + 8 * v8);
      v15 = (v12 + 8 * v8);
      v13 = v13 + (*v15 - *v14);
      v9 = v9 - v14[1] + v15[1];
      v8 += v11;
    }

    while (v8 < a4);
    result = [objc_msgSend(a2 "userDictionary")];
    if (result)
    {
      v16 = result[2];

      return v16();
    }
  }

  return result;
}

void *__useOneDispatchPerCommandBuffer_block_invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    v1 = [result BOOLValue];
    useOneDispatchPerCommandBuffer_result = v1;
    useOneDispatchPerCommandBuffer_setOverride = 1;
    v9 = "NO";
    if (v1)
    {
      v9 = "YES";
    }

    return x_log(v1, v2, v3, v4, v5, v6, v7, v8, v9);
  }

  return result;
}

unint64_t CI::sw_minimumComponent(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = a3 + 16 * v7;
  v9 = a2 + (v7 << 6);
  if (v6 == 5)
  {
    v9 = v8;
  }

  *&a5 = fminf(fminf(COERCE_FLOAT(*v9), COERCE_FLOAT(HIDWORD(*v9))), COERCE_FLOAT(*(v9 + 8)));
  return vdupq_lane_s32(*&a5, 0).u64[0];
}

unint64_t CI::sw_maximumComponent(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v5 + 8);
  v8 = a3 + 16 * v7;
  v9 = a2 + (v7 << 6);
  if (v6 == 5)
  {
    v9 = v8;
  }

  *&a5 = fmaxf(fmaxf(COERCE_FLOAT(*v9), COERCE_FLOAT(HIDWORD(*v9))), COERCE_FLOAT(*(v9 + 8)));
  return vdupq_lane_s32(*&a5, 0).u64[0];
}

__n128 extendDOD@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, float32x2_t a3@<D0>, float32x2_t a4@<D1>, __n128 a5@<Q2>, int8x16_t a6@<Q3>, int8x16_t a7@<Q4>)
{
  v23 = vsub_f32(a3, *a6.i8);
  if ((a5.n128_f32[2] + vaddv_f32(vmul_f32(a5.n128_u64[0], v23))) < 0.001)
  {
    Rectangle::Union(&v21, a1, &v23);
    if (&v21 != a1)
    {
      v11 = v22;
      *a1 = v21;
      *(a1 + 16) = v11;
    }

    v12 = vsub_f32(vsub_f32(a3, a4), *&vextq_s8(a6, a6, 8uLL));
    v13 = vmul_f32(v12, *a7.i8);
    v14 = vmul_f32(v12, *&vextq_s8(a7, a7, 8uLL));
    v23 = vadd_f32(vzip1_s32(v13, v14), vzip2_s32(v13, v14));
    v20 = vadd_f32(a4, v23);
    Rectangle::Union(&v21, a1, &v20);
    if (&v21 != a1)
    {
      v15 = v22;
      *a1 = v21;
      *(a1 + 16) = v15;
    }
  }

  result = *a1;
  v17 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v17;
  return result;
}

float32x2_t CI::sw_mirror(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = *(v3 + 56);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v3 + 64) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v3 + 88);
  v14 = *(v3 + 80);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (v13 == 5)
  {
    v16 = v15;
  }

  v17 = *v7;
  v28 = *v12;
  v26 = *(a2 + (v8 << 6));
  v27 = *v16;
  DC = CI::getDC(a1);
  v19 = *(&v26 + 2) + vaddv_f32(vmul_f32(*&v26, *DC));
  v20 = vsub_f32(*CI::getDC(DC), v17);
  v21 = vmul_f32(*v27.i8, v20);
  v22 = vmul_f32(*&vextq_s8(v27, v27, 8uLL), v20);
  v23 = COERCE_DOUBLE(vadd_f32(*&vextq_s8(v28, v28, 8uLL), vadd_f32(vzip1_s32(v21, v22), vzip2_s32(v21, v22))));
  v24 = COERCE_DOUBLE(vadd_f32(*v28.i8, v20));
  if (v19 >= 0.0)
  {
    v24 = v23;
  }

  return vadd_f32(v17, *&v24);
}

int64x2_t Rectangle::Union@<Q0>(int64x2_t *__return_ptr a1@<X8>, Rectangle *this@<X0>, const vec2 *a3@<X1>)
{
  v3.f64[0] = this->var0;
  if (fabs(this->var0) == INFINITY || (var1 = this->var1, fabs(var1) == INFINITY))
  {
    result = vcvtq_f64_f32(*a3);
    *a1 = result;
    a1[1] = 0uLL;
  }

  else
  {
    v6 = v3.f64[0] == -8.98846567e307 && var1 == -8.98846567e307;
    if (v6 && this->var2 == 1.79769313e308 && this->var3 == 1.79769313e308)
    {
      result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      *a1 = result;
      a1[1] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    }

    else
    {
      v3.f64[1] = this->var1;
      v7 = vaddq_f64(v3, *&this->var2);
      v8 = vcvtq_f64_f32(*a3);
      v9 = vminnmq_f64(vminnmq_f64(v3, v7), v8);
      result = vsubq_f64(vmaxnmq_f64(vmaxnmq_f64(v3, v7), v8), v9);
      *a1 = v9;
      a1[1] = result;
    }
  }

  return result;
}

__n128 extendROI@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, float32x2_t a3@<D0>, float32x2_t a4@<D1>, __n128 a5@<Q2>, int8x16_t a6@<Q3>, int8x16_t a7@<Q4>)
{
  if ((a5.n128_f32[2] + vaddv_f32(vmul_f32(a5.n128_u64[0], vsub_f32(a3, *a6.i8)))) < 0.001)
  {
    v9 = a5.n128_f32[2] + vaddv_f32(vmul_f32(a3, a5.n128_u64[0]));
    v10 = vsub_f32(a3, a4);
    v11 = v9 < 0.0;
    v12 = vmul_f32(v10, *a7.i8);
    v13 = vmul_f32(v10, *&vextq_s8(a7, a7, 8uLL));
    v14 = COERCE_DOUBLE(vadd_f32(*&vextq_s8(a6, a6, 8uLL), vadd_f32(vzip1_s32(v12, v13), vzip2_s32(v12, v13))));
    v15 = COERCE_DOUBLE(vadd_f32(v10, *a6.i8));
    if (!v11)
    {
      v15 = v14;
    }

    v20 = vadd_f32(a4, *&v15);
    Rectangle::Union(v19, a1, &v20);
    if (v19 != a1)
    {
      v16 = v19[1];
      *a1 = v19[0];
      *(a1 + 16) = v16;
    }
  }

  result = *a1;
  v18 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v18;
  return result;
}

unint64_t CI::sw_modTransition(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 104);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v3 + 112) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v3 + 128);
  v25 = (a3 + 16 * v24);
  v26 = (a2 + (v24 << 6));
  if (*(v3 + 136) == 5)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v3 + 160);
  v29 = *(v3 + 152);
  v30 = (a3 + 16 * v29);
  v31 = (a2 + (v29 << 6));
  if (v28 == 5)
  {
    v31 = v30;
  }

  v55 = *v11;
  v56 = *v7;
  v32 = *v15;
  v51 = *v27;
  v52 = *v19;
  v53 = *v31;
  v54 = *v23;
  v33 = vsub_f32(*CI::getDC(a1), *v15);
  v34 = vmuls_lane_f32(v33.f32[0], v52, 2);
  if (v34 >= 0.5)
  {
    v35 = *(&v53 + 3) + (*(&v53 + 2) / (*(&v53 + 1) + (v34 * *&v53)));
  }

  else
  {
    v35 = *(&v51 + 3) + (*(&v51 + 2) / (*(&v51 + 1) + (v34 * *&v51)));
  }

  v33.i32[0] = vmuls_lane_f32(v35, v52, 3);
  v36 = vmul_f32(*v54.i8, v33);
  v37 = vmul_f32(*&vextq_s8(v54, v54, 8uLL), v33);
  v38 = vadd_f32(v32, vadd_f32(vzip1_s32(v36, v37), vzip2_s32(v36, v37)));
  v39 = vminnm_f32(vsub_f32(v38, vrndm_f32(v38)), vdup_n_s32(0x3F7FFFFFu));
  __asm { FMOV            V1.2S, #1.0 }

  v45 = vminnm_f32(v39, vsub_f32(_D1, v39));
  v46 = vadd_f32(v45, v45);
  v47 = v52.f32[1] + (sqrtf(vaddv_f32(vmul_f32(v46, v46))) * v52.f32[0]);
  if (v47 <= 1.0)
  {
    v48 = v47;
  }

  else
  {
    v48 = 1.0;
  }

  _NF = v47 < 0.0;
  v49 = 0.0;
  if (!_NF)
  {
    v49 = v48;
  }

  return vmlaq_n_f32(vmulq_n_f32(v55, 1.0 - v49), v56, v49).u64[0];
}

uint64_t CI::sw_maxDisk(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  v8 = *DC;
  v9 = CI::getDC(DC);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), *v9, 1);
  *&v13 = *v12.i32 + (COERCE_FLOAT(*v9) * *(v5 + 28));
  v14.n128_f32[0] = *&v10 + (vmuls_lane_f32(*(v5 + 20), *v9, 1) + (COERCE_FLOAT(*v9) * *(v5 + 16)));
  *v15.f64 = *v11.i32 + *&v13;
  v14.n128_f32[1] = *v11.i32 + *&v13;
  *v18.i64 = CI::BitmapSampler::read(*(v5 + 8), v14, v15, v10, v13, v12, v11, v16, v17);
  v25 = v18;
  v26 = ceilf(v6);
  if (v26 >= 0.0)
  {
    v27 = v6 * v6;
    v20.n128_f32[0] = -v26;
    do
    {
      *v21.i32 = -v26;
      v31 = v20;
      do
      {
        v28 = v20;
        v28.n128_u32[1] = v21.i32[0];
        *&v19.f64[0] = vmul_f32(v28.n128_u64[0], v28.n128_u64[0]);
        if (vaddv_f32(*&v19.f64[0]) <= v27)
        {
          v28.n128_u64[0] = vadd_f32(v8, v28.n128_u64[0]);
          v32 = v21;
          v33 = v25;
          v25.i32[0] = *(v5 + 24);
          v22.i32[0] = *(v5 + 36);
          *v21.i32 = vmuls_lane_f32(*(v5 + 32), v28.n128_u64[0], 1);
          v20.n128_f32[0] = *v21.i32 + (v28.n128_f32[0] * *(v5 + 28));
          v28.n128_f32[0] = v25.f32[0] + (vmuls_lane_f32(*(v5 + 20), v28.n128_u64[0], 1) + (v28.n128_f32[0] * *(v5 + 16)));
          *v19.f64 = *v22.i32 + v20.n128_f32[0];
          v28.n128_f32[1] = *v22.i32 + v20.n128_f32[0];
          *v29.i64 = CI::BitmapSampler::read(*(v5 + 8), v28, v19, *v25.i64, v20.n128_f64[0], v21, v22, v23, v24);
          v20 = v31;
          v21 = v32;
          v25 = vmaxnmq_f32(v33, v29);
        }

        *v21.i32 = *v21.i32 + 1.0;
      }

      while (*v21.i32 <= v26);
      v20.n128_f32[0] = v20.n128_f32[0] + 1.0;
    }

    while (v20.n128_f32[0] <= v26);
  }

  return v25.i64[0];
}

uint64_t CI::sw_minDisk(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  DC = CI::getDC(a1);
  v8 = *DC;
  v9 = CI::getDC(DC);
  LODWORD(v10) = *(v5 + 24);
  v11.i32[0] = *(v5 + 36);
  *v12.i32 = vmuls_lane_f32(*(v5 + 32), *v9, 1);
  *&v13 = *v12.i32 + (COERCE_FLOAT(*v9) * *(v5 + 28));
  v14.n128_f32[0] = *&v10 + (vmuls_lane_f32(*(v5 + 20), *v9, 1) + (COERCE_FLOAT(*v9) * *(v5 + 16)));
  *v15.f64 = *v11.i32 + *&v13;
  v14.n128_f32[1] = *v11.i32 + *&v13;
  *v18.i64 = CI::BitmapSampler::read(*(v5 + 8), v14, v15, v10, v13, v12, v11, v16, v17);
  v25 = v18;
  v26 = ceilf(v6);
  if (v26 >= 0.0)
  {
    v27 = v6 * v6;
    v20.n128_f32[0] = -v26;
    do
    {
      *v21.i32 = -v26;
      v31 = v20;
      do
      {
        v28 = v20;
        v28.n128_u32[1] = v21.i32[0];
        *&v19.f64[0] = vmul_f32(v28.n128_u64[0], v28.n128_u64[0]);
        if (vaddv_f32(*&v19.f64[0]) <= v27)
        {
          v28.n128_u64[0] = vadd_f32(v8, v28.n128_u64[0]);
          v32 = v21;
          v33 = v25;
          v25.i32[0] = *(v5 + 24);
          v22.i32[0] = *(v5 + 36);
          *v21.i32 = vmuls_lane_f32(*(v5 + 32), v28.n128_u64[0], 1);
          v20.n128_f32[0] = *v21.i32 + (v28.n128_f32[0] * *(v5 + 28));
          v28.n128_f32[0] = v25.f32[0] + (vmuls_lane_f32(*(v5 + 20), v28.n128_u64[0], 1) + (v28.n128_f32[0] * *(v5 + 16)));
          *v19.f64 = *v22.i32 + v20.n128_f32[0];
          v28.n128_f32[1] = *v22.i32 + v20.n128_f32[0];
          *v29.i64 = CI::BitmapSampler::read(*(v5 + 8), v28, v19, *v25.i64, v20.n128_f64[0], v21, v22, v23, v24);
          v20 = v31;
          v21 = v32;
          v25 = vminnmq_f32(v33, v29);
        }

        *v21.i32 = *v21.i32 + 1.0;
      }

      while (*v21.i32 <= v26);
      v20.n128_f32[0] = v20.n128_f32[0] + 1.0;
    }

    while (v20.n128_f32[0] <= v26);
  }

  return v25.i64[0];
}

double CI::sw_max3x3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v96 = *v9;
  v11.n128_u64[0] = *CI::getDC(a1);
  v100 = v11;
  v12 = v96;
  v13 = vdup_lane_s32(*&v96.f64[0], 1);
  v11.n128_u64[0] = vsub_f32(v11.n128_u64[0], v13);
  LODWORD(v14) = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), v11.n128_u64[0], 1);
  *&v17 = *v16.i32 + (v11.n128_f32[0] * *(v10 + 28));
  v11.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v10 + 20), v11.n128_u64[0], 1) + (v11.n128_f32[0] * *(v10 + 16)));
  *v12.f64 = *v15.i32 + *&v17;
  v11.n128_f32[1] = *v15.i32 + *&v17;
  v20.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v11, v12, v14, v17, v16, v15, v18, v19);
  v91 = v20;
  v21 = v96;
  v20.n128_u64[1] = v100.u64[1];
  v22 = vextq_s8(v21, v21, 8uLL);
  v93 = *&v22.f64[0];
  v23 = vext_s8(*&v22.f64[0], *&v96.f64[0], 4uLL);
  v20.n128_u64[0] = vsub_f32(*v100.i8, v23);
  v21.i32[0] = *(v10 + 24);
  v24.i32[0] = *(v10 + 36);
  *v25.i32 = vmuls_lane_f32(*(v10 + 32), v20.n128_u64[0], 1);
  *&v26 = *v25.i32 + (v20.n128_f32[0] * *(v10 + 28));
  v20.n128_f32[0] = *v21.i32 + (vmuls_lane_f32(*(v10 + 20), v20.n128_u64[0], 1) + (v20.n128_f32[0] * *(v10 + 16)));
  *v22.f64 = *v24.i32 + *&v26;
  v20.n128_f32[1] = *v24.i32 + *&v26;
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), v20, v22, *v21.i64, v26, v25, v24, v27, v28);
  HIDWORD(v30) = HIDWORD(v96.f64[0]);
  v31 = vext_s8(*&v96.f64[0], v93, 4uLL);
  *&v32.f64[1] = v100.i64[1];
  *&v32.f64[0] = vadd_f32(v31, *v100.i8);
  *&v30 = vmuls_lane_f32(*(v10 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v10 + 16));
  LODWORD(v33) = *(v10 + 24);
  v34.i32[0] = *(v10 + 36);
  *v35.i32 = vmuls_lane_f32(*(v10 + 32), *&v32.f64[0], 1);
  v36 = v91;
  v37 = vmaxnmq_f32(v91, v29);
  v92 = v37;
  v37.n128_f32[0] = *&v33 + *&v30;
  *v32.f64 = *v34.i32 + (*v35.i32 + (*v32.f64 * *(v10 + 28)));
  v37.n128_u32[1] = LODWORD(v32.f64[0]);
  *v39.i64 = CI::BitmapSampler::read(*(v10 + 8), v37, v32, v30, v33, v36, v35, v34, v38);
  *&v96.f64[0] = __PAIR64__(v93.u32[1], LODWORD(v96.f64[0]));
  v40 = v96.f64[0];
  *&v41.f64[1] = v100.i64[1];
  *&v41.f64[0] = vsub_f32(*v100.i8, *&v96.f64[0]);
  *&v40 = vmuls_lane_f32(*(v10 + 20), *&v41.f64[0], 1) + (*v41.f64 * *(v10 + 16));
  LODWORD(v42) = *(v10 + 24);
  v43.i32[0] = *(v10 + 36);
  *v44.i32 = vmuls_lane_f32(*(v10 + 32), *&v41.f64[0], 1);
  v45 = vmaxnmq_f32(v92, v39);
  v94 = v45;
  v45.n128_f32[0] = *&v42 + *&v40;
  *v41.f64 = *v43.i32 + (*v44.i32 + (*v41.f64 * *(v10 + 28)));
  v45.n128_u32[1] = LODWORD(v41.f64[0]);
  *v47.i64 = CI::BitmapSampler::read(*(v10 + 8), v45, v41, v40, v42, v92, v44, v43, v46);
  v48 = v94;
  v49 = vmaxnmq_f32(v94, v47);
  v95 = v49;
  LODWORD(v50) = *(v10 + 28);
  v49.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v100.i8, 1) + (*v100.i32 * *(v10 + 16)));
  LODWORD(v51) = *(v10 + 36);
  *v48.f64 = *&v51 + (vmuls_lane_f32(*(v10 + 32), *v100.i8, 1) + (*v100.i32 * *&v50));
  v49.n128_u32[1] = LODWORD(v48.f64[0]);
  *v55.i64 = CI::BitmapSampler::read(*(v10 + 8), v49, v48, v50, v51, v100, v52, v53, v54);
  HIDWORD(v57) = HIDWORD(v96.f64[0]);
  *&v56.f64[1] = v100.i64[1];
  *&v56.f64[0] = vadd_f32(*&v96.f64[0], *v100.i8);
  *&v57 = vmuls_lane_f32(*(v10 + 20), *&v56.f64[0], 1) + (*v56.f64 * *(v10 + 16));
  LODWORD(v58) = *(v10 + 24);
  v59.i32[0] = *(v10 + 36);
  *v60.i32 = vmuls_lane_f32(*(v10 + 32), *&v56.f64[0], 1);
  v61 = vmaxnmq_f32(v95, v55);
  v97 = v61;
  v61.n128_f32[0] = *&v58 + *&v57;
  *v56.f64 = *v59.i32 + (*v60.i32 + (*v56.f64 * *(v10 + 28)));
  v61.n128_u32[1] = LODWORD(v56.f64[0]);
  *v63.i64 = CI::BitmapSampler::read(*(v10 + 8), v61, v56, v57, v58, v95, v60, v59, v62);
  *&v64.f64[1] = v100.i64[1];
  *&v64.f64[0] = vsub_f32(*v100.i8, v31);
  *&v65 = vmuls_lane_f32(*(v10 + 20), *&v64.f64[0], 1) + (*v64.f64 * *(v10 + 16));
  LODWORD(v66) = *(v10 + 24);
  v67.i32[0] = *(v10 + 36);
  *v68.i32 = vmuls_lane_f32(*(v10 + 32), *&v64.f64[0], 1);
  v69 = v97;
  v70 = vmaxnmq_f32(v97, v63);
  v98 = v70;
  v70.n128_f32[0] = *&v66 + *&v65;
  *v64.f64 = *v67.i32 + (*v68.i32 + (*v64.f64 * *(v10 + 28)));
  v70.n128_u32[1] = LODWORD(v64.f64[0]);
  *v72.i64 = CI::BitmapSampler::read(*(v10 + 8), v70, v64, v65, v66, v69, v68, v67, v71);
  *&v73.f64[1] = v100.i64[1];
  *&v73.f64[0] = vadd_f32(v23, *v100.i8);
  *&v74 = vmuls_lane_f32(*(v10 + 20), *&v73.f64[0], 1) + (*v73.f64 * *(v10 + 16));
  LODWORD(v75) = *(v10 + 24);
  v76.i32[0] = *(v10 + 36);
  *v77.i32 = vmuls_lane_f32(*(v10 + 32), *&v73.f64[0], 1);
  v78 = v98;
  v79 = vmaxnmq_f32(v98, v72);
  v99 = v79;
  v79.n128_f32[0] = *&v75 + *&v74;
  *v73.f64 = *v76.i32 + (*v77.i32 + (*v73.f64 * *(v10 + 28)));
  v79.n128_u32[1] = LODWORD(v73.f64[0]);
  *v81.i64 = CI::BitmapSampler::read(*(v10 + 8), v79, v73, v74, v75, v78, v77, v76, v80);
  *&v82.f64[1] = v100.i64[1];
  *&v82.f64[0] = vadd_f32(v13, *v100.i8);
  *&v83 = vmuls_lane_f32(*(v10 + 20), *&v82.f64[0], 1) + (*v82.f64 * *(v10 + 16));
  LODWORD(v84) = *(v10 + 24);
  v85.i32[0] = *(v10 + 36);
  *v86.i32 = vmuls_lane_f32(*(v10 + 32), *&v82.f64[0], 1);
  v87 = vmaxnmq_f32(v99, v81);
  v101 = v87;
  v87.n128_f32[0] = *&v84 + *&v83;
  *v82.f64 = *v85.i32 + (*v86.i32 + (*v82.f64 * *(v10 + 28)));
  v87.n128_u32[1] = LODWORD(v82.f64[0]);
  *v89.i64 = CI::BitmapSampler::read(*(v10 + 8), v87, v82, v83, v84, v99, v86, v85, v88);
  *&result = vmaxnmq_f32(v101, v89).u64[0];
  return result;
}

double CI::sw_min3x3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v96 = *v9;
  v11.n128_u64[0] = *CI::getDC(a1);
  v100 = v11;
  v12 = v96;
  v13 = vdup_lane_s32(*&v96.f64[0], 1);
  v11.n128_u64[0] = vsub_f32(v11.n128_u64[0], v13);
  LODWORD(v14) = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), v11.n128_u64[0], 1);
  *&v17 = *v16.i32 + (v11.n128_f32[0] * *(v10 + 28));
  v11.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v10 + 20), v11.n128_u64[0], 1) + (v11.n128_f32[0] * *(v10 + 16)));
  *v12.f64 = *v15.i32 + *&v17;
  v11.n128_f32[1] = *v15.i32 + *&v17;
  v20.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v11, v12, v14, v17, v16, v15, v18, v19);
  v91 = v20;
  v21 = v96;
  v20.n128_u64[1] = v100.u64[1];
  v22 = vextq_s8(v21, v21, 8uLL);
  v93 = *&v22.f64[0];
  v23 = vext_s8(*&v22.f64[0], *&v96.f64[0], 4uLL);
  v20.n128_u64[0] = vsub_f32(*v100.i8, v23);
  v21.i32[0] = *(v10 + 24);
  v24.i32[0] = *(v10 + 36);
  *v25.i32 = vmuls_lane_f32(*(v10 + 32), v20.n128_u64[0], 1);
  *&v26 = *v25.i32 + (v20.n128_f32[0] * *(v10 + 28));
  v20.n128_f32[0] = *v21.i32 + (vmuls_lane_f32(*(v10 + 20), v20.n128_u64[0], 1) + (v20.n128_f32[0] * *(v10 + 16)));
  *v22.f64 = *v24.i32 + *&v26;
  v20.n128_f32[1] = *v24.i32 + *&v26;
  *v29.i64 = CI::BitmapSampler::read(*(v10 + 8), v20, v22, *v21.i64, v26, v25, v24, v27, v28);
  HIDWORD(v30) = HIDWORD(v96.f64[0]);
  v31 = vext_s8(*&v96.f64[0], v93, 4uLL);
  *&v32.f64[1] = v100.i64[1];
  *&v32.f64[0] = vadd_f32(v31, *v100.i8);
  *&v30 = vmuls_lane_f32(*(v10 + 20), *&v32.f64[0], 1) + (*v32.f64 * *(v10 + 16));
  LODWORD(v33) = *(v10 + 24);
  v34.i32[0] = *(v10 + 36);
  *v35.i32 = vmuls_lane_f32(*(v10 + 32), *&v32.f64[0], 1);
  v36 = v91;
  v37 = vminnmq_f32(v91, v29);
  v92 = v37;
  v37.n128_f32[0] = *&v33 + *&v30;
  *v32.f64 = *v34.i32 + (*v35.i32 + (*v32.f64 * *(v10 + 28)));
  v37.n128_u32[1] = LODWORD(v32.f64[0]);
  *v39.i64 = CI::BitmapSampler::read(*(v10 + 8), v37, v32, v30, v33, v36, v35, v34, v38);
  *&v96.f64[0] = __PAIR64__(v93.u32[1], LODWORD(v96.f64[0]));
  v40 = v96.f64[0];
  *&v41.f64[1] = v100.i64[1];
  *&v41.f64[0] = vsub_f32(*v100.i8, *&v96.f64[0]);
  *&v40 = vmuls_lane_f32(*(v10 + 20), *&v41.f64[0], 1) + (*v41.f64 * *(v10 + 16));
  LODWORD(v42) = *(v10 + 24);
  v43.i32[0] = *(v10 + 36);
  *v44.i32 = vmuls_lane_f32(*(v10 + 32), *&v41.f64[0], 1);
  v45 = vminnmq_f32(v92, v39);
  v94 = v45;
  v45.n128_f32[0] = *&v42 + *&v40;
  *v41.f64 = *v43.i32 + (*v44.i32 + (*v41.f64 * *(v10 + 28)));
  v45.n128_u32[1] = LODWORD(v41.f64[0]);
  *v47.i64 = CI::BitmapSampler::read(*(v10 + 8), v45, v41, v40, v42, v92, v44, v43, v46);
  v48 = v94;
  v49 = vminnmq_f32(v94, v47);
  v95 = v49;
  LODWORD(v50) = *(v10 + 28);
  v49.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v100.i8, 1) + (*v100.i32 * *(v10 + 16)));
  LODWORD(v51) = *(v10 + 36);
  *v48.f64 = *&v51 + (vmuls_lane_f32(*(v10 + 32), *v100.i8, 1) + (*v100.i32 * *&v50));
  v49.n128_u32[1] = LODWORD(v48.f64[0]);
  *v55.i64 = CI::BitmapSampler::read(*(v10 + 8), v49, v48, v50, v51, v100, v52, v53, v54);
  HIDWORD(v57) = HIDWORD(v96.f64[0]);
  *&v56.f64[1] = v100.i64[1];
  *&v56.f64[0] = vadd_f32(*&v96.f64[0], *v100.i8);
  *&v57 = vmuls_lane_f32(*(v10 + 20), *&v56.f64[0], 1) + (*v56.f64 * *(v10 + 16));
  LODWORD(v58) = *(v10 + 24);
  v59.i32[0] = *(v10 + 36);
  *v60.i32 = vmuls_lane_f32(*(v10 + 32), *&v56.f64[0], 1);
  v61 = vminnmq_f32(v95, v55);
  v97 = v61;
  v61.n128_f32[0] = *&v58 + *&v57;
  *v56.f64 = *v59.i32 + (*v60.i32 + (*v56.f64 * *(v10 + 28)));
  v61.n128_u32[1] = LODWORD(v56.f64[0]);
  *v63.i64 = CI::BitmapSampler::read(*(v10 + 8), v61, v56, v57, v58, v95, v60, v59, v62);
  *&v64.f64[1] = v100.i64[1];
  *&v64.f64[0] = vsub_f32(*v100.i8, v31);
  *&v65 = vmuls_lane_f32(*(v10 + 20), *&v64.f64[0], 1) + (*v64.f64 * *(v10 + 16));
  LODWORD(v66) = *(v10 + 24);
  v67.i32[0] = *(v10 + 36);
  *v68.i32 = vmuls_lane_f32(*(v10 + 32), *&v64.f64[0], 1);
  v69 = v97;
  v70 = vminnmq_f32(v97, v63);
  v98 = v70;
  v70.n128_f32[0] = *&v66 + *&v65;
  *v64.f64 = *v67.i32 + (*v68.i32 + (*v64.f64 * *(v10 + 28)));
  v70.n128_u32[1] = LODWORD(v64.f64[0]);
  *v72.i64 = CI::BitmapSampler::read(*(v10 + 8), v70, v64, v65, v66, v69, v68, v67, v71);
  *&v73.f64[1] = v100.i64[1];
  *&v73.f64[0] = vadd_f32(v23, *v100.i8);
  *&v74 = vmuls_lane_f32(*(v10 + 20), *&v73.f64[0], 1) + (*v73.f64 * *(v10 + 16));
  LODWORD(v75) = *(v10 + 24);
  v76.i32[0] = *(v10 + 36);
  *v77.i32 = vmuls_lane_f32(*(v10 + 32), *&v73.f64[0], 1);
  v78 = v98;
  v79 = vminnmq_f32(v98, v72);
  v99 = v79;
  v79.n128_f32[0] = *&v75 + *&v74;
  *v73.f64 = *v76.i32 + (*v77.i32 + (*v73.f64 * *(v10 + 28)));
  v79.n128_u32[1] = LODWORD(v73.f64[0]);
  *v81.i64 = CI::BitmapSampler::read(*(v10 + 8), v79, v73, v74, v75, v78, v77, v76, v80);
  *&v82.f64[1] = v100.i64[1];
  *&v82.f64[0] = vadd_f32(v13, *v100.i8);
  *&v83 = vmuls_lane_f32(*(v10 + 20), *&v82.f64[0], 1) + (*v82.f64 * *(v10 + 16));
  LODWORD(v84) = *(v10 + 24);
  v85.i32[0] = *(v10 + 36);
  *v86.i32 = vmuls_lane_f32(*(v10 + 32), *&v82.f64[0], 1);
  v87 = vminnmq_f32(v99, v81);
  v101 = v87;
  v87.n128_f32[0] = *&v84 + *&v83;
  *v82.f64 = *v85.i32 + (*v86.i32 + (*v82.f64 * *(v10 + 28)));
  v87.n128_u32[1] = LODWORD(v82.f64[0]);
  *v89.i64 = CI::BitmapSampler::read(*(v10 + 8), v87, v82, v83, v84, v99, v86, v85, v88);
  *&result = vminnmq_f32(v101, v89).u64[0];
  return result;
}

unint64_t CI::sw_gradient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12.i64[0] = 0x3F0000003F000000;
  v12.i64[1] = 0x3F0000003F000000;
  return vmulq_f32(vsubq_f32(*v7, *v11), v12).u64[0];
}

unint64_t CI::sw_laplacian(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16.i64[0] = 0x3F0000003F000000;
  v16.i64[1] = 0x3F0000003F000000;
  return vmulq_f32(vsubq_f32(vaddq_f32(*v11, *v15), vaddq_f32(*v7, *v7)), v16).u64[0];
}

double CI::sw_average(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(a2 + (*(v3 + 56) << 6));
  *&result = vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v12), *v11, v12).u64[0];
  return result;
}

double CI::sw_morphmin(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v5;
  v12 = *(a2 + (v6 << 6));
  v13 = *v10;
  DC = CI::getDC(a1);
  *v15.i8 = *DC;
  LODWORD(v16) = *(v11 + 28);
  v17.n128_f32[0] = *(v11 + 24) + (vmuls_lane_f32(*(v11 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v11 + 16)));
  LODWORD(v18) = *(v11 + 36);
  v34 = v15;
  *v19.f64 = *&v18 + (vmuls_lane_f32(*(v11 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v16));
  v17.n128_u32[1] = LODWORD(v19.f64[0]);
  v23.n128_f64[0] = CI::BitmapSampler::read(*(v11 + 8), v17, v19, v16, v18, v15, v20, v21, v22);
  if (v12 >= 0.0)
  {
    *&v24 = -v12;
    do
    {
      v35 = v24;
      v36 = v23;
      v23.n128_u64[0] = vmul_n_f32(v13, *&v24);
      v31 = v34;
      v23.n128_u64[0] = vadd_f32(*&v34.f64[0], v23.n128_u64[0]);
      LODWORD(v25) = *(v11 + 24);
      v28.i32[0] = *(v11 + 36);
      *v27.i32 = vmuls_lane_f32(*(v11 + 32), v23.n128_u64[0], 1);
      *&v26 = *v27.i32 + (v23.n128_f32[0] * *(v11 + 28));
      v23.n128_f32[0] = *&v25 + (vmuls_lane_f32(*(v11 + 20), v23.n128_u64[0], 1) + (v23.n128_f32[0] * *(v11 + 16)));
      *v31.f64 = *v28.i32 + *&v26;
      v23.n128_f32[1] = *v28.i32 + *&v26;
      *v32.i64 = CI::BitmapSampler::read(*(v11 + 8), v23, v31, v25, v26, v27, v28, v29, v30);
      v24 = v35;
      v23 = vminnmq_f32(v36, v32);
      *&v24 = *&v35 + 1.0;
    }

    while ((*&v35 + 1.0) <= v12);
  }

  return v23.n128_f64[0];
}

double CI::sw_morphmax(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v5;
  v12 = *(a2 + (v6 << 6));
  v13 = *v10;
  DC = CI::getDC(a1);
  *v15.i8 = *DC;
  LODWORD(v16) = *(v11 + 28);
  v17.n128_f32[0] = *(v11 + 24) + (vmuls_lane_f32(*(v11 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v11 + 16)));
  LODWORD(v18) = *(v11 + 36);
  v34 = v15;
  *v19.f64 = *&v18 + (vmuls_lane_f32(*(v11 + 32), *DC, 1) + (COERCE_FLOAT(*DC) * *&v16));
  v17.n128_u32[1] = LODWORD(v19.f64[0]);
  v23.n128_f64[0] = CI::BitmapSampler::read(*(v11 + 8), v17, v19, v16, v18, v15, v20, v21, v22);
  if (v12 >= 0.0)
  {
    *&v24 = -v12;
    do
    {
      v35 = v24;
      v36 = v23;
      v23.n128_u64[0] = vmul_n_f32(v13, *&v24);
      v31 = v34;
      v23.n128_u64[0] = vadd_f32(*&v34.f64[0], v23.n128_u64[0]);
      LODWORD(v25) = *(v11 + 24);
      v28.i32[0] = *(v11 + 36);
      *v27.i32 = vmuls_lane_f32(*(v11 + 32), v23.n128_u64[0], 1);
      *&v26 = *v27.i32 + (v23.n128_f32[0] * *(v11 + 28));
      v23.n128_f32[0] = *&v25 + (vmuls_lane_f32(*(v11 + 20), v23.n128_u64[0], 1) + (v23.n128_f32[0] * *(v11 + 16)));
      *v31.f64 = *v28.i32 + *&v26;
      v23.n128_f32[1] = *v28.i32 + *&v26;
      *v32.i64 = CI::BitmapSampler::read(*(v11 + 8), v23, v31, v25, v26, v27, v28, v29, v30);
      v24 = v35;
      v23 = vmaxnmq_f32(v36, v32);
      *&v24 = *&v35 + 1.0;
    }

    while ((*&v35 + 1.0) <= v12);
  }

  return v23.n128_f64[0];
}

int64x2_t Rectangle::Union@<Q0>(int64x2_t *__return_ptr a1@<X8>, Rectangle *this@<X0>, const Rectangle *a3@<X1>, int64x2_t result@<Q0>)
{
  var0 = this->var0;
  if (fabs(this->var0) == INFINITY || (var1 = this->var1, fabs(var1) == INFINITY))
  {
    result = *&a3->var0;
    v6 = *&a3->var2;
LABEL_4:
    *a1 = result;
    a1[1] = v6;
    return result;
  }

  v7 = a3->var0;
  if (fabs(a3->var0) == INFINITY || (v8 = a3->var1, fabs(v8) == INFINITY))
  {
    result = *&this->var0;
    v6 = *&this->var2;
    goto LABEL_4;
  }

  v9 = var0 == -8.98846567e307 && var1 == -8.98846567e307;
  if (v9 && this->var2 == 1.79769313e308 && this->var3 == 1.79769313e308)
  {
    result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    v6 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    goto LABEL_4;
  }

  v10 = *&a3->var2;
  v11 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*&a3->var0, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL)), vceqq_f64(v10, v11))))))
  {
    v12 = var0 + this->var2;
    v13 = fmin(fmin(var0, v12), fmin(v7, v7 + v10.f64[0]));
    v14 = var1 + this->var3;
    v15 = fmin(fmin(var1, v14), fmin(v8, v8 + v10.f64[1]));
    *result.i64 = fmax(fmax(var0, v12), fmax(v7, v7 + v10.f64[0])) - v13;
    *a1->i64 = v13;
    *&a1->i64[1] = v15;
    a1[1].i64[0] = result.i64[0];
    *&a1[1].i64[1] = fmax(fmax(var1, v14), fmax(v8, v8 + v10.f64[1])) - v15;
  }

  else
  {
    result = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
    *a1 = result;
    a1[1] = v11;
  }

  return result;
}

double CI::sw_motionBlur(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (v6 == 5)
  {
    v9 = v8;
  }

  v10 = a4 + 80 * v5;
  v58 = *v9;
  v11.f64[0] = *CI::getDC(a1);
  v57 = v11;
  v12 = v58;
  v13 = vadd_f32(v12.n128_u64[0], v12.n128_u64[0]);
  v12.n128_u64[0] = vsub_f32(*&v11.f64[0], v13);
  LODWORD(v14) = *(v10 + 24);
  v15.i32[0] = *(v10 + 36);
  *v16.i32 = vmuls_lane_f32(*(v10 + 32), v12.n128_u64[0], 1);
  *&v17 = *v16.i32 + (v12.n128_f32[0] * *(v10 + 28));
  v12.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v10 + 20), v12.n128_u64[0], 1) + (v12.n128_f32[0] * *(v10 + 16)));
  *v11.f64 = *v15.i32 + *&v17;
  v12.n128_f32[1] = *v15.i32 + *&v17;
  v20.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v12, v11, v14, v17, v16, v15, v18, v19);
  v56 = v20;
  v20.n128_u64[1] = v58.u64[1];
  v21 = v57;
  v20.n128_u64[0] = vsub_f32(*v57.i8, *v58.f32);
  LODWORD(v22) = *(v10 + 24);
  v23.i32[0] = *(v10 + 36);
  *v24.i32 = vmuls_lane_f32(*(v10 + 32), v20.n128_u64[0], 1);
  *&v25 = *v24.i32 + (v20.n128_f32[0] * *(v10 + 28));
  v20.n128_f32[0] = *&v22 + (vmuls_lane_f32(*(v10 + 20), v20.n128_u64[0], 1) + (v20.n128_f32[0] * *(v10 + 16)));
  *v21.f64 = *v23.i32 + *&v25;
  v20.n128_f32[1] = *v23.i32 + *&v25;
  v28.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v20, v21, v22, v25, v24, v23, v26, v27);
  v55 = v28;
  LODWORD(v29) = *(v10 + 28);
  v28.n128_f32[0] = *(v10 + 24) + (vmuls_lane_f32(*(v10 + 20), *v57.i8, 1) + (*v57.i32 * *(v10 + 16)));
  LODWORD(v30) = *(v10 + 36);
  *v31.f64 = *&v30 + (vmuls_lane_f32(*(v10 + 32), *v57.i8, 1) + (*v57.i32 * *&v29));
  v28.n128_u32[1] = LODWORD(v31.f64[0]);
  v35.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v28, v31, v29, v30, v57, v32, v33, v34);
  v54 = v35;
  v35.n128_u64[1] = v58.u64[1];
  v36 = v57;
  v35.n128_u64[0] = vadd_f32(*v58.f32, *v57.i8);
  LODWORD(v37) = *(v10 + 24);
  v38.i32[0] = *(v10 + 36);
  *v39.i32 = vmuls_lane_f32(*(v10 + 32), v35.n128_u64[0], 1);
  *&v40 = *v39.i32 + (v35.n128_f32[0] * *(v10 + 28));
  v35.n128_f32[0] = *&v37 + (vmuls_lane_f32(*(v10 + 20), v35.n128_u64[0], 1) + (v35.n128_f32[0] * *(v10 + 16)));
  *v36.f64 = *v38.i32 + *&v40;
  v35.n128_f32[1] = *v38.i32 + *&v40;
  v43.n128_f64[0] = CI::BitmapSampler::read(*(v10 + 8), v35, v36, v37, v40, v39, v38, v41, v42);
  v53 = v43;
  v43.n128_u64[1] = v57.u64[1];
  v43.n128_u64[0] = vadd_f32(v13, *v57.i8);
  LODWORD(v44) = *(v10 + 24);
  v45.i32[0] = *(v10 + 36);
  *v46.i32 = vmuls_lane_f32(*(v10 + 32), v43.n128_u64[0], 1);
  *&v47 = *v46.i32 + (v43.n128_f32[0] * *(v10 + 28));
  v43.n128_f32[0] = *&v44 + (vmuls_lane_f32(*(v10 + 20), v43.n128_u64[0], 1) + (v43.n128_f32[0] * *(v10 + 16)));
  *v48.f64 = *v45.i32 + *&v47;
  v43.n128_f32[1] = *v45.i32 + *&v47;
  *v51.i64 = CI::BitmapSampler::read(*(v10 + 8), v43, v48, v44, v47, v46, v45, v49, v50);
  *&result = vaddq_f32(vmulq_laneq_f32(v54, v58, 2), vmulq_laneq_f32(vaddq_f32(vaddq_f32(v55, v53), vmulq_laneq_f32(vaddq_f32(v56, v51), v58, 3)), v58, 3)).u64[0];
  return result;
}

double CI::sw_zoomBlur(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 56);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v4 + 64) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 80);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (*(v4 + 88) == 5)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = a4 + 80 * *(v4 + 8);
  v18 = *v8;
  v70 = *v12;
  v68 = *v16;
  v69 = *(a2 + (*(v4 + 104) << 6));
  DC = CI::getDC(a1);
  v20 = vsub_f32(*DC, v18);
  v21 = CI::getDC(DC);
  LODWORD(v22) = *(v17 + 24);
  v23.i32[0] = *(v17 + 36);
  *v24.i32 = vmuls_lane_f32(*(v17 + 32), *v21, 1);
  *&v25 = *v24.i32 + (COERCE_FLOAT(*v21) * *(v17 + 28));
  v26.n128_f32[0] = *&v22 + (vmuls_lane_f32(*(v17 + 20), *v21, 1) + (COERCE_FLOAT(*v21) * *(v17 + 16)));
  *v27.f64 = *v23.i32 + *&v25;
  v26.n128_f32[1] = *v23.i32 + *&v25;
  v30.n128_f64[0] = CI::BitmapSampler::read(*(v17 + 8), v26, v27, v22, v25, v24, v23, v28, v29);
  v67 = v30;
  v30.n128_u64[1] = v70.u64[1];
  v30.n128_u64[0] = vadd_f32(v18, vmul_n_f32(v20, v70.f32[0]));
  LODWORD(v31) = *(v17 + 24);
  v32.i32[0] = *(v17 + 36);
  *v33.i32 = vmuls_lane_f32(*(v17 + 32), v30.n128_u64[0], 1);
  *&v34 = *v33.i32 + (v30.n128_f32[0] * *(v17 + 28));
  v30.n128_f32[0] = *&v31 + (vmuls_lane_f32(*(v17 + 20), v30.n128_u64[0], 1) + (v30.n128_f32[0] * *(v17 + 16)));
  *v35.f64 = *v32.i32 + *&v34;
  v30.n128_f32[1] = *v32.i32 + *&v34;
  v38.n128_f64[0] = CI::BitmapSampler::read(*(v17 + 8), v30, v35, v31, v34, v33, v32, v36, v37);
  v66 = v38;
  v38.n128_u64[1] = v70.u64[1];
  v38.n128_u64[0] = vadd_f32(v18, vmul_lane_f32(v20, *v70.f32, 1));
  LODWORD(v39) = *(v17 + 24);
  v40.i32[0] = *(v17 + 36);
  *v41.i32 = vmuls_lane_f32(*(v17 + 32), v38.n128_u64[0], 1);
  *&v42 = *v41.i32 + (v38.n128_f32[0] * *(v17 + 28));
  v38.n128_f32[0] = *&v39 + (vmuls_lane_f32(*(v17 + 20), v38.n128_u64[0], 1) + (v38.n128_f32[0] * *(v17 + 16)));
  *v43.f64 = *v40.i32 + *&v42;
  v38.n128_f32[1] = *v40.i32 + *&v42;
  v46.n128_f64[0] = CI::BitmapSampler::read(*(v17 + 8), v38, v43, v39, v42, v41, v40, v44, v45);
  v65 = v46;
  v46.n128_u64[1] = v70.u64[1];
  v46.n128_u64[0] = vadd_f32(v18, vmul_laneq_f32(v20, v70, 2));
  LODWORD(v47) = *(v17 + 24);
  v48.i32[0] = *(v17 + 36);
  *v49.i32 = vmuls_lane_f32(*(v17 + 32), v46.n128_u64[0], 1);
  *&v50 = *v49.i32 + (v46.n128_f32[0] * *(v17 + 28));
  v46.n128_f32[0] = *&v47 + (vmuls_lane_f32(*(v17 + 20), v46.n128_u64[0], 1) + (v46.n128_f32[0] * *(v17 + 16)));
  *v51.f64 = *v48.i32 + *&v50;
  v46.n128_f32[1] = *v48.i32 + *&v50;
  v54.n128_f64[0] = CI::BitmapSampler::read(*(v17 + 8), v46, v51, v47, v50, v49, v48, v52, v53);
  v64 = v54;
  v54.n128_u64[1] = v70.u64[1];
  v54.n128_u64[0] = vadd_f32(v18, vmul_laneq_f32(v20, v70, 3));
  LODWORD(v55) = *(v17 + 24);
  v56.i32[0] = *(v17 + 36);
  *v57.i32 = vmuls_lane_f32(*(v17 + 32), v54.n128_u64[0], 1);
  *&v58 = *v57.i32 + (v54.n128_f32[0] * *(v17 + 28));
  v54.n128_f32[0] = *&v55 + (vmuls_lane_f32(*(v17 + 20), v54.n128_u64[0], 1) + (v54.n128_f32[0] * *(v17 + 16)));
  *v59.f64 = *v56.i32 + *&v58;
  v54.n128_f32[1] = *v56.i32 + *&v58;
  *v62.i64 = CI::BitmapSampler::read(*(v17 + 8), v54, v59, v55, v58, v57, v56, v60, v61);
  *&result = vaddq_f32(vmulq_n_f32(v67, v69), vaddq_f32(vmulq_laneq_f32(v66, v68, 3), vaddq_f32(vmulq_laneq_f32(v65, v68, 2), vaddq_f32(vmulq_lane_f32(v64, *v68.f32, 1), vmulq_n_f32(v62, v68.f32[0]))))).u64[0];
  return result;
}

uint64_t CI::sw_zoom(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = a4 + 80 * *(v4 + 8);
  v10 = *v8;
  v11 = *(a2 + (*(v4 + 56) << 6));
  v18 = vsub_f32(*CI::getDC(a1), *v8);
  v19 = 0uLL;
  v20 = 0.0;
  v21 = 100;
  v22 = vdupq_n_s32(0x3C23D70Au);
  v25 = v22;
  do
  {
    v26 = v19;
    v19.n128_f32[0] = v20 / 99.0;
    v22.f64[0] = 0.5;
    v19.n128_f32[0] = ((v19.n128_f32[0] + -0.5) + (((v19.n128_f32[0] + -0.5) * (v19.n128_f32[0] + -0.5)) * (v19.n128_f32[0] + -0.5))) * 0.8 + 0.5;
    v19.n128_u64[0] = vadd_f32(v10, vmul_n_f32(v18, v19.n128_f32[0] + (v11 * (1.0 - v19.n128_f32[0]))));
    LODWORD(v12) = *(v9 + 24);
    v15.i32[0] = *(v9 + 36);
    *v14.i32 = vmuls_lane_f32(*(v9 + 32), v19.n128_u64[0], 1);
    *&v13 = *v14.i32 + (v19.n128_f32[0] * *(v9 + 28));
    v19.n128_f32[0] = *&v12 + (vmuls_lane_f32(*(v9 + 20), v19.n128_u64[0], 1) + (v19.n128_f32[0] * *(v9 + 16)));
    *v22.f64 = *v15.i32 + *&v13;
    v19.n128_f32[1] = *v15.i32 + *&v13;
    *v23.i64 = CI::BitmapSampler::read(*(v9 + 8), v19, v22, v12, v13, v14, v15, v16, v17);
    HIDWORD(v12) = v25.i32[1];
    v22 = vaddq_f32(v26, vmulq_f32(v23, v25));
    v19 = v22;
    v20 = v20 + 1.0;
    --v21;
  }

  while (v21);
  return *&v22.f64[0];
}

double CI::sw_opTile(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = (a3 + 16 * v6);
  v8 = (a2 + (v6 << 6));
  if (*(v4 + 40) == 5)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v4 + 56);
  v11 = (a3 + 16 * v10);
  v12 = (a2 + (v10 << 6));
  if (*(v4 + 64) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (v14 == 5)
  {
    v17 = v16;
  }

  v18 = a4 + 80 * v5;
  v19 = *v9;
  v32 = *v13;
  v33 = *v17;
  v20 = vsub_f32(*CI::getDC(a1), *v9);
  v21 = vmul_lane_f32(vrndm_f32(vmul_n_f32(v20, v32.f32[0])), v32, 1);
  v22.n128_u64[0] = vsub_f32(v20, v21);
  v23 = vmul_f32(*v33.i8, v21);
  v24 = vmul_f32(*&vextq_s8(v33, v33, 8uLL), v21);
  v25 = vzip1_s32(v23, v24);
  *&v26.f64[0] = vadd_f32(v19, vadd_f32(v22.n128_u64[0], vadd_f32(v25, vzip2_s32(v23, v24))));
  v25.i32[0] = *(v18 + 28);
  v22.n128_f32[0] = *(v18 + 24) + (vmuls_lane_f32(*(v18 + 20), *&v26.f64[0], 1) + (*v26.f64 * *(v18 + 16)));
  v27.i32[0] = *(v18 + 36);
  *v23.i32 = vmuls_lane_f32(*(v18 + 32), *&v26.f64[0], 1);
  *v26.f64 = *v27.i32 + (*v23.i32 + (*v26.f64 * v25.f32[0]));
  v22.n128_u32[1] = LODWORD(v26.f64[0]);
  return CI::BitmapSampler::read(*(v18 + 8), v22, v26, *&v23, *&v25, v27, v28, v29, v30);
}

__n128 pageCurlMapInverse(CGPoint a1, CGAffineTransform *a2, CGAffineTransform *a3)
{
  v3 = a2->tx + a1.y * a2->c + a2->a * a1.x;
  if (v3 <= 0.0)
  {
    y = a1.y;
  }

  else
  {
    v5 = a2->ty + a1.y * a2->d + a2->b * a1.x;
    if (v3 >= 3.14159265)
    {
      v6 = 3.14159265 - v3;
    }

    else
    {
      v9 = a2->ty + a1.y * a2->d + a2->b * a1.x;
      v6 = sin(v3);
      v5 = v9;
    }

    a1 = vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v5), *&a3->a, v6));
  }

  result.n128_f64[0] = a1.x;
  return result;
}

uint64_t CriticalPointsDOD(CGRect a1, CGAffineTransform *a2, CGPoint *a3)
{
  v22 = CGRectStandardize(a1);
  tx = a2->tx + -1.57079633;
  a2->tx = tx;
  a = a2->a;
  c = a2->c;
  v8 = -(tx + v22.origin.x * a2->a) / c;
  v9 = v22.origin.y + v22.size.height;
  if (v8 < v22.origin.y || v8 > v9)
  {
    result = 0;
  }

  else
  {
    a3->x = v22.origin.x;
    a3->y = v8;
    a = a2->a;
    tx = a2->tx;
    result = 1;
    c = a2->c;
  }

  v12 = v22.origin.x + v22.size.width;
  v13 = -(tx + v12 * a) / c;
  if (v13 >= v22.origin.y && v13 <= v9)
  {
    v15 = &a3[result];
    result = (result + 1);
    v15->x = v12;
    v15->y = v13;
    c = a2->c;
    tx = a2->tx;
    a = a2->a;
  }

  v16 = -(tx + v22.origin.y * c) / a;
  if (v16 >= v22.origin.x && v16 <= v12)
  {
    v18 = &a3[result];
    result = (result + 1);
    v18->x = v16;
    v18->y = v22.origin.y;
    c = a2->c;
    tx = a2->tx;
    a = a2->a;
  }

  v19 = -(tx + v9 * c) / a;
  if (v19 >= v22.origin.x && v19 <= v12)
  {
    v21 = &a3[result];
    result = (result + 1);
    v21->x = v19;
    v21->y = v9;
  }

  return result;
}

void pageCurlROI(int a1, float64x2_t *a2, double *a3, double *a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v90[16] = *MEMORY[0x1E69E9840];
  if (a1 == 2)
  {
    return;
  }

  *v69 = a9;
  *&v69[8] = a10;
  *&v69[16] = a11;
  *&v69[24] = a12;
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v20 = a2->f64[0];
  v21 = a2[1].f64[0];
  v22 = a2[2].f64[0];
  v91 = CGRectStandardize(*&a5);
  v23 = v22 + -0.999;
  v24 = -(v22 + -0.999 + v91.origin.x * v20) / v21;
  v25 = v91.origin.y + v91.size.height;
  if (v24 < v91.origin.y || v24 > v25)
  {
    v27 = 0;
  }

  else
  {
    v90[0] = *&v91.origin.x;
    *&v90[1] = -(v22 + -0.999 + v91.origin.x * v20) / v21;
    v27 = 1;
  }

  v28 = v91.origin.x + v91.size.width;
  v29 = -(v23 + v28 * v20) / v21;
  if (v29 >= v91.origin.y && v29 <= v25)
  {
    v31 = &v90[2 * v27++];
    *v31 = v28;
    v31[1] = v29;
  }

  v32 = -(v23 + v91.origin.y * v21) / v20;
  if (v32 >= v91.origin.x && v32 <= v28)
  {
    v34 = &v90[2 * v27++];
    *v34 = v32;
    v34[1] = v91.origin.y;
  }

  v35 = -(v23 + v25 * v21) / v20;
  if (v35 >= v91.origin.x && v35 <= v28)
  {
    v37 = &v90[2 * v27++];
    *v37 = v35;
    v37[1] = v25;
  }

  if (v23 + v21 * v91.origin.y + v91.origin.x * v20 <= 0.0)
  {
    v38 = &v90[2 * v27++];
    *v38 = v91.origin.x;
    v38[1] = v91.origin.y;
  }

  if (v23 + v21 * v25 + v91.origin.x * v20 <= 0.0)
  {
    v39 = &v90[2 * v27++];
    *v39 = v91.origin.x;
    v39[1] = v25;
  }

  if (v23 + v21 * v25 + v28 * v20 <= 0.0)
  {
    v40 = &v90[2 * v27++];
    *v40 = v28;
    v40[1] = v25;
  }

  if (v23 + v21 * v91.origin.y + v28 * v20 <= 0.0)
  {
    v45 = &v90[2 * v27++];
    *v45 = v28;
    v45[1] = v91.origin.y;
LABEL_33:
    v46 = v90;
    v44 = height;
    v43 = width;
    v42 = y;
    v41 = x;
    v47 = v27;
    do
    {
      r1 = v44;
      v79 = height;
      v80 = width;
      v81 = x;
      v82 = y;
      v83 = v43;
      v84 = v42;
      v85 = v41;
      v48 = *a3;
      v49 = a3[1];
      v50 = a3[2];
      v51 = a3[3];
      v52 = a3[4];
      v53 = a3[5];
      v76 = *a4;
      v77 = a4[1];
      v54 = a4[2];
      v73 = a4[4];
      v74 = a4[3];
      v75 = a4[5];
      v55 = *v46++;
      v72 = v55.f64[1];
      v70 = vaddq_f64(a2[2], vmlaq_n_f64(vmulq_laneq_f64(a2[1], v55, 1), *a2, v55.f64[0]));
      v71 = v55;
      v86 = v70;
      v87 = v70;
      v89 = v55;
      v56 = asin(v70.f64[0]);
      v87.f64[0] = v52 + v50 * v87.f64[1] + v48 * v56;
      v87.f64[1] = v53 + v51 * v87.f64[1] + v49 * v56;
      v86.f64[0] = v52 + vmuld_lane_f64(v50, v70, 1) + v48 * (3.14159265 - v56);
      v86.f64[1] = v53 + vmuld_lane_f64(v51, v70, 1) + v49 * (3.14159265 - v56);
      if (v70.f64[0] > 0.0)
      {
        v57 = &v87;
      }

      else
      {
        v57 = &v89;
      }

      v58 = *v57;
      v59 = v75 + vmuld_lane_f64(v74, v71, 1) + v77 * v71.f64[0];
      v88[0] = v73 + vmuld_lane_f64(v54, v71, 1) + v76 * v71.f64[0];
      v88[1] = v59;
      if (v70.f64[0] > 0.0)
      {
        v60 = &v86;
      }

      else
      {
        v60 = v88;
      }

      v86 = *v60;
      v87 = v58;
      if (v70.f64[0] > 0.0)
      {
        v62 = v87.f64[1];
      }

      else
      {
        v62 = v72;
      }

      v63 = *v60;
      if (v70.f64[0] > 0.0)
      {
        v64 = v86.f64[1];
      }

      else
      {
        v64 = v59;
      }

      v65 = 0;
      v66 = 0;
      v92.origin.x = v81;
      v92.origin.y = v82;
      v92.size.height = v79;
      v92.size.width = v80;
      v61 = v57->f64[0];
      v93 = CGRectUnion(v92, *(&v62 - 1));
      x = v93.origin.x;
      y = v93.origin.y;
      width = v93.size.width;
      height = v93.size.height;
      v95.size.width = 0.0;
      v95.size.height = 0.0;
      v93.origin.y = v84;
      v93.origin.x = v85;
      v93.size.width = v83;
      v93.size.height = r1;
      v95.origin.x = v63;
      v95.origin.y = v64;
      *&v41 = CGRectUnion(v93, v95);
      --v47;
    }

    while (v47);
    goto LABEL_47;
  }

  if (v27)
  {
    goto LABEL_33;
  }

  v41 = x;
  v42 = y;
  v43 = width;
  v44 = height;
LABEL_47:
  if (a1)
  {
    v67 = v44;
  }

  else
  {
    v67 = height;
  }

  if (a1)
  {
    v68 = v43;
  }

  else
  {
    v68 = width;
  }

  if (a1)
  {
    y = v42;
    x = v41;
  }

  v96 = CGRectInset(*v69, -1.0, -1.0);
  v94.origin.x = x;
  v94.origin.y = y;
  v94.size.width = v68;
  v94.size.height = v67;
  CGRectIntersection(v94, v96);
}

double CI::sw_pageCurlTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v8 = *(v4 + 80);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v4 + 88) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v4 + 104);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v4 + 112) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v4 + 128);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v4 + 136) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v4 + 152);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v4 + 160) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v4 + 176);
  v25 = (a3 + 16 * v24);
  v26 = (a2 + (v24 << 6));
  if (*(v4 + 184) == 5)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v4 + 200);
  v29 = (a3 + 16 * v28);
  v30 = (a2 + (v28 << 6));
  if (*(v4 + 208) == 5)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = *(v4 + 224);
  v33 = *(v4 + 256);
  v34 = *(v4 + 248);
  v35 = (a3 + 16 * v34);
  v36 = (a2 + (v34 << 6));
  if (v33 == 5)
  {
    v36 = v35;
  }

  v37 = (v32 << 6);
  v38 = a4 + 80 * v7;
  v39 = a4 + 80 * v6;
  v40 = a4 + 80 * v5;
  v103 = *v11;
  v41 = *v15;
  v42 = *v23;
  v96 = *v19;
  v99 = *v27;
  v43 = *v31;
  v44 = *(v37 + a2);
  v101 = *v36;
  v45 = *CI::getDC(v37);
  v46 = vmul_f32(*v103.i8, v45);
  v47 = vmul_f32(*&vextq_s8(v103, v103, 8uLL), v45);
  *&v48.f64[0] = vadd_f32(v41, vadd_f32(vzip1_s32(v46, v47), vzip2_s32(v46, v47)));
  v102 = v48;
  v49 = *v48.f64;
  v50 = 1.0 - pow(*v48.f64, 1.5);
  v51 = sqrtf(fmaxf(v50, 0.0));
  v52 = v49 + ((v51 + -1.0) * (v51 + -1.0)) * 0.5625;
  v53 = v102;
  *v53.f64 = v52;
  *&v54 = 3.14159265 - v52;
  v55.i64[1] = *&v102.f64[1];
  v56 = __PAIR64__(HIDWORD(v102.f64[0]), v54);
  v57 = vmul_f32(*v96.i8, *&v53.f64[0]);
  v58 = vextq_s8(v96, v96, 8uLL).u64[0];
  v59 = v96;
  *&v53.f64[0] = vmul_f32(v58, *&v53.f64[0]);
  v60.n128_u64[0] = vadd_f32(v42, vadd_f32(vzip1_s32(v57, *&v53.f64[0]), vzip2_s32(v57, *&v53.f64[0])));
  *&v53.f64[0] = vmul_f32(*v96.i8, v56);
  v61 = vmul_f32(v58, v56);
  *&v53.f64[0] = vadd_f32(v42, vadd_f32(vzip1_s32(*&v53.f64[0], v61), vzip2_s32(*&v53.f64[0], v61)));
  v62 = vdup_lane_s32(vcge_f32(0, *&v102.f64[0]), 0);
  v63 = vmul_f32(*v99.i8, v45);
  v64 = vextq_s8(v99, v99, 8uLL);
  *v64.i8 = vmul_f32(*v64.i8, v45);
  *v55.i8 = vzip1_s32(v63, *v64.i8);
  v65 = vadd_f32(v43, vadd_f32(*v55.i8, vzip2_s32(v63, *v64.i8)));
  *&v53.f64[0] = vbsl_s8(v62, v65, *&v53.f64[0]);
  v97 = v53;
  *&v53.f64[0] = vbsl_s8(v62, v45, v60.n128_u64[0]);
  v65.i32[0] = *(v40 + 28);
  v60.n128_f32[0] = *(v40 + 24) + (vmuls_lane_f32(*(v40 + 20), *&v53.f64[0], 1) + (*v53.f64 * *(v40 + 16)));
  v64.i32[0] = *(v40 + 36);
  *v62.i32 = vmuls_lane_f32(*(v40 + 32), *&v53.f64[0], 1);
  *v53.f64 = *v64.i32 + (*v62.i32 + (*v53.f64 * *v65.i32));
  v60.n128_u32[1] = LODWORD(v53.f64[0]);
  v67.n128_f64[0] = CI::BitmapSampler::read(*(v40 + 8), v60, v53, *&v62, *&v65, v64, v55, v59, v66);
  v100 = v67;
  HIDWORD(v68) = v97.i32[1];
  v69.i32[0] = *(v39 + 36);
  *&v70 = vmuls_lane_f32(*(v39 + 32), *v97.i8, 1);
  *&v68 = *&v70 + (*v97.i32 * *(v39 + 28));
  v67.n128_f32[0] = *(v39 + 24) + (vmuls_lane_f32(*(v39 + 20), *v97.i8, 1) + (*v97.i32 * *(v39 + 16)));
  *v71.f64 = *v69.i32 + *&v68;
  v67.n128_f32[1] = *v69.i32 + *&v68;
  v74.n128_f64[0] = CI::BitmapSampler::read(*(v39 + 8), v67, v71, v68, v70, v69, v97, v72, v73);
  v98 = v74;
  __asm { FMOV            V1.2S, #-1.0 }

  v74.n128_u64[0] = vmaxnm_f32(vmul_n_f32(*v103.i8, v44 * *v102.f64), _D1);
  __asm { FMOV            V1.2S, #1.0 }

  v74.n128_u64[0] = vbsl_s8(vdup_lane_s32(vcgt_f32(0, *&v102.f64[0]), 0), 0x3F0000003F000000, vadd_f32(vmul_f32(vminnm_f32(v74.n128_u64[0], _D1), 0x3F0000003F000000), 0x3F0000003F000000));
  v81 = v101;
  v82 = vextq_s8(v81, v81, 8uLL);
  v74.n128_u64[0] = vadd_f32(*v101.i8, vmul_f32(*&v82.f64[0], v74.n128_u64[0]));
  v81.i32[0] = *(v38 + 24);
  v83.i32[0] = *(v38 + 36);
  *v84.i32 = vmuls_lane_f32(*(v38 + 32), v74.n128_u64[0], 1);
  *&v85 = *v84.i32 + (v74.n128_f32[0] * *(v38 + 28));
  v74.n128_f32[0] = *v81.i32 + (vmuls_lane_f32(*(v38 + 20), v74.n128_u64[0], 1) + (v74.n128_f32[0] * *(v38 + 16)));
  *v82.f64 = *v83.i32 + *&v85;
  v74.n128_f32[1] = *v83.i32 + *&v85;
  *v88.i64 = CI::BitmapSampler::read(*(v38 + 8), v74, v82, *v81.i64, v85, v84, v83, v86, v87);
  v89 = vmulq_laneq_f32(v88, v98, 3);
  v90 = 1.0;
  v91 = vaddq_f32(v89, vmulq_n_f32(v98, 1.0 - v89.f32[3]));
  v92 = vaddq_f32(v91, vmulq_n_f32(v100, 1.0 - v91.f32[3]));
  v93 = (1.0 - v49) * v44;
  if (v93 <= 1.0)
  {
    v90 = (1.0 - v49) * v44;
  }

  if (v93 >= 0.0)
  {
    v94 = v90;
  }

  else
  {
    v94 = 0.0;
  }

  *&result = vmulq_n_f32(v92, v94).u64[0];
  return result;
}

double CI::sw_pageCurlTransNoEmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 56);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 64) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v4 + 88) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 104);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (*(v4 + 112) == 5)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(v4 + 128);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (*(v4 + 136) == 5)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  v21 = *(v4 + 152);
  v22 = (a3 + 16 * v21);
  v23 = (a2 + (v21 << 6));
  if (*(v4 + 160) == 5)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  v25 = *(v4 + 176);
  v26 = (a3 + 16 * v25);
  v27 = (a2 + (v25 << 6));
  if (*(v4 + 184) == 5)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = a4 + 80 * *(v4 + 32);
  v30 = a4 + 80 * *(v4 + 8);
  v31 = *v12;
  v69 = *v8;
  v71 = *v16;
  v32 = *v20;
  v73 = *v24;
  v33 = *v28;
  v34 = *(a2 + (*(v4 + 200) << 6));
  v35 = *CI::getDC(v26);
  v36 = vmul_f32(*v69.i8, v35);
  v37 = vmul_f32(*&vextq_s8(v69, v69, 8uLL), v35);
  *v38.i8 = vadd_f32(v31, vadd_f32(vzip1_s32(v36, v37), vzip2_s32(v36, v37)));
  v70 = v38;
  v39 = *v38.i32;
  v40 = 1.0 - pow(*v38.i32, 1.5);
  v41 = sqrtf(fmaxf(v40, 0.0));
  v42 = v39 + ((v41 + -1.0) * (v41 + -1.0)) * 0.5625;
  v43 = v70;
  *v43.f64 = v42;
  *&v44 = 3.14159265 - v42;
  v45 = __PAIR64__(v70.u32[1], v44);
  v46 = vmul_f32(*v71.i8, *&v43.f64[0]);
  v47 = vextq_s8(v71, v71, 8uLL).u64[0];
  v48.i64[1] = v71.i64[1];
  *&v43.f64[0] = vmul_f32(v47, *&v43.f64[0]);
  v49.n128_u64[0] = vadd_f32(v32, vadd_f32(vzip1_s32(v46, *&v43.f64[0]), vzip2_s32(v46, *&v43.f64[0])));
  *&v43.f64[0] = vmul_f32(*v71.i8, v45);
  v50 = vmul_f32(v47, v45);
  *&v43.f64[0] = vadd_f32(v32, vadd_f32(vzip1_s32(*&v43.f64[0], v50), vzip2_s32(*&v43.f64[0], v50)));
  v51 = vdup_lane_s32(vcge_f32(0, *v70.i8), 0);
  v52 = vmul_f32(*v73.i8, v35);
  v53 = vextq_s8(v73, v73, 8uLL);
  *v53.i8 = vmul_f32(*v53.i8, v35);
  *v48.i8 = vzip1_s32(v52, *v53.i8);
  v54 = vadd_f32(v33, vadd_f32(*v48.i8, vzip2_s32(v52, *v53.i8)));
  *&v43.f64[0] = vbsl_s8(v51, v54, *&v43.f64[0]);
  v74 = v43;
  *&v43.f64[0] = vbsl_s8(v51, v35, v49.n128_u64[0]);
  v54.i32[0] = *(v30 + 28);
  v49.n128_f32[0] = *(v30 + 24) + (vmuls_lane_f32(*(v30 + 20), *&v43.f64[0], 1) + (*v43.f64 * *(v30 + 16)));
  v53.i32[0] = *(v30 + 36);
  *v51.i32 = vmuls_lane_f32(*(v30 + 32), *&v43.f64[0], 1);
  *v43.f64 = *v53.i32 + (*v51.i32 + (*v43.f64 * *v54.i32));
  v49.n128_u32[1] = LODWORD(v43.f64[0]);
  v56.n128_f64[0] = CI::BitmapSampler::read(*(v30 + 8), v49, v43, *&v51, *&v54, v53, v48, v70, v55);
  v72 = v56;
  HIDWORD(v57) = v74.i32[1];
  v58.i32[0] = *(v29 + 36);
  *&v59 = vmuls_lane_f32(*(v29 + 32), *v74.i8, 1);
  *&v57 = *&v59 + (*v74.i32 * *(v29 + 28));
  v56.n128_f32[0] = *(v29 + 24) + (vmuls_lane_f32(*(v29 + 20), *v74.i8, 1) + (*v74.i32 * *(v29 + 16)));
  *v60.f64 = *v58.i32 + *&v57;
  v56.n128_f32[1] = *v58.i32 + *&v57;
  *v63.i64 = CI::BitmapSampler::read(*(v29 + 8), v56, v60, v57, v59, v58, v74, v61, v62);
  v64 = 1.0;
  v65 = vaddq_f32(v63, vmulq_n_f32(v72, 1.0 - v63.f32[3]));
  v66 = (1.0 - v39) * v34;
  if (v66 <= 1.0)
  {
    v64 = (1.0 - v39) * v34;
  }

  if (v66 >= 0.0)
  {
    v67 = v64;
  }

  else
  {
    v67 = 0.0;
  }

  *&result = vmulq_n_f32(v65, v67).u64[0];
  return result;
}

double CI::sw_pageCurlWithShadowTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = *(v4 + 56);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  v8 = *(v4 + 8);
  v9 = *(v4 + 32);
  v10 = *(v4 + 80);
  v11 = (a3 + 16 * v10);
  if (*(v4 + 64) != 5)
  {
    v6 = v7;
  }

  v12 = (a2 + (v10 << 6));
  if (*(v4 + 88) == 5)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(v4 + 104);
  v15 = (a3 + 16 * v14);
  v16 = (a2 + (v14 << 6));
  if (*(v4 + 112) == 5)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v4 + 128);
  v19 = (a3 + 16 * v18);
  v20 = (a2 + (v18 << 6));
  if (*(v4 + 136) == 5)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  v22 = *(v4 + 152);
  v23 = (a3 + 16 * v22);
  v24 = (a2 + (v22 << 6));
  if (*(v4 + 160) == 5)
  {
    v25 = v23;
  }

  else
  {
    v25 = v24;
  }

  v26 = *(v4 + 176);
  v27 = (a3 + 16 * v26);
  v28 = (a2 + (v26 << 6));
  if (*(v4 + 184) == 5)
  {
    v29 = v27;
  }

  else
  {
    v29 = v28;
  }

  v30 = *(v4 + 200);
  v31 = *(v4 + 224);
  v32 = (a3 + 16 * v31);
  v33 = (a2 + (v31 << 6));
  if (*(v4 + 232) == 5)
  {
    v34 = v32;
  }

  else
  {
    v34 = v33;
  }

  v35 = *(v4 + 248);
  v36 = *(v4 + 272);
  v37 = *(v4 + 296);
  v38 = (a3 + 16 * v37);
  v39 = (a2 + (v37 << 6));
  if (*(v4 + 304) == 5)
  {
    v40 = v38;
  }

  else
  {
    v40 = v39;
  }

  v41 = *(v4 + 328);
  v42 = *(v4 + 320);
  v43 = (a3 + 16 * v42);
  v44 = (a2 + (v42 << 6));
  if (v41 == 5)
  {
    v44 = v43;
  }

  v45 = *v13;
  v46 = a4 + 80 * v9;
  v47 = a4 + 80 * v8;
  v150 = *v6;
  v152 = *v17;
  v48 = *v21;
  v141 = *v25;
  v49 = *v29;
  v144 = *(a2 + (v30 << 6));
  v148 = *v34;
  v50 = *(a2 + (v35 << 6));
  v149 = *(a2 + (v36 << 6));
  v146 = *v40;
  v147 = *v44;
  v52 = *CI::getDC(v34);
  v55.n128_u64[0] = vmul_f32(*v150.i8, v52);
  v56 = vextq_s8(v150, v150, 8uLL);
  *&v56.f64[0] = vmul_f32(*&v56.f64[0], v52);
  *v53.i8 = vadd_f32(v45, vadd_f32(vzip1_s32(v55.n128_u64[0], *&v56.f64[0]), vzip2_s32(v55.n128_u64[0], *&v56.f64[0])));
  v54 = *v53.i32;
  v55.n128_u64[0] = v53.i64[0];
  LODWORD(v56.f64[0]) = v53.i32[0];
  v57 = 0.0;
  v58 = *v53.i32;
  v151 = v53;
  if (*v53.i32 > 0.0)
  {
    v59 = pow(*v53.i32, 1.5);
    v53 = v151;
    *&v59 = sqrt(1.0 - v59) + -1.0;
    v60 = v54 + (*&v59 * *&v59) * 0.5625;
    v61 = v54 * 9999.0;
    v62 = 1.0;
    if (*v151.i32 < 1.0)
    {
      v61 = v60;
    }

    *v56.f64 = v61;
    v55 = v151;
    v55.n128_u32[0] = LODWORD(v56.f64[0]);
    v63 = (*v151.i32 + -0.607) / 0.693;
    if (v63 <= 1.0)
    {
      v62 = (*v151.i32 + -0.607) / 0.693;
    }

    if (v63 < 0.0)
    {
      v62 = 0.0;
    }

    if (v54 >= 0.9)
    {
      v60 = v54 + ((v62 * v62) * ((v62 * -2.0) + 3.0)) * 0.570796327;
    }

    v58 = v60;
    v57 = *v151.i32;
  }

  v145 = v58;
  v64.i32[1] = v53.i32[1];
  v64.f32[0] = 3.1416 - *v56.f64;
  *&v56.f64[0] = vmul_f32(*v152.i8, v55.n128_u64[0]);
  v65 = vextq_s8(v152, v152, 8uLL);
  v55.n128_u64[0] = vmul_f32(*v65.i8, v55.n128_u64[0]);
  v55.n128_u64[0] = vadd_f32(v48, vadd_f32(vzip1_s32(*&v56.f64[0], v55.n128_u64[0]), vzip2_s32(*&v56.f64[0], v55.n128_u64[0])));
  *&v56.f64[0] = vmul_f32(*v152.i8, v64);
  v143 = *v65.i8;
  v66 = vmul_f32(*v65.i8, v64);
  *&v56.f64[0] = vadd_f32(v48, vadd_f32(vzip1_s32(*&v56.f64[0], v66), vzip2_s32(*&v56.f64[0], v66)));
  v67 = vdup_lane_s32(vcgt_f32(0, *v53.i8), 0);
  v68 = vmul_f32(*v141.i8, v52);
  v69 = vextq_s8(v141, v141, 8uLL);
  *v69.i8 = vmul_f32(*v69.i8, v52);
  *v65.i8 = vzip1_s32(v68, *v69.i8);
  v70 = vadd_f32(*v65.i8, vzip2_s32(v68, *v69.i8));
  v71 = vadd_f32(v49, v70);
  *&v56.f64[0] = vbsl_s8(v67, v71, *&v56.f64[0]);
  v140 = v56;
  *&v56.f64[0] = vbsl_s8(v67, v52, v55.n128_u64[0]);
  v70.i32[0] = *(v47 + 28);
  v55.n128_f32[0] = *(v47 + 24) + (vmuls_lane_f32(*(v47 + 20), *&v56.f64[0], 1) + (*v56.f64 * *(v47 + 16)));
  v69.i32[0] = *(v47 + 36);
  *v67.i32 = vmuls_lane_f32(*(v47 + 32), *&v56.f64[0], 1);
  *v56.f64 = *v69.i32 + (*v67.i32 + (*v56.f64 * v70.f32[0]));
  v55.n128_u32[1] = LODWORD(v56.f64[0]);
  v72.n128_f64[0] = CI::BitmapSampler::read(*(v47 + 8), v55, v56, *&v67, *&v70, v69, v65, v53, v51);
  v142 = v72;
  HIDWORD(v73) = v140.i32[1];
  v74.i32[0] = *(v46 + 36);
  *&v75 = vmuls_lane_f32(*(v46 + 32), *v140.i8, 1);
  *&v73 = *&v75 + (*v140.i32 * *(v46 + 28));
  v72.n128_f32[0] = *(v46 + 24) + (vmuls_lane_f32(*(v46 + 20), *v140.i8, 1) + (*v140.i32 * *(v46 + 16)));
  *v76.f64 = *v74.i32 + *&v73;
  v72.n128_f32[1] = *v74.i32 + *&v73;
  *v79.i64 = CI::BitmapSampler::read(*(v46 + 8), v72, v76, v73, v75, v74, v140, v77, v78);
  v80 = (v57 + -0.6) * 2.5;
  v81 = 1.0;
  if (v80 <= 1.0)
  {
    v81 = (v57 + -0.6) * 2.5;
  }

  if (v80 < 0.0)
  {
    v81 = 0.0;
  }

  v82 = v81;
  if (v81 <= 0.75)
  {
    v83 = v82 * 0.375 * v82 + v82 * 0.35;
  }

  else
  {
    v83 = (v82 + -0.82) * 15.0 * (v82 + -0.82) + 0.4;
  }

  v84 = 1.0 - v54;
  v85 = (1.0 - v54) * v144;
  if (v85 <= 1.0)
  {
    v86 = (1.0 - v54) * v144;
  }

  else
  {
    v86 = 1.0;
  }

  _NF = v85 < 0.0;
  v88 = 0.0;
  if (_NF)
  {
    v86 = 0.0;
  }

  v89 = vmulq_n_f32(v79, v86);
  v90 = vmulq_n_f32(v142, v86);
  v91.i32[1] = v151.i32[1];
  v91.f32[0] = 3.1416 - v145;
  v92 = vmul_f32(*v152.i8, v91);
  v93 = vmul_f32(v143, v91);
  *v99.i32 = 1.0 - (v50 + v50);
  *v94.f32 = vmla_n_f32(vmul_n_f32(vadd_f32(v48, vadd_f32(vzip1_s32(v92, v93), vzip2_s32(v92, v93))), *v99.i32), v71, v50 + v50);
  v95 = vmul_f32(*v152.i8, __PAIR64__(v151.u32[1], LODWORD(v145)));
  v96 = vmul_f32(v143, __PAIR64__(v151.u32[1], LODWORD(v145)));
  *v97.f32 = vmla_n_f32(vmul_n_f32(vadd_f32(v48, vadd_f32(vzip1_s32(v95, v96), vzip2_s32(v95, v96))), *v99.i32), v52, v50 + v50);
  v98 = v83;
  v99.i32[1] = v147.i32[1];
  v100 = vmulq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(v146, 1.0 - v98), v147, v98), v89, 3);
  v101 = vaddq_f32(v100, vmulq_n_f32(v89, 1.0 - v100.f32[3]));
  v102 = (*v151.i32 + -0.5) + (*v151.i32 + -0.5);
  if (v102 <= 1.0)
  {
    v103 = (*v151.i32 + -0.5) + (*v151.i32 + -0.5);
  }

  else
  {
    v103 = 1.0;
  }

  if (v102 >= 0.0)
  {
    v104 = v103;
  }

  else
  {
    v104 = 0.0;
  }

  v105 = v50 * (vmuls_lane_f32((((v104 * v104) * ((v104 * -2.0) + 3.0)) * 1.25) + ((1.0 - ((v104 * v104) * ((v104 * -2.0) + 3.0))) * 2.0), v90, 3) + ((1.0 - v90.f32[3]) * 2.3));
  *v99.i32 = v144 * v105;
  v106 = v148;
  v107 = vextq_s8(v106, v106, 8uLL).u64[0];
  v108.i64[0] = v148.i64[0];
  v108.i64[1] = v94.i64[0];
  v94.i64[1] = v107;
  v109 = vsubq_f32(v94, v108);
  v110 = vdupq_n_s32(0x3F23D70Au);
  v111 = vdivq_f32(v109, vdupq_lane_s32(v99, 0));
  v112.i64[0] = 0x3F0000003F000000;
  v112.i64[1] = 0x3F0000003F000000;
  v113 = vdupq_n_s32(0x3E0F5C29u);
  __asm
  {
    FMOV            V18.4S, #1.0
    FMOV            V21.4S, #-1.0
  }

  v119 = vbslq_s8(vcltzq_f32(vaddq_f32(v111, _Q21)), vbicq_s8(vsubq_f32(vaddq_f32(vmulq_f32(v111, v110), v112), vmulq_f32(v111, vmulq_f32(v111, vmulq_f32(v111, v113)))), vcltzq_f32(vaddq_f32(v111, _Q18))), _Q18);
  v120 = v84 / v105;
  v121 = v120 * 0.64 + 0.5 + v120 * -0.14 * v120 * v120;
  if (v120 <= -1.0)
  {
    v121 = 0.0;
  }

  if (v120 < 1.0)
  {
    v122 = v121;
  }

  else
  {
    v122 = 1.0;
  }

  v123 = v122 * vmuls_lane_f32(vmuls_lane_f32(vmuls_lane_f32(v119.f32[0], *v119.f32, 1), v119, 2), v119, 3);
  if (v123 <= 1.0)
  {
    v124 = v123;
  }

  else
  {
    v124 = 1.0;
  }

  if (v123 >= 0.0)
  {
    v125 = v124;
  }

  else
  {
    v125 = 0.0;
  }

  v126 = vmul_f32(*v151.i8, *v151.i8).f32[0];
  if (v126 > 1.5)
  {
    v126 = 1.5;
  }

  v127 = v126 * 0.65;
  *&v127 = v127;
  v128 = v84 / (v50 * 2.5);
  v129 = v128 * 0.64 + 0.5 + v128 * -0.14 * v128 * v128;
  if (v128 <= -1.0)
  {
    v129 = 0.0;
  }

  if (v128 < 1.0)
  {
    v130 = v129;
  }

  else
  {
    v130 = 1.0;
  }

  if (*v151.i32 <= 1.0)
  {
    v131 = *v151.i32;
  }

  else
  {
    v131 = 1.0;
  }

  if (*v151.i32 < 0.0)
  {
    *&v127 = 0.0;
  }

  v106.i64[1] = v97.i64[0];
  *&v127 = v144 * ((v50 * *&v127) * 2.5);
  v97.i64[1] = v107;
  v132 = vdivq_f32(vsubq_f32(v97, v106), vdupq_lane_s32(*&v127, 0));
  v133 = vbslq_s8(vcltzq_f32(vaddq_f32(v132, _Q21)), vbicq_s8(vsubq_f32(vaddq_f32(vmulq_f32(v132, v110), v112), vmulq_f32(v132, vmulq_f32(v132, vmulq_f32(v132, v113)))), vcltzq_f32(vaddq_f32(v132, _Q18))), _Q18);
  v134 = (1.0 - v90.f32[3]) * (v130 * vmuls_lane_f32(vmuls_lane_f32(vmuls_lane_f32(v133.f32[0], *v133.f32, 1), v133, 2), v133, 3));
  if (*v151.i32 >= 0.0)
  {
    v135 = v131;
  }

  else
  {
    v135 = 0.0;
  }

  v136 = v135 * v134;
  if (v136 <= 1.0)
  {
    v137 = v136;
  }

  else
  {
    v137 = 1.0;
  }

  if (fminf(*v151.i32, v136) >= 0.0)
  {
    v88 = v137;
  }

  v138.i64[0] = 0;
  v138.i32[2] = 0;
  v138.f32[3] = v149 * fminf(fmaxf(v125, v88), 0.5);
  *&result = vaddq_f32(v101, vmulq_n_f32(vaddq_f32(v138, vmulq_n_f32(v90, 1.0 - v138.f32[3])), 1.0 - v101.f32[3])).u64[0];
  return result;
}

double CI::sw_pageCurlNoShadowTransition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v8 = *(v5 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v5 + 64) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v5 + 80);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v5 + 88) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v5 + 104);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v5 + 112) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v5 + 128);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v5 + 136) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v5 + 152);
  v25 = (a3 + 16 * v24);
  v26 = (a2 + (v24 << 6));
  if (*(v5 + 160) == 5)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = *(v5 + 176);
  v29 = (a3 + 16 * v28);
  v30 = (a2 + (v28 << 6));
  if (*(v5 + 184) == 5)
  {
    v31 = v29;
  }

  else
  {
    v31 = v30;
  }

  v32 = *(v5 + 200);
  v33 = *(v5 + 224);
  v34 = (a3 + 16 * v33);
  v35 = (a2 + (v33 << 6));
  if (*(v5 + 232) == 5)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

  v37 = *(v5 + 256);
  v38 = *(v5 + 248);
  v39 = (a3 + 16 * v38);
  v40 = (a2 + (v38 << 6));
  if (v37 == 5)
  {
    v40 = v39;
  }

  v41 = a4 + 80 * v7;
  v42 = a4 + 80 * v6;
  v43 = *v15;
  v87 = *v11;
  v89 = *v19;
  v44 = *v23;
  v45 = *v31;
  v46 = *(a2 + (v32 << 6));
  v91 = *v27;
  v93 = *v36;
  v94 = *v40;
  v47 = *CI::getDC(v36);
  v48 = vmul_f32(*v87.i8, v47);
  v49 = vmul_f32(*&vextq_s8(v87, v87, 8uLL), v47);
  *v50.i8 = vadd_f32(v43, vadd_f32(vzip1_s32(v48, v49), vzip2_s32(v48, v49)));
  v88 = v50;
  v4.i32[0] = v50.i32[0];
  v51 = *v50.i32;
  v52.n128_f64[0] = pow(*v50.i32, 1.5);
  v55 = v51;
  if (v4.f32[0] > 0.0)
  {
    if (v4.f32[0] >= 1.0)
    {
      v55 = v51 * 9999.0;
    }

    else
    {
      v56 = sqrt(1.0 - v52.n128_f64[0]) + -1.0;
      v55 = v51 + (v56 * v56) * 0.5625;
    }
  }

  v52.n128_f32[0] = v55;
  v57 = v88;
  v58 = v88;
  LODWORD(v58.f64[0]) = v52.n128_u32[0];
  *v57.i32 = 3.1416 - v52.n128_f32[0];
  v52.n128_u64[0] = vmul_f32(*v89.i8, *&v58.f64[0]);
  v59 = vextq_s8(v89, v89, 8uLL).u64[0];
  *&v58.f64[0] = vmul_f32(v59, *&v58.f64[0]);
  v52.n128_u64[0] = vadd_f32(v44, vadd_f32(vzip1_s32(v52.n128_u64[0], *&v58.f64[0]), vzip2_s32(v52.n128_u64[0], *&v58.f64[0])));
  *&v58.f64[0] = vmul_f32(*v89.i8, *v57.i8);
  v60 = vmul_f32(v59, *v57.i8);
  *&v58.f64[0] = vadd_f32(v44, vadd_f32(vzip1_s32(*&v58.f64[0], v60), vzip2_s32(*&v58.f64[0], v60)));
  v61 = vdup_lane_s32(vcgt_f32(0, v4), 0);
  v62 = vmul_f32(*v91.i8, v47);
  v63 = vextq_s8(v91, v91, 8uLL);
  *v63.i8 = vmul_f32(*v63.i8, v47);
  *v57.i8 = vzip1_s32(v62, *v63.i8);
  v64 = vadd_f32(v45, vadd_f32(*v57.i8, vzip2_s32(v62, *v63.i8)));
  *&v58.f64[0] = vbsl_s8(v61, v64, *&v58.f64[0]);
  v90 = v58;
  *&v58.f64[0] = vbsl_s8(v61, v47, v52.n128_u64[0]);
  v64.i32[0] = *(v42 + 28);
  v52.n128_f32[0] = *(v42 + 24) + (vmuls_lane_f32(*(v42 + 20), *&v58.f64[0], 1) + (*v58.f64 * *(v42 + 16)));
  v63.i32[0] = *(v42 + 36);
  *v61.i32 = vmuls_lane_f32(*(v42 + 32), *&v58.f64[0], 1);
  *v58.f64 = *v63.i32 + (*v61.i32 + (*v58.f64 * *v64.i32));
  v52.n128_u32[1] = LODWORD(v58.f64[0]);
  v65.n128_f64[0] = CI::BitmapSampler::read(*(v42 + 8), v52, v58, *&v61, *&v64, v63, v57, v53, v54);
  v92 = v65;
  HIDWORD(v66) = v90.i32[1];
  v67.i32[0] = *(v41 + 36);
  *&v68 = vmuls_lane_f32(*(v41 + 32), *v90.i8, 1);
  *&v66 = *&v68 + (*v90.i32 * *(v41 + 28));
  v65.n128_f32[0] = *(v41 + 24) + (vmuls_lane_f32(*(v41 + 20), *v90.i8, 1) + (*v90.i32 * *(v41 + 16)));
  *v69.f64 = *v67.i32 + *&v66;
  v65.n128_f32[1] = *v67.i32 + *&v66;
  *v72.i64 = CI::BitmapSampler::read(*(v41 + 8), v65, v69, v66, v68, v67, v90, v70, v71);
  if (v4.f32[0] > 0.0)
  {
    v73 = v4.f32[0];
  }

  else
  {
    v73 = 0.0;
  }

  v74 = (v73 + -0.6) * 2.5;
  v75 = 1.0;
  if (v74 <= 1.0)
  {
    v75 = v74;
  }

  if (v74 < 0.0)
  {
    v75 = 0.0;
  }

  v76 = v75;
  if (v75 <= 0.75)
  {
    v77 = v76 * 0.375 * v76 + v76 * 0.35;
  }

  else
  {
    v77 = (v76 + -0.82) * 15.0 * (v76 + -0.82) + 0.4;
  }

  v78 = (1.0 - v51) * v46;
  if (v78 <= 1.0)
  {
    v79 = (1.0 - v51) * v46;
  }

  else
  {
    v79 = 1.0;
  }

  v80 = v78 < 0.0;
  v81 = 0.0;
  if (!v80)
  {
    v81 = v79;
  }

  v82 = vmulq_n_f32(v72, v81);
  v83 = v77;
  v84 = vmulq_laneq_f32(vmlaq_n_f32(vmulq_n_f32(v93, 1.0 - v83), v94, v83), v82, 3);
  v85 = vaddq_f32(v84, vmulq_n_f32(v82, 1.0 - v84.f32[3]));
  *&result = vaddq_f32(v85, vmulq_n_f32(vmulq_n_f32(v92, v81), 1.0 - v85.f32[3])).u64[0];
  return result;
}

float32x2_t CI::sw_parallelogramTile(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v7;
  v32 = *v11;
  v33 = *v15;
  v17 = vsub_f32(*CI::getDC(a1), *v7);
  v18 = vmul_f32(*v32.i8, v17);
  v19 = vmul_f32(*&vextq_s8(v32, v32, 8uLL), v17);
  v20 = vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19));
  v21 = vminnm_f32(vsub_f32(v20, vrndm_f32(v20)), vdup_n_s32(0x3F7FFFFFu));
  __asm { FMOV            V1.2S, #1.0 }

  v27 = vminnm_f32(v21, vsub_f32(_D1, v21));
  v28 = vadd_f32(v27, v27);
  v29 = vmul_f32(*v33.i8, v28);
  v30 = vmul_f32(*&vextq_s8(v33, v33, 8uLL), v28);
  return vadd_f32(v16, vadd_f32(vzip1_s32(v29, v30), vzip2_s32(v29, v30)));
}

uint64_t ci_signpost_log_perspectiveAC(uint64_t a1, uint64_t a2)
{
  if (ci_signpost_log_perspectiveAC(void)::onceToken != -1)
  {
    ci_signpost_log_perspectiveAC();
  }

  return ci_signpost_log_perspectiveAC(void)::log;
}

os_log_t ___Z29ci_signpost_log_perspectiveACv_block_invoke()
{
  result = os_log_create("com.apple.coreimage", "signpost_perspectiveAC");
  ci_signpost_log_perspectiveAC(void)::log = result;
  return result;
}

double CIPerspectiveAutoCalcDefaultImpl(void)
{
  v0 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (v0)
  {
    v1 = [v0 integerValue];
    v2 = 2;
    if (v1 < 2)
    {
      v2 = v1;
    }

    if (v2 != 1 && v2 != 2)
    {
      CIPerspectiveAutoCalcDefaultImpl();
    }
  }

  objc_opt_class();
  return result;
}

CIImage *CI::Perspective::plotLines<CI::Perspective::Line>(void *a1, CGColor *a2, uint64_t **a3)
{
  [a1 extent];
  v7 = v6;
  [a1 extent];
  v9 = v8;
  if (v7 <= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v10 < 0x1F4)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 / 0x1F4;
  }

  [a1 extent];
  v13 = v12;
  [a1 extent];
  v15 = v14;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v17 = CGBitmapContextCreate(0, v7, v9, 8uLL, 4 * v7, DeviceRGB, 1u);
  CGContextSetStrokeColorWithColor(v17, a2);
  CGContextSetLineWidth(v17, v11);
  v19 = *a3;
  v18 = a3[1];
  if (v19 != v18)
  {
    v20 = (2 * v11);
    v42 = v15;
    do
    {
      v21 = *v19;
      v22 = v19[1];
      v19 += 2;
      v23 = *&v22 - v13;
      v24 = *(&v22 + 1) - v15;
      v25 = (*&v21 - v13);
      v26 = (*(&v21 + 1) - v15);
      CGContextMoveToPoint(v17, v25, v26);
      v27 = v23;
      v28 = v24;
      CGContextAddLineToPoint(v17, v27, v28);
      v29 = v25 - v20;
      v30 = v20 + v26;
      CGContextMoveToPoint(v17, v25 - v20, v20 + v26);
      v31 = v20 + v25;
      v32 = v26 - v20;
      CGContextAddLineToPoint(v17, v31, v32);
      CGContextMoveToPoint(v17, v29, v32);
      CGContextAddLineToPoint(v17, v31, v30);
      v33 = v27 - v20;
      v34 = v20 + v28;
      CGContextMoveToPoint(v17, v27 - v20, v20 + v28);
      v35 = v20 + v27;
      v36 = v28 - v20;
      CGContextAddLineToPoint(v17, v35, v36);
      CGContextMoveToPoint(v17, v33, v36);
      v37 = v34;
      v15 = v42;
      CGContextAddLineToPoint(v17, v35, v37);
    }

    while (v19 != v18);
  }

  CGContextStrokePath(v17);
  Image = CGBitmapContextCreateImage(v17);
  v39 = [CIImage imageWithCGImage:Image];
  CGAffineTransformMakeTranslation(&v43, v13, v15);
  v40 = [[(CIImage *)v39 imageByApplyingTransform:&v43] imageByCompositingOverImage:a1];
  CGImageRelease(Image);
  CGContextRelease(v17);
  CGColorSpaceRelease(DeviceRGB);
  return v40;
}

void std::vector<CI::Perspective::Line>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::Line>>(a1, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

void sub_19CD83E40(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CI::Perspective::Line>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::Line>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::Line>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

char *___ZN2CI11PerspectiveL24CI_AUTOPERSPECTIVE_DEBUGEv_block_invoke()
{
  result = getenv("CI_AUTOPERSPECTIVE_DEBUG");
  CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump = result != 0;
  return result;
}

double CI::sw_gradientNormalizeV1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  *&result = vmulq_n_f32(*v7, *(a2 + (*(v3 + 32) << 6))).u64[0];
  return result;
}

double CI::sw_gradientThresholdV1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  v9 = sqrtf(vaddv_f32(*&vmulq_f32(v8, v8)));
  v10 = (v9 - *(a2 + (*(v3 + 32) << 6))) / (*(a2 + (*(v3 + 56) << 6)) - *(a2 + (*(v3 + 32) << 6)));
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v11 = (v9 - *(a2 + (*(v3 + 32) << 6))) / (*(a2 + (*(v3 + 56) << 6)) - *(a2 + (*(v3 + 32) << 6)));
  }

  v12 = v10 < 0.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v11;
  }

  *&result = vmulq_n_f32(v8, (v13 * v13) * ((v13 * -2.0) + 3.0)).u64[0];
  return result;
}

unint64_t CI::sw_gradientRangeLimit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  LODWORD(v9) = HIDWORD(v7->i64[0]);
  v10 = fabsf(v9);
  v11 = fabsf(COERCE_FLOAT(*v7));
  v12 = 0;
  if ((v10 + v11) >= 0.001)
  {
    if (v11 >= v10)
    {
      v13 = *(a2 + (*(v3 + 80) << 6));
      v14 = *(a2 + (*(v3 + 104) << 6));
      v15 = v9 / v8.f32[0];
    }

    else
    {
      v13 = *(a2 + (*(v3 + 32) << 6));
      v14 = *(a2 + (*(v3 + 56) << 6));
      v15 = v8.f32[0] / v9;
    }

    v16 = (v15 - v13) / (v14 - v13);
    if (v16 <= 1.0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1.0;
    }

    v18 = v16 < 0.0;
    v19 = 0.0;
    if (!v18)
    {
      v19 = v17;
    }

    return vmulq_n_f32(v8, 1.0 - ((v19 * v19) * ((v19 * -2.0) + 3.0))).u64[0];
  }

  return v12;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::$_0::operator() const(std::vector<CI::Perspective::Line> const&,unsigned long)::{lambda(-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&,-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis const&)#1} &,std::__wrap_iter<-[CIPerspectiveAutoCalcV1 clusterLineSegments]::Hypothesis*>>(uint64_t result, uint64_t a2, float *a3)
{
  if (a2 >= 2)
  {
    v3 = (a2 - 2) >> 1;
    if (v3 >= (0xCCCCCCCCCCCCCCCDLL * ((a3 - result) >> 3)))
    {
      v4 = (0x999999999999999ALL * ((a3 - result) >> 3)) | 1;
      v5 = (result + 40 * v4);
      if ((0x999999999999999ALL * ((a3 - result) >> 3) + 2) < a2 && *(v5 + 8) > *(v5 + 18))
      {
        v5 = (v5 + 40);
        v4 = 0x999999999999999ALL * ((a3 - result) >> 3) + 2;
      }

      v6 = a3[8];
      if (*(v5 + 8) <= v6)
      {
        v13 = *a3;
        v14 = *(a3 + 1);
        v7 = *(a3 + 9);
        do
        {
          v8 = a3;
          a3 = v5;
          v9 = *v5;
          v10 = v5[1];
          *(v8 + 4) = *(v5 + 4);
          *v8 = v9;
          *(v8 + 1) = v10;
          if (v3 < v4)
          {
            break;
          }

          v11 = 2 * v4;
          v4 = (2 * v4) | 1;
          v5 = (result + 40 * v4);
          v12 = v11 + 2;
          if (v12 < a2 && *(v5 + 8) > *(v5 + 18))
          {
            v5 = (v5 + 40);
            v4 = v12;
          }
        }

        while (*(v5 + 8) <= v6);
        *a3 = v13;
        *(a3 + 1) = v14;
        a3[8] = v6;
        *(a3 + 9) = v7;
      }
    }
  }

  return result;
}

void std::vector<CI::Perspective::Line>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<CI::Perspective::Line>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *std::vector<CI::Perspective::Line>::__assign_with_size[abi:nn200100]<CI::Perspective::Line*,CI::Perspective::Line*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CI::Perspective::Line>::__vallocate[abi:nn200100](v6, v10);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_19CD88AB0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<LineCostProxy>::reserve(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<IRect>>(a1, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<LineCostProxy>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<IRect>>(a1, v11);
    }

    v12 = 24 * v8;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    v7 = 24 * v8 + 24;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

char *___ZN2CI11PerspectiveL24CI_AUTOPERSPECTIVE_DEBUGEv_block_invoke_0()
{
  result = getenv("CI_AUTOPERSPECTIVE_DEBUG");
  CI::Perspective::CI_AUTOPERSPECTIVE_DEBUG(void)::dump = result != 0;
  return result;
}

double CI::sw_lumaRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32) << 6;
  v9 = *(a2 + (*(v3 + 56) << 6));
  v11 = vmulq_f32(*v7, xmmword_19CF283E0);
  v10 = vaddv_f32(*v11.f32);
  v11.f32[0] = ((v11.f32[2] + v10) - *(a2 + v8)) / (v9 - *(a2 + v8));
  if (v11.f32[0] <= 1.0)
  {
    v12 = ((v11.f32[2] + v10) - *(a2 + v8)) / (v9 - *(a2 + v8));
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v11.f32[0] < 0.0;
  v14 = 0;
  if (!v13)
  {
    *v14.i32 = v12;
  }

  *v14.i32 = (*v14.i32 * *v14.i32) * ((*v14.i32 * -2.0) + 3.0);
  *&result = vdupq_lane_s32(v14, 0).u64[0];
  return result;
}

double CI::sw_gradientNormalizeV2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  *&result = vmulq_n_f32(vsubq_f32(*v7, vdupq_lane_s32(*v11, 0)), 1.0 / (COERCE_FLOAT(HIDWORD(*v11)) - COERCE_FLOAT(*v11->i8))).u64[0];
  return result;
}

double CI::sw_gradientThresholdV2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *v7;
  v9 = sqrtf(vaddv_f32(*&vmulq_f32(v8, v8)));
  v10 = (v9 - *(a2 + (*(v3 + 32) << 6))) / (*(a2 + (*(v3 + 56) << 6)) - *(a2 + (*(v3 + 32) << 6)));
  v11 = 1.0;
  if (v10 <= 1.0)
  {
    v11 = (v9 - *(a2 + (*(v3 + 32) << 6))) / (*(a2 + (*(v3 + 56) << 6)) - *(a2 + (*(v3 + 32) << 6)));
  }

  v12 = v10 < 0.0;
  v13 = 0.0;
  if (!v12)
  {
    v13 = v11;
  }

  *&result = vmulq_n_f32(v8, (v13 * v13) * ((v13 * -2.0) + 3.0)).u64[0];
  return result;
}

uint64_t _ZN2CI11Perspective9NMSimplexIDv3_fEC2ENS0_8NMParamsEU13block_pointerFfRKS2_EPS5_m(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, unint64_t a5)
{
  v5 = a5;
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v11 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  _ZNSt3__16vectorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexENS_9allocatorIS6_EEE7reserveEm((a1 + 40), a5);
  for (; v5; --v5)
  {
    v54 = *a4;
    v12 = (*(a3 + 16))(a3, a4);
    v14 = *(a1 + 48);
    v13 = *(a1 + 56);
    if (v14 >= v13)
    {
      v16 = (v14 - *v11) >> 5;
      v17 = v16 + 1;
      if ((v16 + 1) >> 59)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v18 = v13 - *v11;
      if (v18 >> 4 > v17)
      {
        v17 = v18 >> 4;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(v11, v19);
      }

      v20 = 32 * v16;
      *v20 = v54;
      *(v20 + 16) = v12;
      v15 = 32 * v16 + 32;
      v21 = *(a1 + 40);
      v22 = *(a1 + 48) - v21;
      v23 = 32 * v16 - v22;
      memcpy((v20 - v22), v21, v22);
      v24 = *(a1 + 40);
      *(a1 + 40) = v23;
      *(a1 + 48) = v15;
      *(a1 + 56) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      *v14 = v54;
      *(v14 + 16) = v12;
      v15 = v14 + 32;
    }

    *(a1 + 48) = v15;
    ++a4;
  }

  for (*(a1 + 64) = 1; !_ZNK2CI11Perspective9NMSimplexIDv3_fE15shouldTerminateEv(a1); ++*(a1 + 64))
  {
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    v29 = 126 - 2 * __clz((v28 - v27) >> 5);
    if (v28 == v27)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }

    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(v27, v28, &v61, v30, 1, v25);
    v33 = *(a1 + 40);
    v32 = *(a1 + 48);
    v34 = v32 - v33;
    v35 = 0uLL;
    if ((v32 - v33) >> 5 != 1)
    {
      v36 = *(a1 + 40);
      v37 = ((v32 - v33) >> 5) - 1;
      do
      {
        v38 = *v36;
        v36 += 2;
        v31.i32[1] = v38.i32[1];
        v35 = vaddq_f32(v35, v38);
        --v37;
      }

      while (v37);
    }

    *v31.i32 = (((v32 - v33) >> 5) - 1);
    v61.i32[2] = 0;
    v61.i64[0] = 0;
    v55 = vdivq_f32(v35, vdupq_lane_s32(v31, 0));
    v52 = vmlaq_n_f32(v55, vsubq_f32(v55, *(v32 - 32)), *a1);
    v61 = v52;
    v39.i32[0] = (*(a3 + 16))(a3, &v61);
    v40 = (v33 + v34);
    v41 = v33[1].f32[0];
    if (v41 <= v39.f32[0] && v39.f32[0] < *v40[-3].i32)
    {
      v40[-2] = v52;
      v40[-1].i32[0] = v39.i32[0];
    }

    else
    {
      if (v39.f32[0] < v41)
      {
        v51 = v39;
        v56 = vmlaq_n_f32(v55, vsubq_f32(v61, v55), *(a1 + 4));
        v60 = v56;
        *v43.i64 = (*(a3 + 16))(a3, &v60);
        v44 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v51, v43), 0), v56, v52);
        v40[-1].i32[3] = 0;
        *(v40[-1].i64 + 4) = 0;
        if (v43.f32[0] >= v51.f32[0])
        {
          v43.f32[0] = v51.f32[0];
        }

        v40[-2] = v44;
        v40[-1].i32[0] = v43.i32[0];
        continue;
      }

      v60.i32[2] = 0;
      v60.i64[0] = 0;
      v57 = vmlaq_n_f32(v55, vsubq_f32(*(*(a1 + 48) - 32), v55), *(a1 + 8));
      v60 = v57;
      v45 = (*(a3 + 16))(a3, &v60);
      if (v45 >= *v40[-1].i32)
      {
        v46 = *(a1 + 40);
        if ((*(a1 + 48) - v46) >= 0x21)
        {
          v47 = 0;
          v53 = *v33;
          v48 = 1;
          do
          {
            v59.i32[2] = 0;
            v59.i64[0] = 0;
            v58 = vmlaq_n_f32(v53, vsubq_f32(*(v46 + v47 + 32), v53), *(a2 + 12));
            v59 = v58;
            v49 = (*(a3 + 16))(a3, &v59);
            v50 = (*(a1 + 40) + v47);
            v50[2] = v58;
            v50[3].f32[0] = v49;
            ++v48;
            v46 = *(a1 + 40);
            v47 += 32;
          }

          while (v48 < (*(a1 + 48) - v46) >> 5);
        }

        continue;
      }

      v40[-2] = v57;
      *v40[-1].i32 = v45;
    }

    *(v40[-1].i64 + 4) = 0;
    v40[-1].i32[3] = 0;
  }

  return a1;
}

void sub_19CD8B250(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexENS_9allocatorIS6_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(a1, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

BOOL _ZNK2CI11Perspective9NMSimplexIDv3_fE15shouldTerminateEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && *(a1 + 64) >= v1)
  {
    return 1;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    v6 = ((v3 - v2) >> 5);
    v7 = 0.0;
  }

  else
  {
    v4 = 0.0;
    v5 = *(a1 + 40);
    do
    {
      v4 = v4 + *(v5 + 16);
      v5 += 32;
    }

    while (v5 != v3);
    v6 = ((v3 - v2) >> 5);
    v7 = 0.0;
    if (v3 != v2)
    {
      v8 = v4 / v6;
      do
      {
        v7 = v7 + ((*(v2 + 16) - v8) * (*(v2 + 16) - v8));
        v2 += 32;
      }

      while (v2 != v3);
    }
  }

  return sqrtf(v7 / v6) < *(a1 + 16);
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv3_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

__n128 _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(unint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v9 = a2 - 2;
  v10 = a2 - 4;
  v11 = a2 - 6;
  n128_u64 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = n128_u64;
    v14 = v13;
    v15 = (a2 - n128_u64) >> 5;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[0];
        if (result.n128_f32[0] < *(n128_u64 + 16))
        {
          v107 = *n128_u64;
          v135 = *(n128_u64 + 16);
          v64 = a2[-1];
          *n128_u64 = a2[-2];
          *(n128_u64 + 16) = v64;
          a2[-2] = v107;
          result = v135;
          a2[-1] = v135;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v65 = *(n128_u64 + 48);
      v66 = *(n128_u64 + 80);
      if (v65 >= *(n128_u64 + 16))
      {
        if (v66 < v65)
        {
          v70 = *(n128_u64 + 32);
          result = *(n128_u64 + 48);
          v71 = *(n128_u64 + 80);
          *(n128_u64 + 32) = *(n128_u64 + 64);
          *(n128_u64 + 48) = v71;
          *(n128_u64 + 64) = v70;
          *(n128_u64 + 80) = result;
          if (*(n128_u64 + 48) < *(n128_u64 + 16))
          {
            v109 = *n128_u64;
            v137 = *(n128_u64 + 16);
            v72 = *(n128_u64 + 48);
            *n128_u64 = *(n128_u64 + 32);
            *(n128_u64 + 16) = v72;
            result = v109;
            *(n128_u64 + 32) = v109;
            *(n128_u64 + 48) = v137;
          }
        }
      }

      else if (v66 >= v65)
      {
        v111 = *n128_u64;
        v139 = *(n128_u64 + 16);
        v76 = *(n128_u64 + 48);
        *n128_u64 = *(n128_u64 + 32);
        *(n128_u64 + 16) = v76;
        *(n128_u64 + 32) = v111;
        *(n128_u64 + 48) = v139;
        if (v66 < *(n128_u64 + 48))
        {
          v77 = *(n128_u64 + 32);
          result = *(n128_u64 + 48);
          v78 = *(n128_u64 + 80);
          *(n128_u64 + 32) = *(n128_u64 + 64);
          *(n128_u64 + 48) = v78;
          *(n128_u64 + 64) = v77;
          *(n128_u64 + 80) = result;
        }
      }

      else
      {
        v108 = *n128_u64;
        v136 = *(n128_u64 + 16);
        v67 = *(n128_u64 + 80);
        *n128_u64 = *(n128_u64 + 64);
        *(n128_u64 + 16) = v67;
        result = v108;
        *(n128_u64 + 64) = v108;
        *(n128_u64 + 80) = v136;
      }

      result.n128_u32[0] = a2[-1].n128_u32[0];
      if (result.n128_f32[0] < *(n128_u64 + 80))
      {
        v79 = *(n128_u64 + 64);
        result = *(n128_u64 + 80);
        v80 = a2[-1];
        *(n128_u64 + 64) = *v9;
        *(n128_u64 + 80) = v80;
        *v9 = v79;
        a2[-1] = result;
        result.n128_u32[0] = *(n128_u64 + 80);
        if (result.n128_f32[0] < *(n128_u64 + 48))
        {
          v81 = *(n128_u64 + 32);
          result = *(n128_u64 + 48);
          v82 = *(n128_u64 + 80);
          *(n128_u64 + 32) = *(n128_u64 + 64);
          *(n128_u64 + 48) = v82;
          *(n128_u64 + 64) = v81;
          *(n128_u64 + 80) = result;
LABEL_103:
          result.n128_u32[0] = *(n128_u64 + 48);
          if (result.n128_f32[0] < *(n128_u64 + 16))
          {
            v112 = *n128_u64;
            v140 = *(n128_u64 + 16);
            v83 = *(n128_u64 + 48);
            *n128_u64 = *(n128_u64 + 32);
            *(n128_u64 + 16) = v83;
            result = v112;
            *(n128_u64 + 32) = v112;
            *(n128_u64 + 48) = v140;
          }

          return result;
        }
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(n128_u64, (n128_u64 + 32), (n128_u64 + 64), (n128_u64 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        _ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(n128_u64, a2);
      }

      else
      {

        _ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(n128_u64, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (n128_u64 != a2)
      {

        _ZNSt3__119__partial_sort_implB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_SC_EET1_SD_SD_T2_OT0_(n128_u64, a2, a2, a3);
      }

      return result;
    }

    v16 = n128_u64 + 32 * (v15 >> 1);
    v17 = a2[-1].n128_f32[0];
    if (v15 >= 0x81)
    {
      v18 = *(v16 + 16);
      if (v18 >= *(n128_u64 + 16))
      {
        if (v17 < v18)
        {
          v87 = *v16;
          v115 = *(v16 + 16);
          v22 = a2[-1];
          *v16 = *v9;
          *(v16 + 16) = v22;
          *v9 = v87;
          a2[-1] = v115;
          if (*(v16 + 16) < *(n128_u64 + 16))
          {
            v88 = *n128_u64;
            v116 = *(n128_u64 + 16);
            v23 = *(v16 + 16);
            *n128_u64 = *v16;
            *(n128_u64 + 16) = v23;
            *v16 = v88;
            *(v16 + 16) = v116;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v85 = *n128_u64;
          v113 = *(n128_u64 + 16);
          v19 = a2[-1];
          *n128_u64 = *v9;
          *(n128_u64 + 16) = v19;
          goto LABEL_27;
        }

        v91 = *n128_u64;
        v119 = *(n128_u64 + 16);
        v26 = *(v16 + 16);
        *n128_u64 = *v16;
        *(n128_u64 + 16) = v26;
        *v16 = v91;
        *(v16 + 16) = v119;
        if (a2[-1].n128_f32[0] < *(v16 + 16))
        {
          v85 = *v16;
          v113 = *(v16 + 16);
          v27 = a2[-1];
          *v16 = *v9;
          *(v16 + 16) = v27;
LABEL_27:
          *v9 = v85;
          a2[-1] = v113;
        }
      }

      v28 = (v16 - 32);
      v29 = *(v16 - 16);
      v30 = a2[-3].n128_f32[0];
      if (v29 >= *(n128_u64 + 48))
      {
        if (v30 < v29)
        {
          v92 = *v28;
          v120 = *(v16 - 16);
          v34 = a2[-3];
          *v28 = *v10;
          *(v16 - 16) = v34;
          *v10 = v92;
          a2[-3] = v120;
          if (*(v16 - 16) < *(n128_u64 + 48))
          {
            v93 = *(n128_u64 + 32);
            v121 = *(n128_u64 + 48);
            v35 = *(v16 - 16);
            *(n128_u64 + 32) = *v28;
            *(n128_u64 + 48) = v35;
            *v28 = v93;
            *(v16 - 16) = v121;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v32 = *(n128_u64 + 32);
          v31 = *(n128_u64 + 48);
          v33 = a2[-3];
          *(n128_u64 + 32) = *v10;
          *(n128_u64 + 48) = v33;
          *v10 = v32;
          goto LABEL_39;
        }

        v95 = *(n128_u64 + 32);
        v123 = *(n128_u64 + 48);
        v38 = *(v16 - 16);
        *(n128_u64 + 32) = *v28;
        *(n128_u64 + 48) = v38;
        *v28 = v95;
        *(v16 - 16) = v123;
        if (a2[-3].n128_f32[0] < *(v16 - 16))
        {
          v96 = *v28;
          v124 = *(v16 - 16);
          v39 = a2[-3];
          *v28 = *v10;
          *(v16 - 16) = v39;
          *v10 = v96;
          v31 = v124;
LABEL_39:
          a2[-3] = v31;
        }
      }

      v40 = (v16 + 32);
      v41 = *(v16 + 48);
      v42 = a2[-5].n128_f32[0];
      if (v41 >= *(n128_u64 + 80))
      {
        if (v42 < v41)
        {
          v97 = *v40;
          v125 = *(v16 + 48);
          v46 = a2[-5];
          *v40 = *v11;
          *(v16 + 48) = v46;
          *v11 = v97;
          a2[-5] = v125;
          if (*(v16 + 48) < *(n128_u64 + 80))
          {
            v98 = *(n128_u64 + 64);
            v126 = *(n128_u64 + 80);
            v47 = *(v16 + 48);
            *(n128_u64 + 64) = *v40;
            *(n128_u64 + 80) = v47;
            *v40 = v98;
            *(v16 + 48) = v126;
          }
        }
      }

      else
      {
        if (v42 < v41)
        {
          v44 = *(n128_u64 + 64);
          v43 = *(n128_u64 + 80);
          v45 = a2[-5];
          *(n128_u64 + 64) = *v11;
          *(n128_u64 + 80) = v45;
          *v11 = v44;
          goto LABEL_48;
        }

        v99 = *(n128_u64 + 64);
        v127 = *(n128_u64 + 80);
        v48 = *(v16 + 48);
        *(n128_u64 + 64) = *v40;
        *(n128_u64 + 80) = v48;
        *v40 = v99;
        *(v16 + 48) = v127;
        if (a2[-5].n128_f32[0] < *(v16 + 48))
        {
          v100 = *v40;
          v128 = *(v16 + 48);
          v49 = a2[-5];
          *v40 = *v11;
          *(v16 + 48) = v49;
          *v11 = v100;
          v43 = v128;
LABEL_48:
          a2[-5] = v43;
        }
      }

      v50 = *(v16 + 16);
      v51 = *(v16 + 48);
      if (v50 >= *(v16 - 16))
      {
        if (v51 < v50)
        {
          v102 = *v16;
          v130 = *(v16 + 16);
          v53 = *(v16 + 48);
          *v16 = *v40;
          *(v16 + 16) = v53;
          *v40 = v102;
          *(v16 + 48) = v130;
          if (*(v16 + 16) < *(v16 - 16))
          {
            v103 = *v28;
            v131 = *(v16 - 16);
            v54 = *(v16 + 16);
            *v28 = *v16;
            *(v16 - 16) = v54;
            *v16 = v103;
            *(v16 + 16) = v131;
          }
        }
      }

      else
      {
        if (v51 < v50)
        {
          v101 = *v28;
          v129 = *(v16 - 16);
          v52 = *(v16 + 48);
          *v28 = *v40;
          *(v16 - 16) = v52;
          goto LABEL_57;
        }

        v104 = *v28;
        v132 = *(v16 - 16);
        v55 = *(v16 + 16);
        *v28 = *v16;
        *(v16 - 16) = v55;
        *v16 = v104;
        *(v16 + 16) = v132;
        if (*(v16 + 48) < *(v16 + 16))
        {
          v101 = *v16;
          v129 = *(v16 + 16);
          v56 = *(v16 + 48);
          *v16 = *v40;
          *(v16 + 16) = v56;
LABEL_57:
          *v40 = v101;
          *(v16 + 48) = v129;
        }
      }

      v105 = *n128_u64;
      v133 = *(n128_u64 + 16);
      v57 = *(v16 + 16);
      *n128_u64 = *v16;
      *(n128_u64 + 16) = v57;
      *v16 = v105;
      *(v16 + 16) = v133;
      goto LABEL_59;
    }

    v20 = *(n128_u64 + 16);
    if (v20 >= *(v16 + 16))
    {
      if (v17 < v20)
      {
        v89 = *n128_u64;
        v117 = *(n128_u64 + 16);
        v24 = a2[-1];
        *n128_u64 = *v9;
        *(n128_u64 + 16) = v24;
        *v9 = v89;
        a2[-1] = v117;
        if (*(n128_u64 + 16) < *(v16 + 16))
        {
          v90 = *v16;
          v118 = *(v16 + 16);
          v25 = *(n128_u64 + 16);
          *v16 = *n128_u64;
          *(v16 + 16) = v25;
          *n128_u64 = v90;
          *(n128_u64 + 16) = v118;
        }
      }
    }

    else
    {
      if (v17 < v20)
      {
        v86 = *v16;
        v114 = *(v16 + 16);
        v21 = a2[-1];
        *v16 = *v9;
        *(v16 + 16) = v21;
LABEL_36:
        *v9 = v86;
        a2[-1] = v114;
        goto LABEL_59;
      }

      v94 = *v16;
      v122 = *(v16 + 16);
      v36 = *(n128_u64 + 16);
      *v16 = *n128_u64;
      *(v16 + 16) = v36;
      *n128_u64 = v94;
      *(n128_u64 + 16) = v122;
      if (a2[-1].n128_f32[0] < *(n128_u64 + 16))
      {
        v86 = *n128_u64;
        v114 = *(n128_u64 + 16);
        v37 = a2[-1];
        *n128_u64 = *v9;
        *(n128_u64 + 16) = v37;
        goto LABEL_36;
      }
    }

LABEL_59:
    if ((a5 & 1) == 0 && *(n128_u64 - 16) >= *(n128_u64 + 16))
    {
      n128_u64 = _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv3_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EET0_SD_SD_T1_(n128_u64, a2);
      goto LABEL_66;
    }

    v58 = _ZNSt3__132__partition_with_equals_on_rightB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv3_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EENS_4pairIT0_bEESE_SE_T1_(n128_u64, a2);
    if ((v59 & 1) == 0)
    {
      goto LABEL_64;
    }

    v60 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(n128_u64, v58, result);
    n128_u64 = v58[2].n128_u64;
    if (_ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(v58 + 2, a2, v61))
    {
      a4 = -v14;
      a2 = v58;
      if (v60)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v60)
    {
LABEL_64:
      result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(a1, v58, a3, -v14, a5 & 1, result);
      n128_u64 = v58[2].n128_u64;
LABEL_66:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u32[0] = *(n128_u64 + 48);
  v62 = a2[-1].n128_f32[0];
  if (result.n128_f32[0] >= *(n128_u64 + 16))
  {
    if (v62 >= result.n128_f32[0])
    {
      return result;
    }

    v68 = *(n128_u64 + 32);
    result = *(n128_u64 + 48);
    v69 = a2[-1];
    *(n128_u64 + 32) = *v9;
    *(n128_u64 + 48) = v69;
    *v9 = v68;
    a2[-1] = result;
    goto LABEL_103;
  }

  if (v62 >= result.n128_f32[0])
  {
    v110 = *n128_u64;
    v138 = *(n128_u64 + 16);
    v73 = *(n128_u64 + 48);
    *n128_u64 = *(n128_u64 + 32);
    *(n128_u64 + 16) = v73;
    result = v110;
    *(n128_u64 + 32) = v110;
    *(n128_u64 + 48) = v138;
    result.n128_u32[0] = a2[-1].n128_u32[0];
    if (result.n128_f32[0] < *(n128_u64 + 48))
    {
      v74 = *(n128_u64 + 32);
      result = *(n128_u64 + 48);
      v75 = a2[-1];
      *(n128_u64 + 32) = *v9;
      *(n128_u64 + 48) = v75;
      *v9 = v74;
      a2[-1] = result;
    }
  }

  else
  {
    v106 = *n128_u64;
    v134 = *(n128_u64 + 16);
    v63 = a2[-1];
    *n128_u64 = *v9;
    *(n128_u64 + 16) = v63;
    *v9 = v106;
    result = v134;
    a2[-1] = v134;
  }

  return result;
}

__n128 _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2[1].n128_f32[0];
  v7 = a3[1].n128_f32[0];
  if (v6 >= a1[1].n128_f32[0])
  {
    if (v7 < v6)
    {
      v10 = *a2;
      result = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      *a3 = v10;
      a3[1] = result;
      if (a2[1].n128_f32[0] < a1[1].n128_f32[0])
      {
        v12 = *a1;
        result = a1[1];
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;
        *a2 = v12;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      result = a1[1];
      v9 = a3[1];
      *a1 = *a3;
      a1[1] = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = a1[1];
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    *a2 = v14;
    a2[1] = result;
    if (a3[1].n128_f32[0] < a2[1].n128_f32[0])
    {
      v8 = *a2;
      result = a2[1];
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4[1].n128_f32[0] < a3[1].n128_f32[0])
  {
    v17 = *a3;
    result = a3[1];
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    *a4 = v17;
    a4[1] = result;
    if (a3[1].n128_f32[0] < a2[1].n128_f32[0])
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      if (a2[1].n128_f32[0] < a1[1].n128_f32[0])
      {
        v21 = *a1;
        result = a1[1];
        v22 = a2[1];
        *a1 = *a2;
        a1[1] = v22;
        *a2 = v21;
        a2[1] = result;
      }
    }
  }

  result.n128_u32[0] = a5[1].n128_u32[0];
  if (result.n128_f32[0] < a4[1].n128_f32[0])
  {
    v23 = *a4;
    result = a4[1];
    v24 = a5[1];
    *a4 = *a5;
    a4[1] = v24;
    *a5 = v23;
    a5[1] = result;
    result.n128_u32[0] = a4[1].n128_u32[0];
    if (result.n128_f32[0] < a3[1].n128_f32[0])
    {
      v25 = *a3;
      result = a3[1];
      v26 = a4[1];
      *a3 = *a4;
      a3[1] = v26;
      *a4 = v25;
      a4[1] = result;
      result.n128_u32[0] = a3[1].n128_u32[0];
      if (result.n128_f32[0] < a2[1].n128_f32[0])
      {
        v27 = *a2;
        result = a2[1];
        v28 = a3[1];
        *a2 = *a3;
        a2[1] = v28;
        *a3 = v27;
        a3[1] = result;
        result.n128_u32[0] = a2[1].n128_u32[0];
        if (result.n128_f32[0] < a1[1].n128_f32[0])
        {
          v29 = *a1;
          result = a1[1];
          v30 = a2[1];
          *a1 = *a2;
          a1[1] = v30;
          *a2 = v29;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

_OWORD *_ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(_OWORD *result, _OWORD *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = *(v4 + 12);
        if (v6 < *(v4 + 4))
        {
          v11 = *v2;
          v12 = *(v4 + 52);
          v13 = *(v4 + 15);
          v7 = v3;
          while (1)
          {
            v8 = result + v7;
            v9 = *(result + v7 + 16);
            *(v8 + 2) = *(result + v7);
            *(v8 + 3) = v9;
            if (!v7)
            {
              break;
            }

            v7 -= 32;
            if (v6 >= *(v8 - 4))
            {
              v10 = (result + v7 + 32);
              goto LABEL_10;
            }
          }

          v10 = result;
LABEL_10:
          *v10 = v11;
          *(v10 + 4) = v6;
          *(v10 + 20) = v12;
          *(v10 + 7) = v13;
        }

        v2 = v5 + 2;
        v3 += 32;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

__int128 *_ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(__int128 *result, __int128 *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = *(result + 12);
      if (v4 < *(result + 4))
      {
        v7 = *v2;
        v8 = *(result + 52);
        v9 = *(result + 15);
        do
        {
          v5 = *(v2 - 1);
          *v2 = *(v2 - 2);
          v2[1] = v5;
          v6 = *(v2 - 12);
          v2 -= 2;
        }

        while (v4 < v6);
        *v2 = v7;
        *(v2 + 4) = v4;
        *(v2 + 20) = v8;
        *(v2 + 7) = v9;
      }

      v2 = v3 + 2;
      result = v3;
    }
  }

  return result;
}

unint64_t _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv3_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EET0_SD_SD_T1_(__int128 *a1, float *a2)
{
  v16 = *a1;
  v2 = *(a1 + 4);
  v19 = *(a1 + 20);
  v20 = *(a1 + 7);
  if (v2 >= *(a2 - 4))
  {
    v6 = a1 + 2;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = *(v6 + 4);
      v6 += 2;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 2);
      v5 = *(v3 + 12);
      v3 += 2;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 8;
      v9 = *(a2 - 4);
      a2 -= 8;
    }

    while (v2 < v9);
  }

  while (v4 < v8)
  {
    v17 = *v4;
    v18 = *(v4 + 16);
    v10 = *(v8 + 1);
    *v4 = *v8;
    *(v4 + 16) = v10;
    *v8 = v17;
    *(v8 + 1) = v18;
    do
    {
      v11 = *(v4 + 48);
      v4 += 32;
    }

    while (v2 >= v11);
    do
    {
      v12 = *(v8 - 4);
      v8 -= 8;
    }

    while (v2 < v12);
  }

  v13 = (v4 - 32);
  if ((v4 - 32) != a1)
  {
    v14 = *(v4 - 16);
    *a1 = *v13;
    a1[1] = v14;
  }

  *v13 = v16;
  *(v4 - 16) = v2;
  *(v4 - 4) = v20;
  *(v4 - 12) = v19;
  return v4;
}

__int128 *_ZNSt3__132__partition_with_equals_on_rightB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv3_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EENS_4pairIT0_bEESE_SE_T1_(__int128 *a1, float *a2)
{
  v2 = 0;
  v18 = *a1;
  v3 = *(a1 + 4);
  v20 = *(a1 + 20);
  v21 = *(a1 + 7);
  do
  {
    v4 = *&a1[v2 + 3];
    v2 += 2;
  }

  while (v4 < v3);
  v5 = &a1[v2];
  if (v2 == 2)
  {
    while (v5 < a2)
    {
      v6 = a2 - 8;
      v8 = *(a2 - 4);
      a2 -= 8;
      if (v8 < v3)
      {
        goto LABEL_9;
      }
    }

    v6 = a2;
  }

  else
  {
    do
    {
      v6 = a2 - 8;
      v7 = *(a2 - 4);
      a2 -= 8;
    }

    while (v7 >= v3);
  }

LABEL_9:
  v9 = &a1[v2];
  if (v5 < v6)
  {
    v10 = v6;
    do
    {
      v11 = *v9;
      v19 = v9[1];
      v12 = v10[1];
      *v9 = *v10;
      v9[1] = v12;
      *v10 = v11;
      v10[1] = v19;
      do
      {
        v13 = *(v9 + 12);
        v9 += 2;
      }

      while (v13 < v3);
      do
      {
        v14 = *(v10 - 4);
        v10 -= 2;
      }

      while (v14 >= v3);
    }

    while (v9 < v10);
  }

  v15 = v9 - 2;
  if (v9 - 2 != a1)
  {
    v16 = *(v9 - 1);
    *a1 = *v15;
    a1[1] = v16;
  }

  *v15 = v18;
  *(v9 - 4) = v3;
  *(v9 - 1) = v21;
  *(v9 - 12) = v20;
  return v9 - 2;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = a2 - 2;
      v8 = a1[3].n128_f32[0];
      v9 = a2[-1].n128_f32[0];
      if (v8 < a1[1].n128_f32[0])
      {
        if (v9 >= v8)
        {
          v42 = *a1;
          v41 = a1[1];
          v43 = a1[3];
          *a1 = a1[2];
          a1[1] = v43;
          a1[2] = v42;
          a1[3] = v41;
          if (a2[-1].n128_f32[0] >= a1[3].n128_f32[0])
          {
            return 1;
          }

          v11 = a1[2];
          v10 = a1[3];
          v44 = a2[-1];
          a1[2] = *v7;
          a1[3] = v44;
        }

        else
        {
          v11 = *a1;
          v10 = a1[1];
          v12 = a2[-1];
          *a1 = *v7;
          a1[1] = v12;
        }

        *v7 = v11;
        a2[-1] = v10;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v27 = a1[2];
      v26 = a1[3];
      v28 = a2[-1];
      a1[2] = *v7;
      a1[3] = v28;
      *v7 = v27;
      a2[-1] = v26;
LABEL_50:
      if (a1[3].n128_f32[0] < a1[1].n128_f32[0])
      {
        v69 = *a1;
        v68 = a1[1];
        v70 = a1[3];
        *a1 = a1[2];
        a1[1] = v70;
        a1[2] = v69;
        a1[3] = v68;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
    }

    v20 = a1[3].n128_f32[0];
    v21 = a1[1].n128_f32[0];
    v22 = a1[5].n128_f32[0];
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v36 = a1[2];
        v35 = a1[3];
        v37 = a1[5];
        a1[2] = a1[4];
        a1[3] = v37;
        a1[4] = v36;
        a1[5] = v35;
        if (a1[3].n128_f32[0] < v21)
        {
          v39 = *a1;
          v38 = a1[1];
          v40 = a1[3];
          *a1 = a1[2];
          a1[1] = v40;
          a1[2] = v39;
          a1[3] = v38;
        }
      }

      goto LABEL_47;
    }

    if (v22 >= v20)
    {
      v58 = *a1;
      v57 = a1[1];
      v59 = a1[3];
      *a1 = a1[2];
      a1[1] = v59;
      a1[2] = v58;
      a1[3] = v57;
      if (v22 >= a1[3].n128_f32[0])
      {
        goto LABEL_47;
      }

      v24 = a1[2];
      v23 = a1[3];
      v60 = a1[5];
      a1[2] = a1[4];
      a1[3] = v60;
    }

    else
    {
      v24 = *a1;
      v23 = a1[1];
      v25 = a1[5];
      *a1 = a1[4];
      a1[1] = v25;
    }

    a1[4] = v24;
    a1[5] = v23;
LABEL_47:
    if (a2[-1].n128_f32[0] >= a1[5].n128_f32[0])
    {
      return 1;
    }

    v61 = a2 - 2;
    v63 = a1[4];
    v62 = a1[5];
    v64 = a2[-1];
    a1[4] = a2[-2];
    a1[5] = v64;
    *v61 = v63;
    v61[1] = v62;
    if (a1[5].n128_f32[0] >= a1[3].n128_f32[0])
    {
      return 1;
    }

    v66 = a1[2];
    v65 = a1[3];
    v67 = a1[5];
    a1[2] = a1[4];
    a1[3] = v67;
    a1[4] = v66;
    a1[5] = v65;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[0] < a1[1].n128_f32[0])
    {
      v5 = *a1;
      v4 = a1[1];
      v6 = a2[-1];
      *a1 = a2[-2];
      a1[1] = v6;
      a2[-2] = v5;
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 4;
  v14 = a1[3].n128_f32[0];
  v15 = a1[1].n128_f32[0];
  v16 = a1[5].n128_f32[0];
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v30 = a1[2];
      v29 = a1[3];
      v31 = a1[5];
      a1[2] = *v13;
      a1[3] = v31;
      *v13 = v30;
      a1[5] = v29;
      if (a1[3].n128_f32[0] < v15)
      {
        v33 = *a1;
        v32 = a1[1];
        v34 = a1[3];
        *a1 = a1[2];
        a1[1] = v34;
        a1[2] = v33;
        a1[3] = v32;
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v46 = *a1;
      v45 = a1[1];
      v47 = a1[3];
      *a1 = a1[2];
      a1[1] = v47;
      a1[2] = v46;
      a1[3] = v45;
      if (v16 >= a1[3].n128_f32[0])
      {
        goto LABEL_33;
      }

      v18 = a1[2];
      v17 = a1[3];
      v48 = a1[5];
      a1[2] = *v13;
      a1[3] = v48;
    }

    else
    {
      v18 = *a1;
      v17 = a1[1];
      v19 = a1[5];
      *a1 = *v13;
      a1[1] = v19;
    }

    *v13 = v18;
    a1[5] = v17;
  }

LABEL_33:
  v49 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = v49[1].n128_f32[0];
    if (v52 < v13[1].n128_f32[0])
    {
      v72 = *v49;
      v73 = *(v49[1].n128_u64 + 4);
      v74 = v49[1].n128_u32[3];
      v53 = v50;
      while (1)
      {
        v54 = (a1 + v53);
        v55 = *(a1 + v53 + 80);
        v54[6] = *(a1 + v53 + 64);
        v54[7] = v55;
        if (v53 == -64)
        {
          break;
        }

        v53 -= 32;
        if (v52 >= v54[3].n128_f32[0])
        {
          v56 = (a1 + v53 + 96);
          goto LABEL_41;
        }
      }

      v56 = a1;
LABEL_41:
      *v56 = v72;
      v56[1].n128_f32[0] = v52;
      *(v56[1].n128_u64 + 4) = v73;
      v56[1].n128_u32[3] = v74;
      if (++v51 == 8)
      {
        return &v49[2] == a2;
      }
    }

    v13 = v49;
    v50 += 32;
    v49 += 2;
    if (v49 == a2)
    {
      return 1;
    }
  }
}

float *_ZNSt3__119__partial_sort_implB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_SC_EET1_SD_SD_T2_OT0_(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[8 * v9];
      do
      {
        _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(a1, a4, v8, v11);
        v11 -= 8;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[4] < a1[4])
        {
          v14 = *v12;
          v13 = *(v12 + 1);
          v15 = *(a1 + 1);
          *v12 = *a1;
          *(v12 + 1) = v15;
          *a1 = v14;
          *(a1 + 1) = v13;
          _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(a1, a4, v8, a1);
        }

        v12 += 8;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v16 = 0;
        v28 = *a1;
        v29 = *(a1 + 1);
        v17 = a1;
        do
        {
          v18 = &v17[8 * v16];
          v19 = v18 + 8;
          v20 = (2 * v16) | 1;
          v16 = 2 * v16 + 2;
          if (v16 >= v8)
          {
            v16 = v20;
          }

          else
          {
            v21 = v18[12];
            v22 = v18[20];
            v23 = v18 + 16;
            if (v21 >= v22)
            {
              v16 = v20;
            }

            else
            {
              v19 = v23;
            }
          }

          v24 = *(v19 + 1);
          *v17 = *v19;
          *(v17 + 1) = v24;
          v17 = v19;
        }

        while (v16 <= ((v8 - 2) >> 1));
        v6 -= 8;
        if (v19 == v6)
        {
          *v19 = v28;
          *(v19 + 1) = v29;
        }

        else
        {
          v25 = *(v6 + 1);
          *v19 = *v6;
          *(v19 + 1) = v25;
          *v6 = v28;
          *(v6 + 1) = v29;
          _ZNSt3__19__sift_upB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE(a1, (v19 + 8), a4, ((v19 + 8) - a1) >> 5);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 5)
    {
      v6 = v4 >> 4;
      v7 = (v4 >> 4) + 1;
      v8 = (result + 32 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[4] < v8[12])
      {
        v8 += 8;
        v7 = v9;
      }

      v10 = a4[4];
      if (v8[4] >= v10)
      {
        v15 = *a4;
        v16 = *(a4 + 5);
        v17 = *(a4 + 7);
        do
        {
          v11 = a4;
          a4 = v8;
          v12 = *(v8 + 1);
          *v11 = *v8;
          *(v11 + 1) = v12;
          if (v5 < v7)
          {
            break;
          }

          v13 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 32 * v7);
          v14 = v13 + 2;
          if (v14 < a3 && v8[4] < v8[12])
          {
            v8 += 8;
            v7 = v14;
          }
        }

        while (v8[4] >= v10);
        *a4 = v15;
        a4[4] = v10;
        *(a4 + 5) = v16;
        *(a4 + 7) = v17;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__19__sift_upB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv3_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = (result + 32 * v4);
    v6 = *(a2 - 16);
    if (v5[4] < v6)
    {
      v7 = (a2 - 32);
      v10 = *(a2 - 32);
      v11 = *(a2 - 12);
      v12 = *(a2 - 4);
      do
      {
        v8 = v7;
        v7 = v5;
        v9 = *(v5 + 1);
        *v8 = *v5;
        *(v8 + 1) = v9;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = (result + 32 * v4);
      }

      while (v5[4] < v6);
      *v7 = v10;
      v7[4] = v6;
      *(v7 + 5) = v11;
      *(v7 + 7) = v12;
    }
  }

  return result;
}

uint64_t _ZN2CI11Perspective9NMSimplexIDv2_fEC2ENS0_8NMParamsEU13block_pointerFfRKS2_EPS5_m(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5)
{
  v6 = a5;
  v11 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v11;
  *(a1 + 32) = a3;
  *(a1 + 40) = 0;
  v12 = (a1 + 40);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  _ZNSt3__16vectorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexENS_9allocatorIS6_EEE7reserveEm((a1 + 40), a5);
  for (; v6; --v6)
  {
    v13 = *a4;
    v14 = (*(a3 + 16))(a3, a4);
    v16 = *(a1 + 48);
    v15 = *(a1 + 56);
    if (v16 >= v15)
    {
      v18 = (v16 - *v12) >> 4;
      v19 = v18 + 1;
      if ((v18 + 1) >> 60)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v20 = v15 - *v12;
      if (v20 >> 3 > v19)
      {
        v19 = v20 >> 3;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF0)
      {
        v21 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(v12, v21);
      }

      v22 = 16 * v18;
      *v22 = v13;
      *(v22 + 8) = v14;
      v17 = 16 * v18 + 16;
      v23 = *(a1 + 40);
      v24 = *(a1 + 48) - v23;
      v25 = 16 * v18 - v24;
      memcpy((v22 - v24), v23, v24);
      v26 = *(a1 + 40);
      *(a1 + 40) = v25;
      *(a1 + 48) = v17;
      *(a1 + 56) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v16 = v13;
      *(v16 + 8) = v14;
      v17 = v16 + 16;
    }

    *(a1 + 48) = v17;
    ++a4;
  }

  for (*(a1 + 64) = 1; !_ZNK2CI11Perspective9NMSimplexIDv2_fE15shouldTerminateEv(a1); ++*(a1 + 64))
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 48);
    v31 = 126 - 2 * __clz(v30 - v29);
    if (v30 == v29)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(v29, v30, &v57, v32, 1, v27);
    v35 = *(a1 + 40);
    v34 = *(a1 + 48);
    v36 = v34 - v35;
    v37 = 0;
    if ((v34 - v35) >> 4 != 1)
    {
      v38 = *(a1 + 40);
      v39 = ((v34 - v35) >> 4) - 1;
      do
      {
        v40 = *v38;
        v38 += 2;
        v33.i32[1] = v40.i32[1];
        v37 = vadd_f32(v37, v40);
        --v39;
      }

      while (v39);
    }

    *v33.i32 = (((v34 - v35) >> 4) - 1);
    v41 = vdiv_f32(v37, vdup_lane_s32(v33, 0));
    v57 = 0;
    v42 = vmla_n_f32(v41, vsub_f32(v41, *(v34 - 16)), *a1);
    v57 = v42;
    v5.i32[0] = (*(a3 + 16))(a3, &v57);
    v43 = (v35 + v36);
    v44 = v35[1].f32[0];
    if (v44 <= v5.f32[0] && v5.f32[0] < *v43[-3].i32)
    {
      v43[-2] = v42;
      v43[-1].i32[0] = v5.i32[0];
    }

    else
    {
      if (v5.f32[0] >= v44)
      {
        v56 = 0;
        v48 = vmla_n_f32(v41, vsub_f32(*(*(a1 + 48) - 16), v41), *(a1 + 8));
        v56 = v48;
        *&v47 = (*(a3 + 16))(a3, &v56);
        if (*&v47 >= *v43[-1].i32)
        {
          v49 = *(a1 + 40);
          if ((*(a1 + 48) - v49) >= 0x11)
          {
            v50 = 0;
            v5 = *v35;
            v51 = 1;
            do
            {
              v55 = 0;
              v52 = vmla_n_f32(v5, vsub_f32(*(v49 + v50 + 16), v5), *(a2 + 12));
              v55 = v52;
              v53 = (*(a3 + 16))(a3, &v55);
              v54 = (*(a1 + 40) + v50);
              v54[2] = v52;
              v54[3].f32[0] = v53;
              ++v51;
              v49 = *(a1 + 40);
              v50 += 16;
            }

            while (v51 < (*(a1 + 48) - v49) >> 4);
          }

          continue;
        }

        v43[-2] = v48;
      }

      else
      {
        v46 = vmla_n_f32(v41, vsub_f32(v57, v41), *(a1 + 4));
        v56 = v46;
        v47 = (*(a3 + 16))(a3, &v56);
        v43[-2] = vbsl_s8(vdup_lane_s32(vcgt_f32(v5, *&v47), 0), v46, v42);
        if (*&v47 >= v5.f32[0])
        {
          *&v47 = v5.f32[0];
        }
      }

      v43[-1].i32[0] = LODWORD(v47);
    }

    v43[-1].i32[1] = 0;
  }

  return a1;
}

void sub_19CD8CCF8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexENS_9allocatorIS6_EEE7reserveEm(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(a1, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

BOOL _ZNK2CI11Perspective9NMSimplexIDv2_fE15shouldTerminateEv(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 && *(a1 + 64) >= v1)
  {
    return 1;
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 == v3)
  {
    v6 = ((v3 - v2) >> 4);
    v7 = 0.0;
  }

  else
  {
    v4 = 0.0;
    v5 = *(a1 + 40);
    do
    {
      v4 = v4 + *(v5 + 8);
      v5 += 16;
    }

    while (v5 != v3);
    v6 = ((v3 - v2) >> 4);
    v7 = 0.0;
    if (v3 != v2)
    {
      v8 = v4 / v6;
      do
      {
        v7 = v7 + ((*(v2 + 8) - v8) * (*(v2 + 8) - v8));
        v2 += 16;
      }

      while (v2 != v3);
    }
  }

  return sqrtf(v7 / v6) < *(a1 + 16);
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

__n128 _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 1;
  v38 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        result.n128_u32[0] = a2[-1].n128_u32[2];
        if (result.n128_f32[0] < v12->n128_f32[2])
        {
          v61 = *v12;
          *v12 = a2[-1];
          result = v61;
          a2[-1] = v61;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v36 = v12[1].n128_f32[2];
      v37 = v12[2].n128_f32[2];
      if (v36 >= v12->n128_f32[2])
      {
        if (v37 < v36)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_f32[2] < v12->n128_f32[2])
          {
            v63 = *v12;
            *v12 = v12[1];
            result = v63;
            v12[1] = v63;
          }
        }
      }

      else
      {
        if (v37 < v36)
        {
          v62 = *v12;
          *v12 = v12[2];
          result = v62;
          goto LABEL_103;
        }

        v65 = *v12;
        *v12 = v12[1];
        v12[1] = v65;
        if (v37 < v12[1].n128_f32[2])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_103:
          v12[2] = result;
        }
      }

      result.n128_u32[0] = a2[-1].n128_u32[2];
      if (result.n128_f32[0] >= v12[2].n128_f32[2])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v10;
      *v10 = result;
      result.n128_u32[0] = v12[2].n128_u32[2];
      if (result.n128_f32[0] >= v12[1].n128_f32[2])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_107:
      result.n128_u32[0] = v12[1].n128_u32[2];
      if (result.n128_f32[0] < v12->n128_f32[2])
      {
        v66 = *v12;
        *v12 = v12[1];
        result = v66;
        v12[1] = v66;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        _ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(v12, a2);
      }

      else
      {

        _ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        _ZNSt3__119__partial_sort_implB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_SC_EET1_SD_SD_T2_OT0_(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_f32[2];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_f32[2];
      if (v18 >= v12->n128_f32[2])
      {
        if (v17 < v18)
        {
          v41 = *v16;
          *v16 = *v10;
          *v10 = v41;
          if (v16->n128_f32[2] < v12->n128_f32[2])
          {
            v42 = *v12;
            *v12 = *v16;
            *v16 = v42;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v39 = *v12;
          *v12 = *v10;
          goto LABEL_28;
        }

        v45 = *v12;
        *v12 = *v16;
        *v16 = v45;
        if (a2[-1].n128_f32[2] < v16->n128_f32[2])
        {
          v39 = *v16;
          *v16 = *v10;
LABEL_28:
          *v10 = v39;
        }
      }

      v20 = v16 - 1;
      v21 = v16[-1].n128_f32[2];
      v22 = a2[-2].n128_f32[2];
      if (v21 >= v12[1].n128_f32[2])
      {
        if (v22 < v21)
        {
          v46 = *v20;
          *v20 = *v38;
          *v38 = v46;
          if (v16[-1].n128_f32[2] < v12[1].n128_f32[2])
          {
            v47 = v12[1];
            v12[1] = *v20;
            *v20 = v47;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = v12[1];
          v24 = a2 - 2;
          v12[1] = *v38;
          goto LABEL_42;
        }

        v49 = v12[1];
        v12[1] = *v20;
        *v20 = v49;
        if (a2[-2].n128_f32[2] < v16[-1].n128_f32[2])
        {
          v50 = *v20;
          v24 = a2 - 2;
          *v20 = *v38;
          v23 = v50;
LABEL_42:
          *v24 = v23;
        }
      }

      v25 = v16 + 1;
      v26 = v16[1].n128_f32[2];
      v27 = a2[-3].n128_f32[2];
      if (v26 >= v12[2].n128_f32[2])
      {
        if (v27 < v26)
        {
          v51 = *v25;
          *v25 = *v11;
          *v11 = v51;
          if (v16[1].n128_f32[2] < v12[2].n128_f32[2])
          {
            v52 = v12[2];
            v12[2] = *v25;
            *v25 = v52;
          }
        }
      }

      else
      {
        if (v27 < v26)
        {
          v28 = v12[2];
          v12[2] = *v11;
          goto LABEL_51;
        }

        v53 = v12[2];
        v12[2] = *v25;
        *v25 = v53;
        if (a2[-3].n128_f32[2] < v16[1].n128_f32[2])
        {
          v54 = *v25;
          *v25 = *v11;
          v28 = v54;
LABEL_51:
          *v11 = v28;
        }
      }

      v29 = v16->n128_f32[2];
      v30 = v16[1].n128_f32[2];
      if (v29 >= v16[-1].n128_f32[2])
      {
        if (v30 < v29)
        {
          v56 = *v16;
          *v16 = *v25;
          *v25 = v56;
          if (v16->n128_f32[2] < v16[-1].n128_f32[2])
          {
            v57 = *v20;
            *v20 = *v16;
            *v16 = v57;
          }
        }
      }

      else
      {
        if (v30 < v29)
        {
          v55 = *v20;
          *v20 = *v25;
          goto LABEL_60;
        }

        v58 = *v20;
        *v20 = *v16;
        *v16 = v58;
        if (v16[1].n128_f32[2] < v16->n128_f32[2])
        {
          v55 = *v16;
          *v16 = *v25;
LABEL_60:
          *v25 = v55;
        }
      }

      v59 = *v12;
      *v12 = *v16;
      *v16 = v59;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = v12->n128_f32[2];
    if (v19 < v16->n128_f32[2])
    {
      if (v17 < v19)
      {
        v40 = *v16;
        *v16 = *v10;
        goto LABEL_37;
      }

      v48 = *v16;
      *v16 = *v12;
      *v12 = v48;
      if (a2[-1].n128_f32[2] < v12->n128_f32[2])
      {
        v40 = *v12;
        *v12 = *v10;
LABEL_37:
        *v10 = v40;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v17 >= v19)
    {
      goto LABEL_38;
    }

    v43 = *v12;
    *v12 = *v10;
    *v10 = v43;
    if (v12->n128_f32[2] >= v16->n128_f32[2])
    {
      goto LABEL_38;
    }

    v44 = *v16;
    *v16 = *v12;
    *v12 = v44;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v12[-1].n128_f32[2] >= v12->n128_f32[2])
    {
      v12 = _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv2_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EET0_SD_SD_T1_(v12, a2);
      goto LABEL_68;
    }

LABEL_63:
    v31 = _ZNSt3__132__partition_with_equals_on_rightB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv2_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EENS_4pairIT0_bEESE_SE_T1_(v12, a2);
    if ((v32 & 1) == 0)
    {
      goto LABEL_66;
    }

    v33 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(v12, v31, result);
    v12 = v31 + 1;
    if (_ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(v31 + 1, a2, v34))
    {
      a4 = -v14;
      a2 = v31;
      if (v33)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v33)
    {
LABEL_66:
      result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Lb0EEEvT1_SD_T0_NS_15iterator_traitsISD_E15difference_typeEb(a1, v31, a3, -v14, a5 & 1, result);
      v12 = v31 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  result.n128_u32[0] = v12[1].n128_u32[2];
  v35 = a2[-1].n128_f32[2];
  if (result.n128_f32[0] >= v12->n128_f32[2])
  {
    if (v35 >= result.n128_f32[0])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
    *v10 = result;
    goto LABEL_107;
  }

  if (v35 >= result.n128_f32[0])
  {
    v64 = *v12;
    *v12 = v12[1];
    result = v64;
    v12[1] = v64;
    result.n128_u32[0] = a2[-1].n128_u32[2];
    if (result.n128_f32[0] >= v12[1].n128_f32[2])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
  }

  else
  {
    v60 = *v12;
    *v12 = *v10;
    result = v60;
  }

  *v10 = result;
  return result;
}

__n128 _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_f32[2];
  v7 = a3->n128_f32[2];
  if (v6 >= a1->n128_f32[2])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[2] < a1->n128_f32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_f32[2] < a2->n128_f32[2])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_f32[2] < a3->n128_f32[2])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_f32[2] < a2->n128_f32[2])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_f32[2] < a1->n128_f32[2])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = a5->n128_u32[2];
  if (result.n128_f32[0] < a4->n128_f32[2])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = a4->n128_u32[2];
    if (result.n128_f32[0] < a3->n128_f32[2])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_u32[0] = a3->n128_u32[2];
      if (result.n128_f32[0] < a2->n128_f32[2])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_u32[0] = a2->n128_u32[2];
        if (result.n128_f32[0] < a1->n128_f32[2])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

void *_ZNSt3__116__insertion_sortB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result + 2;
    if (result + 2 != a2)
    {
      v3 = 0;
      v4 = result;
      do
      {
        v5 = v2;
        v6 = v4[6];
        if (v6 < v4[2])
        {
          v7 = *v2;
          v8 = *(v4 + 7);
          v9 = v3;
          while (1)
          {
            *(result + v9 + 16) = *(result + v9);
            if (!v9)
            {
              break;
            }

            v10 = *(result + v9 - 8);
            v9 -= 16;
            if (v6 >= v10)
            {
              v11 = (result + v9 + 16);
              goto LABEL_10;
            }
          }

          v11 = result;
LABEL_10:
          *v11 = v7;
          v11[2] = v6;
          *(v11 + 3) = v8;
        }

        v2 = v5 + 2;
        v3 += 16;
        v4 = v5;
      }

      while (v5 + 2 != a2);
    }
  }

  return result;
}

float *_ZNSt3__126__insertion_sort_unguardedB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_T0_(float *result, float *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    while (v2 != a2)
    {
      v3 = v2;
      v4 = result[6];
      if (v4 < result[2])
      {
        v5 = *v2;
        v6 = *(result + 7);
        v7 = v3;
        do
        {
          *v7 = *(v7 - 1);
          v8 = *(v7 - 6);
          v7 -= 4;
        }

        while (v4 < v8);
        *v7 = v5;
        v7[2] = v4;
        *(v7 + 3) = v6;
      }

      v2 = v3 + 4;
      result = v3;
    }
  }

  return result;
}

unint64_t _ZNSt3__131__partition_with_equals_on_leftB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv2_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EET0_SD_SD_T1_(float *a1, float *a2)
{
  v2 = a1[2];
  if (v2 >= *(a2 - 2))
  {
    v6 = a1 + 4;
    do
    {
      v4 = v6;
      if (v6 >= a2)
      {
        break;
      }

      v7 = v6[2];
      v6 += 4;
    }

    while (v2 >= v7);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = (v3 + 4);
      v5 = v3[6];
      v3 += 4;
    }

    while (v2 >= v5);
  }

  if (v4 >= a2)
  {
    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 4;
      v9 = *(a2 - 2);
      a2 -= 4;
    }

    while (v2 < v9);
  }

  v10 = *a1;
  v11 = *(a1 + 3);
  while (v4 < v8)
  {
    v15 = *v4;
    *v4 = *v8;
    *v8 = v15;
    do
    {
      v12 = *(v4 + 24);
      v4 += 16;
    }

    while (v2 >= v12);
    do
    {
      v13 = *(v8 - 2);
      v8 -= 4;
    }

    while (v2 < v13);
  }

  if ((v4 - 16) != a1)
  {
    *a1 = *(v4 - 16);
  }

  *(v4 - 16) = v10;
  *(v4 - 8) = v2;
  *(v4 - 4) = v11;
  return v4;
}

float *_ZNSt3__132__partition_with_equals_on_rightB8nn200100INS_17_ClassicAlgPolicyEPN2CI11Perspective9NMSimplexIDv2_fE8NMVertexERZNS6_13orderVerticesEvEUlRKS7_SA_E_EENS_4pairIT0_bEESE_SE_T1_(float *a1, float *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[2];
  v5 = *(a1 + 3);
  do
  {
    v6 = a1[v2 + 6];
    v2 += 4;
  }

  while (v6 < v4);
  v7 = &a1[v2];
  if (v2 == 4)
  {
    while (v7 < a2)
    {
      v8 = a2 - 4;
      v10 = *(a2 - 2);
      a2 -= 4;
      if (v10 < v4)
      {
        goto LABEL_9;
      }
    }

    v8 = a2;
  }

  else
  {
    do
    {
      v8 = a2 - 4;
      v9 = *(a2 - 2);
      a2 -= 4;
    }

    while (v9 >= v4);
  }

LABEL_9:
  v11 = &a1[v2];
  if (v7 < v8)
  {
    v12 = v8;
    do
    {
      v13 = *v11;
      *v11 = *v12;
      *v12 = v13;
      do
      {
        v14 = v11[6];
        v11 += 4;
      }

      while (v14 < v4);
      do
      {
        v15 = *(v12 - 2);
        v12 -= 4;
      }

      while (v15 >= v4);
    }

    while (v11 < v12);
  }

  if (v11 - 4 != a1)
  {
    *a1 = *(v11 - 1);
  }

  *(v11 - 2) = v3;
  *(v11 - 2) = v4;
  *(v11 - 1) = v5;
  return v11 - 4;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEbT1_SD_T0_(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v5 = a2 - 1;
      v6 = a1[1].n128_f32[2];
      v7 = a2[-1].n128_f32[2];
      if (v6 < a1->n128_f32[2])
      {
        if (v7 >= v6)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
          if (a2[-1].n128_f32[2] >= a1[1].n128_f32[2])
          {
            return 1;
          }

          v8 = a1[1];
          a1[1] = *v5;
        }

        else
        {
          v8 = *a1;
          *a1 = *v5;
        }

        *v5 = v8;
        return 1;
      }

      if (v7 >= v6)
      {
        return 1;
      }

      v18 = a1[1];
      a1[1] = *v5;
      *v5 = v18;
LABEL_50:
      if (a1[1].n128_f32[2] < a1->n128_f32[2])
      {
        v37 = *a1;
        *a1 = a1[1];
        a1[1] = v37;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      _ZNSt3__17__sort5B8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_Li0EEEvT1_SD_SD_SD_SD_T0_(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
      return 1;
    }

    v14 = a1[1].n128_f32[2];
    v15 = a1->n128_f32[2];
    v16 = a1[2].n128_f32[2];
    if (v14 >= v15)
    {
      if (v16 < v14)
      {
        v21 = a1[1];
        a1[1] = a1[2];
        a1[2] = v21;
        if (a1[1].n128_f32[2] < v15)
        {
          v22 = *a1;
          *a1 = a1[1];
          a1[1] = v22;
        }
      }

      goto LABEL_47;
    }

    if (v16 >= v14)
    {
      v34 = *a1;
      *a1 = a1[1];
      a1[1] = v34;
      if (v16 >= a1[1].n128_f32[2])
      {
        goto LABEL_47;
      }

      v17 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v17 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v17;
LABEL_47:
    if (a2[-1].n128_f32[2] >= a1[2].n128_f32[2])
    {
      return 1;
    }

    v35 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v35;
    if (a1[2].n128_f32[2] >= a1[1].n128_f32[2])
    {
      return 1;
    }

    v36 = a1[1];
    a1[1] = a1[2];
    a1[2] = v36;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_f32[2] < a1->n128_f32[2])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
    }

    return 1;
  }

LABEL_13:
  v9 = a1 + 2;
  v10 = a1[1].n128_f32[2];
  v11 = a1->n128_f32[2];
  v12 = a1[2].n128_f32[2];
  if (v10 >= v11)
  {
    if (v12 < v10)
    {
      v19 = a1[1];
      a1[1] = *v9;
      *v9 = v19;
      if (a1[1].n128_f32[2] < v11)
      {
        v20 = *a1;
        *a1 = a1[1];
        a1[1] = v20;
      }
    }
  }

  else
  {
    if (v12 >= v10)
    {
      v24 = *a1;
      *a1 = a1[1];
      a1[1] = v24;
      if (v12 >= a1[1].n128_f32[2])
      {
        goto LABEL_33;
      }

      v13 = a1[1];
      a1[1] = *v9;
    }

    else
    {
      v13 = *a1;
      *a1 = *v9;
    }

    *v9 = v13;
  }

LABEL_33:
  v25 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v26 = 0;
  v27 = 0;
  while (1)
  {
    v28 = v25->n128_f32[2];
    if (v28 < v9->n128_f32[2])
    {
      v29 = v25->n128_u64[0];
      v30 = v25->n128_u32[3];
      v31 = v26;
      while (1)
      {
        *(a1 + v31 + 48) = *(a1 + v31 + 32);
        if (v31 == -32)
        {
          break;
        }

        v32 = *(&a1[1].n128_f32[2] + v31);
        v31 -= 16;
        if (v28 >= v32)
        {
          v33 = (a1 + v31 + 48);
          goto LABEL_41;
        }
      }

      v33 = a1;
LABEL_41:
      v33->n128_u64[0] = v29;
      v33->n128_f32[2] = v28;
      v33->n128_u32[3] = v30;
      if (++v27 == 8)
      {
        return &v25[1] == a2;
      }
    }

    v9 = v25;
    v26 += 16;
    if (++v25 == a2)
    {
      return 1;
    }
  }
}

float *_ZNSt3__119__partial_sort_implB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_SC_EET1_SD_SD_T2_OT0_(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if (v12[2] < a1[2])
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(a1, a4, v8, a1);
        }

        v12 += 4;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v24 = *a1;
        v15 = a1;
        do
        {
          v16 = &v15[4 * v14];
          v17 = v16 + 4;
          v18 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v14 = v18;
          }

          else
          {
            v19 = v16[6];
            v20 = v16[10];
            v21 = v16 + 8;
            if (v19 >= v20)
            {
              v14 = v18;
            }

            else
            {
              v17 = v21;
            }
          }

          *v15 = *v17;
          v15 = v17;
        }

        while (v14 <= ((v8 - 2) >> 1));
        v6 -= 4;
        if (v17 == v6)
        {
          *v17 = v24;
        }

        else
        {
          *v17 = *v6;
          *v6 = v24;
          _ZNSt3__19__sift_upB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE(a1, (v17 + 4), a4, ((v17 + 4) - a1) >> 4);
        }
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t _ZNSt3__111__sift_downB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_OT0_NS_15iterator_traitsISD_E15difference_typeESD_(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && v8[2] < v8[6])
      {
        v8 += 4;
        v7 = v9;
      }

      v10 = a4[2];
      if (v8[2] >= v10)
      {
        v11 = *a4;
        v12 = *(a4 + 3);
        do
        {
          v13 = a4;
          a4 = v8;
          *v13 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v14 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 16 * v7);
          v15 = v14 + 2;
          if (v15 < a3 && v8[2] < v8[6])
          {
            v8 += 4;
            v7 = v15;
          }
        }

        while (v8[2] >= v10);
        *a4 = v11;
        a4[2] = v10;
        *(a4 + 3) = v12;
      }
    }
  }

  return result;
}

uint64_t _ZNSt3__19__sift_upB8nn200100INS_17_ClassicAlgPolicyERZN2CI11Perspective9NMSimplexIDv2_fE13orderVerticesEvEUlRKNS6_8NMVertexES9_E_PS7_EEvT1_SD_OT0_NS_15iterator_traitsISD_E15difference_typeE(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v5 = result + 16 * v4;
    v6 = *(a2 - 8);
    if (*(v5 + 8) < v6)
    {
      v8 = *(a2 - 16);
      v7 = a2 - 16;
      v9 = v8;
      v10 = *(v7 + 12);
      do
      {
        v11 = v7;
        v7 = v5;
        *v11 = *v5;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v5 = result + 16 * v4;
      }

      while (*(v5 + 8) < v6);
      *v7 = v9;
      *(v7 + 8) = v6;
      *(v7 + 12) = v10;
    }
  }

  return result;
}

CIImage *perspectiveTransformImage(CIImage *a1, simd::float3x3 a2)
{
  v35[3] = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(_MergedGlobals_3, memory_order_acquire) & 1) == 0)
  {
    v31 = a2;
    perspectiveTransformImage();
    a2 = v31;
  }

  v3 = vdupq_n_s32(0x358637BDu);
  v4 = vandq_s8(vandq_s8(vcgeq_f32(v3, vabdq_f32(a2.columns[1], unk_1ED7C4500)), vcgeq_f32(v3, vabdq_f32(a2.columns[0], xmmword_1ED7C44F0))), vcgeq_f32(v3, vabdq_f32(a2.columns[2], xmmword_1ED7C4510)));
  v4.i32[3] = v4.i32[2];
  if ((vminvq_u32(v4) & 0x80000000) == 0)
  {
    v30 = a2;
    v5 = [(CIKernel *)CIWarpKernel kernelWithInternalRepresentation:&CI::_perspectiveWarp];
    [(CIImage *)a1 extent];
    *&v6 = v6;
    *&v7 = v7;
    v9.f64[1] = v8;
    v10 = vmulq_n_f32(v30.columns[0], *&v6);
    HIDWORD(v6) = LODWORD(v7);
    v11 = vadd_f32(*&v6, vcvt_f32_f64(v9));
    v12 = vaddq_f32(v30.columns[2], vmlaq_n_f32(v10, v30.columns[1], *&v7));
    v13.i64[0] = vdupq_laneq_s32(v12, 2).u64[0];
    v14 = vmulq_n_f32(v30.columns[0], v11.f32[0]);
    v15 = vaddq_f32(v30.columns[2], vmlaq_n_f32(v14, v30.columns[1], *&v7));
    v16 = vaddq_f32(v30.columns[2], vmlaq_lane_f32(v14, v30.columns[1], v11, 1));
    v17.i64[0] = vdupq_laneq_s32(v16, 2).u64[0];
    v18 = vaddq_f32(v30.columns[2], vmlaq_lane_f32(v10, v30.columns[1], v11, 1));
    v12.i64[1] = v15.i64[0];
    v13.i64[1] = vdupq_laneq_s32(v15, 2).u64[0];
    v16.i64[1] = v18.i64[0];
    v17.i64[1] = vdupq_laneq_s32(v18, 2).u64[0];
    v34[0] = vdivq_f32(v12, v13);
    v34[1] = vdivq_f32(v16, v17);
    v19 = CI::Perspective::bbox(v34);
    v20 = v19.f32[0];
    v21 = v19.f32[1];
    v23 = v22;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = ___ZL25perspectiveTransformImageP7CIImageN4simd8float3x3E_block_invoke;
    v32[3] = &__block_descriptor_80_e73__CGRect__CGPoint_dd__CGSize_dd__44__0i8_CGRect__CGPoint_dd__CGSize_dd__12l;
    v25 = v24;
    v33 = v30;
    v36 = __invert_f3(v30.simd_float3x3);
    v30.columns[0].i32[2] = v36.columns[0].i32[2];
    v30.columns[1] = v36.columns[1];
    v30.columns[2] = v36.columns[2];
    v26 = [CIVector vectorWithX:v36.columns[0].f32[0] Y:v36.columns[1].f32[0] Z:v36.columns[2].f32[0], v36.columns[0].i64[0]];
    v27 = [CIVector vectorWithX:v30.columns[0].f32[1] Y:v30.columns[1].f32[1] Z:v30.columns[2].f32[1]];
    v28 = [CIVector vectorWithX:v30.columns[0].f32[2] Y:v30.columns[1].f32[2] Z:v30.columns[2].f32[2]];
    v35[0] = v26;
    v35[1] = v27;
    v35[2] = v28;
    return -[CIWarpKernel applyWithExtent:roiCallback:inputImage:arguments:](v5, "applyWithExtent:roiCallback:inputImage:arguments:", v32, a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3], v20, v21, v23, v25);
  }

  return a1;
}

double ___ZL25perspectiveTransformImageP7CIImageN4simd8float3x3E_block_invoke(uint64_t a1, double a2, double a3, float64x2_t a4, float64_t a5)
{
  *&v5 = a2;
  *&v6 = a3;
  v13 = *&v5;
  v14 = *&v6;
  a4.f64[1] = a5;
  v15 = vadd_f32(__PAIR64__(v6, v5), vcvt_f32_f64(a4));
  v17 = __invert_f3(*(a1 + 32));
  v7 = vmulq_n_f32(v17.columns[0], v13);
  v8 = vaddq_f32(v17.columns[2], vmlaq_n_f32(v7, v17.columns[1], v14));
  v9.i64[0] = vdupq_laneq_s32(v8, 2).u64[0];
  v17.columns[0] = vmulq_n_f32(v17.columns[0], v15.f32[0]);
  v10 = vaddq_f32(v17.columns[2], vmlaq_n_f32(v17.columns[0], v17.columns[1], v14));
  v17.columns[0] = vaddq_f32(v17.columns[2], vmlaq_lane_f32(v17.columns[0], v17.columns[1], v15, 1));
  v11.i64[0] = vdupq_laneq_s32(v17.columns[0], 2).u64[0];
  v17.columns[1] = vaddq_f32(v17.columns[2], vmlaq_lane_f32(v7, v17.columns[1], v15, 1));
  v8.i64[1] = v10.i64[0];
  v9.i64[1] = vdupq_laneq_s32(v10, 2).u64[0];
  v17.columns[0].i64[1] = v17.columns[1].i64[0];
  v11.i64[1] = vdupq_laneq_s32(v17.columns[1], 2).u64[0];
  v16[0] = vdivq_f32(v8, v9);
  v16[1] = vdivq_f32(v17.columns[0], v11);
  return CI::Perspective::bbox(v16).f32[0];
}

double CI::sw_perspectiveWarp(CI *a1, uint64_t a2)
{
  v2 = *(a1 + 5);
  v15 = *(a2 + (v2[4] << 6));
  v16 = *(a2 + (v2[1] << 6));
  v17 = *(a2 + (v2[7] << 6));
  DC = CI::getDC(a1);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i64[0] = *DC;
  v9 = vmulq_f32(v16, _Q1);
  v10 = vmulq_f32(v15, _Q1);
  v11 = vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8));
  v12 = vextq_s8(v9, v9, 8uLL);
  *v12.f32 = vadd_f32(vzip1_s32(*v12.f32, *&vextq_s8(v10, v10, 8uLL)), v11);
  v13 = vmulq_f32(v17, _Q1);
  v13.f32[0] = v13.f32[2] + vaddv_f32(*v13.f32);
  *&result = vdivq_f32(v12, vdupq_lane_s32(*v13.f32, 0)).u64[0];
  return result;
}

float64x2_t computeHomogeneousPerspectiveTransformAndInverse(uint64_t a1, uint64_t a2, double a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v6 = vsub_f32(vadd_f32(vsub_f32(*&a3, a4), a5), a6);
  if (*v6.i32 == 0.0 && *&v6.i32[1] == 0.0)
  {
    v7 = vcvtq_f64_f32(vsub_f32(a4, *&a3));
    v8 = vcvtq_f64_f32(vsub_f32(a5, a4));
    _Q2 = 0uLL;
  }

  else
  {
    v10 = vsub_f32(a6, a5);
    v11 = vsub_f32(a4, a5);
    v12 = vsub_f32(__PAIR64__(a6.u32[1], a4.u32[0]), a5);
    v13 = vrev64_s32(v6);
    v14 = vneg_f32(__PAIR64__(v11.u32[1], v13.u32[0]));
    v13.i32[0] = v10.i32[0];
    _Q2 = vdivq_f64(vcvtq_f64_f32(vmla_f32(vmul_f32(v13, v14), v6, vrev64_s32(v12))), vdupq_lane_s64(COERCE__INT64((vmul_lane_f32(v10, v14, 1).f32[0] + (*v12.i32 * *&v12.i32[1]))), 0));
    v7 = vmlaq_n_f64(vcvtq_f64_f32(vsub_f32(a4, *&a3)), vcvtq_f64_f32(a4), *_Q2.i64);
    v8 = vmlaq_laneq_f64(vcvtq_f64_f32(vsub_f32(a6, *&a3)), vcvtq_f64_f32(a6), _Q2, 1);
  }

  _D3 = *(&a3 + 1);
  _D0 = *&a3;
  *a2 = v7;
  *(a2 + 16) = _Q2.i64[0];
  *(a2 + 24) = v8;
  v17 = vmulq_f64(vzip2q_s64(v8, _Q2), v7);
  v18 = vmuld_lane_f64(-*_Q2.i64, v8, 1);
  __asm { FMLS            D5, D3, V2.D[1] }

  v24 = vnegq_f64(v7);
  v25 = vdupq_lane_s64(v8.i64[0], 0);
  v25.f64[0] = _D3;
  v26 = vmulq_f64(v25, v24);
  v27 = vmuld_lane_f64(*v24.i64, _Q2, 1);
  v17.f64[0] = v26.f64[1] + v17.f64[0] + vmuld_lane_f64(_D0, v17, 1) + vmulq_f64(_Q2, v8).f64[0] * _D3 + v18 * _D0 + v27 * _D3;
  *(a2 + 40) = _Q2.i64[1];
  *(a2 + 48) = _D0;
  *(a2 + 56) = _D3;
  *(a2 + 64) = 0x3FF0000000000000;
  v28.f64[1] = v7.f64[1];
  v28.f64[0] = _D3;
  __asm { FMLA            D22, D0, V2.D[1] }

  *a1 = _D5 / v17.f64[0];
  *&v30.f64[0] = vdupq_laneq_s64(v24, 1).u64[0];
  v30.f64[1] = v18;
  v31 = vdupq_lane_s64(*&v17.f64[0], 0);
  *(a1 + 8) = vdivq_f64(vmlaq_f64(v30, v28, _Q2), v31);
  *(a1 + 24) = _D22 / v17.f64[0];
  *(a1 + 32) = (v7.f64[0] - _D0 * *_Q2.i64) / v17.f64[0];
  *(a1 + 40) = (v27 + *_Q2.i64 * *v8.i64) / v17.f64[0];
  *(a1 + 48) = (*v8.i64 * _D3 - *&v8.i64[1] * _D0) / v17.f64[0];
  *v8.i64 = _D0;
  result = vdivq_f64(vmlaq_f64(v26, v8, vextq_s8(v7, v7, 8uLL)), v31);
  *(a1 + 56) = result;
  return result;
}

float32x2_t CI::sw_perspectiveTransform(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  v6 = *(v3 + 56);
  v7 = *(v3 + 88);
  v8 = *(v3 + 80);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v22 = *(a2 + (v5 << 6));
  v23 = *(a2 + (v4 << 6));
  v24 = *(a2 + (v6 << 6));
  v11 = *v10;
  DC = CI::getDC(a1);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i64[0] = *DC;
  v18 = vmulq_f32(v23, _Q1);
  v19 = vmulq_f32(v22, _Q1);
  v20 = vmulq_f32(v24, _Q1);
  return vadd_f32(v11, vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v18, v18, 8uLL), *&vextq_s8(v19, v19, 8uLL)), vadd_f32(vzip1_s32(*v18.i8, *v19.i8), vzip2_s32(*v18.i8, *v19.i8))), 1.0 / fmaxf(v20.f32[2] + vaddv_f32(*v20.f32), 0.000001)));
}

double CI::sw_perspectiveMask(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v18 = *(a2 + (*(v3 + 32) << 6));
  v19 = *v7;
  DC = CI::getDC(a1);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i64[0] = *DC;
  v14 = vmulq_f32(v18, _Q1);
  _NF = (v14.f32[2] + vaddv_f32(*v14.f32)) < 0.000001;
  v15 = 1.0;
  if (_NF)
  {
    v15 = 0.0;
  }

  v16 = v15;
  *&result = vmulq_n_f32(v19, v16).u64[0];
  return result;
}

float32x2_t CI::sw_perspectiveCorrection(CI *a1, uint64_t a2)
{
  v2 = *(a1 + 5);
  v13 = *(a2 + (v2[4] << 6));
  v14 = *(a2 + (v2[1] << 6));
  v15 = *(a2 + (v2[7] << 6));
  DC = CI::getDC(a1);
  __asm { FMOV            V1.4S, #1.0 }

  _Q1.i64[0] = *DC;
  v9 = vmulq_f32(v14, _Q1);
  v10 = vmulq_f32(v13, _Q1);
  v11 = vmulq_f32(v15, _Q1);
  v11.f32[0] = fmaxf(v11.f32[2] + vaddv_f32(*v11.f32), 0.000001);
  return vdiv_f32(vadd_f32(vzip1_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(v10, v10, 8uLL)), vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8))), vdup_lane_s32(*v11.f32, 0));
}

unint64_t CI::sw_photoEffectDepthBlend(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(a2 + (*(v3 + 80) << 6));
  v17 = fminf(*v15 + *v15, 1.0);
  v18 = v16 + 0.15;
  v19 = (v17 - v16) / (v18 - v16);
  if (v19 <= 1.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 1.0;
  }

  v21 = v19 < 0.0;
  v22 = 0.0;
  if (!v21)
  {
    v22 = v20;
  }

  return vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - ((v22 * v22) * ((v22 * -2.0) + 3.0))), vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v17), *v11, v17), (v22 * v22) * ((v22 * -2.0) + 3.0)).u64[0];
}

double CI::sw_blendGrains(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  _Q0 = *v7->f32;
  v9 = *(a2 + (*(v3 + 32) << 6));
  v10 = v9 * 1.43067656 + -1.43067656;
  v11 = vmuls_lane_f32(v10, *v7, 1) + (COERCE_FLOAT(*v7->f32) * (1.0 - v10));
  v12 = v9 * 1.10730936 + -1.8812854;
  _S6 = 1.0 - v12;
  __asm { FMLA            S4, S6, V0.S[1] }

  v19 = v9 * 1.10730936 + -2.8812854;
  _S6 = 1.0 - v19;
  __asm { FMLA            S5, S6, V0.S[2] }

  v22 = v9 + -1.69897;
  *&v22 = v9 + -1.69897;
  *&v9 = v9 + -2.60205999;
  if (*&v9 >= 0.0)
  {
    v23 = _S5;
  }

  else
  {
    v23 = _S4;
  }

  if (*&v22 >= 0.0)
  {
    *&v22 = v23;
  }

  else
  {
    *&v22 = v11;
  }

  *&result = vdupq_lane_s32(*&v22, 0).u64[0];
  return result;
}

unint64_t CI::sw_grainBlendAndMix(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, int32x2_t a7)
{
  v7 = *(a1 + 40);
  v8 = *(v7 + 8);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v7 + 16) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v7 + 32);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v7 + 40) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *v11;
  v17 = *(a2 + (*(v7 + 56) << 6));
  v45 = *v11;
  v46 = *(a2 + (*(v7 + 80) << 6));
  v19 = vmulq_f32(*v11, vdupq_n_s32(0x3EAAAA9Fu));
  v18 = vaddv_f32(*v19.f32);
  v19.f32[0] = v19.f32[2] + v18;
  if ((v19.f32[2] + v18) <= 1.0)
  {
    v20 = v19.f32[2] + v18;
  }

  else
  {
    v20 = 1.0;
  }

  if (v19.f32[0] >= 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  *a7.i32 = v21 * -2.0 + 4.01;
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  __asm { FMOV            V4.4S, #1.0 }

  v42 = _Q4;
  v44 = a7;
  v28 = vorrq_s8(vandq_s8(v16, v22), _Q4);
  v41 = vandq_s8(v28, vorrq_s8(vcltzq_f32(v16), vcgtzq_f32(v16)));
  v29 = vabsq_f32(v16);
  v29.i32[3] = 0;
  *v28.i32 = 1.0 / *a7.i32;
  v30 = vdupq_lane_s32(*v28.i8, 0);
  v30.i32[3] = 0;
  v31 = *v15;
  v32 = _simd_pow_f4(v29, v30);
  v33 = (1.0 - v21) * ((v17 * (v31 + -0.5)) * fmaxf(v21, 0.5));
  *&v33 = v33;
  v34 = vaddq_f32(vmulq_f32(v32, v41), vdupq_lane_s32(*&v33, 0));
  v35.i64[0] = 0x8000000080000000;
  v35.i64[1] = 0x8000000080000000;
  v43 = vbslq_s8(vorrq_s8(vcltzq_f32(v34), vcgtzq_f32(v34)), vorrq_s8(vandq_s8(v34, v35), v42), 0);
  v36 = vabsq_f32(v34);
  v36.i32[3] = 0;
  v37 = vdupq_lane_s32(v44, 0);
  v37.i32[3] = 0;
  v38 = vmulq_f32(_simd_pow_f4(v36, v37), v43);
  v38.i32[3] = 0;
  v39 = vminnmq_f32(v38, xmmword_19CF23BD0);
  v39.i32[3] = v45.i32[3];
  return vmlaq_n_f32(vmulq_n_f32(v45, 1.0 - v46), v39, v46).u64[0];
}

float32x2_t CI::sw_paddedTile2(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 16);
  v5 = *(v3 + 8);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (v4 == 5)
  {
    v7 = v6;
  }

  v15 = *v7;
  v8 = vmul_f32(*&vextq_s8(v15, v15, 8uLL), *CI::getDC(a1));
  __asm { FMOV            V1.2S, #1.0 }

  return vadd_f32(vmul_f32(*v15.i8, vminnm_f32(vsub_f32(v8, vrndm_f32(v8)), vdup_n_s32(0x3F7FFFFFu))), _D1);
}

double map_point_inv(float32x2_t a1, float32x2_t a2, double a3, float a4, double a5, double a6, double a7, double a8)
{
  v9 = a1;
  v10 = vsub_f32(a1, a2);
  *&a8 = sqrtf(vaddv_f32(vmul_f32(v10, v10)));
  v11 = *&a8;
  if (*&a8 >= 0.001)
  {
    if (fabsf(a4 + -1.0) >= 0.001)
    {
      v14 = a4;
      if (a4 >= 1.0 && *&a8 >= *&a3)
      {
        v21 = *&a3;
        v15 = pow(v11, v14 / (2.0 - v14));
        v16 = pow(v21, v14 / (v14 + -2.0));
        v17 = v15;
        *&v16 = v16;
        v18 = vmul_n_f32(vmul_n_f32(v10, v17), *&v16);
LABEL_9:
        v9 = vadd_f32(a2, v18);
        return *&v9;
      }

      v19 = (((*&a3 * a4) * a4) + v14 * -2.0 * v11 + v11 * 2.0 - sqrt(((*&a3 * a4) * a4) + v14 * -4.0 * v11 + v11 * 4.0) * (sqrtf(*&a3) * a4)) / ((a4 * a4) + v14 * -2.0 + 1.0 + (a4 * a4) + v14 * -2.0 + 1.0);
      v12 = vmul_n_f32(v10, v19);
      v13 = vdup_lane_s32(*&a8, 0);
    }

    else
    {
      v12 = vmul_n_f32(v10, *&a8);
      v13 = vdup_lane_s32(*&a3, 0);
    }

    v18 = vdiv_f32(v12, v13);
    goto LABEL_9;
  }

  return *&v9;
}

double regionOf(CGRect a1, __n128 a2, float a3, float a4, float a5)
{
  v72 = a2.n128_f32[0];
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  v71 = a1.origin.y;
  x = a1.origin.x;
  v9 = *MEMORY[0x1E695F050];
  v10 = *(MEMORY[0x1E695F050] + 8);
  a2.n128_f32[1] = a3;
  v82 = a2.n128_u64[0];
  v11 = *(MEMORY[0x1E695F050] + 16);
  v12 = *(MEMORY[0x1E695F050] + 24);
  v13.f32[0] = a1.origin.x;
  v77 = v13.i32[0];
  v14 = a1.origin.y;
  v75 = LODWORD(v14);
  v13.f32[1] = v14;
  map_point(v13, a2.n128_u64[0], a5, a4);
  v16 = unionPointWithRect(v15, v9, v10, v11, v12);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v70 = x;
  *&v17 = y + height;
  v74 = LODWORD(v17);
  map_point(__PAIR64__(LODWORD(v17), v77), v82, a5, a4);
  v24 = unionPointWithRect(v23, v16, v18, v20, v22);
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31.f32[0] = x + width;
  v76 = v31.i32[0];
  v31.i32[1] = v75;
  map_point(v31, v82, a5, a4);
  v33 = unionPointWithRect(v32, v24, v26, v28, v30);
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v69 = a4;
  v40 = width;
  map_point(__PAIR64__(v74, v76), v82, a5, a4);
  v42 = unionPointWithRect(v41, v33, v35, v37, v39);
  v44 = v43;
  v46 = v45;
  v79 = v47;
  v83.origin.x = v70;
  v83.origin.y = v71;
  v83.size.width = width;
  v83.size.height = height;
  if (CGRectGetMinX(v83) < v72)
  {
    v84.origin.x = v70;
    v84.origin.y = v71;
    v84.size.width = width;
    v84.size.height = height;
    if (CGRectGetMaxX(v84) > v72)
    {
      map_point(__PAIR64__(v75, v82.u32[0]), v82, a5, a4);
      v80 = unionPointWithRect(v48, v42, v44, v46, v79);
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v40 = width;
      map_point(__PAIR64__(v74, v82.u32[0]), v82, a5, a4);
      v42 = unionPointWithRect(v55, v80, v50, v52, v54);
      v44 = v56;
      v46 = v57;
      v79 = v58;
    }
  }

  v85.origin.x = v70;
  v85.origin.y = v71;
  v85.size.width = v40;
  v85.size.height = height;
  if (CGRectGetMinY(v85) < a3)
  {
    v86.origin.x = v70;
    v86.origin.y = v71;
    v86.size.width = v40;
    v86.size.height = height;
    if (CGRectGetMaxY(v86) > a3)
    {
      map_point(__PAIR64__(v82.u32[1], v77), v82, a5, a4);
      v60 = unionPointWithRect(v59, v42, v44, v46, v79);
      v62 = v61;
      v64 = v63;
      v66 = v65;
      map_point(__PAIR64__(v82.u32[1], v76), v82, a5, v69);
      return unionPointWithRect(v67, v60, v62, v64, v66);
    }
  }

  return v42;
}

float32x2_t CI::sw_pinchDistortionScaleLT1(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v19 = *v11;
  DC = CI::getDC(a1);
  v14 = vsub_f32(*DC, v12);
  *&v15 = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v14, v14))), *v19.f32, 1) + 0.000001;
  v16 = *&v15;
  v17 = vrsqrte_f32(v15);
  return vmla_laneq_f32(vmul_n_f32(*CI::getDC(DC), 1.0 - v19.f32[2]), vadd_f32(v12, vmul_n_f32(v14, vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17))).f32[0])), v19, 2);
}

int8x8_t CI::sw_pinchDistortionScaleGE1(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = *v7;
  v22 = *v11;
  v13 = vsub_f32(*CI::getDC(a1), *v7);
  *&v14 = vmuls_lane_f32(sqrtf(vaddv_f32(vmul_f32(v13, v13))), *v22.f32, 1) + 0.000001;
  v14.f32[0] = *&v14;
  v23 = v14;
  v15 = vadd_f32(v12, vmul_n_f32(v13, powf(v14.f32[0], v22.f32[3])));
  v16 = vrsqrte_f32(v23.u32[0]);
  v17 = vadd_f32(v12, vmul_n_f32(v13, vmul_f32(v16, vrsqrts_f32(v23.u32[0], vmul_f32(v16, v16))).f32[0]));
  DC = CI::getDC(v18);
  v20.i32[0] = 1.0;
  return vbsl_s8(vdup_lane_s32(vcge_f32(v20, v23), 0), vmla_laneq_f32(vmul_n_f32(*DC, 1.0 - v22.f32[2]), v17, v22, 2), v15);
}

void map_point(float32x2_t a1, float32x2_t a2, float a3, float a4)
{
  if (a4 >= 1.0)
  {
    v4 = vsub_f32(a1, a2);
    v5 = ((1.0 / a3) * sqrtf(vaddv_f32(vmul_f32(v4, v4)))) + 0.000001;
    powf(v5, a4 * -0.5);
  }
}

float32x2_t CI::sw_pixellate(CI *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 5);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 40);
  v9 = *(v3 + 32);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  return vadd_f32(*v7, vmul_lane_f32(vadd_f32(vrndm_f32(vmul_n_f32(vsub_f32(*CI::getDC(a1), *v7), COERCE_FLOAT(*v11))), 0x3F0000003F000000), *v11, 1));
}

unint64_t CI::sw_hexagonalPixellate(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 32);
  v6 = (a3 + 16 * v5);
  v7 = (a2 + (v5 << 6));
  if (*(v4 + 40) == 5)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 56);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (*(v4 + 64) == 5)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v4 + 80);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (*(v4 + 88) == 5)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = a4 + 80 * *(v4 + 8);
  v18 = *v8;
  v19 = *v12;
  v20 = *v16;
  _S11 = *(a2 + (*(v4 + 104) << 6));
  _D1 = vsub_f32(*CI::getDC(a1), *v8);
  __asm { FMLS            S0, S11, V1.S[1] }

  v28 = vmul_f32(v19, __PAIR64__(_D1.u32[1], _S0));
  v29 = vrndm_f32(v28);
  _D3 = vsub_f32(v28, v29);
  *_Q0.i8 = vmul_f32(v20, v29);
  _D4 = vadd_f32(v20, *_Q0.i8);
  *_Q2.i8 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32((vaddv_f32(_D3) + -1.0) < 0.0), 0x1FuLL)), *_Q0.i8, _D4);
  __asm { FMLA            S3, S11, V2.S[1] }

  _Q2.i32[0] = _D3.i32[0];
  __asm { FMLA            S5, S11, V4.S[1] }

  v35.i64[0] = __PAIR64__(_D4.u32[1], _S5);
  __asm { FMLA            S4, S11, V0.S[1] }

  _Q0.i32[0] = _D4.i32[0];
  v36 = vsub_f32(_D1, *_Q2.i8);
  v37 = vmul_f32(v36, v36);
  v38 = vadd_f32(v37, vdup_lane_s32(v37, 1));
  v40.i64[1] = v39;
  v41 = vrsqrte_f32(v38.u32[0]);
  _Q2.u64[1] = vmul_f32(vmul_f32(v41, vrsqrts_f32(v38.u32[0], vmul_f32(v41, v41))), v38);
  v42 = vsub_f32(_D1, *v35.i8);
  v43 = vmul_f32(v42, v42);
  v44 = vadd_f32(v43, vdup_lane_s32(v43, 1));
  v45 = vrsqrte_f32(v44.u32[0]);
  *v40.i8 = vmul_f32(vmul_f32(v45, vrsqrts_f32(v44.u32[0], vmul_f32(v45, v45))), v44);
  v35.i64[1] = v40.i64[0];
  v46 = vsub_f32(_D1, *_Q0.i8);
  v47 = vmul_f32(v46, v46);
  v48 = vadd_f32(v47, vdup_lane_s32(v47, 1));
  v50.i64[1] = v49;
  *v51.i8 = vrsqrte_f32(v48.u32[0]);
  *v50.i8 = vmul_f32(*v51.i8, vrsqrts_f32(v48.u32[0], vmul_f32(*v51.i8, *v51.i8)));
  _Q0.u64[1] = vmul_f32(*v50.i8, v48);
  v52 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vcgt_f32(*v40.i8, _Q2.u64[1]), 0)), 0x1FuLL));
  v53 = vbslq_s8(v52, _Q2, v35);
  v54 = vbslq_s8(v52, v35, _Q2);
  v55 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v54, v53)), 2)), 0x1FuLL));
  v56 = vbslq_s8(v55, v53, _Q0);
  v57 = vbslq_s8(v55, _Q0, v53);
  v58 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v57, v54)), 2)), 0x1FuLL));
  v59 = vbslq_s8(v58, v54, v57);
  v74 = v56;
  v75 = v59;
  *v54.f32 = vadd_f32(v18, *v56.i8);
  v56.i32[0] = *(v17 + 28);
  v59.n128_f32[0] = *(v17 + 24) + (vmuls_lane_f32(*(v17 + 20), *v54.f32, 1) + (v54.f32[0] * *(v17 + 16)));
  v53.i32[0] = *(v17 + 36);
  *v58.i32 = vmuls_lane_f32(*(v17 + 32), *v54.f32, 1);
  v54.f32[0] = v53.f32[0] + (*v58.i32 + (v54.f32[0] * *v56.i32));
  v59.n128_u32[1] = v54.i32[0];
  v60.n128_f64[0] = CI::BitmapSampler::read(*(v17 + 8), v59, v54, *v58.i64, *v56.i64, v53, v40, v50, v51);
  v73 = v60;
  v60.n128_u64[1] = v75.u64[1];
  v60.n128_u64[0] = vadd_f32(v18, *v75.f32);
  LODWORD(v61) = *(v17 + 24);
  v62.i32[0] = *(v17 + 36);
  *v63.i32 = vmuls_lane_f32(*(v17 + 32), v60.n128_u64[0], 1);
  *&v64 = *v63.i32 + (v60.n128_f32[0] * *(v17 + 28));
  v60.n128_f32[0] = *&v61 + (vmuls_lane_f32(*(v17 + 20), v60.n128_u64[0], 1) + (v60.n128_f32[0] * *(v17 + 16)));
  *v65.f64 = *v62.i32 + *&v64;
  v60.n128_f32[1] = *v62.i32 + *&v64;
  *v68.i64 = CI::BitmapSampler::read(*(v17 + 8), v60, v65, v61, v64, v63, v62, v66, v67);
  v69 = COERCE_FLOAT(vsubq_f32(v74, v75).i32[2]) * 0.5 + 0.5;
  if (v69 <= 1.0)
  {
    v70 = v69;
  }

  else
  {
    v70 = 1.0;
  }

  _NF = v69 < 0.0;
  v71 = 0.0;
  if (!_NF)
  {
    v71 = v70;
  }

  return vmlaq_n_f32(vmulq_n_f32(v73, 1.0 - v71), v68, v71).u64[0];
}

uint64_t CI::sw_interleavedToPlanar3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  v7.f64[0] = *CI::getDC(a1);
  v12 = *(v7.f64 + 1);
  v13 = *(v7.f64 + 1);
  v14.n128_f64[0] = v6;
  v15 = v14.n128_f64[0] + v14.n128_f64[0];
  v16 = *(v7.f64 + 1) + v6 * -2.0;
  if (v14.n128_f64[0] + v14.n128_f64[0] > *(v7.f64 + 1))
  {
    v16 = *(v7.f64 + 1) - v6;
  }

  HIDWORD(v17) = 0x80000000;
  v14.n128_f64[0] = v13 + v14.n128_f64[0] * -0.0;
  if (*(v7.f64 + 1) >= v6)
  {
    v14.n128_f64[0] = v16;
  }

  *&v16 = v14.n128_f64[0];
  v8.i32[0] = *(v5 + 28);
  v14.n128_f32[0] = *(v5 + 24) + ((*(v5 + 20) * *&v16) + (*v7.f64 * *(v5 + 16)));
  LODWORD(v17) = *(v5 + 32);
  v9.i32[0] = *(v5 + 36);
  *&v16 = *&v17 * *&v16;
  *v7.f64 = *v9.i32 + (*&v16 + (*v7.f64 * *v8.i32));
  v14.n128_u32[1] = LODWORD(v7.f64[0]);
  v18 = CI::BitmapSampler::read(*(v5 + 8), v14, v7, v16, v17, v8, v9, v10, v11);
  HIDWORD(v20) = 0;
  if (v12 >= v6)
  {
    if (v15 <= v13)
    {
      LODWORD(v20) = LODWORD(v18);
    }

    else
    {
      LODWORD(v20) = HIDWORD(v18);
    }
  }

  else
  {
    LODWORD(v20) = v19;
  }

  return v20;
}

unint64_t CI::sw_planarToInterleaved3(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = *(a1 + 5);
  v7 = *(v6 + 8);
  LODWORD(a5) = *(a2 + (*(v6 + 32) << 6));
  v41 = a5;
  DC = CI::getDC(a1);
  HIDWORD(v15) = HIDWORD(v41);
  v16.f64[0] = *DC;
  if (COERCE_FLOAT(*DC) < 0.0 || *v16.f64 > *&v41)
  {
    return 0;
  }

  if (*(v16.f64 + 1) < 0.0 || *(v16.f64 + 1) > *&v41)
  {
    return 0;
  }

  v20 = a4 + 80 * v7;
  v9.n128_u32[0] = 0;
  v9.n128_u32[1] = LODWORD(v41);
  v39 = v16;
  v40 = v9;
  v9.n128_u64[0] = vadd_f32(vadd_f32(v9.n128_u64[0], v9.n128_u64[0]), *&v16.f64[0]);
  LODWORD(v15) = *(v20 + 24);
  v12.i32[0] = *(v20 + 36);
  *v11.i32 = vmuls_lane_f32(*(v20 + 32), v9.n128_u64[0], 1);
  *&v10 = *v11.i32 + (v9.n128_f32[0] * *(v20 + 28));
  v9.n128_f32[0] = *&v15 + (vmuls_lane_f32(*(v20 + 20), v9.n128_u64[0], 1) + (v9.n128_f32[0] * *(v20 + 16)));
  *v16.f64 = *v12.i32 + *&v10;
  v9.n128_f32[1] = *v12.i32 + *&v10;
  v21 = CI::BitmapSampler::read(*(v20 + 8), v9, v16, v15, v10, v11, v12, v13, v14);
  v42 = LODWORD(v21);
  v23 = v39;
  v22.n128_u64[1] = v40.n128_u64[1];
  v22.n128_u64[0] = vadd_f32(v40.n128_u64[0], *&v39.f64[0]);
  LODWORD(v24) = *(v20 + 24);
  v25.i32[0] = *(v20 + 36);
  *v26.i32 = vmuls_lane_f32(*(v20 + 32), v22.n128_u64[0], 1);
  *&v27 = *v26.i32 + (v22.n128_f32[0] * *(v20 + 28));
  v22.n128_f32[0] = *&v24 + (vmuls_lane_f32(*(v20 + 20), v22.n128_u64[0], 1) + (v22.n128_f32[0] * *(v20 + 16)));
  *v23.f64 = *v25.i32 + *&v27;
  v22.n128_f32[1] = *v25.i32 + *&v27;
  v30 = CI::BitmapSampler::read(*(v20 + 8), v22, v23, v24, v27, v26, v25, v28, v29);
  v43 = __PAIR64__(LODWORD(v30), v42);
  v31.n128_u64[1] = v40.n128_u64[1];
  v32 = v39;
  v31.n128_u64[0] = vadd_f32(vmul_f32(v40.n128_u64[0], 0), *&v39.f64[0]);
  LODWORD(v33) = *(v20 + 24);
  v34.i32[0] = *(v20 + 36);
  *v35.i32 = vmuls_lane_f32(*(v20 + 32), v31.n128_u64[0], 1);
  *&v36 = *v35.i32 + (v31.n128_f32[0] * *(v20 + 28));
  v31.n128_f32[0] = *&v33 + (vmuls_lane_f32(*(v20 + 20), v31.n128_u64[0], 1) + (v31.n128_f32[0] * *(v20 + 16)));
  *v32.f64 = *v34.i32 + *&v36;
  v31.n128_f32[1] = *v34.i32 + *&v36;
  CI::BitmapSampler::read(*(v20 + 8), v31, v32, v33, v36, v35, v34, v37, v38);
  return v43;
}

uint64_t CI::sw_interleavedToPlanar4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v6 = *(a2 + (*(v4 + 32) << 6));
  v7.f64[0] = *CI::getDC(a1);
  v13 = *(v7.f64 + 1);
  v14 = *(v7.f64 + 1);
  v15 = v6;
  v16 = v15 + v15;
  v17.n128_f64[0] = *(v7.f64 + 1) + v6 * -3.0;
  if (v6 * 3.0 > *(v7.f64 + 1))
  {
    v17.n128_f64[0] = *(v7.f64 + 1) + v6 * -2.0;
  }

  if (v16 > v14)
  {
    v17.n128_f64[0] = v14 - v15;
  }

  v18 = v14 + v15 * -0.0;
  if (*(v7.f64 + 1) < v6)
  {
    v17.n128_f64[0] = v14 + v15 * -0.0;
  }

  *&v18 = v17.n128_f64[0];
  v9.i32[0] = *(v5 + 28);
  v17.n128_f32[0] = *(v5 + 24) + ((*(v5 + 20) * *&v18) + (*v7.f64 * *(v5 + 16)));
  LODWORD(v8) = *(v5 + 32);
  v10.i32[0] = *(v5 + 36);
  *&v18 = *&v8 * *&v18;
  *v7.f64 = *v10.i32 + (*&v18 + (*v7.f64 * *v9.i32));
  v17.n128_u32[1] = LODWORD(v7.f64[0]);
  v19 = CI::BitmapSampler::read(*(v5 + 8), v17, v7, v18, v8, v9, v10, v11, v12);
  if (v13 < v6)
  {
    return v21;
  }

  if (v16 > v14)
  {
    return v20;
  }

  HIDWORD(v22) = 0;
  if (v15 * 3.0 <= v14)
  {
    LODWORD(v22) = LODWORD(v19);
  }

  else
  {
    LODWORD(v22) = HIDWORD(v19);
  }

  return v22;
}

uint64_t CI::sw_planarToInterleaved4(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = *(a1 + 5);
  v7 = *(v6 + 8);
  LODWORD(a5) = *(a2 + (*(v6 + 32) << 6));
  v53 = a5;
  DC = CI::getDC(a1);
  HIDWORD(v15) = HIDWORD(v53);
  v16.f64[0] = *DC;
  if (COERCE_FLOAT(*DC) < 0.0 || *v16.f64 > *&v53)
  {
    return 0;
  }

  if (*(v16.f64 + 1) < 0.0 || *(v16.f64 + 1) > *&v53)
  {
    return 0;
  }

  v20 = a4 + 80 * v7;
  v10.n128_u32[0] = 0;
  v10.n128_u32[1] = LODWORD(v53);
  v52 = v16;
  v54 = v10;
  __asm { FMOV            V0.2S, #3.0 }

  _Q0.n128_u64[0] = vadd_f32(vmul_f32(v10.n128_u64[0], _Q0.n128_u64[0]), *&v16.f64[0]);
  v10.n128_u32[0] = *(v20 + 24);
  v12.i32[0] = *(v20 + 36);
  *v11.i32 = vmuls_lane_f32(*(v20 + 32), _Q0.n128_u64[0], 1);
  *&v15 = *v11.i32 + (_Q0.n128_f32[0] * *(v20 + 28));
  _Q0.n128_f32[0] = v10.n128_f32[0] + (vmuls_lane_f32(*(v20 + 20), _Q0.n128_u64[0], 1) + (_Q0.n128_f32[0] * *(v20 + 16)));
  *v16.f64 = *v12.i32 + *&v15;
  _Q0.n128_f32[1] = *v12.i32 + *&v15;
  *v25.i64 = CI::BitmapSampler::read(*(v20 + 8), _Q0, v16, v10.n128_f64[0], v15, v11, v12, v13, v14);
  v51 = v25;
  v27 = v52;
  v26 = v54;
  v26.n128_u64[0] = vadd_f32(vadd_f32(v26.n128_u64[0], v26.n128_u64[0]), *&v52.f64[0]);
  LODWORD(v28) = *(v20 + 24);
  v29.i32[0] = *(v20 + 36);
  *v30.i32 = vmuls_lane_f32(*(v20 + 32), v26.n128_u64[0], 1);
  *&v31 = *v30.i32 + (v26.n128_f32[0] * *(v20 + 28));
  v26.n128_f32[0] = *&v28 + (vmuls_lane_f32(*(v20 + 20), v26.n128_u64[0], 1) + (v26.n128_f32[0] * *(v20 + 16)));
  *v27.f64 = *v29.i32 + *&v31;
  v26.n128_f32[1] = *v29.i32 + *&v31;
  *v34.i64 = CI::BitmapSampler::read(*(v20 + 8), v26, v27, v28, v31, v30, v29, v32, v33);
  HIDWORD(v36) = HIDWORD(v52.f64[0]);
  *&v35.f64[1] = v54.n128_u64[1];
  *&v35.f64[0] = vadd_f32(v54.n128_u64[0], *&v52.f64[0]);
  *&v36 = vmuls_lane_f32(*(v20 + 20), *&v35.f64[0], 1) + (*v35.f64 * *(v20 + 16));
  LODWORD(v37) = *(v20 + 24);
  v38.i32[0] = *(v20 + 36);
  *v39.i32 = vmuls_lane_f32(*(v20 + 32), *&v35.f64[0], 1);
  v40 = v51;
  v41 = vzip1q_s32(v51, v34);
  v51.i64[0] = v41.n128_u64[0];
  v41.n128_f32[0] = *&v37 + *&v36;
  *v35.f64 = *v38.i32 + (*v39.i32 + (*v35.f64 * *(v20 + 28)));
  v41.n128_u32[1] = LODWORD(v35.f64[0]);
  CI::BitmapSampler::read(*(v20 + 8), v41, v35, v36, v37, v40, v39, v38, v42);
  v43.n128_u64[1] = v54.n128_u64[1];
  v44 = v52;
  v43.n128_u64[0] = vadd_f32(vmul_f32(v54.n128_u64[0], 0), *&v52.f64[0]);
  LODWORD(v45) = *(v20 + 24);
  v46.i32[0] = *(v20 + 36);
  *v47.i32 = vmuls_lane_f32(*(v20 + 32), v43.n128_u64[0], 1);
  *&v48 = *v47.i32 + (v43.n128_f32[0] * *(v20 + 28));
  v43.n128_f32[0] = *&v45 + (vmuls_lane_f32(*(v20 + 20), v43.n128_u64[0], 1) + (v43.n128_f32[0] * *(v20 + 16)));
  *v44.f64 = *v46.i32 + *&v48;
  v43.n128_f32[1] = *v46.i32 + *&v48;
  CI::BitmapSampler::read(*(v20 + 8), v43, v44, v45, v48, v47, v46, v49, v50);
  return v51.i64[0];
}

double CI::sw_pointillize(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = *(v4 + 8);
  v6 = *(v4 + 32);
  v7 = *(v4 + 64);
  v8 = *(v4 + 56);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (v7 == 5)
  {
    v10 = v9;
  }

  v11 = a4 + 80 * v6;
  v12 = a4 + 80 * v5;
  v163 = *v10;
  DC = CI::getDC(a1);
  LODWORD(v14) = *(v12 + 24);
  v15.i32[0] = *(v12 + 36);
  *v16.i32 = vmuls_lane_f32(*(v12 + 32), *DC, 1);
  *&v17 = *v16.i32 + (COERCE_FLOAT(*DC) * *(v12 + 28));
  v18.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v12 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v12 + 16)));
  *v19.f64 = *v15.i32 + *&v17;
  v18.n128_f32[1] = *v15.i32 + *&v17;
  *v22.i64 = CI::BitmapSampler::read(*(v12 + 8), v18, v19, v14, v17, v16, v15, v20, v21);
  v159 = v22;
  v23.i32[0] = vdup_laneq_s32(v163, 2).u32[0];
  v160 = v23.i32[0];
  v23.i32[1] = v163.i32[2];
  v157 = v23;
  v25 = *CI::getDC(v24);
  v26.n128_u64[1] = v163.u64[1];
  v27 = vmul_laneq_f32(v25, v163, 3);
  v28 = vadd_f32(vadd_f32(*v163.f32, 0x3F0000003F000000), vrndm_f32(vadd_f32(v27, 0x3F0000003F000000)));
  v29 = vdup_n_s32(0x3B800000u);
  *&v30.f64[0] = vrndm_f32(vmul_f32(v28, v29));
  v31 = vdup_n_s32(0xC3800000);
  v150 = v31;
  v26.n128_u64[0] = vmla_f32(v28, v31, *&v30.f64[0]);
  v31.i32[0] = *(v11 + 24);
  v32.i32[0] = *(v11 + 36);
  *v33.i32 = vmuls_lane_f32(*(v11 + 32), v26.n128_u64[0], 1);
  *&v34 = *v33.i32 + (v26.n128_f32[0] * *(v11 + 28));
  v26.n128_f32[0] = v31.f32[0] + (vmuls_lane_f32(*(v11 + 20), v26.n128_u64[0], 1) + (v26.n128_f32[0] * *(v11 + 16)));
  *v30.f64 = *v32.i32 + *&v34;
  v26.n128_f32[1] = *v32.i32 + *&v34;
  v37.n128_f64[0] = CI::BitmapSampler::read(*(v11 + 8), v26, v30, *&v31, v34, v33, v32, v35, v36);
  v153 = v37;
  *v38.i8 = vadd_f32(vmul_laneq_f32(vadd_f32(vrndm_f32(vadd_f32(v27, 0xBF000000BF000000)), 0x3F0000003F000000), v163, 2), 0x3F0000003F000000);
  v39 = vadd_f32(v157, *v38.i8);
  v40 = vdup_n_s32(0x3F266666u);
  v149 = v40;
  *&v41.f64[0] = vmul_f32(vmul_laneq_f32(vadd_f32(v37.n128_u64[0], 0xBF000000BF000000), v163, 2), v40);
  v37.n128_u64[0] = vadd_f32(v39, *&v41.f64[0]);
  *v41.f64 = vmuls_lane_f32(*(v12 + 20), v37.n128_u64[0], 1) + (v37.n128_f32[0] * *(v12 + 16));
  v40.i32[0] = *(v12 + 24);
  v42.i32[0] = *(v12 + 36);
  *v38.i32 = vmuls_lane_f32(*(v12 + 32), v37.n128_u64[0], 1);
  v39.f32[0] = *v38.i32 + (v37.n128_f32[0] * *(v12 + 28));
  v37.n128_u64[0] = vsub_f32(v37.n128_u64[0], v25);
  v37.n128_u64[0] = vmul_f32(v37.n128_u64[0], v37.n128_u64[0]);
  v156 = v37;
  v37.n128_f32[0] = v40.f32[0] + *v41.f64;
  *v41.f64 = *v42.i32 + v39.f32[0];
  v37.n128_f32[1] = *v42.i32 + v39.f32[0];
  *v45.i64 = CI::BitmapSampler::read(*(v12 + 8), v37, v41, *&v40, *&v39, v38, v42, v43, v44);
  v46.i32[1] = v153.n128_i32[1];
  *v46.i32 = (v153.n128_f32[2] + -0.5) * 0.1;
  v47 = vaddq_f32(v45, vmulq_laneq_f32(vdupq_lane_s32(v46, 0), v45, 3));
  v47.i32[3] = v45.i32[3];
  v158 = v47;
  v47.i64[1] = v163.i64[1];
  v47.i32[0] = 0;
  v47.i32[1] = vextq_s8(v163, v163, 8uLL).u32[0];
  v154 = v47;
  v49 = *CI::getDC(v48);
  v50.n128_u64[1] = v163.u64[1];
  v51 = vmul_laneq_f32(v49, v163, 3);
  v52 = vadd_f32(vadd_f32(*v163.f32, COERCE_FLOAT32X2_T(--0.0000305175998)), vrndm_f32(vadd_f32(v51, 0x3F0000003F000000)));
  *&v53.f64[0] = vrndm_f32(vmul_f32(v52, v29));
  v50.n128_u64[0] = vmla_f32(v52, v150, *&v53.f64[0]);
  LODWORD(v54) = *(v11 + 24);
  v55.i32[0] = *(v11 + 36);
  *v56.i32 = vmuls_lane_f32(*(v11 + 32), v50.n128_u64[0], 1);
  *&v57 = *v56.i32 + (v50.n128_f32[0] * *(v11 + 28));
  v50.n128_f32[0] = *&v54 + (vmuls_lane_f32(*(v11 + 20), v50.n128_u64[0], 1) + (v50.n128_f32[0] * *(v11 + 16)));
  *v53.f64 = *v55.i32 + *&v57;
  v50.n128_f32[1] = *v55.i32 + *&v57;
  v60.n128_f64[0] = CI::BitmapSampler::read(*(v11 + 8), v50, v53, v54, v57, v56, v55, v58, v59);
  v147 = v60;
  HIDWORD(v61) = v163.i32[1];
  *&v62.f64[1] = v154.i64[1];
  v63 = vadd_f32(*v154.f32, vadd_f32(vmul_laneq_f32(vadd_f32(vrndm_f32(vadd_f32(v51, 0xBF000000BF000000)), 0x3F0000003F000000), v163, 2), 0x3F0000003F000000));
  *&v62.f64[0] = vmul_f32(vmul_laneq_f32(vadd_f32(v60.n128_u64[0], 0xBF000000BF000000), v163, 2), v149);
  v60.n128_u64[0] = vadd_f32(v63, *&v62.f64[0]);
  *v62.f64 = vmuls_lane_f32(*(v12 + 20), v60.n128_u64[0], 1) + (v60.n128_f32[0] * *(v12 + 16));
  LODWORD(v61) = *(v12 + 24);
  v64.i32[0] = *(v12 + 36);
  *v65.i32 = vmuls_lane_f32(*(v12 + 32), v60.n128_u64[0], 1);
  v63.f32[0] = *v65.i32 + (v60.n128_f32[0] * *(v12 + 28));
  v60.n128_u64[0] = vsub_f32(v60.n128_u64[0], v49);
  v152 = vmul_f32(v60.n128_u64[0], v60.n128_u64[0]);
  v60.n128_f32[0] = *&v61 + *v62.f64;
  *v62.f64 = *v64.i32 + v63.f32[0];
  v60.n128_f32[1] = *v64.i32 + v63.f32[0];
  *v68.i64 = CI::BitmapSampler::read(*(v12 + 8), v60, v62, v61, *&v63, v65, v64, v66, v67);
  v69.i32[1] = v147.n128_i32[1];
  *v69.i32 = (v147.n128_f32[2] + -0.5) * 0.1;
  v70 = vaddq_f32(v68, vmulq_laneq_f32(vdupq_lane_s32(v69, 0), v68, 3));
  v70.i32[3] = v68.i32[3];
  v155 = v70;
  v72 = *CI::getDC(v71);
  v73.n128_u64[1] = v163.u64[1];
  v74 = vmul_laneq_f32(v72, v163, 3);
  v75 = vadd_f32(vadd_f32(*v163.f32, COERCE_FLOAT32X2_T(-0.0000305175853)), vrndm_f32(vadd_f32(v74, 0x3F0000003F000000)));
  *&v76.f64[0] = vrndm_f32(vmul_f32(v75, v29));
  v73.n128_u64[0] = vmla_f32(v75, v150, *&v76.f64[0]);
  LODWORD(v77) = *(v11 + 24);
  v78.i32[0] = *(v11 + 36);
  *v79.i32 = vmuls_lane_f32(*(v11 + 32), v73.n128_u64[0], 1);
  *&v80 = *v79.i32 + (v73.n128_f32[0] * *(v11 + 28));
  v73.n128_f32[0] = *&v77 + (vmuls_lane_f32(*(v11 + 20), v73.n128_u64[0], 1) + (v73.n128_f32[0] * *(v11 + 16)));
  *v76.f64 = *v78.i32 + *&v80;
  v73.n128_f32[1] = *v78.i32 + *&v80;
  v83.n128_f64[0] = CI::BitmapSampler::read(*(v11 + 8), v73, v76, v77, v80, v79, v78, v81, v82);
  v148 = v83;
  HIDWORD(v84) = v163.i32[1];
  *v85.i8 = vadd_f32(vmul_laneq_f32(vadd_f32(vrndm_f32(vadd_f32(v74, 0xBF000000BF000000)), 0x3F0000003F000000), v163, 2), 0x3F0000003F000000);
  v86 = vadd_f32(v160, *v85.i8);
  *&v87.f64[0] = vmul_f32(vmul_laneq_f32(vadd_f32(v83.n128_u64[0], 0xBF000000BF000000), v163, 2), v149);
  v83.n128_u64[0] = vadd_f32(v86, *&v87.f64[0]);
  *v87.f64 = vmuls_lane_f32(*(v12 + 20), v83.n128_u64[0], 1) + (v83.n128_f32[0] * *(v12 + 16));
  LODWORD(v84) = *(v12 + 24);
  v88.i32[0] = *(v12 + 36);
  *v85.i32 = vmuls_lane_f32(*(v12 + 32), v83.n128_u64[0], 1);
  v86.f32[0] = *v85.i32 + (v83.n128_f32[0] * *(v12 + 28));
  v83.n128_u64[0] = vsub_f32(v83.n128_u64[0], v72);
  v89 = vmul_f32(v83.n128_u64[0], v83.n128_u64[0]);
  v83.n128_f32[0] = *&v84 + *v87.f64;
  *v87.f64 = *v88.i32 + v86.f32[0];
  v83.n128_f32[1] = *v88.i32 + v86.f32[0];
  *v92.i64 = CI::BitmapSampler::read(*(v12 + 8), v83, v87, v84, *&v86, v85, v88, v90, v91);
  v93.i32[1] = v148.n128_i32[1];
  *v93.i32 = (v148.n128_f32[2] + -0.5) * 0.1;
  v94 = vaddq_f32(v92, vmulq_laneq_f32(vdupq_lane_s32(v93, 0), v92, 3));
  v94.i32[3] = v92.i32[3];
  v161 = v94;
  v96 = *CI::getDC(v95);
  v97.n128_u64[1] = v163.u64[1];
  v98 = vmul_laneq_f32(v96, v163, 3);
  v99 = vadd_f32(vadd_f32(*v163.f32, 0xBF000000BF000000), vrndm_f32(vadd_f32(v98, 0x3F0000003F000000)));
  *&v100.f64[0] = vrndm_f32(vmul_f32(v99, v29));
  v97.n128_u64[0] = vmla_f32(v99, v150, *&v100.f64[0]);
  LODWORD(v101) = *(v11 + 24);
  v102.i32[0] = *(v11 + 36);
  *v103.i32 = vmuls_lane_f32(*(v11 + 32), v97.n128_u64[0], 1);
  *&v104 = *v103.i32 + (v97.n128_f32[0] * *(v11 + 28));
  v97.n128_f32[0] = *&v101 + (vmuls_lane_f32(*(v11 + 20), v97.n128_u64[0], 1) + (v97.n128_f32[0] * *(v11 + 16)));
  *v100.f64 = *v102.i32 + *&v104;
  v97.n128_f32[1] = *v102.i32 + *&v104;
  *v107.i64 = CI::BitmapSampler::read(*(v11 + 8), v97, v100, v101, v104, v103, v102, v105, v106);
  v151 = v107;
  *&v110.f64[0] = vadd_f32(vadd_f32(vmul_laneq_f32(vadd_f32(vrndm_f32(vadd_f32(v98, 0xBF000000BF000000)), 0x3F0000003F000000), v163, 2), 0x3F0000003F000000), vmul_f32(vmul_laneq_f32(vadd_f32(*v107.f32, 0xBF000000BF000000), v163, 2), v149));
  *v107.f32 = vsub_f32(*&v110.f64[0], v96);
  *v107.f32 = vmul_f32(*v107.f32, *v107.f32);
  *v111.f32 = vzip1_s32(*v107.f32, v89);
  v111.i64[1] = __PAIR64__(v156.n128_u32[0], v152.u32[0]);
  v112.i64[1] = v156.n128_i64[1];
  *v107.f32 = vzip2_s32(*v107.f32, v89);
  v107.i64[1] = __PAIR64__(v156.n128_u32[1], vdup_lane_s32(v152, 1).u32[0]);
  v113 = vdivq_f32(vmulq_laneq_f32(vsqrtq_f32(vaddq_f32(v111, v107)), v163, 3), vdupq_n_s32(0xBF35C28F));
  v114 = vcvt_hight_f64_f32(v113);
  __asm { FMOV            V3.2D, #1.0 }

  v120 = vaddq_f64(vcvtq_f64_f32(*v113.f32), _Q3);
  v121 = vaddq_f64(v114, _Q3);
  __asm { FMOV            V3.2D, #3.0 }

  v123 = vmulq_f64(v121, _Q3);
  v124 = vmulq_f64(v120, _Q3);
  v124.n128_u64[0] = vcvt_f32_f64(v124);
  v125 = vcvt_hight_f32_f64(v124.n128_u64[0], v123);
  v126 = vcvt_f32_f64(v123);
  v127 = v126.f32[1];
  if (v126.f32[1] > 1.0)
  {
    v127 = 1.0;
  }

  v128 = COERCE_DOUBLE(vmovn_s32(vcltzq_f32(v125)));
  v129 = v127;
  v112.i64[0] = 0;
  if (BYTE6(v128))
  {
    v129 = 0.0;
  }

  v108.i64[0] = 3.0;
  v109.i64[0] = -2.0;
  v130 = (v129 * -2.0 + 3.0) * v129;
  v131 = v130 * v129;
  *&v130 = 1.0 - v131;
  v132 = vmlaq_n_f32(vmulq_laneq_f32(vdupq_lane_s32(*&v130, 0), v159, 3), v158, v131);
  if (v126.f32[0] > 1.0)
  {
    v126.f32[0] = 1.0;
  }

  v133 = v126.f32[0];
  if (BYTE4(v128))
  {
    v133 = 0.0;
  }

  v134 = (v133 * -2.0 + 3.0) * v133 * v133;
  v135 = vmlaq_n_f32(vmulq_n_f32(v132, 1.0 - v134), v155, v134);
  v136 = v124.n128_f32[1];
  if (v124.n128_f32[1] > 1.0)
  {
    v136 = 1.0;
  }

  v137 = v136;
  if (BYTE2(v128))
  {
    v137 = 0.0;
  }

  v138 = (v137 * -2.0 + 3.0) * v137 * v137;
  v139 = vmulq_n_f32(v135, 1.0 - v138);
  v140 = v161;
  v141 = vmlaq_n_f32(v139, v161, v138);
  if (v124.n128_f32[0] > 1.0)
  {
    v124.n128_f32[0] = 1.0;
  }

  v124.n128_f64[0] = v124.n128_f32[0];
  if (LOBYTE(v128))
  {
    v124.n128_f64[0] = 0.0;
  }

  v142 = (v124.n128_f64[0] * -2.0 + 3.0) * v124.n128_f64[0];
  v124.n128_f32[0] = v142 * v124.n128_f64[0];
  v162 = v124.n128_f32[0];
  v164 = v141;
  LODWORD(v128) = *(v12 + 28);
  v124.n128_f32[0] = *(v12 + 24) + (vmuls_lane_f32(*(v12 + 20), *&v110.f64[0], 1) + (*v110.f64 * *(v12 + 16)));
  v140.i32[0] = *(v12 + 36);
  *&v142 = vmuls_lane_f32(*(v12 + 32), *&v110.f64[0], 1);
  *v110.f64 = *v140.i32 + (*&v142 + (*v110.f64 * *&v128));
  v124.n128_u32[1] = LODWORD(v110.f64[0]);
  *v143.i64 = CI::BitmapSampler::read(*(v12 + 8), v124, v110, v142, v128, v140, v112, v108, v109);
  v144.i32[1] = v151.i32[1];
  *v144.i32 = (v151.f32[2] + -0.5) * 0.1;
  v145 = vaddq_f32(v143, vmulq_laneq_f32(vdupq_lane_s32(v144, 0), v143, 3));
  v145.i32[3] = v143.i32[3];
  *&result = vmlaq_n_f32(vmulq_n_f32(v164, 1.0 - v162), v145, v162).u64[0];
  return result;
}

void sub_19CD97EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19CD9913C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n64 CI::sw_xSmooth(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 80 * *(*(a1 + 5) + 8);
  v12 = *CI::getDC(a1);
  v13 = -4;
  v14 = 0.0;
  LODWORD(v15.f64[0]) = 1120403456;
  do
  {
    v17 = v15;
    HIDWORD(v15.f64[0]) = 0;
    v5.n128_u64[0] = vadd_f32(v12, COERCE_UNSIGNED_INT(v13));
    LODWORD(v6) = *(v4 + 24);
    v9.i32[0] = *(v4 + 36);
    *v8.i32 = vmuls_lane_f32(*(v4 + 32), v5.n128_u64[0], 1);
    *&v7 = *v8.i32 + (v5.n128_f32[0] * *(v4 + 28));
    v5.n128_f32[0] = *&v6 + (vmuls_lane_f32(*(v4 + 20), v5.n128_u64[0], 1) + (v5.n128_f32[0] * *(v4 + 16)));
    *v15.f64 = *v9.i32 + *&v7;
    v5.n128_f32[1] = *v9.i32 + *&v7;
    v5.n128_f64[0] = CI::BitmapSampler::read(*(v4 + 8), v5, v15, v6, v7, v8, v9, v10, v11);
    v6 = v14;
    v14 = v14 + vmulq_f32(v5, v5).f32[0] * 0.111111111;
    v15 = v17;
    *v15.f64 = fminf(*v17.f64, v5.n128_f32[0]);
    ++v13;
  }

  while (v13 != 5);
  result.n64_f32[0] = sqrtf(v14);
  result.n64_u32[1] = LODWORD(v15.f64[0]);
  return result;
}

float CI::sw_ySmooth(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 5);
  v6 = *(v5 + 8);
  v7 = *(v5 + 32);
  v8 = *(v5 + 64);
  v9 = *(v5 + 56);
  v10 = (a3 + 16 * v9);
  v11 = (a2 + (v9 << 6));
  if (v8 == 5)
  {
    v11 = v10;
  }

  v12 = a4 + 80 * v6;
  v48 = *v11;
  v20 = *CI::getDC(a1);
  v21 = -4;
  v22 = 0.0;
  v23.n128_u32[0] = 1120403456;
  v49 = v23;
  do
  {
    LODWORD(v13.f64[0]) = 0;
    *(v13.f64 + 1) = v21;
    v23.n128_u64[0] = vadd_f32(v20, *&v13.f64[0]);
    LODWORD(v14) = *(v12 + 24);
    v17.i32[0] = *(v12 + 36);
    *v16.i32 = vmuls_lane_f32(*(v12 + 32), v23.n128_u64[0], 1);
    *&v15 = *v16.i32 + (v23.n128_f32[0] * *(v12 + 28));
    v23.n128_f32[0] = *&v14 + (vmuls_lane_f32(*(v12 + 20), v23.n128_u64[0], 1) + (v23.n128_f32[0] * *(v12 + 16)));
    *v13.f64 = *v17.i32 + *&v15;
    v23.n128_f32[1] = *v17.i32 + *&v15;
    v23.n128_f64[0] = CI::BitmapSampler::read(*(v12 + 8), v23, v13, v14, v15, v16, v17, v18, v19);
    v14 = v22;
    v22 = v22 + vmulq_f32(v23, v23).f32[0] * 0.111111111;
    v13 = v49;
    *v13.f64 = fminf(*v49.f64, v23.n128_f32[1]);
    v49 = v13;
    ++v21;
  }

  while (v21 != 5);
  v25 = a4 + 80 * v7;
  DC = CI::getDC(v24);
  LODWORD(v27) = *(v25 + 24);
  v28.i32[0] = *(v25 + 36);
  *v29.i32 = vmuls_lane_f32(*(v25 + 32), *DC, 1);
  *&v30 = *v29.i32 + (COERCE_FLOAT(*DC) * *(v25 + 28));
  v31.n128_f32[0] = *&v27 + (vmuls_lane_f32(*(v25 + 20), *DC, 1) + (COERCE_FLOAT(*DC) * *(v25 + 16)));
  *v32.f64 = *v28.i32 + *&v30;
  v31.n128_f32[1] = *v28.i32 + *&v30;
  v35 = CI::BitmapSampler::read(*(v25 + 8), v31, v32, v27, v30, v29, v28, v33, v34);
  v36 = vdup_lane_s32(*&v35, 0);
  _Q4 = v48;
  v36.i32[0] = LODWORD(v49.f64[0]);
  v38 = vextq_s8(_Q4, _Q4, 8uLL).u64[0];
  _Q4.i32[0] = HIDWORD(v38);
  v39 = vdiv_f32(vsub_f32(v36, __PAIR64__(v48.u32[0], v38)), vsub_f32(*_Q4.i8, __PAIR64__(v48.u32[0], v38)));
  __asm { FMOV            V3.2S, #1.0 }

  v45 = vbic_s8(vbsl_s8(vcgt_f32(v39, _D3), _D3, v39), vcltz_f32(v39));
  __asm { FMOV            V4.2S, #3.0 }

  v46 = vmul_f32(vmul_f32(v45, v45), vmla_f32(*_Q4.i8, 0xC0000000C0000000, v45));
  v46.f32[0] = vmul_lane_f32(v46, v46, 1).f32[0];
  return (sqrtf(v22) * v46.f32[0]) + (*&v35 * (1.0 - v46.f32[0]));
}

double CI::sw_CIPortraitBlurDir(CI *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 5);
  v5 = a4 + 80 * *(v4 + 8);
  v90 = *(a2 + (*(v4 + 32) << 6));
  v6 = vext_s8(*v90.i8, *&vextq_s8(v90, v90, 8uLL), 4uLL);
  v7.f64[0] = *CI::getDC(a1);
  v97 = v7;
  __asm { FMOV            V0.2S, #3.0 }

  v13 = vmul_f32(v6, _D0);
  v14.n128_u64[0] = vsub_f32(*&v7.f64[0], v13);
  LODWORD(v15) = *(v5 + 24);
  v16.i32[0] = *(v5 + 36);
  *v17.i32 = vmuls_lane_f32(*(v5 + 32), v14.n128_u64[0], 1);
  *&v18 = *v17.i32 + (v14.n128_f32[0] * *(v5 + 28));
  v14.n128_f32[0] = *&v15 + (vmuls_lane_f32(*(v5 + 20), v14.n128_u64[0], 1) + (v14.n128_f32[0] * *(v5 + 16)));
  *v7.f64 = *v16.i32 + *&v18;
  v14.n128_f32[1] = *v16.i32 + *&v18;
  v21.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v14, v7, v15, v18, v17, v16, v19, v20);
  v96 = v21;
  v22 = vadd_f32(v6, v6);
  v21.n128_u64[1] = v97.u64[1];
  v21.n128_u64[0] = vsub_f32(*v97.i8, v22);
  LODWORD(v23) = *(v5 + 24);
  v24.i32[0] = *(v5 + 36);
  *v25.i32 = vmuls_lane_f32(*(v5 + 32), v21.n128_u64[0], 1);
  *&v26 = *v25.i32 + (v21.n128_f32[0] * *(v5 + 28));
  v21.n128_f32[0] = *&v23 + (vmuls_lane_f32(*(v5 + 20), v21.n128_u64[0], 1) + (v21.n128_f32[0] * *(v5 + 16)));
  *v27.f64 = *v24.i32 + *&v26;
  v21.n128_f32[1] = *v24.i32 + *&v26;
  v30.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v21, v27, v23, v26, v25, v24, v28, v29);
  v95 = v30;
  v30.n128_u64[1] = v97.u64[1];
  v30.n128_u64[0] = vsub_f32(*v97.i8, v6);
  LODWORD(v31) = *(v5 + 24);
  v32.i32[0] = *(v5 + 36);
  *v33.i32 = vmuls_lane_f32(*(v5 + 32), v30.n128_u64[0], 1);
  *&v34 = *v33.i32 + (v30.n128_f32[0] * *(v5 + 28));
  v30.n128_f32[0] = *&v31 + (vmuls_lane_f32(*(v5 + 20), v30.n128_u64[0], 1) + (v30.n128_f32[0] * *(v5 + 16)));
  *v35.f64 = *v32.i32 + *&v34;
  v30.n128_f32[1] = *v32.i32 + *&v34;
  v38.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v30, v35, v31, v34, v33, v32, v36, v37);
  v94 = v38;
  LODWORD(v39) = *(v5 + 28);
  v38.n128_f32[0] = *(v5 + 24) + (vmuls_lane_f32(*(v5 + 20), *v97.i8, 1) + (*v97.i32 * *(v5 + 16)));
  LODWORD(v40) = *(v5 + 36);
  *v41.f64 = *&v40 + (vmuls_lane_f32(*(v5 + 32), *v97.i8, 1) + (*v97.i32 * *&v39));
  v38.n128_u32[1] = LODWORD(v41.f64[0]);
  v45.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v38, v41, v39, v40, v97, v42, v43, v44);
  v93 = v45;
  v45.n128_u64[1] = v97.u64[1];
  v45.n128_u64[0] = vadd_f32(v6, *v97.i8);
  LODWORD(v46) = *(v5 + 24);
  v47.i32[0] = *(v5 + 36);
  *v48.i32 = vmuls_lane_f32(*(v5 + 32), v45.n128_u64[0], 1);
  *&v49 = *v48.i32 + (v45.n128_f32[0] * *(v5 + 28));
  v45.n128_f32[0] = *&v46 + (vmuls_lane_f32(*(v5 + 20), v45.n128_u64[0], 1) + (v45.n128_f32[0] * *(v5 + 16)));
  *v50.f64 = *v47.i32 + *&v49;
  v45.n128_f32[1] = *v47.i32 + *&v49;
  v53.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v45, v50, v46, v49, v48, v47, v51, v52);
  v92 = v53;
  v53.n128_u64[1] = v97.u64[1];
  v53.n128_u64[0] = vadd_f32(v22, *v97.i8);
  LODWORD(v54) = *(v5 + 24);
  v55.i32[0] = *(v5 + 36);
  *v56.i32 = vmuls_lane_f32(*(v5 + 32), v53.n128_u64[0], 1);
  *&v57 = *v56.i32 + (v53.n128_f32[0] * *(v5 + 28));
  v53.n128_f32[0] = *&v54 + (vmuls_lane_f32(*(v5 + 20), v53.n128_u64[0], 1) + (v53.n128_f32[0] * *(v5 + 16)));
  *v58.f64 = *v55.i32 + *&v57;
  v53.n128_f32[1] = *v55.i32 + *&v57;
  v61.n128_f64[0] = CI::BitmapSampler::read(*(v5 + 8), v53, v58, v54, v57, v56, v55, v59, v60);
  v91 = v61;
  v61.n128_u64[1] = v97.u64[1];
  v61.n128_u64[0] = vadd_f32(v13, *v97.i8);
  LODWORD(v62) = *(v5 + 24);
  v63.i32[0] = *(v5 + 36);
  *v64.i32 = vmuls_lane_f32(*(v5 + 32), v61.n128_u64[0], 1);
  *&v65 = *v64.i32 + (v61.n128_f32[0] * *(v5 + 28));
  v61.n128_f32[0] = *&v62 + (vmuls_lane_f32(*(v5 + 20), v61.n128_u64[0], 1) + (v61.n128_f32[0] * *(v5 + 16)));
  *v66.f64 = *v63.i32 + *&v65;
  v61.n128_f32[1] = *v63.i32 + *&v65;
  *v69.i64 = CI::BitmapSampler::read(*(v5 + 8), v61, v66, v62, v65, v64, v63, v67, v68);
  v98 = v69;
  v87 = vmulq_f32(v96, v96);
  v86 = vmulq_f32(v94, v94);
  v85 = vmulq_f32(v92, v92);
  v88 = vmulq_f32(v69, v69);
  v89 = vmulq_f32(v93, v93);
  v69.f32[0] = fmaxf(vmuls_lane_f32(*v90.i32, v89, 3), 0.01);
  v69.f32[0] = -1.0 / ((v69.f32[0] + v69.f32[0]) * v69.f32[0]);
  _S0 = exp(v69.f32[0]);
  _S1 = ((_S0 * _S0) * _S0) * _S0;
  _S2 = (_S1 * _S1) * _S0;
  _V16.S[3] = v85.i32[3];
  _V7.S[3] = v86.i32[3];
  _V5.S[3] = v87.i32[3];
  __asm
  {
    FMLA            S3, S2, V5.S[3]
    FMLA            S3, S0, V7.S[3]
    FMLA            S3, S0, V16.S[3]
  }

  _Q17 = vmulq_f32(v91, v91);
  _V18.S[3] = v88.i32[3];
  __asm
  {
    FMLA            S3, S1, V17.S[3]
    FMLA            S3, S2, V18.S[3]
  }

  v83 = 1.0 / _S3;
  *&result = vaddq_f32(vmulq_n_f32(v98, vmuls_lane_f32(_S2 * v83, v88, 3)), vaddq_f32(vmulq_n_f32(v91, vmuls_lane_f32(_S1 * v83, _Q17, 3)), vaddq_f32(vmulq_n_f32(v92, vmuls_lane_f32(v83 * _S0, v85, 3)), vaddq_f32(vmulq_n_f32(v93, vmuls_lane_f32(v83, v89, 3)), vaddq_f32(vmulq_n_f32(v94, vmuls_lane_f32(v83 * _S0, v86, 3)), vaddq_f32(vmulq_n_f32(v95, vmuls_lane_f32(_S1 * v83, vmulq_f32(v95, v95), 3)), vmulq_n_f32(v96, vmuls_lane_f32(_S2 * v83, v87, 3)))))))).u64[0];
  return result;
}

unint64_t CI::sw_CIPortraitBlurBlendWithMaskFromAlpha(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v11;
  v17 = (vmuls_lane_f32(vmuls_lane_f32(vmuls_lane_f32(COERCE_FLOAT(*v15), *v15, 3), *v11, 3), *v11, 3) - COERCE_FLOAT(HIDWORD(v15->i64[0]))) / COERCE_FLOAT(v15->i64[1]);
  if (v17 <= 1.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = v17 < 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v20 = v18;
  }

  v16.f32[3] = v20;
  return vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v20), v16, v20).u64[0];
}

uint64_t CI::sw_CIBlurPreProcess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = a3 + 16 * v4;
  v6 = a2 + (v4 << 6);
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return *v7;
}

void sub_19CD9BF04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19CD9C510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t nRingsFromTuningParameters(NSDictionary *a1, float a2, uint64_t a3, NSNumber *a4)
{
  SDOFRenderingValue(&cfstr_Nrings.isa, a1);
  v9 = v8;
  SDOFRenderingValue(&cfstr_Minimumsimulat.isa, a1);
  v11 = v10;
  SDOFSimpleLensModelValue(@"maximumSimulatedAperture", a1);
  v13 = v12;
  SDOFSimpleLensModelValue(@"defaultSimulatedAperture", a1);
  v15 = v14;
  [(NSNumber *)a4 floatValue];
  v17 = v16;
  if (a2 <= 1.0)
  {
    v18 = a2;
  }

  else
  {
    v18 = 1.0;
  }

  v19 = v18;
  if (v18 >= 1.0 || v11 <= 0.0 || v13 <= 0.0 || v15 <= 0.0)
  {
    if (v19 < 0.5)
    {
      v19 = 0.5;
    }

    v23 = v19 * v9;
    v24 = ceilf(v23);
  }

  else
  {
    if (v17 >= v15)
    {
      v25 = 0.699999988 / (v13 - v15) * (v17 - v15) + 1.0;
      v21 = pow(v19, 0.2);
      v22 = v9 * v25;
    }

    else
    {
      v20 = (((v17 - v11) / (v15 - v11)) * -0.5) + 1.0;
      v21 = pow(v19, 0.0833333333);
      v22 = v20 * v9;
    }

    v24 = v22 * v21;
  }

  v26 = v24;
  if (v24 <= 4)
  {
    v26 = 4;
  }

  if (a3 != 2)
  {
    if (v9 == 4)
    {
      v27 = 2;
    }

    else
    {
      v27 = 4;
    }

    if (a3 == 1)
    {
      return v27;
    }

    else
    {
      return v26;
    }
  }

  return v9;
}

double CI::sw_sparserendering_add_noise(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 64);
  v13 = *(v3 + 56);
  v14 = (a3 + 16 * v13);
  v15 = (a2 + (v13 << 6));
  if (v12 == 5)
  {
    v15 = v14;
  }

  v16 = *v15;
  v17 = *v11 * 10.0 + -5.0;
  v18 = vmulq_f32(*v7, xmmword_19CF23D60);
  *v16.i32 = vmuls_lane_f32((1.0 - COERCE_FLOAT(*v15)) + ((v18.f32[2] + vaddv_f32(*v18.f32)) * COERCE_FLOAT(*v15)), *v15, 1) * v17;
  v19 = vaddq_f32(*v7, vdupq_lane_s32(v16, 0));
  v19.i32[3] = 0;
  v20 = vmaxnmq_f32(v19, 0);
  v20.i32[3] = 0;
  v21 = vminnmq_f32(v20, xmmword_19CF23BD0);
  v21.i32[3] = HIDWORD(*v7);
  v22 = vmaxnmq_f32(v21, 0);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(v22, _Q1).u64[0];
  return result;
}

unint64_t CI::sw_CIPortraitBlurBlendWithMaskMatteFromAlpha(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 88);
  v17 = *(v3 + 80);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (v16 == 5)
  {
    v19 = v18;
  }

  v20 = *v11;
  v21 = vmuls_lane_f32(vmuls_lane_f32(COERCE_FLOAT(*v19), *v11, 3), *v11, 3);
  v22 = (v21 - COERCE_FLOAT(HIDWORD(v19->i64[0]))) / COERCE_FLOAT(v19->i64[1]);
  if (v22 <= 1.0)
  {
    v23 = (v21 - COERCE_FLOAT(HIDWORD(v19->i64[0]))) / COERCE_FLOAT(v19->i64[1]);
  }

  else
  {
    v23 = 1.0;
  }

  v24 = v22 < 0.0;
  v25 = 0.0;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = vmuls_lane_f32(*v15, *v19, 3);
  if (v26 <= 1.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1.0;
  }

  v28 = 1.0 - v27;
  if (v26 >= 0.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = 1.0;
  }

  v20.i32[3] = fminf(v25, v29);
  return vmlaq_n_f32(vmulq_n_f32(*v7, 1.0 - v20.f32[3]), v20, v20.f32[3]).u64[0];
}

uint64_t CI::sw_CIPortraitBlurBlendWithMaskMatteFromAlphaYCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *v19;
  v21 = vmuls_lane_f32(vmuls_lane_f32(COERCE_FLOAT(*v19), *v11, 3), *v11, 3);
  v22 = (v21 - COERCE_FLOAT(HIDWORD(v19->i64[0]))) / COERCE_FLOAT(v19->i64[1]);
  if (v22 <= 1.0)
  {
    v23 = (v21 - COERCE_FLOAT(HIDWORD(v19->i64[0]))) / COERCE_FLOAT(v19->i64[1]);
  }

  else
  {
    v23 = 1.0;
  }

  if (v22 < 0.0)
  {
    v23 = 0.0;
  }

  v24 = *v15 * *(a2 + (*(v3 + 104) << 6));
  if (v24 <= 1.0)
  {
    v25 = *v15 * *(a2 + (*(v3 + 104) << 6));
  }

  else
  {
    v25 = 1.0;
  }

  v26 = 1.0 - v25;
  if (v24 >= 0.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 1.0;
  }

  v28 = fminf(v23, v27);
  v29 = vmlaq_laneq_f32(vmulq_n_f32(*v7, 1.0 - COERCE_FLOAT(HIDWORD(*v11))), *v11, *v11, 3);
  v30 = v29.i64[0];
  if (v28 < 1.0)
  {
    v31 = vmuls_lane_f32(*v15, v20, 3);
    if (v31 <= 1.0)
    {
      v32 = v31;
    }

    else
    {
      v32 = 1.0;
    }

    v33 = 1.0 - v32;
    if (v31 >= 0.0)
    {
      v20.f32[0] = v33;
    }

    else
    {
      v20.f32[0] = 1.0;
    }

    v20.f32[0] = fminf(v23, v20.f32[0]);
    v20.f32[1] = v28;
    v20.f32[2] = v28;
    return vmlaq_n_f32(vmulq_n_f32(v20, 1.0 - v28), v29, v28).u64[0];
  }

  return v30;
}

uint64_t dictionaryDeepCopy(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v3)
    {
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:{objc_msgSend(a1, "allKeys")}];
    }

    v4 = v3;
    v5 = *v15;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = [a1 valueForKey:*(*(&v14 + 1) + 8 * v6)];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = dictionaryDeepCopy(v7);
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = arrayDeepCopy(v7);
LABEL_11:
          v9 = v8;
          v10 = v2;
LABEL_12:
          [v10 addObject:v9];
          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          v10 = v2;
          v9 = v7;
          goto LABEL_12;
        }

        v11 = [v7 copy];
        [v2 addObject:v11];

LABEL_13:
        ++v6;
      }

      while (v4 != v6);
      v12 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v12;
      if (!v12)
      {
        return [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:{objc_msgSend(a1, "allKeys")}];
      }
    }
  }

  return MEMORY[0x1E695E0F8];
}

uint64_t scaleImageWithQuality(void *a1, _OWORD *a2)
{
  if (isMetalFamily3_onceToken != -1)
  {
    scaleImageWithQuality_cold_1();
  }

  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v6[2] = a2[2];
  if (isMetalFamily3_supports)
  {
    return [a1 imageByApplyingTransform:v6 highQualityDownsample:1];
  }

  else
  {
    return [a1 imageByApplyingTransform:v6];
  }
}

uint64_t arrayDeepCopy(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    v2 = [MEMORY[0x1E695DF70] array];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v3 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v3)
    {
      return [MEMORY[0x1E695DEC8] arrayWithArray:v2];
    }

    v4 = v3;
    v5 = *v15;
    while (1)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = dictionaryDeepCopy(v7);
          goto LABEL_11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = arrayDeepCopy(v7);
LABEL_11:
          v9 = v8;
          v10 = v2;
LABEL_12:
          [v10 addObject:v9];
          goto LABEL_13;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_respondsToSelector() & 1) == 0)
        {
          v10 = v2;
          v9 = v7;
          goto LABEL_12;
        }

        v11 = [v7 copy];
        [v2 addObject:v11];

LABEL_13:
        ++v6;
      }

      while (v4 != v6);
      v12 = [a1 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v12;
      if (!v12)
      {
        return [MEMORY[0x1E695DEC8] arrayWithArray:v2];
      }
    }
  }

  return MEMORY[0x1E695E0F0];
}

void __isMetalFamily3_block_invoke()
{
  v0 = MTLCreateSystemDefaultDevice();
  isMetalFamily3_supports = [v0 supportsFamily:1003];
}

double GetAdaptationMatrix(const double *a1, const double *a2, double *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  v5 = a1[2];
  v6 = v4 * 0.2664 + *a1 * 0.8951 + v5 * -0.1614;
  v7 = v4 * 1.7135 + *a1 * -0.7502 + v5 * 0.0367;
  v8 = v4 * -0.0685 + *a1 * 0.0389 + v5 * 1.0296;
  v9 = a2[1];
  v10 = a2[2];
  v11 = v9 * 0.2664 + *a2 * 0.8951 + v10 * -0.1614;
  v12 = v9 * 1.7135 + *a2 * -0.7502 + v10 * 0.0367;
  v13 = v9 * -0.0685 + *a2 * 0.0389 + v10 * 1.0296;
  v17 = 0;
  v20 = 0;
  v19 = 0u;
  v16 = 0u;
  v15 = v11 / v6;
  v18 = v12 / v7;
  v21 = v13 / v8;
  MatrixMatrix(GetAdaptationMatrix(double const*,double const*,double *)::Bradford_mtx, &v15, a3);

  return MatrixMatrix(a3, GetAdaptationMatrix(double const*,double const*,double *)::invBradford_mtx, a3);
}

double MatrixMatrix(double *a1, double *a2, double *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  v11 = a1[8];
  v12 = *a2;
  v13 = a2[1];
  v14 = a2[2];
  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v20 = a2[8];
  v21 = v7 * v13 + v4 * *a2 + v10 * v14;
  *a3 = v6 * v13 + *a1 * *a2 + v9 * v14;
  a3[1] = v21;
  a3[2] = v8 * v13 + v5 * v12 + v11 * v14;
  a3[3] = v6 * v16 + v3 * v15 + v9 * v17;
  a3[4] = v7 * v16 + v4 * v15 + v10 * v17;
  a3[5] = v8 * v16 + v5 * v15 + v11 * v17;
  a3[6] = v6 * v19 + v3 * v18 + v9 * v20;
  a3[7] = v7 * v19 + v4 * v18 + v10 * v20;
  result = v8 * v19 + v5 * v18 + v11 * v20;
  a3[8] = result;
  return result;
}

void ___ZL17GetLinearAdobeRGBv_block_invoke()
{
  v0 = CGDataProviderCreateWithData(0, &GetLinearAdobeRGB(void)::data, 0x210uLL, 0);
  GetLinearAdobeRGB(void)::space = CGColorSpaceCreateICCBased(3uLL, 0, v0, 0);

  CFRelease(v0);
}

unint64_t CI::sw_convertUsingColorMatrix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 88);
  v17 = *(v3 + 80);
  v18 = (a3 + 16 * v17);
  v19 = (a2 + (v17 << 6));
  if (v16 == 5)
  {
    v19 = v18;
  }

  return vaddq_f32(vmulq_laneq_f32(*v19, *v7, 2), vaddq_f32(vmulq_n_f32(*v11, COERCE_FLOAT(*v7)), vmulq_lane_f32(*v15, *v7->f32, 1))).u64[0];
}

unint64_t CI::sw_localBoost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 104);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v3 + 112) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v3 + 128);
  v25 = (a3 + 16 * v24);
  v26 = (a2 + (v24 << 6));
  if (*(v3 + 136) == 5)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = vmulq_f32(*v7, *v7);
  v29 = vextq_s8(v28, vtrn1q_s32(v28, *v7), 0xCuLL);
  v30 = vmulq_f32(*v7, v28);
  v29.i32[0] = v30.i32[0];
  v29.i32[3] = 1.0;
  v31 = vmulq_f32(*v15, v29);
  *v31.f32 = vadd_f32(*v31.f32, *&vextq_s8(v31, v31, 8uLL));
  v32 = vmulq_f32(*v19, v29);
  *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
  v33 = vmulq_f32(*v23, v29);
  *v33.f32 = vadd_f32(*v33.f32, *&vextq_s8(v33, v33, 8uLL));
  v34 = vmulq_f32(v29, *v27);
  v35 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
  v36 = vdupq_lane_s32(*v7->f32, 1);
  v36.i64[0] = __PAIR64__(v28.u32[1], v30.u32[1]);
  v37 = *(a2 + (*(v3 + 152) << 6));
  v36.i32[3] = 1.0;
  v38 = vmulq_f32(*v15, v36);
  *v38.i8 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
  *v39.f32 = vzip1_s32(*v31.f32, *v38.i8);
  *v40.f32 = vzip2_s32(*v31.f32, *v38.i8);
  v41 = vmulq_f32(*v19, v36);
  *v41.i8 = vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
  *v42.f32 = vzip1_s32(*v32.i8, *v41.i8);
  *v43.f32 = vzip2_s32(*v32.i8, *v41.i8);
  v44 = vmulq_f32(v36, *v23);
  *v31.f32 = vadd_f32(*v44.f32, *&vextq_s8(v44, v44, 8uLL));
  *v44.f32 = vzip1_s32(*v33.f32, *v31.f32);
  *v31.f32 = vzip2_s32(*v33.f32, *v31.f32);
  v45 = vmulq_f32(v36, *v27);
  *v33.f32 = vadd_f32(*v45.f32, *&vextq_s8(v45, v45, 8uLL));
  *v45.f32 = vzip1_s32(v35, *v33.f32);
  *v33.f32 = vzip2_s32(v35, *v33.f32);
  __asm { FMOV            V27.2D, #-1.0 }

  v51 = vaddq_f64(vcvtq_f64_f32(*v7->f32), _Q27);
  __asm { FMOV            V27.2D, #1.0 }

  v53 = vmlaq_n_f64(_Q27, v51, v37);
  v54 = vdupq_laneq_s32(v28, 2);
  v54.i32[0] = v30.i32[2];
  v54.i32[2] = v7->i64[1];
  *v28.f32 = vcvt_f32_f64(v53);
  v54.i32[3] = 1.0;
  v55 = vmulq_f32(*v15, v54);
  *&v39.u32[2] = vadd_f32(*v55.i8, *&vextq_s8(v55, v55, 8uLL));
  *&v40.u32[2] = vdup_lane_s32(*&v39.u32[2], 1);
  v56 = vmulq_f32(*v19, v54);
  *&v42.u32[2] = vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL));
  *&v43.u32[2] = vdup_lane_s32(*&v42.u32[2], 1);
  v57 = vmulq_f32(*v23, v54);
  *&v44.u32[2] = vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL));
  *&v31.u32[2] = vdup_lane_s32(*&v44.u32[2], 1);
  v58 = vmulq_f32(v54, *v27);
  *&v45.u32[2] = vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
  *&v33.u32[2] = vdup_lane_s32(*&v45.u32[2], 1);
  *&v37 = (v54.f32[2] + -1.0) * v37 + 1.0;
  v28.i32[2] = LODWORD(v37);
  return vbicq_s8(vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v11, 0), *v7), vaddq_f32(v39, v40), vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v11, 1), *v7), vaddq_f32(v42, v43), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v11->i8, 2), *v7), vaddq_f32(v44, v31), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v11->i8, 3), *v7), vaddq_f32(v45, v33), v28)))), vcltzq_f32(*v7)).u64[0];
}

unint64_t CI::sw_boostRGB(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v5 = (a3 + 16 * v4);
  v6 = (a2 + (v4 << 6));
  if (*(v3 + 16) == 5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v3 + 32);
  v9 = (a3 + 16 * v8);
  v10 = (a2 + (v8 << 6));
  if (*(v3 + 40) == 5)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v3 + 56);
  v13 = (a3 + 16 * v12);
  v14 = (a2 + (v12 << 6));
  if (*(v3 + 64) == 5)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v3 + 80);
  v17 = (a3 + 16 * v16);
  v18 = (a2 + (v16 << 6));
  if (*(v3 + 88) == 5)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v3 + 104);
  v21 = (a3 + 16 * v20);
  v22 = (a2 + (v20 << 6));
  if (*(v3 + 112) == 5)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = *(v3 + 128);
  v25 = (a3 + 16 * v24);
  v26 = (a2 + (v24 << 6));
  if (*(v3 + 136) == 5)
  {
    v27 = v25;
  }

  else
  {
    v27 = v26;
  }

  v28 = vmulq_f32(*v7, *v7);
  v29 = vextq_s8(v28, vtrn1q_s32(v28, *v7), 0xCuLL);
  v30 = vmulq_f32(*v7, v28);
  v29.i32[0] = v30.i32[0];
  v29.i32[3] = 1.0;
  v31 = vmulq_f32(*v15, v29);
  v32 = vadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL));
  v33 = vmulq_f32(*v19, v29);
  v34 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
  v35 = vmulq_f32(*v23, v29);
  v36 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
  v37 = vmulq_f32(v29, *v27);
  *v35.i8 = vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
  v38 = vdupq_lane_s32(*v7->f32, 1);
  v38.i64[0] = __PAIR64__(v28.u32[1], v30.u32[1]);
  v38.i32[3] = 1.0;
  v39 = vmulq_f32(*v15, v38);
  *v39.i8 = vadd_f32(*v39.i8, *&vextq_s8(v39, v39, 8uLL));
  *v39.i8 = vadd_f32(vzip1_s32(v32, *v39.i8), vzip2_s32(v32, *v39.i8));
  v40 = vdupq_laneq_s32(v28, 2);
  v40.i32[0] = v30.i32[2];
  v40.i32[2] = v7->i64[1];
  v40.i32[3] = 1.0;
  v41 = vmulq_f32(*v15, v40);
  *v41.i8 = vadd_f32(*v41.i8, *&vextq_s8(v41, v41, 8uLL));
  v39.i64[1] = vadd_f32(*v41.i8, vdup_lane_s32(*v41.i8, 1)).u32[0];
  v42 = vmulq_f32(*v19, v38);
  *v42.i8 = vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
  v43 = vmulq_f32(*v19, v40);
  v44 = vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL));
  *v43.i8 = vadd_f32(vzip1_s32(v34, *v42.i8), vzip2_s32(v34, *v42.i8));
  v43.i64[1] = vadd_f32(v44, vdup_lane_s32(v44, 1)).u32[0];
  v45 = vmulq_f32(v38, *v23);
  *v45.i8 = vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL));
  *v46.i8 = vadd_f32(vzip1_s32(v36, *v45.i8), vzip2_s32(v36, *v45.i8));
  v47 = vmulq_f32(*v23, v40);
  *v47.i8 = vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
  v46.i64[1] = vadd_f32(*v47.i8, vdup_lane_s32(*v47.i8, 1)).u32[0];
  v48 = vmulq_f32(v38, *v27);
  *v48.i8 = vadd_f32(*v48.i8, *&vextq_s8(v48, v48, 8uLL));
  *v48.i8 = vadd_f32(vzip1_s32(*v35.i8, *v48.i8), vzip2_s32(*v35.i8, *v48.i8));
  v49 = vmulq_f32(v40, *v27);
  *v49.i8 = vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL));
  v48.i64[1] = vadd_f32(*v49.i8, vdup_lane_s32(*v49.i8, 1)).u32[0];
  v50 = *(a2 + (*(v3 + 152) << 6));
  __asm { FMOV            V6.2D, #-1.0 }

  v56 = vaddq_f64(vcvtq_f64_f32(*v7->f32), _Q6);
  __asm { FMOV            V6.2D, #1.0 }

  *&v56.f64[0] = vcvt_f32_f64(vmlaq_n_f64(_Q6, v56, v50));
  *&v50 = (v40.f32[2] + -1.0) * v50 + 1.0;
  *&v56.f64[1] = LODWORD(v50);
  v58 = vbicq_s8(vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v11, 0), *v7), v39, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v11, 1), *v7), v43, vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v11->i8, 2), *v7), v46, vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v11->i8, 3), *v7), v48, v56)))), vcltzq_f32(*v7));
  return vbicq_s8(v58, vcltzq_f32(v58)).u64[0];
}

double CI::sw_boostRGBLNoGamma(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  v8 = (a3 + 16 * v7);
  v9 = (a2 + (v7 << 6));
  if (*(v6 + 16) == 5)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v6 + 32);
  v12 = (a3 + 16 * v11);
  v13 = (a2 + (v11 << 6));
  if (*(v6 + 40) == 5)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v6 + 56);
  v16 = (a3 + 16 * v15);
  v17 = (a2 + (v15 << 6));
  if (*(v6 + 64) == 5)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(v6 + 80);
  v20 = (a3 + 16 * v19);
  v21 = (a2 + (v19 << 6));
  if (*(v6 + 88) == 5)
  {
    v22 = v20;
  }

  else
  {
    v22 = v21;
  }

  v23 = *(v6 + 104);
  v24 = (a3 + 16 * v23);
  v25 = (a2 + (v23 << 6));
  if (*(v6 + 112) == 5)
  {
    v26 = v24;
  }

  else
  {
    v26 = v25;
  }

  v27 = *(v6 + 128);
  v28 = (a3 + 16 * v27);
  v29 = (a2 + (v27 << 6));
  if (*(v6 + 136) == 5)
  {
    v30 = v28;
  }

  else
  {
    v30 = v29;
  }

  v31 = *v10;
  LODWORD(a6) = *(a2 + (*(v6 + 152) << 6));
  v32 = vmulq_f32(v31, v31);
  v33 = vextq_s8(v32, vtrn1q_s32(v32, *v10), 0xCuLL);
  v34 = vmulq_f32(*v10, v32);
  v33.i32[0] = v34.i32[0];
  v33.i32[3] = 1.0;
  v35 = vmulq_f32(*v18, v33);
  v36 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
  v37 = vmulq_f32(*v22, v33);
  v38 = vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
  v39 = vmulq_f32(*v26, v33);
  *v39.f32 = vadd_f32(*v39.f32, *&vextq_s8(v39, v39, 8uLL));
  v40 = vmulq_f32(v33, *v30);
  *v40.f32 = vadd_f32(*v40.f32, *&vextq_s8(v40, v40, 8uLL));
  v41 = vdupq_lane_s32(*v10->i8, 1);
  v41.i64[0] = __PAIR64__(v32.u32[1], v34.u32[1]);
  v41.i32[3] = 1.0;
  v42 = vmulq_f32(*v18, v41);
  v43 = vadd_f32(*v42.i8, *&vextq_s8(v42, v42, 8uLL));
  v44 = vmulq_f32(*v22, v41);
  v45 = vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
  v46 = vmulq_f32(v41, *v26);
  *v46.i8 = vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
  v47 = vmulq_f32(v41, *v30);
  *v47.i8 = vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL));
  v48 = vdupq_laneq_s32(v32, 2);
  v48.i32[0] = v34.i32[2];
  v48.i32[2] = v10->i64[1];
  v48.i32[3] = 1.0;
  v49 = vmulq_f32(*v18, v48);
  v50 = vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL));
  v51 = vmulq_f32(*v22, v48);
  v52 = vadd_f32(*v51.i8, *&vextq_s8(v51, v51, 8uLL));
  v53 = vmulq_f32(*v26, v48);
  *v34.f32 = vadd_f32(*v53.i8, *&vextq_s8(v53, v53, 8uLL));
  v54 = vmulq_f32(*v10, xmmword_19CF23D60);
  v54.f32[0] = v54.f32[2] + vaddv_f32(*v54.f32);
  v55 = vmul_f32(*v54.f32, *v54.f32);
  *v56.f32 = vdup_lane_s32(v55, 0);
  v57 = vmulq_f32(v48, *v30);
  v56.i64[1] = __PAIR64__(1.0, v54.u32[0]);
  v56.f32[0] = v54.f32[0] * *v55.i32;
  v58 = vmulq_f32(*v18, v56);
  *v58.i8 = vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL));
  *v59.f32 = vzip1_s32(v36, v43);
  *v60.f32 = vzip2_s32(v36, v43);
  v59.i64[1] = __PAIR64__(v58.u32[0], v50.u32[0]);
  v60.i32[2] = vdup_lane_s32(v50, 1).u32[0];
  v60.i32[3] = v58.i32[1];
  *v58.i8 = vadd_f32(*v57.f32, *&vextq_s8(v57, v57, 8uLL));
  v61 = vmulq_f32(*v22, v56);
  *v57.f32 = vzip1_s32(v38, v45);
  v57.i32[2] = v52.i32[0];
  *v61.f32 = vadd_f32(*v61.f32, *&vextq_s8(v61, v61, 8uLL));
  v57.i32[3] = v61.i32[0];
  *v62.f32 = vzip2_s32(v38, v45);
  v62.i32[2] = vdup_lane_s32(v52, 1).u32[0];
  v62.i32[3] = v61.i32[1];
  v63 = vmulq_f32(*v26, v56);
  *v63.f32 = vadd_f32(*v63.f32, *&vextq_s8(v63, v63, 8uLL));
  *v61.f32 = vzip1_s32(*v39.f32, *v46.i8);
  v61.i64[1] = __PAIR64__(v63.u32[0], v34.u32[0]);
  *v39.f32 = vzip2_s32(*v39.f32, *v46.i8);
  v39.i32[2] = vdup_lane_s32(*v34.f32, 1).u32[0];
  v39.i32[3] = v63.i32[1];
  v64 = vmulq_f32(*v30, v56);
  *v64.i8 = vadd_f32(*v64.i8, *&vextq_s8(v64, v64, 8uLL));
  *v63.f32 = vzip1_s32(*v40.f32, *v47.i8);
  v63.i64[1] = __PAIR64__(v64.u32[0], v58.u32[0]);
  *v40.f32 = vzip2_s32(*v40.f32, *v47.i8);
  v40.i32[2] = vdup_lane_s32(*v58.i8, 1).u32[0];
  v40.i32[3] = v64.i32[1];
  v65 = vaddq_f32(v63, v40);
  v31.i32[3] = v54.i32[0];
  v66 = vmulq_n_f32(v31, *&a6);
  *&a6 = 1.0 - *&a6;
  *&result = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v14, 0), v31), vaddq_f32(v59, v60), vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v14, 1), v31), vaddq_f32(v57, v62), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v14->i8, 2), v31), vaddq_f32(v61, v39), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(*v14->i8, 3), v31), v65, vaddq_f32(vdupq_lane_s32(*&a6, 0), v66))))).u64[0];
  return result;
}