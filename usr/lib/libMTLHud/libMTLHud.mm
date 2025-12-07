void _HUDGPUTimeTrackerCommandBufferSnapshot(__int128 *result, uint64_t a2)
{
  v3 = *result;
  v4 = result[2];
  *(a2 + 16) = result[1];
  *(a2 + 32) = v4;
  *a2 = v3;
  v5 = result[3];
  v6 = result[4];
  v7 = result[5];
  *(a2 + 96) = *(result + 12);
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 48) = v5;
  if (a2 != result)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__assign_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>((a2 + 144), *(result + 18), *(result + 19), 0x6F96F96F96F96F97 * ((*(result + 19) - *(result + 18)) >> 3));
    *(a2 + 136) = *(result + 34);
    v10 = *(result + 15);

    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,unsigned long>,void *> *>>((a2 + 104), v10, 0);
  }
}

int64x2_t _HUDCompilerStatisticsAdd(HUDCompilerStatistics *a1, HUDCompilerStatistics *a2)
{
  v2 = *&a1->numLibrariesFromSource;
  *&a1->numDynamicLibraries = vaddq_s64(*&a1->numDynamicLibraries, *&a2->numDynamicLibraries);
  *&a1->numLibrariesFromSource = vaddq_s64(v2, *&a2->numLibrariesFromSource);
  *&a1->numComputePipelines = vaddq_s64(*&a1->numComputePipelines, *&a2->numComputePipelines);
  *&a1->totalCachedRequests = vaddq_s64(*&a1->totalCachedRequests, *&a2->totalCachedRequests);
  *&a1->totalSyncCompileTimeFragment = vaddq_s64(*&a1->totalSyncCompileTimeFragment, *&a2->totalSyncCompileTimeFragment);
  result = vaddq_s64(*&a1->totalSyncCompileTimeMesh, *&a2->totalSyncCompileTimeMesh);
  *&a1->totalSyncCompileTimeMesh = result;
  a1->totalSyncCompileTimeCompute += a2->totalSyncCompileTimeCompute;
  return result;
}

void _HUDCompilerStatisticsParse(HUDCompilerStatistics *a1@<X1>, void *a2@<X2>, void *a3@<X3>, HUDCompilerStatistics *a4@<X8>)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  HUDCompilerStatisticsInit(v42);
  if (a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = v42;
  }

  v11 = [v7 objectForKeyedSubscript:{HUD_MTLCompileTimeStatisticsKeyDynamicLibraries[0], HUDCompilerStatisticsInit(a4)}];
  objc_opt_class();
  if (((v11 != 0) & objc_opt_isKindOfClass()) == 1)
  {
    v12 = [v11 count];
    numDynamicLibraries = v10->numDynamicLibraries;
    if (v12 <= v10->numDynamicLibraries)
    {
      v15 = 0;
    }

    else
    {
      v14 = [v11 count];
      numDynamicLibraries = v10->numDynamicLibraries;
      v15 = v14 - v10->numDynamicLibraries;
    }

    a4->numDynamicLibraries = v15;
    _HUDCompileStatisticsParseArray(v11, @"Dylib", a4, v15, numDynamicLibraries, v8);
  }

  v16 = [v7 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyBinaryFunctions[0]];
  objc_opt_class();
  if (((v16 != 0) & objc_opt_isKindOfClass()) == 1)
  {
    v17 = [v16 count];
    if (a1)
    {
      v18 = a1;
    }

    else
    {
      v18 = v42;
    }

    numBinaryFunctions = v18->numBinaryFunctions;
    if (v17 <= numBinaryFunctions)
    {
      v21 = 0;
    }

    else
    {
      v20 = [v16 count];
      numBinaryFunctions = v18->numBinaryFunctions;
      v21 = v20 - numBinaryFunctions;
    }

    a4->numBinaryFunctions = v21;
    _HUDCompileStatisticsParseArray(v16, @"BinaryFunction", a4, v21, numBinaryFunctions, v8);
  }

  v22 = [v7 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyLibrariesFromSource[0]];
  objc_opt_class();
  if (((v22 != 0) & objc_opt_isKindOfClass()) == 1)
  {
    v23 = [v22 count];
    if (a1)
    {
      v24 = a1;
    }

    else
    {
      v24 = v42;
    }

    numLibrariesFromSource = v24->numLibrariesFromSource;
    if (v23 <= numLibrariesFromSource)
    {
      v27 = 0;
    }

    else
    {
      v26 = [v22 count];
      numLibrariesFromSource = v24->numLibrariesFromSource;
      v27 = v26 - numLibrariesFromSource;
    }

    a4->numLibrariesFromSource = v27;
    _HUDCompileStatisticsParseArray(v22, @"LibraryFromSource", a4, v27, numLibrariesFromSource, v8);
  }

  v28 = [v7 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyPipelines[0]];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & (v28 != 0)) == 1)
  {
    v41 = v9;
    v29 = [v28 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyPipelinesRender[0]];
    v30 = [v28 objectForKeyedSubscript:HUD_MTLCompileTimeStatisticsKeyPipelinesCompute[0]];
    objc_opt_class();
    if (((v29 != 0) & objc_opt_isKindOfClass()) == 1)
    {
      v31 = [v29 count];
      if (a1)
      {
        v32 = a1;
      }

      else
      {
        v32 = v42;
      }

      numRenderPipelines = v32->numRenderPipelines;
      if (v31 <= numRenderPipelines)
      {
        v35 = 0;
      }

      else
      {
        v34 = [v29 count];
        numRenderPipelines = v32->numRenderPipelines;
        v35 = v34 - numRenderPipelines;
      }

      a4->numRenderPipelines = v35;
      _HUDCompileStatisticsParseRenderArray(v29, a4, v35, numRenderPipelines, v8);
    }

    objc_opt_class();
    if (((v30 != 0) & objc_opt_isKindOfClass()) == 1)
    {
      v36 = [v30 count];
      if (a1)
      {
        v37 = a1;
      }

      else
      {
        v37 = v42;
      }

      numComputePipelines = v37->numComputePipelines;
      if (v36 <= numComputePipelines)
      {
        v40 = 0;
      }

      else
      {
        v39 = [v30 count];
        numComputePipelines = v37->numComputePipelines;
        v40 = v39 - numComputePipelines;
      }

      a4->numComputePipelines = v40;
      _HUDCompileStatisticsParseArray(v30, @"Compute", a4, v40, numComputePipelines, v8);
    }

    v9 = v41;
  }

  _HUDCompilerStatisticsAdd(v10, a4);
  objc_autoreleasePoolPop(v9);
}

void _HUDCompileStatisticsParseArray(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v14 = a1;
  v11 = a2;
  for (i = a6; a4; --a4)
  {
    if (a5 >= [v14 count])
    {
      break;
    }

    v13 = [v14 objectAtIndexedSubscript:a5];
    _HUDCompilerStatisticsParseDict(v13, v11, a3, i);

    ++a5;
  }
}

void _HUDCompileStatisticsParseRenderArray(void *a1, void *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v15 = a1;
  for (i = a5; a3; --a3)
  {
    if (a4 >= [v15 count])
    {
      break;
    }

    v10 = [v15 objectAtIndexedSubscript:a4];
    v11 = [v10 objectForKeyedSubscript:MTLPipelinePerformanceKeyVertexShader];
    a2[10] += _HUDCompilerStatisticsParseDict(v11, @"Vertex", a2, i);

    v12 = [v10 objectForKeyedSubscript:MTLPipelinePerformanceKeyFragmentShader];
    a2[9] += _HUDCompilerStatisticsParseDict(v12, @"Fragment", a2, i);

    v13 = [v10 objectForKeyedSubscript:MTLPipelinePerformanceKeyObjectShader];
    a2[12] += _HUDCompilerStatisticsParseDict(v13, @"Object", a2, i);

    v14 = [v10 objectForKeyedSubscript:MTLPipelinePerformanceKeyMeshShader];
    a2[11] += _HUDCompilerStatisticsParseDict(v14, @"Mesh", a2, i);

    ++a4;
  }
}

void _HUDGPUTimeTrackerGetMetricDescriptors(uint64_t result, uint64_t a2)
{
  {
    _HUDGPUTimeTrackerGetMetricDescriptors();
  }
}

uint64_t HUDGPUTimeTrackerGetGlobalInstance(uint64_t a1, uint64_t a2)
{
  if (_HUDGPUTimeTrackerGetInstance(void)::onceToken != -1)
  {
    HUDGPUTimeTrackerGetGlobalInstance_cold_1();
  }

  return _HUDGPUTimeTrackerGetInstance(void)::tracker;
}

uint64_t HUDGPUTimeTrackerGetCurrentFrame(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

void HUDGPUTimeTrackerReset(uint64_t result)
{
  if (result)
  {
    v1[0] = _NSConcreteStackBlock;
    v1[1] = 3221225472;
    v1[2] = __HUDGPUTimeTrackerReset_block_invoke;
    v1[3] = &__block_descriptor_40_e5_v8__0l;
    v1[4] = result;
    HUDDispatchQueueAsync(v1);
  }
}

void __HUDGPUTimeTrackerReset_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  os_unfair_lock_lock(v2 + 16756);
  HUDTargetRebindingInsightContextInit(*(a1 + 32) + 67424);
  HUDBarrierInsightContextInit((*(a1 + 32) + 68280));
  HUDBarrierInsightContextInit((*(a1 + 32) + 68304));
  v3 = 59;
  v4 = 472;
  do
  {
    HUDValueHistoryRecordInit(*(a1 + 32) + v4, 0.0, 1000000000.0, 16666700.0);
    v4 += 1128;
    --v3;
  }

  while (v3);
  HUDValueHistoryRecordInit(*(a1 + 32) + 42208, 0.0, 2.16e14, 16666700.0);
  HUDValueHistoryRecordInit(*(a1 + 32) + 65896, 0.0, 2.16e14, 16666700.0);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((*(a1 + 32) + 136));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((*(a1 + 32) + 176));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((*(a1 + 32) + 216));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((*(a1 + 32) + 256));
  v5 = (*(a1 + 32) + 376);
  v5[3] = 0u;
  v5[4] = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  *v5 = 0u;
  v6 = (*(a1 + 32) + 296);
  v6[3] = 0u;
  v6[4] = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  *v6 = 0u;

  os_unfair_lock_unlock(v2 + 16756);
}

unint64_t _HUDGPUTimeTrackerAddLabel(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unsigned int a5)
{
  v8 = a3;
  v9 = v8;
  if (a1 && *(a1 + 26) == 1)
  {
    v17 = a5 | (4 * [v8 hash]);
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 96), &v17);
    if (v10)
    {
      ++*(v10 + 10);
      v10[3] = a4;
    }

    else
    {
      v12 = v17;
      v13 = v9;
      v18 = &v17;
      v14 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 96), &v17, &std::piecewise_construct, &v18);
      v14[3] = a4;
      v14[4] = v12;
      *(v14 + 10) = 1;
      *(v14 + 11) = a5;
      v15 = v14[6];
      v14[6] = v13;
    }

    v11 = v17;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL _HUDGPUTimetrackerHeapValueCompare(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2 || (v3 = a2[1]) == 0)
  {
    v2 = *a1;
    v3 = *a2;
  }

  return v2 < v3;
}

double _HUDGPUTimeTrackerPushTopObjectHeap(uint64_t *a1, __int128 *a2)
{
  v6 = *a1;
  v5 = a1 + 1;
  v7 = &v5[5 * v6];
  v8 = *a2;
  v9 = a2[1];
  if (v6 > 9)
  {
    *(v7 - 1) = *(a2 + 4);
    *(v7 - 3) = v9;
    *(v7 - 5) = v8;
    v10 = *a1;
  }

  else
  {
    v7[4] = *(a2 + 4);
    *v7 = v8;
    *(v7 + 1) = v9;
    v10 = *a1 + 1;
    *a1 = v10;
  }

  v12[1] = v2;
  v12[2] = v3;
  v12[0] = _HUDGPUTimetrackerHeapValueCompare;
  return std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HUDGPUTimeTrackerTopObjectHeapValue const&,HUDGPUTimeTrackerTopObjectHeapValue const&),HUDGPUTimeTrackerTopObjectHeapValue*>(v5, &v5[5 * v10], v12, v10);
}

void *_HUDGPUTimeTrackerGetCommonObjectRecord(uint64_t a1, unint64_t a2)
{
  v10 = a2;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 176), &v10);
  if (v3)
  {
    v4 = v3;
    return v4 + 3;
  }

  bzero(&v9, 0x8D8uLL);
  v8 = v10;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>>((a1 + 176), &v8, &v8);
  if (v7)
  {
    v4 = v6;
    HUDValueHistoryRecordInit((v6 + 3), 0.0, 1000000000.0, 16666666.0);
    HUDValueHistoryRecordInit((v4 + 144), 0.0, 1000000000.0, 16666666.0);
    if (v4)
    {
      return v4 + 3;
    }
  }

  return 0;
}

void _HUDGPUTimeTrackerTopObjectAssignCommonObjectRecord(uint64_t a1, unint64_t *a2)
{
  CommonObjectRecord = _HUDGPUTimeTrackerGetCommonObjectRecord(a1, a2[3]);
  if (CommonObjectRecord)
  {
    v4 = CommonObjectRecord;
    HUDValueHistoryRecordAddValue(CommonObjectRecord, *a2);
    v5 = a2[1];
    if (v5)
    {
      HUDValueHistoryRecordAddValue((v4 + 141), v5);
    }

    v4[282] = a2[4];
  }
}

void _HUDGPUTimeTrackerTopObjectHeapAssign(uint64_t a1, unint64_t *a2, void *a3, uint64_t a4)
{
  bzero(a3, 8 * a4);
  v7 = 126 - 2 * __clz(*a2);
  if (*a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,false>(a2 + 1, &a2[5 * *a2 + 1], v8, 1);
  if (*a2)
  {
    v9 = 0;
    v10 = a2 + 4;
    do
    {
      _HUDGPUTimeTrackerTopObjectAssignCommonObjectRecord(a1, v10 - 3);
      v11 = *v10;
      v10 += 5;
      *(a3 + v9++) = v11;
    }

    while (v9 < *a2);
  }
}

void *_HUDGPUTimeTrackerPurgeOldLabels(void *result, unint64_t a2)
{
  if (result[15])
  {
    v2 = result;
    v3 = result[14];
    if (v3)
    {
      do
      {
        while (1)
        {
          v5 = v3[3];
          v7 = a2 >= v5;
          v6 = a2 - v5;
          v7 = v6 != 0 && v7 && v6 >= 0xA;
          if (v7)
          {
            break;
          }

          if (*(v3 + 10) >= 0x3Cu)
          {
            result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v2 + 17, v3 + 2, v3 + 2);
          }

          v3 = *v3;
          if (!v3)
          {
            return result;
          }
        }

        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v2 + 17, v3 + 4);
        if (v8)
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(v2 + 17, v8);
        }

        v9 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v2 + 22, v3 + 4);
        if (v9)
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(v2 + 22, v9);
        }

        v10 = *v3;
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(v2 + 12, v3, v11);
        result = std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>>>>::~unique_ptr[abi:ne200100](v11);
        v3 = v10;
      }

      while (v10);
    }
  }

  return result;
}

void HUDGPUTimeTrackerEnableEncoderGPUTimeSampling(uint64_t result, char a2)
{
  if (result)
  {
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = __HUDGPUTimeTrackerEnableEncoderGPUTimeSampling_block_invoke;
    v2[3] = &__block_descriptor_41_e5_v8__0l;
    v3 = a2;
    v2[4] = result;
    HUDDispatchQueueAsync(v2);
  }
}

void __HUDGPUTimeTrackerEnableEncoderGPUTimeSampling_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) != *(v1 + 26))
  {
    os_unfair_lock_lock((v1 + 67024));
    v3 = *(a1 + 32);
    *(v3 + 26) = *(a1 + 40);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((v3 + 136));
    if (*(a1 + 40) == 1)
    {
      HUDValueHistoryRecordInit(*(a1 + 32) + 7240, 0.0, 1000000000.0, 16670000.0);
      HUDValueHistoryRecordInit(*(a1 + 32) + 8368, 0.0, 1000000000.0, 16670000.0);
      for (i = 17392; i != 28672; i += 1128)
      {
        HUDValueHistoryRecordInit(*(a1 + 32) + i, 0.0, 1000000000.0, 16670000.0);
      }
    }

    os_unfair_lock_unlock((v1 + 67024));
  }
}

uint64_t HUDGPUTimeTrackerInitGPUTimeSampling(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ((*(a1 + 25) & 1) == 0)
    {
      *(a1 + 27) = [v3 supportsCounterSampling:0];
      if (!*(a1 + 40))
      {
        v5 = [v4 counterSets];
        if ([v5 count])
        {
          v13[0] = _NSConcreteStackBlock;
          v13[1] = 3221225472;
          v13[2] = __HUDGPUTimeTrackerInitGPUTimeSampling_block_invoke;
          v13[3] = &__block_descriptor_40_e32_v32__0___MTLCounterSet__8Q16_B24l;
          v13[4] = a1;
          [v5 enumerateObjectsUsingBlock:v13];
        }

        if (*(a1 + 32))
        {
          v6 = objc_opt_new();
          [v6 setSampleCount:4096];
          [v6 setStorageMode:0];
          [v6 setLabel:@"libMTLHud counter sample buffer"];
          [v6 setCounterSet:*(a1 + 32)];
          v12 = 0;
          v7 = [v4 newCounterSampleBufferWithDescriptor:v6 error:&v12];
          v8 = v12;
          v9 = *(a1 + 40);
          *(a1 + 40) = v7;

          if (v8 || !*(a1 + 40))
          {
            *(a1 + 27) = 0;
          }

          *(a1 + 48) = 0;
        }

        else
        {
          *(a1 + 27) = 0;
        }
      }
    }

    if (*(a1 + 27) == 1)
    {
      *(a1 + 25) = 1;
    }

    else
    {
      *(a1 + 25) = 0;
      NSLog(@"[libMTLHud] Failed to enable encoder counter sampling. Device does not support encoder stage counter sample.");
    }

    v10 = *(a1 + 68336);
    *(a1 + 68336) = 0;

    LOBYTE(a1) = *(a1 + 25);
  }

  return a1 & 1;
}

void __HUDGPUTimeTrackerInitGPUTimeSampling_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 name];
  v8 = [v7 isEqualToString:MTLCommonCounterSetTimestamp];

  if (v8)
  {
    objc_storeStrong((*(a1 + 32) + 32), a2);
    *a4 = 1;
  }
}

uint64_t HUDGPUTimeTrackerCanEnableGPUTimeSampling(uint64_t a1)
{
  if (a1 && *(a1 + 25) == 1)
  {
    v1 = *(a1 + 27);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void HUDGPUTimeTrackerCommandBufferCreate(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v19 = [v3 globalTraceObjectID];
    os_unfair_lock_lock(a1 + 16756);
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v19))
    {
      v6 = v19;
      v7 = *&a1->_os_unfair_lock_opaque;
      v8 = v7;
      v9 = HUDCurrentTimeInNs();
      v10 = 0u;
      memset(v11, 0, sizeof(v11));
      v12 = 0u;
      memset(v13, 0, sizeof(v13));
      v14 = 1065353216;
      *__p = 0u;
      v16 = 0u;
      memset(v17, 0, sizeof(v17));
      v18 = 1065353216;
      v20 = &v19;
      v5 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&a1[14]._os_unfair_lock_opaque, &v19, &std::piecewise_construct, &v20);
      HUDGPUTimeTrackerCommandBuffer::operator=((v5 + 3), &v6);
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v17);
      objc_destroyWeak(&v16 + 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v13);
    }

    os_unfair_lock_unlock(a1 + 16756);
  }
}

void sub_2F3C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

uint64_t HUDGPUTimeTrackerCommandBuffer::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 48) = v6;
  if (a1 == a2)
  {
    WeakRetained = objc_loadWeakRetained(a2 + 21);
    objc_storeWeak((a1 + 168), WeakRetained);
  }

  else
  {
    *(a1 + 136) = *(a2 + 34);
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,unsigned long>,void *> *>>((a1 + 104), *(a2 + 15), 0);
    std::vector<HUDGPUTimeTrackerEncoder>::__assign_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>((a1 + 144), *(a2 + 18), *(a2 + 19), 0x6F96F96F96F96F97 * ((*(a2 + 19) - *(a2 + 18)) >> 3));
    v9 = objc_loadWeakRetained(a2 + 21);
    objc_storeWeak((a1 + 168), v9);

    *(a1 + 208) = *(a2 + 52);
    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *> *>>((a1 + 176), *(a2 + 24), 0);
  }

  return a1;
}

void HUDGPUTimeTrackerCommandBuffer::~HUDGPUTimeTrackerCommandBuffer(id *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table((this + 22));
  objc_destroyWeak(this + 21);
  v2 = this[18];
  if (v2)
  {
    this[19] = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table((this + 13));
}

uint64_t _HUDTimeRangeCompare(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

unint64_t _HUDGPUTimeTrackerPruneOldFramesUnlocked(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = HUDCurrentTimeInNs();
  v6 = a1[9];
  if (v6)
  {
    v7 = result;
    do
    {
      while (1)
      {
        if (!*(v6 + 100))
        {
          v8 = *(v6 + 48);
          if (v8 < 4)
          {
            break;
          }

          v9 = *(v6 + 56);
          v10 = v9 && v7 > v9;
          if (v10 && v7 - v9 > 0x3B9ACA00)
          {
            break;
          }

          v13 = *a1 >= v8;
          v12 = *a1 - v8;
          v13 = v12 != 0 && v13 && v12 >= 6;
          if (v13)
          {
            break;
          }
        }

        v6 = *v6;
        if (!v6)
        {
          return result;
        }
      }

      result = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase(a1 + 7, v6);
      v6 = result;
    }

    while (result);
  }

  return result;
}

void _HUDGPUTimeTrackerWrapupFrameForPresentedDrawable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v36 = 0;
  v37 = &v36;
  v38 = 0x4812000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = &unk_5D621;
  memset(v42, 0, sizeof(v42));
  v28 = 0;
  v29 = &v28;
  v30 = 0x5812000000;
  v31 = __Block_byref_object_copy__420;
  v32 = __Block_byref_object_dispose__421;
  v33 = &unk_5D621;
  memset(v34, 0, sizeof(v34));
  v35 = 1065353216;
  std::vector<HUDGPUTimeTrackerCommandBuffer>::reserve(v42, 0xAuLL);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  os_unfair_lock_lock((a1 + 67024));
  for (i = *(a1 + 72); i; i = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase((a1 + 56), i))
  {
    while (1)
    {
      if (*(i + 100))
      {
        v10 = *(i + 216);
        if (v10)
        {
          while (1)
          {
            while (*(v10 + 40) > v25[3])
            {
LABEL_9:
              v10 = *v10;
              if (!v10)
              {
                goto LABEL_16;
              }
            }

            if (!*(v10 + 80))
            {
              *(v10 + 40) = *a1;
              goto LABEL_9;
            }

            ++*(v21 + 6);
            *(v17 + 6) -= 1762037865 * ((*(v10 + 176) - *(v10 + 168)) >> 3);
            std::vector<HUDGPUTimeTrackerCommandBuffer>::push_back[abi:ne200100](v37 + 6, (v10 + 24));
            v10 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase((i + 200), v10);
            if (!v10)
            {
              goto LABEL_16;
            }
          }
        }

        goto LABEL_16;
      }

      if (*(i + 40) <= v25[3])
      {
        break;
      }

LABEL_16:
      i = *i;
      if (!i)
      {
        goto LABEL_17;
      }
    }

    if (!*(i + 80))
    {
      *(i + 40) = *a1;
      goto LABEL_16;
    }

    ++*(v21 + 6);
    *(v17 + 6) -= 1762037865 * ((*(i + 176) - *(i + 168)) >> 3);
    std::vector<HUDGPUTimeTrackerCommandBuffer>::push_back[abi:ne200100](v37 + 6, (i + 24));
  }

LABEL_17:
  _HUDGPUTimeTrackerPruneOldFramesUnlocked(a1, v6, v7, v8);
  v11 = v29 + 6;
  if (v29 + 6 != (a1 + 136))
  {
    *(v29 + 20) = *(a1 + 168);
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(v11, *(a1 + 152), 0);
  }

  v12 = v25[3];
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v12, 1) <= 0x1999999999999999uLL)
  {
    _HUDGPUTimeTrackerPurgeOldLabels(a1, v12);
  }

  os_unfair_lock_unlock((a1 + 67024));
  v13 = *(a1 + 16);
  *(a1 + 16) = a3;
  if (v25[3] != 0xFFFFFFFFLL && v37[6] != v37[7])
  {
    v14 = a3 - v13;
    if (v14 <= 0x3B9AC9FF)
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = ___Z49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermy_block_invoke;
      v15[3] = &unk_68B50;
      v15[4] = &v24;
      v15[5] = &v36;
      v15[6] = &v20;
      v15[7] = &v16;
      v15[8] = &v28;
      v15[9] = a3;
      v15[10] = a1;
      v15[11] = v14;
      HUDDispatchQueueAsync(v15);
    }
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v34);
  _Block_object_dispose(&v36, 8);
  v28 = v42;
  std::vector<HUDGPUTimeTrackerCommandBuffer>::__destroy_vector::operator()[abi:ne200100](&v28);
}

void sub_3530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v33 + 48);
  _Block_object_dispose((v34 - 152), 8);
  std::vector<HUDGPUTimeTrackerCommandBuffer>::__destroy_vector::operator()[abi:ne200100](&a33);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

uint64_t *std::vector<HUDGPUTimeTrackerCommandBuffer>::reserve(uint64_t *result, unint64_t a2)
{
  if (0x84BDA12F684BDA13 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x12F684BDA12F685)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>>(result, a2);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_36EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<HUDGPUTimeTrackerCommandBuffer>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<HUDGPUTimeTrackerCommandBuffer>::__emplace_back_slow_path<HUDGPUTimeTrackerCommandBuffer const&>(a1, a2);
  }

  else
  {
    std::vector<HUDGPUTimeTrackerCommandBuffer>::__construct_one_at_end[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer const&>(a1, a2);
    result = v3 + 216;
  }

  a1[1] = result;
  return result;
}

void ___Z49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermy_block_invoke(void *a1, uint64_t a2)
{
  v2 = a1;
  if (*(HUDGetGlobalConfig(a1, a2) + 16) == 1)
  {
    _ZZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E17_timeTrackerBegin = HUDCurrentTimeInNs();
  }

  bzero(&v343, 0x270uLL);
  v380 = *(*(v2[4] + 8) + 24);
  v379.i64[1] = v2[9];
  v5 = *(HUDGetGlobalConfig(v3, v4) + 3);
  v6 = *(v2[5] + 8);
  v7 = *(v6 + 48);
  v8 = *(v6 + 56);
  v9 = 126 - 2 * __clz(0x84BDA12F684BDA13 * (&v8[-v7] >> 3));
  memset(v381, 0, sizeof(v381));
  v382 = 0;
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLb0EEEvT1_S8_T0_NS_15iterator_traitsIS8_E15difference_typeEb(v7, v8, v10, 1);
  v341 = 0u;
  v340 = 0u;
  v342 = 1065353216;
  v339 = 0;
  memset(v338, 0, sizeof(v338));
  v337 = 0;
  memset(v336, 0, sizeof(v336));
  v290 = v5;
  if (v5 == 1)
  {
    HUDTargetRebindingInsightContextBeginFrame(v2[10] + 67424, *(*(v2[6] + 8) + 24), *(*(v2[7] + 8) + 24), *(*(v2[4] + 8) + 24));
    HUDGameModeInsightCheck(v11, v12);
  }

  v13 = *(*(v2[5] + 8) + 48);
  v292 = v2;
  if (*(*(v2[5] + 8) + 56) != v13)
  {
    v293 = 0;
    v14 = 0;
    while (1)
    {
      v288 = v14;
      v15 = v13 + 216 * v14;
      v291 = v15;
      if (*(v15 + 72) != 1)
      {
        std::vector<HUDTimeRange>::push_back[abi:ne200100](&v343, (v15 + 32));
        std::vector<HUDTimeRange>::push_back[abi:ne200100](&__base, (v15 + 48));
        std::vector<HUDTimeRange>::push_back[abi:ne200100](&v366[3 * *(v15 + 72) + 21], (v15 + 48));
        if (std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((*(v2[8] + 8) + 48), (v15 + 8)))
        {
          v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((v2[10] + 216), (v15 + 8));
          if (v16 || (v17 = v2[10], v320.numDynamicLibraries = *(v15 + 8), memset(&v320.numBinaryFunctions, 0, 40), (v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>((v17 + 216), &v320.numDynamicLibraries, &v320)) != 0))
          {
            v18 = *(v15 + 32);
            v19 = v16[4];
            v16[3] += *(v15 + 40) - v18;
            if (v16[5] < v18)
            {
              v18 = v16[5];
            }

            v16[4] = *(v15 + 56) - *(v15 + 48) + v19;
            v16[5] = v18;
            v20 = v16[7] + 1;
            v16[6] = *(v15 + 8);
            v16[7] = v20;
          }
        }

        if (v290)
        {
          if (*(v15 + 8) && (v21 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((v2[10] + 96), (v15 + 8))) != 0)
          {
            v22 = v21[6];
          }

          else
          {
            v22 = 0;
          }

          HUDTargetRebindingInsightContextProcessCommandBuffer(v2[10] + 67424, *v15, *(v15 + 76), v22, *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56));
        }
      }

      v320.numDynamicLibraries = v15 + 88;
      v23 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v340, (v15 + 88), &std::piecewise_construct, &v320)[3];
      v24 = *(v15 + 96);
      v320.numDynamicLibraries = v15 + 88;
      v25 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&v340, (v15 + 88), &std::piecewise_construct, &v320);
      v26 = v23 <= v24 ? v24 : v23;
      v25[3] = v26;
      v27 = *(v15 + 144);
      if (*(v15 + 152) != v27)
      {
        break;
      }

LABEL_91:
      v14 = v288 + 1;
      v13 = *(*(v2[5] + 8) + 48);
      if (v288 + 1 >= 0x84BDA12F684BDA13 * ((*(*(v2[5] + 8) + 56) - v13) >> 3))
      {
        v66 = v293;
        goto LABEL_94;
      }
    }

    v28 = 0;
    v29 = 0;
    v289 = *(v15 + 56) - *(v15 + 48) + 1000;
    while (1)
    {
      if (*(v15 + 72) != 1)
      {
        v30 = *(v27 + v28 + 8);
        if (*(v27 + v28 + 16) < v30)
        {
          *(v27 + v28 + 16) = v30;
        }

        std::vector<HUDTimeRange>::push_back[abi:ne200100](&v357, (v27 + v28 + 8));
        std::vector<HUDTimeRange>::push_back[abi:ne200100](&v366[3 * *(v27 + v28)], (v27 + v28 + 8));
      }

      v31 = *(&HUDInvalidTimeRange + 1);
      v32 = HUDInvalidTimeRange;
      v33 = v27 + v28;
      if (*(v27 + v28 + 24) == 0xFFFFFFFFLL)
      {
        v34 = 0;
      }

      else
      {
        v34 = 0;
        v293 += *(v33 + 304);
        v37 = *v33;
        if (v37 <= 2)
        {
          if (v37 == 1)
          {
            v34 = 0;
            v60 = (v27 + v28);
            v61 = *(v27 + v28 + 32);
            if (v61 == -1 || (v62 = v60[5], v62 == -1))
            {
              numBinaryFunctions = *(&HUDInvalidTimeRange + 1);
              numDynamicLibraries = HUDInvalidTimeRange;
            }

            else
            {
              numBinaryFunctions = *(&HUDInvalidTimeRange + 1);
              numDynamicLibraries = HUDInvalidTimeRange;
              if (v62 - v61 <= v289)
              {
                v63 = *(&HUDInvalidTimeRange + 1);
                v320.numDynamicLibraries = *(v27 + v28 + 32);
                v320.numBinaryFunctions = v62;
                std::vector<HUDTimeRange>::push_back[abi:ne200100](&v371[3 * *(v27 + v28 + 280)], &v320);
                if (*(v27 + v28 + 280) != 1)
                {
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&__src, &v320);
                }

                numBinaryFunctions = v320.numBinaryFunctions;
                numDynamicLibraries = v320.numDynamicLibraries;
                v34 = v320.numBinaryFunctions - v320.numDynamicLibraries;
                v31 = v63;
                v2 = v292;
              }
            }

            v64 = v60[6];
            if (v64 != -1)
            {
              v65 = v60[7];
              if (v65 != -1 && v65 - v64 <= v289)
              {
                v320.numDynamicLibraries = v60[6];
                v320.numBinaryFunctions = v65;
                std::vector<HUDTimeRange>::push_back[abi:ne200100](&v371[3 * *(v27 + v28 + 280)], &v320);
                if (*(v27 + v28 + 280) != 1)
                {
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v347, &v320);
                }

                v31 = v320.numBinaryFunctions;
                v32 = v320.numDynamicLibraries;
                v34 = v320.numBinaryFunctions + v34 - v320.numDynamicLibraries;
              }
            }

            goto LABEL_62;
          }

          if (v37 == 2)
          {
            v34 = 0;
            v42 = *(v27 + v28 + 32);
            if (v42 != -1)
            {
              v43 = *(v27 + v28 + 40);
              if (v43 != -1 && v43 - v42 <= v289)
              {
                v40 = v2;
                v41 = *(&HUDInvalidTimeRange + 1);
                v320.numDynamicLibraries = *(v27 + v28 + 32);
                v320.numBinaryFunctions = v43;
                std::vector<HUDTimeRange>::push_back[abi:ne200100](&v371[3 * *(v27 + v28 + 280)], &v320);
                if (*(v27 + v28 + 280) != 1)
                {
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v351, &v320);
                }

                goto LABEL_61;
              }
            }
          }
        }

        else
        {
          switch(v37)
          {
            case 3:
              v34 = 0;
              v44 = *(v27 + v28 + 32);
              if (v44 != -1)
              {
                v45 = *(v27 + v28 + 40);
                if (v45 != -1 && v45 - v44 <= v289)
                {
                  v40 = v2;
                  v41 = *(&HUDInvalidTimeRange + 1);
                  v320.numDynamicLibraries = *(v27 + v28 + 32);
                  v320.numBinaryFunctions = v45;
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v371[3 * *(v27 + v28 + 280)], &v320);
                  if (*(v27 + v28 + 280) != 1)
                  {
                    std::vector<HUDTimeRange>::push_back[abi:ne200100](&v353, &v320);
                  }

                  goto LABEL_61;
                }
              }

              break;
            case 5:
              v34 = 0;
              v46 = *(v27 + v28 + 32);
              if (v46 != -1)
              {
                v47 = *(v27 + v28 + 40);
                if (v47 != -1 && v47 - v46 <= v289)
                {
                  v40 = v2;
                  v41 = *(&HUDInvalidTimeRange + 1);
                  v320.numDynamicLibraries = *(v27 + v28 + 32);
                  v320.numBinaryFunctions = v47;
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v371[3 * *(v27 + v28 + 280)], &v320);
                  if (*(v27 + v28 + 280) != 1)
                  {
                    std::vector<HUDTimeRange>::push_back[abi:ne200100](&v355, &v320);
                  }

                  goto LABEL_61;
                }
              }

              break;
            case 6:
              v34 = 0;
              v38 = *(v27 + v28 + 32);
              if (v38 != -1)
              {
                v39 = *(v27 + v28 + 40);
                if (v39 != -1 && v39 - v38 <= v289)
                {
                  v40 = v2;
                  v41 = *(&HUDInvalidTimeRange + 1);
                  v320.numDynamicLibraries = *(v27 + v28 + 32);
                  v320.numBinaryFunctions = v39;
                  std::vector<HUDTimeRange>::push_back[abi:ne200100](&v371[3 * *(v27 + v28 + 280)], &v320);
                  if (*(v27 + v28 + 280) != 1)
                  {
                    std::vector<HUDTimeRange>::push_back[abi:ne200100](&v364, &v320);
                  }

LABEL_61:
                  numBinaryFunctions = v320.numBinaryFunctions;
                  numDynamicLibraries = v320.numDynamicLibraries;
                  v34 = v320.numBinaryFunctions - v320.numDynamicLibraries;
                  v31 = v41;
                  v2 = v40;
                  goto LABEL_62;
                }
              }

              break;
          }
        }
      }

      numBinaryFunctions = *(&HUDInvalidTimeRange + 1);
      numDynamicLibraries = HUDInvalidTimeRange;
LABEL_62:
      if (*(v15 + 72) != 1)
      {
        v48 = numBinaryFunctions;
        v49 = numDynamicLibraries;
        v50 = v31;
        v51 = v27 + v28;
        if (std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((*(v2[8] + 8) + 48), (v27 + v28 + 296)))
        {
          v53 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((v2[10] + 256), (v51 + 296));
          if (v53 || (v54 = v2[10], v320.numDynamicLibraries = *(v51 + 296), memset(&v320.numBinaryFunctions, 0, 40), (v53 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>((v54 + 256), &v320.numDynamicLibraries, &v320)) != 0))
          {
            v55 = *(v27 + v28 + 8);
            v56 = v53[4] + v34;
            v53[3] += *(v27 + v28 + 16) - v55;
            v53[4] = v56;
            if (v53[5] < v55)
            {
              v55 = v53[5];
            }

            v53[5] = v55;
            v57 = v53[7] + 1;
            v53[6] = *(v51 + 296);
            v53[7] = v57;
          }
        }

        if (v290)
        {
          *(v27 + v28 + 144) = *(v27 + v28);
          if (*(v51 + 296) && (v58 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((v292[10] + 96), (v51 + 296))) != 0)
          {
            v59 = v58[6];
          }

          else
          {
            v59 = 0;
          }

          HUDTargetRebindingInsightContextProcessEncoder((v292[10] + 67424), (v27 + v28 + 64), v59, *(v27 + v28 + 8), *(v27 + v28 + 16), v49, v48, v52, v32, v50);

          v2 = v292;
        }

        ++*(v381 + *(v27 + v28));
        v15 = v291;
      }

      ++v29;
      v27 = *(v15 + 144);
      v28 += 312;
      if (v29 >= 0x6F96F96F96F96F97 * ((*(v15 + 152) - v27) >> 3))
      {
        goto LABEL_91;
      }
    }
  }

  v66 = 0.0;
LABEL_94:
  v378 = 0u;
  v377 = 0u;
  v376 = 0u;
  v67 = __base;
  v68 = v346;
  v69 = (v346 - __base) >> 4;
  qsort(__base, v69, 0x10uLL, _HUDTimeRangeCompare);
  if (v68 == v67)
  {
    v70 = 0;
    v71 = 0;
  }

  else
  {
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = (v67 + 8);
    do
    {
      v75 = *(v73 - 1);
      v74 = *v73;
      v76 = *v73 - v75;
      if (*v73 >= v75)
      {
        if (v75 <= v72)
        {
          v75 = v72;
        }

        v77 = v74 >= v75;
        v78 = v74 - v75;
        if (!v77)
        {
          v78 = 0;
        }

        v71 += v78;
        if (v74 > v72)
        {
          v72 = *v73;
        }

        v70 += v76;
      }

      v73 += 2;
      --v69;
    }

    while (v69);
  }

  *&v376 = v70;
  *(&v376 + 1) = v71;
  v79 = v2[11];
  v379.i64[0] = v79;
  if (v346 != __base)
  {
    v80 = v71;
    if (!v79 || v79 * 2.5 >= v80)
    {
      HUDValueHistoryRecordAddValue(v2[10] + 4984, v80);
      HUDValueHistoryRecordAddValue(v2[10] + 6112, v70);
      v81 = v343;
      v82 = v344;
      v83 = (v344 - v343) >> 4;
      qsort(v343, v83, 0x10uLL, _HUDTimeRangeCompare);
      if (v82 == v81)
      {
        v85 = 0;
        v92 = 0.0;
      }

      else
      {
        v84 = 0;
        v85 = 0;
        v86 = 0;
        v87 = (v81 + 8);
        do
        {
          v89 = *(v87 - 1);
          v88 = *v87;
          v90 = *v87 - v89;
          if (*v87 >= v89)
          {
            if (v89 <= v86)
            {
              v89 = v86;
            }

            v77 = v88 >= v89;
            v91 = v88 - v89;
            if (!v77)
            {
              v91 = 0;
            }

            v85 += v91;
            if (v88 > v86)
            {
              v86 = *v87;
            }

            v84 += v90;
          }

          v87 += 2;
          --v83;
        }

        while (v83);
        v92 = v84;
      }

      HUDValueHistoryRecordAddValue(v2[10] + 2728, v85);
      HUDValueHistoryRecordAddValue(v2[10] + 3856, v92);
      *(&v378 + 1) = v85;
      v93 = v357;
      v94 = v358;
      v95 = (v358 - v357) >> 4;
      qsort(v357, v95, 0x10uLL, _HUDTimeRangeCompare);
      if (v94 == v93)
      {
        v97 = 0;
        v104 = 0.0;
      }

      else
      {
        v96 = 0;
        v97 = 0;
        v98 = 0;
        v99 = (v93 + 8);
        do
        {
          v101 = *(v99 - 1);
          v100 = *v99;
          v102 = *v99 - v101;
          if (*v99 >= v101)
          {
            if (v101 <= v98)
            {
              v101 = v98;
            }

            v77 = v100 >= v101;
            v103 = v100 - v101;
            if (!v77)
            {
              v103 = 0;
            }

            v97 += v103;
            if (v100 > v98)
            {
              v98 = *v99;
            }

            v96 += v102;
          }

          v99 += 2;
          --v95;
        }

        while (v95);
        v104 = v96;
      }

      HUDValueHistoryRecordAddValue(v2[10] + 7240, v97);
      HUDValueHistoryRecordAddValue(v2[10] + 8368, v104);
      *&v378 = v97;
      v105 = HUDValueHistoryRecordAddValue(v2[10] + 9496, ((v344 - v343) >> 4));
      if (*(v2[10] + 26) == 1)
      {
        v106 = v347;
        v107 = v348;
        v108 = (v348 - v347) >> 4;
        qsort(v347, v108, 0x10uLL, _HUDTimeRangeCompare);
        if (v107 == v106)
        {
          v118 = 0.0;
          v117 = 0.0;
        }

        else
        {
          v109 = 0;
          v110 = 0;
          v111 = 0;
          v112 = (v106 + 8);
          do
          {
            v114 = *(v112 - 1);
            v113 = *v112;
            v115 = *v112 - v114;
            if (*v112 >= v114)
            {
              if (v114 <= v111)
              {
                v114 = v111;
              }

              v77 = v113 >= v114;
              v116 = v113 - v114;
              if (!v77)
              {
                v116 = 0;
              }

              v110 += v116;
              if (v113 > v111)
              {
                v111 = *v112;
              }

              v109 += v115;
            }

            v112 += 2;
            --v108;
          }

          while (v108);
          v117 = v110;
          v118 = v109;
        }

        HUDValueHistoryRecordAddValue(v2[10] + 19648, v117);
        HUDValueHistoryRecordAddValue(v2[10] + 20776, v118);
        v119 = __src;
        v120 = v350;
        v121 = (v350 - __src) >> 4;
        qsort(__src, v121, 0x10uLL, _HUDTimeRangeCompare);
        if (v120 == v119)
        {
          v131 = 0.0;
          v130 = 0.0;
        }

        else
        {
          v122 = 0;
          v123 = 0;
          v124 = 0;
          v125 = (v119 + 8);
          do
          {
            v127 = *(v125 - 1);
            v126 = *v125;
            v128 = *v125 - v127;
            if (*v125 >= v127)
            {
              if (v127 <= v124)
              {
                v127 = v124;
              }

              v77 = v126 >= v127;
              v129 = v126 - v127;
              if (!v77)
              {
                v129 = 0;
              }

              v123 += v129;
              if (v126 > v124)
              {
                v124 = *v125;
              }

              v122 += v128;
            }

            v125 += 2;
            --v121;
          }

          while (v121);
          v130 = v123;
          v131 = v122;
        }

        HUDValueHistoryRecordAddValue(v2[10] + 17392, v130);
        HUDValueHistoryRecordAddValue(v2[10] + 18520, v131);
        v132 = v351;
        v133 = v352;
        v134 = (v352 - v351) >> 4;
        qsort(v351, v134, 0x10uLL, _HUDTimeRangeCompare);
        if (v133 == v132)
        {
          v144 = 0.0;
          v143 = 0.0;
        }

        else
        {
          v135 = 0;
          v136 = 0;
          v137 = 0;
          v138 = (v132 + 8);
          do
          {
            v140 = *(v138 - 1);
            v139 = *v138;
            v141 = *v138 - v140;
            if (*v138 >= v140)
            {
              if (v140 <= v137)
              {
                v140 = v137;
              }

              v77 = v139 >= v140;
              v142 = v139 - v140;
              if (!v77)
              {
                v142 = 0;
              }

              v136 += v142;
              if (v139 > v137)
              {
                v137 = *v138;
              }

              v135 += v141;
            }

            v138 += 2;
            --v134;
          }

          while (v134);
          v143 = v136;
          v144 = v135;
        }

        HUDValueHistoryRecordAddValue(v2[10] + 21904, v143);
        HUDValueHistoryRecordAddValue(v2[10] + 23032, v144);
        v145 = v353;
        v146 = v354;
        v147 = (v354 - v353) >> 4;
        qsort(v353, v147, 0x10uLL, _HUDTimeRangeCompare);
        if (v146 == v145)
        {
          v157 = 0.0;
          v156 = 0.0;
        }

        else
        {
          v148 = 0;
          v149 = 0;
          v150 = 0;
          v151 = (v145 + 8);
          do
          {
            v153 = *(v151 - 1);
            v152 = *v151;
            v154 = *v151 - v153;
            if (*v151 >= v153)
            {
              if (v153 <= v150)
              {
                v153 = v150;
              }

              v77 = v152 >= v153;
              v155 = v152 - v153;
              if (!v77)
              {
                v155 = 0;
              }

              v149 += v155;
              if (v152 > v150)
              {
                v150 = *v151;
              }

              v148 += v154;
            }

            v151 += 2;
            --v147;
          }

          while (v147);
          v156 = v149;
          v157 = v148;
        }

        HUDValueHistoryRecordAddValue(v2[10] + 24160, v156);
        HUDValueHistoryRecordAddValue(v2[10] + 25288, v157);
        v158 = v355;
        v159 = v356;
        v160 = (v356 - v355) >> 4;
        qsort(v355, v160, 0x10uLL, _HUDTimeRangeCompare);
        if (v159 == v158)
        {
          v170 = 0.0;
          v169 = 0.0;
        }

        else
        {
          v161 = 0;
          v162 = 0;
          v163 = 0;
          v164 = (v158 + 8);
          do
          {
            v166 = *(v164 - 1);
            v165 = *v164;
            v167 = *v164 - v166;
            if (*v164 >= v166)
            {
              if (v166 <= v163)
              {
                v166 = v163;
              }

              v77 = v165 >= v166;
              v168 = v165 - v166;
              if (!v77)
              {
                v168 = 0;
              }

              v162 += v168;
              if (v165 > v163)
              {
                v163 = *v164;
              }

              v161 += v167;
            }

            v164 += 2;
            --v160;
          }

          while (v160);
          v169 = v162;
          v170 = v161;
        }

        HUDValueHistoryRecordAddValue(v2[10] + 26416, v169);
        HUDValueHistoryRecordAddValue(v2[10] + 27544, v170);
        v171 = v362;
        v172 = v363;
        v173 = (v363 - v362) >> 4;
        qsort(v362, v173, 0x10uLL, _HUDTimeRangeCompare);
        if (v172 == v171)
        {
          v183 = 0.0;
          v182 = 0.0;
        }

        else
        {
          v174 = 0;
          v175 = 0;
          v176 = 0;
          v177 = (v171 + 8);
          do
          {
            v179 = *(v177 - 1);
            v178 = *v177;
            v180 = *v177 - v179;
            if (*v177 >= v179)
            {
              if (v179 <= v176)
              {
                v179 = v176;
              }

              v77 = v178 >= v179;
              v181 = v178 - v179;
              if (!v77)
              {
                v181 = 0;
              }

              v175 += v181;
              if (v178 > v176)
              {
                v176 = *v177;
              }

              v174 += v180;
            }

            v177 += 2;
            --v173;
          }

          while (v173);
          v182 = v175;
          v183 = v174;
        }

        HUDValueHistoryRecordAddValue(v2[10] + 47848, v182);
        HUDValueHistoryRecordAddValue(v2[10] + 48976, v183);
        v184 = v364;
        v185 = v365;
        v186 = (v365 - v364) >> 4;
        qsort(v364, v186, 0x10uLL, _HUDTimeRangeCompare);
        if (v185 == v184)
        {
          v193 = 0.0;
        }

        else
        {
          v187 = 0;
          v188 = 0;
          v189 = (v184 + 8);
          do
          {
            v191 = *(v189 - 1);
            v190 = *v189;
            if (*v189 >= v191)
            {
              if (v191 <= v188)
              {
                v191 = v188;
              }

              v77 = v190 >= v191;
              v192 = v190 - v191;
              if (!v77)
              {
                v192 = 0;
              }

              v187 += v192;
              if (v190 > v188)
              {
                v188 = *v189;
              }
            }

            v189 += 2;
            --v186;
          }

          while (v186);
          v193 = v187;
        }

        v105 = HUDValueHistoryRecordAddValue(v2[10] + 58000, v193);
      }

      for (i = 1; i != 7; ++i)
      {
        LODWORD(v105) = *(v381 + i);
        HUDValueHistoryRecordAddValue(v292[10] + 1128 * (i | 8) + 472, *&v105);
        v195 = &v366[3 * i];
        v196 = *v195;
        v197 = v195[1];
        v198 = (v197 - *v195) >> 4;
        qsort(*v195, v198, 0x10uLL, _HUDTimeRangeCompare);
        if (v197 == v196)
        {
          v208 = 0.0;
          v207 = 0.0;
        }

        else
        {
          v199 = 0;
          v200 = 0;
          v201 = 0;
          v202 = (v196 + 8);
          do
          {
            v204 = *(v202 - 1);
            v203 = *v202;
            v205 = *v202 - v204;
            if (*v202 >= v204)
            {
              if (v204 <= v201)
              {
                v204 = v201;
              }

              v77 = v203 >= v204;
              v206 = v203 - v204;
              if (!v77)
              {
                v206 = 0;
              }

              v200 += v206;
              if (v203 > v201)
              {
                v201 = *v202;
              }

              v199 += v205;
            }

            v202 += 2;
            --v198;
          }

          while (v198);
          v207 = v200;
          v208 = v199;
        }

        HUDValueHistoryRecordAddValue(v292[10] + 2256 * i + 26416, v207);
        v105 = HUDValueHistoryRecordAddValue(v292[10] + 2256 * i + 27544, v208);
      }

      v2 = v292;
      HUDValueHistoryRecordAddValue(v292[10] + 46720, v66);
      HUDValueHistoryRecordAddValue(v292[10] + 1600, v376);
      HUDValueHistoryRecordAddValue(v292[10] + 472, *(&v376 + 1));
      std::vector<HUDTimeRange>::reserve(&v359, ((v348 - v347) >> 4) + ((v350 - __src) >> 4) + ((v352 - v351) >> 4) + ((v356 - v355) >> 4) + ((v354 - v353) >> 4));
      if (v361 != v359 && *(v292[10] + 26) == 1)
      {
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v359, __dst, __src, v350, (v350 - __src) >> 4);
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v359, __dst, v347, v348, (v348 - v347) >> 4);
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v359, __dst, v351, v352, (v352 - v351) >> 4);
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v359, __dst, v355, v356, (v356 - v355) >> 4);
        std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(&v359, __dst, v353, v354, (v354 - v353) >> 4);
        v211 = v359;
        v212 = __dst;
        v213 = (__dst - v359) >> 4;
        qsort(v359, v213, 0x10uLL, _HUDTimeRangeCompare);
        if (v212 == v211)
        {
          v214 = 0;
          v215 = 0;
        }

        else
        {
          v214 = 0;
          v215 = 0;
          v216 = 0;
          v217 = (v211 + 8);
          do
          {
            v219 = *(v217 - 1);
            v218 = *v217;
            v220 = *v217 - v219;
            if (*v217 >= v219)
            {
              if (v219 <= v216)
              {
                v219 = v216;
              }

              v77 = v218 >= v219;
              v221 = v218 - v219;
              if (!v77)
              {
                v221 = 0;
              }

              v215 += v221;
              if (v218 > v216)
              {
                v216 = *v217;
              }

              v214 += v220;
            }

            v217 += 2;
            --v213;
          }

          while (v213);
        }

        *&v377 = v214;
        *(&v377 + 1) = v215;
        HUDValueHistoryRecordAddValue(v292[10] + 51232, v214);
        HUDValueHistoryRecordAddValue(v292[10] + 50104, *(&v377 + 1));
      }

      v222 = v369;
      v223 = v370 - v369;
      if (v370 != v369)
      {
        v224 = v223 >> 4;
        qsort(v369, v223 >> 4, 0x10uLL, _HUDTimeRangeCompare);
        v225 = 0;
        v226 = 0;
        v227 = (v222 + 8);
        do
        {
          v229 = *(v227 - 1);
          v228 = *v227;
          if (*v227 >= v229)
          {
            if (v229 <= v226)
            {
              v229 = v226;
            }

            v77 = v228 >= v229;
            v230 = v228 - v229;
            if (!v77)
            {
              v230 = 0;
            }

            v225 += v230;
            if (v228 > v226)
            {
              v226 = *v227;
            }
          }

          v227 += 2;
          --v224;
        }

        while (v224);
        HUDValueHistoryRecordAddValue(v292[10] + 54616, v225);
      }

      v231 = v374;
      v232 = v375 - v374;
      if (v375 != v374)
      {
        v233 = v232 >> 4;
        qsort(v374, v232 >> 4, 0x10uLL, _HUDTimeRangeCompare);
        v234 = 0;
        v235 = 0;
        v236 = (v231 + 8);
        do
        {
          v238 = *(v236 - 1);
          v237 = *v236;
          if (*v236 >= v238)
          {
            if (v238 <= v235)
            {
              v238 = v235;
            }

            v77 = v237 >= v238;
            v239 = v237 - v238;
            if (!v77)
            {
              v239 = 0;
            }

            v234 += v239;
            if (v237 > v235)
            {
              v235 = *v236;
            }
          }

          v236 += 2;
          --v233;
        }

        while (v233);
        HUDValueHistoryRecordAddValue(v292[10] + 55744, v234);
      }

      v240 = v367;
      v241 = v368 - v367;
      if (v368 != v367)
      {
        v242 = v241 >> 4;
        qsort(v367, v241 >> 4, 0x10uLL, _HUDTimeRangeCompare);
        v243 = 0;
        v244 = 0;
        v245 = (v240 + 8);
        do
        {
          v247 = *(v245 - 1);
          v246 = *v245;
          if (*v245 >= v247)
          {
            if (v247 <= v244)
            {
              v247 = v244;
            }

            v77 = v246 >= v247;
            v248 = v246 - v247;
            if (!v77)
            {
              v248 = 0;
            }

            v243 += v248;
            if (v246 > v244)
            {
              v244 = *v245;
            }
          }

          v245 += 2;
          --v242;
        }

        while (v242);
        HUDValueHistoryRecordAddValue(v292[10] + 52360, v243);
      }

      v249 = v372;
      v250 = v373 - v372;
      if (v373 != v372)
      {
        v251 = v250 >> 4;
        qsort(v372, v250 >> 4, 0x10uLL, _HUDTimeRangeCompare);
        v252 = 0;
        v253 = 0;
        v254 = (v249 + 8);
        do
        {
          v256 = *(v254 - 1);
          v255 = *v254;
          if (*v254 >= v256)
          {
            if (v256 <= v253)
            {
              v256 = v253;
            }

            v77 = v255 >= v256;
            v257 = v255 - v256;
            if (!v77)
            {
              v257 = 0;
            }

            v252 += v257;
            if (v255 > v253)
            {
              v253 = *v254;
            }
          }

          v254 += 2;
          --v251;
        }

        while (v251);
        HUDValueHistoryRecordAddValue(v292[10] + 53488, v252);
      }

      if (*(HUDGetGlobalConfig(v209, v210) + 28) == 1)
      {
        v258 = v341;
        if (v341)
        {
          v259 = 0;
          do
          {
            v259 += v258[3];
            v258 = *v258;
          }

          while (v258);
          v260 = v259;
        }

        else
        {
          v260 = 0.0;
        }

        HUDValueHistoryRecordAddValue(v292[10] + 56872, v260);
      }

      v261 = *(v292[10] + 464);
      if (v261)
      {
        v320.numDynamicLibraries = v343;
        v320.numBinaryFunctions = (v344 - v343) >> 4;
        v320.numComputePipelines = __base;
        v320.totalSyncShaderCompilations = (v346 - __base) >> 4;
        v320.numLibrariesFromSource = v357;
        v320.numRenderPipelines = (v358 - v357) >> 4;
        v320.totalSyncCompileTime = __src;
        v320.totalSyncCompileTimeFragment = (v350 - __src) >> 4;
        v320.totalAsyncShaderCompilations = v347;
        v320.totalCachedRequests = (v348 - v347) >> 4;
        v320.totalSyncCompileTimeVertex = v351;
        v320.totalSyncCompileTimeMesh = (v352 - v351) >> 4;
        v320.totalSyncCompileTimeObject = v353;
        v320.totalSyncCompileTimeCompute = (v354 - v353) >> 4;
        v324 = (v363 - v362) >> 4;
        v325 = v364;
        v326 = (v365 - v364) >> 4;
        v321 = v355;
        v322 = (v356 - v355) >> 4;
        v323 = v362;
        v331 = v380;
        v327 = v376;
        v328 = v377;
        v329 = v378;
        v330 = vextq_s8(v379, v379, 8uLL);
        (*(v261 + 16))(v261, &v320);
      }

      if (v290)
      {
        HUDBarrierInsightCheck(v292[10] + 68280);
        HUDTessellationInsightCheck(v292[10] + 68304);
        v295 = v343;
        v296 = (v344 - v343) >> 4;
        v299 = __base;
        v300 = (v346 - __base) >> 4;
        v297 = v357;
        v298 = (v358 - v357) >> 4;
        v303 = __src;
        v304 = (v350 - __src) >> 4;
        v301 = v347;
        v302 = (v348 - v347) >> 4;
        v305 = v351;
        v306 = (v352 - v351) >> 4;
        v307 = v353;
        v308 = (v354 - v353) >> 4;
        v311 = v362;
        v312 = (v363 - v362) >> 4;
        v313 = v364;
        v314 = (v365 - v364) >> 4;
        v309 = v355;
        v310 = (v356 - v355) >> 4;
        v319 = v380;
        v315 = v376;
        v316 = v377;
        v317 = v378;
        v318 = vextq_s8(v379, v379, 8uLL);
        HUDTargetRebindingInsightContextNextFrame(v292[10] + 67424, &v320, &v295, *(*(v292[4] + 8) + 24));
        LODWORD(v262) = v332;
        v263 = HUDValueHistoryRecordAddValue(v292[10] + 44464, v262);
        LODWORD(v263) = v333;
        v264 = HUDValueHistoryRecordAddValue(v292[10] + 45592, *&v263);
        LODWORD(v264) = v334;
        v265 = HUDValueHistoryRecordAddValue(v292[10] + 59128, *&v264);
        LODWORD(v265) = v335;
        HUDValueHistoryRecordAddValue(v292[10] + 60256, *&v265);
      }

      v266 = HUDCurrentTimeInNs();
      v267 = v292[10];
      if (v266 - *(v267 + 456) >= 0x3B9ACA01)
      {
        for (j = (v267 + 272); ; _HUDGPUTimeTrackerPushTopObjectHeap(v336, (j + 3)))
        {
          j = *j;
          if (!j)
          {
            break;
          }

          v269 = j[7];
          v270 = j[3] / v269;
          v271 = j[4] / v269;
          j[3] = v270;
          j[4] = v271;
        }

        for (k = v292[10] + 232; ; _HUDGPUTimeTrackerPushTopObjectHeap(v338, (k + 24)))
        {
          k = *k;
          if (!k)
          {
            break;
          }

          v273 = *(k + 56);
          v274 = *(k + 24) / v273;
          v275 = *(k + 32) / v273;
          *(k + 24) = v274;
          *(k + 32) = v275;
        }

        _HUDGPUTimeTrackerTopObjectHeapAssign(v292[10], v336, (v292[10] + 376), 10);
        _HUDGPUTimeTrackerTopObjectHeapAssign(v292[10], v338, (v292[10] + 296), 10);
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((v292[10] + 256));
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear((v292[10] + 216));
        *(v292[10] + 456) = HUDCurrentTimeInNs();
      }
    }
  }

  v276 = _MTLCompileTimeStatistics();
  v278 = v276;
  if (v276)
  {
    v295 = 0;
    v296 = &v295;
    v297 = 0x3032000000;
    v298 = __Block_byref_object_copy__423;
    v299 = __Block_byref_object_dispose__424;
    if (*(HUDGetGlobalConfig(v276, v277) + 2) == 1)
    {
      v300 = objc_opt_new();
    }

    else
    {
      v300 = 0;
    }

    memset(&v320, 0, sizeof(v320));
    v279 = v2[10];
    v294[0] = _NSConcreteStackBlock;
    v294[1] = 3221225472;
    v294[2] = ___Z49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermy_block_invoke_426;
    v294[3] = &unk_68B28;
    v294[4] = &v295;
    _HUDCompilerStatisticsParse((v279 + 67032), v278, v294, &v320);
    v280 = *(v296 + 40);
    if (v280 && [v280 length] >= 3)
    {
      v281 = [*(v296 + 40) substringToIndex:{objc_msgSend(*(v296 + 40), "length") - 2}];
      NSLog(@"[MTLHUD] Compiled %@, total %.2fms", v281, v320.totalSyncCompileTime / 1000000.0);
    }

    HUDValueHistoryRecordAddValue(v2[10] + 42208, v320.totalSyncCompileTime);
    HUDValueHistoryRecordAddValue(v2[10] + 43336, v320.totalSyncShaderCompilations);
    HUDValueHistoryRecordAddValue(v2[10] + 61384, *(v2[10] + 67072));
    HUDValueHistoryRecordAddValue(v2[10] + 64768, *(v2[10] + 67080));
    HUDValueHistoryRecordAddValue(v2[10] + 62512, *(v2[10] + 67088));
    HUDValueHistoryRecordAddValue(v2[10] + 63640, (*(v2[10] + 67064) + *(v2[10] + 67056)));
    HUDValueHistoryRecordAddValue(v2[10] + 65896, *(v2[10] + 67096));
    v282 = (v2[10] + 67144);
    v283 = *&v320.totalSyncCompileTimeVertex;
    v282[4] = *&v320.totalSyncCompileTime;
    v282[5] = v283;
    v282[6] = *&v320.totalSyncCompileTimeObject;
    v284 = *&v320.numLibrariesFromSource;
    *v282 = *&v320.numDynamicLibraries;
    v282[1] = v284;
    v285 = *&v320.totalAsyncShaderCompilations;
    v282[2] = *&v320.numComputePipelines;
    v282[3] = v285;
    if (v290)
    {
      HUDCompilerInsightHandleCompilerStatistics(v2[10] + 67256, &v320, (v2[10] + 67032));
    }

    _Block_object_dispose(&v295, 8);
  }

  if (*(HUDGetGlobalConfig(v276, v277) + 16) == 1)
  {
    v286 = HUDCurrentTimeInNs();
    HUDInternalPerfMetricGPUTimeTrackerAdd(v286 - _ZZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E17_timeTrackerBegin, v287);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(&v340);
  HUDGPUTimeTrackerFrameTimingDataStore::~HUDGPUTimeTrackerFrameTimingDataStore(&v343);
}

void sub_5484(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(&STACK[0x7C0]);
  HUDGPUTimeTrackerFrameTimingDataStore::~HUDGPUTimeTrackerFrameTimingDataStore(&STACK[0x7F0]);
  _Unwind_Resume(a1);
}

void std::vector<HUDTimeRange>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDTimeRange>>(a1, v10);
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

void std::vector<HUDTimeRange>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDTimeRange>>(a1, a2);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t __Block_byref_object_copy__423(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___Z49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermy_block_invoke_426(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  if (v3)
  {
    [v3 appendFormat:@"%@ (%.2fms), ", *(a3 + 16), *a3 / 1000000.0];
    v6 = HUDSignpostGetOSLog(0, v5);
    if (os_signpost_enabled(v6))
    {
      v7 = *(a3 + 16);
      v8 = *a3;
      v9 = *(a3 + 12);
      *buf = 138543874;
      v11 = v7;
      v12 = 2050;
      v13 = v8;
      v14 = 1026;
      v15 = v9;
      _os_signpost_emit_with_name_impl(&dword_0, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CompileShader", "name: %{public, name=name}@\ncompilation-time: %{public, name=total-compilation-time}llu\ncached: %{public, name=cached}d\n", buf, 0x1Cu);
    }
  }
}

void HUDGPUTimeTrackerEnumerateCompilerStatistics(uint64_t a1@<X0>, HUDCompilerStatistics *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3;
  HUDCompilerStatisticsInit(v12);
  if (a1)
  {
    v8 = _MTLCompileTimeStatistics();
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    _HUDCompilerStatisticsParse(a2, v8, v7, a4);
  }

  else
  {
    v9 = v12[5];
    *(a4 + 64) = v12[4];
    *(a4 + 80) = v9;
    *(a4 + 96) = v12[6];
    v10 = v12[1];
    *a4 = v12[0];
    *(a4 + 16) = v10;
    v11 = v12[3];
    *(a4 + 32) = v12[2];
    *(a4 + 48) = v11;
  }
}

void HUDGPUTimeTrackerSetFrameTimingSnapshotHandler(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = objc_retainBlock(v3);
    v5 = *(a1 + 464);
    *(a1 + 464) = v4;
  }
}

void _HUDGPUTimeTrackerCommandBufferComplete(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 globalTraceObjectID];
  [v3 GPUStartTime];
  v8 = v5;
  [v3 GPUEndTime];
  v6.f64[0] = v8;
  v6.f64[1] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = ___Z39_HUDGPUTimeTrackerCommandBufferCompleteP17HUDGPUTimeTrackerPU27objcproto16MTLCommandBuffer11objc_object_block_invoke;
  v9[3] = &__block_descriptor_64_e5_v8__0l;
  v9[4] = a1;
  v9[5] = v4;
  v10 = vcvtq_u64_f64(vmulq_f64(v6, vdupq_n_s64(0x41CDCD6500000000uLL)));
  HUDDispatchQueueAsync(v9);
}

void ___Z39_HUDGPUTimeTrackerCommandBufferCompleteP17HUDGPUTimeTrackerPU27objcproto16MTLCommandBuffer11objc_object_block_invoke(void *a1, uint64_t a2)
{
  if (*(HUDGetGlobalConfig(a1, a2) + 16) == 1)
  {
    _ZZZ39_HUDGPUTimeTrackerCommandBufferCompleteP17HUDGPUTimeTrackerPU27objcproto16MTLCommandBuffer11objc_objectEUb0_E17_timeTrackerBegin = HUDCurrentTimeInNs();
  }

  v18 = a1[4];
  os_unfair_lock_lock(v18 + 16756);
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1[4] + 56), a1 + 5);
  if (v3)
  {
    v5 = v3;
    v3[9] = a1[6];
    v3[10] = a1[7];
    v7 = v3[21];
    v6 = v3[22];
    if (v6 != v7)
    {
      v8 = 0;
      v9 = 32;
      do
      {
        v10 = v7 + 312 * v8;
        if (*(v10 + 24) != 0xFFFFFFFFLL)
        {
          if (*v10 == 1)
          {
            v11 = 4;
          }

          else
          {
            v11 = 2;
          }

          v12 = [*(a1[4] + 40) resolveCounterRange:?];
          v13 = [v12 bytes];
          if (v13)
          {
            v14 = (v7 + v9);
            do
            {
              v15 = *v13++;
              *v14++ = v15;
              --v11;
            }

            while (v11);
          }

          v7 = v5[21];
          v6 = v5[22];
        }

        ++v8;
        v9 += 312;
      }

      while (v8 < 0x6F96F96F96F96F97 * ((v6 - v7) >> 3));
    }
  }

  if (*(HUDGetGlobalConfig(v3, v4) + 16) == 1)
  {
    v16 = HUDCurrentTimeInNs();
    HUDInternalPerfMetricGPUTimeTrackerAdd(v16 - _ZZZ39_HUDGPUTimeTrackerCommandBufferCompleteP17HUDGPUTimeTrackerPU27objcproto16MTLCommandBuffer11objc_objectEUb0_E17_timeTrackerBegin, v17);
  }

  os_unfair_lock_unlock(v18 + 16756);
}

void _HUDGPUTimeTrackerCommandBufferScheduled(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v5 = [v3 globalTraceObjectID];
  os_unfair_lock_lock(a1 + 16756);
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v5);
  if (v4)
  {
    *(v4 + 88) = 1;
  }

  os_unfair_lock_unlock(a1 + 16756);
}

void HUDGPUTimeTrackerCommandBufferCommit(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v14 = [v3 globalTraceObjectID];
    os_unfair_lock_lock((a1 + 67024));
    v5 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v14);
    if (v5)
    {
      v6 = v5;
      if (!v5[8])
      {
        v5[8] = HUDCurrentTimeInNs();
        if (*(a1 + 26) == 1 && *(v6 + 24) != 1)
        {
          v7 = [v4 label];
          if (v7)
          {
            v8 = [v4 label];
            v9 = [v8 length];

            if (v9)
            {
              v10 = [v4 label];
              v6[4] = _HUDGPUTimeTrackerAddLabel(a1, v11, v10, v6[5], 0);
            }
          }
        }

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = __HUDGPUTimeTrackerCommandBufferCommit_block_invoke;
        v13[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v13[4] = a1;
        [v4 addScheduledHandler:v13];
        v12[0] = _NSConcreteStackBlock;
        v12[1] = 3221225472;
        v12[2] = __HUDGPUTimeTrackerCommandBufferCommit_block_invoke_2;
        v12[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v12[4] = a1;
        [v4 addCompletedHandler:v12];
      }
    }

    os_unfair_lock_unlock((a1 + 67024));
  }
}

void sub_5E3C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

_BYTE *HUDGPUTimeTrackerGetValueRecord(_BYTE *result, unsigned int a2)
{
  if (result)
  {
    if (a2 > 0x31 || ((1 << a2) & 0x2BC0001FF8000) == 0 || result[26] == 1 && result[27] == 1 && result[25] == 1)
    {
      result += 1128 * a2 + 472;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id HUDGPUTimeTrackerCreateRenderEncder(os_unfair_lock_s *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    if (_HUDGPUTimeTrackerCanSampleRenderEncoder(a1, v8))
    {
      v13 = _HUDGPUTimeTrackerPatchRenderPassDescriptor(a1, v8);
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddRenderEncoder(a1, v7, v11, 1, v13, v8);
    }

    else
    {
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddRenderEncoder(a1, v7, v11, 1, 0xFFFFFFFFLL, v8);
    }
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

uint64_t _HUDGPUTimeTrackerCanSampleRenderEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  for (i = 0; i != 4; ++i)
  {
    v5 = [v3 sampleBufferAttachments];
    v6 = [v5 objectAtIndexedSubscript:i];
    v7 = [v6 sampleBuffer];
    if (v7)
    {
      v8 = [v3 sampleBufferAttachments];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [v9 sampleBuffer];
      v11 = *(a1 + 40);

      if (v10 != v11)
      {
        *(a1 + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (*(a1 + 32) && *(a1 + 27) == 1 && (*(a1 + 24) & 1) == 0 && *(a1 + 26) == 1)
  {
    v12 = *(a1 + 25);
    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12 & 1;
}

uint64_t _HUDGPUTimeTrackerPatchRenderPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v5 = v4;
  *v4 = 1;
  if ((*(a1 + 48) - 4093) <= 0xFFFFFFFFFFFFEFFELL)
  {
    *(a1 + 48) = 0;
  }

  v6 = [v3 sampleBufferAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];

  [v7 setStartOfVertexSampleIndex:*(a1 + 48)];
  [v7 setEndOfVertexSampleIndex:*(a1 + 48) + 1];
  [v7 setStartOfFragmentSampleIndex:*(a1 + 48) + 2];
  [v7 setEndOfFragmentSampleIndex:*(a1 + 48) + 3];
  [v7 setSampleBuffer:*(a1 + 40)];
  v8 = *(a1 + 48);
  *(a1 + 48) = (v8 + 4) & 0xFFF;

  *v5 = 0;
  os_unfair_lock_unlock((a1 + 67024));

  return v8;
}

void sub_62F4(_Unwind_Exception *a1)
{
  v6 = v4;

  *v3 = 0;
  os_unfair_lock_unlock((v2 + v5));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddRenderEncoder(os_unfair_lock_s *a1, void *a2, void *a3, int a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v35 = [v12 globalTraceObjectID];
  v34 = [v11 globalTraceObjectID];
  os_unfair_lock_lock(a1 + 16756);
  isCreatingEncoder();
  v15 = v14;
  *v14 = 1;
  v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v34);
  if (v16)
  {
    v17 = v16;
    v18 = v16[22];
    v19 = v16[23];
    if (v18 >= v19)
    {
      v21 = v16[21];
      v22 = 0x6F96F96F96F96F97 * ((v18 - v21) >> 3);
      v23 = v22 + 1;
      if ((v22 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v24 = 0x6F96F96F96F96F97 * ((v19 - v21) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x69069069069069)
      {
        v25 = 0xD20D20D20D20D2;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v16 + 21), v25);
      }

      v26 = 312 * v22;
      *(v26 + 304) = 0;
      *(v26 + 272) = 0u;
      *(v26 + 288) = 0u;
      *(v26 + 240) = 0u;
      *(v26 + 256) = 0u;
      *(v26 + 208) = 0u;
      *(v26 + 224) = 0u;
      *(v26 + 176) = 0u;
      *(v26 + 192) = 0u;
      *(v26 + 144) = 0u;
      *(v26 + 160) = 0u;
      *(v26 + 112) = 0u;
      *(v26 + 128) = 0u;
      *(v26 + 80) = 0u;
      *(v26 + 96) = 0u;
      *(v26 + 48) = 0u;
      *(v26 + 64) = 0u;
      *(v26 + 16) = 0u;
      *(v26 + 32) = 0u;
      *v26 = 0u;
      v20 = 312 * v22 + 312;
      v27 = v16[21];
      v28 = v16[22] - v27;
      v29 = 312 * v22 - v28;
      memcpy((v26 - v28), v27, v28);
      v30 = v17[21];
      v17[21] = v29;
      v17[22] = v20;
      v17[23] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *(v18 + 304) = 0;
      *(v18 + 272) = 0u;
      *(v18 + 288) = 0u;
      *(v18 + 240) = 0u;
      *(v18 + 256) = 0u;
      *(v18 + 208) = 0u;
      *(v18 + 224) = 0u;
      *(v18 + 176) = 0u;
      *(v18 + 192) = 0u;
      *(v18 + 144) = 0u;
      *(v18 + 160) = 0u;
      *(v18 + 112) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 80) = 0u;
      *(v18 + 96) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *v18 = 0u;
      v20 = v18 + 312;
    }

    v17[22] = v20;
    v31 = (v20 - 312);
    *(v20 - 8) = 0;
    *(v20 - 24) = 0u;
    *(v20 - 40) = 0u;
    *(v20 - 56) = 0u;
    *(v20 - 72) = 0u;
    *(v20 - 88) = 0u;
    *(v20 - 104) = 0u;
    *(v20 - 120) = 0u;
    *(v20 - 136) = 0u;
    *(v20 - 152) = 0u;
    *(v20 - 168) = 0u;
    *(v20 - 184) = 0u;
    *(v20 - 200) = 0u;
    *(v20 - 216) = 0u;
    *(v20 - 232) = 0u;
    *(v20 - 248) = 0u;
    v31[2] = 0u;
    v31[3] = 0u;
    *v31 = 0u;
    v31[1] = 0u;
    *(v20 - 304) = HUDCurrentTimeInNs();
    *(v20 - 296) = HUDCurrentTimeInNs();
    *v31 = a4;
    *(v20 - 24) = v35;
    *(v20 - 288) = a5;
    v33 = v17[21];
    v32 = v17[22];
    v36 = &v35;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 16, &v35, &std::piecewise_construct, &v36)[3] = 0x6F96F96F96F96F97 * ((v32 - v33) >> 3) - 1;
    HUDTargetRebindingInsightEncoderInitRender(v20 - 248, v13);
  }

  *v15 = 0;
  os_unfair_lock_unlock(a1 + 16756);
}

id HUDGPUTimeTrackerCreateComputeEncder(os_unfair_lock_s *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    if (_HUDGPUTimeTrackerCanSampleComputeEncoder(a1, v8))
    {
      v13 = _HUDGPUTimeTrackerPatchComputePassDescriptor(a1, v8);
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 2, v13);
    }

    else
    {
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 2, 0xFFFFFFFFLL);
    }
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

uint64_t _HUDGPUTimeTrackerCanSampleComputeEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  for (i = 0; i != 4; ++i)
  {
    v5 = [v3 sampleBufferAttachments];
    v6 = [v5 objectAtIndexedSubscript:i];
    v7 = [v6 sampleBuffer];
    if (v7)
    {
      v8 = [v3 sampleBufferAttachments];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [v9 sampleBuffer];
      v11 = *(a1 + 40);

      if (v10 != v11)
      {
        *(a1 + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (*(a1 + 32) && *(a1 + 27) == 1 && (*(a1 + 24) & 1) == 0 && *(a1 + 26) == 1)
  {
    v12 = *(a1 + 25);
    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12 & 1;
}

uint64_t _HUDGPUTimeTrackerPatchComputePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v5 = v4;
  *v4 = 1;
  if ((*(a1 + 48) - 4095) <= 0xFFFFFFFFFFFFEFFELL)
  {
    *(a1 + 48) = 0;
  }

  v6 = [v3 sampleBufferAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];

  [v7 setStartOfEncoderSampleIndex:*(a1 + 48)];
  [v7 setEndOfEncoderSampleIndex:*(a1 + 48) + 1];
  [v7 setSampleBuffer:*(a1 + 40)];
  v8 = *(a1 + 48);
  *(a1 + 48) = (v8 + 2) & 0xFFF;

  *v5 = 0;
  os_unfair_lock_unlock((a1 + 67024));

  return v8;
}

void sub_6A48(_Unwind_Exception *a1)
{
  v6 = v4;

  *v3 = 0;
  os_unfair_lock_unlock((v2 + v5));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddEncoder(os_unfair_lock_s *a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v32 = [v10 globalTraceObjectID];
  v31 = [v9 globalTraceObjectID];
  os_unfair_lock_lock(a1 + 16756);
  isCreatingEncoder();
  v12 = v11;
  *v11 = 1;
  v13 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v31);
  if (v13)
  {
    v14 = v13;
    v15 = v13[22];
    v16 = v13[23];
    if (v15 >= v16)
    {
      v18 = v13[21];
      v19 = 0x6F96F96F96F96F97 * ((v15 - v18) >> 3);
      v20 = v19 + 1;
      if ((v19 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v21 = 0x6F96F96F96F96F97 * ((v16 - v18) >> 3);
      if (2 * v21 > v20)
      {
        v20 = 2 * v21;
      }

      if (v21 >= 0x69069069069069)
      {
        v22 = 0xD20D20D20D20D2;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v13 + 21), v22);
      }

      v23 = 312 * v19;
      *(v23 + 304) = 0;
      *(v23 + 272) = 0u;
      *(v23 + 288) = 0u;
      *(v23 + 240) = 0u;
      *(v23 + 256) = 0u;
      *(v23 + 208) = 0u;
      *(v23 + 224) = 0u;
      *(v23 + 176) = 0u;
      *(v23 + 192) = 0u;
      *(v23 + 144) = 0u;
      *(v23 + 160) = 0u;
      *(v23 + 112) = 0u;
      *(v23 + 128) = 0u;
      *(v23 + 80) = 0u;
      *(v23 + 96) = 0u;
      *(v23 + 48) = 0u;
      *(v23 + 64) = 0u;
      *(v23 + 16) = 0u;
      *(v23 + 32) = 0u;
      *v23 = 0u;
      v17 = 312 * v19 + 312;
      v24 = v13[21];
      v25 = v13[22] - v24;
      v26 = 312 * v19 - v25;
      memcpy((v23 - v25), v24, v25);
      v27 = v14[21];
      v14[21] = v26;
      v14[22] = v17;
      v14[23] = 0;
      if (v27)
      {
        operator delete(v27);
      }
    }

    else
    {
      *(v15 + 304) = 0;
      *(v15 + 272) = 0u;
      *(v15 + 288) = 0u;
      *(v15 + 240) = 0u;
      *(v15 + 256) = 0u;
      *(v15 + 208) = 0u;
      *(v15 + 224) = 0u;
      *(v15 + 176) = 0u;
      *(v15 + 192) = 0u;
      *(v15 + 144) = 0u;
      *(v15 + 160) = 0u;
      *(v15 + 112) = 0u;
      *(v15 + 128) = 0u;
      *(v15 + 80) = 0u;
      *(v15 + 96) = 0u;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *v15 = 0u;
      v17 = v15 + 312;
    }

    v14[22] = v17;
    v28 = (v17 - 312);
    *(v17 - 8) = 0;
    *(v17 - 24) = 0u;
    *(v17 - 40) = 0u;
    *(v17 - 56) = 0u;
    *(v17 - 72) = 0u;
    *(v17 - 88) = 0u;
    *(v17 - 104) = 0u;
    *(v17 - 120) = 0u;
    *(v17 - 136) = 0u;
    *(v17 - 152) = 0u;
    *(v17 - 168) = 0u;
    *(v17 - 184) = 0u;
    *(v17 - 200) = 0u;
    *(v17 - 216) = 0u;
    *(v17 - 232) = 0u;
    *(v17 - 248) = 0u;
    v28[2] = 0u;
    v28[3] = 0u;
    *v28 = 0u;
    v28[1] = 0u;
    *(v17 - 304) = HUDCurrentTimeInNs();
    *(v17 - 296) = HUDCurrentTimeInNs();
    *v28 = a4;
    *(v17 - 24) = v32;
    *(v17 - 288) = a5;
    *(v17 - 32) = *(v14 + 24);
    v30 = v14[21];
    v29 = v14[22];
    v33 = &v32;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v14 + 16, &v32, &std::piecewise_construct, &v33)[3] = 0x6F96F96F96F96F97 * ((v29 - v30) >> 3) - 1;
  }

  *v12 = 0;
  os_unfair_lock_unlock(a1 + 16756);
}

id HUDGPUTimeTrackerCreateBlitEncder(os_unfair_lock_s *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    if (_HUDGPUTimeTrackerCanSampleBlitEncoder(a1, v8))
    {
      v13 = _HUDGPUTimeTrackerPatchBlitPassDescriptor(a1, v8);
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 3, v13);
    }

    else
    {
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 3, 0xFFFFFFFFLL);
    }
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

uint64_t _HUDGPUTimeTrackerCanSampleBlitEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  for (i = 0; i != 4; ++i)
  {
    v5 = [v3 sampleBufferAttachments];
    v6 = [v5 objectAtIndexedSubscript:i];
    v7 = [v6 sampleBuffer];
    if (v7)
    {
      v8 = [v3 sampleBufferAttachments];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [v9 sampleBuffer];
      v11 = *(a1 + 40);

      if (v10 != v11)
      {
        *(a1 + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (*(a1 + 32) && *(a1 + 27) == 1 && (*(a1 + 24) & 1) == 0 && *(a1 + 26) == 1)
  {
    v12 = *(a1 + 25);
    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12 & 1;
}

uint64_t _HUDGPUTimeTrackerPatchBlitPassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v5 = v4;
  *v4 = 1;
  if ((*(a1 + 48) - 4095) <= 0xFFFFFFFFFFFFEFFELL)
  {
    *(a1 + 48) = 0;
  }

  v6 = [v3 sampleBufferAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];

  [v7 setStartOfEncoderSampleIndex:*(a1 + 48)];
  [v7 setEndOfEncoderSampleIndex:*(a1 + 48) + 1];
  [v7 setSampleBuffer:*(a1 + 40)];
  v8 = *(a1 + 48);
  *(a1 + 48) = (v8 + 2) & 0xFFF;

  *v5 = 0;
  os_unfair_lock_unlock((a1 + 67024));

  return v8;
}

void sub_7164(_Unwind_Exception *a1)
{
  v6 = v4;

  *v3 = 0;
  os_unfair_lock_unlock((v2 + v5));

  _Unwind_Resume(a1);
}

id HUDGPUTimeTrackerCreateResourceStateEncder(os_unfair_lock_s *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9[2](v9, v8);
  if (a1)
  {
    isCreatingEncoder();
    if ((*v11 & 1) == 0)
    {
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v10, 4, 0xFFFFFFFFLL);
    }

    v12 = v10;
  }

  else
  {
    v12 = v9[2](v9, v8);
  }

  v13 = v12;

  return v13;
}

id HUDGPUTimeTrackerCreateAccelerationStructureEncder(os_unfair_lock_s *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    if (_HUDGPUTimeTrackerCanSampleASEncoder(a1, v8))
    {
      v13 = _HUDGPUTimeTrackerPatchAccelerationStructurePassDescriptor(a1, v8);
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 5, v13);
    }

    else
    {
      v11 = v9[2](v9, v8);
      _HUDGPUTimeTrackerAddEncoder(a1, v7, v11, 5, 0xFFFFFFFFLL);
    }
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

uint64_t _HUDGPUTimeTrackerCanSampleASEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  for (i = 0; i != 4; ++i)
  {
    v5 = [v3 sampleBufferAttachments];
    v6 = [v5 objectAtIndexedSubscript:i];
    v7 = [v6 sampleBuffer];
    if (v7)
    {
      v8 = [v3 sampleBufferAttachments];
      v9 = [v8 objectAtIndexedSubscript:i];
      v10 = [v9 sampleBuffer];
      v11 = *(a1 + 40);

      if (v10 != v11)
      {
        *(a1 + 24) = 1;
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (!a1)
  {
    goto LABEL_13;
  }

LABEL_8:
  if (*(a1 + 32) && *(a1 + 27) == 1 && (*(a1 + 24) & 1) == 0 && *(a1 + 26) == 1)
  {
    v12 = *(a1 + 25);
    goto LABEL_14;
  }

LABEL_13:
  v12 = 0;
LABEL_14:

  return v12 & 1;
}

uint64_t _HUDGPUTimeTrackerPatchAccelerationStructurePassDescriptor(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 67024));
  isCreatingEncoder();
  v5 = v4;
  *v4 = 1;
  if ((*(a1 + 48) - 4095) <= 0xFFFFFFFFFFFFEFFELL)
  {
    *(a1 + 48) = 0;
  }

  v6 = [v3 sampleBufferAttachments];
  v7 = [v6 objectAtIndexedSubscript:0];

  [v7 setStartOfEncoderSampleIndex:*(a1 + 48)];
  [v7 setEndOfEncoderSampleIndex:*(a1 + 48) + 1];
  [v7 setSampleBuffer:*(a1 + 40)];
  v8 = *(a1 + 48);
  *(a1 + 48) = (v8 + 2) & 0xFFF;

  *v5 = 0;
  os_unfair_lock_unlock((a1 + 67024));

  return v8;
}

void sub_767C(_Unwind_Exception *a1)
{
  v6 = v4;

  *v3 = 0;
  os_unfair_lock_unlock((v2 + v5));

  _Unwind_Resume(a1);
}

void HUDGPUTimeTrackerEndEncoding(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    isCreatingEncoder();
    if ((*v3 & 1) == 0)
    {
      _HUDGPUTimeTrackerEndEncoder(a1, v4);
    }
  }
}

uint64_t _HUDGPUTimeTrackerEndEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = [v3 globalTraceObjectID];
  v4 = [v3 commandBuffer];
  v5 = [v4 globalTraceObjectID];

  v16 = v5;
  os_unfair_lock_lock((a1 + 67024));
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v16);
  if (v6)
  {
    v7 = v6;
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v6 + 16, &v17);
    if (v8)
    {
      v9 = v7[21] + 312 * v8[3];
      *(v9 + 16) = HUDCurrentTimeInNs();
      if (*(a1 + 26) == 1 && *(v9 + 280) != 1)
      {
        v10 = [v3 label];
        if (v10)
        {
          v11 = [v3 label];
          v12 = [v11 length];

          if (v12)
          {
            v13 = [v3 label];
            *(v9 + 296) = _HUDGPUTimeTrackerAddLabel(a1, v14, v13, v7[5], 1u);
          }
        }
      }
    }
  }

  os_unfair_lock_unlock((a1 + 67024));

  return 0;
}

void sub_7884(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void HUDGPUTimeTrackerMarkFrameBoundary(os_unfair_lock_s *result)
{
  if (!result)
  {
    return;
  }

  os_unfair_lock_lock(result + 16756);
  os_unfair_lock_opaque = result[17082]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == 1)
  {
    v4 = dispatch_time(0, 0);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __HUDGPUTimeTrackerMarkFrameBoundary_block_invoke_2;
    v14[3] = &__block_descriptor_40_e5_v8__0l;
    v14[4] = result;
    dispatch_after(v4, &_dispatch_main_q, v14);
  }

  else if (os_unfair_lock_opaque == 2)
  {
    v3 = dispatch_time(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __HUDGPUTimeTrackerMarkFrameBoundary_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = result;
    dispatch_after(v3, &_dispatch_main_q, block);
    result[17082]._os_unfair_lock_opaque = 0;
  }

  ++*&result->_os_unfair_lock_opaque;
  v5 = *&result[18]._os_unfair_lock_opaque;
  while (v5)
  {
    if (*(v5 + 88))
    {
      goto LABEL_12;
    }

    if (*(v5 + 100))
    {
      v6 = *&result->_os_unfair_lock_opaque;
LABEL_11:
      *(v5 + 40) = v6;
LABEL_12:
      v5 = *v5;
    }

    else
    {
      v7 = *(v5 + 48);
      if (v7 >= 4)
      {
        v6 = *&result->_os_unfair_lock_opaque;
        v9 = *&result->_os_unfair_lock_opaque >= v7;
        v8 = *&result->_os_unfair_lock_opaque - v7;
        v9 = v8 != 0 && v9 && v8 >= 6;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v5 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase(&result[14]._os_unfair_lock_opaque, v5);
    }
  }

  os_unfair_lock_unlock(result + 16756);
  if (*(HUDGetGlobalConfig(v10, v11) + 37))
  {
    v12 = *&result->_os_unfair_lock_opaque - 1;
    v13 = HUDCurrentTimeInNs();
    if (*&result[2]._os_unfair_lock_opaque < v12)
    {
      *&result[2]._os_unfair_lock_opaque = v12;
      _HUDGPUTimeTrackerWrapupFrameForPresentedDrawable(result, v12, v13);
    }
  }
}

void __HUDGPUTimeTrackerMarkFrameBoundary_block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 68336) endScope];
  v2 = *(a1 + 32);
  v3 = *(v2 + 68336);
  *(v2 + 68336) = 0;
}

id __HUDGPUTimeTrackerMarkFrameBoundary_block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 68336) beginScope];
  *(*(a1 + 32) + 68328) = 2;
  return result;
}

void HUDGPUTimeTrackerFramePresented(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (*(a1 + 8) < a2)
    {
      *(a1 + 8) = a2;
      _HUDGPUTimeTrackerWrapupFrameForPresentedDrawable(a1, a2, a3);
    }
  }
}

const char *HUDGPUTimeTrackerGetRecordName(uint64_t a1, uint64_t a2)
{
  if (a1 > 58)
  {
    return "Unknown";
  }

  v3 = a1;
  _HUDGPUTimeTrackerGetMetricDescriptors(a1, a2);
  v4 = _HUDGPUTimeTrackerGetMetricDescriptors(void)::_HUDGPUTimeTrackerMetricIdentifiers[9 * v3];

  return [(__CFString *)v4 UTF8String];
}

uint64_t HUDGPUTimeTrackerGetTotalCompilerStatistics(uint64_t a1)
{
  if (a1)
  {
    return a1 + 67032;
  }

  else
  {
    return 0;
  }
}

void HUDGPUTimeTrackerMarkCommandBuffer(os_unfair_lock_s *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v8 = [v5 globalTraceObjectID];
    os_unfair_lock_lock(a1 + 16756);
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v8);
    if (v7)
    {
      *(v7 + 24) = a3;
    }

    os_unfair_lock_unlock(a1 + 16756);
  }
}

void HUDGPUTimeTrackerMarkEncoder(os_unfair_lock_s *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 commandBuffer];
    if (v7)
    {
      v12 = [v6 globalTraceObjectID];
      v11 = [v7 globalTraceObjectID];
      os_unfair_lock_lock(a1 + 16756);
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v11);
      if (v8)
      {
        v9 = v8;
        v10 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v8 + 16, &v12);
        if (v10)
        {
          *(v9[21] + 312 * v10[3] + 280) = a3;
        }
      }

      os_unfair_lock_unlock(a1 + 16756);
    }
  }
}

void sub_7D40(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v3 + v4));

  _Unwind_Resume(a1);
}

id HUDGPUTimeTrackerGetFrameCaptureScopeAndStartCapture(id a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    if (MTLHudIsCaptureEnabled(a1, a2))
    {
      *(v2 + 17082) = 1;
      v3 = +[MTLCaptureManager sharedCaptureManager];
      v4 = MTLCreateSystemDefaultDevice();
      v5 = [v3 newCaptureScopeWithDevice:v4];
      v6 = *(v2 + 8542);
      *(v2 + 8542) = v5;

      a1 = *(v2 + 8542);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void _HUDGPUTimeTrackerEnumerateCommonObjectRecords(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = 0;
  v7 = 296;
  if (a2 == 1)
  {
    v7 = 376;
  }

  v8 = a1 + v7;
  do
  {
    v11 = *(v8 + v6);
    if (!v11)
    {
      break;
    }

    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 176), &v11);
    v10 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 96), &v11);
    if (v9 && v10)
    {
      (*(v5 + 2))(v5, v10[6], *(v10 + 10), v9 + 3);
    }

    v6 += 8;
  }

  while (v6 != 80);
}

void HUDGPUTimeTrackerEnumerateTopCommandBufferRecords(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    os_unfair_lock_lock(a1 + 16756);
    _HUDGPUTimeTrackerEnumerateCommonObjectRecords(a1, 0, v4);
    os_unfair_lock_unlock(a1 + 16756);
    v3 = v4;
  }
}

void sub_7F70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 16756);

  _Unwind_Resume(a1);
}

void HUDGPUTimeTrackerEnumerateTopEncoderRecords(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    os_unfair_lock_lock(a1 + 16756);
    _HUDGPUTimeTrackerEnumerateCommonObjectRecords(a1, 1, v4);
    os_unfair_lock_unlock(a1 + 16756);
    v3 = v4;
  }
}

void sub_8004(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 16756);

  _Unwind_Resume(a1);
}

uint64_t HUDGPUTimeTrackerTopCommandBufferRecordsCount(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    v2 = result + 296;
    result = 10;
    while (v1 != 10)
    {
      if (!*(v2 + 8 * v1++))
      {
        return v1 - 1;
      }
    }
  }

  return result;
}

uint64_t HUDGPUTimeTrackerTopEncoderRecordsCount(uint64_t result)
{
  if (result)
  {
    v1 = 0;
    v2 = result + 376;
    result = 10;
    while (v1 != 10)
    {
      if (!*(v2 + 8 * v1++))
      {
        return v1 - 1;
      }
    }
  }

  return result;
}

uint64_t HUDGPUTimeTrackerGetTargetRebindingInsightContext(uint64_t a1)
{
  if (a1)
  {
    return a1 + 67424;
  }

  else
  {
    return 0;
  }
}

void HUDGPUTimeTrackerMTL4CommandBufferCreate(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __HUDGPUTimeTrackerMTL4CommandBufferCreate_block_invoke;
    block[3] = &unk_68BB8;
    v5 = v3;
    v25 = v5;
    if (HUDGPUTimeTrackerMTL4CommandBufferCreate::onceToken != -1)
    {
      dispatch_once(&HUDGPUTimeTrackerMTL4CommandBufferCreate::onceToken, block);
    }

    v6 = v5;
    v7 = v6;
    if (_mtl4HasGlobalTraceObjectId)
    {
      v8 = [v6 globalTraceObjectID];
    }

    else
    {
      v8 = v6;
    }

    v23 = v8;
    os_unfair_lock_lock(a1 + 16756);
    if (!std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v23))
    {
      v10 = v23;
      v11 = *&a1->_os_unfair_lock_opaque;
      v12 = v11;
      memset(v14, 0, sizeof(v14));
      v13 = 0u;
      v15 = 1;
      memset(v17, 0, sizeof(v17));
      v16 = 0u;
      v18 = 1065353216;
      memset(v21, 0, sizeof(v21));
      v20 = 0u;
      *__p = 0u;
      v22 = 1065353216;
      v26 = &v23;
      v9 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&a1[14]._os_unfair_lock_opaque, &v23, &std::piecewise_construct, &v26);
      HUDGPUTimeTrackerCommandBuffer::operator=((v9 + 3), &v10);
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v21);
      objc_destroyWeak(&v20 + 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v17);
    }

    os_unfair_lock_unlock(a1 + 16756);
  }
}

uint64_t __HUDGPUTimeTrackerMTL4CommandBufferCreate_block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    _mtl4HasGlobalTraceObjectId = 1;
  }

  return result;
}

void _HUDGPUTimeTrackerMTL4CommandBufferComplete(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [v5 GPUStartTime];
  v7 = v6;
  [v5 GPUEndTime];
  v9 = v8;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4812000000;
  v11[3] = __Block_byref_object_copy__439;
  v11[4] = __Block_byref_object_dispose__440;
  v11[5] = &unk_5D621;
  v13 = 0;
  v14 = 0;
  __p = 0;
  std::vector<MTL4CommandBufferCommit>::__init_with_size[abi:ne200100]<MTL4CommandBufferCommit*,MTL4CommandBufferCommit*>(&__p, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 4);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = ___Z43_HUDGPUTimeTrackerMTL4CommandBufferCompleteP17HUDGPUTimeTrackerPU29objcproto18MTL4CommitFeedback11objc_objectRKNSt3__16vectorI23MTL4CommandBufferCommitNS3_9allocatorIS5_EEEE_block_invoke;
  v10[3] = &unk_68BE0;
  v10[4] = v11;
  v10[5] = a1;
  v10[6] = (v7 * 1000000000.0);
  v10[7] = (v9 * 1000000000.0);
  HUDDispatchQueueAsync(v10);
  _Block_object_dispose(v11, 8);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_8408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  _Block_object_dispose(&a18, 8);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__439(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__440(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___Z43_HUDGPUTimeTrackerMTL4CommandBufferCompleteP17HUDGPUTimeTrackerPU29objcproto18MTL4CommitFeedback11objc_objectRKNSt3__16vectorI23MTL4CommandBufferCommitNS3_9allocatorIS5_EEEE_block_invoke(void *a1)
{
  v23 = a1[5];
  os_unfair_lock_lock(v23 + 16756);
  v2 = *(a1[4] + 8);
  v3 = *(v2 + 48);
  for (i = *(v2 + 56); v3 != i; v3 += 16)
  {
    v4 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1[5] + 56), v3);
    if (v4)
    {
      v25 = *(v3 + 8);
      v5 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v4 + 25, &v25);
      if (v5)
      {
        v6 = v5;
        v7 = a1[5];
        v5[9] = a1[6];
        v5[10] = a1[7];
        if (*(v7 + 68384))
        {
          v9 = v5[21];
          v8 = v5[22];
          if (v8 != v9)
          {
            v10 = 0;
            v11 = 32;
            do
            {
              v12 = v9 + 312 * v10;
              v13 = *(v12 + 24);
              if (v13 != 0xFFFFFFFFLL)
              {
                if (*v12 == 1)
                {
                  v14 = 4;
                }

                else
                {
                  v14 = 2;
                }

                v15 = [*(a1[5] + 68384) resolveCounterRange:{v13, v14}];
                v16 = [v15 bytes];
                v17 = a1[5] + 0x10000;
                if (v16)
                {
                  v18 = (v9 + v11);
                  v19 = v14;
                  do
                  {
                    v21 = *v16++;
                    v20 = v21;
                    v22 = *(v17 + 2864);
                    if (v22)
                    {
                      v20 = (v20 / (v22 / 1000000000.0));
                    }

                    *v18++ = v20;
                    --v19;
                  }

                  while (v19);
                }

                [*(v17 + 2848) invalidateCounterRange:{v13, v14}];

                v9 = v6[21];
                v8 = v6[22];
              }

              ++v10;
              v11 += 312;
            }

            while (v10 < 0x6F96F96F96F96F97 * ((v8 - v9) >> 3));
          }
        }
      }
    }
  }

  os_unfair_lock_unlock(v23 + 16756);
}

os_unfair_lock_s *HUDGPUTimeTrackerMTL4CommandBufferCommit(os_unfair_lock_s *a1, void *a2, id *a3, unint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  if (a1)
  {
    os_unfair_lock_lock(a1 + 16756);
    *(HUDGetGlobalConfig(v11, v12) + 28) = 1;
    if (!v10)
    {
      v10 = objc_opt_new();
    }

    v44 = 0;
    v45 = &v44;
    v46 = 0x4812000000;
    v47 = __Block_byref_object_copy__439;
    v48 = __Block_byref_object_dispose__440;
    v49 = &unk_5D621;
    v51 = 0;
    v52 = 0;
    __p = 0;
    std::vector<MTL4CommandBufferCommit>::reserve(&__p, a4);
    for (; a4; --a4)
    {
      v13 = *a3;
      v14 = v13;
      if (_mtl4HasGlobalTraceObjectId)
      {
        v15 = [v13 globalTraceObjectID];
      }

      else
      {
        v15 = v13;
      }

      v43 = v15;
      v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v43);
      if (v16)
      {
        v17 = v16;
        if (v16[7])
        {
          v18 = v45;
          v19 = *(v16 + 26);
          v21 = v45[7];
          v20 = v45[8];
          if (v21 >= v20)
          {
            v23 = v45[6];
            v24 = v21 - v23;
            v25 = (v21 - v23) >> 4;
            v26 = v25 + 1;
            if ((v25 + 1) >> 60)
            {
              std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
            }

            v27 = v20 - v23;
            if (v27 >> 3 > v26)
            {
              v26 = v27 >> 3;
            }

            v28 = v27 >= 0x7FFFFFFFFFFFFFF0;
            v29 = 0xFFFFFFFFFFFFFFFLL;
            if (!v28)
            {
              v29 = v26;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<MTL4CommandBufferCommit>>((v45 + 6), v29);
            }

            v30 = v25;
            v31 = 16 * v25;
            *v31 = v43;
            *(v31 + 8) = v19;
            v22 = 16 * v25 + 16;
            v32 = (v31 - 16 * v30);
            memcpy(v32, v23, v24);
            v33 = v18[6];
            v18[6] = v32;
            v18[7] = v22;
            v18[8] = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          else
          {
            *v21 = v43;
            *(v21 + 8) = v19;
            v22 = v21 + 16;
          }

          v18[7] = v22;
          if (BYTE2(a1[6]._os_unfair_lock_opaque) == 1 && *(v17 + 24) != 1)
          {
            v34 = [*a3 label];
            if (v34)
            {
              v35 = [*a3 label];
              v36 = [v35 length];

              if (v36)
              {
                v37 = [*a3 label];
                v17[4] = _HUDGPUTimeTrackerAddLabel(a1, v38, v37, v17[5], 0);
              }
            }
          }

          v42 = *(v17 + 26);
          v53 = &v42;
          v39 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v17 + 25, &v42, &std::piecewise_construct, &v53);
          _HUDGPUTimeTrackerCommandBufferSnapshot((v17 + 3), (v39 + 3));
          v17[7] = 0;
          v17[22] = v17[21];
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(v17 + 16);
          v17[14] = 0;
          v17[15] = 0;
          ++*(v17 + 26);
        }
      }

      ++a3;
    }

    if (v45[6] != v45[7])
    {
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = __HUDGPUTimeTrackerMTL4CommandBufferCommit_block_invoke;
      v41[3] = &unk_68C08;
      v41[4] = &v44;
      v41[5] = a1;
      [(os_unfair_lock_s *)v10 addFeedbackHandler:v41];
    }

    v10 = v10;
    _Block_object_dispose(&v44, 8);
    if (__p)
    {
      v51 = __p;
      operator delete(__p);
    }

    os_unfair_lock_unlock(a1 + 16756);
    a1 = v10;
  }

  return a1;
}

void sub_8A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26)
{
  _Block_object_dispose(&a19, 8);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  os_unfair_lock_unlock(v26 + 16756);

  _Unwind_Resume(a1);
}

void std::vector<MTL4CommandBufferCommit>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTL4CommandBufferCommit>>(a1, a2);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }
}

void HUDGPUTimeTrackerMTL4CommandBufferBegin(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __HUDGPUTimeTrackerMTL4CommandBufferBegin_block_invoke;
  block[3] = &unk_68BB8;
  v7 = v5;
  v21 = v7;
  if (HUDGPUTimeTrackerMTL4CommandBufferBegin::onceToken == -1)
  {
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&HUDGPUTimeTrackerMTL4CommandBufferBegin::onceToken, block);
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  v8 = v7;
  v9 = v8;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v10 = [v8 globalTraceObjectID];
  }

  else
  {
    v10 = v8;
  }

  v19 = v10;
  os_unfair_lock_lock((a1 + 67024));
  v11 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v19);
  if (v11 || (os_unfair_lock_unlock((a1 + 67024)), HUDGPUTimeTrackerMTL4CommandBufferCreate(a1, v9), os_unfair_lock_lock((a1 + 67024)), (v11 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v19)) != 0))
  {
    v12 = v11;
    if (*(a1 + 26) == 1 && *(a1 + 27) == 1 && *(a1 + 25) == 1 && !*(a1 + 68384))
    {
      v13 = [v9 device];
      *(a1 + 25) = _HUDMTL4CounterSetup(a1, v13);
    }

    v14 = v6;
    v15 = v14;
    if (_mtl4HasGlobalTraceObjectId)
    {
      v16 = [v14 globalTraceObjectID];
    }

    else
    {
      v16 = v14;
    }

    v18 = v16;
    v12[7] = HUDCurrentTimeInNs();
    v12[14] = v16;
    objc_storeWeak(v12 + 24, v15);
    v17 = v19;
    v22 = &v18;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>((a1 + 68344), &v18, &std::piecewise_construct, &v22)[3] = v17;
    os_unfair_lock_unlock((a1 + 67024));
  }

LABEL_17:
}

uint64_t __HUDGPUTimeTrackerMTL4CommandBufferBegin_block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    _mtl4HasGlobalTraceObjectId = 1;
  }

  return result;
}

uint64_t _HUDMTL4CounterSetup(uint64_t a1, void *a2)
{
  v3 = (a1 + 0x10000);
  v4 = a2;
  if (!v3[356])
  {
    if (*(a1 + 25) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_9;
    }

    v6 = objc_opt_new();
    [v6 setEntryCount:4096];
    [v6 setType:1];
    v12 = 0;
    v7 = [v4 newCounterHeapWithDescriptor:v6 error:&v12];
    v8 = v12;
    v9 = v3[356];
    v3[356] = v7;

    if (v8)
    {
      v10 = [v8 localizedDescription];
      NSLog(@"[libMTLHud] Failed to allocate MTL4CounterHeap: %@", v10);
    }

    v3[357] = 0;
    v3[358] = [v4 queryTimestampFrequency];
  }

  v5 = 1;
LABEL_9:

  return v5;
}

void sub_8F68(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void HUDGPUTimeTrackerMTL4CommandBufferEnd(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = v3;
    v6 = v5;
    if (_mtl4HasGlobalTraceObjectId)
    {
      v7 = [v5 globalTraceObjectID];
    }

    else
    {
      v7 = v5;
    }

    v13 = v7;
    os_unfair_lock_lock(a1 + 16756);
    v8 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[14]._os_unfair_lock_opaque, &v13);
    if (v8)
    {
      v9 = v8;
      v8[8] = HUDCurrentTimeInNs();
      WeakRetained = objc_loadWeakRetained(v9 + 24);

      if (WeakRetained)
      {
        v11 = objc_loadWeakRetained(v9 + 24);
        v9[15] = [v11 allocatedSize];
      }

      v12 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(&a1[17086]._os_unfair_lock_opaque, v9 + 14);
      if (v12)
      {
        std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(&a1[17086]._os_unfair_lock_opaque, v12);
      }
    }

    os_unfair_lock_unlock(a1 + 16756);
  }
}

void sub_90A0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v4));

  _Unwind_Resume(a1);
}

id HUDGPUTimeTrackerCreateMTL4RenderEncder(os_unfair_lock_s *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1 && (isCreatingEncoder(), *v10 != 1))
  {
    v12 = v10;
    os_unfair_lock_lock(a1 + 16756);
    *v12 = 1;
    v11 = v9[2](v9, v8);
    _HUDGPUTimeTrackerAddMTL4RenderEncoder(a1, v7, v11, 1, 0xFFFFFFFFLL, v8);
    *v12 = 0;
    os_unfair_lock_unlock(a1 + 16756);
  }

  else
  {
    v11 = v9[2](v9, v8);
  }

  return v11;
}

void sub_91EC(_Unwind_Exception *a1)
{
  *v5 = 0;
  os_unfair_lock_unlock((v4 + v7));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddMTL4RenderEncoder(_BYTE *a1, void *a2, void *a3, int a4, uint64_t a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a6;
  v14 = v12;
  v15 = v14;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v16 = [v14 globalTraceObjectID];
  }

  else
  {
    v16 = v14;
  }

  v44 = v16;
  v17 = v11;
  v18 = v17;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v19 = [v17 globalTraceObjectID];
  }

  else
  {
    v19 = v17;
  }

  v43 = v19;
  v20 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(a1 + 7, &v43);
  if (v20)
  {
    v21 = v20;
    v22 = v20[22];
    v23 = v20[23];
    if (v22 >= v23)
    {
      v25 = v20[21];
      v26 = 0x6F96F96F96F96F97 * ((v22 - v25) >> 3);
      v27 = v26 + 1;
      if ((v26 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v28 = 0x6F96F96F96F96F97 * ((v23 - v25) >> 3);
      if (2 * v28 > v27)
      {
        v27 = 2 * v28;
      }

      if (v28 >= 0x69069069069069)
      {
        v29 = 0xD20D20D20D20D2;
      }

      else
      {
        v29 = v27;
      }

      if (v29)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v20 + 21), v29);
      }

      v30 = 312 * v26;
      *(v30 + 304) = 0;
      *(v30 + 272) = 0u;
      *(v30 + 288) = 0u;
      *(v30 + 240) = 0u;
      *(v30 + 256) = 0u;
      *(v30 + 208) = 0u;
      *(v30 + 224) = 0u;
      *(v30 + 176) = 0u;
      *(v30 + 192) = 0u;
      *(v30 + 144) = 0u;
      *(v30 + 160) = 0u;
      *(v30 + 112) = 0u;
      *(v30 + 128) = 0u;
      *(v30 + 80) = 0u;
      *(v30 + 96) = 0u;
      *(v30 + 48) = 0u;
      *(v30 + 64) = 0u;
      *(v30 + 16) = 0u;
      *(v30 + 32) = 0u;
      *v30 = 0u;
      v24 = 312 * v26 + 312;
      v31 = v20[21];
      v32 = v20[22] - v31;
      v33 = 312 * v26 - v32;
      memcpy((v30 - v32), v31, v32);
      v34 = v21[21];
      v21[21] = v33;
      v21[22] = v24;
      v21[23] = 0;
      if (v34)
      {
        operator delete(v34);
      }
    }

    else
    {
      *(v22 + 304) = 0;
      *(v22 + 272) = 0u;
      *(v22 + 288) = 0u;
      *(v22 + 240) = 0u;
      *(v22 + 256) = 0u;
      *(v22 + 208) = 0u;
      *(v22 + 224) = 0u;
      *(v22 + 176) = 0u;
      *(v22 + 192) = 0u;
      *(v22 + 144) = 0u;
      *(v22 + 160) = 0u;
      *(v22 + 112) = 0u;
      *(v22 + 128) = 0u;
      *(v22 + 80) = 0u;
      *(v22 + 96) = 0u;
      *(v22 + 48) = 0u;
      *(v22 + 64) = 0u;
      *(v22 + 16) = 0u;
      *(v22 + 32) = 0u;
      *v22 = 0u;
      v24 = v22 + 312;
    }

    v21[22] = v24;
    v35 = (v24 - 312);
    *(v24 - 8) = 0;
    *(v24 - 24) = 0u;
    *(v24 - 40) = 0u;
    *(v24 - 56) = 0u;
    *(v24 - 72) = 0u;
    *(v24 - 88) = 0u;
    *(v24 - 104) = 0u;
    *(v24 - 120) = 0u;
    *(v24 - 136) = 0u;
    *(v24 - 152) = 0u;
    *(v24 - 168) = 0u;
    *(v24 - 184) = 0u;
    *(v24 - 200) = 0u;
    *(v24 - 216) = 0u;
    *(v24 - 232) = 0u;
    *(v24 - 248) = 0u;
    v35[2] = 0u;
    v35[3] = 0u;
    *v35 = 0u;
    v35[1] = 0u;
    *(v24 - 304) = HUDCurrentTimeInNs();
    *(v24 - 296) = HUDCurrentTimeInNs();
    *v35 = a4;
    *(v24 - 24) = v44;
    v36 = (v24 - 288);
    *(v24 - 288) = a5;
    v38 = v21[21];
    v37 = v21[22];
    v45 = &v44;
    v39 = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v21 + 16, &v44, &std::piecewise_construct, &v45);
    v39[3] = 0x6F96F96F96F96F97 * ((v37 - v38) >> 3) - 1;
    if (*(HUDGetGlobalConfig(v39, v40) + 3) == 1)
    {
      HUDTargetRebindingInsightEncoderInitRender(v24 - 248, v13);
    }

    if (a1)
    {
      if (a1[26] == 1 && a1[27] == 1 && a1[25] == 1)
      {
        v41 = a1 + 0x10000;
        if (*(v41 + 356))
        {
          v42 = *(v41 + 357);
          if ((v42 - 4093) <= 0xFFFFFFFFFFFFEFFELL)
          {
            v42 = 0;
            *(v41 + 357) = 0;
          }

          *v36 = v42;
          [v15 writeTimestampWithGranularity:0 afterStage:1 intoHeap:? atIndex:?];
          [v15 writeTimestampWithGranularity:0 afterStage:2 intoHeap:*(v41 + 356) atIndex:*v36 + 2];
          *(v41 + 357) = (*(v41 + 714) + 4) & 0xFFF;
        }
      }
    }
  }
}

id HUDGPUTimeTrackerCreateMTL4ComputeEncoder(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && (isCreatingEncoder(), *v7 != 1))
  {
    v9 = v7;
    os_unfair_lock_lock(a1 + 16756);
    *v9 = 1;
    v8 = v6[2](v6);
    _HUDGPUTimeTrackerAddMTL4ComputeEncoder(a1, v5, v8, 2, 0xFFFFFFFFLL);
    *v9 = 0;
    os_unfair_lock_unlock(a1 + 16756);
  }

  else
  {
    v8 = v6[2](v6);
  }

  return v8;
}

void sub_9714(_Unwind_Exception *a1)
{
  *v4 = 0;
  os_unfair_lock_unlock((v3 + v6));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddMTL4ComputeEncoder(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v12 = [v10 globalTraceObjectID];
  }

  else
  {
    v12 = v10;
  }

  v36 = v12;
  v13 = v9;
  v14 = v13;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v15 = [v13 globalTraceObjectID];
  }

  else
  {
    v15 = v13;
  }

  v35 = v15;
  v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v35);
  if (v16)
  {
    v17 = v16;
    v18 = v16[22];
    v19 = v16[23];
    if (v18 >= v19)
    {
      v21 = v16[21];
      v22 = 0x6F96F96F96F96F97 * ((v18 - v21) >> 3);
      v23 = v22 + 1;
      if ((v22 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v24 = 0x6F96F96F96F96F97 * ((v19 - v21) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x69069069069069)
      {
        v25 = 0xD20D20D20D20D2;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v16 + 21), v25);
      }

      v26 = 312 * v22;
      *(v26 + 304) = 0;
      *(v26 + 272) = 0u;
      *(v26 + 288) = 0u;
      *(v26 + 240) = 0u;
      *(v26 + 256) = 0u;
      *(v26 + 208) = 0u;
      *(v26 + 224) = 0u;
      *(v26 + 176) = 0u;
      *(v26 + 192) = 0u;
      *(v26 + 144) = 0u;
      *(v26 + 160) = 0u;
      *(v26 + 112) = 0u;
      *(v26 + 128) = 0u;
      *(v26 + 80) = 0u;
      *(v26 + 96) = 0u;
      *(v26 + 48) = 0u;
      *(v26 + 64) = 0u;
      *(v26 + 16) = 0u;
      *(v26 + 32) = 0u;
      *v26 = 0u;
      v20 = 312 * v22 + 312;
      v27 = v16[21];
      v28 = v16[22] - v27;
      v29 = 312 * v22 - v28;
      memcpy((v26 - v28), v27, v28);
      v30 = v17[21];
      v17[21] = v29;
      v17[22] = v20;
      v17[23] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *(v18 + 304) = 0;
      *(v18 + 272) = 0u;
      *(v18 + 288) = 0u;
      *(v18 + 240) = 0u;
      *(v18 + 256) = 0u;
      *(v18 + 208) = 0u;
      *(v18 + 224) = 0u;
      *(v18 + 176) = 0u;
      *(v18 + 192) = 0u;
      *(v18 + 144) = 0u;
      *(v18 + 160) = 0u;
      *(v18 + 112) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 80) = 0u;
      *(v18 + 96) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *v18 = 0u;
      v20 = v18 + 312;
    }

    v17[22] = v20;
    v31 = (v20 - 312);
    *(v20 - 8) = 0;
    *(v20 - 24) = 0u;
    *(v20 - 40) = 0u;
    *(v20 - 56) = 0u;
    *(v20 - 72) = 0u;
    *(v20 - 88) = 0u;
    *(v20 - 104) = 0u;
    *(v20 - 120) = 0u;
    *(v20 - 136) = 0u;
    *(v20 - 152) = 0u;
    *(v20 - 168) = 0u;
    *(v20 - 184) = 0u;
    *(v20 - 200) = 0u;
    *(v20 - 216) = 0u;
    *(v20 - 232) = 0u;
    *(v20 - 248) = 0u;
    v31[2] = 0u;
    v31[3] = 0u;
    *v31 = 0u;
    v31[1] = 0u;
    *(v20 - 304) = HUDCurrentTimeInNs();
    *(v20 - 296) = HUDCurrentTimeInNs();
    *v31 = a4;
    *(v20 - 24) = v36;
    *(v20 - 288) = a5;
    v33 = v17[21];
    v32 = v17[22];
    v37 = &v36;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 16, &v36, &std::piecewise_construct, &v37)[3] = 0x6F96F96F96F96F97 * ((v32 - v33) >> 3) - 1;
    if (a1 && *(a1 + 26) == 1 && *(a1 + 27) == 1 && *(a1 + 25) == 1 && *(a1 + 68384))
    {
      if ((*(a1 + 68392) - 4095) >= 0xFFFFFFFFFFFFEFFFLL)
      {
        v34 = *(a1 + 48);
      }

      else
      {
        v34 = 0;
        *(a1 + 48) = 0;
      }

      *(v20 - 288) = v34;
      [v11 writeTimestampWithGranularity:0 intoHeap:? atIndex:?];
      *(a1 + 68392) = (*(a1 + 68392) + 2) & 0xFFF;
    }
  }
}

id HUDGPUTimeTrackerCreateMTL4MLEncoder(os_unfair_lock_s *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1 && (isCreatingEncoder(), *v7 != 1))
  {
    v9 = v7;
    os_unfair_lock_lock(a1 + 16756);
    *v9 = 1;
    v8 = v6[2](v6);
    _HUDGPUTimeTrackerAddMTL4MLEncoder(a1, v5, v8, 6, 0xFFFFFFFFLL);
    *v9 = 0;
    os_unfair_lock_unlock(a1 + 16756);
  }

  else
  {
    v8 = v6[2](v6);
  }

  return v8;
}

void sub_9BDC(_Unwind_Exception *a1)
{
  *v4 = 0;
  os_unfair_lock_unlock((v3 + v6));

  _Unwind_Resume(a1);
}

void _HUDGPUTimeTrackerAddMTL4MLEncoder(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v9 = a2;
  v10 = a3;
  v11 = v10;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v12 = [v10 globalTraceObjectID];
  }

  else
  {
    v12 = v10;
  }

  v35 = v12;
  v13 = v9;
  v14 = v13;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v15 = [v13 globalTraceObjectID];
  }

  else
  {
    v15 = v13;
  }

  v34 = v15;
  v16 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v34);
  if (v16)
  {
    v17 = v16;
    v18 = v16[22];
    v19 = v16[23];
    if (v18 >= v19)
    {
      v21 = v16[21];
      v22 = 0x6F96F96F96F96F97 * ((v18 - v21) >> 3);
      v23 = v22 + 1;
      if ((v22 + 1) > 0xD20D20D20D20D2)
      {
        std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
      }

      v24 = 0x6F96F96F96F96F97 * ((v19 - v21) >> 3);
      if (2 * v24 > v23)
      {
        v23 = 2 * v24;
      }

      if (v24 >= 0x69069069069069)
      {
        v25 = 0xD20D20D20D20D2;
      }

      else
      {
        v25 = v23;
      }

      if (v25)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>((v16 + 21), v25);
      }

      v26 = 312 * v22;
      *(v26 + 304) = 0;
      *(v26 + 272) = 0u;
      *(v26 + 288) = 0u;
      *(v26 + 240) = 0u;
      *(v26 + 256) = 0u;
      *(v26 + 208) = 0u;
      *(v26 + 224) = 0u;
      *(v26 + 176) = 0u;
      *(v26 + 192) = 0u;
      *(v26 + 144) = 0u;
      *(v26 + 160) = 0u;
      *(v26 + 112) = 0u;
      *(v26 + 128) = 0u;
      *(v26 + 80) = 0u;
      *(v26 + 96) = 0u;
      *(v26 + 48) = 0u;
      *(v26 + 64) = 0u;
      *(v26 + 16) = 0u;
      *(v26 + 32) = 0u;
      *v26 = 0u;
      v20 = 312 * v22 + 312;
      v27 = v16[21];
      v28 = v16[22] - v27;
      v29 = 312 * v22 - v28;
      memcpy((v26 - v28), v27, v28);
      v30 = v17[21];
      v17[21] = v29;
      v17[22] = v20;
      v17[23] = 0;
      if (v30)
      {
        operator delete(v30);
      }
    }

    else
    {
      *(v18 + 304) = 0;
      *(v18 + 272) = 0u;
      *(v18 + 288) = 0u;
      *(v18 + 240) = 0u;
      *(v18 + 256) = 0u;
      *(v18 + 208) = 0u;
      *(v18 + 224) = 0u;
      *(v18 + 176) = 0u;
      *(v18 + 192) = 0u;
      *(v18 + 144) = 0u;
      *(v18 + 160) = 0u;
      *(v18 + 112) = 0u;
      *(v18 + 128) = 0u;
      *(v18 + 80) = 0u;
      *(v18 + 96) = 0u;
      *(v18 + 48) = 0u;
      *(v18 + 64) = 0u;
      *(v18 + 16) = 0u;
      *(v18 + 32) = 0u;
      *v18 = 0u;
      v20 = v18 + 312;
    }

    v17[22] = v20;
    v31 = (v20 - 312);
    *(v20 - 8) = 0;
    *(v20 - 24) = 0u;
    *(v20 - 40) = 0u;
    *(v20 - 56) = 0u;
    *(v20 - 72) = 0u;
    *(v20 - 88) = 0u;
    *(v20 - 104) = 0u;
    *(v20 - 120) = 0u;
    *(v20 - 136) = 0u;
    *(v20 - 152) = 0u;
    *(v20 - 168) = 0u;
    *(v20 - 184) = 0u;
    *(v20 - 200) = 0u;
    *(v20 - 216) = 0u;
    *(v20 - 232) = 0u;
    *(v20 - 248) = 0u;
    v31[2] = 0u;
    v31[3] = 0u;
    *v31 = 0u;
    v31[1] = 0u;
    *(v20 - 304) = HUDCurrentTimeInNs();
    *(v20 - 296) = HUDCurrentTimeInNs();
    *v31 = a4;
    *(v20 - 24) = v35;
    *(v20 - 288) = a5;
    v33 = v17[21];
    v32 = v17[22];
    v36 = &v35;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(v17 + 16, &v35, &std::piecewise_construct, &v36)[3] = 0x6F96F96F96F96F97 * ((v32 - v33) >> 3) - 1;
  }
}

void HUDGPOUTimeTrackerEndMTL4RenderEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7 = v3;
    os_unfair_lock_lock((a1 + 67024));
    v4 = _HUDGPUTimeTrackerEndMTL4Encoder(a1, v7);
    v5 = v4;
    if (v4)
    {
      if (*(a1 + 26) == 1 && *(a1 + 27) == 1 && *(a1 + 25) == 1)
      {
        v6 = *(a1 + 68384);
        if (v6)
        {
          [v7 writeTimestampWithGranularity:0 afterStage:1 intoHeap:v6 atIndex:*(v4 + 24) + 1];
          [v7 writeTimestampWithGranularity:0 afterStage:2 intoHeap:*(a1 + 68384) atIndex:*(v5 + 24) + 3];
        }
      }
    }

    os_unfair_lock_unlock((a1 + 67024));
    v3 = v7;
  }
}

void sub_9FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock((v10 + v11));

  _Unwind_Resume(a1);
}

uint64_t _HUDGPUTimeTrackerEndMTL4Encoder(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v5 = [v3 globalTraceObjectID];
  }

  else
  {
    v5 = v3;
  }

  v22 = v5;
  v6 = [v4 commandAllocator];
  v7 = v6;
  if (_mtl4HasGlobalTraceObjectId)
  {
    v8 = [v6 globalTraceObjectID];
  }

  else
  {
    v8 = v6;
  }

  v21 = v8;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 68344), &v21);
  if (v9 && (v20 = v9[3], (v10 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 56), &v20)) != 0) && (v11 = v10, (v12 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(v10 + 16, &v22)) != 0))
  {
    v13 = v11[21] + 312 * v12[3];
    *(v13 + 16) = HUDCurrentTimeInNs();
    if (*(a1 + 26) == 1 && *(v13 + 280) != 1)
    {
      v14 = [v4 label];
      if (v14)
      {
        v15 = [v4 label];
        v16 = [v15 length];

        if (v16)
        {
          v17 = [v4 label];
          *(v13 + 296) = _HUDGPUTimeTrackerAddLabel(a1, v18, v17, v11[5], 1u);
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void HUDGPOUTimeTrackerEndMTL4ComputeEncoder(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    os_unfair_lock_lock((a1 + 67024));
    v4 = _HUDGPUTimeTrackerEndMTL4Encoder(a1, v6);
    if (v4)
    {
      if (*(a1 + 26) == 1 && *(a1 + 27) == 1 && *(a1 + 25) == 1)
      {
        v5 = *(a1 + 68384);
        if (v5)
        {
          [v6 writeTimestampWithGranularity:0 intoHeap:v5 atIndex:*(v4 + 24) + 1];
        }
      }
    }

    os_unfair_lock_unlock((a1 + 67024));
    v3 = v6;
  }
}

void sub_A2A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 16756);

  _Unwind_Resume(a1);
}

void HUDGPOUTimeTrackerEndMTL4MLEncoder(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = v3;
    os_unfair_lock_lock(a1 + 16756);
    _HUDGPUTimeTrackerEndMTL4Encoder(a1, v4);
    os_unfair_lock_unlock(a1 + 16756);
    v3 = v4;
  }
}

void sub_A334(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10 + 16756);

  _Unwind_Resume(a1);
}

uint64_t _HUDCompilerStatisticsParseDict(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v10 = [v7 objectForKeyedSubscript:MTLCompileTimeStatisticsKeyFunctionName];
  v11 = v10;
  if (v10 && ([v10 hasPrefix:@"libMTLHud"] & 1) == 0)
  {
    v13 = [v7 objectForKeyedSubscript:MTLCompileTimeStatisticsKeyTotal];
    v14 = [v13 longLongValue];
    v12 = v14 & ~(v14 >> 63);
    v19 = v12;
    v22 = v11;
    v15 = [v7 objectForKeyedSubscript:MTLCompileTimeStatisticsKeyCachedFunction];
    v21 = [v15 BOOLValue];

    v16 = [v7 objectForKeyedSubscript:MTLPipelinePerformanceKeyTemporaryRegisterCount];
    v20 = [v16 intValue];

    if (v9)
    {
      v9[2](v9, v8, &v19);
    }

    if (v13)
    {
      *(a3 + 64) += v12;
      v17 = 40;
    }

    else
    {
      v17 = 48;
      if (v21)
      {
        v17 = 56;
      }
    }

    ++*(a3 + v17);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *> *>>(void *result, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = result[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*result + 8 * i) = 0;
    }

    v8 = result[2];
    result[2] = 0;
    result[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v8[2] = v4[2];
        HUDGPUTimeTrackerCommandBuffer::operator=((v8 + 3), (v4 + 3));
        v10 = *v8;
        v11 = v8[2];
        v8[1] = v11;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_prepare(result, v11, v8 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_perform(result, v8, inserted);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__deallocate_node(result, v10);
  }

  if (v4 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_multi<std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer> const&>(result);
  }
}

void sub_A638(void *a1)
{
  __cxa_begin_catch(a1);
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__deallocate_node(v1, v2);
  __cxa_rethrow();
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table((v2 + 25));
      objc_destroyWeak(v2 + 24);
      v4 = v2[21];
      if (v4)
      {
        v2[22] = v4;
        operator delete(v4);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table((v2 + 16));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__rehash<false>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__do_rehash<false>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_AC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_ACC8(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  *(a1 + 8) = v4;
  v6 = *(a2 + 56);
  v7 = *(a2 + 72);
  v8 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v8;
  *(a1 + 72) = v7;
  *(a1 + 56) = v6;
  std::unordered_map<unsigned long long,unsigned long>::unordered_map(a1 + 112, a2 + 112);
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  std::vector<HUDGPUTimeTrackerEncoder>::__init_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>((a1 + 152), *(a2 + 152), *(a2 + 160), 0x6F96F96F96F96F97 * ((*(a2 + 160) - *(a2 + 152)) >> 3));
  objc_copyWeak((a1 + 176), (a2 + 176));
  std::unordered_map<unsigned long long,HUDGPUTimeTrackerCommandBuffer>::unordered_map(a1 + 184, a2 + 184);
  return a1;
}

void sub_ADAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 176));
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 160) = v4;
    operator delete(v4);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v1 + 112);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned long long,unsigned long>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long> const&>(a1, i + 2, i + 1);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,unsigned long> const&>(void *a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t *std::vector<HUDGPUTimeTrackerEncoder>::__init_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_B384(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HUDGPUTimeTrackerEncoder>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xD20D20D20D20D3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>(a1, a2);
  }

  std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerEncoder>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xD20D20D20D20D3)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t std::unordered_map<unsigned long long,HUDGPUTimeTrackerCommandBuffer>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = (a2 + 16); ; std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer> const&>(a1, i + 2))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer> const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__construct_node_hash<std::pair<unsigned long long const,HUDGPUTimeTrackerCommandBuffer> const&>();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (result[2] != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_B7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_B850(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(a2 + 200);
    objc_destroyWeak((a2 + 192));
    v3 = *(a2 + 168);
    if (v3)
    {
      *(a2 + 176) = v3;
      operator delete(v3);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(a2 + 128);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void HUDGPUTimeTrackerFrameTimingDataStore::~HUDGPUTimeTrackerFrameTimingDataStore(HUDGPUTimeTrackerFrameTimingDataStore *this)
{
  for (i = 0; i != -96; i -= 24)
  {
    v3 = *(this + i + 600);
    if (v3)
    {
      *(this + i + 608) = v3;
      operator delete(v3);
    }
  }

  for (j = 0; j != -96; j -= 24)
  {
    v5 = *(this + j + 504);
    if (v5)
    {
      *(this + j + 512) = v5;
      operator delete(v5);
    }
  }

  for (k = 0; k != -168; k -= 24)
  {
    v7 = *(this + k + 408);
    if (v7)
    {
      *(this + k + 416) = v7;
      operator delete(v7);
    }
  }

  v8 = *(this + 30);
  if (v8)
  {
    *(this + 31) = v8;
    operator delete(v8);
  }

  v9 = *(this + 27);
  if (v9)
  {
    *(this + 28) = v9;
    operator delete(v9);
  }

  v10 = *(this + 24);
  if (v10)
  {
    *(this + 25) = v10;
    operator delete(v10);
  }

  v11 = *(this + 21);
  if (v11)
  {
    *(this + 22) = v11;
    operator delete(v11);
  }

  v12 = *(this + 18);
  if (v12)
  {
    *(this + 19) = v12;
    operator delete(v12);
  }

  v13 = *(this + 15);
  if (v13)
  {
    *(this + 16) = v13;
    operator delete(v13);
  }

  v14 = *(this + 12);
  if (v14)
  {
    *(this + 13) = v14;
    operator delete(v14);
  }

  v15 = *(this + 9);
  if (v15)
  {
    *(this + 10) = v15;
    operator delete(v15);
  }

  v16 = *(this + 6);
  if (v16)
  {
    *(this + 7) = v16;
    operator delete(v16);
  }

  v17 = *(this + 3);
  if (v17)
  {
    *(this + 4) = v17;
    operator delete(v17);
  }

  v18 = *this;
  if (*this)
  {
    *(this + 1) = v18;
    operator delete(v18);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::vector<HUDGPUTimeTrackerEncoder>::__assign_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x6F96F96F96F96F97 * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xD20D20D20D20D2)
    {
      v9 = 0x6F96F96F96F96F97 * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x69069069069069)
      {
        v11 = 0xD20D20D20D20D2;
      }

      else
      {
        v11 = v10;
      }

      std::vector<HUDGPUTimeTrackerEncoder>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0x6F96F96F96F96F97 * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<unsigned long long,unsigned long>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 1);
        *(v8 + 1) = v9;
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__emplace_multi<std::pair<unsigned long long const,unsigned long> const&>(a1, a2 + 1);
  }
}

void sub_BEA8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_C2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(HUDGPUTimeTrackerTopObjectHeapValue const&,HUDGPUTimeTrackerTopObjectHeapValue const&),HUDGPUTimeTrackerTopObjectHeapValue*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 40 * (v6 >> 1));
    v11 = (a2 - 40);
    if ((*a3)(v10, (a2 - 40)))
    {
      v13 = v11[1];
      v18 = *v11;
      v19 = v13;
      v20 = *(v11 + 4);
      do
      {
        v14 = v10;
        v15 = *v10;
        v16 = v10[1];
        *(v11 + 4) = *(v10 + 4);
        *v11 = v15;
        v11[1] = v16;
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 40 * v9);
        v11 = v14;
      }

      while (((*a3)(v10, &v18) & 1) != 0);
      result = *&v18;
      v17 = v19;
      *v14 = v18;
      v14[1] = v17;
      *(v14 + 4) = v20;
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,HUDGPUTimeTrackerCommonObjectRecord>>(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void std::__introsort<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,false>(unint64_t *result, unint64_t a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (a2 - 40);
  i = result;
  while (1)
  {
    result = i;
    v10 = a2 - i;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - i) >> 3);
    if (v11 > 2)
    {
      switch(v11)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(i, (i + 40), (a2 - 40));
          return;
        case 4:
          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(i, (i + 40), (i + 80));
          v61 = *(a2 - 32);
          v62 = *(i + 88);
          if (!(v61 | v62))
          {
            v61 = *v8;
            v62 = *(i + 80);
          }

          if (v61 > v62)
          {
            v63 = *(i + 80);
            v166 = *(i + 96);
            v64 = *(i + 112);
            v66 = *v8;
            v65 = *(a2 - 24);
            *(i + 112) = *(a2 - 8);
            *(i + 80) = v66;
            *(i + 96) = v65;
            *(a2 - 8) = v64;
            *v8 = v63;
            *(a2 - 24) = v166;
            v67 = *(i + 88);
            v68 = *(i + 48);
            if (!(v67 | v68))
            {
              v67 = *(i + 80);
              v68 = *(i + 40);
            }

            if (v67 > v68)
            {
              v69 = *(i + 72);
              v70 = *(i + 40);
              v71 = *(i + 96);
              *(i + 40) = *(i + 80);
              v72 = *(i + 56);
              *(i + 56) = v71;
              *(i + 72) = *(i + 112);
              *(i + 80) = v70;
              *(i + 96) = v72;
              *(i + 112) = v69;
              v73 = *(i + 48);
              v74 = *(i + 8);
              if (!(v73 | v74))
              {
                v73 = *(i + 40);
                v74 = *i;
              }

              if (v73 > v74)
              {
                v176 = *(i + 32);
                v157 = *i;
                v167 = *(i + 16);
                v75 = *(i + 56);
                *i = *(i + 40);
                *(i + 16) = v75;
                *(i + 32) = *(i + 72);
                *(i + 40) = v157;
                *(i + 56) = v167;
                *(i + 72) = v176;
              }
            }
          }

          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(i, i + 40, i + 80, i + 120, (a2 - 40));
          return;
      }
    }

    else
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v57 = *(a2 - 32);
        v58 = *(i + 8);
        if (!(v57 | v58))
        {
          v57 = *v8;
          v58 = *i;
        }

        if (v57 > v58)
        {
          v175 = *(i + 32);
          v156 = *i;
          v165 = *(i + 16);
          v59 = *v8;
          v60 = *(a2 - 24);
          *(i + 32) = *(a2 - 8);
          *i = v59;
          *(i + 16) = v60;
          *(a2 - 8) = v175;
          *v8 = v156;
          *(a2 - 24) = v165;
        }

        return;
      }
    }

    if (v10 <= 959)
    {
      break;
    }

    if (!a3)
    {
      if (i == a2)
      {
        return;
      }

      v92 = (v11 - 2) >> 1;
      v93 = v92;
      while (1)
      {
        v94 = v93;
        if (v92 >= v93)
        {
          v95 = (2 * v93) | 1;
          v96 = i + 40 * v95;
          if (2 * v94 + 2 < v11)
          {
            v97 = *(v96 + 8);
            v98 = *(v96 + 48);
            if (!(v97 | v98))
            {
              v97 = *v96;
              v98 = *(v96 + 40);
            }

            if (v97 > v98)
            {
              v96 += 40;
              v95 = 2 * v94 + 2;
            }
          }

          v99 = i + 40 * v94;
          v100 = *(v96 + 8);
          v101 = *(v99 + 8);
          if (v100 | v101)
          {
            if (v100 <= v101)
            {
              v102 = *v99;
LABEL_159:
              v169 = *(v99 + 32);
              v159 = *(v99 + 16);
              v103 = *v96;
              v104 = *(v96 + 16);
              *(v99 + 32) = *(v96 + 32);
              *v99 = v103;
              *(v99 + 16) = v104;
              if (v92 >= v95)
              {
                do
                {
                  v106 = 2 * v95;
                  v95 = (2 * v95) | 1;
                  v105 = i + 40 * v95;
                  v107 = v106 + 2;
                  if (v107 < v11)
                  {
                    v108 = *(v105 + 8);
                    v109 = *(v105 + 48);
                    if (!(v108 | v109))
                    {
                      v108 = *v105;
                      v109 = *(v105 + 40);
                    }

                    if (v108 > v109)
                    {
                      v105 += 40;
                      v95 = v107;
                    }
                  }

                  v110 = *(v105 + 8);
                  if (v110 | v101)
                  {
                    if (v110 > v101)
                    {
                      goto LABEL_160;
                    }
                  }

                  else if (*v105 > v102)
                  {
                    goto LABEL_160;
                  }

                  v111 = *v105;
                  v112 = *(v105 + 16);
                  *(v96 + 32) = *(v105 + 32);
                  *v96 = v111;
                  *(v96 + 16) = v112;
                  v96 = v105;
                }

                while (v92 >= v95);
              }

              else
              {
LABEL_160:
                v105 = v96;
              }

              *v105 = v102;
              *(v105 + 8) = v101;
              *(v105 + 16) = v159;
              *(v105 + 32) = v169;
            }
          }

          else
          {
            v102 = *v99;
            if (*v96 <= *v99)
            {
              goto LABEL_159;
            }
          }
        }

        v93 = v94 - 1;
        if (!v94)
        {
          v113 = 0xCCCCCCCCCCCCCCCDLL * (v10 >> 3);
          while (1)
          {
            v114 = 0;
            v177 = *(i + 32);
            v160 = *i;
            v170 = *(i + 16);
            v115 = i;
            do
            {
              v116 = v115;
              v117 = &v115[5 * v114];
              v115 = v117 + 5;
              v118 = 2 * v114;
              v114 = (2 * v114) | 1;
              v119 = v118 + 2;
              if (v119 < v113)
              {
                v120 = v117[6];
                v121 = v117[11];
                if (!(v120 | v121))
                {
                  v120 = v117[5];
                  v121 = v117[10];
                }

                if (v120 > v121)
                {
                  v115 = v117 + 10;
                  v114 = v119;
                }
              }

              v122 = *v115;
              v123 = *(v115 + 1);
              v116[4] = v115[4];
              *v116 = v122;
              *(v116 + 1) = v123;
            }

            while (v114 <= ((v113 - 2) >> 1));
            a2 -= 40;
            if (v115 == a2)
            {
              v115[4] = v177;
              *v115 = v160;
              *(v115 + 1) = v170;
            }

            else
            {
              v124 = *a2;
              v125 = *(a2 + 16);
              v115[4] = *(a2 + 32);
              *v115 = v124;
              *(v115 + 1) = v125;
              *(a2 + 32) = v177;
              *a2 = v160;
              *(a2 + 16) = v170;
              v126 = v115 - i + 40;
              if (v126 >= 41)
              {
                v127 = -2 - 0x3333333333333333 * (v126 >> 3);
                v128 = v127 >> 1;
                v129 = i + 40 * (v127 >> 1);
                v130 = *(v129 + 8);
                v131 = v115[1];
                if (v130 | v131)
                {
                  if (v130 > v131)
                  {
                    v132 = *v115;
LABEL_189:
                    v152 = v115[4];
                    v149 = *(v115 + 1);
                    v133 = *(v129 + 32);
                    v134 = *(v129 + 16);
                    *v115 = *v129;
                    *(v115 + 1) = v134;
                    v115[4] = v133;
                    if (v127 >= 2)
                    {
                      do
                      {
                        v136 = v128 - 1;
                        v128 = (v128 - 1) >> 1;
                        v135 = i + 40 * v128;
                        v137 = *(v135 + 8);
                        if (v137 | v131)
                        {
                          if (v137 <= v131)
                          {
                            goto LABEL_190;
                          }
                        }

                        else if (*v135 <= v132)
                        {
                          goto LABEL_190;
                        }

                        v138 = *v135;
                        v139 = *(v135 + 16);
                        *(v129 + 32) = *(v135 + 32);
                        *v129 = v138;
                        *(v129 + 16) = v139;
                        v129 = i + 40 * v128;
                      }

                      while (v136 > 1);
                    }

                    else
                    {
LABEL_190:
                      v135 = v129;
                    }

                    *v135 = v132;
                    *(v135 + 8) = v131;
                    *(v135 + 16) = v149;
                    *(v135 + 32) = v152;
                  }
                }

                else
                {
                  v132 = *v115;
                  if (*v129 > *v115)
                  {
                    goto LABEL_189;
                  }
                }
              }
            }

            v30 = v113-- <= 2;
            if (v30)
            {
              return;
            }
          }
        }
      }
    }

    v12 = v11 >> 1;
    v13 = i + 40 * (v11 >> 1);
    if (v10 < 0x1401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(v13, result, (a2 - 40));
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(result, v13, (a2 - 40));
      v14 = 5 * v12;
      v15 = &result[5 * v12 - 5];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(result + 5, v15, (a2 - 80));
      v16 = &result[v14 + 5];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(result + 10, v16, (a2 - 120));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(v15, v13, v16);
      v172 = result[4];
      v153 = *result;
      v162 = *(result + 1);
      v17 = *v13;
      v18 = *(v13 + 16);
      result[4] = *(v13 + 32);
      *result = v17;
      *(result + 1) = v18;
      *(v13 + 32) = v172;
      *v13 = v153;
      *(v13 + 16) = v162;
    }

    --a3;
    if (a4)
    {
      v20 = *result;
      v19 = result[1];
LABEL_20:
      v22 = 0;
      v147 = *(result + 1);
      v150 = result[4];
      while (1)
      {
        v23 = result[v22 + 6];
        if (v23 | v19)
        {
          break;
        }

        if (result[v22 + 5] <= v20)
        {
          goto LABEL_26;
        }

LABEL_25:
        v22 += 5;
      }

      if (v23 > v19)
      {
        goto LABEL_25;
      }

LABEL_26:
      v24 = &result[v22 + 5];
      v25 = (a2 - 40);
      if (v22 * 8)
      {
        do
        {
          while (1)
          {
            v26 = v25;
            v27 = v25[1];
            v25 -= 5;
            if (v27 | v19)
            {
              break;
            }

            if (*v26 > v20)
            {
              goto LABEL_42;
            }
          }
        }

        while (v27 <= v19);
      }

      else
      {
        v26 = a2;
        if (v24 < a2)
        {
          v28 = (a2 - 40);
          do
          {
            v26 = v28;
            v29 = v28[1];
            v28 -= 5;
            if (v29 | v19)
            {
              v30 = v29 > v19;
            }

            else
            {
              v30 = *v26 > v20;
            }
          }

          while (!v30 && v24 < v26);
        }
      }

LABEL_42:
      i = v24;
      if (v24 < v26)
      {
        v32 = v26;
        do
        {
          v173 = *(i + 32);
          v154 = *i;
          v163 = *(i + 16);
          v33 = *v32;
          v34 = *(v32 + 1);
          *(i + 32) = v32[4];
          *i = v33;
          *(i + 16) = v34;
          v32[4] = v173;
          *v32 = v154;
          *(v32 + 1) = v163;
          v35 = i + 40;
          do
          {
            while (1)
            {
              i = v35;
              v36 = *(v35 + 8);
              v35 += 40;
              if (v36 | v19)
              {
                break;
              }

              if (*i <= v20)
              {
                goto LABEL_49;
              }
            }
          }

          while (v36 > v19);
LABEL_49:
          v37 = v32 - 5;
          do
          {
            while (1)
            {
              v32 = v37;
              v38 = v37[1];
              v37 -= 5;
              if (v38 | v19)
              {
                break;
              }

              if (*v32 > v20)
              {
                goto LABEL_54;
              }
            }
          }

          while (v38 <= v19);
LABEL_54:
          ;
        }

        while (i < v32);
      }

      if ((i - 40) != result)
      {
        v39 = *(i - 40);
        v40 = *(i - 24);
        result[4] = *(i - 8);
        *result = v39;
        *(result + 1) = v40;
      }

      *(i - 40) = v20;
      *(i - 32) = v19;
      *(i - 8) = v150;
      *(i - 24) = v147;
      if (v24 < v26)
      {
LABEL_60:
        std::__introsort<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,false>(result, i - 40, a3, a4 & 1);
        a4 = 0;
      }

      else
      {
        v41 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *>(result, (i - 40));
        if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *>(i, a2))
        {
          a2 = i - 40;
          if (v41)
          {
            return;
          }

          goto LABEL_1;
        }

        if (!v41)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v21 = *(result - 4);
      v19 = result[1];
      if (v21 | v19)
      {
        v20 = *result;
        if (v21 > v19)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v20 = *result;
        if (*(result - 5) > *result)
        {
          v19 = 0;
          goto LABEL_20;
        }
      }

      v148 = *(result + 1);
      v151 = result[4];
      v42 = *(a2 - 32);
      if (v19 | v42)
      {
        if (v19 > v42)
        {
LABEL_71:
          v44 = (result + 5);
          do
          {
            while (1)
            {
              i = v44;
              v45 = *(v44 + 8);
              v44 += 40;
              if (v19 | v45)
              {
                break;
              }

              if (v20 > *i)
              {
                goto LABEL_76;
              }
            }
          }

          while (v19 <= v45);
          goto LABEL_76;
        }
      }

      else if (v20 > *v8)
      {
        goto LABEL_71;
      }

      for (i = (result + 5); i < a2; i += 40)
      {
        v43 = *(i + 8);
        if (v19 | v43)
        {
          if (v19 > v43)
          {
            break;
          }
        }

        else if (v20 > *i)
        {
          break;
        }
      }

LABEL_76:
      v46 = a2;
      if (i >= a2)
      {
        goto LABEL_94;
      }

      v47 = (a2 - 72);
      while (!(v19 | v42))
      {
        if (v20 <= v47[4])
        {
          goto LABEL_83;
        }

LABEL_82:
        v48 = *v47;
        v47 -= 5;
        v42 = v48;
      }

      if (v19 > v42)
      {
        goto LABEL_82;
      }

LABEL_83:
      v46 = (v47 + 4);
LABEL_94:
      while (i < v46)
      {
        v174 = *(i + 32);
        v155 = *i;
        v164 = *(i + 16);
        v49 = *v46;
        v50 = *(v46 + 16);
        *(i + 32) = *(v46 + 32);
        *i = v49;
        *(i + 16) = v50;
        *(v46 + 32) = v174;
        *v46 = v155;
        *(v46 + 16) = v164;
        v51 = i + 40;
        do
        {
          while (1)
          {
            i = v51;
            v52 = *(v51 + 8);
            v51 += 40;
            if (v19 | v52)
            {
              break;
            }

            if (v20 > *i)
            {
              goto LABEL_89;
            }
          }
        }

        while (v19 <= v52);
LABEL_89:
        v53 = v46 - 40;
        do
        {
          while (1)
          {
            v46 = v53;
            v54 = *(v53 + 8);
            v53 -= 40;
            if (v19 | v54)
            {
              break;
            }

            if (v20 <= *v46)
            {
              goto LABEL_94;
            }
          }
        }

        while (v19 > v54);
      }

      if ((i - 40) != result)
      {
        v55 = *(i - 40);
        v56 = *(i - 24);
        result[4] = *(i - 8);
        *result = v55;
        *(result + 1) = v56;
      }

      a4 = 0;
      *(i - 40) = v20;
      *(i - 32) = v19;
      *(i - 8) = v151;
      *(i - 24) = v148;
    }
  }

  v76 = i + 40;
  v78 = i == a2 || v76 == a2;
  if ((a4 & 1) == 0)
  {
    if (v78)
    {
      return;
    }

    while (1)
    {
      v140 = result;
      result = v76;
      v141 = *(v140 + 48);
      v142 = *(v140 + 8);
      if (v141 | v142)
      {
        if (v141 <= v142)
        {
          goto LABEL_212;
        }

        v143 = *result;
      }

      else
      {
        v143 = *result;
        if (*result <= *v140)
        {
          goto LABEL_212;
        }
      }

      v161 = *(v140 + 56);
      v171 = *(v140 + 72);
      do
      {
        while (1)
        {
          v144 = v140;
          v145 = *(v140 - 32);
          v146 = *(v140 + 16);
          *(v140 + 40) = *v140;
          *(v140 + 56) = v146;
          *(v140 + 72) = *(v140 + 32);
          v140 -= 40;
          if (v141 | v145)
          {
            break;
          }

          if (v143 <= *v140)
          {
            goto LABEL_211;
          }
        }
      }

      while (v141 > v145);
LABEL_211:
      *v144 = v143;
      *(v144 + 8) = v141;
      *(v144 + 16) = v161;
      *(v144 + 32) = v171;
LABEL_212:
      v76 = (result + 5);
      if (result + 5 == a2)
      {
        return;
      }
    }
  }

  if (v78)
  {
    return;
  }

  v79 = 0;
  v80 = i;
  while (2)
  {
    v81 = v80;
    v80 = v76;
    v82 = *(v81 + 48);
    v83 = *(v81 + 8);
    if (v82 | v83)
    {
      if (v82 <= v83)
      {
        goto LABEL_144;
      }

      v84 = *v80;
    }

    else
    {
      v84 = *v80;
      if (*v80 <= *v81)
      {
        goto LABEL_144;
      }
    }

    v158 = *(v81 + 56);
    v168 = *(v81 + 72);
    v85 = *(v81 + 16);
    *v80 = *v81;
    *(v80 + 16) = v85;
    *(v80 + 32) = *(v81 + 32);
    v86 = i;
    if (v81 == i)
    {
      goto LABEL_143;
    }

    v87 = v79;
    while (2)
    {
      v88 = i + v87;
      v89 = *(i + v87 - 32);
      v90 = (i + v87 - 40);
      if (!(v82 | v89))
      {
        if (v84 <= *v90)
        {
          v86 = v81;
          goto LABEL_143;
        }

LABEL_140:
        v81 -= 40;
        v91 = *(i + v87 - 24);
        *v88 = *v90;
        *(v88 + 16) = v91;
        *(v88 + 32) = *(i + v87 - 8);
        v87 -= 40;
        if (!v87)
        {
          v86 = i;
          goto LABEL_143;
        }

        continue;
      }

      break;
    }

    if (v82 > v89)
    {
      goto LABEL_140;
    }

    v86 = i + v87;
LABEL_143:
    *v86 = v84;
    *(v86 + 8) = v82;
    *(v86 + 16) = v158;
    *(v86 + 32) = v168;
LABEL_144:
    v76 = v80 + 40;
    v79 += 40;
    if (v80 + 40 != a2)
    {
      continue;
    }

    break;
  }
}

__n128 std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  v3 = a2[1];
  v4 = a1[1];
  if (v3 | v4)
  {
    if (v3 > v4)
    {
      v5 = a3 + 1;
      v6 = a3[1];
      goto LABEL_12;
    }
  }

  else if (*a2 > *a1)
  {
    v5 = a3 + 1;
    v6 = a3[1];
    if (!v6)
    {
      if (*a3 <= *a2)
      {
LABEL_5:
        result = *a1;
        v8 = *(a1 + 1);
        v9 = a1[4];
        v10 = a2[4];
        v11 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v11;
        a1[4] = v10;
        a2[4] = v9;
        *a2 = result;
        *(a2 + 1) = v8;
        v12 = *v5;
        v13 = a2[1];
        if (!(v12 | v13))
        {
          v12 = *a3;
          v13 = *a2;
        }

        if (v12 > v13)
        {
          result = *a2;
          v14 = *(a2 + 1);
          v15 = a2[4];
          v16 = a3[4];
          v17 = *(a3 + 1);
          *a2 = *a3;
          *(a2 + 1) = v17;
          a2[4] = v16;
          a3[4] = v15;
          *a3 = result;
          *(a3 + 1) = v14;
        }

        return result;
      }

LABEL_13:
      result = *a1;
      v18 = *(a1 + 1);
      v19 = a1[4];
      v20 = a3[4];
      v21 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v21;
      a1[4] = v20;
      a3[4] = v19;
      *a3 = result;
      *(a3 + 1) = v18;
      return result;
    }

LABEL_12:
    if (v6 <= v3)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  v22 = a3[1];
  if (!(v22 | v3))
  {
    v22 = *a3;
    v3 = *a2;
  }

  if (v22 > v3)
  {
    result = *a2;
    v23 = *(a2 + 1);
    v24 = a2[4];
    v25 = a3[4];
    v26 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v26;
    a2[4] = v25;
    a3[4] = v24;
    *a3 = result;
    *(a3 + 1) = v23;
    v27 = a2[1];
    v28 = a1[1];
    if (!(v27 | v28))
    {
      v27 = *a2;
      v28 = *a1;
    }

    if (v27 > v28)
    {
      result = *a1;
      v29 = *(a1 + 1);
      v30 = a1[4];
      v31 = a2[4];
      v32 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v32;
      a1[4] = v31;
      a2[4] = v30;
      *a2 = result;
      *(a2 + 1) = v29;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  result.n128_u64[0] = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, a2, a3).n128_u64[0];
  v11 = *(a4 + 8);
  v12 = *(a3 + 8);
  if (!(v11 | v12))
  {
    v11 = *a4;
    v12 = *a3;
  }

  if (v11 > v12)
  {
    result = *a3;
    v13 = *(a3 + 16);
    v14 = *(a3 + 32);
    v15 = *(a4 + 32);
    v16 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v16;
    *(a3 + 32) = v15;
    *(a4 + 32) = v14;
    *a4 = result;
    *(a4 + 16) = v13;
    v17 = *(a3 + 8);
    v18 = *(a2 + 8);
    if (!(v17 | v18))
    {
      v17 = *a3;
      v18 = *a2;
    }

    if (v17 > v18)
    {
      result = *a2;
      v19 = *(a2 + 16);
      v20 = *(a2 + 32);
      v21 = *(a3 + 32);
      v22 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v22;
      *(a2 + 32) = v21;
      *(a3 + 32) = v20;
      *a3 = result;
      *(a3 + 16) = v19;
      v23 = *(a2 + 8);
      v24 = *(a1 + 8);
      if (!(v23 | v24))
      {
        v23 = *a2;
        v24 = *a1;
      }

      if (v23 > v24)
      {
        result = *a1;
        v25 = *(a1 + 16);
        v26 = *(a1 + 32);
        v27 = *(a2 + 32);
        v28 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v28;
        *(a1 + 32) = v27;
        *(a2 + 32) = v26;
        *a2 = result;
        *(a2 + 16) = v25;
      }
    }
  }

  v29 = a5[1];
  v30 = *(a4 + 8);
  if (!(v29 | v30))
  {
    v29 = *a5;
    v30 = *a4;
  }

  if (v29 > v30)
  {
    result = *a4;
    v31 = *(a4 + 16);
    v32 = *(a4 + 32);
    v33 = a5[4];
    v34 = *(a5 + 1);
    *a4 = *a5;
    *(a4 + 16) = v34;
    *(a4 + 32) = v33;
    a5[4] = v32;
    *a5 = result;
    *(a5 + 1) = v31;
    v35 = *(a4 + 8);
    v36 = *(a3 + 8);
    if (!(v35 | v36))
    {
      v35 = *a4;
      v36 = *a3;
    }

    if (v35 > v36)
    {
      result = *a3;
      v37 = *(a3 + 16);
      v38 = *(a3 + 32);
      v39 = *(a4 + 32);
      v40 = *(a4 + 16);
      *a3 = *a4;
      *(a3 + 16) = v40;
      *(a3 + 32) = v39;
      *(a4 + 32) = v38;
      *a4 = result;
      *(a4 + 16) = v37;
      v41 = *(a3 + 8);
      v42 = *(a2 + 8);
      if (!(v41 | v42))
      {
        v41 = *a3;
        v42 = *a2;
      }

      if (v41 > v42)
      {
        result = *a2;
        v43 = *(a2 + 16);
        v44 = *(a2 + 32);
        v45 = *(a3 + 32);
        v46 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v46;
        *(a2 + 32) = v45;
        *(a3 + 32) = v44;
        *a3 = result;
        *(a3 + 16) = v43;
        v47 = *(a2 + 8);
        v48 = *(a1 + 8);
        if (!(v47 | v48))
        {
          v47 = *a2;
          v48 = *a1;
        }

        if (v47 > v48)
        {
          result = *a1;
          v49 = *(a1 + 16);
          v50 = *(a1 + 32);
          v51 = *(a2 + 32);
          v52 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v52;
          *(a1 + 32) = v51;
          *(a2 + 32) = v50;
          *a2 = result;
          *(a2 + 16) = v49;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *>(__int128 *a1, __int128 *a2)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, a1 + 5, a2 - 5);
        return 1;
      case 4:
        v26 = a2 - 5;
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, a1 + 5, a1 + 10);
        v27 = *(a2 - 4);
        v28 = *(a1 + 11);
        if (!(v27 | v28))
        {
          v27 = *v26;
          v28 = *(a1 + 10);
        }

        if (v27 > v28)
        {
          v29 = a1[5];
          v30 = a1[6];
          v31 = *(a1 + 14);
          v32 = *(a2 - 1);
          v33 = *(a2 - 24);
          a1[5] = *v26;
          a1[6] = v33;
          *(a1 + 14) = v32;
          *(a2 - 1) = v31;
          *v26 = v29;
          *(a2 - 24) = v30;
          v34 = *(a1 + 11);
          v35 = *(a1 + 6);
          if (!(v34 | v35))
          {
            v34 = *(a1 + 10);
            v35 = *(a1 + 5);
          }

          if (v34 > v35)
          {
            v36 = *(a1 + 9);
            v37 = *(a1 + 40);
            v38 = a1[6];
            *(a1 + 40) = a1[5];
            v39 = *(a1 + 56);
            *(a1 + 56) = v38;
            *(a1 + 9) = *(a1 + 14);
            a1[5] = v37;
            a1[6] = v39;
            *(a1 + 14) = v36;
            v40 = *(a1 + 6);
            v41 = *(a1 + 1);
            if (!(v40 | v41))
            {
              v40 = *(a1 + 5);
              v41 = *a1;
            }

            if (v40 > v41)
            {
              v42 = *(a1 + 4);
              v44 = *a1;
              v43 = a1[1];
              v45 = *(a1 + 56);
              *a1 = *(a1 + 40);
              a1[1] = v45;
              *(a1 + 4) = *(a1 + 9);
              *(a1 + 40) = v44;
              *(a1 + 56) = v43;
              result = 1;
              *(a1 + 9) = v42;
              return result;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, a1 + 40, (a1 + 5), a1 + 120, a2 - 5);
        return 1;
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
      v5 = a2 - 5;
      v6 = *(a2 - 4);
      v7 = *(a1 + 1);
      if (!(v6 | v7))
      {
        v6 = *v5;
        v7 = *a1;
      }

      if (v6 > v7)
      {
        v8 = *a1;
        v9 = a1[1];
        v10 = *(a1 + 4);
        v11 = *(a2 - 1);
        v12 = *(a2 - 24);
        *a1 = *v5;
        a1[1] = v12;
        *(a1 + 4) = v11;
        *(a2 - 1) = v10;
        result = 1;
        *v5 = v8;
        *(a2 - 24) = v9;
        return result;
      }

      return 1;
    }
  }

  v14 = (a1 + 5);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,_HUDGPUTimeTrackerTopObjectHeapAssign(HUDGPUTimeTracker *,HUDGPUTimeTrackerTopObjectHeap *,unsigned long long *,unsigned long)::$_0 &,HUDGPUTimeTrackerTopObjectHeapValue *,0>(a1, a1 + 5, a1 + 10);
  v15 = a1 + 120;
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (2)
  {
    v18 = *(v15 + 8);
    v19 = *(v14 + 8);
    if (v18 | v19)
    {
      if (v18 <= v19)
      {
        goto LABEL_29;
      }

      v20 = *v15;
    }

    else
    {
      v20 = *v15;
      if (*v15 <= *v14)
      {
        goto LABEL_29;
      }
    }

    v47 = *(v15 + 32);
    v46 = *(v15 + 16);
    v21 = *(v14 + 16);
    *v15 = *v14;
    *(v15 + 16) = v21;
    *(v15 + 32) = *(v14 + 32);
    v22 = v16;
    while (1)
    {
      v23 = a1 + v22;
      v24 = *(a1 + v22 + 48);
      if (!(v18 | v24))
      {
        if (v20 <= *(v23 + 40))
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      }

      if (v18 <= v24)
      {
        break;
      }

LABEL_25:
      v14 -= 40;
      v25 = *(v23 + 56);
      *(v23 + 80) = *(v23 + 40);
      *(v23 + 96) = v25;
      *(v23 + 112) = *(v23 + 72);
      v22 -= 40;
      if (v22 == -80)
      {
        v14 = a1;
        goto LABEL_28;
      }
    }

    v14 = a1 + v22 + 80;
LABEL_28:
    *v14 = v20;
    *(v14 + 8) = v18;
    *(v14 + 16) = v46;
    *(v14 + 32) = v47;
    if (++v17 != 8)
    {
LABEL_29:
      v14 = v15;
      v16 += 40;
      v15 += 40;
      if (v15 == a2)
      {
        return 1;
      }

      continue;
    }

    return v15 + 40 == a2;
  }
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(a1, a2, &v5);
  v3 = v5;
  v5 = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void std::vector<HUDGPUTimeTrackerCommandBuffer>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<HUDGPUTimeTrackerCommandBuffer>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<HUDGPUTimeTrackerCommandBuffer>::__base_destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(v3, i))
  {
    i -= 216;
  }

  *(v3 + 8) = a2;
  return result;
}

uint64_t std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(uint64_t a1, uint64_t a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(a2 + 176);
  objc_destroyWeak((a2 + 168));
  v3 = *(a2 + 144);
  if (v3)
  {
    *(a2 + 152) = v3;
    operator delete(v3);
  }

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(a2 + 104);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x12F684BDA12F685)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 == a3)
  {
    v17 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2 + 104;
    do
    {
      v9 = *(v8 - 104);
      v10 = *(v8 - 72);
      *(v4 + 16) = *(v8 - 88);
      *(v4 + 32) = v10;
      *v4 = v9;
      v11 = *(v8 - 56);
      v12 = *(v8 - 40);
      v13 = *(v8 - 24);
      *(v4 + 96) = *(v8 - 8);
      *(v4 + 64) = v12;
      *(v4 + 80) = v13;
      *(v4 + 48) = v11;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v4 + 104, v8);
      *(v4 + 144) = 0;
      *(v4 + 152) = 0;
      *(v4 + 160) = 0;
      *(v4 + 144) = *(v8 + 40);
      *(v4 + 160) = *(v8 + 56);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      objc_moveWeak((v4 + 168), (v8 + 64));
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v4 + 176, (v8 + 72));
      v4 = v19 + 216;
      v19 += 216;
      v14 = v8 + 112;
      v8 += 216;
    }

    while (v14 != a3);
    v17 = 1;
    while (v6 != a3)
    {
      std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(a1, v6);
      v6 += 216;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>>::~__exception_guard_exceptions[abi:ne200100](v16);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 216;
      result = std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

uint64_t std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::__destruct_at_end[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  while (1)
  {
    v4 = *(v3 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(v3 + 32);
    *(v3 + 16) = v4 - 216;
    result = std::allocator_traits<std::allocator<HUDGPUTimeTrackerCommandBuffer>>::destroy[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer,0>(v5, v4 - 216);
  }

  return result;
}

uint64_t std::vector<HUDGPUTimeTrackerCommandBuffer>::__construct_one_at_end[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[2];
  *(v4 + 16) = a2[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  *(v4 + 96) = *(a2 + 12);
  *(v4 + 64) = v8;
  *(v4 + 80) = v9;
  *(v4 + 48) = v7;
  std::unordered_map<unsigned long long,unsigned long>::unordered_map(v4 + 104, a2 + 104);
  *(v4 + 144) = 0;
  *(v4 + 152) = 0;
  *(v4 + 160) = 0;
  std::vector<HUDGPUTimeTrackerEncoder>::__init_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>((v4 + 144), *(a2 + 18), *(a2 + 19), 0x6F96F96F96F96F97 * ((*(a2 + 19) - *(a2 + 18)) >> 3));
  objc_copyWeak((v4 + 168), a2 + 21);
  result = std::unordered_map<unsigned long long,HUDGPUTimeTrackerCommandBuffer>::unordered_map(v4 + 176, (a2 + 11));
  *(a1 + 8) = v4 + 216;
  return result;
}

void sub_E43C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 168));
  v5 = *v2;
  if (*v2)
  {
    *(v3 + 152) = v5;
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v3 + 104);
  *(v1 + 8) = v3;
  _Unwind_Resume(a1);
}

uint64_t std::vector<HUDGPUTimeTrackerCommandBuffer>::__emplace_back_slow_path<HUDGPUTimeTrackerCommandBuffer const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((a1[2] - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((a1[2] - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v6 = 0x12F684BDA12F684;
  }

  else
  {
    v6 = v3;
  }

  v22 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>>(a1, v6);
  }

  v7 = 216 * v2;
  v19 = 0;
  v20 = v7;
  v21 = 216 * v2;
  v8 = *a2;
  v9 = a2[1];
  *(v7 + 32) = a2[2];
  v11 = a2[4];
  v10 = a2[5];
  v12 = a2[3];
  *(v7 + 96) = *(a2 + 12);
  *(v7 + 64) = v11;
  *(v7 + 80) = v10;
  *(v7 + 48) = v12;
  *v7 = v8;
  *(v7 + 16) = v9;
  std::unordered_map<unsigned long long,unsigned long>::unordered_map(216 * v2 + 104, a2 + 104);
  *(v7 + 144) = 0;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  std::vector<HUDGPUTimeTrackerEncoder>::__init_with_size[abi:ne200100]<HUDGPUTimeTrackerEncoder*,HUDGPUTimeTrackerEncoder*>((216 * v2 + 144), *(a2 + 18), *(a2 + 19), 0x6F96F96F96F96F97 * ((*(a2 + 19) - *(a2 + 18)) >> 3));
  objc_copyWeak((216 * v2 + 168), a2 + 21);
  std::unordered_map<unsigned long long,HUDGPUTimeTrackerCommandBuffer>::unordered_map(216 * v2 + 176, (a2 + 11));
  *&v21 = v21 + 216;
  v13 = a1[1];
  v14 = v20 + *a1 - v13;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HUDGPUTimeTrackerCommandBuffer>,HUDGPUTimeTrackerCommandBuffer*>(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = a1[2];
  v18 = v21;
  *(a1 + 1) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::~__split_buffer(&v19);
  return v18;
}

void sub_E624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_destroyWeak((v8 + 168));
  v10 = *v7;
  if (*v7)
  {
    *(v8 + 152) = v10;
    operator delete(v10);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v8 + 104);
  std::__split_buffer<HUDGPUTimeTrackerCommandBuffer>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<unsigned long long,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_multi<unsigned long long const&>(a1, a2 + 2);
  }
}

void sub_E740(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLb0EEEvT1_S8_T0_NS_15iterator_traitsIS8_E15difference_typeEb(uint64_t result, char *a2, uint64_t a3, char a4)
{
  v5 = result;
LABEL_2:
  v6 = a2;
  v232 = a2 - 384;
  v233 = (a2 - 216);
  v231 = a2 - 600;
  v7 = v5;
  while (1)
  {
    v5 = v7;
    v8 = &v6[-v7];
    v9 = 0x84BDA12F684BDA13 * (&v6[-v7] >> 3);
    v10 = v9 - 2;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      v6 = a2;
      if (v9 == 2)
      {
        if (*(a2 - 21) >= *(v5 + 48))
        {
          return result;
        }

LABEL_117:
        v97 = v5;
LABEL_118:
        v98 = (a2 - 216);
        return std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v97, v98);
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      return _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLi0EEEvT1_S8_S8_S8_T0_(v5, v5 + 216, v5 + 432, v233);
    }

    if (v9 == 5)
    {
      result = _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLi0EEEvT1_S8_S8_S8_T0_(v5, v5 + 216, v5 + 432, v5 + 648);
      if (*(v6 - 21) >= *(v5 + 696))
      {
        return result;
      }

      result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>((v5 + 648), v233);
      if (*(v5 + 696) >= *(v5 + 480))
      {
        return result;
      }

      result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>((v5 + 432), (v5 + 648));
      if (*(v5 + 480) >= *(v5 + 264))
      {
        return result;
      }

      v93 = (v5 + 216);
      v94 = (v5 + 432);
      goto LABEL_194;
    }

LABEL_10:
    if (v8 <= 5183)
    {
      if (a4)
      {
        if (v5 != v6)
        {
          v99 = v5 + 216;
          if ((v5 + 216) != a2)
          {
            v100 = 0;
            v101 = v5;
            do
            {
              v102 = v99;
              if (*(v101 + 264) < *(v101 + 48))
              {
                v103 = *v99;
                v104 = *(v99 + 32);
                v249 = *(v99 + 16);
                v250 = v104;
                v248 = v103;
                v105 = *(v99 + 48);
                v106 = *(v99 + 64);
                v107 = *(v99 + 80);
                v254 = *(v99 + 96);
                v252 = v106;
                v253 = v107;
                v251 = v105;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v101 + 320));
                *__p = *(v101 + 360);
                __p[2] = *(v101 + 376);
                *(v101 + 368) = 0;
                *(v101 + 376) = 0;
                *(v101 + 360) = 0;
                objc_moveWeak(&v257, (v101 + 384));
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v101 + 392));
                v108 = v100;
                while (1)
                {
                  v109 = v5 + v108;
                  v110 = (v5 + v108 + 216);
                  v111 = *(v5 + v108 + 64);
                  v112 = *(v5 + v108 + 80);
                  v113 = *(v5 + v108 + 32);
                  v110[3] = *(v5 + v108 + 48);
                  v110[4] = v111;
                  v110[5] = v112;
                  v114 = *(v5 + v108 + 16);
                  *(v109 + 216) = *(v5 + v108);
                  *(v109 + 232) = v114;
                  *(v109 + 312) = *(v5 + v108 + 96);
                  *(v109 + 248) = v113;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v5 + v108 + 320, (v5 + v108 + 104));
                  std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v109 + 360, (v109 + 144));
                  WeakRetained = objc_loadWeakRetained((v5 + v108 + 168));
                  objc_storeWeak((v5 + v108 + 384), WeakRetained);

                  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v109 + 392, (v109 + 176));
                  if (!v108)
                  {
                    break;
                  }

                  v108 -= 216;
                  if (v251 >= *(v109 - 168))
                  {
                    v116 = v5 + v108 + 216;
                    goto LABEL_131;
                  }
                }

                v116 = v5;
LABEL_131:
                v117 = v248;
                v118 = v250;
                *(v116 + 16) = v249;
                *(v116 + 32) = v118;
                *v116 = v117;
                v119 = v251;
                v120 = v252;
                v121 = v253;
                *(v116 + 96) = v254;
                *(v116 + 64) = v120;
                *(v116 + 80) = v121;
                *(v116 + 48) = v119;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v109 + 104, v255);
                v124 = *(v109 + 144);
                v123 = v109 + 144;
                v122 = v124;
                if (v124)
                {
                  *(v116 + 152) = v122;
                  operator delete(v122);
                  *v123 = 0;
                  *(v123 + 8) = 0;
                  *(v123 + 16) = 0;
                }

                *v123 = __p[0];
                *(v116 + 152) = *&__p[1];
                memset(__p, 0, sizeof(__p));
                v125 = objc_loadWeakRetained(&v257);
                objc_storeWeak((v123 + 24), v125);

                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v123 + 32, v258);
                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
                objc_destroyWeak(&v257);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
              }

              v99 = v102 + 216;
              v100 += 216;
              v101 = v102;
            }

            while ((v102 + 216) != a2);
          }
        }
      }

      else if (v5 != v6)
      {
        v209 = v5 + 216;
        if ((v5 + 216) != a2)
        {
          v210 = v5 - 168;
          do
          {
            v211 = v209;
            v212 = a2;
            if (*(v5 + 264) < *(v5 + 48))
            {
              v213 = *v209;
              v214 = *(v209 + 32);
              v249 = *(v209 + 16);
              v250 = v214;
              v248 = v213;
              v215 = *(v209 + 48);
              v216 = *(v209 + 64);
              v217 = *(v209 + 80);
              v254 = *(v209 + 96);
              v252 = v216;
              v253 = v217;
              v251 = v215;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v5 + 320));
              *__p = *(v5 + 360);
              __p[2] = *(v5 + 376);
              *(v5 + 368) = 0;
              *(v5 + 376) = 0;
              *(v5 + 360) = 0;
              objc_moveWeak(&v257, (v5 + 384));
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v5 + 392));
              v218 = v210;
              do
              {
                v219 = *(v218 + 216);
                v220 = *(v218 + 248);
                *(v218 + 448) = *(v218 + 232);
                *(v218 + 464) = v220;
                *(v218 + 480) = *(v218 + 264);
                v221 = *(v218 + 184);
                *(v218 + 384) = *(v218 + 168);
                *(v218 + 400) = v221;
                *(v218 + 416) = *(v218 + 200);
                *(v218 + 432) = v219;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v218 + 488, (v218 + 272));
                std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v218 + 528, (v218 + 312));
                v222 = objc_loadWeakRetained((v218 + 336));
                objc_storeWeak((v218 + 552), v222);

                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v218 + 560, (v218 + 344));
                v223 = *v218;
                v218 -= 216;
              }

              while (v251 < v223);
              v224 = v248;
              v225 = v250;
              *(v218 + 400) = v249;
              *(v218 + 416) = v225;
              *(v218 + 384) = v224;
              v226 = v251;
              v227 = v252;
              v228 = v253;
              *(v218 + 480) = v254;
              *(v218 + 448) = v227;
              *(v218 + 464) = v228;
              *(v218 + 432) = v226;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v218 + 488, v255);
              v229 = *(v218 + 528);
              if (v229)
              {
                *(v218 + 536) = v229;
                operator delete(v229);
                *(v218 + 528) = 0;
                *(v218 + 536) = 0;
                *(v218 + 544) = 0;
                v212 = a2;
              }

              *(v218 + 528) = *__p;
              *(v218 + 544) = __p[2];
              memset(__p, 0, sizeof(__p));
              v230 = objc_loadWeakRetained(&v257);
              objc_storeWeak((v218 + 552), v230);

              std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v218 + 560, v258);
              std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
              objc_destroyWeak(&v257);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
            }

            v209 = v211 + 216;
            v210 += 216;
            v5 = v211;
          }

          while ((v211 + 216) != v212);
        }
      }

      return result;
    }

    if (!a3)
    {
      if (v5 != v6)
      {
        v126 = v10 >> 1;
        v127 = v10 >> 1;
        do
        {
          v128 = v127;
          if (v126 >= v127)
          {
            v129 = (2 * v127) | 1;
            v130 = v5 + 216 * v129;
            if (2 * v127 + 2 < v9)
            {
              v131 = *(v130 + 48);
              v132 = *(v130 + 264);
              v133 = v131 >= v132;
              v134 = v131 >= v132 ? 0 : 216;
              v130 += v134;
              if (!v133)
              {
                v129 = 2 * v127 + 2;
              }
            }

            v135 = v5 + 216 * v127;
            if (*(v130 + 48) >= *(v135 + 48))
            {
              v136 = *v135;
              v137 = *(v135 + 32);
              v249 = *(v135 + 16);
              v250 = v137;
              v248 = v136;
              v138 = *(v135 + 48);
              v139 = *(v135 + 64);
              v140 = *(v135 + 80);
              v254 = *(v135 + 96);
              v252 = v139;
              v253 = v140;
              v251 = v138;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v135 + 104));
              *__p = *(v135 + 144);
              __p[2] = *(v135 + 160);
              *(v135 + 144) = 0;
              *(v135 + 152) = 0;
              *(v135 + 160) = 0;
              objc_moveWeak(&v257, (v135 + 168));
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v135 + 176));
              do
              {
                v141 = v130;
                v142 = *v130;
                v143 = *(v130 + 32);
                *(v135 + 16) = *(v130 + 16);
                *(v135 + 32) = v143;
                *v135 = v142;
                v144 = *(v130 + 48);
                v145 = *(v130 + 64);
                v146 = *(v130 + 80);
                *(v135 + 96) = *(v130 + 96);
                *(v135 + 64) = v145;
                *(v135 + 80) = v146;
                *(v135 + 48) = v144;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v135 + 104, (v130 + 104));
                std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v135 + 144, (v130 + 144));
                v147 = objc_loadWeakRetained((v130 + 168));
                objc_storeWeak((v135 + 168), v147);

                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v135 + 176, (v141 + 176));
                if (v126 < v129)
                {
                  break;
                }

                v148 = (2 * v129) | 1;
                v130 = v5 + 216 * v148;
                if (2 * v129 + 2 < v9)
                {
                  v149 = *(v130 + 48);
                  v150 = *(v130 + 264);
                  v151 = v149 >= v150;
                  v152 = v149 >= v150 ? 0 : 216;
                  v130 += v152;
                  if (!v151)
                  {
                    v148 = 2 * v129 + 2;
                  }
                }

                v135 = v141;
                v129 = v148;
              }

              while (*(v130 + 48) >= v251);
              v153 = v248;
              v154 = v250;
              *(v141 + 16) = v249;
              *(v141 + 32) = v154;
              *v141 = v153;
              v155 = v251;
              v156 = v252;
              v157 = v253;
              *(v141 + 96) = v254;
              *(v141 + 64) = v156;
              *(v141 + 80) = v157;
              *(v141 + 48) = v155;
              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v141 + 104, v255);
              v158 = *(v141 + 144);
              if (v158)
              {
                *(v141 + 152) = v158;
                operator delete(v158);
                *(v141 + 144) = 0;
                *(v141 + 152) = 0;
                *(v141 + 160) = 0;
              }

              *(v141 + 144) = *__p;
              *(v141 + 160) = __p[2];
              memset(__p, 0, sizeof(__p));
              v159 = objc_loadWeakRetained(&v257);
              objc_storeWeak((v141 + 168), v159);

              std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v141 + 176, v258);
              std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
              objc_destroyWeak(&v257);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
            }
          }

          v127 = v128 - 1;
        }

        while (v128);
        v160 = 0x84BDA12F684BDA13 * (v8 >> 3);
        do
        {
          v161 = a2;
          v237 = *(v5 + 16);
          v238 = *(v5 + 32);
          v236 = *v5;
          v242 = *(v5 + 96);
          v240 = *(v5 + 64);
          v241 = *(v5 + 80);
          v239 = *(v5 + 48);
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v243, (v5 + 104));
          *v244 = *(v5 + 144);
          v245 = *(v5 + 160);
          *(v5 + 144) = 0;
          *(v5 + 152) = 0;
          *(v5 + 160) = 0;
          objc_moveWeak(&v246, (v5 + 168));
          std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v247, (v5 + 176));
          v162 = 0;
          v163 = v5;
          do
          {
            v164 = v163 + 216 * v162;
            v165 = v164 + 216;
            if (2 * v162 + 2 >= v160)
            {
              v162 = (2 * v162) | 1;
            }

            else
            {
              v166 = *(v164 + 264);
              v167 = *(v164 + 480);
              v168 = v164 + 432;
              if (v166 >= v167)
              {
                v162 = (2 * v162) | 1;
              }

              else
              {
                v165 = v168;
                v162 = 2 * v162 + 2;
              }
            }

            v169 = *v165;
            v170 = *(v165 + 32);
            *(v163 + 16) = *(v165 + 16);
            *(v163 + 32) = v170;
            *v163 = v169;
            v171 = *(v165 + 48);
            v172 = *(v165 + 64);
            v173 = *(v165 + 80);
            *(v163 + 96) = *(v165 + 96);
            *(v163 + 64) = v172;
            *(v163 + 80) = v173;
            *(v163 + 48) = v171;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v163 + 104, (v165 + 104));
            std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v163 + 144, (v165 + 144));
            v174 = objc_loadWeakRetained((v165 + 168));
            objc_storeWeak((v163 + 168), v174);

            std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v163 + 176, (v165 + 176));
            v163 = v165;
          }

          while (v162 <= ((v160 - 2) >> 1));
          v175 = (a2 - 216);
          a2 -= 216;
          if (v165 == v161 - 216)
          {
            *(v165 + 16) = v237;
            *(v165 + 32) = v238;
            *v165 = v236;
            *(v165 + 96) = v242;
            *(v165 + 64) = v240;
            *(v165 + 80) = v241;
            *(v165 + 48) = v239;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v165 + 104, v243);
            v206 = *(v165 + 144);
            if (v206)
            {
              *(v165 + 152) = v206;
              operator delete(v206);
              *(v165 + 144) = 0;
              *(v165 + 152) = 0;
              *(v165 + 160) = 0;
            }

            *(v165 + 144) = *v244;
            *(v165 + 160) = v245;
            v244[0] = 0;
            v244[1] = 0;
            v245 = 0;
            v207 = objc_loadWeakRetained(&v246);
            objc_storeWeak((v165 + 168), v207);

            std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v165 + 176, v247);
          }

          else
          {
            v176 = *v175;
            v177 = *(v161 - 184);
            *(v165 + 16) = *(v161 - 200);
            *(v165 + 32) = v177;
            *v165 = v176;
            v178 = *(v161 - 168);
            v179 = *(v161 - 152);
            v180 = *(v161 - 136);
            *(v165 + 96) = *(v161 - 15);
            *(v165 + 64) = v179;
            *(v165 + 80) = v180;
            *(v165 + 48) = v178;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v165 + 104, v161 - 14);
            std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v165 + 144, (v161 - 72));
            v181 = objc_loadWeakRetained(v161 - 6);
            objc_storeWeak((v165 + 168), v181);

            std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v165 + 176, v161 - 5);
            *(v161 - 200) = v237;
            *(v161 - 184) = v238;
            *v175 = v236;
            *(v161 - 15) = v242;
            *(v161 - 152) = v240;
            *(v161 - 136) = v241;
            *(v161 - 168) = v239;
            std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign((v161 - 112), v243);
            v182 = *(v161 - 9);
            if (v182)
            {
              *(v161 - 8) = v182;
              operator delete(v182);
            }

            *(v161 - 72) = *v244;
            *(v161 - 7) = v245;
            v244[0] = 0;
            v244[1] = 0;
            v245 = 0;
            v183 = objc_loadWeakRetained(&v246);
            objc_storeWeak(v161 - 6, v183);

            std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign((v161 - 40), v247);
            v184 = v165 + 216 - v5;
            if (v184 >= 217)
            {
              v185 = (-2 - 0x7B425ED097B425EDLL * (v184 >> 3)) >> 1;
              v186 = v5 + 216 * v185;
              if (*(v186 + 48) < *(v165 + 48))
              {
                v187 = *v165;
                v188 = *(v165 + 32);
                v249 = *(v165 + 16);
                v250 = v188;
                v248 = v187;
                v189 = *(v165 + 48);
                v190 = *(v165 + 64);
                v191 = *(v165 + 80);
                v254 = *(v165 + 96);
                v252 = v190;
                v253 = v191;
                v251 = v189;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v165 + 104));
                *__p = *(v165 + 144);
                __p[2] = *(v165 + 160);
                *(v165 + 144) = 0;
                *(v165 + 152) = 0;
                *(v165 + 160) = 0;
                objc_moveWeak(&v257, (v165 + 168));
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v165 + 176));
                do
                {
                  v192 = v186;
                  v193 = *v186;
                  v194 = *(v186 + 32);
                  *(v165 + 16) = *(v186 + 16);
                  *(v165 + 32) = v194;
                  *v165 = v193;
                  v195 = *(v186 + 48);
                  v196 = *(v186 + 64);
                  v197 = *(v186 + 80);
                  *(v165 + 96) = *(v186 + 96);
                  *(v165 + 64) = v196;
                  *(v165 + 80) = v197;
                  *(v165 + 48) = v195;
                  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v165 + 104, (v186 + 104));
                  std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v165 + 144, (v186 + 144));
                  v198 = objc_loadWeakRetained((v186 + 168));
                  objc_storeWeak((v165 + 168), v198);

                  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v165 + 176, (v186 + 176));
                  if (!v185)
                  {
                    break;
                  }

                  v185 = (v185 - 1) >> 1;
                  v186 = v5 + 216 * v185;
                  v165 = v192;
                }

                while (*(v186 + 48) < v251);
                v199 = v248;
                v200 = v250;
                *(v192 + 16) = v249;
                *(v192 + 32) = v200;
                *v192 = v199;
                v201 = v251;
                v202 = v252;
                v203 = v253;
                *(v192 + 96) = v254;
                *(v192 + 64) = v202;
                *(v192 + 80) = v203;
                *(v192 + 48) = v201;
                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v192 + 104, v255);
                v204 = *(v192 + 144);
                if (v204)
                {
                  *(v192 + 152) = v204;
                  operator delete(v204);
                }

                *(v192 + 144) = *__p;
                *(v192 + 160) = __p[2];
                memset(__p, 0, sizeof(__p));
                v205 = objc_loadWeakRetained(&v257);
                objc_storeWeak((v192 + 168), v205);

                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v192 + 176, v258);
                std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
                objc_destroyWeak(&v257);
                if (__p[0])
                {
                  __p[1] = __p[0];
                  operator delete(__p[0]);
                }

                std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
              }
            }
          }

          std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v247);
          objc_destroyWeak(&v246);
          if (v244[0])
          {
            v244[1] = v244[0];
            operator delete(v244[0]);
          }

          result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v243);
        }

        while (v160-- > 2);
      }

      return result;
    }

    v11 = v9 >> 1;
    v12 = v5 + 216 * (v9 >> 1);
    v13 = *(v6 - 21);
    if (v8 >= 0x6C01)
    {
      v14 = *(v12 + 48);
      if (v14 >= *(v5 + 48))
      {
        if (v13 < v14)
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v12, v233);
          if (*(v12 + 48) < *(v5 + 48))
          {
            v15 = v5;
            v16 = v12;
            goto LABEL_26;
          }
        }
      }

      else
      {
        v15 = v5;
        if (v13 < v14)
        {
          goto LABEL_17;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v5, v12);
        if (*(v6 - 21) < *(v12 + 48))
        {
          v15 = v12;
LABEL_17:
          v16 = (a2 - 216);
LABEL_26:
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v15, v16);
        }
      }

      v20 = v5 + 216 * v11;
      v21 = v20 - 216;
      v22 = *(v20 - 168);
      v23 = *v232;
      if (v22 >= *(v5 + 264))
      {
        if (v23 < v22)
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v21, a2 - 27);
          if (*(v21 + 48) < *(v5 + 264))
          {
            v24 = (v5 + 216);
            v25 = v21;
            goto LABEL_39;
          }
        }
      }

      else
      {
        v24 = (v5 + 216);
        if (v23 < v22)
        {
          goto LABEL_31;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v24, v21);
        if (*v232 < *(v21 + 48))
        {
          v24 = v21;
LABEL_31:
          v25 = (a2 - 432);
LABEL_39:
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v24, v25);
        }
      }

      v26 = v5 + 216 * v11;
      v27 = *(v26 + 264);
      v28 = *v231;
      if (v27 >= *(v5 + 480))
      {
        if (v28 < v27)
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>((v26 + 216), (a2 - 648));
          if (*(v26 + 264) < *(v5 + 480))
          {
            v29 = (v5 + 432);
            v30 = (v26 + 216);
            goto LABEL_48;
          }
        }
      }

      else
      {
        v29 = (v5 + 432);
        if (v28 < v27)
        {
          goto LABEL_44;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v29, (v26 + 216));
        if (*v231 < *(v26 + 264))
        {
          v29 = (v26 + 216);
LABEL_44:
          v30 = (a2 - 648);
LABEL_48:
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v29, v30);
        }
      }

      v31 = *(v12 + 48);
      v32 = *(v26 + 264);
      if (v31 >= *(v21 + 48))
      {
        if (v32 < v31)
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v12, (v26 + 216));
          if (*(v12 + 48) < *(v21 + 48))
          {
            v34 = v21;
            v33 = v12;
            goto LABEL_57;
          }
        }
      }

      else
      {
        if (v32 < v31)
        {
          v33 = (v26 + 216);
          v34 = v21;
          goto LABEL_57;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v21, v12);
        if (*(v26 + 264) < *(v12 + 48))
        {
          v33 = (v26 + 216);
          v34 = v12;
LABEL_57:
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v34, v33);
        }
      }

      std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v5, v12);
      v6 = a2;
      goto LABEL_59;
    }

    v17 = *(v5 + 48);
    if (v17 >= *(v12 + 48))
    {
      if (v13 >= v17)
      {
        goto LABEL_59;
      }

      std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v5, v233);
      if (*(v5 + 48) >= *(v12 + 48))
      {
        goto LABEL_59;
      }

      v18 = v12;
      v19 = v5;
    }

    else
    {
      v18 = v12;
      if (v13 >= v17)
      {
        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v12, v5);
        if (*(v6 - 21) >= *(v5 + 48))
        {
          goto LABEL_59;
        }

        v18 = v5;
      }

      v19 = (a2 - 216);
    }

    std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v18, v19);
LABEL_59:
    --a3;
    if ((a4 & 1) != 0 || *(v5 - 168) < *(v5 + 48))
    {
      v35 = *v5;
      v36 = *(v5 + 32);
      v249 = *(v5 + 16);
      v250 = v36;
      v248 = v35;
      v37 = *(v5 + 48);
      v38 = *(v5 + 64);
      v39 = *(v5 + 80);
      v254 = *(v5 + 96);
      v252 = v38;
      v253 = v39;
      v251 = v37;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v5 + 104));
      *__p = *(v5 + 144);
      __p[2] = *(v5 + 160);
      *(v5 + 144) = 0;
      *(v5 + 152) = 0;
      *(v5 + 160) = 0;
      objc_moveWeak(&v257, (v5 + 168));
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v5 + 176));
      v40 = 0;
      do
      {
        v41 = *(v5 + v40 + 264);
        v40 += 216;
      }

      while (v41 < v251);
      v42 = v5 + v40;
      v43 = v6;
      if (v40 == 216)
      {
        while (v42 < v6)
        {
          v44 = v6 - 216;
          v46 = *(v6 - 21);
          v6 -= 216;
          if (v46 < v251)
          {
            goto LABEL_70;
          }
        }

        v44 = v6;
      }

      else
      {
        do
        {
          v44 = v43 - 216;
          v45 = *(v43 - 21);
          v43 -= 216;
        }

        while (v45 >= v251);
      }

LABEL_70:
      v7 = v42;
      if (v42 < v44)
      {
        v47 = v44;
        do
        {
          std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v7, v47);
          do
          {
            v48 = *(v7 + 264);
            v7 += 216;
          }

          while (v48 < v251);
          do
          {
            v49 = *(v47 - 21);
            v47 = (v47 - 216);
          }

          while (v49 >= v251);
        }

        while (v7 < v47);
      }

      v50 = (v7 - 216);
      if (v7 - 216 != v5)
      {
        v51 = *v50;
        v52 = *(v7 - 184);
        *(v5 + 16) = *(v7 - 200);
        *(v5 + 32) = v52;
        *v5 = v51;
        v53 = *(v7 - 168);
        v54 = *(v7 - 152);
        v55 = *(v7 - 136);
        *(v5 + 96) = *(v7 - 120);
        *(v5 + 64) = v54;
        *(v5 + 80) = v55;
        *(v5 + 48) = v53;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v5 + 104, (v7 - 112));
        std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v5 + 144, (v7 - 72));
        v56 = objc_loadWeakRetained((v7 - 48));
        objc_storeWeak((v5 + 168), v56);

        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v5 + 176, (v7 - 40));
      }

      v57 = v248;
      v58 = v250;
      *(v7 - 200) = v249;
      *(v7 - 184) = v58;
      *v50 = v57;
      v59 = v251;
      v60 = v252;
      v61 = v253;
      *(v7 - 120) = v254;
      *(v7 - 152) = v60;
      *(v7 - 136) = v61;
      *(v7 - 168) = v59;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v7 - 112, v255);
      v62 = *(v7 - 72);
      if (v62)
      {
        *(v7 - 64) = v62;
        operator delete(v62);
        *(v7 - 72) = 0;
        *(v7 - 64) = 0;
        *(v7 - 56) = 0;
      }

      *(v7 - 72) = *__p;
      *(v7 - 56) = __p[2];
      memset(__p, 0, sizeof(__p));
      v63 = objc_loadWeakRetained(&v257);
      objc_storeWeak((v7 - 48), v63);

      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v7 - 40, v258);
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
      objc_destroyWeak(&v257);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
      v6 = a2;
      if (v42 < v44)
      {
        goto LABEL_85;
      }

      v64 = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferEEbT1_S8_T0_(v5, (v7 - 216));
      result = _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferEEbT1_S8_T0_(v7, a2);
      if (result)
      {
        a2 = (v7 - 216);
        if (!v64)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v64)
      {
LABEL_85:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLb0EEEvT1_S8_T0_NS_15iterator_traitsIS8_E15difference_typeEb(v5, v7 - 216, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v65 = *v5;
      v66 = *(v5 + 32);
      v249 = *(v5 + 16);
      v250 = v66;
      v248 = v65;
      v67 = *(v5 + 48);
      v68 = *(v5 + 64);
      v69 = *(v5 + 80);
      v254 = *(v5 + 96);
      v252 = v68;
      v253 = v69;
      v251 = v67;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v255, (v5 + 104));
      v70 = v5 + 144;
      *__p = *(v5 + 144);
      __p[2] = *(v5 + 160);
      *(v5 + 144) = 0;
      *(v5 + 152) = 0;
      *(v5 + 160) = 0;
      objc_moveWeak(&v257, (v5 + 168));
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v258, (v5 + 176));
      if (v251 >= *(v6 - 21))
      {
        v73 = v5 + 216;
        do
        {
          v7 = v73;
          if (v73 >= v6)
          {
            break;
          }

          v74 = *(v73 + 48);
          v73 += 216;
        }

        while (v251 >= v74);
      }

      else
      {
        v71 = v5;
        do
        {
          v7 = v71 + 216;
          v72 = *(v71 + 264);
          v71 += 216;
        }

        while (v251 >= v72);
      }

      v75 = v6;
      if (v7 < v6)
      {
        do
        {
          v75 = (v6 - 216);
          v76 = *(v6 - 21);
          v6 -= 216;
        }

        while (v251 < v76);
      }

      while (v7 < v75)
      {
        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v7, v75);
        do
        {
          v77 = *(v7 + 264);
          v7 += 216;
        }

        while (v251 >= v77);
        do
        {
          v78 = *(v75 - 21);
          v75 = (v75 - 216);
        }

        while (v251 < v78);
      }

      v79 = (v7 - 216);
      if (v7 - 216 != v5)
      {
        v80 = *v79;
        v81 = *(v7 - 184);
        *(v5 + 16) = *(v7 - 200);
        *(v5 + 32) = v81;
        *v5 = v80;
        v82 = *(v7 - 168);
        v83 = *(v7 - 152);
        v84 = *(v7 - 136);
        *(v5 + 96) = *(v7 - 120);
        *(v5 + 64) = v83;
        *(v5 + 80) = v84;
        *(v5 + 48) = v82;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v5 + 104, (v7 - 112));
        std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(v5 + 144, (v7 - 72));
        v85 = objc_loadWeakRetained((v7 - 48));
        objc_storeWeak((v70 + 24), v85);

        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v70 + 32, (v7 - 40));
      }

      v86 = v248;
      v87 = v250;
      *(v7 - 200) = v249;
      *(v7 - 184) = v87;
      *v79 = v86;
      v88 = v251;
      v89 = v252;
      v90 = v253;
      *(v7 - 120) = v254;
      *(v7 - 152) = v89;
      *(v7 - 136) = v90;
      *(v7 - 168) = v88;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v7 - 112, v255);
      v91 = *(v7 - 72);
      if (v91)
      {
        *(v7 - 64) = v91;
        operator delete(v91);
        *(v7 - 72) = 0;
        *(v7 - 64) = 0;
        *(v7 - 56) = 0;
      }

      *(v7 - 72) = *__p;
      *(v7 - 56) = __p[2];
      memset(__p, 0, sizeof(__p));
      v92 = objc_loadWeakRetained(&v257);
      objc_storeWeak((v7 - 48), v92);

      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(v7 - 40, v258);
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v258);
      objc_destroyWeak(&v257);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      result = std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v255);
      a4 = 0;
      v6 = a2;
    }
  }

  v95 = *(v5 + 264);
  v96 = *(v6 - 21);
  if (v95 < *(v5 + 48))
  {
    if (v96 < v95)
    {
      goto LABEL_117;
    }

    result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v5, (v5 + 216));
    if (*(v6 - 21) < *(v5 + 264))
    {
      v97 = (v5 + 216);
      goto LABEL_118;
    }

    return result;
  }

  if (v96 >= v95)
  {
    return result;
  }

  v93 = (v5 + 216);
  v94 = (a2 - 216);
LABEL_194:
  result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v93, v94);
  if (*(v5 + 264) < *(v5 + 48))
  {
    v98 = (v5 + 216);
    v97 = v5;
    return std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v97, v98);
  }

  return result;
}