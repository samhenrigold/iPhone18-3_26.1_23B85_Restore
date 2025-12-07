const void *_C3DNodeEnumerateAttributeEntities(uint64_t a1, const void *a2, uint64_t a3)
{
  result = CFTypeIsC3DEntity(a2);
  if (result)
  {
    v6 = *(a3 + 16);

    return v6(a3, a2);
  }

  return result;
}

uint64_t _C3DNodeSearchByID(uint64_t a1, const void *a2)
{
  v3 = a1;
  ID = C3DEntityGetID(a1, a2);
  if (!C3DEqual(ID, a2))
  {
    Name = C3DEntityGetName(v3, v5);
    if (!Name || !C3DEqual(Name, a2))
    {
      Geometry = C3DNodeGetGeometry(v3, v7);
      v9 = C3DSearchByID(Geometry, a2);
      if (v9)
      {
        return v9;
      }

      Light = C3DNodeGetLight(v3, v10);
      v9 = C3DSearchByID(Light, a2);
      if (v9)
      {
        return v9;
      }

      Morpher = C3DNodeGetMorpher(v3, v12);
      v9 = C3DSearchByID(Morpher, a2);
      if (v9)
      {
        return v9;
      }

      Skinner = *(v3 + 248);
      if (Skinner)
      {
        Skinner = C3DDeformerStackGetSkinner(Skinner, v14);
      }

      v9 = C3DSearchByID(Skinner, a2);
      if (v9)
      {
        return v9;
      }

      Floor = C3DNodeGetFloor(v3, v16);
      v9 = C3DSearchByID(Floor, a2);
      if (v9)
      {
        return v9;
      }

      Camera = C3DNodeGetCamera(v3, v18);
      v9 = C3DSearchByID(Camera, a2);
      if (v9)
      {
        return v9;
      }

      else
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2000000000;
        v25 = 0;
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 0x40000000;
        v21[2] = ___C3DNodeSearchByID_block_invoke;
        v21[3] = &unk_2782FE718;
        v21[4] = &v22;
        v21[5] = a2;
        C3DNodeApplyChildrenInterruptible(v3, v21);
        v3 = v23[3];
        _Block_object_dispose(&v22, 8);
      }
    }
  }

  return v3;
}

void SCNCActionFade::~SCNCActionFade(SCNCActionFade *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

SCNCAction *SCNCActionFade::cpp_updateWithTargetForTime(SCNCActionFade *this, SCNNode *a2, double a3)
{
  v6 = SCNCAction::cpp_ratioForTime(this, a3, a2);
  if (this->var22)
  {
    [(SCNNode *)a2 opacity];
    *&v7 = v7;
    v8 = this->var19 * v6;
    result = [(SCNNode *)a2 setOpacity:(v8 + (*&v7 - this->var21))];
    this->var21 = v8;
  }

  else
  {
    result = [(SCNNode *)a2 setOpacity:((this->var19 * v6) + (this->var21 * (1.0 - v6)))];
  }

  if ((COERCE_UNSIGNED_INT(v6 + -1.0) & 0x60000000) == 0)
  {
    v10.n128_f64[0] = a3;

    return SCNCAction::didFinishWithTargetAtTime(this, a2, v10);
  }

  return result;
}

SCNCAction *SCNCActionFade::cpp_willStartWithTargetAtTime(SCNCActionFade *this, SCNNode *a2, double a3)
{
  result = SCNCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  v6 = 0.0;
  if (!this->var22)
  {
    result = [(SCNNode *)a2 opacity];
    v6 = v7;
  }

  this->var21 = v6;
  return result;
}

void __C3DMeshInvalidateRenderableData(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 144) = 0;
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    v4 = a1 + 121;
    v5 = 9;
    do
    {
      *(v4 - 1) = 255;
      v4 += 2;
      --v5;
    }

    while (v5);
    CFRelease(v3);
    *(a1 + 112) = 0;
  }
}

void __BuildRenderableSourceChannelsAndSemanticInfos(uint64_t a1)
{
  v2 = a1 + 112;
  Count = CFArrayGetCount(*(a1 + 112));
  free(*(a1 + 152));
  *(a1 + 152) = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);

  __BuildSemanticInfosForData(a1, v2);
}

void __BuildSemanticInfosForData(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *&v42[5] = *MEMORY[0x277D85DE8];
  v5 = a2 + 8;
  do
  {
    *(a2 + v4 + 8) = 255;
    v4 += 2;
  }

  while (v4 != 18);
  *(a1 + 200) &= ~0x80u;
  Count = CFArrayGetCount(*a2);
  if (Count >= 1)
  {
    v7 = Count;
    v8 = 0;
    v9 = -1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*a2, v8);
      Semantic = C3DMeshSourceGetSemantic(ValueAtIndex, v11);
      v20 = Semantic;
      if (Semantic == v9)
      {
        if (!v9)
        {
          if (*(a2 + 9))
          {
            v21 = scn_default_log(Semantic, v13);
            Semantic = os_log_type_enabled(v21, OS_LOG_TYPE_FAULT);
            if (Semantic)
            {
              __BuildSemanticInfosForData_cold_3(v41, v42, v21);
            }
          }
        }

        v22 = v5 + 2 * v9;
        v23 = *(v22 + 1) + 1;
        *(v22 + 1) = v23;
        if (v9 != 3 && v23 >= 2u)
        {
          v24 = scn_default_log(Semantic, v13);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            Name = C3DEntityGetName(a1, v13);
            v26 = C3DMeshSourceSemanticToSemanticString(v9);
            *buf = 138412546;
            v38 = Name;
            v39 = 2112;
            v40 = v26;
            _os_log_impl(&dword_21BEF7000, v24, OS_LOG_TYPE_DEFAULT, "Warning: Mesh '%@' : sources of redundant semantic '%@' will be ignored in rendering", buf, 0x16u);
          }
        }
      }

      else
      {
        if (Semantic <= v9)
        {
          v27 = scn_default_log(Semantic, v13);
          Semantic = os_log_type_enabled(v27, OS_LOG_TYPE_FAULT);
          if (Semantic)
          {
            __BuildSemanticInfosForData_cold_1(v35, &v36, v27);
          }
        }

        v28 = (v5 + 2 * v20);
        if (*v28 != 255)
        {
          v29 = scn_default_log(Semantic, v13);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            __BuildSemanticInfosForData_cold_2(v33, &v34, v29);
          }
        }

        *v28 = v8;
        v28[1] = 1;
        v9 = v20;
      }

      if (v20 == 2)
      {
        HasNonOpaqueColors = C3DMeshSourceHasNonOpaqueColors(ValueAtIndex, v13, v14, v15, v16, v17, v18, v19);
        v31 = *(a1 + 200);
        v32 = v31 & 0x80;
        if (HasNonOpaqueColors)
        {
          v32 = 0x80;
        }

        *(a1 + 200) = v32 & 0x80 | v31 & 0x7F;
      }

      ++v8;
    }

    while (v7 != v8);
  }
}

void *__DropOriginalTopology(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!*(a1 + 112))
  {
    v3 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      __DropOriginalTopology_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (!*(v2 + 144))
  {
    v10 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __DropOriginalTopology_cold_2(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  v18 = *(v2 + 64);
  v19 = *(v2 + 112);
  if (v18 != v19)
  {
    if (v18)
    {
      CFRelease(*(v2 + 64));
      *(v2 + 64) = 0;
      v19 = *(v2 + 112);
    }

    if (v19)
    {
      v19 = CFRetain(v19);
    }

    *(v2 + 64) = v19;
  }

  v20 = *(v2 + 96);
  v21 = *(v2 + 144);
  if (v20 != v21)
  {
    if (v20)
    {
      CFRelease(*(v2 + 96));
      *(v2 + 96) = 0;
      v21 = *(v2 + 144);
    }

    if (v21)
    {
      v21 = CFRetain(v21);
    }

    *(v2 + 96) = v21;
  }

  *(v2 + 72) = *(v2 + 120);
  *(v2 + 88) = *(v2 + 136);
  Count = CFArrayGetCount(*(v2 + 112));
  free(*(v2 + 104));
  v23 = malloc_type_malloc(Count, 0x1B0F1610uLL);
  *(v2 + 104) = v23;
  return memcpy(v23, *(v2 + 152), Count);
}

void __UpdateSourcesMutability(uint64_t a1)
{
  *(a1 + 200) &= ~4u;
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 0x40000000;
  v1[2] = ____UpdateSourcesMutability_block_invoke;
  v1[3] = &__block_descriptor_tmp_35;
  v1[4] = a1;
  C3DMeshApplySources(a1, 0, v1);
}

void C3DMeshApplySources(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 == 1)
  {
    C3DMeshBuildRenderableData(result, a2);
    v5 = result + 112;
  }

  else if (a2)
  {
    v6 = scn_default_log(result, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v5 = 0;
  }

  else
  {
    v5 = result + 64;
  }

  for (i = 0; i != 9; ++i)
  {
    v15 = (v5 + 8 + 2 * i);
    v16 = *v15;
    if (v16 != -1)
    {
      v17 = v15[1];
      if (v15[1])
      {
        v18 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*v5, v16 + v18);
          (*(a3 + 16))(a3, ValueAtIndex, i, v18, *(v16 + v18 + *(v5 + 40)));
          ++v18;
        }

        while (v17 != v18);
      }
    }
  }
}

uint64_t _C3DMeshFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, uint64_t *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v59 = 1;
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"sources");
  if (!Value)
  {
    v34 = scn_default_log(0, v17);
    if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    _C3DMeshFinalizeDeserialization_cold_5(theDict, v34, v35, v36, v37, v38, v39, v40);
    if (!a4)
    {
      return 0;
    }

    goto LABEL_33;
  }

  v18 = Value;
  if (CFArrayGetCount(Value) < 1)
  {
    v20 = 1;
LABEL_22:
    v41 = CFDictionaryGetValue(theDict, @"primarySourcesInfo");
    if (v41)
    {
      *&buf = a2;
      *(&buf + 1) = &v59;
      v61 = a4;
      CFDictionaryApplyFunction(v41, __DeserializePrimarySource, &buf);
      v20 = v59;
      if (!v59)
      {
        v57 = scn_default_log(v42, v43);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          _C3DMeshFinalizeDeserialization_cold_2();
        }

        return 0;
      }
    }

    if (v20 == 1 && (v44 = CFDictionaryGetValue(theDict, @"geometryElements")) != 0 && (v45 = v44, Count = CFArrayGetCount(v44), Count >= 1))
    {
      v47 = Count;
      v48 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v45, v48);
        v51 = C3DMeshElementCreate(ValueAtIndex, v50);
        v52 = C3DInitWithPropertyList(v51, ValueAtIndex, 0, a4);
        v59 = v52;
        if (!v52)
        {
          break;
        }

        C3DMeshAppendElement(a1, v51);
        CFRelease(v51);
        if (v47 == ++v48)
        {
          goto LABEL_30;
        }
      }

      v58 = scn_default_log(v52, v53);
      result = os_log_type_enabled(v58, OS_LOG_TYPE_ERROR);
      if (result)
      {
        _C3DMeshFinalizeDeserialization_cold_3();
        return 0;
      }
    }

    else
    {
LABEL_30:
      C3DMeshBuildRenderableData(a1, 1);
      return v59;
    }

    return result;
  }

  v19 = 0;
  v20 = 1;
  while (1)
  {
    v21 = CFArrayGetValueAtIndex(v18, v19);
    v22 = CFGetTypeID(v21);
    TypeID = CFNumberGetTypeID();
    if (v22 != TypeID)
    {
      v30 = _C3DMeshSourceCreate(TypeID, v24);
      v31 = CFArrayGetValueAtIndex(v18, v19);
      v32 = C3DInitWithPropertyList(v30, v31, 0, a4);
      v20 = v32;
      v59 = v32;
      if (v32)
      {
        __C3DMeshAddSourceWithDataKind(a1, v30, 0, 0, 0);
      }

      CFRelease(v30);
      goto LABEL_14;
    }

    SourceWithID = __FindSourceWithID(a2, v21);
    if (!SourceWithID)
    {
      break;
    }

    v27 = SourceWithID;
    Semantic = C3DMeshSourceGetSemantic(SourceWithID, v26);
    if ((Semantic - 7) > 0xFDu)
    {
      v33 = scn_default_log(Semantic, v29);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v27;
        _os_log_impl(&dword_21BEF7000, v33, OS_LOG_TYPE_INFO, "Info: Mesh deserialization: Skipped a source that will be recreated at runtime : %@", &buf, 0xCu);
      }
    }

    else
    {
      __C3DMeshAddSourceWithDataKind(a1, v27, 0, 0, 0);
    }

LABEL_14:
    if (++v19 >= CFArrayGetCount(v18))
    {
      goto LABEL_22;
    }
  }

  v55 = scn_default_log(0, v26);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
  {
    _C3DMeshFinalizeDeserialization_cold_4();
    if (!a4)
    {
      return 0;
    }

LABEL_33:
    if (*a4)
    {
      return 0;
    }

    MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
    result = 0;
    *a4 = MalformedDocumentError;
    return result;
  }

LABEL_32:
  if (a4)
  {
    goto LABEL_33;
  }

  return 0;
}

CFDictionaryRef *__FindSourceWithID(uint64_t a1, CFNumberRef number)
{
  valuePtr = 0;
  Value = CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  if (!Value)
  {
    return 0;
  }

  v5 = valuePtr;
  TypeID = C3DMeshSourceGetTypeID(Value, v4);
  result = C3DLibraryGetRemappedID(a1, v5, TypeID);
  if (result)
  {
    v9 = result;
    v10 = C3DMeshSourceGetTypeID(result, v8);
    return C3DLibraryGetEntry(a1, v10, v9);
  }

  return result;
}

void __DeserializePrimarySource(const __CFString *a1, CFDictionaryRef theDict, uint64_t *a3)
{
  *&v38[5] = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  Value = CFDictionaryGetValue(theDict, @"data");
  v9 = CFDictionaryGetValue(theDict, @"subIDs");
  IntValue = CFStringGetIntValue(a1);
  v11 = IntValue;
  TypeID = C3DMeshSourceGetTypeID(IntValue, v12);
  RemappedID = C3DLibraryGetRemappedID(v5, v11, TypeID);
  v16 = C3DMeshSourceGetTypeID(RemappedID, v15);
  Entry = C3DLibraryGetEntry(v5, v16, RemappedID);
  if (Entry)
  {
    v19 = Entry;
    theData = Value;
    Count = CFArrayGetCount(v9);
    Mutable = CFArrayCreateMutable(0, Count, MEMORY[0x277CBF128]);
    v22 = CFArrayGetCount(v9);
    if (v22 >= 1)
    {
      v23 = v22;
      v24 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v24);
        SourceWithID = __FindSourceWithID(v5, ValueAtIndex);
        if (!SourceWithID)
        {
          break;
        }

        Accessor = C3DGenericSourceGetAccessor(SourceWithID, v27);
        URL = C3DSceneSourceGetURL(Accessor);
        if (URL != v19)
        {
          v31 = scn_default_log(URL, v30);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
          {
            __DeserializePrimarySource_cold_1(v37, v38, v31);
          }
        }

        CFArrayAppendValue(Mutable, Accessor);
        if (v23 == ++v24)
        {
          goto LABEL_9;
        }
      }

      *v6 = 0;
      if (v7 && !*v7)
      {
        SourceWithID = C3DSceneSourceCreateMalformedDocumentError(0);
        *v7 = SourceWithID;
      }

      v35 = scn_default_log(SourceWithID, v27);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        __DeserializePrimarySource_cold_2();
        if (!Mutable)
        {
          return;
        }
      }

      else if (!Mutable)
      {
        return;
      }

      v33 = Mutable;
      goto LABEL_24;
    }

LABEL_9:
    DeserializedDataWithAccessors = C3DGenericSourceCreateDeserializedDataWithAccessors(v19, theData, Mutable);
    C3DGenericSourceSetData(v19, DeserializedDataWithAccessors);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (DeserializedDataWithAccessors)
    {
      v33 = DeserializedDataWithAccessors;
LABEL_24:
      CFRelease(v33);
    }
  }

  else
  {
    *v6 = 0;
    if (v7 && !*v7)
    {
      Entry = C3DSceneSourceCreateMalformedDocumentError(0);
      *v7 = Entry;
    }

    v34 = scn_default_log(Entry, v18);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      __DeserializePrimarySource_cold_3();
    }
  }
}

void C3DMeshAppendElement(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 200) &= ~2u;
  __C3DMeshInvalidateRenderableData(a1);
  CFArrayAppendValue(*(a1 + 96), a2);
}

uint64_t C3DMeshGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DMeshGetTypeID_onceToken != -1)
  {
    C3DMeshGetTypeID_cold_1();
  }

  return C3DMeshGetTypeID_typeID;
}

double __C3DMeshGetTypeID_block_invoke()
{
  C3DMeshGetTypeID_typeID = _CFRuntimeRegisterClass();
  unk_281740D70 = kC3DC3DMeshContextClassSerializable;
  unk_281740D80 = *&off_282DC53E8;
  qword_281740D28 = _C3DMeshCopyInstanceVariables;
  result = *&kC3DC3DMeshContextClassSceneLink;
  unk_281740D40 = kC3DC3DMeshContextClassSceneLink;
  unk_281740D50 = unk_282DC5408;
  qword_281740D60 = qword_282DC5418;
  unk_281740D68 = _C3DMeshSearchByID;
  return result;
}

uint64_t C3DMeshCreate(uint64_t a1, uint64_t a2)
{
  if (C3DMeshGetTypeID_onceToken != -1)
  {
    C3DMeshGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMeshGetTypeID_typeID, 208);
  v3 = *MEMORY[0x277CBECE8];
  v4 = MEMORY[0x277CBF128];
  *(Instance + 64) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(Instance + 96) = CFArrayCreateMutable(v3, 0, v4);
  *(Instance + 112) = 0;
  *(Instance + 144) = 0;
  *(Instance + 200) = *(Instance + 200) & 0x87 | 0x18;
  __BuildSemanticInfosForData(Instance, Instance + 64);
  return Instance;
}

uint64_t C3DMeshCreateVolatile(uint64_t a1, uint64_t a2)
{
  result = C3DMeshCreate(a1, a2);
  *(result + 200) |= 1u;
  return result;
}

uint64_t C3DMeshCreateCopy(_BOOL8 Copy_cold_1, uint64_t a2)
{
  v2 = Copy_cold_1;
  if (!Copy_cold_1)
  {
    v3 = scn_default_log(0, a2);
    Copy_cold_1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (Copy_cold_1)
    {
      C3DGeometryCreateCopy_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMeshCreate(Copy_cold_1, a2);
  __C3DMeshCopy(v2, v10, 0);
  return v10;
}

void __C3DMeshCopy(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  __C3DMeshCopySources(v5, a2, v3);
  if (v3)
  {
    ElementsCount = C3DMeshGetElementsCount(v5, v21);
    Mutable = CFArrayCreateMutable(0, ElementsCount, MEMORY[0x277CBF128]);
    if (ElementsCount >= 1)
    {
      for (i = 0; i != ElementsCount; ++i)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(v5, i, 0);
        DeepCopy = C3DMeshElementCreateDeepCopy(ElementAtIndex, v26);
        CFArrayAppendValue(Mutable, DeepCopy);
        CFRelease(DeepCopy);
      }
    }

    C3DMeshSetMeshElements(a2, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    v28 = *(a2 + 96);
    if (v28)
    {
      CFRelease(v28);
      *(a2 + 96) = 0;
    }

    v29 = *(a2 + 144);
    if (v29)
    {
      CFRelease(v29);
      *(a2 + 144) = 0;
    }

    v30 = *MEMORY[0x277CBECE8];
    *(a2 + 96) = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(v5 + 96));
    v31 = *(v5 + 144);
    if (v31)
    {
      MutableCopy = CFArrayCreateMutableCopy(v30, 0, v31);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
    }

    *(a2 + 144) = MutableCopy;
  }

  *(a2 + 200) = *(a2 + 200) & 0x87 | *(v5 + 200) & 0x78;
  C3DEntityCopyTo(v5, a2);
}

uint64_t C3DMeshCreateDeepCopy(_BOOL8 Copy_cold_1, uint64_t a2)
{
  v2 = Copy_cold_1;
  if (!Copy_cold_1)
  {
    v3 = scn_default_log(0, a2);
    Copy_cold_1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (Copy_cold_1)
    {
      C3DGeometryCreateCopy_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMeshCreate(Copy_cold_1, a2);
  __C3DMeshCopy(v2, v10, 1);
  return v10;
}

uint64_t C3DMeshCreateRenderableCopy(_BOOL8 Copy_cold_1, uint64_t a2)
{
  v2 = Copy_cold_1;
  if (!Copy_cold_1)
  {
    v3 = scn_default_log(0, a2);
    Copy_cold_1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (Copy_cold_1)
    {
      C3DGeometryCreateCopy_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DMeshCreate(Copy_cold_1, a2);
  __C3DMeshCopy(v2, v10, 1);
  C3DMeshBuildRenderableData(v10, 1);
  __DropOriginalTopology(v10, v11);
  return v10;
}

void C3DMeshResetBoundingVolumes(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 184);
  if (v11)
  {
    free(v11);
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    free(v12);
  }

  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) &= ~2u;
}

uint64_t C3DMeshGetBoundingBox(uint64_t a1, _OWORD *a2, _OWORD *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 192);
  if (!v14)
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 0);
    if (SourceWithSemanticAtIndex)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      C3DMeshSourceGetContent(SourceWithSemanticAtIndex, v16, &v31);
      v18 = v32;
      if (v32)
      {
        v19 = 0uLL;
        if (v31)
        {
          if (BYTE7(v32) == 1)
          {
            v20 = 0;
            v19.i64[0] = 0x80000000800000;
            v19.i64[1] = 0x80000000800000;
            v21 = vnegq_f32(v19);
            do
            {
              v22 = v31 + v20;
              v23.i64[0] = *v22;
              v23.i64[1] = *(v22 + 8);
              v21 = vminnmq_f32(v21, v23);
              v19 = vmaxnmq_f32(v19, v23);
              v20 += BYTE6(v32);
              --v18;
            }

            while (v18);
          }

          else
          {
            v24 = 0;
            v19.i64[0] = 0x80000000800000;
            v19.i64[1] = 0x80000000800000;
            v21 = vnegq_f32(v19);
            do
            {
              v28 = v19;
              v30 = v21;
              *v17.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v32), (v31 + v24 * BYTE6(v32)), v17, v21.f32[0], v19.f32[0]);
              v21 = vminnmq_f32(v30, v17);
              v19 = vmaxnmq_f32(v28, v17);
              ++v24;
            }

            while (v24 < v32);
          }

          v29 = v21;
        }
      }

      else
      {
        v19 = 0uLL;
      }

      v27 = v19;
    }

    else
    {
      v27 = 0u;
      v29 = 0u;
    }

    v25 = C3DMalloc(0x20uLL);
    *(a1 + 192) = v25;
    *v25 = v29;
    *(*(a1 + 192) + 16) = v27;
    v14 = *(a1 + 192);
  }

  *a2 = *v14;
  *a3 = *(*(a1 + 192) + 16);
  return 1;
}

uint64_t C3DMeshGetBoundingSphere(uint64_t a1, _OWORD *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 184);
  if (!v12)
  {
    v31 = 0uLL;
    v36.i32[2] = 0;
    v36.i64[0] = 0;
    v35.i32[2] = 0;
    v35.i64[0] = 0;
    C3DMeshGetBoundingBox(a1, &v36, &v35);
    *&v13 = C3DVector3MidVector(v35, v36);
    v30 = v13;
    v34 = v13;
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 0);
    if (SourceWithSemanticAtIndex)
    {
      v32 = 0u;
      v33 = 0u;
      C3DMeshSourceGetContent(SourceWithSemanticAtIndex, v15, &v32);
      if (!v32)
      {
        return 0;
      }

      v19 = v33;
      if (BYTE7(v33) == 1)
      {
        if (v33)
        {
          v20 = 0;
          v16.n128_u64[0] = 0;
          do
          {
            v21 = v32 + v20;
            v17.i64[0] = *v21;
            v17.i32[2] = *(v21 + 8);
            v22 = vsubq_f32(v17, v30);
            v17 = vmulq_f32(v22, v22);
            v23 = vaddv_f32(*v17.f32);
            if ((v17.f32[2] + v23) > v16.n128_f32[0])
            {
              v16.n128_f32[0] = v17.f32[2] + v23;
            }

            v20 += BYTE6(v33);
            --v19;
          }

          while (v19);
        }

        else
        {
          v16.n128_u64[0] = 0;
        }

        v16.n128_f32[0] = sqrtf(v16.n128_f32[0]);
      }

      else
      {
        if (v33)
        {
          v25 = 0;
          v26 = 0.0;
          do
          {
            *v27.i64 = C3DConvertFloatingTypeToFloat4(BYTE4(v33), (v32 + v25 * BYTE6(v33)), v16, v17.f32[0], v18);
            v28 = vsubq_f32(v27, v30);
            v16 = vmulq_f32(v28, v28);
            v17.f32[0] = vaddv_f32(v16.n128_u64[0]);
            v16.n128_f32[0] = v16.n128_f32[2] + v17.f32[0];
            if ((v16.n128_f32[2] + v17.f32[0]) > v26)
            {
              v26 = v16.n128_f32[2] + v17.f32[0];
            }

            ++v25;
          }

          while (v25 < v33);
        }

        else
        {
          v26 = 0.0;
        }

        v16.n128_f32[0] = sqrtf(v26);
      }
    }

    else
    {
      v16.n128_u64[0] = 0;
    }

    C3DSphereMake(&v31, &v34, v16);
    v29 = C3DMalloc(0x10uLL);
    *(a1 + 184) = v29;
    *v29 = v31;
    v12 = *(a1 + 184);
  }

  *a2 = *v12;
  return 1;
}

uint64_t _C3DUpdateMeshElementsBBoxIfNeeded(uint64_t result, uint64_t a2)
{
  v74 = *MEMORY[0x277D85DE8];
  if ((*(result + 200) & 2) == 0)
  {
    v2 = result;
    result = C3DMeshGetElementsCount(result, a2);
    if (result >= 1)
    {
      v3 = result;
      v4 = 0;
      while (1)
      {
        ElementAtIndex = C3DMeshGetElementAtIndex(v2, v4, 0);
        v65 = 0u;
        v66 = 0u;
        memset(v64, 0, sizeof(v64));
        C3DMeshElementGetContent(ElementAtIndex, 0, v64);
        if (*&v64[0])
        {
          if (C3DMeshElementGetSharedMeshElement(ElementAtIndex) == ElementAtIndex)
          {
            break;
          }
        }

        ElementAtIndex[11] = 0u;
        ElementAtIndex[12] = 0u;
        result = C3DMeshGetRenderableElementAtIndexIfNeeded(v2, v4);
        if (result)
        {
          *(result + 176) = 0u;
          *(result + 192) = 0u;
        }

LABEL_8:
        if (++v4 == v3)
        {
          goto LABEL_89;
        }
      }

      IndexCount = C3DMeshElementGetIndexCount(ElementAtIndex, v6);
      v9 = IndexCount;
      v10 = *(&v66 + 1) * BYTE3(v65);
      if (*(&v64[0] + 1) % v10 < BYTE3(v65))
      {
        v11 = *(&v64[0] + 1) / v10;
      }

      else
      {
        v11 = *(&v64[0] + 1) / v10 + 1;
      }

      if (v11 >= IndexCount)
      {
        v11 = IndexCount;
      }

      else
      {
        v12 = scn_default_log(IndexCount, v8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 134219008;
          *&buf[4] = *(&v64[0] + 1);
          *&buf[12] = 1024;
          *&buf[14] = v9;
          *&buf[18] = 2048;
          *&buf[20] = *(&v66 + 1) * BYTE3(v65);
          *&buf[28] = 1024;
          *&buf[30] = v11;
          v72 = 1024;
          v73 = v9;
          _os_log_error_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - element has insufficient data (length %zu for count %d and stride %zu) ; count capped to %d (was %d)", buf, 0x28u);
        }
      }

      result = C3DMeshGetSourceWithSemanticAtIndex(v2, 0, 0, 0);
      if (!result)
      {
        goto LABEL_8;
      }

      memset(buf, 0, 32);
      result = C3DMeshSourceGetContent(result, v13, buf);
      if (!*buf)
      {
        goto LABEL_8;
      }

      if (*&buf[8] % buf[22] < buf[21])
      {
        v16 = *&buf[8] / buf[22];
      }

      else
      {
        v16 = *&buf[8] / buf[22] + 1;
      }

      if (*&buf[16] >= v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = *&buf[16];
      }

      if (buf[23] == 1)
      {
        if (BYTE3(v65) == 4)
        {
          if (v11)
          {
            v40 = 0;
            v41 = *&v64[0];
            v20.i64[0] = 0x80000000800000;
            v20.i64[1] = 0x80000000800000;
            v21 = vnegq_f32(v20);
            do
            {
              v42 = *(v41 + 4 * v66 + 4 * *(&v66 + 1) * v40);
              if (v42 >= v17)
              {
                v54 = v21;
                v61 = v20;
                v45 = scn_default_log(result, v14);
                result = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
                if (result)
                {
                  *v67 = 67109376;
                  v68 = v42;
                  v69 = 1024;
                  v70 = v17;
                  _os_log_error_impl(&dword_21BEF7000, v45, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v67, 0xEu);
                }

                v21 = v54;
                v20 = v61;
              }

              else
              {
                v43 = v42 * buf[22];
                v44.i64[0] = *(*buf + v43);
                v44.i64[1] = *(*buf + v43 + 8);
                v21 = vminq_f32(v21, v44);
                v20 = vmaxq_f32(v20, v44);
              }

              ++v40;
            }

            while (v11 != v40);
            goto LABEL_87;
          }
        }

        else if (BYTE3(v65) == 2)
        {
          if (v11)
          {
            v30 = 0;
            v31 = *&v64[0];
            v20.i64[0] = 0x80000000800000;
            v20.i64[1] = 0x80000000800000;
            v21 = vnegq_f32(v20);
            do
            {
              v32 = *(v31 + 2 * v66 + 2 * *(&v66 + 1) * v30);
              if (v17 <= v32)
              {
                v52 = v21;
                v59 = v20;
                v35 = scn_default_log(result, v14);
                result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
                if (result)
                {
                  *v67 = 67109376;
                  v68 = v32;
                  v69 = 1024;
                  v70 = v17;
                  _os_log_error_impl(&dword_21BEF7000, v35, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v67, 0xEu);
                }

                v21 = v52;
                v20 = v59;
              }

              else
              {
                v33 = *buf + buf[22] * *(v31 + 2 * v66 + 2 * *(&v66 + 1) * v30);
                v34.i64[0] = *v33;
                v34.i64[1] = *(v33 + 8);
                v21 = vminq_f32(v21, v34);
                v20 = vmaxq_f32(v20, v34);
              }

              ++v30;
            }

            while (v11 != v30);
            goto LABEL_87;
          }
        }

        else if (BYTE3(v65) == 1 && v11)
        {
          v18 = 0;
          v19 = *&v64[0];
          v20.i64[0] = 0x80000000800000;
          v20.i64[1] = 0x80000000800000;
          v21 = vnegq_f32(v20);
          do
          {
            v22 = *(v19 + v66 + *(&v66 + 1) * v18);
            if (v17 <= v22)
            {
              v50 = v21;
              v57 = v20;
              v25 = scn_default_log(result, v14);
              result = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
              if (result)
              {
                *v67 = 67109376;
                v68 = v22;
                v69 = 1024;
                v70 = v17;
                _os_log_error_impl(&dword_21BEF7000, v25, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v67, 0xEu);
              }

              v21 = v50;
              v20 = v57;
            }

            else
            {
              v23 = *buf + buf[22] * *(v19 + v66 + *(&v66 + 1) * v18);
              v24.i64[0] = *v23;
              v24.i64[1] = *(v23 + 8);
              v21 = vminq_f32(v21, v24);
              v20 = vmaxq_f32(v20, v24);
            }

            ++v18;
          }

          while (v11 != v18);
          goto LABEL_87;
        }
      }

      else if (BYTE3(v65) == 4)
      {
        if (v11)
        {
          v46 = 0;
          v47 = *&v64[0];
          v20.i64[0] = 0x80000000800000;
          v20.i64[1] = 0x80000000800000;
          v21 = vnegq_f32(v20);
          do
          {
            v55 = v21;
            v62 = v20;
            v48 = *(v47 + 4 * v66 + 4 * *(&v66 + 1) * v46);
            if (v48 >= v17)
            {
              v49 = scn_default_log(result, v14);
              result = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
              if (result)
              {
                *v67 = 67109376;
                v68 = v48;
                v69 = 1024;
                v70 = v17;
                _os_log_error_impl(&dword_21BEF7000, v49, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v67, 0xEu);
              }

              v21 = v55;
              v20 = v62;
            }

            else
            {
              *v15.i64 = C3DConvertFloatingTypeToFloat4(buf[20], (*buf + v48 * buf[22]), v15, v20.f32[0], v21.f32[0]);
              v21 = vminq_f32(v55, v15);
              v20 = vmaxq_f32(v62, v15);
            }

            ++v46;
          }

          while (v11 != v46);
          goto LABEL_87;
        }
      }

      else if (BYTE3(v65) == 2)
      {
        if (v11)
        {
          v36 = 0;
          v37 = *&v64[0];
          v20.i64[0] = 0x80000000800000;
          v20.i64[1] = 0x80000000800000;
          v21 = vnegq_f32(v20);
          do
          {
            v53 = v21;
            v60 = v20;
            v38 = *(v37 + 2 * v66 + 2 * *(&v66 + 1) * v36);
            if (v17 <= v38)
            {
              v39 = scn_default_log(result, v14);
              result = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
              if (result)
              {
                *v67 = 67109376;
                v68 = v38;
                v69 = 1024;
                v70 = v17;
                _os_log_error_impl(&dword_21BEF7000, v39, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v67, 0xEu);
              }

              v21 = v53;
              v20 = v60;
            }

            else
            {
              *v15.i64 = C3DConvertFloatingTypeToFloat4(buf[20], (*buf + buf[22] * v38), v15, v20.f32[0], v21.f32[0]);
              v21 = vminq_f32(v53, v15);
              v20 = vmaxq_f32(v60, v15);
            }

            ++v36;
          }

          while (v11 != v36);
          goto LABEL_87;
        }
      }

      else if (BYTE3(v65) == 1 && v11)
      {
        v26 = 0;
        v27 = *&v64[0];
        v20.i64[0] = 0x80000000800000;
        v20.i64[1] = 0x80000000800000;
        v21 = vnegq_f32(v20);
        do
        {
          v51 = v21;
          v58 = v20;
          v28 = *(v27 + v66 + *(&v66 + 1) * v26);
          if (v17 <= v28)
          {
            v29 = scn_default_log(result, v14);
            result = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
            if (result)
            {
              *v67 = 67109376;
              v68 = v28;
              v69 = 1024;
              v70 = v17;
              _os_log_error_impl(&dword_21BEF7000, v29, OS_LOG_TYPE_ERROR, "Error: __GeometryComputeBoundingBoxForMeshElementAtIndex - index (%u) out of bounds (%u)", v67, 0xEu);
            }

            v21 = v51;
            v20 = v58;
          }

          else
          {
            *v15.i64 = C3DConvertFloatingTypeToFloat4(buf[20], (*buf + buf[22] * v28), v15, v20.f32[0], v21.f32[0]);
            v21 = vminq_f32(v51, v15);
            v20 = vmaxq_f32(v58, v15);
          }

          ++v26;
        }

        while (v11 != v26);
        goto LABEL_87;
      }

      v20.i64[0] = 0x80000000800000;
      v20.i64[1] = 0x80000000800000;
      v21 = vnegq_f32(v20);
LABEL_87:
      v56 = v21;
      v63 = v20;
      ElementAtIndex[11] = v21;
      ElementAtIndex[12] = v20;
      result = C3DMeshGetRenderableElementAtIndexIfNeeded(v2, v4);
      if (result)
      {
        *(result + 176) = v56;
        *(result + 192) = v63;
      }

      goto LABEL_8;
    }

LABEL_89:
    *(v2 + 200) |= 2u;
  }

  return result;
}

const __CFArray *C3DMeshGetElementsCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = *(a1 + 96);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void C3DMeshCopyBoundingVolumes(uint64_t a1, uint64_t a2)
{
  C3DMeshGetBoundingBox(a1, &v27, &v26);
  v4 = *(a2 + 192);
  if (!v4)
  {
    v4 = C3DMalloc(0x20uLL);
    *(a2 + 192) = v4;
  }

  *v4 = **(a1 + 192);
  *(*(a2 + 192) + 16) = *(*(a1 + 192) + 16);
  v25 = 0uLL;
  C3DMeshGetBoundingSphere(a1, &v25);
  v6 = *(a2 + 184);
  if (!v6)
  {
    v6 = C3DMalloc(0x10uLL);
    *(a2 + 184) = v6;
  }

  *v6 = v25;
  _C3DUpdateMeshElementsBBoxIfNeeded(a1, v5);
  ElementsCount = C3DMeshGetElementsCount(a1, v7);
  v10 = C3DMeshGetElementsCount(a2, v9);
  v12 = v10;
  if (ElementsCount != v10)
  {
    v13 = scn_default_log(v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DMeshCopyBoundingVolumes_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
    }
  }

  if (ElementsCount >= v12)
  {
    v21 = v12;
  }

  else
  {
    v21 = ElementsCount;
  }

  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a1, i, 0);
      v24 = C3DMeshGetElementAtIndex(a2, i, 0);
      v24[11] = ElementAtIndex[11];
      v24[12] = ElementAtIndex[12];
    }
  }

  *(a2 + 200) |= 2u;
}

const void *C3DMeshGetElementAtIndex(_BOOL8 ElementAtIndex_cold_2, CFIndex idx, int a3)
{
  v5 = ElementAtIndex_cold_2;
  if (!ElementAtIndex_cold_2)
  {
    v6 = scn_default_log(0, idx);
    ElementAtIndex_cold_2 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (ElementAtIndex_cold_2)
    {
      C3DCreateTangentsWithGeometry_cold_1(v6, idx, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!*(v5 + 96))
  {
    v13 = scn_default_log(ElementAtIndex_cold_2, idx);
    ElementAtIndex_cold_2 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
    if (ElementAtIndex_cold_2)
    {
      C3DMeshGetElementAtIndex_cold_2(v13, idx, v14, v15, v16, v17, v18, v19);
    }
  }

  if (a3 == 1)
  {
    C3DMeshBuildRenderableData(v5, 1);
    v20 = *(v5 + 144);
    return CFArrayGetValueAtIndex(v20, idx);
  }

  if (!a3)
  {
    v20 = *(v5 + 96);
    return CFArrayGetValueAtIndex(v20, idx);
  }

  v22 = scn_default_log(ElementAtIndex_cold_2, idx);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    C3DMeshGetElementAtIndex_cold_3(v22, v23, v24, v25, v26, v27, v28, v29);
  }

  return 0;
}

void __C3DMeshRemoveSourceWithSemanticAtIndex(_BOOL8 a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = a1;
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DCreateTangentsWithGeometry_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (a4 == 1)
  {
    C3DMeshBuildRenderableData(v7, 1);
    v15 = v7 + 14;
  }

  else if (a4)
  {
    v16 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v15 = 0;
  }

  else
  {
    v15 = v7 + 8;
  }

  v24 = v15 + 2 * v6;
  v27 = v24[8];
  v26 = v24 + 8;
  v25 = v27;
  if (v27 != -1 && v26[1] > a3)
  {
    v28 = v25 + a3;
    Count = CFArrayGetCount(*v15);
    v31 = Count;
    if (v28 >= Count)
    {
      v32 = scn_default_log(Count, v30);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
      {
        __C3DMeshRemoveSourceWithSemanticAtIndex_cold_3(v32, v33, v34, v35, v36, v37, v38, v39);
      }
    }

    CFArrayRemoveValueAtIndex(*v15, v28);
    v40 = v7[19];
    if (v40)
    {
      free(v40);
      v7[19] = 0;
    }

    if (a4)
    {
      __BuildSemanticInfosForData(v7, v15);
    }

    else
    {
      if (v31 - 1 > v28)
      {
        do
        {
          *(v7[13] + v28) = *(v7[13] + v28 + 1);
          ++v28;
        }

        while (v31 - 1 != v28);
      }

      __BuildSemanticInfosForData(v7, v15);
      __UpdateSourcesMutability(v7);
      __C3DMeshInvalidateRenderableData(v7);
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", v7, 0, 1u);
    v7[26] = (v7[26] + 1);
  }
}

uint64_t __C3DMeshAddSourceWithDataKind(_BOOL8 a1, const void *a2, char a3, int a4, uint64_t a5)
{
  v9 = a1;
  if (!a1 && (v10 = scn_default_log(0, a2), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometry_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v17 = scn_default_log(a1, a2);
  a1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    C3DKeyframedAnimationCopy_cold_1(v17, a2, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (a5 == 1)
  {
    C3DMeshBuildRenderableData(v9, 1);
    v24 = (v9 + 112);
  }

  else if (a5)
  {
    v25 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v25, a2, v26, v27, v28, v29, v30, v31);
    }

    v24 = 0;
  }

  else
  {
    v24 = (v9 + 64);
  }

  Semantic = C3DMeshSourceGetSemantic(a2, a2);
  v33 = Semantic;
  if (Semantic)
  {
    if (Semantic < 0)
    {
LABEL_24:
      v42 = 0;
      goto LABEL_26;
    }

LABEL_21:
    v38 = v24 + 1;
    v39 = v33;
    while (1)
    {
      v40 = *(v38 + 2 * v39);
      if (v40 != -1)
      {
        break;
      }

      v41 = v39--;
      if (v41 < 1)
      {
        goto LABEL_24;
      }
    }

    v42 = *(v38 + 2 * v39 + 1) + v40;
LABEL_26:
    Count = CFArrayGetCount(*v24);
    CFArrayInsertValueAtIndex(*v24, v42, a2);
    if (a5)
    {
      __BuildRenderableSourceChannelsAndSemanticInfos(v9);
      if (!a4)
      {
        return *(v24 + 2 * v33 + 9) - 1;
      }
    }

    else
    {
      v45 = *(v9 + 152);
      if (v45)
      {
        free(v45);
        *(v9 + 152) = 0;
      }

      v46 = malloc_type_realloc(*(v9 + 104), Count + 1, 0x100004077774924uLL);
      *(v9 + 104) = v46;
      if (Count > v42)
      {
        do
        {
          *(*(v9 + 104) + Count) = *(*(v9 + 104) + Count - 1);
          --Count;
        }

        while (Count > v42);
        v46 = *(v9 + 104);
      }

      v46[v42] = a3;
      __BuildSemanticInfosForData(v9, v24);
      __UpdateSourcesMutability(v9);
      __C3DMeshInvalidateRenderableData(v9);
      if (!a4)
      {
        return *(v24 + 2 * v33 + 9) - 1;
      }
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", v9, 0, 1u);
    ++*(v9 + 208);
    return *(v24 + 2 * v33 + 9) - 1;
  }

  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v9, 0, 0, a5);
  if (!SourceWithSemanticAtIndex)
  {
    C3DMeshResetBoundingVolumes(v9, v35);
    goto LABEL_21;
  }

  v36 = scn_default_log(SourceWithSemanticAtIndex, v35);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *v47 = 0;
    _os_log_impl(&dword_21BEF7000, v36, OS_LOG_TYPE_DEFAULT, "Warning: Can't add two position sources", v47, 2u);
  }

  return -1;
}

uint64_t __C3DMeshSetSourceWithInputSetAndDataKind(_BOOL8 a1, const void *a2, uint64_t a3, int a4, int a5)
{
  v9 = a1;
  if (!a1 && (v10 = scn_default_log(0, a2), a1 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometry_cold_1(v10, a2, v11, v12, v13, v14, v15, v16);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v17 = scn_default_log(a1, a2);
  a1 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    C3DMeshSourceCreateWithAccessor_cold_1(v17, a2, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (a4 && a5 == 1)
  {
    v24 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      __C3DMeshSetSourceWithInputSetAndDataKind_cold_3(v24, v25, v26, v27, v28, v29, v30, v31);
    }

    goto LABEL_13;
  }

  if (a5 == 1)
  {
LABEL_13:
    C3DMeshBuildRenderableData(v9, 1);
    v32 = v9 + 112;
    goto LABEL_14;
  }

  if (a5)
  {
    v60 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v60, a2, v61, v62, v63, v64, v65, v66);
    }

    v32 = 0;
  }

  else
  {
    v32 = v9 + 64;
  }

LABEL_14:
  Semantic = C3DMeshSourceGetSemantic(a2, a2);
  v35 = Semantic;
  v36 = v32 + 8;
  v37 = (v32 + 8 + 2 * Semantic);
  v38 = *v37;
  if (v38 != -1 && v37[1] > a3)
  {
    v39 = v38 + a3;
    CFArraySetValueAtIndex(*v32, v39, a2);
    if (a4 != 255)
    {
      *(*(v32 + 40) + v39) = a4;
    }

    if (a5)
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (a4 == 255)
  {
    v40 = scn_default_log(Semantic, v34);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
    {
      __C3DMeshSetSourceWithInputSetAndDataKind_cold_5(v40, v41, v42, v43, v44, v45, v46, v47);
      if ((v35 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_26:
      v51 = 0;
LABEL_27:
      Count = CFArrayGetCount(*v32);
      CFArrayInsertValueAtIndex(*v32, v51, a2);
      if (a5)
      {
        __BuildRenderableSourceChannelsAndSemanticInfos(v9);
LABEL_40:
        LocalCenter = CFNotificationCenterGetLocalCenter();
        v54 = 1;
        CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", v9, 0, 1u);
        ++*(v9 + 208);
        return v54;
      }

      v55 = *(v9 + 152);
      if (v55)
      {
        free(v55);
        *(v9 + 152) = 0;
      }

      v56 = malloc_type_realloc(*(v9 + 104), Count + 1, 0x100004077774924uLL);
      *(v9 + 104) = v56;
      if (Count > v51)
      {
        do
        {
          *(*(v9 + 104) + Count) = *(*(v9 + 104) + Count - 1);
          --Count;
        }

        while (Count > v51);
        v56 = *(v9 + 104);
      }

      v56[v51] = a4;
      __BuildSemanticInfosForData(v9, v32);
LABEL_37:
      __UpdateSourcesMutability(v9);
      if (!v35)
      {
        C3DMeshResetBoundingVolumes(v9, v57);
      }

      __C3DMeshInvalidateRenderableData(v9);
      goto LABEL_40;
    }
  }

  if (v35 < 0)
  {
    goto LABEL_26;
  }

LABEL_23:
  v48 = v35;
  while (1)
  {
    v49 = *(v36 + 2 * v48);
    if (v49 != -1)
    {
      break;
    }

    v50 = v48--;
    if (v50 < 1)
    {
      goto LABEL_26;
    }
  }

  v53 = *(v36 + 2 * v48 + 1);
  if (v53 >= a3)
  {
    v51 = v53 + v49;
    goto LABEL_27;
  }

  return 0;
}

uint64_t C3DMeshGetInputSetForSource(_BOOL8 a1, const void *a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometry_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    C3DKeyframedAnimationCopy_cold_1(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (a3 == 1)
  {
    C3DMeshBuildRenderableData(v5, 1);
    v20 = (v5 + 112);
  }

  else if (a3)
  {
    v21 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v21, a2, v22, v23, v24, v25, v26, v27);
    }

    v20 = 0;
  }

  else
  {
    v20 = (v5 + 64);
  }

  v28 = v20 + 2 * C3DMeshSourceGetSemantic(a2, a2);
  v31 = v28[8];
  v29 = v28 + 8;
  v30 = v31;
  if (v31 == -1)
  {
    return -1;
  }

  v32 = v29[1];
  if (!v29[1])
  {
    return -1;
  }

  v33 = 0;
  while (CFArrayGetValueAtIndex(*v20, v30 + v33) != a2)
  {
    if (v32 == ++v33)
    {
      return -1;
    }
  }

  return v33;
}

const void *C3DMeshGetSourceWithSemanticAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a4 == 1)
  {
    C3DMeshBuildRenderableData(a1, 1);
    v8 = (a1 + 112);
  }

  else if (a4)
  {
    v9 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }

    v8 = 0;
  }

  else
  {
    v8 = (a1 + 64);
  }

  v17 = __indexOfSourceWithSemanticAtIndex(a1, a2, a3, v4);
  if (v17 == -1)
  {
    return 0;
  }

  else
  {
    return CFArrayGetValueAtIndex(*v8, v17);
  }
}

CFIndex __indexOfSourceWithSemanticAtIndex(_BOOL8 a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = a2;
  v7 = a1;
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DCreateTangentsWithGeometry_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (a4 == 1)
  {
    C3DMeshBuildRenderableData(v7, 1);
    v15 = (v7 + 112);
  }

  else if (a4)
  {
    v16 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      C3DMeshApplySources_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v15 = 0;
  }

  else
  {
    v15 = (v7 + 64);
  }

  v24 = v15 + 2 * v6;
  v27 = v24[8];
  v26 = v24 + 8;
  v25 = v27;
  if (v27 == -1 || v26[1] <= a3)
  {
    return -1;
  }

  v28 = v25 + a3;
  Count = CFArrayGetCount(*v15);
  if (v28 >= Count)
  {
    v31 = scn_default_log(Count, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      __indexOfSourceWithSemanticAtIndex_cold_3(v31, v32, v33, v34, v35, v36, v37, v38);
    }
  }

  return v28;
}

BOOL C3DMeshHasSourcesWithSemantic(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v9[3] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    if (a3 != 1)
    {
      C3DMeshHasSourcesWithSemantic_cold_1(v9, a2);
    }

    if (a4)
    {
      C3DMeshBuildRenderableData(a1, 1);
    }

    v7 = 112;
  }

  else
  {
    v7 = 64;
  }

  return *(a1 + v7) && __indexOfSourceWithSemanticAtIndex(a1, a2, 0, a3) != -1;
}

BOOL __C3DMeshHasSourceWithSemanticAtIndex(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v11[3] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    if (a4 != 1)
    {
      C3DMeshHasSourcesWithSemantic_cold_1(v11, a2);
    }

    v7 = 112;
  }

  else
  {
    v7 = 64;
  }

  if (*(a1 + v7))
  {
    v8 = __indexOfSourceWithSemanticAtIndex(a1, a2, a3, a4);
    if (v8 == -1)
    {
      ValueAtIndex = 0;
      if (!a5)
      {
        return ValueAtIndex != 0;
      }
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + v7), v8);
      if (!a5)
      {
        return ValueAtIndex != 0;
      }
    }

    *a5 = ValueAtIndex;
    return ValueAtIndex != 0;
  }

  result = 0;
  *a5 = 0;
  return result;
}

void C3DMeshRemoveSource(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DCreateTangentsWithGeometry_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DKeyframedAnimationCopy_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  InputSetForSource = C3DMeshGetInputSetForSource(v3, a2, 0);
  if (InputSetForSource != -1)
  {
    v21 = InputSetForSource;
    Semantic = C3DMeshSourceGetSemantic(a2, v20);
    __C3DMeshRemoveSourceWithSemanticAtIndex(v3, Semantic, v21, 0);
  }
}

const void *C3DMeshRemoveSourcesWithSemantic(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  while (1)
  {
    result = C3DMeshGetSourceWithSemanticAtIndex(a1, a2, 0, 0);
    if (!result)
    {
      break;
    }

    __C3DMeshRemoveSourceWithSemanticAtIndex(a1, a2, 0, 0);
  }

  return result;
}

void C3DMeshClearCPURepresentation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    Count = CFArrayGetCount(v11);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
        v16 = ValueAtIndex[9];
        if (v16 && (ValueAtIndex[11] & 4) == 0 && !ValueAtIndex[10])
        {
          CFRelease(v16);
          ValueAtIndex[9] = 0;
        }
      }
    }
  }
}

void C3DMeshCopySources(_BOOL8 a1, void *a2)
{
  __C3DMeshCopySources(a1, a2, 0);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", a2, 0, 1u);
  ++a2[26];
}

void __C3DMeshCopySources(_BOOL8 a1, uint64_t a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = *(v5 + 72);
  *(a2 + 88) = *(v5 + 88);
  *(a2 + 72) = v21;
  v22 = *(v5 + 120);
  *(a2 + 136) = *(v5 + 136);
  *(a2 + 120) = v22;
  v23 = *(a2 + 64);
  if (v23)
  {
    CFRelease(v23);
    *(a2 + 64) = 0;
  }

  v24 = *(a2 + 112);
  if (v24)
  {
    CFRelease(v24);
    *(a2 + 112) = 0;
  }

  v25 = *MEMORY[0x277CBECE8];
  *(a2 + 64) = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(v5 + 64));
  v26 = *(v5 + 112);
  if (v26)
  {
    MutableCopy = CFArrayCreateMutableCopy(v25, 0, v26);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(a2 + 112) = MutableCopy;
  Count = CFArrayGetCount(*(v5 + 64));
  v29 = *(v5 + 112);
  if (v29)
  {
    v30 = CFArrayGetCount(v29);
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v30 = 0;
    if (!a3)
    {
      goto LABEL_23;
    }
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 64), i);
      Copy = C3DMeshSourceCreateCopy(ValueAtIndex, v33);
      CFArraySetValueAtIndex(*(a2 + 64), i, Copy);
      CFRelease(Copy);
    }
  }

  if (v30 >= 1)
  {
    for (j = 0; j != v30; ++j)
    {
      v36 = CFArrayGetValueAtIndex(*(v5 + 112), j);
      v38 = C3DMeshSourceCreateCopy(v36, v37);
      CFArraySetValueAtIndex(*(a2 + 112), j, v38);
      CFRelease(v38);
    }
  }

LABEL_23:
  v39 = *(v5 + 104);
  free(*(a2 + 104));
  v40 = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);
  *(a2 + 104) = v40;
  if (v39)
  {
    memcpy(v40, v39, Count);
  }

  v41 = *(v5 + 152);
  free(*(a2 + 152));
  v42 = malloc_type_calloc(v30, 1uLL, 0x100004077774924uLL);
  *(a2 + 152) = v42;
  if (v41)
  {
    memcpy(v42, v41, v30);
  }

  v43 = *(v5 + 160);
  *(a2 + 160) = v43;
  if (v43)
  {
    v44 = 4 * v43;
    v45 = malloc_type_realloc(*(a2 + 168), 4 * v43, 0x7CC2F652uLL);
    *(a2 + 168) = v45;
    memcpy(v45, *(v5 + 168), v44);
  }

  else
  {
    free(*(a2 + 168));
    *(a2 + 168) = 0;
  }

  if (*(v5 + 176))
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v5, 0, 0, 0);
    v48 = 4 * C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v47);
    v49 = malloc_type_realloc(*(a2 + 176), v48, 0xE3B95CBBuLL);
    *(a2 + 176) = v49;
    memcpy(v49, *(v5 + 176), v48);
    if (!a3)
    {
      return;
    }

    goto LABEL_32;
  }

  free(*(a2 + 176));
  *(a2 + 176) = 0;
  if (a3)
  {
LABEL_32:
    __C3DMeshFixAccessorLinks(v5, a2);
  }
}

CFIndex C3DMeshUsesSameChannelForAllSources(uint64_t a1, void *a2)
{
  result = CFArrayGetCount(*(a1 + 64));
  if (result)
  {
    v5 = *(a1 + 104);
    v6 = *v5;
    if (result < 2)
    {
LABEL_6:
      if (a2)
      {
        *a2 = v6;
      }

      return 1;
    }

    else
    {
      v7 = result - 1;
      v8 = v5 + 1;
      while (1)
      {
        v9 = *v8++;
        if (v9 != v6)
        {
          return 0;
        }

        if (!--v7)
        {
          goto LABEL_6;
        }
      }
    }
  }

  return result;
}

uint64_t C3DMeshGetChannelForSourceAtIndex(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 104))
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DMeshGetChannelForSourceAtIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return *(*(a1 + 104) + a2);
}

uint64_t C3DMeshGetChannelForSourceWithSemanticAtIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v7 = __indexOfSourceWithSemanticAtIndex(a1, a2, a3, 0);
  if (v7 == -1)
  {
    v8 = scn_default_log(-1, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DMeshGetChannelForSourceWithSemanticAtIndex_cold_1(v4, v3, v8);
    }
  }

  return *(*(a1 + 104) + v7);
}

void __C3DMeshCopyByAddingOriginalSourcesWithPositionChannel(_BOOL8 a1, uint64_t a2, const void **a3)
{
  v5 = a1;
  if (!a2 && (v6 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (v5)
    {
      goto LABEL_6;
    }
  }

  else if (v5)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  v21 = *(v5 + 64);
  if (v21)
  {
    CFRelease(v21);
    *(v5 + 64) = 0;
  }

  allocator = *MEMORY[0x277CBECE8];
  MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, *(a2 + 64));
  *(v5 + 64) = MutableCopy;
  Count = CFArrayGetCount(MutableCopy);
  memcpy(*(v5 + 104), *(a2 + 104), Count);
  v24 = *(a2 + 88);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 88) = v24;
  v25 = *(v5 + 96);
  if (v25)
  {
    CFRelease(v25);
    *(v5 + 96) = 0;
  }

  *(v5 + 96) = CFArrayCreateMutableCopy(allocator, 0, *(a2 + 96));
  ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(a2, 0, 0);
  v27 = *a3;
  if (*a3)
  {
    v28 = ChannelForSourceWithSemanticAtIndex;
    v29 = 0;
    do
    {
      __C3DMeshAddSourceWithDataKind(v5, v27, v28, 0, 0);
      v27 = a3[++v29];
    }

    while (v27);
  }

  v30 = *(v5 + 112);
  if (v30)
  {
    CFRelease(v30);
    *(v5 + 112) = 0;
  }

  v31 = *(a2 + 112);
  if (v31)
  {
    Mutable = CFArrayCreateMutableCopy(allocator, 0, v31);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(v5 + 112) = Mutable;
  if (*(a2 + 112))
  {
    v33 = CFArrayGetCount(Mutable);
  }

  else
  {
    v33 = 0;
  }

  free(*(v5 + 152));
  *(v5 + 152) = malloc_type_calloc(v33, 1uLL, 0x100004077774924uLL);
  v34 = *(a2 + 136);
  *(v5 + 120) = *(a2 + 120);
  *(v5 + 136) = v34;
  v35 = *(v5 + 144);
  if (v35)
  {
    CFRelease(v35);
    *(v5 + 144) = 0;
  }

  v36 = *(a2 + 144);
  if (v36)
  {
    v37 = CFArrayCreateMutableCopy(allocator, 0, v36);
  }

  else
  {
    v37 = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(v5 + 144) = v37;
  v79 = 0;
  if (__C3DMeshHasSourceWithSemanticAtIndex(a2, 0, 0, 1, &v79))
  {
    v39 = C3DMeshSourceGetCount(v79, v38);
    v41 = *a3;
    if (*a3)
    {
      v42 = 0;
      v43 = v39;
      bytesDeallocator = *MEMORY[0x277CBECF0];
      v73 = a3;
      v44 = 4 * v39;
      v74 = v5;
      do
      {
        if (*(a2 + 168))
        {
          Semantic = C3DMeshSourceGetSemantic(v41, v40);
          ComponentsCountPerValue = C3DMeshSourceGetComponentsCountPerValue(v41);
          ValueType = C3DMeshSourceGetValueType(v41);
          Accessor = C3DMeshSourceGetAccessor(v41, v45, v46, v47, v48, v49, v50, v51);
          ValueLength = C3DSourceAccessorGetValueLength(Accessor, v53);
          v55 = ValueLength * v43;
          v56 = malloc_type_malloc(ValueLength * v43, 0x100004052888210uLL);
          v57 = v56;
          v58 = v43;
          if (v43)
          {
            v59 = 0;
            v60 = v56;
            do
            {
              ValuePtrAtIndex = C3DSourceAccessorGetValuePtrAtIndex(Accessor, *(*(a2 + 168) + v59));
              if (ValuePtrAtIndex)
              {
                memcpy(v60, ValuePtrAtIndex, ValueLength);
              }

              else
              {
                bzero(v60, ValueLength);
              }

              v59 += 4;
              v60 += ValueLength;
            }

            while (v44 != v59);
          }

          v62 = CFDataCreateWithBytesNoCopy(allocator, v57, v55, bytesDeallocator);
          v43 = v58;
          v63 = C3DMeshSourceCreate(v62, Semantic, v58, ComponentsCountPerValue, ValueType);
          CFRelease(v62);
          v5 = v74;
          __C3DMeshAddSourceWithDataKind(v74, v63, 0, 0, 1);
          CFRelease(v63);
          a3 = v73;
        }

        else
        {
          __C3DMeshAddSourceWithDataKind(v5, v41, 0, 0, 1);
        }

        v41 = a3[++v42];
      }

      while (v41);
    }
  }

  v64 = *(a2 + 160);
  *(v5 + 160) = v64;
  v65 = 4 * v64;
  free(*(v5 + 168));
  v66 = malloc_type_malloc(v65, 0x4E01C7D1uLL);
  *(v5 + 168) = v66;
  memcpy(v66, *(a2 + 168), v65);
  free(*(v5 + 176));
  *(v5 + 176) = 0;
  if (*(a2 + 176))
  {
    SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a2, 0, 0, 0);
    v69 = 4 * C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v68);
    v70 = malloc_type_malloc(v69, 0xF31D0461uLL);
    *(v5 + 176) = v70;
    memcpy(v70, *(a2 + 176), v69);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", v5, 0, 1u);
  ++*(v5 + 208);
}

CFMutableArrayRef C3DMeshCopyRenderableSourceAndElements(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a2 && (v4 = scn_default_log(a1, 0), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else if (v3)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  C3DMeshBuildRenderableData(a2, 1);
  v19 = *(a2 + 120);
  *(v3 + 88) = *(a2 + 136);
  *(v3 + 72) = v19;
  v20 = *(a2 + 120);
  *(v3 + 136) = *(a2 + 136);
  *(v3 + 120) = v20;
  v21 = *(v3 + 64);
  if (v21)
  {
    CFRelease(v21);
    *(v3 + 64) = 0;
  }

  v22 = *(v3 + 112);
  if (v22)
  {
    CFRelease(v22);
    *(v3 + 112) = 0;
  }

  v23 = *(a2 + 112);
  v24 = MEMORY[0x277CBECE8];
  if (v23)
  {
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v23);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(v3 + 64) = MutableCopy;
  v26 = *(a2 + 112);
  if (v26)
  {
    Mutable = CFArrayCreateMutableCopy(*v24, 0, v26);
  }

  else
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(v3 + 112) = Mutable;
  Count = CFArrayGetCount(Mutable);
  free(*(v3 + 104));
  *(v3 + 104) = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);
  free(*(v3 + 152));
  *(v3 + 152) = malloc_type_calloc(Count, 1uLL, 0x100004077774924uLL);
  v29 = *(v3 + 96);
  if (v29)
  {
    CFRelease(v29);
    *(v3 + 96) = 0;
  }

  v30 = *(v3 + 144);
  if (v30)
  {
    CFRelease(v30);
    *(v3 + 144) = 0;
  }

  v31 = *(a2 + 144);
  if (v31)
  {
    v32 = CFArrayCreateMutableCopy(*v24, 0, v31);
  }

  else
  {
    v32 = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(v3 + 96) = v32;
  v33 = *(a2 + 144);
  if (v33)
  {
    result = CFArrayCreateMutableCopy(*v24, 0, v33);
  }

  else
  {
    result = CFArrayCreateMutable(*MEMORY[0x277CBED00], 0, MEMORY[0x277CBF128]);
  }

  *(v3 + 144) = result;
  return result;
}

CFArrayRef C3DMeshCopyAllSources(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v13[3] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
      if (v2)
      {
        goto LABEL_4;
      }

LABEL_7:
      v11 = 64;
      return CFArrayCreateCopy(*MEMORY[0x277CBED00], *(a1 + v11));
    }
  }

  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_4:
  if (v2 != 1)
  {
    C3DMeshHasSourcesWithSemantic_cold_1(v13, a2);
  }

  C3DMeshBuildRenderableData(a1, 1);
  v11 = 112;
  return CFArrayCreateCopy(*MEMORY[0x277CBED00], *(a1 + v11));
}

uint64_t C3DMeshMakeOriginalSourceMutable(uint64_t IsMutable, uint64_t a2)
{
  v2 = a2;
  v3 = IsMutable;
  if (a2)
  {
    IsMutable = C3DMeshSourceIsMutable(a2);
    if (IsMutable)
    {
      return v2;
    }
  }

  v4 = C3DMeshCreate(IsMutable, a2);
  v5 = 0;
  v6 = 0;
  v26 = v3 + 72;
  do
  {
    v7 = v26 + 2 * v6;
    v8 = *(v7 + 1);
    if (*(v7 + 1))
    {
      for (i = 0; v8 != i; ++i)
      {
        SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v3, v6, i, 0);
        ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(v3, v6, i);
        if (v2)
        {
          if (SourceWithSemanticAtIndex == v2)
          {
            goto LABEL_12;
          }
        }

        else if (!C3DMeshSourceIsMutable(SourceWithSemanticAtIndex) || !SourceWithSemanticAtIndex)
        {
LABEL_12:
          MutableCopy = C3DMeshSourceCreateMutableCopy(SourceWithSemanticAtIndex, v11);
          __C3DMeshSetSourceWithInputSetAndDataKind(v4, MutableCopy, i, ChannelForSourceWithSemanticAtIndex, 0);
          CFRelease(MutableCopy);
          if (v2)
          {
            v2 = MutableCopy;
          }

          else
          {
            v2 = 0;
          }

          v5 = 1;
          continue;
        }

        __C3DMeshSetSourceWithInputSetAndDataKind(v4, SourceWithSemanticAtIndex, i, ChannelForSourceWithSemanticAtIndex, 0);
      }
    }

    ++v6;
  }

  while (v6 != 9);
  if (v5)
  {
    __C3DMeshFixAccessorLinks(v3, v4);
    for (j = 0; j != 9; ++j)
    {
      v15 = v4 + 2 * j + 72;
      v16 = *(v15 + 1);
      if (*(v15 + 1))
      {
        v17 = 0;
        do
        {
          v18 = C3DMeshGetSourceWithSemanticAtIndex(v4, j, v17, 0);
          v19 = C3DMeshGetChannelForSourceWithSemanticAtIndex(v4, j, v17);
          __C3DMeshSetSourceWithInputSetAndDataKind(v3, v18, v17++, v19, 0);
        }

        while (v16 != v17);
      }
    }

    CFRelease(v4);
    if (v2)
    {
      for (k = 0; k != 9; ++k)
      {
        v21 = v26 + 2 * k;
        v22 = *(v21 + 1);
        if (*(v21 + 1))
        {
          v23 = 0;
          do
          {
            v24 = C3DMeshGetSourceWithSemanticAtIndex(v3, k, v23, 0);
            if (C3DGenericSourcesHaveSharedData(v2, v24))
            {
              C3DGenericSourceMarkMutable(v24);
            }

            ++v23;
          }

          while (v22 != v23);
        }
      }
    }

    *(v3 + 200) |= 4u;
  }

  else
  {
    CFRelease(v4);
  }

  return v2;
}

void __C3DMeshFixAccessorLinks(uint64_t a1, uint64_t a2)
{
  Count = CFArrayGetCount(*(a1 + 64));
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
      Accessor = C3DGenericSourceGetAccessor(ValueAtIndex, v8);
      if (Accessor)
      {
        v10 = *(Accessor + 16);
        if (v10 != ValueAtIndex)
        {
          v11 = CFArrayGetCount(*(a1 + 64));
          if (v11 < 1)
          {
            goto LABEL_15;
          }

          v13 = v11;
          v11 = CFArrayGetValueAtIndex(*(a1 + 64), 0);
          if (v11 == v10)
          {
            v16 = 0;
          }

          else
          {
            v14 = 1;
            while (1)
            {
              v15 = v14;
              if (v13 == v14)
              {
                break;
              }

              v11 = CFArrayGetValueAtIndex(*(a1 + 64), v14);
              v14 = v15 + 1;
              if (v11 == v10)
              {
                v16 = v15;
                goto LABEL_13;
              }
            }

            v16 = 0;
LABEL_13:
            if (v15 >= v13)
            {
LABEL_15:
              if ((__C3DMeshFixAccessorLinks_done & 1) == 0)
              {
                __C3DMeshFixAccessorLinks_done = 1;
                v21 = scn_default_log(v11, v12);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  __C3DMeshFixAccessorLinks_cold_1(&v22, v23, v21);
                }
              }

              continue;
            }
          }

          v17 = CFArrayGetValueAtIndex(*(a2 + 64), i);
          v19 = C3DGenericSourceGetAccessor(v17, v18);
          v20 = CFArrayGetValueAtIndex(*(a2 + 64), v16);
          C3DSourceAccessorSetSource(v19, v20);
        }
      }
    }
  }
}

uint64_t C3DMeshGetSourcesCount(uint64_t a1)
{
  v2 = 0;
  result = 0;
  v4 = a1 + 73;
  do
  {
    result += *(v4 + v2);
    v2 += 2;
  }

  while (v2 != 18);
  return result;
}

uint64_t C3DMeshGetPositionDeindexedToOriginalTable(uint64_t a1, _DWORD *a2)
{
  if (a2)
  {
    *a2 = *(a1 + 160);
  }

  return *(a1 + 168);
}

CFIndex C3DMeshGetIndexOfElement(_BOOL8 ElementAtIndex_cold_2, const void *a2, int a3)
{
  v5 = ElementAtIndex_cold_2;
  if (!ElementAtIndex_cold_2)
  {
    v6 = scn_default_log(0, a2);
    ElementAtIndex_cold_2 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (ElementAtIndex_cold_2)
    {
      C3DCreateTangentsWithGeometry_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!*(v5 + 96))
  {
    v13 = scn_default_log(ElementAtIndex_cold_2, a2);
    ElementAtIndex_cold_2 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
    if (ElementAtIndex_cold_2)
    {
      C3DMeshGetElementAtIndex_cold_2(v13, a2, v14, v15, v16, v17, v18, v19);
    }
  }

  if (a3 == 1)
  {
    C3DMeshBuildRenderableData(v5, 1);
    v20.length = CFArrayGetCount(*(v5 + 144));
    v21 = *(v5 + 144);
    goto LABEL_11;
  }

  if (!a3)
  {
    v20.length = CFArrayGetCount(*(v5 + 96));
    v21 = *(v5 + 96);
LABEL_11:
    v20.location = 0;
    return CFArrayGetFirstIndexOfValue(v21, v20, a2);
  }

  v23 = scn_default_log(ElementAtIndex_cold_2, a2);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    C3DMeshGetIndexOfElement_cold_3(v23, v24, v25, v26, v27, v28, v29, v30);
  }

  return -1;
}

const void *C3DMeshGetRenderableElementAtIndexIfNeeded(uint64_t a1, CFIndex idx)
{
  Count = *(a1 + 144);
  if (Count)
  {
    Count = CFArrayGetCount(Count);
  }

  if (Count <= idx)
  {
    return 0;
  }

  v5 = *(a1 + 144);

  return CFArrayGetValueAtIndex(v5, idx);
}

uint64_t C3DMeshGetMeshElements(_BOOL8 a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 == 1)
  {
    C3DMeshBuildRenderableData(v3, 1);
    return *(v3 + 144);
  }

  else if (v2)
  {
    v12 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      C3DMeshGetMeshElements_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    return 0;
  }

  else
  {
    return *(v3 + 96);
  }
}

void C3DMeshSetMeshElements(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 96);
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      v13 = CFGetAllocator(cf);
      *(a1 + 96) = CFArrayCreateMutableCopy(v13, 0, cf);
    }

    *(a1 + 200) &= ~2u;
    __C3DMeshInvalidateRenderableData(a1);
  }
}

void C3DMeshRemoveAllElements(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(a1 + 200) &= ~2u;
  __C3DMeshInvalidateRenderableData(a1);
  CFArrayRemoveAllValues(*(a1 + 96));
}

void C3DMeshSetOriginalElementType(uint64_t a1, uint64_t a2)
{
  ElementsCount = C3DMeshGetElementsCount(a1, a2);
  if (ElementsCount < 1)
  {
    return;
  }

  v5 = ElementsCount;
  v6 = 0;
  v7 = a2 - 4;
  allocator = *MEMORY[0x277CBECE8];
  while (1)
  {
    ElementAtIndex = C3DMeshGetElementAtIndex(a1, v6, 1);
    Type = C3DMeshElementGetType(ElementAtIndex, v9);
    if (Type != a2)
    {
      break;
    }

LABEL_27:
    if (++v6 == v5)
    {
      return;
    }
  }

  if (v7 > 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = C3DMeshElementGetType(ElementAtIndex, v11);
    if (v12)
    {
      v14 = scn_default_log(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *&size[4] = 0;
        _os_log_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_DEFAULT, "Warning: Can only convert from triangle array to another element type", &size[4], 2u);
      }

      goto LABEL_27;
    }

    *size = 0;
    Indexes = C3DMeshElementGetIndexes(ElementAtIndex, size);
    PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
    v17 = *size;
    BytePtr = CFDataGetBytePtr(Indexes);
    if (v17 == 2)
    {
      if (a2 == 2)
      {
        v19 = 3 * PrimitiveCount;
        v20 = 6 * PrimitiveCount;
        v21 = malloc_type_calloc(6 * PrimitiveCount, *size, 0x895EF2AAuLL);
        v26 = v21;
        if (PrimitiveCount >= 1)
        {
          do
          {
            *v26 = *BytePtr;
            v27 = *(BytePtr + 1);
            *(v26 + 1) = v27;
            *(v26 + 2) = v27;
            v28 = *(BytePtr + 2);
            *(v26 + 3) = v28;
            *(v26 + 4) = v28;
            v29 = *BytePtr;
            BytePtr += 6;
            *(v26 + 5) = v29;
            v26 += 12;
            --PrimitiveCount;
          }

          while (PrimitiveCount);
        }

        goto LABEL_17;
      }
    }

    else
    {
      if (v17 != 1)
      {
        v34 = 3 * PrimitiveCount;
        if (a2 == 2)
        {
          v35 = malloc_type_calloc(6 * PrimitiveCount, *size, 0xE2D0E27AuLL);
          v36 = v35;
          if (PrimitiveCount >= 1)
          {
            do
            {
              *v36 = *BytePtr;
              v37 = *(BytePtr + 1);
              *(v36 + 1) = v37;
              *(v36 + 2) = v37;
              v38 = *(BytePtr + 2);
              *(v36 + 3) = v38;
              *(v36 + 4) = v38;
              v39 = *BytePtr;
              BytePtr += 12;
              *(v36 + 5) = v39;
              v36 += 24;
              --PrimitiveCount;
            }

            while (PrimitiveCount);
          }

          v40 = CFDataCreate(allocator, v35, 2 * v34 * *size);
          C3DMeshElementInit(ElementAtIndex, 2, v34, v40, size[0]);
          CFRelease(v40);
          v31 = v35;
          goto LABEL_23;
        }

        v41 = CFDataCreate(allocator, BytePtr, v34 * *size);
        C3DMeshElementInit(ElementAtIndex, 3, 3 * PrimitiveCount, v41, size[0]);
        v33 = v41;
LABEL_25:
        CFRelease(v33);
        goto LABEL_26;
      }

      if (a2 == 2)
      {
        v19 = 3 * PrimitiveCount;
        v20 = 6 * PrimitiveCount;
        v21 = malloc_type_calloc(6 * PrimitiveCount, *size, 0x41035F6BuLL);
        v22 = v21;
        if (PrimitiveCount >= 1)
        {
          do
          {
            *v22 = *BytePtr;
            v23 = BytePtr[1];
            v22[1] = v23;
            v22[2] = v23;
            v24 = BytePtr[2];
            v22[3] = v24;
            v22[4] = v24;
            v25 = *BytePtr;
            BytePtr += 3;
            v22[5] = v25;
            v22 += 6;
            --PrimitiveCount;
          }

          while (PrimitiveCount);
        }

LABEL_17:
        v30 = CFDataCreate(allocator, v21, v20 * *size);
        C3DMeshElementInit(ElementAtIndex, 2, v19, v30, size[0]);
        CFRelease(v30);
        v31 = v21;
LABEL_23:
        free(v31);
        v7 = a2 - 4;
LABEL_26:
        __C3DMeshInvalidateRenderableData(a1);
        goto LABEL_27;
      }
    }

    v32 = CFDataCreate(allocator, BytePtr, 3 * PrimitiveCount * *size);
    C3DMeshElementInit(ElementAtIndex, 3, 3 * PrimitiveCount, v32, size[0]);
    v33 = v32;
    goto LABEL_25;
  }

  v42 = scn_default_log(Type, v11);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21BEF7000, v42, OS_LOG_TYPE_DEFAULT, "Warning: Can only convert to lines or points element type", buf, 2u);
  }
}

uint64_t C3DMeshGetMorphableSourceMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 200) >> 3) & 0xF;
}

uint64_t C3DMeshIsMutable(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 200) >> 2) & 1;
}

void C3DMeshMarkMutable(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(result + 200) |= 4u;
}

void C3DMeshDidMutate(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(result + 216);
}

uint64_t C3DMeshGetMutabilityTimeStamp(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 216);
}

uint64_t C3DMeshIsVolatile(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 200) & 1;
}

BOOL __processTrianglesBatch(uint64_t a1, uint64_t a2, unsigned int a3, float32x4_t a4, uint32x4_t a5, float32x4_t a6, double a7, double a8, float32x4_t a9, __n128 a10)
{
  v72 = *MEMORY[0x277D85DE8];
  v10 = a3 - a2;
  if (a3 > a2)
  {
    v11 = a1;
    v12 = *(a1 + 64);
    v13 = *(a1 + 86);
    v61 = (a1 + 144);
    v14 = a2;
    v65 = *(a1 + 87);
    v60 = *(a1 + 84);
    v64 = a3;
    a4.i64[0] = 67109120;
    v15 = 1;
    while (1)
    {
      v16 = v11[2].u8[2];
      if (v11[2].i8[2])
      {
        if (v14)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v14)
        {
          v18 = 2;
        }

        else
        {
          v18 = 1;
        }

        v19 = v16 != 5;
        v20 = 1;
        if (v16 == 1)
        {
          v19 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 != 1)
        {
          v18 = 1;
        }
      }

      else
      {
        v20 = 3;
        v19 = 3;
        v17 = 2;
        v18 = 1;
      }

      v21 = v11->i64[0];
      if (!v11->i64[0])
      {
        v35 = v14 * v19;
        v34 = v18 + v20 * v14;
        v33 = v17 + v20 * v14;
        goto LABEL_28;
      }

      v22 = v11->u64[1];
      v23 = v11[2].u8[3];
      v24 = v11[3].i64[0];
      v25 = v11[3].i64[1];
      v26 = v24 + v25 * v14 * v19;
      v27 = v20 * v14;
      v28 = v24 + (v18 + v20 * v14) * v25;
      v29 = v24 + (v17 + v27) * v25;
      v30 = v29 <= v26 ? v26 : v29;
      v31 = v28 <= v30 ? v30 : v28;
      if (v22 >= v23 + v23 * v31)
      {
        break;
      }

      v32 = scn_default_log(a1, a2);
      a1 = os_log_type_enabled(v32, OS_LOG_TYPE_ERROR);
      if (a1)
      {
        *buf = 136315650;
        v67 = "C3DIndicesContentGetVertexIndicesForTrianglePrimitiveAtIndex";
        v68 = 1024;
        v69 = v31;
        v70 = 2048;
        v71 = v22 / v23;
        v56 = v32;
        v57 = "Error: %s - index (%u) out of bounds (%lu)";
        v58 = 28;
LABEL_45:
        _os_log_error_impl(&dword_21BEF7000, v56, OS_LOG_TYPE_ERROR, v57, buf, v58);
      }

LABEL_26:
      v33 = 0;
      v34 = 0;
      v35 = 0;
LABEL_28:
      a2 = v12 + (v35 * v13);
      if (v65 == 1)
      {
        a9.i64[0] = *a2;
        a9.i32[2] = *(a2 + 8);
        v36 = v12 + (v34 * v13);
        a10.n128_u64[0] = *v36;
        a10.n128_u32[2] = *(v36 + 8);
        v37 = v12 + (v33 * v13);
        a4.i64[0] = *v37;
        a4.i32[2] = *(v37 + 8);
      }

      else
      {
        *v38.i64 = C3DConvertFloatingTypeToFloat4(v60, a2, a4, *a5.i32, a6.f32[0]);
        v63 = v38;
        *v41.i64 = C3DConvertFloatingTypeToFloat4(v60, (v12 + (v34 * v13)), v38, v39, v40);
        v62 = v41;
        *a4.i64 = C3DConvertFloatingTypeToFloat4(v60, (v12 + (v33 * v13)), v41, v42, v43);
        a10 = v62;
        a9 = v63;
      }

      v44 = a10;
      v44.i32[3] = 0;
      v45 = a4;
      v45.i32[3] = 0;
      v46 = vminnmq_f32(v44, v45);
      v47 = a9;
      v47.i32[3] = 0;
      v46.i32[3] = 0;
      v48 = vminnmq_f32(v47, v46);
      v49 = vmaxnmq_f32(v44, v45);
      v49.i32[3] = 0;
      v50 = vmaxnmq_f32(v47, v49);
      v47.i64[0] = 0x3F0000003F000000;
      v47.i64[1] = 0x3F0000003F000000;
      v51 = vmulq_f32(vaddq_f32(v48, v50), v47);
      v51.i32[3] = 1.0;
      v52 = vmulq_f32(vsubq_f32(v50, v48), v47);
      v52.i32[3] = 0;
      a6 = vabdq_f32(v11[6], v51);
      a5 = vcgeq_f32(vaddq_f32(v11[7], v52), a6);
      a5.i32[3] = a5.i32[2];
      a5.i32[0] = vminvq_u32(a5);
      if ((a5.i32[0] & 0x80000000) == 0 || (v53 = v11[201].u32[0], v11[201].i32[0] = v53 + 1, v54 = &v61[3 * v53], *v54 = a9, v54[1] = a10, v54[2] = a4, v11[201].i32[0] != 64) || (v11[201].i32[0] = 0, a1 = (*(v11[8].i64[0] + 16))(), (a1 & 1) == 0))
      {
        v15 = ++v14 < v64;
        if (--v10)
        {
          continue;
        }
      }

      return v15;
    }

    switch(v23)
    {
      case 4u:
        v35 = *(v21 + 4 * v26);
        v34 = *(v21 + 4 * v28);
        v33 = *(v21 + 4 * v29);
        goto LABEL_28;
      case 2u:
        v35 = *(v21 + 2 * v26);
        v34 = *(v21 + 2 * v28);
        v33 = *(v21 + 2 * v29);
        goto LABEL_28;
      case 1u:
        v35 = *(v21 + v26);
        v34 = *(v21 + v28);
        v33 = *(v21 + v29);
        goto LABEL_28;
    }

    v55 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v55, OS_LOG_TYPE_ERROR);
    if (!a1)
    {
      goto LABEL_26;
    }

    *buf = 67109120;
    LODWORD(v67) = v23;
    v56 = v55;
    v57 = "Unreachable code: Invalid bytes per index (%d)";
    v58 = 8;
    goto LABEL_45;
  }

  return 0;
}

uint64_t C3DMeshQueryTrianglesIntersectingBox(uint64_t a1, uint64_t a2, float32x4_t a3, float32x4_t a4)
{
  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a1, 0, 0, 0);
  result = C3DMeshSourceGetCount(SourceWithSemanticAtIndex, v7);
  if (result)
  {
    result = C3DMeshGetElementsCount(a1, v9);
    if (result)
    {
      v11 = result;
      v46 = 0u;
      memset(v47, 0, 368);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      result = C3DMeshSourceGetContent(SourceWithSemanticAtIndex, v10, &v42);
      v44 = a3;
      v45 = a4;
      v48 = 0;
      *&v46 = a2;
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          ElementAtIndex = C3DMeshGetElementAtIndex(a1, i, 0);
          C3DMeshElementGetContent(ElementAtIndex, 0, &v34);
          v38 = v34;
          v39 = v35;
          v40 = v36;
          v41 = v37;
          if (v35 < 0x101)
          {
            result = __processTrianglesBatch(&v38, 0, v35, v36, v37, v14, v15, v16, v17, v18);
            if (result)
            {
              return result;
            }
          }

          else
          {
            v33 = 0;
            v34 = v38;
            v35 = v39;
            v36 = v40;
            v37 = v41;
            v32[0] = v42;
            v32[1] = v43;
            result = C3DMeshElementGetPrimitiveGroupBoundingBoxes(ElementAtIndex, &v34, v32, &v33);
            v22 = v33;
            if (v33)
            {
              v23 = 0;
              v24 = (result + 16);
              v25 = 32;
              do
              {
                v26 = v24[-1];
                v27 = vaddq_f32(v45, *v24);
                v28 = vcgeq_f32(v27, vabdq_f32(v44, v26));
                v28.i32[3] = v28.i32[2];
                v28.i32[0] = vminvq_u32(v28);
                if (v28.i32[0] < 0)
                {
                  if (v25 >= v39)
                  {
                    v29 = v39;
                  }

                  else
                  {
                    v29 = v25;
                  }

                  result = __processTrianglesBatch(&v38, v25 - 32, v29, v28, v27, v26, *v24->i64, v19, v20, v21);
                  if (result)
                  {
                    return result;
                  }

                  v22 = v33;
                }

                ++v23;
                v24 += 2;
                v25 += 32;
              }

              while (v23 < v22);
            }
          }
        }

        if (v48)
        {
          return (*(a2 + 16))(a2, v47);
        }
      }
    }
  }

  return result;
}

id _C3DMeshCFFinalize(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationMeshWillDie", a1, 0, 1u);
  ++*(a1 + 208);
  v3 = *(a1 + 96);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 96) = 0;
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 144) = 0;
  }

  v6 = *(a1 + 112);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 112) = 0;
  }

  free(*(a1 + 104));
  free(*(a1 + 152));
  free(*(a1 + 168));
  free(*(a1 + 176));
  v8 = *(a1 + 192);
  if (v8)
  {
    free(v8);
  }

  v9 = *(a1 + 184);
  if (v9)
  {
    free(v9);
  }

  return C3DEntityCFFinalize(a1, v7);
}

__CFString *_C3DMeshCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DEntityGetName(a1, v3);
  CFStringAppendFormat(Mutable, 0, @"<C3DMesh %p %@\n", a1, Name);
  if (C3DMeshGetElementsCount(a1, v5) >= 1)
  {
    v6 = 0;
    do
    {
      ElementAtIndex = C3DMeshGetElementAtIndex(a1, v6, 0);
      CFStringAppendFormat(Mutable, 0, @"  element%d: %@\n", v6++, ElementAtIndex);
    }

    while (v6 < C3DMeshGetElementsCount(a1, v8));
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 0x40000000;
  v15[2] = ___C3DMeshCFCopyDebugDescription_block_invoke;
  v15[3] = &__block_descriptor_tmp_45_1;
  v15[4] = Mutable;
  C3DMeshApplySources(a1, 0, v15);
  if (*(a1 + 112))
  {
    if (C3DMeshGetElementsCount(a1, v9) >= 1)
    {
      v10 = 0;
      do
      {
        v11 = C3DMeshGetElementAtIndex(a1, v10, 1);
        CFStringAppendFormat(Mutable, 0, @"  renderable element%d: %@\n", v10++, v11);
      }

      while (v10 < C3DMeshGetElementsCount(a1, v12));
    }

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = ___C3DMeshCFCopyDebugDescription_block_invoke_2;
    v14[3] = &__block_descriptor_tmp_55;
    v14[4] = Mutable;
    C3DMeshApplySources(a1, 1, v14);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t _C3DMeshInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v39 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityInitWithPropertyList(a1, a2);
  v16 = v14;
  if (v14)
  {
    Value = CFDictionaryGetValue(a2, @"baseSourceLocators");
    if (Value)
    {
      v18 = Value;
      *(a1 + 200) &= 0x87u;
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v20 = Count;
        for (i = 0; i != v20; ++i)
        {
          valuePtr = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v18, i);
          v23 = CFNumberGetValue(ValueAtIndex, kCFNumberCFIndexType, &valuePtr);
          if (!v23 && (_C3DMeshInitWithPropertyList_done & 1) == 0)
          {
            _C3DMeshInitWithPropertyList_done = 1;
            v25 = scn_default_log(v23, v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v38 = a2;
              _os_log_error_impl(&dword_21BEF7000, v25, OS_LOG_TYPE_ERROR, "Error: Could not deserialize a source locator in %@", buf, 0xCu);
            }
          }

          *(a1 + 200) |= 8 * ((1 << SBYTE1(valuePtr)) & 0xF);
        }
      }
    }

    else
    {
      v35 = CFDictionaryGetValue(a2, @"verticesMask");
      if (v35)
      {
        *buf = 0;
        CFNumberGetValue(v35, kCFNumberIntType, buf);
        *(a1 + 200) = (8 * (buf[0] & 0xF)) | *(a1 + 200) & 0x87;
      }
    }
  }

  else
  {
    v26 = scn_default_log(v14, v15);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      _C3DMeshInitWithPropertyList_cold_2(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }

  return v16;
}

__CFDictionary *_C3DMeshCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v77[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DCreateTangentsWithGeometry_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = C3DEntityCopyPropertyList(a1, a2, a3);
  v17 = v16;
  if (v16)
  {
    v65 = a3;
    v66 = a4;
    v67 = v16;
    v18 = MEMORY[0x277CBF138];
    v19 = MEMORY[0x277CBF150];
    theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    Mutable = CFDictionaryCreateMutable(0, 0, v18, v19);
    v20 = CFDictionaryCreateMutable(0, 0, v18, v19);
    Count = CFArrayGetCount(*(a1 + 64));
    if (Count >= 1)
    {
      v22 = 0;
      v23 = MEMORY[0x277CBF128];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), v22);
        EntryID = C3DLibraryGetEntryID(a2, ValueAtIndex);
        v27 = EntryID;
        if (EntryID >> 31)
        {
          v28 = scn_default_log(EntryID, v26);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            _C3DMeshCopyPropertyList_cold_2(v74, &v75, v28);
          }
        }

        valuePtr = v27;
        v29 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
        CFDictionaryAddValue(v20, ValueAtIndex, v29);
        if (C3DGenericSourceIsPrimary(ValueAtIndex, v30))
        {
          v32 = CFArrayCreateMutable(0, 0, v23);
          v33 = CFArrayCreateMutable(0, 0, v23);
          CFDictionaryAddValue(theDict, ValueAtIndex, v32);
          CFDictionaryAddValue(Mutable, ValueAtIndex, v33);
          CFRelease(v32);
          CFRelease(v33);
          URL = ValueAtIndex;
        }

        else
        {
          Accessor = C3DGenericSourceGetAccessor(ValueAtIndex, v31);
          URL = C3DSceneSourceGetURL(Accessor);
        }

        IsPrimary = C3DGenericSourceIsPrimary(URL, v34);
        if (!IsPrimary)
        {
          v39 = scn_default_log(IsPrimary, v38);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
          {
            _C3DMeshCopyPropertyList_cold_3(v72, &v73, v39);
          }
        }

        Value = CFDictionaryGetValue(theDict, URL);
        v41 = CFDictionaryGetValue(Mutable, URL);
        v43 = C3DGenericSourceGetAccessor(ValueAtIndex, v42);
        CFArrayAppendValue(Value, v43);
        CFArrayAppendValue(v41, v29);
        CFRelease(v29);
        ++v22;
      }

      while (Count != v22);
    }

    v44 = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    v68 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        v46 = CFArrayGetValueAtIndex(*(a1 + 64), i);
        v47 = CFDictionaryGetValue(v20, v46);
        CFArrayAppendValue(v44, v47);
        if (C3DGenericSourceIsPrimary(v46, v48))
        {
          v49 = CFDictionaryGetValue(Mutable, v46);
          v50 = CFDictionaryGetValue(theDict, v46);
          v52 = v50;
          if (!v46)
          {
            v53 = scn_default_log(v50, v51);
            if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
            {
              _C3DMeshCopyPropertyList_cold_4(&valuePtr, v77, v53);
            }
          }

          SerializedDataWithAccessors = C3DGenericSourceCreateSerializedDataWithAccessors(v46, v52);
          v55 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionaryAddValue(v55, @"data", SerializedDataWithAccessors);
          CFDictionaryAddValue(v55, @"subIDs", v49);
          v56 = CFStringCreateWithFormat(0, 0, @"%@", v47);
          CFDictionaryAddValue(v68, v56, v55);
          CFRelease(v56);
          CFRelease(SerializedDataWithAccessors);
          CFRelease(v55);
        }
      }
    }

    v17 = v67;
    CFDictionarySetValue(v67, @"sources", v44);
    CFDictionarySetValue(v67, @"primarySourcesInfo", v68);
    CFRelease(v44);
    CFRelease(v68);
    CFRelease(Mutable);
    CFRelease(theDict);
    CFRelease(v20);
    v57 = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v58 = CFArrayGetCount(*(a1 + 96));
    if (v58 >= 1)
    {
      v59 = v58;
      for (j = 0; j != v59; ++j)
      {
        v61 = CFArrayGetValueAtIndex(*(a1 + 96), j);
        v62 = C3DCopyPropertyList(v61, 0, v65, v66);
        CFArrayAppendValue(v57, v62);
        CFRelease(v62);
      }
    }

    CFDictionarySetValue(v67, @"geometryElements", v57);
    CFRelease(v57);
    v71 = (*(a1 + 200) >> 3) & 0xF;
    v63 = CFNumberCreate(0, kCFNumberIntType, &v71);
    CFDictionarySetValue(v67, @"verticesMask", v63);
    CFRelease(v63);
  }

  return v17;
}

CFIndex _C3DMeshFillLibraryForSerialization(uint64_t a1, uint64_t a2)
{
  result = CFArrayGetCount(*(a1 + 64));
  if (result >= 1)
  {
    v5 = result;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), i);
      result = C3DLibraryAddEntry(a2, ValueAtIndex);
    }
  }

  return result;
}

__CFArray *_C3DMeshCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v5, @"name", @"sources");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v23 = 0;
  valuePtr = 5;
  v22 = a1 + 184;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v9, @"name", @"boundingSphere");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 0;
  valuePtr = 5;
  v22 = a1 + 192;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v16 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v13, @"name", @"boundingBox");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v23 = 2;
  valuePtr = 5;
  v22 = a1 + 96;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v23);
  v20 = CFNumberCreate(0, kCFNumberLongType, &v22);
  CFDictionarySetValue(v17, @"name", @"meshElements");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  return Mutable;
}

uint64_t _C3DMeshSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1, a2);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

CFIndex _C3DMeshEnumerateSubEntities(CFArrayRef *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1[8]);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1[8], i);
      (*(a2 + 16))(a2, ValueAtIndex);
    }
  }

  v8 = CFArrayGetCount(a1[12]);
  if (v8 >= 1)
  {
    v9 = v8;
    for (j = 0; j != v9; ++j)
    {
      v11 = CFArrayGetValueAtIndex(a1[12], j);
      (*(a2 + 16))(a2, v11);
    }
  }

  v12 = a1[14];
  if (v12)
  {
    v13 = CFArrayGetCount(v12);
    if (v13 >= 1)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = CFArrayGetValueAtIndex(a1[14], k);
        (*(a2 + 16))(a2, v16);
      }
    }
  }

  result = a1[18];
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v18 = result;
      for (m = 0; m != v18; ++m)
      {
        v20 = CFArrayGetValueAtIndex(a1[18], m);
        result = (*(a2 + 16))(a2, v20);
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_4_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v5, OS_LOG_TYPE_ERROR, a4, v4, 0xCu);
}

BOOL OUTLINED_FUNCTION_6_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void C3D::MBNeighborMaxPass::MBNeighborMaxPass(C3D::MBNeighborMaxPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, char a4)
{
  C3D::ComputePass::ComputePass(this, a2, a3);
  *v5 = &unk_282DC5430;
  *(v5 + 120) = a4;
}

float C3D::MBNeighborMaxPass::setup(C3D::MBNeighborMaxPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "MB-TileMax";
  v2 = (*(*this + 88))(this);
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "MB-TileMax";
  *(v3 + 16) = (*(v2 + 8) * 0.015625);
  result = *(v2 + 12) * 0.015625;
  *(v3 + 18) = result;
  *(v3 + 28) = 115;
  return result;
}

void *C3D::MBNeighborMaxPass::compile(C3D::MBNeighborMaxPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = *(*(this + 3) + 128);
  v5 = (*(*this + 64))(this);
  result = C3D::RenderGraphResourceManager::get(v4, v5);
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::MBNeighborMaxPass::execute(uint64_t a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v3->_textures[0] != v4)
  {
    v3->_textures[0] = v4;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v5 = C3D::Pass::outputTextureAtIndex(a1, 0);
  if (v3->_textures[1] != v5)
  {
    v3->_textures[1] = v5;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v6 = *(a1 + 120);
  v8 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v9 = 16;
  if (v6)
  {
    v9 = 24;
  }

  v10 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 112) + v9, v7);
  v11 = [(SCNMTLOpenSubdivComputeEvaluator *)v10 computeEvaluator];

  return SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v8, v11);
}

void C3D::MBNeighborMaxPassResource::~MBNeighborMaxPassResource(C3D::MBNeighborMaxPassResource *this)
{
  *this = &unk_282DC54A0;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC54A0;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

void C3D::TemporalAAPass::setup(C3D::TemporalAAPass *this)
{
  C3D::Pass::setInputCount(this, 3u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(&v4, this);
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 31) = 0;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1) + 8) = "VELOCITY";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2) + 64) = 2;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2) + 8) = "DEPTH";
  v3 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v3 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(&v4, this);
  *(v3 + 16) = v4;
  *(v3 + 32) = v5;
  if (*(v3 + 28) == 81)
  {
    *(v3 + 28) = 80;
  }

  *(this + 121) = 0;
}

void *C3D::TemporalAAPass::compile(C3D::TemporalAAPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(this + 120) = ([(SCNMTLOpenSubdivComputeEvaluator *)RenderContext computeEvaluator]& 1) == 0;
  v5 = *(v4 + 16) | (*(v4 + 28) << 32);
  v6 = 0xC6A4A7935BD1E995 * (C3D::Pass::hashName(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) >> 47));
  *(this + 14) = result;
  if (!result)
  {
    *(this + 121) = 1;
    operator new();
  }

  return result;
}

void *C3D::TemporalAAPass::execute(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x277D85DE8];
  result = C3DEngineContextGetPointOfView(*(a1 + 16), a2);
  if (result)
  {
    result = C3DNodeGetCamera(result, v5);
    if (result)
    {
      v6 = result;
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(*(a1 + 16), *(a2 + 8));
      v7 = *a2;
      v8 = C3D::Pass::inputTextureAtIndex(a1, 0);
      if (v7->_textures[0] != v8)
      {
        v7->_textures[0] = v8;
        v7->_texturesToBind[0] |= 1uLL;
      }

      v9 = C3D::Pass::inputTextureAtIndex(a1, 1);
      if (v7->_textures[1] != v9)
      {
        v7->_textures[1] = v9;
        v7->_texturesToBind[0] |= 2uLL;
      }

      v10 = C3D::Pass::inputTextureAtIndex(a1, 2);
      if (v7->_textures[2] != v10)
      {
        v7->_textures[2] = v10;
        v7->_texturesToBind[0] |= 4uLL;
      }

      v12 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 112) + 8 * (*(a1 + 120) ^ 1) + 16, v11);
      if (v7->_textures[3] != v12)
      {
        v7->_textures[3] = v12;
        v7->_texturesToBind[0] |= 8uLL;
      }

      v14 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 112) + 8 * *(a1 + 120) + 16, v13);
      if (v7->_textures[4] != v14)
      {
        v7->_textures[4] = v14;
        v7->_texturesToBind[0] |= 0x10uLL;
      }

      v15 = C3D::Pass::outputTextureAtIndex(a1, 0);
      if (v7->_textures[5] != v15)
      {
        v7->_textures[5] = v15;
        v7->_texturesToBind[0] |= 0x20uLL;
      }

      v16 = C3D::PassDescriptor::outputAtIndex((a1 + 32), 0);
      TAAJitter = C3DEngineContextGetTAAJitter(*(a1 + 16), 0);
      v18 = *(v16 + 16);
      v19.f32[0] = v18;
      v20 = *(v16 + 18);
      v19.f32[1] = v20;
      *&v21 = 1.0 / v18;
      v22 = 1.0 / v20;
      *(&v21 + 1) = v22;
      v39[0] = vmul_f32(vmul_f32(TAAJitter, COERCE_FLOAT32X2_T(-0.0000305175853)), v19);
      v39[1] = v21;
      MotionBlurIntensity = C3DCameraGetMotionBlurIntensity(v6, v23);
      if (MotionBlurIntensity <= 0.0)
      {
        v25 = 1.0;
      }

      else
      {
        v25 = 1.0 / MotionBlurIntensity;
      }

      v41 = v25;
      v40 = *(a1 + 121);
      SCNMTLComputeCommandEncoder::setBytes(v7, v39, 0x20uLL, 0);
      v27 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 112) + 40, v26);
      v28 = [(SCNMTLOpenSubdivComputeEvaluator *)v27 computeEvaluator];
      __asm { FMOV            V1.2S, #16.0 }

      v34 = vadd_f32(*&vextq_s8(ViewportAtIndex, ViewportAtIndex, 8uLL), _D1);
      __asm { FMOV            V1.2S, #-1.0 }

      *&v38.width = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(vadd_f32(v34, _D1), vdup_n_s32(0x3D800000u))));
      v38.depth = 1;
      *&v37.width = vdupq_n_s64(0x10uLL);
      v37.depth = 1;
      return SCNMTLComputeCommandEncoder::dispatch(v7, v28, &v38, &v37);
    }
  }

  return result;
}

void C3D::TemporalAAPassResource::~TemporalAAPassResource(C3D::TemporalAAPassResource *this)
{
  *this = &unk_282DC5530;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  for (i = 24; i != 8; i -= 8)
  {
    v5 = *(this + i);
    if (v5)
    {
    }
  }
}

{
  *this = &unk_282DC5530;
  v2 = *(this + 5);
  if (v2)
  {
  }

  v3 = *(this + 4);
  if (v3)
  {
  }

  v4 = 24;
  while (1)
  {
    v5 = *(this + v4);
    if (v5)
    {
    }

    v4 -= 8;
    if (v4 == 8)
    {

      JUMPOUT(0x21CF07610);
    }
  }
}

uint64_t C3D::flattenedNodesForSelectedNodes(_BOOL8 this, const __CFArray *a2, __C3DEngineContext *a3, void *a4)
{
  v6 = this;
  if (!this && (v7 = scn_default_log(0, a2), this = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT)))
  {
    C3D::flattenedNodesForSelectedNodes(v7, a2, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log(this, a2);
  this = os_log_type_enabled(v14, OS_LOG_TYPE_FAULT);
  if (this)
  {
    C3DEngineContextGetStats_cold_1(v14, a2, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  if (!a3)
  {
    v21 = scn_default_log(this, a2);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3D::flattenedNodesForSelectedNodes(v21, a2, v22, v23, v24, v25, v26, v27);
    }
  }

  Scene = C3DEngineContextGetScene(a2, a2);
  Aligned = C3DScratchAllocatorAllocateAligned(a3, 24, 8, 0);
  C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(Aligned, a3);
  Count = CFArrayGetCount(v6);
  if (*(Aligned + 12) < Count)
  {
    v32 = *(Aligned + 16);
    v33 = C3DScratchAllocatorAllocateAligned(*Aligned, 8 * (Count & 0x1FFFFFFF), 8, 0);
    memcpy(v33, v32, 8 * *(Aligned + 8));
    *(Aligned + 16) = v33;
    *(Aligned + 12) = Count;
  }

  StackAllocator = C3DEngineContextGetStackAllocator(a2, v30);
  C3DStackAllocatorPushFrame(StackAllocator, v35);
  v36 = C3DStackAllocatorAllocate(StackAllocator, 0x28uLL);
  *v36 = StackAllocator;
  C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_allocate(v36, 32);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
      if (C3DGetScene(ValueAtIndex, v40) == Scene)
      {
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = ___ZN3C3D30flattenedNodesForSelectedNodesEPK9__CFArrayP18__C3DEngineContextPv_block_invoke;
        v45[3] = &__block_descriptor_40_e20_q16__0____C3DNode__8l;
        v45[4] = v36;
        C3DNodeApplyHierarchy(ValueAtIndex, v45);
      }
    }
  }

  v41 = v36[9];
  if (v41 != -15)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      if (*(*(v36 + 3) + 2 * v43))
      {
        C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::push_back<C3D::Pass *&>(Aligned, (*(v36 + 2) + v42));
        v41 = v36[9];
      }

      ++v43;
      v42 += 8;
    }

    while (v43 < (v41 + 15));
  }

  C3DStackAllocatorPopFrame(StackAllocator, v37);
  return Aligned;
}

BOOL ___ZN3C3D30flattenedNodesForSelectedNodesEPK9__CFArrayP18__C3DEngineContextPv_block_invoke(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (a2)
  {
    if (C3DNodeIsHiddenOrTransparent(a2, a2))
    {
      return 1;
    }

    v4 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2) ^ ((0xC6A4A7935BD1E995 * a2) >> 47))) ^ 0x35253C9ADE8F4CA8);
    v5 = *(a1 + 32);
    v7 = a2;
    if (!C3D::Hash<__C3DNode *,C3D::StackAllocator>::insert(v5, (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47), &v7))
    {
      return 1;
    }
  }

  return result;
}

uint64_t C3D::Hash<__C3DNode *,C3D::StackAllocator>::insert(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + 8 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    C3D::Hash<__C3DNode *,C3D::StackAllocator>::_grow(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + 8 * v10) = *a3;
  return result;
}

void C3D::Hash<__C3DNode *,C3D::StackAllocator>::_grow(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_allocate(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        C3D::Hash<__C3DNode *,C3D::StackAllocator>::insert(a1, *v3, v2);
      }

      ++v3;
      ++v2;
      --v6;
    }

    while (v6);
  }
}

uint64_t _C3DMaterialFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Value = CFDictionaryGetValue(theDict, @"effectID");
  if (Value)
  {
    valuePtr = 0;
    CFNumberGetValue(Value, kCFNumberLongType, &valuePtr);
    v18 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%ld", valuePtr);
    Data = C3DSceneSourceGetData(a2);
    v20 = CFDictionaryGetValue(Data, @"effect");
    theDict = CFDictionaryGetValue(v20, v18);
    CFRelease(v18);
  }

  CommonProfile = C3DMaterialGetCommonProfile(a1, v17);
  v22 = CFDictionaryGetValue(theDict, @"commonProfile");
  return C3DFinalizeDeserialization(CommonProfile, a2, v22, a4);
}

uint64_t C3DMaterialGetCommonProfile(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

__CFDictionary *C3DMaterialCopyEffectPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CommonProfile = C3DMaterialGetCommonProfile(a1, v17);
  if (CommonProfile)
  {
    v19 = C3DCopyPropertyList(CommonProfile, a2, a3, a4);
    if (v19)
    {
      v20 = v19;
      CFDictionarySetValue(Mutable, @"commonProfile", v19);
      CFRelease(v20);
    }
  }

  return Mutable;
}

uint64_t C3DMaterialGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DMaterialGetTypeID_onceToken != -1)
  {
    C3DMaterialGetTypeID_cold_1();
  }

  return C3DMaterialGetTypeID_typeID;
}

double __C3DMaterialGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DMaterialGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID(v0, v1);
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"doubleSided", 100, 3, 0);
  C3DModelPathResolverRegisterProperty(@"cullMode", 90, 4, 0);
  C3DModelPathResolverRegisterClassEnd();
  result = *&kC3DC3DMaterialContextClassSerializable;
  unk_281740E58 = kC3DC3DMaterialContextClassSerializable;
  unk_281740E68 = *&off_282DC5570;
  qword_281740E10 = _C3DMaterialCopyInstanceVariables;
  qword_281740E50 = _C3DMaterialSearchByID;
  return result;
}

uint64_t C3DMaterialCreate(uint64_t a1, uint64_t a2)
{
  if (C3DMaterialGetTypeID_onceToken != -1)
  {
    C3DMaterialGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DMaterialGetTypeID_typeID, 88);
  *(Instance + 64) = C3DEffectCommonProfileCreate(Instance);
  *(Instance + 100) = 0;
  *(Instance + 92) = 3840;
  *(Instance + 88) = 257;
  __RasterizerStatesDidChange(Instance);
  return Instance;
}

uint64_t __RasterizerStatesDidChange(uint64_t a1)
{
  C3DRasterizerStatesRelease(*(a1 + 80));
  memset(v5, 0, 28);
  C3DRasterizerStatesDescGetDefault(v5);
  if (*(a1 + 100))
  {
    v2 = 2;
  }

  else
  {
    v2 = *(a1 + 90);
  }

  *&v5[0] = __PAIR64__(*(a1 + 91), v2);
  BYTE8(v5[0]) = *(a1 + 89) != 0;
  BYTE9(v5[0]) = *(a1 + 88) != 0;
  v4[0] = v5[0];
  *(v4 + 12) = *(v5 + 12);
  result = C3DRasterizerStatesCreate(v4);
  *(a1 + 80) = result;
  return result;
}

uint64_t C3DMaterialCreateCopy(_BOOL8 a1, uint64_t a2)
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

  v10 = C3DMaterialCreate(a1, a2);
  C3DMaterialCopy(v2, v10);
  return v10;
}

uint64_t C3DMaterialCopy(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  *(a2 + 100) = *(v3 + 100);
  *(a2 + 88) = *(v3 + 88);
  *(a2 + 93) = *(v3 + 93);
  v19 = *(v3 + 64);
  v20 = *(a2 + 64);
  if (v19)
  {
    C3DEffectCommonProfileCopy(v19, v20);
  }

  else if (v20)
  {
    CFRelease(*(a2 + 64));
    *(a2 + 64) = 0;
  }

  C3DEntityCopyTo(v3, a2);
  Name = C3DMaterialGetName(v3, v21);
  C3DMaterialSetName(a2, Name);
  return __RasterizerStatesDidChange(a2);
}

CFStringRef C3DMaterialSetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log(0, theString);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DEntitySetName(a1, theString);
}

uint64_t C3DMaterialGetName(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetName(a1, a2);
}

uint64_t C3DMaterialCopyForFlatShading(uint64_t a1, uint64_t a2)
{
  v9 = xmmword_21C2814B0;
  v10 = xmmword_21C27F610;
  v3 = C3DMaterialCreate(a1, a2);
  C3DEffectCommonProfileCopy(*(a1 + 64), *(v3 + 64));
  v4 = 0;
  v5 = *(v3 + 64);
  do
  {
    C3DEffectCommonProfileSetImage(v5, v4, 0);
    C3DEffectCommonProfileSetColor(*(v3 + 64), v4++, &v10);
    v5 = *(v3 + 64);
  }

  while (v4 != 15);
  C3DEffectCommonProfileSetLightingModel(v5, 0);
  C3DEffectCommonProfileSetImage(*(v3 + 64), 2, 0);
  C3DEffectCommonProfileSetColor(*(v3 + 64), 2, &v9);
  C3DEffectCommonProfileSetImage(*(v3 + 64), 6, 0);
  C3DEffectCommonProfileSetColor(*(v3 + 64), 6, &v9);
  C3DMaterialSetFillMode(v3, 1);
  C3DMaterialSetBlendMode(v3, 5);
  C3DMaterialSetColorBufferWriteMask(v3, 15);
  IsDoubleSided = C3DMaterialIsDoubleSided(a1, v6);
  C3DMaterialSetDoubleSided(v3, IsDoubleSided);
  return v3;
}

void C3DMaterialSetFillMode(_BOOL8 result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (result)
    {
      C3DGeometryAppendMaterial_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 >= 2)
  {
    v11 = scn_default_log(result, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DMaterialSetFillMode_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  if (*(v3 + 91) != v2)
  {
    *(v3 + 91) = v2;
    __RasterizerStatesDidChange(v3);
  }
}

void C3DMaterialSetBlendMode(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 92) != v2)
  {
    *(result + 92) = v2;
    v11 = C3DGetScene(result, a2);
    C3DScenePostPipelineEvent(v11, 3, result, 0);
    __RasterizerStatesDidChange(result);
  }
}

void C3DMaterialSetColorBufferWriteMask(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 93) != v2)
  {
    *(result + 93) = v2;
    v11 = C3DGetScene(result, a2);
    C3DScenePostPipelineEvent(v11, 3, result, 0);
    __RasterizerStatesDidChange(result);
  }
}

void C3DMaterialSetDoubleSided(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 100) != v2)
  {
    *(result + 100) = v2;
    v11 = C3DGetScene(result, a2);
    C3DScenePostPipelineEvent(v11, 3, result, 0);
    __RasterizerStatesDidChange(result);
  }
}

uint64_t C3DMaterialIsDoubleSided(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 100);
}

uint64_t C3DMaterialGetCommonProfileIfNoTechnique(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 72))
  {
    return 0;
  }

  else
  {
    return *(a1 + 64);
  }
}

void C3DMaterialSetCullMode(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 90) != v2)
  {
    *(result + 90) = v2;
    __RasterizerStatesDidChange(result);
  }
}

uint64_t C3DMaterialGetCullMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 90);
}

uint64_t C3DMaterialGetFillMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 91);
}

uint64_t C3DMaterialGetBlendMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 92);
}

void C3DMaterialSetEnableWriteInDepthBuffer(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 88) != v2)
  {
    *(result + 88) = v2;
    v11 = C3DGetScene(result, a2);
    C3DScenePostPipelineEvent(v11, 3, result, 0);
    __RasterizerStatesDidChange(result);
  }
}

BOOL C3DMaterialGetEnableWriteInDepthBuffer(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88) != 0;
}

uint64_t C3DMaterialGetColorBufferWriteMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 93);
}

void C3DMaterialSetEnableReadFromDepthBuffer(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 89) != v2)
  {
    *(result + 89) = v2;
    v11 = C3DGetScene(result, a2);
    C3DScenePostPipelineEvent(v11, 3, result, 0);
    __RasterizerStatesDidChange(result);
  }
}

BOOL C3DMaterialGetEnableReadsFromDepthBuffer(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 89) != 0;
}

uint64_t C3DMaterialIsOpaque(uint64_t a1, uint64_t a2)
{
  Technique = C3DMaterialGetTechnique(a1, a2);
  if (Technique)
  {

    return C3DFXTechniqueIsOpaque(Technique, v4);
  }

  else if (*(a1 + 92) == 5)
  {
    return 1;
  }

  else if (*(a1 + 92))
  {
    return 0;
  }

  else
  {
    CommonProfile = C3DMaterialGetCommonProfile(a1, v4);

    return C3DEffectCommonProfileIsOpaque(CommonProfile, v7);
  }
}

uint64_t C3DMaterialGetTechnique(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

uint64_t C3DMaterialGetBlendStatesUseConstantAlpha(uint64_t a1, char a2)
{
  v3 = *(a1 + 92);
  result = *(a1 + 92) == 0;
  if (!v3 && (a2 & 1) == 0)
  {
    v5 = 1065353216;
    return C3DEffectCommonProfileHasConstantAlpha(*(a1 + 64), &v5);
  }

  return result;
}

uint64_t C3DMaterialGetBlendStates(uint64_t BlendStates_cold_3, uint64_t a2, int a3, int a4, float *a5, float a6)
{
  v6 = *(BlendStates_cold_3 + 92);
  if (v6 <= 2)
  {
    if (*(BlendStates_cold_3 + 92))
    {
      if (v6 == 1)
      {

        return C3DBlendStatesDefaultAdditive(BlendStates_cold_3, a2);
      }

      if (v6 == 2)
      {

        return C3DBlendStatesDefaultSubtract(BlendStates_cold_3, a2);
      }

LABEL_28:
      v31 = scn_default_log(BlendStates_cold_3, a2);
      BlendStates_cold_3 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
      if (BlendStates_cold_3)
      {
        C3DMaterialGetBlendStates_cold_3(v31);
      }

      return C3DBlendStatesDefaultOver(BlendStates_cold_3, a2);
    }

    v11 = a2;
    v12 = BlendStates_cold_3;
    if (!*(BlendStates_cold_3 + 64) && (v13 = scn_default_log(BlendStates_cold_3, a2), BlendStates_cold_3 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT), BlendStates_cold_3))
    {
      C3DMaterialGetBlendStates_cold_1(v13, a2, v14, v15, v16, v17, v18, v19);
      if (a5)
      {
        goto LABEL_24;
      }
    }

    else if (a5)
    {
      goto LABEL_24;
    }

    v20 = scn_default_log(BlendStates_cold_3, a2);
    BlendStates_cold_3 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);
    if (BlendStates_cold_3)
    {
      C3DMaterialGetBlendStates_cold_2(v20, a2, v21, v22, v23, v24, v25, v26);
    }

LABEL_24:
    if (v11)
    {
      if (a6 >= 1.0)
      {
        return C3DBlendStatesDefaultReplace(BlendStates_cold_3, a2);
      }

      v27 = a5;
      v28 = a6;
    }

    else
    {
      v43 = 1.0;
      if (!a3)
      {
        return C3DBlendStatesDefaultOver(BlendStates_cold_3, a2);
      }

      BlendStates_cold_3 = C3DEffectCommonProfileHasConstantAlpha(*(v12 + 64), &v43);
      if (!BlendStates_cold_3)
      {
        return C3DBlendStatesDefaultOver(BlendStates_cold_3, a2);
      }

      if (C3DEffectCommonProfileGetTransparencyMode(*(v12 + 64), a2) == 1)
      {
        FloatProperty = C3DEffectCommonProfileGetFloatProperty(*(v12 + 64), 18);
        Color = C3DEffectCommonProfileGetColor(*(v12 + 64), 5);
        v34 = Color[1];
        v35 = Color[2];
        v36 = v34 * 0.71516 + *Color * 0.212671 + v35 * 0.072169;
        v37 = (1.0 - (FloatProperty * *Color)) * a6;
        v38 = (1.0 - (FloatProperty * v34)) * a6;
        v39 = (1.0 - (FloatProperty * v35)) * a6;
        v40 = (1.0 - (FloatProperty * v36)) * a6;
        v41 = C3DColor4Make(a5, v37, v38, v39, v40);
        return C3DBlendStatesDefaultConstantColor(v41, v42);
      }

      v28 = v43 * a6;
      v27 = a5;
    }

    v29 = C3DColor4Make(v27, 0.0, 0.0, 0.0, v28);
    return C3DBlendStatesDefaultConstantAlpha(v29, v30);
  }

  if (*(BlendStates_cold_3 + 92) > 4u)
  {
    if (v6 != 5)
    {
      if (v6 == 6)
      {

        return C3DBlendStatesDefaultMax(BlendStates_cold_3, a2);
      }

      goto LABEL_28;
    }

    return C3DBlendStatesDefaultReplace(BlendStates_cold_3, a2);
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {

      return C3DBlendStatesDefaultScreen(BlendStates_cold_3, a2);
    }

    goto LABEL_28;
  }

  if (a4)
  {

    return C3DBlendStatesDefaultMultiplicativeSeparate(BlendStates_cold_3, a2);
  }

  else
  {

    return C3DBlendStatesDefaultMultiplicative(BlendStates_cold_3, a2);
  }
}

void _C3DMaterialShadingDidUpdate(void *a1, uint64_t a2)
{
  v3 = C3DGetScene(a1, a2);
  C3DScenePostPipelineEvent(v3, 3, a1, 0);

  C3DMaterialTouchValueStorageModificationCount(a1, v4);
}

void C3DMaterialTouchValueStorageModificationCount(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(result + 96);
}

CFTypeRef C3DMaterialSetTechnique(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 72);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 72) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 72) = result;
  }

  return result;
}

CFTypeRef C3DMaterialSetupSinglePassTechniqueWithProgram(uint64_t a1, const void *a2)
{
  Technique = C3DMaterialGetTechnique(a1, a2);
  if (!Technique)
  {
    Technique = C3DFXTechniqueCreateWithCapacity(1uLL, v4);
    C3DMaterialSetTechnique(a1, Technique);
    CFRelease(Technique);
  }

  if (C3DFXTechniqueGetPassCount(Technique, v4) < 1)
  {
    PassAtIndex = C3DFXPassCreate();
    C3DFXTechniqueAppendPass(Technique, PassAtIndex);
    CFRelease(PassAtIndex);
  }

  else
  {
    PassAtIndex = C3DFXTechniqueGetPassAtIndex(Technique, 0);
  }

  C3DFXPassSetDrawInstruction(PassAtIndex, 2);

  return C3DFXPassSetProgram(PassAtIndex, a2);
}

uint64_t C3DMaterialGetValueStorageModificationCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryAppendMaterial_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

id _C3DMaterialCFFinalize(uint64_t a1, uint64_t a2)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance(a1, a2);
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationMaterialWillDie", a1, 0, 1u);
  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 64) = 0;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 72) = 0;
  }

  C3DRasterizerStatesRelease(*(a1 + 80));

  return C3DEntityCFFinalize(a1, v6);
}

__CFString *_C3DMaterialCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DEntityGetName(a1, v3);
  CFStringAppendFormat(Mutable, 0, @"<C3DMaterial %p : %@, ", a1, Name);
  CommonProfileIfNoTechnique = C3DMaterialGetCommonProfileIfNoTechnique(a1, v5);
  if (CommonProfileIfNoTechnique)
  {
    CFStringAppendFormat(Mutable, 0, @"common profile %@", CommonProfileIfNoTechnique);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"custom %@", *(a1 + 72));
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

uint64_t _C3DMaterialInitWithPropertyList(_BOOL8 a1, const __CFDictionary *a2, const __CFDictionary *a3, uint64_t a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    _C3DGeometryFinalizeDeserialization_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  v23 = C3DEntityInitWithPropertyList(v7, a2);
  v25 = v23;
  if (v23)
  {
    Value = CFDictionaryGetValue(a2, @"name");
    if (Value)
    {
      C3DMaterialSetName(v7, Value);
    }

    v27 = CFDictionaryGetValue(a2, @"effectID");
    v28 = a2;
    if (v27)
    {
      *valuePtr = 0;
      CFNumberGetValue(v27, kCFNumberLongType, valuePtr);
      v29 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%ld", *valuePtr);
      v30 = CFDictionaryGetValue(a3, @"__library__");
      Data = C3DSceneSourceGetData(v30);
      v32 = CFDictionaryGetValue(Data, @"effect");
      v28 = CFDictionaryGetValue(v32, v29);
      CFRelease(v29);
    }

    v33 = CFDictionaryGetValue(v28, @"commonProfile");
    if (v33)
    {
      v35 = v33;
      CommonProfile = C3DMaterialGetCommonProfile(v7, v34);
      v37 = C3DInitWithPropertyList(CommonProfile, v35, a3, a4);
      if ((v37 & 1) == 0)
      {
        v39 = scn_default_log(v37, v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *valuePtr = 0;
          _os_log_impl(&dword_21BEF7000, v39, OS_LOG_TYPE_DEFAULT, "Warning: Could not deserialize an effect", valuePtr, 2u);
        }
      }
    }

    v40 = CFDictionaryGetValue(a2, @"enableWriteInDepthBuffer");
    if (v40)
    {
      v41 = v40;
      v42 = CFGetTypeID(v40);
      if (v42 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v41, kCFNumberIntType, valuePtr);
        v7[88] = valuePtr[0];
      }
    }

    v43 = CFDictionaryGetValue(a2, @"enableReadsFromDepthBuffer");
    if (v43)
    {
      v44 = v43;
      v45 = CFGetTypeID(v43);
      if (v45 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v44, kCFNumberIntType, valuePtr);
        v7[89] = valuePtr[0];
      }
    }

    v46 = CFDictionaryGetValue(a2, @"doubleSided");
    if (v46)
    {
      v47 = v46;
      v48 = CFGetTypeID(v46);
      if (v48 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v47, kCFNumberIntType, valuePtr);
        v7[100] = *valuePtr != 0;
      }
    }

    v49 = CFDictionaryGetValue(a2, @"cullMode");
    if (v49)
    {
      v50 = v49;
      v51 = CFGetTypeID(v49);
      if (v51 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v50, kCFNumberIntType, valuePtr);
        v7[90] = valuePtr[0];
      }
    }

    v52 = CFDictionaryGetValue(a2, @"fillMode");
    if (v52)
    {
      v53 = v52;
      v54 = CFGetTypeID(v52);
      if (v54 == CFNumberGetTypeID())
      {
        *valuePtr = 0;
        CFNumberGetValue(v53, kCFNumberIntType, valuePtr);
        v7[91] = valuePtr[0];
      }
    }

    v7[91] = C3DFillModeFromColladaFillMode[v7[91]];
  }

  else
  {
    v55 = scn_default_log(v23, v24);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      _C3DMaterialInitWithPropertyList_cold_3(v55);
    }
  }

  return v25;
}

__CFDictionary *_C3DMaterialCopyPropertyList(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = scn_default_log(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = C3DEntityCopyPropertyList(a1, a2, a3);
  valuePtr = C3DLibraryGetEntryID(a2, a1);
  v16 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
  CFDictionarySetValue(v15, @"effectID", v16);
  CFRelease(v16);
  if (C3DMaterialGetName(a1, v17))
  {
    Name = C3DMaterialGetName(a1, v18);
    CFDictionarySetValue(v15, @"name", Name);
  }

  v20 = *MEMORY[0x277CBED28];
  v21 = *MEMORY[0x277CBED10];
  if (a1[88])
  {
    v22 = *MEMORY[0x277CBED28];
  }

  else
  {
    v22 = *MEMORY[0x277CBED10];
  }

  CFDictionarySetValue(v15, @"enableWriteInDepthBuffer", v22);
  if (a1[89])
  {
    v23 = v20;
  }

  else
  {
    v23 = v21;
  }

  CFDictionarySetValue(v15, @"enableReadsFromDepthBuffer", v23);
  if (a1[100])
  {
    v24 = v20;
  }

  else
  {
    v24 = v21;
  }

  CFDictionarySetValue(v15, @"doubleSided", v24);
  v25 = CFNumberCreate(0, kCFNumberCharType, a1 + 90);
  CFDictionarySetValue(v15, @"cullMode", v25);
  CFRelease(v25);
  v28 = C3DFillModeToColladaFillMode[a1[91]];
  v26 = CFNumberCreate(0, kCFNumberCharType, &v28);
  CFDictionarySetValue(v15, @"fillMode", v26);
  CFRelease(v26);
  return v15;
}

void *_C3DMaterialFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  CommonProfile = C3DMaterialGetCommonProfile(a1, a2);
  return C3DFillLibraryForSerialization(CommonProfile, a2, a3);
}

__CFArray *_C3DMaterialCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v43 = 1;
  valuePtr = 5;
  Name = C3DMaterialGetName(a1, v6);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v43);
  v9 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v5, @"name", @"name");
  CFDictionarySetValue(v5, @"type", v7);
  CFDictionarySetValue(v5, @"address", v9);
  CFDictionarySetValue(v5, @"semantic", v8);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v8);
  CFRelease(v5);
  CFRelease(v9);
  CFRelease(v7);
  v10 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v43 = 1;
  valuePtr = 5;
  Name = C3DMaterialGetCommonProfile(a1, v11);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &v43);
  v14 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v10, @"name", @"commonProfile");
  CFDictionarySetValue(v10, @"type", v12);
  CFDictionarySetValue(v10, @"address", v14);
  CFDictionarySetValue(v10, @"semantic", v13);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v13);
  CFRelease(v10);
  CFRelease(v14);
  CFRelease(v12);
  v15 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v43 = 0;
  valuePtr = 4;
  Name = a1 + 90;
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v17 = CFNumberCreate(0, kCFNumberSInt32Type, &v43);
  v18 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v15, @"name", @"cullMode");
  CFDictionarySetValue(v15, @"type", v16);
  CFDictionarySetValue(v15, @"address", v18);
  CFDictionarySetValue(v15, @"semantic", v17);
  CFArrayAppendValue(Mutable, v15);
  CFRelease(v17);
  CFRelease(v15);
  CFRelease(v18);
  CFRelease(v16);
  v19 = MEMORY[0x277CBF150];
  v20 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v43 = 0;
  valuePtr = 4;
  Name = a1 + 91;
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &v43);
  v23 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v20, @"name", @"fillMode");
  CFDictionarySetValue(v20, @"type", v21);
  CFDictionarySetValue(v20, @"address", v23);
  CFDictionarySetValue(v20, @"semantic", v22);
  CFArrayAppendValue(Mutable, v20);
  CFRelease(v22);
  CFRelease(v20);
  CFRelease(v23);
  CFRelease(v21);
  v24 = MEMORY[0x277CBF138];
  v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v19);
  v43 = 0;
  valuePtr = 3;
  Name = a1 + 89;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v43);
  v28 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v25, @"name", @"enableReadsFromDepthBuffer");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  v29 = CFDictionaryCreateMutable(0, 4, v24, v19);
  v43 = 0;
  valuePtr = 3;
  Name = a1 + 88;
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &v43);
  v32 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v29, @"name", @"enableWriteInDepthBuffer");
  CFDictionarySetValue(v29, @"type", v30);
  CFDictionarySetValue(v29, @"address", v32);
  CFDictionarySetValue(v29, @"semantic", v31);
  CFArrayAppendValue(Mutable, v29);
  CFRelease(v31);
  CFRelease(v29);
  CFRelease(v32);
  CFRelease(v30);
  v33 = CFDictionaryCreateMutable(0, 4, v24, v19);
  v43 = 0;
  valuePtr = 3;
  Name = a1 + 100;
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &v43);
  v36 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v33, @"name", @"doubleSided");
  CFDictionarySetValue(v33, @"type", v34);
  CFDictionarySetValue(v33, @"address", v36);
  CFDictionarySetValue(v33, @"semantic", v35);
  CFArrayAppendValue(Mutable, v33);
  CFRelease(v35);
  CFRelease(v33);
  CFRelease(v36);
  CFRelease(v34);
  v37 = CFDictionaryCreateMutable(0, 4, v24, v19);
  v43 = 0;
  valuePtr = 2;
  Name = a1 + 48;
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &v43);
  v40 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v37, @"name", @"sceneRef");
  CFDictionarySetValue(v37, @"type", v38);
  CFDictionarySetValue(v37, @"address", v40);
  CFDictionarySetValue(v37, @"semantic", v39);
  CFArrayAppendValue(Mutable, v37);
  CFRelease(v39);
  CFRelease(v37);
  CFRelease(v40);
  CFRelease(v38);
  return Mutable;
}

uint64_t _C3DMaterialSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1, a2);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_21C033D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t C3DSceneRegisterEngineContext(uint64_t a1, uint64_t a2)
{
  C3DSceneLock(a1, a2);
  v5 = *(a1 + 168);
  if (v5 == 1)
  {
    v6 = *(a1 + 160);
    v7 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
    *(a1 + 160) = v7;
    *v7 = v6;
    *(*(a1 + 160) + 8) = a2;
    *(a1 + 168) = 2;
  }

  else if (*(a1 + 168))
  {
    v8 = v5 + 1;
    *(a1 + 168) = v8;
    v9 = malloc_type_realloc(*(a1 + 160), 8 * v8, 0x2004093837F09uLL);
    *(a1 + 160) = v9;
    v9[*(a1 + 168) - 1] = a2;
  }

  else
  {
    *(a1 + 168) = 1;
    *(a1 + 160) = a2;
  }

  return C3DSceneUnlock(a1, v4);
}

uint64_t C3DSceneUnregisterEngineContext(uint64_t result, uint64_t a2)
{
  if (*(result + 168))
  {
    v3 = result;
    C3DSceneLock(result, a2);
    v5 = *(v3 + 168);
    if (*(v3 + 168))
    {
      if (v5 == 1)
      {
        if (*(v3 + 160) == a2)
        {
          *(v3 + 168) = 0;
          *(v3 + 160) = 0;
        }
      }

      else
      {
        v6 = 0;
        v7 = 8;
        do
        {
          v8 = *(v3 + 160);
          if (*&v8[8 * v6] == a2)
          {
            if (v5 == 2)
            {
              v9 = *&v8[v7];
              free(v8);
              *(v3 + 160) = v9;
              LOWORD(v5) = 1;
              *(v3 + 168) = 1;
            }

            else
            {
              LOWORD(v5) = v5 - 1;
              *(v3 + 168) = v5;
              *&v8[8 * v6] = *&v8[8 * v5];
            }
          }

          ++v6;
          v7 -= 8;
        }

        while (v6 < v5);
      }
    }

    return C3DSceneUnlock(v3, v4);
  }

  return result;
}

uint64_t C3DSceneEnumerateEngineContexts(uint64_t a1, uint64_t a2)
{
  C3DSceneLock(a1, a2);
  if (*(a1 + 168))
  {
    if (*(a1 + 168) == 1)
    {
      (*(a2 + 16))(a2, *(a1 + 160));
    }

    else
    {
      v5 = 0;
      do
      {
        (*(a2 + 16))(a2, *(*(a1 + 160) + 8 * v5++));
      }

      while (v5 < *(a1 + 168));
    }
  }

  return C3DSceneUnlock(a1, v4);
}

void C3DSceneRegisterNodeConstrains(uint64_t a1, void *a2)
{
  Constraints = C3DNodeGetConstraints(a2, a2);
  ControllerManager = C3DSceneGetControllerManager(a1, v5);
  v7 = CFStringCreateWithFormat(0, 0, @"nodeConstraints-%p", a2);
  C3DConstraintManagerSetConstraintsForKey(ControllerManager, Constraints, a2, v7);

  CFRelease(v7);
}

uint64_t C3DSceneGetControllerManager(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

void *C3DSceneGetParticleManager(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 88);
  if (result)
  {
    v13 = 1;
  }

  else
  {
    v13 = v2 == 0;
  }

  if (!v13)
  {
    result = C3DParticleManagerCreate(a1);
    *(a1 + 88) = result;
  }

  return result;
}

void C3DSceneUnregisterNodeParticleSystem(uint64_t a1, uint64_t a2)
{
  ParticleManager = C3DSceneGetParticleManager(a1, 0);
  if (ParticleManager)
  {

    C3DParticleManagerUnregisterSystem(ParticleManager, a2);
  }
}

void C3DSceneRegisterNodeFilters(CFSetRef *a1, const void *a2)
{
  Filters = C3DNodeGetFilters(a2, a2);
  if (Filters && CFArrayGetCount(Filters) >= 1)
  {
    Mutable = a1[13];
    if (!Mutable)
    {
      Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
      a1[13] = Mutable;
    }

    CFSetAddValue(Mutable, a2);
  }

  else
  {
    Count = a1[13];
    if (Count)
    {
      CFSetRemoveValue(Count, a2);
      Count = CFSetGetCount(a1[13]);
      if (!Count)
      {
        CFRelease(a1[13]);
        a1[13] = 0;
      }
    }
  }

  SharedInstance = C3DNotificationCenterGetSharedInstance(Count, v5);

  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", a1, 0, 1u);
}

uint64_t C3DSceneGetRegisteredNodeFilters(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 104);
}

const __CFDictionary *C3DSceneGetRegisteredCIFilterTechniqueForNode(uint64_t a1, void *key)
{
  if (!a1)
  {
    v4 = scn_default_log(0, key);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 112);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

void C3DSceneRegisterCIFilterTechniqueForNode(uint64_t a1, void *key, void *value)
{
  if (!a1)
  {
    v6 = scn_default_log(0, key);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Mutable = *(a1 + 112);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    *(a1 + 112) = Mutable;
  }

  CFDictionarySetValue(Mutable, key, value);
}

void C3DSceneClearRegisteredCIFilterTechniques(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 112);
  if (v11)
  {
    CFDictionaryRemoveAllValues(v11);
  }
}

void *C3DSceneNodeWasAdded(_BOOL8 HitTestResultsWithSegment_cold_1, _DWORD *a2)
{
  v3 = HitTestResultsWithSegment_cold_1;
  *&v30[5] = *MEMORY[0x277D85DE8];
  if (!HitTestResultsWithSegment_cold_1 && (v4 = scn_default_log(0, a2), HitTestResultsWithSegment_cold_1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(HitTestResultsWithSegment_cold_1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryTrackNode_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  if (!v3)
  {
    goto LABEL_14;
  }

  v18 = a2[55];
  if ((v18 & 0x10000) != 0)
  {
    C3DSceneRegisterNodeConstrains(v3, a2);
    v18 = a2[55];
    if ((v18 & 0x40000) == 0)
    {
LABEL_9:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }
  }

  else if ((v18 & 0x40000) == 0)
  {
    goto LABEL_9;
  }

  ParticleManager = C3DSceneGetParticleManager(v3, 1);
  C3DParticleManagerRegisterSystem(ParticleManager, a2);
  v18 = a2[55];
  if ((v18 & 0x40) == 0)
  {
LABEL_10:
    if ((v18 & 0x100000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_27;
  }

LABEL_26:
  C3DSceneRegisterNodePhysicsBody(v3, a2);
  v18 = a2[55];
  if ((v18 & 0x100000) == 0)
  {
LABEL_11:
    if ((v18 & 0x4000) == 0)
    {
      goto LABEL_12;
    }

LABEL_28:
    C3DSceneRegisterNodeFilters(v3, a2);
    if ((a2[55] & 0x200) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_27:
  C3DSceneRegisterNodePhysicsField(v3, a2);
  v18 = a2[55];
  if ((v18 & 0x4000) != 0)
  {
    goto LABEL_28;
  }

LABEL_12:
  if ((v18 & 0x200) != 0)
  {
LABEL_13:
    C3DLightingSystemAdd(*(v3 + 128), a2);
  }

LABEL_14:
  AudioPlayers = C3DNodeGetAudioPlayers(a2, a2);
  if (AudioPlayers)
  {
    v20 = AudioPlayers;
    Count = CFArrayGetCount(AudioPlayers);
    if (Count >= 1)
    {
      v22 = Count;
      for (i = 0; i != v22; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v20, i);
        if (!ValueAtIndex)
        {
          v26 = scn_default_log(0, v24);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            C3DSceneNodeWasAdded_cold_3(v29, v30, v26);
          }
        }

        C3DAudioManagerAddVoice(ValueAtIndex);
      }
    }
  }

  result = *(v3 + 416);
  if (result)
  {
    return C3DAuthoringEnvironment2NodeAddedToScene(result, a2);
  }

  return result;
}

id *C3DSceneNodeWillBeRemovedOrHidden(uint64_t a1, void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    C3DEnginePipelineRemoveNodeFromRendering(v11, a2);
  }

  if (C3DNodeGetConstraints(a2, a2))
  {
    ControllerManager = C3DSceneGetControllerManager(a1, v12);
    v14 = CFStringCreateWithFormat(0, 0, @"nodeConstraints-%p", a2);
    C3DConstraintManagerSetConstraintsForKey(ControllerManager, 0, a2, v14);
    CFRelease(v14);
  }

  if (C3DNodeIsJoint(a2))
  {
    C3DEnginePipelineInvalidateAllSkinnersTransfromTreeHandles(*(a1 + 120));
  }

  if (C3DNodeGetHasPhysicsBody(a2, v15))
  {
    C3DSceneUnregisterNodePhysicsBody(a1, a2);
  }

  if (C3DNodeGetHasPhysicsField(a2, v16))
  {
    C3DSceneUnregisterNodePhysicsField(a1, a2);
  }

  if (C3DNodeGetParticleSystems(a2, v17))
  {
    C3DSceneUnregisterNodeParticleSystem(a1, a2);
  }

  if (*(a1 + 128) && C3DNodeHasLight(a2, v18))
  {
    C3DLightingSystemRemove(*(a1 + 128), a2);
  }

  if (C3DNodeGetFilters(a2, v18))
  {
    Count = *(a1 + 104);
    if (Count)
    {
      CFSetRemoveValue(Count, a2);
      Count = CFSetGetCount(*(a1 + 104));
      if (!Count)
      {
        CFRelease(*(a1 + 104));
        *(a1 + 104) = 0;
      }
    }

    SharedInstance = C3DNotificationCenterGetSharedInstance(Count, v19);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", a1, 0, 1u);
  }

  C3DNodeRemoveAllAudioPlayers(a2, v19);
  result = *(a1 + 416);
  if (result)
  {
    return C3DAuthoringEnvironment2NodeRemovedFromScene(result, a2);
  }

  return result;
}

uint64_t C3DSceneGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DSceneGetTypeID_onceToken != -1)
  {
    C3DSceneGetTypeID_cold_1();
  }

  return C3DSceneGetTypeID_typeID;
}

double __C3DSceneGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DSceneGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID(v0, v1);
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"fogColor", 352, 13, 0);
  C3DModelPathResolverRegisterProperty(@"fogDensityExponent", 336, 1, 0);
  C3DModelPathResolverRegisterProperty(@"fogEndDistance", 332, 1, 0);
  C3DModelPathResolverRegisterProperty(@"fogStartDistance", 328, 1, 0);
  C3DModelPathResolverRegisterProperty(@"wantsScreenSpaceReflection", 368, 3, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceReflectionSampleCount", 370, 2, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceReflectionMaximumDistance", 372, 1, 0);
  C3DModelPathResolverRegisterProperty(@"screenSpaceReflectionStride", 376, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_281740630 = kC3DC3DSceneContextClassSerializable;
  unk_281740640 = *&off_282DC55D0;
  result = *&kC3DC3DSceneContextClassSceneLink;
  unk_281740600 = kC3DC3DSceneContextClassSceneLink;
  unk_281740610 = *algn_282DC55F0;
  qword_281740620 = qword_282DC5600;
  unk_281740628 = _C3DSceneSearchByID;
  qword_2817405E8 = _C3DSceneCopyInstanceVariables;
  return result;
}

uint64_t C3DSceneCreate(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (C3DSceneGetTypeID_onceToken != -1)
  {
    C3DSceneGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSceneGetTypeID_typeID, 416);
  v3 = Instance;
  if (Instance)
  {
    *(Instance + 48) = Instance;
    *(Instance + 72) = C3DAnimationManagerCreate();
    *(v3 + 80) = C3DConstraintManagerCreate(v3);
    *(v3 + 96) = C3DModelValueStorageCreate();
    *(v3 + 128) = C3DLightingSystemCreate(v3);
    *(v3 + 136) = C3DDynamicBatchingSystemCreate();
    *(v3 + 192) = 0x3F80000042700000;
    *(v3 + 212) = 1065353216;
    if ((C3DWasLinkedBeforeMajorOSYear2017() & 1) == 0)
    {
      *(v3 + 224) = 1065353216;
    }

    *(v3 + 328) = 0;
    *(v3 + 336) = 1065353216;
    C3DColor4Make((v3 + 352), 1.0, 1.0, 1.0, 1.0);
    *(v3 + 368) = 0;
    *(v3 + 370) = 64;
    *(v3 + 372) = 0x41000000447A0000;
    *(v3 + 120) = C3DEnginePipelineCreate(v3);
    v4 = C3DTransformTreeCreate(v3);
    *(v3 + 152) = v4;
    C3DCullingSystemCreate(v4);
    *(v3 + 144) = v5;
    C3DAnimationManagerSetModelValueStorage(*(v3 + 72), *(v3 + 96));
    v7.__sig = 0;
    *v7.__opaque = 0;
    pthread_mutexattr_init(&v7);
    pthread_mutexattr_settype(&v7, 2);
    pthread_mutex_init((v3 + 232), &v7);
    pthread_mutexattr_destroy(&v7);
  }

  return v3;
}

uint64_t C3DSceneCreateCopy(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (C3DSceneGetTypeID_onceToken != -1)
  {
    C3DSceneGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DSceneGetTypeID_typeID, 416);
  if (Instance)
  {
    *(Instance + 72) = C3DAnimationManagerCreate();
    *(Instance + 80) = C3DConstraintManagerCreate(Instance);
    *(Instance + 96) = C3DModelValueStorageCreate();
    *(Instance + 128) = C3DLightingSystemCreate(Instance);
    *(Instance + 136) = C3DDynamicBatchingSystemCreate();
    *(Instance + 192) = *(a1 + 192);
    *(Instance + 208) = *(a1 + 208);
    *(Instance + 328) = *(a1 + 328);
    *(Instance + 336) = *(a1 + 336);
    *(Instance + 352) = *(a1 + 352);
    *(Instance + 368) = *(a1 + 368);
    *(Instance + 370) = *(a1 + 370);
    *(Instance + 372) = *(a1 + 372);
    *(Instance + 376) = *(a1 + 376);
    *(Instance + 120) = C3DEnginePipelineCreate(Instance);
    v4 = C3DTransformTreeCreate(a1);
    *(Instance + 152) = v4;
    C3DCullingSystemCreate(v4);
    *(Instance + 144) = v5;
    C3DAnimationManagerSetModelValueStorage(*(Instance + 72), *(Instance + 96));
    if (C3DEntityGetAttribute(a1, @"defaultLight") == *MEMORY[0x277CBED28])
    {
      C3DEntitySetAttribute(Instance, @"defaultLight", *MEMORY[0x277CBED28]);
    }

    v9.__sig = 0;
    *v9.__opaque = 0;
    pthread_mutexattr_init(&v9);
    pthread_mutexattr_settype(&v9, 2);
    pthread_mutex_init((Instance + 232), &v9);
    pthread_mutexattr_destroy(&v9);
    v6 = *(a1 + 64);
    if (v6)
    {
      Copy = C3DNodeCreateCopy(v6, 1);
      C3DSceneSetRootNode(Instance, Copy);
      if (Copy)
      {
        CFRelease(Copy);
      }
    }
  }

  return Instance;
}

void C3DSceneSetRootNode(uint64_t result, void *a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(result + 64) != a2)
  {
    C3DEnginePipelineReset(*(result + 120), a2);
    v12 = *(result + 64);
    if (v12)
    {
      v13 = C3DGetScene(v12, v11);
      if (v13 == result)
      {
        C3DRemoveSceneRef(*(result + 64), result);
      }

      else
      {
        v15 = scn_default_log(v13, v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *v19 = 0;
          _os_log_impl(&dword_21BEF7000, v15, OS_LOG_TYPE_DEFAULT, "Warning: C3DSceneSetRootNode - old root node seems to be already connected to another scene", v19, 2u);
        }
      }

      v16 = *(result + 64);
      if (v16 == a2)
      {
        goto LABEL_19;
      }

      if (v16)
      {
        CFRelease(v16);
        *(result + 64) = 0;
      }

      if (!a2)
      {
        v16 = 0;
        goto LABEL_18;
      }
    }

    else if (!a2)
    {
      v16 = 0;
LABEL_19:
      v17 = *(result + 384);
      if (v17 != a2)
      {
        if (v17)
        {
          CFRelease(*(result + 384));
          *(result + 384) = 0;
        }

        if (a2)
        {
          v18 = CFRetain(a2);
        }

        else
        {
          v18 = 0;
        }

        *(result + 384) = v18;
        v16 = *(result + 64);
      }

      if (v16)
      {
        C3DAddSceneRef(v16, result);
      }

      return;
    }

    v16 = CFRetain(a2);
LABEL_18:
    *(result + 64) = v16;
    goto LABEL_19;
  }
}

void C3DScenePostPipelineEvent(uint64_t result, uint64_t a2, const void *a3, const void *a4)
{
  v6 = a2;
  if (!a3 && (v8 = scn_default_log(result, a2), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DScenePostPipelineEvent_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (!result)
    {
      return;
    }
  }

  else if (!result)
  {
    return;
  }

  NotificationQueue = C3DEnginePipelineGetNotificationQueue(*(result + 120), a2);
  C3DEngineNotificationQueueEnqueueEvent(NotificationQueue, v6, a3, a4);
}

uint64_t C3DSceneGetRootNode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

double C3DSceneGetStartTime(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 176);
}

double C3DSceneGetEndTime(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 184);
}

void C3DSceneSetStartTime(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 176) = a3;
}

void C3DSceneSetEndTime(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 184) = a3;
}

float C3DSceneGetFrameRate(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 192);
}

void C3DSceneSetFrameRate(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 192) = a3;
}

float C3DSceneGetPlaybackSpeed(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 196);
}

void C3DSceneSetPlaybackSpeed(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 196) = a3;
}

float C3DSceneGetUnit(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 224);
}

void C3DSceneSetUnit(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 224) = a3;
}

__n128 C3DSceneGetUpAxis(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = a1[13];
  *a2 = result;
  return result;
}

__n128 C3DSceneSetUpAxis(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  a1[13] = *a2;
  return result;
}

void C3DSceneBumpFrameStamp(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(a1 + 296);
  C3DLightingSystemNextFrame(*(a1 + 128));
  if ((*(a1 + 382) & 1) == 0)
  {
    C3DTransformTreeNextFrame(*(a1 + 152), v11);
  }
}

uint64_t C3DSceneGetFrameStamp(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 296);
}

uint64_t C3DSceneGetStateStamp(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 300);
}

uint64_t C3DSceneGetModelValueStorage(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

uint64_t C3DSceneGetBackgroundEffectSlot(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 304))
  {
    v3 = C3DEffectSlotCreate(a1, 24);
    *(a1 + 304) = v3;
    v5 = C3DTextureSamplerBilinearMipMapClampNoAnisotropy(v3, v4);
    C3DEffectSlotSetTextureSampler(v3, v5);
  }

  return *(a1 + 304);
}

uint64_t C3DSceneGetLightingEnvironmentEffectSlot(uint64_t a1, int a2)
{
  if (a2 && !*(a1 + 312))
  {
    v3 = C3DEffectSlotCreate(a1, 25);
    *(a1 + 312) = v3;
    v5 = C3DTextureSamplerBilinearMipMapClampNoAnisotropy(v3, v4);
    C3DEffectSlotSetTextureSampler(v3, v5);
  }

  return *(a1 + 312);
}

uint64_t C3DSceneGetEnginePipeline(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 120);
}

uint64_t C3DSceneGetLightingSystem(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 128);
}

uint64_t C3DSceneGetDynamicBatchingSystem(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 136);
}

uint64_t C3DSceneGetCullingSystem(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 144);
}

uint64_t C3DSceneGetTransformTree(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 152);
}

float C3DSceneGetFogDensityExponent(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 336);
}

void C3DSceneSetFogDensityExponent(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 336) = a3;
}

float C3DSceneGetFogEndDistance(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 332);
}

void C3DSceneSetFogEndDistance(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 332) = a3;
}

float C3DSceneGetFogStartDistance(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 328);
}

void C3DSceneSetFogStartDistance(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 328) = a3;
}

__n128 C3DSceneSetFogColor(__n128 *a1, __n128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  a1[22] = *a2;
  return result;
}

uint64_t C3DSceneGetFogColor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 352;
}

__n64 C3DSceneComputeFogParameters(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = fmaxf(*(a1 + 328) * a3, 0.0);
  v14 = fmaxf(*(a1 + 332) * a3, 0.0);
  v15 = v14 + -0.001;
  if (v15 <= v13)
  {
    v16 = v15;
    v17 = v16;
  }

  else
  {
    v17 = v13;
  }

  result.n64_f32[0] = 1.0 / (v14 - v17);
  result.n64_f32[1] = -(result.n64_f32[0] * v17);
  return result;
}

uint64_t C3DSceneGetWantsSSR(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 368);
}

void C3DSceneSetWantsSSR(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 368) = v2;
}

uint64_t C3DSceneGetSSRSampleCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 370);
}

void C3DSceneSetSSRSampleCount(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 370) = v2;
}

float C3DSceneGetSSRMaxRayDistance(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 372);
}

void C3DSceneSetSSRMaxRayDistance(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 372) = a3;
}

float C3DSceneGetSSRStride(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 376);
}

void C3DSceneSetSSRStride(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 376) = a3;
}

uint64_t C3DSceneIsPausedForEditing(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 381);
}

void C3DSceneSetPausedForEditing(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  *(result + 381) = 1;
}

__n128 C3DSceneComputeViewToCubemapMatrix(__n128 *a1, uint64_t a2)
{
  memset(&v10, 0, sizeof(v10));
  C3DMatrix4x4Invert(a2, &v10);
  v9.n128_u32[2] = 0;
  v9.n128_u64[0] = 0;
  C3DSceneGetUpAxis(a1, &v9);
  memset(v8, 0, sizeof(v8));
  if (v9.n128_f32[2] == 1.0)
  {
    v7 = xmmword_21C27F910;
    v4 = 1.57079633;
LABEL_7:
    C3DMatrix4x4MakeAxisAngleRotation(v8, &v7, v4);
    C3DMatrix4x4Mult(&v10, v8, &v10);
    goto LABEL_8;
  }

  if (v9.n128_f32[2] == -1.0)
  {
    v7 = xmmword_21C27F910;
    v4 = -1.57079633;
    goto LABEL_7;
  }

  if (v9.n128_f32[1] == -1.0)
  {
    v7 = xmmword_21C27F910;
    v4 = -3.14159265;
    goto LABEL_7;
  }

LABEL_8:
  v10.columns[0].f32[2] = -v10.columns[0].f32[2];
  v10.columns[1].f32[2] = -v10.columns[1].f32[2];
  v10.columns[2].f32[2] = -v10.columns[2].f32[2];
  v5 = v10.columns[1];
  *a2 = v10.columns[0];
  *(a2 + 16) = v5;
  result = v10.columns[3];
  *(a2 + 32) = v10.columns[2];
  *(a2 + 48) = result;
  return result;
}

__n128 C3DSceneComputeWorldToCubemapMatrix(__n128 *a1)
{
  v14 = *(MEMORY[0x277D860B8] + 32);
  v15 = *(MEMORY[0x277D860B8] + 16);
  v16 = *(MEMORY[0x277D860B8] + 48);
  v17 = *MEMORY[0x277D860B8];
  v18.n128_u32[2] = 0;
  v18.n128_u64[0] = 0;
  C3DSceneGetUpAxis(a1, &v18);
  if (v18.n128_f32[2] == 1.0)
  {
    v1 = __sincosf_stret(-1.5708);
    v2 = 0;
    v3 = v15;
    v3.i32[1] = LODWORD(v1.__cosval);
    v3.i32[2] = LODWORD(v1.__sinval);
    v4 = v14;
    v4.f32[1] = -v1.__sinval;
    v4.i32[2] = LODWORD(v1.__cosval);
    v19 = v17;
    v20 = v15;
    v21 = v14;
    v22 = v16;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    do
    {
      *(&v23 + v2) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v19 + v2))), v3, *&v19.f32[v2 / 4], 1), v4, *(&v19 + v2), 2), v16, *(&v19 + v2), 3);
      v2 += 16;
    }

    while (v2 != 64);
    return v23;
  }

  if (v18.n128_f32[2] == -1.0)
  {
    v5 = __sincosf_stret(1.5708);
    v6 = 0;
    v7 = v15;
    v7.i32[1] = LODWORD(v5.__cosval);
    v7.i32[2] = LODWORD(v5.__sinval);
    v8 = v14;
    v8.f32[1] = -v5.__sinval;
    v8.i32[2] = LODWORD(v5.__cosval);
    v19 = v17;
    v20 = v15;
    v21 = v14;
    v22 = v16;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    do
    {
      *(&v23 + v6) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v19 + v6))), v7, *&v19.f32[v6 / 4], 1), v8, *(&v19 + v6), 2), v16, *(&v19 + v6), 3);
      v6 += 16;
    }

    while (v6 != 64);
    return v23;
  }

  if (v18.n128_f32[1] == -1.0)
  {
    v9 = __sincosf_stret(3.1416);
    v10 = 0;
    v11 = v15;
    v11.i32[1] = LODWORD(v9.__cosval);
    v11.i32[2] = LODWORD(v9.__sinval);
    v12 = v14;
    v12.f32[1] = -v9.__sinval;
    v12.i32[2] = LODWORD(v9.__cosval);
    v19 = v17;
    v20 = v15;
    v21 = v14;
    v22 = v16;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    do
    {
      *(&v23 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v19 + v10))), v11, *&v19.f32[v10 / 4], 1), v12, *(&v19 + v10), 2), v16, *(&v19 + v10), 3);
      v10 += 16;
    }

    while (v10 != 64);
    return v23;
  }

  return v17;
}

SCNAuthoringEnvironment2 *C3DSceneGetAuthoringEnvironment2(SCNAuthoringEnvironment2 *result, int a2)
{
  if (result)
  {
    v2 = result;
    result = result[1]._physicsFieldsDictionary;
    if (result)
    {
      v3 = 1;
    }

    else
    {
      v3 = a2 == 0;
    }

    if (!v3)
    {
      result = C3DAuthoringEnvironment2Create(v2);
      *(v2 + 416) = result;
    }
  }

  return result;
}

void C3DSceneSetLayerRootNode(_BOOL8 HitTestResultsWithSegment_cold_1, uint64_t a2, void *cf)
{
  v5 = HitTestResultsWithSegment_cold_1;
  if (!HitTestResultsWithSegment_cold_1)
  {
    v6 = scn_default_log(0, a2);
    HitTestResultsWithSegment_cold_1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (HitTestResultsWithSegment_cold_1)
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if (a2 >= 4)
  {
    v13 = scn_default_log(HitTestResultsWithSegment_cold_1, a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DSceneSetLayerRootNode_cold_2();
    }
  }

  v14 = v5 + 384;
  v15 = *(v5 + 384 + 8 * a2);
  if (v15 != cf)
  {
    if (v15)
    {
      CFRelease(v15);
      *(v14 + 8 * a2) = 0;
    }

    if (cf)
    {
      v16 = CFRetain(cf);
    }

    else
    {
      v16 = 0;
    }

    *(v14 + 8 * a2) = v16;
  }

  C3DNodeSetLayerIndex(cf, a2);
  if (cf)
  {
    C3DAddSceneRef(cf, v5);
  }
}

uint64_t C3DSceneGetLayerRootNode(_BOOL8 HitTestResultsWithSegment_cold_1, uint64_t a2)
{
  v2 = a2;
  v3 = HitTestResultsWithSegment_cold_1;
  if (!HitTestResultsWithSegment_cold_1)
  {
    v4 = scn_default_log(0, a2);
    HitTestResultsWithSegment_cold_1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (HitTestResultsWithSegment_cold_1)
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 >= 4)
  {
    v11 = scn_default_log(HitTestResultsWithSegment_cold_1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DSceneSetLayerRootNode_cold_2();
    }
  }

  return *(v3 + 8 * v2 + 384);
}

void __C3DSceneLightEnvironmentDidChange(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  ++*(result + 320);
}

uint64_t C3DSceneGetLightingEnvironmentTimeStamp(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 320);
}

uint64_t C3DSceneGetAllowsDefaultLightingEnvironmentFallback(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 324);
}

void C3DSceneSetAllowsDefaultLightingEnvironmentFallback(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DSceneCreateHitTestResultsWithSegment_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 324) = v2;
}

id _C3DSceneCFFinalize(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 144) = 0;
  }

  v4 = *(a1 + 152);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 152) = 0;
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 128) = 0;
  }

  for (i = 384; i != 416; i += 8)
  {
    v7 = *(a1 + i);
    if (v7)
    {
      v8 = C3DGetSceneRef(v7, a2);
      if (v8 != *(a1 + 48))
      {
        v10 = scn_default_log(v8, v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          _os_log_impl(&dword_21BEF7000, v10, OS_LOG_TYPE_DEFAULT, "Warning: RootNode is not retained by the scene", v28, 2u);
        }
      }

      C3DRemoveSceneRef(*(a1 + i), a1);
    }
  }

  v11 = *(a1 + 80);
  if (v11)
  {
    *(v11 + 24) = 0;
  }

  v12 = *(a1 + 64);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 64) = 0;
  }

  v13 = *(a1 + 72);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 72) = 0;
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 96) = 0;
  }

  v15 = *(a1 + 80);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 80) = 0;
  }

  v16 = *(a1 + 88);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 88) = 0;
  }

  v17 = *(a1 + 104);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 104) = 0;
  }

  v18 = *(a1 + 112);
  if (v18)
  {
    CFRelease(v18);
    *(a1 + 112) = 0;
  }

  v19 = *(a1 + 304);
  if (v19)
  {
    CFRelease(v19);
    *(a1 + 304) = 0;
  }

  v20 = *(a1 + 312);
  if (v20)
  {
    CFRelease(v20);
    *(a1 + 312) = 0;
  }

  v21 = *(a1 + 136);
  if (v21)
  {
    CFRelease(v21);
    *(a1 + 136) = 0;
  }

  v22 = *(a1 + 416);
  if (v22)
  {
    CFRelease(v22);
    *(a1 + 416) = 0;
  }

  for (j = 384; j != 416; j += 8)
  {
    v24 = *(a1 + j);
    if (v24)
    {
      CFRelease(v24);
      *(a1 + j) = 0;
    }
  }

  v25 = *(a1 + 120);
  if (v25)
  {
    CFRelease(v25);
    *(a1 + 120) = 0;
  }

  pthread_mutex_destroy((a1 + 232));
  return C3DEntityCFFinalize(a1, v26);
}

CFStringRef _C3DSceneCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DScene>");
}

CFStringRef _C3DSceneCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DScene>");
}

BOOL _C3DSceneInitWithPropertyList(_BOOL8 a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    _C3DGeometryFinalizeDeserialization_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  v23 = C3DEntityInitWithPropertyList(v7, a2);
  if ((v23 & 1) == 0)
  {
    v34 = scn_default_log(v23, v24);
    result = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DSceneInitWithPropertyList_cold_3(v34);
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"startTime");
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberDoubleType, (v7 + 176));
  }

  v26 = CFDictionaryGetValue(a2, @"endTime");
  if (v26)
  {
    CFNumberGetValue(v26, kCFNumberDoubleType, (v7 + 184));
  }

  v27 = CFDictionaryGetValue(a2, @"frameRate");
  if (v27)
  {
    CFNumberGetValue(v27, kCFNumberFloatType, (v7 + 192));
  }

  v28 = CFDictionaryGetValue(a2, @"unit");
  if (v28)
  {
    CFNumberGetValue(v28, kCFNumberFloatType, (v7 + 224));
  }

  v36.n128_u32[2] = 0;
  v36.n128_u64[0] = 0;
  v29 = CFDictionaryGetValue(a2, @"upAxis");
  if (v29 && C3DVector3InitWithPropertyList(&v36, v29, a3, a4))
  {
    C3DSceneSetUpAxis(v7, &v36);
  }

  v30 = CFDictionaryGetValue(a2, @"animations");
  if (!v30)
  {
    return 1;
  }

  v31 = C3DInitWithPropertyList(*(v7 + 72), v30, a3, a4);
  if (v31)
  {
    return 1;
  }

  v35 = scn_default_log(v31, v32);
  result = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _C3DSceneInitWithPropertyList_cold_4();
    return 0;
  }

  return result;
}

__CFDictionary *_C3DSceneCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v16)
  {
    v17 = C3DCopyPropertyList(*(a1 + 72), a2, a3, a4);
    if (v17)
    {
      v18 = v17;
      CFDictionaryAddValue(v16, @"animations", v17);
      CFRelease(v18);
    }

    v19 = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 176));
    CFDictionaryAddValue(v16, @"startTime", v19);
    CFRelease(v19);
    v20 = CFNumberCreate(0, kCFNumberDoubleType, (a1 + 184));
    CFDictionaryAddValue(v16, @"endTime", v20);
    CFRelease(v20);
    v21 = CFNumberCreate(0, kCFNumberFloatType, (a1 + 192));
    CFDictionaryAddValue(v16, @"frameRate", v21);
    CFRelease(v21);
    v22 = C3DVector3CopyPropertyList(a1 + 208);
    if (v22)
    {
      v23 = v22;
      CFDictionaryAddValue(v16, @"upAxis", v22);
      CFRelease(v23);
    }

    v24 = CFNumberCreate(0, kCFNumberFloatType, (a1 + 224));
    CFDictionaryAddValue(v16, @"unit", v24);
    CFRelease(v24);
    v25 = *(a1 + 64);
    if (v25)
    {
      v26 = _copySerializedHierarchy(v25, a2);
      if (v26)
      {
        v27 = v26;
        CFDictionaryAddValue(v16, @"nodeTree", v26);
        CFRelease(v27);
      }
    }
  }

  return v16;
}

uint64_t _C3DSceneFinalizeDeserialization(_BOOL8 a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    _C3DSceneFinalizeDeserialization_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  Value = CFDictionaryGetValue(theDict, @"nodeTree");
  if (Value)
  {
    v37 = 0;
    v24 = _deserializeHierarchy(Value, &v37, a2);
    if (v24)
    {
      C3DSceneSetRootNode(v7, v37);
    }

    else
    {
      v26 = scn_default_log(v24, v25);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        *v36 = 0;
        _os_log_impl(&dword_21BEF7000, v26, OS_LOG_TYPE_DEFAULT, "Warning: Some nodes failed to be deserialized", v36, 2u);
      }

      if (!*(v7 + 64))
      {
        v35 = scn_default_log(v27, v28);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          _C3DSceneFinalizeDeserialization_cold_3();
          if (!a4)
          {
            return 0;
          }
        }

        else if (!a4)
        {
          return 0;
        }

        if (!*a4)
        {
          *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
        }

        return 0;
      }
    }
  }

  v29 = CFDictionaryGetValue(theDict, @"animations");
  if (!v29)
  {
    return 1;
  }

  v30 = C3DFinalizeDeserialization(*(v7 + 72), a2, v29, a4);
  if (v30)
  {
    return 1;
  }

  v33 = scn_default_log(v30, v31);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    _C3DSceneFinalizeDeserialization_cold_4();
    if (!a4)
    {
      return 0;
    }
  }

  else if (!a4)
  {
    return 0;
  }

  if (!*a4)
  {
    MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
    result = 0;
    *a4 = MalformedDocumentError;
    return result;
  }

  return 0;
}

void *_C3DSceneFillLibraryForSerialization(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    _C3DSceneFinalizeDeserialization_cold_2(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  RootNode = C3DSceneGetRootNode(v5, a2);
  if (RootNode)
  {
    v21 = RootNode;
    C3DLibraryAddEntry(a2, RootNode);
    C3DFillLibraryForSerialization(v21, a2, a3);
  }

  result = *(v5 + 72);
  if (result)
  {
    return C3DFillLibraryForSerialization(result, a2, a3);
  }

  return result;
}

__CFDictionary *_copySerializedHierarchy(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v4, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  EntryID = C3DLibraryGetEntryID(a2, a1);
  v8 = EntryID;
  if (EntryID)
  {
    if (EntryID >= 0x7FFFFFFF)
    {
      v9 = scn_default_log(EntryID, v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        _copySerializedHierarchy_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
      }
    }
  }

  else
  {
    v17 = scn_default_log(0, v7);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      _copySerializedHierarchy_cold_2();
    }
  }

  valuePtr = v8;
  v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"nodeID", v18);
  CFRelease(v18);
  if (C3DNodeHasChildren(a1))
  {
    ChildNodesCount = C3DNodeGetChildNodesCount(a1);
    v20 = CFGetAllocator(a1);
    v21 = CFArrayCreateMutable(v20, ChildNodesCount, MEMORY[0x277CBF128]);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 0x40000000;
    v23[2] = ___copySerializedHierarchy_block_invoke;
    v23[3] = &__block_descriptor_tmp_65;
    v23[4] = a2;
    v23[5] = v21;
    C3DNodeApplyChildren(a1, v23);
    CFDictionaryAddValue(Mutable, @"childs", v21);
    CFRelease(v21);
  }

  return Mutable;
}

void ___copySerializedHierarchy_block_invoke(uint64_t a1, const void *a2)
{
  v3 = _copySerializedHierarchy(a2, *(a1 + 32));
  if (v3)
  {
    v4 = v3;
    CFArrayAppendValue(*(a1 + 40), v3);

    CFRelease(v4);
  }
}

uint64_t _deserializeHierarchy(const __CFDictionary *a1, CFDictionaryRef **a2, uint64_t a3)
{
  v3 = a1;
  if (!a1)
  {
    return v3;
  }

  valuePtr = 0;
  Value = CFDictionaryGetValue(a1, @"nodeID");
  if (!Value)
  {
    v26 = scn_default_log(0, v7);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      _deserializeHierarchy_cold_3();
    }

    return 0;
  }

  v8 = Value;
  v9 = CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
  v10 = valuePtr;
  TypeID = C3DNodeGetTypeID(v9, v11);
  RemappedID = C3DLibraryGetRemappedID(a3, v10, TypeID);
  valuePtr = RemappedID;
  if (!RemappedID)
  {
    v27 = scn_default_log(RemappedID, v14);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      _deserializeHierarchy_cold_2(v8, v27);
    }

    return 0;
  }

  v15 = C3DNodeGetTypeID(RemappedID, v14);
  Entry = C3DLibraryGetEntry(a3, v15, valuePtr);
  if (!Entry)
  {
    v28 = scn_default_log(0, v17);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      _deserializeHierarchy_cold_1();
    }

    return 0;
  }

  v18 = Entry;
  *a2 = Entry;
  v19 = CFDictionaryGetValue(v3, @"childs");
  if (!v19)
  {
    return 1;
  }

  v20 = v19;
  Count = CFArrayGetCount(v19);
  if (Count < 1)
  {
    return 1;
  }

  v22 = Count;
  v23 = 0;
  LODWORD(v3) = 1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v20, v23);
    cf = 0;
    v25 = _deserializeHierarchy(ValueAtIndex, &cf, a3);
    if (cf)
    {
      C3DNodeAddChildNode(v18, cf);
    }

    v3 = (v3 & v25);
    ++v23;
  }

  while (v22 != v23);
  return v3;
}

uint64_t _C3DSceneSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1, a2);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  RootNode = C3DSceneGetRootNode(a1, v5);

  return C3DSearchByID(RootNode, a2);
}

void _C3DSceneEnumerateSubEntities(uint64_t a1, uint64_t a2)
{
  v2 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    _C3DSceneEnumerateSubEntities_cold_1();
  }
}

__CFArray *_C3DSceneCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 64;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v5, @"name", @"root");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v66 = 0;
  valuePtr = 6;
  v65 = a1 + 176;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v12 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v9, @"name", @"startTime");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  v13 = Mutable;
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v14 = MEMORY[0x277CBF150];
  v15 = CFDictionaryCreateMutable(0, 4, v3, MEMORY[0x277CBF150]);
  v66 = 0;
  valuePtr = 6;
  v65 = a1 + 184;
  v16 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v17 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v18 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v15, @"name", @"endTime");
  CFDictionarySetValue(v15, @"type", v16);
  CFDictionarySetValue(v15, @"address", v18);
  CFDictionarySetValue(v15, @"semantic", v17);
  CFArrayAppendValue(v13, v15);
  CFRelease(v17);
  CFRelease(v15);
  CFRelease(v18);
  CFRelease(v16);
  v19 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v14);
  v66 = 0;
  valuePtr = 7;
  v65 = a1 + 192;
  v20 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v21 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v22 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v19, @"name", @"frameRate");
  CFDictionarySetValue(v19, @"type", v20);
  CFDictionarySetValue(v19, @"address", v22);
  CFDictionarySetValue(v19, @"semantic", v21);
  v23 = v13;
  CFArrayAppendValue(v13, v19);
  CFRelease(v21);
  CFRelease(v19);
  CFRelease(v22);
  CFRelease(v20);
  v24 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 0;
  valuePtr = 7;
  v65 = a1 + 196;
  v25 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v27 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v24, @"name", @"playbackSpeed");
  CFDictionarySetValue(v24, @"type", v25);
  CFDictionarySetValue(v24, @"address", v27);
  CFDictionarySetValue(v24, @"semantic", v26);
  CFArrayAppendValue(v13, v24);
  CFRelease(v26);
  CFRelease(v24);
  CFRelease(v27);
  CFRelease(v25);
  v28 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 200;
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v31 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v28, @"name", @"attributes");
  CFDictionarySetValue(v28, @"type", v29);
  CFDictionarySetValue(v28, @"address", v31);
  CFDictionarySetValue(v28, @"semantic", v30);
  CFArrayAppendValue(v13, v28);
  CFRelease(v30);
  CFRelease(v28);
  CFRelease(v31);
  CFRelease(v29);
  v32 = MEMORY[0x277CBF138];
  v33 = MEMORY[0x277CBF150];
  v34 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 0;
  valuePtr = 9;
  v65 = a1 + 208;
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v37 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v34, @"name", @"upAxis");
  CFDictionarySetValue(v34, @"type", v35);
  CFDictionarySetValue(v34, @"address", v37);
  CFDictionarySetValue(v34, @"semantic", v36);
  CFArrayAppendValue(v23, v34);
  CFRelease(v36);
  CFRelease(v34);
  CFRelease(v37);
  CFRelease(v35);
  v38 = CFDictionaryCreateMutable(0, 4, v32, v33);
  v66 = 0;
  valuePtr = 1;
  v65 = a1 + 224;
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v41 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v38, @"name", @"unit");
  CFDictionarySetValue(v38, @"type", v39);
  CFDictionarySetValue(v38, @"address", v41);
  CFDictionarySetValue(v38, @"semantic", v40);
  CFArrayAppendValue(v23, v38);
  CFRelease(v40);
  CFRelease(v38);
  CFRelease(v41);
  CFRelease(v39);
  v42 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 72;
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v44 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v45 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v42, @"name", @"animationManager");
  CFDictionarySetValue(v42, @"type", v43);
  CFDictionarySetValue(v42, @"address", v45);
  CFDictionarySetValue(v42, @"semantic", v44);
  CFArrayAppendValue(v23, v42);
  CFRelease(v44);
  CFRelease(v42);
  CFRelease(v45);
  CFRelease(v43);
  v46 = MEMORY[0x277CBF138];
  v47 = MEMORY[0x277CBF150];
  v48 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 304;
  v49 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v51 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v48, @"name", @"background");
  CFDictionarySetValue(v48, @"type", v49);
  CFDictionarySetValue(v48, @"address", v51);
  CFDictionarySetValue(v48, @"semantic", v50);
  CFArrayAppendValue(v23, v48);
  CFRelease(v50);
  CFRelease(v48);
  CFRelease(v51);
  CFRelease(v49);
  v52 = CFDictionaryCreateMutable(0, 4, v46, v47);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 312;
  v53 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v54 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v55 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v52, @"name", @"environment");
  CFDictionarySetValue(v52, @"type", v53);
  CFDictionarySetValue(v52, @"address", v55);
  CFDictionarySetValue(v52, @"semantic", v54);
  CFArrayAppendValue(v23, v52);
  CFRelease(v54);
  CFRelease(v52);
  CFRelease(v55);
  CFRelease(v53);
  v56 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v47);
  v66 = 0;
  valuePtr = 2;
  v65 = a1 + 48;
  v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v58 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v59 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v56, @"name", @"sceneRef");
  CFDictionarySetValue(v56, @"type", v57);
  CFDictionarySetValue(v56, @"address", v59);
  CFDictionarySetValue(v56, @"semantic", v58);
  CFArrayAppendValue(v23, v56);
  CFRelease(v58);
  CFRelease(v56);
  CFRelease(v59);
  CFRelease(v57);
  v60 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v66 = 2;
  valuePtr = 5;
  v65 = a1 + 128;
  v61 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v62 = CFNumberCreate(0, kCFNumberSInt32Type, &v66);
  v63 = CFNumberCreate(0, kCFNumberLongType, &v65);
  CFDictionarySetValue(v60, @"name", @"lightingSystem");
  CFDictionarySetValue(v60, @"type", v61);
  CFDictionarySetValue(v60, @"address", v63);
  CFDictionarySetValue(v60, @"semantic", v62);
  CFArrayAppendValue(v23, v60);
  CFRelease(v62);
  CFRelease(v60);
  CFRelease(v63);
  CFRelease(v61);
  return v23;
}

void sub_21C037DE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, char a12)
{
  if (a11)
  {
    if (a12 == 1)
    {
      btAlignedFreeInternal(a11);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t btC3DCollisionDispatcher::setDelegate(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 0x2000);
  *(a1 + 10520) = a2;
  *(a1 + 10528) = objc_opt_respondsToSelector() & 1;
  v3[2337] = objc_opt_respondsToSelector() & 1;
  result = objc_opt_respondsToSelector();
  v3[2338] = result & 1;
  *(a1 + 10504) = 0;
  if (v3[2336] & 1) != 0 || (v3[2337] & 1) != 0 || (result)
  {
    if (v3[2337])
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    if (result)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 10504) = v5 | v6;
  }

  return result;
}

SCNHitTestResult *_hitTestResult(const btCollisionObject *a1, float32x4_t *a2, float32x4_t *a3)
{
  if (!a1 || *(a1 + 66) != 2)
  {
    return 0;
  }

  v3 = C3DHitTestResultCreateFromBulletResults(*(*(a1 + 67) + 72), *a2, *a3);
  v4 = [[SCNHitTestResult alloc] initWithResult:v3];
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

SCNPhysicsContact *__contact(const btCollisionObject *a1, const btCollisionObject *a2, const btVector3 *a3, const btVector3 *a4, float a5, float a6)
{
  v6 = 0;
  if (a1 && (*(a1 + 66) & 2) != 0)
  {
    v13 = objc_opt_new();
    if ((*(a1 + 264) & 2) != 0 && (v14 = *(a1 + 67)) != 0 && (v6 = v13, (v15 = C3DEntityGetObjCWrapper(*(v14 + 72))) != 0))
    {
      v22 = v15;
      if (a2 && (*(a2 + 264) & 2) != 0 && (v23 = *(a2 + 67)) != 0)
      {
        ObjCWrapper = C3DEntityGetObjCWrapper(*(v23 + 72));
      }

      else
      {
        ObjCWrapper = 0;
      }

      *&v16 = a3->var0.var0[0];
      *&v17 = a3->var0.var0[1];
      *&v18 = a3->var0.var0[2];
      *&v19 = a4->var0.var0[0];
      *&v20 = a4->var0.var0[1];
      *&v21 = a4->var0.var0[2];
      [v6 _fillNodeA:v22 nodeB:ObjCWrapper contactPoint:v16 collisionImpulse:v17 distance:v18 hitFraction:{v19, v20, v21, -a5, a6}];
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t C3DPhysicsWorldAddBodyToWorld(uint64_t result, uint64_t a2, __C3DNode *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a2)
  {
    v12 = result;
    v13 = *(result + 228);
    v14 = *(a2 + 536);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = btAlignedAllocInternal(80, 16);
    btC3DMotionState::btC3DMotionState(v15, a3, v13);
    btC3DMotionState::setOffset(v15, a7);
    *(a2 + 536) = v15;
    if (v15)
    {
      (*(*v15 + 16))(v15, a2 + 16);
    }

    result = C3DNodeIsHidden(a3, v16);
    if ((result & 1) == 0)
    {
      IsHidden = C3DNodeIsHidden(a3, v17);
      if (IsHidden)
      {
        v20 = scn_default_log(IsHidden, v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          C3DPhysicsWorldAddBodyToWorld(v20, v21, v22, v23, v24, v25, v26, v27);
        }
      }

      return (*(*v12 + 176))(v12, a2, a4, a5, a6);
    }
  }

  return result;
}

void btC3DCollisionDispatcher::dispatchContactsToDelegate(btC3DCollisionDispatcher *this)
{
  v2 = *(this + 2635);
  if (v2 <= 0)
  {
    v12 = 0uLL;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_15;
  }

  v3 = 0;
  v4 = 16 * v2;
  do
  {
    v5 = *(this + 1319) + v3;
    v6 = *v5;
    v7 = *(v5 + 8);
    switch(v7)
    {
      case 2:
        [*(this + 1315) physicsWorld:*(this + 1314) didEndContact:v6];
        break;
      case 1:
        if ([v6 _shouldPostUpdate])
        {
          [*(this + 1315) physicsWorld:*(this + 1314) didUpdateContact:v6];
        }

        break;
      case 0:
        [*(this + 1315) physicsWorld:*(this + 1314) didBeginContact:v6];
        break;
    }

    v3 += 16;
  }

  while (v4 != v3);
  LODWORD(v2) = *(this + 2635);
  v12 = 0uLL;
  if (v2 <= 0 && (v2 & 0x80000000) != 0)
  {
LABEL_15:
    if ((*(this + 2636) & 0x80000000) != 0)
    {
      v8 = *(this + 1319);
      if (v8 && *(this + 10560) == 1)
      {
        btAlignedFreeInternal(v8);
      }

      *(this + 10560) = 1;
      *(this + 1319) = 0;
      *(this + 2636) = 0;
    }

    v9 = 16 * v2;
    v10 = v2 + 1;
    do
    {
      *(*(this + 1319) + v9) = v12;
      v9 += 16;
    }

    while (v10++);
  }

LABEL_22:
  *(this + 2635) = 0;
}

id *C3DSceneRegisterNodePhysicsBody(id *a1, id *a2)
{
  result = C3DEntityGetObjCWrapper(a1);
  if (result)
  {
    v4 = result;
    result = C3DEntityGetObjCWrapper(a2);
    if (result)
    {
      result = [result physicsBody];
      if (result)
      {
        v5 = result;
        v6 = [v4 physicsWorld];
        v7 = [v5 categoryBitMask];
        v8 = [v5 collisionBitMask];
        v9 = [v5 contactTestBitMask];

        return [v6 addPhysicsBody:v5 nodeRef:a2 colGroup:v7 colMask:v8 colTest:v9];
      }
    }
  }

  return result;
}

id *C3DSceneUnregisterNodePhysicsBody(id *a1, id *a2)
{
  result = C3DEntityGetObjCWrapper(a1);
  if (result)
  {
    v4 = result;
    result = C3DEntityGetObjCWrapper(a2);
    if (result)
    {
      result = [result physicsBody];
      if (result)
      {
        v5 = result;
        v6 = [result _handle];
        v7 = [v4 physicsWorld];

        return [v7 removePhysicsBody:v5 handle:v6];
      }
    }
  }

  return result;
}

uint64_t btC3DCollisionDispatcher::btC3DCollisionDispatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = btCollisionDispatcher::btCollisionDispatcher(a1, a2);
  *v5 = &unk_282DC5638;
  *(v5 + 10496) = &unk_282DC56E8;
  *(v5 + 10512) = a3;
  *(v5 + 10560) = 1;
  *(v5 + 10552) = 0;
  *(v5 + 10540) = 0;
  btC3DCollisionDispatcher::setDelegate(v5, 0);
  return a1;
}

void sub_21C03AE38(_Unwind_Exception *a1)
{
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 10536);
  btCollisionDispatcher::~btCollisionDispatcher(v1);
  _Unwind_Resume(a1);
}

void btC3DCollisionDispatcher::~btC3DCollisionDispatcher(btC3DCollisionDispatcher *this)
{
  btC3DCollisionDispatcher::~btC3DCollisionDispatcher(this);

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DC5638;
  *(this + 1312) = &unk_282DC56E8;
  if (*(this + 1315))
  {
    v2 = *(this + 5);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(this + 4) + 8 * i);
        if (v4)
        {
          if (*(v4 + 800) >= 1)
          {
            v5 = 0;
            v6 = (v4 + 16);
            do
            {
              btPersistentManifold::clearUserCache(v4, v6);
              ++v5;
              ++v6;
            }

            while (v5 < *(v4 + 800));
            v2 = *(this + 5);
          }

          *(v4 + 800) = 0;
        }
      }
    }
  }

  v7 = *(this + 1319);
  if (v7 && *(this + 10560) == 1)
  {
    btAlignedFreeInternal(v7);
  }

  *(this + 10560) = 1;
  *(this + 1319) = 0;
  *(this + 10540) = 0;

  btCollisionDispatcher::~btCollisionDispatcher(this);
}

uint64_t btC3DCollisionDispatcher::getNewManifold(btC3DCollisionDispatcher *this, const btCollisionObject *a2, const btCollisionObject *a3)
{
  result = btCollisionDispatcher::getNewManifold(this, a2, a3);
  if (*(this + 2626))
  {
    *(result + 824) = this + 10496;
  }

  return result;
}

uint64_t btCollisionDispatcher::getInternalManifoldPointer(btCollisionDispatcher *this)
{
  if (*(this + 5))
  {
    return *(this + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t btCollisionDispatcher::getInternalManifoldPool(btCollisionDispatcher *this)
{
  return *(this + 14);
}

{
  return *(this + 14);
}

void btC3DCollisionDispatcher::addContact(SCNPhysicsContact *this, const btPersistentManifold *a2, int a3)
{
  p_z = &this[102]._contactPoint.z;
  if ((LOBYTE(this[131]._collisionImpulse) & 1) != 0 || (BYTE1(this[131]._collisionImpulse) & 1) != 0 || BYTE2(this[131]._collisionImpulse) == 1)
  {
    v6 = a3;
    v7 = objc_alloc_init(SCNPhysicsContact);
    *&a2->var1[v6].var14 = v7;
    if (p_z[2336])
    {
      var3 = a2->var3;
      if (var3)
      {
        var3 = *(var3 + 25);
      }

      v10 = *&a2->var4;
      if (v10)
      {
        v11 = 0;
        if (var3)
        {
          v12 = *(v10 + 200);
          if (v12)
          {
            v11 = (*(v12 + 8) & *(var3 + 3)) != 0 || (*(v12 + 24) & *(var3 + 1)) != 0;
          }
        }
      }

      else
      {
        v11 = 0;
      }

      if (v11 | C3DWasLinkedBeforeMajorOSYear2015(v7, v8))
      {
        v13 = [SCNPhysicsContact _contactWithManifold:a2 index:v6];
        distance_high = HIDWORD(this[131]._distance);
        if (distance_high == LODWORD(this[131]._fraction))
        {
          v15 = distance_high ? 2 * distance_high : 1;
          if (distance_high < v15)
          {
            if (v15)
            {
              v16 = btAlignedAllocInternal(16 * v15, 16);
              distance_high = HIDWORD(this[131]._distance);
            }

            else
            {
              v16 = 0;
            }

            if (distance_high >= 1)
            {
              v17 = 0;
              v18 = 16 * distance_high;
              do
              {
                *(v16 + v17) = *(this[131]._updateCount + v17);
                v17 += 16;
              }

              while (v18 != v17);
            }

            updateCount = this[131]._updateCount;
            if (updateCount)
            {
              if (p_z[2368] == 1)
              {
                btAlignedFreeInternal(updateCount);
              }
            }

            p_z[2368] = 1;
            this[131]._updateCount = v16;
            LODWORD(this[131]._fraction) = v15;
            distance_high = HIDWORD(this[131]._distance);
          }
        }

        v20 = this[131]._updateCount + 16 * distance_high;
        *v20 = v13;
        *(v20 + 8) = 0;
        ++HIDWORD(this[131]._distance);
      }
    }
  }
}

void *btC3DCollisionDispatcher::updateContact(uint64_t this, const btPersistentManifold *a2, int a3)
{
  v5 = this;
  v6 = this + 0x2000;
  if ((*(this + 10529) & 1) == 0)
  {
    v7 = scn_default_log(this, a2);
    this = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (this)
    {
      btC3DCollisionDispatcher::updateContact(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  var3 = a2->var3;
  v15 = *&a2->var4;
  if (var3)
  {
    var3 = *(var3 + 25);
  }

  v16 = 0;
  if (v15)
  {
    if (var3)
    {
      v17 = *(v15 + 200);
      if (v17)
      {
        v16 = (*(v17 + 8) & *(var3 + 3)) != 0 || (*(v17 + 24) & *(var3 + 1)) != 0;
      }
    }
  }

  result = C3DWasLinkedBeforeMajorOSYear2015(this, a2);
  if (v16 | result)
  {
    v19 = [SCNPhysicsContact _contactWithManifold:a2 index:a3];
    v20 = *(v5 + 10540);
    if (v20 == *(v5 + 10544))
    {
      v21 = v20 ? 2 * v20 : 1;
      if (v20 < v21)
      {
        if (v21)
        {
          v22 = btAlignedAllocInternal(16 * v21, 16);
          v20 = *(v5 + 10540);
        }

        else
        {
          v22 = 0;
        }

        if (v20 >= 1)
        {
          v23 = 0;
          v24 = 16 * v20;
          do
          {
            *(v22 + v23) = *(*(v5 + 10552) + v23);
            v23 += 16;
          }

          while (v24 != v23);
        }

        v25 = *(v5 + 10552);
        if (v25)
        {
          if (*(v6 + 2368) == 1)
          {
            btAlignedFreeInternal(v25);
          }
        }

        *(v6 + 2368) = 1;
        *(v5 + 10552) = v22;
        *(v5 + 10544) = v21;
        v20 = *(v5 + 10540);
      }
    }

    v26 = *(v5 + 10552) + 16 * v20;
    *v26 = v19;
    *(v26 + 8) = 1;
    ++*(v5 + 10540);
    return [v19 _prepareUpdate];
  }

  return result;
}

void btC3DCollisionDispatcher::deleteContact(uint64_t this, const btPersistentManifold *a2, int a3)
{
  v5 = this;
  v6 = this + 0x2000;
  if ((*(this + 10530) & 1) == 0)
  {
    v7 = scn_default_log(this, a2);
    this = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (this)
    {
      btC3DCollisionDispatcher::deleteContact(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(v6 + 2338) == 1)
  {
    var3 = a2->var3;
    if (var3)
    {
      var3 = *(var3 + 25);
    }

    v15 = *&a2->var4;
    if (v15)
    {
      v16 = 0;
      if (var3)
      {
        v17 = *(v15 + 200);
        if (v17)
        {
          v16 = (*(v17 + 8) & *(var3 + 3)) != 0 || (*(v17 + 24) & *(var3 + 1)) != 0;
        }
      }
    }

    else
    {
      v16 = 0;
    }

    if (v16 | C3DWasLinkedBeforeMajorOSYear2015(this, a2))
    {
      v18 = [SCNPhysicsContact _contactWithManifold:a2 index:a3];
      v19 = *(v5 + 10540);
      if (v19 == *(v5 + 10544))
      {
        v20 = v19 ? 2 * v19 : 1;
        if (v19 < v20)
        {
          if (v20)
          {
            v21 = btAlignedAllocInternal(16 * v20, 16);
            v19 = *(v5 + 10540);
          }

          else
          {
            v21 = 0;
          }

          if (v19 >= 1)
          {
            v22 = 0;
            v23 = 16 * v19;
            do
            {
              *(v21 + v22) = *(*(v5 + 10552) + v22);
              v22 += 16;
            }

            while (v23 != v22);
          }

          v24 = *(v5 + 10552);
          if (v24)
          {
            if (*(v6 + 2368) == 1)
            {
              btAlignedFreeInternal(v24);
            }
          }

          *(v6 + 2368) = 1;
          *(v5 + 10552) = v21;
          *(v5 + 10544) = v20;
          v19 = *(v5 + 10540);
        }
      }

      v25 = *(v5 + 10552) + 16 * v19;
      *v25 = v18;
      *(v25 + 8) = 2;
      ++*(v5 + 10540);
    }
  }
}

void sub_21C03B53C(_Unwind_Exception *a1)
{
  btAlignedObjectArray<btVector3>::~btAlignedObjectArray(v1 + 10536);
  btCollisionDispatcher::~btCollisionDispatcher(v1);
  _Unwind_Resume(a1);
}

void btC3DDebugDraw::drawLine(btC3DDebugDraw *this, float32x4_t *a2, float32x4_t *a3, const btVector3 *a4)
{
  var3 = this->var3;
  if (var3)
  {
    var2 = this->var2;
    v7 = vmulq_n_f32(*a2, var2);
    v8 = vmulq_n_f32(*a3, var2);
    v9 = *a4->var0.var0;
    v10 = a4->var0.var0[2];
    v11 = 1065353216;
    C3DAuthoringEnvironmentAppendDebugSegment(var3, 0, &v9, 0, v7, v8);
  }
}

void btC3DDebugDraw::drawLine(btC3DDebugDraw *this, float32x4_t *a2, float32x4_t *a3, const btVector3 *a4, const btVector3 *a5)
{
  var3 = this->var3;
  if (var3)
  {
    var2 = this->var2;
    v8 = vmulq_n_f32(*a2, var2);
    v9 = vmulq_n_f32(*a3, var2);
    v13 = *a4->var0.var0;
    v14 = a4->var0.var0[2];
    v15 = 1065353216;
    v10 = *a5->var0.var0;
    v11 = a5->var0.var0[2];
    v12 = 1065353216;
    C3DAuthoringEnvironmentAppendDebugSegment2(var3, 0, &v13, &v10, 0, v8, v9);
  }
}

void btC3DDebugDraw::drawSphere(btC3DDebugDraw *this, float a2, const btTransform *a3, const btVector3 *a4)
{
  var3 = this->var3;
  if (var3)
  {
    *&v20 = *a4->var0.var0;
    DWORD2(v20) = LODWORD(a4->var0.var0[2]);
    HIDWORD(v20) = 1065353216;
    v7 = a3->var0.var0[1];
    v8 = a3->var0.var0[2];
    var1 = a3->var1;
    v10 = vtrn1q_s32(a3->var0.var0[0], v7);
    v11.n128_u64[0] = vextq_s8(v10, v10, 8uLL).u64[0];
    v10.i64[1] = v8.u32[0];
    v12.n128_u64[0] = vzip2_s32(*a3->var0.var0[0].var0.var0, *v7.i8);
    *&v12.n128_i8[8] = vzip2_s32(*v8.i8, 0);
    v11.n128_u64[1] = vextq_s8(v8, v8, 8uLL).u32[0];
    v16[0] = v10;
    v16[1] = v12;
    v16[2] = v11;
    v17 = *var1.var0.var0;
    v18 = var1.var0.var0[2];
    v19 = 1065353216;
    if (this->var2 == 1.0)
    {
      var2 = 1.0;
    }

    else
    {
      v15.i32[2] = 0;
      v15.i64[0] = 0;
      C3DMatrix4x4GetTranslation(v16, &v15);
      v15 = vmulq_n_f32(v15, this->var2);
      C3DMatrix4x4SetTranslation(v16, v15);
      var3 = this->var3;
      var2 = this->var2;
    }

    *&v14 = a2 * 1.02 * var2;
    C3DAuthoringEnvironmentAppendDebugBoundingSphere(var3, 0, v14 << 32, v16, &v20);
  }
}