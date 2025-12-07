void Mesh::AppendSegment(Mesh *this, SCNVector3 *a2, SCNVector3 *a3, C3DColor4 *a4, C3DColor4 *a5)
{
  v9 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v9;
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a2);
  std::vector<vmesh::Triangle>::push_back[abi:nn200100](this, a3);
  std::vector<CFRange>::push_back[abi:nn200100](this + 24, a4);
  std::vector<CFRange>::push_back[abi:nn200100](this + 24, a5);
  Mesh::AddIndex(this, 0);
  Mesh::AddIndex(this, 1);
  v10 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v10;
}

void Mesh::AppendQuad(Mesh *this, SCNVector3 *a2, SCNVector3 *a3, SCNVector3 *a4, SCNVector3 *a5, C3DColor4 *a6)
{
  v12 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v12;
  Mesh::AppendSegment(this, a2, a3, a6, a6);
  Mesh::AppendSegment(this, a3, a4, a6, a6);
  Mesh::AppendSegment(this, a4, a5, a6, a6);
  Mesh::AppendSegment(this, a5, a2, a6, a6);
  v13 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v13;
}

void Mesh::AppendSphericalCap(Mesh *this, float a2, float a3, const C3DColor4 *a4)
{
  v8 = (this + 48);
  v9 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v9;
  Mesh::AllocateVertices(this, 0x1Au);
  v10 = *this + 12 * *(this + 18);
  *(v10 + 8) = 0;
  *v10 = 0;
  *(*(this + 3) + 16 * *(this + 18)) = *a4;
  LODWORD(v10) = *(this + 18) + 1;
  v11 = *this + 12 * v10;
  *v11 = 0;
  *(v11 + 8) = -a2;
  *(*(this + 3) + 16 * v10) = *a4;
  v12 = __sincosf_stret(a3);
  v13 = -(a2 * v12.__cosval);
  v14 = v12.__sinval * a2;
  v15 = 0.0;
  for (i = 2; i != 26; ++i)
  {
    v17 = v15 * 6.28318531 / 24.0;
    v18 = __sincosf_stret(v17);
    v19 = i + *(this + 18);
    v20 = (*this + 12 * v19);
    *v20 = v14 * v18.__cosval;
    v20[1] = v14 * v18.__sinval;
    v20[2] = v13;
    *(*(this + 3) + 16 * v19) = *a4;
    v15 = v15 + 1.0;
  }

  std::vector<unsigned short>::resize(v8, ((*(this + 7) - *(this + 6)) >> 1) + 76);
  v21 = *(this + 18);
  v22 = *(this + 19);
  v23 = *(this + 6);
  v24 = v21 + 2;
  v25 = 6;
  v26 = v22;
  do
  {
    *(v23 + 2 * v26) = v21 + 1;
    *(v23 + 2 * (v26 + 1)) = v24;
    v26 += 2;
    v24 += 4;
    --v25;
  }

  while (v25);
  v27 = v22 + 13;
  for (j = 3; j != 27; ++j)
  {
    *(v23 + 2 * (v27 - 1)) = v21 + j - 1;
    if (j == 26)
    {
      v29 = 2;
    }

    else
    {
      v29 = j;
    }

    *(v23 + 2 * v27) = v21 + v29;
    v27 += 2;
  }

  v30 = v22 + 61;
  v31 = v21 + 2;
  v32 = 4;
  do
  {
    *(v23 + 2 * (v30 - 1)) = v21;
    *(v23 + 2 * v30) = v31;
    v30 += 2;
    v31 += 6;
    --v32;
  }

  while (v32);
  v33 = (*(this + 7) - v23) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v33;
}

void Mesh::AppendZUpArrow(Mesh *this, const C3DColor4 *a2)
{
  v4 = (this + 48);
  v5 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v5;
  Mesh::AllocateVertices(this, 0x25u);
  std::vector<unsigned short>::resize(v4, ((*(this + 7) - *v4) >> 1) + 180);
  v6 = 0;
  v7 = *(this + 18);
  v8 = *v4;
  v9 = *this;
  v10 = *(this + 19) + 11;
  v37 = vdupq_n_s64(0x3F847AE140000000uLL);
  __asm { FMOV            V10.2S, #5.0 }

  do
  {
    v16 = v6;
    v18 = __sincos_stret((2 * (v6 & 0x7FFFu)) * 3.14159265 / 12.0);
    v17.f64[0] = v18.__cosval;
    *(v8 + 2 * (v10 - 11)) = v7;
    *(v8 + 2 * (v10 - 9)) = v7 + 1;
    *(v8 + 2 * (v10 - 5)) = v7 + 1;
    *(v8 + 2 * (v10 - 3)) = v7 + 2;
    *(v8 + 2 * (v10 - 2)) = v7 + 1;
    v19 = (v9 + 12 * v7);
    v19[1].i32[0] = 0;
    v20 = (v9 + 12 * (v7 + 1));
    v20[1].i32[0] = 1061158912;
    v21 = (v9 + 12 * (v7 + 2));
    v17.f64[1] = v18.__sinval;
    v22 = vcvt_f32_f64(vmulq_f64(v17, v37));
    *v19 = v22;
    *v20 = v22;
    *v21 = vmul_f32(v22, _D10);
    v21[1].i32[0] = 1061158912;
    ++v6;
    if (v16 == 11)
    {
      v23 = -36;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 + v7;
    v25 = v24 + 4;
    *(v8 + 2 * (v10 - 10)) = v24 + 4;
    *(v8 + 2 * (v10 - 8)) = v7;
    *(v8 + 2 * (v10 - 7)) = v24 + 3;
    *(v8 + 2 * (v10 - 6)) = v24 + 4;
    v24 += 5;
    *(v8 + 2 * (v10 - 4)) = v24;
    *(v8 + 2 * (v10 - 1)) = v25;
    *(v8 + 2 * v10) = v24;
    v7 += 3;
    v10 += 12;
  }

  while (v16 < 0xB);
  v26 = 0;
  v28 = *(this + 18);
  v27 = *(this + 19);
  v29 = v28 + 36;
  v30 = *(this + 6);
  v31 = v28 + 32;
  do
  {
    v32 = v27 + v26;
    *(v30 + 2 * (v27 + v26 + 144)) = v29;
    if (v26 == 33)
    {
      v33 = 36;
    }

    else
    {
      v33 = 0;
    }

    *(v30 + 2 * (v32 + 145)) = v33 + v31;
    *(v30 + 2 * (v32 + 146)) = v31 + 3;
    v26 += 3;
    v31 -= 3;
  }

  while (v26 != 36);
  v34 = 0;
  v35 = *this + 12 * v29;
  *v35 = 0;
  *(v35 + 8) = 1065353216;
  do
  {
    *(*(this + 3) + 16 * (v34 + *(this + 18))) = *a2;
    ++v34;
  }

  while (v34 != 37);
  v36 = (*(this + 7) - *(this + 6)) >> 1;
  *(this + 18) = -1431655765 * ((*(this + 1) - *this) >> 2);
  *(this + 19) = v36;
}

void std::vector<SCNVector3>::__append(uint64_t a1, unint64_t a2)
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

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<vmesh::Triangle>>(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

id C3DEntityCFFinalize(uint64_t a1, uint64_t a2)
{
  C3DEntityRemoveAllAnimations(a1, a2);
  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 40) = 0;
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 24) = 0;
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 32) = 0;
  }

  return objc_storeWeak((a1 + 16), 0);
}

void C3DEntityRemoveAllAnimations(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DGetSceneRef(a1, a2);
  v12 = v10;
  if (v10)
  {
    AnimationManager = C3DSceneGetAnimationManager(v10, v11);
    if (AnimationManager)
    {
      C3DAnimationManagerRemoveAllAnimationsForObject(AnimationManager, a1);
    }
  }

  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    C3DOrderedDictionaryApplyFunction(SubAttributeOrderedDictionary, _removeAnimationPlayerSceneRef, v12);
    _C3DEntitySetAttribute(a1, @"kAnimationsKey", 0, 1);
  }
}

void _C3DEntityCFInit(uint64_t a1, uint64_t a2)
{
  v2 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    _C3DEntityCFInit_cold_1(v2);
  }
}

void _C3DEntityCFFinalize(uint64_t a1, uint64_t a2)
{
  v2 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    _C3DEntityCFFinalize_cold_1(v2);
  }
}

uint64_t C3DEntityGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DEntityGetTypeID_onceToken != -1)
  {
    C3DEntityGetTypeID_cold_1();
  }

  return C3DEntityGetTypeID_typeID;
}

double __C3DEntityGetTypeID_block_invoke()
{
  C3DEntityGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DEntityContextClassSceneLink;
  unk_281741908 = kC3DC3DEntityContextClassSceneLink;
  unk_281741918 = *off_282DC6E80;
  qword_281741928 = qword_282DC6E90;
  return result;
}

uint64_t C3DEntityGetName(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

CFStringRef C3DEntitySetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log(0, theString);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 32);
  if (result != theString)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 32) = 0;
    }

    if (theString)
    {
      result = CFStringCreateCopy(*MEMORY[0x277CBECE8], theString);
    }

    else
    {
      result = 0;
    }

    *(a1 + 32) = result;
  }

  return result;
}

uint64_t C3DEntityGetID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

CFTypeRef C3DEntitySetID(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 24);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 24) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 24) = result;
  }

  return result;
}

id *C3DEntityGetObjCWrapper(id *result)
{
  if (result)
  {
    return objc_loadWeak(result + 2);
  }

  return result;
}

id C3DEntitySetObjCWrapper(uint64_t a1, id obj)
{
  if (!a1)
  {
    v4 = scn_default_log(0, obj);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return objc_storeWeak((a1 + 16), obj);
}

uint64_t C3DEntityGetAttributes(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

const __CFDictionary *C3DEntityGetAttribute(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  result = *(v3 + 40);
  if (result)
  {
    return CFDictionaryGetValue(result, key);
  }

  return result;
}

void _C3DEntitySetAttribute(_BOOL8 a1, void *key, const __CFDictionary *a3, int a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, key), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v8, key, v9, v10, v11, v12, v13, v14);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, key);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  if (C3DEntityGetAttribute(v7, key) != a3)
  {
    Mutable = v7[5];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v7[5] = Mutable;
    }

    if (a3)
    {
      CFDictionarySetValue(Mutable, key, a3);
    }

    else
    {
      CFDictionaryRemoveValue(Mutable, key);
      Count = CFDictionaryGetCount(v7[5]);
      if (!Count)
      {
        CFRelease(v7[5]);
        v7[5] = 0;
      }
    }

    if (a4)
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance(Count, v25);
      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", v7, key, 1u);
    }
  }
}

const __CFDictionary *C3DEntityHasAttribute(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DEntityGetAttribute_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  result = *(v3 + 40);
  if (result)
  {
    return (CFDictionaryContainsKey(result, key) != 0);
  }

  return result;
}

void _C3DEntitySetAttributes(uint64_t a1, CFDictionaryRef theDict)
{
  if (!a1)
  {
    v4 = scn_default_log(0, theDict);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 40) = 0;
  }

  if (theDict)
  {
    if (CFDictionaryGetCount(theDict))
    {
      *(a1 + 40) = CFDictionaryCreateMutableCopy(0, 0, theDict);
    }
  }
}

void C3DEntitySetAttributes(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  Value = CFDictionaryGetValue(MutableCopy, @"kIDKey");
  v5 = CFDictionaryGetValue(MutableCopy, @"kNameKey");
  if (Value)
  {
    C3DEntitySetID(a1, Value);
    CFDictionaryRemoveValue(MutableCopy, @"kIDKey");
  }

  if (v5)
  {
    C3DEntitySetName(a1, v5);
    CFDictionaryRemoveValue(MutableCopy, @"kNameKey");
  }

  _C3DEntitySetAttributes(a1, MutableCopy);

  CFRelease(MutableCopy);
}

uint64_t C3DEntityInitWithPropertyList(uint64_t a1, const __CFDictionary *a2)
{
  IsDictionary = C3DCFTypeIsDictionary(a2);
  v6 = IsDictionary;
  if (IsDictionary)
  {
    Value = CFDictionaryGetValue(a2, @"entity-name");
    v8 = CFDictionaryGetValue(a2, @"attributes");
    if (v8)
    {
      v9 = v8;
      v10 = CFDictionaryGetValue(v8, @"kSkinnerKey");
      v11 = CFDictionaryGetValue(v9, @"kMorpherKey");
      if (!(v10 | v11))
      {
        C3DEntitySetAttributes(a1, v9);
        if (Value)
        {
          goto LABEL_10;
        }

LABEL_15:
        v18 = CFDictionaryGetValue(a2, @"id");
        if (v18)
        {
          C3DEntitySetID(a1, v18);
        }

        v19 = CFDictionaryGetValue(a2, @"name");
        if (v19)
        {
          C3DEntitySetName(a1, v19);
        }

        return v6;
      }

      v12 = v11;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v9);
      v14 = MutableCopy;
      if (v10)
      {
        CFDictionaryRemoveValue(MutableCopy, @"kSkinnerKey");
      }

      if (v12)
      {
        CFDictionaryRemoveValue(v14, @"kMorpherKey");
      }

      C3DEntitySetAttributes(a1, v14);
      CFRelease(v14);
    }

    if (Value)
    {
LABEL_10:
      v15 = CFDictionaryGetValue(a2, @"entity-ID");
      C3DEntitySetName(a1, Value);
      C3DEntitySetID(a1, v15);
      return v6;
    }

    goto LABEL_15;
  }

  v16 = scn_default_log(IsDictionary, v5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    C3DEntityInitWithPropertyList_cold_1(v16);
  }

  return v6;
}

__CFDictionary *C3DEntityCopyPropertyList(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetAllocator(a1);
  Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  Attributes = C3DEntityGetAttributes(a1, v8);
  if (Attributes)
  {
    v10 = Attributes;
    CFRetain(Attributes);
  }

  else
  {
    v10 = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  _temporaryRemoveAttribute(v10, @"kCameraKey", v11);
  _temporaryRemoveAttribute(v10, @"kLightKey", v11);
  _temporaryRemoveAttribute(v10, @"kLightmapInfoKey", v11);
  _temporaryRemoveAttribute(v10, @"kConstraints", v11);
  _temporaryRemoveAttribute(v10, @"kAnimationsKey", v11);
  _temporaryRemoveAttribute(v10, @"kActionsKey", v11);
  _temporaryRemoveAttribute(v10, @"kShaderModifiers", v11);
  v12 = C3DCreatePropertyListFromDictionary(v10, a3, a2);
  CFDictionaryApplyFunction(v11, __restoreTemporaryRemovedAttributes, v10);
  CFRelease(v11);
  v13 = a1[3];
  if (v13)
  {
    CFDictionaryAddValue(v12, @"kIDKey", v13);
  }

  v14 = a1[4];
  if (v14)
  {
    CFDictionaryAddValue(v12, @"kNameKey", v14);
  }

  CFDictionarySetValue(Mutable, @"attributes", v12);
  CFRelease(v12);
  CFRelease(v10);
  v15 = a1[3];
  if (v15)
  {
    CFDictionarySetValue(Mutable, @"id", v15);
  }

  v16 = a1[4];
  if (v16)
  {
    CFDictionarySetValue(Mutable, @"name", v16);
  }

  return Mutable;
}

void _temporaryRemoveAttribute(const __CFDictionary *a1, const void *a2, __CFDictionary *a3)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, a2);
    if (Value)
    {
      CFDictionaryAddValue(a3, a2, Value);

      CFDictionaryRemoveValue(a1, a2);
    }
  }
}

void C3DEntityCopyTo(_BOOL8 a1, uint64_t a2)
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
    C3DGeometryCopy_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  ID = C3DEntityGetID(v3, a2);
  C3DEntitySetID(a2, ID);
  Name = C3DEntityGetName(v3, v19);
  C3DEntitySetName(a2, Name);
  Attributes = C3DEntityGetAttributes(v3, v21);
  _C3DEntitySetAttributes(a2, Attributes);
  _C3DEntitySetAttribute(a2, @"_kvc", 0, 1);
  _C3DEntitySetAttribute(a2, @"kAnimationsKey", 0, 1);
}

CFDictionaryRef __CFTypeIsC3DEntity_block_invoke(_BOOL8 a1, uint64_t a2)
{
  v92 = *MEMORY[0x277D85DE8];
  if (CFTypeIsC3DEntity__cfTypeRegistry)
  {
    v2 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      __CFTypeIsC3DEntity_block_invoke_cold_1(v2, a2, v3, v4, v5, v6, v7, v8);
    }
  }

  keys = C3DGeometryGetTypeID(a1, a2);
  TypeID = C3DMeshGetTypeID(keys, v9);
  v54 = C3DAnimationPlayerGetTypeID(TypeID, v10);
  v55 = C3DAnimationGroupGetTypeID(v54, v11);
  v56 = C3DAnimationClusterGetTypeID(v55, v12);
  v57 = C3DKeyframedAnimationGetTypeID(v56, v13);
  v58 = C3DMaterialGetTypeID(v57, v14);
  v59 = C3DImageGetTypeID(v58, v15);
  v60 = C3DMeshElementGetTypeID(v59, v16);
  v61 = C3DNodeGetTypeID(v60, v17);
  v62 = C3DCameraGetTypeID(v61, v18);
  v63 = C3DLightGetTypeID(v62, v19);
  v64 = C3DSkinGetTypeID(v63, v20);
  v65 = C3DSkinnerGetTypeID(v64, v21);
  v66 = C3DGenericSourceGetTypeID(v65, v22);
  v67 = C3DMeshSourceGetTypeID(v66, v23);
  v68 = C3DMorphGetTypeID(v67, v24);
  v69 = C3DMorpherGetTypeID(v68, v25);
  v70 = C3DSceneGetTypeID(v69, v26);
  v71 = C3DParametricGeometryGetTypeID(v70, v27);
  v72 = C3DShapeGeometryGetTypeID(v71, v28);
  v73 = C3DTextGeometryGetTypeID(v72, v29);
  v74 = C3DBezierCurveGeometryGetTypeID(v73, v30);
  v75 = C3DFloorGetTypeID(v74, v31);
  v76 = C3DFXTechniqueGetTypeID(v75, v32);
  v77 = C3DFXMetalProgramGetTypeID();
  v78 = C3DFXGLSLProgramGetTypeID(v77, v33);
  v79 = C3DLODGetTypeID(v78, v34);
  v80 = C3DParticleSystemGetTypeID(v79, v35);
  v81 = C3DConstraintIKGetTypeID(v80, v36);
  v82 = C3DConstraintLookAtGetTypeID(v81, v37);
  v83 = C3DConstraintBillboardGetTypeID(v82, v38);
  v84 = C3DConstraintProceduralGetTypeID(v83, v39);
  v85 = C3DConstraintConstantScaleGetTypeID(v84, v40);
  v86 = C3DConstraintDistanceGetTypeID(v85, v41);
  v87 = C3DConstraintAccelerationGetTypeID(v86, v42);
  v88 = C3DConstraintSliderGetTypeID(v87, v43);
  v89 = C3DConstraintReplicatorGetTypeID(v88, v44);
  v90 = C3DConstraintAvoidOccluderGetTypeID(v89, v45);
  v47 = C3DKeyValueStoreGetTypeID(v90, v46);
  v48 = 0;
  v91 = v47;
  memset(v51, 0, sizeof(v51));
  v49 = vdupq_n_s64(1uLL);
  do
  {
    v51[v48++] = v49;
  }

  while (v48 != 20);
  result = CFDictionaryCreate(0, &keys, v51, 40, 0, 0);
  CFTypeIsC3DEntity__cfTypeRegistry = result;
  return result;
}

BOOL C3DEntityIsTypeSupportingShaderModifiers(CFTypeRef cf, uint64_t a2)
{
  if (!cf)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = CFGetTypeID(cf);
  IsC3DGeometry = CFTypeIsC3DGeometry(v11, v12);
  return IsC3DGeometry || v11 == C3DMaterialGetTypeID(IsC3DGeometry, v14);
}

const __CFDictionary *C3DEntityGetAnimations(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
}

const __CFDictionary *_C3DEntityGetSubAttributeOrderedDictionary(uint64_t a1, void *key, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, key);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, key);
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a3)
  {
    Value = C3DOrderedDictionaryCreate();
    _C3DEntitySetAttribute(a1, key, Value, 1);
    v16 = CFGetRetainCount(Value);
    if (v16 <= 1)
    {
      v18 = scn_default_log(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        _C3DEntityGetSubAttributeOrderedDictionary_cold_2(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    CFRelease(Value);
  }

  return Value;
}

void C3DEntityAddAnimationForKey(_BOOL8 a1, void *a2, const void *a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
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
    _C3DAnimationManagerAddAnimationForKey_cold_2(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  C3DEntityRemoveAnimationForKey(v5, a3, 1);
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(v5, @"kAnimationsKey", 1);
  C3DOrderedDictionarySetValue(SubAttributeOrderedDictionary, a3, a2);
  v30 = C3DGetScene(v5, v29);
  if (v30)
  {
    v32 = v30;
    AnimationManager = C3DSceneGetAnimationManager(v30, v31);
    C3DAddSceneRef(a2, v32);
    C3DAnimationManagerAddAnimationPlayerForKey(AnimationManager, a2, v5, a3);
  }
}

void C3DEntityRemoveAnimationForKey(_BOOL8 a1, const void *a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
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
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(v5, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v22 = SubAttributeOrderedDictionary;
    CFRetain(SubAttributeOrderedDictionary);
    v24 = C3DGetScene(v5, v23);
    v26 = v24;
    if (v24)
    {
      AnimationManager = C3DSceneGetAnimationManager(v24, v25);
      if (a3)
      {
        C3DAnimationManagerExecRemoveAnimation(AnimationManager, v5, a2);
      }

      else
      {
        C3DAnimationManagerRemoveAnimationForKey(AnimationManager, v5);
      }
    }

    Value = C3DOrderedDictionaryGetValue(v22, a2);
    if (Value)
    {
      C3DRemoveSceneRef(Value, v26);
      C3DOrderedDictionaryRemoveValue(v22, a2);
      if ((a3 & 1) == 0 && !C3DOrderedDictionaryGetCount(v22))
      {
        _C3DEntitySetAttribute(v5, @"kAnimationsKey", 0, 1);
      }
    }

    CFRelease(v22);
  }
}

void C3DEntityFadeAndRemoveAllAnimations(void *a1, uint64_t a2, double a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DGetSceneRef(a1, a2);
  v14 = v12;
  if (v12)
  {
    AnimationManager = C3DSceneGetAnimationManager(v12, v13);
    if (AnimationManager)
    {
      C3DAnimationManagerFadeAndRemoveAllAnimationsForObject(AnimationManager, a1, a3);
    }
  }

  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    C3DOrderedDictionaryApplyFunction(SubAttributeOrderedDictionary, _removeAnimationPlayerSceneRef, v14);
    _C3DEntitySetAttribute(a1, @"kAnimationsKey", 0, 1);
  }
}

void C3DEntityFadeAndRemoveAnimationForKey(_BOOL8 a1, const void *a2, double a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
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
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(v5, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v22 = SubAttributeOrderedDictionary;
    CFRetain(SubAttributeOrderedDictionary);
    v24 = C3DGetScene(v5, v23);
    v26 = v24;
    if (v24)
    {
      AnimationManager = C3DSceneGetAnimationManager(v24, v25);
      C3DAnimationManagerFadeAndRemoveAnimationForKey(AnimationManager, v5, a2, a3);
    }

    Value = C3DOrderedDictionaryGetValue(v22, a2);
    if (Value)
    {
      C3DRemoveSceneRef(Value, v26);
      C3DOrderedDictionaryRemoveValue(v22, a2);
      if (!C3DOrderedDictionaryGetCount(v22))
      {
        _C3DEntitySetAttribute(v5, @"kAnimationsKey", 0, 1);
      }
    }

    CFRelease(v22);
  }
}

uint64_t C3DEntityAddBinding(_BOOL8 a1, void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
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
    C3DValueConcat_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  SubAttributeArray = _C3DEntityGetSubAttributeArray(v3, @"kBindingsKey", 1);
  CFArrayAppendValue(SubAttributeArray, a2);
  result = C3DGetScene(v3, v20);
  if (result)
  {
    AnimationManager = C3DSceneGetAnimationManager(result, v22);
    return C3DAnimationManagerAddBinding(AnimationManager, v3, [a2 keyPathDst], objc_msgSend(a2, "sourceObject"), objc_msgSend(a2, "keyPathSrc"), objc_msgSend(a2, "options"));
  }

  return result;
}

const __CFDictionary *_C3DEntityGetSubAttributeArray(uint64_t a1, void *key, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, key);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    Value = CFDictionaryGetValue(v14, key);
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    Value = 0;
  }

  if (a3)
  {
    Value = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    _C3DEntitySetAttribute(a1, key, Value, 1);
    CFRelease(Value);
  }

  return Value;
}

void C3DEntityRemoveAllBindings(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DGetScene(a1, a2);
  if (v10)
  {
    AnimationManager = C3DSceneGetAnimationManager(v10, v11);
    if (AnimationManager)
    {
      C3DAnimationManagerRemoveAllBindings(AnimationManager, a1);
    }
  }

  _C3DEntitySetAttribute(a1, @"kBindingsKey", 0, 1);
}

void C3DEntityRemoveBindingWithKeyPath(_BOOL8 a1, const __CFString *a2)
{
  v3 = a1;
  v37 = *MEMORY[0x277D85DE8];
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
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
    C3DEntityRemoveBindingWithKeyPath_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  SubAttributeArray = _C3DEntityGetSubAttributeArray(v3, @"kBindingsKey", 0);
  if (SubAttributeArray)
  {
    v20 = SubAttributeArray;
    v21 = SubAttributeArray;
    v23 = C3DGetScene(v3, v22);
    if (v23)
    {
      AnimationManager = C3DSceneGetAnimationManager(v23, v24);
      C3DAnimationManagerRemoveBinding(AnimationManager, v3, a2);
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v26 = [(__CFDictionary *)v20 copy];
    v27 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v33;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v33 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v32 + 1) + 8 * i);
          if (objc_msgSend_isEqualToString_([v31 keyPathDst]))
          {
            [(__CFDictionary *)v20 removeObject:v31];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v28);
    }

    if (![(__CFDictionary *)v20 count])
    {
      _C3DEntitySetAttribute(v3, @"kBindingsKey", 0, 1);
    }
  }
}

void C3DEntityAddAction(_BOOL8 a1, const void *a2, void *a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
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
    C3DEntityAddAction_cold_2(v13, a2, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  C3DEntityRemoveActionForKey(v5, a3);
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(v5, @"kActionsKey", 1);
  C3DOrderedDictionarySetValue(SubAttributeOrderedDictionary, a3, a2);
  v30 = C3DGetScene(v5, v29);
  if (v30)
  {
    AnimationManager = C3DSceneGetAnimationManager(v30, v31);
    C3DAnimationManagerAddAction(AnimationManager, v5, a2);
  }
}

void C3DEntityRemoveActionForKey(_BOOL8 a1, void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
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
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(v3, @"kActionsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v20 = SubAttributeOrderedDictionary;
    CFRetain(SubAttributeOrderedDictionary);
    v22 = C3DGetScene(v3, v21);
    if (v22)
    {
      AnimationManager = C3DSceneGetAnimationManager(v22, v23);
      C3DAnimationManagerRemoveActionWithKey(AnimationManager, v3, a2);
    }

    C3DOrderedDictionaryRemoveValue(v20, a2);
    if (!C3DOrderedDictionaryGetCount(v20))
    {
      _C3DEntitySetAttribute(v3, @"kActionsKey", 0, 1);
    }

    CFRelease(v20);
  }
}

void _C3DEntityCleanupActionForKey(_BOOL8 a1, const void *a2, const char *a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(v5, @"kActionsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v22 = SubAttributeOrderedDictionary;
    if (CFDictionaryGetValue(SubAttributeOrderedDictionary, a3) == a2)
    {
      C3DOrderedDictionaryRemoveValue(v22, a3);
      if (!C3DOrderedDictionaryGetCount(v22))
      {
        _C3DEntitySetAttribute(v5, @"kActionsKey", 0, 1);
      }
    }
  }
}

void C3DEntityRemoveAllActions(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DGetScene(a1, a2);
  if (v10)
  {
    AnimationManager = C3DSceneGetAnimationManager(v10, v11);
    if (AnimationManager)
    {
      C3DAnimationManagerRemoveActionsForObject(AnimationManager, a1);
    }
  }

  _C3DEntitySetAttribute(a1, @"kActionsKey", 0, 1);
}

void C3DEntitySetShaderModifiers(void *a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  _C3DEntitySetAttribute(a1, @"kShaderModifiers", a2, 1);
  v12 = CFGetTypeID(a1);
  IsC3DGeometry = CFTypeIsC3DGeometry(v12, v13);
  if (IsC3DGeometry)
  {
    _C3DGeometryShadingDidUpdate(a1, v15);
  }

  else if (v12 == C3DMaterialGetTypeID(IsC3DGeometry, v15))
  {
    _C3DMaterialShadingDidUpdate(a1, v16);
  }
}

const __CFDictionary *C3DEntityGetShaderModifiers(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return C3DEntityGetAttribute(a1, @"kShaderModifiers");
}

const __CFArray *C3DEntityHasShaderModifiers(_BOOL8 a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  result = C3DEntityGetShaderModifiers(a1, a2);
  if (result)
  {
    v12 = result;
    Count = CFArrayGetCount(result);
    v14 = Count - 1;
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v15 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
        v18 = C3DShaderModifierGetEntryPoint(ValueAtIndex, v17) == v2;
        result = v18;
        v18 = v18 || v14 == v15++;
      }

      while (!v18);
    }
  }

  return result;
}

void C3DEntitySetShadableMinimumMTLLanguageVersion(_BOOL8 a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  _C3DEntitySetAttribute(a1, @"kShadableMinimumMTLLanguageVersionKey", a2, 1);
}

const __CFDictionary *C3DEntityGetShadableMinimumMTLLanguageVersion(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return C3DEntityGetAttribute(a1, @"kShadableMinimumMTLLanguageVersionKey");
}

void C3DEntitySetValueForKey(_BOOL8 a1, void *a2, __int16 *a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
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
    C3DEntitySetValueForKey_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  KeyValueStore = _C3DEntityGetKeyValueStore(v5, 1);
  C3DKeyValueStoreSetValueForKey(KeyValueStore, a2, a3);
}

const __CFDictionary *_C3DEntityGetKeyValueStore(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  Value = *(a1 + 40);
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, @"_kvc");
    v5 = Value;
    if (Value)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if (v2)
  {
    v5 = C3DKeyValueStoreCreate(Value, a2);
    _C3DEntitySetAttribute(a1, @"_kvc", v5, 1);
    CFRelease(v5);
  }

  return v5;
}

void C3DEntityResetValueForKey(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
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
    C3DEntitySetValueForKey_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  KeyValueStore = _C3DEntityGetKeyValueStore(v3, 1);
  C3DKeyValueStoreResetValueForKey(KeyValueStore, a2);
}

const __CFDictionary *C3DEntityGetValueForKey(_BOOL8 a1, const void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
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
    C3DEntitySetValueForKey_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  result = *(v3 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return C3DKeyValueStoreGetValueForKey(result, a2);
    }
  }

  return result;
}

const __CFDictionary *C3DEntityEnumerateKeyValuesWithBlock(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return C3DKeyValueStoreEnumerate(result, a2);
    }
  }

  return result;
}

const __CFDictionary *C3DEntityEnumerateKeyValuesWithBlockBySortingKeys(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DEntityRemoveAllAnimations_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"_kvc");
    if (result)
    {
      return C3DKeyValueStoreEnumerateBySortingKeys(result, a2);
    }
  }

  return result;
}

uint64_t C3DEntityResolveKeypathInKeyValueStore(uint64_t a1, const __CFArray *a2, int a3, uint64_t a4)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(v4, @"_kvc");
  if (!Value)
  {
    return 0;
  }

  return C3DKeyValueStoreSetupModelTargetWithKey(Value, a2, a3, a4);
}

uint64_t C3DEntityGetValueStorageModificationCount(void *a1)
{
  v2 = a1[5];
  if (v2 && (Value = CFDictionaryGetValue(v2, @"_kvc")) != 0)
  {
    Timestamp = C3DKeyValueStoreGetTimestamp(Value);
  }

  else
  {
    Timestamp = 0;
  }

  v5 = CFGetTypeID(a1);
  if (v5 == C3DMaterialGetTypeID(v5, v6))
  {
    return C3DMaterialGetValueStorageModificationCount(a1, v7) + Timestamp;
  }

  return Timestamp;
}

const __CFDictionary *_C3DEntityWillRemoveFromScene(uint64_t a1, uint64_t a2)
{
  result = _C3DEntityGetSubAttributeOrderedDictionary(a1, @"kAnimationsKey", 0);
  if (result)
  {

    return C3DOrderedDictionaryApplyFunction(result, _removeAnimationPlayerSceneRef, a2);
  }

  return result;
}

const __CFDictionary *_C3DEntityFinalizeAddToScene(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  v33 = *MEMORY[0x277D85DE8];
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DEntityRemoveAllAnimations_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
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
    C3DSceneCreateHitTestResultsWithSegment_cold_1(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  AnimationManager = C3DSceneGetAnimationManager(a2, a2);
  SubAttributeOrderedDictionary = _C3DEntityGetSubAttributeOrderedDictionary(v3, @"kAnimationsKey", 0);
  if (SubAttributeOrderedDictionary)
  {
    v30 = v3;
    v31 = AnimationManager;
    v32 = a2;
    C3DOrderedDictionaryApplyFunction(SubAttributeOrderedDictionary, _fillAnimationManager, &v30);
  }

  v20 = _C3DEntityGetSubAttributeOrderedDictionary(v3, @"kActionsKey", 0);
  if (v20)
  {
    v30 = v3;
    v31 = AnimationManager;
    C3DOrderedDictionaryApplyFunction(v20, _fillAnimationManagerWithActions, &v30);
  }

  result = _C3DEntityGetSubAttributeArray(v3, @"kBindingsKey", 0);
  if (result)
  {
    v22 = result;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    result = [(__CFDictionary *)result countByEnumeratingWithState:&v26 objects:&v30 count:16];
    if (result)
    {
      v23 = result;
      v24 = *v27;
      do
      {
        v25 = 0;
        do
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(v22);
          }

          C3DAnimationManagerAddBinding(AnimationManager, v3, [*(*(&v26 + 1) + 8 * v25) keyPathDst], objc_msgSend(*(*(&v26 + 1) + 8 * v25), "sourceObject"), objc_msgSend(*(*(&v26 + 1) + 8 * v25), "keyPathSrc"), objc_msgSend(*(*(&v26 + 1) + 8 * v25), "options"));
          v25 = (v25 + 1);
        }

        while (v23 != v25);
        result = [(__CFDictionary *)v22 countByEnumeratingWithState:&v26 objects:&v30 count:16];
        v23 = result;
      }

      while (result);
    }
  }

  return result;
}

void _fillAnimationManager(const void *a1, void *cf, uint64_t a3)
{
  v6 = *a3;
  v5 = *(a3 + 8);
  C3DAddSceneRef(cf, *(a3 + 16));

  C3DAnimationManagerAddAnimationPlayerForKey(v5, cf, v6, a1);
}

void C3D::MBTileMaxPass::setup(C3D::MBTileMaxPass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = (this + 32);
  v3 = (*(*this + 88))(this);
  v4 = C3D::PassDescriptor::inputAtIndex(v2, 0);
  *(v4 + 8) = "VELOCITY";
  *(v4 + 16) = *(v3 + 8);
  *(v4 + 18) = *(v3 + 12);
  v5 = C3D::PassDescriptor::outputAtIndex(v2, 0);
  *(v5 + 8) = "MB-TileMax";
  *(v5 + 28) = 115;
  *(v5 + 16) = (*(v3 + 8) * 0.5);
  *(v5 + 18) = (*(v3 + 12) * 0.5);
  v6 = fmax((*(v3 + 8) * 0.5), (*(v3 + 12) * 0.5));
  v7 = (floorf(log2f(v6)) + 1.0);
  if (v7 >= 6)
  {
    LOBYTE(v7) = 6;
  }

  *(v5 + 30) = v7;
}

void *C3D::MBTileMaxPass::compile(C3D::MBTileMaxPass *this, uint64_t a2)
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

void *C3D::MBTileMaxPass::execute(C3D::Pass *a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v3->_textures[0] != v4)
  {
    v3->_textures[0] = v4;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v5 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v7 = v5;
  if (v3->_textures[1] != v5)
  {
    v3->_textures[1] = v5;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v8 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 16, v6);
  v9 = [(SCNMTLOpenSubdivComputeEvaluator *)v8 computeEvaluator];
  SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v7, v9);
  result = [v7 mipmapLevelCount];
  if (result >= 2)
  {
    v11 = 1;
    v12 = v7;
    do
    {
      v13 = [v7 newTextureViewWithPixelFormat:objc_msgSend(v7 textureType:"pixelFormat") levels:objc_msgSend(v7 slices:"textureType"), v11, 1, 0, 1];
      v15 = v13;
      if (v3->_textures[0] != v12)
      {
        v3->_textures[0] = v12;
        v3->_texturesToBind[0] |= 1uLL;
      }

      if (v3->_textures[1] != v13)
      {
        v3->_textures[1] = v13;
        v3->_texturesToBind[0] |= 2uLL;
      }

      v16 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 16, v14);
      v17 = [(SCNMTLOpenSubdivComputeEvaluator *)v16 computeEvaluator];
      SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v15, v17);

      ++v11;
      result = [v7 mipmapLevelCount];
      v12 = v15;
    }

    while (v11 < result);
  }

  return result;
}

void C3D::MBTileMaxPassResource::~MBTileMaxPassResource(C3D::MBTileMaxPassResource *this)
{
  *this = &unk_282DC6F18;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC6F18;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void _C3DEngineNotificationQueueCFFinalize(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 16) = 0;
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 24) = 0;
  }

  os_unfair_lock_unlock((a1 + 32));
}

uint64_t __C3DEngineNotificationQueueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DEngineNotificationQueueGetTypeID_typeID = result;
  return result;
}

uint64_t C3DEngineNotificationQueueCreate(uint64_t a1)
{
  if (C3DEngineNotificationQueueGetTypeID_onceToken != -1)
  {
    C3DEngineNotificationQueueCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DEngineNotificationQueueGetTypeID_typeID, 48);
  v3 = *MEMORY[0x277CBECE8];
  v4 = MEMORY[0x277CBF150];
  *(Instance + 16) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  *(Instance + 24) = CFDictionaryCreateMutable(v3, 0, 0, v4);
  *(Instance + 56) = a1;
  *(Instance + 32) = 0;
  return Instance;
}

void C3DEngineNotificationQueueEnqueueEvent(uint64_t a1, int a2, const void *a3, const void *a4)
{
  v48 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 32));
  if (!a3 && (v10 = scn_default_log(v8, v9), v8 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v10, v9, v11, v12, v13, v14, v15, v16);
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  v17 = scn_default_log(v8, v9);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
  {
    C3DEngineNotificationQueueEnqueueEvent_cold_2(v17, v18, v19, v20, v21, v22, v23, v24);
  }

LABEL_6:
  TypeID = CFGetTypeID(a3);
  IsC3DGeometry = CFTypeIsC3DGeometry(TypeID, v26);
  if (IsC3DGeometry)
  {
    TypeID = C3DGeometryGetTypeID(IsC3DGeometry, v28);
  }

  Value = CFDictionaryGetValue(*(a1 + 16), TypeID);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], 0);
    CFDictionarySetValue(*(a1 + 16), TypeID, Value);
    CFRelease(Value);
  }

  v30 = CFDictionaryGetValue(Value, a3);
  v32 = v30;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v33 = v30 & 0xFFFFFF00;
        v34 = 2049;
      }

      else
      {
        v33 = v30 & 0xFFFFFB00;
        v34 = 1027;
      }
    }

    else
    {
      switch(a2)
      {
        case 7:
          v33 = v30 & 0xFFFFFF00;
          v34 = 2051;
          break;
        case 8:
          v37 = ((v30 & 0xFFF7FF00) + 524289);
          goto LABEL_34;
        case 9:
          v33 = v30 & 0xFFFFFD00;
          v34 = 516;
          break;
        default:
          goto LABEL_35;
      }
    }

LABEL_33:
    v37 = (v33 | v34);
LABEL_34:
    CFDictionarySetValue(Value, a3, v37);
    goto LABEL_35;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v33 = v30 & 0xFFFFFD00;
      v34 = 514;
    }

    else
    {
      v33 = v30 & 0xFFFFFB00;
      v34 = 1025;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    v35 = v30 & 0xFFEFFF00;
    if ((v30 & 0x200) != 0)
    {
      v36 = scn_default_log(v30, v31);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v46 = 134217984;
        v47 = a3;
        _os_log_impl(&dword_21BEF7000, v36, OS_LOG_TYPE_DEFAULT, "Warning: adding a node that was just removed %p", &v46, 0xCu);
      }
    }

    v37 = (v35 + 1048577);
    goto LABEL_34;
  }

  if (a2 != 2)
  {
    goto LABEL_35;
  }

  if (a4)
  {
    if (CFEqual(a4, @"kMeshKey"))
    {
      v33 = v32 & 0xFFFFEF00;
      v34 = 4097;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"kCameraKey"))
    {
      v33 = v32 & 0xFFFFDF00;
      v34 = 8193;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"kLightKey"))
    {
      v33 = v32 & 0xFFFFBF00;
      v34 = 16385;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"kDeformerStackKey"))
    {
      v33 = v32 & 0xFFFDFF00;
      v34 = 131073;
      goto LABEL_33;
    }

    if (CFEqual(a4, @"rendererDelegate"))
    {
      v33 = v32 & 0xFFFF7F00;
      v34 = 32769;
      goto LABEL_33;
    }
  }

  else
  {
    v38 = scn_default_log(v30, v31);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      C3DEngineNotificationQueueEnqueueEvent_cold_3(v38, v39, v40, v41, v42, v43, v44, v45);
    }
  }

LABEL_35:
  if ((*(a1 + 48) & 1) == 0)
  {
    *(a1 + 48) = 1;
    _dispatchAutoFlush(a1);
  }

  os_unfair_lock_unlock((a1 + 32));
}

void _dispatchAutoFlush(uint64_t a1)
{
  if (CFDictionaryGetCount(*(a1 + 16)))
  {
    v2 = objc_alloc_init(C3DEngineNotificationQueueTransientWrapper);
    [(C3DEngineNotificationQueueTransientWrapper *)v2 setEngineNotificationQueue:a1];
    v3 = dispatch_time(0, 1000000000);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = ___dispatchAutoFlush_block_invoke;
    v4[3] = &unk_2782FFC18;
    v4[4] = v2;
    v4[5] = a1;
    dispatch_after(v3, MEMORY[0x277D85CD0], v4);
  }
}

void C3DEngineNotificationQueueStartObserving(_BOOL8 started, uint64_t a2)
{
  v2 = started;
  if (!started)
  {
    v3 = scn_default_log(0, a2);
    started = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (started)
    {
      C3DEngineNotificationQueueStartObserving_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  SharedInstance = C3DNotificationCenterGetSharedInstance(started, a2);
  C3DNotificationCenterAddObserver(SharedInstance, v2, __EnqueueNotification, @"kC3DNotificationEntityAttributeDidChange", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v2[49] = 1;
}

void __EnqueueNotification(int a1, uint64_t a2, CFTypeRef cf1, void *a4, const void *a5)
{
  v8 = CFEqual(cf1, @"kC3DNotificationEntityAttributeDidChange");
  if (v8)
  {
    v10 = C3DGetScene(a4, v9);
    v11 = *(a2 + 56);
    if (v10 == v11 && v11 != 0)
    {

      C3DEngineNotificationQueueEnqueueEvent(a2, 2, a4, a5);
    }
  }

  else
  {
    v13 = scn_default_log(v8, v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __EnqueueNotification_cold_1(v13);
    }
  }
}

void C3DEngineNotificationQueueStopObserving(_BOOL8 result, uint64_t a2)
{
  v2 = result;
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (result)
    {
      C3DEngineNotificationQueueStartObserving_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (v2[49] == 1)
  {
    SharedInstance = C3DNotificationCenterGetSharedInstance(result, a2);
    C3DNotificationCenterRemoveObserver(SharedInstance, v2, @"kC3DNotificationEntityAttributeDidChange", 0);
  }
}

void C3DEngineNotificationQueueSwapForApplying(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DEngineNotificationQueueEnqueueEvent_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  CFDictionaryRemoveAllValues(*(a1 + 24));
  os_unfair_lock_lock((a1 + 32));
  *(a1 + 16) = vextq_s8(*(a1 + 16), *(a1 + 16), 8uLL);
  os_unfair_lock_unlock((a1 + 32));
  *(a1 + 50) = 0;
  *(a1 + 40) = CACurrentMediaTime();
}

void C3DEngineNotificationQueueApplyForEntityType(uint64_t a1, const void *a2, void (__cdecl *a3)(const void *, const void *, void *), void *a4)
{
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value)
  {

    CFDictionaryApplyFunction(Value, a3, a4);
  }
}

void ___dispatchAutoFlush_block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) engineNotificationQueue];
  if (v2)
  {
    v3 = v2;
    if (CACurrentMediaTime() - *(v2 + 40) >= 1.0)
    {
      *(v3 + 48) = 0;
      os_unfair_lock_lock((*(a1 + 40) + 32));
      v5 = *(v3 + 16);
      *(v3 + 16) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
      if (CFDictionaryGetCount(v5) >= 1)
      {
        *(v3 + 50) = 1;
      }

      os_unfair_lock_unlock((*(a1 + 40) + 32));

      CFRelease(v5);
    }

    else
    {
      os_unfair_lock_lock((*(a1 + 40) + 32));
      _dispatchAutoFlush(v3);
      v4 = (*(a1 + 40) + 32);

      os_unfair_lock_unlock(v4);
    }
  }
}

void _C3DDynamicBatchingSystemCFFinalize(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);

  free(v2);
}

uint64_t __C3DDynamicBatchingSystemGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DDynamicBatchingSystemGetTypeID_typeID = result;
  return result;
}

uint64_t C3DDynamicBatchingSystemCreate()
{
  if (C3DDynamicBatchingSystemGetTypeID_onceToken != -1)
  {
    C3DDynamicBatchingSystemCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DDynamicBatchingSystemGetTypeID_typeID, 32);
  *(Instance + 16) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  Integer = C3DPreferencesGetInteger(4);
  if (Integer)
  {
    v2 = Integer;
  }

  else
  {
    v2 = 1000;
  }

  C3DDynamicBatchingSystemSetMaxBatchSize(Instance, v2);
  return Instance;
}

void *C3DDynamicBatchingSystemSetMaxBatchSize(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a1 + 32))
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DDynamicBatchingSystemSetMaxBatchSize_cold_1(v4);
    }
  }

  if (v2 <= 1)
  {
    v2 = 1;
  }

  free(*(a1 + 24));
  result = malloc_type_malloc(8 * v2, 0x2004093837F09uLL);
  *(a1 + 32) = 0;
  *(a1 + 40) = v2;
  *(a1 + 24) = result;
  return result;
}

BOOL C3DDynamicBatchingSystemCurrentBatchAppend(void *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = a1[5];
  if (v2 >= v3)
  {
    v6 = scn_default_log(a1, a2);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&dword_21BEF7000, v6, OS_LOG_TYPE_DEFAULT, "Warning: overflow the max batch size boundary", v8, 2u);
      return 0;
    }
  }

  else
  {
    v4 = a1[3];
    a1[4] = v2 + 1;
    *(v4 + 8 * v2) = a2;
    return v2 + 1 < v3;
  }

  return result;
}

uint64_t C3DDynamicBatchingSystemGetCurrentBatchNodes(uint64_t a1, void *a2)
{
  v3 = a1 + 24;
  result = *(a1 + 24);
  *a2 = *(v3 + 8);
  return result;
}

void SCNCAction::SCNCAction(SCNCAction *this)
{
  this->var4 = 0;
  this->var1 = 0.0;
  this->var2 = 0;
  this->var0 = &unk_282DC6F78;
  *&this->var5 = xmmword_21C2A2860;
  this->var7 = 0.0;
  this->var8 = 0.0;
  this->var9 = -1.0;
  *&this->var10 = 0;
  *&this->var12 = 0u;
  *&this->var14 = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *&this->var16 = _Q0;
  this->var18 = 1.0;
}

void SCNCAction::SCNCAction(SCNCAction *this, const SCNCAction *a2)
{
  this->var0 = &unk_282DC6F78;
  this->var1 = 0.0;
  this->var2 = a2->var2;
  this->var4 = 1;
  *&this->var5 = *&a2->var5;
  *&this->var7 = *&a2->var7;
  this->var9 = -1.0;
  *&this->var10 = *&a2->var10;
  this->var12 = 0;
  this->var13 = 0;
  this->var14 = a2->var14;
  __asm { FMOV            V1.2D, #1.0 }

  *&this->var15 = xmmword_21C280270;
  *&this->var17 = _Q1;
}

void SCNCAction::~SCNCAction(SCNCAction *this)
{
  this->var0 = &unk_282DC6F78;
  var13 = this->var13;
  if (var13)
  {
    CFRelease(var13);
  }

  var12 = this->var12;
  if (var12)
  {
    _Block_release(var12);
  }

  var2 = this->var2;
  if (var2)
  {
    _Block_release(var2);
  }
}

{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

double SCNCAction::cpp_timeByApplyingTimingfunction(SCNCAction *this, double result, uint64_t a3)
{
  if (this->var14 || this->var2)
  {
    v4 = SCNCAction::cpp_ratioForTime(this, result, a3);
    var1 = this->var1;
    v6 = var1;
    if ((LODWORD(v6) & 0x60000000) == 0)
    {
      var1 = 0.000000999999997;
    }

    return this->var5 + v4 * var1;
  }

  return result;
}

double SCNCAction::cpp_ratioForTime(SCNCAction *this, double a2, uint64_t a3)
{
  var1 = this->var1;
  v4 = var1;
  if ((LODWORD(v4) & 0x60000000) == 0)
  {
    var1 = 0.000000999999997;
  }

  var14 = this->var14;
  v6 = this->var15 + this->var18 * ((a2 - this->var5) / var1);
  v7 = LODWORD(v6);
  if (var14 <= 1)
  {
    if (var14 == 1)
    {
      v8 = v6;
      if (v7 > 0x3F800000)
      {
        v8 = 1.0;
      }

      if (v7 < 0)
      {
        v8 = 0.0;
      }

      v9 = 2.0 - v8;
LABEL_17:
      v6 = v8 * (v8 * v9);
      v7 = LODWORD(v6);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (var14 != 2)
  {
    if (var14 == 3)
    {
      v8 = v6;
      if (v7 > 0x3F800000)
      {
        v8 = 1.0;
      }

      if (v7 < 0)
      {
        v8 = 0.0;
      }

      v9 = v8 * -2.0 + 3.0;
      goto LABEL_17;
    }

LABEL_18:
    v10 = v7 > 0x3F800000;
    v11 = 1.0;
    goto LABEL_19;
  }

  v11 = 1.0;
  v14 = (1.0 - v6);
  if (v7 > 0x3F800000)
  {
    v14 = 0.0;
  }

  if (v7 < 0)
  {
    v14 = 1.0;
  }

  v6 = -((2.0 - v14) * v14) * v14 + 1.0;
  v7 = LODWORD(v6);
  v10 = LODWORD(v6) > 0x3F800000;
LABEL_19:
  if (v10)
  {
    v6 = v11;
  }

  if (v7 < 0)
  {
    v6 = 0.0;
  }

  var2 = this->var2;
  if (var2)
  {
    if ((COERCE_UNSIGNED_INT(v6 + -1.0) & 0x60000000) != 0)
    {
      var2[2](var2, a3);
    }

    else
    {
      return 1.0;
    }
  }

  return v6;
}

void SCNCAction::cpp_updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v6.n128_f32[0] = SCNCAction::cpp_ratioForTime(this, a3, a2);
  if ((COERCE_UNSIGNED_INT(v6.n128_f32[0] + -1.0) & 0x60000000) == 0)
  {
    v6.n128_f64[0] = a3;

    SCNCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

SCNCAction *SCNCAction::didFinishWithTargetAtTime(SCNCAction *this, SCNNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v5 = this;
  if (!this->var10)
  {
    this->var10 = 1;
    this = this->var12;
    if (this)
    {
      this = (this->var2)();
    }
  }

  if (v5->var4)
  {
    v6 = *(v5->var0 + 14);
    a3.n128_u64[0] = v3;

    return v6(v5, a2, a3);
  }

  return this;
}

SCNCAction *SCNCAction::cpp_wasAddedToTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  v3 = this;
  this->var10 = 0;
  var7 = this->var7;
  var8 = this->var8;
  v6 = var8;
  if ((LODWORD(v6) & 0x60000000) != 0)
  {
    v7 = var8 * 0.5;
    v8 = var7 - v7;
    v9 = v7 + var7;
    this = rand();
    var7 = v8 + this / 2147483650.0 * (v9 - v8);
    if (var7 < 0.0)
    {
      var7 = 0.0;
    }
  }

  v3->var1 = var7;
  return this;
}

SCNCAction *SCNCAction::cpp_willStartWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  this->var5 = a3;
  this->var15 = 0.0;
  *&this->var10 = 256;
  return this;
}

double SCNCAction::cpp_willResumeWithTargetAtTime(SCNCAction *this, SCNNode *a2, double result)
{
  var6 = this->var6;
  if (var6 > 0.0)
  {
    result = result - var6 + this->var5;
    this->var5 = result;
    this->var6 = -1.0;
  }

  return result;
}

double SCNCAction::cpp_timeJumpWithTarget(SCNCAction *this, SCNNode *a2, double a3)
{
  result = this->var5 + a3;
  this->var5 = result;
  return result;
}

uint64_t SCNCAction::cpp_didFinishWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  this->var10 = 1;
  result = C3DIsRunningInEditor();
  if ((result & 1) == 0)
  {
    this->var11 = 0;
  }

  return result;
}

uint64_t SCNCAction::updateWithTargetForTime(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 7))(this, a2, a3);
  }

  else
  {
    return [this->var3 updateWithTarget:a2 forTime:a3];
  }
}

uint64_t SCNCAction::wasAddedToTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  this->var9 = -1.0;
  v6 = C3DIsRunningInEditor();
  v7.n128_u64[0] = 0;
  if (!v6)
  {
    v7.n128_f64[0] = a3;
  }

  if (this->var4)
  {
    v8 = *(this->var0 + 8);

    return v8(this, a2, v7);
  }

  else
  {
    var3 = this->var3;

    return [var3 wasAddedToTarget:a2 atTime:v7.n128_f64[0]];
  }
}

uint64_t SCNCAction::wasRemovedFromTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 9))(this, a2, a3);
  }

  else
  {
    return [this->var3 wasRemovedFromTarget:a2 atTime:a3];
  }
}

uint64_t SCNCAction::willStartWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  this->var9 = -1.0;
  if (this->var4)
  {
    return (*(this->var0 + 10))(this, a2, a3);
  }

  else
  {
    return [this->var3 willStartWithTarget:a2 atTime:a3];
  }
}

uint64_t SCNCAction::wasPausedWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 11))(this, a2, a3);
  }

  else
  {
    return [this->var3 wasPausedWithTarget:a2 atTime:a3];
  }
}

uint64_t SCNCAction::willResumeWithTargetAtTime(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 12))(this, a2, a3);
  }

  else
  {
    return [this->var3 willResumeWithTarget:a2 atTime:a3];
  }
}

uint64_t SCNCAction::timeJumpWithTarget(SCNCAction *this, SCNNode *a2, double a3)
{
  if (this->var4)
  {
    return (*(this->var0 + 13))(this, a2, a3);
  }

  else
  {
    return [this->var3 timeJumpWithTarget:a2 timeOffset:a3];
  }
}

double SCNCAction::setSpeed(SCNCAction *this, double a2)
{
  if ((C3DIsRunningInEditor() & 1) == 0)
  {
    v5 = CACurrentMediaTime();
    var5 = this->var5;
    var6 = this->var6;
    if (var6 > var5)
    {
      this->var5 = var5 + v5 - var6;
      this->var6 = v5;
    }

    this->var15 = SCNCAction::cpp_ratioForTime(this, v5, v4);
    this->var5 = v5;
  }

  result = this->var16 * a2;
  this->var17 = a2;
  this->var18 = result;
  return result;
}

double SCNCAction::setBaseSpeed(SCNCAction *this, double a2)
{
  if ((C3DIsRunningInEditor() & 1) == 0)
  {
    v5 = CACurrentMediaTime();
    var5 = this->var5;
    var6 = this->var6;
    if (var6 > var5)
    {
      this->var5 = var5 + v5 - var6;
      this->var6 = v5;
    }

    this->var15 = SCNCAction::cpp_ratioForTime(this, v5, v4);
    this->var5 = v5;
  }

  this->var16 = a2;
  result = this->var17 * a2;
  this->var18 = result;
  return result;
}

double SCNCAction::finishTime(SCNCAction *this)
{
  result = this->var9;
  if (result < 0.0)
  {
    return this->var5 + this->var1 * ((1.0 - this->var15) / this->var18);
  }

  return result;
}

void sub_21C11C478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t C3DFXTechniqueCreateSpotShadow(uint64_t a1, uint64_t a2)
{
  Light = C3DNodeGetLight(a1, a2);
  if (Light)
  {
    v5 = C3DLightGetUsesDeferredShadows(Light, v4) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SceneKit-spotShadowDepth-%p", a1];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __C3DFXTechniqueCreateSpotShadow_block_invoke;
  v13[3] = &unk_278300170;
  v13[4] = v6;
  if (v5)
  {
    v7 = @"C3DFXForwardShadowPass.json";
  }

  else
  {
    v7 = @"C3DFXDeferredShadowPass.json";
  }

  v8 = C3DJsonNamed(v7, v13);
  v9 = C3DFXTechniqueCreateWithDescription(v8, a1);
  PassNamed = C3DFXTechniqueGetPassNamed(v9, @"SceneKit_renderSceneFromLight");
  C3DFXPassSetInitializeCallback(PassNamed, _initializeRenderFromLightPass);
  C3DFXPassSetUserInfo(PassNamed, a1);
  if ((v5 & 1) == 0)
  {
    v11 = C3DFXTechniqueGetPassNamed(v9, @"SceneKit_applyDeferredShadows");
    C3DFXPassSetInitializeCallback(v11, _initializeDeferredShadows);
    C3DFXPassSetWillExecuteCallback(v11, _willExecuteDeferredShadows);
    C3DFXPassSetSetupCallback(v11, _setupDeferredShadows);
    C3DFXPassSetUserInfo(v11, a1);
  }

  return v9;
}

void _initializeRenderFromLightPass(_BOOL8 *a1, uint64_t a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v3 = C3DMaterialCreate(a1, a2);
  C3DEntitySetName(v3, @"--ShadowMaterial--");
  CommonProfile = C3DMaterialGetCommonProfile(v3, v4);
  C3DEffectCommonProfileSetLightingModel(CommonProfile, 4);
  C3DFXPassSetMaterial(*a1, v3);
  C3DColor4Make(v21, 1.0, 1.0, 1.0, 1.0);
  C3DEffectCommonProfileSetColor(CommonProfile, 2, v21);
  CFRelease(v3);
  HashCode = C3DProgramHashCodeGetHashCode(*a1);
  Light = C3DNodeGetLight(HashCode, v7);
  if (Light)
  {
    v10 = Light;
    FramebufferDescription = C3DFXPassGetFramebufferDescription(*a1);
    *FramebufferDescription = C3DLightGetRealShadowMapSize(v10, v12);
    C3DFramebufferDescriptionSetViewportDependant(FramebufferDescription, 0);
    if (C3DLightGetShadowCascadeCount(v10, v13) < 2 || !C3DLightSupportsShadowCascades(v10, v14))
    {
      __asm { FMOV            V0.2S, #1.0 }

      *&_Q0.n128_i8[8] = vadd_f32(*FramebufferDescription, 0xC0000000C0000000);
      C3DFXPassSetViewport(*a1, v14, _Q0);
    }
  }

  else
  {
    v20 = scn_default_log(0, v9);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _initializeRenderFromLightPass_cold_1();
    }
  }
}

void _initializeDeferredShadows(uint64_t *a1, int a2)
{
  v4 = *a1;
  HashCode = C3DProgramHashCodeGetHashCode(*a1);
  Light = C3DNodeGetLight(HashCode, v6);
  if (Light)
  {
    v9 = Light;
    if (a2 == 1)
    {
      BuiltInProgramWithName = C3DFXGLSLProgramCreateBuiltInProgramWithName(@"C3D-spotShadow");
      Shader = C3DFXGLSLProgramGetShader(BuiltInProgramWithName, 1);
      Source = C3DFXShaderGetSource(Shader, v12);
      Mutable = CFStringCreateMutable(0, 0);
      EffectiveShadowSampleCount = C3DLightGetEffectiveShadowSampleCount(v9, v15);
      CFStringAppend(Mutable, @"precision highp float;\n");
      CFStringAppend(Mutable, @"#define TARGET_OS_IPHONE 1\n");
      CFStringAppendFormat(Mutable, 0, @"#define MAX_SAMPLE %d\n", EffectiveShadowSampleCount);
      v17 = _createShadowProgramWithLight_k++;
      CFStringAppendFormat(Mutable, 0, @"#define unshareIndex %d\n", v17);
      if (C3DLightGetType(v9, v18) == 3)
      {
        CFStringAppend(Mutable, @"#define SPOT_SHADOW 1\n");
      }

      CFStringAppend(Mutable, @"#define USE_PCF 1\n");
      CFStringAppend(Mutable, Source);
      C3DFXShaderSetSource(Shader, Mutable);
      CFRelease(Mutable);
      C3DFXPassSetProgram(v4, BuiltInProgramWithName);
      CFRelease(BuiltInProgramWithName);
      InputWithName = C3DFXPassGetInputWithName(v4, @"lightDepthSampler");
      if (InputWithName)
      {
        v21 = InputWithName;
        v22 = C3DTextureSamplerDepthCompare(InputWithName, v20);

        C3DFXPassInputSetSampler(v21, v22);
      }
    }

    else
    {
      v24 = objc_alloc_init(MEMORY[0x277CD6D70]);
      if (C3DLightSupportsShadowCascades(v9, v25))
      {
        ShadowCascadeCount = C3DLightGetShadowCascadeCount(v9, v26);
      }

      else
      {
        ShadowCascadeCount = 1;
      }

      v39 = ShadowCascadeCount;
      [v24 setConstantValue:&v39 type:29 withName:@"cascadeCount"];
      v38 = C3DLightGetEffectiveShadowSampleCount(v9, v28);
      [v24 setConstantValue:&v38 type:29 withName:@"sampleCount"];
      v37 = 0;
      [v24 setConstantValue:&v37 type:53 withName:@"cascadeBlending"];
      v36 = C3DLightGetShadowCascadeDebugFactor(v9, v29) > 0.0;
      [v24 setConstantValue:&v36 type:53 withName:@"debugCascades"];
      v35 = C3DLightGetType(v9, v30) == 3;
      [v24 setConstantValue:&v35 type:53 withName:@"isSpotLight"];
      v34 = (C3DEngineContextGetCoordinatesSystemOptions(a1[3], v31) & 8) != 0;
      [v24 setConstantValue:&v34 type:53 withName:@"reverseZ"];
      if (v39 <= 1)
      {
        v32 = @"deferredShadow_frag";
      }

      else
      {
        v32 = @"deferredShadowCascades_frag";
      }

      v33 = C3DFXMetalProgramCreateFromLibraryWithConstants(@"deferredShadow_vert", v32, 0, v24, 0, 0);

      C3DFXProgramSetClientProgram(v33, *(v4 + 80));
      C3DFXPassSetProgram(v4, v33);
      if (v33)
      {
        CFRelease(v33);
      }
    }
  }

  else
  {
    v23 = scn_default_log(0, v8);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      _initializeDeferredShadows_cold_1();
    }
  }
}

void _willExecuteDeferredShadows(uint64_t *a1, uint64_t a2)
{
  v43 = *MEMORY[0x277D85DE8];
  FXContext = C3DEngineContextGetFXContext(a1[3], a2);
  v4 = a1[7];
  Light = C3DNodeGetLight(v4, v5);
  if (Light)
  {
    v8 = Light;
    Scene = C3DEngineContextGetScene(a1[3], v7);
    LightingSystem = C3DSceneGetLightingSystem(Scene, v10);
    MainPassInstance = C3DFXContextGetMainPassInstance(FXContext);
    CoordinatesSystemOptions = C3DEngineContextGetCoordinatesSystemOptions(a1[3], v13);
    C3DLightingSystemComputeShadowMatrices(LightingSystem, v4, v40, 0, v39, v38, v37, CoordinatesSystemOptions);
    v15 = (MainPassInstance + (*(FXContext + 120) << 6));
    v27 = v15[198];
    v28 = v41;
    v25 = v15[199];
    v26 = v15[200];
    v36 = vaddq_f32(v15[201], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25, *v42.f32, 1), v27, v42.f32[0]), v26, v42, 2));
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-u_lightPos-symbol", &v36);
    v35 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25, *v28.f32, 1), v27, v28.f32[0]), v26, v28, 2);
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-u_lightDir-symbol", &v35);
    C3DLightComputeSpotAttenuations(v8);
    v34 = v16;
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-u_lightSpotAtt-symbol", &v34);
    C3DFXTechniqueSetValueForSymbolWithCount(a1[1], @"C3D-light_MVP-symbol", v39, 4);
    C3DFXTechniqueSetValueForSymbolWithCount(a1[1], @"C3D-cascadeScale-symbol", v38, 4);
    C3DFXTechniqueSetValueForSymbolWithCount(a1[1], @"C3D-cascadeBias-symbol", v37, 4);
    ShadowCascadeDebugFactor = C3DLightGetShadowCascadeDebugFactor(v8, v17);
    if (ShadowCascadeDebugFactor > 0.0)
    {
      C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-shadowCascadeDebugFactor-symbol", &ShadowCascadeDebugFactor);
    }

    memset(&v32, 0, sizeof(v32));
    C3DMatrix4x4Invert((MainPassInstance + (*(FXContext + 120) << 6) + 3552), &v32);
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-camera_MVP_i-symbol", &v32);
    RealShadowMapSize = C3DLightGetRealShadowMapSize(v8, v18);
    ShadowRadius = C3DLightGetShadowRadius(v8, v19);
    v21 = RealShadowMapSize.i32[1];
    if (*RealShadowMapSize.i32 >= *&RealShadowMapSize.i32[1])
    {
      v21 = RealShadowMapSize.i32[0];
    }

    v31 = ShadowRadius / fmaxf(*&v21, 1.0);
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-shadowRadius-symbol", &v31);
    v30[0] = C3DLightGetShadowColor(v8, v22);
    v30[1] = v23;
    C3DFXTechniqueSetValueForSymbol(a1[1], @"C3D-shadowColor-symbol", v30);
  }

  else
  {
    v24 = scn_default_log(0, v7);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      _willExecuteDeferredShadows_cold_1();
    }
  }
}

void _setupDeferredShadows(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  Light = C3DNodeGetLight(a1[7], a2);
  if (Light)
  {
    v5 = Light;
    EffectiveShadowSampleCount = C3DLightGetEffectiveShadowSampleCount(Light, v4);
    if (EffectiveShadowSampleCount >= 2)
    {
      v7 = EffectiveShadowSampleCount;
      C3DLightComputeShadowKernel(v5, v9, EffectiveShadowSampleCount, a1[3]);
      C3DFXTechniqueSetValueForSymbolWithCount(a1[1], @"C3D-shadowKernel-symbol", v9, v7);
    }
  }

  else
  {
    v8 = scn_default_log(0, v4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _setupDeferredShadows_cold_1();
    }
  }
}

void sub_21C11E034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  USDKitConverter::~USDKitConverter(va);
  _Unwind_Resume(a1);
}

uint64_t USDKitConverter::makeUSKScene(USDKitConverter *this, NSURL *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  *(this + 7) = [USKScene_weak newSceneWithURL:a2];
  [*(this + 7) setDictionaryMetadataWithKey:@"customLayerData" dictionaryKey:@"creator" value:{+[USKData_helper dataWithString:](USKData_helper, "dataWithString:", objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"SceneKit export preview %.02f", 0x3FE51EB860000000))}];
  v3 = [USKObjectPath_helper objectPathWithString:*(this + 3)];
  v4 = [USKHelper scene:*(this + 7) nodeAtPath:v3 type:USKNodeTypeTransform_weak];
  [v4 setDictionaryMetadataWithKey:@"assetInfo" dictionaryKey:@"name" value:{+[USKData_helper dataWithString:](USKData_helper, "dataWithString:", *(this + 1))}];
  [v4 setMetadataWithKey:@"kind" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"component"}];
  [*(this + 7) setMetadataWithKey:@"defaultPrim" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", *(this + 1)))}];
  v5 = [*this attributeForKey:@"kSceneUpAxisAttributeKey"];
  if (!v5)
  {
    goto LABEL_6;
  }

  [v5 SCNVector3Value];
  if (v7 == 1.0)
  {
    v8 = @"X";
    goto LABEL_7;
  }

  if (v6 == 1.0)
  {
    v8 = @"Z";
  }

  else
  {
LABEL_6:
    v8 = @"Y";
  }

LABEL_7:
  [*(this + 7) setMetadataWithKey:@"upAxis" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v8))}];
  v9 = [*this sceneRef];
  [*(this + 7) setMetadataWithKey:@"metersPerUnit" value:{+[USKData_helper dataWithDouble:](USKData_helper, "dataWithDouble:", C3DSceneGetUnit(v9, v10))}];
  USDKitConverter::prepareSkinning(this);
  USDKitConverter::prepareBlendShapes(this);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = [objc_msgSend(*this "rootNode")];
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        USDKitConverter::prepareAnimations(this, *(*(&v36 + 1) + 8 * i));
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v13);
  }

  USDKitConverter::calculateTimeCodes(this);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v16 = [objc_msgSend(*this "rootNode")];
  v17 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v33;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v32 + 1) + 8 * j);
        GeomPath = USDKitConverter::getGeomPath(this);
        USDKitConverter::processSCNNode(this, v21, GeomPath, 0, 0);
      }

      v18 = [v16 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v18);
  }

  USDKitConverter::processBlendShapeAnimations(this);
  ShapeBlending::updateAnimationsWithBlendShapeList(this + 55);
  USDKitConverter::processSkinnedMeshes(this);
  if (*(this + 59) > 0.0)
  {
    [objc_msgSend(*this attributeForKey:{@"kSceneStartTimeAttributeKey", "floatValue"}];
    v24 = v23 / *(this + 63) + 0.0;
    v25 = v24;
    if (vabdd_f64(v24, v25) >= 0.001)
    {
      if (1.0 - (v24 - v25) < 0.001)
      {
        v24 = v25 + 1.0;
      }
    }

    else
    {
      v24 = v24;
    }

    [objc_msgSend(*this attributeForKey:{@"kSceneEndTimeAttributeKey", "floatValue"}];
    v27 = v26 / *(this + 63) + 0.0;
    v28 = v27;
    if (vabdd_f64(v27, v28) >= 0.001)
    {
      if (1.0 - (v27 - v28) < 0.001)
      {
        v27 = v28 + 1.0;
      }
    }

    else
    {
      v27 = v27;
    }

    v29 = *(this + 58);
    if (v29 == -1.0 || v29 > v24)
    {
      *(this + 58) = v24;
      v29 = v24;
    }

    v30 = *(this + 59);
    if (v30 == -1.0 || v30 < v27)
    {
      *(this + 59) = v27;
    }

    [*(this + 7) setMetadataWithKey:@"startTimeCode" value:{+[USKData_helper dataWithDouble:](USKData_helper, "dataWithDouble:", v29)}];
    [*(this + 7) setMetadataWithKey:@"endTimeCode" value:{+[USKData_helper dataWithDouble:](USKData_helper, "dataWithDouble:", *(this + 59))}];
  }

  if (*(this + 120) >= 1)
  {
    [*(this + 7) setMetadataWithKey:@"timeCodesPerSecond" value:{+[USKData_helper dataWithInt:](USKData_helper, "dataWithInt:")}];
  }

  return *(this + 7);
}

void ___ZL21SCNLoadUsdKitIfNeededv_block_invoke()
{
  v0 = dlopen("/System/Library/PrivateFrameworks/USDKit.framework/USDKit", 2);
  if (v0 || (v0 = dlopen("../SharedFrameworks/USDKit.framework/USDKit", 2)) != 0)
  {
    v2 = v0;
    USKObjectPath_weak = NSClassFromString(&cfstr_Uskobjectpath.isa);
    USKToken_weak = NSClassFromString(&cfstr_Usktoken.isa);
    USKData_weak = NSClassFromString(&cfstr_Uskdata.isa);
    USKScene_weak = NSClassFromString(&cfstr_Uskscene.isa);
    v3 = dlsym(v2, "USKDataTypeResourcePath");
    if (v3)
    {
      v4 = *v3;
    }

    else
    {
      v4 = 0;
    }

    USKDataTypeResourcePath_weak = v4;
    v5 = dlsym(v2, "USKDataTypeInt");
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    USKDataTypeInt_weak = v6;
    v7 = dlsym(v2, "USKDataTypeBool");
    if (v7)
    {
      v8 = *v7;
    }

    else
    {
      v8 = 0;
    }

    USKDataTypeBool_weak = v8;
    v9 = dlsym(v2, "USKDataTypeDouble3");
    if (v9)
    {
      v10 = *v9;
    }

    else
    {
      v10 = 0;
    }

    USKDataTypeDouble3_weak = v10;
    v11 = dlsym(v2, "USKDataTypeDouble4x4");
    if (v11)
    {
      v12 = *v11;
    }

    else
    {
      v12 = 0;
    }

    USKDataTypeDouble4x4_weak = v12;
    v13 = dlsym(v2, "USKDataTypeDouble4x4Array");
    if (v13)
    {
      v14 = *v13;
    }

    else
    {
      v14 = 0;
    }

    USKDataTypeDouble4x4Array_weak = v14;
    v15 = dlsym(v2, "USKDataTypeFloat");
    if (v15)
    {
      v16 = *v15;
    }

    else
    {
      v16 = 0;
    }

    USKDataTypeFloat_weak = v16;
    v17 = dlsym(v2, "USKDataTypeFloat2");
    if (v17)
    {
      v18 = *v17;
    }

    else
    {
      v18 = 0;
    }

    USKDataTypeFloat2_weak = v18;
    v19 = dlsym(v2, "USKDataTypeFloat3");
    if (v19)
    {
      v20 = *v19;
    }

    else
    {
      v20 = 0;
    }

    USKDataTypeFloat3_weak = v20;
    v21 = dlsym(v2, "USKDataTypeFloat4");
    if (v21)
    {
      v22 = *v21;
    }

    else
    {
      v22 = 0;
    }

    USKDataTypeFloat4_weak = v22;
    v23 = dlsym(v2, "USKDataTypeFloat2Array");
    if (v23)
    {
      v24 = *v23;
    }

    else
    {
      v24 = 0;
    }

    USKDataTypeFloat2Array_weak = v24;
    v25 = dlsym(v2, "USKDataTypeFloat3Array");
    if (v25)
    {
      v26 = *v25;
    }

    else
    {
      v26 = 0;
    }

    USKDataTypeFloat3Array_weak = v26;
    v27 = dlsym(v2, "USKDataTypeFloatArray");
    if (v27)
    {
      v28 = *v27;
    }

    else
    {
      v28 = 0;
    }

    USKDataTypeFloatArray_weak = v28;
    v29 = dlsym(v2, "USKDataTypeIntArray");
    if (v29)
    {
      v30 = *v29;
    }

    else
    {
      v30 = 0;
    }

    USKDataTypeIntArray_weak = v30;
    v31 = dlsym(v2, "USKDataTypeObjectPath");
    if (v31)
    {
      v32 = *v31;
    }

    else
    {
      v32 = 0;
    }

    USKDataTypeObjectPath_weak = v32;
    v33 = dlsym(v2, "USKDataTypeObjectPathArray");
    if (v33)
    {
      v34 = *v33;
    }

    else
    {
      v34 = 0;
    }

    USKDataTypeObjectPathArray_weak = v34;
    v35 = dlsym(v2, "USKDataTypeQuatf");
    if (v35)
    {
      v36 = *v35;
    }

    else
    {
      v36 = 0;
    }

    USKDataTypeQuatf_weak = v36;
    v37 = dlsym(v2, "USKDataTypeQuatfArray");
    if (v37)
    {
      v38 = *v37;
    }

    else
    {
      v38 = 0;
    }

    USKDataTypeQuatfArray_weak = v38;
    v39 = dlsym(v2, "USKDataTypeStringArray");
    if (v39)
    {
      v40 = *v39;
    }

    else
    {
      v40 = 0;
    }

    USKDataTypeStringArray_weak = v40;
    v41 = dlsym(v2, "USKDataTypeToken");
    if (v41)
    {
      v42 = *v41;
    }

    else
    {
      v42 = 0;
    }

    USKDataTypeToken_weak = v42;
    v43 = dlsym(v2, "USKDataTypeTokenArray");
    if (v43)
    {
      v44 = *v43;
    }

    else
    {
      v44 = 0;
    }

    USKDataTypeTokenArray_weak = v44;
    v45 = dlsym(v2, "USKNodeTypeCamera");
    if (v45)
    {
      v46 = *v45;
    }

    else
    {
      v46 = 0;
    }

    USKNodeTypeCamera_weak = v46;
    v47 = dlsym(v2, "USKNodeTypeMaterial");
    if (v47)
    {
      v48 = *v47;
    }

    else
    {
      v48 = 0;
    }

    USKNodeTypeMaterial_weak = v48;
    v49 = dlsym(v2, "USKNodeTypeMesh");
    if (v49)
    {
      v50 = *v49;
    }

    else
    {
      v50 = 0;
    }

    USKNodeTypeMesh_weak = v50;
    v51 = dlsym(v2, "USKNodeTypeMeshGroup");
    if (v51)
    {
      v52 = *v51;
    }

    else
    {
      v52 = 0;
    }

    USKNodeTypeMeshGroup_weak = v52;
    v53 = dlsym(v2, "USKNodeTypeScope");
    if (v53)
    {
      v54 = *v53;
    }

    else
    {
      v54 = 0;
    }

    USKNodeTypeScope_weak = v54;
    v55 = dlsym(v2, "USKNodeTypeShader");
    if (v55)
    {
      v56 = *v55;
    }

    else
    {
      v56 = 0;
    }

    USKNodeTypeShader_weak = v56;
    v57 = dlsym(v2, "USKNodeTypeSkeletalAnimation");
    if (v57)
    {
      v58 = *v57;
    }

    else
    {
      v58 = 0;
    }

    USKNodeTypeSkeletalAnimation_weak = v58;
    v59 = dlsym(v2, "USKNodeTypeSkeleton");
    if (v59)
    {
      v60 = *v59;
    }

    else
    {
      v60 = 0;
    }

    USKNodeTypeSkeleton_weak = v60;
    v61 = dlsym(v2, "USKNodeTypeSkeletonRoot");
    if (v61)
    {
      v62 = *v61;
    }

    else
    {
      v62 = 0;
    }

    USKNodeTypeSkeletonRoot_weak = v62;
    v63 = dlsym(v2, "USKNodeTypeBlendShape");
    if (v63)
    {
      v64 = *v63;
    }

    else
    {
      v64 = 0;
    }

    USKNodeTypeBlendShape_weak = v64;
    v65 = dlsym(v2, "USKNodeTypeTransform");
    if (v65)
    {
      v66 = *v65;
    }

    else
    {
      v66 = 0;
    }

    USKNodeTypeTransform_weak = v66;
    v67 = dlsym(v2, "USKRoleTypeColor");
    if (v67)
    {
      v68 = *v67;
    }

    else
    {
      v68 = 0;
    }

    USKRoleTypeColor_weak = v68;
    v69 = dlsym(v2, "USKRoleTypeNone");
    if (v69)
    {
      v70 = *v69;
    }

    else
    {
      v70 = 0;
    }

    USKRoleTypeNone_weak = v70;
    v71 = dlsym(v2, "USKRoleTypeNormal");
    if (v71)
    {
      v72 = *v71;
    }

    else
    {
      v72 = 0;
    }

    USKRoleTypeNormal_weak = v72;
    v73 = dlsym(v2, "USKRoleTypePoint");
    if (v73)
    {
      v74 = *v73;
    }

    else
    {
      v74 = 0;
    }

    USKRoleTypePoint_weak = v74;
    v75 = dlsym(v2, "USKRoleTypeVector");
    if (v75)
    {
      v76 = *v75;
    }

    else
    {
      v76 = 0;
    }

    USKRoleTypeVector_weak = v76;
    v77 = dlsym(v2, "USKRoleTypeTextureCoordinate");
    if (v77)
    {
      v78 = *v77;
    }

    else
    {
      v78 = 0;
    }

    USKRoleTypeTextureCoordinate_weak = v78;
    v79 = dlsym(v2, "USKSchemaTypeBindingAPI");
    if (v79)
    {
      v80 = *v79;
    }

    else
    {
      v80 = 0;
    }

    USKSchemaTypeBindingAPI_weak = v80;
    SCNLoadUsdKitIfNeeded(void)::loaded = 1;
  }

  else
  {
    v81 = scn_default_log(0, v1);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
    {
      ___ZL21SCNLoadUsdKitIfNeededv_block_invoke_cold_1(v81);
    }
  }
}

void USDKitConverter::USDKitConverter(USDKitConverter *this, SCNScene *a2, NSString *a3, NSURL *a4, NSString *a5)
{
  *this = a2;
  *(this + 2) = a5;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 11) = [MEMORY[0x277CBEB58] setWithCapacity:{8, a4}];
  *(this + 13) = 0;
  *(this + 12) = this + 104;
  *(this + 14) = 0;
  *(this + 16) = 0;
  *(this + 15) = this + 128;
  *(this + 19) = 0;
  *(this + 18) = this + 152;
  *(this + 17) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 21) = this + 176;
  *(this + 23) = 0;
  *(this + 25) = 0;
  *(this + 24) = this + 200;
  *(this + 26) = 0;
  *(this + 29) = 0;
  *(this + 28) = 0;
  *(this + 31) = this + 256;
  *(this + 27) = this + 224;
  *(this + 30) = 0;
  *(this + 32) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 33) = 0;
  *(this + 34) = this + 280;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 39) = 0;
  *(this + 40) = this + 328;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 344) = 0u;
  *(this + 53) = 0;
  *(this + 52) = this + 424;
  *(this + 49) = this + 400;
  *(this + 54) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 468) = 0u;
  *(this + 61) = 0x7FEFFFFFFFFFFFFFLL;
  *(this + 31) = xmmword_21C2A2880;
  *(this + 1) = v8;
  *(this + 3) = [@"/" stringByAppendingString:{v8, this + 328, this + 280, this + 256, this + 216, this + 192, this + 168, this + 144, this + 120, this + 128, this + 96, this + 104}];
  [-[SCNScene attributeForKey:](a2 attributeForKey:{@"kSceneFrameRateAttributeKey", "floatValue"}];
  if (v9 > 1.0)
  {
    v10 = 1.0 / v9;
    if (v10 > 0.001)
    {
      v11 = *(this + 63);
      if (v11 == 0.0 || v11 > v10)
      {
        *(this + 63) = v10;
      }
    }
  }
}

uint64_t anonymous namespace::correctPath(_anonymous_namespace_ *this, NSString *a2)
{
  v4 = 0;
  v2 = [objc_msgSend(MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[^A-Za-z0-9]" options:1 error:{&v4), "stringByReplacingMatchesInString:options:range:withTemplate:", this, 0, 0, -[_anonymous_namespace_ length](this, "length"), @"_"}];
  if ([objc_msgSend(MEMORY[0x277CCA900] "decimalDigitCharacterSet")])
  {
    return [@"_" stringByAppendingString:v2];
  }

  return v2;
}

void ShapeBlending::~ShapeBlending(ShapeBlending *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    do
    {
      if (*v2)
      {
        MEMORY[0x21CF07610](*v2, 0x1080C406BDE4C18);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void Skinning::~Skinning(uint64_t **this)
{
  v2 = *this;
  v3 = this[1];
  if (*this != v3)
  {
    do
    {
      v4 = *v2;
      if (*v2)
      {
        std::__tree<char>::destroy(v4 + 64, *(v4 + 72));
        std::__tree<char>::destroy(v4 + 32, *(v4 + 40));
        v5 = *(v4 + 8);
        if (v5)
        {
          *(v4 + 16) = v5;
          operator delete(v5);
        }

        MEMORY[0x21CF07610](v4, 0x10A0C402AA64608);
      }

      ++v2;
    }

    while (v2 != v3);
  }

  v6 = this[3];
  for (i = this[4]; v6 != i; ++v6)
  {
    v8 = *v6;
    if (*v6)
    {
      std::__tree<char>::destroy(v8 + 72, *(v8 + 80));
      std::__tree<char>::destroy(v8 + 48, *(v8 + 56));
      std::__tree<char>::destroy(v8 + 24, *(v8 + 32));
      v9 = *v8;
      if (*v8)
      {
        *(v8 + 8) = v9;
        operator delete(v9);
      }

      MEMORY[0x21CF07610](v8, 0x10A0C400C584343);
    }
  }

  std::__tree<char>::destroy((this + 6), this[7]);
  v10 = this[3];
  if (v10)
  {
    this[4] = v10;
    operator delete(v10);
  }

  v11 = *this;
  if (*this)
  {
    this[1] = v11;
    operator delete(v11);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>((a2 + 4));

    operator delete(a2);
  }
}

void std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void USDKitConverter::prepareSkinning(id *this)
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v2 = [objc_msgSend(*this "rootNode")];
  v3 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v2);
        }

        USDKitConverter::prepareSkinning(this, *(*(&v28 + 1) + 8 * i));
      }

      v4 = [v2 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  Skinning::createSkeletonsFromSkins(this + 43);
  v8 = this[46];
  v9 = this[47];
  if (v8 != v9)
  {
    do
    {
      v10 = *v8;
      v11 = **v8;
      v12 = (*v8)[1];
      if (v11 == v12)
      {
LABEL_13:
        if (v11 != v12)
        {
          v13 = *v11;
          do
          {
            NodeWithAnimation = *v11;
            if (v13 != NodeWithAnimation)
            {
              std::__tree<SCNNode *>::__emplace_unique_key_args<SCNNode *,SCNNode * const&>((this + 31), &NodeWithAnimation, &NodeWithAnimation);
            }

            ++v11;
          }

          while (v11 != v12);
        }
      }

      else
      {
        {
          if (++v11 == v12)
          {
            v11 = *v10;
            v12 = v10[1];
            goto LABEL_13;
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = this[46];
    v9 = this[47];
  }

  if (v8 != v9)
  {
    v14 = this + 35;
    do
    {
      v15 = this[34];
      if (v15 != v14)
      {
        v16 = *v8;
        do
        {
          if (*(v15[5] + 7) == v16)
          {
            v20 = **v16;
            if (v20)
            {
              v21 = v15[4];
              v22 = [(_anonymous_namespace_ *)v20 parentNode];
              if (v22)
              {
                v23 = v22;
                do
                {
                  if (v21)
                  {
                    v24 = v21;
                    while (1)
                    {
                      v24 = [(_anonymous_namespace_ *)v24 parentNode];
                      if (!v24)
                      {
                        break;
                      }

                      if (v23 == v24)
                      {
                        v25 = [*this rootNode];
                        {
                          v16[12] = v23;
                        }

                        goto LABEL_25;
                      }
                    }
                  }

                  v23 = [(_anonymous_namespace_ *)v23 parentNode];
                }

                while (v23);
              }
            }
          }

LABEL_25:
          v17 = v15[1];
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
              v18 = v15[2];
              v19 = *v18 == v15;
              v15 = v18;
            }

            while (!v19);
          }

          v15 = v18;
        }

        while (v18 != v14);
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = this[46];
    v9 = this[47];
  }

  while (v8 != v9)
  {
    NodeWithAnimation = Skeleton::findNodeWithAnimation(*v8);
    if (NodeWithAnimation)
    {
      std::__tree<SCNNode *>::__emplace_unique_key_args<SCNNode *,SCNNode * const&>((this + 12), &NodeWithAnimation, &NodeWithAnimation);
    }

    ++v8;
  }
}

void *USDKitConverter::prepareBlendShapes(id *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [objc_msgSend(*this rootNode];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        USDKitConverter::prepareBlendShape(this, *(*(&v7 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

void *USDKitConverter::prepareAnimations(USDKitConverter *this, SCNNode *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(SCNNode *)a2 animationKeys])
  {
    if ([(NSArray *)[(SCNNode *)a2 animationKeys] count])
    {
      v4 = [(NSArray *)[(SCNNode *)a2 animationKeys] count];
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        while (1)
        {
          v7 = [(SCNNode *)a2 animationPlayerForKey:[(NSArray *)[(SCNNode *)a2 animationKeys] objectAtIndexedSubscript:v6]];
          if (v7)
          {
            break;
          }

          if (v5 == ++v6)
          {
            goto LABEL_9;
          }
        }

        USDKitConverter::prepareCAAnimation(this, [objc_msgSend(v7 "animation")]);
      }
    }
  }

LABEL_9:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = [(SCNNode *)a2 childNodes];
  result = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v10 = result;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        USDKitConverter::prepareAnimations(this, *(*(&v13 + 1) + 8 * v12));
        v12 = v12 + 1;
      }

      while (v10 != v12);
      result = [(NSArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v10 = result;
    }

    while (result);
  }

  return result;
}

uint64_t USDKitConverter::calculateTimeCodes(uint64_t this)
{
  v1 = *(this + 504);
  if (v1 == 0.0)
  {
    *(this + 504) = 0x3FA5555555555555;
    v1 = 0.0416666667;
  }

  v2 = *(this + 496);
  if (v2 >= 0.0)
  {
    v3 = 1.0 / v1 + 0.0;
    v4 = v3;
    if (vabdd_f64(v3, v4) >= 0.001)
    {
      if (1.0 - (v3 - v4) < 0.001)
      {
        v3 = v4 + 1.0;
      }
    }

    else
    {
      v3 = v3;
    }

    *(this + 480) = (v3 + 0.5);
    v5 = *(this + 488) / v1 + 0.0;
    v6 = v5;
    if (vabdd_f64(v5, v6) >= 0.001)
    {
      if (1.0 - (v5 - v6) < 0.001)
      {
        v5 = v6 + 1.0;
      }
    }

    else
    {
      v5 = v5;
    }

    *(this + 464) = v5;
    v7 = v2 / v1 + 0.0;
    v8 = v7;
    if (vabdd_f64(v7, v8) >= 0.001)
    {
      if (1.0 - (v7 - v8) < 0.001)
      {
        v7 = v8 + 1.0;
      }
    }

    else
    {
      v7 = v7;
    }

    *(this + 472) = v7;
  }

  return this;
}

uint64_t *USDKitConverter::processSCNNode(uint64_t *this, SCNNode *a2, NSString *a3, SCNNode *a4, BOOL a5)
{
  v8 = a2;
  v9 = this;
  v57 = *MEMORY[0x277D85DE8];
  v54 = a2;
  v10 = this[32];
  if (v10)
  {
    v11 = this + 32;
    do
    {
      v12 = v10[4];
      v13 = v12 >= a2;
      v14 = v12 < a2;
      if (v13)
      {
        v11 = v10;
      }

      v10 = v10[v14];
    }

    while (v10);
    if (v11 != this + 32 && v11[4] <= a2)
    {
      return this;
    }
  }

  SkeletonByJoint = Skinning::findSkeletonByJoint((this + 43), a2);
  if (SkeletonByJoint && SkeletonByJoint[16])
  {
    a3 = SkeletonByJoint[16];
  }

  NodeName = USDKitConverter::makeNodeName(v9, a3, v8);
  v17 = [(NSString *)a3 stringByAppendingPathComponent:NodeName];
  for (i = v9[46]; i != v9[47]; ++i)
  {
    v19 = *i;
    if (*(*i)->super.isa == v8)
    {
      goto LABEL_17;
    }
  }

  v19 = 0;
LABEL_17:
  v20 = (a4 | [(SCNNode *)v8 skinner]) == 0;
  for (j = v9[46]; j != v9[47]; j += 8)
  {
    if (*(*j + 96) == v8)
    {
      UskSkeleton = [USKHelper scene:v9[7] nodeAtPath:[USKObjectPath_helper objectPathWithString:v17] type:USKNodeTypeSkeletonRoot_weak];
      v23 = 0;
      a5 = 1;
      if (!UskSkeleton)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }
  }

  if (v19)
  {
    UskSkeleton = Skeleton::makeUskSkeleton(v19, v9[7], v17);
    v23 = 1;
    a4 = v19;
    if (!UskSkeleton)
    {
      goto LABEL_59;
    }

    goto LABEL_44;
  }

  if ([(SCNNode *)v8 geometry])
  {
    if (!v20)
    {
      v26 = v9[38];
      v25 = v9[39];
      if (v26 >= v25)
      {
        v28 = v9[37];
        v29 = (v26 - v28) >> 4;
        v30 = v29 + 1;
        if ((v29 + 1) >> 60)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v31 = v25 - v28;
        if (v31 >> 3 > v30)
        {
          v30 = v31 >> 3;
        }

        if (v31 >= 0x7FFFFFFFFFFFFFF0)
        {
          v32 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v30;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<SCNNode *,Skeleton *>>>((v9 + 37), v32);
        }

        v45 = (16 * v29);
        *v45 = v8;
        v45[1] = a4;
        v27 = 16 * v29 + 16;
        v46 = v9[37];
        v47 = v9[38] - v46;
        v48 = 16 * v29 - v47;
        memcpy(v45 - v47, v46, v47);
        v49 = v9[37];
        v9[37] = v48;
        v9[38] = v27;
        v9[39] = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v26 = v8;
        v26[1] = a4;
        v27 = (v26 + 2);
      }

      v9[38] = v27;
      if (!a5)
      {
        a5 = 0;
        goto LABEL_59;
      }

      UskSkeleton = USDKitConverter::processMesh(v9, v8, v17, NodeName);
      v55 = &v54;
      v23 = 0;
      std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>((v9 + 40), &v54, &std::piecewise_construct, &v55)[5] = UskSkeleton;
      a5 = 1;
      v8 = v54;
      if (!UskSkeleton)
      {
        goto LABEL_59;
      }

      goto LABEL_44;
    }

    UskSkeleton = USDKitConverter::processMesh(v9, v8, v17, NodeName);
    a4 = 0;
  }

  else
  {
    if ([(SCNNode *)v8 camera])
    {
      v24 = USDKitConverter::processCamera(v9, v8, v17, [(SCNNode *)v8 camera]);
    }

    else
    {
      v24 = [USKHelper scene:v9[7] nodeAtPath:[USKObjectPath_helper objectPathWithString:v17] type:USKNodeTypeTransform_weak];
    }

    UskSkeleton = v24;
  }

  v23 = 0;
  if (!UskSkeleton)
  {
    goto LABEL_59;
  }

LABEL_44:
  if (-[SCNNode isHidden](v8, "isHidden") || ([v54 opacity], v33 == 0.0))
  {
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:UskSkeleton propertyWithName:@"visibility" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"invisible"}];
  }

  v34 = [v54 animationKeys];
  v35 = v54;
  if (v34)
  {
    v36 = [objc_msgSend(v54 "animationKeys")];
    v35 = v54;
    if (v36)
    {
      v37 = v9[13];
      if (!v37)
      {
        goto LABEL_57;
      }

      v38 = v9 + 13;
      do
      {
        v39 = *(v37 + 32);
        v13 = v39 >= v54;
        v40 = v39 < v54;
        if (v13)
        {
          v38 = v37;
        }

        v37 = *(v37 + 8 * v40);
      }

      while (v37);
      if (v38 == v9 + 13 || v54 < v38[4])
      {
LABEL_57:
        USDKitConverter::processAnimations(v9, UskSkeleton, v54);
        v35 = v54;
      }
    }
  }

  USDKitConverter::processTransforms(v9, UskSkeleton, v35, v23);
  v8 = v54;
LABEL_59:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v41 = [(SCNNode *)v8 childNodes];
  this = [(NSArray *)v41 countByEnumeratingWithState:&v50 objects:v56 count:16];
  v42 = this;
  if (this)
  {
    v43 = *v51;
    do
    {
      v44 = 0;
      do
      {
        if (*v51 != v43)
        {
          objc_enumerationMutation(v41);
        }

        USDKitConverter::processSCNNode(v9, *(*(&v50 + 1) + 8 * v44), v17, a4, a5);
        v44 = (v44 + 1);
      }

      while (v42 != v44);
      this = [(NSArray *)v41 countByEnumeratingWithState:&v50 objects:v56 count:16];
      v42 = this;
    }

    while (this);
  }

  return this;
}

uint64_t USDKitConverter::getGeomPath(USDKitConverter *this)
{
  result = *(this + 4);
  if (!result)
  {
    v3 = [*(this + 3) stringByAppendingPathComponent:@"Geom"];
    *(this + 4) = v3;
    v4 = [USKObjectPath_helper objectPathWithString:v3];
    [USKHelper scene:*(this + 7) nodeAtPath:v4 type:USKNodeTypeScope_weak];
    return *(this + 4);
  }

  return result;
}

void *USDKitConverter::processBlendShapeAnimations(id *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [objc_msgSend(*this rootNode];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        USDKitConverter::processBlendShapeAnimations(this, *(*(&v7 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t *ShapeBlending::updateAnimationsWithBlendShapeList(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    do
    {
      v3 = *(*v1 + 16);
      if (v3)
      {
        this = [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v3 propertyWithName:@"blendShapes" type:USKDataTypeTokenArray_weak role:{USKRoleTypeNone_weak), "setTokenArray:", *(*v1 + 24)}];
      }

      v1 += 8;
    }

    while (v1 != v2);
  }

  return this;
}

void USDKitConverter::processSkinnedMeshes(USDKitConverter *this)
{
  v2 = *(this + 37);
  v3 = *(this + 38);
  if (v2 != v3)
  {
    v4 = (this + 280);
    v5 = (this + 328);
    do
    {
      v6 = *v2;
      v7 = *(v2 + 8);
      v26 = *v2;
      if (v7)
      {
        v8 = 0;
      }

      else
      {
        v18 = *v4;
        if (!*v4)
        {
          goto LABEL_29;
        }

        v19 = (this + 280);
        do
        {
          v20 = v18[4];
          v15 = v20 >= v6;
          v21 = v20 < v6;
          if (v15)
          {
            v19 = v18;
          }

          v18 = v18[v21];
        }

        while (v18);
        if (v19 == v4)
        {
          goto LABEL_29;
        }

        if (v6 < v19[4])
        {
          goto LABEL_29;
        }

        v27 = &v26;
        v8 = std::__tree<std::__value_type<SCNNode *,Skin *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,Skin *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,Skin *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 272, &v26, &std::piecewise_construct, &v27)[5];
        v7 = *(v8 + 56);
        if (!v7)
        {
          goto LABEL_29;
        }
      }

      GeomPath = v7[16];
      if (!GeomPath)
      {
        GeomPath = USDKitConverter::getGeomPath(this);
      }

      NodeName = USDKitConverter::makeNodeName(this, GeomPath, v26);
      v11 = [(NSString *)GeomPath stringByAppendingPathComponent:NodeName];
      v12 = *(this + 41);
      if (!v12)
      {
        goto LABEL_15;
      }

      v13 = (this + 328);
      do
      {
        v14 = v12[4];
        v15 = v14 >= v26;
        v16 = v14 < v26;
        if (v15)
        {
          v13 = v12;
        }

        v12 = v12[v16];
      }

      while (v12);
      if (v13 != v5 && v26 >= v13[4])
      {
        v27 = &v26;
        v17 = std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 320, &v26, &std::piecewise_construct, &v27)[5];
        if (v17)
        {
LABEL_16:
          if (v7[16])
          {
            USDKitConverter::processMeshSkin(this, v26, v17, v7, v8);
          }
        }
      }

      else
      {
LABEL_15:
        v17 = USDKitConverter::processMesh(this, v26, v11, NodeName);
        if (v17)
        {
          goto LABEL_16;
        }
      }

LABEL_29:
      v2 += 16;
    }

    while (v2 != v3);
  }

  v22 = *(this + 46);
  v23 = *(this + 47);
  while (v22 != v23)
  {
    v24 = *v22;
    if (Skeleton::findNodeWithAnimation(*v22))
    {
      v25 = USDKitConverter::processSkeletonAnimations(this, v24);
      if (v25)
      {
        Skeleton::setSkeletalAnimation(v24, v25);
      }
    }

    ++v22;
  }
}

void *USDKitConverter::prepareSkinning(USDKitConverter *this, SCNNode *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a2;
  if ([(SCNNode *)a2 skinner])
  {
    [(SCNSkinner *)[(SCNNode *)a2 skinner] skeleton];
    operator new();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(SCNNode *)a2 childNodes];
  result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        USDKitConverter::prepareSkinning(this, *(*(&v9 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void Skinning::createSkeletonsFromSkins(Skin ***this)
{
  v1 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    do
    {
      v4 = *v1;
      v5 = *(*v1 + 1);
      if (*(*v1 + 2) != v5)
      {
        if (!*v4)
        {
          *v4 = Skinning::_findRoot(this, *v1 + 1);
          v5 = *(v4 + 1);
        }

        SkeletonByJoint = Skinning::findSkeletonByJoint(this, *v5);
        if (!SkeletonByJoint)
        {
          Skinning::createSkeleton(this, *v4);
        }

        v7 = *(v4 + 1);
        v8 = *(v4 + 2);
        while (v7 != v8)
        {
          v9 = *v7++;
          v29 = v9;
          std::__tree<SCNNode *>::__emplace_unique_key_args<SCNNode *,SCNNode * const&>((this + 6), &v29, &v29);
        }

        Skin::_setSkeleton(v4, SkeletonByJoint);
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v10 = this[3];
        v11 = this[4];
        if (v10 != v11)
        {
          do
          {
            v12 = *v10;
            v28 = v12;
            if (v12 != SkeletonByJoint)
            {
              v13 = SkeletonByJoint[1];
              v14 = v13 - *SkeletonByJoint;
              if (v13 != *SkeletonByJoint)
              {
                v15 = 0;
                v16 = **v12;
                v17 = v14 >> 3;
                if (v17 <= 1)
                {
                  v17 = 1;
                }

                while (*(*SkeletonByJoint + 8 * v15) != v16)
                {
                  if (v17 == ++v15)
                  {
                    goto LABEL_25;
                  }
                }

                if (v15 != -1)
                {
                  v18 = *this;
                  v19 = this[1];
                  while (v18 != v19)
                  {
                    if (*(*v18 + 7) == v28)
                    {
                      Skin::_setSkeleton(*v18, SkeletonByJoint);
                    }

                    ++v18;
                  }

                  std::vector<Statement *>::push_back[abi:nn200100](&v29, &v28);
                }
              }
            }

LABEL_25:
            ++v10;
          }

          while (v10 != v11);
          v20 = v29;
          v21 = v30;
          if (v29 != v30)
          {
            do
            {
              v22 = *v20;
              v24 = this[3];
              v23 = this[4];
              if (v24 != v23)
              {
                v25 = v23 - (v24 + 1);
                if (v23 != v24 + 1)
                {
                  memmove(this[3], v24 + 1, v23 - (v24 + 1));
                }

                this[4] = (v24 + v25);
              }

              if (v22)
              {
                std::__tree<char>::destroy(v22 + 72, *(v22 + 80));
                std::__tree<char>::destroy(v22 + 48, *(v22 + 56));
                std::__tree<char>::destroy(v22 + 24, *(v22 + 32));
                v26 = *v22;
                if (*v22)
                {
                  *(v22 + 8) = v26;
                  operator delete(v26);
                }

                MEMORY[0x21CF07610](v22, 0x10A0C400C584343);
              }

              ++v20;
            }

            while (v20 != v21);
            v20 = v29;
          }

          if (v20)
          {
            v30 = v20;
            operator delete(v20);
          }
        }
      }

      ++v1;
    }

    while (v1 != v2);
    v1 = *this;
    v2 = this[1];
  }

  while (v1 != v2)
  {
    v27 = *v1++;
    Skin::_prepareIndexRemapping(v27);
  }
}

void sub_21C120760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Skeleton::findNodeWithAnimation(Skeleton *this)
{
  v1 = **this;
  if (v1)
  {
    while (![objc_msgSend(v1 "animationKeys")])
    {
      v1 = [v1 parentNode];
      if (!v1)
      {

        return Skeleton::_findJointWithAnimation(this);
      }
    }
  }

  return v1;
}

__n128 Skin::setJoint(Skin *this, SCNNode *a2, const simd_double4x4 *a3)
{
  v12 = a2;
  std::vector<UITouch *>::push_back[abi:nn200100](this + 8, &v12);
  v13 = &v12;
  v5 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 32, &v12, &std::piecewise_construct, &v13);
  v6 = *a3->columns[0].f64;
  v7 = *&a3->columns[0].f64[2];
  v8 = *&a3->columns[1].f64[2];
  *(v5 + 5) = *a3->columns[1].f64;
  *(v5 + 6) = v8;
  *(v5 + 3) = v6;
  *(v5 + 4) = v7;
  result = *a3->columns[2].f64;
  v10 = *&a3->columns[2].f64[2];
  v11 = *&a3->columns[3].f64[2];
  *(v5 + 9) = *a3->columns[3].f64;
  *(v5 + 10) = v11;
  *(v5 + 7) = result;
  *(v5 + 8) = v10;
  return result;
}

void *std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<SCNNode *,Skin *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,Skin *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,Skin *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *Skinning::_findRoot(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1] - *a2;
  if (!(v3 >> 3))
  {
    return 0;
  }

  if (v3 >> 3 == 1)
  {
    return *v2;
  }

  v5 = *v2;
  if (v3 < 9)
  {
    return *v2;
  }

  v7 = 1;
  do
  {
    if (v5)
    {
      v8 = *(v2 + 8 * v7);
      while (!v8)
      {
LABEL_13:
        result = [v5 parentNode];
        v5 = result;
        if (!result)
        {
          goto LABEL_16;
        }
      }

      result = v8;
      while (v5 != result)
      {
        result = [result parentNode];
        if (!result)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
      result = 0;
    }

LABEL_16:
    ++v7;
    v2 = *a2;
    v5 = result;
  }

  while (v7 < (a2[1] - *a2) >> 3);
  return result;
}

uint64_t *Skinning::findSkeletonByJoint(Skinning *this, SCNNode *a2)
{
  v2 = *(this + 3);
  v3 = *(this + 4);
  while (v2 != v3)
  {
    result = *v2;
    v5 = **v2;
    v6 = (*v2)[1];
    v7 = v6 - v5;
    if (v6 != v5)
    {
      v8 = 0;
      v9 = v7 >> 3;
      if (v9 <= 1)
      {
        v9 = 1;
      }

      while (*(v5 + 8 * v8) != a2)
      {
        if (v9 == ++v8)
        {
          goto LABEL_10;
        }
      }

      if (v8 != -1)
      {
        return result;
      }
    }

LABEL_10:
    ++v2;
  }

  return 0;
}

__n128 Skin::_setSkeleton(void *a1, uint64_t a2)
{
  a1[7] = a2;
  v2 = a1[1];
  for (i = a1[2]; v2 != i; *(v8 + 8) = v13)
  {
    v5 = *v2++;
    v15 = v5;
    v16 = &v15;
    v6 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>((a1 + 4), &v15, &std::piecewise_construct, &v16);
    v7 = a1[7];
    v16 = &v15;
    v8 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v7 + 72, &v15, &std::piecewise_construct, &v16);
    v9 = *(v6 + 3);
    v10 = *(v6 + 4);
    v11 = *(v6 + 6);
    *(v8 + 5) = *(v6 + 5);
    *(v8 + 6) = v11;
    *(v8 + 3) = v9;
    *(v8 + 4) = v10;
    result = *(v6 + 7);
    v13 = *(v6 + 8);
    v14 = *(v6 + 10);
    *(v8 + 9) = *(v6 + 9);
    *(v8 + 10) = v14;
    *(v8 + 7) = result;
  }

  return result;
}

void *Skin::_prepareIndexRemapping(void *this)
{
  v9 = 0;
  v1 = this[1];
  if (this[2] != v1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      v4 = *v2[7];
      v5 = *(v2[7] + 8) - v4;
      if (v5)
      {
        v6 = 0;
        v7 = *(v1 + 8 * v3);
        v8 = v5 >> 3;
        if ((v5 >> 3) <= 1)
        {
          v8 = 1;
        }

        while (*(v4 + 8 * v6) != v7)
        {
          if (v8 == ++v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v6 = -1;
      }

      v10 = &v9;
      this = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>((v2 + 8), &v9, &std::piecewise_construct, &v10);
      this[5] = v6;
      v3 = v9 + 1;
      v9 = v3;
      v1 = v2[1];
    }

    while (v3 < (v2[2] - v1) >> 3);
  }

  return this;
}

void *Skeleton::_collectJoints(Skeleton *this, SCNNode *a2, NSString *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v30 = a2;
  std::vector<UITouch *>::push_back[abi:nn200100](this, &v30);
  v5 = [v30 name];
  v31 = &v30;
  std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 24, &v30, &std::piecewise_construct, &v31)[5] = v7;
  [v30 simdTransform];
  v24 = vcvtq_f64_f32(*v9.f32);
  v25 = vcvt_hight_f64_f32(v8);
  v22 = vcvtq_f64_f32(*v10.f32);
  v23 = vcvtq_f64_f32(*v8.f32);
  v20 = vcvtq_f64_f32(*v11.f32);
  v21 = vcvt_hight_f64_f32(v9);
  v31 = &v30;
  v18 = vcvt_hight_f64_f32(v11);
  v19 = vcvt_hight_f64_f32(v10);
  v12 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 48, &v30, &std::piecewise_construct, &v31);
  v12[3] = v23;
  v12[4] = v25;
  v12[5] = v24;
  v12[6] = v21;
  v12[7] = v22;
  v12[8] = v19;
  v12[9] = v20;
  v12[10] = v18;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v30 childNodes];
  result = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (result)
  {
    v15 = result;
    v16 = *v27;
    do
    {
      v17 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        Skeleton::_collectJoints(this, *(*(&v26 + 1) + 8 * v17), v7);
        v17 = v17 + 1;
      }

      while (v15 != v17);
      result = [v13 countByEnumeratingWithState:&v26 objects:v32 count:16];
      v15 = result;
    }

    while (result);
  }

  return result;
}

void *std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = v4[4];
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<SCNNode *>::__emplace_unique_key_args<SCNNode *,SCNNode * const&>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t Skeleton::_findJointWithAnimation(Skeleton *this)
{
  v5 = *this;
  if (*(this + 1) == *this)
  {
    return 0;
  }

  v9 = v2;
  v10 = v1;
  v11 = v3;
  v12 = v4;
  v7 = 0;
  while (![objc_msgSend(*(v5 + 8 * v7) animationKeys])
  {
    ++v7;
    v5 = *this;
    if (v7 >= (*(this + 1) - *this) >> 3)
    {
      return 0;
    }
  }

  return *(*this + 8 * v7);
}

void *USDKitConverter::prepareBlendShape(USDKitConverter *this, SCNNode *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a2;
  if ([(SCNNode *)a2 geometry]&& [(SCNNode *)a2 morpher])
  {
    [(NSArray *)[(SCNMorpher *)[(SCNNode *)a2 morpher] weights] count];
    operator new();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(SCNNode *)a2 childNodes];
  result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
  v6 = result;
  if (result)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        USDKitConverter::prepareBlendShape(this, *(*(&v9 + 1) + 8 * v8));
        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(NSArray *)v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

NSUInteger USDKitConverter::prepareCAAnimation(USDKitConverter *this, CAAnimationGroup *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return USDKitConverter::prepareCAAnimationGroup(this, a2);
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v5 = [(CAAnimationGroup *)a2 keyTimes];
      result = [v5 count];
      if (result >= 2)
      {
        [objc_msgSend(v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1), "doubleValue"}];
        v7 = v6;
        result = [objc_msgSend(v5 objectAtIndexedSubscript:{0), "doubleValue"}];
        v9 = v7 - v8;
        if (v9 >= 0.0001)
        {
          [(CAAnimationGroup *)a2 duration];
          v11 = v10 / v9;
          [objc_msgSend(v5 objectAtIndexedSubscript:{0), "doubleValue"}];
          v13 = v12;
          [(CAAnimationGroup *)a2 beginTime];
          v15 = v14 + v13 * v11;
          v16 = *(this + 62);
          if (v16 >= 0.0)
          {
            v17 = *(this + 61);
            if (v17 > v15)
            {
              v17 = v15;
            }

            *(this + 61) = v17;
            if (v16 >= v15)
            {
              v15 = v16;
            }
          }

          else
          {
            *(this + 61) = v15;
          }

          *(this + 62) = v15;
          [objc_msgSend(v5 objectAtIndexedSubscript:{objc_msgSend(v5, "count") - 1), "doubleValue"}];
          v19 = v18;
          [(CAAnimationGroup *)a2 beginTime];
          v21 = v20 + v19 * v11;
          v22 = *(this + 62);
          if (v22 >= 0.0)
          {
            v23 = *(this + 61);
            if (v23 > v21)
            {
              v23 = v21;
            }

            *(this + 61) = v23;
            if (v22 >= v21)
            {
              v21 = v22;
            }
          }

          else
          {
            *(this + 61) = v21;
          }

          *(this + 62) = v21;
          result = [v5 count];
          if (result >= 2)
          {
            [objc_msgSend(v5 objectAtIndexedSubscript:{1), "doubleValue"}];
            v25 = v24;
            result = [objc_msgSend(v5 objectAtIndexedSubscript:{0), "doubleValue"}];
            v27 = v11 * (v25 - v26);
            if (v27 > 0.001)
            {
              v28 = *(this + 63);
              if (v28 == 0.0 || v28 > v27)
              {
                *(this + 63) = v27;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

NSUInteger USDKitConverter::prepareCAAnimationGroup(USDKitConverter *this, CAAnimationGroup *a2)
{
  result = [(NSArray *)[(CAAnimationGroup *)a2 animations] count];
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      USDKitConverter::prepareCAAnimation(this, [(NSArray *)[(CAAnimationGroup *)a2 animations] objectAtIndex:i]);
      result = [(NSArray *)[(CAAnimationGroup *)a2 animations] count];
    }
  }

  return result;
}

void *USDKitConverter::makeNodeName(USDKitConverter *this, NSString *a2, SCNNode *a3)
{
  v6 = [(SCNNode *)a3 name];
  if (!v6 && (![(SCNNode *)a3 geometry]|| (v6 = [(SCNGeometry *)[(SCNNode *)a3 geometry] name]) == 0) || (v7 = v6, ![(NSString *)v6 length]))
  {
    v9 = MEMORY[0x277CCABB0];
    ++*(this + 30);
    v7 = [@"Node_" stringByAppendingString:{objc_msgSend(objc_msgSend(v9, "numberWithUnsignedLong:"), "stringValue")}];
  }

  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](-[NSString stringByAppendingPathComponent:](a2, "stringByAppendingPathComponent:", v10), "UTF8String"));
  if ((this + 72) != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(this + 64, __p))
  {
    v11 = [v10 stringByAppendingString:@"_"];
    v12 = MEMORY[0x277CCABB0];
    ++*(this + 30);
    v10 = [v11 stringByAppendingString:{objc_msgSend(objc_msgSend(v12, "numberWithUnsignedLong:"), "stringValue")}];
    MEMORY[0x21CF074C0](__p, [[(NSString *)a2 stringByAppendingPathComponent:v10] UTF8String]);
  }

  std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(this + 8, __p, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v10;
}

void sub_21C121884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id Skeleton::makeUskSkeleton(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 104);
  if (!v3)
  {
    *(a1 + 128) = a3;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(a1 + 8) - *a1) >> 3];
    v31 = 0;
    v32 = 0;
    v33 = 0;
    std::vector<simd_double4x4>::reserve(&v31, (*(a1 + 8) - *a1) >> 3);
    __p = 0;
    v29 = 0;
    v30 = 0;
    std::vector<simd_double4x4>::reserve(&__p, (*(a1 + 8) - *a1) >> 3);
    v7 = *a1;
    v8 = *(a1 + 8);
    if (*a1 != v8)
    {
      v9 = (a1 + 80);
      do
      {
        v27 = *v7;
        if (v27)
        {
          *&v26[0] = &v27;
          [v6 addObject:{std::__tree<std::__value_type<SCNNode *, NSString *>, std::__map_value_compare<SCNNode *, std::__value_type<SCNNode *, NSString *>, std::less<SCNNode *>, true>, std::allocator<std::__value_type<SCNNode *, NSString *>>>::__emplace_unique_key_args<SCNNode *, std::piecewise_construct_t const&, std::tuple<SCNNode * const&>, std::tuple<>>(a1 + 24, &v27, &std::piecewise_construct, v26)[5]}];
          *&v26[0] = &v27;
          v10 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(a1 + 48, &v27, &std::piecewise_construct, v26);
          std::vector<simd_double4x4>::push_back[abi:nn200100](&v31, v10 + 3);
          v11 = *v9;
          if (!*v9)
          {
            goto LABEL_13;
          }

          v12 = (a1 + 80);
          do
          {
            v13 = v11[4];
            v14 = v13 >= v27;
            v15 = v13 < v27;
            if (v14)
            {
              v12 = v11;
            }

            v11 = v11[v15];
          }

          while (v11);
          if (v12 != v9 && v27 >= v12[4])
          {
            *&v26[0] = &v27;
            v20 = std::__tree<std::__value_type<SCNNode *,simd_double4x4>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,simd_double4x4>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,simd_double4x4>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(a1 + 72, &v27, &std::piecewise_construct, v26);
            std::vector<simd_double4x4>::push_back[abi:nn200100](&__p, v20 + 3);
          }

          else
          {
LABEL_13:
            [v27 simdWorldTransform];
            v26[0] = vcvtq_f64_f32(*v16.f32);
            v26[1] = vcvt_hight_f64_f32(v16);
            v26[2] = vcvtq_f64_f32(*v17.f32);
            v26[3] = vcvt_hight_f64_f32(v17);
            v26[4] = vcvtq_f64_f32(*v18.f32);
            v26[5] = vcvt_hight_f64_f32(v18);
            v26[6] = vcvtq_f64_f32(*v19.f32);
            v26[7] = vcvt_hight_f64_f32(v19);
            std::vector<simd_double4x4>::push_back[abi:nn200100](&__p, v26);
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }

    v21 = *(a1 + 128);
    if (*(a1 + 96))
    {
      v22 = [USKObjectPath_helper objectPathWithString:v21];
      v3 = 0;
    }

    else
    {
      v23 = [USKObjectPath_helper objectPathWithString:v21];
      v3 = [USKHelper scene:a2 nodeAtPath:v23 type:USKNodeTypeSkeletonRoot_weak];
      v22 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [*(a1 + 128) stringByAppendingPathComponent:@"Skeleton"]);
    }

    *(a1 + 112) = v22;
    v24 = [USKHelper scene:"scene:nodeAtPath:type:" nodeAtPath:a2 type:?];
    *(a1 + 104) = v24;
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v24 propertyWithName:@"joints" type:USKDataTypeStringArray_weak role:{USKRoleTypeNone_weak), "setStringArray:", v6}];
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:*(a1 + 104) propertyWithName:@"restTransforms" type:USKDataTypeDouble4x4Array_weak role:{USKRoleTypeNone_weak), "setDouble4x4Array:count:"}];
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:*(a1 + 104) propertyWithName:@"bindTransforms" type:USKDataTypeDouble4x4Array_weak role:{USKRoleTypeNone_weak), "setDouble4x4Array:count:"}];
    if (!v3)
    {
      v3 = *(a1 + 104);
    }

    if (__p)
    {
      v29 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  return v3;
}

void sub_21C121BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

id USDKitConverter::processMesh(USDKitConverter *this, SCNNode *a2, NSString *a3, NSString *a4)
{
  v15 = a2;
  v6 = *(this + 53);
  if (v6)
  {
    v8 = (this + 424);
    do
    {
      v9 = v6[4];
      v10 = v9 >= a2;
      v11 = v9 < a2;
      if (v10)
      {
        v8 = v6;
      }

      v6 = v6[v11];
    }

    while (v6);
    if (v8 != (this + 424) && v8[4] <= a2)
    {
      v16 = &v15;
      v12 = std::__tree<std::__value_type<SCNNode *,Skin *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,Skin *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,Skin *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 416, &v15, &std::piecewise_construct, &v16);
      BlendShape::makeUsdSkeleton(v12[5], *(this + 7), a3);
      a3 = [(NSString *)a3 stringByAppendingPathComponent:a4];
      a2 = v15;
    }
  }

  if (!USDKitConverter::isMesh(this, a2))
  {
    return 0;
  }

  v13 = [USKHelper scene:*(this + 7) nodeAtPath:[USKObjectPath_helper objectPathWithString:a3] type:USKNodeTypeMesh_weak];
  USDKitConverter::processSCNGeometry(this, v13, a3, [(SCNNode *)v15 geometry]);
  if ([(SCNNode *)v15 morpher])
  {
    USDKitConverter::processSCNMorpher(this, v13, a3, v15);
  }

  return v13;
}

id USDKitConverter::processCamera(USDKitConverter *this, SCNNode *a2, NSString *a3, SCNCamera *a4)
{
  v5 = [USKHelper scene:*(this + 7) nodeAtPath:[USKObjectPath_helper objectPathWithString:a3] type:USKNodeTypeCamera_weak];
  if ([(SCNCamera *)a4 usesOrthographicProjection])
  {
    v6 = @"orthographic";
  }

  else
  {
    v6 = @"perspective";
  }

  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v5 propertyWithName:@"projection" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v6)}];
  if (![(SCNCamera *)a4 usesOrthographicProjection])
  {
    [(SCNCamera *)a4 fieldOfView];
    v8 = tan(v7 / 180.0 * 3.14159265 * 0.5);
    [(SCNCamera *)a4 focalLength];
    *&v8 = v9 * v8 + v9 * v8;
    v10 = [USKHelper node:v5 propertyWithName:@"horizontalAperture" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
    LODWORD(v11) = LODWORD(v8);
    [v10 setFloatValue:v11];
    v12 = [USKHelper node:v5 propertyWithName:@"verticalAperture" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
    LODWORD(v13) = LODWORD(v8);
    [v12 setFloatValue:v13];
  }

  v14 = [USKHelper node:v5 propertyWithName:@"focalLength" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
  [(SCNCamera *)a4 focalLength];
  *&v15 = v15;
  [v14 setFloatValue:v15];
  v16 = [USKHelper node:v5 propertyWithName:@"clippingRange" type:USKDataTypeFloat2_weak role:USKRoleTypeNone_weak];
  [(SCNCamera *)a4 zNear];
  v25 = v17;
  [(SCNCamera *)a4 zFar];
  v18.f64[0] = v25;
  v18.f64[1] = v19;
  [v16 setFloat2Value:COERCE_DOUBLE(vcvt_f32_f64(v18))];
  if ([(SCNCamera *)a4 wantsDepthOfField])
  {
    v20 = [USKHelper node:v5 propertyWithName:@"fStop" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
    [(SCNCamera *)a4 fStop];
    *&v21 = v21;
    [v20 setFloatValue:v21];
    v22 = [USKHelper node:v5 propertyWithName:@"focusDistance" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
    [(SCNCamera *)a4 focusDistance];
    *&v23 = v23;
    [v22 setFloatValue:v23];
  }

  return v5;
}

void *USDKitConverter::processAnimations(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(a3 "animationKeys")];
  if (result)
  {
    v7 = result;
    v8 = 0;
    while (1)
    {
      result = [a3 animationPlayerForKey:{objc_msgSend(objc_msgSend(a3, "animationKeys"), "objectAtIndexedSubscript:", v8)}];
      if (result)
      {
        break;
      }

      if (v7 == ++v8)
      {
        return result;
      }
    }

    v9 = [objc_msgSend(result "animation")];

    return USDKitConverter::processAnimation(a1, a2, v9);
  }

  return result;
}

uint64_t USDKitConverter::processTransforms(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  [a3 simdTransform];
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v8, *MEMORY[0x277D860B8]), vceqq_f32(v9, *(MEMORY[0x277D860B8] + 16))), vandq_s8(vceqq_f32(v10, *(MEMORY[0x277D860B8] + 32)), vceqq_f32(v11, *(MEMORY[0x277D860B8] + 48))))) & 0x80000000) != 0)
  {
    goto LABEL_30;
  }

  if ([*(a1 + 88) count])
  {
    if (([*(a1 + 88) containsObject:@"xformOp:transform"] & 1) == 0)
    {
      [a3 position];
      v65.x = 0.0;
      v65.y = 0.0;
      v65.z = 0.0;
      if (!SCNVector3EqualToVector3(v63, v65) && ([*(a1 + 88) containsObject:@"xformOp:translate"] & 1) == 0)
      {
        v12 = [USKHelper node:a2 propertyWithName:@"xformOp:translate" type:USKDataTypeDouble3_weak role:USKRoleTypeNone_weak];
        [a3 position];
        v50 = v13;
        [a3 position];
        v51 = vcvtq_f64_f32(__PAIR64__(v14, v50));
        [a3 position];
        v16.f64[0] = v15;
        v56 = v16;
        v55 = v51;
        [v12 setDouble3Value:&v55];
        [*(a1 + 88) addObject:@"xformOp:translate"];
      }

      [a3 orientation];
      v68.x = 0.0;
      v68.y = 0.0;
      v68.z = 0.0;
      v68.w = 1.0;
      if (SCNVector4EqualToVector4(v67, v68) || ([*(a1 + 88) containsObject:@"xformOp:orient"] & 1) != 0 || (objc_msgSend(*(a1 + 88), "containsObject:", @"xformOp:rotateXYZ") & 1) != 0)
      {
        goto LABEL_26;
      }

      if ([*(a1 + 88) containsObject:@"xformOp:rotateX"] & 1) != 0 || (objc_msgSend(*(a1 + 88), "containsObject:", @"xformOp:rotateY") & 1) != 0 || (objc_msgSend(*(a1 + 88), "containsObject:", @"xformOp:rotateZ"))
      {
        [a3 simdEulerAngles];
        if (v18 != 0.0 && ([*(a1 + 88) containsObject:@"xformOp:rotateX"] & 1) == 0)
        {
          v19 = [USKHelper node:a2 propertyWithName:@"xformOp:rotateX" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
          [a3 simdEulerAngles];
          v21 = v20 / 3.14159265 * 180.0;
          *&v21 = v21;
          [v19 setFloatValue:v21];
          [*(a1 + 88) addObject:@"xformOp:rotateX"];
        }

        [a3 simdEulerAngles];
        LODWORD(v22) = HIDWORD(v22);
        if (*(&v22 + 1) != 0.0 && ([*(a1 + 88) containsObject:{@"xformOp:rotateY", v22}] & 1) == 0)
        {
          v23 = [USKHelper node:a2 propertyWithName:@"xformOp:rotateY" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
          [a3 simdEulerAngles];
          v25 = v24 / 3.14159265 * 180.0;
          *&v25 = v25;
          [v23 setFloatValue:v25];
          [*(a1 + 88) addObject:@"xformOp:rotateY"];
        }

        [a3 simdEulerAngles];
        *&v17 = v26;
        if (v26 == 0.0 || ([*(a1 + 88) containsObject:{@"xformOp:rotateZ", v17}] & 1) != 0)
        {
          goto LABEL_26;
        }

        v27 = @"xformOp:rotateZ";
        v28 = [USKHelper node:a2 propertyWithName:@"xformOp:rotateZ" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
        [a3 simdEulerAngles];
        v30 = v29 / 3.14159265 * 180.0;
        *&v30 = v30;
        [v28 setFloatValue:v30];
      }

      else
      {
        [a3 orientation];
        v52 = v37;
        [a3 orientation];
        v49 = v38;
        [a3 orientation];
        [a3 orientation];
        v39 = COERCE_DOUBLE(__PAIR64__(v49, v52));
        v27 = @"xformOp:orient";
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"xformOp:orient" type:USKDataTypeQuatf_weak role:{USKRoleTypeNone_weak), "setQuatfValue:", v39}];
      }

      [*(a1 + 88) addObject:v27];
LABEL_26:
      [a3 scale];
      v66.x = 1.0;
      v66.y = 1.0;
      v66.z = 1.0;
      if (SCNVector3EqualToVector3(v64, v66) || ([*(a1 + 88) containsObject:@"xformOp:scale"] & 1) != 0)
      {
        goto LABEL_30;
      }

      v31 = @"xformOp:scale";
      v40 = [USKHelper node:a2 propertyWithName:@"xformOp:scale" type:USKDataTypeDouble3_weak role:USKRoleTypeNone_weak];
      [a3 scale];
      v53 = v41;
      [a3 scale];
      v54 = vcvtq_f64_f32(__PAIR64__(v42, v53));
      [a3 scale];
      v44.f64[0] = v43;
      v56 = v44;
      v55 = v54;
      [v40 setDouble3Value:&v55];
      goto LABEL_29;
    }
  }

  else if ((a4 & 1) == 0)
  {
    v31 = @"xformOp:transform";
    v32 = [USKHelper node:a2 propertyWithName:@"xformOp:transform" type:USKDataTypeDouble4x4_weak role:USKRoleTypeNone_weak];
    [a3 simdTransform];
    v55 = vcvtq_f64_f32(*v33.f32);
    v56 = vcvt_hight_f64_f32(v33);
    v57 = vcvtq_f64_f32(*v34.f32);
    v58 = vcvt_hight_f64_f32(v34);
    v59 = vcvtq_f64_f32(*v35.f32);
    v60 = vcvt_hight_f64_f32(v35);
    v61 = vcvtq_f64_f32(*v36.f32);
    v62 = vcvt_hight_f64_f32(v36);
    [v32 setDouble4x4Value:&v55];
LABEL_29:
    [*(a1 + 88) addObject:v31];
  }

LABEL_30:
  v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  for (i = 0; i != 8; ++i)
  {
    v47 = MDLBridgeAllTransforms[i];
    if ([*(a1 + 88) containsObject:v47])
    {
      [v45 addObject:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v47)}];
    }
  }

  if ([v45 count])
  {
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"xformOpOrder" type:USKDataTypeTokenArray_weak role:{USKRoleTypeNone_weak), "setTokenArray:", v45}];
  }

  return [*(a1 + 88) removeAllObjects];
}

void std::vector<simd_double4x4>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 7)
  {
    if (!(a2 >> 57))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<simd_double4x4>>(a1, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<simd_double4x4>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v13 = (v4 - *a1) >> 7;
    v14 = v13 + 1;
    if ((v13 + 1) >> 57)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v15 = v5 - *a1;
    if (v15 >> 6 > v14)
    {
      v14 = v15 >> 6;
    }

    if (v15 >= 0x7FFFFFFFFFFFFF80)
    {
      v16 = 0x1FFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<simd_double4x4>>(a1, v16);
    }

    v17 = (v13 << 7);
    v18 = *a2;
    v19 = a2[1];
    v20 = a2[3];
    v17[2] = a2[2];
    v17[3] = v20;
    *v17 = v18;
    v17[1] = v19;
    v21 = a2[4];
    v22 = a2[5];
    v23 = a2[7];
    v17[6] = a2[6];
    v17[7] = v23;
    v17[4] = v21;
    v17[5] = v22;
    v12 = (v13 << 7) + 128;
    v24 = *(a1 + 8) - *a1;
    v25 = v17 - v24;
    memcpy(v17 - v24, *a1, v24);
    v26 = *a1;
    *a1 = v25;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v26)
    {
      operator delete(v26);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = a2[4];
    v10 = a2[5];
    v11 = a2[7];
    v4[6] = a2[6];
    v4[7] = v11;
    v4[4] = v9;
    v4[5] = v10;
    v12 = (v4 + 8);
  }

  *(a1 + 8) = v12;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<simd_double4x4>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<SCNNode *,Skeleton *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

id BlendShape::makeUsdSkeleton(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [USKObjectPath_helper objectPathWithString:?];
  v7 = [USKHelper scene:a2 nodeAtPath:v6 type:USKNodeTypeSkeletonRoot_weak];
  v8 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a3 stringByAppendingPathComponent:@"Skeleton"]);
  *(a1 + 8) = [USKHelper scene:a2 nodeAtPath:v8 type:USKNodeTypeSkeleton_weak];
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v7 propertyWithName:@"skel:skeleton" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", v8}];
  return v7;
}

SCNGeometryPrimitiveType USDKitConverter::isMesh(USDKitConverter *this, SCNNode *a2)
{
  v2 = [(SCNNode *)a2 geometry];
  if ([(SCNGeometry *)v2 geometryElementCount]< 1)
  {
    return 0;
  }

  v3 = 0;
  while (1)
  {
    v4 = [(SCNGeometry *)v2 geometryElementAtIndex:v3];
    if ([(SCNGeometryElement *)v4 primitiveType]== SCNGeometryPrimitiveTypeTriangles || [(SCNGeometryElement *)v4 primitiveType]== SCNGeometryPrimitiveTypePolygon)
    {
      break;
    }

    result = [(SCNGeometryElement *)v4 primitiveType];
    if (result == SCNGeometryPrimitiveTypeTriangleStrip)
    {
      return result;
    }

    if (++v3 >= [(SCNGeometry *)v2 geometryElementCount])
    {
      return 0;
    }
  }

  return 1;
}

void USDKitConverter::processSCNGeometry(USDKitConverter *a1, uint64_t a2, void *a3, void *a4)
{
  v123 = a3;
  v126 = a1;
  v152 = *MEMORY[0x277D85DE8];
  v130 = a2;
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"subdivisionScheme" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"none"}];
  v132 = a4;
  if ([a4 geometrySourceChannels] && objc_msgSend(objc_msgSend(a4, "geometrySourceChannels"), "count") >= 2)
  {
    v127 = [objc_msgSend(a4 "geometrySourceChannels")];
    v125 = 1;
  }

  else
  {
    v125 = 0;
    v127 = 1;
  }

  v5 = [v132 geometryElementCount];
  if (v5 < 1)
  {
    v12 = 0;
    v146 = 0;
    v147 = 0;
    v148 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = v132;
    do
    {
      v10 = [v9 geometryElementAtIndex:v8];
      v11 = [v10 primitiveCount];
      if ([v10 primitiveType] == 1 && objc_msgSend(v10, "indexCount") >= 3)
      {
        v7 = v7 + 3 * [v10 indexCount] - 6;
      }

      else
      {
        v7 += [v10 indexCount];
      }

      v6 += v11;
      ++v8;
      v9 = v132;
      v5 = [v132 geometryElementCount];
    }

    while (v8 < v5);
    v12 = v7;
    v146 = 0;
    v147 = 0;
    v148 = 0;
    if (v6)
    {
      std::vector<float>::__vallocate[abi:nn200100](&v146, v6);
    }
  }

  v122[1] = v122;
  MEMORY[0x28223BE20](v5);
  v137 = (v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v14)
  {
    v15 = v127;
    v16 = v137;
    bzero(v137, 24 * ((24 * v127 - 24) / 0x18) + 24);
    do
    {
      std::vector<unsigned int>::reserve(v16++, v12);
      --v15;
    }

    while (v15);
  }

  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  v17 = [v132 geometryElements];
  v134 = [v17 countByEnumeratingWithState:&v142 objects:v151 count:16];
  if (v134)
  {
    v131 = v17;
    v135 = 0;
    *&v133 = *v143;
    do
    {
      for (i = 0; i != v134; ++i)
      {
        if (*v143 != v133)
        {
          objc_enumerationMutation(v131);
        }

        v18 = *(*(&v142 + 1) + 8 * i);
        if ([v18 data])
        {
          v19 = [objc_msgSend(v18 "data")];
          if ([v18 primitiveType] == 4)
          {
            v20 = 0;
            v21 = 4 * v135;
            while ([v18 primitiveCount] > v20)
            {
              v22 = [v18 bytesPerIndex];
              switch(v22)
              {
                case 1:
                  v23 = *v19;
                  break;
                case 4:
                  v23 = *v19;
                  break;
                case 2:
                  v23 = *v19;
                  break;
                default:
                  v23 = *v19;
                  break;
              }

              *&v146[4 * v20++ + v21] = v23;
              v19 += [v18 bytesPerIndex];
            }
          }

          v138.i64[0] = [v18 indicesChannelCount];
          if ([v18 hasInterleavedIndicesChannels])
          {
            v24 = v138.i64[0];
          }

          else
          {
            v24 = 1;
          }

          if (v138.i64[0])
          {
            v139.i64[0] = 0;
            do
            {
              v25 = [v18 hasInterleavedIndicesChannels];
              v26 = v139.i64[0];
              if ((v25 & 1) == 0)
              {
                v27 = [v18 indexCount];
                v26 = v27 * v139.i64[0];
              }

              v28 = [v18 primitiveType];
              p_begin = &v137[v139.i64[0]].__begin_;
              if (v28 == 1)
              {
                for (j = 2; j < [v18 indexCount]; ++j)
                {
                  v31 = [v18 bytesPerIndex];
                  v32 = [v18 bytesPerIndex];
                  v33 = v31 * (2 * v24 + v26);
                  switch(v32)
                  {
                    case 1:
                      v34 = v19[v33];
                      break;
                    case 4:
                      v34 = *&v19[v33];
                      break;
                    case 2:
                      v34 = *&v19[v33];
                      break;
                    default:
                      v34 = v19[v33];
                      break;
                  }

                  v149.i32[0] = v34;
                  v35 = [v18 bytesPerIndex];
                  v36 = [v18 bytesPerIndex];
                  v37 = v35 * (v24 + v26);
                  switch(v36)
                  {
                    case 1:
                      v38 = v19[v37];
                      break;
                    case 4:
                      v38 = *&v19[v37];
                      break;
                    case 2:
                      v38 = *&v19[v37];
                      break;
                    default:
                      v38 = v19[v37];
                      break;
                  }

                  LODWORD(v140) = v38;
                  v39 = [v18 bytesPerIndex];
                  v40 = [v18 bytesPerIndex];
                  v41 = v39 * v26;
                  switch(v40)
                  {
                    case 1:
                      v42 = v19[v41];
                      break;
                    case 4:
                      v42 = *&v19[v41];
                      break;
                    case 2:
                      v42 = *&v19[v41];
                      break;
                    default:
                      v42 = v19[v41];
                      break;
                  }

                  v141 = v42;
                  if (j)
                  {
                    v43 = &v140;
                  }

                  else
                  {
                    v43 = &v141;
                  }

                  std::vector<int>::push_back[abi:nn200100](p_begin, v43);
                  if (j)
                  {
                    v44 = &v141;
                  }

                  else
                  {
                    v44 = &v140;
                  }

                  std::vector<int>::push_back[abi:nn200100](p_begin, v44);
                  std::vector<int>::push_back[abi:nn200100](p_begin, &v149);
                  v26 += v24;
                }
              }

              else
              {
                for (k = 0; k < [v18 indexCount]; ++k)
                {
                  v46 = [v18 bytesPerIndex];
                  v47 = [v18 bytesPerIndex];
                  v48 = v46 * v26;
                  switch(v47)
                  {
                    case 1:
                      v49 = v19[v48];
                      break;
                    case 4:
                      v49 = *&v19[v48];
                      break;
                    case 2:
                      v49 = *&v19[v48];
                      break;
                    default:
                      v49 = v19[v48];
                      break;
                  }

                  v149.i32[0] = v49;
                  std::vector<int>::push_back[abi:nn200100](p_begin, &v149);
                  v26 += v24;
                }
              }

              ++v139.i64[0];
            }

            while (v139.i64[0] != v138.i64[0]);
          }

          v50 = [v18 primitiveCount];
          v135 += v50;
        }
      }

      v134 = [v131 countByEnumeratingWithState:&v142 objects:v151 count:16];
    }

    while (v134);
  }

  else
  {
    v135 = 0;
  }

  v51 = [USKHelper node:v130 propertyWithName:@"faceVertexCounts" type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
  [v51 setIntArray:v146 count:v135];
  v52 = 0;
  i = 0;
  v53 = 0;
  LODWORD(v131) = v125 ^ 1;
  v134 = @"kGeometrySourceSemanticVertex";
  v129 = @"kGeometrySourceSemanticNormal";
  v128 = @"kGeometrySourceSemanticColor";
  v124 = @"kGeometrySourceSemanticTexcoord";
  while (1)
  {
    v54 = [objc_msgSend_geometrySources(v132) count];
    if (i >= v54)
    {
      break;
    }

    v55 = objc_msgSend_geometrySources(v132);
    v56 = [v55 objectAtIndexedSubscript:i];
    v57 = [v56 vectorCount];
    v58 = [objc_msgSend(v56 "data")];
    v59 = [v56 dataOffset];
    isEqualToString = objc_msgSend_isEqualToString_([v56 semantic]);
    v61 = isEqualToString;
    v62 = isEqualToString;
    if (((isEqualToString | v131) & 1) == 0)
    {
      if (i >= v127)
      {
        v62 = 0;
      }

      else
      {
        v63 = [v132 geometrySourceChannels];
        v62 = [objc_msgSend(v63 objectAtIndexedSubscript:{i), "intValue"}] != 0;
      }
    }

    LODWORD(v135) = v53;
    v64 = v58 + v59;
    if ((v61 & 1) != 0 || (objc_msgSend_isEqualToString_([v56 semantic]) & 1) != 0 || objc_msgSend_isEqualToString_(objc_msgSend(v56, "semantic")))
    {
      v149 = 0uLL;
      v150.i64[0] = 0;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v149, v57);
      v66 = v57;
      if (v57 >= 1)
      {
        do
        {
          *&v65 = *v64;
          DWORD2(v65) = *(v64 + 8);
          v140 = v65;
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v149, &v140);
          if (v61)
          {
            v67.i64[0] = *v64;
            v67.i32[2] = *(v64 + 8);
            if (v52)
            {
              v68 = v139;
              v68.i32[3] = 0;
              v67.i32[3] = 0;
              v69 = vminnmq_f32(v68, v67);
              v70 = v138;
              v70.i32[3] = 0;
              v138 = vmaxnmq_f32(v70, v67);
              v139 = v69;
              v52 = 1;
            }

            else
            {
              v52 = 1;
              v138 = v67;
              v139 = v67;
            }
          }

          v64 += [v56 dataStride];
          --v66;
        }

        while (v66);
      }

      *&v140 = [v56 semantic];
      v72 = v62;
      v73 = USKDataTypeFloat3Array_weak;
      v74 = [v56 semantic];
      v75 = objc_msgSend_isEqualToString_(v74);
      v76 = &USKRoleTypePoint_weak;
      if ((v75 & 1) == 0)
      {
        v77 = objc_msgSend_isEqualToString_(v74);
        v76 = &USKRoleTypeNormal_weak;
        if ((v77 & 1) == 0)
        {
          v78 = objc_msgSend_isEqualToString_(v74);
          v76 = &USKRoleTypeTextureCoordinate_weak;
          if ((v78 & 1) == 0)
          {
            v79 = objc_msgSend_isEqualToString_(v74);
            v76 = &USKRoleTypeNone_weak;
            if (v79)
            {
              v76 = &USKRoleTypeColor_weak;
            }
          }
        }
      }

      v80 = [USKHelper node:v130 propertyWithName:v71 type:v73 role:*v76];
      [v80 setFloat3Array:v149.i64[0] count:v57];
      if (v72)
      {
        if ((v61 & 1) == 0)
        {
          [v80 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"faceVarying"}];
        }

        *&v140 = [v56 semantic];
        v83 = [USKHelper node:v130 propertyWithName:v82 type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
        if (v125)
        {
          v84 = [v132 geometrySourceChannels];
          [objc_msgSend(v84 objectAtIndexedSubscript:{i), "intValue"}];
        }

        [v83 setIntArray:? count:?];
      }

      else if (objc_msgSend_isEqualToString_([v56 semantic]))
      {
        [v80 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"vertex"}];
      }

      if (v149.i64[0])
      {
        v149.i64[1] = v149.i64[0];
        operator delete(v149.i64[0]);
      }

LABEL_119:
      v53 = v135;
      goto LABEL_120;
    }

    if (!objc_msgSend_isEqualToString_([v56 semantic]))
    {
      goto LABEL_119;
    }

    v149 = 0uLL;
    v150.i64[0] = 0;
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&v149, v57);
    v86 = v57;
    if (v57 >= 1)
    {
      do
      {
        LODWORD(v85) = *v64;
        *(&v85 + 1) = 1.0 - *(v64 + 4);
        v87 = v149.i64[1];
        if (v149.i64[1] >= v150.i64[0])
        {
          v133 = v85;
          v89 = (v149.i64[1] - v149.i64[0]) >> 3;
          if ((v89 + 1) >> 61)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v90 = (v150.i64[0] - v149.i64[0]) >> 2;
          if (v90 <= v89 + 1)
          {
            v90 = v89 + 1;
          }

          if (v150.i64[0] - v149.i64[0] >= 0x7FFFFFFFFFFFFFF8uLL)
          {
            v91 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v91 = v90;
          }

          if (v91)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(&v149, v91);
          }

          *(8 * v89) = v133;
          v88 = 8 * v89 + 8;
          v92 = (8 * v89 - (v149.i64[1] - v149.i64[0]));
          memcpy(v92, v149.i64[0], v149.i64[1] - v149.i64[0]);
          v93 = v149.i64[0];
          v149.i64[0] = v92;
          v149.i64[1] = v88;
          v150.i64[0] = 0;
          if (v93)
          {
            operator delete(v93);
          }
        }

        else
        {
          *v149.i64[1] = v85;
          v88 = v87 + 8;
        }

        v149.i64[1] = v88;
        v64 += [v56 dataStride];
        --v86;
      }

      while (v86);
    }

    *&v140 = [v56 semantic];
    v95 = v135;
    if (v135 >= 1)
    {
      v94 = -[__CFString stringByAppendingString:](v94, "stringByAppendingString:", [objc_msgSend(MEMORY[0x277CCABB0] numberWithInt:{v135), "stringValue"}]);
    }

    v96 = [USKHelper node:v130 propertyWithName:v94 type:USKDataTypeFloat2Array_weak role:USKRoleTypeTextureCoordinate_weak];
    [v96 setFloat2Array:v149.i64[0] count:v57];
    if (v62)
    {
      [v96 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"faceVarying"}];
      *&v140 = [v56 semantic];
      v99 = [USKHelper node:v130 propertyWithName:v98 type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
      if (v125)
      {
        v100 = [v132 geometrySourceChannels];
        [objc_msgSend(v100 objectAtIndexedSubscript:{i), "intValue"}];
      }

      [v99 setIntArray:? count:?];
    }

    else
    {
      [v96 setMetadataWithKey:@"interpolation" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"vertex"}];
    }

    if (v149.i64[0])
    {
      v149.i64[1] = v149.i64[0];
      operator delete(v149.i64[0]);
    }

    v53 = v95 + 1;
LABEL_120:
    ++i;
  }

  if (v52)
  {
    v101 = [USKHelper node:v130 propertyWithName:@"extent" type:USKDataTypeFloat3Array_weak role:USKRoleTypeNone_weak];
    v149 = v139;
    v150 = v138;
    [v101 setFloat3Array:&v149 count:2];
  }

  if ([v132 geometryElementCount] > 1)
  {
    v149 = 0uLL;
    v150.i64[0] = 0;
    v104 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v132, "geometryElementCount")}];
    v105 = 0;
    for (m = 0; m < [v132 geometryElementCount]; ++m)
    {
      v107 = v132;
      v108 = [v132 geometryElementAtIndex:m];
      if (m >= [objc_msgSend(v107 "materials")])
      {
        v109 = [v132 firstMaterial];
      }

      else
      {
        v109 = [objc_msgSend(v132 "materials")];
      }

      v110 = v109;
      if (v109)
      {
        v111 = USDKitConverter::processMaterial(v126, v109);
        v112 = [objc_msgSend(v111 "stringValue")];
        v113 = [objc_msgSend(v123 stringByAppendingPathComponent:{v112), "stringByAppendingString:", @"_meshGroup"}];
        if ([v104 containsObject:v113])
        {
          v113 = [v113 stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", m), "stringValue")}];
        }

        [v104 addObject:v113];
        v114 = [USKObjectPath_helper objectPathWithString:v113];
        v115 = [USKHelper scene:*(v126 + 7) nodeAtPath:v114 type:USKNodeTypeMeshGroup_weak];
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v115 propertyWithName:@"elementType" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"face"}];
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v115 propertyWithName:@"familyName" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"materialBind"}];
        std::vector<float>::resize(&v149, 0);
        v116 = 0;
        v117 = v105;
        while ([v108 primitiveCount] > v116)
        {
          LODWORD(v140) = v117;
          std::vector<int>::push_back[abi:nn200100](&v149, &v140);
          ++v116;
          ++v117;
        }

        v118 = [USKHelper node:v115 propertyWithName:@"indices" type:USKDataTypeIntArray_weak role:USKRoleTypeNone_weak];
        [v118 setIntArray:v149.i64[0] count:{objc_msgSend(v108, "primitiveCount")}];
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v115 propertyWithName:@"material:binding" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", v111}];
        if (!m && [(SCNMaterial *)v110 isDoubleSided])
        {
          [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v130 propertyWithName:@"doubleSided" type:USKDataTypeBool_weak role:{USKRoleTypeNone_weak), "setBoolValue:", 1}];
        }
      }

      v105 += [v108 primitiveCount];
    }

    if (v149.i64[0])
    {
      v149.i64[1] = v149.i64[0];
      operator delete(v149.i64[0]);
    }
  }

  else
  {
    v102 = [v132 firstMaterial];
    if (v102)
    {
      v103 = USDKitConverter::processMaterial(v126, v102);
      [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v130 propertyWithName:@"material:binding" type:USKDataTypeObjectPath_weak role:{USKRoleTypeNone_weak), "setObjectPath:", v103}];
      if ([(SCNMaterial *)v102 isDoubleSided])
      {
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v130 propertyWithName:@"doubleSided" type:USKDataTypeBool_weak role:{USKRoleTypeNone_weak), "setBoolValue:", 1}];
      }
    }
  }

  if (v127)
  {
    v119 = &v137[v127 - 1];
    v120 = -24 * v127;
    do
    {
      v121 = *v119;
      if (*v119)
      {
        *(v119 + 1) = v121;
        operator delete(v121);
      }

      v119 -= 24;
      v120 += 24;
    }

    while (v120);
  }

  if (v146)
  {
    v147 = v146;
    operator delete(v146);
  }
}

void sub_21C123B20(_Unwind_Exception *exception_object)
{
  v3 = v1[6];
  if (v3)
  {
    v4 = v1[17] + 24 * v3 - 24;
    v5 = -24 * v3;
    do
    {
      v6 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v6;
        operator delete(v6);
      }

      v4 -= 24;
      v5 += 24;
    }

    while (v5);
  }

  v7 = v1[35];
  if (v7)
  {
    v1[36] = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void *USDKitConverter::processSCNMorpher(USDKitConverter *a1, void *a2, void *a3, void *a4)
{
  v6 = [a4 geometry];
  v7 = [a4 morpher];
  v65 = a4;
  if ([v7 calculationMode])
  {
    v72 = 0uLL;
  }

  else
  {
    result = [objc_msgSend_geometrySources(v6) count];
    if (result)
    {
      v72 = 0uLL;
      for (i = 0; i < result; ++i)
      {
        v10 = [objc_msgSend_geometrySources(v6) objectAtIndexedSubscript:i];
        if (objc_msgSend_isEqualToString_([v10 semantic]))
        {
          *&v72 = v10;
        }

        else
        {
          isEqualToString = objc_msgSend_isEqualToString_([v10 semantic]);
          v12 = *(&v72 + 1);
          if (isEqualToString)
          {
            v12 = v10;
          }

          *(&v72 + 1) = v12;
        }

        result = [objc_msgSend_geometrySources(v6) count];
      }
    }

    else
    {
      v72 = 0uLL;
    }

    if (v72 == 0)
    {
      return result;
    }
  }

  v68 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(v7, "targets"), "count")}];
  v67 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(v7, "targets"), "count")}];
  if ([objc_msgSend(v7 "targets")])
  {
    v13 = 0;
    do
    {
      v71 = v13;
      v14 = [objc_msgSend(v7 "targets")];
      v15 = [@"blendShape" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", v13), "stringValue")}];
      v16 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a3 stringByAppendingPathComponent:v15]);
      [v68 addObject:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", USDKitConverter::makeUniqueBlendShapeName(a1, v15, a3))}];
      [v67 addObject:v16];
      if (C3DSceneSourceGetSceneCount())
      {
        v17 = USKNodeTypeBlendShape_weak;
        v18 = v16;
      }

      else
      {
        v18 = v16;
        v17 = @"BlendShape";
      }

      v70 = [USKHelper scene:*(a1 + 7) nodeAtPath:v18 type:v17];
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v83 = 0;
      v84 = 0;
      v85 = 0;
      v80 = 0;
      v81 = 0;
      v82 = 0;
      while (v21 < [objc_msgSend_geometrySources(v14) count])
      {
        v24 = [objc_msgSend_geometrySources(v14) objectAtIndexedSubscript:v21];
        if (objc_msgSend_isEqualToString_([v24 semantic]))
        {
          v20 = [v24 vectorCount];
          _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v83, v20);
        }

        else
        {
          if (objc_msgSend_isEqualToString_([v24 semantic]))
          {
            v19 = [v24 vectorCount];
            _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(&v80, v19);
            v22 = v24;
          }

          v24 = v23;
        }

        ++v21;
        v23 = v24;
      }

      if (v20 <= v19)
      {
        v25 = v19;
      }

      else
      {
        v25 = v20;
      }

      memset(&v79, 0, sizeof(v79));
      std::vector<unsigned int>::reserve(&v79, v25);
      if (v23)
      {
        v27 = ([v7 calculationMode] | v72) != 0;
        if (!v22)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v27 = 0;
        if (!v22)
        {
LABEL_35:
          v28 = 0;
          goto LABEL_36;
        }
      }

      v28 = ([v7 calculationMode] | *(&v72 + 1)) != 0;
LABEL_36:
      v78 = 0;
      if (v25 >= 1)
      {
        do
        {
          *&v26 = 0;
          v74 = v26;
          *&v26 = 0;
          v73 = v26;
          v75 = 0.0;
          *&v26 = 0;
          v76 = v26;
          if (v27 && (v29 = [objc_msgSend(v23 "data")], v30 = objc_msgSend(v23, "dataOffset"), v31 = v78, v32 = v29 + v30 + objc_msgSend(v23, "dataStride") * v31, *&v33 = *v32, v76 = v33, v75 = *(v32 + 8), !objc_msgSend(v7, "calculationMode")))
          {
            v45 = [objc_msgSend(v72 "data")];
            v46 = [v72 dataOffset];
            v47 = v78;
            v48 = (v45 + v46 + [v72 dataStride] * v47);
            *(&v49 + 1) = *(&v76 + 1);
            *&v49 = vsub_f32(*&v76, *v48);
            v76 = v49;
            v75 = v75 - v48[1].f32[0];
            if (v28)
            {
LABEL_40:
              v34 = [objc_msgSend(v22 "data")];
              v35 = [v22 dataOffset];
              v36 = v78;
              v37 = v34 + v35 + [v22 dataStride] * v36;
              *&v38 = *v37;
              v74 = v38;
              LODWORD(v38) = *(v37 + 8);
              v73 = v38;
              if (![v7 calculationMode])
              {
                v39 = [objc_msgSend(*(&v72 + 1) "data")];
                v40 = [*(&v72 + 1) dataOffset];
                v41 = v78;
                v42 = (v39 + v40 + [*(&v72 + 1) dataStride] * v41);
                *(&v43 + 1) = *(&v74 + 1);
                *&v43 = vsub_f32(*&v74, *v42);
                v74 = v43;
                v44 = v73;
                *&v44 = *&v73 - v42[1].f32[0];
                v73 = v44;
              }
            }
          }

          else if (v28)
          {
            goto LABEL_40;
          }

          if (*&v76 != 0.0 || (v50.i32[0] = vdup_lane_s32(*&v76, 1).u32[0], v50.i64[1] = v74, v50.f32[1] = v75, (vaddvq_s32(vbicq_s8(xmmword_21C27FE30, vceqzq_f32(v50))) & 0xF) != 0) || (*(&v26 + 1) = *(&v73 + 1), *&v73 != 0.0))
          {
            if (v27)
            {
              v51 = v76;
              *(&v51 + 2) = v75;
              v77 = v51;
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v83, &v77);
            }

            if (v28)
            {
              v52 = v74;
              DWORD2(v52) = v73;
              v77 = v52;
              _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100ERKS1_(&v80, &v77);
            }

            std::vector<int>::push_back[abi:nn200100](&v79.__begin_, &v78);
          }

          v53 = ++v78;
        }

        while (v25 > v53);
      }

      if (v84 != v83)
      {
        v54 = [v23 semantic];
        v55 = objc_msgSend_isEqualToString_(v54);
        v56 = @"offsets";
        if ((v55 & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(v54))
          {
            v56 = @"normalOffsets";
          }

          else
          {
            v56 = &stru_282DCC058;
          }
        }

        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v70 propertyWithName:v56 type:USKDataTypeFloat3Array_weak role:{USKRoleTypeVector_weak), "setFloat3Array:count:"}];
      }

      if (v81 != v80)
      {
        v57 = [v22 semantic];
        v58 = objc_msgSend_isEqualToString_(v57);
        v59 = @"offsets";
        if ((v58 & 1) == 0)
        {
          if (objc_msgSend_isEqualToString_(v57))
          {
            v59 = @"normalOffsets";
          }

          else
          {
            v59 = &stru_282DCC058;
          }
        }

        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v70 propertyWithName:v59 type:USKDataTypeFloat3Array_weak role:{USKRoleTypeVector_weak), "setFloat3Array:count:"}];
      }

      [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v70 propertyWithName:@"pointIndices" type:USKDataTypeIntArray_weak role:{USKRoleTypeNone_weak), "setIntArray:count:"}];
      if (v79.__begin_)
      {
        v79.__end_ = v79.__begin_;
        operator delete(v79.__begin_);
      }

      if (v80)
      {
        v81 = v80;
        operator delete(v80);
      }

      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }

      v13 = v71 + 1;
    }

    while (v71 + 1 < [objc_msgSend(v7 "targets")]);
  }

  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"skel:blendShapes" type:USKDataTypeTokenArray_weak role:{USKRoleTypeNone_weak), "setTokenArray:", v68}];
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a2 propertyWithName:@"skel:blendShapeTargets" type:USKDataTypeObjectPathArray_weak role:{USKRoleTypeNone_weak), "setObjectPathArray:", v67}];
  result = [a2 applyType:USKSchemaTypeBindingAPI_weak];
  v60 = *(a1 + 53);
  if (v60)
  {
    v61 = (a1 + 424);
    do
    {
      v62 = v60[4];
      v63 = v62 >= v65;
      v64 = v62 < v65;
      if (v63)
      {
        v61 = v60;
      }

      v60 = v60[v64];
    }

    while (v60);
    if (v61 != (a1 + 424) && v61[4] <= v65)
    {
      *(v61[5] + 24) = v68;
    }
  }

  return result;
}

void sub_21C124470(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 160);
  if (v3)
  {
    *(v1 - 152) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 136);
  if (v4)
  {
    *(v1 - 128) = v4;
    operator delete(v4);
  }

  v5 = *(v1 - 112);
  if (v5)
  {
    *(v1 - 104) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

__CFString *anonymous namespace::semanticToProperty(void **this, NSString *const *a2)
{
  v2 = a2;
  if (objc_msgSend_isEqualToString_(*this, a2, @"kGeometrySourceSemanticVertex"))
  {
    return @"points";
  }

  if (objc_msgSend_isEqualToString_(*this))
  {
    v5 = @"normals";
    v6 = @"primvars:normals";
    v7 = v2 == 0;
  }

  else
  {
    if (objc_msgSend_isEqualToString_(*this))
    {
      return @"primvars:st";
    }

    isEqualToString = objc_msgSend_isEqualToString_(*this);
    v5 = &stru_282DCC058;
    v6 = @"primvars:displayColor";
    v7 = isEqualToString == 0;
  }

  if (v7)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

__CFString *anonymous namespace::semanticToIndicesProperty(void **this, NSString *const *a2)
{
  if (objc_msgSend_isEqualToString_(*this, a2, @"kGeometrySourceSemanticVertex"))
  {
    return @"faceVertexIndices";
  }

  if (objc_msgSend_isEqualToString_(*this))
  {
    return @"primvars:normals:indices";
  }

  if (objc_msgSend_isEqualToString_(*this))
  {
    return @"primvars:st:indices";
  }

  if (objc_msgSend_isEqualToString_(*this))
  {
    return @"primvars:displayColor:indices";
  }

  return &stru_282DCC058;
}

id USDKitConverter::processMaterial(USDKitConverter *this, SCNMaterial *a2)
{
  v2 = this;
  v114[2] = *MEMORY[0x277D85DE8];
  v109 = a2;
  v3 = this + 128;
  v4 = *(this + 16);
  v5 = this + 120;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 4);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *&v4[8 * v9];
  }

  while (v4);
  if (v6 != v3 && *(v6 + 4) <= a2)
  {
    __p.__r_.__value_.__r.__words[0] = &v109;
    return std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v5, &v109, &std::piecewise_construct, &__p)[5];
  }

  else
  {
LABEL_9:
    v100 = v5;
    v10 = [(SCNMaterial *)a2 name];
    if (!v10 || (v11 = v10, ![(NSString *)v10 length]))
    {
      v11 = [@"Material_" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", *(v2 + 17)), "stringValue")}];
    }

    std::string::basic_string[abi:nn200100]<0>(&__p, [v13 UTF8String]);
    v14 = v2 + 152;
    if ((v2 + 152) != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v2 + 144, &__p.__r_.__value_.__l.__data_))
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:nn200100](&__str, size + 1);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        memmove(p_str, p_p, size);
      }

      *(&p_str->__r_.__value_.__l.__data_ + size) = 95;
      std::to_string(&v110, *(v2 + 20));
      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v110;
      }

      else
      {
        v18 = v110.__r_.__value_.__r.__words[0];
      }

      if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v19 = v110.__r_.__value_.__l.__size_;
      }

      v20 = std::string::append(&__str, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      *&v112[1] = *(&v20->__r_.__value_.__l + 2);
      v112[0] = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v110.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      if (v14 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v2 + 144, v112))
      {
        v22 = 1;
        do
        {
          v23 = v2;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v24 = __p.__r_.__value_.__l.__size_;
          }

          std::string::basic_string[abi:nn200100](&__str, v24 + 4);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__str;
          }

          else
          {
            v25 = __str.__r_.__value_.__r.__words[0];
          }

          if (v24)
          {
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v26 = &__p;
            }

            else
            {
              v26 = __p.__r_.__value_.__r.__words[0];
            }

            memmove(v25, v26, v24);
          }

          strcpy(v25 + v24, "_un_");
          std::to_string(&v110, v22);
          if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &v110;
          }

          else
          {
            v27 = v110.__r_.__value_.__r.__words[0];
          }

          if ((v110.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(v110.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = v110.__r_.__value_.__l.__size_;
          }

          v29 = std::string::append(&__str, v27, v28);
          v30 = v29->__r_.__value_.__r.__words[0];
          v114[0] = v29->__r_.__value_.__l.__size_;
          *(v114 + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
          v31 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          if (SBYTE7(v112[1]) < 0)
          {
            operator delete(*&v112[0]);
          }

          *&v112[0] = v30;
          *(&v112[0] + 1) = v114[0];
          *(v112 + 15) = *(v114 + 7);
          BYTE7(v112[1]) = v31;
          if (SHIBYTE(v110.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v110.__r_.__value_.__l.__data_);
          }

          v2 = v23;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          ++v22;
        }

        while (v14 != std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v23 + 144, v112));
      }

      if ((SBYTE7(v112[1]) & 0x80u) == 0)
      {
        v32 = v112;
      }

      else
      {
        v32 = *&v112[0];
      }

      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:v32];
      if (SBYTE7(v112[1]) < 0)
      {
        operator delete(*&v112[0]);
      }
    }

    std::string::basic_string[abi:nn200100]<0>(v112, [v13 UTF8String]);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(v2 + 18, v112, v112);
    if (SBYTE7(v112[1]) < 0)
    {
      operator delete(*&v112[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v102 = [USDKitConverter::getMaterialsPath(v2) stringByAppendingPathComponent:v13];
    v101 = [USKObjectPath_helper objectPathWithString:v102];
    v103 = [USKHelper scene:*(v2 + 7) nodeAtPath:v101 type:USKNodeTypeMaterial_weak];
    v33 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [v102 stringByAppendingPathComponent:@"surfaceShader"]);
    v34 = [USKHelper scene:*(v2 + 7) nodeAtPath:v33 type:USKNodeTypeShader_weak];
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v34 propertyWithName:@"info:id" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"UsdPreviewSurface"}];
    [USKHelper node:v34 propertyWithName:@"outputs:surface" type:USKDataTypeToken_weak role:USKRoleTypeNone_weak];
    v35 = [v109 emission];
    if ([v109 selfIllumination])
    {
      [objc_msgSend(v109 "selfIllumination")];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v109 emission] || (objc_msgSend(objc_msgSend(v109, "emission"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_msgSend(objc_msgSend(v109, "emission"), "contents"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v35 = [v109 selfIllumination];
        }
      }
    }

    [v109 transparency];
    v37 = v36;
    if ([v109 transparencyMode] == 1)
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      v38 = [objc_msgSend(objc_msgSend(v109 "transparent")];
      if (__p.__r_.__value_.__s.__data_[0] == 1)
      {
        v40 = v38;
        v41 = v39;
        [v109 transparency];
        v42 = *(&v40 + 1) * 0.71516 + *&v40 * 0.212671 + v41 * 0.072169;
        v37 = 1.0 - v42 * v43;
      }
    }

    memset(v112, 0, 24);
    std::vector<MaterialMap>::reserve(v112, 8uLL);
    v44 = [v109 normal];
    std::string::basic_string[abi:nn200100]<0>(&__str, "rgb");
    MaterialMap::MaterialMap(&__p, @"normal", v44, &USKRoleTypeNormal_weak, &__str, 0);
    v45 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v46 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v45 = v46;
      v47 = *v105;
      *(v45 + 40) = v106;
      *(v45 + 24) = v47;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v48 = v108;
      *(v45 + 48) = v107;
      *(v45 + 64) = v48;
      *(&v112[0] + 1) = v45 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v49 = *(&v112[0] + 1);
    if (objc_msgSend_isEqualToString_([v109 lightingModelName]))
    {
      v50 = [v109 metalness];
      std::string::basic_string[abi:nn200100]<0>(&__str, "r");
      MaterialMap::MaterialMap(&__p, @"metallic", v50, &USKRoleTypeNone_weak, &__str, 0);
      v51 = *(&v112[0] + 1);
      if (*(&v112[0] + 1) >= *&v112[1])
      {
        *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(v105[0]);
        }
      }

      else
      {
        v52 = *&__p.__r_.__value_.__l.__data_;
        *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
        *v51 = v52;
        v53 = *v105;
        *(v51 + 40) = v106;
        *(v51 + 24) = v53;
        v105[1] = 0;
        v106 = 0;
        v105[0] = 0;
        v54 = v108;
        *(v51 + 48) = v107;
        *(v51 + 64) = v54;
        *(&v112[0] + 1) = v51 + 80;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

      v55 = [v109 roughness];
      std::string::basic_string[abi:nn200100]<0>(&__str, "r");
      MaterialMap::MaterialMap(&__p, @"roughness", v55, &USKRoleTypeNone_weak, &__str, 0);
      v56 = *(&v112[0] + 1);
      if (*(&v112[0] + 1) >= *&v112[1])
      {
        *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
        if (SHIBYTE(v106) < 0)
        {
          operator delete(v105[0]);
        }
      }

      else
      {
        v57 = *&__p.__r_.__value_.__l.__data_;
        *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
        *v56 = v57;
        v58 = *v105;
        *(v56 + 40) = v106;
        *(v56 + 24) = v58;
        v105[1] = 0;
        v106 = 0;
        v105[0] = 0;
        v59 = v108;
        *(v56 + 48) = v107;
        *(v56 + 64) = v59;
        *(&v112[0] + 1) = v56 + 80;
      }

      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }
    }

    v60 = [v109 diffuse];
    std::string::basic_string[abi:nn200100]<0>(&__str, "rgb");
    MaterialMap::MaterialMap(&__p, @"diffuseColor", v60, &USKRoleTypeColor_weak, &__str, 0);
    v61 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v62 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v61 = v62;
      v63 = *v105;
      *(v61 + 40) = v106;
      *(v61 + 24) = v63;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v64 = v108;
      *(v61 + 48) = v107;
      *(v61 + 64) = v64;
      *(&v112[0] + 1) = v61 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:nn200100]<0>(&__str, "rgb");
    MaterialMap::MaterialMap(&__p, @"emissiveColor", v35, &USKRoleTypeColor_weak, &__str, 0);
    v65 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v66 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v65 = v66;
      v67 = *v105;
      *(v65 + 40) = v106;
      *(v65 + 24) = v67;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v68 = v108;
      *(v65 + 48) = v107;
      *(v65 + 64) = v68;
      *(&v112[0] + 1) = v65 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v69 = [v109 transparent];
    std::string::basic_string[abi:nn200100]<0>(&__str, "a");
    *&v70 = v37;
    MaterialMap::MaterialMap(&__p, @"opacity", v69, &USKRoleTypeNone_weak, &__str, [MEMORY[0x277CCABB0] numberWithFloat:v70]);
    v71 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v72 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v71 = v72;
      v73 = *v105;
      *(v71 + 40) = v106;
      *(v71 + 24) = v73;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v74 = v108;
      *(v71 + 48) = v107;
      *(v71 + 64) = v74;
      *(&v112[0] + 1) = v71 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v75 = [v109 ambientOcclusion];
    std::string::basic_string[abi:nn200100]<0>(&__str, "r");
    MaterialMap::MaterialMap(&__p, @"occlusion", v75, &USKRoleTypeNone_weak, &__str, 0);
    v76 = *(&v112[0] + 1);
    if (*(&v112[0] + 1) >= *&v112[1])
    {
      *(&v112[0] + 1) = std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(v112, &__p);
      if (SHIBYTE(v106) < 0)
      {
        operator delete(v105[0]);
      }
    }

    else
    {
      v77 = *&__p.__r_.__value_.__l.__data_;
      *(*(&v112[0] + 1) + 16) = *(&__p.__r_.__value_.__l + 2);
      *v76 = v77;
      v78 = *v105;
      *(v76 + 40) = v106;
      *(v76 + 24) = v78;
      v105[1] = 0;
      v106 = 0;
      v105[0] = 0;
      v79 = v108;
      *(v76 + 48) = v107;
      *(v76 + 64) = v79;
      *(&v112[0] + 1) = v76 + 80;
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v80 = *(&v112[0] + 1);
    v81 = *&v112[0];
    if (*&v112[0] != *(&v112[0] + 1))
    {
      do
      {
        v82 = *(v81 + 8);
        if (v82 && [v82 contents])
        {
          *(v81 + 56) = USDKitConverter::textureFileWithMaterialProperty(v2, *(v81 + 8));
        }

        v81 += 80;
      }

      while (v81 != v80);
      v80 = *(&v112[0] + 1);
      v81 = *&v112[0];
    }

    v97 = v49;
    v98 = v33;
    v99 = v34;
    if (v80 != v81)
    {
      v83 = 0;
      do
      {
        v84 = v81 + 80 * v83;
        if (*(v84 + 56))
        {
          v85 = *(v84 + 64) == 0;
        }

        else
        {
          v85 = 0;
        }

        if (v85)
        {
          v87 = *v84;
          memset(&__p, 0, sizeof(__p));
          __str.__r_.__value_.__r.__words[0] = v81 + 80 * v83;
          std::vector<Statement *>::push_back[abi:nn200100](&__p, &__str);
          v86 = v83 + 1;
          v80 = *(&v112[0] + 1);
          v81 = *&v112[0];
          if (v83 + 1 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v112[0] + 1) - *&v112[0]) >> 4))
          {
            v88 = 80 * v83;
            v89 = v86;
            do
            {
              v90 = v81 + v88;
              if (objc_msgSend_isEqualToString_(*(v84 + 56)))
              {
                v87 = [objc_msgSend(v87 stringByAppendingString:{@"_", "stringByAppendingString:", *(v90 + 80)}];
                __str.__r_.__value_.__r.__words[0] = v90 + 80;
                std::vector<Statement *>::push_back[abi:nn200100](&__p, &__str);
              }

              ++v89;
              v80 = *(&v112[0] + 1);
              v81 = *&v112[0];
              v88 += 80;
            }

            while (v89 < 0xCCCCCCCCCCCCCCCDLL * ((*(&v112[0] + 1) - *&v112[0]) >> 4));
          }

          v91 = *&__p.__r_.__value_.__l.__data_;
          v92 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__r.__words[0] != __p.__r_.__value_.__l.__size_)
          {
            do
            {
              v93 = *v92++;
              *(v93 + 64) = v87;
            }

            while (v92 != *(&v91 + 1));
          }

          if (v91)
          {
            __p.__r_.__value_.__l.__size_ = v91;
            operator delete(v91);
            v80 = *(&v112[0] + 1);
            v81 = *&v112[0];
          }
        }

        else
        {
          v86 = v83 + 1;
        }

        v83 = v86;
      }

      while (v86 < 0xCCCCCCCCCCCCCCCDLL * ((v80 - v81) >> 4));
    }

    for (i = v101; v81 != v80; v81 += 80)
    {
      USDKitConverter::processTextureShader(v2, v81, (v97 - 80), v102, v99, v103, v101);
    }

    v95 = [USKHelper node:v103 propertyWithName:@"outputs:surface" type:USKDataTypeToken_weak role:USKRoleTypeNone_weak];
    v113 = [v98 pathByAppendingPropertyComponent:@"outputs:surface"];
    [v95 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v113, 1)}];
    __str.__r_.__value_.__r.__words[0] = &v109;
    std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v100, &v109, &std::piecewise_construct, &__str)[5] = v101;
    __p.__r_.__value_.__r.__words[0] = v112;
    std::vector<MaterialMap>::__destroy_vector::operator()[abi:nn200100](&__p);
  }

  return i;
}

void sub_21C125454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  a18 = (v46 - 176);
  std::vector<MaterialMap>::__destroy_vector::operator()[abi:nn200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t USDKitConverter::getMaterialsPath(USDKitConverter *this)
{
  result = *(this + 5);
  if (!result)
  {
    v3 = [*(this + 3) stringByAppendingPathComponent:@"Materials"];
    *(this + 5) = v3;
    v4 = [USKObjectPath_helper objectPathWithString:v3];
    [USKHelper scene:*(this + 7) nodeAtPath:v4 type:USKNodeTypeScope_weak];
    return *(this + 5);
  }

  return result;
}

uint64_t *std::vector<MaterialMap>::reserve(uint64_t *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x333333333333334)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<MaterialMap>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void sub_21C125710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<MaterialMap>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t USDKitConverter::textureFileWithMaterialProperty(USDKitConverter *this, SCNMaterialProperty *a2)
{
  v4 = [(SCNMaterialProperty *)a2 contents];
  v5 = *(this + 22);
  if (v5)
  {
    v6 = (this + 176);
    do
    {
      v7 = v5[4];
      v8 = v7 >= v4;
      v9 = v7 < v4;
      if (v8)
      {
        v6 = v5;
      }

      v5 = v5[v9];
    }

    while (v5);
    if (v6 != (this + 176) && v4 >= v6[4])
    {
      v56 = [(SCNMaterialProperty *)a2 contents];
      *v57 = &v56;
      return std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 168, &v56, &std::piecewise_construct, v57)[5];
    }
  }

  v56 = 0;
  [(SCNMaterialProperty *)a2 contents];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([(SCNMaterialProperty *)a2 contents], objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = [(SCNMaterialProperty *)a2 __runtimeResolvedPath];
    {
      v15 = File;
      v16 = [-[_anonymous_namespace_ pathExtension](File "pathExtension")];
      v17 = [-[_anonymous_namespace_ lastPathComponent](v15 "lastPathComponent")];
      v57[0] = 0;
      updated = USDKitConverter::updateTexturePaths(this, v19, v15, v57);
      if (updated < 1)
      {
        v21 = @"textures";
      }

      else
      {
        v21 = [@"textures" stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", updated), "stringValue")}];
      }

      v22 = [(__CFString *)v21 stringByAppendingPathComponent:v19];
      if (v57[0])
      {
        v25 = [*(this + 2) stringByAppendingPathComponent:v22];
        v26 = [MEMORY[0x277CCAA00] defaultManager];
        [v26 createDirectoryAtPath:objc_msgSend(*(this + 2) withIntermediateDirectories:"stringByAppendingPathComponent:" attributes:v21) error:{1, 0, &v56}];
        [v26 copyItemAtPath:v15 toPath:v25 error:&v56];
      }

      return v22;
    }
  }

  else
  {
    [(SCNMaterialProperty *)a2 contents];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [@"textures" stringByAppendingPathComponent:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"texgen_%lu.png", *(this + 23))}];
      v23 = [*(this + 2) stringByAppendingPathComponent:v22];
      v55 = [(SCNMaterialProperty *)a2 contents];
      *v57 = &v55;
      std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(this + 168, &v55, &std::piecewise_construct, v57)[5] = v22;
      [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
      v24 = [(SCNMaterialProperty *)a2 contents];
      [v24 writeToURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", v23)}];
      return v22;
    }
  }

  v27 = [(SCNMaterialProperty *)a2 getC3DImageRef];
  v55 = v27;
  if (!v27)
  {
    return 0;
  }

  v28 = v27;
  v29 = *(this + 25);
  if (v29)
  {
    v30 = this + 192;
    v31 = (this + 200);
    do
    {
      v32 = v29[4];
      v8 = v32 >= v28;
      v33 = v32 < v28;
      if (v8)
      {
        v31 = v29;
      }

      v29 = v29[v33];
    }

    while (v29);
    if (v31 != (this + 200) && v28 >= v31[4])
    {
      v43 = MEMORY[0x277CCACA8];
      *v57 = &v55;
      v44 = std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::__emplace_unique_key_args<__C3DImage *,std::piecewise_construct_t const&,std::tuple<__C3DImage * const&>,std::tuple<>>(v30, &v55, &std::piecewise_construct, v57);
      v45 = v44 + 5;
      if (*(v44 + 63) < 0)
      {
        v45 = *v45;
      }

      return [v43 stringWithUTF8String:v45];
    }
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v50 = ___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke;
  v51 = &unk_278300198;
  v52 = a2;
  v53 = this;
  v54 = v28;
  v34 = C3DImageCopyUSDZEmbeddedData(v28, 0);
  if (!v34 && ((Data = C3DImageGetData(v28, v35)) == 0 || (v34 = CFRetain(Data)) == 0) || (v36 = v34, v37 = CGImageSourceCreateWithData(v34, 0), v38 = [objc_msgSend(MEMORY[0x277CE1CB8] typeWithIdentifier:{CGImageSourceGetType(v37)), "preferredFilenameExtension"}], v48[0] = MEMORY[0x277D85DD0], v48[1] = 3221225472, v48[2] = ___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke_2, v48[3] = &__block_descriptor_40_e18_B16__0__NSString_8l, v48[4] = v36, v22 = v50(v49, v38, v48), CFRelease(v36), CFRelease(v37), !v22))
  {
    v41 = C3DImageCopyCGImage(v28, v39);
    if (v41)
    {
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 3221225472;
      v47[2] = ___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke_3;
      v47[3] = &__block_descriptor_40_e18_B16__0__NSString_8l;
      v47[4] = v41;
      return v50(v49, @"png", v47);
    }

    return 0;
  }

  return v22;
}

id USDKitConverter::processTextureShader(uint64_t a1, unsigned __int16 *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v176[1] = *MEMORY[0x277D85DE8];
  v8 = *(a2 + 1);
  if (!v8 || ![v8 contents])
  {
    return 0;
  }

  if (!*(a2 + 7))
  {
    v17 = [@"inputs:" stringByAppendingString:*a2];
    [*(a2 + 1) contents];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v19 = [*(a2 + 1) contents];
    if (isKindOfClass)
    {
      *&m.m11 = 0;
      v170 = 0.0;
      *&v171.m11 = 0;
      *&v169.m11 = 0;
      [v19 getRed:&m green:&v171 blue:&v169 alpha:&v170];
      *&v21 = *&m.m11;
      v22 = a2 + 12;
      v23 = *(a2 + 47);
      if ((v23 & 0x80) != 0)
      {
        if (*(a2 + 4) == 1)
        {
          v98 = **v22;
          if (v98 == 103)
          {
            goto LABEL_67;
          }

          if (v98 == 114)
          {
            goto LABEL_47;
          }
        }

        if (*(a2 + 4) == 1)
        {
          v24 = **v22;
          goto LABEL_50;
        }
      }

      else if (v23 == 1)
      {
        v24 = *v22;
        if (v24 != 103)
        {
          if (v24 != 114)
          {
LABEL_50:
            if (v24 == 98)
            {
              v162 = *&v169.m11;
              v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:*(a2 + 2), v170, v21];
              *&v100 = MaterialMap::getFloatScale(a2);
              v101 = v162;
              goto LABEL_68;
            }

            goto LABEL_52;
          }

LABEL_47:
          v167 = *&m.m11;
          v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:*(a2 + 2), v170];
          *&v100 = MaterialMap::getFloatScale(a2);
          v101 = v167;
LABEL_68:
          *&v100 = *&v100 * v101;
          goto LABEL_69;
        }

LABEL_67:
        v164 = *&v171.m11;
        *&v20 = *&v169.m11;
        v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:*(a2 + 2), v170, v21, v20];
        *&v100 = MaterialMap::getFloatScale(a2);
        v101 = v164;
        goto LABEL_68;
      }

LABEL_52:
      if ((v23 & 0x80) != 0)
      {
        if (*(a2 + 4) != 1)
        {
LABEL_59:
          v163 = *&v171.m11;
          v168 = *&m.m11;
          v105 = *(a2 + 2);
LABEL_71:
          v110 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat3_weak role:v105, v170];
          v111 = __PAIR64__(LODWORD(v163), LODWORD(v168));
LABEL_72:
          [v110 setFloat3Value:*&v111];
          return 0;
        }

        v22 = *v22;
      }

      else if (v23 != 1)
      {
        goto LABEL_59;
      }

      v105 = *(a2 + 2);
      if (*v22 != 97)
      {
        v163 = *&v171.m11;
        v168 = *&m.m11;
        goto LABEL_71;
      }

      v106 = v170;
      v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:v105];
      *&v100 = MaterialMap::getFloatScale(a2) * v106;
LABEL_69:
      [v99 setFloatValue:v100];
      return 0;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    [objc_msgSend(*(a2 + 1) "contents")];
    v166 = v91;
    v92 = a2 + 12;
    v93 = *(a2 + 47);
    if (v93 < 0)
    {
      if (*(a2 + 4) != 3)
      {
LABEL_66:
        v99 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat_weak role:*(a2 + 2)];
        *&v100 = *v166.i32 * MaterialMap::getFloatScale(a2);
        goto LABEL_69;
      }

      v92 = *v92;
    }

    else if (v93 != 3)
    {
      goto LABEL_66;
    }

    v107 = *v92;
    v108 = *(v92 + 2);
    if (v107 == 26482 && v108 == 98)
    {
      v110 = [USKHelper node:a5 propertyWithName:v17 type:USKDataTypeFloat3_weak role:*(a2 + 2)];
      v111 = vdupq_lane_s32(v166, 0).u64[0];
      goto LABEL_72;
    }

    goto LABEL_66;
  }

  v165 = a1;
  v160 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a4 stringByAppendingPathComponent:{objc_msgSend(*(a2 + 6), "stringByAppendingString:", @"_texCoordReader"}]);
  v15 = [USKHelper scene:"scene:nodeAtPath:type:" nodeAtPath:*(a1 + 56) type:?];
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v15 propertyWithName:@"info:id" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"UsdPrimvarReader_float2"}];
  [USKHelper node:v15 propertyWithName:@"outputs:result" type:USKDataTypeFloat2_weak role:USKRoleTypeNone_weak];
  v16 = [USKHelper node:v15 propertyWithName:@"inputs:varname" type:USKDataTypeToken_weak role:USKRoleTypeNone_weak];
  if (objc_msgSend_isEqualToString_(*a2))
  {
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:a6 propertyWithName:@"inputs:frame:stPrimvarName" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", *(a2 + 6))}];
    v176[0] = [a7 pathByAppendingPropertyComponent:@"inputs:frame:stPrimvarName"];
    [v16 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v176, 1)}];
  }

  else if (!a3[7] || (objc_msgSend_isEqualToString_(a3[6]) & 1) == 0)
  {
    [v16 setTokenValue:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", *(a2 + 6))}];
  }

  memset(&v169, 0, sizeof(v169));
  v25 = *(a2 + 1);
  if (v25)
  {
    objc_msgSend_contentsTransform(v25);
  }

  m = v169;
  if (!SCNMatrix4IsIdentity(&m))
  {
    v26 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a4 stringByAppendingPathComponent:{objc_msgSend(*(a2 + 8), "stringByAppendingString:", @"_transform2D"}]);
    v29 = [USKHelper scene:*(a1 + 56) nodeAtPath:v26 type:USKNodeTypeShader_weak];
    [v29 setDictionaryMetadataWithKey:@"sdrMetadata" dictionaryKey:@"role" value:{+[USKData_helper dataWithToken:](USKData_helper, "dataWithToken:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"math"}];
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v29 propertyWithName:@"info:id" type:USKDataTypeToken_weak role:{USKRoleTypeNone_weak), "setTokenValue:", +[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", @"UsdTransform2d"}];
    v30 = [USKHelper node:v29 propertyWithName:@"inputs:in" type:USKDataTypeFloat2_weak role:USKRoleTypeNone_weak];
    v175 = [v160 pathByAppendingPropertyComponent:@"outputs:result"];
    [v30 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v175, 1)}];
    v31 = 0;
    v32 = *&v169.m11;
    v33 = *MEMORY[0x277D860B8];
    v34 = *(MEMORY[0x277D860B8] + 16);
    v35 = vmulq_f32(v32, v32);
    *v35.i8 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
    v36 = vmulq_f32(*&v169.m21, *&v169.m21);
    *v36.i8 = vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
    v37 = vsqrt_f32(vadd_f32(vzip1_s32(*v35.i8, *v36.i8), vzip2_s32(*v35.i8, *v36.i8)));
    v38 = vmulq_f32(*&v169.m31, *&v169.m31);
    v39 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
    v39.f32[0] = sqrtf(vaddv_f32(v39));
    *v40.f32 = v37;
    v40.i64[1] = __PAIR64__(1.0, v39.u32[0]);
    __asm { FMOV            V4.4S, #1.0 }

    v45 = vdivq_f32(_Q4, v40);
    v46 = *(MEMORY[0x277D860B8] + 32);
    v47 = *(MEMORY[0x277D860B8] + 48);
    v48 = vdupq_lane_s32(v37, 0);
    v49 = vdupq_lane_s32(v37, 1);
    v50 = vdivq_f32(*&v169.m21, v49);
    v51 = vdivq_f32(*&v169.m31, vdupq_lane_s32(v39, 0));
    v52 = vzip1q_s32(v50, v47);
    v171 = v169;
    do
    {
      *(&m.m11 + v31) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v171.m11 + v31))), v34, *(&v171.m11 + v31), 1), v46, *(&v171.m11 + v31), 2), xmmword_21C27F7F0, *(&v171.m11 + v31), 3);
      v31 += 16;
    }

    while (v31 != 64);
    v53 = 0;
    v58.i64[0] = 0;
    v58.i32[2] = 0;
    v54 = vdivq_f32(v32, v48);
    v55 = vzip1q_s32(v54, v51);
    v56.i64[0] = 0;
    v56.i64[1] = v45.u32[2];
    v57.i32[0] = 0;
    v57.i64[1] = 0;
    v57.i32[1] = v45.i32[1];
    v58.i32[3] = v45.i32[3];
    v171 = m;
    do
    {
      *(&m.m11 + v53) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45.u32[0], COERCE_FLOAT(*(&v171.m11 + v53))), v57, *(&v171.m11 + v53), 1), v56, *(&v171.m11 + v53), 2), v58, *(&v171.m11 + v53), 3);
      v53 += 16;
    }

    while (v53 != 64);
    v59 = 0;
    v60 = vzip1q_s32(v55, v52);
    v61 = vzip2q_s32(v50, v47);
    v62 = vzip2q_s32(v54, v51);
    v63 = vzip1q_s32(v62, v61);
    v64 = vzip2q_s32(v55, v52);
    v65 = vzip2q_s32(v62, v61);
    v171 = m;
    v27 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
    p_info = &OBJC_METACLASS___SCNMovieExportOperation.info;
    do
    {
      *(&m.m11 + v59) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, COERCE_FLOAT(*(&v171.m11 + v59))), v64, *(&v171.m11 + v59), 1), v63, *(&v171.m11 + v59), 2), v65, *(&v171.m11 + v59), 3);
      v59 += 16;
    }

    while (v59 != 64);
    v66 = 0;
    v171 = m;
    do
    {
      *(&m.m11 + v66) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(*(&v171.m11 + v66))), v34, *(&v171.m11 + v66), 1), v46, *(&v171.m11 + v66), 2), xmmword_21C27F800, *(&v171.m11 + v66), 3);
      v66 += 16;
    }

    while (v66 != 64);
    v69 = vmulq_n_f32(v54, *v37.i32);
    v67 = vmulq_f32(v49, v50);
    v68 = vmulq_n_f32(v51, v39.f32[0]);
    v70 = vnegq_f32(v69);
    v69.i32[1] = v70.i32[1];
    v70.f32[0] = -v67.f32[0];
    v71 = v67;
    v71.f32[0] = -v67.f32[0];
    v72 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), vnegq_f32(v71)), v68, vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL));
    v73 = vmulq_f32(v69, vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL));
    _NF = (v73.f32[2] + vaddv_f32(*v73.f32)) < 0.0;
    v74 = 1.0;
    if (_NF)
    {
      v74 = -1.0;
    }

    v75 = vmulq_f32(v69, v69);
    v76 = vmulq_f32(v71, v71);
    v77 = vadd_f32(vzip1_s32(*v75.i8, *v76.i8), vzip2_s32(*v75.i8, *v76.i8));
    v78 = vextq_s8(v76, v76, 8uLL);
    *v78.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v75, v75, 8uLL), *v78.f32), v77));
    v79 = vmulq_f32(v68, v68);
    v78.i32[2] = sqrtf(v79.f32[2] + vaddv_f32(*v79.f32));
    v80 = vmulq_n_f32(v78, v74);
    v81 = vcltzq_f32(v80);
    v82 = vmvnq_s8(vorrq_s8(v81, vcgezq_f32(v80)));
    v82.i32[3] = v82.i32[2];
    v82.i32[0] = vmaxvq_u32(v82);
    v81.i32[0] = -1;
    v83 = 0.0;
    v84 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v82, v81), 0), v80, 0);
    v85 = vceqzq_f32(v84);
    v85.i32[3] = v85.i32[2];
    if ((vmaxvq_u32(v85) & 0x80000000) != 0)
    {
      v84.i64[0] = 0;
LABEL_77:
      v159 = *&m.m41;
      v161 = *v84.i64;
      v115 = vmulq_f32(v47, v47);
      v116 = vadd_f32(*v115.i8, *&vextq_s8(v115, v115, 8uLL));
      v116.f32[0] = vaddv_f32(v116);
      if (v116.f32[0] != 0.0)
      {
        v117 = v47.f32[2];
        v118 = v47.f32[1];
        v119 = v47.f32[3];
        v120 = (vmuls_lane_f32(-v47.f32[1], v47, 3) + (v47.f32[0] * v47.f32[2])) / v116.f32[0];
        if (v120 <= 0.499)
        {
          if (v120 >= -0.499)
          {
            v121 = *&v115.i32[1];
            v122 = v115.i64[1];
            v156 = v47;
            v157 = *v115.i32;
            *&v123 = atan2f(((v47.f32[2] * v47.f32[3]) + (v47.f32[0] * v47.f32[1])) + ((v47.f32[2] * v47.f32[3]) + (v47.f32[0] * v47.f32[1])), *&v115.i32[3] + ((*v115.i32 - *&v115.i32[1]) - *&v115.i32[2]));
            v158 = v123;
            atan2f(((v156.f32[0] * v119) + (v118 * v117)) + ((v156.f32[0] * v119) + (v118 * v117)), *(&v122 + 1) + (*&v122 + (-v157 - v121)));
            asinf(v120 * -2.0);
            v116.i32[1] = HIDWORD(v158);
            v83 = *&v158;
          }

          else
          {
            atan2f(v47.f32[0], v47.f32[3]);
            v83 = 0.0;
          }

          *v84.i64 = v161;
        }

        else
        {
          atan2f(v47.f32[0], v47.f32[3]);
          *v84.i64 = v161;
          v83 = 0.0;
        }
      }

      v124 = v83;
      if (v83 != 0.0)
      {
        v125 = [USKHelper node:v29 propertyWithName:@"inputs:rotation" type:USKDataTypeFloat_weak role:USKRoleTypeNone_weak];
        v126 = v124 / 3.14159265 * 180.0;
        *&v126 = v126;
        [v125 setFloatValue:v126];
        *v84.i64 = v161;
      }

      if (v84.f32[0] != 0.0 || v84.f32[1] != 0.0)
      {
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v29 propertyWithName:@"inputs:scale" type:USKDataTypeFloat2_weak role:{USKRoleTypeNone_weak, *&v156), "setFloat2Value:", v161}];
      }

      if (v159.f32[0] != 0.0 || (v116.i32[0] = v159.i32[1], v159.f32[1] != 0.0))
      {
        [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v29 propertyWithName:@"inputs:translation" type:USKDataTypeFloat2_weak role:{USKRoleTypeNone_weak, *&v156), "setFloat2Value:", COERCE_DOUBLE(__PAIR64__(vnegq_f32(v159).u32[1], v159.u32[0]))}];
      }

      [USKHelper node:v29 propertyWithName:@"outputs:result" type:USKDataTypeFloat2_weak role:USKRoleTypeNone_weak, *&v116, *&v156];
      goto LABEL_93;
    }

    v70.i32[1] = v67.i32[1];
    v70.i32[2] = v67.i32[2];
    v86 = vdivq_f32(v69, vdupq_lane_s32(*v84.f32, 0));
    v87 = vdivq_f32(v70, vdupq_lane_s32(*v84.f32, 1));
    v88 = vdivq_f32(v68, vdupq_laneq_s32(v84, 2));
    v89 = v88.f32[2] + (*v86.i32 + v87.f32[1]);
    if (v89 > 0.0)
    {
      *v88.f32 = vsub_f32(*&vzip2q_s32(v87, vuzp1q_s32(v87, v88)), *&vtrn2q_s32(v88, vzip2q_s32(v88, v86)));
      v88.f32[2] = *&v86.i32[1] - v87.f32[0];
      v90 = v89 + 1.0;
      v88.f32[3] = v89 + 1.0;
LABEL_76:
      v87.i32[0] = 0;
      v113 = vmulq_n_f32(v88, 0.5 / sqrtf(v90));
      v114 = vmvnq_s8(vceqq_f32(v113, v113));
      v114.i32[0] = vmaxvq_u32(v114);
      v47 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v87, v114), 0), v47, v113);
      goto LABEL_77;
    }

    if (*v86.i32 <= v87.f32[1] || *v86.i32 <= v88.f32[2])
    {
      if (v87.f32[1] > v88.f32[2])
      {
        v95 = v87;
        v95.f32[1] = (v87.f32[1] + 1.0) - *v86.i32;
        v95.i32[3] = v88.i32[0];
        v96 = vzip2q_s32(vzip1q_s32(v86, v88), vtrn1q_s32(v88, v86));
        v87 = vaddq_f32(v87, v96);
        v97 = vsubq_f32(v95, v96);
        v88 = vtrn2q_s32(vrev64q_s32(v87), v97);
        v90 = *&v97.i32[1];
        goto LABEL_76;
      }

      *v88.f32 = vadd_f32(*v88.f32, *&vzip2q_s32(v86, v87));
      v90 = ((v88.f32[2] + 1.0) - *v86.i32) - v87.f32[1];
      v88.f32[2] = v90;
      v104 = *&v86.i32[1] - v87.f32[0];
    }

    else
    {
      v90 = ((*v86.i32 + 1.0) - v87.f32[1]) - v88.f32[2];
      *&v102 = v87.f32[0] + *&v86.i32[1];
      v103 = v88.f32[0] + *&v86.i32[2];
      v104 = v87.f32[2] - v88.f32[1];
      v88.i64[0] = __PAIR64__(v102, LODWORD(v90));
      v88.f32[2] = v103;
    }

    v88.f32[3] = v104;
    goto LABEL_76;
  }

  v26 = v160;
  v27 = &C3DSubdivisionOsdGPUGetPerPatchTypeSources_Gregory(void)::kSources;
  p_info = (&OBJC_METACLASS___SCNMovieExportOperation + 32);
LABEL_93:
  v112 = +[USKObjectPath_helper objectPathWithString:](USKObjectPath_helper, "objectPathWithString:", [a4 stringByAppendingPathComponent:{objc_msgSend(*(a2 + 8), "stringByAppendingString:", @"_texture"}]);
  v127 = [USKHelper scene:*(v165 + 56) nodeAtPath:v112 type:USKNodeTypeShader_weak];
  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v127 propertyWithName:@"info:id" type:USKDataTypeToken_weak role:{v27[88]), "setTokenValue:", objc_msgSend(p_info + 321, "tokenWithString:", @"UsdUVTexture"}];
  if (objc_msgSend_isEqualToString_(*a2))
  {
    [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v127 propertyWithName:@"inputs:scale" type:USKDataTypeFloat4_weak role:{v27[88]), "setFloat4Value:", 2.00000048}];
    v128 = [USKHelper node:v127 propertyWithName:@"inputs:bias" type:USKDataTypeFloat4_weak role:v27[88]];
    __asm { FMOV            V0.4S, #-1.0 }

    [v128 setFloat4Value:*&_Q0];
  }

  [+[USKHelper node:propertyWithName:type:role:](USKHelper node:v127 propertyWithName:@"inputs:file" type:USKDataTypeResourcePath_weak role:{v27[88]), "setResourcePath:", *(a2 + 7)}];
  if (v26)
  {
    v130 = [USKHelper node:v127 propertyWithName:@"inputs:st" type:USKDataTypeFloat2_weak role:v27[88]];
    v174 = [v26 pathByAppendingPropertyComponent:@"outputs:result"];
    [v130 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v174, 1)}];
  }

  v131 = [USKHelper node:v127 propertyWithName:@"inputs:wrapS" type:USKDataTypeToken_weak role:v27[88]];
  v132 = [*(a2 + 1) wrapS] - 1;
  if (v132 > 3)
  {
    v133 = @"repeat";
  }

  else
  {
    v133 = off_278300218[v132];
  }

  [v131 setTokenValue:{objc_msgSend(p_info + 321, "tokenWithString:", v133)}];
  v134 = [USKHelper node:v127 propertyWithName:@"inputs:wrapT" type:USKDataTypeToken_weak role:v27[88]];
  v135 = [*(a2 + 1) wrapT] - 1;
  if (v135 > 3)
  {
    v136 = @"repeat";
  }

  else
  {
    v136 = off_278300218[v135];
  }

  [v134 setTokenValue:{objc_msgSend(p_info + 321, "tokenWithString:", v136)}];
  if ([*(a2 + 1) minificationFilter])
  {
    v137 = [USKHelper node:v127 propertyWithName:@"inputs:minFilter" type:USKDataTypeToken_weak role:v27[88]];
    v138 = [*(a2 + 1) minificationFilter];
    if (v138 == 1)
    {
      v139 = @"nearest";
    }

    else
    {
      v139 = &stru_282DCC058;
    }

    if (v138 == 2)
    {
      v140 = @"linear";
    }

    else
    {
      v140 = v139;
    }

    [v137 setTokenValue:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v140)}];
  }

  if ([*(a2 + 1) magnificationFilter])
  {
    v141 = [USKHelper node:v127 propertyWithName:@"inputs:magFilter" type:USKDataTypeToken_weak role:v27[88]];
    v142 = [*(a2 + 1) magnificationFilter];
    if (v142 == 1)
    {
      v143 = @"nearest";
    }

    else
    {
      v143 = &stru_282DCC058;
    }

    if (v142 == 2)
    {
      v144 = @"linear";
    }

    else
    {
      v144 = v143;
    }

    [v141 setTokenValue:{+[USKToken_helper tokenWithString:](USKToken_helper, "tokenWithString:", v144)}];
  }

  if (*(a2 + 47) >= 0)
  {
    v145 = a2 + 12;
  }

  else
  {
    v145 = *(a2 + 3);
  }

  v146 = [MEMORY[0x277CCACA8] stringWithUTF8String:v145];
  v147 = *(a2 + 47);
  if ((v147 & 0x80u) != 0)
  {
    v147 = *(a2 + 4);
  }

  if (v147 == 1)
  {
    v148 = &USKDataTypeFloat_weak;
  }

  else
  {
    v148 = &USKDataTypeFloat3_weak;
  }

  v149 = *v148;
  if ([*(a2 + 1) textureComponents] == 8)
  {
    v150 = USKDataTypeFloat_weak;
    v151 = @"r";
  }

  else if ([*(a2 + 1) textureComponents] == 4)
  {
    v150 = USKDataTypeFloat_weak;
    v151 = @"g";
  }

  else if ([*(a2 + 1) textureComponents] == 2)
  {
    v150 = USKDataTypeFloat_weak;
    v151 = @"b";
  }

  else
  {
    v152 = [*(a2 + 1) textureComponents];
    if (v152 == 1)
    {
      v151 = @"a";
    }

    else
    {
      v151 = v146;
    }

    if (v152 == 1)
    {
      v150 = USKDataTypeFloat_weak;
    }

    else
    {
      v150 = v149;
    }
  }

  v153 = [@"outputs:" stringByAppendingString:v151];
  [USKHelper node:v127 propertyWithName:v153 type:v150 role:v27[88]];
  v154 = +[USKHelper node:propertyWithName:type:role:](USKHelper, "node:propertyWithName:type:role:", a5, [@"inputs:" stringByAppendingString:*a2], v150, *(a2 + 2));
  v173 = [v112 pathByAppendingPropertyComponent:v153];
  [v154 setConnectionWithTargetPaths:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v173, 1)}];
  return v112;
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 23) = a2;
  return a1;
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<MaterialMap>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<MaterialMap>,MaterialMap*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v9 = v6[4];
      *(a4 + 48) = v6[3];
      *(a4 + 64) = v9;
      v6 += 5;
      a4 += 80;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 3));
      }

      v5 += 5;
    }
  }
}

uint64_t std::__split_buffer<MaterialMap>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MaterialMap>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MaterialMap>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 80;
      *(a1 + 16) = v2 - 80;
      if (*(v2 - 33) < 0)
      {
        operator delete(*(v2 - 56));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<MaterialMap>::__emplace_back_slow_path<MaterialMap>(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<MaterialMap>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[4];
  *(v7 + 48) = a2[3];
  *(v7 + 64) = v10;
  *&v19 = 80 * v2 + 80;
  v11 = *(a1 + 8);
  v12 = 80 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<MaterialMap>,MaterialMap*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<MaterialMap>::~__split_buffer(&v17);
  return v16;
}

void sub_21C12722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MaterialMap>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

std::string *MaterialMap::MaterialMap(std::string *a1, std::string::size_type a2, void *a3, std::string::size_type *a4, std::string *__str, std::string::size_type a6)
{
  a1[1].__r_.__value_.__r.__words[0] = 0;
  a1[1].__r_.__value_.__l.__size_ = 0;
  a1[1].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__l.__size_ = 0;
  a1[2].__r_.__value_.__r.__words[2] = 0;
  a1[2].__r_.__value_.__r.__words[0] = @"st";
  a1->__r_.__value_.__r.__words[0] = a2;
  a1->__r_.__value_.__l.__size_ = a3;
  a1->__r_.__value_.__r.__words[2] = *a4;
  std::string::operator=(a1 + 1, __str);
  if ([a3 mappingChannel] >= 1)
  {
    a1[2].__r_.__value_.__r.__words[0] = [@"st" stringByAppendingString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(a3, "mappingChannel")), "stringValue")}];
  }

  a1[3].__r_.__value_.__r.__words[0] = a6;
  return a1;
}

void sub_21C1272F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t USDKitConverter::updateTexturePaths(uint64_t **this, NSString *a2, NSString *a3, BOOL *a4)
{
  *a4 = 1;
  std::string::basic_string[abi:nn200100]<0>(v26, -[NSString UTF8String](a2, "UTF8String"));
  std::string::basic_string[abi:nn200100]<0>(__p, -[NSString UTF8String](a3, "UTF8String"));
  v7 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>((this + 27), v26);
  v8 = v7;
  if (this + 28 == v7)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<std::string>::push_back[abi:nn200100](&v21, __p);
    v29 = v26;
    v19 = (std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 27, v26, &std::piecewise_construct, &v29, &v28) + 7);
    if (v19 != &v21)
    {
      std::vector<std::string>::__assign_with_size[abi:nn200100]<std::string*,std::string*>(v19, v21, v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - v21) >> 3));
    }

    v30 = &v21;
    std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&v30);
    v11 = 0;
  }

  else
  {
    v9 = v7[7];
    v10 = v7[8] - v9;
    if (v10)
    {
      v11 = 0;
      v12 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
      if ((v25 & 0x80u) == 0)
      {
        v13 = v25;
      }

      else
      {
        v13 = __p[1];
      }

      if ((v25 & 0x80u) == 0)
      {
        v14 = __p;
      }

      else
      {
        v14 = __p[0];
      }

      if (v12 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v12;
      }

      while (1)
      {
        v16 = *(v9 + 23);
        v17 = v16;
        if ((v16 & 0x80u) != 0)
        {
          v16 = v9[1];
        }

        if (v16 == v13)
        {
          v18 = v17 >= 0 ? v9 : *v9;
          if (!memcmp(v18, v14, v13))
          {
            break;
          }
        }

        ++v11;
        v9 += 3;
        if (v15 == v11)
        {
          goto LABEL_20;
        }
      }

      *a4 = 0;
    }

    else
    {
LABEL_20:
      std::vector<std::string>::push_back[abi:nn200100]((v8 + 7), __p);
      v11 = -1431655765 * ((v8[8] - v8[7]) >> 3) - 1;
    }
  }

  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  return v11;
}

void sub_21C127508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  v7 = [@"textures" stringByAppendingPathComponent:{objc_msgSend(objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"texgen_%lu", *(v6 + 184)), "stringByAppendingPathExtension:", a2)}];
  v8 = [*(v6 + 16) stringByAppendingPathComponent:v7];
  v12 = [*(a1 + 32) contents];
  v13 = &v12;
  std::__tree<std::__value_type<SCNNode *,NSString *>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,NSString *>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,NSString *>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v6 + 168, &v12, &std::piecewise_construct, &v13)[5] = v7;
  v9 = [v7 UTF8String];
  v13 = (a1 + 48);
  v10 = std::__tree<std::__value_type<__C3DImage *,std::string>,std::__map_value_compare<__C3DImage *,std::__value_type<__C3DImage *,std::string>,std::less<__C3DImage *>,true>,std::allocator<std::__value_type<__C3DImage *,std::string>>>::__emplace_unique_key_args<__C3DImage *,std::piecewise_construct_t const&,std::tuple<__C3DImage * const&>,std::tuple<>>(v6 + 192, (a1 + 48), &std::piecewise_construct, &v13);
  MEMORY[0x21CF074C0](v10 + 5, v9);
  if ((*(a3 + 16))(a3, v8))
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

BOOL ___ZN15USDKitConverter31textureFileWithMaterialPropertyEP19SCNMaterialProperty_block_invoke_3(uint64_t a1, const __CFString *a2)
{
  v3 = CFURLCreateWithFileSystemPath(0, a2, kCFURLPOSIXPathStyle, 0);
  v4 = CGImageDestinationCreateWithURL(v3, [*MEMORY[0x277CE1E10] identifier], 1uLL, 0);
  CFRelease(v3);
  if (v4)
  {
    CGImageDestinationAddImage(v4, *(a1 + 32), 0);
    CGImageDestinationFinalize(v4);
    CFRelease(*(a1 + 32));
    v5 = v4;
  }

  else
  {
    v5 = *(a1 + 32);
  }

  CFRelease(v5);
  return v4 != 0;
}

_anonymous_namespace_ *anonymous namespace::findFile(_anonymous_namespace_ *this, objc_object *a2)
{
  v2 = this;
  if (this)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [MEMORY[0x277CCAA00] defaultManager];
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![-[_anonymous_namespace_ query](v2 "query")])
      {
        v2 = [(_anonymous_namespace_ *)v2 path];
        v3 = [MEMORY[0x277CCAA00] defaultManager];
        if (v2)
        {
LABEL_4:
          if ([v3 fileExistsAtPath:v2])
          {
            return v2;
          }
        }
      }
    }

    else
    {
      [MEMORY[0x277CCAA00] defaultManager];
    }

    return 0;
  }

  return v2;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:nn200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::string>::__construct_one_at_end[abi:nn200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void *std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::string>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::string>>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::vector<std::string>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}