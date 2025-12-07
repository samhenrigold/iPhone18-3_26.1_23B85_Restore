void *SCNDecodeMorpherUsingAnimCodec(void *a1, void *a2)
{
  v4 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"morpherCompressedData"];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_msgSend(a2 "geometry")];
  v45 = 0;
  v43 = 0u;
  *__p = 0u;
  *v41 = 0u;
  *v42 = 0u;
  Mesh = C3DGeometryGetMesh(v6, v7);
  fillMesh(v41, Mesh);
  Info = AnimCodec::AnimDecoder::getInfo([v5 bytes], objc_msgSend(v5, "length"), v38);
  if (!Info)
  {
    v13 = (0xAAAAAAAAAAAAAAABLL * ((v41[1] - v41[0]) >> 2));
    v14 = v42[1];
    v15 = v43;
    v16 = __p[0];
    v17 = __p[1];
    v18 = v39;
    memset(&v37, 0, sizeof(v37));
    std::vector<float>::resize(&v37, 3 * v13 * v39);
    v19 = [v5 bytes];
    v20 = [v5 length];
    v21 = AnimCodec::AnimDecoder::decompress(&v40, v19, v20, v14, v16, 3, v13, (v15 - v14) >> 2, (v17 - v16) >> 2, v37.__begin_);
    if (v21)
    {
      v23 = scn_default_log(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        SCNDecodeMorpherUsingAnimCodec_cold_2();
      }
    }

    else
    {
      v25 = [a1 decodeObjectOfClass:objc_opt_class() forKey:@"morpherMetaData"];
      v27 = v25;
      if (v25)
      {
        if ([v25 length] < (v18 + 2))
        {
          __assert_rtn("SCNDecodeMorpherUsingAnimCodec", "SCNMorpherAnimCodecSupport.mm", 351, "morpherMetaData.length >= (2+targetCount)");
        }

        v28 = [v27 bytes];
        v29 = *v28;
        v30 = v28[1];
        v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:v18];
        if (v18)
        {
          v31 = 0;
          v32 = v28 + 2;
          v33 = *MEMORY[0x277CBECE8];
          do
          {
            v34 = targetGeometryFromAnimation(&v37, v41, v31, 3, v29, v30);
            [v12 addObject:v34];
            v35 = CFStringCreateWithCString(v33, v32, 0x8000100u);
            [(SCNGeometry *)v34 setName:v35];
            if (v35)
            {
              CFRelease(v35);
            }

            v32 += strlen(v32) + 1;
            ++v31;
          }

          while (v18 != v31);
        }

        goto LABEL_11;
      }

      v36 = scn_default_log(0, v26);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        SCNDecodeMorpherUsingAnimCodec_cold_3();
      }
    }

    v12 = 0;
LABEL_11:
    if (v37.__begin_)
    {
      v37.__end_ = v37.__begin_;
      operator delete(v37.__begin_);
    }

    goto LABEL_13;
  }

  v11 = scn_default_log(Info, v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    SCNDecodeMorpherUsingAnimCodec_cold_1();
  }

  v12 = 0;
LABEL_13:
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v42[1])
  {
    *&v43 = v42[1];
    operator delete(v42[1]);
  }

  if (v41[0])
  {
    v41[1] = v41[0];
    operator delete(v41[0]);
  }

  return v12;
}

void sub_21C1B1940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (__p)
  {
    operator delete(__p);
  }

  vmesh::StaticAdjacencyInformation<Pair>::~StaticAdjacencyInformation(va);
  _Unwind_Resume(a1);
}

void std::vector<AnimCodec::Vector3<float>>::resize(void *result, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((result[1] - *result) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<AnimCodec::Vector3<float>>::__append(result, v4);
  }

  else if (!v3)
  {
    result[1] = *result + 12 * a2;
  }
}

void std::vector<AnimCodec::Vector3<float>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, v9);
    }

    __p = 0;
    v13 = 12 * v6;
    v15 = 0;
    v11 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero((12 * v6), v11);
    v14 = 12 * v6 + v11;
    std::vector<AnimCodec::Vector3<float>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 12) % 0xC + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_21C1B1B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<AnimCodec::Vector3<float>>::__swap_out_circular_buffer(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      *v6 = *v5;
      v6[1] = v5[1];
      v6[2] = v5[2];
      v5 += 3;
      v6 += 3;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t C3DGLSLGetUniformType(int a1, GLuint program, int a3)
{
  v11 = *MEMORY[0x277D85DE8];
  *params = 0;
  *size = 0;
  glGetProgramiv(program, 0x8B86u, params);
  if (params[0] < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    glGetActiveUniform(program, v5, 256, &size[1], size, &params[1], name);
    if (glGetUniformLocation(program, name) == a3)
    {
      break;
    }

    if (++v5 >= params[0])
    {
      return 0;
    }
  }

  if (params[1] <= 35667)
  {
    if (params[1] <= 35664)
    {
      switch(params[1])
      {
        case 5124:
          return 2;
        case 5126:
          return 1;
        case 35664:
          return 8;
      }

      return 0;
    }

    if (params[1] == 35665)
    {
      return 9;
    }

    else if (params[1] == 35666)
    {
      return 10;
    }

    else
    {
      return 18;
    }
  }

  else
  {
    if (params[1] <= 35675)
    {
      switch(params[1])
      {
        case 35668:
          return 19;
        case 35669:
          return 20;
        case 35675:
          return 12;
      }

      return 0;
    }

    result = 5;
    if (params[1] > 35679)
    {
      if (params[1] == 35680)
      {
        return result;
      }

      v7 = 35682;
    }

    else
    {
      if (params[1] == 35676)
      {
        return 11;
      }

      v7 = 35678;
    }

    if (params[1] != v7)
    {
      return 0;
    }
  }

  return result;
}

double C3DGeometryInitSubdivision(uint64_t a1)
{
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 137) = C3DWasLinkedBeforeMajorOSYear2017() ^ 1;
  *&result = 17105153;
  *(a1 + 138) = 17105153;
  return result;
}

void C3DGeometryFinalizeSubdivision(__C3DGeometry *a1)
{
  C3DSubdivisionOsdGPUContextDestroy(a1);
  C3DGeometryDestroySubdivTopologyInfo(a1);
  var5 = a1->var10.var5;
  if (var5)
  {
    CFRelease(var5);
    a1->var10.var5 = 0;
  }

  var4 = a1->var10.var4;
  if (var4)
  {
    CFRelease(var4);
    a1->var10.var4 = 0;
  }

  var3 = a1->var10.var3;
  if (var3)
  {
    CFRelease(var3);
    a1->var10.var3 = 0;
  }
}

__C3DMeshElement *C3DGeometryCopySubdivision(uint64_t a1, __C3DGeometry *a2)
{
  a2->var10.var2.var3 = *(a1 + 141);
  *&a2->var10.var0 = *(a1 + 136);
  a2->var10.var2.var2 = *(a1 + 140);
  C3DSubdivisionOsdGPUContextDestroy(a2);
  C3DGeometryDestroySubdivTopologyInfo(a2);
  var5 = a2->var10.var5;
  if (var5)
  {
    CFRelease(var5);
    a2->var10.var5 = 0;
  }

  var4 = a2->var10.var4;
  v6 = *(a1 + 152);
  if (var4 != v6)
  {
    if (var4)
    {
      CFRelease(a2->var10.var4);
      a2->var10.var4 = 0;
      v6 = *(a1 + 152);
    }

    if (v6)
    {
      v6 = CFRetain(v6);
    }

    a2->var10.var4 = v6;
  }

  var3 = a2->var10.var3;
  result = *(a1 + 144);
  if (var3 != result)
  {
    if (var3)
    {
      CFRelease(a2->var10.var3);
      a2->var10.var3 = 0;
      result = *(a1 + 144);
    }

    if (result)
    {
      result = CFRetain(result);
    }

    a2->var10.var3 = result;
  }

  return result;
}

BOOL C3DGeometryMeshElementsSupportsSubdivision(__C3DGeometry *a1, uint64_t a2)
{
  var12 = a1->var12;
  v3 = var12 & 0xC;
  if ((var12 & 0xC) == 0)
  {
    Mesh = C3DGeometryGetMesh(a1, a2);
    MeshElements = C3DMeshGetMeshElements(Mesh, 0);
    Count = CFArrayGetCount(MeshElements);
    if (Count < 1)
    {
LABEL_6:
      v3 = 4;
    }

    else
    {
      v8 = Count;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MeshElements, v9);
        Type = C3DMeshElementGetType(ValueAtIndex, v11);
        if (!C3DMeshElementTypeDefinesSurface(Type))
        {
          break;
        }

        if (v8 == ++v9)
        {
          goto LABEL_6;
        }
      }

      v3 = 8;
    }

    a1->var12 = v3 | var12;
  }

  return v3 == 4;
}

void C3DGeometryOsdSetSubdivisionLevel(__C3DGeometry *a1, uint64_t a2)
{
  v2 = a2;
  var0 = a1->var10.var0;
  if (var0 != a2)
  {
    a1->var10.var0 = a2;
    var5 = a1->var10.var5;
    if (var5)
    {
      CFRelease(var5);
      a1->var10.var5 = 0;
    }

    C3DNotifyGeometryDidChange(a1);
  }

  v6 = a1->var11.var0;
  v7 = a1->var11.var0;

  C3DGeometryOpenSubdivGPUParameterDidChange(a1, v6, v7, var0, v2);
}

void C3DGeometryOpenSubdivGPUParameterDidChange(__C3DGeometry *a1, uint64_t a2, int a3, int a4, int a5)
{
  v8 = a2;
  if ((C3DSubdivisionOsdGPUContextInvalidateIfNeeded(a1, a2) & 1) == 0 && (a3 == 4 ? (v11 = a5 == 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), v8 == 4 ? (v13 = a4 == 0) : (v13 = 1), v13 ? (v14 = 0) : (v14 = 1), v14 == v12))
  {
    if ((v8 != 0) != (a3 == 0))
    {
      return;
    }

    v15 = 6;
  }

  else
  {
    v15 = 7;
  }

  v16 = C3DGetScene(a1, v10);

  C3DScenePostPipelineEvent(v16, v15, a1, 0);
}

void C3DGeometryOsdSetWantsAdaptiveSubdivision(__C3DGeometry *a1, _BOOL4 a2)
{
  if (a1->var10.var1 != a2)
  {
    a1->var10.var1 = a2;
    var5 = a1->var10.var5;
    if (var5)
    {
      CFRelease(var5);
      a1->var10.var5 = 0;
    }

    C3DNotifyGeometryDidChange(a1);
  }

  var0 = a1->var11.var0;
  v5 = a1->var10.var0;
  v6 = a1->var11.var0;

  C3DGeometryOpenSubdivGPUParameterDidChange(a1, var0, v6, v5, v5);
}

void C3DGeometryOsdSetSubdivisionSettings(uint64_t result, int a2)
{
  if (a2 != *(result + 138))
  {
    *(result + 138) = a2;
    v3 = *(result + 160);
    if (v3)
    {
      CFRelease(v3);
      *(result + 160) = 0;
    }

    C3DNotifyGeometryDidChange(result);
    v4 = *(result + 184);
    v5 = *(result + 136);
    v6 = *(result + 184);

    C3DGeometryOpenSubdivGPUParameterDidChange(result, v4, v6, v5, v5);
  }
}

void C3DGeometryOsdSetEdgeCreasesSource(__C3DGeometry *a1, __C3DMeshSource *cf)
{
  var4 = a1->var10.var4;
  if (var4 != cf)
  {
    if (var4)
    {
      CFRelease(var4);
      a1->var10.var4 = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1->var10.var4 = v5;
    var5 = a1->var10.var5;
    if (var5)
    {
      CFRelease(var5);
      a1->var10.var5 = 0;
    }

    C3DNotifyGeometryDidChange(a1);
  }

  C3DGeometryInvalidateSubdivCreaseAndCornerTopologyInfo(a1);
  var0 = a1->var11.var0;
  v8 = a1->var10.var0;
  v9 = a1->var11.var0;

  C3DGeometryOpenSubdivGPUParameterDidChange(a1, var0, v9, v8, v8);
}

void C3DGeometryOsdSetEdgeCreasesElement(__C3DGeometry *a1, __C3DMeshElement *cf)
{
  var3 = a1->var10.var3;
  if (var3 != cf)
  {
    if (var3)
    {
      CFRelease(var3);
      a1->var10.var3 = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1->var10.var3 = v5;
    var5 = a1->var10.var5;
    if (var5)
    {
      CFRelease(var5);
      a1->var10.var5 = 0;
    }

    C3DNotifyGeometryDidChange(a1);
  }

  C3DGeometryInvalidateSubdivCreaseAndCornerTopologyInfo(a1);
  var0 = a1->var11.var0;
  v8 = a1->var10.var0;
  v9 = a1->var11.var0;

  C3DGeometryOpenSubdivGPUParameterDidChange(a1, var0, v9, v8, v8);
}

unint64_t C3DGeometryOpenSubdivAuthoringEnvironmentColorForSharpness(float a1)
{
  v1 = a1 * 0.5;
  if ((a1 * 0.5) > 1.0)
  {
    v1 = 1.0;
  }

  v2 = 2.0 - (a1 * 0.5);
  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  return LODWORD(v1) | (LODWORD(v2) << 32);
}

void C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases(uint64_t a1, uint64_t a2)
{
  Mesh = C3DGeometryGetMesh(a1, a2);
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(Mesh, 0, 0);
  v8 = a1 + 144;
  v6 = *(a1 + 144);
  v7 = *(v8 + 8);
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v10 = ChannelForSourceWithSemanticAtIndex;
    IndicesChannelCount = C3DMeshElementGetIndicesChannelCount(v6);
    if (IndicesChannelCount != 1)
    {
      v19 = scn_default_log(IndicesChannelCount, v12);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases_cold_1(v19);
      }
    }

    Accessor = C3DMeshSourceGetAccessor(v7, v12, v13, v14, v15, v16, v17, v18);
    PrimitiveCount = C3DMeshElementGetPrimitiveCount(v6);
    ElementsCount = C3DMeshGetElementsCount(Mesh, v22);
    if (ElementsCount >= 1)
    {
      v24 = ElementsCount;
      for (i = 0; i != v24; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(Mesh, i, 0);
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        C3DMeshElementGetContent(ElementAtIndex, v10, &v29);
        v28[0] = v29;
        v28[1] = v30;
        v28[2] = v31;
        v28[3] = v32;
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 0x40000000;
        v27[2] = __C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases_block_invoke;
        v27[3] = &unk_2783021A8;
        v27[6] = v6;
        v27[7] = 0;
        v27[8] = Accessor;
        v27[4] = a2;
        v27[5] = PrimitiveCount;
        C3DIndicesContentEnumeratePrimitives(v28, v27, v31);
      }
    }
  }
}

uint64_t __C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCreases_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v5 = result;
    v6 = 0;
    v7 = a4;
    do
    {
      v8 = *(a3 + 4 * v6++);
      v9 = v6;
      if (v6 == v7)
      {
        v9 = 0;
      }

      v10 = *(a3 + 4 * v9);
      v11 = 0.0;
      if (*(v5 + 40) >= 1)
      {
        v12 = 0;
        while (1)
        {
          Index = C3DMeshElementGetIndex(*(v5 + 48), v12, 0, *(v5 + 56));
          v14 = C3DMeshElementGetIndex(*(v5 + 48), v12, 1, *(v5 + 56));
          if (v8 == Index && v10 == v14)
          {
            break;
          }

          if (v8 == v14 && v10 == Index)
          {
            break;
          }

          if (++v12 >= *(v5 + 40))
          {
            goto LABEL_18;
          }
        }

        v11 = *C3DSourceAccessorGetValuePtrAtIndex(*(v5 + 64), v12);
      }

LABEL_18:
      result = (*(*(v5 + 32) + 16))(v11);
    }

    while (v6 != v7);
  }

  return result;
}

uint64_t C3DGeometryOpenSubdivAuthoringEnvironmentEnumerateCorners(uint64_t a1, uint64_t a2)
{
  Mesh = C3DGeometryGetMesh(a1, a2);
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 0, 0, 0);
  result = C3DMeshGetSourceWithSemanticAtIndex(Mesh, 7, 0, 0);
  if (result)
  {
    Accessor = C3DMeshSourceGetAccessor(result, v6, v7, v8, v9, v10, v11, v12);
    result = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v14);
    if (result >= 1)
    {
      v15 = result;
      for (i = 0; i != v15; ++i)
      {
        ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, i);
        result = (*(a2 + 16))(a2, i, *ValuePtrAtIndex);
      }
    }
  }

  return result;
}

uint64_t __C3DShapeGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DShapeGetTypeID_typeID = result;
  return result;
}

uint64_t C3DShapeCreate(uint64_t a1)
{
  if (C3DShapeGetTypeID_onceToken != -1)
  {
    C3DShapeCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DShapeGetTypeID_typeID, 40);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  C3DShapeInit(Instance, v5);
  return Instance;
}

void C3DShapeInit(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = CGPathRetain(*(a2 + 24));
  v4 = *(a2 + 16);
  v5[0] = *a2;
  v5[1] = v4;
  v5[2] = *(a2 + 32);
  v6 = *(a2 + 48);
  C3DShapeBuildConnectedComponents(a1, v5);
  C3DShapeBuildDelaunayTriangulation(a1);
}

void C3DShapeFinalize(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      free(v2);
    }

    if (*(a1 + 48))
    {
      v3 = 0;
      do
      {
        v4 = *(a1 + 40) + 32 * v3;
        if (*(v4 + 8))
        {
          v5 = 0;
          v6 = 0;
          do
          {
            free(*(*v4 + v5));
            ++v6;
            v4 = *(a1 + 40) + 32 * v3;
            v5 += 56;
          }

          while (v6 < *(v4 + 8));
        }

        free(*v4);
        free(*(*(a1 + 40) + 32 * v3++ + 16));
      }

      while (v3 < *(a1 + 48));
    }

    free(*(a1 + 40));
    v7 = *(a1 + 16);

    CGPathRelease(v7);
  }
}

const void *C3DShapeGeometryGetMeshForC3DKitNeeds(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = *(a1 + 64);
  if (!result || (*a2 == *a3 ? (v8 = *(a2 + 8) == a3[1]) : (v8 = 0), !v8))
  {
    result = *(a1 + 272);
    if (*a2 != *(a1 + 280) || *(a2 + 8) != *(a1 + 288))
    {
      if (result)
      {
        CFRelease(result);
      }

      *(a1 + 280) = *a2;
      result = (*(a4 + 16))(a4);
      *(a1 + 272) = result;
    }
  }

  return result;
}

void C3DShapeGeometryResolveMeshForC3DKitNeeds(void *a1, void *a2)
{
  if (!a1[8])
  {
    v3 = a1[34];
    if (v3)
    {
      if (*a2 == a1[35] && a2[1] == a1[36])
      {
        a1[8] = CFRetain(v3);
        v3 = a1[34];
      }

      CFRelease(v3);
      a1[35] = 0;
      a1[36] = 0;
      a1[34] = 0;
    }
  }
}

void C3DShapeGeometryValidate(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = CFGetTypeID(a1);
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  if (v3 != C3DShapeGeometryGetTypeID_typeID)
  {
    C3DShapeGeometryValidate_cold_2();
  }

  *md = 0;
  v29 = 0;
  C3DShapeGeometryGetC3DKitParameters(a1, &data, v2);
  CC_MD5(&data, 0x38u, md);
  C3DShapeGeometryResolveMeshForC3DKitNeeds(a1, md);
  if (!*(a1 + 64))
  {
    v4 = *(a1 + 216);
    v5 = *(a1 + 224);
    v21 = *(a1 + 232);
    v22 = *(a1 + 248);
    v23 = *(a1 + 264);
    v6 = v5 * 0.5;
    if (v6 <= *(a1 + 228))
    {
      v7 = v6;
    }

    else
    {
      v7 = *(a1 + 228);
    }

    *&data = *(a1 + 216);
    *(&data + 1) = __PAIR64__(LODWORD(v7), LODWORD(v5));
    v8 = *(a1 + 248);
    v25 = *(a1 + 232);
    v26 = v8;
    v27 = *(a1 + 264);
    v9 = C3DShapeCreate(&data);
    *&data = v4;
    *(&data + 1) = __PAIR64__(LODWORD(v7), LODWORD(v5));
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v10 = C3DMeshCreateShape(v9, &data);
    if (v10)
    {
      v12 = v10;
      C3DGeometrySetMesh(a1, v10);
      CFRelease(v12);
      if (!v9)
      {
        return;
      }

      goto LABEL_10;
    }

    v13 = scn_default_log(0, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryValidate_cold_3(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    C3DGeometrySetMesh(a1, 0);
    if (v9)
    {
LABEL_10:
      CFRelease(v9);
    }
  }
}

uint64_t C3DShapeGeometryGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  return C3DShapeGeometryGetTypeID_typeID;
}

void C3DShapeGeometryGetC3DKitParameters(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = C3DShapeGeometryGetPrimitiveType(a1, a3);
  *(a2 + 8) = C3DShapeGeometryGetExtrusionDepth(a1, v5);
  *(a2 + 16) = C3DShapeGeometryGetChamferRadius(a1, v6);
  *(a2 + 32) = C3DShapeGeometryGetDiscretizedStraightLineMaxLength(a1, v7);
  v8 = *(a1 + 264);
  *(a2 + 40) = *(a1 + 248);
  *(a2 + 48) = v8;
}

void C3DTextGeometryValidate(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x277D85DE8];
  *md = 0;
  v39 = 0;
  C3DTextGeometryGetC3DKitParameters(a1, &data, a2);
  CC_MD5(&data, 0x80u, md);
  C3DShapeGeometryResolveMeshForC3DKitNeeds(a1, md);
  if (!*(a1 + 64))
  {
    C3DTextGeometryComputeCTFrameIfNeeded(a1);
    v3 = (a1 + 336);
    if (*(a1 + 329))
    {
      v4 = (a1 + 344);
    }

    else
    {
      v4 = (MEMORY[0x277CBF348] + 8);
    }

    if (!*(a1 + 329))
    {
      v3 = MEMORY[0x277CBF348];
    }

    v5 = *v3;
    v6 = *v4;
    v7 = *(a1 + 216);
    v9 = *(a1 + 224);
    v8 = *(a1 + 228);
    v10 = *(a1 + 248);
    v30 = *(a1 + 232);
    v31 = v10;
    v32 = *(a1 + 264);
    v11 = v9 * 0.5;
    if (v11 <= v8)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    v13 = *(a1 + 296);
    *&data = v7;
    *(&data + 1) = __PAIR64__(LODWORD(v12), LODWORD(v9));
    v34 = *(a1 + 232);
    v35 = *(a1 + 248);
    *&v36 = *(a1 + 264);
    v14 = C3DTextFrameCreate(v13, &data);
    *&v28[0] = v7;
    *(&v28[0] + 1) = __PAIR64__(LODWORD(v12), LODWORD(v9));
    v28[1] = v30;
    v28[2] = v31;
    v29 = v32;
    v15 = *(a1 + 344);
    v35 = *(a1 + 328);
    v36 = v15;
    v37 = *(a1 + 360);
    v16 = *(a1 + 312);
    data = *(a1 + 296);
    v34 = v16;
    Text = C3DMeshCreateText(v14, v28, &data, v5, v6);
    if (Text)
    {
      v19 = Text;
      C3DGeometrySetMesh(a1, Text);
      CFRelease(v19);
      if (!v14)
      {
        return;
      }

      goto LABEL_12;
    }

    v20 = scn_default_log(0, v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryValidate_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }

    C3DGeometrySetMesh(a1, 0);
    if (v14)
    {
LABEL_12:
      CFRelease(v14);
    }
  }
}

double C3DTextGeometryGetC3DKitParameters@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  C3DShapeGeometryGetC3DKitParameters(a1, a2, a3);
  *(a2 + 80) = 0;
  *(a2 + 56) = *(a1 + 304);
  *(a2 + 72) = *(a1 + 320);
  *(a2 + 80) = *(a1 + 328);
  v5 = *(a1 + 352);
  *(a2 + 88) = *(a1 + 336);
  *(a2 + 104) = v5;
  result = *(a1 + 220);
  *(a2 + 120) = result;
  return result;
}

void C3DTextGeometryComputeCTFrameIfNeeded(uint64_t a1)
{
  if (*(a1 + 296))
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = objc_alloc_init(MEMORY[0x277D74240]);
    v5 = v4;
    if (*(a1 + 328) == 1)
    {
      if (*(a1 + 329))
      {
        v6 = *(a1 + 320) - 1;
        if (v6 > 3)
        {
          v7 = 4;
        }

        else
        {
          v7 = qword_21C2A3F98[v6];
        }
      }

      else
      {
        v7 = 4;
      }

      [v4 setAlignment:v7];
    }

    else
    {
      if (*(a1 + 329))
      {
        v8 = (*(a1 + 324) - 1);
        if (v8 >= 3)
        {
          v9 = 2;
        }

        else
        {
          v9 = v8 + 3;
        }
      }

      else
      {
        v9 = 2;
      }

      [v4 setLineBreakMode:v9];
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = MEMORY[0x277D740A8];
    if (isKindOfClass)
    {
      v12 = [*(a1 + 304) attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0];
    }

    else
    {
      v13 = *(a1 + 312);
      if (v13)
      {
LABEL_23:
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, *v11, v5, *MEMORY[0x277D74118], 0}];
        v15 = objc_alloc(MEMORY[0x277CCA898]);
        if (*(a1 + 304))
        {
          v16 = *(a1 + 304);
        }

        else
        {
          v16 = &stru_282DCC058;
        }

        v3 = [v15 initWithString:v16 attributes:v14];
        goto LABEL_27;
      }

      v12 = [MEMORY[0x277D74300] fontWithName:@"Helvetica" size:12.0];
    }

    v13 = v12;
    goto LABEL_23;
  }

  v3 = *(a1 + 304);
LABEL_27:
  v17 = CTFramesetterCreateWithAttributedString(v3);
  v30.width = 1.79769313e308;
  v28.location = 0;
  v28.length = 0;
  v30.height = 1.79769313e308;
  v18 = CTFramesetterSuggestFrameSizeWithConstraints(v17, v28, 0, v30, 0);
  width = v18.width;
  height = v18.height;
  Mutable = CGPathCreateMutable();
  v22 = Mutable;
  if (*(a1 + 329) == 1)
  {
    v23 = *(a1 + 336);
    v24 = *(a1 + 344);
    width = *(a1 + 352);
    height = *(a1 + 360);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = width;
  v26 = height;
  CGPathAddRect(Mutable, 0, *&v23);
  v29.location = 0;
  v29.length = 0;
  Frame = CTFramesetterCreateFrame(v17, v29, v22, 0);
  C3DTextGeometrySetCTFrame(a1, Frame);
  CFRelease(v17);
  CFRelease(Frame);

  CFRelease(v22);
}

uint64_t C3DShapeGeometryGetChamferMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 232);
}

void C3DShapeGeometrySetChamferMode(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 232) != v2)
  {
    *(a1 + 232) = v2;
    C3DGeometrySetMesh(a1, 0);
  }
}

double C3DShapeGeometryGetChamferRadius(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 228);
}

void C3DShapeGeometrySetChamferRadius(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 228) != a3)
  {
    v13 = a3;
    *(a1 + 228) = v13;
    C3DGeometrySetMesh(a1, 0);
  }
}

double C3DShapeGeometryGetDiscretizedStraightLineMaxLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 236);
}

void C3DShapeGeometrySetDiscretizedStraightLineMaxLength(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 236) != a3)
  {
    v13 = a3;
    *(a1 + 236) = v13;
    C3DGeometrySetMesh(a1, 0);
  }
}

double C3DShapeGeometryGetExtrusionDepth(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 224);
}

void C3DShapeGeometrySetExtrusionDepth(uint64_t a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (*(a1 + 224) != a3)
  {
    v13 = a3;
    *(a1 + 224) = v13;
    C3DGeometrySetMesh(a1, 0);
  }
}

uint64_t C3DShapeGeometryGetPrimitiveType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 216);
}

void C3DShapeGeometrySetPrimitiveType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DShapeGeometryGetChamferMode_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 216) != v2)
  {
    *(a1 + 216) = v2;
    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DShapeGeometrySetC3DKitParameters(uint64_t a1, void **a2)
{
  C3DShapeGeometrySetPrimitiveType(a1, *a2);
  C3DShapeGeometrySetExtrusionDepth(a1, v4, *(a2 + 1));
  C3DShapeGeometrySetChamferRadius(a1, v5, *(a2 + 2));
  C3DShapeGeometrySetDiscretizedStraightLineMaxLength(a1, v6, *(a2 + 4));
  C3DShapeGeometrySetObjCPath(a1, a2[5]);
  v7 = a2[6];

  C3DShapeGeometrySetObjCChamferProfile(a1, v7);
}

void C3DShapeGeometrySetObjCPath(uint64_t a1, void *a2)
{
  v8 = *(a1 + 248);
  if (v8 != a2)
  {
    v15 = v4;
    v16 = v3;
    v17 = v2;

    *(a1 + 248) = a2;
    [a2 flatness];
    *&v11 = v11;
    *(a1 + 220) = LODWORD(v11);
    v12 = *(a1 + 240);
    if (v12 != [a2 CGPath])
    {
      v13 = *(a1 + 240);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 240) = 0;
      }

      v14 = [a2 CGPath];
      if (v14)
      {
        v14 = CFRetain(v14);
      }

      *(a1 + 240) = v14;
    }

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DShapeGeometrySetObjCChamferProfile(uint64_t a1, void *a2)
{
  v8 = *(a1 + 264);
  if (v8 != a2)
  {
    v14 = v4;
    v15 = v3;
    v16 = v2;

    *(a1 + 264) = a2;
    v11 = *(a1 + 256);
    if (v11 != [a2 CGPath])
    {
      v12 = *(a1 + 256);
      if (v12)
      {
        CFRelease(v12);
        *(a1 + 256) = 0;
      }

      v13 = [a2 CGPath];
      if (v13)
      {
        v13 = CFRetain(v13);
      }

      *(a1 + 256) = v13;
    }

    C3DGeometrySetMesh(a1, 0);
  }
}

float C3DShapeGeometrySetFlatness(uint64_t a1, double a2)
{
  if (a2 <= 0.0)
  {
    a2 = 0.001;
  }

  if (a2 != *(a1 + 220))
  {
    v2 = a2;
    *(a1 + 220) = v2;
    C3DGeometrySetMesh(a1, 0);
  }

  return *&a2;
}

void C3DTextGeometrySetC3DKitParameters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v8[0] = *a2;
  v8[1] = v4;
  v8[2] = *(a2 + 32);
  v9 = *(a2 + 48);
  C3DShapeGeometrySetC3DKitParameters(a1, v8);
  C3DTextGeometrySetString(a1, *(a2 + 56));
  C3DTextGeometrySetFont(a1, *(a2 + 64));
  C3DTextGeometrySetAlignmentMode(a1, *(a2 + 72));
  C3DTextGeometrySetTruncationMode(a1, *(a2 + 76));
  C3DTextGeometrySetWrapped(a1, *(a2 + 80));
  v5 = *(a2 + 81);
  if (*(a1 + 329) != v5)
  {
    *(a1 + 329) = v5;
    C3DGeometrySetMesh(a1, 0);
  }

  C3DTextGeometrySetCustomContainerFrame(a1, *(a2 + 88), *(a2 + 96), *(a2 + 104), *(a2 + 112));
  v6 = *(a2 + 120);
  if (v6 <= 0.0)
  {
    v6 = 0.001;
  }

  if (v6 != *(a1 + 220))
  {
    v7 = v6;
    *(a1 + 220) = v7;

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetString(uint64_t a1, void *a2)
{
  v3 = *(a1 + 304);
  if (v3 != a2)
  {

    *(a1 + 304) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetFont(uint64_t a1, void *a2)
{
  v3 = *(a1 + 312);
  if (v3 != a2)
  {

    *(a1 + 312) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetAlignmentMode(uint64_t a1, int a2)
{
  if (*(a1 + 320) != a2)
  {
    *(a1 + 320) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetTruncationMode(uint64_t a1, int a2)
{
  if (*(a1 + 324) != a2)
  {
    *(a1 + 324) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetWrapped(uint64_t a1, int a2)
{
  if (*(a1 + 328) != a2)
  {
    *(a1 + 328) = a2;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetUseCustomContainerFrame(uint64_t a1, int a2)
{
  if (*(a1 + 329) != a2)
  {
    *(a1 + 329) = a2;
    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetCustomContainerFrame(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11.origin.x = a2;
  v11.origin.y = a3;
  v11.size.width = a4;
  v11.size.height = a5;
  if (!CGRectEqualToRect(*(a1 + 336), v11))
  {
    *(a1 + 336) = a2;
    *(a1 + 344) = a3;
    *(a1 + 352) = a4;
    *(a1 + 360) = a5;
    C3DTextGeometrySetCTFrame(a1, 0);

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetCTFrame(uint64_t a1, CFTypeRef cf)
{
  v3 = *(a1 + 296);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 296) = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 296) = v5;

    C3DGeometrySetMesh(a1, 0);
  }
}

void C3DTextGeometrySetUseSeparateGeometryElements(uint64_t a1, int a2)
{
  if (*(a1 + 330) != a2)
  {
    *(a1 + 330) = a2;
    C3DGeometrySetMesh(a1, 0);
  }
}

double __C3DShapeGeometryGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DShapeGeometryGetTypeID_typeID = v0;
  TypeID = C3DGeometryGetTypeID(v0, v1);
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"chamferRadius", 228, 7, 0);
  C3DModelPathResolverRegisterProperty(@"extrusionDepth", 224, 7, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_281740548 = kC3DC3DShapeGeometryContextClassSerializable;
  unk_281740558 = *&off_282DC8850;
  unk_281740508 = kC3DC3DShapeGeometryContextClassBoundingVolumes;
  xmmword_2817404F0 = kC3DC3DShapeGeometryContextClassAnimatable;
  result = *&kC3DC3DShapeGeometryContextClassSceneLink;
  unk_281740518 = kC3DC3DShapeGeometryContextClassSceneLink;
  unk_281740528 = *algn_282DC8890;
  qword_281740538 = qword_282DC88A0;
  qword_281740568 = _C3DShapeGeometryCreateCopy;
  return result;
}

uint64_t C3DTextGeometryGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DTextGeometryGetTypeID_onceToken != -1)
  {
    C3DTextGeometryGetTypeID_cold_1();
  }

  return C3DTextGeometryGetTypeID_typeID;
}

double __C3DTextGeometryGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DTextGeometryGetTypeID_typeID = v0;
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  C3DModelPathResolverRegisterClassBegin(v0, C3DShapeGeometryGetTypeID_typeID);
  C3DModelPathResolverRegisterClassEnd();
  unk_2817401A8 = kC3DC3DTextGeometryContextClassSerializable;
  unk_2817401B8 = *&off_282DC88B8;
  unk_281740168 = kC3DC3DTextGeometryContextClassBoundingVolumes;
  xmmword_281740150 = kC3DC3DTextGeometryContextClassAnimatable;
  result = *&kC3DC3DTextGeometryContextClassSceneLink;
  unk_281740178 = kC3DC3DTextGeometryContextClassSceneLink;
  unk_281740188 = unk_282DC88F8;
  qword_281740198 = qword_282DC8908;
  qword_2817401C8 = _C3DTextGeometryCreateCopy;
  return result;
}

double C3DShapeGeometryInit(uint64_t a1)
{
  C3DGeometryInit(a1);
  Default = C3DMaterialCreateDefault(v2, v3);
  C3DGeometryAppendMaterial(a1, Default);
  CFRelease(Default);
  *(a1 + 216) = 0;
  *(a1 + 220) = 1065353216;
  *(a1 + 228) = 0;
  *(a1 + 236) = 2139095039;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 120) = kC3DShapeGeometryValidationCallBacks;
  return result;
}

uint64_t C3DShapeGeometryCreate(uint64_t a1, uint64_t a2)
{
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DShapeGeometryGetTypeID_typeID, 280);
  C3DShapeGeometryInit(Instance);
  return Instance;
}

void C3DShapeGeometryCopy(uint64_t a1, uint64_t a2)
{
  C3DGeometryCopy(a1, a2);
  PrimitiveType = C3DShapeGeometryGetPrimitiveType(a1, v4);
  C3DShapeGeometrySetPrimitiveType(a2, PrimitiveType);
  v7 = *(a1 + 220);
  v8 = v7;
  v9 = v7 > 0.0;
  v10 = 0.001;
  if (v9)
  {
    v10 = v8;
  }

  if (v10 != *(a2 + 220))
  {
    v11 = v10;
    *(a2 + 220) = v11;
    C3DGeometrySetMesh(a2, 0);
  }

  ExtrusionDepth = C3DShapeGeometryGetExtrusionDepth(a1, v6);
  C3DShapeGeometrySetExtrusionDepth(a2, v13, ExtrusionDepth);
  ChamferRadius = C3DShapeGeometryGetChamferRadius(a1, v14);
  C3DShapeGeometrySetChamferRadius(a2, v16, ChamferRadius);
  DiscretizedStraightLineMaxLength = C3DShapeGeometryGetDiscretizedStraightLineMaxLength(a1, v17);
  C3DShapeGeometrySetDiscretizedStraightLineMaxLength(a2, v19, DiscretizedStraightLineMaxLength);
  C3DShapeGeometrySetObjCPath(a2, *(a1 + 248));
  v20 = *(a1 + 264);

  C3DShapeGeometrySetObjCChamferProfile(a2, v20);
}

void C3DShapeGeometryFinalize(uint64_t a1)
{
  C3DShapeGeometrySetObjCPath(a1, 0);
  C3DShapeGeometrySetObjCChamferProfile(a1, 0);
  v2 = *(a1 + 272);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 272) = 0;
  }
}

uint64_t C3DTextGeometryCreate(uint64_t a1, uint64_t a2)
{
  if (C3DTextGeometryGetTypeID_onceToken != -1)
  {
    C3DTextGeometryGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTextGeometryGetTypeID_typeID, 352);
  C3DShapeGeometryInit(Instance);
  *(Instance + 328) = 0;
  *(Instance + 296) = 0u;
  *(Instance + 312) = 0u;
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  *(Instance + 336) = *MEMORY[0x277CBF3A0];
  *(Instance + 352) = v3;
  *(Instance + 330) = 0;
  *(Instance + 120) = &kC3DTextGeometryValidationCallBacks;
  return Instance;
}

void C3DTextGeometryCopy(uint64_t a1, uint64_t a2)
{
  C3DShapeGeometryCopy(a1, a2);
  C3DTextGeometrySetCTFrame(a2, *(a1 + 296));
  C3DTextGeometrySetString(a2, *(a1 + 304));
  C3DTextGeometrySetFont(a2, *(a1 + 312));
  C3DTextGeometrySetAlignmentMode(a2, *(a1 + 320));
  C3DTextGeometrySetTruncationMode(a2, *(a1 + 324));
  C3DTextGeometrySetWrapped(a2, *(a1 + 328));
  v4 = *(a1 + 329);
  if (*(a2 + 329) != v4)
  {
    *(a2 + 329) = v4;
    C3DGeometrySetMesh(a2, 0);
  }

  v5 = *(a1 + 336);
  v6 = *(a1 + 344);
  v7 = *(a1 + 352);
  v8 = *(a1 + 360);

  C3DTextGeometrySetCustomContainerFrame(a2, v5, v6, v7, v8);
}

void C3DTextGeometryFinalize(uint64_t a1)
{
  C3DTextGeometrySetCTFrame(a1, 0);
  C3DTextGeometrySetString(a1, 0);
  C3DTextGeometrySetFont(a1, 0);

  C3DShapeGeometryFinalize(a1);
}

const void *C3DShapeGeometryMeshForBoundingBox(const void *a1, __int128 *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CFGetTypeID(a1);
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  if (v5 != C3DShapeGeometryGetTypeID_typeID)
  {
    C3DShapeGeometryMeshForBoundingBox_cold_2();
  }

  *md = 0;
  v19 = 0;
  *v16 = 0;
  v17 = 0;
  C3DShapeGeometryGetC3DKitParameters(a1, data, v4);
  CC_MD5(data, 0x38u, md);
  v6 = a2[1];
  data[0] = *a2;
  data[1] = v6;
  data[2] = a2[2];
  v15 = *(a2 + 6);
  CC_MD5(data, 0x38u, v16);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __C3DShapeGeometryMeshForBoundingBox_block_invoke;
  v9[3] = &__block_descriptor_88_e17_____C3DMesh__8__0l;
  v7 = a2[1];
  v10 = *a2;
  v11 = v7;
  v12 = a2[2];
  v13 = *(a2 + 6);
  return C3DShapeGeometryGetMeshForC3DKitNeeds(a1, v16, md, v9);
}

const void *__C3DShapeGeometryMeshForBoundingBox_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = C3DShapeGeometryCreate(a1, a2);
  v4 = *(a1 + 48);
  v8[0] = *(a1 + 32);
  v8[1] = v4;
  v8[2] = *(a1 + 64);
  v9 = *(a1 + 80);
  C3DShapeGeometrySetC3DKitParameters(v3, v8);
  Mesh = C3DGeometryGetMesh(v3, v5);
  CFRetain(Mesh);
  CFRelease(v3);
  return Mesh;
}

uint64_t C3DShapeGeometryGetBoundingBox(const void *a1, _OWORD *a2, _OWORD *a3, uint64_t a4)
{
  v8 = CFGetTypeID(a1);
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  if (v8 != C3DShapeGeometryGetTypeID_typeID)
  {
    C3DShapeGeometryGetBoundingBox_cold_2();
  }

  v9 = *(a4 + 16);
  v12[0] = *a4;
  v12[1] = v9;
  v12[2] = *(a4 + 32);
  v13 = *(a4 + 48);
  v10 = C3DShapeGeometryMeshForBoundingBox(a1, v12);

  return C3DMeshGetBoundingBox(v10, a2, a3);
}

uint64_t C3DShapeGeometryGetBoundingSphere(const void *a1, _OWORD *a2, uint64_t a3)
{
  v6 = CFGetTypeID(a1);
  if (C3DShapeGeometryGetTypeID_onceToken != -1)
  {
    C3DShapeGeometryValidate_cold_1();
  }

  if (v6 != C3DShapeGeometryGetTypeID_typeID)
  {
    C3DShapeGeometryGetBoundingSphere_cold_2();
  }

  v7 = *(a3 + 16);
  v10[0] = *a3;
  v10[1] = v7;
  v10[2] = *(a3 + 32);
  v11 = *(a3 + 48);
  v8 = C3DShapeGeometryMeshForBoundingBox(a1, v10);

  return C3DMeshGetBoundingSphere(v8, a2);
}

const void *C3DTextGeometryMeshForBoundingBox(uint64_t a1, _OWORD *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  *md = 0;
  v26 = 0;
  *v23 = 0;
  v24 = 0;
  C3DTextGeometryGetC3DKitParameters(a1, data, a2);
  CC_MD5(data, 0x80u, md);
  v4 = a2[5];
  data[4] = a2[4];
  data[5] = v4;
  v5 = a2[7];
  data[6] = a2[6];
  data[7] = v5;
  v6 = a2[1];
  data[0] = *a2;
  data[1] = v6;
  v7 = a2[3];
  data[2] = a2[2];
  data[3] = v7;
  CC_MD5(data, 0x80u, v23);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __C3DTextGeometryMeshForBoundingBox_block_invoke;
  v13[3] = &__block_descriptor_160_e17_____C3DMesh__8__0l;
  v8 = a2[5];
  v18 = a2[4];
  v19 = v8;
  v9 = a2[7];
  v20 = a2[6];
  v21 = v9;
  v10 = a2[1];
  v14 = *a2;
  v15 = v10;
  v11 = a2[3];
  v16 = a2[2];
  v17 = v11;
  return C3DShapeGeometryGetMeshForC3DKitNeeds(a1, v23, md, v13);
}

const void *__C3DTextGeometryMeshForBoundingBox_block_invoke(_OWORD *a1, uint64_t a2)
{
  v3 = C3DTextGeometryCreate(a1, a2);
  v4 = a1[7];
  v11[4] = a1[6];
  v11[5] = v4;
  v5 = a1[9];
  v11[6] = a1[8];
  v11[7] = v5;
  v6 = a1[3];
  v11[0] = a1[2];
  v11[1] = v6;
  v7 = a1[5];
  v11[2] = a1[4];
  v11[3] = v7;
  C3DTextGeometrySetC3DKitParameters(v3, v11);
  Mesh = C3DGeometryGetMesh(v3, v8);
  CFRetain(Mesh);
  CFRelease(v3);
  return Mesh;
}

uint64_t C3DTextGeometryGetBoundingBox(uint64_t a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v6 = a4[5];
  v12[4] = a4[4];
  v12[5] = v6;
  v7 = a4[7];
  v12[6] = a4[6];
  v12[7] = v7;
  v8 = a4[1];
  v12[0] = *a4;
  v12[1] = v8;
  v9 = a4[3];
  v12[2] = a4[2];
  v12[3] = v9;
  v10 = C3DTextGeometryMeshForBoundingBox(a1, v12);

  return C3DMeshGetBoundingBox(v10, a2, a3);
}

uint64_t C3DTextGeometryGetBoundingSphere(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  v4 = a3[5];
  v10[4] = a3[4];
  v10[5] = v4;
  v5 = a3[7];
  v10[6] = a3[6];
  v10[7] = v5;
  v6 = a3[1];
  v10[0] = *a3;
  v10[1] = v6;
  v7 = a3[3];
  v10[2] = a3[2];
  v10[3] = v7;
  v8 = C3DTextGeometryMeshForBoundingBox(a1, v10);

  return C3DMeshGetBoundingSphere(v8, a2);
}

id _C3DShapeGeometryCFFinalize(__C3DGeometry *a1)
{
  C3DShapeGeometryFinalize(a1);

  return _C3DGeometryCFFinalize(a1, v2);
}

id _C3DTextGeometryCFFinalize(__C3DGeometry *a1)
{
  C3DTextGeometryFinalize(a1);

  return _C3DGeometryCFFinalize(a1, v2);
}

uint64_t _C3DShapeGeometryGetBoundingBox(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  result = C3DGeometryGetMesh(a1, a2);
  if (result)
  {

    return C3DMeshGetBoundingBox(result, a3, a4);
  }

  return result;
}

uint64_t _C3DShapeGeometryGetBoundingSphere(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = C3DGeometryGetMesh(a1, a2);
  if (result)
  {

    return C3DMeshGetBoundingSphere(result, a3);
  }

  return result;
}

void _C3DShapeGeometrySetValue(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  C3DGeometrySetMesh(a1, 0);
}

uint64_t _C3DShapeGeometryCreateCopy(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DGeometryCopy_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DShapeGeometryCreate(a1, a2);
  C3DShapeGeometryCopy(v2, v10);
  return v10;
}

uint64_t _C3DTextGeometryGetBoundingBox(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  result = C3DGeometryGetMesh(a1, a2);
  if (result)
  {

    return C3DMeshGetBoundingBox(result, a3, a4);
  }

  return result;
}

uint64_t _C3DTextGeometryGetBoundingSphere(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = C3DGeometryGetMesh(a1, a2);
  if (result)
  {

    return C3DMeshGetBoundingSphere(result, a3);
  }

  return result;
}

void _C3DTextGeometrySetValue(uint64_t a1, void *__dst, void *__src, size_t __n)
{
  memcpy(__dst, __src, __n);

  C3DGeometrySetMesh(a1, 0);
}

uint64_t _C3DTextGeometryCreateCopy(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DGeometryCopy_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DTextGeometryCreate(a1, a2);
  C3DTextGeometryCopy(v2, v10);
  return v10;
}

uint64_t C3D::ShouldShowOutline(C3D *this, const void *a2)
{
  if ((C3DAuthoringEnvironmentGetDisplayMask(this) & 0x20000) != 0)
  {
    SelectedNodes = C3DAuthoringEnvironmentGetSelectedNodes(this);
    v5 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    while (v5 < [SelectedNodes count])
    {
      v6 = [SelectedNodes objectAtIndexedSubscript:v5];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = ___ZN3C3D17ShouldShowOutlineEPKv_block_invoke;
      v8[3] = &unk_2782FCA90;
      v8[4] = &v9;
      C3DNodeApplyHierarchy(v6, v8);
      ++v5;
      if (v10[3])
      {
        v3 = 1;
        goto LABEL_8;
      }
    }

    v3 = *(v10 + 24);
LABEL_8:
    _Block_object_dispose(&v9, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_21C1B50AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN3C3D17ShouldShowOutlineEPKv_block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (C3DNodeIsHiddenOrTransparent(a2, a2))
  {
    return 1;
  }

  result = C3DNodeGetGeometry(a2, v4);
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 2;
  }

  return result;
}

double C3D::AdaptCullingContextForAuthoring(C3D *this, __n128 **a2, const Parameters *a3, __C3DCullingContext *a4)
{
  Scene = C3DEngineContextGetScene(this, a2);
  StackAllocator = C3DEngineContextGetStackAllocator(this, v9);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v30, StackAllocator);
  LayerRootNode = C3DSceneGetLayerRootNode(Scene, a4);
  v33.i64[0] = MEMORY[0x277D85DD0];
  v33.i64[1] = 3321888768;
  v34 = ___ZZN3C3D31AdaptCullingContextForAuthoringEP18__C3DEngineContextRKNS_13DrawNodesPass10ParametersER19__C3DCullingContexthENK3__0cvU13block_pointerF18C3DNodeApplyStatusP9__C3DNodeEEv_block_invoke;
  v35 = &__block_descriptor_40_e8_32c127_ZTSKZN3C3D31AdaptCullingContextForAuthoringEP18__C3DEngineContextRKNS_13DrawNodesPass10ParametersER19__C3DCullingContexthE3__0_e20_q16__0____C3DNode__8l;
  v36 = &v30;
  C3DNodeApplyHierarchySkippingHiddenNodes(LayerRootNode, [objc_msgSend(&v33 "copy")]);
  if (v31)
  {
    v12 = 0;
    v13 = v32;
    v14 = 8 * v31;
    v15 = 0uLL;
    do
    {
      v28 = v15;
      v16 = *v13;
      if (C3DGetBoundingSphere(*v13, 0, &v33))
      {
        WorldMatrix = C3DNodeGetWorldMatrix(v16, v17);
        C3DSphereXFormMatrix4x4(&v33, WorldMatrix, &v33);
        v19 = v33;
        if ((v12 & 1) != 0 && (v20 = v28, v21 = vsubq_f32(v28, v33), v22 = vmulq_f32(v21, v21), v23 = sqrtf(v22.f32[2] + vaddv_f32(*v22.f32)), (v28.f32[3] + v23) >= v33.f32[3]))
        {
          if ((v33.f32[3] + v23) > v28.f32[3])
          {
            v20 = vmlaq_n_f32(v28, v21, (v28.f32[3] - (((v28.f32[3] + v33.f32[3]) + v23) * 0.5)) / v23);
            v20.f32[3] = ((v28.f32[3] + v33.f32[3]) + v23) * 0.5;
          }

          v12 = 1;
          v19 = v20;
        }

        else
        {
          v12 = 1;
        }
      }

      else
      {
        v19 = v28;
      }

      ++v13;
      v15 = v19;
      v14 -= 8;
    }

    while (v14);
  }

  else
  {
    v19 = 0uLL;
  }

  v29 = v19;
  *v24.i64 = C3DNodeGetPosition(a2[1]);
  a3[469].var4 = 1;
  *&a3[474].var4 = 0x3F847AE147AE147BLL;
  v25 = vsubq_f32(v24, v29);
  v26 = vmulq_f32(v25, v25);
  result = (v29.f32[3] + sqrtf(v26.f32[2] + vaddv_f32(*v26.f32)));
  *&a3[475].var2 = result;
  return result;
}

double C3D::AuthoringPass::AuthoringPass(C3D::AuthoringPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  v6 = 0;
  v8 = 0u;
  v9 = 0x20000;
  memset(v5, 0, sizeof(v5));
  v7 = -1;
  BYTE8(v8) = 1;
  v3 = C3D::DrawNodesPass::DrawNodesPass(this, a2, a3, v5);
  *v3 = &unk_282DC8920;
  *(v3 + 2692) = 0;
  result = 0.0;
  *(v3 + 335) = 0u;
  return result;
}

void C3D::AuthoringPass::setup(C3D::AuthoringPass *this)
{
  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(*(this + 2), 0);
  *(this + 5384) = C3D::ShouldShowOutline(AuthoringEnvironment, v3);
  C3D::Pass::setInputCount(this, 2u);
  C3D::Pass::setOutputCount(this, 2u);
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  v5 = v4;
  if ((*(this + 5384) & 1) == 0)
  {
    *(v4 + 8) = "COLOR";
    C3D::Pass::parentColorDesc(&v18, this);
    *(v5 + 16) = v18;
    *(v5 + 32) = v19;
    *(v5 + 66) = *(v5 + 66) & 0xFF78 | 0x85;
  }

  v6 = C3D::PassDescriptor::inputAtIndex((this + 32), 1);
  *(v6 + 8) = "DEPTH";
  *(v6 + 64) = 2;
  C3D::Pass::parentDepthDesc(&v18, this);
  *(v6 + 16) = v18;
  *(v6 + 32) = v19;
  *(v6 + 66) = *(v6 + 66) & 0xFF78 | 0x85;
  v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v7 + 8) = "COLOR";
  *(v7 + 65) = 0;
  C3D::Pass::parentColorDesc(&v18, this);
  *(v7 + 16) = v18;
  *(v7 + 32) = v19;
  *(v7 + 66) = *(v7 + 66) & 0xFFFC | ((*(this + 5384) & 1) == 0);
  v8 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
  *(v8 + 8) = "DEPTH";
  v9 = *(v8 + 66) & 0xFFFD;
  *(v8 + 64) = 2;
  *(v8 + 66) = v9 | 9;
  *(this + 296) = 0;
  *(this + 31) = C3DEngineContextGetPointOfView(*(this + 2), v10);
  *(this + 303) = 256;
  *(this + 119) = 1;
  *(this + 11) = 2;
  if (*(this + 5384) == 1)
  {
    v12 = *(this + 3);
    *&v18 = this;
    v13 = C3D::RenderGraph::createPass<C3D::OutlinePass,C3D::AuthoringPass *>(v12, &v18);
    *(this + 671) = v13;
    v14 = C3D::PassDescriptor::outputAtIndex((v13 + 32), 0);
    *v5 = *v14;
    v15 = v14[4];
    v17 = v14[1];
    v16 = v14[2];
    *(v5 + 48) = v14[3];
    *(v5 + 64) = v15;
    *(v5 + 16) = v17;
    *(v5 + 32) = v16;
    C3D::Pass::addDependency(this, *(this + 671));
  }

  C3D::DrawNodesPass::setup(this, v11);
}

C3D::OutlinePass *C3D::RenderGraph::createPass<C3D::OutlinePass,C3D::AuthoringPass *>(uint64_t a1, C3D::Pass **a2)
{
  Aligned = C3DScratchAllocatorAllocateAligned(*(a1 + 16), 256, 16, 0);
  C3D::OutlinePass::OutlinePass(Aligned, a1, *a2);
  C3D::RenderGraph::addPass(a1, Aligned);
  if (*(a1 + 209) == 1)
  {
    (*(*Aligned + 8))(Aligned);
  }

  return Aligned;
}

void C3D::AuthoringPass::compile(C3D::AuthoringPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v5 = *(v4 + 28);
  v6 = C3D::Pass::resource(this);
  v7 = [*C3D::PassResource::outputAtIndex(v6 1)];
  v8 = [(SCNMTLRenderContext *)RenderContext reverseZ]| (2 * *(v4 + 31));
  v9 = 0x9DDFEA08EB382D69 * (v8 ^ *(this + 5384));
  v10 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) ^ ((0x9DDFEA08EB382D69 * (v8 ^ (v9 >> 47) ^ v9)) >> 47));
  v11 = 0x9DDFEA08EB382D69 * (v10 ^ ((0x9DDFEA08EB382D69 * (v10 ^ v5)) >> 47) ^ (0x9DDFEA08EB382D69 * (v10 ^ v5)));
  v12 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ ((0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47))) ^ v7)));
  v13 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xF05FE8936EBFFF1DLL * (v12 ^ (v12 >> 47))) ^ ((0xF05FE8936EBFFF1DLL * (v12 ^ (v12 >> 47))) >> 47))));
  v14 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v13 ^ (v13 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v13 ^ (v13 >> 47))) >> 47));
  *(this + 672) = v14;
  if (!v14)
  {
    operator new();
  }

  C3D::DrawNodesPass::compile(this, v15);
}

uint64_t C3D::AuthoringPass::execute(uint64_t a1, SCNMTLRenderCommandEncoder **a2)
{
  v5 = a1 + 4096;
  Scene = C3DEngineContextGetScene(*(a1 + 16), a2);
  EnginePipeline = C3DSceneGetEnginePipeline(Scene, v7);
  RendererElementStore = C3DEnginePipelineGetRendererElementStore(EnginePipeline, v9);
  [(*a2)->var24[1] pushDebugGroup:@"Authoring"];
  if ((*(v5 + 1288) & 1) != 0 || *(v5 + 1289) == 1)
  {
    [(*a2)->var24[1] setDepthStencilState:{C3D::SmartPtr<SCNMTLRenderPipeline *, C3D::detail::NSRetainFct, C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 64, v11)}];
    v12 = *a2;
    v14 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 24 :v13) detail:"state" :?NSRetainFct];
    if (v12->var23 != v14)
    {
      v12->var23 = v14;
      [v12->var24[1] setRenderPipelineState:v14];
    }

    v15 = *a2;
    v16 = C3D::Pass::inputTextureAtIndex(a1, 0);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v15, v16, 0);
    SCNMTLRenderCommandEncoder::drawFullScreenTriangle(*a2, v17);
  }

  AuthoringEnvironment = C3DEngineContextGetAuthoringEnvironment(*(a1 + 16), 1);
  if (C3DAuthoringEnvironmentShouldDisplayConstraints(AuthoringEnvironment))
  {
    ControllerManager = C3DSceneGetControllerManager(Scene, v19);
    C3DConstraintManagerAppendAuthoringInfo(ControllerManager, AuthoringEnvironment);
  }

  CullingContext = C3D::DrawNodesPass::getCullingContext(*(a1 + 5360));
  v23 = *(CullingContext + 4920);
  if (v23)
  {
    v24 = *(CullingContext + 4912);
    do
    {
      v25 = *v24++;
      v2 = v2 & 0xFFFFFFFF00000000 | v25;
      Element = C3DRendererElementStoreGetElement(RendererElementStore, v2);
      Node = C3DRendererElementGetNode(Element);
      if (Node)
      {
        C3DAuthoringEnvironmentAppendDebugNode(AuthoringEnvironment, Node, Element);
      }

      --v23;
    }

    while (v23);
  }

  RootNode = C3DSceneGetRootNode(Scene, v22);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = ___ZN3C3D13AuthoringPass7executeERKNS_10RenderArgsE_block_invoke;
  v38[3] = &__block_descriptor_40_e20_q16__0____C3DNode__8l;
  v38[4] = AuthoringEnvironment;
  C3DNodeApplyHierarchy(RootNode, v38);
  C3DAuthoringEnvironmentDrawZbufferDependant(AuthoringEnvironment);
  C3DAuthoringEnvironmentDrawPending(AuthoringEnvironment);
  [(*a2)->var24[1] setDepthStencilState:{C3D::SmartPtr<SCNMTLRenderPipeline *, C3D::detail::NSRetainFct, C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 64, v29)}];
  C3DAuthoringEnvironmentDrawZbufferIndependant(AuthoringEnvironment, v30);
  C3DAuthoringEnvironmentDrawPending(AuthoringEnvironment);
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16), v31);
  v33 = C3DRasterizerStatesDefault();
  v34 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  v35 = [(SCNMTLRenderContext *)RenderContext reverseZ];
  [(*a2)->var24[1] setDepthStencilState:{-[SCNMTLResourceManager renderResourceForRasterizerState:reverseZ:](v34, v33, v35)}];
  [SCNMTLRenderContext setRasterizerStates:?];
  if (AuthoringEnvironment && ([(float32x2_t *)AuthoringEnvironment authoringDisplayMask]& 0x200) != 0)
  {
    C3D::AuthoringPass::drawReflectionProbes(a1, a2);
  }

  if (([(SCNMTLRenderContext *)RenderContext features]& 0x1000) != 0)
  {
    v36 = *a2;
    if ((*a2)->var4 != 1)
    {
      v36->var4 = 1;
      v36->var8 = 1;
    }
  }

  C3D::DrawNodesPass::execute(a1, a2);
  C3DAuthoringEnvironmentEndFrame(AuthoringEnvironment);
  return [(*a2)->var24[1] popDebugGroup];
}

uint64_t ___ZN3C3D13AuthoringPass7executeERKNS_10RenderArgsE_block_invoke(uint64_t a1, void *a2)
{
  if (C3DNodeIsHiddenOrTransparent(a2, a2))
  {
    return 1;
  }

  C3DAuthoringEnvironmentAppendDebugNodeAttributes(*(a1 + 32), a2);
  return 0;
}

void *C3D::AuthoringPass::drawReflectionProbes(uint64_t a1, uint64_t *a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16), a2);
  result = [(SCNMTLRenderContext *)RenderContext _clusterInfo];
  v6 = result[13];
  v7 = HIDWORD(v6);
  if (HIDWORD(v6))
  {
    v8 = result;
    v19 = result[13];
    result = [(SCNMTLRenderContext *)RenderContext _reflectionProbeArrayTexture];
    if (result)
    {
      v9 = result;
      v10 = [(SCNMTLRenderContext *)RenderContext features];
      v12 = v10;
      v13 = *a2;
      if ((*(*a2 + 73) & 1) == 0 && *(v13 + 16) != 2)
      {
        *(v13 + 16) = 2;
        *(v13 + 41) = 1;
      }

      if ((v10 & 0x1000) != 0 && *(v13 + 32) != 1)
      {
        *(v13 + 32) = 1;
        *(v13 + 43) = 1;
      }

      v14 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 32 :v11) detail:"state" :?NSRetainFct];
      if (*(v13 + 3376) != v14)
      {
        *(v13 + 3376) = v14;
        [*(v13 + 3392) setRenderPipelineState:v14];
      }

      SCNMTLRenderCommandEncoder::setFragmentTexture(*a2, v9, 0);
      [(SCNMTLRenderContext *)RenderContext _setSceneBufferAtVertexIndex:-1 fragmentIndex:?];
      SCNMTLRenderCommandEncoder::setVertexBuffer(*a2, *(v8 + 120), *(v8 + 128) + (v19 << 8), 1);
      C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 40, v15);
      [SCNMTLRenderContext _setMeshBuffers:?];
      v17 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 5376) + 48, v16);
      result = [(SCNMTLRenderContext *)RenderContext _drawMeshElement:v17 instanceCount:v7];
      if ((v12 & 0x1000) != 0)
      {
        v18 = *a2;
        if (*(*a2 + 32))
        {
          *(v18 + 32) = 0;
          *(v18 + 43) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t C3D::AuthoringPass::setColorInput(C3D::AuthoringPass *this, const C3D::PassIODescriptor *a2)
{
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  v5 = C3D::PassDescriptor::inputAtIndex((this + 32), 1);
  v6 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), v8);
  result = [(SCNMTLRenderContext *)RenderContext sampleCount];
  if (result < 2)
  {
    *(v6 + 31) = 0;
    *(v6 + 24) = 2;
    *(v5 + 31) = 0;
    *(v5 + 24) = 2;
  }

  else
  {
    v11 = this + 4096;
    v12 = *(a2 + 31);
    *(v6 + 31) = [(SCNMTLRenderContext *)RenderContext sampleCount];
    *(v6 + 24) = 4;
    result = [(SCNMTLRenderContext *)RenderContext sampleCount];
    *(v5 + 31) = result;
    *(v5 + 24) = 4;
    if ((v11[1288] & 1) == 0 && v12 <= 1)
    {
      v13 = *(a2 + 1);
      v14 = *(a2 + 2);
      v15 = *(a2 + 3);
      *(v4 + 64) = *(a2 + 4);
      v16 = *a2;
      *(v4 + 32) = v14;
      *(v4 + 48) = v15;
      *v4 = v16;
      *(v4 + 16) = v13;
      *(v4 + 66) &= ~0x80u;
      *(v6 + 66) &= 0xFFFCu;
      v11[1289] = 1;
    }
  }

  if ((*(v4 + 66) & 0x80) != 0)
  {
    *(v4 + 31) = *(v6 + 31);
    *(v4 + 24) = *(v6 + 24);
  }

  *(v7 + 31) = *(v5 + 31);
  *(v7 + 24) = *(v5 + 24);
  return result;
}

uint64_t ___ZZN3C3D31AdaptCullingContextForAuthoringEP18__C3DEngineContextRKNS_13DrawNodesPass10ParametersER19__C3DCullingContexthENK3__0cvU13block_pointerF18C3DNodeApplyStatusP9__C3DNodeEEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (C3DNodeGetGeometry(a2, a2))
  {
    C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(*(a1 + 32), &v4);
  }

  return 0;
}

void C3D::AuthoringPassResource::~AuthoringPassResource(C3D::AuthoringPassResource *this)
{
  C3D::AuthoringPassResource::~AuthoringPassResource(this);

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DC89E0;
  v2 = *(this + 8);
  if (v2)
  {
  }

  v3 = *(this + 7);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
  }

  v5 = *(this + 5);
  if (v5)
  {
  }

  v6 = *(this + 4);
  if (v6)
  {
  }

  v7 = *(this + 3);
  if (v7)
  {
  }

  v8 = *(this + 2);
  if (v8)
  {
  }
}

void C3DShaderAddStandardUniform(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v14 = scn_default_log(Value, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DShaderAddStandardUniform_cold_1(a2, v14);
    }
  }

  v15 = C3DMalloc(0x20uLL);
  v15[1] = a4;
  v15[2] = a5;
  *v15 = a3;
  *(v15 + 6) = a6;
  CFDictionarySetValue(a1, a2, v15);
}

uint64_t C3DShaderGetStandardUniforms(uint64_t a1, uint64_t a2)
{
  if (C3DShaderGetStandardUniforms_onceToken != -1)
  {
    C3DShaderGetStandardUniforms_cold_1();
  }

  return C3DShaderGetStandardUniforms_s_standardUniforms;
}

void __C3DShaderGetStandardUniforms_block_invoke()
{
  C3DShaderGetStandardUniforms_s_standardUniforms = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 20, MEMORY[0x277CBF138], 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_time", @"float", 0, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseResolution", @"vec2", 1, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_modelTransform", @"mat4", 2, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseModelTransform", @"mat4", 3, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_modelViewTransform", @"mat4", 4, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseModelViewTransform", @"mat4", 5, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_normalTransform", @"mat4", 6, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_modelViewProjectionTransform", @"mat4", 7, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseModelViewProjectionTransform", @"mat4", 8, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_boundingBox", @"mat2x3", 10, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_worldBoundingBox", @"mat2x3", 11, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_viewTransform", @"mat4", 12, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseViewTransform", @"mat4", 13, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_projectionTransform", @"mat4", 14, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_inverseProjectionTransform", @"mat4", 15, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_cameraPosition", @"vec3", 17, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"u_viewToCubeWorld", @"mat4", 16, 0, 1);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.time", @"float", 0, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.invScreenPixelSize", @"float2", 1, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.modelTransform", @"float4x4", 2, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.inverseModelTransform", @"float4x4", 3, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.modelViewTransform", @"float4x4", 4, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.inverseModelViewTransform", @"float4x4", 5, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.normalTransform", @"float4x4", 6, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.modelViewProjectionTransform", @"float4x4", 7, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.inverseModelViewProjectionTransform", @"float4x4", 8, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.boundingBox", @"float2x3", 10, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_node.worldBoundingBox", @"float2x3", 11, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.viewTransform", @"float4x4", 12, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.inverseViewTransform", @"float4x4", 13, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.projectionTransform", @"float4x4", 14, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.inverseProjectionTransform", @"float4x4", 15, 0, 0);
  C3DShaderAddStandardUniform(C3DShaderGetStandardUniforms_s_standardUniforms, @"scn_frame.cameraPosition", @"float3", 17, 0, 0);
  v0 = C3DShaderGetStandardUniforms_s_standardUniforms;

  C3DShaderAddStandardUniform(v0, @"scn_frame.viewToCubeWorld", @"float4x4", 16, 0, 0);
}

void C3DShaderFeedStandardUniformsToIndex(void *context, uint64_t a2)
{
  if (C3DShaderGetStandardUniforms_onceToken != -1)
  {
    C3DShaderGetStandardUniforms_cold_1();
  }

  v3 = C3DShaderGetStandardUniforms_s_standardUniforms;

  CFDictionaryApplyFunction(v3, __DeclareSymbolToIndexMapping, context);
}

uint64_t OUTLINED_FUNCTION_0_16(uint64_t a1, uint64_t a2)
{

  return [(SCNMTLMesh *)a2 elements];
}

void OUTLINED_FUNCTION_1_15(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 8u);
}

void *btCollisionAlgorithm::btCollisionAlgorithm(void *result, uint64_t *a2)
{
  v2 = *a2;
  *result = &unk_282DC8A20;
  result[1] = v2;
  return result;
}

void btDbvt::btDbvt(btDbvt *this)
{
  *(this + 36) = 0;
  *(this + 68) = 0;
  *(this + 56) = 1;
  *(this + 6) = 0;
  *(this + 88) = 1;
  *(this + 10) = 0;
  *this = 0u;
  *(this + 2) = 0xFFFFFFFFLL;
  *(this + 6) = 0;
}

void btDbvt::~btDbvt(void **this)
{
  btDbvt::clear(this);
  v2 = this[10];
  if (v2 && *(this + 88) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 88) = 1;
  this[10] = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  v3 = this[6];
  if (v3 && *(this + 56) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 56) = 1;
  this[6] = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
}

void btDbvt::clear(void **this)
{
  if (*this)
  {
    recursedeletenode(this, *this);
  }

  btAlignedFreeInternal(this[1]);
  this[1] = 0;
  *(this + 4) = -1;
  v2 = this[6];
  if (v2 && *(this + 56) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 56) = 1;
  this[6] = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 6) = 0;
}

void recursedeletenode(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 48))
  {
    recursedeletenode(a1, *(a2 + 40));
    recursedeletenode(a1, *(a2 + 48));
  }

  if (*a1 == a2)
  {
    *a1 = 0;
  }

  btAlignedFreeInternal(*(a1 + 8));
  *(a1 + 8) = a2;
}

uint64_t btDbvt::optimizeIncremental(uint64_t this, int a2)
{
  v2 = a2;
  v3 = this;
  if (a2 < 0)
  {
    v2 = *(this + 20);
  }

  if (*this)
  {
    v4 = v2 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    do
    {
      v5 = *v3;
      v6 = *v3 + 48;
      if (*v6)
      {
        v7 = 0;
        do
        {
          v8 = v5[2].i64[0];
          if (v8 <= v5)
          {
            v8 = v5;
          }

          else
          {
            v9 = v8[3].i64[0];
            v10 = v8[2].i64[0];
            v11 = v3;
            if (v10)
            {
              v11 = (v10 + 8 * (*(v10 + 48) == v8) + 40);
            }

            v12 = v8[2].i64[(v9 != v5) + 1];
            *v11 = v5;
            *(v12 + 32) = v5;
            v8[2].i64[0] = v5;
            v5[2].i64[0] = v10;
            v8[2].i64[1] = v5[2].i64[1];
            v8[3].i64[0] = *v6;
            *(v5[2].i64[1] + 32) = v8;
            *(*v6 + 32) = v8;
            v5[2].i64[(v9 == v5) + 1] = v8;
            v5[2].i64[(v9 != v5) + 1] = v12;
            v13 = *v8;
            v14 = v8[1];
            *v8 = *v5;
            v8[1] = v5[1];
            *v5 = v13;
            v5[1] = v14;
          }

          v15 = v8 + 8 * ((*(v3 + 24) >> v7) & 1);
          v7 = (v7 + 1) & 0x1F;
          v5 = *(v15 + 5);
          v6 = &v5[3];
        }

        while (v5[3].i64[0]);
      }

      this = btDbvt::update(v3, v5, -1);
      ++*(v3 + 24);
      --v2;
    }

    while (v2);
  }

  return this;
}

uint64_t btDbvt::update(void **a1, float32x4_t *a2, int a3)
{
  v6 = removeleaf(a1, a2);
  if (v6)
  {
    if (a3 < 0)
    {
      v6 = *a1;
    }

    else
    {
      for (; a3; --a3)
      {
        if (!*(v6 + 4))
        {
          break;
        }

        v6 = *(v6 + 4);
      }
    }
  }

  return insertleaf(a1, v6, a2);
}

uint64_t btDbvt::insert(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    *(a1 + 8) = 0;
  }

  else
  {
    v6 = btAlignedAllocInternal(64, 16);
    *v6 = 0u;
    *(v6 + 16) = 0u;
    *(v6 + 32) = 0u;
    *(v6 + 48) = 0u;
  }

  *(v6 + 32) = 0;
  *(v6 + 40) = a3;
  *(v6 + 48) = 0;
  *v6 = *a2;
  *(v6 + 16) = a2[1];
  insertleaf(a1, *a1, v6);
  ++*(a1 + 20);
  return v6;
}

uint64_t insertleaf(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  v4 = result;
  if (*result)
  {
    v5 = a2;
    v6 = *(a2 + 48);
    if (v6)
    {
      v7 = vaddq_f32(*a3, a3[1]);
      do
      {
        v8 = vsubq_f32(v7, vaddq_f32(**(v5 + 40), *(*(v5 + 40) + 16)));
        v9 = vabs_f32(*v8.i8);
        v10 = vsubq_f32(v7, vaddq_f32(*v6, v6[1]));
        v11 = vabs_f32(*v10.i8);
        *v8.i8 = vadd_f32(vabs_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v10, v10, 8uLL))), vadd_f32(vzip1_s32(v9, v11), vzip2_s32(v9, v11)));
        v5 = *(v5 + 40 + 8 * (*&vmvn_s8(vcgt_f32(vdup_lane_s32(*v8.i8, 1), *v8.i8)) & 1));
        v6 = *(v5 + 48);
      }

      while (v6);
    }

    v12 = *(v5 + 32);
    result = *(result + 8);
    if (result)
    {
      v4[1] = 0;
    }

    else
    {
      result = btAlignedAllocInternal(64, 16);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
    }

    v13 = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = v12;
    do
    {
      v14 = a3->f32[v13 / 4];
      v15 = v5 + v13;
      if (v14 >= *(v5 + v13))
      {
        v14 = *(v5 + v13);
      }

      *(result + v13) = v14;
      v16 = a3[1].f32[v13 / 4];
      if (v16 <= *(v15 + 16))
      {
        v16 = *(v15 + 16);
      }

      *(result + v13 + 16) = v16;
      v13 += 4;
    }

    while (v13 != 12);
    if (v12)
    {
      *(v12 + 8 * (*(*(v5 + 32) + 48) == v5) + 40) = result;
      *(result + 40) = v5;
      *(v5 + 32) = result;
      *(result + 48) = a3;
      a3[2].i64[0] = result;
      do
      {
        v17 = v12;
        if (*v12 <= *result && *(v12 + 4) <= *(result + 4) && *(v12 + 8) <= *(result + 8) && *(v12 + 16) >= *(result + 16) && *(v12 + 20) >= *(result + 20) && *(v12 + 24) >= *(result + 24))
        {
          break;
        }

        v18 = 0;
        v19 = *(v12 + 40) + 16;
        v20 = *(v12 + 48) + 16;
        do
        {
          v21 = (v19 + v18);
          v22 = *(v19 + v18 - 16);
          v23 = (v20 + v18);
          if (v22 >= *(v20 + v18 - 16))
          {
            v22 = *(v20 + v18 - 16);
          }

          *(v12 + v18) = v22;
          v24 = *v21;
          if (*v21 <= *v23)
          {
            v24 = *v23;
          }

          *(v12 + v18 + 16) = v24;
          v18 += 4;
        }

        while (v18 != 12);
        v12 = *(v12 + 32);
        result = v17;
      }

      while (v12);
    }

    else
    {
      *(result + 40) = v5;
      *(v5 + 32) = result;
      *(result + 48) = a3;
      a3[2].i64[0] = result;
      *v4 = result;
    }
  }

  else
  {
    *result = a3;
    a3[2].i64[0] = 0;
  }

  return result;
}

__int128 *removeleaf(void **a1, void *a2)
{
  if (*a1 == a2)
  {
    v4 = 0;
    *a1 = 0;
  }

  else
  {
    v3 = a2[4];
    v4 = v3[4];
    v5 = v3[(v3[6] != a2) + 5];
    if (v4)
    {
      *(v4 + (*(v4 + 6) == v3) + 5) = v5;
      v5[4] = v4;
      btAlignedFreeInternal(a1[1]);
      a1[1] = v3;
      while (1)
      {
        v6 = 0;
        v8 = *v4;
        v7 = v4[1];
        v9 = *(v4 + 5) + 16;
        v10 = *(v4 + 6) + 16;
        do
        {
          v11 = (v9 + v6);
          v12 = *(v9 + v6 - 16);
          v13 = (v10 + v6);
          if (v12 >= *(v10 + v6 - 16))
          {
            v12 = *(v10 + v6 - 16);
          }

          *(v4 + v6) = v12;
          v14 = *v11;
          if (*v11 <= *v13)
          {
            v14 = *v13;
          }

          *(v4 + v6 + 16) = v14;
          v6 += 4;
        }

        while (v6 != 12);
        if (*&v8 == *v4 && *(&v8 + 1) == *(v4 + 1) && *(&v8 + 2) == *(v4 + 2) && *&v7 == *(v4 + 4) && *(&v7 + 1) == *(v4 + 5) && *(&v7 + 2) == *(v4 + 6))
        {
          break;
        }

        v4 = *(v4 + 4);
        if (!v4)
        {
          return *a1;
        }
      }
    }

    else
    {
      *a1 = v5;
      v5[4] = 0;
      btAlignedFreeInternal(a1[1]);
      a1[1] = v3;
      return *a1;
    }
  }

  return v4;
}

uint64_t btDbvt::update(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v6 = removeleaf(a1, a2);
  if (v6)
  {
    v7 = *(a1 + 16);
    if (v7 < 0)
    {
      v6 = *a1;
    }

    else
    {
      for (; v7; --v7)
      {
        if (!*(v6 + 4))
        {
          break;
        }

        v6 = *(v6 + 4);
      }
    }
  }

  *a2 = *a3;
  *(a2 + 16) = a3[1];

  return insertleaf(a1, v6, a2);
}

uint64_t btDbvt::update(uint64_t a1, float *a2, float32x4_t *a3, uint64_t a4, int32x2_t a5, double a6, double a7, float32x4_t a8)
{
  if (*a2 <= a3->f32[0] && a2[1] <= a3->f32[1] && a2[2] <= a3->f32[2] && a2[4] >= a3[1].f32[0] && a2[5] >= a3[1].f32[1] && a2[6] >= a3[1].f32[2])
  {
    return 0;
  }

  v8 = vdupq_lane_s32(a5, 0);
  v8.i32[3] = 0;
  v9 = a3[1];
  v10 = vsubq_f32(*a3, v8);
  v12 = vaddq_f32(v8, v9);
  *a3 = v10;
  a3[1] = v12;
  v9.i32[0] = *a4;
  a8.i64[0] = 0;
  v11 = *vbslq_s8(vcgtq_f32(v9, a8), v12, v10).i32;
  v12.i32[0] = v12.i32[2];
  a3[*a4 > 0.0].f32[0] = *a4 + v11;
  v13 = *(a4 + 4);
  v14 = 1;
  if (v13 <= 0.0)
  {
    v15 = *&v10.i32[1];
  }

  else
  {
    v14 = 5;
    v15 = *&v12.i32[1];
  }

  a3->f32[v14] = v13 + v15;
  v16 = *(a4 + 8);
  v17 = 2;
  if (v16 <= 0.0)
  {
    v12.i32[0] = v10.i32[2];
  }

  else
  {
    v17 = 6;
  }

  a3->f32[v17] = v16 + *v12.i32;
  btDbvt::update(a1, a2, a3);
  return 1;
}

void btDbvt::remove(uint64_t a1, void *a2)
{
  removeleaf(a1, a2);
  btAlignedFreeInternal(*(a1 + 8));
  *(a1 + 8) = a2;
  --*(a1 + 20);
}

uint64_t btDbvtBroadphase::btDbvtBroadphase(uint64_t a1, btHashedOverlappingPairCache *a2)
{
  *a1 = &unk_282DC8A58;
  for (i = 8; i != 200; i += 96)
  {
    btDbvt::btDbvt((a1 + i));
  }

  *(a1 + 285) = 256;
  *(a1 + 284) = a2 == 0;
  *(a1 + 232) = 0;
  *(a1 + 236) = xmmword_21C2A3FC0;
  *(a1 + 252) = xmmword_21C2816A0;
  *(a1 + 268) = 0;
  if (!a2)
  {
    a2 = btAlignedAllocInternal(128, 16);
    btHashedOverlappingPairCache::btHashedOverlappingPairCache(a2);
  }

  *(a1 + 280) = 0;
  *(a1 + 272) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = a2;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  return a1;
}

void btDbvtBroadphase::~btDbvtBroadphase(btDbvtBroadphase *this)
{
  *this = &unk_282DC8A58;
  if (*(this + 284) == 1)
  {
    (***(this + 28))(*(this + 28));
    btAlignedFreeInternal(*(this + 28));
  }

  for (i = 104; i != -88; i -= 96)
  {
    btDbvt::~btDbvt((this + i));
  }
}

{
  btDbvtBroadphase::~btDbvtBroadphase(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btDbvtBroadphase::createProxy(uint64_t a1, _OWORD *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = btAlignedAllocInternal(112, 16);
  *v15 = a5;
  *(v15 + 8) = a6;
  *(v15 + 16) = a7;
  *(v15 + 24) = a8;
  *(v15 + 48) = *a2;
  *(v15 + 64) = *a3;
  *(v15 + 32) = 0;
  *(v15 + 88) = 0;
  *(v15 + 96) = 0;
  v16 = *a3;
  v23[0] = *a2;
  v23[1] = v16;
  *(v15 + 104) = *(a1 + 236);
  v17 = *(a1 + 280) + 1;
  *(a1 + 280) = v17;
  *(v15 + 40) = v17;
  v18 = btDbvt::insert(a1 + 8, v23, v15);
  v19 = *(a1 + 236);
  *(v15 + 80) = v18;
  *(v15 + 88) = 0;
  v20 = *(a1 + 200 + 8 * v19);
  *(v15 + 96) = v20;
  if (v20)
  {
    *(v20 + 88) = v15;
  }

  *(a1 + 200 + 8 * v19) = v15;
  if ((*(a1 + 285) & 1) == 0)
  {
    v22[0] = &unk_282DC8AD8;
    v22[1] = a1;
    v22[2] = v15;
    btDbvt::collideTV(a1 + 8, *(a1 + 8), v23, v22);
    btDbvt::collideTV(a1 + 104, *(a1 + 104), v23, v22);
  }

  return v15;
}

void btDbvt::collideTV(uint64_t a1, void *a2, __int128 *a3, uint64_t a4)
{
  if (a2)
  {
    v23 = a3[1];
    v24 = *a3;
    v6 = btAlignedAllocInternal(512, 16);
    v8 = *&v23;
    v7 = *&v24;
    v9 = v6;
    *v6 = a2;
    v10 = 1;
    v11 = 64;
    do
    {
      v12 = v10 - 1;
      v13 = v9[v10 - 1];
      if (*v13 <= v8 && v13[4] >= v7 && v13[1] <= *(&v23 + 1) && v13[5] >= *(&v24 + 1) && v13[2] <= *(&v23 + 2) && v13[6] >= *(&v24 + 2))
      {
        if (*(v13 + 6))
        {
          if (v12 == v11 && (!v11 ? (v14 = 1) : (v14 = 2 * v11), v11 < v14))
          {
            v15 = btAlignedAllocInternal(8 * v14, 16);
            v16 = v15;
            if (v10 >= 2)
            {
              v17 = v11;
              v18 = v15;
              v19 = v9;
              do
              {
                v20 = *v19++;
                *v18++ = v20;
                --v17;
              }

              while (v17);
            }

            btAlignedFreeInternal(v9);
            v11 = v14;
            v8 = *&v23;
            v7 = *&v24;
          }

          else
          {
            v16 = v9;
          }

          v16[v12] = *(v13 + 5);
          if (v10 == v11)
          {
            v11 = 2 * v10;
            v21 = btAlignedAllocInternal(16 * v10, 16);
            v9 = v21;
            v22 = 0;
            do
            {
              *(v21 + 8 * v22) = v16[v22];
              ++v22;
            }

            while (v10 != v22);
            btAlignedFreeInternal(v16);
            v8 = *&v23;
            v7 = *&v24;
          }

          else
          {
            v9 = v16;
          }

          v9[v10] = *(v13 + 6);
          v12 = v10 + 1;
        }

        else
        {
          (*(*a4 + 24))(a4, v9[v12]);
          v8 = *&v23;
          v7 = *&v24;
        }
      }

      v10 = v12;
    }

    while (v12 > 0);

    btAlignedFreeInternal(v9);
  }
}

void btDbvtBroadphase::destroyProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 104);
  v7 = *(a2 + 80);
  v8 = v6 == 2;
  v9 = 8;
  if (v8)
  {
    v9 = 104;
  }

  btDbvt::remove(a1 + v9, v7);
  v10 = (a1 + 8 * *(a2 + 104) + 200);
  v12 = *(a2 + 88);
  v11 = *(a2 + 96);
  if (v12)
  {
    v10 = (v12 + 96);
  }

  *v10 = v11;
  if (v11)
  {
    *(v11 + 88) = *(a2 + 88);
  }

  (*(**(a1 + 224) + 32))(*(a1 + 224), a2, a3);
  btAlignedFreeInternal(a2);
  *(a1 + 286) = 1;
}

__n128 btDbvtBroadphase::getAabb(uint64_t a1, uint64_t a2, _OWORD *a3, __n128 *a4)
{
  *a3 = *(a2 + 48);
  result = *(a2 + 64);
  *a4 = result;
  return result;
}

void btDbvtBroadphase::rayTest(uint64_t a1, float *a2, uint64_t a3, uint64_t a4, float32x4_t *a5, float32x4_t *a6)
{
  v12[0] = &unk_282DC8B20;
  v12[1] = a4;
  btDbvt::rayTestInternal((a1 + 8), *(a1 + 8), a2, *(a4 + 44), a3, (a4 + 16), (a4 + 32), a5, a6, v12);
  btDbvt::rayTestInternal((a1 + 104), *(a1 + 104), a2, *(a4 + 44), a3, (a4 + 16), (a4 + 32), a5, a6, v12);
}

void btDbvt::rayTestInternal(int *result, uint64_t a2, float *a3, float a4, uint64_t a5, float *a6, unsigned int *a7, float32x4_t *a8, float32x4_t *a9, uint64_t a10)
{
  v65 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v10 = a9;
    v17 = result[17];
    if (v17 <= 127)
    {
      if (result[18] <= 127)
      {
        v18 = a8;
        v19 = btAlignedAllocInternal(1024, 16);
        v20 = v19;
        v21 = result[17];
        if (v21 >= 1)
        {
          v22 = 0;
          v23 = 8 * v21;
          do
          {
            *(v19 + v22) = *(*(result + 10) + v22);
            v22 += 8;
          }

          while (v23 != v22);
        }

        v24 = *(result + 10);
        a8 = v18;
        if (v24 && *(result + 88) == 1)
        {
          btAlignedFreeInternal(v24);
          a8 = v18;
        }

        *(result + 88) = 1;
        *(result + 10) = v20;
        result[18] = 128;
        v10 = a9;
      }

      v25 = 8 * v17;
      v26 = 128 - v17;
      do
      {
        *(*(result + 10) + v25) = 0;
        v25 += 8;
        --v26;
      }

      while (v26);
    }

    result[17] = 128;
    **(result + 10) = a2;
    v27 = 126;
    LODWORD(v28) = 1;
    while (1)
    {
      v29 = v28;
      v28 = v28 - 1;
      v30 = *(result + 10);
      v31 = *(v30 + 8 * v28);
      v32 = vsubq_f32(*v31, *v10);
      v32.i32[3] = 0;
      v33 = vsubq_f32(v31[1], *a8);
      v33.i32[3] = 0;
      v64[0] = v32;
      v64[1] = v33;
      v34 = *a7;
      v35 = a7[1];
      v36 = a3[1];
      v37 = a6[1];
      v38 = (*&v64[v34] - *a3) * *a6;
      v39 = *a6 * (*&v64[(1 - v34)] - *a3);
      v40 = (*(&v64[v35] + 1) - v36) * v37;
      v41 = v37 * (*(&v64[(1 - v35)] + 1) - v36);
      if (v38 > v41 || v40 > v39)
      {
        goto LABEL_45;
      }

      if (v40 > v38)
      {
        v38 = v40;
      }

      if (v41 < v39)
      {
        v39 = v41;
      }

      v43 = a7[2];
      v44 = a3[2];
      v45 = a6[2];
      v46 = (*(&v64[v43] + 2) - v44) * v45;
      v47 = v45 * (*(&v64[(1 - v43)] + 2) - v44);
      if (v38 > v47 || v46 > v39)
      {
        goto LABEL_45;
      }

      if (v46 <= v38)
      {
        v46 = v38;
      }

      v49 = v47 >= v39 ? v39 : v47;
      if (v46 >= a4 || v49 <= 0.0)
      {
        goto LABEL_45;
      }

      if (v31[3].i64[0])
      {
        if (v28 > v27)
        {
          v50 = result[17];
          v51 = 2 * v50;
          if (v50 < 2 * v50)
          {
            if (result[18] < v51)
            {
              v62 = a8;
              if (v50)
              {
                v52 = btAlignedAllocInternal(16 * v50, 16);
                v53 = v52;
                v54 = result[17];
                if (v54 >= 1)
                {
                  v55 = 0;
                  v56 = 8 * v54;
                  do
                  {
                    *(v52 + v55) = *(*(result + 10) + v55);
                    v55 += 8;
                  }

                  while (v56 != v55);
                }

                v51 = 2 * v50;
                a8 = v62;
              }

              else
              {
                v53 = 0;
              }

              v60 = *(result + 10);
              if (v60 && *(result + 88) == 1)
              {
                v61 = v53;
                btAlignedFreeInternal(v60);
                v53 = v61;
                v51 = 2 * v50;
                a8 = v62;
              }

              *(result + 88) = 1;
              *(result + 10) = v53;
              result[18] = v51;
            }

            do
            {
              *(*(result + 10) + 8 * v50++) = 0;
            }

            while (v51 != v50);
            v30 = *(result + 10);
          }

          result[17] = v51;
          v27 = (v51 - 2);
          v10 = a9;
        }

        *(v30 + 8 * v28) = v31[2].i64[1];
        LODWORD(v28) = v29 + 1;
        *(*(result + 10) + 8 * v29) = v31[3].i64[0];
        if (v29 == -1)
        {
          return;
        }
      }

      else
      {
        v57 = v31;
        v58 = a8;
        v59 = v27;
        (*(*a10 + 24))(a10, v57, a3, a5);
        v27 = v59;
        a8 = v58;
LABEL_45:
        if (!v28)
        {
          return;
        }
      }
    }
  }
}

void btDbvtBroadphase::aabbTest(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v7[0] = &unk_282DC8B68;
  v7[1] = a4;
  v5 = *a3;
  v6[0] = *a2;
  v6[1] = v5;
  btDbvt::collideTV(a1 + 8, *(a1 + 8), v6, v7);
  btDbvt::collideTV(a1 + 104, *(a1 + 104), v6, v7);
}

void btDbvtBroadphase::setAabb(uint64_t a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, double a7, float32x4_t a8)
{
  v12 = *a3;
  v13 = *a4;
  v28[0] = *a3;
  v28[1] = v13;
  if (a2[6].i32[2] == 2)
  {
    btDbvt::remove(a1 + 104, a2[5].i64[0]);
    a2[5].i64[0] = btDbvt::insert(a1 + 8, v28, a2);
LABEL_10:
    v15 = 1;
    goto LABEL_11;
  }

  ++*(a1 + 260);
  v14 = a2[5].i64[0];
  if (*v14 > v13.f32[0] || *(v14 + 16) < v12.f32[0] || *(v14 + 4) > v13.f32[1] || (a8.i32[0] = *(v14 + 20), a8.f32[0] < v12.f32[1]) || *(v14 + 8) > v13.f32[2] || *(v14 + 24) < v12.f32[2])
  {
    btDbvt::update(a1 + 8, v14, v28);
    ++*(a1 + 264);
    goto LABEL_10;
  }

  v22 = a2[3];
  v23 = vsubq_f32(*a3, v22);
  v24 = vsubq_f32(a2[4], v22);
  v24.i32[3] = 0;
  v25.i64[0] = 0x3F0000003F000000;
  v25.i64[1] = 0x3F0000003F000000;
  v26 = vmulq_n_f32(vmulq_f32(v24, v25), *(a1 + 232));
  v26.i32[3] = 0;
  v27 = v26;
  if (v23.f32[0] < 0.0)
  {
    v27.f32[0] = -v26.f32[0];
  }

  v25.i32[0] = v23.i32[1];
  if (v23.f32[1] < 0.0)
  {
    v25.f32[0] = -v26.f32[1];
    v27.f32[1] = -v26.f32[1];
  }

  if (v23.f32[2] < 0.0)
  {
    v27.f32[2] = -v26.f32[2];
  }

  v23.i32[0] = 1028443341;
  v15 = btDbvt::update(a1 + 8, v14, v28, &v27, *v23.f32, *v26.i64, *v25.i64, a8);
  if (v15)
  {
    ++*(a1 + 264);
  }

LABEL_11:
  v16 = a1 + 200;
  v17 = (a1 + 200 + 8 * a2[6].i32[2]);
  v19 = a2[5].i64[1];
  v18 = a2[6].i64[0];
  if (v19)
  {
    v17 = (v19 + 96);
  }

  *v17 = v18;
  if (v18)
  {
    *(v18 + 88) = a2[5].i64[1];
  }

  a2[3] = *a3;
  a2[4] = *a4;
  v20 = *(a1 + 236);
  a2[6].i32[2] = v20;
  a2[5].i64[1] = 0;
  v21 = *(v16 + 8 * v20);
  a2[6].i64[0] = v21;
  if (v21)
  {
    *(v21 + 88) = a2;
  }

  *(v16 + 8 * v20) = a2;
  if (v15)
  {
    *(a1 + 286) = 1;
    if ((*(a1 + 285) & 1) == 0)
    {
      v27.i64[0] = &unk_282DC8AD8;
      v27.i64[1] = a1;
      btDbvt::collideTTpersistentStack((a1 + 104), *(a1 + 104), a2[5].i64[0], &v27);
      btDbvt::collideTTpersistentStack((a1 + 8), *(a1 + 8), a2[5].i64[0], &v27);
    }
  }
}

void btDbvt::collideTTpersistentStack(int *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 && a3)
  {
    if (result[9] <= 127 && result[10] <= 127)
    {
      v8 = btAlignedAllocInternal(2048, 16);
      v9 = v8;
      v10 = result[9];
      if (v10 >= 1)
      {
        v11 = 0;
        v12 = 16 * v10;
        do
        {
          *(v8 + v11) = *(*(result + 6) + v11);
          v11 += 16;
        }

        while (v12 != v11);
      }

      v13 = *(result + 6);
      if (v13 && *(result + 56) == 1)
      {
        btAlignedFreeInternal(v13);
      }

      *(result + 56) = 1;
      *(result + 6) = v9;
      result[10] = 128;
    }

    result[9] = 128;
    v14 = *(result + 6);
    *v14 = a2;
    v14[1] = a3;
    v15 = 124;
    LODWORD(v16) = 1;
    do
    {
      v17 = v16;
      v16 = v16 - 1;
      v18 = (*(result + 6) + 16 * v16);
      v19 = *v18;
      v20 = v18[1];
      if (v16 > v15)
      {
        v21 = result[9];
        v22 = 2 * v21;
        if (v21 < 2 * v21 && result[10] < v22)
        {
          if (v21)
          {
            v23 = btAlignedAllocInternal(32 * v21, 16);
            v24 = v23;
            v25 = result[9];
            if (v25 >= 1)
            {
              v26 = 0;
              v27 = 16 * v25;
              do
              {
                *(v23 + v26) = *(*(result + 6) + v26);
                v26 += 16;
              }

              while (v27 != v26);
            }
          }

          else
          {
            v24 = 0;
          }

          v28 = *(result + 6);
          if (v28 && *(result + 56) == 1)
          {
            btAlignedFreeInternal(v28);
          }

          *(result + 56) = 1;
          *(result + 6) = v24;
          result[10] = v22;
        }

        result[9] = v22;
        v15 = v22 - 4;
      }

      if (v19 == v20)
      {
        if (*(v19 + 48))
        {
          v39 = (v19 + 40);
          v40 = vld1q_dup_f64(v39);
          *(*(result + 6) + 16 * v16) = v40;
          v41 = (v19 + 48);
          v42 = vld1q_dup_f64(v41);
          *(*(result + 6) + 16 * v17) = v42;
          LODWORD(v16) = v17 + 2;
          *(*(result + 6) + 16 * v17 + 16) = *(v19 + 40);
        }
      }

      else if (*v19 <= *(v20 + 16) && *(v19 + 16) >= *v20 && *(v19 + 4) <= *(v20 + 20) && *(v19 + 20) >= *(v20 + 4) && *(v19 + 8) <= *(v20 + 24) && *(v19 + 24) >= *(v20 + 8))
      {
        v29 = *(v20 + 48);
        if (*(v19 + 48))
        {
          v30 = *(v19 + 40);
          if (v29)
          {
            v31 = *(v20 + 40);
            v32 = (*(result + 6) + 16 * v16);
            *v32 = v30;
            v32[1] = v31;
            v33 = *(v20 + 40);
            v34 = (*(result + 6) + 16 * v17);
            *v34 = *(v19 + 48);
            v34[1] = v33;
            v35 = *(v20 + 48);
            v36 = *(result + 6) + 16 * v17;
            *(v36 + 16) = *(v19 + 40);
            *(v36 + 24) = v35;
            v37 = *(v20 + 48);
            LODWORD(v16) = v17 + 3;
            v38 = *(result + 6) + 16 * v17;
            *(v38 + 32) = *(v19 + 48);
            *(v38 + 40) = v37;
          }

          else
          {
            v47 = (*(result + 6) + 16 * v16);
            *v47 = v30;
            v47[1] = v20;
            LODWORD(v16) = v17 + 1;
            v48 = (*(result + 6) + 16 * v17);
            *v48 = *(v19 + 48);
            v48[1] = v20;
          }
        }

        else if (v29)
        {
          v43 = *(v20 + 40);
          v44 = (*(result + 6) + 16 * v16);
          *v44 = v19;
          v44[1] = v43;
          v45 = *(v20 + 48);
          LODWORD(v16) = v17 + 1;
          v46 = (*(result + 6) + 16 * v17);
          *v46 = v19;
          v46[1] = v45;
        }

        else
        {
          (*(*a4 + 16))(a4, v19, v20);
        }
      }
    }

    while (v16);
  }
}

void btDbvtBroadphase::calculateOverlappingPairs(uint64_t a1, uint64_t a2)
{
  btDbvtBroadphase::collide(a1);

  btDbvtBroadphase::performDeferredRemoval(a1, a2);
}

uint32x2_t btDbvtBroadphase::collide(uint64_t a1)
{
  v2 = 1374389535 * *(a1 + 244) * *(a1 + 28);
  btDbvt::optimizeIncremental(a1 + 8, (v2 >> 37) + (v2 >> 63) + 1);
  if (*(a1 + 256))
  {
    v3 = 1374389535 * *(a1 + 240) * *(a1 + 124);
    v4 = (v3 >> 37) + (v3 >> 63) + 1;
    btDbvt::optimizeIncremental(a1 + 104, v4);
    *(a1 + 256) = (*(a1 + 256) - v4) & ~((*(a1 + 256) - v4) >> 31);
  }

  v5 = *(a1 + 236);
  v6 = __OFADD__(v5++, 1);
  v7 = (v5 < 0) ^ v6;
  v8 = v5 & 1;
  if (v7)
  {
    v8 = -v8;
  }

  *(a1 + 236) = v8;
  v9 = *(a1 + 200 + 8 * v8);
  if (v9)
  {
    v32 = &unk_282DC8AD8;
    v33 = a1;
    do
    {
      v10 = (a1 + 200 + 8 * *(v9 + 104));
      v11 = *(v9 + 88);
      v12 = *(v9 + 96);
      if (v11)
      {
        v10 = (v11 + 96);
      }

      *v10 = v12;
      if (v12)
      {
        *(v12 + 88) = *(v9 + 88);
      }

      *(v9 + 88) = 0;
      v13 = *(a1 + 216);
      *(v9 + 96) = v13;
      if (v13)
      {
        *(v13 + 88) = v9;
      }

      *(a1 + 216) = v9;
      btDbvt::remove(a1 + 8, *(v9 + 80));
      v14 = *(v9 + 64);
      v31[0] = *(v9 + 48);
      v31[1] = v14;
      *(v9 + 80) = btDbvt::insert(a1 + 104, v31, v9);
      *(v9 + 104) = 2;
      v9 = v12;
    }

    while (v12);
    *(a1 + 256) = *(a1 + 124);
    *(a1 + 286) = 1;
  }

  *&v31[0] = &unk_282DC8AD8;
  *(&v31[0] + 1) = a1;
  if (*(a1 + 285) == 1)
  {
    btDbvt::collideTTpersistentStack((a1 + 8), *(a1 + 8), *(a1 + 104), v31);
    if (*(a1 + 285))
    {
      btDbvt::collideTTpersistentStack((a1 + 8), *(a1 + 8), *(a1 + 8), v31);
    }
  }

  if (*(a1 + 286) == 1)
  {
    v15 = (*(**(a1 + 224) + 56))(*(a1 + 224));
    v17 = *(v15 + 4);
    if (v17 >= 1)
    {
      v18 = 1374389535 * *(a1 + 248) * v17;
      v19 = (v18 >> 37) + (v18 >> 63);
      if (*(a1 + 252) > v19)
      {
        v19 = *(a1 + 252);
      }

      if (v17 >= v19)
      {
        v20 = v19;
      }

      else
      {
        v20 = *(v15 + 4);
      }

      if (v19 < 1)
      {
        goto LABEL_36;
      }

      v21 = v15;
      v22 = 0;
      do
      {
        v23 = (*(v21 + 16) + 32 * ((*(a1 + 276) + v22) % *(v21 + 4)));
        v24 = v23[1];
        v25 = *(*v23 + 80);
        v26 = *(v24 + 80);
        v16.n128_u32[0] = *v25;
        if (*v25 > v26[4] || (v16.n128_u32[0] = v25[4], v16.n128_f32[0] < *v26) || (v16.n128_u32[0] = v25[1], v16.n128_f32[0] > v26[5]) || (v16.n128_u32[0] = v25[5], v16.n128_f32[0] < v26[1]) || (v16.n128_u32[0] = v25[2], v16.n128_f32[0] > v26[6]) || (v16.n128_u32[0] = v25[6], v16.n128_f32[0] < v26[2]))
        {
          (*(**(a1 + 224) + 24))(*(a1 + 224), v16);
          --v20;
          --v22;
        }

        ++v22;
      }

      while (v22 < v20);
      v17 = *(v21 + 4);
      if (v17 <= 0)
      {
        *(a1 + 276) = 0;
      }

      else
      {
LABEL_36:
        *(a1 + 276) = (*(a1 + 276) + v20) % v17;
      }
    }
  }

  ++*(a1 + 272);
  *(a1 + 252) = 1;
  *(a1 + 286) = 0;
  v27 = *(a1 + 260);
  if (v27.i32[0])
  {
    v28 = vcvt_f32_u32(v27);
    v29 = vdiv_f32(vdup_lane_s32(v28, 1), v28).u32[0];
  }

  else
  {
    v29 = 0;
  }

  *(a1 + 268) = v29;
  result = vshr_n_u32(v27, 1uLL);
  *(a1 + 260) = result;
  return result;
}

void btDbvtBroadphase::performDeferredRemoval(uint64_t a1, uint64_t a2)
{
  if ((*(**(a1 + 224) + 112))(*(a1 + 224)))
  {
    v4 = (*(**(a1 + 224) + 56))(*(a1 + 224));
    v6 = v4;
    v7 = *(v4 + 4);
    v8 = (v7 - 1);
    if (v7 > 1)
    {
      btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(v4, &v34, 0, v8);
      v7 = *(v6 + 4);
    }

    if (v7 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = v13;
        v15 = v12;
        v16 = *(v6 + 16);
        v17 = (v16 + v9);
        v12 = *(v16 + v9);
        v13 = *(v16 + v9 + 8);
        v18 = v12 == v15 && v13 == v14;
        if (v18 || (v19 = *(v12 + 80), v20 = *(v13 + 80), v5.n128_u32[0] = *v19, *v19 > v20[4]) || (v5.n128_u32[0] = v19[4], v5.n128_f32[0] < *v20) || (v5.n128_u32[0] = v19[1], v5.n128_f32[0] > v20[5]) || (v5.n128_u32[0] = v19[5], v5.n128_f32[0] < v20[1]) || (v5.n128_u32[0] = v19[2], v5.n128_f32[0] > v20[6]) || (v5.n128_u32[0] = v19[6], v5.n128_f32[0] < v20[2]))
        {
          (*(**(a1 + 224) + 64))(*(a1 + 224), v16 + v9, a2, v8, v5);
          ++v11;
          *v17 = 0;
          v17[1] = 0;
          v7 = *(v6 + 4);
        }

        ++v10;
        v9 += 32;
      }

      while (v10 < v7);
      if (v7 >= 2)
      {
        btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(v6, &v33, 0, (v7 - 1));
        v7 = *(v6 + 4);
      }

      v21 = v7 - v11;
      if (v11 < 0)
      {
        if (*(v6 + 8) < v21)
        {
          if (v7 == v11)
          {
            v22 = 0;
          }

          else
          {
            v23 = btAlignedAllocInternal(32 * v21, 16);
            v22 = v23;
            v24 = *(v6 + 4);
            if (v24 >= 1)
            {
              v25 = 0;
              v26 = 32 * v24;
              do
              {
                v27 = v23 + v25;
                v28 = *(v6 + 16) + v25;
                *v27 = *v28;
                *(v27 + 16) = *(v28 + 16);
                *(v27 + 24) = *(v28 + 24);
                v25 += 32;
              }

              while (v26 != v25);
            }
          }

          v29 = *(v6 + 16);
          if (v29 && *(v6 + 24) == 1)
          {
            btAlignedFreeInternal(v29);
          }

          *(v6 + 24) = 1;
          *(v6 + 16) = v22;
          *(v6 + 8) = v21;
        }

        v30 = v7;
        v31 = 32 * v7;
        do
        {
          v32 = (*(v6 + 16) + v31);
          ++v30;
          *v32 = 0uLL;
          v32[1] = 0uLL;
          v31 += 32;
        }

        while (v30 < v21);
      }

      v7 -= v11;
    }

    *(v6 + 4) = v7;
  }
}

uint64_t btDbvtBroadphase::getOverlappingPairCache(btDbvtBroadphase *this)
{
  return *(this + 28);
}

{
  return *(this + 28);
}

uint64_t btDbvtBroadphase::getBroadphaseAabb(uint64_t this, btVector3 *a2, btVector3 *a3)
{
  v3 = *(this + 8);
  v4 = *(this + 104);
  if (v3)
  {
    if (v4)
    {
      v5 = 0;
      var0 = v3[1].var0.var0;
      v7 = v4[1].var0.var0;
      do
      {
        v8 = (var0 + v5);
        v9 = *(var0 + v5 - 16);
        v10 = (v7 + v5);
        if (v9 >= *(v7 + v5 - 16))
        {
          v9 = *(v7 + v5 - 16);
        }

        *(v14 + v5) = v9;
        v11 = *v8;
        if (*v8 <= *v10)
        {
          v11 = *v10;
        }

        *(&v14[1] + v5) = v11;
        v5 += 4;
      }

      while (v5 != 12);
      v13 = v14[0];
      v12 = v14[1];
    }

    else
    {
      v13 = *v3;
      v12 = v3[1];
    }
  }

  else if (v4)
  {
    v13 = *v4;
    v12 = v4[1];
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  *a2 = v13;
  *a3 = v12;
  return this;
}

double btDbvtBroadphase::resetPool(uint64_t a1)
{
  if (!(*(a1 + 28) + *(a1 + 124)))
  {
    btDbvt::clear((a1 + 8));
    btDbvt::clear((a1 + 104));
    *(a1 + 285) = 256;
    *(a1 + 236) = xmmword_21C2A3FC0;
    *&result = 1;
    *(a1 + 252) = 1;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 200) = 0;
    *(a1 + 268) = 0;
    *(a1 + 276) = 0;
    *(a1 + 260) = 0;
  }

  return result;
}

uint64_t btDbvtTreeCollider::Process(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v3 = result;
    result = (*(**(*(result + 8) + 224) + 16))(*(*(result + 8) + 224), *(a2 + 40), *(a3 + 40));
    ++*(*(v3 + 8) + 252);
  }

  return result;
}

uint64_t btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 16) + 32 * ((a4 + a3 + ((a4 + a3) >> 31)) >> 1);
  v24 = *v8;
  v25 = *(v8 + 16);
  v26 = *(v8 + 24);
  LODWORD(v9) = a3;
  LODWORD(v10) = a4;
  do
  {
    v11 = v9 - 1;
    v12 = 32 * v9;
    do
    {
      v13 = btBroadphasePairSortPredicate::operator()(a2, (*(a1 + 16) + v12), &v24);
      ++v11;
      v9 = (v9 + 1);
      v12 += 32;
    }

    while (v13);
    v14 = v10 + 1;
    v15 = 32 * v10;
    do
    {
      result = btBroadphasePairSortPredicate::operator()(a2, &v24, (*(a1 + 16) + v15));
      --v14;
      v10 = (v10 - 1);
      v15 -= 32;
    }

    while ((result & 1) != 0);
    if (v11 <= v14)
    {
      v17 = *(a1 + 16);
      v18 = v17 + v12;
      v19 = v17 + v15;
      v20 = *(v18 - 32);
      v21 = *(v18 - 16);
      v22 = *(v19 + 48);
      *(v18 - 32) = *(v19 + 32);
      *(v18 - 16) = v22;
      v23 = *(a1 + 16) + v15;
      *(v23 + 32) = v20;
      *(v23 + 48) = v21;
    }

    else
    {
      v9 = (v9 - 1);
      v10 = (v10 + 1);
    }
  }

  while (v9 <= v10);
  if (v10 > a3)
  {
    result = btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(a1, a2, a3, v10);
  }

  if (v9 < a4)
  {
    return btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(a1, a2, v9, a4);
  }

  return result;
}

BOOL btBroadphasePairSortPredicate::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = *(v3 + 40);
  }

  else
  {
    v4 = -1;
  }

  v5 = *a3;
  if (*a3)
  {
    v6 = *(v5 + 40);
  }

  else
  {
    v6 = -1;
  }

  v7 = a2[1];
  if (v7)
  {
    v8 = *(v7 + 40);
  }

  else
  {
    v8 = -1;
  }

  v9 = a3[1];
  if (v9)
  {
    v10 = *(v9 + 40);
  }

  else
  {
    v10 = -1;
  }

  if (v4 > v6)
  {
    return 1;
  }

  result = v8 > v10 && v3 == v5;
  if (v3 == v5 && v8 <= v10)
  {
    return v7 == v9 && a2[2] > a3[2];
  }

  return result;
}

void btHashedOverlappingPairCache::btHashedOverlappingPairCache(btHashedOverlappingPairCache *this)
{
  *this = &unk_282DC8BB0;
  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 5) = 0;
  *(this + 48) = 0;
  *(this + 80) = 1;
  *(this + 9) = 0;
  *(this + 60) = 0;
  *(this + 112) = 1;
  *(this + 13) = 0;
  *(this + 92) = 0;
  *(this + 15) = 0;
  v2 = btAlignedAllocInternal(64, 16);
  v3 = v2;
  v4 = *(this + 3);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = 32 * v4;
    do
    {
      v7 = v2 + v5;
      v8 = *(this + 3) + v5;
      *v7 = *v8;
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 24) = *(v8 + 24);
      v5 += 32;
    }

    while (v6 != v5);
  }

  v9 = *(this + 3);
  if (v9 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v9);
  }

  *(this + 32) = 1;
  *(this + 3) = v3;
  *(this + 4) = 2;
  btHashedOverlappingPairCache::growTables(this);
}

void btHashedOverlappingPairCache::growTables(btHashedOverlappingPairCache *this)
{
  v1 = *(this + 4);
  v2 = *(this + 15);
  if (v2 >= v1)
  {
    return;
  }

  if (*(this + 16) < v1)
  {
    if (v1)
    {
      v4 = btAlignedAllocInternal(4 * v1, 16);
      LODWORD(v5) = *(this + 15);
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = *(this + 15);
    }

    v6 = *(this + 9);
    if (v5 < 1)
    {
      if (!v6)
      {
LABEL_14:
        *(this + 80) = 1;
        *(this + 9) = v4;
        *(this + 16) = v1;
        goto LABEL_15;
      }
    }

    else
    {
      v5 = v5;
      v7 = v4;
      v8 = *(this + 9);
      do
      {
        v9 = *v8++;
        *v7++ = v9;
        --v5;
      }

      while (v5);
    }

    if (*(this + 80) == 1)
    {
      btAlignedFreeInternal(v6);
    }

    *(this + 9) = 0;
    goto LABEL_14;
  }

LABEL_15:
  bzero((*(this + 9) + 4 * v2), 4 * (v1 + ~v2) + 4);
  *(this + 15) = v1;
  v10 = *(this + 23);
  if (v10 < v1)
  {
    if (*(this + 24) >= v1)
    {
LABEL_28:
      bzero((*(this + 13) + 4 * v10), 4 * (v1 + ~v10) + 4);
      goto LABEL_29;
    }

    if (v1)
    {
      v11 = btAlignedAllocInternal(4 * v1, 16);
    }

    else
    {
      v11 = 0;
    }

    LODWORD(v12) = *(this + 23);
    v13 = *(this + 13);
    if (v12 < 1)
    {
      if (!v13)
      {
LABEL_27:
        *(this + 112) = 1;
        *(this + 13) = v11;
        *(this + 24) = v1;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v12;
      v14 = v11;
      v15 = *(this + 13);
      do
      {
        v16 = *v15++;
        *v14++ = v16;
        --v12;
      }

      while (v12);
    }

    if (*(this + 112) == 1)
    {
      btAlignedFreeInternal(v13);
    }

    goto LABEL_27;
  }

LABEL_29:
  *(this + 23) = v1;
  if (v1 >= 1)
  {
    memset(*(this + 9), 255, 4 * v1);
    memset(*(this + 13), 255, 4 * v1);
  }

  if (v2 >= 1)
  {
    v17 = 0;
    v18 = *(this + 9);
    v19 = *(this + 13);
    v20 = *(this + 3) + 8;
    do
    {
      v21 = *(*(v20 - 8) + 40) | (*(*v20 + 40) << 16);
      v22 = ~(v21 << 15) + v21;
      v23 = (9 * (v22 ^ (v22 >> 10))) ^ ((9 * (v22 ^ (v22 >> 10))) >> 6);
      LODWORD(v23) = (*(this + 4) - 1) & (((v23 + ~(v23 << 11)) >> 16) ^ (v23 + ~(v23 << 11)));
      *(v19 + 4 * v17) = *(v18 + 4 * v23);
      *(v18 + 4 * v23) = v17++;
      v20 += 32;
    }

    while (v2 != v17);
  }
}

void btHashedOverlappingPairCache::~btHashedOverlappingPairCache(btHashedOverlappingPairCache *this)
{
  *this = &unk_282DC8BB0;
  v2 = *(this + 13);
  if (v2 && *(this + 112) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 112) = 1;
  *(this + 13) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  v3 = *(this + 9);
  if (v3 && *(this + 80) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 80) = 1;
  *(this + 9) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v4 = *(this + 3);
  if (v4 && *(this + 32) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 32) = 1;
  *(this + 3) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
}

{
  btHashedOverlappingPairCache::~btHashedOverlappingPairCache(this);

  JUMPOUT(0x21CF07610);
}

void (***btHashedOverlappingPairCache::cleanOverlappingPair(uint64_t a1, uint64_t a2, uint64_t a3))(void)
{
  result = *(a2 + 16);
  if (result)
  {
    (**result)(result);
    result = (*(*a3 + 120))(a3, *(a2 + 16));
    *(a2 + 16) = 0;
  }

  return result;
}

uint64_t btHashedOverlappingPairCache::cleanProxyFromPairs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = &unk_282DC8C48;
  v4[1] = a2;
  v4[2] = a1;
  v4[3] = a3;
  return (*(*a1 + 96))(a1, v4);
}

uint64_t btHashedOverlappingPairCache::removeOverlappingPairsContainingProxy(uint64_t a1, uint64_t a2)
{
  v3[0] = &unk_282DC8C70;
  v3[1] = a2;
  return (*(*a1 + 96))(a1, v3);
}

void *btHashedOverlappingPairCache::findPair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  v4 = *(a3 + 40);
  v5 = v3 <= v4;
  if (v3 <= v4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  if (v5)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v6 + 40);
  v9 = *(v7 + 40);
  v10 = ~((v8 | (v9 << 16)) << 15) + (v8 | (v9 << 16));
  v11 = (9 * (v10 ^ (v10 >> 10))) ^ ((9 * (v10 ^ (v10 >> 10))) >> 6);
  v12 = (*(a1 + 16) - 1) & (((v11 + ~(v11 << 11)) >> 16) ^ (v11 + ~(v11 << 11)));
  if (v12 >= *(a1 + 60))
  {
    return 0;
  }

  v13 = *(*(a1 + 72) + 4 * v12);
  if (v13 == -1)
  {
    return 0;
  }

  while (1)
  {
    v14 = v13;
    v15 = (*(a1 + 24) + 32 * v13);
    if (*(*v15 + 40) == v8 && *(v15[1] + 40) == v9)
    {
      break;
    }

    v13 = *(*(a1 + 104) + 4 * v14);
    if (v13 == -1)
    {
      return 0;
    }
  }

  return v15;
}

uint64_t *btHashedOverlappingPairCache::internalAddPair(btHashedOverlappingPairCache *this, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 40);
  v5 = *(a3 + 40);
  if (v4 <= v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  if (v4 <= v5)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v6 + 40);
  v9 = *(v7 + 40);
  v10 = ~((v8 | (v9 << 16)) << 15) + (v8 | (v9 << 16));
  v11 = (9 * (v10 ^ (v10 >> 10))) ^ ((9 * (v10 ^ (v10 >> 10))) >> 6);
  v12 = ((v11 + ~(v11 << 11)) >> 16) ^ (v11 + ~(v11 << 11));
  v13 = *(this + 4);
  LODWORD(v14) = (v13 - 1) & v12;
  v15 = *(*(this + 9) + 4 * v14);
  if (v15 == -1)
  {
LABEL_11:
    v17 = *(this + 3);
    if (v17 == v13)
    {
      if (v13)
      {
        v18 = 2 * v13;
      }

      else
      {
        v18 = 1;
      }

      if (v13 >= v18)
      {
        v18 = *(this + 4);
        v21 = v18;
      }

      else
      {
        if (v18)
        {
          v19 = btAlignedAllocInternal(32 * v18, 16);
          v20 = *(this + 3);
        }

        else
        {
          v19 = 0;
          v20 = *(this + 4);
        }

        if (v20 >= 1)
        {
          v22 = 0;
          v23 = 32 * v20;
          do
          {
            v24 = v19 + v22;
            v25 = *(this + 3) + v22;
            *v24 = *v25;
            *(v24 + 16) = *(v25 + 16);
            *(v24 + 24) = *(v25 + 24);
            v22 += 32;
          }

          while (v23 != v22);
        }

        v26 = *(this + 3);
        if (v26 && *(this + 32) == 1)
        {
          btAlignedFreeInternal(v26);
        }

        *(this + 32) = 1;
        *(this + 3) = v19;
        *(this + 4) = v18;
        v21 = *(this + 3);
      }
    }

    else
    {
      v18 = *(this + 4);
      v21 = *(this + 3);
    }

    v14 = v14;
    *(this + 3) = v21 + 1;
    v16 = (*(this + 3) + 32 * v17);
    v27 = *(this + 15);
    if (v27)
    {
      (*(*v27 + 16))(v27, v6, v7);
      v18 = *(this + 4);
    }

    if (v13 < v18)
    {
      btHashedOverlappingPairCache::growTables(this);
      v14 = (*(this + 4) - 1) & v12;
    }

    v28 = *(v6 + 40);
    v29 = *(v7 + 40);
    v30 = v28 < v29;
    if (v28 >= v29)
    {
      v31 = v7;
    }

    else
    {
      v31 = v6;
    }

    if (v30)
    {
      v32 = v7;
    }

    else
    {
      v32 = v6;
    }

    v16[2] = 0;
    v16[3] = 0;
    v33 = *(this + 9);
    v34 = *(v33 + 4 * v14);
    *v16 = v31;
    v16[1] = v32;
    *(*(this + 13) + 4 * v17) = v34;
    *(v33 + 4 * v14) = v17;
  }

  else
  {
    while (1)
    {
      v16 = (*(this + 3) + 32 * v15);
      if (*(*v16 + 40) == v8 && *(v16[1] + 40) == v9)
      {
        break;
      }

      v15 = *(*(this + 13) + 4 * v15);
      if (v15 == -1)
      {
        goto LABEL_11;
      }
    }
  }

  return v16;
}

uint64_t btHashedOverlappingPairCache::removeOverlappingPair(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 40);
  v5 = *(a3 + 40);
  if (v4 <= v5)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  if (v4 <= v5)
  {
    v7 = a3;
  }

  else
  {
    v7 = a2;
  }

  v8 = *(v6 + 40);
  v9 = *(v7 + 40);
  v10 = ~((v8 | (v9 << 16)) << 15) + (v8 | (v9 << 16));
  v11 = (9 * (v10 ^ (v10 >> 10))) ^ ((9 * (v10 ^ (v10 >> 10))) >> 6);
  v12 = (*(a1 + 16) - 1) & (((v11 + ~(v11 << 11)) >> 16) ^ (v11 + ~(v11 << 11)));
  v13 = *(*(a1 + 72) + 4 * v12);
  if (v13 == -1)
  {
    return 0;
  }

  while (1)
  {
    v16 = *(a1 + 24);
    v17 = (v16 + 32 * v13);
    if (*(*v17 + 40) == v8 && *(v17[1] + 40) == v9)
    {
      break;
    }

    v13 = *(*(a1 + 104) + 4 * v13);
    if (v13 == -1)
    {
      return 0;
    }
  }

  (*(*a1 + 64))(a1, v16 + 32 * v13, a4);
  v18 = v17[3];
  v19 = v17 - *(a1 + 24);
  v20 = v19 >> 5;
  v21 = *(a1 + 72);
  v22 = *(v21 + 4 * v12);
  if (v22 == (v19 >> 5))
  {
    goto LABEL_16;
  }

  do
  {
    v23 = v22;
    v22 = *(*(a1 + 104) + 4 * v22);
  }

  while (v22 != v20);
  if (v23 == -1)
  {
LABEL_16:
    *(v21 + 4 * v12) = *(*(a1 + 104) + 4 * v20);
  }

  else
  {
    *(*(a1 + 104) + 4 * v23) = *(*(a1 + 104) + 4 * v20);
  }

  v24 = *(a1 + 12) - 1;
  v25 = *(a1 + 120);
  if (v25)
  {
    (*(*v25 + 24))(v25, v6, v7, a4);
  }

  if (v24 != v20)
  {
    v26 = *(a1 + 24);
    v27 = v26 + 32 * v24;
    v28 = *(*v27 + 40) | (*(*(v27 + 8) + 40) << 16);
    v29 = ~(v28 << 15) + v28;
    v30 = (9 * (v29 ^ (v29 >> 10))) ^ ((9 * (v29 ^ (v29 >> 10))) >> 6);
    v31 = (*(a1 + 16) - 1) & (((v30 + ~(v30 << 11)) >> 16) ^ (v30 + ~(v30 << 11)));
    v32 = *(a1 + 72);
    v33 = *(v32 + 4 * v31);
    if (v33 == v24)
    {
      goto LABEL_24;
    }

    do
    {
      v34 = v33;
      v33 = *(*(a1 + 104) + 4 * v33);
    }

    while (v33 != v24);
    if (v34 == -1)
    {
LABEL_24:
      *(v32 + 4 * v31) = *(*(a1 + 104) + 4 * v24);
    }

    else
    {
      *(*(a1 + 104) + 4 * v34) = *(*(a1 + 104) + 4 * v24);
    }

    v35 = (v26 + 32 * (v19 >> 5));
    v36 = *(v27 + 16);
    *v35 = *v27;
    v35[1] = v36;
    v37 = *(a1 + 72);
    *(*(a1 + 104) + 4 * v20) = *(v37 + 4 * v31);
    *(v37 + 4 * v31) = v20;
  }

  --*(a1 + 12);
  return v18;
}

uint64_t btHashedOverlappingPairCache::processAllOverlappingPairs(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 12) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = (*(v5 + 24) + 32 * v6);
      result = (*(*a2 + 16))(a2, v7);
      if (result)
      {
        result = (*(*v5 + 24))(v5, *v7, v7[1], a3);
      }

      else
      {
        ++v6;
      }
    }

    while (v6 < *(v5 + 12));
  }

  return result;
}

void btHashedOverlappingPairCache::sortOverlappingPairs(uint64_t a1, uint64_t a2)
{
  v30 = 1;
  v29 = 0;
  v27 = 0;
  v28 = 0;
  if (*(a1 + 12) < 1)
  {
    LODWORD(v6) = 0;
    goto LABEL_25;
  }

  v4 = 0;
  v5 = 0;
  LODWORD(v6) = 0;
  v7 = 0;
  do
  {
    v8 = *(a1 + 24);
    if (v6 != v5 || (!v5 ? (v9 = 1) : (v9 = (2 * v5)), v5 >= v9))
    {
      v9 = v5;
      goto LABEL_19;
    }

    if (v9)
    {
      v10 = btAlignedAllocInternal(32 * v9, 16);
    }

    else
    {
      v10 = 0;
    }

    if (v5 >= 1)
    {
      v11 = v5;
      v12 = (v4 + 3);
      v13 = v10 + 3;
      do
      {
        *(v13 - 3) = *(v12 - 3);
        *(v13 - 1) = *(v12 - 1);
        v14 = *v12;
        v12 += 4;
        *v13 = v14;
        v13 += 4;
        --v11;
      }

      while (v11);
LABEL_17:
      btAlignedFreeInternal(v4);
      goto LABEL_18;
    }

    if (v4)
    {
      goto LABEL_17;
    }

LABEL_18:
    v30 = 1;
    v29 = v10;
    v4 = v10;
    v28 = v9;
LABEL_19:
    v15 = v8 + 32 * v7;
    v16 = &v4[4 * v6];
    *v16 = *v15;
    v16[2] = *(v15 + 16);
    v16[3] = *(v15 + 24);
    v17 = v27;
    v6 = ++v27;
    ++v7;
    v5 = v9;
  }

  while (v7 < *(a1 + 12));
  if ((v17 & 0x80000000) == 0)
  {
    v18 = v4 + 1;
    v19 = v6;
    do
    {
      (*(*a1 + 24))(a1, *(v18 - 1), *v18, a2);
      v18 += 4;
      --v19;
    }

    while (v19);
  }

LABEL_25:
  if (*(a1 + 92) >= 1)
  {
    v20 = 0;
    v21 = *(a1 + 104);
    do
    {
      *(v21 + 4 * v20++) = -1;
    }

    while (v20 < *(a1 + 92));
  }

  v22 = (v6 - 1);
  if (v6 > 1)
  {
    btAlignedObjectArray<btBroadphasePair>::quickSortInternal<btBroadphasePairSortPredicate>(v26, &v25, 0, v22);
    LODWORD(v6) = v27;
  }

  if (v6 >= 1)
  {
    v23 = 0;
    v24 = 0;
    do
    {
      (*(*a1 + 16))(a1, *(v29 + v23), *(v29 + v23 + 8), v22);
      ++v24;
      v23 += 32;
    }

    while (v24 < v27);
  }

  if (v29)
  {
    if (v30 == 1)
    {
      btAlignedFreeInternal(v29);
    }
  }
}

uint64_t *btHashedOverlappingPairCache::addOverlappingPair(btHashedOverlappingPairCache *a1, void *a2, void *a3)
{
  v6 = *(a1 + 5);
  if (v6)
  {
    if (((*(*v6 + 16))(v6, a2, a3) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = a2[1];
    v9 = a3[1];
    v10 = (a3[2] & v8) != 0 && (a2[2] & v9) != 0;
    if ((v9 & a2[3]) == 0)
    {
      v11 = (a3[3] & v8) != 0 || v10;
      if (v11 != 1)
      {
        return 0;
      }
    }
  }

  return btHashedOverlappingPairCache::internalAddPair(a1, a2, a3);
}

uint64_t btHashedOverlappingPairCache::getOverlappingPairArrayPtr(btHashedOverlappingPairCache *this)
{
  return *(this + 3);
}

{
  return *(this + 3);
}

uint64_t btHashedOverlappingPairCache::cleanProxyFromPairs(btBroadphaseProxy *,btDispatcher *)::CleanPairCallback::processOverlap(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (*a2 == v2 || a2[1] == v2)
  {
    (*(**(a1 + 16) + 64))(*(a1 + 16));
  }

  return 0;
}

void btQuantizedBvh::btQuantizedBvh(btQuantizedBvh *this)
{
  *this = &unk_282DC8C98;
  *(this + 16) = 281;
  *(this + 72) = 0;
  *(this + 104) = 1;
  *(this + 12) = 0;
  *(this + 84) = 0;
  *(this + 136) = 1;
  *(this + 16) = 0;
  *(this + 116) = 0;
  *(this + 168) = 1;
  *(this + 20) = 0;
  *(this + 148) = 0;
  *(this + 200) = 1;
  *(this + 24) = 0;
  *(this + 180) = 0;
  *(this + 52) = 0;
  *(this + 240) = 1;
  *(this + 29) = 0;
  *(this + 220) = 0;
  *(this + 62) = 0;
  *(this + 1) = xmmword_21C2A26A0;
  *(this + 2) = xmmword_21C2A2690;
}

void btQuantizedBvh::buildTree(uint64_t this, int a2, int a3, double a4, double a5, float32x4_t a6, double a7, float32x4_t a8, float32x4_t a9, float a10, float32x4_t a11)
{
  v13 = a3 - a2;
  v14 = *(this + 68);
  if (a3 - a2 != 1)
  {
    v16 = btQuantizedBvh::calcSplittingAxis(this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    v24 = btQuantizedBvh::sortAndCalcSplittingIndex(this, a2, a3, v16, v17, v18, v19, v20, v21, v22, v23);
    v25 = *(this + 68);
    btQuantizedBvh::setInternalNodeAabbMin(this, v25, (this + 32));
    v26 = btQuantizedBvh::setInternalNodeAabbMax(this, *(this + 68), (this + 16));
    if (a3 > a2)
    {
      v29 = 16 * a2;
      v30 = (a2 << 6) | 0x10;
      do
      {
        if (*(this + 72) == 1)
        {
          v31 = (*(this + 160) + v29);
          v26.i16[0] = *v31;
          v32 = *(this + 48);
          v33 = *(this + 52);
          LOWORD(v27) = v31[1];
          LOWORD(v28) = v31[2];
          v34 = *(this + 56);
          v49.var0.var0[0] = v26.u32[0] / v32;
          v49.var0.var0[1] = v27 / v33;
          *&v49.var0.var0[2] = COERCE_UNSIGNED_INT(v28 / v34);
          v35 = *(this + 16);
          v36 = vaddq_f32(v49, v35);
          v49 = v36;
          v36.i16[0] = v31[3];
          v36.f32[0] = v36.u32[0] / v32;
          LOWORD(v32) = v31[4];
          *&v37 = LODWORD(v32) / v33;
          LOWORD(v33) = v31[5];
          v48.i64[0] = __PAIR64__(v37, v36.u32[0]);
          v48.i64[1] = COERCE_UNSIGNED_INT(LODWORD(v33) / v34);
          v38 = vaddq_f32(v48, v35);
        }

        else
        {
          v39 = (*(this + 96) + v30);
          v49 = v39[-1];
          v38 = *v39;
        }

        v40 = *(this + 68);
        v48 = v38;
        v26 = btQuantizedBvh::mergeInternalNodeAabb(this, v40, &v49, &v48);
        v29 += 16;
        v30 += 64;
        --v13;
      }

      while (v13);
    }

    v41 = v25;
    v42 = *(this + 68) + 1;
    *(this + 68) = v42;
    btQuantizedBvh::buildTree(this, a2, v24);
    v43 = *(this + 68);
    btQuantizedBvh::buildTree(this, v24, a3);
    v44 = *(this + 68) - v14;
    if (*(this + 72) == 1 && v44 >= 129)
    {
      btQuantizedBvh::updateSubtreeHeaders(this, v42, v43);
      if ((*(this + 72) & 1) == 0)
      {
LABEL_13:
        *(*(this + 128) + (v41 << 6) + 32) = v44;
        return;
      }
    }

    else if (!*(this + 72))
    {
      goto LABEL_13;
    }

    *(*(this + 192) + 16 * v41 + 12) = -v44;
    return;
  }

  if (*(this + 72) == 1)
  {
    *(*(this + 192) + 16 * v14) = *(*(this + 160) + 16 * a2);
  }

  else
  {
    v45 = (*(this + 96) + (a2 << 6));
    v46 = (*(this + 128) + (v14 << 6));
    *v46 = *v45;
    v46[1] = v45[1];
    v47 = v45[3];
    v46[2] = v45[2];
    v46[3] = v47;
  }

  ++*(this + 68);
}

float32x4_t btQuantizedBvh::setQuantizationValues(float32x4_t *this, float32x4_t *a2, float32x4_t *a3, int32x2_t a4)
{
  v4 = vdupq_lane_s32(a4, 0);
  v4.i32[3] = 0;
  v5 = vsubq_f32(*a2, v4);
  v6 = v5;
  v6.i32[3] = 0;
  this[1] = v6;
  v7 = vaddq_f32(v4, *a3);
  v8 = vsubq_f32(v7, v5);
  v8.i32[3] = 0;
  v9 = vrecpeq_f32(v8);
  v10 = vmulq_f32(v9, vrecpsq_f32(v8, v9));
  v11 = vmulq_f32(vrecpsq_f32(v8, v10), vmulq_f32(v10, xmmword_21C2A3FD0));
  _Q6 = vmulq_f32(vsubq_f32(v6, v6), v11);
  *_Q6.f32 = vdiv_f32(vcvt_f32_u32((*&vcvt_s32_f32(*_Q6.f32) & 0xFFFFFFFEFFFFFFFELL)), *v11.f32);
  _Q6.f32[2] = (_Q6.f32[2] & 0xFFFE) / v11.f32[2];
  v13 = vsubq_f32(vaddq_f32(_Q6, v5), v4);
  v13.i32[3] = 0;
  v14 = vminq_f32(v6, v13);
  v15 = vmulq_f32(vsubq_f32(v7, v14), v11);
  __asm { FMOV            V6.2S, #1.0 }

  *v15.f32 = vdiv_f32(vcvt_f32_u32((*&vcvt_s32_f32(vadd_f32(*v15.f32, *_Q6.f32)) | 0x100000001)), *v11.f32);
  v15.f32[2] = ((v15.f32[2] + 1.0) | 1u) / v11.f32[2];
  this[4].i8[8] = 1;
  v15.i32[3] = 0;
  v20 = vmaxq_f32(v7, vaddq_f32(v4, vaddq_f32(v14, v15)));
  this[1] = v14;
  this[2] = v20;
  v21 = vsubq_f32(v20, v14);
  v21.i32[3] = 0;
  v22 = vrecpeq_f32(v21);
  v23 = vmulq_f32(v22, vrecpsq_f32(v21, v22));
  result = vmulq_f32(vrecpsq_f32(v21, v23), vmulq_f32(v23, xmmword_21C2A3FD0));
  this[3] = result;
  return result;
}

void btQuantizedBvh::~btQuantizedBvh(btQuantizedBvh *this)
{
  *this = &unk_282DC8C98;
  v2 = *(this + 29);
  if (v2 && *(this + 240) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 240) = 1;
  *(this + 29) = 0;
  *(this + 55) = 0;
  *(this + 56) = 0;
  v3 = *(this + 24);
  if (v3 && *(this + 200) == 1)
  {
    btAlignedFreeInternal(v3);
  }

  *(this + 200) = 1;
  *(this + 24) = 0;
  *(this + 45) = 0;
  *(this + 46) = 0;
  v4 = *(this + 20);
  if (v4 && *(this + 168) == 1)
  {
    btAlignedFreeInternal(v4);
  }

  *(this + 168) = 1;
  *(this + 20) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  v5 = *(this + 16);
  if (v5 && *(this + 136) == 1)
  {
    btAlignedFreeInternal(v5);
  }

  *(this + 136) = 1;
  *(this + 16) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  v6 = *(this + 12);
  if (v6 && *(this + 104) == 1)
  {
    btAlignedFreeInternal(v6);
  }

  *(this + 104) = 1;
  *(this + 12) = 0;
  *(this + 21) = 0;
  *(this + 22) = 0;
}

{
  btQuantizedBvh::~btQuantizedBvh(this);

  btAlignedFreeInternal(v1);
}

uint64_t btQuantizedBvh::calcSplittingAxis(__n128 *this, int a2, int a3, double a4, double a5, float32x4_t a6, double a7, float32x4_t a8, float32x4_t a9, float a10, float32x4_t a11)
{
  v12 = a3 - a2;
  if (a3 <= a2)
  {
    v29 = v12;
    v34 = 0uLL;
  }

  else
  {
    v13 = (a2 << 6) | 0x10;
    v14 = 16 * a2;
    v15 = 0uLL;
    v16.i64[0] = 0x3F0000003F000000;
    v16.i64[1] = 0x3F0000003F000000;
    v17 = a3 - a2;
    do
    {
      if (this[4].n128_u8[8])
      {
        v18 = (this[10].n128_u64[0] + v14);
        a6.i16[0] = v18[3];
        v19 = this[3].n128_f32[0];
        v20 = this[3].n128_f32[1];
        a9.i16[0] = v18[4];
        LOWORD(a10) = v18[5];
        *&v21 = LODWORD(a10);
        a11.i32[0] = this[3].n128_i32[2];
        v22.i32[3] = 0;
        v22.f32[0] = a6.u32[0] / v19;
        v22.f32[1] = a9.u32[0] / v20;
        v22.f32[2] = *&v21 / a11.f32[0];
        a9 = this[1];
        v23 = vaddq_f32(a9, v22);
        LOWORD(v21) = *v18;
        *&v24 = v21;
        *&v25 = *&v24 / v19;
        LOWORD(v24) = v18[1];
        *&v26 = v24;
        a8.f32[0] = *&v26 / v20;
        LOWORD(v26) = v18[2];
        a10 = v26;
        v11.i32[3] = 0;
        v11.i64[0] = __PAIR64__(a8.u32[0], v25);
        v11.f32[2] = a10 / a11.f32[0];
        v27 = vaddq_f32(a9, v11);
      }

      else
      {
        v28 = (this[6].n128_u64[0] + v13);
        v27 = v28[-1];
        v23 = *v28;
      }

      a6 = vmulq_f32(vaddq_f32(v23, v27), v16);
      a6.i32[3] = 0;
      v15 = vaddq_f32(v15, a6);
      v13 += 64;
      v14 += 16;
      --v17;
    }

    while (v17);
    v29 = v12;
    v30 = vmulq_n_f32(v15, 1.0 / v12);
    v31 = (a2 << 6) | 0x10;
    v32 = 16 * a2;
    v33 = a3 - a2;
    v34 = 0uLL;
    v35.i64[0] = 0x3F0000003F000000;
    v35.i64[1] = 0x3F0000003F000000;
    do
    {
      if (this[4].n128_u8[8])
      {
        v36 = (this[10].n128_u64[0] + v32);
        a8.i16[0] = v36[3];
        v37 = this[3].n128_f32[0];
        v38 = this[3].n128_f32[1];
        a11.i16[0] = v36[4];
        v11.i16[0] = v36[5];
        *&v39 = v11.u32[0];
        v40 = this[3].n128_f32[2];
        v41.i32[3] = 0;
        v41.f32[0] = a8.u32[0] / v37;
        v41.f32[1] = a11.u32[0] / v38;
        v41.f32[2] = *&v39 / v40;
        a11 = this[1];
        v42 = vaddq_f32(a11, v41);
        LOWORD(v39) = *v36;
        *&v43 = v39;
        *&v44 = *&v43 / v37;
        LOWORD(v43) = v36[1];
        *&v45 = v43;
        *&v46 = *&v45 / v38;
        LOWORD(v45) = v36[2];
        v11.f32[0] = v45;
        v41.i32[3] = 0;
        v41.i64[0] = __PAIR64__(v46, v44);
        v41.f32[2] = v11.f32[0] / v40;
        v47 = vaddq_f32(a11, v41);
      }

      else
      {
        v48 = (this[6].n128_u64[0] + v31);
        v47 = v48[-1];
        v42 = *v48;
      }

      v49 = vsubq_f32(vmulq_f32(vaddq_f32(v42, v47), v35), v30);
      v49.i32[3] = 0;
      a8 = vmulq_f32(v49, v49);
      v34 = vaddq_f32(v34, a8);
      v31 += 64;
      v32 += 16;
      --v33;
    }

    while (v33);
  }

  v50 = vmulq_n_f32(v34, 1.0 / (v29 + -1.0));
  v51 = v50.f32[0] < v50.f32[1];
  if (v50.f32[0] < v50.f32[1])
  {
    v50.f32[0] = v50.f32[1];
  }

  if (v50.f32[0] >= v50.f32[2])
  {
    return v51;
  }

  else
  {
    return 2;
  }
}

uint64_t btQuantizedBvh::sortAndCalcSplittingIndex(__n128 *this, int a2, int a3, int a4, double a5, double a6, float32x4_t a7, double a8, float a9, float32x4_t a10, float a11)
{
  v57 = 0uLL;
  v12 = a2;
  v13 = a3 - a2;
  if (a3 > a2)
  {
    v15 = v57;
    v16 = (a2 << 6) | 0x10;
    v17 = 16 * a2;
    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    v19 = a3 - a2;
    do
    {
      if (this[4].n128_u8[8])
      {
        v20 = (this[10].n128_u64[0] + v17);
        a7.i16[0] = v20[3];
        v21 = this[3].n128_f32[0];
        v22 = this[3].n128_f32[1];
        a10.i16[0] = v20[4];
        LOWORD(a11) = v20[5];
        *&v23 = LODWORD(a11);
        v24 = this[3].n128_f32[2];
        v25.i32[3] = 0;
        v25.f32[0] = a7.u32[0] / v21;
        v25.f32[1] = a10.u32[0] / v22;
        v25.f32[2] = *&v23 / v24;
        a10 = this[1];
        v26 = vaddq_f32(a10, v25);
        LOWORD(v23) = *v20;
        *&v27 = v23;
        *&v28 = *&v27 / v21;
        LOWORD(v27) = v20[1];
        *&v29 = v27;
        a9 = *&v29 / v22;
        LOWORD(v29) = v20[2];
        a11 = v29;
        v25.i32[3] = 0;
        v25.i64[0] = __PAIR64__(LODWORD(a9), v28);
        v25.f32[2] = a11 / v24;
        v30 = vaddq_f32(a10, v25);
      }

      else
      {
        v31 = (this[6].n128_u64[0] + v16);
        v30 = v31[-1];
        v26 = *v31;
      }

      a7 = vmulq_f32(vaddq_f32(v26, v30), v18);
      a7.i32[3] = 0;
      v15 = vaddq_f32(v15, a7);
      v16 += 64;
      v17 += 16;
      --v19;
    }

    while (v19);
    v32 = vmulq_n_f32(v15, 1.0 / v13);
    v57 = v32;
    v33 = a4;
    v34 = v57.f32[a4];
    v35 = (a2 << 6) | 0x10;
    v36 = 16 * a2;
    v37 = a3 - a2;
    v38.i64[0] = 0x3F0000003F000000;
    v38.i64[1] = 0x3F0000003F000000;
    v39 = a2;
    v12 = a2;
    do
    {
      if (this[4].n128_u8[8] == 1)
      {
        v40 = (this[10].n128_u64[0] + v36);
        v32.i16[0] = v40[3];
        v41 = this[3].n128_f32[0];
        v42 = this[3].n128_f32[1];
        v30.i16[0] = v40[4];
        LOWORD(a9) = v40[5];
        *&v43 = LODWORD(a9);
        v44 = this[3].n128_f32[2];
        v45.i32[3] = 0;
        v45.f32[0] = v32.u32[0] / v41;
        v45.f32[1] = v30.u32[0] / v42;
        v45.f32[2] = *&v43 / v44;
        v30 = this[1];
        v46 = vaddq_f32(v30, v45);
        LOWORD(v43) = *v40;
        *&v47 = v43;
        *&v48 = *&v47 / v41;
        LOWORD(v47) = v40[1];
        *&v49 = v47;
        *&v50 = *&v49 / v42;
        LOWORD(v49) = v40[2];
        a9 = v49;
        v45.i32[3] = 0;
        v45.i64[0] = __PAIR64__(v50, v48);
        v45.f32[2] = a9 / v44;
        v51 = vaddq_f32(v30, v45);
      }

      else
      {
        v52 = (this[6].n128_u64[0] + v35);
        v51 = v52[-1];
        v46 = *v52;
      }

      v32 = vmulq_f32(vaddq_f32(v46, v51), v38);
      v32.i32[3] = 0;
      v56 = v32;
      v32.i32[0] = v56.i32[v33];
      if (v32.f32[0] > v34)
      {
        v32.i64[0] = btQuantizedBvh::swapLeafNodes(this, v39, v12).n128_u64[0];
        v38.i64[0] = 0x3F0000003F000000;
        v38.i64[1] = 0x3F0000003F000000;
        ++v12;
      }

      ++v39;
      v35 += 64;
      v36 += 16;
      --v37;
    }

    while (v37);
  }

  if (v12 >= ~(v13 / 3) + a3 || v12 <= v13 / 3 + a2)
  {
    return (a2 + (v13 >> 1));
  }

  else
  {
    return v12;
  }
}

float32x4_t btQuantizedBvh::setInternalNodeAabbMin(float32x4_t *this, int a2, float32x4_t *a3)
{
  if (this[4].i8[8] == 1)
  {
    v3 = (this[12].i64[0] + 16 * a2);
    result = vmulq_f32(this[3], vsubq_f32(*a3, this[1]));
    *v3 = result.f32[0] & 0xFFFE;
    v3[1] = result.f32[1] & 0xFFFE;
    result.i32[0] = result.i32[2];
    v3[2] = result.f32[2] & 0xFFFE;
  }

  else
  {
    result = *a3;
    *(this[8].i64[0] + (a2 << 6)) = *a3;
  }

  return result;
}

float32x4_t btQuantizedBvh::setInternalNodeAabbMax(float32x4_t *this, int a2, float32x4_t *a3)
{
  if (this[4].i8[8] == 1)
  {
    v3 = (this[12].i64[0] + 16 * a2);
    result = vmulq_f32(this[3], vsubq_f32(*a3, this[1]));
    v3[3] = (result.f32[0] + 1.0) | 1;
    v3[4] = (result.f32[1] + 1.0) | 1;
    result.f32[0] = result.f32[2] + 1.0;
    v3[5] = (result.f32[2] + 1.0) | 1;
  }

  else
  {
    result = *a3;
    *(this[8].i64[0] + (a2 << 6) + 16) = *a3;
  }

  return result;
}

float32x4_t btQuantizedBvh::mergeInternalNodeAabb(float32x4_t *this, int a2, float32x4_t *a3, float32x4_t *a4)
{
  if (this[4].i8[8] == 1)
  {
    v4 = 0;
    v5 = this[1];
    v6 = this[3];
    v7 = vmulq_f32(v6, vsubq_f32(*a3, v5));
    v14[0] = v7.f32[0] & 0xFFFE;
    v14[1] = v7.f32[1] & 0xFFFE;
    v14[2] = v7.f32[2] & 0xFFFE;
    result = vmulq_f32(v6, vsubq_f32(*a4, v5));
    v13[0] = (result.f32[0] + 1.0) | 1;
    v13[1] = (result.f32[1] + 1.0) | 1;
    result.f32[0] = result.f32[2] + 1.0;
    v13[2] = (result.f32[2] + 1.0) | 1;
    v9 = this[12].i64[0] + 16 * a2;
    do
    {
      v10 = v14[v4];
      if (*(v9 + v4 * 2) > v10)
      {
        *(v9 + v4 * 2) = v10;
      }

      v11 = v13[v4];
      if (*(v9 + v4 * 2 + 6) < v11)
      {
        *(v9 + v4 * 2 + 6) = v11;
      }

      ++v4;
    }

    while (v4 != 3);
  }

  else
  {
    *(this[8].i64[0] + (a2 << 6)) = vminq_f32(*(this[8].i64[0] + (a2 << 6)), *a3);
    v12 = (this[8].i64[0] + (a2 << 6));
    result = vmaxq_f32(v12[1], *a4);
    v12[1] = result;
  }

  return result;
}

void btQuantizedBvh::updateSubtreeHeaders(uint64_t this, int a2, int a3)
{
  v5 = *(this + 192);
  v6 = v5 + 16 * a2;
  v7 = *(v6 + 12);
  if (v7 < 0)
  {
    v8 = -v7;
  }

  else
  {
    v8 = 1;
  }

  v9 = v5 + 16 * a3;
  v10 = *(v9 + 12);
  if (v10 < 0)
  {
    v11 = -v10;
  }

  else
  {
    v11 = 1;
  }

  if (v8 <= 0x80)
  {
    v13 = *(this + 220);
    v14 = v13;
    if (v13 == *(this + 224))
    {
      v15 = v13 ? 2 * v13 : 1;
      if (v13 < v15)
      {
        if (v15)
        {
          v16 = btAlignedAllocInternal(32 * v15, 16);
          v13 = *(this + 220);
        }

        else
        {
          v16 = 0;
        }

        if (v13 >= 1)
        {
          v17 = 0;
          v18 = 32 * v13;
          do
          {
            v19 = (v16 + v17);
            v20 = (*(this + 232) + v17);
            v21 = v20[1];
            *v19 = *v20;
            v19[1] = v21;
            v17 += 32;
          }

          while (v18 != v17);
        }

        v22 = *(this + 232);
        if (v22 && *(this + 240) == 1)
        {
          btAlignedFreeInternal(v22);
        }

        *(this + 240) = 1;
        *(this + 232) = v16;
        *(this + 224) = v15;
        v13 = *(this + 220);
      }
    }

    *(this + 220) = v13 + 1;
    v23 = *(this + 232) + 32 * v14;
    *v23 = *v6;
    *(v23 + 2) = *(v6 + 2);
    *(v23 + 4) = *(v6 + 4);
    *(v23 + 6) = *(v6 + 6);
    *(v23 + 8) = *(v6 + 8);
    *(v23 + 10) = *(v6 + 10);
    *(v23 + 12) = a2;
    *(v23 + 16) = v8;
  }

  if (v11 <= 128)
  {
    v24 = *(this + 220);
    v25 = v24;
    if (v24 == *(this + 224))
    {
      v26 = v24 ? 2 * v24 : 1;
      if (v24 < v26)
      {
        if (v26)
        {
          v27 = btAlignedAllocInternal(32 * v26, 16);
          v24 = *(this + 220);
        }

        else
        {
          v27 = 0;
        }

        if (v24 >= 1)
        {
          v28 = 0;
          v29 = 32 * v24;
          do
          {
            v30 = (v27 + v28);
            v31 = (*(this + 232) + v28);
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            v28 += 32;
          }

          while (v29 != v28);
        }

        v33 = *(this + 232);
        if (v33 && *(this + 240) == 1)
        {
          btAlignedFreeInternal(v33);
        }

        *(this + 240) = 1;
        *(this + 232) = v27;
        *(this + 224) = v26;
        v24 = *(this + 220);
      }
    }

    *(this + 220) = v24 + 1;
    v34 = *(this + 232) + 32 * v25;
    *v34 = *v9;
    *(v34 + 2) = *(v9 + 2);
    *(v34 + 4) = *(v9 + 4);
    *(v34 + 6) = *(v9 + 6);
    *(v34 + 8) = *(v9 + 8);
    *(v34 + 10) = *(v9 + 10);
    *(v34 + 12) = a3;
    *(v34 + 16) = v11;
  }

  *(this + 248) = *(this + 220);
}

__n128 btQuantizedBvh::swapLeafNodes(btQuantizedBvh *this, int a2, int a3)
{
  if (*(this + 72) == 1)
  {
    v3 = *(this + 20);
    result = *(v3 + 16 * a2);
    *(v3 + 16 * a2) = *(v3 + 16 * a3);
    *(*(this + 20) + 16 * a3) = result;
  }

  else
  {
    v5 = *(this + 12);
    v6 = (v5 + (a2 << 6));
    v7 = *v6;
    v8 = v6[1];
    v13 = v6[2];
    v14 = v6[3];
    v9 = (v5 + (a3 << 6));
    v10 = v9[1];
    *v6 = *v9;
    v6[1] = v10;
    v11 = v9[3];
    v6[2] = v9[2];
    v6[3] = v11;
    v12 = (*(this + 12) + (a3 << 6));
    *v12 = v7;
    v12[1] = v8;
    result = v13;
    v12[2] = v13;
    v12[3] = v14;
  }

  return result;
}

uint64_t btQuantizedBvh::reportAabbOverlappingNodex(uint64_t result, uint64_t a2, float32x4_t *a3, float32x4_t *a4)
{
  if (*(result + 72) == 1)
  {
    v14 = v4;
    v15 = v5;
    v6 = *(result + 16);
    v7 = *(result + 32);
    v8 = *(result + 48);
    v9 = vmulq_f32(v8, vsubq_f32(vminq_f32(vmaxq_f32(*a3, v6), v7), v6));
    v13[0] = v9.f32[0] & 0xFFFE;
    v13[1] = v9.f32[1] & 0xFFFE;
    v13[2] = v9.f32[2] & 0xFFFE;
    v10 = vmulq_f32(v8, vsubq_f32(vminq_f32(vmaxq_f32(*a4, v6), v7), v6));
    v12[0] = (v10.f32[0] + 1.0) | 1;
    v12[1] = (v10.f32[1] + 1.0) | 1;
    v12[2] = (v10.f32[2] + 1.0) | 1;
    v11 = *(result + 208);
    switch(v11)
    {
      case 2:
        return btQuantizedBvh::walkRecursiveQuantizedTreeAgainstQueryAabb(result, *(result + 192), a2, v13, v12);
      case 1:
        return btQuantizedBvh::walkStacklessQuantizedTreeCacheFriendly(result, a2, v13, v12);
      case 0:
        return btQuantizedBvh::walkStacklessQuantizedTree(result, a2, v13, v12, 0, *(result + 68));
    }
  }

  else
  {

    return btQuantizedBvh::walkStacklessTree(result, a2, a3->f32, a4->f32);
  }

  return result;
}

uint64_t btQuantizedBvh::walkStacklessQuantizedTree(uint64_t result, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4, int a5, int a6)
{
  if (a5 < a6)
  {
    v7 = a5;
    v11 = 0;
    v12 = (*(result + 192) + 16 * a5);
    while (1)
    {
      v18 = *a3 <= v12[3] && a3[2] <= v12[5] && *a4 >= *v12 && a4[2] >= v12[2] && a3[1] <= v12[4] && a4[1] >= v12[1];
      v19 = *(v12 + 3);
      if (v19 < 0 || !v18)
      {
        if (((v19 < 0) & ~v18) != 0)
        {
          v12 += 8 * -v19;
          v7 -= v19;
          goto LABEL_27;
        }
      }

      else
      {
        result = (*(*a2 + 16))(a2, v19 >> 21, v19 & 0x1FFFFF);
      }

      v12 += 8;
      ++v7;
LABEL_27:
      ++v11;
      if (v7 >= a6)
      {
        goto LABEL_30;
      }
    }
  }

  v11 = 0;
LABEL_30:
  if (maxIterations < v11)
  {
    maxIterations = v11;
  }

  return result;
}

uint64_t btQuantizedBvh::walkStacklessQuantizedTreeCacheFriendly(uint64_t result, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *(result + 220);
  if (v4 >= 1)
  {
    v8 = result;
    v9 = 0;
    for (i = 0; i < v4; ++i)
    {
      v11 = (*(v8 + 232) + v9);
      result = a3[1];
      if (*a3 <= v11[3] && *a4 >= *v11 && a3[2] <= v11[5] && a4[2] >= v11[2] && result <= v11[4] && a4[1] >= v11[1])
      {
        result = btQuantizedBvh::walkStacklessQuantizedTree(v8, a2, a3, a4, *(v11 + 3), *(v11 + 4) + *(v11 + 3));
        v4 = *(v8 + 220);
      }

      v9 += 32;
    }
  }

  return result;
}

uint64_t btQuantizedBvh::walkRecursiveQuantizedTreeAgainstQueryAabb(uint64_t result, unsigned __int16 *a2, uint64_t a3, unsigned __int16 *a4, unsigned __int16 *a5)
{
  v9 = result;
  while (*a4 <= a2[3] && *a5 >= *a2 && a4[2] <= a2[5] && a5[2] >= a2[2] && a4[1] <= a2[4] && a5[1] >= a2[1])
  {
    v10 = *(a2 + 3);
    if ((v10 & 0x80000000) == 0)
    {
      v12 = *(*a3 + 16);

      return v12(a3, v10 >> 21, v10 & 0x1FFFFF);
    }

    result = btQuantizedBvh::walkRecursiveQuantizedTreeAgainstQueryAabb(v9, a2 + 8, a3, a4, a5);
    v11 = *(a2 + 7);
    if (v11 >= 0)
    {
      a2 += 16;
    }

    else
    {
      a2 += 8 * -v11 + 8;
    }
  }

  return result;
}

uint64_t btQuantizedBvh::walkStacklessTree(uint64_t result, uint64_t a2, float *a3, float *a4)
{
  if (*(result + 68) >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    v10 = *(result + 128);
    while (1)
    {
      v11 = *a3 <= *(v10 + 16) && *a4 >= *v10;
      if (a3[2] <= *(v10 + 24))
      {
        if (a4[2] < *(v10 + 8))
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }

      if (a3[1] <= *(v10 + 20) && a4[1] >= *(v10 + 4))
      {
        v14 = *(v10 + 32);
        v15 = v14 == -1;
        v12 = v14 == -1;
        if (v15 && v11)
        {
          result = (*(*a2 + 16))(a2, *(v10 + 36), *(v10 + 40));
LABEL_21:
          v10 += 64;
          ++v9;
          goto LABEL_22;
        }
      }

      else
      {
        v11 = 0;
        v12 = *(v10 + 32) == -1;
      }

      if (v12 || v11)
      {
        goto LABEL_21;
      }

      v13 = *(v10 + 32);
      v10 += v13 << 6;
      v9 += v13;
LABEL_22:
      ++v8;
      if (v9 >= *(v7 + 68))
      {
        goto LABEL_25;
      }
    }
  }

  v8 = 0;
LABEL_25:
  if (maxIterations < v8)
  {
    maxIterations = v8;
  }

  return result;
}

uint64_t btQuantizedBvh::walkStacklessTreeAgainstRay(uint64_t result, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, double a7, double a8, double a9, double a10, double a11, double a12, __n128 a13, __n128 a14)
{
  v68 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = *a4;
  v16 = vsubq_f32(*a4, *a3);
  v16.i32[3] = 0;
  v17 = vmulq_f32(v16, v16);
  v18 = vmulq_n_f32(v16, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v17.i8, *v17.i8), *&vextq_s8(v17, v17, 8uLL)).f32[0]));
  if (v18.f32[2] == 0.0)
  {
    v19 = 1.0e18;
  }

  else
  {
    v19 = 1.0 / v18.f32[2];
  }

  if (*(result + 68) >= 1)
  {
    v23 = result;
    v24 = 0;
    v25 = 0;
    __asm { FMOV            V4.2S, #1.0 }

    a13.n128_u64[0] = vbsl_s8(vceqz_f32(*v18.f32), vdup_n_s32(0x5D5E0B6Bu), vdiv_f32(_D4, *v18.f32));
    v30 = &v67[a13.n128_f32[1] < 0.0] + 1;
    v31 = &v67[a13.n128_f32[1] >= 0.0] + 1;
    v32 = *(result + 128);
    v33 = vmulq_f32(v18, v16);
    a14.n128_u64[0] = vadd_f32(vpadd_f32(*v33.i8, *v33.i8), *&vextq_s8(v33, v33, 8uLL));
    v34 = vaddq_f32(vmaxq_f32(v14, v15), *a6);
    v35 = &v67[a13.n128_f32[0] < 0.0];
    v36 = vaddq_f32(vminq_f32(v14, v15), *a5);
    v37 = &v67[a13.n128_f32[0] >= 0.0];
    v38 = v36.f32[2];
    v39 = v34.f32[2];
    v40 = v36.f32[1];
    v41 = v34.f32[1];
    v42 = &v67[v19 >= 0.0] + 2;
    while (1)
    {
      v43 = vsubq_f32(v32[1], *a5);
      v67[0] = vsubq_f32(*v32, *a6);
      v67[1] = v43;
      v44 = v36.f32[0] > v32[1].f32[0] || v34.f32[0] < v32->f32[0];
      if (v38 <= v32[1].f32[2])
      {
        if (v39 < v32->f32[2])
        {
          v44 = 1;
        }
      }

      else
      {
        v44 = 1;
      }

      if (v40 > v32[1].f32[1])
      {
        goto LABEL_30;
      }

      if (v41 < v32->f32[1])
      {
        v44 = 1;
      }

      if (v44)
      {
        goto LABEL_30;
      }

      v45.i32[0] = *v35;
      v46.i32[0] = *v37;
      v46.i32[1] = *v30;
      v47 = vmul_f32(a13.n128_u64[0], vsub_f32(v46, *a3->f32));
      v45.i32[1] = *v31;
      v48 = vmul_f32(a13.n128_u64[0], vsub_f32(v45, *a3->f32));
      if (v48.f32[0] > v48.f32[1] || v47.f32[1] > v47.f32[0])
      {
        goto LABEL_30;
      }

      if (v47.f32[1] > v48.f32[0])
      {
        v48.f32[0] = v47.f32[1];
      }

      if (v48.f32[1] < v47.f32[0])
      {
        v47.f32[0] = v48.f32[1];
      }

      v50 = a3->f32[2];
      v51 = v19 * (*(&v67[v19 < 0.0] + 2) - v50);
      v52 = v19 * (*v42 - v50);
      if (v48.f32[0] <= v52 && v51 <= v47.f32[0])
      {
        if (v51 > v48.f32[0])
        {
          v48.f32[0] = v51;
        }

        if (v52 < v47.f32[0])
        {
          v47.f32[0] = v52;
        }

        v54 = v47.f32[0] > 0.0 && v48.f32[0] < a14.n128_f32[0];
        v58 = v32[2].i32[0];
        _ZF = v58 == -1;
        v55 = v58 == -1;
        if (_ZF && v54)
        {
          v65 = a3;
          v60 = a2;
          v61 = v37;
          v66 = a13;
          v63 = v34;
          v64 = a14;
          v62 = v36;
          v59 = v42;
          result = (*(*a2 + 16))(a2, v32[2].u32[1], v32[2].u32[2]);
          v42 = v59;
          a2 = v60;
          v37 = v61;
          v36 = v62;
          v34 = v63;
          a14 = v64;
          a3 = v65;
          a13 = v66;
LABEL_48:
          v32 += 4;
          ++v25;
          goto LABEL_49;
        }
      }

      else
      {
LABEL_30:
        v54 = 0;
        v55 = v32[2].i32[0] == -1;
      }

      if (v55 || v54)
      {
        goto LABEL_48;
      }

      v56 = v32[2].i32[0];
      v32 += 4 * v56;
      v25 += v56;
LABEL_49:
      ++v24;
      if (v25 >= *(v23 + 68))
      {
        goto LABEL_52;
      }
    }
  }

  v24 = 0;
LABEL_52:
  if (maxIterations < v24)
  {
    maxIterations = v24;
  }

  return result;
}

unint64_t btQuantizedBvh::walkStacklessQuantizedTreeAgainstRay(unint64_t result, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, int a7, uint64_t a8)
{
  v8 = a7;
  v91 = *MEMORY[0x277D85DE8];
  v9 = *a4;
  v10 = *a3;
  v11 = vsubq_f32(*a4, *a3);
  v11.i32[3] = 0;
  v12 = vmulq_f32(v11, v11);
  v13 = vmulq_n_f32(v11, 1.0 / sqrtf(vadd_f32(vpadd_f32(*v12.i8, *v12.i8), *&vextq_s8(v12, v12, 8uLL)).f32[0]));
  if (v13.f32[2] == 0.0)
  {
    v14 = 1.0e18;
  }

  else
  {
    v14 = 1.0 / v13.f32[2];
  }

  if (a7 < a8)
  {
    v16 = result;
    v17 = 0;
    v18 = vmulq_f32(v13, v11);
    LODWORD(v19) = vadd_f32(vpadd_f32(*v18.i8, *v18.i8), *&vextq_s8(v18, v18, 8uLL)).u32[0];
    __asm { FMOV            V5.2S, #1.0 }

    v23 = vbsl_s8(vceqz_f32(*v13.f32), vdup_n_s32(0x5D5E0B6Bu), vdiv_f32(_D5, *v13.f32));
    v24 = vminq_f32(v10, v9);
    v25 = vmaxq_f32(v10, v9);
    v26 = vaddq_f32(v24, *a5);
    v27 = *(result + 16);
    v28 = *(result + 32);
    v29 = *(result + 48);
    v30 = vmulq_f32(v29, vsubq_f32(vminq_f32(vmaxq_f32(v26, v27), v28), v27));
    result = v30.f32[0] & 0xFFFE;
    v31 = v30.f32[1] & 0xFFFE;
    v32 = v30.f32[2] & 0xFFFE;
    v33 = vmulq_f32(v29, vsubq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v25, *a6), v27), v28), v27));
    v34 = (v33.f32[0] + 1.0) | 1;
    v35 = (v16[12].i64[0] + 16 * v8);
    v36 = &v90[v23.f32[0] < 0.0];
    v37 = &v90[v23.f32[0] >= 0.0];
    v38 = &v90[v23.f32[1] < 0.0].i32[1];
    v39 = (v33.f32[1] + 1.0) | 1;
    v40 = (v33.f32[2] + 1.0) | 1;
    v41 = &v90[v23.f32[1] >= 0.0].u32[1];
    v42 = &v90[v14 < 0.0].f32[2];
    v43 = &v90[v14 >= 0.0].f32[2];
    v89 = a3;
    v87 = v23;
    v88 = v19;
    v85 = v30.f32[0] & 0xFFFE;
    v86 = v31;
    v84 = v36;
    v83 = v34;
    v82 = v38;
    v80 = v40;
    v81 = v39;
    v79 = v41;
    while (1)
    {
      v44 = *v35;
      v45 = v35[2];
      v46 = v35[1];
      v47 = *(v35 + 3);
      if (result > v35[3] || v34 < v44 || v32 > v35[5] || v40 < v45 || v31 > v35[4] || v39 < v46)
      {
        goto LABEL_22;
      }

      v55 = v16[3].f32[0];
      v56 = v16[3].f32[1];
      v57 = v16[3].f32[2];
      *&v58 = v45 / v57;
      v59.i32[3] = 0;
      v59.f32[0] = v44 / v55;
      v59.f32[1] = v46 / v56;
      v59.f32[2] = *&v58;
      v60 = v16[1];
      v90[0] = vaddq_f32(v60, v59);
      LOWORD(v58) = v35[3];
      *&v61 = v58;
      *&v62 = *&v61 / v55;
      LOWORD(v61) = v35[4];
      *&v63 = v61;
      *&v64 = *&v63 / v56;
      LOWORD(v63) = v35[5];
      v59.i32[3] = 0;
      v59.i64[0] = __PAIR64__(v64, v62);
      v59.f32[2] = v63 / v57;
      v65 = vsubq_f32(vaddq_f32(v60, v59), *a5);
      v90[0] = vsubq_f32(v90[0], *a6);
      v90[1] = v65;
      v65.n128_u32[0] = v36->i32[0];
      v65.n128_u32[1] = *v41;
      v65.n128_u64[0] = vmul_f32(v23, vsub_f32(v65.n128_u64[0], *a3->f32));
      v66 = v65.n128_f32[1];
      if (v65.n128_f32[0] > v65.n128_f32[1])
      {
        goto LABEL_22;
      }

      v67.i32[0] = v37->i32[0];
      v67.i32[1] = *v38;
      v68 = vmul_f32(v23, vsub_f32(v67, *a3->f32));
      if (v68.f32[1] > v68.f32[0])
      {
        goto LABEL_22;
      }

      if (v68.f32[1] > v65.n128_f32[0])
      {
        v65.n128_f32[0] = v68.f32[1];
      }

      if (v65.n128_f32[1] >= v68.f32[0])
      {
        v66 = v68.f32[0];
      }

      v69 = a3->f32[2];
      v70 = v14 * (*v43 - v69);
      if (v65.n128_f32[0] <= v70 && (v71 = v14 * (*v42 - v69), v71 <= v66))
      {
        if (v71 > v65.n128_f32[0])
        {
          v65.n128_f32[0] = v71;
        }

        if (v70 < v66)
        {
          v66 = v70;
        }

        v53 = v66 > 0.0 && v65.n128_f32[0] < v19;
        if ((v47 & 0x80000000) == 0 && v53)
        {
          v73 = a8;
          v74 = a6;
          v75 = a5;
          v76 = a2;
          v77 = v32;
          v78 = v37;
          (*(*a2 + 16))(a2, (*(v35 + 3) >> 21), *(v35 + 3) & 0x1FFFFF, v65);
          v38 = v82;
          v37 = v78;
          v36 = v84;
          v32 = v77;
          v34 = v83;
          result = v85;
          v31 = v86;
          v23 = v87;
          v19 = v88;
          a2 = v76;
          v40 = v80;
          v39 = v81;
          a3 = v89;
          a5 = v75;
          a6 = v74;
          v43 = &v90[v14 >= 0.0].f32[2];
          a8 = v73;
          v42 = &v90[v14 < 0.0].f32[2];
          v41 = v79;
LABEL_47:
          v35 += 8;
          ++v8;
          goto LABEL_48;
        }
      }

      else
      {
LABEL_22:
        v53 = 0;
      }

      if (v53 || (v47 & 0x80000000) == 0)
      {
        goto LABEL_47;
      }

      v54 = *(v35 + 3);
      v35 -= 8 * v54;
      v8 -= v54;
LABEL_48:
      ++v17;
      if (v8 >= a8)
      {
        goto LABEL_51;
      }
    }
  }

  v17 = 0;
LABEL_51:
  if (maxIterations < v17)
  {
    maxIterations = v17;
  }

  return result;
}

float32x4_t *btQuantizedBvh::reportRayOverlappingNodex(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, double a5, double a6, double a7, double a8, double a9, double a10, __n128 a11, __n128 a12)
{
  v14 = 0uLL;
  v13 = 0uLL;
  return btQuantizedBvh::reportBoxCastOverlappingNodex(a1, a2, a3, a4, &v14, &v13, a5, a6, a7, a8, a9, a10, a11, a12);
}

float32x4_t *btQuantizedBvh::reportBoxCastOverlappingNodex(float32x4_t *a1, uint64_t a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5, float32x4_t *a6, double a7, double a8, double a9, double a10, double a11, double a12, __n128 a13, __n128 a14)
{
  if (a1[4].i8[8] == 1)
  {
    return btQuantizedBvh::walkStacklessQuantizedTreeAgainstRay(a1, a2, a3, a4, a5, a6, 0, a1[4].u32[1]);
  }

  else
  {
    return btQuantizedBvh::walkStacklessTreeAgainstRay(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t btQuantizedBvh::serialize(btQuantizedBvh *this, btQuantizedBvh *a2, unsigned int a3, int a4)
{
  *(this + 62) = *(this + 55);
  btQuantizedBvh::btQuantizedBvh(a2);
  v7 = *(this + 17);
  if (a4)
  {
    *(a2 + 17) = bswap32(v7);
    v8 = a2 + 19;
    v9 = this + 19;
    v10 = 4;
    do
    {
      *(v8 - 3) = *v9;
      *(v8 - 2) = *(v9 - 1);
      *(v8 - 1) = *(v9 - 2);
      *v8 = *(v9 - 3);
      v8 += 4;
      v9 += 4;
      --v10;
    }

    while (v10);
    v11 = a2 + 35;
    v12 = this + 35;
    v13 = 4;
    do
    {
      *(v11 - 3) = *v12;
      *(v11 - 2) = *(v12 - 1);
      *(v11 - 1) = *(v12 - 2);
      *v11 = *(v12 - 3);
      v11 += 4;
      v12 += 4;
      --v13;
    }

    while (v13);
    v14 = a2 + 51;
    v15 = this + 51;
    v16 = 4;
    do
    {
      *(v14 - 3) = *v15;
      *(v14 - 2) = *(v15 - 1);
      *(v14 - 1) = *(v15 - 2);
      *v14 = *(v15 - 3);
      v14 += 4;
      v15 += 4;
      --v16;
    }

    while (v16);
    *(a2 + 52) = bswap32(*(this + 52));
    v17 = bswap32(*(this + 62));
  }

  else
  {
    *(a2 + 17) = v7;
    *(a2 + 1) = *(this + 1);
    *(a2 + 2) = *(this + 2);
    *(a2 + 3) = *(this + 3);
    *(a2 + 52) = *(this + 52);
    v17 = *(this + 62);
  }

  *(a2 + 62) = v17;
  v18 = *(this + 72);
  *(a2 + 72) = v18;
  v19 = a2 + 256;
  v20 = *(this + 17);
  v21 = v20;
  if (v18 == 1)
  {
    v23 = a2 + 192;
    v22 = *(a2 + 24);
    if (v22 && *(a2 + 200) == 1)
    {
      btAlignedFreeInternal(v22);
    }

    v24 = a2 + 180;
    v25 = a2 + 200;
    v26 = a2 + 184;
    *(a2 + 24) = v19;
    if (a4)
    {
      if (v20 >= 1)
      {
        v27 = (a2 + 268);
        v28 = (*(this + 24) + 6);
        do
        {
          *(v27 - 6) = bswap32(*(v28 - 3)) >> 16;
          *(v27 - 5) = bswap32(*(v28 - 2)) >> 16;
          *(v27 - 4) = bswap32(*(v28 - 1)) >> 16;
          *(v27 - 3) = bswap32(*v28) >> 16;
          *(v27 - 2) = bswap32(v28[1]) >> 16;
          *(v27 - 1) = bswap32(v28[2]) >> 16;
          *v27 = bswap32(*(v28 + 3));
          v27 += 4;
          v28 += 8;
          --v20;
        }

        while (v20);
      }
    }

    else if (v20 >= 1)
    {
      v43 = (a2 + 268);
      v44 = *(this + 24) + 6;
      do
      {
        *(v43 - 6) = *(v44 - 6);
        *(v43 - 5) = *(v44 - 4);
        *(v43 - 4) = *(v44 - 2);
        *(v43 - 3) = *v44;
        *(v43 - 2) = *(v44 + 2);
        *(v43 - 1) = *(v44 + 4);
        *v43 = *(v44 + 6);
        v43 += 4;
        v44 += 16;
        --v20;
      }

      while (v20);
    }

    v45 = 16 * v21;
    goto LABEL_42;
  }

  v23 = a2 + 128;
  v29 = *(a2 + 16);
  if (v29 && *(a2 + 136) == 1)
  {
    btAlignedFreeInternal(v29);
  }

  *(a2 + 29) = v20;
  v24 = a2 + 116;
  *(a2 + 136) = 0;
  v25 = a2 + 136;
  *(a2 + 30) = v20;
  v26 = a2 + 120;
  *(a2 + 16) = v19;
  if ((a4 & 1) == 0)
  {
    if (v20 >= 1)
    {
      v46 = 0;
      v47 = *(this + 16);
      v34 = (a2 + 256);
      do
      {
        *&v34[v46 / 8] = *(v47 + v46);
        *(*v23 + v46 + 16) = *(*(this + 16) + v46 + 16);
        v47 = *(this + 16);
        v34 = *v23;
        v48 = *v23 + v46;
        *(v48 + 32) = *(v47 + v46 + 32);
        *(v48 + 40) = *(v47 + v46 + 40);
        v46 += 64;
      }

      while (v20 << 6 != v46);
      goto LABEL_40;
    }

LABEL_39:
    v34 = (a2 + 256);
    goto LABEL_40;
  }

  if (v20 < 1)
  {
    goto LABEL_39;
  }

  v30 = 0;
  v31 = *(this + 16);
  v32 = 3;
  v33 = 19;
  v34 = (a2 + 256);
  do
  {
    v35 = v34 + v32;
    v36 = (v31 + v32);
    v37 = 4;
    do
    {
      *(v35 - 3) = *v36;
      *(v35 - 2) = *(v36 - 1);
      *(v35 - 1) = *(v36 - 2);
      *v35 = *(v36 - 3);
      v35 += 4;
      v36 += 4;
      --v37;
    }

    while (v37);
    v38 = (*v23 + v33);
    v39 = (*(this + 16) + v33);
    v40 = 4;
    do
    {
      *(v38 - 3) = *v39;
      *(v38 - 2) = *(v39 - 1);
      *(v38 - 1) = *(v39 - 2);
      *v38 = *(v39 - 3);
      v38 += 4;
      v39 += 4;
      --v40;
    }

    while (v40);
    v31 = *(this + 16);
    v41 = (v31 + (v30 << 6));
    v34 = *v23;
    v42 = (*v23 + (v30 << 6));
    v42[4] = vrev32_s8(v41[4]);
    v42[5].i32[0] = bswap32(v41[5].u32[0]);
    ++v30;
    v32 += 64;
    v33 += 64;
  }

  while (v30 != v20);
LABEL_40:
  v45 = v20 << 6;
  if (*v25 == 1)
  {
    btAlignedFreeInternal(v34);
  }

LABEL_42:
  *v25 = 0;
  *v23 = 0;
  *v24 = 0;
  *v26 = 0;
  v49 = &v19[v45];
  v50 = *(a2 + 29);
  if (v50 && *(a2 + 240) == 1)
  {
    btAlignedFreeInternal(v50);
  }

  *(a2 + 29) = v49;
  v51 = *(this + 62);
  if (a4)
  {
    if (v51 >= 1)
    {
      v52 = (a2 + v45 + 268);
      v53 = (*(this + 29) + 6);
      do
      {
        v52[-2].i16[2] = bswap32(*(v53 - 3)) >> 16;
        v52[-2].i16[3] = bswap32(*(v53 - 2)) >> 16;
        v52[-1].i16[0] = bswap32(*(v53 - 1)) >> 16;
        v52[-1].i16[1] = bswap32(*v53) >> 16;
        v52[-1].i16[2] = bswap32(v53[1]) >> 16;
        v52[-1].i16[3] = bswap32(v53[2]) >> 16;
        *v52 = vrev32_s8(*(v53 + 3));
        v52 += 4;
        v53 += 16;
        --v51;
      }

      while (v51);
    }
  }

  else if (v51 >= 1)
  {
    v54 = 0;
    v55 = 0;
    v56 = *(this + 29);
    v57 = a2 + v45;
    do
    {
      v58 = &v57[v54];
      *(v58 + 128) = *(v56 + v54);
      *(v58 + 129) = *(v56 + v54 + 2);
      *(v58 + 130) = *(v56 + v54 + 4);
      *(v58 + 131) = *(v56 + v54 + 6);
      *(v58 + 132) = *(v56 + v54 + 8);
      *(v58 + 133) = *(v56 + v54 + 10);
      *&v57[v54 + 268] = *(v56 + v54 + 12);
      *(v58 + 69) = 0;
      *(v58 + 35) = 0;
      ++v55;
      v54 += 32;
    }

    while (v55 < *(this + 62));
  }

  *(a2 + 240) = 0;
  *(a2 + 29) = 0;
  *(a2 + 55) = 0;
  *(a2 + 56) = 0;
  *a2 = 0;
  return 1;
}

double btQuantizedBvh::deSerializeFloat(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 16; i += 4)
  {
    *(a1 + 32 + i) = *(a2 + 16 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a1 + 16 + j) = *(a2 + j);
  }

  for (k = 0; k != 16; k += 4)
  {
    LODWORD(v7) = *(a2 + 32 + k);
    *(a1 + 48 + k) = v7;
  }

  v8 = *(a2 + 52);
  *(a1 + 68) = *(a2 + 48);
  *(a1 + 72) = v8 != 0;
  v9 = *(a2 + 56);
  v10 = *(a1 + 116);
  if (v10 < v9)
  {
    v11 = v10;
    if (*(a1 + 120) < v9)
    {
      if (v9)
      {
        v12 = btAlignedAllocInternal(v9 << 6, 16);
        v10 = *(a1 + 116);
      }

      else
      {
        v12 = 0;
      }

      if (v10 >= 1)
      {
        v13 = 0;
        v14 = v10 << 6;
        do
        {
          v15 = (v12 + v13);
          v16 = (*(a1 + 128) + v13);
          *v15 = *v16;
          v15[1] = v16[1];
          v17 = v16[3];
          v15[2] = v16[2];
          v15[3] = v17;
          v13 += 64;
        }

        while (v14 != v13);
      }

      v18 = *(a1 + 128);
      if (v18 && *(a1 + 136) == 1)
      {
        btAlignedFreeInternal(v18);
      }

      *(a1 + 136) = 1;
      *(a1 + 128) = v12;
      *(a1 + 120) = v9;
    }

    v19 = v11 << 6;
    v20 = v9 - v11;
    v7 = 0uLL;
    do
    {
      v21 = (*(a1 + 128) + v19);
      v21[2] = 0uLL;
      v21[3] = 0uLL;
      *v21 = 0uLL;
      v21[1] = 0uLL;
      v19 += 64;
      --v20;
    }

    while (v20);
  }

  *(a1 + 116) = v9;
  if (v9 >= 1)
  {
    v22 = 0;
    v23 = 0;
    v24 = *(a2 + 64);
    v25 = *(a1 + 128);
    do
    {
      v26 = v25 + v22;
      for (m = 16; m != 32; m += 4)
      {
        *(v26 + m) = *(v24 + m);
      }

      v28 = 0;
      v29 = *(a1 + 128) + v22;
      do
      {
        *(v29 + v28) = *(v24 + v28);
        v28 += 4;
      }

      while (v28 != 16);
      v25 = *(a1 + 128);
      v30 = v25 + (v23 << 6);
      *&v7 = *(v24 + 32);
      *(v30 + 32) = v7;
      *(v30 + 40) = *(v24 + 40);
      ++v23;
      v24 += 48;
      v22 += 64;
    }

    while (v23 != v9);
  }

  v31 = *(a2 + 60);
  v32 = *(a1 + 180);
  if (v32 < v31)
  {
    v33 = v32;
    if (*(a1 + 184) < v31)
    {
      if (v31)
      {
        v34 = btAlignedAllocInternal(16 * v31, 16);
        v32 = *(a1 + 180);
      }

      else
      {
        v34 = 0;
      }

      if (v32 >= 1)
      {
        v35 = 0;
        v36 = 16 * v32;
        do
        {
          v7 = *(*(a1 + 192) + v35);
          *(v34 + v35) = v7;
          v35 += 16;
        }

        while (v36 != v35);
      }

      v37 = *(a1 + 192);
      if (v37 && *(a1 + 200) == 1)
      {
        btAlignedFreeInternal(v37);
      }

      *(a1 + 200) = 1;
      *(a1 + 192) = v34;
      *(a1 + 184) = v31;
    }

    v38 = 16 * v33;
    v39 = v31 - v33;
    do
    {
      v40 = (*(a1 + 192) + v38);
      *v40 = 0;
      v40[1] = 0;
      v38 += 16;
      --v39;
    }

    while (v39);
  }

  *(a1 + 180) = v31;
  if (v31 >= 1)
  {
    v41 = *(a2 + 72) + 6;
    v42 = *(a1 + 192) + 6;
    do
    {
      *(v42 + 6) = *(v41 + 6);
      *v42 = *v41;
      *(v42 + 2) = *(v41 + 2);
      *(v42 + 4) = *(v41 + 4);
      *(v42 - 6) = *(v41 - 6);
      *(v42 - 4) = *(v41 - 4);
      *(v42 - 2) = *(v41 - 2);
      v41 += 16;
      v42 += 16;
      --v31;
    }

    while (v31);
  }

  v43 = *(a2 + 92);
  *(a1 + 208) = *(a2 + 88);
  v44 = *(a1 + 220);
  if (v44 < v43 && *(a1 + 224) < v43)
  {
    if (v43)
    {
      v45 = btAlignedAllocInternal(32 * v43, 16);
      v44 = *(a1 + 220);
    }

    else
    {
      v45 = 0;
    }

    if (v44 >= 1)
    {
      v46 = 0;
      v47 = 32 * v44;
      do
      {
        v48 = (v45 + v46);
        v49 = (*(a1 + 232) + v46);
        v7 = *v49;
        v50 = v49[1];
        *v48 = *v49;
        v48[1] = v50;
        v46 += 32;
      }

      while (v47 != v46);
    }

    v51 = *(a1 + 232);
    if (v51 && *(a1 + 240) == 1)
    {
      btAlignedFreeInternal(v51);
    }

    *(a1 + 240) = 1;
    *(a1 + 232) = v45;
    *(a1 + 224) = v43;
  }

  *(a1 + 220) = v43;
  if (v43 >= 1)
  {
    v52 = *(a1 + 232) + 6;
    v53 = (*(a2 + 80) + 10);
    do
    {
      *v52 = v53[2];
      *(v52 + 2) = v53[3];
      *(v52 + 4) = v53[4];
      *(v52 - 6) = *(v53 - 1);
      *(v52 - 4) = *v53;
      *(v52 - 2) = v53[1];
      *&v7 = *(v53 - 5);
      *(v52 + 6) = v7;
      v52 += 32;
      v53 += 10;
      --v43;
    }

    while (v43);
  }

  return *&v7;
}

double btQuantizedBvh::deSerializeDouble(uint64_t a1, uint64_t a2)
{
  for (i = 0; i != 4; ++i)
  {
    v5 = *(a2 + 32 + 8 * i);
    *(a1 + 32 + 4 * i) = v5;
  }

  for (j = 0; j != 4; ++j)
  {
    v7 = *(a2 + 8 * j);
    *(a1 + 16 + 4 * j) = v7;
  }

  for (k = 0; k != 4; ++k)
  {
    *&v9 = *(a2 + 64 + 8 * k);
    *&v9 = *&v9;
    *(a1 + 48 + 4 * k) = v9;
  }

  v10 = *(a2 + 100);
  *(a1 + 68) = *(a2 + 96);
  *(a1 + 72) = v10 != 0;
  v11 = *(a2 + 104);
  v12 = *(a1 + 116);
  if (v12 < v11)
  {
    v13 = v12;
    if (*(a1 + 120) < v11)
    {
      if (v11)
      {
        v14 = btAlignedAllocInternal(v11 << 6, 16);
        v12 = *(a1 + 116);
      }

      else
      {
        v14 = 0;
      }

      if (v12 >= 1)
      {
        v15 = 0;
        v16 = v12 << 6;
        do
        {
          v17 = (v14 + v15);
          v18 = (*(a1 + 128) + v15);
          *v17 = *v18;
          v17[1] = v18[1];
          v19 = v18[3];
          v17[2] = v18[2];
          v17[3] = v19;
          v15 += 64;
        }

        while (v16 != v15);
      }

      v20 = *(a1 + 128);
      if (v20 && *(a1 + 136) == 1)
      {
        btAlignedFreeInternal(v20);
      }

      *(a1 + 136) = 1;
      *(a1 + 128) = v14;
      *(a1 + 120) = v11;
    }

    v21 = v13 << 6;
    v22 = v11 - v13;
    v9 = 0uLL;
    do
    {
      v23 = (*(a1 + 128) + v21);
      v23[2] = 0uLL;
      v23[3] = 0uLL;
      *v23 = 0uLL;
      v23[1] = 0uLL;
      v21 += 64;
      --v22;
    }

    while (v22);
  }

  *(a1 + 116) = v11;
  if (v11 >= 1)
  {
    v24 = 0;
    v25 = 0;
    v26 = *(a2 + 112);
    v27 = *(a1 + 128);
    do
    {
      v28 = v27 + v24;
      for (m = 4; m != 8; ++m)
      {
        v30 = *(v26 + 8 * m);
        *(v28 + 4 * m) = v30;
      }

      v31 = 0;
      v32 = *(a1 + 128) + v24;
      do
      {
        v33 = *(v26 + 8 * v31);
        *(v32 + 4 * v31++) = v33;
      }

      while (v31 != 4);
      v27 = *(a1 + 128);
      v34 = v27 + (v25 << 6);
      *&v9 = *(v26 + 64);
      *(v34 + 32) = v9;
      *(v34 + 40) = *(v26 + 72);
      ++v25;
      v26 += 80;
      v24 += 64;
    }

    while (v25 != v11);
  }

  v35 = *(a2 + 108);
  v36 = *(a1 + 180);
  if (v36 < v35)
  {
    v37 = v36;
    if (*(a1 + 184) < v35)
    {
      if (v35)
      {
        v38 = btAlignedAllocInternal(16 * v35, 16);
        v36 = *(a1 + 180);
      }

      else
      {
        v38 = 0;
      }

      if (v36 >= 1)
      {
        v39 = 0;
        v40 = 16 * v36;
        do
        {
          v9 = *(*(a1 + 192) + v39);
          *(v38 + v39) = v9;
          v39 += 16;
        }

        while (v40 != v39);
      }

      v41 = *(a1 + 192);
      if (v41 && *(a1 + 200) == 1)
      {
        btAlignedFreeInternal(v41);
      }

      *(a1 + 200) = 1;
      *(a1 + 192) = v38;
      *(a1 + 184) = v35;
    }

    v42 = 16 * v37;
    v43 = v35 - v37;
    do
    {
      v44 = (*(a1 + 192) + v42);
      *v44 = 0;
      v44[1] = 0;
      v42 += 16;
      --v43;
    }

    while (v43);
  }

  *(a1 + 180) = v35;
  if (v35 >= 1)
  {
    v45 = *(a2 + 120) + 6;
    v46 = *(a1 + 192) + 6;
    do
    {
      *(v46 + 6) = *(v45 + 6);
      *v46 = *v45;
      *(v46 + 2) = *(v45 + 2);
      *(v46 + 4) = *(v45 + 4);
      *(v46 - 6) = *(v45 - 6);
      *(v46 - 4) = *(v45 - 4);
      *(v46 - 2) = *(v45 - 2);
      v45 += 16;
      v46 += 16;
      --v35;
    }

    while (v35);
  }

  v47 = *(a2 + 132);
  *(a1 + 208) = *(a2 + 128);
  v48 = *(a1 + 220);
  if (v48 < v47 && *(a1 + 224) < v47)
  {
    if (v47)
    {
      v49 = btAlignedAllocInternal(32 * v47, 16);
      v48 = *(a1 + 220);
    }

    else
    {
      v49 = 0;
    }

    if (v48 >= 1)
    {
      v50 = 0;
      v51 = 32 * v48;
      do
      {
        v52 = (v49 + v50);
        v53 = (*(a1 + 232) + v50);
        v9 = *v53;
        v54 = v53[1];
        *v52 = *v53;
        v52[1] = v54;
        v50 += 32;
      }

      while (v51 != v50);
    }

    v55 = *(a1 + 232);
    if (v55 && *(a1 + 240) == 1)
    {
      btAlignedFreeInternal(v55);
    }

    *(a1 + 240) = 1;
    *(a1 + 232) = v49;
    *(a1 + 224) = v47;
  }

  *(a1 + 220) = v47;
  if (v47 >= 1)
  {
    v56 = *(a1 + 232) + 6;
    v57 = (*(a2 + 136) + 10);
    do
    {
      *v56 = v57[2];
      *(v56 + 2) = v57[3];
      *(v56 + 4) = v57[4];
      *(v56 - 6) = *(v57 - 1);
      *(v56 - 4) = *v57;
      *(v56 - 2) = v57[1];
      *&v9 = *(v57 - 5);
      *(v56 + 6) = v9;
      v56 += 32;
      v57 += 10;
      --v47;
    }

    while (v47);
  }

  return *&v9;
}

const char *btQuantizedBvh::serialize(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 16; i += 4)
  {
    *(a2 + 16 + i) = *(a1 + 32 + i);
  }

  for (j = 0; j != 16; j += 4)
  {
    *(a2 + j) = *(a1 + 16 + j);
  }

  for (k = 0; k != 16; k += 4)
  {
    *(a2 + 32 + k) = *(a1 + 48 + k);
  }

  v9 = *(a1 + 72);
  *(a2 + 48) = *(a1 + 68);
  *(a2 + 52) = v9;
  v10 = *(a1 + 116);
  *(a2 + 56) = v10;
  if (v10)
  {
    v11 = (*(*a3 + 56))(a3, *(a1 + 128));
    *(a2 + 64) = v11;
    if (v11)
    {
      v12 = *(a1 + 116);
      v13 = (*(*a3 + 32))(a3, 48, v12);
      v14 = *(a1 + 128);
      if (v12 >= 1)
      {
        v15 = 0;
        v16 = *(v13 + 8);
        v17 = *(a1 + 128);
        do
        {
          v18 = v14 + (v15 << 6);
          for (m = 16; m != 32; m += 4)
          {
            *(v16 + m) = *(v17 + m);
          }

          for (n = 0; n != 16; n += 4)
          {
            *(v16 + n) = *(v17 + n);
          }

          *(v16 + 32) = *(v18 + 32);
          *(v16 + 40) = *(v18 + 40);
          ++v15;
          v16 += 48;
          v17 += 64;
        }

        while (v15 != v12);
      }

      (*(*a3 + 40))(a3, v13, "btOptimizedBvhNodeData", 1497453121, v14);
    }
  }

  else
  {
    *(a2 + 64) = 0;
  }

  v21 = *(a1 + 180);
  *(a2 + 60) = v21;
  if (v21)
  {
    v22 = (*(*a3 + 56))(a3, *(a1 + 192));
    *(a2 + 72) = v22;
    if (v22)
    {
      v23 = *(a1 + 180);
      v24 = (*(*a3 + 32))(a3, 16, v23);
      v25 = *(a1 + 192);
      if (v23 >= 1)
      {
        v26 = *(v24 + 8) + 6;
        v27 = v25 + 6;
        do
        {
          *(v26 + 6) = *(v27 + 6);
          *v26 = *v27;
          *(v26 + 2) = *(v27 + 2);
          *(v26 + 4) = *(v27 + 4);
          *(v26 - 6) = *(v27 - 6);
          *(v26 - 4) = *(v27 - 4);
          *(v26 - 2) = *(v27 - 2);
          v26 += 16;
          v27 += 16;
          --v23;
        }

        while (v23);
      }

      (*(*a3 + 40))(a3, v24, "btQuantizedBvhNodeData", 1497453121, v25);
    }
  }

  else
  {
    *(a2 + 72) = 0;
  }

  v28 = *(a1 + 220);
  *(a2 + 88) = *(a1 + 208);
  *(a2 + 92) = v28;
  if (v28)
  {
    v29 = (*(*a3 + 56))(a3, *(a1 + 232));
    *(a2 + 80) = v29;
    if (v29)
    {
      v30 = *(a1 + 220);
      v31 = (*(*a3 + 32))(a3, 20, v30);
      v32 = *(a1 + 232);
      if (v30 >= 1)
      {
        v33 = v32 + 6;
        v34 = (*(v31 + 8) + 10);
        do
        {
          v34[2] = *v33;
          v34[3] = *(v33 + 2);
          v34[4] = *(v33 + 4);
          *(v34 - 1) = *(v33 - 6);
          *v34 = *(v33 - 4);
          v34[1] = *(v33 - 2);
          *(v34 - 5) = *(v33 + 6);
          v33 += 32;
          v34 += 10;
          --v30;
        }

        while (v30);
      }

      (*(*a3 + 40))(a3, v31, "btBvhSubtreeInfoData", 1497453121, v32);
    }
  }

  else
  {
    *(a2 + 80) = 0;
  }

  return "btQuantizedBvhFloatData";
}

uint64_t SphereTriangleDetector::SphereTriangleDetector(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *result = &unk_282DC8CE0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  return result;
}

uint64_t SphereTriangleDetector::getClosestPoints(SphereTriangleDetector *a1, float32x4_t *a2, uint64_t a3, uint64_t a4, int a5, float *a6)
{
  v39 = 0.0;
  v9 = a2[2];
  v10 = a2[6];
  v11 = vsubq_f32(a2[3], a2[7]);
  v12 = *a2;
  v13 = a2[1];
  v12.i32[3] = 0;
  v13.i32[3] = 0;
  v9.i32[3] = 0;
  v14 = a2[4];
  v15 = a2[5];
  v11.i32[3] = 0;
  v16 = vmlaq_laneq_f32(vmulq_laneq_f32(v12, v14, 2), v13, v15, 2);
  v14.i32[3] = 0;
  v15.i32[3] = 0;
  v17 = vmlaq_laneq_f32(v16, v9, v10, 2);
  v10.i32[3] = 0;
  v37[1] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v12, v14.f32[0]), v13, v15.f32[0]), v9, v10.f32[0]);
  v37[2] = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v12, *v14.f32, 1), v13, *v15.f32, 1), v9, *v10.f32, 1);
  v37[3] = v17;
  v38 = vaddq_f32(vaddq_f32(vmulq_n_f32(v14, v11.f32[0]), vmulq_lane_f32(v15, *v11.f32, 1)), vmulq_laneq_f32(v10, v11, 2));
  result = SphereTriangleDetector::collide(a1, &v38, &v41, &v40, &v39, a6, *(a1 + 6));
  if (result)
  {
    v19 = a2[4];
    v20 = a2[5];
    v21 = vmulq_f32(v19, v40);
    v22 = vmulq_f32(v40, v20);
    v23 = a2[6];
    if (a5)
    {
      v24 = vmulq_f32(v40, v23);
      v24.i32[3] = 0;
      *v25.f32 = vadd_f32(vpadd_f32(*v21.i8, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
      *&v25.u32[2] = vpadd_f32(vpadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL)), 0);
      v26 = vmulq_f32(v19, v41);
      v27 = vmulq_f32(v20, v41);
      v28 = vmulq_f32(v23, v41);
      v28.i32[3] = 0;
      *v26.f32 = vadd_f32(vpadd_f32(*v26.f32, *v27.i8), vzip1_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(v27, v27, 8uLL)));
      *&v26.u32[2] = vpadd_f32(vpadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)), 0);
      v29 = vmulq_n_f32(v25, v39);
      v29.i32[3] = 0;
      v36 = vaddq_f32(vaddq_f32(a2[7], v26), v29);
      v37[0] = vnegq_f32(v25);
    }

    else
    {
      v30 = a2[7];
      v31 = vmulq_f32(v40, v23);
      v31.i32[3] = 0;
      *&v32 = vadd_f32(vpadd_f32(*v21.i8, *v22.i8), vzip1_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
      *(&v32 + 1) = vpadd_f32(vpadd_f32(*v31.i8, *&vextq_s8(v31, v31, 8uLL)), 0);
      v37[0] = v32;
      v33 = vmulq_f32(v19, v41);
      v34 = vmulq_f32(v20, v41);
      v35 = vmulq_f32(v23, v41);
      v35.i32[3] = 0;
      *v33.f32 = vadd_f32(vpadd_f32(*v33.f32, *v34.i8), vzip1_s32(*&vextq_s8(v33, v33, 8uLL), *&vextq_s8(v34, v34, 8uLL)));
      *&v33.u32[2] = vpadd_f32(vpadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL)), 0);
      v36 = vaddq_f32(v30, v33);
    }

    return (*(*a3 + 32))(a3, v37, &v36);
  }

  return result;
}

uint64_t SphereTriangleDetector::collide(SphereTriangleDetector *this, btVector3 *a2, btVector3 *a3, btVector3 *a4, float *a5, float *a6, float a7)
{
  v12 = *(this + 2);
  v13 = v12[7].f32[3];
  if (v12[6].f32[3] == v13 && v12[6].f32[2] == v12[7].f32[2] && v12[6].f32[1] == v12[7].f32[1] && v12[6].f32[0] == v12[7].f32[0] || v12[5].f32[3] == v13 && v12[5].f32[2] == v12[7].f32[2] && v12[5].f32[1] == v12[7].f32[1] && v12[5].f32[0] == v12[7].f32[0])
  {
    return 0;
  }

  v14 = *(*(this + 1) + 48) * *(*(this + 1) + 32);
  v15 = v14 + a7;
  v16 = v12[5];
  v17 = vsubq_f32(v12[6], v16);
  v17.i32[3] = 0;
  v18 = vsubq_f32(v12[7], v16);
  v18.i32[3] = 0;
  v19 = vsubq_f32(vmulq_f32(vextq_s8(vextq_s8(v18, v18, 0xCuLL), v18, 8uLL), v17), vmulq_f32(vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL), v18));
  v20 = vextq_s8(vextq_s8(v19, v19, 0xCuLL), v19, 8uLL);
  v20.i32[3] = 0;
  v21 = vmulq_f32(v20, v20);
  v22 = vpadd_f32(*v21.i8, *v21.i8);
  v23 = vextq_s8(v21, v21, 8uLL);
  v23.f32[0] = vadd_f32(v22, *v23.f32).f32[0];
  if (v23.f32[0] >= 1.4211e-14)
  {
    v24 = vmulq_n_f32(v20, 1.0 / sqrtf(v23.f32[0]));
  }

  else
  {
    v24 = xmmword_21C27F910;
  }

  v25 = *a2;
  v26 = vsubq_f32(*a2, v16);
  v26.i32[3] = 0;
  v27 = vmulq_f32(v24, v26);
  *v23.f32 = vpadd_f32(*v27.i8, *v27.i8);
  v28 = vextq_s8(v27, v27, 8uLL);
  *v28.f32 = vadd_f32(*v23.f32, *v28.f32);
  v23.f32[0] = -v28.f32[0];
  if (v28.f32[0] >= 0.0)
  {
    v23.f32[0] = v28.f32[0];
  }

  if (v23.f32[0] >= v15)
  {
    return 0;
  }

  v54 = v23.f32[0];
  v56 = *a2;
  v23.i64[0] = 0;
  v57 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v23, v28), 0), vnegq_f32(v24), v24);
  v58 = v25;
  v53 = v57;
  if (SphereTriangleDetector::pointInTriangle(this, v12 + 5, &v57, &v58))
  {
    v29 = v53;
    v30 = v56;
    v31 = vsubq_f32(v56, vmulq_n_f32(v53, v54));
    v31.i32[3] = 0;
    v32 = v15 * v15;
  }

  else
  {
    if ((*(v12->i64[0] + 200))(v12) < 1)
    {
      return 0;
    }

    v34 = 0;
    v35 = 0;
    v33.f32[0] = v15 * v15;
    v55 = v33;
    do
    {
      (*(**(this + 2) + 208))(*(this + 2), v35, &v58, &v57);
      v36 = vsubq_f32(*a2, v58);
      v36.i32[3] = 0;
      v37 = vsubq_f32(v57, v58);
      v37.i32[3] = 0;
      v38 = vmulq_f32(v36, v37);
      v39 = vadd_f32(vpadd_f32(*v38.i8, *v38.i8), *&vextq_s8(v38, v38, 8uLL));
      v40 = 0.0;
      if (v39.f32[0] > 0.0)
      {
        v41 = vmulq_f32(v37, v37);
        v42 = vadd_f32(*&vextq_s8(v41, v41, 8uLL), vpadd_f32(*v41.i8, *v41.i8));
        if (vcgt_f32(v42, v39).u32[0])
        {
          LODWORD(v40) = vdiv_f32(v39, v42).u32[0];
          v43 = vmulq_n_f32(v37, v40);
          v43.i32[3] = 0;
          v36 = vsubq_f32(v36, v43);
        }

        else
        {
          v36 = vsubq_f32(v36, v37);
          v40 = 1.0;
        }
      }

      v44 = vmulq_n_f32(v37, v40);
      v44.i32[3] = 0;
      v45 = vaddq_f32(v58, v44);
      v46 = vmulq_f32(v36, v36);
      *v44.f32 = vpadd_f32(*v46.i8, *v46.i8);
      v47 = vextq_s8(v46, v46, 8uLL);
      *v47.f32 = vadd_f32(*v44.f32, *v47.f32);
      v56 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v55, v47), 0), v45, v56);
      v34 |= v47.f32[0] < v55.f32[0];
      v35 = (v35 + 1);
    }

    while (v35 < (*(**(this + 2) + 200))(*(this + 2)));
    if ((v34 & 1) == 0)
    {
      return 0;
    }

    v30 = *a2;
    v29 = v53;
    v32 = v55.f32[0];
    v31 = v56;
  }

  v48 = vsubq_f32(v30, v31);
  v48.i32[3] = 0;
  v49 = vmulq_f32(v48, v48);
  v50 = vadd_f32(vpadd_f32(*v49.i8, *v49.i8), *&vextq_s8(v49, v49, 8uLL)).f32[0];
  if (v50 >= v32)
  {
    return 0;
  }

  if (v50 > 0.00000011921)
  {
    v52 = sqrtf(v50);
    v29 = vmulq_n_f32(v48, 1.0 / v52);
    v14 = v14 - v52;
  }

  *a4 = v29;
  *a3 = v31;
  *a5 = -v14;
  return 1;
}

uint64_t SphereTriangleDetector::pointInTriangle(SphereTriangleDetector *this, float32x4_t *a2, int8x16_t *a3, float32x4_t *a4)
{
  v4 = a2[1];
  v5 = vsubq_f32(v4, *a2);
  v5.i32[3] = 0;
  v6 = a2[2];
  v7 = vsubq_f32(v6, v4);
  v7.i32[3] = 0;
  v8 = vsubq_f32(*a2, v6);
  v8.i32[3] = 0;
  v9 = vsubq_f32(*a4, *a2);
  v9.i32[3] = 0;
  v10 = vsubq_f32(*a4, v4);
  v10.i32[3] = 0;
  v11 = vsubq_f32(*a4, v6);
  v11.i32[3] = 0;
  v12 = vextq_s8(vextq_s8(*a3, *a3, 0xCuLL), *a3, 8uLL);
  v13 = vsubq_f32(vmulq_f32(v12, v5), vmulq_f32(*a3, vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL)));
  v14 = vextq_s8(vextq_s8(v13, v13, 0xCuLL), v13, 8uLL);
  v14.i32[3] = 0;
  v15 = vsubq_f32(vmulq_f32(v12, v7), vmulq_f32(*a3, vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL)));
  v16 = vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL);
  v16.i32[3] = 0;
  v17 = vsubq_f32(vmulq_f32(v12, v8), vmulq_f32(*a3, vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
  v18 = vextq_s8(vextq_s8(v17, v17, 0xCuLL), v17, 8uLL);
  v18.i32[3] = 0;
  v19 = vmulq_f32(v9, v14);
  v20 = vadd_f32(vpadd_f32(*v19.i8, *v19.i8), *&vextq_s8(v19, v19, 8uLL)).f32[0];
  v21 = vmulq_f32(v10, v16);
  LODWORD(v22) = vadd_f32(vpadd_f32(*v21.i8, *v21.i8), *&vextq_s8(v21, v21, 8uLL)).u32[0];
  v23 = vmulq_f32(v11, v18);
  LODWORD(v24) = vadd_f32(vpadd_f32(*v23.i8, *v23.i8), *&vextq_s8(v23, v23, 8uLL)).u32[0];
  if (v20 > 0.0 && v22 > 0.0 && v24 > 0.0)
  {
    return 1;
  }

  v27 = v22 <= 0.0 && v20 <= 0.0;
  return v27 & (v24 <= 0.0);
}

void *btActivatingCollisionAlgorithm::btActivatingCollisionAlgorithm(void *a1, uint64_t *a2)
{
  result = btCollisionAlgorithm::btCollisionAlgorithm(a1, a2);
  *result = &unk_282DC8D08;
  return result;
}

uint64_t btBoxBoxCollisionAlgorithm::btBoxBoxCollisionAlgorithm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = btActivatingCollisionAlgorithm::btActivatingCollisionAlgorithm(a1, a3);
  *v9 = &unk_282DC8D40;
  *(v9 + 16) = 0;
  v9[3] = a2;
  if (!a2 && (*(**(a1 + 8) + 48))(*(a1 + 8), *(a4 + 16), *(a5 + 16)))
  {
    *(a1 + 24) = (*(**(a1 + 8) + 24))(*(a1 + 8), *(a4 + 16), *(a5 + 16));
    *(a1 + 16) = 1;
  }

  return a1;
}

void btBoxBoxCollisionAlgorithm::~btBoxBoxCollisionAlgorithm(btBoxBoxCollisionAlgorithm *this)
{
  *this = &unk_282DC8D40;
  if (*(this + 16) == 1 && *(this + 3))
  {
    (*(**(this + 1) + 32))(*(this + 1));
  }

  C3DSceneSourcePerformConsistencyCheck();
}

{
  btBoxBoxCollisionAlgorithm::~btBoxBoxCollisionAlgorithm(this);

  JUMPOUT(0x21CF07610);
}

btPersistentManifold *btBoxBoxCollisionAlgorithm::processCollision(btPersistentManifold *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *result->var1[0].var1.var0.var0;
  if (v5)
  {
    v7 = result;
    v8 = *(a2 + 8);
    v9 = *(a3 + 8);
    a5[1] = v5;
    v20 = 1566444395;
    v10 = *(a2 + 24);
    v11 = v10[1];
    v19[0] = *v10;
    v19[1] = v11;
    v12 = v10[3];
    v19[2] = v10[2];
    v19[3] = v12;
    v13 = *(a3 + 24);
    v19[4] = *v13;
    v19[5] = v13[1];
    v19[6] = v13[2];
    v19[7] = v13[3];
    btBoxBoxDetector::btBoxBoxDetector(v18, v8, v9);
    result = btBoxBoxDetector::getClosestPoints(v18, v19, a5);
    if (LOBYTE(v7->var1[0].var0.var0.var0[2]) == 1)
    {
      result = a5[1];
      if (LODWORD(result->var6))
      {
        var3 = result->var3;
        v15 = *(a5[2] + 16);
        v16 = var3 == v15;
        if (var3 == v15)
        {
          v17 = *(a5[3] + 16);
        }

        else
        {
          v17 = *(a5[2] + 16);
        }

        if (!v16)
        {
          v15 = *(a5[3] + 16);
        }

        return btPersistentManifold::refreshContactPoints(result, (v15 + 16), (v17 + 16));
      }
    }
  }

  return result;
}

void btBoxBoxCollisionAlgorithm::getAllContactManifolds(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2 && *(result + 16) == 1)
  {
    v5 = *(a2 + 4);
    if (v5 == *(a2 + 8))
    {
      v6 = v5 ? 2 * v5 : 1;
      if (v5 < v6)
      {
        if (v6)
        {
          v7 = btAlignedAllocInternal(8 * v6, 16);
          v5 = *(a2 + 4);
        }

        else
        {
          v7 = 0;
        }

        if (v5 >= 1)
        {
          v8 = 0;
          do
          {
            *(v7 + v8) = *(*(a2 + 16) + v8);
            v8 += 8;
          }

          while (8 * v5 != v8);
        }

        v9 = *(a2 + 16);
        if (v9)
        {
          if (*(a2 + 24) == 1)
          {
            btAlignedFreeInternal(v9);
            v5 = *(a2 + 4);
          }
        }

        *(a2 + 24) = 1;
        *(a2 + 16) = v7;
        *(a2 + 8) = v6;
        v2 = *(result + 24);
      }
    }

    *(*(a2 + 16) + 8 * v5) = v2;
    *(a2 + 4) = v5 + 1;
  }
}

void *btBoxBoxDetector::btBoxBoxDetector(void *result, uint64_t a2, uint64_t a3)
{
  *result = &unk_282DC8D78;
  result[1] = a2;
  result[2] = a3;
  return result;
}

float *dLineClosestApproach(float *result, const btVector3 *a2, const btVector3 *a3, const btVector3 *a4, float *a5, float *a6)
{
  v6 = a2->var0.var0[1];
  v7 = a4->var0.var0[1];
  v8 = a2->var0.var0[2];
  v9 = a4->var0.var0[2];
  v10 = ((v6 * v7) + (a2->var0.var0[0] * a4->var0.var0[0])) + (v8 * v9);
  v11 = 1.0 - (v10 * v10);
  v12 = 0.0;
  v13 = 0.0;
  if (v11 > 0.0001)
  {
    v14 = a3->var0.var0[2] - result[2];
    v15 = a3->var0.var0[0] - *result;
    v16 = a3->var0.var0[1] - result[1];
    v17 = ((v7 * v16) + (a4->var0.var0[0] * v15)) + (v9 * v14);
    v18 = ((v6 * v16) + (a2->var0.var0[0] * v15)) + (v8 * v14);
    v12 = (1.0 / v11) * (v18 - (v10 * v17));
    v13 = (1.0 / v11) * -(v17 - (v10 * v18));
  }

  *a5 = v12;
  *a6 = v13;
  return result;
}

void cullPoints2(unsigned int a1, float32x2_t *a2, unsigned int a3, int a4, int *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a1 - 1;
  if (a1 == 1)
  {
    v10 = *a2;
  }

  else if (a1 == 2)
  {
    v10 = vmul_f32(vadd_f32(*a2, a2[1]), 0x3F0000003F000000);
  }

  else
  {
    if (a1 < 2)
    {
      v12 = 0;
      v13 = 0.0;
    }

    else
    {
      v11 = a2 + 1;
      v12 = 0;
      v13 = 0.0;
      do
      {
        v14 = v11[-1];
        v15 = vmuls_lane_f32(-COERCE_FLOAT(*v11), v14, 1) + (v14.f32[0] * COERCE_FLOAT(HIDWORD(*v11)));
        v13 = v13 + v15;
        v12 = vmla_n_f32(v12, vadd_f32(v14, *v11++), v15);
        --v9;
      }

      while (v9);
    }

    v16 = *(a2 + 4 * (2 * a1) - 8);
    v17 = vmuls_lane_f32(-COERCE_FLOAT(*a2), v16, 1) + (v16.f32[0] * COERCE_FLOAT(HIDWORD(*a2)));
    v18 = v13 + v17;
    if (fabsf(v18) <= 0.00000011921)
    {
      v19 = 1.0e18;
    }

    else
    {
      v19 = 1.0 / (v18 * 3.0);
    }

    if (a1 <= 0)
    {
      v24 = 0;
      goto LABEL_18;
    }

    v10 = vmul_n_f32(vmla_n_f32(v12, vadd_f32(v16, *a2), v17), v19);
  }

  v20 = v10;
  v21 = a2 + 1;
  v22 = v34;
  v23 = a1;
  do
  {
    *v22++ = atan2f(*v21 - v20.f32[1], *(v21 - 1) - v20.f32[0]);
    v21 += 2;
    --v23;
  }

  while (v23);
  memset_pattern16(__b, &unk_21C2A3FF0, 4 * a1);
  v24 = 1;
LABEL_18:
  __b[a4] = 0;
  *a5 = a4;
  if (a3 >= 2)
  {
    v25 = v34[a4];
    v26 = 1;
    do
    {
      a5[1] = a4;
      ++a5;
      v27 = v25 + (v26 * (6.2832 / a3));
      if (v27 > 3.1416)
      {
        v27 = v27 + -6.2832;
      }

      v28 = a4;
      if (v24)
      {
        v29 = 0;
        v30 = a4;
        v31 = 1000000000.0;
        do
        {
          if (__b[v29])
          {
            v32 = vabds_f32(v34[v29], v27);
            if (v32 > 3.1416)
            {
              v32 = 6.2832 - v32;
            }

            if (v32 < v31)
            {
              *a5 = v29;
              v30 = v29;
              v31 = v32;
            }
          }

          ++v29;
        }

        while (a1 != v29);
        v28 = v30;
      }

      __b[v28] = 0;
      ++v26;
    }

    while (v26 != a3);
  }
}

uint64_t dBoxBox2(float32x4_t *a1, float32x2_t *a2, float32x2_t *a3, float32x4_t *a4, float32x2_t *a5, float32x2_t *a6, int8x16_t *a7, float *a8, unsigned int *a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v304 = *MEMORY[0x277D85DE8];
  _Q23 = vsubq_f32(*a4, *a1);
  v14 = a2->f32[0];
  v15 = a2[2].f32[0];
  v16 = a2[2].f32[1];
  v17 = a2->f32[1];
  _S5 = a2[4].f32[0];
  _S9 = a2[4].f32[1];
  v20 = &a2[1];
  v21 = a2[1].f32[0];
  __asm { FMLA            S21, S5, V23.S[2] }

  v27 = a2[3].f32[0];
  _S28 = a2[5].f32[0];
  v29 = vmul_f32(*a3, 0x3F0000003F000000);
  v302 = v29;
  v30 = a3[1].f32[0] * 0.5;
  v303 = v30;
  _D4 = vmul_f32(*a6, 0x3F0000003F000000);
  v300 = _D4;
  v32 = a6[1].f32[0] * 0.5;
  v301 = v32;
  v33 = a5->f32[0];
  v35 = a5[2].f32[0];
  v34 = a5[2].f32[1];
  v37 = a5[4].f32[0];
  v36 = a5[4].f32[1];
  v38 = ((v15 * v35) + (v14 * a5->f32[0])) + (_S5 * v37);
  v39 = a5->f32[1];
  v40 = ((v15 * v34) + (v14 * v39)) + (_S5 * v36);
  v41 = &a5[1];
  v42 = a5[1].f32[0];
  v43 = a5[3].f32[0];
  v44 = a5[5].f32[0];
  v45 = ((v15 * v43) + (v14 * v42)) + (_S5 * v44);
  v46 = fabsf(v38);
  _S25 = fabsf(v40);
  v48 = fabsf(v45);
  __asm { FMLA            S5, S25, V4.S[1] }

  v50 = fabsf(_S21) - (_S5 + (v32 * v48));
  if (v50 > 0.0)
  {
    return 0;
  }

  v272 = v40;
  __asm { FMLA            S7, S9, V23.S[2] }

  v277 = ((v16 * v35) + (v17 * v33)) + (_S9 * v37);
  v52 = fabsf(v277);
  v276 = ((v16 * v34) + (v17 * v39)) + (_S9 * v36);
  v53 = fabsf(v276);
  v274 = ((v16 * v43) + (v17 * v42)) + (_S9 * v44);
  v54 = fabsf(v274);
  v55 = _S21 < 0.0;
  v56 = v50 <= -3.4028e38;
  if (v50 > -3.4028e38)
  {
    v57 = 1;
  }

  else
  {
    v50 = -3.4028e38;
    v55 = 0;
    v57 = 0;
  }

  v58 = v56 ? 0 : a2;
  v59 = fabsf(_S7) - (((v29.f32[1] + (_D4.f32[0] * v52)) + (_D4.f32[1] * v53)) + (v32 * v54));
  if (v59 > 0.0)
  {
    return 0;
  }

  v266 = v17;
  v267 = v21;
  v268 = v45;
  __asm { FMLA            S14, S28, V23.S[2] }

  v61 = ((v27 * v35) + (v21 * v33)) + (_S28 * v37);
  v273 = _S7;
  v62 = ((v27 * v34) + (v21 * v39)) + (_S28 * v36);
  v63 = ((v27 * v43) + (v21 * v42)) + (_S28 * v44);
  v270 = v62;
  v271 = v61;
  v64 = fabsf(v61);
  v65 = fabsf(v62);
  v269 = v63;
  v66 = fabsf(v63);
  if (v59 > v50)
  {
    v67 = v59;
  }

  else
  {
    v67 = v50;
  }

  if (v59 > v50)
  {
    v55 = v273 < 0.0;
    v57 = 2;
    v58 = a2 + 1;
  }

  v68 = fabsf(_S14) - (((v30 + (_D4.f32[0] * v64)) + (_D4.f32[1] * v65)) + (v32 * v66));
  if (v68 > 0.0)
  {
    return 0;
  }

  v69 = _S14 < 0.0;
  v70 = v68 <= v67;
  if (v68 <= v67)
  {
    v69 = v55;
  }

  else
  {
    v67 = v68;
  }

  if (v70)
  {
    v71 = v57;
  }

  else
  {
    v71 = 3;
  }

  if (v70)
  {
    v20 = v58;
  }

  v72 = ((_Q23.f32[1] * v35) + (v33 * _Q23.f32[0])) + (v37 * _Q23.f32[2]);
  v73 = fabsf(v72) - (_D4.f32[0] + (((v29.f32[1] * v52) + (v29.f32[0] * v46)) + (v30 * v64)));
  if (v73 > 0.0)
  {
    return 0;
  }

  v74 = v73 <= v67;
  if (v73 > v67)
  {
    v69 = v72 < 0.0;
  }

  else
  {
    v73 = v67;
  }

  if (!v74)
  {
    v71 = 4;
    v20 = a5;
  }

  v75 = ((_Q23.f32[1] * v34) + (v39 * _Q23.f32[0])) + (v36 * _Q23.f32[2]);
  v76 = fabsf(v75) - (_D4.f32[1] + (((v29.f32[1] * v53) + (v29.f32[0] * _S25)) + (v30 * v65)));
  if (v76 > 0.0)
  {
    return 0;
  }

  v77 = v75 < 0.0;
  if (v76 > v73)
  {
    v78 = v76;
  }

  else
  {
    v78 = v73;
  }

  if (v76 > v73)
  {
    v69 = v77;
    v71 = 5;
    v20 = a5 + 1;
  }

  v79 = ((_Q23.f32[1] * v43) + (v42 * _Q23.f32[0])) + (v44 * _Q23.f32[2]);
  v80 = fabsf(v79) - (v32 + (((v29.f32[1] * v54) + (v29.f32[0] * v48)) + (v30 * v66)));
  if (v80 > 0.0)
  {
    return 0;
  }

  v81 = v79 < 0.0;
  if (v80 > v78)
  {
    v82 = v80;
  }

  else
  {
    v82 = v78;
  }

  if (v80 > v78)
  {
    v83 = 6;
  }

  else
  {
    v81 = v69;
    v83 = v71;
  }

  if (v80 <= v78)
  {
    v41 = v20;
  }

  v84 = _S25 + 0.00001;
  v85 = v48 + 0.00001;
  v86 = v52 + 0.00001;
  v87 = v64 + 0.00001;
  v88 = (_S14 * v277) - (v273 * v271);
  v89 = fabsf(v88) - ((((v30 * (v52 + 0.00001)) + (v29.f32[1] * (v64 + 0.00001))) + (_D4.f32[1] * v85)) + (v32 * v84));
  if (v89 > 0.00000011921)
  {
    return 0;
  }

  v91 = a1;
  v92 = v46 + 0.00001;
  v93 = v53 + 0.00001;
  v94 = v65 + 0.00001;
  v95 = -v273;
  v96 = 0.0;
  v97 = (v271 * v271) + 0.0;
  v98 = sqrtf(v97 + (v277 * v277));
  if (v98 <= 0.00000011921)
  {
    v100 = 0.0;
    v101 = 0.0;
    v102 = v276;
    v103 = v62;
  }

  else
  {
    v99 = v89 / v98;
    v100 = 0.0;
    v101 = 0.0;
    v102 = v276;
    v103 = v62;
    if ((v99 * 1.05) > v82)
    {
      v41 = 0;
      v96 = 0.0 / v98;
      v100 = -v271 / v98;
      v81 = v88 < 0.0;
      v83 = 7;
      v82 = v99;
      v101 = v277 / v98;
    }
  }

  v104 = (v103 * v95) + (_S14 * v102);
  v105 = fabsf(v104) - ((((v30 * v93) + (v29.f32[1] * v94)) + (_D4.f32[0] * v85)) + (v32 * v92));
  if (v105 > 0.00000011921)
  {
    return 0;
  }

  v106 = v103;
  v107 = v54 + 0.00001;
  v265 = v66 + 0.00001;
  v108 = (v106 * v106) + 0.0;
  v109 = sqrtf(v108 + (v102 * v102));
  if (v109 > 0.00000011921 && ((v105 / v109) * 1.05) > v82)
  {
    v41 = 0;
    v96 = 0.0 / v109;
    v100 = -v270 / v109;
    v81 = v104 < 0.0;
    v83 = 8;
    v82 = v105 / v109;
    v101 = v102 / v109;
  }

  v264 = v101;
  v110 = (v269 * v95) + (_S14 * v274);
  v111 = fabsf(v110) - ((((v30 * v107) + (v29.f32[1] * v265)) + (_D4.f32[0] * v84)) + (_D4.f32[1] * v92));
  if (v111 > 0.00000011921)
  {
    return 0;
  }

  v112 = (v269 * v269) + 0.0;
  v113 = sqrtf(v112 + (v274 * v274));
  if (v113 > 0.00000011921)
  {
    v114 = v111 / v113;
    if ((v114 * 1.05) > v82)
    {
      v41 = 0;
      v96 = 0.0 / v113;
      v100 = -v269 / v113;
      v81 = v110 < 0.0;
      v83 = 9;
      v82 = v114;
      v264 = v274 / v113;
    }
  }

  v115 = (_S21 * v271) - (_S14 * v38);
  v116 = fabsf(v115) - ((((v30 * v92) + (v29.f32[0] * v87)) + (_D4.f32[1] * v107)) + (v32 * v93));
  if (v116 > 0.00000011921)
  {
    return 0;
  }

  v263 = v94;
  v117 = -_S14;
  v118 = sqrtf(v97 + (v38 * v38));
  if (v118 <= 0.00000011921)
  {
    v120 = v268;
    v121 = v272;
  }

  else
  {
    v119 = v116 / v118;
    v120 = v268;
    v121 = v272;
    if ((v119 * 1.05) > v82)
    {
      v41 = 0;
      v96 = v271 / v118;
      v100 = 0.0 / v118;
      v81 = v115 < 0.0;
      v83 = 10;
      v82 = v119;
      v264 = -v38 / v118;
    }
  }

  v122 = (v121 * v117) + (_S21 * v270);
  v123 = fabsf(v122) - ((((v30 * v84) + (v29.f32[0] * v263)) + (_D4.f32[0] * v107)) + (v32 * v86));
  if (v123 > 0.00000011921)
  {
    return 0;
  }

  v124 = sqrtf(v108 + (v121 * v121));
  if (v124 > 0.00000011921)
  {
    v125 = v123 / v124;
    if ((v125 * 1.05) > v82)
    {
      v41 = 0;
      v96 = v270 / v124;
      v100 = 0.0 / v124;
      v81 = v122 < 0.0;
      v83 = 11;
      v82 = v125;
      v264 = -v121 / v124;
    }
  }

  v126 = (v120 * v117) + (_S21 * v269);
  v127 = fabsf(v126) - ((((v30 * v85) + (v29.f32[0] * v265)) + (_D4.f32[0] * v93)) + (_D4.f32[1] * v86));
  if (v127 > 0.00000011921)
  {
    return 0;
  }

  v128 = sqrtf(v112 + (v120 * v120));
  if (v128 > 0.00000011921)
  {
    v129 = v127 / v128;
    if ((v129 * 1.05) > v82)
    {
      v41 = 0;
      v96 = v269 / v128;
      v100 = 0.0 / v128;
      v81 = v126 < 0.0;
      v83 = 12;
      v82 = v129;
      v264 = -v120 / v128;
    }
  }

  v130 = (v273 * v38) - (_S21 * v277);
  v131 = fabsf(v130) - ((((v29.f32[1] * v92) + (v29.f32[0] * v86)) + (_D4.f32[1] * v265)) + (v32 * v263));
  if (v131 > 0.00000011921)
  {
    return 0;
  }

  v132 = -_S21;
  v133 = sqrtf((v38 * v38) + (v277 * v277));
  if (v133 > 0.00000011921)
  {
    v134 = v131 / v133;
    if ((v134 * 1.05) > v82)
    {
      v41 = 0;
      v96 = -v277 / v133;
      v100 = v38 / v133;
      v81 = v130 < 0.0;
      v83 = 13;
      v82 = v134;
      v264 = 0.0 / v133;
    }
  }

  v135 = (v102 * v132) + (v273 * v121);
  v136 = fabsf(v135) - ((((v29.f32[1] * v84) + (v29.f32[0] * v93)) + (_D4.f32[0] * v265)) + (v32 * v87));
  if (v136 > 0.00000011921)
  {
    return 0;
  }

  v137 = v100;
  v278 = v82;
  v138 = sqrtf((v121 * v121) + (v102 * v102));
  if (v138 > 0.00000011921)
  {
    v139 = v136 / v138;
    if ((v139 * 1.05) > v82)
    {
      v41 = 0;
      v96 = -v276 / v138;
      v137 = v272 / v138;
      v81 = v135 < 0.0;
      v83 = 14;
      v278 = v139;
      v264 = 0.0 / v138;
    }
  }

  v140 = (v274 * v132) + (v273 * v268);
  v141 = fabsf(v140) - ((((v29.f32[1] * v85) + (v29.f32[0] * v107)) + (_D4.f32[0] * v263)) + (_D4.f32[1] * v87));
  if (v141 > 0.00000011921)
  {
    return 0;
  }

  v142 = sqrtf((v268 * v268) + (v274 * v274));
  if (v142 > 0.00000011921)
  {
    v143 = v141 / v142;
    if ((v143 * 1.05) > v278)
    {
      v96 = -v274 / v142;
      v137 = v268 / v142;
      v81 = v140 < 0.0;
      v83 = 15;
      v278 = v143;
      v264 = 0.0 / v142;
LABEL_86:
      v144 = ((v266 * v137) + (v14 * v96)) + (v267 * v264);
      *a7->i32 = v144;
      v145 = ((v137 * a2[2].f32[1]) + (a2[2].f32[0] * v96)) + (a2[3].f32[0] * v264);
      *&a7->i32[1] = v145;
      v146 = ((v137 * a2[4].f32[1]) + (a2[4].f32[0] * v96)) + (a2[5].f32[0] * v264);
      goto LABEL_87;
    }
  }

  if (!v83)
  {
    return 0;
  }

  if (!v41)
  {
    goto LABEL_86;
  }

  v144 = *v41;
  a7->i32[0] = *v41;
  v145 = v41[4];
  *&a7->i32[1] = v145;
  v146 = v41[8];
LABEL_87:
  *&a7->i32[2] = v146;
  if (v81)
  {
    *a7->i32 = -v144;
    *&a7->i32[1] = -v145;
    *&a7->i32[2] = -v146;
  }

  *a8 = -v278;
  if (v83 < 7)
  {
    v280 = *a7->i32;
    if (v83 > 3)
    {
      v280 = -*a7->i32;
      v279 = -*&a7->i32[1];
      v168 = &v300;
      v169 = &v302;
      v275 = -*&a7->i32[2];
      v170 = a1;
      v91 = a4;
      v171 = a2;
      a2 = a5;
    }

    else
    {
      v279 = *&a7->i32[1];
      v275 = *&a7->i32[2];
      v168 = &v302;
      v169 = &v300;
      v170 = a4;
      v171 = a5;
    }

    v288 = vmla_n_f32(vmla_n_f32(vmul_n_f32(v171[2], v279), *v171, v280), v171[4], v275);
    v289 = ((v279 * v171[3].f32[0]) + (v171[1].f32[0] * v280)) + (v171[5].f32[0] * v275);
    v172 = vabs_f32(v288);
    v173 = fabsf(v289);
    if (v172.f32[1] <= v172.f32[0])
    {
      v175 = v172.f32[0] <= v173;
      v174 = v172.f32[0] > v173;
      v177 = 2 * (v172.f32[0] <= v173);
      v176 = 2;
    }

    else
    {
      v174 = 0;
      v175 = v172.f32[1] <= v173;
      v176 = 2;
      if (v172.f32[1] > v173)
      {
        v177 = 1;
      }

      else
      {
        v177 = 2;
      }
    }

    if (v175)
    {
      v176 = 1;
    }

    v178 = *(&v288 | (4 * v177));
    v179 = v169[v177];
    v180 = v171 + 4 * v177;
    v181 = 0;
    if (v178 >= 0.0)
    {
      v182 = -v179;
      do
      {
        *(&v285 + v181 * 4) = (v170->f32[v181] - v91->f32[v181]) + (v182 * *&v180[1 * v181]);
        ++v181;
      }

      while (v181 != 3);
    }

    else
    {
      do
      {
        *(&v285 + v181 * 4) = (v170->f32[v181] - v91->f32[v181]) + (v179 * *&v180[1 * v181]);
        ++v181;
      }

      while (v181 != 3);
    }

    if (v83 < 4)
    {
      v183 = -1;
    }

    else
    {
      v183 = -4;
    }

    v184 = v183 + v83;
    if (v183 + v83)
    {
      v185 = 1;
      v186 = 0;
      if (v184 == 1)
      {
        v185 = 2;
      }
    }

    else
    {
      v185 = 2;
      v186 = 1;
    }

    v187 = a2 + v186;
    v188 = *v187;
    v189 = v187[4];
    v190 = v187[8];
    v191 = ((v286 * v189) + (v285 * *v187)) + (v287 * v190);
    v192 = a2 + v185;
    v193 = *v192;
    v194 = v192[4];
    v195 = v192[8];
    v196 = ((v286 * v194) + (v285 * *v192)) + (v287 * v195);
    v197 = v171 + v174;
    v198 = v197[4];
    v199 = v197;
    v200 = v197[8];
    v201 = ((v189 * v198) + (v188 * *v197)) + (v190 * v200);
    v202 = v171 + v176;
    v203 = v202[4];
    v204 = (v189 * v203) + (v188 * *v202);
    v205 = v202;
    v206 = v202[8];
    v207 = v204 + (v190 * v206);
    v208 = ((v194 * v198) + (v193 * *v197)) + (v195 * v200);
    v209 = ((v194 * v203) + (v193 * *v202)) + (v195 * v206);
    v210 = v169[v174];
    v211 = v201 * v210;
    v212 = v208 * v210;
    v213 = v169[v176];
    v214 = v207 * v213;
    v215 = v209 * v213;
    v295.var0.var0[0] = (v191 - v211) - v214;
    v295.var0.var0[1] = (v196 - v212) - v215;
    v295.var0.var0[2] = (v191 - v211) + v214;
    v295.var0.var0[3] = (v196 - v212) + v215;
    v216 = v191 + v211;
    v217 = v196 + v212;
    v296 = v216 + v214;
    v297 = v217 + v215;
    v298 = v216 - v214;
    v299 = v217 - v215;
    v218 = v168[v185];
    v294[0] = v168[v186];
    v294[1] = v218;
    v219 = intersectRectQuad2(v294, v295.var0.var0, v293.var0.var0);
    if (v219 < 1)
    {
      return 0;
    }

    v220 = 0;
    v221 = 0;
    LODWORD(v222) = a10;
    v223 = 1.0 / ((v201 * v209) - (v207 * v208));
    v224 = v201 * v223;
    v225 = v209 * v223;
    v226 = -(v207 * v223);
    v227 = -(v208 * v223);
    v228 = v168[v184];
    v229 = v219;
    do
    {
      v230 = 0;
      v231 = &v293.var0.var0[2 * v220];
      v232 = *v231;
      v233 = v231[1];
      v234 = *v231 - v191;
      v235 = (v226 * (v233 - v196)) + (v225 * v234);
      v236 = (v224 * (v233 - v196)) + (v227 * v234);
      v237 = &v292.var0.var0[3 * v221];
      do
      {
        v237[v230] = (*(&v285 + v230 * 4) + (v235 * v199[v230 * 4])) + (v236 * v205[v230 * 4]);
        ++v230;
      }

      while (v230 != 3);
      v238 = v228 - (((v279 * v237[1]) + (v280 * *v237)) + (v275 * v237[2]));
      v291.var0.var0[v221] = v238;
      if (v238 >= 0.0)
      {
        v293.var0.var0[2 * v221] = v232;
        v293.var0.var0[2 * v221 + 1] = v233;
        v221 = (v221 + 1);
      }

      ++v220;
    }

    while (v220 != v229);
    if (v221 < 1)
    {
      return 0;
    }

    v239 = v221;
    v240 = v221;
    if (v221 < a10)
    {
      LODWORD(v222) = v221;
    }

    if (v222 <= 1)
    {
      v222 = 1;
    }

    else
    {
      v222 = v222;
    }

    v281 = v222;
    if (v221 <= v222)
    {
      if (v83 >= 4)
      {
        v258 = 0;
        v259 = &v292;
        do
        {
          v260 = 0;
          v261 = v291.var0.var0[v258];
          do
          {
            *&v290.i32[v260] = (v259->var0.var0[v260] + v91->f32[v260]) - (*&a7->i32[v260] * v261);
            ++v260;
          }

          while (v260 != 3);
          v262.i64[0] = 0x8000000080000000;
          v262.i64[1] = 0x8000000080000000;
          v284 = veorq_s8(*a7, v262);
          (*(*a13 + 32))(a13, &v284, &v290, -v261);
          ++v258;
          v259 = (v259 + 12);
        }

        while (v258 != v240);
      }

      else
      {
        v253 = 0;
        v254 = &v292;
        do
        {
          for (i = 0; i != 3; ++i)
          {
            *&v290.i32[i] = v254->var0.var0[i] + v91->f32[i];
          }

          v256.i64[0] = 0x8000000080000000;
          v256.i64[1] = 0x8000000080000000;
          v257 = veorq_s8(*a7, v256);
          v256.i32[0] = LODWORD(v291.var0.var0[v253]);
          v284 = v257;
          (*(*a13 + 32))(a13, &v284, &v290, -*v256.i32);
          ++v253;
          v254 = (v254 + 12);
        }

        while (v253 != v240);
      }

      v281 = v239;
    }

    else
    {
      v241 = 0;
      v242 = v291.var0.var0[0];
      v243 = 1;
      do
      {
        if (v291.var0.var0[v243] > v242)
        {
          v241 = v243;
          v242 = v291.var0.var0[v243];
        }

        ++v243;
      }

      while (v221 != v243);
      cullPoints2(v221, &v293, v281, v241, v290.i32);
      for (j = 0; j != v281; ++j)
      {
        v245 = 0;
        v246 = v290.i32[j];
        do
        {
          v284.f32[v245] = v292.var0.var0[3 * v246 + v245] + v91->f32[v245];
          ++v245;
        }

        while (v245 != 3);
        v247.i64[0] = 0x8000000080000000;
        v247.i64[1] = 0x8000000080000000;
        if (v83 > 3)
        {
          v250 = veorq_s8(*a7, v247);
          v251 = v291.var0.var0[v246];
          v252 = vsubq_f32(v284, vmulq_n_f32(*a7, v251));
          v252.n128_u32[3] = 0;
          v282 = v252;
          v283 = v250;
          v252.n128_f32[0] = -v251;
          (*(*a13 + 32))(a13, &v283, &v282, v252);
        }

        else
        {
          v248 = veorq_s8(*a7, v247);
          v249 = v291.var0.var0[v246];
          v283 = v248;
          v248.n128_f32[0] = -v249;
          (*(*a13 + 32))(a13, &v283, &v284, v248);
        }
      }
    }

    *a9 = v83;
    return v281;
  }

  else
  {
    v148 = 0;
    *v292.var0.var0 = a1->i64[0];
    LODWORD(v292.var0.var0[2]) = a1->i32[2];
    v150 = *a7->i32;
    v149 = *&a7->i32[1];
    v151 = *&a7->i32[2];
    v152 = a2;
    do
    {
      v153 = 0;
      if ((((v149 * a2[2].f32[v148]) + (v150 * a2->f32[v148])) + (v151 * a2[4].f32[v148])) <= 0.0)
      {
        v154 = -v302.f32[v148];
      }

      else
      {
        v154 = v302.f32[v148];
      }

      do
      {
        v292.var0.var0[v153] = v292.var0.var0[v153] + (v154 * v152[v153 * 4]);
        ++v153;
      }

      while (v153 != 3);
      ++v148;
      ++v152;
    }

    while (v148 != 3);
    v155 = 0;
    *v293.var0.var0 = a4->i64[0];
    LODWORD(v293.var0.var0[2]) = a4->i32[2];
    v156 = *a7->i32;
    v157 = a5;
    do
    {
      v158 = 0;
      if ((((v149 * a5[2].f32[v155]) + (v156 * a5->f32[v155])) + (v151 * a5[4].f32[v155])) <= 0.0)
      {
        v159 = v300.f32[v155];
      }

      else
      {
        v159 = -v300.f32[v155];
      }

      do
      {
        v293.var0.var0[v158] = v293.var0.var0[v158] + (v159 * v157[v158 * 4]);
        ++v158;
      }

      while (v158 != 3);
      ++v155;
      ++v157;
    }

    while (v155 != 3);
    v160 = 0;
    v161 = a2 + (v83 - 7) / 3uLL;
    v288.i32[0] = 0;
    v285 = 0.0;
    v162 = v161[4];
    v295.var0.var0[0] = *v161;
    v295.var0.var0[1] = v162;
    v295.var0.var0[2] = v161[8];
    do
    {
      v291.var0.var0[v160] = *(&a5[-3] + v83 + v160 * 4 + -3 * (((v83 - 7) * 0x5555555555555556uLL) >> 64) - 1);
      ++v160;
    }

    while (v160 != 3);
    dLineClosestApproach(v292.var0.var0, &v295, &v293, &v291, &v288, &v285);
    v163 = 0;
    v164 = v288.f32[0];
    do
    {
      v292.var0.var0[v163] = v292.var0.var0[v163] + (v295.var0.var0[v163] * v164);
      ++v163;
    }

    while (v163 != 3);
    v165 = 0;
    v166 = v285;
    do
    {
      v293.var0.var0[v165] = v293.var0.var0[v165] + (v291.var0.var0[v165] * v166);
      ++v165;
    }

    while (v165 != 3);
    v167.i64[0] = 0x8000000080000000;
    v167.i64[1] = 0x8000000080000000;
    v290 = veorq_s8(*a7, v167);
    (*(*a13 + 32))(a13, &v290, &v293, v278);
    *a9 = v83;
    return 1;
  }
}

uint64_t intersectRectQuad2(float *a1, float *a2, float *__src)
{
  v3 = 0;
  v25 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 4;
  v5 = 1;
  v6 = __src;
  do
  {
    v7 = v5;
    v8 = -1;
    v9 = a2;
    do
    {
      a2 = v6;
      v10 = v8;
      if (v4 >= 1)
      {
        v11 = 0;
        v12 = v4 + 1;
        v13 = v10;
        v14 = v3 ^ 1;
        v15 = v3;
        v16 = a2;
        v4 = 0;
        do
        {
          v17 = v9[v15];
          v18 = v17 * v13;
          v19 = a1[v3];
          if ((v17 * v13) < v19)
          {
            *v16 = v9[v11];
            v16[1] = v9[v11 + 1];
            v4 = (v4 + 1);
            if ((v4 & 8) != 0)
            {
              goto LABEL_22;
            }

            v16 += 2;
            v17 = v9[v15];
            v19 = a1[v3];
            v18 = v17 * v13;
          }

          v20 = &v9[v11 + 2];
          if (v12 == 2)
          {
            v20 = v9;
          }

          v21 = v18 < v19;
          v22 = *(v20 + 4 * v3);
          if (v21 != (v22 * v13) < v19)
          {
            v16[v3 ^ 1] = v9[v14] + (((*(v20 + 4 * (v3 ^ 1)) - v9[v14]) / (v22 - v17)) * -(v17 - (v13 * v19)));
            v16[v3] = a1[v3] * v13;
            v4 = (v4 + 1);
            if ((v4 & 8) != 0)
            {
              goto LABEL_22;
            }

            v16 += 2;
          }

          --v12;
          v15 += 2;
          v14 += 2;
          v11 += 2;
        }

        while (v12 > 1);
      }

      else
      {
        v4 = 0;
      }

      if (a2 == __src)
      {
        v6 = &v24;
      }

      else
      {
        v6 = __src;
      }

      v8 = v10 + 2;
      v9 = a2;
    }

    while (v10 < 0);
    v5 = 0;
    v3 = 1;
  }

  while ((v7 & 1) != 0);
LABEL_22:
  if (a2 != __src)
  {
    memcpy(__src, a2, 8 * v4);
  }

  return v4;
}

uint64_t btBoxBoxDetector::getClosestPoints(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  v6 = 0;
  v39 = *MEMORY[0x277D85DE8];
  memset(v38, 0, sizeof(v38));
  memset(v37, 0, sizeof(v37));
  do
  {
    v7 = &v38[v6];
    v8 = &v37[v6];
    *v7 = a2[v6].i64[0];
    *v8 = a2[v6 + 4].i64[0];
    *(v7 + 2) = a2[v6].i32[2];
    *(v8 + 2) = a2[v6 + 4].i32[2];
    ++v6;
  }

  while (v6 != 3);
  v9 = *(a1 + 8);
  v30 = v9[3];
  v10 = (*(v9->i64[0] + 96))(v9);
  v28 = LODWORD(v10);
  v11 = (*(v9->i64[0] + 96))(v9);
  v26 = LODWORD(v11);
  *&v12 = (*(v9->i64[0] + 96))(v9);
  v13.i64[0] = __PAIR64__(v26, v28);
  v13.i64[1] = v12;
  v14 = vaddq_f32(v30, v13);
  v15 = vaddq_f32(v14, v14);
  v15.i32[3] = 0;
  v33 = v15;
  v16 = *(a1 + 16);
  v31 = v16[3];
  v17 = (*(v16->i64[0] + 96))(v16);
  v29 = LODWORD(v17);
  v18 = (*(v16->i64[0] + 96))(v16);
  v27 = LODWORD(v18);
  *&v19 = (*(v16->i64[0] + 96))(v16);
  v20.i64[0] = __PAIR64__(v27, v29);
  v20.i64[1] = v19;
  v21 = vaddq_f32(v31, v20);
  v22 = vaddq_f32(v21, v21);
  v22.i32[3] = 0;
  v32 = v22;
  return dBoxBox2(a2 + 3, v38, &v33, a2 + 7, v37, &v32, &v36, &v35, &v34, 4, v24, v25, a3);
}

uint64_t btCollisionDispatcher::btCollisionDispatcher(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_282DC8DA0;
  *(a1 + 8) = 2;
  *(a1 + 40) = 1;
  *(a1 + 32) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = &unk_282DC97D8;
  *(a1 + 10488) = a2;
  *(a1 + 96) = btCollisionDispatcher::defaultNearCallback;
  *(a1 + 104) = (*(*a2 + 24))(a2);
  v4 = (*(*a2 + 16))(a2);
  v5 = 0;
  *(a1 + 112) = v4;
  v6 = a1 + 120;
  do
  {
    for (i = 0; i != 36; ++i)
    {
      *(v6 + 8 * i) = (*(**(a1 + 10488) + 32))(*(a1 + 10488), v5, i);
    }

    ++v5;
    v6 += 288;
  }

  while (v5 != 36);
  return a1;
}

void btCollisionDispatcher::defaultNearCallback(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = **a1;
  v7 = *a1[1];
  if ((*(*a2 + 48))(a2, v6, v7))
  {
    v8 = *(v6 + 208);
    v15[0] = 0;
    v15[1] = v8;
    v15[2] = v6;
    v15[3] = v6 + 16;
    v15[4] = -1;
    v9 = *(v7 + 208);
    v14[0] = 0;
    v14[1] = v9;
    v14[2] = v7;
    v14[3] = v7 + 16;
    v14[4] = -1;
    if (a1[2] || (v10 = (*(*a2 + 16))(a2, v15, v14, 0), (a1[2] = v10) != 0))
    {
      btManifoldResult::btManifoldResult(v13, v15, v14);
      v11 = *a1[2];
      if (*(a3 + 8) == 1)
      {
        (*(v11 + 16))();
      }

      else
      {
        v12 = (*(v11 + 24))();
        if (*(a3 + 12) > v12)
        {
          *(a3 + 12) = v12;
        }
      }
    }
  }
}

void btCollisionDispatcher::~btCollisionDispatcher(btCollisionDispatcher *this)
{
  *this = &unk_282DC8DA0;
  v2 = *(this + 4);
  if (v2 && *(this + 40) == 1)
  {
    btAlignedFreeInternal(v2);
  }

  *(this + 40) = 1;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;

  C3DSceneSourcePerformConsistencyCheck();
}

{
  btCollisionDispatcher::~btCollisionDispatcher(this);

  JUMPOUT(0x21CF07610);
}

uint64_t btCollisionDispatcher::getNewManifold(btCollisionDispatcher *this, const btCollisionObject *a2, const btCollisionObject *a3)
{
  v6 = &gContactBreakingThreshold;
  if ((*(this + 2) & 2) != 0)
  {
    v22 = (*(**(a2 + 26) + 40))(*(a2 + 26), *&gContactBreakingThreshold);
    v21 = (*(**(a3 + 26) + 40))(*(a3 + 26), *&gContactBreakingThreshold);
    if (v22 >= v21)
    {
      v6 = &v21;
    }

    else
    {
      v6 = &v22;
    }
  }

  v7 = *v6;
  if (*(a2 + 49) >= *(a3 + 49))
  {
    v8 = *(a3 + 49);
  }

  else
  {
    v8 = *(a2 + 49);
  }

  v9 = *(this + 14);
  v10 = *(v9 + 8);
  if (v10)
  {
    v11 = *(v9 + 16);
    *(v9 + 16) = *v11;
    *(v9 + 8) = v10 - 1;
  }

  else
  {
    if ((*(this + 8) & 4) != 0)
    {
      return 0;
    }

    v11 = btAlignedAllocInternal(832, 16);
  }

  v12 = 0;
  *v11 = 1025;
  do
  {
    v13 = v11 + v12;
    *(v13 + 128) = 0;
    *(v13 + 136) = 0;
    *(v13 + 140) = 0uLL;
    *(v13 + 156) = 0uLL;
    v12 += 192;
  }

  while (v12 != 768);
  *(v11 + 784) = a2;
  *(v11 + 792) = a3;
  *(v11 + 800) = 0;
  *(v11 + 804) = v7;
  *(v11 + 808) = v8;
  *(v11 + 824) = 0;
  v14 = *(this + 5);
  v15 = *(this + 6);
  *(v11 + 820) = v14;
  if (v14 == v15)
  {
    v16 = v14 ? 2 * v14 : 1;
    if (v14 < v16)
    {
      if (v16)
      {
        v17 = btAlignedAllocInternal(8 * v16, 16);
        v14 = *(this + 5);
      }

      else
      {
        v17 = 0;
      }

      if (v14 >= 1)
      {
        v18 = 0;
        do
        {
          *(v17 + v18) = *(*(this + 4) + v18);
          v18 += 8;
        }

        while (8 * v14 != v18);
      }

      v19 = *(this + 4);
      if (v19 && *(this + 40) == 1)
      {
        btAlignedFreeInternal(v19);
        v14 = *(this + 5);
      }

      *(this + 40) = 1;
      *(this + 4) = v17;
      *(this + 6) = v16;
    }
  }

  *(*(this + 4) + 8 * v14) = v11;
  *(this + 5) = v14 + 1;
  return v11;
}

btPersistentManifold *btCollisionDispatcher::clearManifold(btCollisionDispatcher *this, btPersistentManifold *a2)
{
  if (SLODWORD(a2->var6) >= 1)
  {
    v3 = 0;
    v4 = &a2->var1[0].var0.var0.var0[2];
    do
    {
      result = btPersistentManifold::clearUserCache(a2, v4);
      ++v3;
      ++v4;
    }

    while (v3 < SLODWORD(a2->var6));
  }

  a2->var6 = 0.0;
  return result;
}

void btCollisionDispatcher::releaseManifold(btCollisionDispatcher *this, btPersistentManifold *a2)
{
  (*(*this + 40))(this);
  var10_high = SHIDWORD(a2->var10);
  v5 = *(this + 5) - 1;
  v6 = *(this + 4);
  v7 = *(v6 + 8 * var10_high);
  *(v6 + 8 * var10_high) = *(v6 + 8 * v5);
  *(*(this + 4) + 8 * v5) = v7;
  *(*(*(this + 4) + 8 * var10_high) + 820) = var10_high;
  *(this + 5) = v5;
  v8 = *(this + 14);
  v9 = *(v8 + 3);
  if (v9 > a2 || v9 + *v8 * v8[1] <= a2)
  {

    btAlignedFreeInternal(a2);
  }

  else
  {
    *&a2->var0 = *(v8 + 2);
    *(v8 + 2) = a2;
    ++v8[2];
  }
}

uint64_t btCollisionDispatcher::findAlgorithm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a4;
  v4 = *(a1 + 288 * *(*(a2 + 8) + 8) + 8 * *(*(a3 + 8) + 8) + 120);
  return (*(*v4 + 16))(v4, v6, a2, a3);
}

BOOL btCollisionDispatcher::needsResponse(btCollisionDispatcher *this, const btCollisionObject *a2, const btCollisionObject *a3)
{
  v3 = *(a2 + 58);
  if ((v3 & 4) != 0)
  {
    result = 0;
  }

  else
  {
    v4 = (v3 & 3) == 0 || (*(a3 + 58) & 3) == 0;
    result = (*(a3 + 58) & 4) == 0 && v4;
  }

  v6 = *(a2 + 25);
  v7 = *(a3 + 25);
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = (*(v7 + 16) & *(v6 + 8)) != 0 && (*(v6 + 16) & *(v7 + 8)) != 0;
    return result && v9;
  }

  return result;
}