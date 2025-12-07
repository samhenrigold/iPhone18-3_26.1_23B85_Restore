apr_pool_t **GTResourceTrackerProcessIndirectCommandResourceUse(apr_pool_t **result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 8);
  if (v3 > -15949)
  {
    if (v3 > -15923)
    {
      switch(v3)
      {
        case -15922:
          v18 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
          result = find_entry(v2[3], v18, 8uLL, 0);
          if (!*result || !*(*result + 4))
          {
            return result;
          }

          v6 = v2[3];
          v7 = *(v18 + 1);
          v9 = *v2;
          v10 = v2[1];
          v11 = 59;
          break;
        case -14924:
          v16 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
          result = find_entry(v2[3], v16, 8uLL, 0);
          if (!*result || !*(*result + 4))
          {
            return result;
          }

          v6 = v2[3];
          v7 = *(v16 + 1);
          v9 = *v2;
          v10 = v2[1];
          v11 = 34;
          break;
        case -15921:
          v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
          result = find_entry(v2[3], v8, 8uLL, 0);
          if (!*result || !*(*result + 4))
          {
            return result;
          }

          v6 = v2[3];
          v7 = *(v8 + 1);
          v9 = *v2;
          v10 = v2[1];
          v11 = 58;
          break;
        default:
          return result;
      }

      goto LABEL_41;
    }

    if (v3 == -15948)
    {
      v17 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
      result = find_entry(v2[3], v17, 8uLL, 0);
      if (!*result || !*(*result + 4))
      {
        return result;
      }

      v6 = v2[3];
      v7 = *(v17 + 4);
      goto LABEL_40;
    }

    if (v3 == -15934)
    {
      v15 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
      result = find_entry(v2[3], v15, 8uLL, 0);
      if (!*result || !*(*result + 4))
      {
        return result;
      }

      v6 = v2[3];
      v7 = *(v15 + 1);
      v9 = *v2;
      v10 = v2[1];
      v11 = 29;
      goto LABEL_41;
    }

    v4 = -15933;
    goto LABEL_21;
  }

  if (v3 > -15955)
  {
    if (v3 != -15954)
    {
      if (v3 == -15952)
      {
        v14 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
        result = find_entry(v2[3], v14, 8uLL, 0);
        if (!*result || !*(*result + 4))
        {
          return result;
        }

        GTResourceTrackerUsingResource(v2[3], 22, *(v14 + 4), *v2, v2[1]);
        v6 = v2[3];
        v7 = *(v14 + 8);
      }

      else
      {
        if (v3 != -15950)
        {
          return result;
        }

        v5 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
        result = find_entry(v2[3], v5, 8uLL, 0);
        if (!*result || !*(*result + 4))
        {
          return result;
        }

        GTResourceTrackerUsingResource(v2[3], 22, *(v5 + 4), *v2, v2[1]);
        GTResourceTrackerUsingResource(v2[3], 22, *(v5 + 6), *v2, v2[1]);
        v6 = v2[3];
        v7 = *(v5 + 10);
      }

      goto LABEL_40;
    }

    goto LABEL_22;
  }

  if (v3 != -15956)
  {
    v4 = -15955;
LABEL_21:
    if (v3 != v4)
    {
      return result;
    }

LABEL_22:
    v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
    result = find_entry(v2[3], v12, 8uLL, 0);
    if (!*result || !*(*result + 4))
    {
      return result;
    }

    v6 = v2[3];
    v7 = *(v12 + 1);
LABEL_40:
    v9 = *v2;
    v10 = v2[1];
    v11 = 22;
    goto LABEL_41;
  }

  v13 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), result[1]);
  result = find_entry(v2[3], v13, 8uLL, 0);
  if (!*result || !*(*result + 4))
  {
    return result;
  }

  v6 = v2[3];
  v7 = *(v13 + 1);
  v9 = *v2;
  v10 = v2[1];
  v11 = 71;
LABEL_41:

  return GTResourceTrackerUsingResource(v6, v11, v7, v9, v10);
}

uint64_t catch_mach_exception_raise(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 8);
  pthread_mutex_lock(&tracingMutex);
  v6 = *(tracingRegions + 12);
  if (v6)
  {
    v7 = 0;
    v8 = (*(tracingRegions + 24) + 8);
    while (1)
    {
      v9 = *(v8 - 1);
      if (v9 <= v5 && *v8 + v9 > v5)
      {
        break;
      }

      ++v7;
      v8 += 3;
      if (v6 == v7)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7 == v6)
  {
LABEL_9:
    pthread_mutex_unlock(&tracingMutex);
    if (!oldArraySize)
    {
      return 5;
    }

    task_set_exception_ports(mach_task_self_, oldExcMasks, oldExcPorts, oldBehaviors, oldFlavors);
  }

  else
  {
    v10 = *(tracingRegions + 24) + 24 * v7;
    v19 = *v10;
    v20 = *(v10 + 16);
    if ((dword_31F7C8 & 0x2000) != 0)
    {
      v11 = (v5 - v19) / vm_page_size;
      v13 = *(*find_entry(tracedChunks, &v20, 8uLL, 0) + 32) + 8 * (v11 >> 6);
      *(v13 + 8) |= 1 << v11;
    }

    else
    {
      v11 = 0;
    }

    if (v20)
    {
      v14 = (v20 + 56);
      v15 = atomic_load((v20 + 56));
      v16 = v15;
      do
      {
        atomic_compare_exchange_strong(v14, &v16, v15 | 8);
        v17 = v16 == v15;
        v15 = v16;
      }

      while (!v17);
    }

    if ((dword_31F7C8 & 0x2000) != 0)
    {
      v18 = vm_page_size;
    }

    else
    {
      v18 = *(&v19 + 1);
    }

    mprotect((v19 + vm_page_size * v11), v18, 3);
    pthread_mutex_unlock(&tracingMutex);
  }

  return 0;
}

unint64_t GTMemoryGuard_registerRegion(unint64_t result, vm_size_t a2, uint64_t a3, int a4)
{
  v5 = result;
  v27 = a3;
  if (a3)
  {
    v6 = atomic_load((a3 + 56));
    if ((v6 & 8) != 0)
    {
      return result;
    }
  }

  if (a4)
  {
    pthread_mutex_lock(&tracingMutex);
    if (!tracingPool)
    {

      return pthread_mutex_unlock(&tracingMutex);
    }

    v7 = *find_entry(tracedChunks, &v27, 8uLL, 0);
    if (!v7)
    {
      return pthread_mutex_unlock(&tracingMutex);
    }

    v8 = *(v7 + 32);
    result = pthread_mutex_unlock(&tracingMutex);
    if (!v8)
    {
      return result;
    }
  }

  if ((vm_page_mask & v5) == 0 && vm_page_size <= a2)
  {
    pthread_once(&GTMemoryGuard_initialize_onceGuard, InitializeMemoryGuardOnce);
    pthread_mutex_lock(&tracingMutex);
    v14 = *(tracingRegions + 12);
    if (v14)
    {
      v15 = (*(tracingRegions + 24) + 16);
      while (*v15 != v27)
      {
        v15 += 3;
        if (!--v14)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_31;
    }

LABEL_21:
    v16 = apr_array_push(tracingRegions);
    v17 = v27;
    *v16 = v5;
    v16[1] = a2;
    v16[2] = v17;
    v18 = tracedChunks;
    if ((dword_31F7C8 & 0x2000) != 0)
    {
      entry = find_entry(tracedChunks, &v27, 8uLL, 0);
      if (*entry)
      {
        v23 = *(*entry + 32);
        if (v23)
        {
          bzero(v23 + 1, 8 * *v23);
LABEL_31:
          mprotect(v5, a2, 1);
          return pthread_mutex_unlock(&tracingMutex);
        }
      }

      v24 = (a2 + (vm_page_size << 6) - 1) / (vm_page_size << 6);
      v25 = malloc_type_calloc(1uLL, 8 * v24 + 8, 0x100004000313F17uLL);
      *v25 = v24;
      v26 = tracedChunks;
      v19 = apr_palloc(tracingPool, 8uLL);
      *v19 = v27;
      v20 = v26;
      v21 = v25;
    }

    else
    {
      v19 = apr_palloc(tracingPool, 8uLL);
      *v19 = v27;
      v20 = v18;
      v21 = &dword_8;
    }

    apr_hash_set(v20, v19, 8, v21);
    goto LABEL_31;
  }

  if (v27)
  {
    v10 = (v27 + 56);
    v11 = atomic_load((v27 + 56));
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong(v10, &v12, v11 | 8);
      v13 = v12 == v11;
      v11 = v12;
    }

    while (!v13);
  }

  return result;
}

apr_hash_t *InitializeMemoryGuardOnce()
{
  v0 = mach_task_self_;
  mach_port_allocate(mach_task_self_, 1u, &exceptionPort);
  mach_port_insert_right(v0, exceptionPort, exceptionPort, 0x14u);
  task_swap_exception_ports(v0, 2u, exceptionPort, -2147483647, 6, &oldExcMasks, &oldArraySize, &oldExcPorts, &oldBehaviors, &oldFlavors);
  v2 = 0;
  pthread_create(&v2, 0, MachServer, 0);
  pthread_detach(v2);
  apr_pool_create_ex(&tracingPool, 0, 0, 0);
  tracingRegions = apr_array_make(tracingPool, 1024, 24);
  result = apr_hash_make(tracingPool);
  tracedChunks = result;
  return result;
}

uint64_t GTMemoryGuard_unregisterRegion(uint64_t a1)
{
  key = a1;
  pthread_mutex_lock(&tracingMutex);
  v2 = tracingRegions;
  if (tracingRegions)
  {
    v3 = *(tracingRegions + 12);
    v4 = 0;
    if (v3)
    {
      v5 = (*(tracingRegions + 24) + 16);
      while (*v5 != a1)
      {
        ++v4;
        v5 += 3;
        if (v3 == v4)
        {
          goto LABEL_14;
        }
      }
    }

    if (v4 != v3)
    {
      if (v4 < v3 - 1)
      {
        v6 = 24 * v4;
        do
        {
          v7 = *(v2 + 24) + v6;
          ++v4;
          *v7 = *(v7 + 24);
          *(v7 + 16) = *(v7 + 40);
          v6 += 24;
        }

        while (v4 < *(v2 + 12) - 1);
        v3 = *(v2 + 12);
      }

      if (v3)
      {
        *(v2 + 12) = v3 - 1;
      }
    }

LABEL_14:
    if ((dword_31F7C8 & 0x2000) != 0)
    {
      v8 = *find_entry(tracedChunks, &key, 8uLL, 0);
      if (v8)
      {
        v9 = *(v8 + 32);
      }

      else
      {
        v9 = 0;
      }

      free(v9);
    }

    apr_hash_set(tracedChunks, &key, 8, 0);
    return pthread_mutex_unlock(&tracingMutex);
  }

  else
  {

    return pthread_mutex_unlock(&tracingMutex);
  }
}

uint64_t GTMemoryGuard_copyTracedChunks(void **a1, uint64_t a2)
{
  v9 = a2;
  if ((dword_31F7C8 & 0x2000) == 0)
  {
    return 0;
  }

  pthread_mutex_lock(&tracingMutex);
  if (!tracingRegions || (v3 = *find_entry(tracedChunks, &v9, 8uLL, 0)) == 0 || (v4 = *(v3 + 32)) == 0)
  {
    pthread_mutex_unlock(&tracingMutex);
    return 0;
  }

  v5 = *v4;
  v6 = 8 * *v4;
  v7 = malloc_type_realloc(*a1, v6, 0x100004000313F17uLL);
  *a1 = v7;
  memcpy(v7, v4 + 1, v6);
  pthread_mutex_unlock(&tracingMutex);
  return v5;
}

id CreateIndirectRenderCommandBufferSnapshot(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [v9 device];
  v11 = DEVICEOBJECT(v8);

  v12 = [v11 device];
  v13 = [v11 size];
  v14 = [v12 newIndirectCommandBufferWithDescriptor:v7 maxCommandCount:v13 options:0x800000];

  v15 = [v10 renderFunctionCopyIndirectCommandBuffer];
  v16 = [v15 newArgumentEncoderWithBufferIndex:0];

  v17 = [v12 newBufferWithLength:objc_msgSend(v16 options:{"encodedLength"), 0}];
  [v16 setArgumentBuffer:v17 offset:0];
  [v16 setIndirectCommandBuffer:v14 atIndex:0];
  [v16 setIndirectCommandBuffer:v11 atIndex:1];
  v18 = DEVICEOBJECT(v9);

  [v18 useResource:v11 usage:1 stages:1];
  [v18 useResource:v14 usage:2 stages:1];
  [v18 setVertexBuffer:v17 offset:0 atIndex:0];
  v19 = [v10 renderPipelineCopyIndirectCommandBuffer];
  [v18 setRenderPipelineState:v19];

  [v18 drawPrimitives:0 vertexStart:0 vertexCount:v13];
  LOBYTE(v13) = [v12 supportsRenderMemoryBarrier];
  v20 = [v12 supportsPartialRenderMemoryBarrier];
  if ((v13 & 1) != 0 || v20)
  {
    v23 = v11;
    [v18 memoryBarrierWithResources:&v23 count:1 afterStages:1 beforeStages:1];
  }

  v21 = v17;
  *a4 = v17;

  return v14;
}

void RestoreRenderCommandEncoder(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v3 = [v2 traceContext];
  v4 = [v2 traceStream];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v5 = newpool;
  v6 = apr_hash_make(newpool);
  GTTraceMemPool_buildMemoryMap(v4[3], v6);
  v7 = GTTraceContext_copyStreamMap(v3, v5);
  bzero(v37, 0x2BA0uLL);
  v8 = v4[4];
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = atomic_load((v8 + 4));
      v11 = v9 + (v10 >> 6) - 1;
      if (v11 > 0)
      {
        break;
      }

      v8 = *(v8 + 40);
      v9 = v11;
      if (!v8)
      {
        v9 = v11;
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v12 = v9 | (v11 << 32);
  }

  else
  {
    v12 = 0;
  }

  while (v8)
  {
    v13 = v8 + 64 + ((HIDWORD(v12) - v12) << 6);
    if ((*(v13 + 15) & 8) == 0)
    {
      break;
    }

    GTMTLSMCommandEncoder_processTraceFunc(v37, v13, v6);
    v14 = atomic_load((v8 + 4));
    v15 = v12 + (v14 >> 6);
    v16 = (HIDWORD(v12) + 1);
    v12 = (v16 << 32) | v12;
    if (v16 == v15 - 1)
    {
      v12 = (v16 << 32) | v16;
      v8 = *(v8 + 40);
    }
  }

  v17 = DEVICEOBJECT(v2);
  v18 = 0;
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = 1 << v18;
    v22 = v40[v18];
    if ((v38 & (1 << v18)) != 0)
    {
      if (v22)
      {
        v23 = v22 + 16;
      }

      else
      {
        v23 = 0;
      }

      v24 = v40[v18 + 31];
      if ((v39 & v21) != 0)
      {
        [v17 setVertexBytes:v23 length:v24 attributeStride:v40[v18 + 62] atIndex:v18];
      }

      else
      {
        [v17 setVertexBytes:v23 length:v24 atIndex:v18];
      }
    }

    else
    {
      v36 = v40[v18];
      entry = find_entry(v7, &v36, 8uLL, 0);
      if (*entry && (v26 = *(*entry + 32)) != 0)
      {
        v27 = atomic_load((v26 + 56));
        v28 = (v26 + (~(v27 >> 2) & 8));
      }

      else
      {
        v28 = &dword_8;
      }

      v29 = *v28;
      if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLBuffer])
      {
        v30 = v40[v18 + 31];
        if ((v39 & v21) != 0)
        {
          [v17 setVertexBuffer:v29 offset:v30 attributeStride:v40[v18 + 62] atIndex:v18];
        }

        else
        {
          [v17 setVertexBuffer:v29 offset:v30 atIndex:v18];
        }
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLAccelerationStructure])
      {
        [v17 setVertexAccelerationStructure:v29 atBufferIndex:v18];
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLIntersectionFunctionTable])
      {
        [v17 setVertexIntersectionFunctionTable:v29 atBufferIndex:v18];
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLVisibleFunctionTable])
      {
        [v17 setVertexVisibleFunctionTable:v29 atBufferIndex:v18];
      }
    }

    v19 = 0;
    v18 = 1;
  }

  while ((v20 & 1) != 0);
  if (v41)
  {
    v36 = v41;
    v31 = find_entry(v7, &v36, 8uLL, 0);
    if (*v31 && (v32 = *(*v31 + 32)) != 0)
    {
      v33 = atomic_load((v32 + 56));
      v34 = (v32 + (~(v33 >> 2) & 8));
    }

    else
    {
      v34 = &dword_8;
    }

    [v17 setRenderPipelineState:*v34];
  }

  apr_pool_destroy(newpool);
}

id FindMetalLayerWithAddress(void *a1)
{
  os_unfair_lock_lock(&s_layerMapLock);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [s_layerStreamMap keyEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (v7 == a1)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  os_unfair_lock_unlock(&s_layerMapLock);

  return v8;
}

id AllMetalLayers()
{
  os_unfair_lock_lock(&s_layerMapLock);
  v0 = [s_layerStreamMap keyEnumerator];
  v1 = MakeLayerInfos(v0);

  os_unfair_lock_unlock(&s_layerMapLock);

  return v1;
}

id MakeLayerInfos(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = objc_alloc_init(DYGTCAMetalLayerInfo);
        v10 = [v8 device];
        [v9 setDeviceAddress:v10];

        v11 = [v8 device];
        v12 = [v11 traceStream];
        if (v12)
        {
          v13 = *v12;
        }

        else
        {
          v13 = 0;
        }

        [v9 setDeviceStreamRef:v13];

        [v9 setLayerAddress:v8];
        [v9 setLayerStreamRef:{objc_msgSend(v8, "streamReference")}];
        [v8 frame];
        [v9 setFrame:?];
        v14 = [v8 name];
        [v9 setName:v14];

        [v2 addObject:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  return v2;
}

uint64_t CaptureCA(uint64_t a1)
{
  v1 = [[NSMapTable alloc] initWithKeyOptions:2 valueOptions:0 capacity:8];
  v2 = s_layerStreamMap;
  s_layerStreamMap = v1;

  return _objc_addWillInitializeClassFunc();
}

Class WrapCA(uint64_t a1, Class a2)
{
  result = NSClassFromString(@"CAMetalLayer");
  if (result == a2)
  {
    v4 = objc_opt_class();
    v5 = NSSelectorFromString(@"init");
    InstanceMethod = class_getInstanceMethod(v4, v5);
    CAMetalLayer_initIMP = method_setImplementation(InstanceMethod, CAMetalLayer_init);
    v7 = objc_opt_class();
    v8 = NSSelectorFromString(@"shimDrawable:");
    v9 = class_getInstanceMethod(v7, v8);
    v10 = objc_opt_class();
    if (v9)
    {
      v11 = NSSelectorFromString(@"shimDrawable:");
      v12 = &CAMetalLayer_shimDrawableIMP;
      v13 = CAMetalLayer_shimDrawable;
    }

    else
    {
      v11 = "nextDrawable";
      v12 = &CAMetalLayer_nextDrawableIMP;
      v13 = CAMetalLayer_nextDrawable;
    }

    v14 = v13;
    v15 = class_getInstanceMethod(v10, v11);
    *v12 = method_setImplementation(v15, v14);
    v16 = objc_opt_class();
    v17 = NSSelectorFromString(@"dealloc");
    v18 = class_getInstanceMethod(v16, v17);
    CAMetalLayer_deallocIMP = method_setImplementation(v18, CAMetalLayer_dealloc);
    v19 = objc_opt_class();
    class_addMethod(v19, "traceContext", traceContextIMP, "^{GTTraceContext}@:");
    v20 = objc_opt_class();
    class_addMethod(v20, "traceStream", traceStreamIMP, "^{GTTraceStream}@:");
    v21 = objc_opt_class();
    class_addMethod(v21, "streamReference", streamReferenceIMP, "Q@:");
    v22 = objc_opt_class();
    class_addMethod(v22, "baseObject", baseObjectIMP, "@@:");
    v23 = objc_opt_class();
    class_addMethod(v23, "touch", touchIMP, "v@:");
    v24 = objc_opt_class();

    return class_addProtocol(v24, &OBJC_PROTOCOL___CaptureMTLObject);
  }

  return result;
}

uint64_t touchIMP(void *a1)
{
  v1 = StreamForLayer(a1);
  result = mach_absolute_time();
  if (v1)
  {
    v3 = atomic_load(v1 + 7);
    v4 = v3;
    do
    {
      atomic_compare_exchange_strong(v1 + 7, &v4, v3 & 0x3F | result & 0xFFFFFFFFFFFFFFC0);
      v5 = v4 == v3;
      v3 = v4;
    }

    while (!v5);
  }

  return result;
}

id StreamForLayer(void *a1)
{
  v1 = a1;
  v2 = os_unfair_lock_trylock(&s_layerMapLock);
  v3 = [s_layerStreamMap objectForKey:v1];

  if (v2)
  {
    os_unfair_lock_unlock(&s_layerMapLock);
  }

  if (v3)
  {
    v4 = [v3 pointerValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id streamReferenceIMP(void *a1)
{
  result = StreamForLayer(a1);
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t CAMetalLayer_dealloc(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = StreamForLayer(v3);
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&s_layerMapLock);
    [s_layerStreamMap removeObjectForKey:v3];
    v6 = [s_layerStreamMap keyEnumerator];
    v7 = MakeLayerInfos(v6);

    os_unfair_lock_unlock(&s_layerMapLock);
    GTMTLGuestAppClientUpdateCAMetalLayerInfo(g_guestAppClientMTL, v7);
    GTTelemetry_removeStreamRef([v3 streamReference]);
    GTTraceContext_closeStream(g_ctx, v5);
  }

  v8 = CAMetalLayer_deallocIMP;

  return v8(v3, a2);
}

CaptureMTLDrawable *CAMetalLayer_nextDrawable(void *a1, uint64_t a2)
{
  v4 = OpenLayerStream(a1);
  v5 = g_ctx;
  if (v4)
  {
    v6 = *v4;
  }

  else
  {
    v6 = 0;
  }

  v25 = 0u;
  v22 = g_ctx;
  v23 = 0;
  add = atomic_fetch_add((g_ctx + 80), 1uLL);
  s();
  v8 = v7;
  v9 = *v7;
  *v7 = v10;
  *&v25 = v9;
  BYTE8(v25) = *(v7 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  *(v7 + 8) = BYTE8(v25) | 3;
  v11 = CAMetalLayer_nextDrawableIMP(a1, a2);
  if (v11)
  {
    v12 = [[CaptureMTLDrawable alloc] initWithBaseObject:v11 captureContext:v5];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v22, [(CaptureMTLDrawable *)v12 traceStream]);
  v13 = v23;
  *(v23 + 8) = -7166;
  v14 = BYTE9(v25);
  if (BYTE9(v25) > 0x30uLL)
  {
    v16 = *(*(&v22 + 1) + 24);
    v17 = BYTE10(v25);
    ++BYTE10(v25);
    v15 = GTTraceMemPool_allocateBytes(v16, add, v17 | 0x1000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v25));
    BYTE9(v25) += 16;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLDrawable *)v12 traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = v6;
  *(v15 + 1) = var0;
  v20 = v23;
  *v8 = v25;
  *(v8 + 8) = BYTE8(v25);
  *(v20 + 15) |= 8u;

  return v12;
}

uint64_t *OpenLayerStream(void *a1)
{
  v1 = a1;
  v2 = StreamForLayer(v1);
  if (!v2)
  {
    v2 = GTTraceContext_openStream(g_ctx, v1, v1);
    os_unfair_lock_lock(&s_layerMapLock);
    v3 = s_layerStreamMap;
    v4 = [NSValue valueWithPointer:v2];
    [v3 setObject:v4 forKey:v1];

    v5 = [s_layerStreamMap keyEnumerator];
    v6 = MakeLayerInfos(v5);

    os_unfair_lock_unlock(&s_layerMapLock);
    GTMTLGuestAppClientUpdateCAMetalLayerInfo(g_guestAppClientMTL, v6);
    GTTelemetry_addStreamRef([v1 streamReference]);
    v7 = MTLCreateSystemDefaultDevice();
    v8 = g_ctx;
    v9 = v7;
    if (v2)
    {
      v10 = *v2;
    }

    else
    {
      v10 = 0;
    }

    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    GTTraceContext_pushEncoderWithStream(v8, &v23);
    v11 = v24;
    *(v24 + 8) = -7163;
    v12 = BYTE9(v25);
    if (BYTE9(v25) > 0x28uLL)
    {
      v14 = *(*(&v23 + 1) + 24);
      v15 = BYTE10(v25);
      ++BYTE10(v25);
      v13 = GTTraceMemPool_allocateBytes(v14, *(&v24 + 1), v15 | 0x1800000000) + 16;
      v12 = v15;
    }

    else
    {
      v13 = (v11 + BYTE9(v25));
      BYTE9(v25) += 24;
    }

    *(v11 + 13) = v12;
    v16 = [v9 traceStream];
    if (v16)
    {
      v17 = *v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v9 baseObject];

    v19 = SaveMTLDeviceDescriptor(&v23, v18);
    *v13 = v10;
    *(v13 + 1) = v17;
    v13[16] = v19;
    *(v13 + 17) = 0;
    *(v13 + 5) = 0;

    s();
    *v20 = v21;
    *(v20 + 8) = BYTE8(v25);
    *(v24 + 15) |= 8u;
  }

  return v2;
}

CaptureMTLDrawable *CAMetalLayer_shimDrawable(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = OpenLayerStream(a1);
  v6 = g_ctx;
  if (v5)
  {
    v7 = *v5;
  }

  else
  {
    v7 = 0;
  }

  v25 = 0u;
  v22 = g_ctx;
  v23 = 0;
  add = atomic_fetch_add((g_ctx + 80), 1uLL);
  s();
  v9 = v8;
  v10 = *v8;
  *v8 = v11;
  *&v25 = v10;
  BYTE8(v25) = *(v8 + 8);
  *(&v25 + 9) = 16400;
  *(&v25 + 11) = 0;
  HIBYTE(v25) = 0;
  *(v8 + 8) = BYTE8(v25) | 3;
  if (v4)
  {
    v12 = [[CaptureMTLDrawable alloc] initWithBaseObject:v4 captureContext:v6];
  }

  else
  {
    v12 = 0;
  }

  GTTraceEncoder_setStream(&v22, [(CaptureMTLDrawable *)v12 traceStream]);
  v13 = v23;
  *(v23 + 8) = -7166;
  v14 = BYTE9(v25);
  if (BYTE9(v25) > 0x30uLL)
  {
    v16 = *(*(&v22 + 1) + 24);
    v17 = BYTE10(v25);
    ++BYTE10(v25);
    v15 = GTTraceMemPool_allocateBytes(v16, add, v17 | 0x1000000000) + 16;
    v14 = v17;
  }

  else
  {
    v15 = (v13 + BYTE9(v25));
    BYTE9(v25) += 16;
  }

  *(v13 + 13) = v14;
  v18 = [(CaptureMTLDrawable *)v12 traceStream];
  if (v18)
  {
    var0 = v18->var0;
  }

  else
  {
    var0 = 0;
  }

  *v15 = v7;
  *(v15 + 1) = var0;
  v20 = v23;
  *v9 = v25;
  *(v9 + 8) = BYTE8(v25);
  *(v20 + 15) |= 8u;

  return v12;
}

id CAMetalLayer_init()
{
  v0 = CAMetalLayer_initIMP();
  OpenLayerStream(v0);

  return v0;
}

id ColorSpaceData(CGColorSpace *a1)
{
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = CGColorSpaceCopyPropertyList(a1);
    if (v3)
    {
      v4 = [NSPropertyListSerialization dataWithPropertyList:v3 format:200 options:0 error:0, v7, v8];
      HIDWORD(v8) = [v4 length];
      v5 = [NSMutableData dataWithBytes:&v7 length:16];
      [v5 appendData:v4];
    }

    else
    {
      v5 = 0;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void GTEncodeMetalLayers(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  if ((dword_31F7C8 & 0x20000000) != 0)
  {
    v4 = 1;
  }

  else
  {
    v2 = +[CADisplay mainDisplay];
    v3 = [v2 currentOrientation];
    if ([v3 isEqualToString:@"rot0"])
    {
      v4 = 1;
    }

    else if ([v3 isEqualToString:@"rot90"])
    {
      v4 = 4;
    }

    else if ([v3 isEqualToString:@"rot180"])
    {
      v4 = 2;
    }

    else if ([v3 isEqualToString:@"rot270"])
    {
      v4 = 3;
    }

    else
    {
      v4 = 1;
    }
  }

  v5 = *(a1 + 8);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0x694300000000;
  *(v5 + 40) = 0;
  *(v5 + 48) = v4;
  *v5 = 0xFFFFE40D00000034;
  *(v5 + 8) = 0;
  v6 = *(a1 + 8);
  v7 = v6[8];
  v6[8] = v7 | 0x10004;
  v8 = *(a1 + 24);
  v9 = *v6;
  if ((v7 & 0x1000) != 0)
  {
    v11 = v6;
    v10 = *v6;
    do
    {
      v11 = (v11 + v9);
      v9 = *v11;
      v10 += v9;
    }

    while ((*(v11 + 33) & 0x20) == 0);
  }

  else
  {
    v10 = *v6;
  }

  v12 = objc_autoreleasePoolPush();
  [*(v8 + 8) appendBytes:v6 length:v10];
  objc_autoreleasePoolPop(v12);
  os_unfair_lock_lock(&s_layerMapLock);
  v13 = [NSMutableArray alloc];
  v14 = [v13 initWithCapacity:{objc_msgSend(s_layerStreamMap, "count")}];
  memset(&v104, 0, 64);
  v15 = s_layerStreamMap;
  v16 = [v15 countByEnumeratingWithState:&v104 objects:v105 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = **&v104.m13;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (**&v104.m13 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v14 addObject:{*(*&v104.m12 + 8 * i), v91}];
      }

      v17 = [v15 countByEnumeratingWithState:&v104 objects:v105 count:16];
    }

    while (v17);
  }

  os_unfair_lock_unlock(&s_layerMapLock);
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  obj = v14;
  v20 = [obj countByEnumeratingWithState:&v96 objects:v115 count:16];
  v21 = v91;
  if (v20)
  {
    v22 = v20;
    v23 = *v97;
    height = CGSizeZero.height;
    do
    {
      v25 = 0;
      do
      {
        if (*v97 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v96 + 1) + 8 * v25);
        context = objc_autoreleasePoolPush();
        v27 = ColorSpaceData([v26 colorspace]);
        v28 = v26;
        memset(v105, 0, sizeof(v105));
        v106 = 0u;
        memset(&v107, 0, sizeof(v107));
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v114 = 0;
        v29 = [v28 device];
        if (!v29)
        {
          v29 = MTLCreateSystemDefaultDevice();
        }

        v30 = [v29 streamReference];
        *(&v106 + 1) = v30;
        BYTE2(v114) = [v28 framebufferOnly];
        LOWORD(v114) = [v28 pixelFormat];
        [v28 drawableSize];
        v33 = v32;
        width = CGSizeZero.width;
        if (CGSizeZero.width == v33 && height == v31)
        {
          [v28 bounds];
          v37 = v36;
          [v28 contentsScale];
          v33 = v38 * v37;
          [v28 bounds];
          v40 = v39;
          [v28 contentsScale];
          v31 = width * v40;
        }

        *&v108 = v33;
        *(&v108 + 1) = v31;
        [v28 bounds];
        v42 = v41;
        v44 = v43;
        *(&v110 + 1) = v45;
        *&v111 = v46;
        *(&v111 + 1) = v41;
        *&v112 = v43;
        [v28 contentsScale];
        *&v110 = v47;
        if (os_variant_has_internal_content() && IsCompositorProcess_onceToken != -1)
        {
          dispatch_once(&IsCompositorProcess_onceToken, &__block_literal_global_7261);
        }

        if ((IsCompositorProcess_isCompositorProcess & 1) != 0 || (v48 = NSClassFromString(@"UIScreen")) == 0)
        {
          m14 = 240.0;
          m13 = 320.0;
        }

        else
        {
          v49 = v48;
          [(objc_class *)v48 performSelector:sel_getUid("mainScreen")];
          v94 = v29;
          v50 = v27;
          v51 = v30;
          v52 = v22;
          v54 = v53 = v23;
          v55 = NSSelectorFromString(@"bounds");
          v56 = [(objc_class *)v49 instanceMethodSignatureForSelector:v55];
          v57 = [NSInvocation invocationWithMethodSignature:v56];

          [v57 setSelector:v55];
          [v57 invokeWithTarget:v54];
          memset(&v104, 0, 32);
          [v57 getReturnValue:&v104];
          if (v104.m13 >= v104.m14)
          {
            m13 = v104.m13;
          }

          else
          {
            m13 = v104.m14;
          }

          if (v104.m13 >= v104.m14)
          {
            m14 = v104.m14;
          }

          else
          {
            m14 = v104.m13;
          }

          v21 = v91;
          v23 = v53;
          v22 = v52;
          v30 = v51;
          v27 = v50;
          v29 = v94;
        }

        v60 = v28;
        memset(&v104, 0, sizeof(v104));
        [v60 position];
        v62 = v61;
        [v60 position];
        v64 = v63;
        [v60 zPosition];
        CATransform3DMakeTranslation(&v104, v62, v64, v65);
        memset(&v100, 0, sizeof(v100));
        if (v60)
        {
          objc_msgSend_transform(v60);
        }

        else
        {
          memset(&a, 0, sizeof(a));
        }

        b = v104;
        CATransform3DConcat(&v100, &a, &b);
        v66 = [v60 superlayer];
        if (v66)
        {
          v67 = v66;
          do
          {
            [v67 anchorPoint];
            v69 = v68;
            [v67 bounds];
            v71 = v70;
            [v67 anchorPoint];
            v73 = v72;
            [v67 bounds];
            v74 = -(v69 * v71);
            v76 = -(v73 * v75);
            [v67 anchorPointZ];
            CATransform3DMakeTranslation(&a, v74, v76, -v77);
            v104 = a;
            b = v100;
            v101 = a;
            CATransform3DConcat(&a, &b, &v101);
            v100 = a;
            objc_msgSend_transform(v67);
            v101 = v100;
            CATransform3DConcat(&a, &v101, &b);
            v100 = a;
            objc_msgSend_sublayerTransform(v67);
            v101 = v100;
            CATransform3DConcat(&a, &v101, &b);
            v100 = a;
            [v67 position];
            v79 = v78;
            [v67 position];
            v81 = v80;
            [v67 zPosition];
            CATransform3DMakeTranslation(&a, v79, v81, v82);
            v104 = a;
            b = v100;
            v101 = a;
            CATransform3DConcat(&a, &b, &v101);
            v100 = a;
            v83 = [v67 superlayer];

            v67 = v83;
          }

          while (v83);
        }

        if (v42 >= v44)
        {
          v84 = v44;
        }

        else
        {
          v84 = v42;
        }

        if (v42 < v44)
        {
          v42 = v44;
        }

        v107 = v100;
        *(&v112 + 1) = m13 / v42;
        *&v113 = m14 / v84;
        [v60 anchorPoint];
        *&v109 = v85;
        *(&v109 + 1) = v86;

        *(&v113 + 1) = [v27 bytes];
        if (v30 == *(v21 + 56))
        {
          v87 = *(a1 + 16);
          *&v104.m11 = *a1;
          *&v104.m13 = v87;
          *&v104.m21 = *(a1 + 32);
          v104.m23 = *(a1 + 48);
          if ((dword_31F7C8 & 0x10000000) != 0)
          {
            v88 = StreamForLayer(v60);
            if (v88)
            {
              v89 = atomic_load(v88 + 7);
              v90 = (v88 + (~(v89 >> 2) & 8));
            }

            else
            {
              v90 = &dword_8;
            }

            v60 = *v90;
          }

          *&v104.m11 = v60;
          WriteGTMTLSMLayer(&v104, v21, v105);
        }

        objc_autoreleasePoolPop(context);
        v25 = v25 + 1;
      }

      while (v25 != v22);
      v22 = [obj countByEnumeratingWithState:&v96 objects:v115 count:16];
    }

    while (v22);
  }
}

void *GTMTLDescriptorAllocator_copyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  error = 0;
  v6 = [[NSData alloc] initWithBytesNoCopy:a2 length:a3 freeWhenDone:0];
  v7 = CFPropertyListCreateWithData(0, v6, 0, 0, &error);
  if (error)
  {
    v8 = CFErrorCopyDescription(error);
    v9 = v8;
    if (s_logUsingOsLog == 1)
    {
      v10 = gt_tagged_log(3);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        CStringPtr = CFStringGetCStringPtr(v9, 0x8000100u);
        *buf = 136315138;
        v21 = CStringPtr;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "warning: %s", buf, 0xCu);
      }
    }

    else
    {
      v12 = __stderrp;
      v10 = [NSString stringWithFormat:@"warning: %s", CFStringGetCStringPtr(v8, 0x8000100u)];
      fprintf(v12, "%s\n", [v10 UTF8String]);
    }

    CFRelease(v9);
    CFRelease(error);
  }

  if (!v7)
  {
    return 0;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [NSKeyedArchiver archivedDataWithRootObject:v7 requiringSecureCoding:1 error:0];
  v15 = [v14 bytes];
  v16 = [v14 length];
  if (v16)
  {
    v17 = *(a1 + 592);
  }

  else
  {
    v17 = 0;
  }

  *(a1 + 592) += v16;
  if (a4)
  {
    memcpy(v17, v15, v16);
  }

  objc_autoreleasePoolPop(v13);
  return v17;
}

uint64_t GTAccelerationStructureDescriptorDownloader_needsDownloader(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v3 = atomic_load((v1 + 4));
      v4 = v2 + (v3 >> 6) - 1;
      if (v4 > 0)
      {
        break;
      }

      v1 = *(v1 + 40);
      v2 = v4;
      if (!v1)
      {
        v2 = v4;
LABEL_8:
        v5 = v2 | (v4 << 32);
        goto LABEL_9;
      }
    }

    v4 = 0;
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:
  while (v1)
  {
    v6 = v1 + 64 + ((HIDWORD(v5) - v5) << 6);
    if ((*(v6 + 15) & 8) == 0)
    {
      break;
    }

    v7 = *(v6 + 8);
    result = 1;
    if ((v7 + 15647) <= 9 && ((1 << (v7 + 31)) & 0x207) != 0)
    {
      return result;
    }

    v10 = (v7 + 15524) > 0x3B || ((1 << (v7 - 92)) & 0xC00000000000003) == 0;
    if (!v10 || v7 == -15366)
    {
      return result;
    }

    v12 = atomic_load((v1 + 4));
    v13 = (HIDWORD(v5) + 1);
    v14 = v5 + (v12 >> 6) - 1;
    v5 = (v13 << 32) | v5;
    if (v13 == v14)
    {
      v5 = (v13 << 32) | v13;
      v1 = *(v1 + 40);
    }
  }

  return 0;
}

apr_pool_t **GTAccelerationStructureDescriptorDownloader_make(void *a1, void *a2, apr_pool_t *a3, apr_pool_t *a4, apr_pool_t *a5)
{
  v10 = a2;
  v11 = DEVICEOBJECT(a1);
  v12 = apr_palloc(a5, 0x28uLL);
  v13 = v12;
  if (v12)
  {
    *(v12 + 4) = 0;
    *v12 = 0u;
    *(v12 + 1) = 0u;
  }

  objc_storeStrong(v12 + 4, a2);
  *v13 = a5;
  v13[1] = a3;
  v13[2] = a4;
  v14 = objc_alloc_init(NSMutableSet);
  v15 = v13[3];
  v13[3] = v14;

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __GTAccelerationStructureDescriptorDownloader_make_block_invoke;
  block[3] = &unk_2F2508;
  v20 = v11;
  v16 = s_accelerationStructureDescriptorDownloaderPipelinesToken_7822;
  v17 = v11;
  if (v16 != -1)
  {
    dispatch_once(&s_accelerationStructureDescriptorDownloaderPipelinesToken_7822, block);
  }

  return v13;
}

void BuildPipelines(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MTLCompileOptions);
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 URLForResource:@"default" withExtension:@"metallib"];
    if (v5)
    {
      v33 = 0;
      v6 = [v1 newLibraryWithURL:v5 error:&v33];
      v7 = v33;
      if (v6)
      {
        v8 = [v6 newFunctionWithName:@"CopyAccelerationStructureState"];
        v32 = v7;
        v9 = [v1 newComputePipelineStateWithFunction:v8 error:&v32];
        v10 = v32;

        if (v9)
        {
          v31[2] = v10;
          v29 = [v6 newFunctionWithName:@"ClearAccelerationStructureChildren"];
          v11 = [v1 newComputePipelineStateWithFunction:? error:?];
          v12 = v10;

          if (v11)
          {
            obj = v11;
            v31[1] = v12;
            v27 = [v6 newFunctionWithName:@"FillInstanceHeader"];
            v13 = [v1 newComputePipelineStateWithFunction:? error:?];
            v14 = v12;

            if (v13)
            {
              v15 = [v6 newFunctionWithName:@"GetAccelerationStructureChildren"];
              if (v15)
              {
                v25 = v8;
                v31[0] = v14;
                v16 = [v1 newComputePipelineStateWithFunction:v15 error:v31];
                v26 = v31[0];

                v17 = v16;
                if (v16)
                {
                  v18 = [v6 newFunctionWithName:@"MarkAccelerationStructureChildren"];
                  v19 = v18;
                  if (v18)
                  {
                    v23 = v18;
                    v24 = v15;
                    v20 = v13;
                    v30 = v26;
                    v21 = [v1 newComputePipelineStateWithFunction:v18 error:&v30];
                    v22 = v30;

                    v8 = v25;
                    if (v21)
                    {
                      objc_storeStrong(&s_downloaderPipelines_0_7829, v20);
                      objc_storeStrong(&s_downloaderPipelines_1_7830, v9);
                      objc_storeStrong(&s_downloaderPipelines_2_7831, obj);
                      objc_storeStrong(&s_downloaderPipelines_3_7832, v17);
                      objc_storeStrong(&s_downloaderPipelines_4_7833, v21);
                    }

                    v19 = v23;
                    v26 = v22;
                    v13 = v20;
                    v15 = v24;
                  }

                  else
                  {
                    v8 = v25;
                  }
                }

                else
                {
                  v8 = v25;
                }

                v14 = v26;
              }
            }

            v12 = v14;
            v11 = obj;
          }

          v10 = v12;
        }

        v7 = v10;
      }
    }
  }
}

void GTAccelerationStructureDescriptorDownloader_preProcessFunc(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  if (v4 > -15524)
  {
    if (v4 > -15466)
    {
      if (v4 != -15465)
      {
        if (v4 != -15366)
        {
          return;
        }

        goto LABEL_13;
      }
    }

    else if (v4 != -15523)
    {
      v6 = -15466;
      goto LABEL_16;
    }

LABEL_17:
    v5 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v3) + 1);
    goto LABEL_18;
  }

  if (v4 > -15639)
  {
    if (v4 != -15638)
    {
      v6 = -15524;
      goto LABEL_16;
    }

LABEL_13:
    v5 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v3) + 2);
    if (!v5)
    {
      return;
    }

    goto LABEL_18;
  }

  if ((v4 + 15646) >= 2)
  {
    v6 = -15647;
LABEL_16:
    if (v4 != v6)
    {
      return;
    }

    goto LABEL_17;
  }

  v5 = *(GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v3) + 2);
LABEL_18:
  v7 = AccelerationStructureByStreamRef(a1, v5);
  if (v7)
  {
    v8 = v7;
    [*(a1 + 24) addObject:v7];
    v7 = v8;
  }
}

id AccelerationStructureByStreamRef(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = [NSNumber numberWithUnsignedLongLong:a2];
    v4 = [v2 objectForKey:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void GTAccelerationStructureDescriptorDownloader_allocateStateBuffers(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = *(a1 + 24);
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (v9)
        {
          v10 = v9;
          v11 = v3;
          v12 = [v10 stateBuffer];
          if (!v12)
          {
            v13 = [v11 newBufferWithLength:8 options:0];
            v14 = [v13 contents];
            v15 = v14[1] & 0xFFFFFFF0;
            *v14 = 0;
            v14[1] = v15;
            [v10 setStateBuffer:v13];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }
}

void GTAccelerationStructureDescriptorDownloader_processFunc(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  newpool = 0;
  v6 = *(a1 + 8);
  apr_pool_create_ex(&newpool, *a1, 0, 0);
  v7 = *(a2 + 8);
  if (v7 <= -15525)
  {
    if (v7 > -15646)
    {
      if (v7 != -15645)
      {
        if (v7 != -15638)
        {
          goto LABEL_33;
        }

        goto LABEL_6;
      }

      v25 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      v10 = AccelerationStructureByStreamRef(a1, *(v25 + 1));
      v11 = AccelerationStructureByStreamRef(a1, *(v25 + 2));
      GTAccelerationStructureDescriptorDownloader_processCopy_7848(v5, v10, v11, 1);
    }

    else
    {
      if (v7 == -15647)
      {
        v16 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
        v17 = AccelerationStructureByStreamRef(a1, *(v16 + 1));
        if (v17)
        {
          v18 = GTTraceFunc_argumentBytesWithMap(a2, v16[32], v6);
          v38 = (v18[97] >> 2) & 1;
          [v5 setBytes:&v38 length:4 atIndex:7];
          v19 = v18[96];
          switch(v19)
          {
            case 1:
              ClearAccelerationStructureChildren(v5, v17, v38 != 0);
              break;
            case 2:
              v33 = [v17 stateBuffer];

              if (v33)
              {
                FillInstanceAccelerationStructureHeader(v5, v17, *v18, v38 != 0);
              }

              break;
            case 3:
              v20 = [v17 stateBuffer];

              if (v20)
              {
                v21 = AccelerationStructureByStreamRef(a1, *v18);
                v22 = v21;
                if (v21)
                {
                  v23 = DEVICEOBJECT(v21);

                  [v5 insertDebugSignpost:@"BuildInstanceIndirect"];
                  [v5 setBuffer:v23 offset:*(v18 + 1) atIndex:4];
                  v24 = [v17 stateBuffer];
                  [v5 setBuffer:v24 offset:0 atIndex:1];

                  [v5 setBytes:&v38 length:4 atIndex:7];
                  [v5 setComputePipelineState:s_downloaderPipelines_0_7829];
                  v36 = vdupq_n_s64(1uLL);
                  v37 = 1;
                  v34 = v36;
                  v35 = 1;
                  [v5 dispatchThreads:&v36 threadsPerThreadgroup:&v34];
                }
              }

              break;
          }
        }

        goto LABEL_33;
      }

      if (v7 != -15646)
      {
        goto LABEL_33;
      }

      v9 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      v10 = AccelerationStructureByStreamRef(a1, *(v9 + 1));
      v11 = AccelerationStructureByStreamRef(a1, *(v9 + 2));
      GTAccelerationStructureDescriptorDownloader_processCopy_7848(v5, v10, v11, 0);
    }

    goto LABEL_33;
  }

  if (v7 <= -15467)
  {
    if (v7 != -15524)
    {
      if (v7 != -15523)
      {
        goto LABEL_33;
      }

      v12 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      v13 = AccelerationStructureByStreamRef(a1, *(v12 + 1));
      v14 = [v13 captureDescriptor];
      v15 = ([v14 usage] >> 2) & 1;

      ClearAccelerationStructureChildren(v5, v13, v15);
LABEL_32:

      goto LABEL_33;
    }

LABEL_26:
    v26 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
    v13 = AccelerationStructureByStreamRef(a1, *(v26 + 1));
    v27 = [v13 captureDescriptor];
    v28 = [v27 usage];

    v29 = GTTraceFunc_argumentBytesWithMap(a2, v26[32], v6);
    FillInstanceAccelerationStructureHeader(v5, v13, *v29, (v28 >> 2) & 1);
    goto LABEL_32;
  }

  switch(v7)
  {
    case -15466:
      goto LABEL_26;
    case -15465:
      v30 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      v13 = AccelerationStructureByStreamRef(a1, *(v30 + 1));
      v31 = GTTraceFunc_argumentBytesWithMap(a2, v30[32], v6);
      if (v31)
      {
        v32 = (v31[97] >> 2) & 1;
      }

      else
      {
        v32 = 0;
      }

      ClearAccelerationStructureChildren(v5, v13, v32);
      goto LABEL_32;
    case -15366:
LABEL_6:
      v8 = GTTraceFunc_argumentBytesWithMap(a2, *(a2 + 13), v6);
      GTAccelerationStructureDescriptorDownloader_processRefit_7849(a1, v5, *(v8 + 1), *(v8 + 2));
      break;
  }

LABEL_33:
  apr_pool_destroy(newpool);
}

void ClearAccelerationStructureChildren(void *a1, void *a2, int a3)
{
  v5 = a1;
  v6 = a2;
  v7 = [v6 stateBuffer];

  if (v7)
  {
    v13 = a3;
    v14 = 1;
    [v5 insertDebugSignpost:@"ClearPrimitiveAccelerationStructureChildren"];
    [v5 setComputePipelineState:s_downloaderPipelines_2_7831];
    v8 = [v6 stateBuffer];
    [v5 setBuffer:v8 offset:0 atIndex:1];

    [v5 setBytes:&v14 length:4 atIndex:5];
    [v5 setBytes:&v13 length:4 atIndex:7];
    v11 = vdupq_n_s64(1uLL);
    v12 = 1;
    v9 = v11;
    v10 = 1;
    [v5 dispatchThreads:&v11 threadsPerThreadgroup:&v9];
  }
}

void FillInstanceAccelerationStructureHeader(void *a1, void *a2, int a3, int a4)
{
  v12 = a4;
  v13 = a3;
  v5 = a2;
  v6 = a1;
  [v6 insertDebugSignpost:@"FillInstanceAccelerationStructureHeader"];
  [v6 setComputePipelineState:s_downloaderPipelines_0_7829];
  [v6 setBytes:&v13 length:4 atIndex:4];
  v7 = [v5 stateBuffer];

  [v6 setBuffer:v7 offset:0 atIndex:1];
  [v6 setBytes:&v12 length:4 atIndex:7];
  v10 = vdupq_n_s64(1uLL);
  v11 = 1;
  v8 = v10;
  v9 = 1;
  [v6 dispatchThreads:&v10 threadsPerThreadgroup:&v8];
}

void GTAccelerationStructureDescriptorDownloader_processCopy_7848(void *a1, void *a2, void *a3, char a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = v9;
  v20 = a4;
  if (v8)
  {
    if (v9)
    {
      v11 = [v8 stateBuffer];
      if (v11)
      {
        v12 = v11;
        v13 = [v10 stateBuffer];

        if (v13)
        {
          [v7 insertDebugSignpost:@"CopyAccelerationStructureState"];
          [v7 setComputePipelineState:s_downloaderPipelines_1_7830];
          v14 = [v8 stateBuffer];
          [v7 setBuffer:v14 offset:0 atIndex:0];

          v15 = [v10 stateBuffer];
          [v7 setBuffer:v15 offset:0 atIndex:1];

          [v7 setBytes:&v20 length:1 atIndex:6];
          v18 = vdupq_n_s64(1uLL);
          v19 = 1;
          v16 = v18;
          v17 = 1;
          [v7 dispatchThreads:&v18 threadsPerThreadgroup:&v16];
        }
      }
    }
  }
}

void GTAccelerationStructureDescriptorDownloader_processRefit_7849(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a4 && a3 != a4)
  {
    v7 = a2;
    v9 = AccelerationStructureByStreamRef(a1, a3);
    v8 = AccelerationStructureByStreamRef(a1, a4);
    GTAccelerationStructureDescriptorDownloader_processCopy_7848(v7, v9, v8, 0);
  }
}

void GTAccelerationStructureDescriptorDownloader_postProcess(uint64_t a1, void *a2, void *a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a6;
  if (a5)
  {
    v16 = [*(a1 + 24) copy];
    if ([v16 count])
    {
      v17 = g_signpostLog;
      if (os_signpost_enabled(g_signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_postProcess", &unk_2E94FB, buf, 2u);
      }

      v18 = [v16 count];
      add = atomic_fetch_add((a7 + 80), v18);
      v20 = [v15 device];
      v21 = [v20 dispatchGroup];
      dispatch_group_enter(v21);

      v22 = g_signpostLog;
      if (os_signpost_enabled(g_signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_0, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GTAccelerationStructureDescriptorDownloader_postProcess", &unk_2E94FB, buf, 2u);
      }

      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __GTAccelerationStructureDescriptorDownloader_postProcess_block_invoke;
      v24[3] = &unk_2F1F88;
      v28 = add;
      v29 = v18;
      v25 = v16;
      v30 = a7;
      v26 = v15;
      v27 = v20;
      v23 = v20;
      [v13 notifyListener:v14 atValue:a4 block:v24];
    }

    else
    {
      [v13 setSignaledValue:a4 + 1];
    }
  }

  else
  {
    [v13 setSignaledValue:a4 + 1];
  }
}

id GTAccelerationStructureDescriptorDownloader_children(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v71 = objc_autoreleasePoolPush();
  LODWORD(a3) = GTAccelerationStructureDescriptorDownloader_childrenCount(v6);
  v70 = [v7 objectAtIndexedSubscript:0];
  v8 = 12 * [v70 count];
  v9 = v6;
  v10 = v7;
  v11 = [v5 commandBuffer];
  [v11 setLabel:@"com.apple.internal.gputools.DownloadAccelerationStructure"];
  v12 = [v11 device];
  v13 = GTAccelerationStructureDescriptorDownloader_childrenCount(v9);
  v14 = [v10 objectAtIndexedSubscript:0];
  v68 = v10;
  v15 = [v10 objectAtIndexedSubscript:1];
  v77 = v14;
  v74 = [v14 allValues];
  v78 = v11;
  v75 = [v11 computeCommandEncoder];
  v76 = v15;
  v69 = v9;
  v73 = v12;
  if (v8 >= 8 * a3)
  {
    if (v13)
    {
      v46 = [v12 newBufferWithLength:8 * v13 options:0];
    }

    else
    {
      v46 = 0;
    }

    v47 = v75;
    v48 = v74;
    v49 = v9;
    v90[0] = v13;
    v50 = v46;
    if (v13)
    {
      block = _NSConcreteStackBlock;
      v86 = 3221225472;
      v87 = __GTAccelerationStructureDescriptorDownloader_fillChildrenBuffer_block_invoke;
      v88 = &unk_2F2508;
      v51 = v47;
      v89 = v51;
      if (s_accelerationStructureDescriptorDownloaderPipelinesToken_7822 != -1)
      {
        dispatch_once(&s_accelerationStructureDescriptorDownloaderPipelinesToken_7822, &block);
      }

      v52 = [s_downloaderPipelines_3_7832 threadExecutionWidth];
      [v51 setComputePipelineState:s_downloaderPipelines_3_7832];
      v53 = DEVICEOBJECT(v49);
      [v51 setAccelerationStructure:v53 atBufferIndex:8];

      [v51 setBytes:v90 length:4 atIndex:4];
      [v51 setBuffer:v50 offset:0 atIndex:9];
      v83 = v90[0];
      v84 = vdupq_n_s64(1uLL);
      v81 = v52;
      v82 = v84;
      [v51 dispatchThreads:&v83 threadsPerThreadgroup:&v81];
    }

    [v47 endEncoding];
    [v78 commit];
    [v78 waitUntilCompleted];
    v54 = v77;
    v36 = v76;
    v55 = v50;
    if ([v55 length] < 8 * v13)
    {
      v44 = 0;
      v45 = v55;
      v57 = v70;
      v56 = v71;
      v58 = v68;
      goto LABEL_38;
    }

    v72 = v55;
    v59 = [v55 contents];
    v79 = v54;
    v33 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v54, "count")}];
    if (v13)
    {
      v60 = v13;
      do
      {
        if (*v59++)
        {
          v62 = [NSNumber numberWithUnsignedLongLong:?];
          v63 = [v36 objectForKeyedSubscript:v62];

          if (v63)
          {
            v64 = [v54 objectForKeyedSubscript:v63];
            if (v64)
            {
              [v33 addObject:v64];
            }
          }
        }

        --v60;
      }

      while (v60);
    }

    v44 = [v33 allObjects];
    v45 = v72;
  }

  else
  {
    v67 = v5;
    v66 = [v15 allKeys];
    v16 = [v66 sortedArrayUsingSelector:"compare:"];
    v17 = [v16 count];
    v18 = [v12 newBufferWithLength:8 * v17 options:0];
    v19 = [v18 contents];
    v20 = v12;
    if (v17)
    {
      v21 = v19;
      for (i = 0; i != v17; ++i)
      {
        v23 = [v16 objectAtIndexedSubscript:i];
        v21[i] = [v23 longLongValue];
      }
    }

    v24 = [v20 newBufferWithLength:4 * v17 options:0];
    v25 = v75;
    v26 = v16;
    v27 = v9;
    v90[0] = v13;
    v28 = v18;
    v29 = v24;
    if (v13)
    {
      block = _NSConcreteStackBlock;
      v86 = 3221225472;
      v87 = __GTAccelerationStructureDescriptorDownloader_markChildren_block_invoke;
      v88 = &unk_2F2508;
      v30 = v25;
      v89 = v30;
      if (s_accelerationStructureDescriptorDownloaderPipelinesToken_7822 != -1)
      {
        dispatch_once(&s_accelerationStructureDescriptorDownloaderPipelinesToken_7822, &block);
      }

      v31 = [s_downloaderPipelines_4_7833 threadExecutionWidth];
      v80 = [v26 count];
      [v30 setComputePipelineState:s_downloaderPipelines_4_7833];
      v32 = DEVICEOBJECT(v27);
      [v30 setAccelerationStructure:v32 atBufferIndex:8];

      [v30 setBytes:v90 length:4 atIndex:4];
      [v30 setBytes:&v80 length:4 atIndex:12];
      [v30 setBuffer:v28 offset:0 atIndex:10];
      [v30 setBuffer:v29 offset:0 atIndex:11];
      v83 = v90[0];
      v84 = vdupq_n_s64(1uLL);
      v81 = v31;
      v82 = v84;
      [v30 dispatchThreads:&v83 threadsPerThreadgroup:&v81];
    }

    v79 = v26;
    [v25 endEncoding];
    [v78 commit];
    [v78 waitUntilCompleted];
    v33 = v77;
    v34 = v76;
    v35 = v29;
    v36 = v28;
    v37 = [v28 contents];
    v72 = v35;
    v38 = [v35 contents];
    for (j = [[NSMutableArray alloc] initWithCapacity:v17]; v17; --v17)
    {
      if (*v38++)
      {
        v41 = [NSNumber numberWithUnsignedLongLong:*v37];
        v42 = [v34 objectForKeyedSubscript:v41];

        if (v42)
        {
          v43 = [v33 objectForKeyedSubscript:v42];
          if (v43)
          {
            [j addObject:v43];
          }
        }
      }

      ++v37;
    }

    v44 = [j copy];

    v45 = v66;
    v5 = v67;
  }

  v57 = v70;
  v56 = v71;
  v58 = v68;
  v54 = v79;
  v55 = v72;
LABEL_38:

  objc_autoreleasePoolPop(v56);

  return v44;
}

uint64_t GTAccelerationStructureDescriptorDownloader_childrenCount(void *a1)
{
  v1 = [a1 stateBuffer];
  v2 = v1;
  if (v1 && [v1 length] >= 8 && (v3 = objc_msgSend(v2, "contents"), (v3[1] & 2) != 0))
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void GTAccelerationStructureDescriptorDownloader_destroy(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
}

void RegisterAccelerationStructure(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = s_accelerationStructuresToken;
  v6 = a1;
  if (v5 != -1)
  {
    dispatch_once(&s_accelerationStructuresToken, &__block_literal_global_8031);
  }

  v8 = [NSNumber numberWithUnsignedLongLong:a2];
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  os_unfair_lock_lock(&s_accelerationStructuresLock);
  [s_accelerationStructuresByStreamRef setObject:v6 forKey:v8];

  [s_accelerationStructureGPUResourceIDToStreamRef setObject:v8 forKey:v7];
  os_unfair_lock_unlock(&s_accelerationStructuresLock);
}

id CaptureAccelerationStructures()
{
  if (s_accelerationStructuresToken != -1)
  {
    dispatch_once(&s_accelerationStructuresToken, &__block_literal_global_8031);
  }

  os_unfair_lock_lock(&s_accelerationStructuresLock);
  v0 = [NSMutableDictionary alloc];
  v1 = [v0 initWithCapacity:{objc_msgSend(s_accelerationStructuresByStreamRef, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = s_accelerationStructuresByStreamRef;
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [s_accelerationStructuresByStreamRef objectForKey:{v7, v13}];
        if (v8)
        {
          [v1 setObject:v8 forKeyedSubscript:v7];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v4);
  }

  v9 = [s_accelerationStructureGPUResourceIDToStreamRef copy];
  os_unfair_lock_unlock(&s_accelerationStructuresLock);
  v10 = [v1 copy];
  v17[0] = v10;
  v17[1] = v9;
  v11 = [NSArray arrayWithObjects:v17 count:2];

  return v11;
}

id CreateIndirectComputeCommandBufferSnapshot(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = [v9 device];
  v11 = DEVICEOBJECT(v8);

  v12 = [v11 device];
  v13 = [v11 size];
  v14 = [v12 newIndirectCommandBufferWithDescriptor:v7 maxCommandCount:v13 options:0];

  v15 = [v10 computeFunctionCopyIndirectCommandBuffer];
  v16 = [v15 newArgumentEncoderWithBufferIndex:0];

  v17 = [v12 newBufferWithLength:objc_msgSend(v16 options:{"encodedLength"), 0}];
  [v16 setArgumentBuffer:v17 offset:0];
  [v16 setIndirectCommandBuffer:v14 atIndex:0];
  [v16 setIndirectCommandBuffer:v11 atIndex:1];
  v18 = DEVICEOBJECT(v9);

  [v18 useResource:v11 usage:1];
  [v18 useResource:v14 usage:2];
  [v18 setBuffer:v17 offset:0 atIndex:0];
  v19 = [v10 computePipelineCopyIndirectCommandBuffer];
  [v18 setComputePipelineState:v19];
  if ([v12 supportsNonUniformThreadgroupSize])
  {
    v23 = v13;
    v24 = vdupq_n_s64(1uLL);
    *v22 = [v19 threadExecutionWidth];
    *&v22[8] = v24;
    [v18 dispatchThreads:&v23 threadsPerThreadgroup:v22];
  }

  else
  {
    v24 = vdupq_n_s64(1uLL);
    *v22 = v24;
    *&v22[16] = 1;
    v23 = v13;
    [v18 dispatchThreadgroups:&v23 threadsPerThreadgroup:v22];
  }

  if ([v12 supportsComputeMemoryBarrier])
  {
    v25 = v11;
    [v18 memoryBarrierWithResources:&v25 count:1];
  }

  v20 = v17;
  *a4 = v17;

  return v14;
}

void RestoreComputeCommandEncoder(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v3 = [v2 traceContext];
  v4 = [v2 traceStream];
  newpool = 0;
  apr_pool_create_ex(&newpool, 0, 0, 0);
  v5 = newpool;
  v6 = apr_hash_make(newpool);
  GTTraceMemPool_buildMemoryMap(v4[3], v6);
  v7 = GTTraceContext_copyStreamMap(v3, v5);
  bzero(v37, 0x2BA0uLL);
  v8 = v4[4];
  if (v8)
  {
    v9 = 0;
    while (1)
    {
      v10 = atomic_load((v8 + 4));
      v11 = v9 + (v10 >> 6) - 1;
      if (v11 > 0)
      {
        break;
      }

      v8 = *(v8 + 40);
      v9 = v11;
      if (!v8)
      {
        v9 = v11;
        goto LABEL_8;
      }
    }

    v11 = 0;
LABEL_8:
    v12 = v9 | (v11 << 32);
  }

  else
  {
    v12 = 0;
  }

  while (v8)
  {
    v13 = v8 + 64 + ((HIDWORD(v12) - v12) << 6);
    if ((*(v13 + 15) & 8) == 0)
    {
      break;
    }

    GTMTLSMCommandEncoder_processTraceFunc(v37, v13, v6);
    v14 = atomic_load((v8 + 4));
    v15 = v12 + (v14 >> 6);
    v16 = (HIDWORD(v12) + 1);
    v12 = (v16 << 32) | v12;
    if (v16 == v15 - 1)
    {
      v12 = (v16 << 32) | v16;
      v8 = *(v8 + 40);
    }
  }

  v17 = DEVICEOBJECT(v2);
  v18 = 0;
  v19 = 1;
  do
  {
    v20 = v19;
    v21 = 1 << v18;
    v22 = v41[v18];
    if ((v39 & (1 << v18)) != 0)
    {
      if (v22)
      {
        v23 = v22 + 16;
      }

      else
      {
        v23 = 0;
      }

      v24 = v41[v18 + 31];
      if ((v40 & v21) != 0)
      {
        [v17 setBytes:v23 length:v24 attributeStride:v41[v18 + 62] atIndex:v18];
      }

      else
      {
        [v17 setBytes:v23 length:v24 atIndex:v18];
      }
    }

    else
    {
      v36 = v41[v18];
      entry = find_entry(v7, &v36, 8uLL, 0);
      if (*entry && (v26 = *(*entry + 32)) != 0)
      {
        v27 = atomic_load((v26 + 56));
        v28 = (v26 + (~(v27 >> 2) & 8));
      }

      else
      {
        v28 = &dword_8;
      }

      v29 = *v28;
      if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLBuffer])
      {
        v30 = v41[v18 + 31];
        if ((v40 & v21) != 0)
        {
          [v17 setBuffer:v29 offset:v30 attributeStride:v41[v18 + 62] atIndex:v18];
        }

        else
        {
          [v17 setBuffer:v29 offset:v30 atIndex:v18];
        }
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLAccelerationStructure])
      {
        [v17 setAccelerationStructure:v29 atBufferIndex:v18];
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLVisibleFunctionTable])
      {
        [v17 setVisibleFunctionTable:v29 atBufferIndex:v18];
      }

      else if ([v29 conformsToProtocol:&OBJC_PROTOCOL___MTLIntersectionFunctionTable])
      {
        [v17 setIntersectionFunctionTable:v29 atBufferIndex:v18];
      }
    }

    v19 = 0;
    v18 = 1;
  }

  while ((v20 & 1) != 0);
  if (v38)
  {
    v36 = v38;
    v31 = find_entry(v7, &v36, 8uLL, 0);
    if (*v31 && (v32 = *(*v31 + 32)) != 0)
    {
      v33 = atomic_load((v32 + 56));
      v34 = (v32 + (~(v33 >> 2) & 8));
    }

    else
    {
      v34 = &dword_8;
    }

    [v17 setComputePipelineState:*v34];
  }

  apr_pool_destroy(newpool);
}

void InitNewTransport(GTMTLGuestAppClient *a1)
{
  v2 = dispatch_group_create();
  a1->var2 = v2;
  dispatch_group_enter(v2);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = ___ZL16InitNewTransportP19GTMTLGuestAppClient_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(global_queue, block);
}

void ___ZL16InitNewTransportP19GTMTLGuestAppClient_block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_create("com.apple.gputools.capture", 0);
  dispatch_suspend(v2);
  v3 = GTTransportServiceDaemonConnectionNew();
  v4 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTMTLCaptureService];
  v5 = [[GTMTLCaptureService alloc] initWithGuestApp:*(a1 + 32)];
  v6 = [[GTMTLCaptureServiceXPCDispatcher alloc] initWithService:v5 properties:v4 notifyConnection:v3];
  [v4 setVersion:3];
  [v3 connection];
  if (registerService())
  {
    **(a1 + 32) = v5;
    [v3 registerDispatcher:v6 forPort:{objc_msgSend(v4, "servicePort")}];
  }

  v7 = [[GTServiceProperties alloc] initWithProtocol:&OBJC_PROTOCOL___GTMTLTelemetryService];
  v8 = [[GTMTLTelemetryService alloc] initWithGuestApp:*(a1 + 32)];
  v9 = [[GTMTLTelemetryServiceXPCDispatcher alloc] initWithService:v8 properties:v7 notifyConnection:v3];
  [v3 connection];
  if (registerService())
  {
    *(*(a1 + 32) + 8) = v8;
    [v3 registerDispatcher:v9 forPort:{objc_msgSend(v7, "servicePort")}];
  }

  objc_initWeak(&location, v3);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = ___ZL16InitNewTransportP19GTMTLGuestAppClient_block_invoke_2;
  v10[3] = &unk_2F2020;
  objc_copyWeak(&v11, &location);
  [v3 activateWithMessageHandler:v10 andErrorHandler:&__block_literal_global_8459];
  dispatch_resume(v2);
  dispatch_group_leave(*(*(a1 + 32) + 16));
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void sub_A1C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ___ZL16InitNewTransportP19GTMTLGuestAppClient_block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {

    return [result dispatchMessage:a2 replyConnection:result];
  }

  return result;
}

GTMTLGuestAppClient *GTMTLGuestAppClient_initPlatform(uint64_t a1)
{
  v1 = GTCoreAlloc(a1, 0x80uLL);
  InitNewTransport(v1);
  v2 = IOServiceMatching("IOAccelerator");
  MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v2);
  if (!MatchingService)
  {
    v4 = IOServiceMatching("IOAcceleratorES");
    MatchingService = IOServiceGetMatchingService(kIOMasterPortDefault, v4);
  }

  v1->var4 = MatchingService;
  v1->var10 = objc_alloc_init(NSMutableArray);
  v1->var11 = objc_alloc_init(NSMutableArray);
  v1->var12 = objc_alloc_init(NSMutableArray);
  v1->var7 = 1000000000;
  v1->var9 = 0;
  v1->var17 = 0;
  return v1;
}

uint64_t GTMTLGuestAppClient_release(vm_address_t a1)
{
  IOObjectRelease(*(a1 + 28));
  v2 = mach_task_self_;

  return vm_deallocate(v2, a1, 0x80uLL);
}

void GTMTLCaptureEventBuffer_add(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v13 = a2;
  if ((dword_31F7C8 & 0x8000000) != 0 && *(boundaryTrackerInstance + 20))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __GTMTLCaptureEventBuffer_add_block_invoke;
    block[3] = &unk_2F2508;
    v5 = v3;
    v12 = v5;
    if (GTMTLCaptureEventBuffer_add_onceToken != -1)
    {
      dispatch_once(&GTMTLCaptureEventBuffer_add_onceToken, block);
    }

    if (GTMTLCaptureEventBuffer_add_computePipeline)
    {
      v6 = [v5 computeCommandEncoder];
      [v6 setComputePipelineState:GTMTLCaptureEventBuffer_add_computePipeline];
      [v6 setBuffer:eventBuffer offset:0 atIndex:0];
      [v6 setBuffer:eventBuffer offset:8 atIndex:1];
      [v6 setBytes:&v13 length:8 atIndex:2];
      v9 = vdupq_n_s64(1uLL);
      v10 = 1;
      v7 = v9;
      v8 = 1;
      [v6 dispatchThreadgroups:&v9 threadsPerThreadgroup:&v7];
      [v6 endEncoding];
    }
  }
}

id GTMTLCaptureEventBuffer_getElements()
{
  v0 = [eventBuffer contents];
  if ((dword_31F7C8 & 0x8000000) != 0)
  {
    v1 = [NSData dataWithBytesNoCopy:v0 + 2 length:8 * *v0 freeWhenDone:0];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

id newDYDeviceInfo()
{
  v0 = objc_alloc_init(DYGTDeviceInfo);
  [v0 setPlatform:2];
  [v0 setRuntimeIdentifier:3735928559];
  if (gethostname(v33, 0x400uLL))
  {
    v1 = 0;
  }

  else
  {
    v1 = [NSString stringWithUTF8String:v33];
  }

  [v0 setName:v1];

  v2 = MGCopyAnswer();
  [v0 setProductType:v2];

  v3 = GSSystemRootDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"/System/Library/CoreServices/SystemVersion.plist"];
  v5 = [[NSDictionary alloc] initWithContentsOfFile:v4];
  v6 = [v5 objectForKey:@"ProductVersion"];
  [v0 setVersion:v6];

  v7 = [v5 objectForKey:@"ProductBuildVersion"];
  [v0 setBuild:v7];

  v8 = [NSBundle bundleWithIdentifier:@"com.apple.Metal"];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForInfoDictionaryKey:kCFBundleVersionKey];
    [v0 setMetalVersion:v10];
  }

  else
  {
    [v0 setMetalVersion:&stru_2F4BE0];
  }

  [v0 setNativePointerSize:8];
  v11 = objc_alloc_init(DYGTGPUToolsVersionInfo);
  v12 = [NSBundle bundleWithIdentifier:@"com.apple.GPUTools"];
  v13 = [v12 infoDictionary];
  v14 = NewPlistByAnonymizingPlist(v13);
  [v11 setInfoPlist:v14];

  v15 = [v12 URLForResource:@"version" withExtension:@"plist"];
  if (v15)
  {
    v16 = [NSDictionary dictionaryWithContentsOfURL:v15];
    v17 = NewPlistByAnonymizingPlist(v16);
    [v11 setVersionPlist:v17];
  }

  else
  {
    [v11 setVersionPlist:0];
  }

  [v11 setInterposeVersionGL:1572864];
  [v11 setInterposeVersionMetal:0];

  [v0 setGputoolsVersionInfo:v11];
  *v33 = 0;
  v34 = 0;
  v32.tv_sec = 0;
  v32.tv_nsec = 0;
  if (gethostuuid(v33, &v32))
  {
    [v0 setPermanentIdentifier:0];
  }

  else
  {
    v18 = [[NSUUID alloc] initWithUUIDBytes:v33];
    v19 = [v18 UUIDString];
    [v0 setPermanentIdentifier:v19];
  }

  if (MGIsQuestionValid())
  {
    v20 = MGCopyAnswer();
    v21 = [v20 unsignedIntValue];
  }

  else
  {
    v21 = 0;
  }

  if (MGIsQuestionValid())
  {
    v22 = MGCopyAnswer();
    v23 = [v22 unsignedIntValue];
  }

  else
  {
    v23 = 0;
  }

  if (MGIsQuestionValid())
  {
    v24 = MGCopyAnswer();
    v25 = [v24 unsignedIntValue];
  }

  else
  {
    v25 = 0;
  }

  v26 = 0;
  if (MGIsQuestionValid())
  {
    v27 = MGCopyAnswer();
    [v27 doubleValue];
    v26 = v28;
  }

  if (MGIsQuestionValid())
  {
    v29 = MGCopyAnswer();
    v30 = [v29 unsignedIntValue];
  }

  else
  {
    v30 = 0;
  }

  *v33 = v26;
  v34 = __PAIR64__(v23, v21);
  v35 = v25;
  v36 = v30;
  [v0 setMainScreenDescriptor:v33];

  return v0;
}

id NewPlistByAnonymizingPlist(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 removeObjectForKey:@"CFBundleInfoPlistURL"];
  [v1 removeObjectForKey:@"NSBundleInitialPath"];
  [v1 removeObjectForKey:@"NSBundleResolvedPath"];
  v2 = [v1 copy];

  return v2;
}

id newProfileWithMTLDevice(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(DYGTMTLDeviceProfile);
  [v2 setVersion:2];
  v3 = [v1 name];
  [v2 setName:v3];

  v4 = [NSMutableArray arrayWithCapacity:17];
  for (i = 0; i != 17; ++i)
  {
    v6 = newProfileWithMTLDevice_availableFeatures[i];
    if ([v1 supportsFeatureSet:v6])
    {
      v7 = [NSNumber numberWithUnsignedInteger:v6];
      [v4 addObject:v7];
    }
  }

  v8 = [v4 copy];
  v26 = v2;
  [v2 setSupportedFeatureSets:v8];

  v9 = +[NSMutableDictionary dictionary];
  if ([v1 areProgrammableSamplePositionsSupported] && objc_msgSend(v1, "maxCustomSamplePositions"))
  {
    v10 = 1;
    do
    {
      if ([v1 supportsTextureSampleCount:v10])
      {
        v11 = malloc_type_calloc(v10, 8uLL, 0x100004000313F17uLL);
        [v1 getDefaultSamplePositions:v11 count:v10];
        v12 = objc_alloc_init(NSMutableArray);
        v13 = 0;
        do
        {
          v14 = [NSValue valueWithPoint:vcvtq_f64_f32(*&v11[8 * v13])];
          [v12 addObject:v14];

          ++v13;
        }

        while (v10 != v13);
        free(v11);
        v15 = [NSArray arrayWithArray:v12];
        v16 = [NSNumber numberWithInt:v10];
        [v9 setObject:v15 forKey:v16];
      }
    }

    while ([v1 maxCustomSamplePositions] > v10++);
  }

  v18 = [NSDictionary dictionaryWithDictionary:v9];
  v19 = v26;
  [v26 setDefaultSamplePositions:v18];

  if (objc_opt_respondsToSelector())
  {
    v20 = [NSMutableArray arrayWithCapacity:17];
    for (j = 0; j != 17; ++j)
    {
      v22 = newProfileWithMTLDevice_availableGPUFamilies[j];
      if ([v1 supportsFamily:v22])
      {
        v23 = [NSNumber numberWithInteger:v22];
        [v20 addObject:v23];
      }
    }

    v24 = [v20 copy];
    v19 = v26;
    [v26 setSupportedGPUFamilies:v24];
  }

  return v19;
}

id DaemonDeviceCapabilities(void *a1)
{
  v1 = a1;
  v2 = MTLCreateSystemDefaultDevice();
  v3 = newProfileWithMTLDevice(v2);

  v4 = [v1 stringByAppendingPathComponent:@"/System/Library/Frameworks/Metal.framework"];

  v5 = [NSBundle bundleWithPath:v4];

  if (v5)
  {
    v6 = [v5 objectForInfoDictionaryKey:kCFBundleVersionKey];
  }

  else
  {
    v6 = &stru_2F4BE0;
  }

  *values = *off_2F2080;
  v16 = *off_2F2090;
  v17 = @"main-screen-scale";
  v7 = CFArrayCreate(0, values, 5, &kCFTypeArrayCallBacks);
  v8 = MGCopyMultipleAnswers();
  CFRelease(v7);
  v12 = v3;
  v13[0] = @"gputools.contexts-info";
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v14[0] = v9;
  v14[1] = v8;
  v13[1] = @"screen-dimensions";
  v13[2] = @"metal_version";
  v13[3] = @"nativePointerSize";
  v14[2] = v6;
  v14[3] = &off_2F7640;
  v10 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:4];

  return v10;
}

id isDesktopReplayer(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.MTLReplayer"])
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.DesktopReplayer"];
  }

  return v2;
}

id isMobileReplayer(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"com.apple.MTLReplayer"])
  {
    v2 = &dword_0 + 1;
  }

  else
  {
    v2 = [v1 isEqualToString:@"com.apple.MobileReplayer"];
  }

  return v2;
}

id modifyReplayerEnvironment(void *a1)
{
  v1 = [a1 mutableCopy];
  [v1 removeObjectsForKeys:&off_2F7830];
  [v1 removeObjectForKey:@"METAL_DEVICE_WRAPPER_TYPE"];
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 dictionaryForKey:@"GPUDebugger.ReplayerEnvironment"];

  if (v3)
  {
    [v1 addEntriesFromDictionary:v3];
  }

  v4 = [v1 copy];

  return v4;
}

id FindDesktopReplayerPath(void *a1)
{
  v1 = a1;
  v2 = +[NSFileManager defaultManager];
  bzero(buf, 0x400uLL);
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize))
  {
    v3 = 0;
  }

  else
  {
    v4 = [NSString stringWithUTF8String:buf];
    v5 = [v4 stringByDeletingLastPathComponent];

    v3 = [v5 stringByReplacingOccurrencesOfString:@"GPUToolsTransportAgents.framework/Versions/A/XPCServices/GPUToolsAgentService.xpc/Contents/MacOS" withString:&stru_2F4BE0];
  }

  v6 = [v3 stringByAppendingPathComponent:v1];

  if ([v2 fileExistsAtPath:v6])
  {
    v7 = v6;
  }

  else
  {
    v8 = [@"/System/Library/CoreServices/" stringByAppendingPathComponent:v1];
    if ([v2 fileExistsAtPath:v8])
    {
      v7 = v8;
    }

    else
    {
      v9 = +[NSBundle mainBundle];
      v10 = [v9 bundlePath];
      v11 = [v10 componentsSeparatedByString:@"/"];

      v12 = [v11 subarrayWithRange:{0, objc_msgSend(v11, "count") - 3}];
      v13 = [NSString pathWithComponents:v12];
      v14 = [v13 stringByAppendingPathComponent:v1];

      v26 = v12;
      v15 = [v12 objectAtIndexedSubscript:0];
      LODWORD(v12) = [v15 isEqualToString:&stru_2F4BE0];

      if (v12)
      {
        v16 = [NSString stringWithFormat:@"/%@", v14];

        v14 = v16;
      }

      if (([v2 fileExistsAtPath:v14] & 1) == 0)
      {
        v25 = v9;
        v17 = [v11 subarrayWithRange:{0, objc_msgSend(v11, "count") - 4}];
        v18 = [NSString pathWithComponents:v17];
        v19 = [v18 stringByAppendingPathComponent:@"Developer/Applications"];

        v14 = [v19 stringByAppendingPathComponent:v1];

        v20 = [v17 objectAtIndexedSubscript:0];
        LODWORD(v18) = [v20 isEqualToString:&stru_2F4BE0];

        if (v18)
        {
          v21 = [NSString stringWithFormat:@"/%@", v14];

          v14 = v21;
        }

        v9 = v25;
      }

      if (([v2 fileExistsAtPath:v14] & 1) == 0)
      {
        v22 = [@"/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/Library/GPUToolsPlatform/" stringByAppendingPathComponent:v1];

        if ([v2 fileExistsAtPath:v22])
        {
          v14 = v22;
        }

        else
        {
          v14 = [@"/Applications/Xcode.app/Contents/Developer/Applications/" stringByAppendingPathComponent:v1];
        }
      }

      if ([v2 fileExistsAtPath:v14])
      {
        v23 = v14;
      }

      else
      {
        v23 = 0;
      }

      v7 = v23;
    }
  }

  return v7;
}

id DaemonCreateGuestAppTransport(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_29;
  }

  v3 = [v1 objectForKeyedSubscript:@"environment"];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_28:

LABEL_29:
      v16 = 0;
      goto LABEL_30;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v45;
LABEL_6:
      v8 = 0;
      while (1)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v44 + 1) + 8 * v8);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_27;
        }

        v10 = [v4 objectForKeyedSubscript:v9];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_27;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v44 objects:v48 count:16];
          if (v6)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }
  }

  v4 = [v2 objectForKeyedSubscript:@"platformPrefix"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  v12 = [v2 objectForKeyedSubscript:@"shouldLoadCapture"];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_26:

      goto LABEL_27;
    }
  }

  v13 = [v2 objectForKeyedSubscript:@"shouldLoadReplayer"];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_25:

      goto LABEL_26;
    }
  }

  v14 = [v2 objectForKeyedSubscript:@"shouldLoadDiagnostics"];
  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_25;
    }
  }

  v15 = [v2 objectForKeyedSubscript:@"environment"];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 mutableCopy];
  }

  else
  {
    v17 = [[NSMutableDictionary alloc] initWithCapacity:2];
  }

  v19 = v17;
  v20 = [v16 objectForKeyedSubscript:@"DYLD_INSERT_LIBRARIES"];
  v21 = [v20 componentsSeparatedByString:@":"];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 mutableCopy];
  }

  else
  {
    v23 = [[NSMutableArray alloc] initWithCapacity:2];
  }

  v24 = v23;
  v25 = [v2 objectForKeyedSubscript:@"platformPrefix"];
  v26 = [v16 objectForKeyedSubscript:@"GPUTOOLS_EXTRA_PLUGIN_PATHS"];
  v27 = [v2 objectForKeyedSubscript:@"shouldLoadReplayer"];
  if (!v27 || (v28 = v27, [v2 objectForKeyedSubscript:@"shouldLoadCapture"], v43 = v24, v29 = v22, v30 = v19, v31 = v20, v32 = v26, v33 = v25, v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "BOOLValue"), v34, v25 = v33, v26 = v32, v20 = v31, v19 = v30, v22 = v29, v24 = v43, v28, v35))
  {
    v36 = [@"/System/Library/PrivateFrameworks/" stringByAppendingPathComponent:@"GPUToolsCapture.framework/GPUToolsCapture"];
    if (([v24 containsObject:v36] & 1) == 0)
    {
      [v24 addObject:v36];
    }

    [v19 setObject:v36 forKeyedSubscript:@"DYMTL_TOOLS_DYLIB_PATH"];
  }

  v37 = [v2 objectForKeyedSubscript:@"shouldLoadDiagnostics"];
  v38 = [v37 BOOLValue];

  if (v38)
  {
    v39 = [@"/System/Library/PrivateFrameworks/" stringByAppendingPathComponent:@"GPUToolsDiagnostics.framework/GPUToolsDiagnostics"];
    if (([v24 containsObject:v39] & 1) == 0)
    {
      [v24 addObject:v39];
    }
  }

  v40 = [v22 count];
  if (v40 != [v24 count])
  {
    v41 = [v24 componentsJoinedByString:@":"];
    [v19 setObject:v41 forKeyedSubscript:@"DYLD_INSERT_LIBRARIES"];

    v42 = [v19 copy];
    v16 = v42;
  }

LABEL_30:

  return v16;
}

void PresentTelemetry(void *a1)
{
  v1 = a1;
  if ([v1 conformsToProtocol:&OBJC_PROTOCOL___CAMetalDrawable])
  {
    GTTelemetry_trackPresent(v1);
  }
}

void PresentTrigger(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (*(boundaryTrackerInstance + 20) & 0xFFFFFFFE) == 2 && (dword_31F7C8)
  {
    v5 = v3;
    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, 0);
    v6 = [v5 traceContext];
    v7 = newpool;
    GTTraceContext_copyStreamMap(v6, newpool);
    p = v7;
    v8 = apr_hash_make(v7);
    GTTraceMemPool_buildMemoryMap(*([v5 traceStream] + 3), v8);
    v47 = [v5 layer];
    v9 = [v47 traceStream];
    if (v9)
    {
      v10 = *v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v5 texture];
    v12 = [v11 device];
    v13 = apr_array_make(p, 1, 56);
    v14 = *([v11 traceStream] + 1);
    v46 = v11;
    v15 = [v11 traceStream];
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = *(a2 + 24);
    v18 = apr_array_push(v13);
    *v18 = v14;
    *(v18 + 1) = v16;
    *(v18 + 2) = v17;
    *(v18 + 3) = v17;
    *(v18 + 4) = v17;
    *(v18 + 5) = 80;
    v18[48] = 1;
    *(v18 + 49) = 0;
    *(v18 + 13) = 0;
    v48 = v5;
    DownloadRequests = GTResourceHarvesterGetDownloadRequests([v12 harvester], objc_msgSend(v5, "streamReference"), v13);
    v20 = GTResourceDownloaderProcessRequest(p, DownloadRequests);
    v21 = v20;
    if (v20->nelts >= 1)
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = *(a2 + 24);
        v25 = &v20->elts[v22];
        v25[47] |= 4u;
        *(v25 + 3) = v10;
        *(v25 + 4) = v24;
        ++v23;
        v22 += 456;
      }

      while (v23 < v20->nelts);
    }

    GTMTLCaptureState_appendDownloadRequests(_sharedCaptureManager, v20);
    v26 = objc_alloc_init(GTDownloadPoint);
    v27 = DEVICEOBJECT(v12);
    v28 = [v27 newCommandQueue];
    v29 = [v27 newSharedEvent];
    [(GTDownloadPoint *)v26 setDownloadQueue:v28];
    [(GTDownloadPoint *)v26 setWaitEvent:v29];
    [(GTDownloadPoint *)v26 setWaitValue:1];
    [(GTDownloadPoint *)v26 setDownloadEvent:v29];
    [(GTDownloadPoint *)v26 setDownloadValue:[(GTDownloadPoint *)v26 waitValue]+ 1];
    [v29 setSignaledValue:{-[GTDownloadPoint waitValue](v26, "waitValue")}];
    v30 = [v12 dispatchGroup];
    dispatch_group_enter(v30);

    v31 = [v12 captureEventListener];
    v32 = [(GTDownloadPoint *)v26 downloadValue];
    *&v50 = _NSConcreteStackBlock;
    *(&v50 + 1) = 3221225472;
    v51 = __DownloadDrawable_block_invoke;
    v52 = &unk_2F20B0;
    v53 = v12;
    v33 = v12;
    [v29 notifyListener:v31 atValue:v32 block:&v50];

    v34 = [v33 downloader];
    [v34 downloadRequest:v21 atPoint:v26];

    apr_pool_destroy(p);
  }

  v35 = [v4 traceStream];
  if (v35)
  {
    v36 = *v35;
  }

  else
  {
    v36 = 0;
  }

  v37 = *(a2 + 24);
  v38 = *(a2 + 32);
  v39 = [v4 layer];
  v40 = [v39 device];
  v41 = [v40 traceStream];
  if (v41)
  {
    v42 = *v41;
  }

  else
  {
    v42 = 0;
  }

  v43 = [v4 layer];
  v44 = [v43 traceStream];
  if (v44)
  {
    v45 = *v44;
  }

  else
  {
    v45 = 0;
  }

  *&v50 = 0x300000003;
  *(&v50 + 1) = v36;
  v51 = v37;
  v52 = v38;
  v53 = 0;
  v54 = v42;
  v55 = v45;
  v56 = 0u;
  v57 = 0u;
  GTCaptureBoundaryTracker_handleTrigger(&v50);
}

void __DownloadDrawable_block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) dispatchGroup];
  dispatch_group_leave(v1);
}

id RetrieveGPUCaptureTexture(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1;
  if ((dword_31F7C8 & 0x80000) != 0)
  {
    v4 = v1;
    v3 = v4;
    if (([v4 conformsToProtocol:&OBJC_PROTOCOL___CaptureMTLObject] & 1) == 0)
    {
      v5 = v4;
      while ((objc_opt_respondsToSelector() & 1) != 0)
      {
        v3 = [v5 performSelector:"baseObject"];

        v5 = v3;
        if ([v3 conformsToProtocol:&OBJC_PROTOCOL___CaptureMTLObject])
        {
          goto LABEL_8;
        }
      }

      v3 = v5;
    }

LABEL_8:
  }

  return v3;
}

id NumberToInt(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 unsignedLongLongValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void SetCaptureDescriptor(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  if (v7)
  {
    [v7 setCaptureDescriptor:v9];
    if (a3)
    {
      v34 = 0uLL;
      v35 = 0uLL;
      *(&v33 + 1) = 0;
      v10 = [v8 traceContext];
      [v8 traceStream];
      GTTraceContext_pushEncoderWithStream(v10, &v33);
      v11 = v34;
      *(v34 + 8) = -10154;
      v12 = BYTE9(v35);
      if (BYTE9(v35) > 0x28uLL)
      {
        v18 = *(*(&v33 + 1) + 24);
        v19 = BYTE10(v35);
        ++BYTE10(v35);
        v13 = GTTraceMemPool_allocateBytes(v18, *(&v34 + 1), v19 | 0x1800000000) + 16;
        v12 = v19;
      }

      else
      {
        v13 = (v11 + BYTE9(v35));
        BYTE9(v35) += 24;
      }

      *(v11 + 13) = v12;
      v20 = [v8 traceStream];
      if (v20)
      {
        v21 = *v20;
      }

      else
      {
        v21 = 0;
      }

      v26 = [v7 traceStream];
      if (v26)
      {
        v27 = *v26;
      }

      else
      {
        v27 = 0;
      }

      v30 = SaveMTLAccelerationStructureDescriptor(&v33, v9);
      *v13 = v21;
      *(v13 + 1) = v27;
      v13[16] = v30;
      *(v13 + 17) = 0;
      *(v13 + 5) = 0;
      v29 = v8;
    }

    else
    {
      v34 = 0uLL;
      v35 = 0uLL;
      *(&v33 + 1) = 0;
      v14 = [v7 traceContext];
      [v7 traceStream];
      GTTraceContext_pushEncoderWithStream(v14, &v33);
      v15 = v34;
      *(v34 + 8) = -15552;
      v16 = BYTE9(v35);
      if (BYTE9(v35) > 0x30uLL)
      {
        v22 = *(*(&v33 + 1) + 24);
        v23 = BYTE10(v35);
        ++BYTE10(v35);
        v17 = GTTraceMemPool_allocateBytes(v22, *(&v34 + 1), v23 | 0x1000000000) + 16;
        v16 = v23;
      }

      else
      {
        v17 = (v15 + BYTE9(v35));
        BYTE9(v35) += 16;
      }

      *(v15 + 13) = v16;
      v24 = [v7 traceStream];
      if (v24)
      {
        v25 = *v24;
      }

      else
      {
        v25 = 0;
      }

      v28 = SaveMTLAccelerationStructureDescriptor(&v33, v9);
      *v17 = v25;
      v17[8] = v28;
      *(v17 + 9) = 0;
      *(v17 + 3) = 0;
      v29 = v7;
    }

    [v29 traceContext];
    s();
    *v31 = v32;
    *(v31 + 8) = BYTE8(v35);
    *(v34 + 15) |= 8u;
  }
}

void RetainAccelerationStructureDescriptorObjects(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = [v8 instanceDescriptorBuffer];
    [v9 touch];

    v10 = [v8 instanceDescriptorBuffer];

    if (v5 && v10)
    {
      v11 = [v8 instanceDescriptorBuffer];
      [v5 addObject:v11];
    }

    v12 = [v8 instanceDescriptorBuffer];
    RetainObjectForDescriptorDownloader(v12, v6);

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    v13 = [v8 instancedAccelerationStructures];
    v14 = [v13 countByEnumeratingWithState:&v136 objects:v145 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v137;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v137 != v16)
          {
            objc_enumerationMutation(v13);
          }

          RetainObjectForDescriptorDownloader(*(*(&v136 + 1) + 8 * i), v6);
        }

        v15 = [v13 countByEnumeratingWithState:&v136 objects:v145 count:16];
      }

      while (v15);
    }

    v18 = [v8 motionTransformBuffer];
    [v18 touch];

    v19 = [v8 motionTransformBuffer];

    if (v5 && v19)
    {
      v20 = [v8 motionTransformBuffer];
      [v5 addObject:v20];
    }

    v21 = [v8 instancedAccelerationStructures];
    RetainNSArray(v5, v21);
LABEL_16:

    goto LABEL_112;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v110 = v7;
    v111 = v6;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v22 = [v7 geometryDescriptors];
    v23 = [v22 countByEnumeratingWithState:&v132 objects:v144 count:16];
    if (!v23)
    {
      goto LABEL_111;
    }

    v24 = v23;
    v115 = *v133;
    v113 = v22;
    while (1)
    {
      v25 = 0;
      v114 = v24;
      do
      {
        if (*v133 != v115)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v132 + 1) + 8 * v25);
        if (objc_opt_respondsToSelector())
        {
          v27 = [v26 primitiveDataBuffer];
          [v27 touch];

          v28 = [v26 primitiveDataBuffer];

          if (v5)
          {
            if (v28)
            {
              v29 = [v26 primitiveDataBuffer];
              [v5 addObject:v29];
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v26;
          v31 = [v30 vertexBuffer];
          [v31 touch];

          v32 = [v30 vertexBuffer];

          if (v5 && v32)
          {
            v33 = [v30 vertexBuffer];
            [v5 addObject:v33];
          }

          v34 = [v30 indexBuffer];
          [v34 touch];

          v35 = [v30 indexBuffer];

          if (v5 && v35)
          {
            v36 = [v30 indexBuffer];
            [v5 addObject:v36];
          }

          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_35;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v40 = v26;
          v41 = [v40 boundingBoxBuffer];
          [v41 touch];

          v42 = [v40 boundingBoxBuffer];

          if (v5 && v42)
          {
            v39 = [v40 boundingBoxBuffer];
            goto LABEL_42;
          }

          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v26;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          v44 = [v30 vertexBuffers];
          v45 = [v44 countByEnumeratingWithState:&v128 objects:v143 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = *v129;
            do
            {
              for (j = 0; j != v46; j = j + 1)
              {
                if (*v129 != v47)
                {
                  objc_enumerationMutation(v44);
                }

                v49 = *(*(&v128 + 1) + 8 * j);
                v50 = [v49 buffer];
                [v50 touch];

                v51 = [v49 buffer];

                if (v5 && v51)
                {
                  v52 = [v49 buffer];
                  [v5 addObject:v52];
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v128 objects:v143 count:16];
            }

            while (v46);
          }

          v53 = [v30 indexBuffer];
          [v53 touch];

          v54 = [v30 indexBuffer];

          if (v5 && v54)
          {
            v55 = [v30 indexBuffer];
            [v5 addObject:v55];
          }

          v22 = v113;
          v24 = v114;
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            goto LABEL_44;
          }

LABEL_35:
          v37 = [v30 transformationMatrixBuffer];
          [v37 touch];

          v38 = [v30 transformationMatrixBuffer];

          if (v5 && v38)
          {
            v39 = [v30 transformationMatrixBuffer];
            goto LABEL_42;
          }

          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v26;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          v43 = [v56 boundingBoxBuffers];
          v57 = [v43 countByEnumeratingWithState:&v124 objects:v142 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v125;
            do
            {
              for (k = 0; k != v58; k = k + 1)
              {
                if (*v125 != v59)
                {
                  objc_enumerationMutation(v43);
                }

                v61 = *(*(&v124 + 1) + 8 * k);
                v62 = [v61 buffer];
                [v62 touch];

                v63 = [v61 buffer];

                if (v5 && v63)
                {
                  v64 = [v61 buffer];
                  [v5 addObject:v64];
                }
              }

              v58 = [v43 countByEnumeratingWithState:&v124 objects:v142 count:16];
            }

            while (v58);
            v22 = v113;
            v24 = v114;
          }

          goto LABEL_43;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v65 = v26;
          v66 = [v65 controlPointBuffer];
          [v66 touch];

          v67 = [v65 controlPointBuffer];

          if (v5 && v67)
          {
            v68 = [v65 controlPointBuffer];
            [v5 addObject:v68];
          }

          v69 = [v65 radiusBuffer];
          [v69 touch];

          v70 = [v65 radiusBuffer];

          if (v5 && v70)
          {
            v71 = [v65 radiusBuffer];
            [v5 addObject:v71];
          }

          v72 = [v65 indexBuffer];
          [v72 touch];

          v73 = [v65 indexBuffer];

          if (v5 && v73)
          {
            v74 = v65;
            goto LABEL_109;
          }

          goto LABEL_44;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v75 = v26;
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v123 = 0u;
          v112 = v75;
          v76 = [v75 controlPointBuffers];
          v77 = [v76 countByEnumeratingWithState:&v120 objects:v141 count:16];
          if (v77)
          {
            v78 = v77;
            v79 = *v121;
            do
            {
              for (m = 0; m != v78; m = m + 1)
              {
                if (*v121 != v79)
                {
                  objc_enumerationMutation(v76);
                }

                v81 = *(*(&v120 + 1) + 8 * m);
                v82 = [v81 buffer];
                [v82 touch];

                v83 = [v81 buffer];

                if (v5 && v83)
                {
                  v84 = [v81 buffer];
                  [v5 addObject:v84];
                }
              }

              v78 = [v76 countByEnumeratingWithState:&v120 objects:v141 count:16];
            }

            while (v78);
          }

          v118 = 0u;
          v119 = 0u;
          v116 = 0u;
          v117 = 0u;
          v85 = [v112 radiusBuffers];
          v86 = [v85 countByEnumeratingWithState:&v116 objects:v140 count:16];
          if (v86)
          {
            v87 = v86;
            v88 = *v117;
            do
            {
              for (n = 0; n != v87; n = n + 1)
              {
                if (*v117 != v88)
                {
                  objc_enumerationMutation(v85);
                }

                v90 = *(*(&v116 + 1) + 8 * n);
                v91 = [v90 buffer];
                [v91 touch];

                v92 = [v90 buffer];

                if (v5 && v92)
                {
                  v93 = [v90 buffer];
                  [v5 addObject:v93];
                }
              }

              v87 = [v85 countByEnumeratingWithState:&v116 objects:v140 count:16];
            }

            while (v87);
          }

          v94 = [v112 indexBuffer];
          [v94 touch];

          v95 = [v112 indexBuffer];

          v22 = v113;
          v24 = v114;
          if (v5 && v95)
          {
            v74 = v112;
LABEL_109:
            v39 = [v74 indexBuffer];
LABEL_42:
            v43 = v39;
            [v5 addObject:v39];
LABEL_43:
          }

LABEL_44:
        }

        v25 = v25 + 1;
      }

      while (v25 != v24);
      v96 = [v22 countByEnumeratingWithState:&v132 objects:v144 count:16];
      v24 = v96;
      if (!v96)
      {
LABEL_111:

        v7 = v110;
        v6 = v111;
        goto LABEL_112;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v97 = [v8 instanceDescriptorBuffer];
    [v97 touch];

    v98 = [v8 instanceDescriptorBuffer];

    if (v5 && v98)
    {
      v99 = [v8 instanceDescriptorBuffer];
      [v5 addObject:v99];
    }

    v100 = [v8 motionTransformBuffer];
    [v100 touch];

    v101 = [v8 motionTransformBuffer];

    if (v5 && v101)
    {
      v102 = [v8 motionTransformBuffer];
      [v5 addObject:v102];
    }

    v103 = [v8 motionTransformCountBuffer];
    [v103 touch];

    v104 = [v8 motionTransformCountBuffer];

    if (v5 && v104)
    {
      v105 = [v8 motionTransformCountBuffer];
      [v5 addObject:v105];
    }

    v106 = [v8 instanceCountBuffer];
    [v106 touch];

    v107 = [v8 instanceCountBuffer];

    if (v5 && v107)
    {
      v108 = [v8 instanceCountBuffer];
      [v5 addObject:v108];
    }

    v109 = [v8 instanceDescriptorBuffer];
    RetainObjectForDescriptorDownloader(v109, v6);

    v21 = [v8 instanceCountBuffer];
    RetainObjectForDescriptorDownloader(v21, v6);
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
    }
  }

LABEL_112:
}

id copyCaptureDescriptor(id *a1, int a2, int a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if (!a3)
  {
    v21 = copyAndNullifyReferencesInAccelerationStructureDescriptor(*a1);
    goto LABEL_102;
  }

  if (!a2)
  {
    v144 = v18;
    v146 = v17;
    [v17 removeAllObjects];
    v145 = a1;
    v22 = *a1;
    v148 = v15;
    v23 = v15;
    v147 = v16;
    v24 = v16;
    v143 = v19;
    v25 = v19;
    v26 = [v22 copy];
    objc_opt_class();
    v149 = v26;
    if (objc_opt_isKindOfClass())
    {
      v175 = 0u;
      v176 = 0u;
      v173 = 0u;
      v174 = 0u;
      v27 = [v26 geometryDescriptors];
      v28 = [v27 countByEnumeratingWithState:&v173 objects:v181 count:16];
      if (!v28)
      {
        goto LABEL_86;
      }

      v29 = v28;
      v154 = *v174;
      v150 = v27;
      while (1)
      {
        v30 = 0;
        v151 = v29;
        do
        {
          if (*v174 != v154)
          {
            objc_enumerationMutation(v27);
          }

          v31 = *(*(&v173 + 1) + 8 * v30);
          objc_opt_class();
          v155 = v31;
          v156 = v30;
          if (objc_opt_isKindOfClass())
          {
            if (objc_opt_respondsToSelector())
            {
              v32 = [v31 primitiveDataBuffer];

              if (v32)
              {
                v33 = [v31 primitiveDataBuffer];
                v34 = BlitBufferWithCache(v23, v33, @"gputools.ADSPrimitiveDataBuffer", v24, v25);
                [v31 setPrimitiveDataBuffer:v34];
              }
            }

            v35 = v31;
            v36 = [v35 vertexBuffer];

            if (v36)
            {
              v37 = [v35 vertexBuffer];
              v38 = BlitBufferWithCache(v23, v37, @"gputools.ADSVertexBuffer", v24, v25);
              [v35 setVertexBuffer:v38];
            }

            v39 = [v35 indexBuffer];

            if (v39)
            {
              v40 = 3 * [v35 triangleCount];
              v41 = [v35 indexType];
              v42 = 1;
              if (v41)
              {
                v42 = 2;
              }

              v43 = v40 << v42;
              v44 = [v35 indexBuffer];
              v45 = BlitBufferWithLength(v23, v44, [v35 indexBufferOffset], v43, @"gputools.ADSIndexBuffer", v24);
              [v35 setIndexBuffer:v45];

              [v35 setIndexBufferOffset:0];
            }

            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_83;
            }

            v46 = [v35 transformationMatrixBuffer];

            if (!v46)
            {
              goto LABEL_83;
            }

            v47 = [v35 transformationMatrixBuffer];
            v48 = BlitBufferWithLength(v23, v47, [v35 transformationMatrixBufferOffset], 0x30uLL, @"gputools.ADSTransformationMatrixBuffer", v24);
            [v35 setTransformationMatrixBuffer:v48];

            v49 = v35;
            goto LABEL_24;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v50 = v31;
            v51 = [v50 boundingBoxBuffer];

            if (v51)
            {
              v52 = [v50 boundingBoxCount];
              v53 = [v50 boundingBoxStride] * v52;
              v54 = [v50 boundingBoxBuffer];
              v55 = BlitBufferWithLength(v23, v54, [v50 boundingBoxBufferOffset], v53, @"gputools.ADSBBoxBuffer", v24);
              [v50 setBoundingBoxBuffer:v55];

              [v50 setBoundingBoxBufferOffset:0];
            }

            goto LABEL_83;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v56 = v31;
            v169 = 0u;
            v170 = 0u;
            v171 = 0u;
            v172 = 0u;
            v152 = v56;
            v57 = [v56 vertexBuffers];
            v58 = [v57 countByEnumeratingWithState:&v169 objects:v180 count:16];
            if (v58)
            {
              v59 = v58;
              v60 = *v170;
              do
              {
                for (i = 0; i != v59; i = i + 1)
                {
                  if (*v170 != v60)
                  {
                    objc_enumerationMutation(v57);
                  }

                  v62 = *(*(&v169 + 1) + 8 * i);
                  v63 = [v62 buffer];
                  v64 = BlitBufferWithCache(v23, v63, @"gputools.ADSMotionVertexBuffer", v24, v25);
                  [v62 setBuffer:v64];
                }

                v59 = [v57 countByEnumeratingWithState:&v169 objects:v180 count:16];
              }

              while (v59);
            }

            v65 = [v152 indexBuffer];

            if (v65)
            {
              v66 = 3 * [v152 triangleCount];
              v67 = [v152 indexType];
              v68 = 1;
              if (v67)
              {
                v68 = 2;
              }

              v69 = v66 << v68;
              v70 = [v152 indexBuffer];
              v71 = BlitBufferWithLength(v23, v70, [v152 indexBufferOffset], v69, @"gputools.ADSMotionIndexBuffer", v24);
              [v152 setIndexBuffer:v71];

              [v152 setIndexBufferOffset:0];
            }

            v27 = v150;
            v29 = v151;
            if ((objc_opt_respondsToSelector() & 1) == 0)
            {
              goto LABEL_83;
            }

            v72 = [v152 transformationMatrixBuffer];

            if (!v72)
            {
              goto LABEL_83;
            }

            v73 = [v152 transformationMatrixBuffer];
            v74 = BlitBufferWithLength(v23, v73, [v152 transformationMatrixBufferOffset], 0x30uLL, @"gputools.ADSMotionTransformationMatrixBuffer", v24);
            [v152 setTransformationMatrixBuffer:v74];

            v49 = v152;
LABEL_24:
            [v49 setTransformationMatrixBufferOffset:0];
            goto LABEL_83;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v75 = v31;
            v165 = 0u;
            v166 = 0u;
            v167 = 0u;
            v168 = 0u;
            v76 = [v75 boundingBoxBuffers];
            v77 = [v76 countByEnumeratingWithState:&v165 objects:v179 count:16];
            if (v77)
            {
              v78 = v77;
              v79 = *v166;
              do
              {
                for (j = 0; j != v78; j = j + 1)
                {
                  if (*v166 != v79)
                  {
                    objc_enumerationMutation(v76);
                  }

                  v81 = *(*(&v165 + 1) + 8 * j);
                  v82 = [v81 buffer];

                  if (v82)
                  {
                    v83 = [v81 buffer];
                    v84 = BlitBufferWithCache(v23, v83, @"gputools.ADSMotionBBoxBuffer", v24, v25);
                    [v81 setBuffer:v84];
                  }
                }

                v78 = [v76 countByEnumeratingWithState:&v165 objects:v179 count:16];
              }

              while (v78);
            }

            v27 = v150;
            v29 = v151;
            goto LABEL_83;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v85 = v31;
            v86 = [v85 controlPointBuffer];

            if (v86)
            {
              v87 = [v85 controlPointBuffer];
              v88 = BlitBufferWithCache(v23, v87, @"gputools.ADSCurveControlPointBuffer", v24, v25);
              [v85 setControlPointBuffer:v88];
            }

            v89 = [v85 radiusBuffer];

            if (v89)
            {
              v90 = [v85 radiusBuffer];
              v91 = BlitBufferWithCache(v23, v90, @"gputools.ADSCurveRadiusBuffer", v24, v25);
              [v85 setRadiusBuffer:v91];
            }

            v92 = [v85 indexBuffer];

            if (!v92)
            {
              goto LABEL_83;
            }

            v93 = [v85 indexBuffer];
            v94 = BlitBufferWithCache(v23, v93, @"gputools.ADSCurveIndexBuffer", v24, v25);
            v95 = v85;
            goto LABEL_82;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_84;
          }

          v96 = v31;
          v161 = 0u;
          v162 = 0u;
          v163 = 0u;
          v164 = 0u;
          v153 = v96;
          v97 = [v96 controlPointBuffers];
          v98 = [v97 countByEnumeratingWithState:&v161 objects:v178 count:16];
          if (v98)
          {
            v99 = v98;
            v100 = *v162;
            do
            {
              for (k = 0; k != v99; k = k + 1)
              {
                if (*v162 != v100)
                {
                  objc_enumerationMutation(v97);
                }

                v102 = *(*(&v161 + 1) + 8 * k);
                v103 = [v102 buffer];

                if (v103)
                {
                  v104 = [v102 buffer];
                  v105 = BlitBufferWithCache(v23, v104, @"gputools.ADSMotionCurveControlPointBuffer", v24, v25);
                  [v102 setBuffer:v105];
                }
              }

              v99 = [v97 countByEnumeratingWithState:&v161 objects:v178 count:16];
            }

            while (v99);
          }

          v159 = 0u;
          v160 = 0u;
          v157 = 0u;
          v158 = 0u;
          v106 = [v153 radiusBuffers];
          v107 = [v106 countByEnumeratingWithState:&v157 objects:v177 count:16];
          if (v107)
          {
            v108 = v107;
            v109 = *v158;
            do
            {
              for (m = 0; m != v108; m = m + 1)
              {
                if (*v158 != v109)
                {
                  objc_enumerationMutation(v106);
                }

                v111 = *(*(&v157 + 1) + 8 * m);
                v112 = [v111 buffer];

                if (v112)
                {
                  v113 = [v111 buffer];
                  v114 = BlitBufferWithCache(v23, v113, @"gputools.ADSMotionCurveRadiusBuffer", v24, v25);
                  [v111 setBuffer:v114];
                }
              }

              v108 = [v106 countByEnumeratingWithState:&v157 objects:v177 count:16];
            }

            while (v108);
          }

          v115 = [v153 indexBuffer];

          v27 = v150;
          v29 = v151;
          if (v115)
          {
            v93 = [v153 indexBuffer];
            v94 = BlitBufferWithCache(v23, v93, @"gputools.ADSMotionCurveIndexBuffer", v24, v25);
            v95 = v153;
LABEL_82:
            [v95 setIndexBuffer:v94];
          }

LABEL_83:

          v30 = v156;
LABEL_84:
          v30 = v30 + 1;
        }

        while (v30 != v29);
        v29 = [v27 countByEnumeratingWithState:&v173 objects:v181 count:16];
        if (!v29)
        {
LABEL_86:

          goto LABEL_100;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v116 = v26;
      v117 = [v116 instanceDescriptorStride];
      v118 = [v116 instanceCount] * v117;
      v119 = [v116 instanceDescriptorBuffer];
      v120 = BlitBufferWithLength(v23, v119, [v116 instanceDescriptorBufferOffset], v118, @"gputools.ADSInstanceDescriptorBuffer", v24);
      [v116 setInstanceDescriptorBuffer:v120];

      [v116 setInstanceDescriptorBufferOffset:0];
      v121 = [v116 motionTransformBuffer];

      if (v121)
      {
        v122 = 48 * [v116 motionTransformCount];
        v123 = [v116 motionTransformBuffer];
        v124 = BlitBufferWithLength(v23, v123, [v116 motionTransformBufferOffset], v122, @"gputools.ADSMotionTransformBuffer", v24);
        [v116 setMotionTransformBuffer:v124];

        [v116 setMotionTransformBufferOffset:0];
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_100:

        v16 = v147;
        v15 = v148;
        a1 = v145;
        v17 = v146;
        v19 = v143;
        v18 = v144;
        v20 = v149;
        goto LABEL_101;
      }

      v116 = v26;
      v125 = [v116 instanceDescriptorBuffer];

      if (v125)
      {
        v126 = [v116 maxInstanceCount];
        v127 = [v116 instanceDescriptorStride] * v126;
        v128 = [v116 instanceDescriptorBuffer];
        v129 = BlitBufferWithLength(v23, v128, [v116 instanceDescriptorBufferOffset], v127, @"gputools.ADSIndirectInstanceDescriptorBuffer", v24);
        [v116 setInstanceDescriptorBuffer:v129];

        [v116 setInstanceDescriptorBufferOffset:0];
      }

      v130 = [v116 instanceCountBuffer];

      if (v130)
      {
        v131 = [v116 instanceCountBuffer];
        v132 = BlitBufferWithLength(v23, v131, [v116 instanceCountBufferOffset], 4uLL, @"gputools.ADSInstanceCountBuffer", v24);
        [v116 setInstanceCountBuffer:v132];

        [v116 setInstanceCountBufferOffset:0];
      }

      v133 = [v116 motionTransformBuffer];

      if (v133)
      {
        v134 = 48 * [v116 maxMotionTransformCount];
        v135 = [v116 motionTransformBuffer];
        v136 = BlitBufferWithLength(v23, v135, [v116 motionTransformBufferOffset], v134, @"gputools.ADSMotionTransformBuffer", v24);
        [v116 setMotionTransformBuffer:v136];

        [v116 setMotionTransformBufferOffset:0];
      }

      v137 = [v116 motionTransformCountBuffer];

      if (v137)
      {
        v138 = [v116 motionTransformCountBuffer];
        v139 = BlitBufferWithLength(v23, v138, [v116 motionTransformCountBufferOffset], 4uLL, @"gputools.ADSMotionTransformCountBuffer", v24);
        [v116 setMotionTransformCountBuffer:v139];

        [v116 setMotionTransformCountBufferOffset:0];
      }
    }

    goto LABEL_100;
  }

  v20 = [*a1 copy];
LABEL_101:
  v140 = v20;
  *a1 = v20;
  RetainAccelerationStructureDescriptorObjects(v17, v18, v20);
  v21 = *a1;
LABEL_102:
  v141 = v21;

  return v141;
}

id BlitBufferWithCache(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = [v13 objectForKey:v10];
  if (!v14)
  {
    v15 = [v10 length];
    v14 = [v9 newBufferWithLength:v15 options:0];
    [v14 setLabel:v11];
    v19[0] = @"srcBuffer";
    v19[1] = @"srcOffset";
    v20[0] = v10;
    v20[1] = &off_2F7688;
    v20[2] = v14;
    v19[2] = @"dstBuffer";
    v19[3] = @"length";
    v16 = [NSNumber numberWithUnsignedLong:v15];
    v20[3] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:4];

    [v12 addObject:v17];
    [v13 setObject:v14 forKey:v10];
  }

  return v14;
}

id BlitBufferWithLength(void *a1, void *a2, uint64_t a3, unint64_t a4, void *a5, void *a6)
{
  if (a4 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v12 = a6;
  v13 = a5;
  v14 = a2;
  v15 = [a1 newBufferWithLength:v11 options:0];
  [v15 setLabel:v13];

  v21[0] = v14;
  v20[0] = @"srcBuffer";
  v20[1] = @"srcOffset";
  v16 = [NSNumber numberWithUnsignedInteger:a3];
  v21[1] = v16;
  v21[2] = v15;
  v20[2] = @"dstBuffer";
  v20[3] = @"length";
  v17 = [NSNumber numberWithUnsignedInteger:a4];
  v21[3] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  [v12 addObject:v18];

  return v15;
}

void DownloadHeap(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *a3;
  v8 = [v7 backbuffer];
  v9 = DEVICEOBJECT(v8);

  v11 = a3[6];
  v10 = a3[7];
  v12 = [v9 protectionOptions];
  v13 = [v5 getGPUBuffer:v10 context:v6];
  if (!v12)
  {
    v14 = [v6 blitCommandEncoder];
    [NSString stringWithFormat:@"DownloadHeap[name=%lu, ref=%llu]", *a3, a3[1]];

    v15 = [v6 blitCommandEncoder];
    v16 = [v13 buffer];
    [v15 copyFromBuffer:v9 sourceOffset:v11 toBuffer:v16 destinationOffset:objc_msgSend(v13 size:{"offset"), v10}];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__str = 0u;
  v23 = 0u;
  GTResourceDownloaderGetResourceFilename(a3, 0, __str, 0x80uLL);
  v17 = [v13 buffer];
  v18 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v13 offset] + objc_msgSend(v17, "contents"), objc_msgSend(v13, "size"), 0);

  v19 = [v6 objects];
  v20 = [NSString stringWithUTF8String:__str];
  [v19 addObject:v20];

  v21 = [v6 objects];
  [v21 addObject:v18];

  atomic_fetch_add(&g_GPUDataSize, [v13 size]);
}

void DownloadBuffer(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *a3;
  v9 = a3[6];
  v8 = a3[7];
  v10 = [v7 protectionOptions];
  v11 = [v5 getGPUBuffer:v8 context:v6];
  if (!v10)
  {
    v12 = [v6 blitCommandEncoder];
    [NSString stringWithFormat:@"DownloadBuffer[name=%lu, ref=%llu]", *a3, a3[1]];

    v13 = [v6 blitCommandEncoder];
    v14 = [v11 buffer];
    [v13 copyFromBuffer:v7 sourceOffset:v9 toBuffer:v14 destinationOffset:objc_msgSend(v11 size:{"offset"), v8}];
  }

  GTResourceDownloaderGetResourceFilename(a3, 0, __str, 0x80uLL);
  v15 = [v11 buffer];
  v16 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v11 offset] + objc_msgSend(v15, "contents"), objc_msgSend(v11, "size"), 0);

  v17 = [v6 objects];
  v18 = [NSString stringWithUTF8String:__str];
  [v17 addObject:v18];

  v19 = [v6 objects];
  [v19 addObject:v16];

  atomic_fetch_add(&g_GPUDataSize, [v16 length]);
}

void DownloadIOSurface(void *a1, void *a2, id *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = *a3;
  if ([v7 conformsToProtocol:&OBJC_PROTOCOL___MTLTexture])
  {
    v29 = a3;
    v30 = v7;
    v31 = v6;
    v32 = v5;
    v35 = v7;
    v8 = [v35 iosurface];
    PlaneCount = IOSurfaceGetPlaneCount(v8);
    if (PlaneCount <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = PlaneCount;
    }

    v34 = v10;
    v11 = (48 * v10 + 279) & 0xFFFFFFFFFFFFFF00;
    AllocSize = IOSurfaceGetAllocSize(v8);
    v12 = GTCoreAlloc(AllocSize, AllocSize + v11);
    bzero(v12, v11);
    *v12 = 0x63617074757265;
    *(v12 + 2) = 65538;
    *(v12 + 3) = v11;
    ProtectionOptions = IOSurfaceGetProtectionOptions();
    v14 = 0;
    v15 = 0;
    v28 = v11;
    v33 = v12 + v11;
    do
    {
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v8, v15);
      WidthOfPlane = IOSurfaceGetWidthOfPlane(v8, v15);
      BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v8, v15);
      SizeOfPlane = IOSurfaceGetSizeOfPlane();
      v20 = [v35 pixelFormat];
      v21 = &v12[6 * v12[2] + 3];
      *v21 = v20;
      v21[1] = WidthOfPlane;
      v21[2] = HeightOfPlane;
      v21[3] = 1;
      v21[4] = BytesPerRowOfPlane;
      v21[5] = SizeOfPlane;
      ++v12[2];
      if ((ProtectionOptions & 1) == 0)
      {
        IOSurfaceLock(v8, 1u, 0);
        BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v8, v15);
        memcpy(&v33[v14], BaseAddressOfPlane, SizeOfPlane);
        IOSurfaceUnlock(v8, 1u, 0);
      }

      v14 += SizeOfPlane;
      ++v15;
    }

    while (v34 != v15);
    GTResourceDownloaderGetResourceFilename(v29, *(v29 + 14), __str, 0x80uLL);
    v23 = [[NSData alloc] initWithBytesNoCopy:v12 length:AllocSize + v28 deallocator:&__block_literal_global_10264];
    v6 = v31;
    v24 = [v31 objects];
    v25 = [NSString stringWithUTF8String:__str];
    [v24 addObject:v25];

    v26 = [v31 objects];
    [v26 addObject:v23];

    atomic_fetch_add(&g_GPUDataSize, [v23 length]);
    v5 = v32;
    v7 = v30;
  }
}

void DownloadTensor(void *a1, void *a2, void *a3)
{
  v6 = *a3;
  v7 = a2;
  v19 = a1;
  v8 = [v19 getGPUBuffer:MTLTensor_bytesLength(v6) context:v7];
  v9 = [v7 blitCommandEncoder];
  [NSString stringWithFormat:@"DownloadTensor[name=%lu, ref=%llu]", *a3, a3[1]];

  memset(__src, 0, sizeof(__src));
  GTMTLTensor_wholeSlice(v6, __src);
  memcpy(__dst, __src, sizeof(__dst));
  v10 = GTMTLTensorSlice_origin(__dst);
  v11 = GTMTLTensorSlice_dimensions(__src);
  v12 = [v8 getTensorAlias:v6];
  v13 = [v7 blitCommandEncoder];
  [v13 copyFromTensor:v6 sourceOrigin:v10 sourceDimensions:v11 toTensor:v12 destinationOrigin:v10 destinationDimensions:v11];

  GTResourceDownloaderGetResourceFilename(a3, 0, __dst, 0x80uLL);
  v14 = [v8 buffer];
  v15 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v8 offset] + objc_msgSend(v14, "contents"), objc_msgSend(v8, "size"), 0);

  v16 = [v7 objects];
  v17 = [NSString stringWithUTF8String:__dst];
  [v16 addObject:v17];

  v18 = [v7 objects];
  [v18 addObject:v15];

  atomic_fetch_add(&g_GPUDataSize, [v15 length]);
}

void DownloadTexture(void *a1, void *a2, id *a3, unsigned int a4)
{
  v106 = a1;
  v105 = a2;
  v7 = *a3;
  v104 = DEVICEOBJECT(v7);

  if (a4 >= 1)
  {
    v8 = 0;
    v102 = a4;
    v103 = a3;
    do
    {
      context = objc_autoreleasePoolPush();
      v9 = &a3[57 * v8];
      v10 = v106;
      v122 = v105;
      v140 = v104;
      v11 = v140;
      v141 = v11;
      v112 = [v11 device];
      v129 = [v11 pixelFormat];
      v12 = objc_msgSend_sampleCount(v11);
      v126 = [v11 storageMode];
      v113 = [v11 isFramebufferOnly];
      v13 = [v11 protectionOptions];
      v14 = *(v9 + 15);
      v15 = *(v9 + 32);
      if ((*(v9 + 47) & 4) != 0 && (dword_31F7C8 & 1) != 0 && (qword_31F7C0 >= v14 ? (v16 = qword_31F7C0 >= v15) : (v16 = 0), !v16))
      {
        if (v14 > v15)
        {
          v17 = 1;
          v15 = qword_31F7C0 * v15 / v14;
LABEL_40:
          v14 = qword_31F7C0;
          goto LABEL_12;
        }

        if (v14 >= v15)
        {
          v17 = 1;
          v15 = qword_31F7C0;
          goto LABEL_40;
        }

        v17 = 1;
        v14 = qword_31F7C0 * v14 / v15;
        v15 = qword_31F7C0;
      }

      else
      {
        v17 = 0;
      }

LABEL_12:
      v18 = *(v9 + 33);
      v119 = *(v9 + 13);
      v118 = *(v9 + 28);
      v117 = *(v9 + 29);
      memset(v139, 0, sizeof(v139));
      *__str = 0u;
      v138 = 0u;
      v127 = v14;
      v128 = v15;
      v134 = v14;
      v135 = v15;
      v130 = v18;
      v136 = v18;
      MTLTextureInfo(v112, v129, &v134, v12, __str);
      v19 = 48 * *__str + 279;
      v20 = v19 & 0xFFFFFFFFFFFFFF00;
      v120 = &a3[57 * v8];
      v123 = *__str;
      if (v17)
      {
        v21 = v19 & 0xFFFFFF00;
        v22 = v139;
        for (i = *__str; i; --i)
        {
          v24 = *v22;
          v22 += 4;
          v21 += v24;
        }

        v25 = v21;
      }

      else
      {
        v25 = *(v9 + 19);
      }

      v26 = [v10 getGPUBuffer:v25 context:v122];
      v27 = [v26 buffer];
      v28 = [v27 contents];
      v121 = v26;
      v29 = [v26 offset] + v28;

      bzero(v29, v20);
      *v29 = 0x63617074757265;
      v30 = v20;
      v31 = v11;
      *(v29 + 2) = 65538;
      *(v29 + 3) = v30;
      v107 = v30;
      if (v13)
      {
        v32 = v11;
        v33 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", [v32 pixelFormat], objc_msgSend(v32, "width"), objc_msgSend(v32, "height"), 0);
        v34 = [v112 newTextureWithDescriptor:v33];
        [NSString stringWithFormat:@"DownloadSubTexture_copyTexture[name=%lu, ref=%llu]", *v120, v120[1]];

        v31 = v34;
        v140 = v31;

        v141 = v31;
      }

      v108 = v11;
      v109 = v10;
      if ((v113 | v17) == 1)
      {
        v35 = v10;
        v36 = v31;
        v114 = +[MTLTextureDescriptor texture2DDescriptorWithPixelFormat:width:height:mipmapped:](MTLTextureDescriptor, "texture2DDescriptorWithPixelFormat:width:height:mipmapped:", [v36 pixelFormat], v127, v128, 0);
        [v114 setStorageMode:2];
        v31 = [v112 newTextureWithDescriptor:v114];
        [NSString stringWithFormat:@"DownloadSubTexture_framebufferOnly_copyTexture[name=%lu, ref=%llu]", *v120, v120[1]];

        v37 = +[MTLRenderPassDescriptor renderPassDescriptor];
        v38 = [v37 colorAttachments];
        v39 = [v38 objectAtIndexedSubscript:0];
        [v39 setTexture:v31];

        v40 = [v37 colorAttachments];
        v41 = [v40 objectAtIndexedSubscript:0];
        [v41 setStoreAction:1];

        v42 = [v122 newCommandBuffer];
        v43 = [v42 renderCommandEncoderWithDescriptor:v37];
        [NSString stringWithFormat:@"DownloadSubTexture_framebufferOnly_draw[name=%lu, ref=%llu]", *v120, v120[1]];

        v44 = [v35 getFramebufferPipeline:{objc_msgSend(v36, "pixelFormat")}];
        [v43 setRenderPipelineState:v44];
        [v43 setFragmentTexture:v36 atIndex:0];
        [v43 drawPrimitives:3 vertexStart:0 vertexCount:3];
        [v43 endEncoding];
        [v42 commit];
        v140 = v31;
      }

      v45 = v123;
      *v111 = v8;
      if ((v129 & 0xFFFFFFFFFFFFFFFELL) == 0x226)
      {
        v46 = 94;
        if (v129 == 551)
        {
          v46 = 555;
        }

        if (v129 == 550)
        {
          v47 = 554;
        }

        else
        {
          v47 = v46;
        }

        v124 = v31;
        v48 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:v47 width:v127 height:v128 mipmapped:0];
        [v48 setStorageMode:2];
        [v48 setUsage:5];
        v100 = [v112 newTextureWithDescriptor:v48];
        v49 = v140;
        v140 = v100;

        v50 = &a3[57 * v8];
        [NSString stringWithFormat:@"DownloadSubTexture_RGB10A8_2P_copyTexture_0[name=%lu, ref=%llu]", *v120, v120[1]];

        v51 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:10 width:v127 height:v128 mipmapped:0];
        [v51 setStorageMode:2];
        [v51 setUsage:5];
        v52 = [v112 newTextureWithDescriptor:v51];
        v53 = v141;
        v141 = v52;

        [NSString stringWithFormat:@"DownloadSubTexture_RGB10A8_2P_copyTexture_1[name=%lu, ref=%llu]", *v50, v50[1]];
        v133 = 0;
        v54 = [v112 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal\n;struct VOut { float4 pos [[position]]; float2 uv; };\nvertex VOut Vertex(uint vid [[ vertex_id ]]) {VOut out; out.uv = float2((vid << 1) & 2 options:vid & 2); out.pos = float4(out.uv * 2.0f + -1.0f error:{0.0f, 1.0f); return out; }\nstruct FOut { float4 rt0 [[color(0)]]; float rt1 [[color(1)]]; };\nfragment FOut Fragment(VOut in [[stage_in]], texture2d<float> tex) { FOut out;\nfloat4 texel = tex.read(uint2(tex.get_width() * (in.uv.x), tex.get_height() * (in.uv.y)));out.rt0 = float4(texel.rgb, 0.0);\nout.rt1 = texel.a;\nreturn out; }\n", 0, &v133}];
        v55 = v133;
        v115 = [v54 newFunctionWithName:@"Vertex"];
        v101 = [v54 newFunctionWithName:@"Fragment"];
        v56 = objc_opt_new();
        [v56 setVertexFunction:v115];
        [v56 setFragmentFunction:v101];
        v57 = [v56 colorAttachments];
        v58 = [v57 objectAtIndexedSubscript:0];
        [v58 setPixelFormat:v47];

        v59 = [v56 colorAttachments];
        v60 = [v59 objectAtIndexedSubscript:1];
        [v60 setPixelFormat:10];

        v132 = v55;
        v61 = [v112 newRenderPipelineStateWithDescriptor:v56 error:&v132];
        v99 = v132;

        v62 = +[MTLRenderPassDescriptor renderPassDescriptor];
        v63 = [v62 colorAttachments];
        v64 = [v63 objectAtIndexedSubscript:0];
        [v64 setTexture:v100];

        v65 = [v62 colorAttachments];
        v66 = [v65 objectAtIndexedSubscript:0];
        [v66 setStoreAction:1];

        v67 = [v62 colorAttachments];
        v68 = [v67 objectAtIndexedSubscript:1];
        [v68 setTexture:v52];

        v69 = [v62 colorAttachments];
        v70 = [v69 objectAtIndexedSubscript:1];
        [v70 setStoreAction:1];

        v71 = [v122 newCommandBuffer];
        v72 = [v71 renderCommandEncoderWithDescriptor:v62];
        [NSString stringWithFormat:@"DownloadSubTexture_RGB10A8_2P_draw[name=%lu, ref=%llu]", *v50, v50[1]];

        [v72 setRenderPipelineState:v61];
        [v72 setFragmentTexture:v124 atIndex:0];

        [v72 drawPrimitives:3 vertexStart:0 vertexCount:3];
        [v72 endEncoding];
        [v71 commit];

        v45 = *__str;
      }

      v73 = [v121 offset];
      v75 = v127;
      v74 = v128;
      if (v45)
      {
        v76 = 0;
        v77 = v139;
        v78 = &v73[v107];
        v79 = v29 + 3;
        v116 = v29 + 3;
        do
        {
          v80 = *(v77 + 8);
          v81 = &v79[6 * v29[2]];
          *v81 = v129;
          v81[1] = v75;
          v81[2] = v74;
          v81[3] = v130;
          *(v81 + 2) = v80;
          ++v29[2];
          if (v126 != &dword_0 + 3)
          {
            v125 = v80;
            v82 = [v122 blitCommandEncoder];
            [NSString stringWithFormat:@"DownloadSubTexture[plane=%d]", v76];

            v83 = [v122 blitCommandEncoder];
            v84 = v29;
            v85 = v45;
            v86 = *(&v140 + v76);
            v87 = *(v120 + 24);
            v88 = *(v120 + 25);
            v89 = [v121 buffer];
            v90 = *(v77 + 3);
            v134 = v119;
            v135 = v118;
            v136 = v117;
            v131[0] = v127;
            v131[1] = v128;
            v131[2] = v130;
            v91 = v86;
            v45 = v85;
            v29 = v84;
            [v83 copyFromTexture:v91 sourceSlice:v87 sourceLevel:v88 sourceOrigin:&v134 sourceSize:v131 toBuffer:v89 destinationOffset:v78 destinationBytesPerRow:v125 destinationBytesPerImage:v90 options:?];

            v79 = v116;
            v75 = v127;
            v74 = v128;
          }

          v92 = *v77;
          v77 += 2;
          v78 += v92;
          ++v76;
        }

        while (v45 != v76);
      }

      for (j = 8; j != -8; j -= 8)
      {
      }

      a3 = v103;
      GTResourceDownloaderGetResourceFilename(v103, v111[0], __str, 0x80uLL);
      v94 = [v121 buffer];
      v95 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v121 offset] + objc_msgSend(v94, "contents"), objc_msgSend(v121, "size"), 0);

      v96 = [v122 objects];
      v97 = [NSString stringWithUTF8String:__str];
      [v96 addObject:v97];

      v98 = [v122 objects];
      [v98 addObject:v95];

      atomic_fetch_add(&g_GPUDataSize, [v95 length]);
      objc_autoreleasePoolPop(context);
      v8 = *v111 + 1;
    }

    while (*v111 + 1 != v102);
  }
}

void DownloadAccelerationStructure(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  if (DownloadAccelerationStructure_onceToken != -1)
  {
    dispatch_once(&DownloadAccelerationStructure_onceToken, &__block_literal_global_205);
  }

  v7 = *a3;
  v8 = [v7 device];
  v9 = DEVICEOBJECT(v8);

  v10 = [v9 newCommandQueue];
  [NSString stringWithFormat:@"com.apple.gputools.DownloadAccelerationStructure[name=%lu, ref=%llu]", *a3, a3[1]];

  v11 = [v5 getGPUBuffer:24 context:v6];
  v12 = [v10 commandBufferWithDescriptor:DownloadAccelerationStructure_commandBufferDescriptor];
  v92 = v10;
  [v10 label];

  v13 = [v12 accelerationStructureCommandEncoder];
  [v12 label];

  v14 = DEVICEOBJECT(v7);
  v15 = [v11 buffer];
  [v13 writeAccelerationStructureSerializationData:v14 toBuffer:v15 offset:{objc_msgSend(v11, "offset")}];

  [v13 endEncoding];
  [v12 commit];
  [v12 waitUntilCompleted];

  v16 = [v11 buffer];
  v17 = [v16 contents];
  v18 = [v11 offset];
  v20 = *&v18[v17];
  v19 = *&v18[v17 + 8];

  if (v19 >= 0x19 && [v9 isCompatibleWithAccelerationStructure:v20])
  {
    v89 = v9;
    v90 = v5;
    v21 = [v5 getGPUBuffer:v19 context:v6];
    v22 = [v7 stateBuffer];
    v91 = v6;
    if (v22 && (v23 = v22, [v7 stateBuffer], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "length"), v24, v23, v25 >= 8) && (objc_msgSend(v7, "stateBuffer"), v26 = objc_claimAutoreleasedReturnValue(), v27 = *(objc_msgSend(v26, "contents") + 1), v26, (v27 & 1) != 0))
    {
      v28 = v21;
      v29 = [v6 captureAccelerationStructures];
      v30 = GTAccelerationStructureDescriptorDownloader_children(v92, v7, v29);

      v31 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v30, "count")}];
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v32 = v30;
      v33 = [v32 countByEnumeratingWithState:&v93 objects:v106 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v94;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v94 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = DEVICEOBJECT(*(*(&v93 + 1) + 8 * i));
            [v31 addObject:v37];
          }

          v34 = [v32 countByEnumeratingWithState:&v93 objects:v106 count:16];
        }

        while (v34);
      }

      v38 = [v91 accelerationStructureCommandEncoder];
      [NSString stringWithFormat:@"DownloadAccelerationStructure_serializeInstanceAccelerationStructure[name=%lu, ref=%llu]", *a3, a3[1]];

      v39 = [v91 accelerationStructureCommandEncoder];
      v40 = DEVICEOBJECT(v7);
      v21 = v28;
      v41 = [v28 buffer];
      [v39 serializeInstanceAccelerationStructure:v40 primitiveAccelerationStructures:v31 toBuffer:v41 serializedBufferOffset:{objc_msgSend(v21, "offset")}];

      v6 = v91;
      v42 = MTLDepthStencilDescriptor_ptr;
    }

    else
    {
      v43 = [v6 accelerationStructureCommandEncoder];
      v42 = MTLDepthStencilDescriptor_ptr;
      [NSString stringWithFormat:@"DownloadAccelerationStructure_serializePrimitiveAccelerationStructure[name=%lu, ref=%llu]", *a3, a3[1]];

      v44 = [v6 accelerationStructureCommandEncoder];
      v45 = DEVICEOBJECT(v7);
      v46 = [v21 buffer];
      [v44 serializePrimitiveAccelerationStructure:v45 toBuffer:v46 serializedBufferOffset:{objc_msgSend(v21, "offset")}];

      v32 = 0;
    }

    GTResourceDownloaderGetResourceFilename(a3, 0, __str, 0x80uLL);
    v47 = [v21 buffer];
    v88 = v21;
    v48 = +[NSData dataWithBytesNoCopy:length:freeWhenDone:](NSData, "dataWithBytesNoCopy:length:freeWhenDone:", [v21 offset] + objc_msgSend(v47, "contents"), objc_msgSend(v21, "size"), 0);

    v49 = [v6 objects];
    v50 = [v42[73] stringWithUTF8String:__str];
    [v49 addObject:v50];

    v51 = [v6 objects];
    [v51 addObject:v48];

    atomic_fetch_add(&g_GPUDataSize, [v48 length]);
    v52 = [v7 traceContext];
    v53 = a3[6];
    *__str = v52;
    v98 = 0;
    v99 = 0;
    v100 = v53;
    s();
    v55 = v54;
    v56 = *v54;
    *v54 = v57;
    v101 = v56;
    v102 = *(v54 + 8);
    v103 = 16400;
    v104 = 0;
    v105 = 0;
    v58 = [v7 stateBuffer];
    v59 = v58;
    if (v58 && [v58 length] >= 8)
    {
      v60 = *([v59 contents] + 1);
      v61 = v60 & 1;
      v87 = vand_s8(vshl_u32(vdup_n_s32(v60), 0xFFFFFFFEFFFFFFFFLL), 0x100000001);
      v62 = (v60 >> 3) & 1;
    }

    else
    {
      v61 = 0;
      v62 = 0;
      v87 = 0;
    }

    GTTraceEncoder_setStream(__str, [v7 traceStream]);
    v63 = v99;
    *(v99 + 8) = -10159;
    v64 = v103;
    if (v103 > 0x28uLL)
    {
      v66 = *(v98 + 24);
      v86 = v59;
      v67 = a3;
      v68 = v62;
      v69 = v61;
      v70 = HIBYTE(v103);
      ++HIBYTE(v103);
      v65 = GTTraceMemPool_allocateBytes(v66, v100, v70 | 0x1800000000) + 16;
      v64 = v70;
      v61 = v69;
      v62 = v68;
      a3 = v67;
      v59 = v86;
    }

    else
    {
      v65 = (v63 + v103);
      LOBYTE(v103) = v103 + 24;
    }

    *(v63 + 13) = v64;
    v71 = [v7 traceStream];
    if (v71)
    {
      v72 = *v71;
    }

    else
    {
      v72 = 0;
    }

    *v65 = v72;
    *(v65 + 2) = v61;
    *(v65 + 12) = v87;
    *(v65 + 5) = v62;
    [v7 traceContext];
    v73 = v99;
    *v55 = v101;
    *(v55 + 8) = v102;
    *(v73 + 15) |= 8u;

    if (v32)
    {
      v74 = [v32 count];
      v75 = [[NSMutableData alloc] initWithLength:8 * v74];
      v76 = [v75 mutableBytes];
      if (v74)
      {
        v77 = v76;
        for (j = 0; j != v74; ++j)
        {
          v79 = [v32 objectAtIndexedSubscript:j];
          v80 = [v79 traceStream];
          if (v80)
          {
            v81 = atomic_load(v80 + 7);
            v82 = (v80 + (~(v81 >> 2) & 8));
          }

          else
          {
            v82 = &dword_8;
          }

          v77[j] = *v82;
        }
      }

      GTResourceDownloaderGetResourceFilename(a3, 1, __str, 0x80uLL);
      v83 = [v91 objects];
      v84 = [NSString stringWithUTF8String:__str];
      [v83 addObject:v84];

      v85 = [v91 objects];
      [v85 addObject:v75];

      atomic_fetch_add(&g_GPUDataSize, [v75 length]);
    }

    v5 = v90;
    v6 = v91;
    v9 = v89;
  }
}

uint64_t ResourceTypeSortOrder(int a1)
{
  if (a1 <= 59)
  {
    if (a1 > 49)
    {
      if (a1 == 50)
      {
        return 1;
      }

      if (a1 == 57)
      {
        return 8;
      }
    }

    else
    {
      if (a1 == 16)
      {
        return 7;
      }

      if (a1 == 22)
      {
        return 4;
      }
    }
  }

  else if (a1 <= 82)
  {
    if (a1 == 60)
    {
      return 2;
    }

    if (a1 == 80)
    {
      return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 'S':
        return 3;
      case 'V':
        return 5;
      case 'e':
        return 9;
    }
  }

  return 0;
}

uint64_t GTResourceDownloaderRequest_markTextureAsDrawable(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 47) |= 4u;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

apr_array_header_t *GTResourceDownloaderProcessRequest(apr_pool_t *a1, uint64_t a2)
{
  v2 = a2;
  arr = apr_array_make(a1, *(a2 + 12), 456);
  if (*(v2 + 12) >= 1)
  {
    v3 = 0;
    v139 = v2;
    v4 = &unk_31F000;
    v141 = vdupq_n_s64(0x20uLL);
    do
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(v2 + 24) + 456 * v3;
      Stream = GTTraceContext_getStream(v4[243], *(v6 + 8));
      Func = GTTraceStream_lastFunc(Stream);
      if ((GTFenum_isDestructor(*(Func + 8)) & 1) == 0)
      {
        v9 = *(v6 + 46);
        if (v9 > 0x3B)
        {
          v140 = v5;
          if (*(v6 + 46) > 0x52u)
          {
            if (v9 == 83)
            {
              v61 = v3;
              v62 = *v6;
              v63 = *(v6 + 8);
              v64 = *(v6 + 16);
              v65 = *(v6 + 40);
              v10 = *v6;
              v66 = [v10 functionArray];
              v67 = [v66 count];

              v68 = apr_array_push(arr);
              *v68 = v62;
              *(v68 + 1) = v63;
              v3 = v61;
              *(v68 + 3) = 0;
              *(v68 + 4) = 0;
              *(v68 + 2) = v64;
              *(v68 + 10) = v65;
              v2 = v139;
              v5 = v140;
              *(v68 + 11) = 5439488;
              *(v68 + 6) = v67;
              *(v68 + 72) = 0u;
              *(v68 + 88) = 0u;
              *(v68 + 104) = 0u;
              *(v68 + 120) = 0u;
              *(v68 + 136) = 0u;
              *(v68 + 152) = 0u;
              *(v68 + 168) = 0u;
              *(v68 + 184) = 0u;
              *(v68 + 200) = 0u;
              *(v68 + 216) = 0u;
              *(v68 + 232) = 0u;
              *(v68 + 248) = 0u;
              *(v68 + 56) = 0u;
              v68 += 56;
              *(v68 + 13) = 0u;
              *(v68 + 14) = 0u;
              *(v68 + 15) = 0u;
              *(v68 + 16) = 0u;
              *(v68 + 17) = 0u;
              *(v68 + 18) = 0u;
              *(v68 + 19) = 0u;
              *(v68 + 20) = 0u;
              *(v68 + 21) = 0u;
              *(v68 + 22) = 0u;
              *(v68 + 23) = 0u;
              *(v68 + 24) = 0u;
              goto LABEL_31;
            }

            if (v9 == 101)
            {
              v34 = *v6;
              v10 = DEVICEOBJECT(v34);

              v35 = apr_array_push(arr);
              v35[46] = *(v6 + 46);
              *v35 = *v6;
              *(v35 + 2) = *(v6 + 16);
              *(v35 + 10) = *(v6 + 40);
              GTMTLTensor_wholeSlice(v10, __src);
              memcpy(v35 + 48, __src, 0x110uLL);
              v36 = *(v35 + 264);
              v37 = *(v35 + 296);
              v182 = *(v35 + 280);
              v183 = v37;
              v184 = *(v35 + 39);
              v38 = *(v35 + 200);
              v39 = *(v35 + 232);
              v178 = *(v35 + 216);
              v179 = v39;
              v180 = *(v35 + 248);
              v181 = v36;
              v176 = *(v35 + 184);
              v177 = v38;
              memset(&__src[1], 0, 120);
              *&__src[0] = v176.i64[0];
              *(&__src[0] + 1) = 1;
              if (v176.i64[0] >= 2uLL)
              {
                v40 = v176.i64[0] - 1;
                v41 = &v176.i64[1];
                v42 = &__src[1];
                v43 = 1;
                do
                {
                  v44 = *v41++;
                  v43 *= v44;
                  *v42++ = v43;
                  --v40;
                }

                while (v40);
              }

              v45 = __src[7];
              *(v35 + 26) = __src[6];
              *(v35 + 27) = v45;
              *(v35 + 56) = *&__src[8];
              v46 = __src[3];
              *(v35 + 22) = __src[2];
              *(v35 + 23) = v46;
              v47 = __src[5];
              *(v35 + 24) = __src[4];
              *(v35 + 25) = v47;
              v48 = __src[1];
              *(v35 + 20) = __src[0];
              *(v35 + 21) = v48;
              goto LABEL_31;
            }
          }

          else
          {
            if (v9 == 60)
            {
              v50 = v3;
              v51 = *v6;
              v52 = *(v6 + 8);
              v53 = *(v6 + 16);
              v54 = *(v6 + 40);
              v10 = *v6;
              v55 = [v10 functionArray];
              v56 = [v55 count];

              v57 = apr_array_push(arr);
              *v57 = v51;
              v57[1] = v52;
              v3 = v50;
              v57[3] = 0;
              v57[4] = 0;
              v57[2] = v53;
              *(v57 + 10) = v54;
              v2 = v139;
              v5 = v140;
              *(v57 + 11) = 3932160;
              v57[6] = v56;
              v57[7] = 31;
              *(v57 + 4) = 0u;
              *(v57 + 5) = 0u;
              *(v57 + 6) = 0u;
              *(v57 + 7) = 0u;
              *(v57 + 8) = 0u;
              *(v57 + 9) = 0u;
              *(v57 + 10) = 0u;
              *(v57 + 11) = 0u;
              *(v57 + 12) = 0u;
              *(v57 + 13) = 0u;
              *(v57 + 14) = 0u;
              *(v57 + 15) = 0u;
              *(v57 + 16) = 0u;
              *(v57 + 17) = 0u;
              *(v57 + 18) = 0u;
              *(v57 + 19) = 0u;
              *(v57 + 20) = 0u;
              *(v57 + 21) = 0u;
              *(v57 + 22) = 0u;
              *(v57 + 23) = 0u;
              *(v57 + 24) = 0u;
              *(v57 + 25) = 0u;
              *(v57 + 26) = 0u;
              *(v57 + 27) = 0u;
              v57[56] = 0;
              goto LABEL_31;
            }

            if (v9 == 80)
            {
              v12 = *v6;
              v13 = DEVICEOBJECT(v12);

              v170 = v6;
              v138 = v13;
              if ((objc_opt_respondsToSelector() & 1) != 0 && [v13 isSparse])
              {
                v14 = v6;
                v15 = v13;
                v16 = *v14;
                v17 = DEVICEOBJECT(v16);

                v137 = v3;
                v144 = v15;
                if ([v17 isSparse])
                {
                  v18 = [v17 device];
                  v19 = [v18 newCommandQueue];
                  [NSString stringWithFormat:@"com.apple.gputools.GTResourceDownloader.DownloadSparseTextureMappingBuffer[name=%lu, ref=%llu]", *v14, v14[1]];

                  v20 = [0 commanndBufferDescriptor];
                  v21 = [v19 commandBufferWithDescriptor:v20];

                  v165 = v19;
                  [v19 label];

                  v161 = GetSparseTextureMappingKernelFunction(v17, v18);
                  v22 = [v18 newComputePipelineStateWithFunction:? error:?];
                  v23 = [v21 computeCommandEncoder];
                  v163 = v21;
                  [v21 label];

                  [v23 setComputePipelineState:v22];
                  [v23 setTexture:v17 atIndex:0];
                  v24 = GetSparseTextureMappingBuffer(v17, v18);
                  memset(__src, 0, 64);
                  v176 = 0uLL;
                  v177.i64[0] = 0;
                  v5 = [v17 textureType];
                  [v17 pixelFormat];
                  objc_msgSend_sampleCount(v17);
                  if (v18)
                  {
                    objc_msgSend_sparseTileSizeWithTextureType_pixelFormat_sampleCount_(v18);
                  }

                  else
                  {
                    v176 = 0uLL;
                    v177.i64[0] = 0;
                  }

                  if ([v17 arrayLength])
                  {
                    v5 = 0;
                    v98 = 0;
                    while (![v17 mipmapLevelCount])
                    {
LABEL_83:
                      if (++v98 >= [v17 arrayLength])
                      {
                        goto LABEL_84;
                      }
                    }

                    v99 = 0;
                    while (2)
                    {
                      v100 = [v17 width] >> v99;
                      if (v100 <= 1)
                      {
                        LODWORD(v100) = 1;
                      }

                      LODWORD(__src[0]) = v100;
                      v101 = [v17 height] >> v99;
                      if (v101 <= 1)
                      {
                        LODWORD(v101) = 1;
                      }

                      DWORD1(__src[0]) = v101;
                      v102 = [v17 depth] >> v99;
                      if (v102 <= 1)
                      {
                        LODWORD(v102) = 1;
                      }

                      DWORD2(__src[0]) = v102;
                      DWORD2(__src[1]) = v177.i32[0];
                      *&__src[1] = vmovn_s64(v176);
                      v103.i64[0] = LODWORD(__src[0]);
                      v103.i64[1] = DWORD1(__src[0]);
                      v104.i64[0] = 0xFFFFFFFFLL;
                      v104.i64[1] = 0xFFFFFFFFLL;
                      v174 = vmovn_s64(vcvtq_u64_f64(vrndpq_f64(vdivq_f64(vcvtq_f64_u64(v103), vcvtq_f64_u64(vandq_s8(v176, v104))))));
                      *&__src[2] = v174;
                      v105 = vcvtpd_u64_f64(v102 / v177.u32[0]);
                      DWORD2(__src[2]) = v105;
                      if ([v17 textureType] == &dword_4 + 1)
                      {
                        LODWORD(__src[3]) = v98;
                        DWORD2(__src[3]) = v99;
                        goto LABEL_77;
                      }

                      v106 = [v17 textureType];
                      LODWORD(__src[3]) = v98;
                      DWORD2(__src[3]) = v99;
                      if (v106 == &dword_4 + 2)
                      {
LABEL_77:
                        v107 = v98 % 6;
                      }

                      else
                      {
                        v107 = 0;
                      }

                      v108 = v174.i32[0] * v105 * v174.i32[1];
                      DWORD1(__src[3]) = v107;
                      HIDWORD(__src[3]) = v108;
                      [NSString stringWithFormat:@"DownloadSparseTextureMappingBuffer[slice = %lu, level = %lu]", v98, v99];

                      [v23 setBuffer:v24 offset:v5 atIndex:0];
                      [v23 setBytes:__src length:64 atIndex:1];
                      if (v99 >= [v17 firstMipmapInTail])
                      {
                        v110 = vdupq_n_s64(1uLL);
                        v188 = v110;
                        v189.i64[0] = 1;
                      }

                      else
                      {
                        v109.i64[0] = LODWORD(__src[2]);
                        v109.i64[1] = DWORD1(__src[2]);
                        v188 = v109;
                        v189.i64[0] = DWORD2(__src[2]);
                        v110 = v141;
                      }

                      v186 = v110;
                      v187 = 1;
                      [v23 dispatchThreads:&v188 threadsPerThreadgroup:&v186];
                      v5 += v108;
                      if (++v99 >= [v17 mipmapLevelCount])
                      {
                        goto LABEL_83;
                      }

                      continue;
                    }
                  }

LABEL_84:
                  [v23 endEncoding];
                  [v163 commit];
                  [v163 waitUntilCompleted];

                  v15 = v144;
                }

                else
                {
                  v24 = 0;
                }

                v111 = [v15 device];
                v157 = [v15 pixelFormat];
                v156 = objc_msgSend_sampleCount(v15);
                v143 = [v24 contents];
                v112 = -1;
                do
                {
                  ++v112;
                }

                while (v112 < [v24 length]);
                v154 = *(v170 + 8);
                v155 = *v170;
                v153 = *(v170 + 16);
                v151 = *(v170 + 46);
                v152 = *(v170 + 40);
                v142 = [v15 firstMipmapInTail];
                v176 = 0uLL;
                v177.i64[0] = 0;
                [v15 textureType];
                [v15 pixelFormat];
                objc_msgSend_sampleCount(v15);
                v136 = v24;
                if (v111)
                {
                  objc_msgSend_sparseTileSizeWithTextureType_pixelFormat_sampleCount_(v111);
                }

                else
                {
                  v176 = 0uLL;
                  v177.i64[0] = 0;
                }

                if ([v15 arrayLength])
                {
                  v158 = 0;
                  v113 = 0;
                  v114 = 1;
                  do
                  {
                    if ([v15 mipmapLevelCount])
                    {
                      v115 = 0;
                      do
                      {
                        v116 = [v15 width];
                        if (v116 >> v115 <= 1)
                        {
                          LODWORD(v117) = 1;
                        }

                        else
                        {
                          v117 = v116 >> v115;
                        }

                        v118 = [v15 height];
                        if (v118 >> v115 <= 1)
                        {
                          LODWORD(v119) = 1;
                        }

                        else
                        {
                          v119 = v118 >> v115;
                        }

                        v120 = [v15 depth] >> v115;
                        LODWORD(v5) = vcvtpd_u64_f64(v117 / v176.u32[0]);
                        if (v120 <= 1)
                        {
                          LODWORD(v120) = 1;
                        }

                        v149 = vcvtpd_u64_f64(v119 / v176.u32[2]);
                        v146 = vcvtpd_u64_f64(v120 / v177.u32[0]);
                        v171 = v115;
                        if (v146)
                        {
                          v121 = 0;
                          v166 = 2 * (v142 < v115);
                          v168 = v176.i32[0];
                          if (v176.i32[0] >= v117)
                          {
                            v122 = v117;
                          }

                          else
                          {
                            v122 = v176.u32[0];
                          }

                          v148 = v176.i16[4];
                          if (v176.i32[2] >= v119)
                          {
                            v123 = v119;
                          }

                          else
                          {
                            v123 = v176.u16[4];
                          }

                          v145 = v177.i16[0];
                          if (v177.i32[0] < v120)
                          {
                            LOWORD(v120) = v177.i16[0];
                          }

                          v164 = v123;
                          v162 = v120;
                          v159 = v120;
                          v160 = v123;
                          v124 = 0uLL;
                          do
                          {
                            v147 = v121;
                            if (v149)
                            {
                              v125 = 0;
                              v175 = v121 * v145;
                              do
                              {
                                v150 = v125;
                                if (v5)
                                {
                                  v126 = 0;
                                  v127 = v125 * v5;
                                  v128 = v125 * v148;
                                  do
                                  {
                                    if (v143[v113 + v127 + v126])
                                    {
                                      __src[8] = v124;
                                      __src[9] = v124;
                                      __src[6] = v124;
                                      __src[7] = v124;
                                      __src[4] = v124;
                                      __src[5] = v124;
                                      __src[2] = v124;
                                      __src[3] = v124;
                                      __src[0] = v124;
                                      __src[1] = v124;
                                      v188.i64[0] = v122;
                                      v188.i64[1] = v160;
                                      v189.i64[0] = v159;
                                      MTLTextureInfo(v111, v157, v188.i64, v156, __src);
                                      v129 = *&__src[0];
                                      v130 = (48 * LODWORD(__src[0]) + 279) & 0xFFFFFF00;
                                      for (i = &__src[2]; v129; --v129)
                                      {
                                        v132 = *i;
                                        i += 4;
                                        v130 += v132;
                                      }

                                      v114 = v114 & 0xFFFFFFFD | v166;
                                      v133 = vmovn_s64(*(__src + 8));
                                      v134 = apr_array_push(arr);
                                      *v134 = v155;
                                      *(v134 + 1) = v154;
                                      *(v134 + 3) = 0;
                                      *(v134 + 4) = 0;
                                      *(v134 + 2) = v153;
                                      *(v134 + 10) = v152;
                                      *(v134 + 22) = 0;
                                      v134[46] = v151;
                                      v134[47] = v114;
                                      *(v134 + 24) = v158;
                                      *(v134 + 25) = v171;
                                      *(v134 + 13) = v126 * v168;
                                      *(v134 + 28) = v128;
                                      *(v134 + 29) = v175;
                                      *(v134 + 15) = v122;
                                      *(v134 + 32) = v164;
                                      *(v134 + 33) = v162;
                                      *(v134 + 68) = v133;
                                      *(v134 + 19) = v130;
                                      *(v134 + 56) = 0;
                                      v124 = 0uLL;
                                      *(v134 + 26) = 0u;
                                      *(v134 + 27) = 0u;
                                      *(v134 + 24) = 0u;
                                      *(v134 + 25) = 0u;
                                      *(v134 + 22) = 0u;
                                      *(v134 + 23) = 0u;
                                      *(v134 + 20) = 0u;
                                      *(v134 + 21) = 0u;
                                      *(v134 + 18) = 0u;
                                      *(v134 + 19) = 0u;
                                      *(v134 + 16) = 0u;
                                      *(v134 + 17) = 0u;
                                      *(v134 + 14) = 0u;
                                      *(v134 + 15) = 0u;
                                      *(v134 + 12) = 0u;
                                      *(v134 + 13) = 0u;
                                      *(v134 + 10) = 0u;
                                      *(v134 + 11) = 0u;
                                      *(v134 + 8) = 0u;
                                      *(v134 + 9) = 0u;
                                      *(v134 + 6) = 0u;
                                      *(v134 + 7) = 0u;
                                      *(v134 + 5) = 0u;
                                    }

                                    v126 = v126 + 1;
                                  }

                                  while (v126 != v5);
                                }

                                v125 = v150 + 1;
                              }

                              while (v150 + 1 != v149);
                            }

                            v121 = v147 + 1;
                          }

                          while (v147 + 1 != v146);
                        }

                        v113 += v149 * v5 * v146;
                        v115 = v171 + 1;
                        v15 = v144;
                      }

                      while (v171 + 1 < [v144 mipmapLevelCount]);
                    }

                    ++v158;
                  }

                  while (v158 < [v15 arrayLength]);
                }

                v2 = v139;
                v5 = v140;
                v4 = &unk_31F000;
                v69 = v136;
LABEL_126:

LABEL_127:
                v3 = v137;
              }

              else if (CanHarvestTextureAsIOSurfaceUsingCPU(v13))
              {
                v15 = *v6;
                if ([v15 conformsToProtocol:&OBJC_PROTOCOL___MTLTexture])
                {
                  v137 = v3;
                  v69 = v15;
                  PlaneCount = IOSurfaceGetPlaneCount([v69 iosurface]);
                  v71 = 0;
                  v72 = 0;
                  if (PlaneCount <= 1)
                  {
                    v73 = 1;
                  }

                  else
                  {
                    v73 = PlaneCount;
                  }

                  do
                  {
                    v71 += IOSurfaceGetSizeOfPlane();
                    ++v72;
                  }

                  while (v73 != v72);
                  v74 = apr_array_push(arr);
                  v172 = *v170;
                  v75 = *(v170 + 16);
                  v76 = *(v170 + 40);
                  v77 = [v69 iosurfacePlane];
                  *v74 = v172;
                  v74[3] = 0;
                  v74[4] = 0;
                  v74[2] = v75;
                  *(v74 + 10) = v76;
                  *(v74 + 11) = 5636096;
                  v74[6] = v71;
                  v74[7] = v77;
                  *(v74 + 4) = 0u;
                  *(v74 + 5) = 0u;
                  *(v74 + 6) = 0u;
                  *(v74 + 7) = 0u;
                  *(v74 + 8) = 0u;
                  *(v74 + 9) = 0u;
                  *(v74 + 10) = 0u;
                  *(v74 + 11) = 0u;
                  *(v74 + 12) = 0u;
                  *(v74 + 13) = 0u;
                  *(v74 + 14) = 0u;
                  *(v74 + 15) = 0u;
                  *(v74 + 16) = 0u;
                  *(v74 + 17) = 0u;
                  *(v74 + 18) = 0u;
                  *(v74 + 19) = 0u;
                  *(v74 + 20) = 0u;
                  *(v74 + 21) = 0u;
                  *(v74 + 22) = 0u;
                  *(v74 + 23) = 0u;
                  *(v74 + 24) = 0u;
                  *(v74 + 25) = 0u;
                  *(v74 + 26) = 0u;
                  *(v74 + 27) = 0u;
                  v15 = v69;
                  v74[56] = 0;
                  goto LABEL_126;
                }
              }

              else
              {
                v15 = v13;
                v78 = [v15 mipmapLevelCount];
                v79 = [v15 arrayLength];
                IsCube = MTLTextureIsCube(v15);
                v81 = 6;
                if (!IsCube)
                {
                  v81 = 1;
                }

                v167 = v78;
                if (v78)
                {
                  v137 = v3;
                  v82 = 0;
                  v173 = v81 * v79;
                  do
                  {
                    if ([v15 width] >> v82)
                    {
                      v83 = [v15 width] >> v82;
                    }

                    else
                    {
                      v83 = 1;
                    }

                    if ([v15 height] >> v82)
                    {
                      v84 = [v15 height] >> v82;
                    }

                    else
                    {
                      v84 = 1;
                    }

                    if ([v15 depth] >> v82)
                    {
                      v85 = [v15 depth] >> v82;
                    }

                    else
                    {
                      v85 = 1;
                    }

                    if (v173)
                    {
                      for (j = 0; j != v173; ++j)
                      {
                        v87 = apr_array_push(arr);
                        v88 = v15;
                        v89 = v15;
                        v90 = [v89 device];
                        v91 = [v89 pixelFormat];
                        v92 = objc_msgSend_sampleCount(v89);
                        memset(__src, 0, 160);
                        v176.i64[0] = v83;
                        v176.i64[1] = v84;
                        v177.i64[0] = v85;
                        MTLTextureInfo(v90, v91, v176.i64, v92, __src);
                        v93 = *&__src[0];
                        v94 = (48 * LODWORD(__src[0]) + 279) & 0xFFFFFF00;
                        if (*&__src[0])
                        {
                          v95 = &__src[2];
                          do
                          {
                            v96 = *v95;
                            v95 += 8;
                            v94 += v96;
                            --v93;
                          }

                          while (v93);
                        }

                        v97 = vmovn_s64(*(__src + 8));

                        *(v87 + 1) = 0u;
                        *(v87 + 2) = 0u;
                        *v87 = 0u;
                        *(v87 + 24) = j;
                        *(v87 + 25) = v82;
                        *(v87 + 52) = 0;
                        *(v87 + 15) = v83;
                        *(v87 + 32) = v84;
                        *(v87 + 33) = v85;
                        *(v87 + 68) = v97;
                        *(v87 + 19) = v94;
                        *(v87 + 5) = 0u;
                        *(v87 + 6) = 0u;
                        *(v87 + 7) = 0u;
                        *(v87 + 8) = 0u;
                        *(v87 + 9) = 0u;
                        *(v87 + 10) = 0u;
                        *(v87 + 11) = 0u;
                        *(v87 + 12) = 0u;
                        *(v87 + 13) = 0u;
                        *(v87 + 14) = 0u;
                        *(v87 + 15) = 0u;
                        *(v87 + 16) = 0u;
                        *(v87 + 17) = 0u;
                        *(v87 + 18) = 0u;
                        *(v87 + 19) = 0u;
                        *(v87 + 20) = 0u;
                        *(v87 + 21) = 0u;
                        *(v87 + 22) = 0u;
                        *(v87 + 23) = 0u;
                        *(v87 + 24) = 0u;
                        *(v87 + 25) = 0u;
                        *(v87 + 26) = 0u;
                        *(v87 + 27) = 0u;
                        *(v87 + 56) = 0;
                        v87[46] = *(v170 + 46);
                        *v87 = *v170;
                        *(v87 + 2) = *(v170 + 16);
                        *(v87 + 10) = *(v170 + 40);
                        v15 = v88;
                      }
                    }

                    ++v82;
                    v4 = &unk_31F000;
                    v5 = v140;
                  }

                  while (v82 != v167);
                  v2 = v139;
                  goto LABEL_127;
                }
              }
            }
          }
        }

        else if (*(v6 + 46) > 0x31u)
        {
          if (v9 == 50)
          {
            v10 = *v6;
            v11 = [v10 backbuffer];
            v58 = DEVICEOBJECT(v11);
            v59 = v6;
            v60 = v58;
            ProcessDeviceBuffer(arr, v59, v58);

            goto LABEL_29;
          }

          if (v9 == 57)
          {
            v25 = *v6;
            v177 = 0u;
            v178 = 0u;
            v176 = 0u;
            v10 = v25;
            v26 = DEVICEOBJECT(v10);
            MakeGTMTLIndirectCommandBufferDescriptorFromIndirectCommandBuffer(&v176, v26);

            GTMTLCreateIndirectCommandEncoder(__src, &v176);
            v27 = apr_array_push(arr);
            v28 = *(v6 + 16);
            v29 = *(v6 + 40);
            v30 = *(v6 + 46);
            v31 = *v6;
            v188 = v176;
            v189 = v177;
            v190 = v178;
            *v27 = v31;
            v27[1].i64[0] = v28;
            v27[1].i64[1] = 0;
            v27[2].i64[0] = 0;
            v27[2].i32[2] = v29;
            v27[2].i16[6] = 0;
            v27[2].i16[7] = v30;
            v32 = v189;
            v33 = v190;
            v27[3] = v188;
            v27[4] = v32;
            v27[28].i64[0] = 0;
            v27[26] = 0u;
            v27[27] = 0u;
            v27[24] = 0u;
            v27[25] = 0u;
            v27[22] = 0u;
            v27[23] = 0u;
            v27[20] = 0u;
            v27[21] = 0u;
            v27[18] = 0u;
            v27[19] = 0u;
            v27[16] = 0u;
            v27[17] = 0u;
            v27[14] = 0u;
            v27[15] = 0u;
            v27[12] = 0u;
            v27[13] = 0u;
            v27[10] = 0u;
            v27[11] = 0u;
            v27[8] = 0u;
            v27[9] = 0u;
            v27[6] = 0u;
            v27[7] = 0u;
            v27[5] = v33;
LABEL_31:
          }
        }

        else
        {
          if (v9 == 16)
          {
            v10 = *v6;
            v49 = apr_array_push(arr);
            v49[46] = *(v6 + 46);
            *v49 = *v6;
            *(v49 + 2) = *(v6 + 16);
            *(v49 + 10) = *(v6 + 40);
            *(v49 + 6) = atomic_fetch_add([v10 traceContext] + 10, 1uLL);
            goto LABEL_31;
          }

          if (v9 == 22)
          {
            v10 = *v6;
            v11 = DEVICEOBJECT(v10);
            ProcessDeviceBuffer(arr, v6, v11);
LABEL_29:

            goto LABEL_31;
          }
        }
      }

      objc_autoreleasePoolPop(v5);
      ++v3;
    }

    while (v3 < *(v2 + 12));
  }

  return arr;
}

void ProcessDeviceBuffer(apr_array_header_t *a1, uint64_t a2, void *a3)
{
  v34 = a3;
  v5 = [v34 length];
  if ((dword_31F7C8 & 0x1000) == 0)
  {
    v6 = apr_array_push(a1);
    v6[46] = *(a2 + 46);
    *v6 = *a2;
    *(v6 + 2) = *(a2 + 16);
    v7 = (a2 + 40);
LABEL_17:
    *(v6 + 10) = *v7;
    *(v6 + 6) = 0;
    *(v6 + 7) = v5;
    goto LABEL_18;
  }

  Stream = GTTraceContext_getStream(g_ctx, *(a2 + 8));
  v9 = Stream;
  v7 = (a2 + 40);
  if (*(a2 + 40))
  {
    if (!Stream)
    {
      goto LABEL_18;
    }

    v10 = atomic_load((Stream + 56));
    if ((v10 & 8) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (!Stream)
  {
    goto LABEL_11;
  }

  v11 = atomic_load((Stream + 56));
  v12 = v11;
  do
  {
    atomic_compare_exchange_strong((Stream + 56), &v12, v11 & 0xFFFFFFFFFFFFFFF7);
    v16 = v12 == v11;
    v11 = v12;
  }

  while (!v16);
LABEL_11:
  tempAlloc();
  v14 = v13;
  v15 = GTMemoryGuard_copyTracedChunks(v13, v9);
  CaptureMTLBuffer_registerBaseBufferForTracing(v34, v9, 1);
  if (*v7)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v6 = apr_array_push(a1);
    v6[46] = *(a2 + 46);
    *v6 = *a2;
    *(v6 + 2) = *(a2 + 16);
    goto LABEL_17;
  }

  if (!__CFADD__(v5 - 1, vm_page_size))
  {
    v17 = 0;
    v18 = v15 << 6;
    v19 = v15 - 1;
    v20 = (v5 - 1 + vm_page_size) / vm_page_size;
    do
    {
      v21 = *v14;
      v22 = v17 >> 6;
      v23 = *(*v14 + (v17 >> 6)) & (-1 << v17);
      v24 = v23 == 0;
      if (v17 >> 6 < v19 && !v23)
      {
        do
        {
          v23 = v21[++v22];
          v24 = v23 == 0;
        }

        while (v22 < v19 && !v23);
      }

      v17 = v18;
      v25 = v18;
      if (!v24)
      {
        v26 = __clz(__rbit64(v23));
        v27 = v23 | ~(-1 << v26);
        v28 = v27 == -1;
        v29 = v22;
        if (v22 < v19 && v27 == -1)
        {
          v30 = v21 + 1;
          v29 = v22;
          do
          {
            v27 = v30[v29++];
            v28 = v27 == -1;
          }

          while (v29 < v19 && v27 == -1);
        }

        v25 = v26 | (v22 << 6);
        if (v28)
        {
          v17 = v18;
        }

        else
        {
          v17 = __clz(__rbit64(~v27)) + (v29 << 6);
        }
      }

      if (v25 >= v20)
      {
        break;
      }

      v31 = vm_page_size * v25;
      v32 = vm_page_size * v17 >= v5 ? v5 : vm_page_size * v17;
      v33 = apr_array_push(a1);
      v33[46] = *(a2 + 46);
      *v33 = *a2;
      *(v33 + 2) = *(a2 + 16);
      *(v33 + 10) = *(a2 + 40);
      *(v33 + 6) = v31;
      *(v33 + 7) = v32 - v31;
    }

    while (v17 < v20);
  }

LABEL_18:
}

uint64_t MTLIndirectCommandBuffer_descriptor(uint64_t a1)
{
  v4 = 0u;
  v5 = 0;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  v4.i32[0] = 57;
  v6 = -1;
  WORD5(v11) = 2;
  v10 = 0xFFFFFFFFFFFFFFFFLL;
  v1 = *(a1 + 32);
  if (v1 && (*(v1 + 79) & 8) != 0)
  {
    v2 = v1 + 64;
  }

  else
  {
    v2 = 0;
  }

  GTMTLSMIndirectCommandBuffer_processTraceFuncWithPool(&v4, *(a1 + 24), v2);
  return v12;
}

char *AllocateSnapshotMemory(uint64_t a1, uint64_t a2, int a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  GTMTLCreateIndirectCommandEncoder(v10, a2);
  v5 = (v11 * a3);
  v6 = *(*(a1 + 8) + 24);
  v7 = *(a1 + 24);
  v8 = *(a1 + 42);
  *(a1 + 42) = v8 + 1;

  return GTTraceMemPool_allocateBytes(v6, v7, v8 | (v5 << 32) | 0x100);
}

char *AllocateRangeSnapshotMemory(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 24);
  v2 = *(a1 + 24);
  v3 = *(a1 + 42);
  *(a1 + 42) = v3 + 1;
  return GTTraceMemPool_allocateBytes(v1, v2, v3 | 0x1000000100);
}

void *UnwrapArray(void *a1, void **a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    v6 = a1;
    do
    {
      v7 = *a2++;
      *v6++ = [v7 baseObject];
      --v4;
    }

    while (v4);
  }

  return a1;
}

uint64_t StreamArray(uint64_t a1, void *__src, id *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = __src;
    v9 = a4;
    do
    {
      v10 = [*a3 traceStream];
      if (v10)
      {
        v11 = *v10;
      }

      else
      {
        v11 = 0;
      }

      *v8++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  return GTTraceEncoder_storeBytes(a1, __src, 8 * a4);
}

uint64_t StreamArrayURL(uint64_t a1, void *a2, id *a3, uint64_t a4)
{
  if (a4)
  {
    v8 = a2;
    v9 = a4;
    do
    {
      v10 = [*a3 traceStream];
      if (v10)
      {
        v11 = *v10;
      }

      else
      {
        v11 = 0;
      }

      *v8++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  return GTTraceEncoder_storeBlob(a1, a2, 8 * a4);
}

uint64_t StreamNSArray(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [v5 count];
  if (v6)
  {
    v7 = 0;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v7];
      v9 = [v8 traceStream];
      if (v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = 0;
      }

      a2[v7] = v10;

      v7 = v7 + 1;
    }

    while (v6 != v7);
  }

  v11 = GTTraceEncoder_storeBytes(a1, a2, 8 * v6);

  return v11;
}

uint64_t StreamMTLNameArray(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  v5 = 8 * v4;
  __chkstk_darwin(v4);
  v7 = (&v15 - v6);
  bzero(&v15 - v6, v5 + 8);
  v8 = [v3 count];
  *v7 = v8;
  if (v8)
  {
    v9 = 0;
    do
    {
      v10 = [v3 objectAtIndexedSubscript:v9];
      v11 = [v10 traceStream];
      if (v11)
      {
        v12 = *v11;
      }

      else
      {
        v12 = 0;
      }

      v7[v9 + 1] = v12;

      ++v9;
    }

    while (v9 < *v7);
  }

  v13 = GTTraceEncoder_storeBytes(a1, v7, v5 + 8);

  return v13;
}

void RetainArray(void *a1, id *a2, uint64_t a3)
{
  for (i = a1; a3; --a3)
  {
    if (*a2)
    {
      [i addObject:?];
      [*a2 touch];
    }

    ++a2;
  }
}

void RetainNSArray(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [v3 objectAtIndexedSubscript:v4];

      if (v5)
      {
        v6 = [v3 objectAtIndexedSubscript:v4];
        [v8 addObject:v6];

        v7 = [v3 objectAtIndexedSubscript:v4];
        [v7 touch];
      }

      ++v4;
    }

    while ([v3 count] > v4);
  }
}

id unwrapNSArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v12 + 1) + 8 * i) baseObject];
          [v3 addObject:v9];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id deviceNSArray(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v1 count]);
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v4 = v2;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = DEVICEOBJECT(*(*(&v12 + 1) + 8 * i));
          [v3 addObject:{v9, v12}];
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    v10 = [v3 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id unwrapMTLLinkedFunctions(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 functions];
  v4 = unwrapNSArray(v3);
  [v2 setFunctions:v4];

  v5 = [v1 binaryFunctions];
  v6 = unwrapNSArray(v5);
  [v2 setBinaryFunctions:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 privateFunctions];
    v8 = unwrapNSArray(v7);
    [v2 setPrivateFunctions:v8];
  }

  v9 = [v1 groups];

  if (v9)
  {
    v21 = v2;
    v10 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v1 groups];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v1 groups];
          v18 = [v17 objectForKeyedSubscript:v16];
          v19 = unwrapNSArray(v18);
          [v10 setObject:v19 forKey:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v2 = v21;
    [v21 setGroups:v10];
  }

  return v2;
}

id deviceMTLLinkedFunctions(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 functions];
  v4 = deviceNSArray(v3);
  [v2 setFunctions:v4];

  v5 = [v1 binaryFunctions];
  v6 = deviceNSArray(v5);
  [v2 setBinaryFunctions:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 privateFunctions];
    v8 = deviceNSArray(v7);
    [v2 setPrivateFunctions:v8];
  }

  v9 = [v1 groups];

  if (v9)
  {
    v21 = v2;
    v10 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = [v1 groups];
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v1 groups];
          v18 = [v17 objectForKeyedSubscript:v16];
          v19 = deviceNSArray(v18);
          [v10 setObject:v19 forKey:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v2 = v21;
    [v21 setGroups:v10];
  }

  return v2;
}

id unwrapMTLComputePipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 computeFunction];
  v4 = [v3 baseObject];
  [v2 setComputeFunction:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 pipelineLibrary];
    v6 = [v5 baseObject];
    [v2 setPipelineLibrary:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 functionPointers];
    v8 = unwrapNSArray(v7);
    [v2 setFunctionPointers:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 preloadedLibraries];
    v10 = unwrapNSArray(v9);
    [v2 setPreloadedLibraries:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v1 binaryArchives];
    v12 = unwrapNSArray(v11);
    [v2 setBinaryArchives:v12];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v1 linkedFunctions];
    v14 = unwrapMTLLinkedFunctions(v13);
    [v2 setLinkedFunctions:v14];
  }

  return v2;
}

id deviceMTLComputePipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 computeFunction];
  v4 = DEVICEOBJECT(v3);
  [v2 setComputeFunction:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 pipelineLibrary];
    v6 = DEVICEOBJECT(v5);
    [v2 setPipelineLibrary:v6];
  }

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 functionPointers];
    v8 = deviceNSArray(v7);
    [v2 setFunctionPointers:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 preloadedLibraries];
    v10 = deviceNSArray(v9);
    [v2 setPreloadedLibraries:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v1 binaryArchives];
    v12 = deviceNSArray(v11);
    [v2 setBinaryArchives:v12];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v1 linkedFunctions];
    v14 = deviceMTLLinkedFunctions(v13);
    [v2 setLinkedFunctions:v14];
  }

  return v2;
}

id deviceMTLComputePipelineDescriptorWithoutResourceIndex(void *a1)
{
  v1 = deviceMTLComputePipelineDescriptor(a1);
  [v1 setForceResourceIndex:0];
  [v1 setResourceIndex:_MTLInvalidResourceIndex];

  return v1;
}

id unwrapMTLRenderPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 vertexFunction];
  v4 = [v3 baseObject];
  [v2 setVertexFunction:v4];

  v5 = [v1 fragmentFunction];
  v6 = [v5 baseObject];
  [v2 setFragmentFunction:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 objectFunction];
    v8 = [v7 baseObject];
    [v2 setObjectFunction:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 meshFunction];
    v10 = [v9 baseObject];
    [v2 setMeshFunction:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v1 pipelineLibrary];
    v12 = [v11 baseObject];
    [v2 setPipelineLibrary:v12];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v1 vertexPreloadedLibraries];
    v14 = unwrapNSArray(v13);
    [v2 setVertexPreloadedLibraries:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v1 fragmentPreloadedLibraries];
    v16 = unwrapNSArray(v15);
    [v2 setFragmentPreloadedLibraries:v16];
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v1 objectPreloadedLibraries];
    v18 = unwrapNSArray(v17);
    [v2 setObjectPreloadedLibraries:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v1 meshPreloadedLibraries];
    v20 = unwrapNSArray(v19);
    [v2 setMeshPreloadedLibraries:v20];
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [v1 vertexLinkedFunctions];
    v22 = unwrapMTLLinkedFunctions(v21);
    [v2 setVertexLinkedFunctions:v22];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [v1 fragmentLinkedFunctions];
    v24 = unwrapMTLLinkedFunctions(v23);
    [v2 setFragmentLinkedFunctions:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [v1 objectLinkedFunctions];
    v26 = unwrapMTLLinkedFunctions(v25);
    [v2 setObjectLinkedFunctions:v26];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = [v1 meshLinkedFunctions];
    v28 = unwrapMTLLinkedFunctions(v27);
    [v2 setMeshLinkedFunctions:v28];
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = [v1 binaryArchives];
    v30 = unwrapNSArray(v29);
    [v2 setBinaryArchives:v30];
  }

  return v2;
}

id deviceMTLRenderPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 vertexFunction];
  v4 = DEVICEOBJECT(v3);
  [v2 setVertexFunction:v4];

  v5 = [v1 fragmentFunction];
  v6 = DEVICEOBJECT(v5);
  [v2 setFragmentFunction:v6];

  if (objc_opt_respondsToSelector())
  {
    v7 = [v1 objectFunction];
    v8 = DEVICEOBJECT(v7);
    [v2 setObjectFunction:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v9 = [v1 meshFunction];
    v10 = DEVICEOBJECT(v9);
    [v2 setMeshFunction:v10];
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [v1 pipelineLibrary];
    v12 = DEVICEOBJECT(v11);
    [v2 setPipelineLibrary:v12];
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v1 vertexPreloadedLibraries];
    v14 = deviceNSArray(v13);
    [v2 setVertexPreloadedLibraries:v14];
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = [v1 fragmentPreloadedLibraries];
    v16 = deviceNSArray(v15);
    [v2 setFragmentPreloadedLibraries:v16];
  }

  if (objc_opt_respondsToSelector())
  {
    v17 = [v1 objectPreloadedLibraries];
    v18 = deviceNSArray(v17);
    [v2 setObjectPreloadedLibraries:v18];
  }

  if (objc_opt_respondsToSelector())
  {
    v19 = [v1 meshPreloadedLibraries];
    v20 = deviceNSArray(v19);
    [v2 setMeshPreloadedLibraries:v20];
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = [v1 vertexLinkedFunctions];
    v22 = deviceMTLLinkedFunctions(v21);
    [v2 setVertexLinkedFunctions:v22];
  }

  if (objc_opt_respondsToSelector())
  {
    v23 = [v1 fragmentLinkedFunctions];
    v24 = deviceMTLLinkedFunctions(v23);
    [v2 setFragmentLinkedFunctions:v24];
  }

  if (objc_opt_respondsToSelector())
  {
    v25 = [v1 objectLinkedFunctions];
    v26 = deviceMTLLinkedFunctions(v25);
    [v2 setObjectLinkedFunctions:v26];
  }

  if (objc_opt_respondsToSelector())
  {
    v27 = [v1 meshLinkedFunctions];
    v28 = deviceMTLLinkedFunctions(v27);
    [v2 setMeshLinkedFunctions:v28];
  }

  if (objc_opt_respondsToSelector())
  {
    v29 = [v1 binaryArchives];
    v30 = deviceNSArray(v29);
    [v2 setBinaryArchives:v30];
  }

  return v2;
}

id deviceMTLRenderPipelineDescriptorWithoutResourceIndex(void *a1)
{
  v1 = deviceMTLRenderPipelineDescriptor(a1);
  [v1 setForceResourceIndex:0];
  [v1 setResourceIndex:_MTLInvalidResourceIndex];

  return v1;
}

id unwrapMTLCommandQueueDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 logState];
    v4 = [v3 baseObject];
    [v2 setLogState:v4];
  }

  [v2 setEnableLowLatencyWaitSharedEvent:0];
  [v2 setEnableLowLatencySignalSharedEvent:0];

  return v2;
}

id unwrapMTL4LibraryDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 options];

  if (v3)
  {
    v4 = [v1 options];
    v5 = unwrapMTLCompileOptions(v4);
    [v2 setOptions:v5];
  }

  return v2;
}

id unwrapMTLCompileOptions(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 libraries];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [NSMutableArray alloc];
    v6 = [v1 libraries];
    v7 = [v5 initWithCapacity:{objc_msgSend(v6, "count")}];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [v1 libraries];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v15 + 1) + 8 * i) baseObject];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v2 setLibraries:v7];
  }

  return v2;
}

id unwrapMTL4CompilerDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 pipelineDataSetSerializer];

  if (v3)
  {
    v4 = [v1 pipelineDataSetSerializer];
    v5 = [v4 baseObject];
    [v2 setPipelineDataSetSerializer:v5];
  }

  return v2;
}

id unwrapMTL4FunctionDescriptor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = objc_opt_new();
    v4 = [v2 name];
    [v3 setName:v4];

    v5 = [v2 library];

    v6 = [v5 baseObject];
    [v3 setLibrary:v6];
LABEL_5:

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v1;
    v3 = [v7 copy];
    v5 = [v7 functionDescriptor];

    v6 = unwrapMTL4FunctionDescriptor(v5);
    [v3 setFunctionDescriptor:v6];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v1;
    v3 = objc_opt_new();
    v10 = [v9 functionGraph];
    [v3 setFunctionGraph:v10];

    v11 = [v9 functionDescriptors];

    v12 = unwrapNSArray(v11);
    [v3 setFunctionDescriptors:v12];

    GTMTLCaptureManager_notifyUnsupportedFenumWithMsg(0, "Metal 4 Function Stitching", 0, 0);
  }

  else
  {
    v3 = 0;
  }

LABEL_6:

  return v3;
}

id unwrapMTL4ComputePipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 computeFunctionDescriptor];

  v4 = unwrapMTL4FunctionDescriptor(v3);
  [v2 setComputeFunctionDescriptor:v4];

  OverridePipelineOptions(v2);

  return v2;
}

void OverridePipelineOptions(void *a1)
{
  v4 = a1;
  v1 = [v4 options];

  if (!v1)
  {
    v2 = objc_opt_new();
    [v4 setOptions:v2];
  }

  v3 = [v4 options];
  [v3 setShaderReflection:{objc_msgSend(v3, "shaderReflection") | 3}];
}

id unwrapMTL4MachineLearningPipelineDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 machineLearningFunctionDescriptor];

  v4 = unwrapMTL4FunctionDescriptor(v3);
  [v2 setMachineLearningFunctionDescriptor:v4];

  OverridePipelineOptions(v2);

  return v2;
}

id unwrapMTL4PipelineDescriptor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 copy];
    v4 = [v2 vertexFunctionDescriptor];
    v5 = unwrapMTL4FunctionDescriptor(v4);
    [v3 setVertexFunctionDescriptor:v5];
LABEL_5:

    v8 = [v2 fragmentFunctionDescriptor];

    v9 = unwrapMTL4FunctionDescriptor(v8);
    [v3 setFragmentFunctionDescriptor:v9];
LABEL_6:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v3 = [v2 copy];
    v6 = [v2 objectFunctionDescriptor];
    v7 = unwrapMTL4FunctionDescriptor(v6);
    [v3 setObjectFunctionDescriptor:v7];

    v4 = [v2 meshFunctionDescriptor];
    v5 = unwrapMTL4FunctionDescriptor(v4);
    [v3 setMeshFunctionDescriptor:v5];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v1;
    v3 = [v11 copy];
    v8 = [v11 tileFunctionDescriptor];

    v9 = unwrapMTL4FunctionDescriptor(v8);
    [v3 setTileFunctionDescriptor:v9];
    goto LABEL_6;
  }

  v3 = 0;
LABEL_7:
  OverridePipelineOptions(v3);

  return v3;
}

id unwrapMTL4CompilerTaskOptions(void *a1)
{
  v1 = [a1 copy];

  return v1;
}

id unwrapMTLCommandBufferDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v1 logState];
    v4 = [v3 baseObject];
    [v2 setLogState:v4];
  }

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 deadlineProfile];
    v6 = [v5 baseObject];
    [v2 setDeadlineProfile:v6];
  }

  return v2;
}

id unwrapMTLRenderPassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = [v3 visibilityResultBuffer];
  v7 = [v6 baseObject];
  [v5 setVisibilityResultBuffer:v7];

  v8 = [v3 visibilityResultBuffer];
  [v8 touch];

  v9 = [v3 visibilityResultBuffer];

  if (v4 && v9)
  {
    v10 = [v3 visibilityResultBuffer];
    [v4 addObject:v10];
  }

  v11 = *[v3 _descriptorPrivate];
  for (i = 0; i != 8; ++i)
  {
    v13 = [v11 _descriptorAtIndex:i];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 texture];
      v16 = [v15 baseObject];
      v17 = [v5 colorAttachments];
      v18 = [v17 objectAtIndexedSubscript:i];
      [v18 setTexture:v16];

      v19 = [v14 resolveTexture];
      v20 = [v19 baseObject];
      v21 = [v5 colorAttachments];
      v22 = [v21 objectAtIndexedSubscript:i];
      [v22 setResolveTexture:v20];

      v23 = [v14 texture];
      [v23 touch];

      v24 = [v14 texture];

      if (v4 && v24)
      {
        v25 = [v14 texture];
        [v4 addObject:v25];
      }

      v26 = [v14 resolveTexture];
      [v26 touch];

      v27 = [v14 resolveTexture];

      if (v4 && v27)
      {
        v28 = [v14 resolveTexture];
        [v4 addObject:v28];
      }
    }
  }

  v29 = [v11 _descriptorAtIndex:8];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 texture];
    v32 = [v31 baseObject];
    v33 = [v5 depthAttachment];
    [v33 setTexture:v32];

    v34 = [v30 resolveTexture];
    v35 = [v34 baseObject];
    v36 = [v5 depthAttachment];
    [v36 setResolveTexture:v35];

    v37 = [v30 texture];
    [v37 touch];

    v38 = [v30 texture];

    if (v4 && v38)
    {
      v39 = [v30 texture];
      [v4 addObject:v39];
    }

    v40 = [v30 resolveTexture];
    [v40 touch];

    v41 = [v30 resolveTexture];

    if (v4 && v41)
    {
      v42 = [v30 resolveTexture];
      [v4 addObject:v42];
    }
  }

  v43 = [v11 _descriptorAtIndex:9];

  if (v43)
  {
    v44 = [v43 texture];
    v45 = [v44 baseObject];
    v46 = [v5 stencilAttachment];
    [v46 setTexture:v45];

    v47 = [v43 resolveTexture];
    v48 = [v47 baseObject];
    v49 = [v5 stencilAttachment];
    [v49 setResolveTexture:v48];

    v50 = [v43 texture];
    [v50 touch];

    v51 = [v43 texture];

    if (v4 && v51)
    {
      v52 = [v43 texture];
      [v4 addObject:v52];
    }

    v53 = [v43 resolveTexture];
    [v53 touch];

    v54 = [v43 resolveTexture];

    if (v4 && v54)
    {
      v55 = [v43 resolveTexture];
      [v4 addObject:v55];
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v56 = [v3 rasterizationRateMap];
    v57 = [v56 baseObject];
    [v5 setRasterizationRateMap:v57];

    v58 = [v3 rasterizationRateMap];
    [v58 touch];

    v59 = [v3 rasterizationRateMap];

    if (v4)
    {
      if (v59)
      {
        v60 = [v3 rasterizationRateMap];
        [v4 addObject:v60];
      }
    }
  }

  v61 = [v3 sampleBufferAttachments];
  for (j = 0; j != 4; ++j)
  {
    v63 = [v61 _descriptorAtIndex:j];
    v64 = v63;
    if (v63)
    {
      v65 = [v63 sampleBuffer];
      v66 = [v65 baseObject];
      v67 = [v5 sampleBufferAttachments];
      v68 = [v67 objectAtIndexedSubscript:j];
      [v68 setSampleBuffer:v66];

      v69 = [v64 sampleBuffer];
      [v69 touch];

      v70 = [v64 sampleBuffer];

      if (v4)
      {
        if (v70)
        {
          v71 = [v64 sampleBuffer];
          [v4 addObject:v71];
        }
      }
    }
  }

  return v5;
}

id unwrapMTL4RenderPassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = [v3 visibilityResultBuffer];
  v7 = [v6 baseObject];
  [v5 setVisibilityResultBuffer:v7];

  v8 = [v3 visibilityResultBuffer];
  [v8 touch];

  v9 = [v3 visibilityResultBuffer];

  if (v4 && v9)
  {
    v10 = [v3 visibilityResultBuffer];
    [v4 addObject:v10];
  }

  v11 = [v3 colorAttachments];
  for (i = 0; i != 8; ++i)
  {
    v13 = [v11 objectAtIndexedSubscript:i];
    v14 = v13;
    if (v13)
    {
      v15 = [v13 texture];
      v16 = [v15 baseObject];
      v17 = [v5 colorAttachments];
      v18 = [v17 objectAtIndexedSubscript:i];
      [v18 setTexture:v16];

      v19 = [v14 resolveTexture];
      v20 = [v19 baseObject];
      v21 = [v5 colorAttachments];
      v22 = [v21 objectAtIndexedSubscript:i];
      [v22 setResolveTexture:v20];

      v23 = [v14 texture];
      [v23 touch];

      v24 = [v14 texture];

      if (v4 && v24)
      {
        v25 = [v14 texture];
        [v4 addObject:v25];
      }

      v26 = [v14 resolveTexture];
      [v26 touch];

      v27 = [v14 resolveTexture];

      if (v4 && v27)
      {
        v28 = [v14 resolveTexture];
        [v4 addObject:v28];
      }
    }
  }

  v29 = [v3 depthAttachment];
  v30 = v29;
  if (v29)
  {
    v31 = [v29 texture];
    v32 = [v31 baseObject];
    v33 = [v5 depthAttachment];
    [v33 setTexture:v32];

    v34 = [v30 resolveTexture];
    v35 = [v34 baseObject];
    v36 = [v5 depthAttachment];
    [v36 setResolveTexture:v35];

    v37 = [v30 texture];
    [v37 touch];

    v38 = [v30 texture];

    if (v4 && v38)
    {
      v39 = [v30 texture];
      [v4 addObject:v39];
    }

    v40 = [v30 resolveTexture];
    [v40 touch];

    v41 = [v30 resolveTexture];

    if (v4 && v41)
    {
      v42 = [v30 resolveTexture];
      [v4 addObject:v42];
    }
  }

  v43 = [v3 stencilAttachment];

  if (v43)
  {
    v44 = [v43 texture];
    v45 = [v44 baseObject];
    v46 = [v5 stencilAttachment];
    [v46 setTexture:v45];

    v47 = [v43 resolveTexture];
    v48 = [v47 baseObject];
    v49 = [v5 stencilAttachment];
    [v49 setResolveTexture:v48];

    v50 = [v43 texture];
    [v50 touch];

    v51 = [v43 texture];

    if (v4 && v51)
    {
      v52 = [v43 texture];
      [v4 addObject:v52];
    }

    v53 = [v43 resolveTexture];
    [v53 touch];

    v54 = [v43 resolveTexture];

    if (v4 && v54)
    {
      v55 = [v43 resolveTexture];
      [v4 addObject:v55];
    }
  }

  v56 = [v3 rasterizationRateMap];
  v57 = [v56 baseObject];
  [v5 setRasterizationRateMap:v57];

  v58 = [v3 rasterizationRateMap];
  [v58 touch];

  v59 = [v3 rasterizationRateMap];

  if (v4 && v59)
  {
    v60 = [v3 rasterizationRateMap];
    [v4 addObject:v60];
  }

  return v5;
}

id unwrapMTLBlitPassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = 0;
  v7 = *[v3 _descriptorPrivate];
  do
  {
    v8 = [v7 _descriptorAtIndex:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 sampleBuffer];
      v11 = [v10 baseObject];
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:v6];
      [v13 setSampleBuffer:v11];

      v14 = [v9 sampleBuffer];
      [v14 touch];

      v15 = [v9 sampleBuffer];

      if (v4)
      {
        if (v15)
        {
          v16 = [v9 sampleBuffer];
          [v4 addObject:v16];
        }
      }
    }

    ++v6;
  }

  while (v6 != 4);

  return v5;
}

id unwrapMTLComputePassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = 0;
  v7 = *([v3 _descriptorPrivate] + 1);
  do
  {
    v8 = [v7 _descriptorAtIndex:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 sampleBuffer];
      v11 = [v10 baseObject];
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:v6];
      [v13 setSampleBuffer:v11];

      v14 = [v9 sampleBuffer];
      [v14 touch];

      v15 = [v9 sampleBuffer];

      if (v4)
      {
        if (v15)
        {
          v16 = [v9 sampleBuffer];
          [v4 addObject:v16];
        }
      }
    }

    ++v6;
  }

  while (v6 != 4);

  return v5;
}

id unwrapMTLResourceStatePassDescriptor_(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 copy];
  v6 = 0;
  v7 = *[v3 _descriptorPrivate];
  do
  {
    v8 = [v7 _descriptorAtIndex:v6];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 sampleBuffer];
      v11 = [v10 baseObject];
      v12 = [v5 sampleBufferAttachments];
      v13 = [v12 objectAtIndexedSubscript:v6];
      [v13 setSampleBuffer:v11];

      v14 = [v9 sampleBuffer];
      [v14 touch];

      v15 = [v9 sampleBuffer];

      if (v4)
      {
        if (v15)
        {
          v16 = [v9 sampleBuffer];
          [v4 addObject:v16];
        }
      }
    }

    ++v6;
  }

  while (v6 != 4);

  return v5;
}

id unwrapMTLStitchedLibraryDescriptor(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 functions];
  v4 = unwrapNSArray(v3);
  [v2 setFunctions:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 binaryArchives];
    v6 = unwrapNSArray(v5);
    [v2 setBinaryArchives:v6];
  }

  return v2;
}

id unwrapMTLStitchedLibraryDescriptorSPI(void *a1)
{
  v1 = a1;
  v2 = [v1 copy];
  v3 = [v1 functions];
  v4 = unwrapNSArray(v3);
  [v2 setFunctions:v4];

  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 binaryArchives];
    v6 = unwrapNSArray(v5);
    [v2 setBinaryArchives:v6];
  }

  return v2;
}

id unwrapMTLAccelerationStructureDescriptor(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v3 = [v1 copy];
        v80 = [v3 instanceDescriptorBuffer];
        v81 = [v80 baseObject];
        [v3 setInstanceDescriptorBuffer:v81];

        v82 = [v3 instanceCountBuffer];
        v83 = [v82 baseObject];
        [v3 setInstanceCountBuffer:v83];

        v84 = [v3 motionTransformBuffer];
        v85 = [v84 baseObject];
        [v3 setMotionTransformBuffer:v85];

        v86 = [v3 motionTransformCountBuffer];
        v87 = [v86 baseObject];
        [v3 setMotionTransformCountBuffer:v87];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v88 = [v1 copy];
        }

        else
        {
          v88 = v1;
        }

        v3 = v88;
      }

      goto LABEL_74;
    }

    v90 = v1;
    v3 = [v1 copy];
    v11 = [v3 geometryDescriptors];
    v12 = [v11 mutableCopy];

    v13 = [v3 geometryDescriptors];
    v14 = [v13 count];

    if (!v14)
    {
LABEL_68:
      [v3 setGeometryDescriptors:v12];

      v1 = v90;
      goto LABEL_74;
    }

    v15 = 0;
    v91 = v12;
    v92 = v3;
    while (1)
    {
      v16 = [v3 geometryDescriptors];
      v17 = [v16 objectAtIndexedSubscript:v15];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        v19 = [v18 vertexBuffer];
        v20 = [v19 baseObject];
        [v18 setVertexBuffer:v20];

        v21 = [v18 indexBuffer];
        v22 = [v21 baseObject];
        [v18 setIndexBuffer:v22];

        if (objc_opt_respondsToSelector())
        {
          v23 = [v18 transformationMatrixBuffer];
          v24 = [v23 baseObject];
          [v18 setTransformationMatrixBuffer:v24];
          goto LABEL_13;
        }

        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = [v17 copy];
        v23 = [v18 boundingBoxBuffer];
        v24 = [v23 baseObject];
        [v18 setBoundingBoxBuffer:v24];
LABEL_13:

LABEL_14:
        if (objc_opt_respondsToSelector())
        {
          v25 = [v18 primitiveDataBuffer];
          v26 = [v25 baseObject];
          [v18 setPrimitiveDataBuffer:v26];
        }

        goto LABEL_63;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = v16;
        v18 = [v17 copy];
        v27 = [v18 indexBuffer];
        v28 = [v27 baseObject];
        [v18 setIndexBuffer:v28];

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v29 = [v18 vertexBuffers];
        v30 = [v29 countByEnumeratingWithState:&v102 objects:v106 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v103;
          do
          {
            for (i = 0; i != v31; i = i + 1)
            {
              if (*v103 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v102 + 1) + 8 * i);
              v35 = [v34 buffer];
              v36 = [v35 baseObject];
              [v34 setBuffer:v36];
            }

            v31 = [v29 countByEnumeratingWithState:&v102 objects:v106 count:16];
          }

          while (v31);
        }

        if (objc_opt_respondsToSelector())
        {
          v37 = [v18 transformationMatrixBuffer];
          v38 = [v37 baseObject];
          [v18 setTransformationMatrixBuffer:v38];
        }

        v12 = v91;
        v3 = v92;
        if (objc_opt_respondsToSelector())
        {
          v39 = [v18 primitiveDataBuffer];
          v40 = [v39 baseObject];
          [v18 setPrimitiveDataBuffer:v40];
        }

        goto LABEL_62;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v93 = v16;
        v18 = [v17 copy];
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v41 = [v18 boundingBoxBuffers];
        v42 = [v41 countByEnumeratingWithState:&v102 objects:v106 count:16];
        if (v42)
        {
          v43 = v42;
          v44 = *v103;
          do
          {
            for (j = 0; j != v43; j = j + 1)
            {
              if (*v103 != v44)
              {
                objc_enumerationMutation(v41);
              }

              v46 = *(*(&v102 + 1) + 8 * j);
              v47 = [v46 buffer];
              v48 = [v47 baseObject];
              [v46 setBuffer:v48];
            }

            v43 = [v41 countByEnumeratingWithState:&v102 objects:v106 count:16];
          }

          while (v43);
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_61;
        }

        v49 = [v18 primitiveDataBuffer];
        v50 = [v49 baseObject];
        [v18 setPrimitiveDataBuffer:v50];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v51 = v16;
          v18 = [v17 copy];
          v52 = [v18 controlPointBuffer];
          v53 = [v52 baseObject];
          [v18 setControlPointBuffer:v53];

          v54 = [v18 radiusBuffer];
          v55 = [v54 baseObject];
          [v18 setRadiusBuffer:v55];

          v56 = [v18 indexBuffer];
          v57 = [v56 baseObject];
          [v18 setIndexBuffer:v57];

          if (objc_opt_respondsToSelector())
          {
            v58 = [v18 primitiveDataBuffer];
            v59 = [v58 baseObject];
            [v18 setPrimitiveDataBuffer:v59];
          }

          v16 = v51;
          goto LABEL_63;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = v17;
          goto LABEL_63;
        }

        v93 = v16;
        v18 = [v17 copy];
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        v60 = [v18 controlPointBuffers];
        v61 = [v60 countByEnumeratingWithState:&v98 objects:v106 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v99;
          do
          {
            for (k = 0; k != v62; k = k + 1)
            {
              if (*v99 != v63)
              {
                objc_enumerationMutation(v60);
              }

              v65 = *(*(&v98 + 1) + 8 * k);
              v66 = [v65 buffer];
              v67 = [v66 baseObject];
              [v65 setBuffer:v67];
            }

            v62 = [v60 countByEnumeratingWithState:&v98 objects:v106 count:16];
          }

          while (v62);
        }

        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v68 = [v18 radiusBuffers];
        v69 = [v68 countByEnumeratingWithState:&v94 objects:&v102 count:16];
        if (v69)
        {
          v70 = v69;
          v71 = *v95;
          do
          {
            for (m = 0; m != v70; m = m + 1)
            {
              if (*v95 != v71)
              {
                objc_enumerationMutation(v68);
              }

              v73 = *(*(&v94 + 1) + 8 * m);
              v74 = [v73 buffer];
              v75 = [v74 baseObject];
              [v73 setBuffer:v75];
            }

            v70 = [v68 countByEnumeratingWithState:&v94 objects:&v102 count:16];
          }

          while (v70);
        }

        if (objc_opt_respondsToSelector())
        {
          v76 = [v18 primitiveDataBuffer];
          v77 = [v76 baseObject];
          [v18 setPrimitiveDataBuffer:v77];
        }

        v49 = [v18 indexBuffer];
        v50 = [v49 baseObject];
        [v18 setIndexBuffer:v50];
      }

LABEL_61:
      v12 = v91;
      v3 = v92;
LABEL_62:
      v16 = v93;
LABEL_63:

      [v12 setObject:v18 atIndexedSubscript:v15];
      ++v15;
      v78 = [v3 geometryDescriptors];
      v79 = [v78 count];

      if (v79 <= v15)
      {
        goto LABEL_68;
      }
    }
  }

  v2 = v1;
  v3 = [v2 copy];
  v4 = [v2 instancedAccelerationStructures];

  if (!v4)
  {
    [v3 setInstancedAccelerationStructures:0];
  }

  v5 = [v3 instanceDescriptorBuffer];
  v6 = [v5 baseObject];
  [v3 setInstanceDescriptorBuffer:v6];

  v7 = [v3 instancedAccelerationStructures];
  v8 = unwrapNSArray(v7);
  [v3 setInstancedAccelerationStructures:v8];

  v9 = [v3 motionTransformBuffer];
  v10 = [v9 baseObject];
  [v3 setMotionTransformBuffer:v10];

LABEL_74:

  return v3;
}